
CC      = gcc
CFLAGS  = -Wall
LIBS    = -lpng -lm -lz
LDFLAGS = -g -static $(LIBS)


all: png2c

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o$@

png2c: png2c.c
	$(CC) png2c.c -g -static -lpng -lm -lz -o png2c
