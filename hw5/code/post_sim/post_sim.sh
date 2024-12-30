#!/bin/tcsh

vcs -R -error=noMPD -debug_access+all \
/home/B103040045_HDL/hw5/code/post_sim/HW5_tb.v \
/home/B103040045_HDL/hw5/code/gatelevel/vgg16.v \
/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/VERILOG/N16ADFP_StdCell.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+CNN.fsdb +neg_tchk
