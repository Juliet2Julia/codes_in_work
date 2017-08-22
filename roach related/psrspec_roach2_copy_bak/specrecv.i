# 1 "specrecv.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "specrecv.c"
# 9 "specrecv.c"
# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 374 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 385 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 386 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 375 "/usr/include/features.h" 2 3 4
# 398 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 399 "/usr/include/features.h" 2 3 4
# 28 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 212 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 34 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;







typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
# 121 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 122 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;
# 36 "/usr/include/stdio.h" 2 3 4
# 44 "/usr/include/stdio.h" 3 4
struct _IO_FILE;



typedef struct _IO_FILE FILE;





# 64 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 74 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 31 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 15 "/usr/include/_G_config.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 16 "/usr/include/_G_config.h" 2 3 4




# 1 "/usr/include/wchar.h" 1 3 4
# 82 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "/usr/include/_G_config.h" 2 3 4
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 32 "/usr/include/libio.h" 2 3 4
# 49 "/usr/include/libio.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 50 "/usr/include/libio.h" 2 3 4
# 144 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;
# 154 "/usr/include/libio.h" 3 4
typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 177 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 245 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 293 "/usr/include/libio.h" 3 4
  __off64_t _offset;
# 302 "/usr/include/libio.h" 3 4
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;

  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 338 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);
# 390 "/usr/include/libio.h" 3 4
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 434 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 464 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 75 "/usr/include/stdio.h" 2 3 4




typedef __gnuc_va_list va_list;
# 92 "/usr/include/stdio.h" 3 4
typedef __off64_t off_t;
# 102 "/usr/include/stdio.h" 3 4
typedef __ssize_t ssize_t;









typedef _G_fpos64_t fpos_t;


# 164 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
# 165 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));




extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));



# 198 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile (void) __asm__ ("" "tmpfile64") ;
# 209 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;





extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
# 227 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;








extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 252 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 266 "/usr/include/stdio.h" 3 4

# 283 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename, const char *__restrict __modes) __asm__ ("" "fopen64")

  ;
extern FILE *freopen (const char *__restrict __filename, const char *__restrict __modes, FILE *__restrict __stream) __asm__ ("" "freopen64")


  ;






# 306 "/usr/include/stdio.h" 3 4
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;
# 319 "/usr/include/stdio.h" 3 4
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) ;






extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));





extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));








extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));





extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));

# 412 "/usr/include/stdio.h" 3 4
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));








extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 443 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                               ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                              ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 463 "/usr/include/stdio.h" 3 4








extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 494 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 522 "/usr/include/stdio.h" 3 4









extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 550 "/usr/include/stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 561 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);











extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 594 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);








extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 638 "/usr/include/stdio.h" 3 4
extern char *gets (char *__s) __attribute__ ((__deprecated__));


# 665 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) ;








extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);

# 737 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);








extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);

# 781 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off64_t __off, int __whence) __asm__ ("" "fseeko64")

                  ;
extern __off64_t ftello (FILE *__stream) __asm__ ("" "ftello64");








# 806 "/usr/include/stdio.h" 3 4
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos) __asm__ ("" "fgetpos64")
                                          ;
extern int fsetpos (FILE *__stream, const fpos_t *__pos) __asm__ ("" "fsetpos64")
                                                          ;






# 824 "/usr/include/stdio.h" 3 4


extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;








extern void perror (const char *__s);






# 1 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];
# 854 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
# 873 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
# 913 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 943 "/usr/include/stdio.h" 3 4

# 10 "specrecv.c" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 324 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 3 4
typedef int wchar_t;
# 33 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
# 50 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 42 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3 4
# 64 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 60 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4






# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap-16.h" 1 3 4
# 36 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4
# 44 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline unsigned int
__bswap_32 (unsigned int __bsx)
{
  return __builtin_bswap32 (__bsx);
}
# 108 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}
# 61 "/usr/include/endian.h" 2 3 4
# 65 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 2 3 4

union wait
  {
    int w_status;
    struct
      {

 unsigned int __w_termsig:7;
 unsigned int __w_coredump:1;
 unsigned int __w_retcode:8;
 unsigned int:16;







      } __wait_terminated;
    struct
      {

 unsigned int __w_stopval:8;
 unsigned int __w_stopsig:8;
 unsigned int:16;






      } __wait_stopped;
  };
# 43 "/usr/include/stdlib.h" 2 3 4
# 67 "/usr/include/stdlib.h" 3 4
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));
# 95 "/usr/include/stdlib.h" 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;







__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;


# 139 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;




extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

# 305 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) ;


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;




# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4






typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;





typedef __ino64_t ino_t;
# 60 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;
# 98 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;
# 115 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 132 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 57 "/usr/include/time.h" 3 4


typedef __clock_t clock_t;



# 73 "/usr/include/time.h" 3 4


typedef __time_t time_t;



# 91 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 133 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 146 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 147 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 194 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));


typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 219 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/select.h" 2 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 34 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;





# 1 "/usr/include/time.h" 1 3 4
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
# 44 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 46 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 64 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 96 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 106 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 118 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 131 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 220 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4


__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 58 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4

# 223 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;
# 248 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __blkcnt64_t blkcnt_t;



typedef __fsblkcnt64_t fsblkcnt_t;



typedef __fsfilcnt64_t fsfilcnt_t;
# 270 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4
# 60 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
typedef unsigned long int pthread_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;





typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
# 90 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;

    unsigned int __nusers;



    int __kind;

    short __spins;
    short __elision;
    __pthread_list_t __list;
# 124 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;





typedef union
{

  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    int __writer;
    int __shared;
    unsigned long int __pad1;
    unsigned long int __pad2;


    unsigned int __flags;

  } __data;
# 211 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 271 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



# 315 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));




extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));







extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));









extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;










extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 493 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 513 "/usr/include/stdlib.h" 3 4


extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 530 "/usr/include/stdlib.h" 3 4





extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));













extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));






extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;

# 578 "/usr/include/stdlib.h" 3 4
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
# 606 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 623 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __asm__ ("" "mkstemp64")
     __attribute__ ((__nonnull__ (1))) ;
# 645 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __asm__ ("" "mkstemps64")
                     __attribute__ ((__nonnull__ (1))) ;
# 663 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 712 "/usr/include/stdlib.h" 3 4





extern int system (const char *__command) ;

# 734 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) ;






typedef int (*__compar_fn_t) (const void *, const void *);
# 752 "/usr/include/stdlib.h" 3 4



extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 775 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;







extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;

# 812 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));






extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));








extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 899 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) ;
# 951 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 956 "/usr/include/stdlib.h" 2 3 4
# 968 "/usr/include/stdlib.h" 3 4

# 11 "specrecv.c" 2
# 1 "/usr/include/string.h" 1 3 4
# 27 "/usr/include/string.h" 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 33 "/usr/include/string.h" 2 3 4
# 44 "/usr/include/string.h" 3 4


extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 96 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 127 "/usr/include/string.h" 3 4


extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));






# 1 "/usr/include/xlocale.h" 1 3 4
# 27 "/usr/include/xlocale.h" 3 4
typedef struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
} *__locale_t;


typedef __locale_t locale_t;
# 164 "/usr/include/string.h" 2 3 4


extern int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));





extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 211 "/usr/include/string.h" 3 4

# 236 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 263 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 282 "/usr/include/string.h" 3 4



extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 315 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 342 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 397 "/usr/include/string.h" 3 4


extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));

# 427 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ , __leaf__))

                        __attribute__ ((__nonnull__ (2)));
# 445 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));





extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern void bcopy (const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 489 "/usr/include/string.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 517 "/usr/include/string.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 534 "/usr/include/string.h" 3 4
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 557 "/usr/include/string.h" 3 4
extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 644 "/usr/include/string.h" 3 4

# 12 "specrecv.c" 2
# 1 "/usr/include/errno.h" 1 3 4
# 31 "/usr/include/errno.h" 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/errno.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/errno.h" 3 4
# 1 "/usr/include/linux/errno.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/errno.h" 1 3 4
# 1 "/usr/include/asm-generic/errno.h" 1 3 4



# 1 "/usr/include/asm-generic/errno-base.h" 1 3 4
# 5 "/usr/include/asm-generic/errno.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/errno.h" 2 3 4
# 1 "/usr/include/linux/errno.h" 2 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/errno.h" 2 3 4
# 50 "/usr/include/x86_64-linux-gnu/bits/errno.h" 3 4
extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 36 "/usr/include/errno.h" 2 3 4
# 58 "/usr/include/errno.h" 3 4

# 13 "specrecv.c" 2
# 1 "/usr/include/inttypes.h" 1 3 4
# 27 "/usr/include/inttypes.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4
# 48 "/usr/include/stdint.h" 3 4
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;



typedef unsigned long int uint64_t;
# 65 "/usr/include/stdint.h" 3 4
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;






typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;
# 90 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 103 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 119 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 10 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdint.h" 2 3 4
# 28 "/usr/include/inttypes.h" 2 3 4






typedef int __gwchar_t;
# 266 "/usr/include/inttypes.h" 3 4





typedef struct
  {
    long int quot;
    long int rem;
  } imaxdiv_t;
# 290 "/usr/include/inttypes.h" 3 4
extern intmax_t imaxabs (intmax_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern intmax_t strtoimax (const char *__restrict __nptr,
      char **__restrict __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));


extern uintmax_t strtoumax (const char *__restrict __nptr,
       char ** __restrict __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));


extern intmax_t wcstoimax (const __gwchar_t *__restrict __nptr,
      __gwchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__));


extern uintmax_t wcstoumax (const __gwchar_t *__restrict __nptr,
       __gwchar_t ** __restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__));
# 432 "/usr/include/inttypes.h" 3 4

# 14 "specrecv.c" 2
# 1 "/usr/include/unistd.h" 1 3 4
# 27 "/usr/include/unistd.h" 3 4

# 202 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/posix_opt.h" 1 3 4
# 203 "/usr/include/unistd.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/environments.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/environments.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/environments.h" 2 3 4
# 207 "/usr/include/unistd.h" 2 3 4
# 226 "/usr/include/unistd.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 227 "/usr/include/unistd.h" 2 3 4
# 255 "/usr/include/unistd.h" 3 4
typedef __useconds_t useconds_t;
# 274 "/usr/include/unistd.h" 3 4
typedef __socklen_t socklen_t;
# 287 "/usr/include/unistd.h" 3 4
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 304 "/usr/include/unistd.h" 3 4
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;
# 337 "/usr/include/unistd.h" 3 4
extern __off64_t lseek (int __fd, __off64_t __offset, int __whence) __asm__ ("" "lseek64") __attribute__ ((__nothrow__ , __leaf__))

             ;
# 353 "/usr/include/unistd.h" 3 4
extern int close (int __fd);






extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;





extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
# 388 "/usr/include/unistd.h" 3 4
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes, __off64_t __offset) __asm__ ("" "pread64")

                    ;
extern ssize_t pwrite (int __fd, const void *__buf, size_t __nbytes, __off64_t __offset) __asm__ ("" "pwrite64")

                     ;
# 417 "/usr/include/unistd.h" 3 4
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ , __leaf__)) ;
# 432 "/usr/include/unistd.h" 3 4
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ , __leaf__));
# 444 "/usr/include/unistd.h" 3 4
extern unsigned int sleep (unsigned int __seconds);







extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ , __leaf__));






extern int usleep (__useconds_t __useconds);
# 469 "/usr/include/unistd.h" 3 4
extern int pause (void);



extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;






extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;



extern int chdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int fchdir (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;
# 511 "/usr/include/unistd.h" 3 4
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) ;
# 525 "/usr/include/unistd.h" 3 4
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;




extern int dup (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;


extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ , __leaf__));
# 543 "/usr/include/unistd.h" 3 4
extern char **__environ;







extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 598 "/usr/include/unistd.h" 3 4
extern int nice (int __inc) __attribute__ ((__nothrow__ , __leaf__)) ;




extern void _exit (int __status) __attribute__ ((__noreturn__));





# 1 "/usr/include/x86_64-linux-gnu/bits/confname.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/confname.h" 3 4
enum
  {
    _PC_LINK_MAX,

    _PC_MAX_CANON,

    _PC_MAX_INPUT,

    _PC_NAME_MAX,

    _PC_PATH_MAX,

    _PC_PIPE_BUF,

    _PC_CHOWN_RESTRICTED,

    _PC_NO_TRUNC,

    _PC_VDISABLE,

    _PC_SYNC_IO,

    _PC_ASYNC_IO,

    _PC_PRIO_IO,

    _PC_SOCK_MAXBUF,

    _PC_FILESIZEBITS,

    _PC_REC_INCR_XFER_SIZE,

    _PC_REC_MAX_XFER_SIZE,

    _PC_REC_MIN_XFER_SIZE,

    _PC_REC_XFER_ALIGN,

    _PC_ALLOC_SIZE_MIN,

    _PC_SYMLINK_MAX,

    _PC_2_SYMLINKS

  };


enum
  {
    _SC_ARG_MAX,

    _SC_CHILD_MAX,

    _SC_CLK_TCK,

    _SC_NGROUPS_MAX,

    _SC_OPEN_MAX,

    _SC_STREAM_MAX,

    _SC_TZNAME_MAX,

    _SC_JOB_CONTROL,

    _SC_SAVED_IDS,

    _SC_REALTIME_SIGNALS,

    _SC_PRIORITY_SCHEDULING,

    _SC_TIMERS,

    _SC_ASYNCHRONOUS_IO,

    _SC_PRIORITIZED_IO,

    _SC_SYNCHRONIZED_IO,

    _SC_FSYNC,

    _SC_MAPPED_FILES,

    _SC_MEMLOCK,

    _SC_MEMLOCK_RANGE,

    _SC_MEMORY_PROTECTION,

    _SC_MESSAGE_PASSING,

    _SC_SEMAPHORES,

    _SC_SHARED_MEMORY_OBJECTS,

    _SC_AIO_LISTIO_MAX,

    _SC_AIO_MAX,

    _SC_AIO_PRIO_DELTA_MAX,

    _SC_DELAYTIMER_MAX,

    _SC_MQ_OPEN_MAX,

    _SC_MQ_PRIO_MAX,

    _SC_VERSION,

    _SC_PAGESIZE,


    _SC_RTSIG_MAX,

    _SC_SEM_NSEMS_MAX,

    _SC_SEM_VALUE_MAX,

    _SC_SIGQUEUE_MAX,

    _SC_TIMER_MAX,




    _SC_BC_BASE_MAX,

    _SC_BC_DIM_MAX,

    _SC_BC_SCALE_MAX,

    _SC_BC_STRING_MAX,

    _SC_COLL_WEIGHTS_MAX,

    _SC_EQUIV_CLASS_MAX,

    _SC_EXPR_NEST_MAX,

    _SC_LINE_MAX,

    _SC_RE_DUP_MAX,

    _SC_CHARCLASS_NAME_MAX,


    _SC_2_VERSION,

    _SC_2_C_BIND,

    _SC_2_C_DEV,

    _SC_2_FORT_DEV,

    _SC_2_FORT_RUN,

    _SC_2_SW_DEV,

    _SC_2_LOCALEDEF,


    _SC_PII,

    _SC_PII_XTI,

    _SC_PII_SOCKET,

    _SC_PII_INTERNET,

    _SC_PII_OSI,

    _SC_POLL,

    _SC_SELECT,

    _SC_UIO_MAXIOV,

    _SC_IOV_MAX = _SC_UIO_MAXIOV,

    _SC_PII_INTERNET_STREAM,

    _SC_PII_INTERNET_DGRAM,

    _SC_PII_OSI_COTS,

    _SC_PII_OSI_CLTS,

    _SC_PII_OSI_M,

    _SC_T_IOV_MAX,



    _SC_THREADS,

    _SC_THREAD_SAFE_FUNCTIONS,

    _SC_GETGR_R_SIZE_MAX,

    _SC_GETPW_R_SIZE_MAX,

    _SC_LOGIN_NAME_MAX,

    _SC_TTY_NAME_MAX,

    _SC_THREAD_DESTRUCTOR_ITERATIONS,

    _SC_THREAD_KEYS_MAX,

    _SC_THREAD_STACK_MIN,

    _SC_THREAD_THREADS_MAX,

    _SC_THREAD_ATTR_STACKADDR,

    _SC_THREAD_ATTR_STACKSIZE,

    _SC_THREAD_PRIORITY_SCHEDULING,

    _SC_THREAD_PRIO_INHERIT,

    _SC_THREAD_PRIO_PROTECT,

    _SC_THREAD_PROCESS_SHARED,


    _SC_NPROCESSORS_CONF,

    _SC_NPROCESSORS_ONLN,

    _SC_PHYS_PAGES,

    _SC_AVPHYS_PAGES,

    _SC_ATEXIT_MAX,

    _SC_PASS_MAX,


    _SC_XOPEN_VERSION,

    _SC_XOPEN_XCU_VERSION,

    _SC_XOPEN_UNIX,

    _SC_XOPEN_CRYPT,

    _SC_XOPEN_ENH_I18N,

    _SC_XOPEN_SHM,


    _SC_2_CHAR_TERM,

    _SC_2_C_VERSION,

    _SC_2_UPE,


    _SC_XOPEN_XPG2,

    _SC_XOPEN_XPG3,

    _SC_XOPEN_XPG4,


    _SC_CHAR_BIT,

    _SC_CHAR_MAX,

    _SC_CHAR_MIN,

    _SC_INT_MAX,

    _SC_INT_MIN,

    _SC_LONG_BIT,

    _SC_WORD_BIT,

    _SC_MB_LEN_MAX,

    _SC_NZERO,

    _SC_SSIZE_MAX,

    _SC_SCHAR_MAX,

    _SC_SCHAR_MIN,

    _SC_SHRT_MAX,

    _SC_SHRT_MIN,

    _SC_UCHAR_MAX,

    _SC_UINT_MAX,

    _SC_ULONG_MAX,

    _SC_USHRT_MAX,


    _SC_NL_ARGMAX,

    _SC_NL_LANGMAX,

    _SC_NL_MSGMAX,

    _SC_NL_NMAX,

    _SC_NL_SETMAX,

    _SC_NL_TEXTMAX,


    _SC_XBS5_ILP32_OFF32,

    _SC_XBS5_ILP32_OFFBIG,

    _SC_XBS5_LP64_OFF64,

    _SC_XBS5_LPBIG_OFFBIG,


    _SC_XOPEN_LEGACY,

    _SC_XOPEN_REALTIME,

    _SC_XOPEN_REALTIME_THREADS,


    _SC_ADVISORY_INFO,

    _SC_BARRIERS,

    _SC_BASE,

    _SC_C_LANG_SUPPORT,

    _SC_C_LANG_SUPPORT_R,

    _SC_CLOCK_SELECTION,

    _SC_CPUTIME,

    _SC_THREAD_CPUTIME,

    _SC_DEVICE_IO,

    _SC_DEVICE_SPECIFIC,

    _SC_DEVICE_SPECIFIC_R,

    _SC_FD_MGMT,

    _SC_FIFO,

    _SC_PIPE,

    _SC_FILE_ATTRIBUTES,

    _SC_FILE_LOCKING,

    _SC_FILE_SYSTEM,

    _SC_MONOTONIC_CLOCK,

    _SC_MULTI_PROCESS,

    _SC_SINGLE_PROCESS,

    _SC_NETWORKING,

    _SC_READER_WRITER_LOCKS,

    _SC_SPIN_LOCKS,

    _SC_REGEXP,

    _SC_REGEX_VERSION,

    _SC_SHELL,

    _SC_SIGNALS,

    _SC_SPAWN,

    _SC_SPORADIC_SERVER,

    _SC_THREAD_SPORADIC_SERVER,

    _SC_SYSTEM_DATABASE,

    _SC_SYSTEM_DATABASE_R,

    _SC_TIMEOUTS,

    _SC_TYPED_MEMORY_OBJECTS,

    _SC_USER_GROUPS,

    _SC_USER_GROUPS_R,

    _SC_2_PBS,

    _SC_2_PBS_ACCOUNTING,

    _SC_2_PBS_LOCATE,

    _SC_2_PBS_MESSAGE,

    _SC_2_PBS_TRACK,

    _SC_SYMLOOP_MAX,

    _SC_STREAMS,

    _SC_2_PBS_CHECKPOINT,


    _SC_V6_ILP32_OFF32,

    _SC_V6_ILP32_OFFBIG,

    _SC_V6_LP64_OFF64,

    _SC_V6_LPBIG_OFFBIG,


    _SC_HOST_NAME_MAX,

    _SC_TRACE,

    _SC_TRACE_EVENT_FILTER,

    _SC_TRACE_INHERIT,

    _SC_TRACE_LOG,


    _SC_LEVEL1_ICACHE_SIZE,

    _SC_LEVEL1_ICACHE_ASSOC,

    _SC_LEVEL1_ICACHE_LINESIZE,

    _SC_LEVEL1_DCACHE_SIZE,

    _SC_LEVEL1_DCACHE_ASSOC,

    _SC_LEVEL1_DCACHE_LINESIZE,

    _SC_LEVEL2_CACHE_SIZE,

    _SC_LEVEL2_CACHE_ASSOC,

    _SC_LEVEL2_CACHE_LINESIZE,

    _SC_LEVEL3_CACHE_SIZE,

    _SC_LEVEL3_CACHE_ASSOC,

    _SC_LEVEL3_CACHE_LINESIZE,

    _SC_LEVEL4_CACHE_SIZE,

    _SC_LEVEL4_CACHE_ASSOC,

    _SC_LEVEL4_CACHE_LINESIZE,



    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

    _SC_RAW_SOCKETS,


    _SC_V7_ILP32_OFF32,

    _SC_V7_ILP32_OFFBIG,

    _SC_V7_LP64_OFF64,

    _SC_V7_LPBIG_OFFBIG,


    _SC_SS_REPL_MAX,


    _SC_TRACE_EVENT_NAME_MAX,

    _SC_TRACE_NAME_MAX,

    _SC_TRACE_SYS_MAX,

    _SC_TRACE_USER_EVENT_MAX,


    _SC_XOPEN_STREAMS,


    _SC_THREAD_ROBUST_PRIO_INHERIT,

    _SC_THREAD_ROBUST_PRIO_PROTECT

  };


