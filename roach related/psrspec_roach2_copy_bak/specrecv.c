/* vim: set ai nowrap ts=4 sw=4: */

/*
 * store received udp packets for Parkes Spectrometer and clones
 */

#define _FILE_OFFSET_BITS	64

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <inttypes.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <time.h>
#include <sys/time.h>
#include <signal.h>
#include <pthread.h>

#include <sys/types.h>			/* for gettid */
#include <sys/syscall.h>

#include <assert.h>

#include "psrfits.h"
#include "tsfifo.h"
#include <math.h>                /*zhx*/

#define KiB		1024
#define MiB		(1024 * KiB)
#define GiB		(1024 * MiB)


const unsigned int	RECEIVE_BUFSIZE 	=  64 * KiB;
const unsigned int	FIFO_DEPTH		= 256;


/*
 * global running flag
 */
volatile sig_atomic_t g_finished = 0;


/*
 * receive thread context
 */
typedef struct recvstat_s
{
	int		sockfd;
	tsfifo_t	* pool;
	tsfifo_t	* writeq;		/* write queue */
	int		wait_pps;		/* data valid after sn reset to 0 */
	size_t		cnt_incr;
	uint64_t	pkt_lost;
	uint64_t	bytes;			/* total bytes received */
} recvstat_t;

/*
 * write thread context
 */
typedef struct writestat_s
{
	tsfifo_t	* pool;
	tsfifo_t	* writeq;
	struct psrfits  * pf;
	uint32_t	intlv_size;		/* spectra sample interleave size in received packet */
	double		rectime;		/* recording time in seconds */
	uint64_t	bytes;			/* total bytes written */
} writestat_t;


/*
 * some helper functions
 */
static inline uint64_t mdate( void )
{
	struct timeval	tv_date;
	gettimeofday( &tv_date, NULL );
	return ( (uint64_t)tv_date.tv_sec * 1000000UL + (uint64_t)tv_date.tv_usec );
}

static inline uint64_t be2le_u64( uint8_t * ptr )
{
	uint64_t u64;
	u64 = ((uint64_t)ntohl( *(uint32_t*)ptr ) << 32) |
		   (uint64_t)ntohl( *(uint32_t*)(ptr + sizeof(uint32_t)) );
	return u64;
}

static inline pid_t gettid( void )
{
	return syscall( SYS_gettid );
}

static inline void block_sigint( void )
{
	sigset_t sigset;
	sigemptyset( &sigset );
	sigaddset( &sigset, SIGINT );
	pthread_sigmask( SIG_BLOCK, &sigset, NULL );
}

/*
 * transform spectrum from 2 bins packed format into planar format
 *  	pol0 pol0 pol1 pol1 pol0 pol0 pol1 pol1 ......
 *  	pol0 pol0 pol1 pol1 pol0 pol0 pol1 pol1 ......
 * 	==>
 *		pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol0 ......
 *		pol1 pol1 pol1 pol1 pol1 pol1 pol1 pol1 ......
 */
static inline size_t packed2_to_planar( uint8_t * p_src, uint8_t * p_dst, size_t nelems )
{
    size_t   i;
    uint16_t *ps0, *ps1, *pd0, *pd1;

    assert( nelems % 2 == 0 );

    ps0 = (uint16_t *)p_src;
    ps1 = ps0 + 1;
    pd0 = (uint16_t *)p_dst;
    pd1 = (uint16_t *)(p_dst + nelems);

    for( i = 0; i < nelems / 2; i++)
    {
        *pd0++ = *ps0;
        ps0 += 2;
        *pd1++ = *ps1;
        ps1 += 2;
    }

    return i;
}

/*
 * transform spectrum from 4 bins packed format into planar format
 *  	pol0 pol0 pol0 pol0 pol1 pol1 pol1 pol1 ......
 *  	pol0 pol0 pol0 pol0 pol1 pol1 pol1 pol1 ......
 * 	==>
 *		pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol0 ......
 *		pol1 pol1 pol1 pol1 pol1 pol1 pol1 pol1 ......
 */
