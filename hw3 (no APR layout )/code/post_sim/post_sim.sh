#!/bin/tcsh

vcs -R -error=noMPD -debug_access+all \
/home/B103040045_HDL/hw3/code/post_sim/tb_thumb.v \
/home/B103040045_HDL/hw3/code/gatelevel/delay/thumb_pipe_delay.v \
/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/VERILOG/N16ADFP_StdCell.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+thumb.fsdb +neg_tchk
