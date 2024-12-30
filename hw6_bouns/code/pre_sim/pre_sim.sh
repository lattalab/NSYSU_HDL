#!/bin/tcsh

vcs -R -debug_access+all \
/home/B103040045_HDL/hw6/code/pre_sim/HW6_TB.v \
/home/B103040045_HDL/hw6/code/rtl/accelerator.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+HW6.fsdb +v2k