static inline size_t packed4_to_planar( uint8_t * p_src, uint8_t * p_dst, size_t nelems )
{
    size_t   i;
    uint32_t *ps0, *ps1, *pd0, *pd1;

    assert( nelems % 4 == 0 );

    ps0 = (uint32_t *)p_src;
    ps1 = ps0 + 1;
    pd0 = (uint32_t *)p_dst;
    pd1 = (uint32_t *)(p_dst + nelems);

    for( i = 0; i < nelems / 4; i++)
    {
        *pd0++ = *ps0;
        ps0 += 2;
        *pd1++ = *ps1;
        ps1 += 2;
    }

    return i;
}

/*
 * transform spectrum from 8 bins packed format into planar format
 *  	pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol1 pol1 pol1 pol1 pol1 pol1 pol1 pol1 ......
 *  	pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol1 pol1 pol1 pol1 pol1 pol1 pol1 pol1 ......
 * 	==>
 *		pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol0 pol0 ......
 *		pol1 pol1 pol1 pol1 pol1 pol1 pol1 pol1 pol1 pol1 pol1 pol1 pol1 pol1 pol1 pol1 ......
 */
static inline size_t packed8_to_planar( uint8_t * p_src, uint8_t * p_dst, size_t nelems )
{
    size_t   i;
    uint64_t *ps0, *ps1, *pd0, *pd1;

    assert( nelems % 8 == 0 );

    ps0 = (uint64_t *)p_src;
    ps1 = ps0 + 1;
    pd0 = (uint64_t *)p_dst;
    pd1 = (uint64_t *)(p_dst + nelems);

    for( i = 0; i < nelems / 8; i++)
    {
        *pd0++ = *ps0;
        ps0 += 2;
        *pd1++ = *ps1;
        ps1 += 2;
    }

    return i;
}

void stop_processing( int signum )
{
	fprintf( stderr, "Caught signal %d, stop record.\n", signum );
	g_finished = 1;
}



/*
 * memory block for bulk write
 */
typedef struct _storage_block_s
{
	size_t	size;
	size_t	used;
	uint8_t * buf;
} storage_block_t;


void destroy_memory_pool( tsfifo_t * pool )
{
	storage_block_t * p_blk;

	while( !tsfifo_empty( pool ) )
	{
		p_blk = (storage_block_t *)tsfifo_get( pool );
		free( p_blk );
	}
}


int init_memory_pool( tsfifo_t * pool, size_t block_size )
{
	storage_block_t * p_blk;

	while( !tsfifo_full( pool ) )
	{
		p_blk = (storage_block_t *)malloc( sizeof(storage_block_t) + block_size );
		if( NULL == p_blk )
		{
			destroy_memory_pool( pool );
			return 0;
		}

		p_blk->size = block_size;
		p_blk->used = 0;
		p_blk->buf = (uint8_t *)p_blk + sizeof(storage_block_t);

		tsfifo_put( pool, (uintptr_t)p_blk );
	}

	return 1;
}


/*
 * Receive thread: receive UDP packets and put it into storage block
 */

static inline storage_block_t* record_packet( recvstat_t * p_rs, storage_block_t * p_blk, ssize_t recv_len )
{
	p_blk->used += recv_len;
	p_rs->bytes += recv_len;

	/* if remaining buffer is smaller then approximate maximum packet size,
	   put filled block into write queue and acquire a new block from pool */
	if( p_blk->size - p_blk->used < RECEIVE_BUFSIZE )
	{
		tsfifo_put( p_rs->writeq, (uintptr_t)p_blk );

		p_blk = (storage_block_t *)tsfifo_get( p_rs->pool );
		if( NULL == p_blk )
		{
			fprintf( stderr, "\nno more storage pool!\n" );
			fprintf( stderr, "pool w:%zu r:%zu  writeq w:%zu r:%zu\n",
					 p_rs->pool->i_windex, p_rs->pool->i_rindex,
					 p_rs->writeq->i_windex, p_rs->writeq->i_rindex );
			exit( ENOMEM );
		}
		assert( p_blk->used == 0);
	}

	return p_blk;
}

