all:
    @dmd src/main.d -oflogifetch
    @rm logifetch.o

build: all

clean:
    @rm logifetch
