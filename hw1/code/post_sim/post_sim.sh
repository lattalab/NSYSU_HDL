#!/bin/tcsh

vcs -R -error=noMPD -debug_access+all \
/home/B103040045_HDL/hw1/code/post_sim/post_syn_testbench.v \
/home/B103040045_HDL/hw1/code/gatelevel/adder_behavior_delay/adder_behavior_delay.v \
/home/B103040045_HDL/hw1/code/gatelevel/adder_dataflow_delay/adder_dataflow_delay.v \
/home/B103040045_HDL/hw1/code/gatelevel/adder_structure_delay/adder_structure_delay.v \
/home/B103040045_HDL/hw1/code/gatelevel/adder_behavior_reg_delay/adder_behavior_reg_delay.v \
/home/B103040045_HDL/hw1/code/gatelevel/adder_dataflow_reg_delay/adder_dataflow_reg_delay.v \
/home/B103040045_HDL/hw1/code/gatelevel/adder_structure_reg_delay/adder_structure_reg_delay.v \
/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/VERILOG/N16ADFP_StdCell.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+6adder.fsdb +neg_tchk