void * receive_thread( void * args )
{
	recvstat_t		* p_rs;
	storage_block_t	* p_blk;
	uint64_t		prev_cnt = UINT64_MAX, curr_cnt = 0;
	int				start_record = 1;

	//fprintf( stderr, "receive thread started: tid=%d\n", gettid() );

	block_sigint( );

	p_rs = (recvstat_t *)args;

	p_blk = (storage_block_t *)tsfifo_get( p_rs->pool );
	assert( p_blk != NULL );
	assert( p_blk->used == 0 );

	if( p_rs->wait_pps )
	{
		start_record = 0;
	}

	while( 1 )
	{
		ssize_t	recv_len;
		uint8_t * p_pkt;

		p_pkt = p_blk->buf + p_blk->used;

		recv_len = recv( p_rs->sockfd, p_pkt, RECEIVE_BUFSIZE, MSG_DONTWAIT );
		if( recv_len == -1 )
		{
			if( errno != EAGAIN )
			{
				fprintf( stderr, "\nrecv(): %s<%d>\n", strerror( errno ), errno );
			}
			else if( g_finished )
			{
				break;
			}
			else
			{
				continue;
			}
		}
		else if( recv_len == 0 )
		{
			fprintf( stderr, "\npeer shutdown?!\n\n" );
		}
		else
		{
			/* extract packet counter from head 8 bytes */
			curr_cnt = be2le_u64( p_pkt );

			/* prev_cnt already got value from last packet */
			if( prev_cnt != UINT64_MAX )
			{
				/* packet counter has been reset, i.e. this packet is the 1st packet after pps */
				if( !start_record && curr_cnt < prev_cnt)
				{
					start_record = 1;
					fprintf( stderr, "Got PPS, start recording.\n" );
				}
				/* check packet counter to see if there are some packet missed */
				else if( prev_cnt + p_rs->cnt_incr != curr_cnt )
				{
					size_t i, nlost;

					nlost = (size_t)((curr_cnt - prev_cnt + p_rs->cnt_incr - 1) / p_rs->cnt_incr - 1);
					p_rs->pkt_lost += nlost;
					fprintf( stderr, "recv_len=%zd prev_cnt=%"PRIu64" curr_cnt=%"PRIu64" incr=%zd packet lost %"PRIu64" @ %"PRIu64"\n",
							 recv_len, prev_cnt, curr_cnt, p_rs->cnt_incr, nlost, curr_cnt );
					/* FIXME: add zero or noise packets to write buffer */
					if( start_record )
					{
						for( i = 0; i < nlost; i++ )
						{
							p_blk = record_packet( p_rs, p_blk, recv_len );
						}
					}
				}
			}

			if( start_record )
			{
				p_blk = record_packet( p_rs, p_blk, recv_len );
			}

			if( g_finished )
			{
				/* TODO: processing fractional subint
				tsfifo_put( p_rs->writeq, (uintptr_t)p_blk );
				*/
				break;
			}

			prev_cnt = curr_cnt;
		}
	}	/* while( 1 ) */

	return NULL;
}


/*
 * Write thread: write received memory block to file
 */
void * write_thread( void * args )
{
	writestat_t		* p_ws;
	storage_block_t	        * p_blk;
	struct subint   	* p_si;
	int			nchan, npol;

	//fprintf( stderr, "write thread started: tid=%d\n", gettid() );

	block_sigint( );

	p_ws = (writestat_t *)args;
	p_si = &p_ws->pf->sub;
	nchan = p_ws->pf->hdr.nchan;
	npol  = p_ws->pf->hdr.npol;

	while( 1 )
	{
		int i, off_buf, off_subint, stride_buf, stride_subint;

		p_blk = (storage_block_t *)tsfifo_get( p_ws->writeq );
		if( NULL == p_blk )
		{
			if( g_finished )
			{
				break;
			}
			else
			{
				continue;
			}
		}

		assert( p_blk->used == p_ws->pf->hdr.nsblk * (nchan * npol + 8) );

		off_buf		  = 8;
		stride_buf	  = nchan * npol + 8;
		off_subint	  = 0;
		stride_subint    = nchan * npol;

		assert( p_ws->intlv_size == 2 || p_ws->intlv_size == 4 || p_ws->intlv_size == 8 );

		switch( p_ws->intlv_size )
		{
		case 2:
			for( i = 0; i < p_ws->pf->hdr.nsblk; i++ )
			{
				/* FIXME: implies npol==2 in packed_to_planar */
				packed2_to_planar( p_blk->buf + off_buf, p_ws->pf->sub.data + off_subint, nchan );
				off_buf	   += stride_buf;
				off_subint += stride_subint;
			}
			break;
		case 4:
			for( i = 0; i < p_ws->pf->hdr.nsblk; i++ )
			{
				/* FIXME: implies npol==2 in packed_to_planar */
				packed4_to_planar( p_blk->buf + off_buf, p_ws->pf->sub.data + off_subint, nchan );
				off_buf	   += stride_buf;
				off_subint += stride_subint;
			}
				break;
		case 8:
			for( i = 0; i < p_ws->pf->hdr.nsblk; i++ )
			{
				/* FIXME: implies npol==2 in packed_to_planar */
				packed8_to_planar( p_blk->buf + off_buf, p_ws->pf->sub.data + off_subint, nchan );
				off_buf	   += stride_buf;
				off_subint += stride_subint;
			}
			break;
		default:
			fprintf( stderr, "Wrong interleave size\n" );
			return NULL;
		}

		psrfits_write_subint( p_ws->pf );

		p_ws->bytes += p_si->bytes_per_subint;

		p_blk->used = 0;
		tsfifo_put( p_ws->pool, (uintptr_t)p_blk );

		if( p_ws->rectime > 0.0 && p_ws->pf->T >= p_ws->rectime )
		{
			g_finished = 1;
			break;
		}
	}

	return NULL;
}


