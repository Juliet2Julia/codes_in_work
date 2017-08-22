/* vim: set ai ts=4 sw=4: */

/*
 * A very simple fixed size FIFO
 * Thread safe for single producer and single consumer
 */

#ifndef	_TSFIFO_H_
#define	_TSFIFO_H_

#ifdef __cplusplus
extern "C"
{
#endif /* __cplusplus */


#include <stdio.h>
#include <stdint.h>


typedef struct _tsfifo_s
{
	uintptr_t	* p_buffer;
	size_t		i_size;
	volatile size_t	i_rindex;
	volatile size_t	i_windex;
} tsfifo_t;


static inline tsfifo_t * tsfifo_create( size_t i_fifo_size )
{
	tsfifo_t * p_fifo;

	p_fifo = (tsfifo_t *)malloc( sizeof(tsfifo_t) );
	if( NULL == p_fifo )
	{
		return NULL;
	}

	p_fifo->i_size = i_fifo_size;
	p_fifo->i_rindex = p_fifo->i_windex = 0;
	p_fifo->p_buffer = (uintptr_t *)malloc( p_fifo->i_size * sizeof(uintptr_t) );
	if( NULL == p_fifo->p_buffer )
	{
		free( p_fifo );
		return NULL;
	}

	return p_fifo;
}


static inline void tsfifo_destroy( tsfifo_t * p_fifo )
{
	free( p_fifo->p_buffer );
	free( p_fifo );
}


static inline int tsfifo_empty( tsfifo_t * p_fifo )
{
	return (p_fifo->i_rindex == p_fifo->i_windex);
}


static inline int tsfifo_full( tsfifo_t * p_fifo )
{
	return (((p_fifo->i_windex + 1) % p_fifo->i_size) == p_fifo->i_rindex);
}


static inline int tsfifo_put( tsfifo_t * p_fifo, uintptr_t value )
{
	if( tsfifo_full( p_fifo ) )
	{
		return 0;
	}

	p_fifo->p_buffer[p_fifo->i_windex] = value;
	p_fifo->i_windex = (p_fifo->i_windex + 1) % p_fifo->i_size;

	return 1;
}


static inline uintptr_t tsfifo_get( tsfifo_t * p_fifo )
{
	uintptr_t value;

	if( tsfifo_empty( p_fifo ) )
	{
		return 0;
	}

	value = p_fifo->p_buffer[p_fifo->i_rindex];
	p_fifo->i_rindex = (p_fifo->i_rindex + 1) % p_fifo->i_size;

	return value;
}


#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* _TSFIFO_H_ */

