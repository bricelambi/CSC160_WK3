CC=g++
CFLAGS=-I.
DEPS = csc160.h
OBJ = csc160.o hw3.o wk3.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

wk3: $(OBJ)
	$(CC) -o $@ csc160.o wk3.o $(CFLAGS)

hw3: $(OBJ)
	$(CC) -o $@ csc160.o hw3.o $(CFLAGS)

all: wk3 hw3

clean:
	rm -f *.o wk3 hw3
