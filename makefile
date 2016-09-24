CC = gcc
CFLAGS = -g -Wall -pedantic -ansi -std=c99
OBJS = part1_functions.o main.o
DEPS = part1_functions.h

all: main
	rm *.o

main : $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o main

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

part1_functions.o: part1_functions.c part1_functions.h
	$(CC) $(CFLAGS) -c part1_functions.c

clean:
	rm main
