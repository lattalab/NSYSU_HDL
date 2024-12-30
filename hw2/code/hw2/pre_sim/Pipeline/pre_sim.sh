#!/bin/tcsh

vcs -R -debug_access+all \
/home/B103040045_HDL/hw2/pre_sim/Pipeline/pre_syn_testbench.v \
/home/B103040045_HDL/hw2/rtl/pipeline.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+Pipeline.fsdb +v2k
