CC = gcc
CXX = g++

INCDIR = 
INCDEP = 

CFLAGS = -g -Wall 
CXXFLAGS = -g -Wall 

LDFLAGS = -g

LDLIBS = 

.PHONY: default
default: tsp

tsp: tsp.o $(INCDEP)
	$(CC) $(CFLAGS) $(INCDIR) $(LDLIBS) -o tsp tsp.o $(LDFLAGS)

tsp.o: ./src/tsp.c
	$(CC) $(CFLAGS) $(INCDIR) -c ./src/tsp.c

.PHONY: clean
clean:
	rm -f *.o a.out core tsp *.dSYM

.PHONY: all
all: clean default

