###################################################################

# Created by write_sdc on Sun Nov 10 07:10:36 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max ss0p72vm40c -max_library                         \
N16ADFP_StdCellss0p72vm40c_ccs\
                         -min ff0p88v125c -min_library                         \
N16ADFP_StdCellff0p88v125c_ccs
set_wire_load_mode top
set_wire_load_model -name ZeroWireload -library N16ADFP_StdCellss0p72vm40c_ccs
set_ideal_network [get_ports clk]
create_clock [get_ports clk]  -period 2.9204  -waveform {0 1.4602}
set_clock_latency 0.2  [get_clocks clk]
set_clock_uncertainty 0.02  [get_clocks clk]
set_clock_transition -max -rise 0.1 [get_clocks clk]
set_clock_transition -max -fall 0.1 [get_clocks clk]
set_clock_transition -min -rise 0.1 [get_clocks clk]
set_clock_transition -min -fall 0.1 [get_clocks clk]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[15]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[15]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[14]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[14]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[13]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[13]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[12]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[12]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[11]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[11]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[10]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[10]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[9]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[9]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[8]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[8]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[7]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[7]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[6]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[6]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[5]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[5]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[4]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[4]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[3]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[3]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[2]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[2]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[1]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[1]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {instruction[0]}]
set_input_delay -clock clk  -min 0.2  [get_ports {instruction[0]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[31]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[31]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[30]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[30]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[29]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[29]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[28]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[28]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[27]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[27]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[26]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[26]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[25]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[25]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[24]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[24]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[23]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[23]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[22]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[22]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[21]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[21]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[20]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[20]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[19]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[19]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[18]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[18]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[17]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[17]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[16]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[16]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[15]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[15]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[14]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[14]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[13]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[13]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[12]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[12]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[11]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[11]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[10]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[10]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[9]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[9]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[8]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[8]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[7]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[7]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[6]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[6]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[5]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[5]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[4]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[4]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[3]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[3]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[2]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[2]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[1]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[1]}]
set_input_delay -clock clk  -max 0.87612  [get_ports {data[0]}]
set_input_delay -clock clk  -min 0.2  [get_ports {data[0]}]
set_input_delay -clock clk  -max 0.87612  [get_ports reset_n]
set_input_delay -clock clk  -min 0.2  [get_ports reset_n]
set_output_delay -clock clk  0.02  [get_ports {data[31]}]
set_output_delay -clock clk  0.02  [get_ports {data[30]}]
set_output_delay -clock clk  0.02  [get_ports {data[29]}]
set_output_delay -clock clk  0.02  [get_ports {data[28]}]
set_output_delay -clock clk  0.02  [get_ports {data[27]}]
set_output_delay -clock clk  0.02  [get_ports {data[26]}]
set_output_delay -clock clk  0.02  [get_ports {data[25]}]
set_output_delay -clock clk  0.02  [get_ports {data[24]}]
set_output_delay -clock clk  0.02  [get_ports {data[23]}]
set_output_delay -clock clk  0.02  [get_ports {data[22]}]
set_output_delay -clock clk  0.02  [get_ports {data[21]}]
set_output_delay -clock clk  0.02  [get_ports {data[20]}]
set_output_delay -clock clk  0.02  [get_ports {data[19]}]
set_output_delay -clock clk  0.02  [get_ports {data[18]}]
set_output_delay -clock clk  0.02  [get_ports {data[17]}]
set_output_delay -clock clk  0.02  [get_ports {data[16]}]
set_output_delay -clock clk  0.02  [get_ports {data[15]}]
set_output_delay -clock clk  0.02  [get_ports {data[14]}]
set_output_delay -clock clk  0.02  [get_ports {data[13]}]
set_output_delay -clock clk  0.02  [get_ports {data[12]}]
set_output_delay -clock clk  0.02  [get_ports {data[11]}]
set_output_delay -clock clk  0.02  [get_ports {data[10]}]
set_output_delay -clock clk  0.02  [get_ports {data[9]}]
set_output_delay -clock clk  0.02  [get_ports {data[8]}]
set_output_delay -clock clk  0.02  [get_ports {data[7]}]
set_output_delay -clock clk  0.02  [get_ports {data[6]}]
set_output_delay -clock clk  0.02  [get_ports {data[5]}]
set_output_delay -clock clk  0.02  [get_ports {data[4]}]
set_output_delay -clock clk  0.02  [get_ports {data[3]}]
set_output_delay -clock clk  0.02  [get_ports {data[2]}]
set_output_delay -clock clk  0.02  [get_ports {data[1]}]
set_output_delay -clock clk  0.02  [get_ports {data[0]}]
set_output_delay -clock clk  0.02  [get_ports read_instruction_n]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[31]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[30]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[29]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[28]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[27]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[26]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[25]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[24]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[23]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[22]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[21]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[20]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[19]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[18]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[17]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[16]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[15]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[14]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[13]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[12]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[11]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[10]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[9]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[8]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[7]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[6]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[5]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[4]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[3]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[2]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[1]}]
set_output_delay -clock clk  0.02  [get_ports {instruction_address[0]}]
set_output_delay -clock clk  0.02  [get_ports read_data_n]
set_output_delay -clock clk  0.02  [get_ports write_data_n]
set_output_delay -clock clk  0.02  [get_ports {data_address[31]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[30]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[29]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[28]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[27]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[26]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[25]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[24]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[23]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[22]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[21]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[20]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[19]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[18]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[17]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[16]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[15]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[14]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[13]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[12]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[11]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[10]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[9]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[8]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[7]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[6]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[5]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[4]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[3]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[2]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[1]}]
set_output_delay -clock clk  0.02  [get_ports {data_address[0]}]
set_input_transition -max 0.5  [get_ports {instruction[15]}]
set_input_transition -min 0.5  [get_ports {instruction[15]}]
set_input_transition -max 0.5  [get_ports {instruction[14]}]
set_input_transition -min 0.5  [get_ports {instruction[14]}]
set_input_transition -max 0.5  [get_ports {instruction[13]}]
set_input_transition -min 0.5  [get_ports {instruction[13]}]
set_input_transition -max 0.5  [get_ports {instruction[12]}]
set_input_transition -min 0.5  [get_ports {instruction[12]}]
set_input_transition -max 0.5  [get_ports {instruction[11]}]
set_input_transition -min 0.5  [get_ports {instruction[11]}]
set_input_transition -max 0.5  [get_ports {instruction[10]}]
set_input_transition -min 0.5  [get_ports {instruction[10]}]
set_input_transition -max 0.5  [get_ports {instruction[9]}]
set_input_transition -min 0.5  [get_ports {instruction[9]}]
set_input_transition -max 0.5  [get_ports {instruction[8]}]
set_input_transition -min 0.5  [get_ports {instruction[8]}]
set_input_transition -max 0.5  [get_ports {instruction[7]}]
set_input_transition -min 0.5  [get_ports {instruction[7]}]
set_input_transition -max 0.5  [get_ports {instruction[6]}]
set_input_transition -min 0.5  [get_ports {instruction[6]}]
set_input_transition -max 0.5  [get_ports {instruction[5]}]
set_input_transition -min 0.5  [get_ports {instruction[5]}]
set_input_transition -max 0.5  [get_ports {instruction[4]}]
set_input_transition -min 0.5  [get_ports {instruction[4]}]
set_input_transition -max 0.5  [get_ports {instruction[3]}]
set_input_transition -min 0.5  [get_ports {instruction[3]}]
set_input_transition -max 0.5  [get_ports {instruction[2]}]
set_input_transition -min 0.5  [get_ports {instruction[2]}]
set_input_transition -max 0.5  [get_ports {instruction[1]}]
set_input_transition -min 0.5  [get_ports {instruction[1]}]
set_input_transition -max 0.5  [get_ports {instruction[0]}]
set_input_transition -min 0.5  [get_ports {instruction[0]}]
set_input_transition -max 0.5  [get_ports {data[31]}]
set_input_transition -min 0.5  [get_ports {data[31]}]
set_input_transition -max 0.5  [get_ports {data[30]}]
set_input_transition -min 0.5  [get_ports {data[30]}]
set_input_transition -max 0.5  [get_ports {data[29]}]
set_input_transition -min 0.5  [get_ports {data[29]}]
set_input_transition -max 0.5  [get_ports {data[28]}]
set_input_transition -min 0.5  [get_ports {data[28]}]
set_input_transition -max 0.5  [get_ports {data[27]}]
set_input_transition -min 0.5  [get_ports {data[27]}]
set_input_transition -max 0.5  [get_ports {data[26]}]
set_input_transition -min 0.5  [get_ports {data[26]}]
set_input_transition -max 0.5  [get_ports {data[25]}]
set_input_transition -min 0.5  [get_ports {data[25]}]
set_input_transition -max 0.5  [get_ports {data[24]}]
set_input_transition -min 0.5  [get_ports {data[24]}]
set_input_transition -max 0.5  [get_ports {data[23]}]
set_input_transition -min 0.5  [get_ports {data[23]}]
set_input_transition -max 0.5  [get_ports {data[22]}]
set_input_transition -min 0.5  [get_ports {data[22]}]
set_input_transition -max 0.5  [get_ports {data[21]}]
set_input_transition -min 0.5  [get_ports {data[21]}]
set_input_transition -max 0.5  [get_ports {data[20]}]
set_input_transition -min 0.5  [get_ports {data[20]}]
set_input_transition -max 0.5  [get_ports {data[19]}]
set_input_transition -min 0.5  [get_ports {data[19]}]
set_input_transition -max 0.5  [get_ports {data[18]}]
set_input_transition -min 0.5  [get_ports {data[18]}]
set_input_transition -max 0.5  [get_ports {data[17]}]
set_input_transition -min 0.5  [get_ports {data[17]}]
set_input_transition -max 0.5  [get_ports {data[16]}]
set_input_transition -min 0.5  [get_ports {data[16]}]
set_input_transition -max 0.5  [get_ports {data[15]}]
set_input_transition -min 0.5  [get_ports {data[15]}]
set_input_transition -max 0.5  [get_ports {data[14]}]
set_input_transition -min 0.5  [get_ports {data[14]}]
set_input_transition -max 0.5  [get_ports {data[13]}]
set_input_transition -min 0.5  [get_ports {data[13]}]
set_input_transition -max 0.5  [get_ports {data[12]}]
set_input_transition -min 0.5  [get_ports {data[12]}]
set_input_transition -max 0.5  [get_ports {data[11]}]
set_input_transition -min 0.5  [get_ports {data[11]}]
set_input_transition -max 0.5  [get_ports {data[10]}]
set_input_transition -min 0.5  [get_ports {data[10]}]
set_input_transition -max 0.5  [get_ports {data[9]}]
set_input_transition -min 0.5  [get_ports {data[9]}]
set_input_transition -max 0.5  [get_ports {data[8]}]
set_input_transition -min 0.5  [get_ports {data[8]}]
set_input_transition -max 0.5  [get_ports {data[7]}]
set_input_transition -min 0.5  [get_ports {data[7]}]
set_input_transition -max 0.5  [get_ports {data[6]}]
set_input_transition -min 0.5  [get_ports {data[6]}]
set_input_transition -max 0.5  [get_ports {data[5]}]
set_input_transition -min 0.5  [get_ports {data[5]}]
set_input_transition -max 0.5  [get_ports {data[4]}]
set_input_transition -min 0.5  [get_ports {data[4]}]
set_input_transition -max 0.5  [get_ports {data[3]}]
set_input_transition -min 0.5  [get_ports {data[3]}]
set_input_transition -max 0.5  [get_ports {data[2]}]
set_input_transition -min 0.5  [get_ports {data[2]}]
set_input_transition -max 0.5  [get_ports {data[1]}]
set_input_transition -min 0.5  [get_ports {data[1]}]
set_input_transition -max 0.5  [get_ports {data[0]}]
set_input_transition -min 0.5  [get_ports {data[0]}]
set_input_transition -max 0.5  [get_ports reset_n]
set_input_transition -min 0.5  [get_ports reset_n]
set_input_transition -max 0.5  [get_ports clk]
set_input_transition -min 0.5  [get_ports clk]