/*
 * helper function to format current date into "YYYY-MM-DDTHH:mm:ss:ddd" format
 */
int get_current_date( char * datestr, size_t len )
{
	int		ret;
	char	date[20];
	struct timeval	tv;
	struct tm		ts;

	ret = gettimeofday( &tv, NULL );
	if( ret != 0 )
	{
		return ret;
	}

	ts = *gmtime( &tv.tv_sec );
	strftime( date, sizeof(date), "%FT%T", &ts );
	snprintf( datestr, len, "%s.%03ld", date, tv.tv_usec / 1000 );

	return 0;
}


/*
 * helper function to get current time in MJD
 */
long double get_current_mjd( void )
{
	int			ret;
	long double	days, frac;
	struct timeval	tv;

	const int   UNIXDATE_MINUS_MJD = 40587;
	const int   SECONDS_PER_DAY = 60 * 60 * 24;

	ret = gettimeofday( &tv, NULL );
	if( ret != 0 )
	{
		fprintf( stderr, "failed to gettimeofday: %s\n", strerror( ret ) );
		return 0L;
	}

	days  = (long double)(tv.tv_sec / SECONDS_PER_DAY + UNIXDATE_MINUS_MJD);
	frac  = (long double)(tv.tv_sec % SECONDS_PER_DAY) / (long double)SECONDS_PER_DAY;
	frac += (long double)tv.tv_usec / 1E6 / (long double)SECONDS_PER_DAY;

	return (days + frac);
}