enum
  {
    _CS_PATH,


    _CS_V6_WIDTH_RESTRICTED_ENVS,



    _CS_GNU_LIBC_VERSION,

    _CS_GNU_LIBPTHREAD_VERSION,


    _CS_V5_WIDTH_RESTRICTED_ENVS,



    _CS_V7_WIDTH_RESTRICTED_ENVS,



    _CS_LFS_CFLAGS = 1000,

    _CS_LFS_LDFLAGS,

    _CS_LFS_LIBS,

    _CS_LFS_LINTFLAGS,

    _CS_LFS64_CFLAGS,

    _CS_LFS64_LDFLAGS,

    _CS_LFS64_LIBS,

    _CS_LFS64_LINTFLAGS,


    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,

    _CS_XBS5_ILP32_OFF32_LDFLAGS,

    _CS_XBS5_ILP32_OFF32_LIBS,

    _CS_XBS5_ILP32_OFF32_LINTFLAGS,

    _CS_XBS5_ILP32_OFFBIG_CFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LIBS,

    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,

    _CS_XBS5_LP64_OFF64_CFLAGS,

    _CS_XBS5_LP64_OFF64_LDFLAGS,

    _CS_XBS5_LP64_OFF64_LIBS,

    _CS_XBS5_LP64_OFF64_LINTFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LIBS,

    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LIBS,

    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V6_LP64_OFF64_CFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LIBS,

    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LIBS,

    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V7_LP64_OFF64_CFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LIBS,

    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,


    _CS_V6_ENV,

    _CS_V7_ENV

  };
# 610 "/usr/include/unistd.h" 2 3 4


extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ , __leaf__));


extern long int sysconf (int __name) __attribute__ ((__nothrow__ , __leaf__));



extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));




extern __pid_t getpid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getppid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));

extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));






extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ , __leaf__));
# 660 "/usr/include/unistd.h" 3 4
extern int setpgrp (void) __attribute__ ((__nothrow__ , __leaf__));






extern __pid_t setsid (void) __attribute__ ((__nothrow__ , __leaf__));



extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));



extern __uid_t getuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __uid_t geteuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getgid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getegid (void) __attribute__ ((__nothrow__ , __leaf__));




extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ , __leaf__)) ;
# 700 "/usr/include/unistd.h" 3 4
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;






extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;
# 756 "/usr/include/unistd.h" 3 4
extern __pid_t fork (void) __attribute__ ((__nothrow__));







extern __pid_t vfork (void) __attribute__ ((__nothrow__ , __leaf__));





extern char *ttyname (int __fd) __attribute__ ((__nothrow__ , __leaf__));



extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;



extern int isatty (int __fd) __attribute__ ((__nothrow__ , __leaf__));





extern int ttyslot (void) __attribute__ ((__nothrow__ , __leaf__));




extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4))) ;




extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3))) ;


extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) ;



extern int unlink (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern int rmdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ , __leaf__));


extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ , __leaf__));






extern char *getlogin (void);







extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));




extern int setlogin (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 871 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/getopt.h" 1 3 4
# 57 "/usr/include/getopt.h" 3 4
extern char *optarg;
# 71 "/usr/include/getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 150 "/usr/include/getopt.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ , __leaf__));
# 872 "/usr/include/unistd.h" 2 3 4







extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int sethostid (long int __id) __attribute__ ((__nothrow__ , __leaf__)) ;





extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;





extern int vhangup (void) __attribute__ ((__nothrow__ , __leaf__));


extern int revoke (const char *__file) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;







extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int acct (const char *__name) __attribute__ ((__nothrow__ , __leaf__));



extern char *getusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void endusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void setusershell (void) __attribute__ ((__nothrow__ , __leaf__));





extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ , __leaf__)) ;






extern int chroot (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));







extern int fsync (int __fd);
# 969 "/usr/include/unistd.h" 3 4
extern long int gethostid (void);


extern void sync (void) __attribute__ ((__nothrow__ , __leaf__));





extern int getpagesize (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern int getdtablesize (void) __attribute__ ((__nothrow__ , __leaf__));
# 997 "/usr/include/unistd.h" 3 4
extern int truncate (const char *__file, __off64_t __length) __asm__ ("" "truncate64") __attribute__ ((__nothrow__ , __leaf__))

                  __attribute__ ((__nonnull__ (1))) ;
# 1019 "/usr/include/unistd.h" 3 4
extern int ftruncate (int __fd, __off64_t __length) __asm__ ("" "ftruncate64") __attribute__ ((__nothrow__ , __leaf__))
                        ;
# 1037 "/usr/include/unistd.h" 3 4
extern int brk (void *__addr) __attribute__ ((__nothrow__ , __leaf__)) ;





extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ , __leaf__));
# 1058 "/usr/include/unistd.h" 3 4
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ , __leaf__));
# 1084 "/usr/include/unistd.h" 3 4
extern int lockf (int __fd, int __cmd, __off64_t __len) __asm__ ("" "lockf64")
                       ;
# 1112 "/usr/include/unistd.h" 3 4
extern int fdatasync (int __fildes);
# 1151 "/usr/include/unistd.h" 3 4

# 15 "specrecv.c" 2

# 1 "/usr/include/x86_64-linux-gnu/sys/socket.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/sys/socket.h" 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/uio.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/sys/uio.h" 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/uio.h" 1 3 4
# 43 "/usr/include/x86_64-linux-gnu/bits/uio.h" 3 4
struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };
# 29 "/usr/include/x86_64-linux-gnu/sys/uio.h" 2 3 4
# 39 "/usr/include/x86_64-linux-gnu/sys/uio.h" 3 4
extern ssize_t readv (int __fd, const struct iovec *__iovec, int __count)
  ;
# 50 "/usr/include/x86_64-linux-gnu/sys/uio.h" 3 4
extern ssize_t writev (int __fd, const struct iovec *__iovec, int __count)
  ;
# 81 "/usr/include/x86_64-linux-gnu/sys/uio.h" 3 4
extern ssize_t preadv (int __fd, const struct iovec *__iovec, int __count, __off64_t __offset) __asm__ ("" "preadv64")

                     ;
extern ssize_t pwritev (int __fd, const struct iovec *__iovec, int __count, __off64_t __offset) __asm__ ("" "pwritev64")

                      ;
# 120 "/usr/include/x86_64-linux-gnu/sys/uio.h" 3 4

# 27 "/usr/include/x86_64-linux-gnu/sys/socket.h" 2 3 4

# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/sys/socket.h" 2 3 4
# 38 "/usr/include/x86_64-linux-gnu/sys/socket.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/socket.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/socket.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/socket.h" 2 3 4
# 38 "/usr/include/x86_64-linux-gnu/bits/socket.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/socket_type.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/socket_type.h" 3 4
enum __socket_type
{
  SOCK_STREAM = 1,


  SOCK_DGRAM = 2,


  SOCK_RAW = 3,

  SOCK_RDM = 4,

  SOCK_SEQPACKET = 5,


  SOCK_DCCP = 6,

  SOCK_PACKET = 10,







  SOCK_CLOEXEC = 02000000,


  SOCK_NONBLOCK = 00004000


};
# 39 "/usr/include/x86_64-linux-gnu/bits/socket.h" 2 3 4
# 146 "/usr/include/x86_64-linux-gnu/bits/socket.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/sockaddr.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/sockaddr.h" 3 4
typedef unsigned short int sa_family_t;
# 147 "/usr/include/x86_64-linux-gnu/bits/socket.h" 2 3 4


struct sockaddr
  {
    sa_family_t sa_family;
    char sa_data[14];
  };
# 162 "/usr/include/x86_64-linux-gnu/bits/socket.h" 3 4
struct sockaddr_storage
  {
    sa_family_t ss_family;
    unsigned long int __ss_align;
    char __ss_padding[(128 - (2 * sizeof (unsigned long int)))];
  };



enum
  {
    MSG_OOB = 0x01,

    MSG_PEEK = 0x02,

    MSG_DONTROUTE = 0x04,






    MSG_CTRUNC = 0x08,

    MSG_PROXY = 0x10,

    MSG_TRUNC = 0x20,

    MSG_DONTWAIT = 0x40,

    MSG_EOR = 0x80,

    MSG_WAITALL = 0x100,

    MSG_FIN = 0x200,

    MSG_SYN = 0x400,

    MSG_CONFIRM = 0x800,

    MSG_RST = 0x1000,

    MSG_ERRQUEUE = 0x2000,

    MSG_NOSIGNAL = 0x4000,

    MSG_MORE = 0x8000,

    MSG_WAITFORONE = 0x10000,

    MSG_FASTOPEN = 0x20000000,


    MSG_CMSG_CLOEXEC = 0x40000000



  };




struct msghdr
  {
    void *msg_name;
    socklen_t msg_namelen;

    struct iovec *msg_iov;
    size_t msg_iovlen;

    void *msg_control;
    size_t msg_controllen;




    int msg_flags;
  };


struct cmsghdr
  {
    size_t cmsg_len;




    int cmsg_level;
    int cmsg_type;

    __extension__ unsigned char __cmsg_data [];

  };
# 272 "/usr/include/x86_64-linux-gnu/bits/socket.h" 3 4
extern struct cmsghdr *__cmsg_nxthdr (struct msghdr *__mhdr,
          struct cmsghdr *__cmsg) __attribute__ ((__nothrow__ , __leaf__));
# 299 "/usr/include/x86_64-linux-gnu/bits/socket.h" 3 4
enum
  {
    SCM_RIGHTS = 0x01





  };
# 345 "/usr/include/x86_64-linux-gnu/bits/socket.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/socket.h" 1 3 4
# 1 "/usr/include/asm-generic/socket.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/asm/sockios.h" 1 3 4
# 1 "/usr/include/asm-generic/sockios.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/sockios.h" 2 3 4
# 5 "/usr/include/asm-generic/socket.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/socket.h" 2 3 4
# 346 "/usr/include/x86_64-linux-gnu/bits/socket.h" 2 3 4
# 379 "/usr/include/x86_64-linux-gnu/bits/socket.h" 3 4
struct linger
  {
    int l_onoff;
    int l_linger;
  };
# 39 "/usr/include/x86_64-linux-gnu/sys/socket.h" 2 3 4




struct osockaddr
  {
    unsigned short int sa_family;
    unsigned char sa_data[14];
  };




enum
{
  SHUT_RD = 0,

  SHUT_WR,

  SHUT_RDWR

};
# 113 "/usr/include/x86_64-linux-gnu/sys/socket.h" 3 4
extern int socket (int __domain, int __type, int __protocol) __attribute__ ((__nothrow__ , __leaf__));





extern int socketpair (int __domain, int __type, int __protocol,
         int __fds[2]) __attribute__ ((__nothrow__ , __leaf__));


extern int bind (int __fd, const struct sockaddr * __addr, socklen_t __len)
     __attribute__ ((__nothrow__ , __leaf__));


extern int getsockname (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ , __leaf__));
# 137 "/usr/include/x86_64-linux-gnu/sys/socket.h" 3 4
extern int connect (int __fd, const struct sockaddr * __addr, socklen_t __len);



extern int getpeername (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ , __leaf__));






extern ssize_t send (int __fd, const void *__buf, size_t __n, int __flags);






extern ssize_t recv (int __fd, void *__buf, size_t __n, int __flags);






extern ssize_t sendto (int __fd, const void *__buf, size_t __n,
         int __flags, const struct sockaddr * __addr,
         socklen_t __addr_len);
# 174 "/usr/include/x86_64-linux-gnu/sys/socket.h" 3 4
extern ssize_t recvfrom (int __fd, void *__restrict __buf, size_t __n,
    int __flags, struct sockaddr *__restrict __addr,
    socklen_t *__restrict __addr_len);







extern ssize_t sendmsg (int __fd, const struct msghdr *__message,
   int __flags);
# 202 "/usr/include/x86_64-linux-gnu/sys/socket.h" 3 4
extern ssize_t recvmsg (int __fd, struct msghdr *__message, int __flags);
# 219 "/usr/include/x86_64-linux-gnu/sys/socket.h" 3 4
extern int getsockopt (int __fd, int __level, int __optname,
         void *__restrict __optval,
         socklen_t *__restrict __optlen) __attribute__ ((__nothrow__ , __leaf__));




extern int setsockopt (int __fd, int __level, int __optname,
         const void *__optval, socklen_t __optlen) __attribute__ ((__nothrow__ , __leaf__));





extern int listen (int __fd, int __n) __attribute__ ((__nothrow__ , __leaf__));
# 243 "/usr/include/x86_64-linux-gnu/sys/socket.h" 3 4
extern int accept (int __fd, struct sockaddr *__restrict __addr,
     socklen_t *__restrict __addr_len);
# 261 "/usr/include/x86_64-linux-gnu/sys/socket.h" 3 4
extern int shutdown (int __fd, int __how) __attribute__ ((__nothrow__ , __leaf__));




extern int sockatmark (int __fd) __attribute__ ((__nothrow__ , __leaf__));







extern int isfdtype (int __fd, int __fdtype) __attribute__ ((__nothrow__ , __leaf__));
# 283 "/usr/include/x86_64-linux-gnu/sys/socket.h" 3 4

# 17 "specrecv.c" 2
# 1 "/usr/include/netdb.h" 1 3 4
# 27 "/usr/include/netdb.h" 3 4
# 1 "/usr/include/netinet/in.h" 1 3 4
# 27 "/usr/include/netinet/in.h" 3 4



typedef uint32_t in_addr_t;
struct in_addr
  {
    in_addr_t s_addr;
  };


# 1 "/usr/include/x86_64-linux-gnu/bits/in.h" 1 3 4
# 112 "/usr/include/x86_64-linux-gnu/bits/in.h" 3 4
struct ip_opts
  {
    struct in_addr ip_dst;
    char ip_opts[40];
  };


struct ip_mreqn
  {
    struct in_addr imr_multiaddr;
    struct in_addr imr_address;
    int imr_ifindex;
  };


struct in_pktinfo
  {
    int ipi_ifindex;
    struct in_addr ipi_spec_dst;
    struct in_addr ipi_addr;
  };
# 38 "/usr/include/netinet/in.h" 2 3 4


enum
  {
    IPPROTO_IP = 0,

    IPPROTO_ICMP = 1,

    IPPROTO_IGMP = 2,

    IPPROTO_IPIP = 4,

    IPPROTO_TCP = 6,

    IPPROTO_EGP = 8,

    IPPROTO_PUP = 12,

    IPPROTO_UDP = 17,

    IPPROTO_IDP = 22,

    IPPROTO_TP = 29,

    IPPROTO_DCCP = 33,

    IPPROTO_IPV6 = 41,

    IPPROTO_RSVP = 46,

    IPPROTO_GRE = 47,

    IPPROTO_ESP = 50,

    IPPROTO_AH = 51,

    IPPROTO_MTP = 92,

    IPPROTO_BEETPH = 94,

    IPPROTO_ENCAP = 98,

    IPPROTO_PIM = 103,

    IPPROTO_COMP = 108,

    IPPROTO_SCTP = 132,

    IPPROTO_UDPLITE = 136,

    IPPROTO_RAW = 255,

    IPPROTO_MAX
  };





enum
  {
    IPPROTO_HOPOPTS = 0,

    IPPROTO_ROUTING = 43,

    IPPROTO_FRAGMENT = 44,

    IPPROTO_ICMPV6 = 58,

    IPPROTO_NONE = 59,

    IPPROTO_DSTOPTS = 60,

    IPPROTO_MH = 135

  };



typedef uint16_t in_port_t;


enum
  {
    IPPORT_ECHO = 7,
    IPPORT_DISCARD = 9,
    IPPORT_SYSTAT = 11,
    IPPORT_DAYTIME = 13,
    IPPORT_NETSTAT = 15,
    IPPORT_FTP = 21,
    IPPORT_TELNET = 23,
    IPPORT_SMTP = 25,
    IPPORT_TIMESERVER = 37,
    IPPORT_NAMESERVER = 42,
    IPPORT_WHOIS = 43,
    IPPORT_MTP = 57,

    IPPORT_TFTP = 69,
    IPPORT_RJE = 77,
    IPPORT_FINGER = 79,
    IPPORT_TTYLINK = 87,
    IPPORT_SUPDUP = 95,


    IPPORT_EXECSERVER = 512,
    IPPORT_LOGINSERVER = 513,
    IPPORT_CMDSERVER = 514,
    IPPORT_EFSSERVER = 520,


    IPPORT_BIFFUDP = 512,
    IPPORT_WHOSERVER = 513,
    IPPORT_ROUTESERVER = 520,


    IPPORT_RESERVED = 1024,


    IPPORT_USERRESERVED = 5000
  };
# 209 "/usr/include/netinet/in.h" 3 4
struct in6_addr
  {
    union
      {
 uint8_t __u6_addr8[16];

 uint16_t __u6_addr16[8];
 uint32_t __u6_addr32[4];

      } __in6_u;





  };


extern const struct in6_addr in6addr_any;
extern const struct in6_addr in6addr_loopback;
# 237 "/usr/include/netinet/in.h" 3 4
struct sockaddr_in
  {
    sa_family_t sin_family;
    in_port_t sin_port;
    struct in_addr sin_addr;


    unsigned char sin_zero[sizeof (struct sockaddr) -
      (sizeof (unsigned short int)) -
      sizeof (in_port_t) -
      sizeof (struct in_addr)];
  };



struct sockaddr_in6
  {
    sa_family_t sin6_family;
    in_port_t sin6_port;
    uint32_t sin6_flowinfo;
    struct in6_addr sin6_addr;
    uint32_t sin6_scope_id;
  };




struct ip_mreq
  {

    struct in_addr imr_multiaddr;


    struct in_addr imr_interface;
  };

struct ip_mreq_source
  {

    struct in_addr imr_multiaddr;


    struct in_addr imr_interface;


    struct in_addr imr_sourceaddr;
  };




struct ipv6_mreq
  {

    struct in6_addr ipv6mr_multiaddr;


    unsigned int ipv6mr_interface;
  };




struct group_req
  {

    uint32_t gr_interface;


    struct sockaddr_storage gr_group;
  };

struct group_source_req
  {

    uint32_t gsr_interface;


    struct sockaddr_storage gsr_group;


    struct sockaddr_storage gsr_source;
  };



struct ip_msfilter
  {

    struct in_addr imsf_multiaddr;


    struct in_addr imsf_interface;


    uint32_t imsf_fmode;


    uint32_t imsf_numsrc;

    struct in_addr imsf_slist[1];
  };





struct group_filter
  {

    uint32_t gf_interface;


    struct sockaddr_storage gf_group;


    uint32_t gf_fmode;


    uint32_t gf_numsrc;

    struct sockaddr_storage gf_slist[1];
};
# 374 "/usr/include/netinet/in.h" 3 4
extern uint32_t ntohl (uint32_t __netlong) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint16_t ntohs (uint16_t __netshort)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint32_t htonl (uint32_t __hostlong)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint16_t htons (uint16_t __hostshort)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
# 386 "/usr/include/netinet/in.h" 2 3 4
# 501 "/usr/include/netinet/in.h" 3 4
extern int bindresvport (int __sockfd, struct sockaddr_in *__sock_in) __attribute__ ((__nothrow__ , __leaf__));


extern int bindresvport6 (int __sockfd, struct sockaddr_in6 *__sock_in)
     __attribute__ ((__nothrow__ , __leaf__));
# 628 "/usr/include/netinet/in.h" 3 4

# 28 "/usr/include/netdb.h" 2 3 4




# 1 "/usr/include/rpc/netdb.h" 1 3 4
# 42 "/usr/include/rpc/netdb.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 43 "/usr/include/rpc/netdb.h" 2 3 4



struct rpcent
{
  char *r_name;
  char **r_aliases;
  int r_number;
};

extern void setrpcent (int __stayopen) __attribute__ ((__nothrow__ , __leaf__));
extern void endrpcent (void) __attribute__ ((__nothrow__ , __leaf__));
extern struct rpcent *getrpcbyname (const char *__name) __attribute__ ((__nothrow__ , __leaf__));
extern struct rpcent *getrpcbynumber (int __number) __attribute__ ((__nothrow__ , __leaf__));
extern struct rpcent *getrpcent (void) __attribute__ ((__nothrow__ , __leaf__));


extern int getrpcbyname_r (const char *__name, struct rpcent *__result_buf,
      char *__buffer, size_t __buflen,
      struct rpcent **__result) __attribute__ ((__nothrow__ , __leaf__));

extern int getrpcbynumber_r (int __number, struct rpcent *__result_buf,
        char *__buffer, size_t __buflen,
        struct rpcent **__result) __attribute__ ((__nothrow__ , __leaf__));

extern int getrpcent_r (struct rpcent *__result_buf, char *__buffer,
   size_t __buflen, struct rpcent **__result) __attribute__ ((__nothrow__ , __leaf__));



# 33 "/usr/include/netdb.h" 2 3 4
# 42 "/usr/include/netdb.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/netdb.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/netdb.h" 3 4
struct netent
{
  char *n_name;
  char **n_aliases;
  int n_addrtype;
  uint32_t n_net;
};
# 43 "/usr/include/netdb.h" 2 3 4
# 53 "/usr/include/netdb.h" 3 4








