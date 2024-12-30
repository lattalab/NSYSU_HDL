###################################################################

# Created by write_sdc on Sun Oct 20 20:43:14 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max ss0p72vm40c -max_library                         \
N16ADFP_StdCellss0p72vm40c_ccs\
                         -min ff0p88v125c -min_library                         \
N16ADFP_StdCellff0p88v125c_ccs
set_wire_load_mode top
set_wire_load_model -name ZeroWireload -library N16ADFP_StdCellss0p72vm40c_ccs
create_clock -name clk  -period 0.25  -waveform {0 0.125}
set_max_delay 0.25  -from [list [get_ports {a[7]}] [get_ports {a[6]}] [get_ports {a[5]}]          \
[get_ports {a[4]}] [get_ports {a[3]}] [get_ports {a[2]}] [get_ports {a[1]}]    \
[get_ports {a[0]}] [get_ports {b[7]}] [get_ports {b[6]}] [get_ports {b[5]}]    \
[get_ports {b[4]}] [get_ports {b[3]}] [get_ports {b[2]}] [get_ports {b[1]}]    \
[get_ports {b[0]}] [get_ports {c[7]}] [get_ports {c[6]}] [get_ports {c[5]}]    \
[get_ports {c[4]}] [get_ports {c[3]}] [get_ports {c[2]}] [get_ports {c[1]}]    \
[get_ports {c[0]}] [get_ports s]]  -to [list [get_ports {d[15]}] [get_ports {d[14]}] [get_ports {d[13]}]         \
[get_ports {d[12]}] [get_ports {d[11]}] [get_ports {d[10]}] [get_ports {d[9]}] \
[get_ports {d[8]}] [get_ports {d[7]}] [get_ports {d[6]}] [get_ports {d[5]}]    \
[get_ports {d[4]}] [get_ports {d[3]}] [get_ports {d[2]}] [get_ports {d[1]}]    \
[get_ports {d[0]}]]
set_input_delay -clock clk  0  [get_ports {a[7]}]
set_input_delay -clock clk  0  [get_ports {a[6]}]
set_input_delay -clock clk  0  [get_ports {a[5]}]
set_input_delay -clock clk  0  [get_ports {a[4]}]
set_input_delay -clock clk  0  [get_ports {a[3]}]
set_input_delay -clock clk  0  [get_ports {a[2]}]
set_input_delay -clock clk  0  [get_ports {a[1]}]
set_input_delay -clock clk  0  [get_ports {a[0]}]
set_input_delay -clock clk  0  [get_ports {b[7]}]
set_input_delay -clock clk  0  [get_ports {b[6]}]
set_input_delay -clock clk  0  [get_ports {b[5]}]
set_input_delay -clock clk  0  [get_ports {b[4]}]
set_input_delay -clock clk  0  [get_ports {b[3]}]
set_input_delay -clock clk  0  [get_ports {b[2]}]
set_input_delay -clock clk  0  [get_ports {b[1]}]
set_input_delay -clock clk  0  [get_ports {b[0]}]
set_input_delay -clock clk  0  [get_ports {c[7]}]
set_input_delay -clock clk  0  [get_ports {c[6]}]
set_input_delay -clock clk  0  [get_ports {c[5]}]
set_input_delay -clock clk  0  [get_ports {c[4]}]
set_input_delay -clock clk  0  [get_ports {c[3]}]
set_input_delay -clock clk  0  [get_ports {c[2]}]
set_input_delay -clock clk  0  [get_ports {c[1]}]
set_input_delay -clock clk  0  [get_ports {c[0]}]
set_input_delay -clock clk  0  [get_ports s]
set_output_delay -clock clk  0  [get_ports {d[15]}]
set_output_delay -clock clk  0  [get_ports {d[14]}]
set_output_delay -clock clk  0  [get_ports {d[13]}]
set_output_delay -clock clk  0  [get_ports {d[12]}]
set_output_delay -clock clk  0  [get_ports {d[11]}]
set_output_delay -clock clk  0  [get_ports {d[10]}]
set_output_delay -clock clk  0  [get_ports {d[9]}]
set_output_delay -clock clk  0  [get_ports {d[8]}]
set_output_delay -clock clk  0  [get_ports {d[7]}]
set_output_delay -clock clk  0  [get_ports {d[6]}]
set_output_delay -clock clk  0  [get_ports {d[5]}]
set_output_delay -clock clk  0  [get_ports {d[4]}]
set_output_delay -clock clk  0  [get_ports {d[3]}]
set_output_delay -clock clk  0  [get_ports {d[2]}]
set_output_delay -clock clk  0  [get_ports {d[1]}]
set_output_delay -clock clk  0  [get_ports {d[0]}]
