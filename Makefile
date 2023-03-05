DESTDIR ?=
PREFIX ?= /usr/local
BINDIR ?= ${PREFIX}/bin
PROG ?= hat
INSTALL := install
OBJ = hat.ha
HARE ?= hare

hat: $(OBJ)
	$(HARE) build -o $(PROG) $(OBJ)

install:
	$(INSTALL) -Dm0755 $(PROG) $(DESTDIR)$(BINDIR)/$(PROG)

uninstall:
	$(RM) $(DESTDIR)$(BINDIR)/$(PROG)
clean:
	$(RM) $(PROG)