extern int *__h_errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 92 "/usr/include/netdb.h" 3 4
extern void herror (const char *__str) __attribute__ ((__nothrow__ , __leaf__));


extern const char *hstrerror (int __err_num) __attribute__ ((__nothrow__ , __leaf__));




struct hostent
{
  char *h_name;
  char **h_aliases;
  int h_addrtype;
  int h_length;
  char **h_addr_list;



};






extern void sethostent (int __stay_open);





extern void endhostent (void);






extern struct hostent *gethostent (void);






extern struct hostent *gethostbyaddr (const void *__addr, __socklen_t __len,
          int __type);





extern struct hostent *gethostbyname (const char *__name);
# 155 "/usr/include/netdb.h" 3 4
extern struct hostent *gethostbyname2 (const char *__name, int __af);
# 167 "/usr/include/netdb.h" 3 4
extern int gethostent_r (struct hostent *__restrict __result_buf,
    char *__restrict __buf, size_t __buflen,
    struct hostent **__restrict __result,
    int *__restrict __h_errnop);

extern int gethostbyaddr_r (const void *__restrict __addr, __socklen_t __len,
       int __type,
       struct hostent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct hostent **__restrict __result,
       int *__restrict __h_errnop);

extern int gethostbyname_r (const char *__restrict __name,
       struct hostent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct hostent **__restrict __result,
       int *__restrict __h_errnop);

extern int gethostbyname2_r (const char *__restrict __name, int __af,
        struct hostent *__restrict __result_buf,
        char *__restrict __buf, size_t __buflen,
        struct hostent **__restrict __result,
        int *__restrict __h_errnop);
# 198 "/usr/include/netdb.h" 3 4
extern void setnetent (int __stay_open);





extern void endnetent (void);






extern struct netent *getnetent (void);






extern struct netent *getnetbyaddr (uint32_t __net, int __type);





extern struct netent *getnetbyname (const char *__name);
# 237 "/usr/include/netdb.h" 3 4
extern int getnetent_r (struct netent *__restrict __result_buf,
   char *__restrict __buf, size_t __buflen,
   struct netent **__restrict __result,
   int *__restrict __h_errnop);

extern int getnetbyaddr_r (uint32_t __net, int __type,
      struct netent *__restrict __result_buf,
      char *__restrict __buf, size_t __buflen,
      struct netent **__restrict __result,
      int *__restrict __h_errnop);

extern int getnetbyname_r (const char *__restrict __name,
      struct netent *__restrict __result_buf,
      char *__restrict __buf, size_t __buflen,
      struct netent **__restrict __result,
      int *__restrict __h_errnop);




struct servent
{
  char *s_name;
  char **s_aliases;
  int s_port;
  char *s_proto;
};






extern void setservent (int __stay_open);





extern void endservent (void);






extern struct servent *getservent (void);






extern struct servent *getservbyname (const char *__name, const char *__proto);






extern struct servent *getservbyport (int __port, const char *__proto);
# 308 "/usr/include/netdb.h" 3 4
extern int getservent_r (struct servent *__restrict __result_buf,
    char *__restrict __buf, size_t __buflen,
    struct servent **__restrict __result);

extern int getservbyname_r (const char *__restrict __name,
       const char *__restrict __proto,
       struct servent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct servent **__restrict __result);

extern int getservbyport_r (int __port, const char *__restrict __proto,
       struct servent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct servent **__restrict __result);




struct protoent
{
  char *p_name;
  char **p_aliases;
  int p_proto;
};






extern void setprotoent (int __stay_open);





extern void endprotoent (void);






extern struct protoent *getprotoent (void);





extern struct protoent *getprotobyname (const char *__name);





extern struct protoent *getprotobynumber (int __proto);
# 374 "/usr/include/netdb.h" 3 4
extern int getprotoent_r (struct protoent *__restrict __result_buf,
     char *__restrict __buf, size_t __buflen,
     struct protoent **__restrict __result);

extern int getprotobyname_r (const char *__restrict __name,
        struct protoent *__restrict __result_buf,
        char *__restrict __buf, size_t __buflen,
        struct protoent **__restrict __result);

extern int getprotobynumber_r (int __proto,
          struct protoent *__restrict __result_buf,
          char *__restrict __buf, size_t __buflen,
          struct protoent **__restrict __result);
# 395 "/usr/include/netdb.h" 3 4
extern int setnetgrent (const char *__netgroup);







extern void endnetgrent (void);
# 412 "/usr/include/netdb.h" 3 4
extern int getnetgrent (char **__restrict __hostp,
   char **__restrict __userp,
   char **__restrict __domainp);
# 423 "/usr/include/netdb.h" 3 4
extern int innetgr (const char *__netgroup, const char *__host,
      const char *__user, const char *__domain);







extern int getnetgrent_r (char **__restrict __hostp,
     char **__restrict __userp,
     char **__restrict __domainp,
     char *__restrict __buffer, size_t __buflen);
# 451 "/usr/include/netdb.h" 3 4
extern int rcmd (char **__restrict __ahost, unsigned short int __rport,
   const char *__restrict __locuser,
   const char *__restrict __remuser,
   const char *__restrict __cmd, int *__restrict __fd2p);
# 463 "/usr/include/netdb.h" 3 4
extern int rcmd_af (char **__restrict __ahost, unsigned short int __rport,
      const char *__restrict __locuser,
      const char *__restrict __remuser,
      const char *__restrict __cmd, int *__restrict __fd2p,
      sa_family_t __af);
# 479 "/usr/include/netdb.h" 3 4
extern int rexec (char **__restrict __ahost, int __rport,
    const char *__restrict __name,
    const char *__restrict __pass,
    const char *__restrict __cmd, int *__restrict __fd2p);
# 491 "/usr/include/netdb.h" 3 4
extern int rexec_af (char **__restrict __ahost, int __rport,
       const char *__restrict __name,
       const char *__restrict __pass,
       const char *__restrict __cmd, int *__restrict __fd2p,
       sa_family_t __af);
# 505 "/usr/include/netdb.h" 3 4
extern int ruserok (const char *__rhost, int __suser,
      const char *__remuser, const char *__locuser);
# 515 "/usr/include/netdb.h" 3 4
extern int ruserok_af (const char *__rhost, int __suser,
         const char *__remuser, const char *__locuser,
         sa_family_t __af);
# 528 "/usr/include/netdb.h" 3 4
extern int iruserok (uint32_t __raddr, int __suser,
       const char *__remuser, const char *__locuser);
# 539 "/usr/include/netdb.h" 3 4
extern int iruserok_af (const void *__raddr, int __suser,
   const char *__remuser, const char *__locuser,
   sa_family_t __af);
# 551 "/usr/include/netdb.h" 3 4
extern int rresvport (int *__alport);
# 560 "/usr/include/netdb.h" 3 4
extern int rresvport_af (int *__alport, sa_family_t __af);






struct addrinfo
{
  int ai_flags;
  int ai_family;
  int ai_socktype;
  int ai_protocol;
  socklen_t ai_addrlen;
  struct sockaddr *ai_addr;
  char *ai_canonname;
  struct addrinfo *ai_next;
};
# 662 "/usr/include/netdb.h" 3 4
extern int getaddrinfo (const char *__restrict __name,
   const char *__restrict __service,
   const struct addrinfo *__restrict __req,
   struct addrinfo **__restrict __pai);


extern void freeaddrinfo (struct addrinfo *__ai) __attribute__ ((__nothrow__ , __leaf__));


extern const char *gai_strerror (int __ecode) __attribute__ ((__nothrow__ , __leaf__));





extern int getnameinfo (const struct sockaddr *__restrict __sa,
   socklen_t __salen, char *__restrict __host,
   socklen_t __hostlen, char *__restrict __serv,
   socklen_t __servlen, int __flags);
# 713 "/usr/include/netdb.h" 3 4

# 18 "specrecv.c" 2
# 1 "/usr/include/time.h" 1 3 4
# 29 "/usr/include/time.h" 3 4








# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 42 "/usr/include/time.h" 2 3 4
# 131 "/usr/include/time.h" 3 4


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  const char *tm_zone;




};








struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };


struct sigevent;
# 186 "/usr/include/time.h" 3 4



extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));

# 223 "/usr/include/time.h" 3 4
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));
# 236 "/usr/include/time.h" 3 4



extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));





extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));





extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));







extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__ , __leaf__));



extern int daylight;
extern long int timezone;





extern int stime (const time_t *__when) __attribute__ ((__nothrow__ , __leaf__));
# 319 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern int dysize (int __year) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 334 "/usr/include/time.h" 3 4
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ , __leaf__));


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ , __leaf__));






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ , __leaf__));




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ , __leaf__));


extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));
# 430 "/usr/include/time.h" 3 4

# 19 "specrecv.c" 2
# 1 "/usr/include/x86_64-linux-gnu/sys/time.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/sys/time.h" 2 3 4
# 37 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4

# 55 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };

typedef struct timezone *__restrict __timezone_ptr_t;
# 71 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4
extern int gettimeofday (struct timeval *__restrict __tv,
    __timezone_ptr_t __tz) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




extern int settimeofday (const struct timeval *__tv,
    const struct timezone *__tz)
     __attribute__ ((__nothrow__ , __leaf__));





extern int adjtime (const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__ , __leaf__));




enum __itimer_which
  {

    ITIMER_REAL = 0,


    ITIMER_VIRTUAL = 1,



    ITIMER_PROF = 2

  };



struct itimerval
  {

    struct timeval it_interval;

    struct timeval it_value;
  };






typedef int __itimer_which_t;




extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ , __leaf__));




extern int setitimer (__itimer_which_t __which,
        const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ , __leaf__));




extern int utimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int lutimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int futimes (int __fd, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__));
# 189 "/usr/include/x86_64-linux-gnu/sys/time.h" 3 4

# 20 "specrecv.c" 2
# 1 "/usr/include/signal.h" 1 3 4
# 30 "/usr/include/signal.h" 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 1 3 4
# 102 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 3 4
extern int __sigismember (const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);
# 33 "/usr/include/signal.h" 2 3 4







typedef __sig_atomic_t sig_atomic_t;

# 57 "/usr/include/signal.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/signum.h" 1 3 4
# 58 "/usr/include/signal.h" 2 3 4
# 80 "/usr/include/signal.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 2 3 4







typedef union sigval
  {
    int sival_int;
    void *sival_ptr;
  } sigval_t;
# 58 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 3 4
typedef __clock_t __sigchld_clock_t;



typedef struct
  {
    int si_signo;
    int si_errno;

    int si_code;

    union
      {
 int _pad[((128 / sizeof (int)) - 4)];


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;


 struct
   {
     int si_tid;
     int si_overrun;
     sigval_t si_sigval;
   } _timer;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     sigval_t si_sigval;
   } _rt;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __sigchld_clock_t si_utime;
     __sigchld_clock_t si_stime;
   } _sigchld;


 struct
   {
     void *si_addr;
     short int si_addr_lsb;
   } _sigfault;


 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;


 struct
   {
     void *_call_addr;
     int _syscall;
     unsigned int _arch;
   } _sigsys;
      } _sifields;
  } siginfo_t ;
# 153 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 3 4
enum
{
  SI_ASYNCNL = -60,

  SI_TKILL = -6,

  SI_SIGIO,

  SI_ASYNCIO,

  SI_MESGQ,

  SI_TIMER,

  SI_QUEUE,

  SI_USER,

  SI_KERNEL = 0x80

};



enum
{
  ILL_ILLOPC = 1,

  ILL_ILLOPN,

  ILL_ILLADR,

  ILL_ILLTRP,

  ILL_PRVOPC,

  ILL_PRVREG,

  ILL_COPROC,

  ILL_BADSTK

};


enum
{
  FPE_INTDIV = 1,

  FPE_INTOVF,

  FPE_FLTDIV,

  FPE_FLTOVF,

  FPE_FLTUND,

  FPE_FLTRES,

  FPE_FLTINV,

  FPE_FLTSUB

};


enum
{
  SEGV_MAPERR = 1,

  SEGV_ACCERR

};


enum
{
  BUS_ADRALN = 1,

  BUS_ADRERR,

  BUS_OBJERR,

  BUS_MCEERR_AR,

  BUS_MCEERR_AO

};


enum
{
  TRAP_BRKPT = 1,

  TRAP_TRACE

};


enum
{
  CLD_EXITED = 1,

  CLD_KILLED,

  CLD_DUMPED,

  CLD_TRAPPED,

  CLD_STOPPED,

  CLD_CONTINUED

};


enum
{
  POLL_IN = 1,

  POLL_OUT,

  POLL_MSG,

  POLL_ERR,

  POLL_PRI,

  POLL_HUP

};
# 307 "/usr/include/x86_64-linux-gnu/bits/siginfo.h" 3 4
typedef struct sigevent
  {
    sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;

    union
      {
 int _pad[((64 / sizeof (int)) - 4)];



 __pid_t _tid;

 struct
   {
     void (*_function) (sigval_t);
     pthread_attr_t *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;






enum
{
  SIGEV_SIGNAL = 0,

  SIGEV_NONE,

  SIGEV_THREAD,


  SIGEV_THREAD_ID = 4

};
# 81 "/usr/include/signal.h" 2 3 4




typedef void (*__sighandler_t) (int);




extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
# 100 "/usr/include/signal.h" 3 4


extern __sighandler_t signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
# 114 "/usr/include/signal.h" 3 4

# 127 "/usr/include/signal.h" 3 4
extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__ , __leaf__));






extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__ , __leaf__));




extern int raise (int __sig) __attribute__ ((__nothrow__ , __leaf__));




extern __sighandler_t ssignal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
extern int gsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));




extern void psignal (int __sig, const char *__s);




extern void psiginfo (const siginfo_t *__pinfo, const char *__s);
# 167 "/usr/include/signal.h" 3 4
extern int __sigpause (int __sig_or_mask, int __is_sig);
# 189 "/usr/include/signal.h" 3 4
extern int sigblock (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));


extern int sigsetmask (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));


extern int siggetmask (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
# 209 "/usr/include/signal.h" 3 4
typedef __sighandler_t sig_t;





extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigismember (const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 245 "/usr/include/signal.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/sigaction.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/sigaction.h" 3 4
struct sigaction
  {


    union
      {

 __sighandler_t sa_handler;

 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;







    __sigset_t sa_mask;


    int sa_flags;


    void (*sa_restorer) (void);
  };
# 246 "/usr/include/signal.h" 2 3 4


extern int sigprocmask (int __how, const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__ , __leaf__));






extern int sigsuspend (const sigset_t *__set) __attribute__ ((__nonnull__ (1)));


extern int sigaction (int __sig, const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__ , __leaf__));


extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int sigwait (const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));






extern int sigwaitinfo (const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));






extern int sigtimedwait (const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));



extern int sigqueue (__pid_t __pid, int __sig, const union sigval __val)
     __attribute__ ((__nothrow__ , __leaf__));
# 303 "/usr/include/signal.h" 3 4
extern const char *const _sys_siglist[65];
extern const char *const sys_siglist[65];


struct sigvec
  {
    __sighandler_t sv_handler;
    int sv_mask;

    int sv_flags;

  };
# 327 "/usr/include/signal.h" 3 4
extern int sigvec (int __sig, const struct sigvec *__vec,
     struct sigvec *__ovec) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/x86_64-linux-gnu/bits/sigcontext.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/sigcontext.h" 3 4
struct _fpx_sw_bytes
{
  __uint32_t magic1;
  __uint32_t extended_size;
  __uint64_t xstate_bv;
  __uint32_t xstate_size;
  __uint32_t padding[7];
};

struct _fpreg
{
  unsigned short significand[4];
  unsigned short exponent;
};

struct _fpxreg
{
  unsigned short significand[4];
  unsigned short exponent;
  unsigned short padding[3];
};

struct _xmmreg
{
  __uint32_t element[4];
};
# 121 "/usr/include/x86_64-linux-gnu/bits/sigcontext.h" 3 4
struct _fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _fpxreg _st[8];
  struct _xmmreg _xmm[16];
  __uint32_t padding[24];
};

struct sigcontext
{
  __uint64_t r8;
  __uint64_t r9;
  __uint64_t r10;
  __uint64_t r11;
  __uint64_t r12;
  __uint64_t r13;
  __uint64_t r14;
  __uint64_t r15;
  __uint64_t rdi;
  __uint64_t rsi;
  __uint64_t rbp;
  __uint64_t rbx;
  __uint64_t rdx;
  __uint64_t rax;
  __uint64_t rcx;
  __uint64_t rsp;
  __uint64_t rip;
  __uint64_t eflags;
  unsigned short cs;
  unsigned short gs;
  unsigned short fs;
  unsigned short __pad0;
  __uint64_t err;
  __uint64_t trapno;
  __uint64_t oldmask;
  __uint64_t cr2;
  __extension__ union
    {
      struct _fpstate * fpstate;
      __uint64_t __fpstate_word;
    };
  __uint64_t __reserved1 [8];
};



struct _xsave_hdr
{
  __uint64_t xstate_bv;
  __uint64_t reserved1[2];
  __uint64_t reserved2[5];
};

struct _ymmh_state
{
  __uint32_t ymmh_space[64];
};

struct _xstate
{
  struct _fpstate fpstate;
  struct _xsave_hdr xstate_hdr;
  struct _ymmh_state ymmh;
};
# 333 "/usr/include/signal.h" 2 3 4


extern int sigreturn (struct sigcontext *__scp) __attribute__ ((__nothrow__ , __leaf__));






# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 343 "/usr/include/signal.h" 2 3 4




extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__ , __leaf__));

# 1 "/usr/include/x86_64-linux-gnu/bits/sigstack.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/sigstack.h" 3 4
struct sigstack
  {
    void *ss_sp;
    int ss_onstack;
  };



enum
{
  SS_ONSTACK = 1,

  SS_DISABLE

};
# 49 "/usr/include/x86_64-linux-gnu/bits/sigstack.h" 3 4
typedef struct sigaltstack
  {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
  } stack_t;
# 350 "/usr/include/signal.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 3 4
# 1 "/usr/include/signal.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 2 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 3 4
__extension__ typedef long long int greg_t;





typedef greg_t gregset_t[23];
# 92 "/usr/include/x86_64-linux-gnu/sys/ucontext.h" 3 4
struct _libc_fpxreg
{
  unsigned short int significand[4];
  unsigned short int exponent;
  unsigned short int padding[3];
};

struct _libc_xmmreg
{
  __uint32_t element[4];
};

struct _libc_fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _libc_fpxreg _st[8];
  struct _libc_xmmreg _xmm[16];
  __uint32_t padding[24];
};


typedef struct _libc_fpstate *fpregset_t;


typedef struct
  {
    gregset_t gregs;

    fpregset_t fpregs;
    __extension__ unsigned long long __reserved1 [8];
} mcontext_t;


typedef struct ucontext
  {
    unsigned long int uc_flags;
    struct ucontext *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    __sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
  } ucontext_t;
# 353 "/usr/include/signal.h" 2 3 4





extern int sigstack (struct sigstack *__ss, struct sigstack *__oss)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));



extern int sigaltstack (const struct sigaltstack *__restrict __ss,
   struct sigaltstack *__restrict __oss) __attribute__ ((__nothrow__ , __leaf__));
# 388 "/usr/include/signal.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/sigthread.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/bits/sigthread.h" 3 4
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ , __leaf__));


extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ , __leaf__));
# 389 "/usr/include/signal.h" 2 3 4






extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ , __leaf__));

extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ , __leaf__));




# 21 "specrecv.c" 2
# 1 "/usr/include/pthread.h" 1 3 4
# 23 "/usr/include/pthread.h" 3 4
# 1 "/usr/include/sched.h" 1 3 4
# 28 "/usr/include/sched.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 29 "/usr/include/sched.h" 2 3 4
# 41 "/usr/include/sched.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/sched.h" 1 3 4
# 72 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4
struct sched_param
  {
    int __sched_priority;
  };


# 95 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4








struct __sched_param
  {
    int __sched_priority;
  };
# 118 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4
typedef unsigned long int __cpu_mask;






typedef struct
{
  __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
# 201 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4


extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
  __attribute__ ((__nothrow__ , __leaf__));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__ , __leaf__));


# 42 "/usr/include/sched.h" 2 3 4







extern int sched_setparam (__pid_t __pid, const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getparam (__pid_t __pid, struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_setscheduler (__pid_t __pid, int __policy,
          const struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getscheduler (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_yield (void) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_get_priority_max (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_get_priority_min (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) __attribute__ ((__nothrow__ , __leaf__));
# 124 "/usr/include/sched.h" 3 4

# 24 "/usr/include/pthread.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 2 3 4




typedef long int __jmp_buf[8];
# 28 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 29 "/usr/include/pthread.h" 2 3 4



enum
{
  PTHREAD_CREATE_JOINABLE,

  PTHREAD_CREATE_DETACHED

};



enum
{
  PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_ADAPTIVE_NP

  ,
  PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL





};




enum
{
  PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_ROBUST,
  PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST
};





enum
{
  PTHREAD_PRIO_NONE,
  PTHREAD_PRIO_INHERIT,
  PTHREAD_PRIO_PROTECT
};
# 125 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_RWLOCK_PREFER_READER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
  PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP
};
# 166 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_INHERIT_SCHED,

  PTHREAD_EXPLICIT_SCHED

};



enum
{
  PTHREAD_SCOPE_SYSTEM,

  PTHREAD_SCOPE_PROCESS

};



enum
{
  PTHREAD_PROCESS_PRIVATE,

  PTHREAD_PROCESS_SHARED

};
# 201 "/usr/include/pthread.h" 3 4
struct _pthread_cleanup_buffer
{
  void (*__routine) (void *);
  void *__arg;
  int __canceltype;
  struct _pthread_cleanup_buffer *__prev;
};


enum
{
  PTHREAD_CANCEL_ENABLE,

  PTHREAD_CANCEL_DISABLE

};
enum
{
  PTHREAD_CANCEL_DEFERRED,

  PTHREAD_CANCEL_ASYNCHRONOUS

};
# 239 "/usr/include/pthread.h" 3 4





extern int pthread_create (pthread_t *__restrict __newthread,
      const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));





extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));







