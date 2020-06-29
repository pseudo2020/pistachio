CC=g++
CVER=-std=c++14

debug: 
	$(CC) -c src/*.cpp $(CVER) -m64 -g -Wall -I include && g++ *.o -o bin/debug/main -lSDL2main -lSDL2 -lSDL2_image && rm *.o && ./bin/debug/main

release:
	$(CC) -c src/*.cpp $(CVER) -m64 -O3 -I include && g++ *.o -o bin/release/main -s -lSDL2main -lSDL2 -lSDL2_image && rm *.o && ./bin/release/main