void fill_psrfits_header( struct psrfits * pf, char * filename, int npols, int nbins, int acclen, char * pfargs )
{
	int	i;
	char	datestr[24], rastr[16], decstr[16];
	char	* arg = NULL, * saveptr = NULL;

	memset( pf, 0, sizeof(*pf) );

	strncpy( pf->basefilename, filename, sizeof(pf->basefilename) );		// The base filename from which to build the true filename
	pf->rows_per_file	= 1000;				// The maximum number of rows (subints) per file
	pf->multifile		= 1;				// Write multiple output files
	pf->quiet		= 0;				// Be quiet about writing each subint

#define	FILLSTR(field, str)	strncpy(pf->hdr.field, str, sizeof(pf->hdr.field))
	FILLSTR( obs_mode, 	"SEARCH");			// Observing mode (SEARCH, PSR, CAL)
	arg = strtok_r( pfargs, ",", &saveptr );
	FILLSTR( observer,	arg);				// Observer's name
	arg = strtok_r( NULL, ",", &saveptr );
	FILLSTR( source,	arg );				// Source name
	arg = strtok_r( NULL, ",", &saveptr );
	FILLSTR( project_id,arg );				// Project identifier
	arg = strtok_r( NULL, ",", &saveptr );
	strncpy( rastr, arg, sizeof(rastr) );
	FILLSTR( ra_str,	rastr );			// Right Ascension string (HH:MM:SS.SSSS)
	arg = strtok_r( NULL, ",", &saveptr );
	strncpy( decstr, arg, sizeof(decstr) );
	FILLSTR( dec_str,	decstr );			// Declination string (DD:MM:SS.SSSS)
	arg = strtok_r( NULL, ",", &saveptr );
	FILLSTR( telescope,	arg );				// Telescope used
	arg = strtok_r( NULL, ",", &saveptr );
	FILLSTR( frontend,	arg );				// Frontend used
	FILLSTR( backend,	"PSRSPEC0");     		// Backend or instrument used
	get_current_date( datestr, sizeof(datestr) );
	FILLSTR( date_obs,	datestr);			// Start of observation (YYYY-MM-DDTHH:MM:SS.SSS)
	arg = strtok_r( NULL, ",", &saveptr );
	FILLSTR( poln_type,	arg );				// Polarization recorded (LIN or CIRC)
	FILLSTR( poln_order,"" );				// Order of polarizations (i.e. XXYYXYYX)
	FILLSTR( track_mode,"TRACK" );		        	// Track mode (TRACK, SCANGC, SCANLAT)
	FILLSTR( cal_mode,	"OFF" );			// Cal mode (OFF, SYNC, EXT1, EXT2)
	FILLSTR( feed_mode,	"FA" );				// Feed track mode (FA, CPA, SPA, TPA)
#undef FILLSTR

	pf->hdr.MJD_epoch =		get_current_mjd( );		// Starting epoch in MJD
	arg = strtok_r( NULL, ",", &saveptr );
	pf->hdr.fctr =			atof( arg );	// Center frequency of the observing band (MHz)
	arg = strtok_r( NULL, ",", &saveptr );
	pf->hdr.BW =			atof( arg );	// Bandwidth of the observing band (MHz)
	pf->hdr.dt =			nbins * (1 + acclen) / (pf->hdr.BW * 1E6);		// Sample duration (s)
	pf->hdr.ra2000 =		0;				// RA  of observation (deg, J2000) at obs start
	pf->hdr.dec2000 =		0;				// Dec of observation (deg, J2000) at obs start
	pf->hdr.azimuth =		0;				// Azimuth (commanded) at the start of the obs (deg)
	pf->hdr.zenith_ang =    	0;				// Zenith angle (commanded) at the start of the obs (deg)
	pf->hdr.beam_FWHM =		0;				// Beam FWHM (deg)
	pf->hdr.cal_freq =		0;				// Cal modulation frequency (Hz)
	pf->hdr.cal_dcyc =		0;				// Cal duty cycle (0-1)
	pf->hdr.cal_phs =		0;				// Cal phase (wrt start time)
	pf->hdr.feed_angle =    	0;				// Feed/Posn angle requested (deg)
	pf->hdr.scanlen =		0;				// Requested scan length (sec)
	pf->hdr.start_lst =		0;				// Start LST (sec past 00h)
	pf->hdr.start_sec =		0;				// Start time (sec past UTC 00h)
	pf->hdr.chan_dm =		0;				// DM that each channel was de-dispersed at (pc/cm^3)
	pf->hdr.fd_sang =		0;				// Reference angle for feed rotation (deg)
	pf->hdr.fd_xyph =		0;				// Cal signal poln cross-term phase (deg)

	pf->hdr.start_day =		0;				// Start MJD (UTC days) (J - long integer)
	pf->hdr.scan_number =   	1;				// Number of scan
	pf->hdr.nbits =			8;				// Number of bits per data sample
	pf->hdr.nbin =			0;				// Number of bins per period in fold mode
	pf->hdr.nchan =			nbins;			// Number of channels
	pf->hdr.npol =			npols;			// Number of polarizations to be stored (1 for summed)
	/* 1. nsblk <= 8192
	 * 2. one block last less than 1 second
	 * nsblk * nbins * npols < bw / (acc_len + 1)
	 * ==> nsblk < bw / ((acc_len+1) * nbins * npols
	 */
	pf->hdr.nsblk =	(uint64_t)pf->hdr.BW * 1000000 / ((acclen+1) * nbins * npols);
	if( pf->hdr.nsblk > 8192 )
	{
		pf->hdr.nsblk = 8192;
	}
	else if( pf->hdr.nsblk < 1 )
	{
		pf->hdr.nsblk = 1;
	}
	pf->hdr.orig_nchan =	nbins;			// Number of spectral channels per sample
	pf->hdr.summed_polns =	0;			// Are polarizations summed? (1=Yes, 0=No)
	pf->hdr.rcvr_polns =	npols;			// Number of polns provided by the receiver
	pf->hdr.offset_subint =	0;			// Offset subpf->hdr.number for first row in the file
	pf->hdr.ds_time_fact =	1;			// Software downsampling factor in time (1 if none)
	pf->hdr.ds_freq_fact =	1;			// Software downsampling factor in freq (1 if none)
	pf->hdr.onlyI =		0;       		// 1 if the software will only record Stokes I
	pf->hdr.fd_hand =	1;	        	// Receiver "handedness" or X/Y swap (+/-1)
	pf->hdr.be_phase =	1;	        	// Backend poln cross-term phase convention (+/-1)

	pf->hdr.orig_df =		pf->hdr.BW / pf->hdr.orig_nchan;	// Original frequency spacing between the channels (MHz)
	pf->hdr.df =			pf->hdr.BW / pf->hdr.nchan;			// Frequency spacing between the channels (MHz)

	pf->sub.tsubint =		pf->hdr.nsblk * pf->hdr.dt;			// Length of subintegration (sec)
	pf->sub.offs =			0.5 * pf->sub.tsubint;				// Offset from Start of subpf->sub.centre (sec)
	pf->sub.lst =			pf->hdr.start_lst;					// LST at subpf->sub.centre (sec)
	pf->sub.ra =			pf->hdr.ra2000;						// RA (J2000) at subpf->sub.centre (deg)
	pf->sub.dec =			pf->hdr.dec2000;					// Dec (J2000) at subpf->sub.centre (deg)
	pf->sub.glon =			0;									// Gal longitude at subpf->sub.centre (deg)
	pf->sub.glat =			0;									// Gal latitude at subpf->sub.centre (deg)
	pf->sub.feed_ang =		0;									// Feed angle at subpf->sub.centre (deg)
	pf->sub.pos_ang =		0;									// Position angle of feed at subpf->sub.centre (deg)
	pf->sub.par_ang =		0;									// Parallactic angle at subpf->sub.centre (deg)
	pf->sub.tel_az =		pf->hdr.azimuth;					// Telescope azimuth at subpf->sub.centre (deg)
	pf->sub.tel_zen =		pf->hdr.zenith_ang;					// Telescope zenith angle at subpf->sub.centre (deg)
	pf->sub.bytes_per_subint =	(pf->hdr.nbits * pf->hdr.nchan * pf->hdr.npol * pf->hdr.nsblk) / 8;		// Number of bytes for one row of raw data
	pf->sub.FITS_typecode =	TBYTE;								// FITS data typecode as per CFITSIO

	// Create and initialize the subint arrays
	pf->sub.dat_freqs	= (float *)malloc( pf->hdr.nchan * sizeof(float) );	// Ptr to array of Centre freqs for each channel (MHz)
	pf->sub.dat_weights	= (float *)malloc( pf->hdr.nchan * sizeof(float) );	// Ptr to array of Weights for each channel
	for( i = 0; i < pf->hdr.nchan; i++ )
	{
		pf->sub.dat_freqs[i]	= pf->hdr.fctr - 0.5 * pf->hdr.BW + (i + 0.5) * pf->hdr.df;
		pf->sub.dat_weights[i]	= 1.0;
	}

	pf->sub.dat_offsets	= (float *)malloc( pf->hdr.nchan * pf->hdr.npol * sizeof(float) );	// Ptr to array of offsets for each chan * pol
	pf->sub.dat_scales	= (float *)malloc( pf->hdr.nchan * pf->hdr.npol * sizeof(float) );	// Ptr to array of scalings for each chan * pol
	for ( i = 0;  i < pf->hdr.nchan * pf->hdr.npol; i++ )
	{
		pf->sub.dat_offsets[i]	= 0.0;
		pf->sub.dat_scales[i]	= 1.0;
	}

	pf->sub.data = (uint8_t *)malloc( pf->sub.bytes_per_subint );	// Ptr to the raw data itself

	/* For compatible with commit 2795a41 (4-bit fold). To use with old commit, comment out next line */
	pf->sub.rawdata = pf->sub.data;

	return;
}


