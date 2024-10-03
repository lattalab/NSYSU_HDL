wvResizeWindow -win $_nWave1 0 29 1920 991
wvSetPosition -win $_nWave1 {("G1" 0)}
wvResizeWindow -win $_nWave1 0 29 1920 991
wvOpenFile -win $_nWave1 {/home/B103040045_HDL/hw1/code/pre_sim/6adder.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/input_a\[31:0\]} \
{/testbench/input_b\[31:0\]} \
{/testbench/ci} \
{/testbench/CLK} \
{/testbench/outcome_behavior\[31:0\]} \
{/testbench/outcome_behavior_reg\[31:0\]} \
{/testbench/outcome_dataflow\[31:0\]} \
{/testbench/outcome_dataflow_reg\[31:0\]} \
{/testbench/outcome_structure\[31:0\]} \
{/testbench/outcome_structure_reg\[31:0\]} \
{/testbench/co_behavior} \
{/testbench/co_behavior_reg} \
{/testbench/co_dataflow} \
{/testbench/co_dataflow_reg} \
{/testbench/co_structure} \
{/testbench/co_structure_reg} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )} \
           
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/input_a\[31:0\]} \
{/testbench/input_b\[31:0\]} \
{/testbench/ci} \
{/testbench/CLK} \
{/testbench/outcome_behavior\[31:0\]} \
{/testbench/outcome_behavior_reg\[31:0\]} \
{/testbench/outcome_dataflow\[31:0\]} \
{/testbench/outcome_dataflow_reg\[31:0\]} \
{/testbench/outcome_structure\[31:0\]} \
{/testbench/outcome_structure_reg\[31:0\]} \
{/testbench/co_behavior} \
{/testbench/co_behavior_reg} \
{/testbench/co_dataflow} \
{/testbench/co_dataflow_reg} \
{/testbench/co_structure} \
{/testbench/co_structure_reg} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )} \
           
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvCloseGetStreamsDialog -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 26234.906832 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 26423.105590 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 23750.683230 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 22884.968944 -snap {("G3" 6)}
wvSetCursor -win $_nWave1 22734.409938 -snap {("G3" 6)}
wvSetFileTimeRange -win $_nWave1 -time_unit 10p 0 60000
wvSetFileTimeRange -win $_nWave1 -time_unit 10p 0 60000
wvDisplayGridCount -win $_nWave1 -off
wvCloseGetStreamsDialog -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 19647.950311 -snap {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSetFileTimeRange -win $_nWave1 -time_unit 10p 0 60000
wvSetFileTimeRange -win $_nWave1 -time_unit 10p 0 60000
wvDisplayGridCount -win $_nWave1 -off
wvCloseGetStreamsDialog -win $_nWave1
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvScrollDown -win $_nWave1 0
wvSelectStuckSignals -win $_nWave1
wvSaveSignal -win $_nWave1 \
           "/home/B103040045_HDL/hw1/code/pre_sim/B103040045_signal.rc"
wvExit
