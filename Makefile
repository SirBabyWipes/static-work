CXXFLAGS=-std=c++17 -I$(HOME)/rapidjson/include -pthread
LDFLAGS=-lcurl
LD=g++
CC=g++

all: level_client 

level_client: level_client.o
	$(LD) $< -o $@ $(LDFLAGS)

clean:
	-rm -f level_client level_client.o
