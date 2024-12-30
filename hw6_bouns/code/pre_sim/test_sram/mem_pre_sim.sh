#!/bin/tcsh

vcs -R -debug_access+all \
/home/B103040045_HDL/hw6/code/pre_sim/mem_tb.v \
/home/B103040045_HDL/hw6/code/rtl/TOP.v \
/home/B103040045_HDL/hw6/code/mem_compiler/sram_4096x16m8.v \
+full64 \
+nottimingcheck \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+SRAM.fsdb +v2k
