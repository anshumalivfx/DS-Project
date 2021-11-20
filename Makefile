CC=g++
UNAME := $(shell uname)
ifeq ($(UNAME), Darwin)
CFLAGS=-I/opt/homebrew/Cellar/sfml/2.5.1_1/include/
LDFLAGS=-L/opt/homebrew/Cellar/sfml/2.5.1_1/lib/
LIBS=-lsfml-graphics -lsfml-window -lsfml-system
endif

ifeq ($(UNAME), Linux)
CFLAGS=-I/opt/homebrew/Cellar/sfml/2.5.1_1/include/
LDFLAGS=-L/opt/homebrew/Cellar/sfml/2.5.1_1/lib/
LIBS=-lsfml-graphics -lsfml-window -lsfml-system
endif

main:
	$(CC) main.cpp $(CFLAGS) -o build/main $(LDFLAGS) $(LIBS) 