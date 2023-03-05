DESTDIR ?=
PREFIX ?= /usr/local
BINDIR ?= ${PREFIX}/bin
PROG ?= hat
INSTALL := install
OBJ = hat.ha
HARE ?= hare

hat: $(OBJ)
	$(HARE) build -v -o $(PROG) $(OBJ)

install:
	$(INSTALL) -v -Dm0755 $(PROG) $(DESTDIR)$(BINDIR)/$(PROG)

uninstall:
	$(RM) $(DESTDIR)$(BINDIR)/$(PROG)

clean:
	$(RM) $(PROG)
	
.PHONY: clean install