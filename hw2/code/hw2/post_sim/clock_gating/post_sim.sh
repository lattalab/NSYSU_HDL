#!/bin/tcsh

vcs -R -error=noMPD -debug_access+all \
/home/B103040045_HDL/hw2/post_sim/clock_gating/post_syn_testbench.v \
/home/B103040045_HDL/hw2/gatelevel/Clockgating_delay/hw2_clock_gating_syn.v \
/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/VERILOG/N16ADFP_StdCell.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+clockgating.fsdb +neg_tchk
