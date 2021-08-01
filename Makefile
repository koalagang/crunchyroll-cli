.POSIX:

PREFIX = /usr

all: install

cruncyroll-cli:

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp crunchyroll-cli ${DESTDIR}${PREFIX}/bin/crunchyroll-cli

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/crunchyroll-cli

.PHONY: all install uninstall
