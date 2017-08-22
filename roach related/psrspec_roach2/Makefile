
RM = rm -f

CC = gcc
FC = gfortran

CFITSIO_INC_DIR=/usr/include/cfitsio
CFITSIO_LIB_DIR=/usr/lib64
#CFITSIO_INC_DIR=/home/hades/Copy/program/specrecv/cfitsio
#CFITSIO_LIB_DIR=/home/hades/Copy/program/specrecv/cfitsio/zlib

CFLAGS = -O3 -Wall -g -I${CFITSIO_INC_DIR} -D_FILE_OFFSET_BITS=64
LDFLAGS = -lcfitsio -lm -lpthread
STATICLIBS = ${CFITSIO_LIB_DIR}/libcfitsio.a

PROG = specrecv

SRCS = specrecv.c write_psrfits.c

OBJS = $(SRCS:%.c=%.o)

.PHONY: all clean

all: $(PROG)

$(PROG): $(OBJS)
	$(CC) -o $@ $+ $(LDFLAGS)

clean:
	$(RM) $(PROG) $(OBJS)
