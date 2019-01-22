AC_INIT([foo], [1.0]) 
AM_INIT_AUTOMAKE([foreign -Wall]) 
AC_CONFIG_MACRO_DIRS([m4])

dnl AM_SILENT_RULES([yes])

AC_PROG_CC 
AC_PROG_CXX 
AM_PROG_CC_C_O 

dnl why is this needed?
AM_PROG_AR

AM_PROG_LIBTOOL
# Use dolt (http://dolt.freedesktop.org/) instead of libtool for building.
DOLT


AC_ARG_ENABLE([cplusplus], 
        AS_HELP_STRING([--enable-cplusplus], 
                       [enable C++ linking (default: no)]), 
        [LINK_CPLUSPLUS=$enableval], [LINK_CPLUSPLUS=no]) 

AM_CONDITIONAL([LINK_CPLUSPLUS], [test "x$LINK_CPLUSPLUS" = xyes]) 

AC_CONFIG_FILES([Makefile]) 
AC_OUTPUT 

