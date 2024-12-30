#!/bin/tcsh

vcs -R -error=noMPD -debug_access+all +lint=TFIPC-L \
/home/B103040045_HDL/hw6/code/post_sim/HW6_TB.v \
/home/B103040045_HDL/hw6/code/gatelevel/MEM_vgg16.v \
/home/B103040045_HDL/hw6/code/mem_compiler/sram_4096x36m16.v \
/cad/CBDK/CBDK_TSMC40_Arm_f2.0/CIC/Verilog/sc9_cln40g_base_rvt_udp.v \
/cad/CBDK/CBDK_TSMC40_Arm_f2.0/CIC/Verilog/sc9_cln40g_base_rvt.v \
+full64 \
+notimingcheck \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+HW6.fsdb +neg_tchk
