#!/bin/tcsh

vcs -R -debug_access+all \
/home/B103040045_HDL/hw6/code/pre_sim/HW6_TB_mem_compiler.v \
/home/B103040045_HDL/hw6/code/rtl/accelerator_with_mem_compiler.v \
/home/B103040045_HDL/hw6/code/mem_compiler/sram_4096x36m16.v \
+full64 \
+notimingcheck \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+HW6.fsdb +v2k
