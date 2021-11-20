CC=g++
UNAME := $(shell uname)
# For Mac OS X/Darwin, use the following:
ifeq ($(UNAME), Darwin)
CFLAGS=-I/opt/homebrew/Cellar/sfml/2.5.1_1/include/
LDFLAGS=-L/opt/homebrew/Cellar/sfml/2.5.1_1/lib/
LIBS=-lsfml-graphics -lsfml-window -lsfml-system
copy:
	mkdir -p build
	mkdir -p build/images
	cp images/* build/images
	$(CC) main.cpp $(CFLAGS) -o build/Chess-Game $(LDFLAGS) $(LIBS) 
endif
# For Linux, use the following:
ifeq ($(UNAME), Linux)
CFLAGS=-I/opt/homebrew/Cellar/sfml/2.5.1_1/include/
LDFLAGS=-L/opt/homebrew/Cellar/sfml/2.5.1_1/lib/
LIBS=-lsfml-graphics -lsfml-window -lsfml-system
copy:
	mkdir -p build
	mkdir -p build/images
	cp images/* build/images
	$(CC) main.cpp $(CFLAGS) -o build/Chess-Game $(LDFLAGS) $(LIBS)
endif

# For Windows, use the following:
ifeq ($(OS),Windows_NT)
CFLAGS=-IC:\SFML-2.5.1\include
LDFLAGS=-LC:\SFML-2.5.1\lib
LIBS=-lsfml-graphics -lsfml-window -lsfml-system
copy:
	if not exist build mkdir build
	if not exist build\images mkdir build\images
	copy /Y "C:\SFML-2.5.1\bin\*" "build\"
	copy /Y "images\*" "build\images\"
	$(CC) main.cpp $(CFLAGS) -o build/Chess-Game $(LDFLAGS) $(LIBS)
endif


