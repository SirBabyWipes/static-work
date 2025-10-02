CXXFLAGS=-I$(HOME)/libs/rapidjson/include
LDFLAGS=-lcurl
LD=g++
CC=g++

all: level_client 

level_client: level_client.o
	$(LD) $< -o $@ $(LDFLAGS)

clean:
	-rm -f level_client level_client.o
