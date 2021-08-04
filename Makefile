.POSIX:

PREFIX = /usr

all: install man

cruncyroll-cli:

install:
	sudo mkdir -p ${DESTDIR}${PREFIX}/bin
	sudo cp crunchyroll-cli ${DESTDIR}${PREFIX}/bin/crunchyroll-cli

man:
	sudo rm /usr/local/man/man1/crunchyroll-cli.1 -f
	sudo rm /usr/local/man/man1/crunchyroll-cli.1.gz -f
	sudo cp crunchyroll-cli.1 /usr/local/man/man1
	sudo gzip /usr/local/man/man1/crunchyroll-cli.1
	sudo mandb -f /usr/local/man/man1/crunchyroll-cli.1

uninstall:
	sudo rm -f ${DESTDIR}${PREFIX}/bin/crunchyroll-cli
	sudo rm /usr/local/man/man1/crunchyroll-cli.1 -f
	sudo rm /usr/local/man/man1/crunchyroll-cli.1.gz -f

.PHONY: all install uninstall man
