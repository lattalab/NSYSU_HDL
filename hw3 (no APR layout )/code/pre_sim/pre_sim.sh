#!/bin/tcsh

vcs -R -debug_access+all \
/home/B103040045_HDL/hw3/code/pre_sim/tb_thumb.v \
/home/B103040045_HDL/hw3/code/RTL/Thumb_pip.v \
+full64 \
+access+r +vcs+fsdbon +fsdb+mda +fsdbfile+thumb.fsdb +v2k
