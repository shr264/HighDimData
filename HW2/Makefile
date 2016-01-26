# Makefile created by S-PLUS utility CHAPTER, version 3.25
# S-PLUS Version 3.4 Release 1 for Sun SPARC, SunOS 4.1.3_U1 : 1996 

SHOME=/local/splus3.4

#WHICH_LOAD=static.load
WHICH_LOAD=dyn.load
#WHICH_LOAD=dyn.load.shared

EXTRA_OBJ_FILES=
EXTRA_C_NAMES=
EXTRA_F_NAMES=

# This is a Makefile produced by the S-PLUS utility CHAPTER. It guides
# compilation of C, Ratfor and Fortran source code, loading of the resulting
# object code, and installation of functions and helpfiles.
# 
# Overview: 
# ========
# 
# You will need to attend to a few 'make' macro settings at the top of this
# file first.  See the Detailed Instructions below for these. Then, if you
# want to compile and load the default set of C and Fortran routines, type
# (1) 'make install' to install functions on .Data and thereby enable
# building of the default list of compiled routine names, then (2) 'make
# load' to compile the object code, build the set of names to load, and load
# this object code.  Other, secondary, 'make' targets are 'install.funs' and
# 'install.help' ('install' makes both of those), 'clean' (remove only
# intermediate object code) and 'virgin' (remove object code, the local
# standalone S-PLUS executable if you built it, and the directory
# .Data).
# 
# Detailed Instructions:
# =====================
# 
# 1. On the line near the top that starts with "SHOME=", change the
# directory pathname on the right of the equals sign to the pathname of the
# top S-PLUS directory on your machine; use Splus SHOME to get this
# pathname.
# 
# 2. Near the top, the macro WHICH_LOAD specifies whether 'make' targets
# 'load' and 'all' should make
# (a) a standalone S-PLUS binary executable named
# "local.Sqpe" which includes the local C and Fortran code, or
# (b) a dyn.loadable file "Lasso2_l.o" containing only this local code, or
# (c) a shared library "Lasso2.so" containing this local code
# and loadable with the dyn.load.shared function (this is the only form
# of dynamic loading available on Splus 3.3 for the Iris and Dec Alpha).
# To make a complete standalone executable, WHICH_LOAD should be set to
# "static.load"; the other possible values are "dyn.load" and
# "dyn.load.shared".  Make sure a # comment symbol (#) appears in front
# of the setting you DON'T want.
# The default has been set to "static.load".
# 
# Incidentally, you can always make targets 'static.load', 'dyn.load',
# and 'dyn.load.shared' regardless of the value of WHICH_LOAD.
# The macro just specifies what the generic targets 'load' and 'all'
# should make.
# 
# 3. Near the top, the macro EXTRA_OBJ_FILES names object files (ending in
# ".o") which should be loaded in addition to those which are part of this
# chapter.  Add any additional object file names you want to load, separated
# by spaces, on the right hand side of the equals sign.  There MUST be
# corresponding C (".c"), Ratfor (".r") or Fortran (".f") files present in
# this directory.
# 
# If you add file names to EXTRA_OBJ_FILES, you must also add the names of
# the corresponding C functions or Fortran subroutines to the macros
# EXTRA_C_NAMES and EXTRA_F_NAMES respectively, underneath EXTRA_OBJ_FILES.
# The names added should be as they appear at the source-code level; do not
# add leading or trailing underscores unless these are present in the
# source-level name.
# 
# You won't generally need to change any more 'make' macros, or indeed
# anything else in this Makefile.
# 
# 4. The file Lasso2_i.c is a C language source file which will ensure
# that the make target 'load' will load C and Fortran routines referenced
# only through .C or .Fortran calls in S functions. If Lasso2_i.c does
# not exist, it will be made during 'make load' based on the objects in
# .Data. If Lasso2_i.c exists already and you have since added new C
# or Fortran routine names to EXTRA_C_NAMES and EXTRA_F_NAMES, you must
# remove Lasso2_i.c so that it will get remade using this new
# information. Do this now.
# 
# 5. Type 'make install.funs' to create the S functions on .Data.  This
# must precede 'make load' in Step 6. (You can install the helpfiles at
# this point as well by typing making 'install' instead of 'install.funs'.)
# 
# 6. Type 'make load'. This will build the list of routines to load, then
# compile the C, Ratfor and Fortran source files specified by this Makefile,
# and lastly load the routines named on the list into either a standalone
# S-PLUS executable or a dyn.loadable file or a shared library.
# 
# 7. To remove unnecessary object files, type 'make clean'. This will not
# remove the dyn.loadable file Lasso2_l.o, the shared library
# Lasso2.so, or the standalone local.Sqpe.  To clean out everything
# including .Data and start over, use 'make virgin'.
# 
# 8. See the helpfile for the "library" function in S-PLUS for hints on
# how to install the new code as a library section.