extern int pthread_join (pthread_t __th, void **__thread_return);
# 282 "/usr/include/pthread.h" 3 4
extern int pthread_detach (pthread_t __th) __attribute__ ((__nothrow__ , __leaf__));



extern pthread_t pthread_self (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int pthread_equal (pthread_t __thread1, pthread_t __thread2)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));







extern int pthread_attr_init (pthread_attr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_destroy (pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getdetachstate (const pthread_attr_t *__attr,
     int *__detachstate)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setdetachstate (pthread_attr_t *__attr,
     int __detachstate)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getguardsize (const pthread_attr_t *__attr,
          size_t *__guardsize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setguardsize (pthread_attr_t *__attr,
          size_t __guardsize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
           struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
           const struct sched_param *__restrict
           __param) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict
     __attr, int *__restrict __policy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedpolicy (pthread_attr_t *__attr, int __policy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict
      __attr, int *__restrict __inherit)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setinheritsched (pthread_attr_t *__attr,
      int __inherit)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr,
      int *__restrict __scope)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setscope (pthread_attr_t *__attr, int __scope)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict
          __attr, void **__restrict __stackaddr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__deprecated__));





extern int pthread_attr_setstackaddr (pthread_attr_t *__attr,
          void *__stackaddr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__));


extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict
          __attr, size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_attr_setstacksize (pthread_attr_t *__attr,
          size_t __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getstack (const pthread_attr_t *__restrict __attr,
      void **__restrict __stackaddr,
      size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_attr_setstack (pthread_attr_t *__attr, void *__stackaddr,
      size_t __stacksize) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 440 "/usr/include/pthread.h" 3 4
extern int pthread_setschedparam (pthread_t __target_thread, int __policy,
      const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));


extern int pthread_getschedparam (pthread_t __target_thread,
      int *__restrict __policy,
      struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));


extern int pthread_setschedprio (pthread_t __target_thread, int __prio)
     __attribute__ ((__nothrow__ , __leaf__));
# 505 "/usr/include/pthread.h" 3 4
extern int pthread_once (pthread_once_t *__once_control,
    void (*__init_routine) (void)) __attribute__ ((__nonnull__ (1, 2)));
# 517 "/usr/include/pthread.h" 3 4
extern int pthread_setcancelstate (int __state, int *__oldstate);



extern int pthread_setcanceltype (int __type, int *__oldtype);


extern int pthread_cancel (pthread_t __th);




extern void pthread_testcancel (void);




typedef struct
{
  struct
  {
    __jmp_buf __cancel_jmp_buf;
    int __mask_was_saved;
  } __cancel_jmp_buf[1];
  void *__pad[4];
} __pthread_unwind_buf_t __attribute__ ((__aligned__));
# 551 "/usr/include/pthread.h" 3 4
struct __pthread_cleanup_frame
{
  void (*__cancel_routine) (void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
};
# 691 "/usr/include/pthread.h" 3 4
extern void __pthread_register_cancel (__pthread_unwind_buf_t *__buf)
     ;
# 703 "/usr/include/pthread.h" 3 4
extern void __pthread_unregister_cancel (__pthread_unwind_buf_t *__buf)
  ;
# 744 "/usr/include/pthread.h" 3 4
extern void __pthread_unwind_next (__pthread_unwind_buf_t *__buf)
     __attribute__ ((__noreturn__))

     __attribute__ ((__weak__))

