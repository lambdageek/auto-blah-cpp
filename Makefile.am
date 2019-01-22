ACLOCAL_AMFLAGS = -I m4

bin_PROGRAMS = foo 

noinst_LTLIBRARIES= libmeh.la

foo_SOURCES = foo.c 
foo_LDADD = libmeh.la
# set some random rpath just to observe what happens to target specific ldflags
foo_LDFLAGS = -Wl,-rpath /tmp/foo

my_sources=
if LINK_CPLUSPLUS
my_sources += dummy.cpp
endif
# the above causes automake to select CXXLINK for linking foo

libmeh_la_SOURCES= meh.c
libmeh_la_LDFLAGS=-Wl,-rpath /tmp/blab

nodist_EXTRA_foo_SOURCES = $(my_sources)

#foo_LINK=$(CXXLINK)
# the above loses target specific ldflags. need the command below
#foo_LINK=$(CXXLINK) $(foo_LDFLAGS)
#libmeh_la_LINK=$(CXXLINK)
# the above loses target specific ldflags and libadd. need the command below
#libmeh_la_LINK=$(CXXLINK) $(libmeh_la_LDFLAGS) $(libmeh_la_LIBADD)