# ========================= End instructions. =============================

default : all
include $(SHOME)/newfun/lib/S_makefile
chapters=../Lasso2
SRC= lasso.c
OBJ= lasso.o $(EXTRA_OBJ_FILES)
CFLAGS=-Xs -O2
FFLAGS=-O2
FUNS=force_ld.q First.lib.q Iowa.q Prostate.q coef.q deviance.q fitted.q force_ld.q formula.util.q gcv.q gl1ce.q l1ce.q labels.q misc.q plot.q predict.q print.q residuals.q summary.q vcov.q
HELPS= Iowa.d Prostate.d [.l1celist.d [[.l1celist.d aux.d aux.l1celist.d coef.l1ce.d coef.l1celist.d deviance.gl1ce.d deviance.l1ce.d deviance.l1celist.d fitted.l1ce.d fitted.l1celist.d gcv.d gcv.l1ce.d gcv.l1celist.d gl1ce.d gl1ce.object.d is.formula.d l1ce.d l1ce.object.d l1celist.object.d labels.l1ce.d labels.l1celist.d merge.formula.d plot.l1celist.d predict.gl1ce.d predict.l1ce.d print.gl1ce.d print.l1ce.d print.l1celist.d print.summary.gl1ce.d print.summary.l1ce.d residuals.gl1ce.d residuals.l1ce.d residuals.l1celist.d summary.gl1ce.d summary.l1ce.d tr.d vcov.d vcov.l1ce.d vcov.l1celist.d
FLAGS=
RM=-rm

all load: $(WHICH_LOAD)

static.load: Lasso2.a
	Splus LOAD $(FLAGS) CHAPTERS='"$(chapters)"'

dyn.load Lasso2_l.o: Lasso2.a
	ld -r -o Lasso2_l.o Lasso2_i.o Lasso2.a $(FLAGS)
	@echo dynamically loadable file in Lasso2_l.o

dyn.load.shared Lasso2.so: $(SRC)
	Splus SHLIB -o Lasso2.so $(SRC)

Lasso2.a: Lasso2_i.o $(OBJ) 
	Splus LIBRARY Lasso2.a Lasso2_i.o $(OBJ)

Lasso2_i.c:
	-mkdir .Data
	Splus make.init Lasso2 .Data

install : install.funs install.help

funs install.funs : $(FUNS) .Data
	Splus QINSTALL .Data $(FUNS)

force_ld.q :
	( echo "force.loading <- function(){" ;\
	set $(EXTRA_C_NAMES) terminator ;\
	while test $$1 != terminator ;\
	do \
		echo $$1 | sed 's:.*:.C("&"):' ;\
		shift ;\
	done ;\
	set $(EXTRA_F_NAMES) terminator ;\
	while test $$1 != terminator ;\
	do \
		echo $$1 | sed 's:.*:.Fortran("&"):' ;\
		shift ;\
	done ;\
	echo } \
	) > $@


# force_ld.q :
# 	echo "force.loading <- function(){ X\
# 		stop(\"should not be executed\") X\
# 		# Add .C and .Fortran calls here to force routines to  X\
# 		# be loaded. For example, .C(\"fun1\"), .Fortran(\"fun2\"). X\
# 	}" | tr X \\012  > $@

help install.help : $(HELPS) .Data/.Help
	Splus HINSTALL .Data/.Help $(HELPS)
	Splus help.findsum .Data

.Data :
	-mkdir $@
.Data/.Help : .Data
	-mkdir $@

virgin : clean virgin.std
# add additional cleanup rules/targets above here for target 'virgin'
clean :
	$(RM) -f $(OBJ) Lasso2_i.o S_load_time.[oc] core
virgin.std :
	$(RM) -rf .Data
	$(RM) -f Lasso2.a local.Sqpe Lasso2_l.o Lasso2.so Lasso2_i.c force_ld.q
