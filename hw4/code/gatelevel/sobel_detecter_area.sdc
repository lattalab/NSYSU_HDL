###################################################################

# Created by write_sdc on Mon Dec  2 01:57:45 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max ss0p72vm40c -max_library                         \
N16ADFP_StdCellss0p72vm40c_ccs\
                         -min ff0p88v125c -min_library                         \
N16ADFP_StdCellff0p88v125c_ccs
set_wire_load_mode top
set_wire_load_model -name ZeroWireload -library N16ADFP_StdCellss0p72vm40c_ccs
set_max_area 0
set_ideal_network [get_ports clk]
create_clock [get_ports clk]  -period 0.70727  -waveform {0 0.353635}
set_input_delay -clock clk  0  [get_ports rst]
set_input_delay -clock clk  0  [get_ports {R[7]}]
set_input_delay -clock clk  0  [get_ports {R[6]}]
set_input_delay -clock clk  0  [get_ports {R[5]}]
set_input_delay -clock clk  0  [get_ports {R[4]}]
set_input_delay -clock clk  0  [get_ports {R[3]}]
set_input_delay -clock clk  0  [get_ports {R[2]}]
set_input_delay -clock clk  0  [get_ports {R[1]}]
set_input_delay -clock clk  0  [get_ports {R[0]}]
set_input_delay -clock clk  0  [get_ports {G[7]}]
set_input_delay -clock clk  0  [get_ports {G[6]}]
set_input_delay -clock clk  0  [get_ports {G[5]}]
set_input_delay -clock clk  0  [get_ports {G[4]}]
set_input_delay -clock clk  0  [get_ports {G[3]}]
set_input_delay -clock clk  0  [get_ports {G[2]}]
set_input_delay -clock clk  0  [get_ports {G[1]}]
set_input_delay -clock clk  0  [get_ports {G[0]}]
set_input_delay -clock clk  0  [get_ports {B[7]}]
set_input_delay -clock clk  0  [get_ports {B[6]}]
set_input_delay -clock clk  0  [get_ports {B[5]}]
set_input_delay -clock clk  0  [get_ports {B[4]}]
set_input_delay -clock clk  0  [get_ports {B[3]}]
set_input_delay -clock clk  0  [get_ports {B[2]}]
set_input_delay -clock clk  0  [get_ports {B[1]}]
set_input_delay -clock clk  0  [get_ports {B[0]}]
set_output_delay -clock clk  0  [get_ports {x[7]}]
set_output_delay -clock clk  0  [get_ports {x[6]}]
set_output_delay -clock clk  0  [get_ports {x[5]}]
set_output_delay -clock clk  0  [get_ports {x[4]}]
set_output_delay -clock clk  0  [get_ports {x[3]}]
set_output_delay -clock clk  0  [get_ports {x[2]}]
set_output_delay -clock clk  0  [get_ports {x[1]}]
set_output_delay -clock clk  0  [get_ports {x[0]}]
set_output_delay -clock clk  0  [get_ports {y[7]}]
set_output_delay -clock clk  0  [get_ports {y[6]}]
set_output_delay -clock clk  0  [get_ports {y[5]}]
set_output_delay -clock clk  0  [get_ports {y[4]}]
set_output_delay -clock clk  0  [get_ports {y[3]}]
set_output_delay -clock clk  0  [get_ports {y[2]}]
set_output_delay -clock clk  0  [get_ports {y[1]}]
set_output_delay -clock clk  0  [get_ports {y[0]}]
set_output_delay -clock clk  0  [get_ports enable]
