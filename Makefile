
SHELL = /bin/sh

# V=0 quiet, V=1 verbose.  other values don't work.
V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
ECHO1 = $(V:1=@ :)
ECHO = $(ECHO1:0=@ echo)
NULLCMD = :

#### Start of system configuration section. ####

srcdir = ext/generator
topdir = /home/drogus/.rvm/rubies/ruby-2.6.5/include/ruby-2.6.0
hdrdir = $(topdir)
arch_hdrdir = /home/drogus/.rvm/rubies/ruby-2.6.5/include/ruby-2.6.0/x86_64-darwin19
PATH_SEPARATOR = :
VPATH = $(srcdir):$(arch_hdrdir)/ruby:$(hdrdir)/ruby

prefix = $(DESTDIR)/home/drogus/.rvm/rubies/ruby-2.6.5

rubysitearchprefix = $(rubylibprefix)/$(sitearch)

rubyarchprefix = $(rubylibprefix)/$(arch)

rubylibprefix = $(libdir)/$(RUBY_BASE_NAME)

exec_prefix = $(prefix)

vendorarchhdrdir = $(vendorhdrdir)/$(sitearch)

sitearchhdrdir = $(sitehdrdir)/$(sitearch)

rubyarchhdrdir = $(rubyhdrdir)/$(arch)

vendorhdrdir = $(rubyhdrdir)/vendor_ruby

sitehdrdir = $(rubyhdrdir)/site_ruby

rubyhdrdir = $(includedir)/$(RUBY_VERSION_NAME)

vendorarchdir = $(vendorlibdir)/$(sitearch)

vendorlibdir = $(vendordir)/$(ruby_version)

vendordir = $(rubylibprefix)/vendor_ruby

sitearchdir = $(sitelibdir)/$(sitearch)

sitelibdir = $(sitedir)/$(ruby_version)

sitedir = $(rubylibprefix)/site_ruby

rubyarchdir = $(rubylibdir)/$(arch)

rubylibdir = $(rubylibprefix)/$(ruby_version)

sitearchincludedir = $(includedir)/$(sitearch)

archincludedir = $(includedir)/$(arch)

sitearchlibdir = $(libdir)/$(sitearch)

archlibdir = $(libdir)/$(arch)

ridir = $(datarootdir)/$(RI_BASE_NAME)

mandir = $(datarootdir)/man

localedir = $(datarootdir)/locale

libdir = $(exec_prefix)/lib

psdir = $(docdir)

pdfdir = $(docdir)

dvidir = $(docdir)

htmldir = $(docdir)

infodir = $(datarootdir)/info

docdir = $(datarootdir)/doc/$(PACKAGE)

oldincludedir = $(SDKROOT)/usr/include

includedir = $(prefix)/include

runstatedir = $(localstatedir)/run

localstatedir = $(prefix)/var

sharedstatedir = $(prefix)/com

sysconfdir = $(prefix)/etc

datadir = $(datarootdir)

datarootdir = $(prefix)/share

libexecdir = $(exec_prefix)/libexec

sbindir = $(exec_prefix)/sbin

bindir = $(exec_prefix)/bin

archdir = $(rubyarchdir)



CC_WRAPPER = 
CC = gcc
CXX = g++
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -lruby.2.6-static -framework Security -framework Foundation -lpthread -lgmp -ldl -lobjc
empty =
OUTFLAG = -o $(empty)
COUTFLAG = -o $(empty)
CSRCFLAG = $(empty)

RUBY_EXTCONF_H = 
cflags   = $(optflags) $(debugflags) $(warnflags)
cxxflags = $(optflags) $(debugflags) $(warnflags)
optflags = -O3
debugflags = -ggdb3
warnflags = -Wall -Wextra -Wdeclaration-after-statement -Wdeprecated-declarations -Wdivision-by-zero -Wimplicit-function-declaration -Wimplicit-int -Wpointer-arith -Wshorten-64-to-32 -Wwrite-strings -Wmissing-noreturn -Wno-constant-logical-operand -Wno-long-long -Wno-missing-field-initializers -Wno-overlength-strings -Wno-parentheses-equality -Wno-self-assign -Wno-tautological-compare -Wno-unused-parameter -Wno-unused-value -Wunused-variable -Wextra-tokens
cppflags = 
CCDLFLAGS = -fno-common
CFLAGS   = $(CCDLFLAGS) $(cflags)  -fno-common -pipe $(ARCH_FLAG)
INCFLAGS = -I. -I$(arch_hdrdir) -I$(hdrdir)/ruby/backward -I$(hdrdir) -I$(srcdir)
DEFS     = 
CPPFLAGS =   -I/usr/local/opt/libyaml/include -I/usr/local/opt/readline/include -I/usr/local/opt/libksba/include -I/usr/local/opt/openssl@1.1/include -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE -D_DARWIN_UNLIMITED_SELECT -D_REENTRANT $(DEFS) $(cppflags) -arch x86_64 -I/home/drogus/.rvm/gems/ruby-2.6.5/gems/rice2-2.2.1/ruby/lib/include
CXXFLAGS = $(CFLAGS)  -std=c++1z -Wno-register 
ldflags  = -L. -fstack-protector-strong -L/usr/local/lib -L/usr/local/opt/libyaml/lib -L/usr/local/opt/readline/lib -L/usr/local/opt/libksba/lib -L/usr/local/opt/openssl@1.1/lib  -L/home/drogus/.rvm/gems/ruby-2.6.5/gems/rice2-2.2.1/ruby/lib/lib -lrice
dldflags = -Wl,-undefined,dynamic_lookup -Wl,-multiply_defined,suppress -L/usr/local/opt/libyaml/lib -L/usr/local/opt/readline/lib -L/usr/local/opt/libksba/lib -L/usr/local/opt/openssl@1.1/lib 
ARCH_FLAG = 
DLDFLAGS = $(ldflags) $(dldflags) $(ARCH_FLAG)
LDSHARED = g++ -std=c++14 -dynamic -bundle
LDSHAREDXX = $(CXX) -dynamic -bundle
AR = libtool -static
EXEEXT = 