     ;



struct __jmp_buf_tag;
extern int __sigsetjmp (struct __jmp_buf_tag *__env, int __savemask) __attribute__ ((__nothrow__));





extern int pthread_mutex_init (pthread_mutex_t *__mutex,
          const pthread_mutexattr_t *__mutexattr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_destroy (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_trylock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_lock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_timedlock (pthread_mutex_t *__restrict __mutex,
        const struct timespec *__restrict
        __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_unlock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_getprioceiling (const pthread_mutex_t *
      __restrict __mutex,
      int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_setprioceiling (pthread_mutex_t *__restrict __mutex,
      int __prioceiling,
      int *__restrict __old_ceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));




extern int pthread_mutex_consistent (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 817 "/usr/include/pthread.h" 3 4
extern int pthread_mutexattr_init (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t *
      __restrict __attr,
      int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr,
      int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_gettype (const pthread_mutexattr_t *__restrict
          __attr, int *__restrict __kind)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_mutexattr_settype (pthread_mutexattr_t *__attr, int __kind)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getprotocol (const pthread_mutexattr_t *
       __restrict __attr,
       int *__restrict __protocol)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutexattr_setprotocol (pthread_mutexattr_t *__attr,
       int __protocol)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t *
          __restrict __attr,
          int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *__attr,
          int __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getrobust (const pthread_mutexattr_t *__attr,
     int *__robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));







extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
     int __robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 899 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_init (pthread_rwlock_t *__restrict __rwlock,
    const pthread_rwlockattr_t *__restrict
    __attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_destroy (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_rdlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_tryrdlock (pthread_rwlock_t *__rwlock)
  __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedrdlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_wrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_trywrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedwrlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_unlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int pthread_rwlockattr_init (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_destroy (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getpshared (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setpshared (pthread_rwlockattr_t *__attr,
       int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pref)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setkind_np (pthread_rwlockattr_t *__attr,
       int __pref) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int pthread_cond_init (pthread_cond_t *__restrict __cond,
         const pthread_condattr_t *__restrict __cond_attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_destroy (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_signal (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_broadcast (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_cond_wait (pthread_cond_t *__restrict __cond,
         pthread_mutex_t *__restrict __mutex)
     __attribute__ ((__nonnull__ (1, 2)));
# 1011 "/usr/include/pthread.h" 3 4
extern int pthread_cond_timedwait (pthread_cond_t *__restrict __cond,
       pthread_mutex_t *__restrict __mutex,
       const struct timespec *__restrict __abstime)
     __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_condattr_init (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_destroy (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_getpshared (const pthread_condattr_t *
     __restrict __attr,
     int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setpshared (pthread_condattr_t *__attr,
     int __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_condattr_getclock (const pthread_condattr_t *
          __restrict __attr,
          __clockid_t *__restrict __clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setclock (pthread_condattr_t *__attr,
          __clockid_t __clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1055 "/usr/include/pthread.h" 3 4
extern int pthread_spin_init (pthread_spinlock_t *__lock, int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_destroy (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_lock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_trylock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_unlock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_barrier_init (pthread_barrier_t *__restrict __barrier,
     const pthread_barrierattr_t *__restrict
     __attr, unsigned int __count)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_destroy (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_wait (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_barrierattr_init (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_destroy (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_getpshared (const pthread_barrierattr_t *
        __restrict __attr,
        int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_barrierattr_setpshared (pthread_barrierattr_t *__attr,
        int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1122 "/usr/include/pthread.h" 3 4
extern int pthread_key_create (pthread_key_t *__key,
          void (*__destr_function) (void *))
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_key_delete (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));


extern void *pthread_getspecific (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));


extern int pthread_setspecific (pthread_key_t __key,
    const void *__pointer) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int pthread_getcpuclockid (pthread_t __thread_id,
      __clockid_t *__clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
# 1156 "/usr/include/pthread.h" 3 4
extern int pthread_atfork (void (*__prepare) (void),
      void (*__parent) (void),
      void (*__child) (void)) __attribute__ ((__nothrow__ , __leaf__));
# 1170 "/usr/include/pthread.h" 3 4

# 22 "specrecv.c" 2


# 1 "/usr/include/x86_64-linux-gnu/sys/syscall.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/sys/syscall.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/unistd.h" 1 3 4
# 12 "/usr/include/x86_64-linux-gnu/asm/unistd.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/unistd_64.h" 1 3 4
# 13 "/usr/include/x86_64-linux-gnu/asm/unistd.h" 2 3 4
# 25 "/usr/include/x86_64-linux-gnu/sys/syscall.h" 2 3 4






# 1 "/usr/include/x86_64-linux-gnu/bits/syscall.h" 1 3 4
# 32 "/usr/include/x86_64-linux-gnu/sys/syscall.h" 2 3 4
# 25 "specrecv.c" 2

# 1 "/usr/include/assert.h" 1 3 4
# 66 "/usr/include/assert.h" 3 4



extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 27 "specrecv.c" 2

# 1 "psrfits.h" 1



# 1 "fitsio.h" 1
# 57 "fitsio.h"
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h" 1 3 4
# 34 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/syslimits.h" 1 3 4






# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h" 1 3 4
# 168 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h" 3 4
# 1 "/usr/include/limits.h" 1 3 4
# 143 "/usr/include/limits.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 1 3 4
# 160 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 1 3 4
# 38 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 2 3 4
# 161 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 2 3 4
# 144 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/posix2_lim.h" 1 3 4
# 148 "/usr/include/limits.h" 2 3 4
# 169 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h" 2 3 4
# 8 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/syslimits.h" 2 3 4
# 35 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h" 2 3 4
# 58 "fitsio.h" 2
# 115 "fitsio.h"
    typedef long long LONGLONG;
# 172 "fitsio.h"
# 1 "/usr/local/include/longnam.h" 1 3
# 173 "fitsio.h" 2
# 307 "fitsio.h"
typedef struct
{
    char ttype[70];
    LONGLONG tbcol;
    int tdatatype;
    LONGLONG trepeat;
    double tscale;
    double tzero;
    LONGLONG tnull;
    char strnull[20];
    char tform[10];
    long twidth;
}tcolumn;



typedef struct
{
    int filehandle;
    int driver;
    int open_count;
    char *filename;
    int validcode;
    int only_one;
    LONGLONG filesize;
    LONGLONG logfilesize;
    int lasthdu;
    LONGLONG bytepos;
    LONGLONG io_pos;
    int curbuf;
    int curhdu;
    int hdutype;
    int writemode;
    int maxhdu;
    int MAXHDU;
    LONGLONG *headstart;
    LONGLONG headend;
    LONGLONG ENDpos;
    LONGLONG nextkey;
    LONGLONG datastart;
    int imgdim;
    LONGLONG imgnaxis[99];
    int tfield;
    int startcol;
    LONGLONG origrows;
    LONGLONG numrows;
    LONGLONG rowlength;
    tcolumn *tableptr;
    LONGLONG heapstart;
    LONGLONG heapsize;


    int request_compress_type;
    long request_tilesize[6];

    float request_hcomp_scale;
    int request_hcomp_smooth;
    int request_quantize_dither ;

    int request_dither_offset;
    int request_lossy_int_compress;

    int compressimg;
    int quantize_dither;
    char zcmptype[12];
    int compress_type;
    int zbitpix;
    int zndim;
    long znaxis[6];
    long tilesize[6];
    long maxtilelen;
    long maxelem;

    int cn_compressed;
    int cn_uncompressed;
    int cn_gzip_data;
    int cn_zscale;
    int cn_zzero;
    int cn_zblank;

    double zscale;
    double zzero;
    double cn_bscale;
    double cn_bzero;
    double cn_actual_bzero;
    int zblank;

    int rice_blocksize;
    int rice_bytepix;
    float quantize_level;
    int dither_offset;
    float hcomp_scale;
    int hcomp_smooth;

    int *tilerow;
    long *tiledatasize;
    int *tiletype;
    void **tiledata;
    void **tilenullarray;
    int *tileanynull;

    char *iobuffer;
    long bufrecnum[40];
    int dirty[40];
    int ageindex[40];
} FITSfile;

typedef struct
{
    int HDUposition;
    FITSfile *Fptr;
}fitsfile;

typedef struct
{


    fitsfile *fptr;
    int colnum;
    char colname[70];
    int datatype;
    int iotype;



    void *array;
    long repeat;
    long tlmin;
    long tlmax;
    char tunit[70];
    char tdisp[70];

} iteratorCol;
# 481 "fitsio.h"
typedef struct {
   int i;
   int m;
   int kind;
   char extnam[72];
   int extver;
   int extlev;
   char ttype[72];
   long row;
   int ndim;
   int *dimlen;
   double **arrayp;

} wtbarr;

int fits_read_wcstab(fitsfile *fptr, int nwtb, wtbarr *wtb, int *status);
# 678 "fitsio.h"
int CFITS2Unit( fitsfile *fptr );
fitsfile* CUnit2FITS(int unit);


int fits_get_token(char **ptr, char *delimiter, char *token, int *isanumber);
char *fits_split_names(char *list);
int ffiurl( char *url, char *urltype, char *infile,
                    char *outfile, char *extspec, char *rowfilter,
                    char *binspec, char *colspec, int *status);
int ffifile (char *url, char *urltype, char *infile,
                    char *outfile, char *extspec, char *rowfilter,
                    char *binspec, char *colspec, char *pixfilter, int *status);
int ffifile2 (char *url, char *urltype, char *infile,
                    char *outfile, char *extspec, char *rowfilter,
                    char *binspec, char *colspec, char *pixfilter, char *compspec, int *status);
int ffrtnm(char *url, char *rootname, int *status);
int ffexist(const char *infile, int *exists, int *status);
int ffexts(char *extspec, int *extnum, char *extname, int *extvers,
          int *hdutype, char *colname, char *rowexpress, int *status);
int ffextn(char *url, int *extension_num, int *status);
int ffurlt(fitsfile *fptr, char *urlType, int *status);
int ffbins(char *binspec, int *imagetype, int *haxis,
                      char colname[4][71], double *minin,
                      double *maxin, double *binsizein,
                      char minname[4][71], char maxname[4][71],
                      char binname[4][71], double *weight, char *wtname,
                      int *recip, int *status);
int ffbinr(char **binspec, char *colname, double *minin,
                        double *maxin, double *binsizein, char *minname,
                        char *maxname, char *binname, int *status);
int fits_copy_cell2image(fitsfile *fptr, fitsfile *newptr, char *colname,
                      long rownum, int *status);
int fits_copy_image2cell(fitsfile *fptr, fitsfile *newptr, char *colname,
                      long rownum, int copykeyflag, int *status);
int fits_copy_pixlist2image(fitsfile *infptr, fitsfile *outfptr, int firstkey,
           int naxis, int *colnum, int *status);
int ffimport_file( char *filename, char **contents, int *status );
int ffrwrg( char *rowlist, LONGLONG maxrows, int maxranges, int *numranges,
      long *minrow, long *maxrow, int *status);
int ffrwrgll( char *rowlist, LONGLONG maxrows, int maxranges, int *numranges,
      LONGLONG *minrow, LONGLONG *maxrow, int *status);

int fits_init_cfitsio(void);
int ffomem(fitsfile **fptr, const char *name, int mode, void **buffptr,
           size_t *buffsize, size_t deltasize,
           void *(*mem_realloc)(void *p, size_t newsize),
           int *status);
int ffopen(fitsfile **fptr, const char *filename, int iomode, int *status);
int ffopentest(double version, fitsfile **fptr, const char *filename, int iomode, int *status);

int ffdopn(fitsfile **fptr, const char *filename, int iomode, int *status);
int fftopn(fitsfile **fptr, const char *filename, int iomode, int *status);
int ffiopn(fitsfile **fptr, const char *filename, int iomode, int *status);
int ffdkopn(fitsfile **fptr, const char *filename, int iomode, int *status);
int ffreopen(fitsfile *openfptr, fitsfile **newfptr, int *status);
int ffinit( fitsfile **fptr, const char *filename, int *status);
int ffdkinit(fitsfile **fptr, const char *filename, int *status);
int ffimem(fitsfile **fptr, void **buffptr,
           size_t *buffsize, size_t deltasize,
           void *(*mem_realloc)(void *p, size_t newsize),
           int *status);
int fftplt(fitsfile **fptr, const char *filename, const char *tempname,
           int *status);
int ffflus(fitsfile *fptr, int *status);
int ffflsh(fitsfile *fptr, int clearbuf, int *status);
int ffclos(fitsfile *fptr, int *status);
int ffdelt(fitsfile *fptr, int *status);
int ffflnm(fitsfile *fptr, char *filename, int *status);
int ffflmd(fitsfile *fptr, int *filemode, int *status);
int fits_delete_iraf_file(const char *filename, int *status);



float ffvers(float *version);
void ffupch(char *string);
void ffgerr(int status, char *errtext);
void ffpmsg(const char *err_message);
void ffpmrk(void);
int ffgmsg(char *err_message);
void ffcmsg(void);
void ffcmrk(void);
void ffrprt(FILE *stream, int status);
void ffcmps(char *templt, char *colname, int casesen, int *match,
           int *exact);
int fftkey(const char *keyword, int *status);
int fftrec(char *card, int *status);
int ffnchk(fitsfile *fptr, int *status);
int ffkeyn(const char *keyroot, int value, char *keyname, int *status);
int ffnkey(int value, const char *keyroot, char *keyname, int *status);
int ffgkcl(char *card);
int ffdtyp(const char *cval, char *dtype, int *status);
int ffinttyp(char *cval, int *datatype, int *negative, int *status);
int ffpsvc(char *card, char *value, char *comm, int *status);
int ffgknm(char *card, char *name, int *length, int *status);
int ffgthd(char *tmplt, char *card, int *hdtype, int *status);
int ffmkky(const char *keyname, char *keyval, const char *comm, char *card, int *status);
int fits_translate_keyword(char *inrec, char *outrec, char *patterns[][2],
          int npat, int n_value, int n_offset, int n_range, int *pat_num,
          int *i, int *j, int *m, int *n, int *status);
int fits_translate_keywords(fitsfile *infptr, fitsfile *outfptr,
          int firstkey, char *patterns[][2],
          int npat, int n_value, int n_offset, int n_range, int *status);
int ffasfm(char *tform, int *datacode, long *width, int *decim, int *status);
int ffbnfm(char *tform, int *datacode, long *repeat, long *width, int *status);
int ffbnfmll(char *tform, int *datacode, LONGLONG *repeat, long *width, int *status);
int ffgabc(int tfields, char **tform, int space, long *rowlen, long *tbcol,
           int *status);
int fits_get_section_range(char **ptr,long *secmin,long *secmax,long *incre,
              int *status);




int ffmbyt(fitsfile *fptr, LONGLONG bytpos, int ignore_err, int *status);

int ffpky(fitsfile *fptr, int datatype, const char *keyname, void *value,
          const char *comm, int *status);
int ffprec(fitsfile *fptr, const char *card, int *status);
int ffpcom(fitsfile *fptr, const char *comm, int *status);
int ffpunt(fitsfile *fptr, const char *keyname, const char *unit, int *status);
int ffphis(fitsfile *fptr, const char *history, int *status);
int ffpdat(fitsfile *fptr, int *status);
int ffverifydate(int year, int month, int day, int *status);
int ffgstm(char *timestr, int *timeref, int *status);
int ffgsdt(int *day, int *month, int *year, int *status);
int ffdt2s(int year, int month, int day, char *datestr, int *status);
int fftm2s(int year, int month, int day, int hour, int minute, double second,
          int decimals, char *datestr, int *status);
int ffs2dt(char *datestr, int *year, int *month, int *day, int *status);
int ffs2tm(char *datestr, int *year, int *month, int *day, int *hour,
          int *minute, double *second, int *status);
int ffpkyu(fitsfile *fptr, const char *keyname, const char *comm, int *status);
int ffpkys(fitsfile *fptr, const char *keyname, const char *value, const char *comm,int *status);
int ffpkls(fitsfile *fptr, const char *keyname, const char *value, const char *comm,int *status);
int ffplsw(fitsfile *fptr, int *status);
int ffpkyl(fitsfile *fptr, const char *keyname, int value, const char *comm, int *status);
int ffpkyj(fitsfile *fptr, const char *keyname, LONGLONG value, const char *comm, int *status);
int ffpkyf(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm,
          int *status);
int ffpkye(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm,
          int *status);
int ffpkyg(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm,
          int *status);
int ffpkyd(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm,
          int *status);
int ffpkyc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm,
          int *status);
int ffpkym(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm,
          int *status);
int ffpkfc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm,
          int *status);
int ffpkfm(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm,
          int *status);
int ffpkyt(fitsfile *fptr, const char *keyname, long intval, double frac, const char *comm,
          int *status);
int ffptdm( fitsfile *fptr, int colnum, int naxis, long naxes[], int *status);
int ffptdmll( fitsfile *fptr, int colnum, int naxis, LONGLONG naxes[], int *status);


int ffpkns(fitsfile *fptr, const char *keyroot, int nstart, int nkey, char *value[],
           char *comm[], int *status);
int ffpknl(fitsfile *fptr, const char *keyroot, int nstart, int nkey, int *value,
           char *comm[], int *status);
int ffpknj(fitsfile *fptr, const char *keyroot, int nstart, int nkey, long *value,
           char *comm[], int *status);
int ffpknjj(fitsfile *fptr, const char *keyroot, int nstart, int nkey, LONGLONG *value,
           char *comm[], int *status);
int ffpknf(fitsfile *fptr, const char *keyroot, int nstart, int nkey, float *value,
           int decim, char *comm[], int *status);
int ffpkne(fitsfile *fptr, const char *keyroot, int nstart, int nkey, float *value,
           int decim, char *comm[], int *status);
int ffpkng(fitsfile *fptr, const char *keyroot, int nstart, int nkey, double *value,
           int decim, char *comm[], int *status);
int ffpknd(fitsfile *fptr, const char *keyroot, int nstart, int nkey, double *value,
           int decim, char *comm[], int *status);
int ffcpky(fitsfile *infptr,fitsfile *outfptr,int incol,int outcol,
           char *rootname, int *status);


int ffphps( fitsfile *fptr, int bitpix, int naxis, long naxes[], int *status);
int ffphpsll( fitsfile *fptr, int bitpix, int naxis, LONGLONG naxes[], int *status);
int ffphpr( fitsfile *fptr, int simple, int bitpix, int naxis, long naxes[],
            LONGLONG pcount, LONGLONG gcount, int extend, int *status);
int ffphprll( fitsfile *fptr, int simple, int bitpix, int naxis, LONGLONG naxes[],
            LONGLONG pcount, LONGLONG gcount, int extend, int *status);
int ffphtb(fitsfile *fptr, LONGLONG naxis1, LONGLONG naxis2, int tfields, char **ttype,
          long *tbcol, char **tform, char **tunit, const char *extname, int *status);
int ffphbn(fitsfile *fptr, LONGLONG naxis2, int tfields, char **ttype,
          char **tform, char **tunit, const char *extname, LONGLONG pcount, int *status);
int ffphext( fitsfile *fptr, const char *xtension, int bitpix, int naxis, long naxes[],
            LONGLONG pcount, LONGLONG gcount, int *status);

int ffpktp(fitsfile *fptr, const char *filename, int *status);


int ffghsp(fitsfile *fptr, int *nexist, int *nmore, int *status);
int ffghps(fitsfile *fptr, int *nexist, int *position, int *status);


int ffmaky(fitsfile *fptr, int nrec, int *status);
int ffmrky(fitsfile *fptr, int nrec, int *status);


int ffgnxk(fitsfile *fptr, char **inclist, int ninc, char **exclist,
           int nexc, char *card, int *status);
int ffgrec(fitsfile *fptr, int nrec, char *card, int *status);
int ffgcrd(fitsfile *fptr, const char *keyname, char *card, int *status);
int ffgstr(fitsfile *fptr, const char *string, char *card, int *status);
int ffgunt(fitsfile *fptr, const char *keyname, char *unit, int *status);
int ffgkyn(fitsfile *fptr, int nkey, char *keyname, char *keyval, char *comm,
           int *status);
int ffgkey(fitsfile *fptr, const char *keyname, char *keyval, char *comm,
           int *status);

int ffgky( fitsfile *fptr, int datatype, const char *keyname, void *value,
           char *comm, int *status);
int ffgkys(fitsfile *fptr, const char *keyname, char *value, char *comm, int *status);
int ffgkls(fitsfile *fptr, const char *keyname, char **value, char *comm, int *status);
int fffree(void *value, int *status);
int fffkls(char *value, int *status);
int ffgkyl(fitsfile *fptr, const char *keyname, int *value, char *comm, int *status);
int ffgkyj(fitsfile *fptr, const char *keyname, long *value, char *comm, int *status);
int ffgkyjj(fitsfile *fptr, const char *keyname, LONGLONG *value, char *comm, int *status);
int ffgkye(fitsfile *fptr, const char *keyname, float *value, char *comm,int *status);
int ffgkyd(fitsfile *fptr, const char *keyname, double *value,char *comm,int *status);
int ffgkyc(fitsfile *fptr, const char *keyname, float *value, char *comm,int *status);
int ffgkym(fitsfile *fptr, const char *keyname, double *value,char *comm,int *status);
int ffgkyt(fitsfile *fptr, const char *keyname, long *ivalue, double *dvalue,
           char *comm, int *status);
int ffgtdm(fitsfile *fptr, int colnum, int maxdim, int *naxis, long naxes[],
           int *status);
int ffgtdmll(fitsfile *fptr, int colnum, int maxdim, int *naxis, LONGLONG naxes[],
           int *status);
int ffdtdm(fitsfile *fptr, char *tdimstr, int colnum, int maxdim,
           int *naxis, long naxes[], int *status);
int ffdtdmll(fitsfile *fptr, char *tdimstr, int colnum, int maxdim,
           int *naxis, LONGLONG naxes[], int *status);


int ffgkns(fitsfile *fptr, const char *keyname, int nstart, int nmax, char *value[],
           int *nfound, int *status);
int ffgknl(fitsfile *fptr, const char *keyname, int nstart, int nmax, int *value,
           int *nfound, int *status);
int ffgknj(fitsfile *fptr, const char *keyname, int nstart, int nmax, long *value,
           int *nfound, int *status);
int ffgknjj(fitsfile *fptr, const char *keyname, int nstart, int nmax, LONGLONG *value,
           int *nfound, int *status);
int ffgkne(fitsfile *fptr, const char *keyname, int nstart, int nmax, float *value,
           int *nfound, int *status);
int ffgknd(fitsfile *fptr, const char *keyname, int nstart, int nmax, double *value,
           int *nfound, int *status);
int ffh2st(fitsfile *fptr, char **header, int *status);
int ffhdr2str( fitsfile *fptr, int exclude_comm, char **exclist,
   int nexc, char **header, int *nkeys, int *status);
int ffcnvthdr2str( fitsfile *fptr, int exclude_comm, char **exclist,
   int nexc, char **header, int *nkeys, int *status);


int ffghpr(fitsfile *fptr, int maxdim, int *simple, int *bitpix, int *naxis,
          long naxes[], long *pcount, long *gcount, int *extend, int *status);

int ffghprll(fitsfile *fptr, int maxdim, int *simple, int *bitpix, int *naxis,
          LONGLONG naxes[], long *pcount, long *gcount, int *extend, int *status);

int ffghtb(fitsfile *fptr,int maxfield, long *naxis1, long *naxis2,
           int *tfields, char **ttype, long *tbcol, char **tform, char **tunit,
           char *extname, int *status);

int ffghtbll(fitsfile *fptr,int maxfield, LONGLONG *naxis1, LONGLONG *naxis2,
           int *tfields, char **ttype, LONGLONG *tbcol, char **tform, char **tunit,
           char *extname, int *status);


int ffghbn(fitsfile *fptr, int maxfield, long *naxis2, int *tfields,
           char **ttype, char **tform, char **tunit, char *extname,
           long *pcount, int *status);

int ffghbnll(fitsfile *fptr, int maxfield, LONGLONG *naxis2, int *tfields,
           char **ttype, char **tform, char **tunit, char *extname,
           LONGLONG *pcount, int *status);


int ffuky(fitsfile *fptr, int datatype, const char *keyname, void *value,
          const char *comm, int *status);
int ffucrd(fitsfile *fptr, const char *keyname, const char *card, int *status);
int ffukyu(fitsfile *fptr, const char *keyname, const char *comm, int *status);
int ffukys(fitsfile *fptr, const char *keyname, const char *value, const char *comm, int *status);
int ffukls(fitsfile *fptr, const char *keyname, const char *value, const char *comm, int *status);
int ffukyl(fitsfile *fptr, const char *keyname, int value, const char *comm, int *status);
int ffukyj(fitsfile *fptr, const char *keyname, LONGLONG value, const char *comm, int *status);
int ffukyf(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm,
          int *status);
int ffukye(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm,
          int *status);
int ffukyg(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm,
          int *status);
int ffukyd(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm,
          int *status);
int ffukyc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm,
          int *status);
int ffukym(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm,
          int *status);
int ffukfc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm,
          int *status);
int ffukfm(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm,
          int *status);


int ffmrec(fitsfile *fptr, int nkey, const char *card, int *status);
int ffmcrd(fitsfile *fptr, const char *keyname, const char *card, int *status);
int ffmnam(fitsfile *fptr, const char *oldname, const char *newname, int *status);
int ffmcom(fitsfile *fptr, const char *keyname, const char *comm, int *status);
int ffmkyu(fitsfile *fptr, const char *keyname, const char *comm, int *status);
int ffmkys(fitsfile *fptr, const char *keyname, const char *value, const char *comm,int *status);
int ffmkls(fitsfile *fptr, const char *keyname, const char *value, const char *comm,int *status);
int ffmkyl(fitsfile *fptr, const char *keyname, int value, const char *comm, int *status);
int ffmkyj(fitsfile *fptr, const char *keyname, LONGLONG value, const char *comm, int *status);
int ffmkyf(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm,
          int *status);
int ffmkye(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm,
          int *status);
int ffmkyg(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm,
          int *status);
int ffmkyd(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm,
          int *status);
int ffmkyc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm,
          int *status);
int ffmkym(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm,
          int *status);
int ffmkfc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm,
          int *status);
int ffmkfm(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm,
          int *status);


int ffirec(fitsfile *fptr, int nkey, const char *card, int *status);
int ffikey(fitsfile *fptr, const char *card, int *status);
int ffikyu(fitsfile *fptr, const char *keyname, const char *comm, int *status);
int ffikys(fitsfile *fptr, const char *keyname, const char *value, const char *comm,int *status);
int ffikls(fitsfile *fptr, const char *keyname, const char *value, const char *comm,int *status);
int ffikyl(fitsfile *fptr, const char *keyname, int value, const char *comm, int *status);
int ffikyj(fitsfile *fptr, const char *keyname, LONGLONG value, const char *comm, int *status);
int ffikyf(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm,
          int *status);
int ffikye(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm,
          int *status);
int ffikyg(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm,
          int *status);
int ffikyd(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm,
          int *status);
int ffikyc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm,
          int *status);
int ffikym(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm,
          int *status);
int ffikfc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm,
          int *status);
int ffikfm(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm,
          int *status);


int ffdkey(fitsfile *fptr, const char *keyname, int *status);
int ffdstr(fitsfile *fptr, const char *string, int *status);
int ffdrec(fitsfile *fptr, int keypos, int *status);


int ffghdn(fitsfile *fptr, int *chdunum);
int ffghdt(fitsfile *fptr, int *exttype, int *status);
int ffghad(fitsfile *fptr, long *headstart, long *datastart, long *dataend,
           int *status);
int ffghadll(fitsfile *fptr, LONGLONG *headstart, LONGLONG *datastart,
           LONGLONG *dataend, int *status);
int ffghof(fitsfile *fptr, off_t *headstart, off_t *datastart, off_t *dataend,
           int *status);
int ffgipr(fitsfile *fptr, int maxaxis, int *imgtype, int *naxis,
           long *naxes, int *status);
int ffgiprll(fitsfile *fptr, int maxaxis, int *imgtype, int *naxis,
           LONGLONG *naxes, int *status);
int ffgidt(fitsfile *fptr, int *imgtype, int *status);
int ffgiet(fitsfile *fptr, int *imgtype, int *status);
int ffgidm(fitsfile *fptr, int *naxis, int *status);
int ffgisz(fitsfile *fptr, int nlen, long *naxes, int *status);
int ffgiszll(fitsfile *fptr, int nlen, LONGLONG *naxes, int *status);


int ffmahd(fitsfile *fptr, int hdunum, int *exttype, int *status);
int ffmrhd(fitsfile *fptr, int hdumov, int *exttype, int *status);
int ffmnhd(fitsfile *fptr, int exttype, char *hduname, int hduvers,
           int *status);
int ffthdu(fitsfile *fptr, int *nhdu, int *status);
int ffcrhd(fitsfile *fptr, int *status);
int ffcrim(fitsfile *fptr, int bitpix, int naxis, long *naxes, int *status);
int ffcrimll(fitsfile *fptr, int bitpix, int naxis, LONGLONG *naxes, int *status);
int ffcrtb(fitsfile *fptr, int tbltype, LONGLONG naxis2, int tfields, char **ttype,
           char **tform, char **tunit, const char *extname, int *status);
int ffiimg(fitsfile *fptr, int bitpix, int naxis, long *naxes, int *status);
int ffiimgll(fitsfile *fptr, int bitpix, int naxis, LONGLONG *naxes, int *status);
int ffitab(fitsfile *fptr, LONGLONG naxis1, LONGLONG naxis2, int tfields, char **ttype,
           long *tbcol, char **tform, char **tunit, const char *extname, int *status);
int ffibin(fitsfile *fptr, LONGLONG naxis2, int tfields, char **ttype, char **tform,
           char **tunit, const char *extname, LONGLONG pcount, int *status);
int ffrsim(fitsfile *fptr, int bitpix, int naxis, long *naxes, int *status);
int ffrsimll(fitsfile *fptr, int bitpix, int naxis, LONGLONG *naxes, int *status);
int ffdhdu(fitsfile *fptr, int *hdutype, int *status);
int ffcopy(fitsfile *infptr, fitsfile *outfptr, int morekeys, int *status);
int ffcpfl(fitsfile *infptr, fitsfile *outfptr, int prev, int cur, int follow,
            int *status);
int ffcphd(fitsfile *infptr, fitsfile *outfptr, int *status);
int ffcpdt(fitsfile *infptr, fitsfile *outfptr, int *status);
int ffchfl(fitsfile *fptr, int *status);
int ffcdfl(fitsfile *fptr, int *status);
int ffwrhdu(fitsfile *fptr, FILE *outstream, int *status);

int ffrdef(fitsfile *fptr, int *status);
int ffhdef(fitsfile *fptr, int morekeys, int *status);
int ffpthp(fitsfile *fptr, long theap, int *status);

int ffcsum(fitsfile *fptr, long nrec, unsigned long *sum, int *status);
void ffesum(unsigned long sum, int complm, char *ascii);
unsigned long ffdsum(char *ascii, int complm, unsigned long *sum);
int ffpcks(fitsfile *fptr, int *status);
int ffupck(fitsfile *fptr, int *status);
int ffvcks(fitsfile *fptr, int *datastatus, int *hdustatus, int *status);
int ffgcks(fitsfile *fptr, unsigned long *datasum, unsigned long *hdusum,
    int *status);


int ffpscl(fitsfile *fptr, double scale, double zero, int *status);
int ffpnul(fitsfile *fptr, LONGLONG nulvalue, int *status);
int fftscl(fitsfile *fptr, int colnum, double scale, double zero, int *status);
int fftnul(fitsfile *fptr, int colnum, LONGLONG nulvalue, int *status);
int ffsnul(fitsfile *fptr, int colnum, char *nulstring, int *status);


int ffgcno(fitsfile *fptr, int casesen, char *templt, int *colnum,
           int *status);
int ffgcnn(fitsfile *fptr, int casesen, char *templt, char *colname,
           int *colnum, int *status);

int ffgtcl(fitsfile *fptr, int colnum, int *typecode, long *repeat,
           long *width, int *status);
int ffgtclll(fitsfile *fptr, int colnum, int *typecode, LONGLONG *repeat,
           LONGLONG *width, int *status);
int ffeqty(fitsfile *fptr, int colnum, int *typecode, long *repeat,
           long *width, int *status);
int ffeqtyll(fitsfile *fptr, int colnum, int *typecode, LONGLONG *repeat,
           LONGLONG *width, int *status);
int ffgncl(fitsfile *fptr, int *ncols, int *status);
int ffgnrw(fitsfile *fptr, long *nrows, int *status);
int ffgnrwll(fitsfile *fptr, LONGLONG *nrows, int *status);
int ffgacl(fitsfile *fptr, int colnum, char *ttype, long *tbcol,
           char *tunit, char *tform, double *tscal, double *tzero,
           char *tnull, char *tdisp, int *status);
int ffgbcl(fitsfile *fptr, int colnum, char *ttype, char *tunit,
           char *dtype, long *repeat, double *tscal, double *tzero,
           long *tnull, char *tdisp, int *status);
int ffgbclll(fitsfile *fptr, int colnum, char *ttype, char *tunit,
           char *dtype, LONGLONG *repeat, double *tscal, double *tzero,
           LONGLONG *tnull, char *tdisp, int *status);
int ffgrsz(fitsfile *fptr, long *nrows, int *status);
int ffgcdw(fitsfile *fptr, int colnum, int *width, int *status);


int ffgpxv(fitsfile *fptr, int datatype, long *firstpix, LONGLONG nelem,
          void *nulval, void *array, int *anynul, int *status);
int ffgpxvll(fitsfile *fptr, int datatype, LONGLONG *firstpix, LONGLONG nelem,
          void *nulval, void *array, int *anynul, int *status);
int ffgpxf(fitsfile *fptr, int datatype, long *firstpix, LONGLONG nelem,
           void *array, char *nullarray, int *anynul, int *status);
int ffgpxfll(fitsfile *fptr, int datatype, LONGLONG *firstpix, LONGLONG nelem,
           void *array, char *nullarray, int *anynul, int *status);
int ffgsv(fitsfile *fptr, int datatype, long *blc, long *trc, long *inc,
          void *nulval, void *array, int *anynul, int *status);

int ffgpv(fitsfile *fptr, int datatype, LONGLONG firstelem, LONGLONG nelem,
          void *nulval, void *array, int *anynul, int *status);
int ffgpf(fitsfile *fptr, int datatype, LONGLONG firstelem, LONGLONG nelem,
          void *array, char *nullarray, int *anynul, int *status);
int ffgpvb(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned
           char nulval, unsigned char *array, int *anynul, int *status);
int ffgpvsb(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, signed
           char nulval, signed char *array, int *anynul, int *status);
int ffgpvui(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           unsigned short nulval, unsigned short *array, int *anynul,
           int *status);
int ffgpvi(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           short nulval, short *array, int *anynul, int *status);
int ffgpvuj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           unsigned long nulval, unsigned long *array, int *anynul,
           int *status);
int ffgpvj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           long nulval, long *array, int *anynul, int *status);
int ffgpvjj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           LONGLONG nulval, LONGLONG *array, int *anynul, int *status);
int ffgpvuk(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           unsigned int nulval, unsigned int *array, int *anynul, int *status);
int ffgpvk(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           int nulval, int *array, int *anynul, int *status);
int ffgpve(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           float nulval, float *array, int *anynul, int *status);
int ffgpvd(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           double nulval, double *array, int *anynul, int *status);

int ffgpfb(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           unsigned char *array, char *nularray, int *anynul, int *status);
int ffgpfsb(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           signed char *array, char *nularray, int *anynul, int *status);
int ffgpfui(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           unsigned short *array, char *nularray, int *anynul, int *status);
int ffgpfi(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           short *array, char *nularray, int *anynul, int *status);
int ffgpfuj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           unsigned long *array, char *nularray, int *anynul, int *status);
int ffgpfj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           long *array, char *nularray, int *anynul, int *status);
int ffgpfjj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           LONGLONG *array, char *nularray, int *anynul, int *status);
int ffgpfuk(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           unsigned int *array, char *nularray, int *anynul, int *status);
int ffgpfk(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           int *array, char *nularray, int *anynul, int *status);
int ffgpfe(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           float *array, char *nularray, int *anynul, int *status);
int ffgpfd(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           double *array, char *nularray, int *anynul, int *status);

int ffg2db(fitsfile *fptr, long group, unsigned char nulval, LONGLONG ncols,
           LONGLONG naxis1, LONGLONG naxis2, unsigned char *array,
           int *anynul, int *status);
int ffg2dsb(fitsfile *fptr, long group, signed char nulval, LONGLONG ncols,
           LONGLONG naxis1, LONGLONG naxis2, signed char *array,
           int *anynul, int *status);
int ffg2dui(fitsfile *fptr, long group, unsigned short nulval, LONGLONG ncols,
           LONGLONG naxis1, LONGLONG naxis2, unsigned short *array,
           int *anynul, int *status);
int ffg2di(fitsfile *fptr, long group, short nulval, LONGLONG ncols,
           LONGLONG naxis1, LONGLONG naxis2, short *array,
           int *anynul, int *status);
int ffg2duj(fitsfile *fptr, long group, unsigned long nulval, LONGLONG ncols,
           LONGLONG naxis1, LONGLONG naxis2, unsigned long *array,
           int *anynul, int *status);
int ffg2dj(fitsfile *fptr, long group, long nulval, LONGLONG ncols,
           LONGLONG naxis1, LONGLONG naxis2, long *array,
           int *anynul, int *status);
int ffg2djj(fitsfile *fptr, long group, LONGLONG nulval, LONGLONG ncols,
           LONGLONG naxis1, LONGLONG naxis2, LONGLONG *array,
           int *anynul, int *status);
int ffg2duk(fitsfile *fptr, long group, unsigned int nulval, LONGLONG ncols,
           LONGLONG naxis1, LONGLONG naxis2, unsigned int *array,
           int *anynul, int *status);
int ffg2dk(fitsfile *fptr, long group, int nulval, LONGLONG ncols,
           LONGLONG naxis1, LONGLONG naxis2, int *array,
           int *anynul, int *status);
int ffg2de(fitsfile *fptr, long group, float nulval, LONGLONG ncols,
           LONGLONG naxis1, LONGLONG naxis2, float *array,
           int *anynul, int *status);
int ffg2dd(fitsfile *fptr, long group, double nulval, LONGLONG ncols,
           LONGLONG naxis1, LONGLONG naxis2, double *array,
           int *anynul, int *status);

int ffg3db(fitsfile *fptr, long group, unsigned char nulval, LONGLONG ncols,
           LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3,
           unsigned char *array, int *anynul, int *status);
int ffg3dsb(fitsfile *fptr, long group, signed char nulval, LONGLONG ncols,
           LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3,
           signed char *array, int *anynul, int *status);
int ffg3dui(fitsfile *fptr, long group, unsigned short nulval, LONGLONG ncols,
           LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3,
           unsigned short *array, int *anynul, int *status);
int ffg3di(fitsfile *fptr, long group, short nulval, LONGLONG ncols,
           LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3,
           short *array, int *anynul, int *status);
int ffg3duj(fitsfile *fptr, long group, unsigned long nulval, LONGLONG ncols,
           LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3,
           unsigned long *array, int *anynul, int *status);
int ffg3dj(fitsfile *fptr, long group, long nulval, LONGLONG ncols,
           LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3,
           long *array, int *anynul, int *status);
int ffg3djj(fitsfile *fptr, long group, LONGLONG nulval, LONGLONG ncols,
           LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3,
           LONGLONG *array, int *anynul, int *status);
int ffg3duk(fitsfile *fptr, long group, unsigned int nulval, LONGLONG ncols,
           LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3,
           unsigned int *array, int *anynul, int *status);
int ffg3dk(fitsfile *fptr, long group, int nulval, LONGLONG ncols,
           LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3,
           int *array, int *anynul, int *status);
int ffg3de(fitsfile *fptr, long group, float nulval, LONGLONG ncols,
           LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3,
           float *array, int *anynul, int *status);
int ffg3dd(fitsfile *fptr, long group, double nulval, LONGLONG ncols,
           LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3,
           double *array, int *anynul, int *status);

int ffgsvb(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, unsigned char nulval, unsigned char *array,
  int *anynul, int *status);
int ffgsvsb(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, signed char nulval, signed char *array,
  int *anynul, int *status);
int ffgsvui(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, unsigned short nulval, unsigned short *array,
  int *anynul, int *status);
int ffgsvi(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, short nulval, short *array, int *anynul, int *status);
int ffgsvuj(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, unsigned long nulval, unsigned long *array,
  int *anynul, int *status);
int ffgsvj(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, long nulval, long *array, int *anynul, int *status);
int ffgsvjj(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, LONGLONG nulval, LONGLONG *array, int *anynul,
  int *status);
int ffgsvuk(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, unsigned int nulval, unsigned int *array,
  int *anynul, int *status);
int ffgsvk(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, int nulval, int *array, int *anynul, int *status);
int ffgsve(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, float nulval, float *array, int *anynul, int *status);
int ffgsvd(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, double nulval, double *array, int *anynul,
  int *status);

int ffgsfb(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, unsigned char *array, char *flagval,
  int *anynul, int *status);
int ffgsfsb(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, signed char *array, char *flagval,
  int *anynul, int *status);
int ffgsfui(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, unsigned short *array, char *flagval, int *anynul,
  int *status);
int ffgsfi(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, short *array, char *flagval, int *anynul, int *status);
int ffgsfuj(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, unsigned long *array, char *flagval, int *anynul,
  int *status);
int ffgsfj(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, long *array, char *flagval, int *anynul, int *status);
int ffgsfjj(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, LONGLONG *array, char *flagval, int *anynul,
  int *status);
int ffgsfuk(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, unsigned int *array, char *flagval, int *anynul,
  int *status);
int ffgsfk(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, int *array, char *flagval, int *anynul, int *status);
int ffgsfe(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, float *array, char *flagval, int *anynul, int *status);
int ffgsfd(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc,
  long *trc, long *inc, double *array, char *flagval, int *anynul,
  int *status);

int ffggpb(fitsfile *fptr, long group, long firstelem, long nelem,
           unsigned char *array, int *status);
int ffggpsb(fitsfile *fptr, long group, long firstelem, long nelem,
           signed char *array, int *status);
int ffggpui(fitsfile *fptr, long group, long firstelem, long nelem,
           unsigned short *array, int *status);
int ffggpi(fitsfile *fptr, long group, long firstelem, long nelem,
           short *array, int *status);
int ffggpuj(fitsfile *fptr, long group, long firstelem, long nelem,
           unsigned long *array, int *status);
int ffggpj(fitsfile *fptr, long group, long firstelem, long nelem,
           long *array, int *status);
int ffggpjj(fitsfile *fptr, long group, long firstelem, long nelem,
           LONGLONG *array, int *status);
int ffggpuk(fitsfile *fptr, long group, long firstelem, long nelem,
           unsigned int *array, int *status);
int ffggpk(fitsfile *fptr, long group, long firstelem, long nelem,
           int *array, int *status);
int ffggpe(fitsfile *fptr, long group, long firstelem, long nelem,
           float *array, int *status);
int ffggpd(fitsfile *fptr, long group, long firstelem, long nelem,
           double *array, int *status);


int ffgcv( fitsfile *fptr, int datatype, int colnum, LONGLONG firstrow,
           LONGLONG firstelem, LONGLONG nelem, void *nulval, void *array, int *anynul,
           int *status);
int ffgcf( fitsfile *fptr, int datatype, int colnum, LONGLONG firstrow,
           LONGLONG firstelem, LONGLONG nelem, void *array, char *nullarray,
           int *anynul, int *status);
int ffgcvs(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, char *nulval, char **array, int *anynul, int *status);
int ffgcl (fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, char *array, int *status);
int ffgcvl (fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, char nulval, char *array, int *anynul, int *status);
int ffgcvb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, unsigned char nulval, unsigned char *array,
           int *anynul, int *status);
int ffgcvsb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, signed char nulval, signed char *array,
           int *anynul, int *status);
int ffgcvui(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, unsigned short nulval, unsigned short *array,
           int *anynul, int *status);
int ffgcvi(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, short nulval, short *array, int *anynul, int *status);
int ffgcvuj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, unsigned long nulval, unsigned long *array, int *anynul,
           int *status);
int ffgcvj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, long nulval, long *array, int *anynul, int *status);
int ffgcvjj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, LONGLONG nulval, LONGLONG *array, int *anynul,
           int *status);
int ffgcvuk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, unsigned int nulval, unsigned int *array, int *anynul,
           int *status);
int ffgcvk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, int nulval, int *array, int *anynul, int *status);
int ffgcve(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, float nulval, float *array, int *anynul, int *status);
int ffgcvd(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
         LONGLONG nelem, double nulval, double *array, int *anynul, int *status);
int ffgcvc(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, float nulval, float *array, int *anynul, int *status);
int ffgcvm(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
         LONGLONG nelem, double nulval, double *array, int *anynul, int *status);

int ffgcx(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstbit,
            LONGLONG nbits, char *larray, int *status);
int ffgcxui(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG nrows,
            long firstbit, int nbits, unsigned short *array, int *status);
int ffgcxuk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG nrows,
            long firstbit, int nbits, unsigned int *array, int *status);

int ffgcfs(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, char **array, char *nularray, int *anynul, int *status);
int ffgcfl(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, char *array, char *nularray, int *anynul, int *status);
int ffgcfb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, unsigned char *array, char *nularray, int *anynul, int *status);
int ffgcfsb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, signed char *array, char *nularray, int *anynul, int *status);
int ffgcfui(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, unsigned short *array, char *nularray, int *anynul,
      int *status);
int ffgcfi(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, short *array, char *nularray, int *anynul, int *status);
int ffgcfuj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, unsigned long *array, char *nularray, int *anynul,
      int *status);
int ffgcfj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, long *array, char *nularray, int *anynul, int *status);
int ffgcfjj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, LONGLONG *array, char *nularray, int *anynul, int *status);
int ffgcfuk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, unsigned int *array, char *nularray, int *anynul,
      int *status);
