#!/bin/tcsh

vcs -R -debug_access+all \
/home/B103040045_HDL/hw4/code/pre_sim/HW4_pre_tb.v \
/home/B103040045_HDL/hw4/code/RTL/sobel_detecter.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+CNN.fsdb +v2k
