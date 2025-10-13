SRCS := $(wildcard data/molehunt/function/*) $(wildcard data/respawnpoint/function/*) $(wildcard data/minecraft/tags/function/*)

all: molehunt.zip

molehunt.zip: $(SRCS) pack.mcmeta
	zip -r $@ data pack.mcmeta
