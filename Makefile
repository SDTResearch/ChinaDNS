CC ?= gcc 
DESTDIR ?= /usr/local

all: chinadns

chinadns: src/chinadns.c
	$(CC) -Wall -O3 -lresolv -o chinadns src/chinadns.c

.PHONY: clean all install

install: chinadns
	install -d $(DESTDIR)/bin/                                                                                                                                                         
	install chinadns $(DESTDIR)/bin/

clean:
	rm -f chinadns