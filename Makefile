CFLAGS=-Wall -g `pkg-config --cflags --libs gtk+-3.0`
CC=gcc

default: calculator

calculator: calculator.c
	$(CC) calculator.c tinyexpr.c $(CFLAGS) -lm -o calculator 

clean:
	rm -f calculator