int ffgcfk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, int *array, char *nularray, int *anynul, int *status);
int ffgcfe(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, float *array, char *nularray, int *anynul, int *status);
int ffgcfd(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, double *array, char *nularray, int *anynul, int *status);
int ffgcfc(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, float *array, char *nularray, int *anynul, int *status);
int ffgcfm(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
      LONGLONG nelem, double *array, char *nularray, int *anynul, int *status);

int ffgdes(fitsfile *fptr, int colnum, LONGLONG rownum, long *length,
           long *heapaddr, int *status);
int ffgdesll(fitsfile *fptr, int colnum, LONGLONG rownum, LONGLONG *length,
           LONGLONG *heapaddr, int *status);
int ffgdess(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG nrows, long *length,
           long *heapaddr, int *status);
int ffgdessll(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG nrows, LONGLONG *length,
           LONGLONG *heapaddr, int *status);
int ffpdes(fitsfile *fptr, int colnum, LONGLONG rownum, LONGLONG length,
           LONGLONG heapaddr, int *status);
int fftheap(fitsfile *fptr, LONGLONG *heapsize, LONGLONG *unused, LONGLONG *overlap,
            int *valid, int *status);
int ffcmph(fitsfile *fptr, int *status);

int ffgtbb(fitsfile *fptr, LONGLONG firstrow, LONGLONG firstchar, LONGLONG nchars,
           unsigned char *values, int *status);

int ffgextn(fitsfile *fptr, LONGLONG offset, LONGLONG nelem, void *array, int *status);
int ffpextn(fitsfile *fptr, LONGLONG offset, LONGLONG nelem, void *array, int *status);


int ffppx(fitsfile *fptr, int datatype, long *firstpix, LONGLONG nelem,
          void *array, int *status);
int ffppxll(fitsfile *fptr, int datatype, LONGLONG *firstpix, LONGLONG nelem,
          void *array, int *status);
int ffppxn(fitsfile *fptr, int datatype, long *firstpix, LONGLONG nelem,
          void *array, void *nulval, int *status);
int ffppxnll(fitsfile *fptr, int datatype, LONGLONG *firstpix, LONGLONG nelem,
          void *array, void *nulval, int *status);
int ffppr(fitsfile *fptr, int datatype, LONGLONG firstelem,
           LONGLONG nelem, void *array, int *status);
int ffpprb(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, unsigned char *array, int *status);
int ffpprsb(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, signed char *array, int *status);
int ffpprui(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, unsigned short *array, int *status);
int ffppri(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, short *array, int *status);
int ffppruj(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, unsigned long *array, int *status);
int ffpprj(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, long *array, int *status);
int ffppruk(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, unsigned int *array, int *status);
int ffpprk(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, int *array, int *status);
int ffppre(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, float *array, int *status);
int ffpprd(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, double *array, int *status);
int ffpprjj(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, LONGLONG *array, int *status);

int ffppru(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           int *status);
int ffpprn(fitsfile *fptr, LONGLONG firstelem, LONGLONG nelem, int *status);

int ffppn(fitsfile *fptr, int datatype, LONGLONG firstelem, LONGLONG nelem,
          void *array, void *nulval, int *status);
int ffppnb(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           unsigned char *array, unsigned char nulval, int *status);
int ffppnsb(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           signed char *array, signed char nulval, int *status);
int ffppnui(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, unsigned short *array, unsigned short nulval,
           int *status);
int ffppni(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, short *array, short nulval, int *status);
int ffppnj(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, long *array, long nulval, int *status);
int ffppnuj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           unsigned long *array, unsigned long nulval, int *status);
int ffppnuk(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem,
           unsigned int *array, unsigned int nulval, int *status);
int ffppnk(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, int *array, int nulval, int *status);
int ffppne(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, float *array, float nulval, int *status);
int ffppnd(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, double *array, double nulval, int *status);
int ffppnjj(fitsfile *fptr, long group, LONGLONG firstelem,
           LONGLONG nelem, LONGLONG *array, LONGLONG nulval, int *status);

int ffp2db(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1,
           LONGLONG naxis2, unsigned char *array, int *status);
int ffp2dsb(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1,
           LONGLONG naxis2, signed char *array, int *status);
int ffp2dui(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1,
           LONGLONG naxis2, unsigned short *array, int *status);
int ffp2di(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1,
           LONGLONG naxis2, short *array, int *status);
int ffp2duj(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1,
           LONGLONG naxis2, unsigned long *array, int *status);
int ffp2dj(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1,
           LONGLONG naxis2, long *array, int *status);
int ffp2duk(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1,
           LONGLONG naxis2, unsigned int *array, int *status);
int ffp2dk(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1,
           LONGLONG naxis2, int *array, int *status);
int ffp2de(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1,
           LONGLONG naxis2, float *array, int *status);
int ffp2dd(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1,
           LONGLONG naxis2, double *array, int *status);
int ffp2djj(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1,
           LONGLONG naxis2, LONGLONG *array, int *status);

int ffp3db(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1,
           LONGLONG naxis2, LONGLONG naxis3, unsigned char *array, int *status);
int ffp3dsb(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1,
           LONGLONG naxis2, LONGLONG naxis3, signed char *array, int *status);
int ffp3dui(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1,
           LONGLONG naxis2, LONGLONG naxis3, unsigned short *array, int *status);
int ffp3di(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1,
           LONGLONG naxis2, LONGLONG naxis3, short *array, int *status);
int ffp3duj(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1,
           LONGLONG naxis2, LONGLONG naxis3, unsigned long *array, int *status);
int ffp3dj(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1,
           LONGLONG naxis2, LONGLONG naxis3, long *array, int *status);
int ffp3duk(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1,
           LONGLONG naxis2, LONGLONG naxis3, unsigned int *array, int *status);
int ffp3dk(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1,
           LONGLONG naxis2, LONGLONG naxis3, int *array, int *status);
int ffp3de(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1,
           LONGLONG naxis2, LONGLONG naxis3, float *array, int *status);
int ffp3dd(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1,
           LONGLONG naxis2, LONGLONG naxis3, double *array, int *status);
int ffp3djj(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1,
           LONGLONG naxis2, LONGLONG naxis3, LONGLONG *array, int *status);

int ffpss(fitsfile *fptr, int datatype,
           long *fpixel, long *lpixel, void *array, int *status);
int ffpssb(fitsfile *fptr, long group, long naxis, long *naxes,
           long *fpixel, long *lpixel, unsigned char *array, int *status);
int ffpsssb(fitsfile *fptr, long group, long naxis, long *naxes,
           long *fpixel, long *lpixel, signed char *array, int *status);
int ffpssui(fitsfile *fptr, long group, long naxis, long *naxes,
           long *fpixel, long *lpixel, unsigned short *array, int *status);
int ffpssi(fitsfile *fptr, long group, long naxis, long *naxes,
           long *fpixel, long *lpixel, short *array, int *status);
int ffpssuj(fitsfile *fptr, long group, long naxis, long *naxes,
           long *fpixel, long *lpixel, unsigned long *array, int *status);
int ffpssj(fitsfile *fptr, long group, long naxis, long *naxes,
           long *fpixel, long *lpixel, long *array, int *status);
int ffpssuk(fitsfile *fptr, long group, long naxis, long *naxes,
           long *fpixel, long *lpixel, unsigned int *array, int *status);
int ffpssk(fitsfile *fptr, long group, long naxis, long *naxes,
           long *fpixel, long *lpixel, int *array, int *status);
int ffpsse(fitsfile *fptr, long group, long naxis, long *naxes,
           long *fpixel, long *lpixel, float *array, int *status);
int ffpssd(fitsfile *fptr, long group, long naxis, long *naxes,
           long *fpixel, long *lpixel, double *array, int *status);
int ffpssjj(fitsfile *fptr, long group, long naxis, long *naxes,
           long *fpixel, long *lpixel, LONGLONG *array, int *status);

int ffpgpb(fitsfile *fptr, long group, long firstelem,
           long nelem, unsigned char *array, int *status);
int ffpgpsb(fitsfile *fptr, long group, long firstelem,
           long nelem, signed char *array, int *status);
int ffpgpui(fitsfile *fptr, long group, long firstelem,
           long nelem, unsigned short *array, int *status);
int ffpgpi(fitsfile *fptr, long group, long firstelem,
           long nelem, short *array, int *status);
int ffpgpuj(fitsfile *fptr, long group, long firstelem,
           long nelem, unsigned long *array, int *status);
int ffpgpj(fitsfile *fptr, long group, long firstelem,
           long nelem, long *array, int *status);
int ffpgpuk(fitsfile *fptr, long group, long firstelem,
           long nelem, unsigned int *array, int *status);
int ffpgpk(fitsfile *fptr, long group, long firstelem,
           long nelem, int *array, int *status);
int ffpgpe(fitsfile *fptr, long group, long firstelem,
           long nelem, float *array, int *status);
int ffpgpd(fitsfile *fptr, long group, long firstelem,
           long nelem, double *array, int *status);
int ffpgpjj(fitsfile *fptr, long group, long firstelem,
           long nelem, LONGLONG *array, int *status);


int fits_iter_set_by_name(iteratorCol *col, fitsfile *fptr, char *colname,
          int datatype, int iotype);
int fits_iter_set_by_num(iteratorCol *col, fitsfile *fptr, int colnum,
          int datatype, int iotype);
int fits_iter_set_file(iteratorCol *col, fitsfile *fptr);
int fits_iter_set_colname(iteratorCol *col, char *colname);
int fits_iter_set_colnum(iteratorCol *col, int colnum);
int fits_iter_set_datatype(iteratorCol *col, int datatype);
int fits_iter_set_iotype(iteratorCol *col, int iotype);

fitsfile * fits_iter_get_file(iteratorCol *col);
char * fits_iter_get_colname(iteratorCol *col);
int fits_iter_get_colnum(iteratorCol *col);
int fits_iter_get_datatype(iteratorCol *col);
int fits_iter_get_iotype(iteratorCol *col);
void * fits_iter_get_array(iteratorCol *col);
long fits_iter_get_tlmin(iteratorCol *col);
long fits_iter_get_tlmax(iteratorCol *col);
long fits_iter_get_repeat(iteratorCol *col);
char * fits_iter_get_tunit(iteratorCol *col);
char * fits_iter_get_tdisp(iteratorCol *col);

int ffiter(int ncols, iteratorCol *data, long offset, long nPerLoop,
           int (*workFn)( long totaln, long offset, long firstn,
             long nvalues, int narrays, iteratorCol *data, void *userPointer),
           void *userPointer, int *status);


int ffpcl(fitsfile *fptr, int datatype, int colnum, LONGLONG firstrow,
          LONGLONG firstelem, LONGLONG nelem, void *array, int *status);
int ffpcls(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, char **array, int *status);
int ffpcll(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, char *array, int *status);
int ffpclb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, unsigned char *array, int *status);
int ffpclsb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, signed char *array, int *status);
int ffpclui(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, unsigned short *array, int *status);
int ffpcli(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, short *array, int *status);
int ffpcluj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, unsigned long *array, int *status);
int ffpclj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, long *array, int *status);
int ffpcluk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, unsigned int *array, int *status);
int ffpclk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, int *array, int *status);
int ffpcle(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, float *array, int *status);
int ffpcld(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, double *array, int *status);
int ffpclc(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, float *array, int *status);
int ffpclm(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, double *array, int *status);
int ffpclu(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, int *status);
int ffprwu(fitsfile *fptr, LONGLONG firstrow, LONGLONG nrows, int *status);
int ffpcljj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, LONGLONG *array, int *status);
int ffpclx(fitsfile *fptr, int colnum, LONGLONG frow, long fbit, long nbit,
            char *larray, int *status);

int ffpcn(fitsfile *fptr, int datatype, int colnum, LONGLONG firstrow, LONGLONG firstelem,
          LONGLONG nelem, void *array, void *nulval, int *status);
int ffpcns( fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
            LONGLONG nelem, char **array, char *nulvalue, int *status);
int ffpcnl( fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
            LONGLONG nelem, char *array, char nulvalue, int *status);
int ffpcnb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, unsigned char *array, unsigned char nulvalue,
           int *status);
int ffpcnsb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, signed char *array, signed char nulvalue,
           int *status);
int ffpcnui(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, unsigned short *array, unsigned short nulvalue,
           int *status);
int ffpcni(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, short *array, short nulvalue, int *status);
int ffpcnuj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, unsigned long *array, unsigned long nulvalue,
           int *status);
int ffpcnj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, long *array, long nulvalue, int *status);
int ffpcnuk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, unsigned int *array, unsigned int nulvalue,
           int *status);
int ffpcnk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, int *array, int nulvalue, int *status);
int ffpcne(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, float *array, float nulvalue, int *status);
int ffpcnd(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, double *array, double nulvalue, int *status);
int ffpcnjj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem,
           LONGLONG nelem, LONGLONG *array, LONGLONG nulvalue, int *status);
int ffptbb(fitsfile *fptr, LONGLONG firstrow, LONGLONG firstchar, LONGLONG nchars,
           unsigned char *values, int *status);

int ffirow(fitsfile *fptr, LONGLONG firstrow, LONGLONG nrows, int *status);
int ffdrow(fitsfile *fptr, LONGLONG firstrow, LONGLONG nrows, int *status);
int ffdrrg(fitsfile *fptr, char *ranges, int *status);
int ffdrws(fitsfile *fptr, long *rownum, long nrows, int *status);
int ffdrwsll(fitsfile *fptr, LONGLONG *rownum, LONGLONG nrows, int *status);
int fficol(fitsfile *fptr, int numcol, char *ttype, char *tform, int *status);
int fficls(fitsfile *fptr, int firstcol, int ncols, char **ttype,
           char **tform, int *status);
int ffmvec(fitsfile *fptr, int colnum, LONGLONG newveclen, int *status);
int ffdcol(fitsfile *fptr, int numcol, int *status);
int ffcpcl(fitsfile *infptr, fitsfile *outfptr, int incol, int outcol,
           int create_col, int *status);
int ffcprw(fitsfile *infptr, fitsfile *outfptr, LONGLONG firstrow,
           LONGLONG nrows, int *status);


int ffgics(fitsfile *fptr, double *xrval, double *yrval, double *xrpix,
           double *yrpix, double *xinc, double *yinc, double *rot,
           char *type, int *status);
int ffgicsa(fitsfile *fptr, char version, double *xrval, double *yrval, double *xrpix,
           double *yrpix, double *xinc, double *yinc, double *rot,
           char *type, int *status);
int ffgtcs(fitsfile *fptr, int xcol, int ycol, double *xrval,
           double *yrval, double *xrpix, double *yrpix, double *xinc,
           double *yinc, double *rot, char *type, int *status);
int ffwldp(double xpix, double ypix, double xref, double yref,
           double xrefpix, double yrefpix, double xinc, double yinc,
           double rot, char *type, double *xpos, double *ypos, int *status);
int ffxypx(double xpos, double ypos, double xref, double yref,
           double xrefpix, double yrefpix, double xinc, double yinc,
           double rot, char *type, double *xpix, double *ypix, int *status);


int ffgiwcs(fitsfile *fptr, char **header, int *status);
int ffgtwcs(fitsfile *fptr, int xcol, int ycol, char **header, int *status);


int fftexp( fitsfile *fptr, char *expr, int maxdim,
     int *datatype, long *nelem, int *naxis,
     long *naxes, int *status );

