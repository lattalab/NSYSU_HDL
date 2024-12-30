#!/bin/tcsh

vcs -R -debug_access+all \
/home/B103040045_HDL/hw2/pre_sim/Clock_gating/pre_syn_testbench.v \
/home/B103040045_HDL/hw2/rtl/clockgating.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+Clock_gating.fsdb +v2k
