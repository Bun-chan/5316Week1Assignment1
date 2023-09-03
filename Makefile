INCLUDE_DIRS = 
LIB_DIRS = 
CC=gcc

CDEFS=
CFLAGS= -O0 -g $(INCLUDE_DIRS) $(CDEFS) -Wall
LIBS= 

HFILES= 
CFILES= seqgen2.c

SRCS= ${HFILES} ${CFILES}
OBJS= ${CFILES:.c=.o}

all: seqgen2

clean:
	-rm -f *.o *.d
	-rm -f seqgen2

seqgenex0: seqgenex0.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $@.o -lpthread -lrt

seqgen2: seqgen2.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $@.o -lpthread -lrt

seqgen: seqgen.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $@.o -lpthread -lrt

clock_times: clock_times.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $@.o -lpthread -lrt

depend:

.c.o:
	$(CC) $(CFLAGS) -c $<