int fffrow( fitsfile *infptr, char *expr,
     long firstrow, long nrows,
            long *n_good_rows, char *row_status, int *status);

int ffffrw( fitsfile *fptr, char *expr, long *rownum, int *status);

int fffrwc( fitsfile *fptr, char *expr, char *timeCol,
            char *parCol, char *valCol, long ntimes,
            double *times, char *time_status, int *status );

int ffsrow( fitsfile *infptr, fitsfile *outfptr, char *expr,
            int *status);

int ffcrow( fitsfile *fptr, int datatype, char *expr,
     long firstrow, long nelements, void *nulval,
     void *array, int *anynul, int *status );

int ffcalc_rng( fitsfile *infptr, char *expr, fitsfile *outfptr,
               char *parName, char *parInfo, int nRngs,
                 long *start, long *end, int *status );

int ffcalc( fitsfile *infptr, char *expr, fitsfile *outfptr,
            char *parName, char *parInfo, int *status );





int ffhist(fitsfile **fptr, char *outfile, int imagetype, int naxis,
           char colname[4][71],
           double *minin, double *maxin, double *binsizein,
           char minname[4][71], char maxname[4][71],
           char binname[4][71],
           double weightin, char wtcol[71],
           int recip, char *rowselect, int *status);
int ffhist2(fitsfile **fptr, char *outfile, int imagetype, int naxis,
           char colname[4][71],
           double *minin, double *maxin, double *binsizein,
           char minname[4][71], char maxname[4][71],
           char binname[4][71],
           double weightin, char wtcol[71],
           int recip, char *rowselect, int *status);

int fits_select_image_section(fitsfile **fptr, char *outfile,
           char *imagesection, int *status);
int fits_copy_image_section(fitsfile *infptr, fitsfile *outfile,
           char *imagesection, int *status);

int fits_calc_binning(fitsfile *fptr, int naxis, char colname[4][71],
    double *minin, double *maxin, double *binsizein,
    char minname[4][71], char maxname[4][71],
    char binname[4][71], int *colnum, long *haxes, float *amin,
    float *amax, float *binsize, int *status);

int fits_write_keys_histo(fitsfile *fptr, fitsfile *histptr,
      int naxis, int *colnum, int *status);
int fits_rebin_wcs( fitsfile *fptr, int naxis, float *amin, float *binsize,
      int *status);
int fits_make_hist(fitsfile *fptr, fitsfile *histptr, int bitpix,int naxis,
     long *naxes, int *colnum, float *amin, float *amax, float *binsize,
     float weight, int wtcolnum, int recip, char *selectrow, int *status);

typedef struct
{

 int count;
 char ** path;
 char ** tag;
 fitsfile ** ifptr;

 char * expression;


 int bitpix;
 long blank;
 fitsfile * ofptr;
 char keyword[72];
 char comment[73];
} PixelFilter;


int fits_pixel_filter (PixelFilter * filter, int * status);




int ffgtcr(fitsfile *fptr, char *grpname, int grouptype, int *status);
int ffgtis(fitsfile *fptr, char *grpname, int grouptype, int *status);
int ffgtch(fitsfile *gfptr, int grouptype, int *status);
int ffgtrm(fitsfile *gfptr, int rmopt, int *status);
int ffgtcp(fitsfile *infptr, fitsfile *outfptr, int cpopt, int *status);
int ffgtmg(fitsfile *infptr, fitsfile *outfptr, int mgopt, int *status);
int ffgtcm(fitsfile *gfptr, int cmopt, int *status);
int ffgtvf(fitsfile *gfptr, long *firstfailed, int *status);
int ffgtop(fitsfile *mfptr,int group,fitsfile **gfptr,int *status);
int ffgtam(fitsfile *gfptr, fitsfile *mfptr, int hdupos, int *status);
int ffgtnm(fitsfile *gfptr, long *nmembers, int *status);
int ffgmng(fitsfile *mfptr, long *nmembers, int *status);
int ffgmop(fitsfile *gfptr, long member, fitsfile **mfptr, int *status);
int ffgmcp(fitsfile *gfptr, fitsfile *mfptr, long member, int cpopt,
    int *status);
int ffgmtf(fitsfile *infptr, fitsfile *outfptr, long member, int tfopt,
    int *status);
int ffgmrm(fitsfile *fptr, long member, int rmopt, int *status);



int fits_execute_template(fitsfile *ff, char *ngp_template, int *status);

int fits_img_stats_short(short *array,long nx, long ny, int nullcheck,
    short nullvalue,long *ngoodpix, short *minvalue, short *maxvalue, double *mean,
    double *sigma, double *noise1, double *noise2, double *noise3, double *noise5, int *status);
int fits_img_stats_int(int *array,long nx, long ny, int nullcheck,
    int nullvalue,long *ngoodpix, int *minvalue, int *maxvalue, double *mean,
    double *sigma, double *noise1, double *noise2, double *noise3, double *noise5, int *status);
int fits_img_stats_float(float *array, long nx, long ny, int nullcheck,
    float nullvalue,long *ngoodpix, float *minvalue, float *maxvalue, double *mean,
    double *sigma, double *noise1, double *noise2, double *noise3, double *noise5, int *status);



int fits_set_compression_type(fitsfile *fptr, int ctype, int *status);
int fits_set_tile_dim(fitsfile *fptr, int ndim, long *dims, int *status);
int fits_set_noise_bits(fitsfile *fptr, int noisebits, int *status);
int fits_set_quantize_level(fitsfile *fptr, float qlevel, int *status);
int fits_set_hcomp_scale(fitsfile *fptr, float scale, int *status);
int fits_set_hcomp_smooth(fitsfile *fptr, int smooth, int *status);
int fits_set_quantize_dither(fitsfile *fptr, int dither, int *status);
int fits_set_dither_offset(fitsfile *fptr, int offset, int *status);
int fits_set_lossy_int(fitsfile *fptr, int lossy_int, int *status);

int fits_get_compression_type(fitsfile *fptr, int *ctype, int *status);
int fits_get_tile_dim(fitsfile *fptr, int ndim, long *dims, int *status);
int fits_get_quantize_level(fitsfile *fptr, float *qlevel, int *status);
int fits_get_noise_bits(fitsfile *fptr, int *noisebits, int *status);
int fits_get_hcomp_scale(fitsfile *fptr, float *scale, int *status);
int fits_get_hcomp_smooth(fitsfile *fptr, int *smooth, int *status);
int fits_get_dither_offset(fitsfile *fptr, int *offset, int *status);

int fits_img_compress(fitsfile *infptr, fitsfile *outfptr, int *status);
int fits_comp_img(fitsfile *infptr, fitsfile *outfptr, int compress_type,
         long *tilesize, int parm1, int parm2, int *status);
int fits_is_compressed_image(fitsfile *fptr, int *status);
int fits_is_reentrant(void);
int fits_decomp_img (fitsfile *infptr, fitsfile *outfptr, int *status);
int fits_img_decompress_header(fitsfile *infptr, fitsfile *outfptr, int *status);
int fits_img_decompress (fitsfile *infptr, fitsfile *outfptr, int *status);


int fits_hcompress(int *a, int nx, int ny, int scale, char *output,
    long *nbytes, int *status);
int fits_hcompress64(LONGLONG *a, int nx, int ny, int scale, char *output,
    long *nbytes, int *status);
int fits_hdecompress(unsigned char *input, int smooth, int *a, int *nx,
       int *ny, int *scale, int *status);
int fits_hdecompress64(unsigned char *input, int smooth, LONGLONG *a, int *nx,
       int *ny, int *scale, int *status);

int fits_transpose_table(fitsfile *infptr, fitsfile *outfptr, int *status);
int fits_compress_table_fast(fitsfile *infptr, fitsfile *outfptr, int *status);
int fits_compress_table_best(fitsfile *infptr, fitsfile *outfptr, int *status);
int fits_compress_table_rice(fitsfile *infptr, fitsfile *outfptr, int *status);
int fits_uncompress_table(fitsfile *infptr, fitsfile *outfptr, int *status);
int fits_gzip_datablocks(fitsfile *fptr, size_t *size, int *status);
# 5 "psrfits.h" 2







struct hdrinfo
{
    char obs_mode[8];
    char telescope[24];
    char observer[24];
    char source[24];
    char frontend[24];
    char backend[24];
    char project_id[24];
    char date_obs[24];
    char ra_str[16];
    char dec_str[16];
    char poln_type[8];
    char poln_order[16];
    char track_mode[16];
    char cal_mode[8];
    char feed_mode[8];
    long double MJD_epoch;
    double dt;
    double fctr;
    double orig_df;
    double df;
    double BW;
    double ra2000;
    double dec2000;
    double azimuth;
    double zenith_ang;
    double beam_FWHM;
    double cal_freq;
    double cal_dcyc;
    double cal_phs;
    double feed_angle;
    double scanlen;
    double start_lst;
    double start_sec;
    double chan_dm;
    double fd_sang;
    double fd_xyph;
    int start_day;
    int scan_number;
    int nbits;
    int nbin;
    int nchan;
    int npol;
    int nsblk;
    int orig_nchan;
    int summed_polns;
    int rcvr_polns;
    int offset_subint;
    int ds_time_fact;
    int ds_freq_fact;
    int onlyI;
    int fd_hand;
    int be_phase;
};

struct subint
{
    double tsubint;
    double offs;
    double lst;
    double ra;
    double dec;
    double glon;
    double glat;
    double feed_ang;
    double pos_ang;
    double par_ang;
    double tel_az;
    double tel_zen;
    int bytes_per_subint;
    int FITS_typecode;
    float *dat_freqs;
    float *dat_weights;
    float *dat_offsets;
    float *dat_scales;
    float *fdata;
    unsigned char *rawdata;
    unsigned char *data;
};

struct psrfits
{
    char basefilename[200];
    char filename[200];
    long long N;
    double T;
    int filenum;
    int numfiles;
    int rownum;
    int tot_rows;
    int rows_per_file;
    int status;
    fitsfile *fptr;
    int multifile;
    int quiet;
    char **filenames;
    struct hdrinfo hdr;
    struct subint sub;
};


int psrfits_create(struct psrfits *pf);
int psrfits_write_subint(struct psrfits *pf);
int psrfits_close(struct psrfits *pf);
# 29 "specrecv.c" 2
# 1 "tsfifo.h" 1
# 21 "tsfifo.h"
typedef struct _tsfifo_s
{
 uintptr_t * p_buffer;
 size_t i_size;
 volatile size_t i_rindex;
 volatile size_t i_windex;
} tsfifo_t;


static inline tsfifo_t * tsfifo_create( size_t i_fifo_size )
{
 tsfifo_t * p_fifo;

 p_fifo = (tsfifo_t *)malloc( sizeof(tsfifo_t) );
 if( ((void *)0) == p_fifo )
 {
  return ((void *)0);
 }

 p_fifo->i_size = i_fifo_size;
 p_fifo->i_rindex = p_fifo->i_windex = 0;
 p_fifo->p_buffer = (uintptr_t *)malloc( p_fifo->i_size * sizeof(uintptr_t) );
 if( ((void *)0) == p_fifo->p_buffer )
 {
  free( p_fifo );
  return ((void *)0);
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
# 30 "specrecv.c" 2
# 1 "/usr/include/math.h" 1 3 4
# 28 "/usr/include/math.h" 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/huge_val.h" 1 3 4
# 33 "/usr/include/math.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/huge_valf.h" 1 3 4
# 35 "/usr/include/math.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/huge_vall.h" 1 3 4
# 36 "/usr/include/math.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/inf.h" 1 3 4
# 39 "/usr/include/math.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/nan.h" 1 3 4
# 42 "/usr/include/math.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/mathdef.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/mathdef.h" 3 4
typedef float float_t;
typedef double double_t;
# 46 "/usr/include/math.h" 2 3 4
# 69 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern double acos (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __acos (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double asin (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __asin (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double atan (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atan (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double atan2 (double __y, double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atan2 (double __y, double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double cos (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cos (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double sin (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sin (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double tan (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __tan (double __x) __attribute__ ((__nothrow__ , __leaf__));




extern double cosh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cosh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double sinh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sinh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double tanh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __tanh (double __x) __attribute__ ((__nothrow__ , __leaf__));

# 86 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern double acosh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __acosh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double asinh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __asinh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double atanh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atanh (double __x) __attribute__ ((__nothrow__ , __leaf__));







extern double exp (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __exp (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern double __frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));


extern double ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern double __ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));


extern double log (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double log10 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log10 (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double modf (double __x, double *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern double __modf (double __x, double *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 126 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern double expm1 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __expm1 (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double log1p (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log1p (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double logb (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __logb (double __x) __attribute__ ((__nothrow__ , __leaf__));






extern double exp2 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __exp2 (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double log2 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log2 (double __x) __attribute__ ((__nothrow__ , __leaf__));








extern double pow (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __pow (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));


extern double sqrt (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sqrt (double __x) __attribute__ ((__nothrow__ , __leaf__));





extern double hypot (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __hypot (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));






extern double cbrt (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cbrt (double __x) __attribute__ ((__nothrow__ , __leaf__));








extern double ceil (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __ceil (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double fabs (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fabs (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double floor (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __floor (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double fmod (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __fmod (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));




extern int __isinf (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int __finite (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int isinf (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int finite (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double drem (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __drem (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));



extern double significand (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __significand (double __x) __attribute__ ((__nothrow__ , __leaf__));





extern double copysign (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __copysign (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));






extern double nan (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __nan (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int __isnan (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int isnan (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double j0 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __j0 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double j1 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __j1 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double jn (int, double) __attribute__ ((__nothrow__ , __leaf__)); extern double __jn (int, double) __attribute__ ((__nothrow__ , __leaf__));
extern double y0 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __y0 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double y1 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __y1 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double yn (int, double) __attribute__ ((__nothrow__ , __leaf__)); extern double __yn (int, double) __attribute__ ((__nothrow__ , __leaf__));






extern double erf (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __erf (double) __attribute__ ((__nothrow__ , __leaf__));
extern double erfc (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __erfc (double) __attribute__ ((__nothrow__ , __leaf__));
extern double lgamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __lgamma (double) __attribute__ ((__nothrow__ , __leaf__));






extern double tgamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __tgamma (double) __attribute__ ((__nothrow__ , __leaf__));





extern double gamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __gamma (double) __attribute__ ((__nothrow__ , __leaf__));






extern double lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern double __lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));







extern double rint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __rint (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double nextafter (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __nextafter (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern double nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern double remainder (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __remainder (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));



extern double scalbn (double __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalbn (double __x, int __n) __attribute__ ((__nothrow__ , __leaf__));



extern int ilogb (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogb (double __x) __attribute__ ((__nothrow__ , __leaf__));




extern double scalbln (double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalbln (double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));



extern double nearbyint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __nearbyint (double __x) __attribute__ ((__nothrow__ , __leaf__));



extern double round (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __round (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern double trunc (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __trunc (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern double remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern double __remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));






extern long int lrint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrint (double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrint (double __x) __attribute__ ((__nothrow__ , __leaf__));



extern long int lround (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lround (double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llround (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llround (double __x) __attribute__ ((__nothrow__ , __leaf__));



extern double fdim (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __fdim (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));


extern double fmax (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fmax (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double fmin (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fmin (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int __fpclassify (double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));


extern int __signbit (double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));



extern double fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ , __leaf__)); extern double __fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ , __leaf__));




# 371 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern double scalb (double __x, double __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalb (double __x, double __n) __attribute__ ((__nothrow__ , __leaf__));
# 70 "/usr/include/math.h" 2 3 4
# 88 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern float acosf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __acosf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float asinf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __asinf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float atanf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atanf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float atan2f (float __y, float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atan2f (float __y, float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float cosf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __cosf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float sinf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sinf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float tanf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __tanf (float __x) __attribute__ ((__nothrow__ , __leaf__));




extern float coshf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __coshf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float sinhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sinhf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float tanhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __tanhf (float __x) __attribute__ ((__nothrow__ , __leaf__));

# 86 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern float acoshf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __acoshf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float asinhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __asinhf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float atanhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atanhf (float __x) __attribute__ ((__nothrow__ , __leaf__));







extern float expf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __expf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern float __frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));


extern float ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern float __ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));


extern float logf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __logf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float log10f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log10f (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float modff (float __x, float *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern float __modff (float __x, float *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 126 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern float expm1f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __expm1f (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float log1pf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log1pf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float logbf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __logbf (float __x) __attribute__ ((__nothrow__ , __leaf__));






extern float exp2f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __exp2f (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float log2f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log2f (float __x) __attribute__ ((__nothrow__ , __leaf__));








extern float powf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __powf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));


extern float sqrtf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sqrtf (float __x) __attribute__ ((__nothrow__ , __leaf__));





extern float hypotf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __hypotf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));






extern float cbrtf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __cbrtf (float __x) __attribute__ ((__nothrow__ , __leaf__));








extern float ceilf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __ceilf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float fabsf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fabsf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float floorf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __floorf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float fmodf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __fmodf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));




extern int __isinff (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int __finitef (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int isinff (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int finitef (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float dremf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __dremf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));



extern float significandf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __significandf (float __x) __attribute__ ((__nothrow__ , __leaf__));





extern float copysignf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __copysignf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));






extern float nanf (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __nanf (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int __isnanf (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int isnanf (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float j0f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __j0f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float j1f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __j1f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float jnf (int, float) __attribute__ ((__nothrow__ , __leaf__)); extern float __jnf (int, float) __attribute__ ((__nothrow__ , __leaf__));
extern float y0f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __y0f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float y1f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __y1f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float ynf (int, float) __attribute__ ((__nothrow__ , __leaf__)); extern float __ynf (int, float) __attribute__ ((__nothrow__ , __leaf__));






extern float erff (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __erff (float) __attribute__ ((__nothrow__ , __leaf__));
extern float erfcf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __erfcf (float) __attribute__ ((__nothrow__ , __leaf__));
extern float lgammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __lgammaf (float) __attribute__ ((__nothrow__ , __leaf__));






extern float tgammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __tgammaf (float) __attribute__ ((__nothrow__ , __leaf__));





extern float gammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __gammaf (float) __attribute__ ((__nothrow__ , __leaf__));






extern float lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern float __lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));







extern float rintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __rintf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float nextafterf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __nextafterf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern float nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern float remainderf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __remainderf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));



extern float scalbnf (float __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalbnf (float __x, int __n) __attribute__ ((__nothrow__ , __leaf__));



extern int ilogbf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogbf (float __x) __attribute__ ((__nothrow__ , __leaf__));




extern float scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));



extern float nearbyintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __nearbyintf (float __x) __attribute__ ((__nothrow__ , __leaf__));



extern float roundf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __roundf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern float truncf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __truncf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern float remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern float __remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));






extern long int lrintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrintf (float __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrintf (float __x) __attribute__ ((__nothrow__ , __leaf__));



extern long int lroundf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lroundf (float __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llroundf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llroundf (float __x) __attribute__ ((__nothrow__ , __leaf__));



extern float fdimf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __fdimf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));


extern float fmaxf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fmaxf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float fminf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fminf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int __fpclassifyf (float __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));


extern int __signbitf (float __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));



extern float fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ , __leaf__)); extern float __fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ , __leaf__));




# 371 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern float scalbf (float __x, float __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalbf (float __x, float __n) __attribute__ ((__nothrow__ , __leaf__));
# 89 "/usr/include/math.h" 2 3 4
# 132 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern long double acosl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __acosl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double asinl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __asinl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double atanl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atanl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double cosl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __cosl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double sinl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sinl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double tanl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tanl (long double __x) __attribute__ ((__nothrow__ , __leaf__));




extern long double coshl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __coshl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double sinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double tanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

# 86 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern long double acoshl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __acoshl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double asinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __asinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double atanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));







extern long double expl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __expl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern long double __frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));


extern long double ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern long double __ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));


extern long double logl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __logl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double log10l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log10l (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern long double __modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 126 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern long double expm1l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __expm1l (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double log1pl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log1pl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double logbl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __logbl (long double __x) __attribute__ ((__nothrow__ , __leaf__));






extern long double exp2l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __exp2l (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double log2l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log2l (long double __x) __attribute__ ((__nothrow__ , __leaf__));








extern long double powl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __powl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));


extern long double sqrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sqrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__));





extern long double hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));






extern long double cbrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __cbrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__));








extern long double ceill (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __ceill (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double fabsl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fabsl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double floorl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __floorl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));




extern int __isinfl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int __finitel (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int isinfl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int finitel (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double dreml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __dreml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));



extern long double significandl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __significandl (long double __x) __attribute__ ((__nothrow__ , __leaf__));





extern long double copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));






extern long double nanl (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __nanl (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int __isnanl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int isnanl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double j0l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __j0l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double j1l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __j1l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double jnl (int, long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __jnl (int, long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double y0l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __y0l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double y1l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __y1l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double ynl (int, long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __ynl (int, long double) __attribute__ ((__nothrow__ , __leaf__));






extern long double erfl (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __erfl (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double erfcl (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __erfcl (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double lgammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __lgammal (long double) __attribute__ ((__nothrow__ , __leaf__));






extern long double tgammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tgammal (long double) __attribute__ ((__nothrow__ , __leaf__));





extern long double gammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __gammal (long double) __attribute__ ((__nothrow__ , __leaf__));






extern long double lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern long double __lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));







extern long double rintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __rintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern long double nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern long double remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));



extern long double scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ , __leaf__));



extern int ilogbl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogbl (long double __x) __attribute__ ((__nothrow__ , __leaf__));




extern long double scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));



extern long double nearbyintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __nearbyintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));



extern long double roundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __roundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern long double truncl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __truncl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern long double remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern long double __remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));






extern long int lrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));



extern long int lroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__));



extern long double fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));


extern long double fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double fminl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fminl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int __fpclassifyl (long double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));


extern int __signbitl (long double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));



