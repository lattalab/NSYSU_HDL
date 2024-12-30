#!/bin/tcsh

vcs -R -error=noMPD -debug_access+all \
/home/B103040045_HDL/hw4/code/post_sim/HW4_post_sim.v \
/home/B103040045_HDL/hw4/code/gatelevel/sobel_detecter_area.v \
/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/VERILOG/N16ADFP_StdCell.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+CNN.fsdb +neg_tchk
