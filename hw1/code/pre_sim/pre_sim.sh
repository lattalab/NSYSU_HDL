#!/bin/tcsh

vcs -R -debug_access+all \
/home/B103040045_HDL/hw1/code/pre_sim/pre_tb.v \
/home/B103040045_HDL/hw1/code/rtl/adder_behavior.v \
/home/B103040045_HDL/hw1/code/rtl/adder_dataflow.v \
/home/B103040045_HDL/hw1/code/rtl/adder_structure.v \
/home/B103040045_HDL/hw1/code/rtl/adder_behavior_reg.v \
/home/B103040045_HDL/hw1/code/rtl/adder_dataflow_reg.v \
/home/B103040045_HDL/hw1/code/rtl/adder_structure_reg.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+6adder.fsdb +v2k
