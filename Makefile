##############
# parameters #
##############
# do you want to show the commands executed ?
DO_MKDBG:=0
# do you want dependency on the Makefile itself ?
DO_ALLDEP:=1
# run cmake?
DO_CMAKE:=1

########
# code #
########
ALL:=
ALL_CC:=$(shell find examples -type f -and -name "*.cc")
ifeq ($(DO_CMAKE),1)
ALL+=out/cmake.stamp
endif # DO_CMAKE

# silent stuff
ifeq ($(DO_MKDBG),1)
Q:=
# we are not silent in this branch
else # DO_MKDBG
Q:=@
#.SILENT:
endif # DO_MKDBG

#########
# rules #
#########
.PHONY: all
all: $(ALL)
	@true

.PHONY: clean
clean:
	$(Q)rm $(ALL)

.PHONY: clean_hard
clean_hard:
	$(Q)git clean -qffxd

out/cmake.stamp: $(ALL_SRC)
	$(info doing [$@])
	$(Q)cd examples;cmake -B $@
	$(Q)cd examples;cmake --build $@
	$(Q)pymakehelper touch_mkdir $@

.PHONY: debug
debug:
	$(info ALL is $(ALL))
	$(info ALL_CC is $(ALL_CC))

##########
# alldep #
##########
ifeq ($(DO_ALLDEP),1)
.EXTRA_PREREQS+=$(foreach mk, ${MAKEFILE_LIST},$(abspath ${mk}))
endif # DO_ALLDEP
