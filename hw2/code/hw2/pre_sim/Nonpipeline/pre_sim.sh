#!/bin/tcsh

vcs -R -debug_access+all \
/home/B103040045_HDL/hw2/pre_sim/Nonpipeline/pre_syn_testbench.v \
/home/B103040045_HDL/hw2/rtl/nonpipeline.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+Nonpipeline.fsdb +v2k