extern long double fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ , __leaf__));




# 371 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern long double scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ , __leaf__));
# 133 "/usr/include/math.h" 2 3 4
# 148 "/usr/include/math.h" 3 4
extern int signgam;
# 189 "/usr/include/math.h" 3 4
enum
  {
    FP_NAN =

      0,
    FP_INFINITE =

      1,
    FP_ZERO =

      2,
    FP_SUBNORMAL =

      3,
    FP_NORMAL =

      4
  };
# 301 "/usr/include/math.h" 3 4
typedef enum
{
  _IEEE_ = -1,
  _SVID_,
  _XOPEN_,
  _POSIX_,
  _ISOC_
} _LIB_VERSION_TYPE;




extern _LIB_VERSION_TYPE _LIB_VERSION;
# 326 "/usr/include/math.h" 3 4
struct exception

  {
    int type;
    char *name;
    double arg1;
    double arg2;
    double retval;
  };




extern int matherr (struct exception *__exc);
# 488 "/usr/include/math.h" 3 4

# 31 "specrecv.c" 2






const unsigned int RECEIVE_BUFSIZE = 64 * 1024;
const unsigned int FIFO_DEPTH = 256;





volatile sig_atomic_t g_finished = 0;





typedef struct recvstat_s
{
 int sockfd;
 tsfifo_t * pool;
 tsfifo_t * writeq;
 int wait_pps;
 size_t cnt_incr;
 uint64_t pkt_lost;
 uint64_t bytes;
} recvstat_t;




typedef struct writestat_s
{
 tsfifo_t * pool;
 tsfifo_t * writeq;
 struct psrfits * pf;
 uint32_t intlv_size;
 double rectime;
 uint64_t bytes;
} writestat_t;





static inline uint64_t mdate( void )
{
 struct timeval tv_date;
 gettimeofday( &tv_date, ((void *)0) );
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
 return syscall( 186 );
}

static inline void block_sigint( void )
{
 sigset_t sigset;
 sigemptyset( &sigset );
 sigaddset( &sigset, 2 );
 pthread_sigmask( 0, &sigset, ((void *)0) );
}
# 114 "specrecv.c"
static inline size_t packed2_to_planar( uint8_t * p_src, uint8_t * p_dst, size_t nelems )
{
    size_t i;
    uint16_t *ps0, *ps1, *pd0, *pd1;

    ((nelems % 2 == 0) ? (void) (0) : __assert_fail ("nelems % 2 == 0", "specrecv.c", 119, __PRETTY_FUNCTION__));

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
# 145 "specrecv.c"
static inline size_t packed4_to_planar( uint8_t * p_src, uint8_t * p_dst, size_t nelems )
{
    size_t i;
    uint32_t *ps0, *ps1, *pd0, *pd1;

    ((nelems % 4 == 0) ? (void) (0) : __assert_fail ("nelems % 4 == 0", "specrecv.c", 150, __PRETTY_FUNCTION__));

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
# 176 "specrecv.c"
static inline size_t packed8_to_planar( uint8_t * p_src, uint8_t * p_dst, size_t nelems )
{
    size_t i;
    uint64_t *ps0, *ps1, *pd0, *pd1;

    ((nelems % 8 == 0) ? (void) (0) : __assert_fail ("nelems % 8 == 0", "specrecv.c", 181, __PRETTY_FUNCTION__));

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






typedef struct _storage_block_s
{
 size_t size;
 size_t used;
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
  if( ((void *)0) == p_blk )
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






static inline storage_block_t* record_packet( recvstat_t * p_rs, storage_block_t * p_blk, ssize_t recv_len )
{
 p_blk->used += recv_len;
 p_rs->bytes += recv_len;



 if( p_blk->size - p_blk->used < RECEIVE_BUFSIZE )
 {
  tsfifo_put( p_rs->writeq, (uintptr_t)p_blk );

  p_blk = (storage_block_t *)tsfifo_get( p_rs->pool );
  if( ((void *)0) == p_blk )
  {
   fprintf( stderr, "\nno more storage pool!\n" );
   fprintf( stderr, "pool w:%zu r:%zu  writeq w:%zu r:%zu\n",
      p_rs->pool->i_windex, p_rs->pool->i_rindex,
      p_rs->writeq->i_windex, p_rs->writeq->i_rindex );
   exit( 12 );
  }
  ((p_blk->used == 0) ? (void) (0) : __assert_fail ("p_blk->used == 0", "specrecv.c", 278, __PRETTY_FUNCTION__));
 }

 return p_blk;
}

void * receive_thread( void * args )
{
 recvstat_t * p_rs;
 storage_block_t * p_blk;
 uint64_t prev_cnt = (18446744073709551615UL), curr_cnt = 0;
 int start_record = 1;



 block_sigint( );

 p_rs = (recvstat_t *)args;

 p_blk = (storage_block_t *)tsfifo_get( p_rs->pool );
 ((p_blk != ((void *)0)) ? (void) (0) : __assert_fail ("p_blk != ((void *)0)", "specrecv.c", 298, __PRETTY_FUNCTION__));
 ((p_blk->used == 0) ? (void) (0) : __assert_fail ("p_blk->used == 0", "specrecv.c", 299, __PRETTY_FUNCTION__));

 if( p_rs->wait_pps )
 {
  start_record = 0;
 }

 while( 1 )
 {
  ssize_t recv_len;
  uint8_t * p_pkt;

  p_pkt = p_blk->buf + p_blk->used;

  recv_len = recv( p_rs->sockfd, p_pkt, RECEIVE_BUFSIZE, MSG_DONTWAIT );
  if( recv_len == -1 )
  {
   if( (*__errno_location ()) != 11 )
   {
    fprintf( stderr, "\nrecv(): %s<%d>\n", strerror( (*__errno_location ()) ), (*__errno_location ()) );
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

   curr_cnt = be2le_u64( p_pkt );


   if( prev_cnt != (18446744073709551615UL) )
   {

    if( !start_record && curr_cnt < prev_cnt)
    {
     start_record = 1;
     fprintf( stderr, "Got PPS, start recording.\n" );
    }

    else if( prev_cnt + p_rs->cnt_incr != curr_cnt )
    {
     size_t i, nlost;

     nlost = (size_t)((curr_cnt - prev_cnt + p_rs->cnt_incr - 1) / p_rs->cnt_incr - 1);
     p_rs->pkt_lost += nlost;
     fprintf( stderr, "recv_len=%zd prev_cnt=%""l" "u"" curr_cnt=%""l" "u"" incr=%zd packet lost %""l" "u"" @ %""l" "u""\n",
        recv_len, prev_cnt, curr_cnt, p_rs->cnt_incr, nlost, curr_cnt );

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



    break;
   }

   prev_cnt = curr_cnt;
  }
 }

 return ((void *)0);
}





void * write_thread( void * args )
{
 writestat_t * p_ws;
 storage_block_t * p_blk;
 struct subint * p_si;
 int nchan, npol;



 block_sigint( );

 p_ws = (writestat_t *)args;
 p_si = &p_ws->pf->sub;
 nchan = p_ws->pf->hdr.nchan;
 npol = p_ws->pf->hdr.npol;

 while( 1 )
 {
  int i, off_buf, off_subint, stride_buf, stride_subint;

  p_blk = (storage_block_t *)tsfifo_get( p_ws->writeq );
  if( ((void *)0) == p_blk )
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

  ((p_blk->used == p_ws->pf->hdr.nsblk * (nchan * npol + 8)) ? (void) (0) : __assert_fail ("p_blk->used == p_ws->pf->hdr.nsblk * (nchan * npol + 8)", "specrecv.c", 424, __PRETTY_FUNCTION__));

  off_buf = 8;
  stride_buf = nchan * npol + 8;
  off_subint = 0;
  stride_subint = nchan * npol;

  ((p_ws->intlv_size == 2 || p_ws->intlv_size == 4 || p_ws->intlv_size == 8) ? (void) (0) : __assert_fail ("p_ws->intlv_size == 2 || p_ws->intlv_size == 4 || p_ws->intlv_size == 8", "specrecv.c", 431, __PRETTY_FUNCTION__));

  switch( p_ws->intlv_size )
  {
  case 2:
   for( i = 0; i < p_ws->pf->hdr.nsblk; i++ )
   {

    packed2_to_planar( p_blk->buf + off_buf, p_ws->pf->sub.data + off_subint, nchan );
    off_buf += stride_buf;
    off_subint += stride_subint;
   }
   break;
  case 4:
   for( i = 0; i < p_ws->pf->hdr.nsblk; i++ )
   {

    packed4_to_planar( p_blk->buf + off_buf, p_ws->pf->sub.data + off_subint, nchan );
    off_buf += stride_buf;
    off_subint += stride_subint;
   }
    break;
  case 8:
   for( i = 0; i < p_ws->pf->hdr.nsblk; i++ )
   {

    packed8_to_planar( p_blk->buf + off_buf, p_ws->pf->sub.data + off_subint, nchan );
    off_buf += stride_buf;
    off_subint += stride_subint;
   }
   break;
  default:
   fprintf( stderr, "Wrong interleave size\n" );
   return ((void *)0);
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

 return ((void *)0);
}





int get_current_date( char * datestr, size_t len )
{
 int ret;
 char date[20];
 struct timeval tv;
 struct tm ts;

 ret = gettimeofday( &tv, ((void *)0) );
 if( ret != 0 )
 {
  return ret;
 }

 ts = *gmtime( &tv.tv_sec );
 strftime( date, sizeof(date), "%FT%T", &ts );
 snprintf( datestr, len, "%s.%03ld", date, tv.tv_usec / 1000 );

 return 0;
}





long double get_current_mjd( void )
{
 int ret;
 long double days, frac;
 struct timeval tv;

 const int UNIXDATE_MINUS_MJD = 40587;
 const int SECONDS_PER_DAY = 60 * 60 * 24;

 ret = gettimeofday( &tv, ((void *)0) );
 if( ret != 0 )
 {
  fprintf( stderr, "failed to gettimeofday: %s\n", strerror( ret ) );
  return 0L;
 }

 days = (long double)(tv.tv_sec / SECONDS_PER_DAY + UNIXDATE_MINUS_MJD);
 frac = (long double)(tv.tv_sec % SECONDS_PER_DAY) / (long double)SECONDS_PER_DAY;
 frac += (long double)tv.tv_usec / 1E6 / (long double)SECONDS_PER_DAY;

 return (days + frac);
}


void fill_psrfits_header( struct psrfits * pf, char * filename, int npols, int nbins, int acclen, char * pfargs )
{
 int i;
 char datestr[24], rastr[16], decstr[16];
 char * arg = ((void *)0), * saveptr = ((void *)0);

 memset( pf, 0, sizeof(*pf) );

 strncpy( pf->basefilename, filename, sizeof(pf->basefilename) );
 pf->rows_per_file = 1000;
 pf->multifile = 1;
 pf->quiet = 0;


 strncpy(pf->hdr.obs_mode, "SEARCH", sizeof(pf->hdr.obs_mode));
 arg = strtok_r( pfargs, ",", &saveptr );
 strncpy(pf->hdr.observer, arg, sizeof(pf->hdr.observer));
 arg = strtok_r( ((void *)0), ",", &saveptr );
 strncpy(pf->hdr.source, arg, sizeof(pf->hdr.source));
 arg = strtok_r( ((void *)0), ",", &saveptr );
 strncpy(pf->hdr.project_id, arg, sizeof(pf->hdr.project_id));
 arg = strtok_r( ((void *)0), ",", &saveptr );
 strncpy( rastr, arg, sizeof(rastr) );
 strncpy(pf->hdr.ra_str, rastr, sizeof(pf->hdr.ra_str));
 arg = strtok_r( ((void *)0), ",", &saveptr );
 strncpy( decstr, arg, sizeof(decstr) );
 strncpy(pf->hdr.dec_str, decstr, sizeof(pf->hdr.dec_str));
 arg = strtok_r( ((void *)0), ",", &saveptr );
 strncpy(pf->hdr.telescope, arg, sizeof(pf->hdr.telescope));
 arg = strtok_r( ((void *)0), ",", &saveptr );
 strncpy(pf->hdr.frontend, arg, sizeof(pf->hdr.frontend));
 strncpy(pf->hdr.backend, "PSRSPEC0", sizeof(pf->hdr.backend));
 get_current_date( datestr, sizeof(datestr) );
 strncpy(pf->hdr.date_obs, datestr, sizeof(pf->hdr.date_obs));
 arg = strtok_r( ((void *)0), ",", &saveptr );
 strncpy(pf->hdr.poln_type, arg, sizeof(pf->hdr.poln_type));
 strncpy(pf->hdr.poln_order, "", sizeof(pf->hdr.poln_order));
 strncpy(pf->hdr.track_mode, "TRACK", sizeof(pf->hdr.track_mode));
 strncpy(pf->hdr.cal_mode, "OFF", sizeof(pf->hdr.cal_mode));
 strncpy(pf->hdr.feed_mode, "FA", sizeof(pf->hdr.feed_mode));


 pf->hdr.MJD_epoch = get_current_mjd( );
 arg = strtok_r( ((void *)0), ",", &saveptr );
 pf->hdr.fctr = atof( arg );
 arg = strtok_r( ((void *)0), ",", &saveptr );
 pf->hdr.BW = atof( arg );
 pf->hdr.dt = nbins * (1 + acclen) / (pf->hdr.BW * 1E6);
 pf->hdr.ra2000 = 0;
 pf->hdr.dec2000 = 0;
 pf->hdr.azimuth = 0;
 pf->hdr.zenith_ang = 0;
 pf->hdr.beam_FWHM = 0;
 pf->hdr.cal_freq = 0;
 pf->hdr.cal_dcyc = 0;
 pf->hdr.cal_phs = 0;
 pf->hdr.feed_angle = 0;
 pf->hdr.scanlen = 0;
 pf->hdr.start_lst = 0;
 pf->hdr.start_sec = 0;
 pf->hdr.chan_dm = 0;
 pf->hdr.fd_sang = 0;
 pf->hdr.fd_xyph = 0;

 pf->hdr.start_day = 0;
 pf->hdr.scan_number = 1;
 pf->hdr.nbits = 8;
 pf->hdr.nbin = 0;
 pf->hdr.nchan = nbins;
 pf->hdr.npol = npols;





 pf->hdr.nsblk = (uint64_t)pf->hdr.BW * 1000000 / ((acclen+1) * nbins * npols);
 if( pf->hdr.nsblk > 8192 )
 {
  pf->hdr.nsblk = 8192;
 }
 else if( pf->hdr.nsblk < 1 )
 {
  pf->hdr.nsblk = 1;
 }
 pf->hdr.orig_nchan = nbins;
 pf->hdr.summed_polns = 0;
 pf->hdr.rcvr_polns = npols;
 pf->hdr.offset_subint = 0;
 pf->hdr.ds_time_fact = 1;
 pf->hdr.ds_freq_fact = 1;
 pf->hdr.onlyI = 0;
 pf->hdr.fd_hand = 1;
 pf->hdr.be_phase = 1;

 pf->hdr.orig_df = pf->hdr.BW / pf->hdr.orig_nchan;
 pf->hdr.df = pf->hdr.BW / pf->hdr.nchan;

 pf->sub.tsubint = pf->hdr.nsblk * pf->hdr.dt;
 pf->sub.offs = 0.5 * pf->sub.tsubint;
 pf->sub.lst = pf->hdr.start_lst;
 pf->sub.ra = pf->hdr.ra2000;
 pf->sub.dec = pf->hdr.dec2000;
 pf->sub.glon = 0;
 pf->sub.glat = 0;
 pf->sub.feed_ang = 0;
 pf->sub.pos_ang = 0;
 pf->sub.par_ang = 0;
 pf->sub.tel_az = pf->hdr.azimuth;
 pf->sub.tel_zen = pf->hdr.zenith_ang;
 pf->sub.bytes_per_subint = (pf->hdr.nbits * pf->hdr.nchan * pf->hdr.npol * pf->hdr.nsblk) / 8;
 pf->sub.FITS_typecode = 11;


 pf->sub.dat_freqs = (float *)malloc( pf->hdr.nchan * sizeof(float) );
 pf->sub.dat_weights = (float *)malloc( pf->hdr.nchan * sizeof(float) );
 for( i = 0; i < pf->hdr.nchan; i++ )
 {
  pf->sub.dat_freqs[i] = pf->hdr.fctr - 0.5 * pf->hdr.BW + (i + 0.5) * pf->hdr.df;
  pf->sub.dat_weights[i] = 1.0;
 }

 pf->sub.dat_offsets = (float *)malloc( pf->hdr.nchan * pf->hdr.npol * sizeof(float) );
 pf->sub.dat_scales = (float *)malloc( pf->hdr.nchan * pf->hdr.npol * sizeof(float) );
 for ( i = 0; i < pf->hdr.nchan * pf->hdr.npol; i++ )
 {
  pf->sub.dat_offsets[i] = 0.0;
  pf->sub.dat_scales[i] = 1.0;
 }

 pf->sub.data = (uint8_t *)malloc( pf->sub.bytes_per_subint );


 pf->sub.rawdata = pf->sub.data;

 return;
}


int main( int argc, char *argv[] )
{
 int ret, sockfd = -1;
 char * hostname, * portnum, * filename;
 struct addrinfo hints, *servaddr, *p;

 tsfifo_t * pool, * writeq;
 pthread_t tid_recv, tid_write;
 recvstat_t recvstat;
 writestat_t writestat;
 struct psrfits pf;
 void * p_exitcode;
 size_t storage_block_size;

 uint32_t acclen, nbins, interleave_size;
 double rectime = 0.0;
 int wait_pps = 0;
 char * pfargs;





 if(argc != 1)
        printf("yulei");
 if( argc != 10 )
 {
  fprintf( stderr, "\nUsage: %s <local_ip> <port_num> <file_name> <num_fft_channels> <acclen> <interleave_size> <seconds_to_record> <wait_for_pps> <\"psrfits args\">\n\n", argv[0] );
  return 0;
 }

 hostname = argv[1];
 portnum = argv[2];
 filename = argv[3];

 nbins = atoi( argv[4] );
 acclen = atoi( argv[5] );
 if( acclen < 1 || acclen > (1<<20) )
 {
  fprintf( stderr, "Wrong acclen\n" );
  return -1;
 }

 interleave_size = atof( argv[6] );
 if( interleave_size != 2 && interleave_size != 4 && interleave_size != 6 )
 {
  fprintf( stderr, "Wrong spectra bins interleave size %d, valid values are 2, 4, 8.\n", interleave_size);
  return -1;
 }

 rectime = atof( argv[7] );
 wait_pps = atoi( argv[8] );
 pfargs = argv[9];






 memset( &hints, 0, sizeof(hints) );
 hints.ai_family = 0;
 hints.ai_flags = 0x0001;
 hints.ai_socktype = SOCK_DGRAM;
 hints.ai_protocol = IPPROTO_UDP;

 ret = getaddrinfo( hostname, portnum, &hints, &servaddr );
 if( ret != 0 )
 {
  fprintf( stderr, "getaddrinfo(): %s\n", gai_strerror(ret) );
  return -1;
 }

 for( p = servaddr; p != ((void *)0); p = p->ai_next )
 {
  sockfd = socket( p->ai_family, p->ai_socktype, p->ai_protocol );
  if( sockfd != -1 )
  {
   break;
  }
 }

 if( ((void *)0) == p )
 {
  fprintf( stderr, "failed to create socket\n" );
  freeaddrinfo( servaddr );
  return -1;
 }

 ret = bind( sockfd, p->ai_addr, p->ai_addrlen );
 if( ret == -1 )
 {
  fprintf( stderr, "bind(): %s\n", strerror( (*__errno_location ()) ) );
  close( sockfd );
  freeaddrinfo( servaddr );
  return -1;
 }

 freeaddrinfo( servaddr );
# 816 "specrecv.c"
 pool = tsfifo_create( FIFO_DEPTH );
 if( ((void *)0) == pool )
 {
  fprintf( stderr, "faileded to create memory pool.\n" );
  freeaddrinfo( servaddr );
  close( sockfd );
  return -1;
 }

 writeq = tsfifo_create( FIFO_DEPTH );
 if( ((void *)0) == writeq )
 {
  fprintf( stderr, "faileded to create write queue.\n" );
  tsfifo_destroy( pool );
  freeaddrinfo( servaddr );
  close( sockfd );
  return -1;
 }


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






 writestat.pool = pool;
 writestat.writeq = writeq;
 writestat.bytes = 0;
 writestat.pf = &pf;
 writestat.rectime = rectime;
 writestat.intlv_size= interleave_size;
 ret = pthread_create( &tid_write, ((void *)0), write_thread, &writestat );
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






 recvstat.sockfd = sockfd;
 recvstat.pool = pool;
 recvstat.writeq = writeq;
 recvstat.wait_pps = wait_pps;




 recvstat.cnt_incr = 1;
 recvstat.pkt_lost = 0;
 recvstat.bytes = 0;
 ret = pthread_create( &tid_recv, ((void *)0), receive_thread, &recvstat );
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





 signal( 2, stop_processing );






 while( 1 )
 {
  uint64_t last_bytes_recv, last_bytes_written;
  double mbs_recv, mbs_written;

  last_bytes_recv = recvstat.bytes;
  last_bytes_written= writestat.bytes;

  sleep( 1 );

  mbs_recv = (double)(recvstat.bytes - last_bytes_recv) / 1.E6;
  mbs_written = (double)(writestat.bytes - last_bytes_written) / 1.E6;

  fprintf( stderr, "recv:%8.3f MB/s  write:%8.3f MB/s  "
       "packets lost: %""l" "u""  writeq/pool: %3lu/%3lu  elapsed: %8.3f s\n",
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
