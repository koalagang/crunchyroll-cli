.POSIX:

PREFIX = /usr

all: install man

cruncyroll-cli:

install:
	cp crunchyroll-cli ${PREFIX}/local/bin

man:
	rm ${PREFIX}/local/man/man1/crunchyroll-cli.1 -f
	rm ${PREFIX}/local/man/man1/crunchyroll-cli.1.gz -f
	cp docs/crunchyroll-cli.1 ${PREFIX}/local/man/man1
	gzip ${PREFIX}/local/man/man1/crunchyroll-cli.1
	mandb -f ${PREFIX}/local/man/man1/crunchyroll-cli.1

help:
	mkdir -p ${PREFIX}/share/crunchyroll-cli
	cp docs/usage.txt ${PREFIX}/share/crunchyroll-cli

uninstall:
	rm -f ${DESTDIR}${PREFIX}/local/crunchyroll-cli
	rm ${PREFIX}/local/man/man1/crunchyroll-cli.1 -f
	rm ${PREFIX}/local/man/man1/crunchyroll-cli.1.gz -f

.PHONY: all install uninstall man