int main( int argc, char *argv[] )
{
	int			ret, sockfd = -1;
	char			* hostname, * portnum, * filename;
	struct addrinfo	hints, *servaddr, *p;

	tsfifo_t		* pool, * writeq;
	pthread_t		tid_recv, tid_write;
	recvstat_t		recvstat;
	writestat_t		writestat;
	struct psrfits	pf;
	void			* p_exitcode;
	size_t			storage_block_size;

	uint32_t		acclen, nbins, interleave_size;
	double			rectime = 0.0;
	int				wait_pps = 0;
	char			* pfargs;


	/*
	 * Process arguments
	 */
	if(argc != 1)
        printf("yulei");
	if( argc != 10 )
	{
		fprintf( stderr, "\nUsage: %s <local_ip> <port_num> <file_name> <num_fft_channels> <acclen> <interleave_size> <seconds_to_record> <wait_for_pps> <\"psrfits args\">\n\n", argv[0] );
		return 0;
	}

	hostname	= argv[1];
	portnum		= argv[2];
	filename	= argv[3];

	nbins	= atoi( argv[4] );
	acclen	= atoi( argv[5] );
	if( acclen < 1 || acclen > (1<<20) )
	{
		fprintf( stderr, "Wrong acclen\n" );
		return -1;
	}

	interleave_size = atof( argv[6] );
	if( interleave_size != 2 && interleave_size != 4 && interleave_size != 6 )
	{
		fprintf( stderr, "Wrong spectra bins interleave size %d, valid values are 2, 4, 8.\n",  interleave_size);
		return -1;
	}

	rectime = atof( argv[7] );
	wait_pps = atoi( argv[8] );
	pfargs = argv[9];


	/*
	 * bind to local address
	 */

	memset( &hints, 0, sizeof(hints) );
	hints.ai_family		= AF_UNSPEC;
	hints.ai_flags		= AI_PASSIVE;
	hints.ai_socktype	= SOCK_DGRAM;
	hints.ai_protocol	= IPPROTO_UDP;

	ret = getaddrinfo( hostname, portnum, &hints, &servaddr );
	if( ret != 0 )
	{
		fprintf( stderr, "getaddrinfo(): %s\n", gai_strerror(ret) );
		return -1;
	}

	for( p = servaddr; p != NULL; p = p->ai_next )
	{
		sockfd = socket( p->ai_family, p->ai_socktype, p->ai_protocol );
		if( sockfd != -1 )
		{
			break;
		}
	}

	if( NULL == p )
	{
		fprintf( stderr, "failed to create socket\n" );
		freeaddrinfo( servaddr );
		return -1;
	}

	ret = bind( sockfd, p->ai_addr, p->ai_addrlen );
	if( ret == -1 )
	{
		fprintf( stderr, "bind(): %s\n", strerror( errno ) );
		close( sockfd );
		freeaddrinfo( servaddr );
		return -1;
	}

	freeaddrinfo( servaddr );


#if 0
	/*
	 * Only receive from specified remote address (NOT USED)
	 */

	memset( &hints, 0, sizeof(hints) );
	hints.ai_family		= AF_UNSPEC;
	hints.ai_socktype	= SOCK_DGRAM;
	hints.ai_protocol	= IPPROTO_UDP;

	ret = getaddrinfo( NULL, NULL, &hints, &servaddr );		/* NULL for any port */
	if( ret != 0 )
	{
		fprintf( stderr, "getaddrinfo(): %s\n", gai_strerror(ret) );
		close( sockfd );
		freeaddrinfo( servaddr );
		return -1;
	}

	for( p = servaddr; p != NULL; p = p->ai_next )
	{
		ret = connect( sockfd, servaddr->ai_addr, servaddr->ai_addrlen );
		if( ret == 0 )
		{
			break;
		}
	}

	if( NULL == p )
	{
		fprintf( stderr, "connect(): %s\n", strerror( errno ) );
		freeaddrinfo( servaddr );
		close( sockfd );
		return -1;
	}
#endif


	/*
	 * create memory pool, write quque and initialize memory pool
	 */

	pool = tsfifo_create( FIFO_DEPTH );
	if( NULL == pool )
	{
		fprintf( stderr, "faileded to create memory pool.\n" );
		freeaddrinfo( servaddr );
		close( sockfd );
		return -1;
	}

	writeq = tsfifo_create( FIFO_DEPTH );
	if( NULL == writeq )
	{
		fprintf( stderr, "faileded to create write queue.\n" );
		tsfifo_destroy( pool );
		freeaddrinfo( servaddr );
		close( sockfd );
		return -1;
	}

	/* we need nsblk to calculate memory pool block size */
	fill_psrfits_header( &pf, filename, 2, nbins, acclen, pfargs );

	storage_block_size = pf.hdr.nsblk * (nbins * 2 + 8) + RECEIVE_BUFSIZE - 1;

	if( !init_memory_pool( pool, storage_block_size ) )
	{
		fprintf( stderr, "failed to initialize memory pool.\n" );
		tsfifo_destroy( writeq );
		tsfifo_destroy( pool );
		freeaddrinfo( servaddr );
		close( sockfd );
		return -1;
	}


	/*
	 * initialize write thread
	 */

	writestat.pool		= pool;
	writestat.writeq	= writeq;
	writestat.bytes		= 0;
	writestat.pf		= &pf;
	writestat.rectime   = rectime;
	writestat.intlv_size= interleave_size;
	ret = pthread_create( &tid_write, NULL, write_thread, &writestat );
	if( ret != 0 )
	{
		fprintf( stderr, "failed to create write thread: %s\n", strerror( ret ) );
		destroy_memory_pool( pool );
		tsfifo_destroy( writeq );
		tsfifo_destroy( pool );
		freeaddrinfo( servaddr );
		close( sockfd );
		return -1;
	}


	/*
	 * initialize received thread
	 */

	recvstat.sockfd		= sockfd;
	recvstat.pool		= pool;
	recvstat.writeq		= writeq;
	recvstat.wait_pps	= wait_pps;
	/* nbins = number of FFT bins, *2 = 2 pols, /4 = (2 bytes * 2 pols) each FPGA cycle */
	/*
	recvstat.cnt_incr   = (acclen + 1) * nbins * 2 / 4;
	*/
	recvstat.cnt_incr   = 1;
	recvstat.pkt_lost   = 0;
	recvstat.bytes		= 0;
	ret = pthread_create( &tid_recv, NULL, receive_thread, &recvstat );
	if( ret != 0 )
	{
		fprintf( stderr, "failed to create receive thread: %s\n", strerror( ret ) );
		pthread_cancel( tid_write );
		destroy_memory_pool( pool );
		tsfifo_destroy( writeq );
		tsfifo_destroy( pool );
		freeaddrinfo( servaddr );
		close( sockfd );
		return -1;
	}


	/*
	 * register termination function
	 */
	signal( SIGINT, stop_processing );


	/*
	 * show statistics
	 */

	while( 1 )
	{
		uint64_t	last_bytes_recv, last_bytes_written;
		double		mbs_recv, mbs_written;

		last_bytes_recv	= recvstat.bytes;
		last_bytes_written= writestat.bytes;

		sleep( 1 );

		mbs_recv = (double)(recvstat.bytes - last_bytes_recv) / 1.E6;
		mbs_written = (double)(writestat.bytes - last_bytes_written) / 1.E6;

		fprintf( stderr, "recv:%8.3f MB/s  write:%8.3f MB/s  "
						 "packets lost: %"PRIu64"  writeq/pool: %3lu/%3lu  elapsed: %8.3f s\n",
				 mbs_recv, mbs_written, recvstat.pkt_lost,
				 (writeq->i_windex - writeq->i_rindex) % writeq->i_size,
				 (pool->i_windex - pool->i_rindex) % pool->i_size,
				 pf.T);
		fflush( stdout );

		if( g_finished )
		{
			break;
		}
	}


	/*
	 * wait 2 threads to complete
	 */

	ret = pthread_join( tid_recv, &p_exitcode );
	if( ret != 0 )
	{
		fprintf( stderr, "failed to join receive thread: %s\n", strerror( ret ) );
	}

	ret = pthread_join( tid_write, &p_exitcode );
	if( ret != 0 )
	{
		fprintf( stderr, "failed to join write thread: %s\n", strerror( ret ) );
	}

	psrfits_close( &pf );
	destroy_memory_pool( pool );
	tsfifo_destroy( writeq );
	tsfifo_destroy( pool );
	freeaddrinfo( servaddr );
	close( sockfd );


	return 0;
}
