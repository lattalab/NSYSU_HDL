#!/bin/tcsh

vcs -R -debug_access+all +lint=TFIPC-L\
/home/B103040045_HDL/hw5/code/pre_sim/HW5_pre_tb.v \
/home/B103040045_HDL/hw5/code/rtl/accelerator.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+CNN.fsdb +v2k