RUBY_INSTALL_NAME = $(RUBY_BASE_NAME)

RUBY_SO_NAME = ruby.2.6

RUBYW_INSTALL_NAME = 

RUBY_VERSION_NAME = $(RUBY_BASE_NAME)-$(ruby_version)

RUBYW_BASE_NAME = rubyw

RUBY_BASE_NAME = ruby


arch = x86_64-darwin19
sitearch = $(arch)
ruby_version = 2.6.0
ruby = $(bindir)/$(RUBY_BASE_NAME)
RUBY = $(ruby)
ruby_headers = $(hdrdir)/ruby.h $(hdrdir)/ruby/backward.h $(hdrdir)/ruby/ruby.h $(hdrdir)/ruby/defines.h $(hdrdir)/ruby/missing.h $(hdrdir)/ruby/intern.h $(hdrdir)/ruby/st.h $(hdrdir)/ruby/subst.h $(arch_hdrdir)/ruby/config.h

RM = rm -f
RM_RF = $(RUBY) -run -e rm -- -rf
RMDIRS = rmdir -p
MAKEDIRS = /usr/local/opt/coreutils/bin/gmkdir -p
INSTALL = /usr/local/opt/coreutils/bin/ginstall -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp
TOUCH = exit >

#### End of system configuration section. ####

preload = 


CXX = g++ -std=c++14
libpath = . $(libdir) /usr/local/opt/libyaml/lib /usr/local/opt/readline/lib /usr/local/opt/libksba/lib /usr/local/opt/openssl@1.1/lib
LIBPATH =  -L. -L$(libdir) -L/usr/local/opt/libyaml/lib -L/usr/local/opt/readline/lib -L/usr/local/opt/libksba/lib -L/usr/local/opt/openssl@1.1/lib
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 
DISTCLEANDIRS = 

extout = 
extout_prefix = 
target_prefix = /generator
LOCAL_LIBS = 
LIBS = -lruby.2.6  
ORIG_SRCS = generator.cpp
SRCS = $(ORIG_SRCS) 
OBJS = generator.o
HDRS = 
LOCAL_HDRS = 
TARGET = generator
TARGET_NAME = generator
TARGET_ENTRY = Init_$(TARGET_NAME)
DLLIB = $(TARGET).bundle
EXTSTATIC = 
STATIC_LIB = 

TIMESTAMP_DIR = .

BINDIR        = $(bindir)

RUBYCOMMONDIR = $(sitedir)$(target_prefix)

RUBYLIBDIR    = $(sitelibdir)$(target_prefix)

RUBYARCHDIR   = $(sitearchdir)$(target_prefix)

HDRDIR        = $(rubyhdrdir)/ruby$(target_prefix)

ARCHHDRDIR    = $(rubyhdrdir)/$(arch)/ruby$(target_prefix)

TARGET_SO_DIR =
TARGET_SO     = $(TARGET_SO_DIR)$(DLLIB)
CLEANLIBS     = $(TARGET_SO) 
CLEANOBJS     = *.o  *.bak


all:    $(DLLIB)
static: $(STATIC_LIB)
.PHONY: all install static install-so install-rb
.PHONY: clean clean-so clean-static clean-rb

clean-static::
clean-rb-default::
clean-rb::
clean-so::
clean: clean-so clean-static clean-rb-default clean-rb
		-$(Q)$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES) .*.time

distclean-rb-default::
distclean-rb::
distclean-so::
distclean-static::
distclean: clean distclean-so distclean-static distclean-rb-default distclean-rb
		-$(Q)$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		-$(Q)$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)
		-$(Q)$(RMDIRS) $(DISTCLEANDIRS) 2> /dev/null || true

realclean: distclean
install: install-so install-rb

install-so: $(DLLIB) $(TIMESTAMP_DIR)/.sitearchdir.-.generator.time
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
clean-static::
	-$(Q)$(RM) $(STATIC_LIB)
install-rb: pre-install-rb do-install-rb install-rb-default
install-rb-default: pre-install-rb-default do-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
do-install-rb:
do-install-rb-default:
pre-install-rb-default:
	@$(NULLCMD)
$(TIMESTAMP_DIR)/.sitearchdir.-.generator.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYARCHDIR)
	$(Q) $(TOUCH) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .mm .cxx .cpp .o .S

.cc.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.cc.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.mm.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.mm.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.cxx.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.cxx.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.cpp.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.cpp.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.c.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.c.S:
	$(ECHO) translating $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.m.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.m.S:
	$(ECHO) translating $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

$(TARGET_SO): $(OBJS) Makefile
	$(ECHO) linking shared-object generator/$(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHAREDXX) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)
	$(Q) $(POSTLINK)



$(OBJS): $(HDRS) $(ruby_headers)
