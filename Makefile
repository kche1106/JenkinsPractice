CFLAGS = -03 - Wall
CC = gcc
OBJS = one.o

morph: $(OBJS)
    $(CC) -o three $(CFLAGS) $(OBJS)

.c.o: $(CC) $(CFLAGS) -c $*.c
