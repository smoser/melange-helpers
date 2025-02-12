DESTDIR ?= /usr/bin

install: build
	install -D -m0755 ldd-check/ldd-check $(DESTDIR)/usr/bin/ldd-check
	install -D -m0755 usrmerge-tool/usrmerge-tool $(DESTDIR)/usr/bin/usrmerge-tool

build:
	( cd usrmerge-tool && go build ./... )
