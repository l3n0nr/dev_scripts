prefix	    = /usr/local
exec_prefix = ${prefix}

bindir	    = ${exec_prefix}/bin
datarootdir = $(prefix)/share
mandir	    = ${datarootdir}/man
datadir     = $(datarootdir)/wavemon
exec_perms  = 0755
install-suid-root: exec_perms = 4755

CC	 ?= gcc
CFLAGS	 ?= -O2 -Wall -pthread -I/usr/include/libnl3
CPPFLAGS ?= 
LDFLAGS  ?= 
DEFS	 ?= -DPACKAGE_NAME=\"wavemon\" -DPACKAGE_TARNAME=\"wavemon-current\" -DPACKAGE_VERSION=\"0.8.0\" -DPACKAGE_STRING=\"wavemon\ 0.8.0\" -DPACKAGE_BUGREPORT=\"gerrit@erg.abdn.ac.uk\" -DPACKAGE_URL=\"https://github.com/uoaerg/wavemon\" -DBUILD_DATE=\"Tue\ Nov\ \ 8\ 15:29:57\ BRST\ 2016\" -DSTDC_HEADERS=1 -DTIME_WITH_SYS_TIME=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DHAVE_NCURSES_H=1 -DHAVE_FCNTL_H=1 -DHAVE_NETDB_H=1 -DHAVE_SYS_IOCTL_H=1 -DHAVE_SYS_TIME_H=1 -DHAVE_UNISTD_H=1 -DHAVE_NET_IF_ARP_H=1 -DHAVE_NETINET_ETHER_H=1 -DHAVE_NET_ETHERNET_H=1 -DHAVE_PTHREAD_H=1 -DHAVE_SYS_SOCKET_H=1 -DHAVE_LINUX_IF_H=1 -DHAVE_LINUX_WIRELESS_H=1 -DHAVE__BOOL=1 -DHAVE_STDBOOL_H=1 -DHAVE_LIBM=1 -DHAVE_LIBNCURSES=1 -DHAVE_GETTIMEOFDAY=1 -DHAVE_ETHER_NTOHOST=1
LDLIBS	 ?= -lncurses -lm  -lnl-genl-3 -lnl-3 -lnl-3

INSTALL = /usr/bin/install -c
RM	= rm -vf

MAIN	= wavemon.c
HEADERS	= $(wildcard *.h)
PURESRC	= $(filter-out $(MAIN),$(wildcard *.c))
OBJS	= $(PURESRC:.c=.o)
DOCS	= README.md NEWS THANKS AUTHORS COPYING ChangeLog

%.o: %.c $(HEADERS)
	@echo ' CC  ' $<
	@$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $(DEFS) -c -o $@ $<

all: wavemon
wavemon: $(MAIN) $(OBJS)

$(MAIN): Makefile
Makefile: Makefile.in config.status
	./config.status
config.status: configure
	./config.status --recheck
configure: configure.ac
	autoconf

tags: $(MAIN) $(PURESRC) $(HEADERS)
	ctags $^ > $@

.PHONY: all install uninstall clean distclean

install: install-binaries install-docs

install-suid-root install-binaries: all
	$(INSTALL) -m 0755 -d $(DESTDIR)$(bindir)
	$(INSTALL) -m $(exec_perms) wavemon $(DESTDIR)$(bindir)

install-docs: wavemon.1 wavemonrc.5 $(DOCS)
	$(INSTALL) -m 0755 -d $(DESTDIR)$(mandir)/man1
	$(INSTALL) -m 0644 wavemon.1 $(DESTDIR)$(mandir)/man1
	$(INSTALL) -m 0755 -d $(DESTDIR)$(mandir)/man5
	$(INSTALL) -m 0644 wavemonrc.5 $(DESTDIR)$(mandir)/man5
	$(INSTALL) -m 0755 -d $(DESTDIR)$(datadir)
	$(INSTALL) -m 0644 $(DOCS) $(DESTDIR)$(datadir)

uninstall:
	@$(RM) $(bindir)/wavemon
	@$(RM) $(mandir)/man1/wavemon.1
	@$(RM) $(mandir)/man5/wavemonrc.5
	@$(RM) -r $(datadir)

clean:
	@$(RM) *.o *~ tags wavemon

distclean: uninstall clean
	@$(RM) config.status config.log config.cache Makefile
	@$(RM) -r autom4te.cache
