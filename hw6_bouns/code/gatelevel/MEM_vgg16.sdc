###################################################################

# Created by write_sdc on Mon Dec 30 04:53:22 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max ss_typical_max_0p81v_125c -max_library           \
sc9_cln40g_base_rvt_ss_typical_max_0p81v_125c\
                         -min ff_typical_min_0p99v_m40c -min_library           \
sc9_cln40g_base_rvt_ff_typical_min_0p99v_m40c
set_wire_load_mode top
set_wire_load_model -name Zero -library                                        \
sc9_cln40g_base_rvt_ss_typical_max_0p81v_125c
create_clock -name clk  -period 20  -waveform {0 10}
set_max_delay 20  -from [list [get_ports clk] [get_ports rst] [get_ports {img_data[8]}]         \
[get_ports {img_data[7]}] [get_ports {img_data[6]}] [get_ports {img_data[5]}]  \
[get_ports {img_data[4]}] [get_ports {img_data[3]}] [get_ports {img_data[2]}]  \
[get_ports {img_data[1]}] [get_ports {img_data[0]}] [get_ports {img_addr[11]}] \
[get_ports {img_addr[10]}] [get_ports {img_addr[9]}] [get_ports {img_addr[8]}] \
[get_ports {img_addr[7]}] [get_ports {img_addr[6]}] [get_ports {img_addr[5]}]  \
[get_ports {img_addr[4]}] [get_ports {img_addr[3]}] [get_ports {img_addr[2]}]  \
[get_ports {img_addr[1]}] [get_ports {img_addr[0]}] [get_ports {weight1[15]}]  \
[get_ports {weight1[14]}] [get_ports {weight1[13]}] [get_ports {weight1[12]}]  \
[get_ports {weight1[11]}] [get_ports {weight1[10]}] [get_ports {weight1[9]}]   \
[get_ports {weight1[8]}] [get_ports {weight1[7]}] [get_ports {weight1[6]}]     \
[get_ports {weight1[5]}] [get_ports {weight1[4]}] [get_ports {weight1[3]}]     \
[get_ports {weight1[2]}] [get_ports {weight1[1]}] [get_ports {weight1[0]}]     \
[get_ports {weight2[15]}] [get_ports {weight2[14]}] [get_ports {weight2[13]}]  \
[get_ports {weight2[12]}] [get_ports {weight2[11]}] [get_ports {weight2[10]}]  \
[get_ports {weight2[9]}] [get_ports {weight2[8]}] [get_ports {weight2[7]}]     \
[get_ports {weight2[6]}] [get_ports {weight2[5]}] [get_ports {weight2[4]}]     \
[get_ports {weight2[3]}] [get_ports {weight2[2]}] [get_ports {weight2[1]}]     \
[get_ports {weight2[0]}] [get_ports {weight3[15]}] [get_ports {weight3[14]}]   \
[get_ports {weight3[13]}] [get_ports {weight3[12]}] [get_ports {weight3[11]}]  \
[get_ports {weight3[10]}] [get_ports {weight3[9]}] [get_ports {weight3[8]}]    \
[get_ports {weight3[7]}] [get_ports {weight3[6]}] [get_ports {weight3[5]}]     \
[get_ports {weight3[4]}] [get_ports {weight3[3]}] [get_ports {weight3[2]}]     \
[get_ports {weight3[1]}] [get_ports {weight3[0]}] [get_ports {weight4[15]}]    \
[get_ports {weight4[14]}] [get_ports {weight4[13]}] [get_ports {weight4[12]}]  \
[get_ports {weight4[11]}] [get_ports {weight4[10]}] [get_ports {weight4[9]}]   \
[get_ports {weight4[8]}] [get_ports {weight4[7]}] [get_ports {weight4[6]}]     \
[get_ports {weight4[5]}] [get_ports {weight4[4]}] [get_ports {weight4[3]}]     \
[get_ports {weight4[2]}] [get_ports {weight4[1]}] [get_ports {weight4[0]}]     \
[get_ports {weight_addr[11]}] [get_ports {weight_addr[10]}] [get_ports         \
{weight_addr[9]}] [get_ports {weight_addr[8]}] [get_ports {weight_addr[7]}]    \
[get_ports {weight_addr[6]}] [get_ports {weight_addr[5]}] [get_ports           \
{weight_addr[4]}] [get_ports {weight_addr[3]}] [get_ports {weight_addr[2]}]    \
[get_ports {weight_addr[1]}] [get_ports {weight_addr[0]}] [get_ports           \
{bias1[15]}] [get_ports {bias1[14]}] [get_ports {bias1[13]}] [get_ports        \
{bias1[12]}] [get_ports {bias1[11]}] [get_ports {bias1[10]}] [get_ports        \
{bias1[9]}] [get_ports {bias1[8]}] [get_ports {bias1[7]}] [get_ports           \
{bias1[6]}] [get_ports {bias1[5]}] [get_ports {bias1[4]}] [get_ports           \
{bias1[3]}] [get_ports {bias1[2]}] [get_ports {bias1[1]}] [get_ports           \
{bias1[0]}] [get_ports {bias2[15]}] [get_ports {bias2[14]}] [get_ports         \
{bias2[13]}] [get_ports {bias2[12]}] [get_ports {bias2[11]}] [get_ports        \
{bias2[10]}] [get_ports {bias2[9]}] [get_ports {bias2[8]}] [get_ports          \
{bias2[7]}] [get_ports {bias2[6]}] [get_ports {bias2[5]}] [get_ports           \
{bias2[4]}] [get_ports {bias2[3]}] [get_ports {bias2[2]}] [get_ports           \
{bias2[1]}] [get_ports {bias2[0]}] [get_ports {bias3[15]}] [get_ports          \
{bias3[14]}] [get_ports {bias3[13]}] [get_ports {bias3[12]}] [get_ports        \
{bias3[11]}] [get_ports {bias3[10]}] [get_ports {bias3[9]}] [get_ports         \
{bias3[8]}] [get_ports {bias3[7]}] [get_ports {bias3[6]}] [get_ports           \
{bias3[5]}] [get_ports {bias3[4]}] [get_ports {bias3[3]}] [get_ports           \
{bias3[2]}] [get_ports {bias3[1]}] [get_ports {bias3[0]}] [get_ports           \
{bias4[15]}] [get_ports {bias4[14]}] [get_ports {bias4[13]}] [get_ports        \
{bias4[12]}] [get_ports {bias4[11]}] [get_ports {bias4[10]}] [get_ports        \
{bias4[9]}] [get_ports {bias4[8]}] [get_ports {bias4[7]}] [get_ports           \
{bias4[6]}] [get_ports {bias4[5]}] [get_ports {bias4[4]}] [get_ports           \
{bias4[3]}] [get_ports {bias4[2]}] [get_ports {bias4[1]}] [get_ports           \
{bias4[0]}] [get_ports {bias_addr[11]}] [get_ports {bias_addr[10]}] [get_ports \
{bias_addr[9]}] [get_ports {bias_addr[8]}] [get_ports {bias_addr[7]}]          \
[get_ports {bias_addr[6]}] [get_ports {bias_addr[5]}] [get_ports               \
{bias_addr[4]}] [get_ports {bias_addr[3]}] [get_ports {bias_addr[2]}]          \
[get_ports {bias_addr[1]}] [get_ports {bias_addr[0]}] [get_ports write_enable] \
[get_ports write_en_w] [get_ports write_en_b] [get_ports conv_write_en]        \
[get_ports {conv_idx[11]}] [get_ports {conv_idx[10]}] [get_ports               \
{conv_idx[9]}] [get_ports {conv_idx[8]}] [get_ports {conv_idx[7]}] [get_ports  \
{conv_idx[6]}] [get_ports {conv_idx[5]}] [get_ports {conv_idx[4]}] [get_ports  \
{conv_idx[3]}] [get_ports {conv_idx[2]}] [get_ports {conv_idx[1]}] [get_ports  \
{conv_idx[0]}]]  -to [list [get_ports {conv_rdata1[35]}] [get_ports {conv_rdata1[34]}]         \
[get_ports {conv_rdata1[33]}] [get_ports {conv_rdata1[32]}] [get_ports         \
{conv_rdata1[31]}] [get_ports {conv_rdata1[30]}] [get_ports {conv_rdata1[29]}] \
[get_ports {conv_rdata1[28]}] [get_ports {conv_rdata1[27]}] [get_ports         \
{conv_rdata1[26]}] [get_ports {conv_rdata1[25]}] [get_ports {conv_rdata1[24]}] \
[get_ports {conv_rdata1[23]}] [get_ports {conv_rdata1[22]}] [get_ports         \
{conv_rdata1[21]}] [get_ports {conv_rdata1[20]}] [get_ports {conv_rdata1[19]}] \
[get_ports {conv_rdata1[18]}] [get_ports {conv_rdata1[17]}] [get_ports         \
{conv_rdata1[16]}] [get_ports {conv_rdata1[15]}] [get_ports {conv_rdata1[14]}] \
[get_ports {conv_rdata1[13]}] [get_ports {conv_rdata1[12]}] [get_ports         \
{conv_rdata1[11]}] [get_ports {conv_rdata1[10]}] [get_ports {conv_rdata1[9]}]  \
[get_ports {conv_rdata1[8]}] [get_ports {conv_rdata1[7]}] [get_ports           \
{conv_rdata1[6]}] [get_ports {conv_rdata1[5]}] [get_ports {conv_rdata1[4]}]    \
[get_ports {conv_rdata1[3]}] [get_ports {conv_rdata1[2]}] [get_ports           \
{conv_rdata1[1]}] [get_ports {conv_rdata1[0]}] [get_ports {conv_rdata2[35]}]   \
[get_ports {conv_rdata2[34]}] [get_ports {conv_rdata2[33]}] [get_ports         \
{conv_rdata2[32]}] [get_ports {conv_rdata2[31]}] [get_ports {conv_rdata2[30]}] \
[get_ports {conv_rdata2[29]}] [get_ports {conv_rdata2[28]}] [get_ports         \
{conv_rdata2[27]}] [get_ports {conv_rdata2[26]}] [get_ports {conv_rdata2[25]}] \
[get_ports {conv_rdata2[24]}] [get_ports {conv_rdata2[23]}] [get_ports         \
{conv_rdata2[22]}] [get_ports {conv_rdata2[21]}] [get_ports {conv_rdata2[20]}] \
[get_ports {conv_rdata2[19]}] [get_ports {conv_rdata2[18]}] [get_ports         \
{conv_rdata2[17]}] [get_ports {conv_rdata2[16]}] [get_ports {conv_rdata2[15]}] \
[get_ports {conv_rdata2[14]}] [get_ports {conv_rdata2[13]}] [get_ports         \
{conv_rdata2[12]}] [get_ports {conv_rdata2[11]}] [get_ports {conv_rdata2[10]}] \
[get_ports {conv_rdata2[9]}] [get_ports {conv_rdata2[8]}] [get_ports           \
{conv_rdata2[7]}] [get_ports {conv_rdata2[6]}] [get_ports {conv_rdata2[5]}]    \
[get_ports {conv_rdata2[4]}] [get_ports {conv_rdata2[3]}] [get_ports           \
{conv_rdata2[2]}] [get_ports {conv_rdata2[1]}] [get_ports {conv_rdata2[0]}]    \
[get_ports {conv_rdata3[35]}] [get_ports {conv_rdata3[34]}] [get_ports         \
{conv_rdata3[33]}] [get_ports {conv_rdata3[32]}] [get_ports {conv_rdata3[31]}] \
[get_ports {conv_rdata3[30]}] [get_ports {conv_rdata3[29]}] [get_ports         \
{conv_rdata3[28]}] [get_ports {conv_rdata3[27]}] [get_ports {conv_rdata3[26]}] \
[get_ports {conv_rdata3[25]}] [get_ports {conv_rdata3[24]}] [get_ports         \
{conv_rdata3[23]}] [get_ports {conv_rdata3[22]}] [get_ports {conv_rdata3[21]}] \
[get_ports {conv_rdata3[20]}] [get_ports {conv_rdata3[19]}] [get_ports         \
{conv_rdata3[18]}] [get_ports {conv_rdata3[17]}] [get_ports {conv_rdata3[16]}] \
[get_ports {conv_rdata3[15]}] [get_ports {conv_rdata3[14]}] [get_ports         \
{conv_rdata3[13]}] [get_ports {conv_rdata3[12]}] [get_ports {conv_rdata3[11]}] \
[get_ports {conv_rdata3[10]}] [get_ports {conv_rdata3[9]}] [get_ports          \
{conv_rdata3[8]}] [get_ports {conv_rdata3[7]}] [get_ports {conv_rdata3[6]}]    \
[get_ports {conv_rdata3[5]}] [get_ports {conv_rdata3[4]}] [get_ports           \
{conv_rdata3[3]}] [get_ports {conv_rdata3[2]}] [get_ports {conv_rdata3[1]}]    \
[get_ports {conv_rdata3[0]}] [get_ports {conv_rdata4[35]}] [get_ports          \
{conv_rdata4[34]}] [get_ports {conv_rdata4[33]}] [get_ports {conv_rdata4[32]}] \
[get_ports {conv_rdata4[31]}] [get_ports {conv_rdata4[30]}] [get_ports         \
{conv_rdata4[29]}] [get_ports {conv_rdata4[28]}] [get_ports {conv_rdata4[27]}] \
[get_ports {conv_rdata4[26]}] [get_ports {conv_rdata4[25]}] [get_ports         \
{conv_rdata4[24]}] [get_ports {conv_rdata4[23]}] [get_ports {conv_rdata4[22]}] \
[get_ports {conv_rdata4[21]}] [get_ports {conv_rdata4[20]}] [get_ports         \
{conv_rdata4[19]}] [get_ports {conv_rdata4[18]}] [get_ports {conv_rdata4[17]}] \
[get_ports {conv_rdata4[16]}] [get_ports {conv_rdata4[15]}] [get_ports         \
{conv_rdata4[14]}] [get_ports {conv_rdata4[13]}] [get_ports {conv_rdata4[12]}] \
[get_ports {conv_rdata4[11]}] [get_ports {conv_rdata4[10]}] [get_ports         \
{conv_rdata4[9]}] [get_ports {conv_rdata4[8]}] [get_ports {conv_rdata4[7]}]    \
[get_ports {conv_rdata4[6]}] [get_ports {conv_rdata4[5]}] [get_ports           \
{conv_rdata4[4]}] [get_ports {conv_rdata4[3]}] [get_ports {conv_rdata4[2]}]    \
[get_ports {conv_rdata4[1]}] [get_ports {conv_rdata4[0]}] [get_ports           \
{Bias10[35]}] [get_ports {Bias10[34]}] [get_ports {Bias10[33]}] [get_ports     \
{Bias10[32]}] [get_ports {Bias10[31]}] [get_ports {Bias10[30]}] [get_ports     \
{Bias10[29]}] [get_ports {Bias10[28]}] [get_ports {Bias10[27]}] [get_ports     \
{Bias10[26]}] [get_ports {Bias10[25]}] [get_ports {Bias10[24]}] [get_ports     \
{Bias10[23]}] [get_ports {Bias10[22]}] [get_ports {Bias10[21]}] [get_ports     \
{Bias10[20]}] [get_ports {Bias10[19]}] [get_ports {Bias10[18]}] [get_ports     \
{Bias10[17]}] [get_ports {Bias10[16]}] [get_ports {Bias10[15]}] [get_ports     \
{Bias10[14]}] [get_ports {Bias10[13]}] [get_ports {Bias10[12]}] [get_ports     \
{Bias10[11]}] [get_ports {Bias10[10]}] [get_ports {Bias10[9]}] [get_ports      \
{Bias10[8]}] [get_ports {Bias10[7]}] [get_ports {Bias10[6]}] [get_ports        \
{Bias10[5]}] [get_ports {Bias10[4]}] [get_ports {Bias10[3]}] [get_ports        \
{Bias10[2]}] [get_ports {Bias10[1]}] [get_ports {Bias10[0]}] [get_ports        \
{Bias20[35]}] [get_ports {Bias20[34]}] [get_ports {Bias20[33]}] [get_ports     \
{Bias20[32]}] [get_ports {Bias20[31]}] [get_ports {Bias20[30]}] [get_ports     \
{Bias20[29]}] [get_ports {Bias20[28]}] [get_ports {Bias20[27]}] [get_ports     \
{Bias20[26]}] [get_ports {Bias20[25]}] [get_ports {Bias20[24]}] [get_ports     \
{Bias20[23]}] [get_ports {Bias20[22]}] [get_ports {Bias20[21]}] [get_ports     \
{Bias20[20]}] [get_ports {Bias20[19]}] [get_ports {Bias20[18]}] [get_ports     \
{Bias20[17]}] [get_ports {Bias20[16]}] [get_ports {Bias20[15]}] [get_ports     \
{Bias20[14]}] [get_ports {Bias20[13]}] [get_ports {Bias20[12]}] [get_ports     \
{Bias20[11]}] [get_ports {Bias20[10]}] [get_ports {Bias20[9]}] [get_ports      \
{Bias20[8]}] [get_ports {Bias20[7]}] [get_ports {Bias20[6]}] [get_ports        \
{Bias20[5]}] [get_ports {Bias20[4]}] [get_ports {Bias20[3]}] [get_ports        \
{Bias20[2]}] [get_ports {Bias20[1]}] [get_ports {Bias20[0]}] [get_ports        \
{Bias30[35]}] [get_ports {Bias30[34]}] [get_ports {Bias30[33]}] [get_ports     \
{Bias30[32]}] [get_ports {Bias30[31]}] [get_ports {Bias30[30]}] [get_ports     \
{Bias30[29]}] [get_ports {Bias30[28]}] [get_ports {Bias30[27]}] [get_ports     \
{Bias30[26]}] [get_ports {Bias30[25]}] [get_ports {Bias30[24]}] [get_ports     \
{Bias30[23]}] [get_ports {Bias30[22]}] [get_ports {Bias30[21]}] [get_ports     \
{Bias30[20]}] [get_ports {Bias30[19]}] [get_ports {Bias30[18]}] [get_ports     \
{Bias30[17]}] [get_ports {Bias30[16]}] [get_ports {Bias30[15]}] [get_ports     \
{Bias30[14]}] [get_ports {Bias30[13]}] [get_ports {Bias30[12]}] [get_ports     \
{Bias30[11]}] [get_ports {Bias30[10]}] [get_ports {Bias30[9]}] [get_ports      \
{Bias30[8]}] [get_ports {Bias30[7]}] [get_ports {Bias30[6]}] [get_ports        \
{Bias30[5]}] [get_ports {Bias30[4]}] [get_ports {Bias30[3]}] [get_ports        \
{Bias30[2]}] [get_ports {Bias30[1]}] [get_ports {Bias30[0]}] [get_ports        \
{Bias40[35]}] [get_ports {Bias40[34]}] [get_ports {Bias40[33]}] [get_ports     \
{Bias40[32]}] [get_ports {Bias40[31]}] [get_ports {Bias40[30]}] [get_ports     \
{Bias40[29]}] [get_ports {Bias40[28]}] [get_ports {Bias40[27]}] [get_ports     \
{Bias40[26]}] [get_ports {Bias40[25]}] [get_ports {Bias40[24]}] [get_ports     \
{Bias40[23]}] [get_ports {Bias40[22]}] [get_ports {Bias40[21]}] [get_ports     \
{Bias40[20]}] [get_ports {Bias40[19]}] [get_ports {Bias40[18]}] [get_ports     \
{Bias40[17]}] [get_ports {Bias40[16]}] [get_ports {Bias40[15]}] [get_ports     \
{Bias40[14]}] [get_ports {Bias40[13]}] [get_ports {Bias40[12]}] [get_ports     \
{Bias40[11]}] [get_ports {Bias40[10]}] [get_ports {Bias40[9]}] [get_ports      \
{Bias40[8]}] [get_ports {Bias40[7]}] [get_ports {Bias40[6]}] [get_ports        \
{Bias40[5]}] [get_ports {Bias40[4]}] [get_ports {Bias40[3]}] [get_ports        \
{Bias40[2]}] [get_ports {Bias40[1]}] [get_ports {Bias40[0]}] [get_ports        \
enable]]
set_input_delay -clock clk  0  [get_ports rst]
set_input_delay -clock clk  0  [get_ports {img_data[8]}]
set_input_delay -clock clk  0  [get_ports {img_data[7]}]
set_input_delay -clock clk  0  [get_ports {img_data[6]}]
set_input_delay -clock clk  0  [get_ports {img_data[5]}]
set_input_delay -clock clk  0  [get_ports {img_data[4]}]
set_input_delay -clock clk  0  [get_ports {img_data[3]}]
set_input_delay -clock clk  0  [get_ports {img_data[2]}]
set_input_delay -clock clk  0  [get_ports {img_data[1]}]
set_input_delay -clock clk  0  [get_ports {img_data[0]}]
set_input_delay -clock clk  0  [get_ports {img_addr[11]}]
set_input_delay -clock clk  0  [get_ports {img_addr[10]}]
set_input_delay -clock clk  0  [get_ports {img_addr[9]}]
set_input_delay -clock clk  0  [get_ports {img_addr[8]}]
set_input_delay -clock clk  0  [get_ports {img_addr[7]}]
set_input_delay -clock clk  0  [get_ports {img_addr[6]}]
set_input_delay -clock clk  0  [get_ports {img_addr[5]}]
set_input_delay -clock clk  0  [get_ports {img_addr[4]}]
set_input_delay -clock clk  0  [get_ports {img_addr[3]}]
set_input_delay -clock clk  0  [get_ports {img_addr[2]}]
set_input_delay -clock clk  0  [get_ports {img_addr[1]}]
set_input_delay -clock clk  0  [get_ports {img_addr[0]}]
set_input_delay -clock clk  0  [get_ports {weight1[15]}]
set_input_delay -clock clk  0  [get_ports {weight1[14]}]
set_input_delay -clock clk  0  [get_ports {weight1[13]}]
set_input_delay -clock clk  0  [get_ports {weight1[12]}]
set_input_delay -clock clk  0  [get_ports {weight1[11]}]
set_input_delay -clock clk  0  [get_ports {weight1[10]}]
set_input_delay -clock clk  0  [get_ports {weight1[9]}]
set_input_delay -clock clk  0  [get_ports {weight1[8]}]
set_input_delay -clock clk  0  [get_ports {weight1[7]}]
set_input_delay -clock clk  0  [get_ports {weight1[6]}]
set_input_delay -clock clk  0  [get_ports {weight1[5]}]
set_input_delay -clock clk  0  [get_ports {weight1[4]}]
set_input_delay -clock clk  0  [get_ports {weight1[3]}]
set_input_delay -clock clk  0  [get_ports {weight1[2]}]
set_input_delay -clock clk  0  [get_ports {weight1[1]}]
set_input_delay -clock clk  0  [get_ports {weight1[0]}]
set_input_delay -clock clk  0  [get_ports {weight2[15]}]
set_input_delay -clock clk  0  [get_ports {weight2[14]}]
set_input_delay -clock clk  0  [get_ports {weight2[13]}]
set_input_delay -clock clk  0  [get_ports {weight2[12]}]
set_input_delay -clock clk  0  [get_ports {weight2[11]}]
set_input_delay -clock clk  0  [get_ports {weight2[10]}]
set_input_delay -clock clk  0  [get_ports {weight2[9]}]
set_input_delay -clock clk  0  [get_ports {weight2[8]}]
set_input_delay -clock clk  0  [get_ports {weight2[7]}]
set_input_delay -clock clk  0  [get_ports {weight2[6]}]
set_input_delay -clock clk  0  [get_ports {weight2[5]}]
set_input_delay -clock clk  0  [get_ports {weight2[4]}]
set_input_delay -clock clk  0  [get_ports {weight2[3]}]
set_input_delay -clock clk  0  [get_ports {weight2[2]}]
set_input_delay -clock clk  0  [get_ports {weight2[1]}]
set_input_delay -clock clk  0  [get_ports {weight2[0]}]
set_input_delay -clock clk  0  [get_ports {weight3[15]}]
set_input_delay -clock clk  0  [get_ports {weight3[14]}]
set_input_delay -clock clk  0  [get_ports {weight3[13]}]
set_input_delay -clock clk  0  [get_ports {weight3[12]}]
set_input_delay -clock clk  0  [get_ports {weight3[11]}]
set_input_delay -clock clk  0  [get_ports {weight3[10]}]
set_input_delay -clock clk  0  [get_ports {weight3[9]}]
set_input_delay -clock clk  0  [get_ports {weight3[8]}]
set_input_delay -clock clk  0  [get_ports {weight3[7]}]
set_input_delay -clock clk  0  [get_ports {weight3[6]}]
set_input_delay -clock clk  0  [get_ports {weight3[5]}]
set_input_delay -clock clk  0  [get_ports {weight3[4]}]
set_input_delay -clock clk  0  [get_ports {weight3[3]}]
set_input_delay -clock clk  0  [get_ports {weight3[2]}]
set_input_delay -clock clk  0  [get_ports {weight3[1]}]
set_input_delay -clock clk  0  [get_ports {weight3[0]}]
set_input_delay -clock clk  0  [get_ports {weight4[15]}]
set_input_delay -clock clk  0  [get_ports {weight4[14]}]
set_input_delay -clock clk  0  [get_ports {weight4[13]}]
set_input_delay -clock clk  0  [get_ports {weight4[12]}]
set_input_delay -clock clk  0  [get_ports {weight4[11]}]
set_input_delay -clock clk  0  [get_ports {weight4[10]}]
set_input_delay -clock clk  0  [get_ports {weight4[9]}]
set_input_delay -clock clk  0  [get_ports {weight4[8]}]
set_input_delay -clock clk  0  [get_ports {weight4[7]}]
set_input_delay -clock clk  0  [get_ports {weight4[6]}]
set_input_delay -clock clk  0  [get_ports {weight4[5]}]
set_input_delay -clock clk  0  [get_ports {weight4[4]}]
set_input_delay -clock clk  0  [get_ports {weight4[3]}]
set_input_delay -clock clk  0  [get_ports {weight4[2]}]
set_input_delay -clock clk  0  [get_ports {weight4[1]}]
set_input_delay -clock clk  0  [get_ports {weight4[0]}]
set_input_delay -clock clk  0  [get_ports {weight_addr[11]}]
set_input_delay -clock clk  0  [get_ports {weight_addr[10]}]
set_input_delay -clock clk  0  [get_ports {weight_addr[9]}]
set_input_delay -clock clk  0  [get_ports {weight_addr[8]}]
set_input_delay -clock clk  0  [get_ports {weight_addr[7]}]
set_input_delay -clock clk  0  [get_ports {weight_addr[6]}]
set_input_delay -clock clk  0  [get_ports {weight_addr[5]}]
set_input_delay -clock clk  0  [get_ports {weight_addr[4]}]
set_input_delay -clock clk  0  [get_ports {weight_addr[3]}]
set_input_delay -clock clk  0  [get_ports {weight_addr[2]}]
set_input_delay -clock clk  0  [get_ports {weight_addr[1]}]
set_input_delay -clock clk  0  [get_ports {weight_addr[0]}]
set_input_delay -clock clk  0  [get_ports {bias1[15]}]
set_input_delay -clock clk  0  [get_ports {bias1[14]}]
set_input_delay -clock clk  0  [get_ports {bias1[13]}]
set_input_delay -clock clk  0  [get_ports {bias1[12]}]
set_input_delay -clock clk  0  [get_ports {bias1[11]}]
set_input_delay -clock clk  0  [get_ports {bias1[10]}]
set_input_delay -clock clk  0  [get_ports {bias1[9]}]
set_input_delay -clock clk  0  [get_ports {bias1[8]}]
set_input_delay -clock clk  0  [get_ports {bias1[7]}]
set_input_delay -clock clk  0  [get_ports {bias1[6]}]
set_input_delay -clock clk  0  [get_ports {bias1[5]}]
set_input_delay -clock clk  0  [get_ports {bias1[4]}]
set_input_delay -clock clk  0  [get_ports {bias1[3]}]
set_input_delay -clock clk  0  [get_ports {bias1[2]}]
set_input_delay -clock clk  0  [get_ports {bias1[1]}]
set_input_delay -clock clk  0  [get_ports {bias1[0]}]
set_input_delay -clock clk  0  [get_ports {bias2[15]}]
set_input_delay -clock clk  0  [get_ports {bias2[14]}]
set_input_delay -clock clk  0  [get_ports {bias2[13]}]
set_input_delay -clock clk  0  [get_ports {bias2[12]}]
set_input_delay -clock clk  0  [get_ports {bias2[11]}]
set_input_delay -clock clk  0  [get_ports {bias2[10]}]
set_input_delay -clock clk  0  [get_ports {bias2[9]}]
set_input_delay -clock clk  0  [get_ports {bias2[8]}]
set_input_delay -clock clk  0  [get_ports {bias2[7]}]
set_input_delay -clock clk  0  [get_ports {bias2[6]}]
set_input_delay -clock clk  0  [get_ports {bias2[5]}]
set_input_delay -clock clk  0  [get_ports {bias2[4]}]
set_input_delay -clock clk  0  [get_ports {bias2[3]}]
set_input_delay -clock clk  0  [get_ports {bias2[2]}]
set_input_delay -clock clk  0  [get_ports {bias2[1]}]
set_input_delay -clock clk  0  [get_ports {bias2[0]}]
set_input_delay -clock clk  0  [get_ports {bias3[15]}]
set_input_delay -clock clk  0  [get_ports {bias3[14]}]
set_input_delay -clock clk  0  [get_ports {bias3[13]}]
set_input_delay -clock clk  0  [get_ports {bias3[12]}]
set_input_delay -clock clk  0  [get_ports {bias3[11]}]
set_input_delay -clock clk  0  [get_ports {bias3[10]}]
set_input_delay -clock clk  0  [get_ports {bias3[9]}]
set_input_delay -clock clk  0  [get_ports {bias3[8]}]
set_input_delay -clock clk  0  [get_ports {bias3[7]}]
set_input_delay -clock clk  0  [get_ports {bias3[6]}]
set_input_delay -clock clk  0  [get_ports {bias3[5]}]
set_input_delay -clock clk  0  [get_ports {bias3[4]}]
set_input_delay -clock clk  0  [get_ports {bias3[3]}]
set_input_delay -clock clk  0  [get_ports {bias3[2]}]
set_input_delay -clock clk  0  [get_ports {bias3[1]}]
set_input_delay -clock clk  0  [get_ports {bias3[0]}]
set_input_delay -clock clk  0  [get_ports {bias4[15]}]
set_input_delay -clock clk  0  [get_ports {bias4[14]}]
set_input_delay -clock clk  0  [get_ports {bias4[13]}]
set_input_delay -clock clk  0  [get_ports {bias4[12]}]
set_input_delay -clock clk  0  [get_ports {bias4[11]}]
set_input_delay -clock clk  0  [get_ports {bias4[10]}]
set_input_delay -clock clk  0  [get_ports {bias4[9]}]
set_input_delay -clock clk  0  [get_ports {bias4[8]}]
set_input_delay -clock clk  0  [get_ports {bias4[7]}]
set_input_delay -clock clk  0  [get_ports {bias4[6]}]
set_input_delay -clock clk  0  [get_ports {bias4[5]}]
set_input_delay -clock clk  0  [get_ports {bias4[4]}]
set_input_delay -clock clk  0  [get_ports {bias4[3]}]
set_input_delay -clock clk  0  [get_ports {bias4[2]}]
set_input_delay -clock clk  0  [get_ports {bias4[1]}]
set_input_delay -clock clk  0  [get_ports {bias4[0]}]
set_input_delay -clock clk  0  [get_ports {bias_addr[11]}]
set_input_delay -clock clk  0  [get_ports {bias_addr[10]}]
set_input_delay -clock clk  0  [get_ports {bias_addr[9]}]
set_input_delay -clock clk  0  [get_ports {bias_addr[8]}]
set_input_delay -clock clk  0  [get_ports {bias_addr[7]}]
set_input_delay -clock clk  0  [get_ports {bias_addr[6]}]
set_input_delay -clock clk  0  [get_ports {bias_addr[5]}]
set_input_delay -clock clk  0  [get_ports {bias_addr[4]}]
set_input_delay -clock clk  0  [get_ports {bias_addr[3]}]
set_input_delay -clock clk  0  [get_ports {bias_addr[2]}]
set_input_delay -clock clk  0  [get_ports {bias_addr[1]}]
set_input_delay -clock clk  0  [get_ports {bias_addr[0]}]
set_input_delay -clock clk  0  [get_ports write_enable]
set_input_delay -clock clk  0  [get_ports write_en_w]
set_input_delay -clock clk  0  [get_ports write_en_b]
set_input_delay -clock clk  0  [get_ports conv_write_en]
set_input_delay -clock clk  0  [get_ports {conv_idx[11]}]
set_input_delay -clock clk  0  [get_ports {conv_idx[10]}]
set_input_delay -clock clk  0  [get_ports {conv_idx[9]}]
set_input_delay -clock clk  0  [get_ports {conv_idx[8]}]
set_input_delay -clock clk  0  [get_ports {conv_idx[7]}]
set_input_delay -clock clk  0  [get_ports {conv_idx[6]}]
set_input_delay -clock clk  0  [get_ports {conv_idx[5]}]
set_input_delay -clock clk  0  [get_ports {conv_idx[4]}]
set_input_delay -clock clk  0  [get_ports {conv_idx[3]}]
set_input_delay -clock clk  0  [get_ports {conv_idx[2]}]
set_input_delay -clock clk  0  [get_ports {conv_idx[1]}]
set_input_delay -clock clk  0  [get_ports {conv_idx[0]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[35]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[34]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[33]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[32]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[31]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[30]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[29]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[28]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[27]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[26]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[25]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[24]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[23]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[22]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[21]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[20]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[19]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[18]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[17]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[16]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[15]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[14]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[13]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[12]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[11]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[10]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[9]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[8]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[7]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[6]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[5]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[4]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[3]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[2]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[1]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata1[0]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[35]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[34]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[33]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[32]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[31]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[30]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[29]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[28]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[27]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[26]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[25]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[24]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[23]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[22]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[21]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[20]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[19]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[18]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[17]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[16]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[15]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[14]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[13]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[12]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[11]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[10]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[9]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[8]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[7]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[6]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[5]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[4]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[3]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[2]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[1]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata2[0]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[35]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[34]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[33]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[32]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[31]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[30]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[29]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[28]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[27]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[26]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[25]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[24]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[23]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[22]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[21]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[20]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[19]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[18]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[17]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[16]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[15]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[14]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[13]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[12]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[11]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[10]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[9]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[8]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[7]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[6]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[5]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[4]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[3]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[2]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[1]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata3[0]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[35]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[34]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[33]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[32]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[31]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[30]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[29]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[28]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[27]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[26]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[25]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[24]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[23]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[22]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[21]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[20]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[19]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[18]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[17]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[16]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[15]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[14]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[13]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[12]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[11]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[10]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[9]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[8]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[7]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[6]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[5]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[4]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[3]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[2]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[1]}]
set_output_delay -clock clk  0  [get_ports {conv_rdata4[0]}]
set_output_delay -clock clk  0  [get_ports {Bias10[35]}]
set_output_delay -clock clk  0  [get_ports {Bias10[34]}]
set_output_delay -clock clk  0  [get_ports {Bias10[33]}]
set_output_delay -clock clk  0  [get_ports {Bias10[32]}]
set_output_delay -clock clk  0  [get_ports {Bias10[31]}]
set_output_delay -clock clk  0  [get_ports {Bias10[30]}]
set_output_delay -clock clk  0  [get_ports {Bias10[29]}]
set_output_delay -clock clk  0  [get_ports {Bias10[28]}]
set_output_delay -clock clk  0  [get_ports {Bias10[27]}]
set_output_delay -clock clk  0  [get_ports {Bias10[26]}]
set_output_delay -clock clk  0  [get_ports {Bias10[25]}]
set_output_delay -clock clk  0  [get_ports {Bias10[24]}]
set_output_delay -clock clk  0  [get_ports {Bias10[23]}]
set_output_delay -clock clk  0  [get_ports {Bias10[22]}]
set_output_delay -clock clk  0  [get_ports {Bias10[21]}]
set_output_delay -clock clk  0  [get_ports {Bias10[20]}]
set_output_delay -clock clk  0  [get_ports {Bias10[19]}]
set_output_delay -clock clk  0  [get_ports {Bias10[18]}]
set_output_delay -clock clk  0  [get_ports {Bias10[17]}]
set_output_delay -clock clk  0  [get_ports {Bias10[16]}]
set_output_delay -clock clk  0  [get_ports {Bias10[15]}]
set_output_delay -clock clk  0  [get_ports {Bias10[14]}]
set_output_delay -clock clk  0  [get_ports {Bias10[13]}]
set_output_delay -clock clk  0  [get_ports {Bias10[12]}]
set_output_delay -clock clk  0  [get_ports {Bias10[11]}]
set_output_delay -clock clk  0  [get_ports {Bias10[10]}]
set_output_delay -clock clk  0  [get_ports {Bias10[9]}]
set_output_delay -clock clk  0  [get_ports {Bias10[8]}]
set_output_delay -clock clk  0  [get_ports {Bias10[7]}]
set_output_delay -clock clk  0  [get_ports {Bias10[6]}]
set_output_delay -clock clk  0  [get_ports {Bias10[5]}]
set_output_delay -clock clk  0  [get_ports {Bias10[4]}]
set_output_delay -clock clk  0  [get_ports {Bias10[3]}]
set_output_delay -clock clk  0  [get_ports {Bias10[2]}]
set_output_delay -clock clk  0  [get_ports {Bias10[1]}]
set_output_delay -clock clk  0  [get_ports {Bias10[0]}]
set_output_delay -clock clk  0  [get_ports {Bias20[35]}]
set_output_delay -clock clk  0  [get_ports {Bias20[34]}]
set_output_delay -clock clk  0  [get_ports {Bias20[33]}]
set_output_delay -clock clk  0  [get_ports {Bias20[32]}]
set_output_delay -clock clk  0  [get_ports {Bias20[31]}]
set_output_delay -clock clk  0  [get_ports {Bias20[30]}]
set_output_delay -clock clk  0  [get_ports {Bias20[29]}]
set_output_delay -clock clk  0  [get_ports {Bias20[28]}]
set_output_delay -clock clk  0  [get_ports {Bias20[27]}]
set_output_delay -clock clk  0  [get_ports {Bias20[26]}]
set_output_delay -clock clk  0  [get_ports {Bias20[25]}]
set_output_delay -clock clk  0  [get_ports {Bias20[24]}]
set_output_delay -clock clk  0  [get_ports {Bias20[23]}]
set_output_delay -clock clk  0  [get_ports {Bias20[22]}]
set_output_delay -clock clk  0  [get_ports {Bias20[21]}]
set_output_delay -clock clk  0  [get_ports {Bias20[20]}]
set_output_delay -clock clk  0  [get_ports {Bias20[19]}]
set_output_delay -clock clk  0  [get_ports {Bias20[18]}]
set_output_delay -clock clk  0  [get_ports {Bias20[17]}]
set_output_delay -clock clk  0  [get_ports {Bias20[16]}]
set_output_delay -clock clk  0  [get_ports {Bias20[15]}]
set_output_delay -clock clk  0  [get_ports {Bias20[14]}]
set_output_delay -clock clk  0  [get_ports {Bias20[13]}]
set_output_delay -clock clk  0  [get_ports {Bias20[12]}]
set_output_delay -clock clk  0  [get_ports {Bias20[11]}]
set_output_delay -clock clk  0  [get_ports {Bias20[10]}]
set_output_delay -clock clk  0  [get_ports {Bias20[9]}]
set_output_delay -clock clk  0  [get_ports {Bias20[8]}]
set_output_delay -clock clk  0  [get_ports {Bias20[7]}]
set_output_delay -clock clk  0  [get_ports {Bias20[6]}]
set_output_delay -clock clk  0  [get_ports {Bias20[5]}]
set_output_delay -clock clk  0  [get_ports {Bias20[4]}]
set_output_delay -clock clk  0  [get_ports {Bias20[3]}]
set_output_delay -clock clk  0  [get_ports {Bias20[2]}]
set_output_delay -clock clk  0  [get_ports {Bias20[1]}]
set_output_delay -clock clk  0  [get_ports {Bias20[0]}]
set_output_delay -clock clk  0  [get_ports {Bias30[35]}]
set_output_delay -clock clk  0  [get_ports {Bias30[34]}]
set_output_delay -clock clk  0  [get_ports {Bias30[33]}]
set_output_delay -clock clk  0  [get_ports {Bias30[32]}]
set_output_delay -clock clk  0  [get_ports {Bias30[31]}]
set_output_delay -clock clk  0  [get_ports {Bias30[30]}]
set_output_delay -clock clk  0  [get_ports {Bias30[29]}]
set_output_delay -clock clk  0  [get_ports {Bias30[28]}]
set_output_delay -clock clk  0  [get_ports {Bias30[27]}]
set_output_delay -clock clk  0  [get_ports {Bias30[26]}]
set_output_delay -clock clk  0  [get_ports {Bias30[25]}]
set_output_delay -clock clk  0  [get_ports {Bias30[24]}]
set_output_delay -clock clk  0  [get_ports {Bias30[23]}]
set_output_delay -clock clk  0  [get_ports {Bias30[22]}]
set_output_delay -clock clk  0  [get_ports {Bias30[21]}]
set_output_delay -clock clk  0  [get_ports {Bias30[20]}]
set_output_delay -clock clk  0  [get_ports {Bias30[19]}]
set_output_delay -clock clk  0  [get_ports {Bias30[18]}]
set_output_delay -clock clk  0  [get_ports {Bias30[17]}]
set_output_delay -clock clk  0  [get_ports {Bias30[16]}]
set_output_delay -clock clk  0  [get_ports {Bias30[15]}]
set_output_delay -clock clk  0  [get_ports {Bias30[14]}]
set_output_delay -clock clk  0  [get_ports {Bias30[13]}]
set_output_delay -clock clk  0  [get_ports {Bias30[12]}]
set_output_delay -clock clk  0  [get_ports {Bias30[11]}]
set_output_delay -clock clk  0  [get_ports {Bias30[10]}]
set_output_delay -clock clk  0  [get_ports {Bias30[9]}]
set_output_delay -clock clk  0  [get_ports {Bias30[8]}]
set_output_delay -clock clk  0  [get_ports {Bias30[7]}]
set_output_delay -clock clk  0  [get_ports {Bias30[6]}]
set_output_delay -clock clk  0  [get_ports {Bias30[5]}]
set_output_delay -clock clk  0  [get_ports {Bias30[4]}]
set_output_delay -clock clk  0  [get_ports {Bias30[3]}]
set_output_delay -clock clk  0  [get_ports {Bias30[2]}]
set_output_delay -clock clk  0  [get_ports {Bias30[1]}]
set_output_delay -clock clk  0  [get_ports {Bias30[0]}]
set_output_delay -clock clk  0  [get_ports {Bias40[35]}]
set_output_delay -clock clk  0  [get_ports {Bias40[34]}]
set_output_delay -clock clk  0  [get_ports {Bias40[33]}]
set_output_delay -clock clk  0  [get_ports {Bias40[32]}]
set_output_delay -clock clk  0  [get_ports {Bias40[31]}]
set_output_delay -clock clk  0  [get_ports {Bias40[30]}]
set_output_delay -clock clk  0  [get_ports {Bias40[29]}]
set_output_delay -clock clk  0  [get_ports {Bias40[28]}]
set_output_delay -clock clk  0  [get_ports {Bias40[27]}]
set_output_delay -clock clk  0  [get_ports {Bias40[26]}]
set_output_delay -clock clk  0  [get_ports {Bias40[25]}]
set_output_delay -clock clk  0  [get_ports {Bias40[24]}]
set_output_delay -clock clk  0  [get_ports {Bias40[23]}]
set_output_delay -clock clk  0  [get_ports {Bias40[22]}]
set_output_delay -clock clk  0  [get_ports {Bias40[21]}]
set_output_delay -clock clk  0  [get_ports {Bias40[20]}]
set_output_delay -clock clk  0  [get_ports {Bias40[19]}]
set_output_delay -clock clk  0  [get_ports {Bias40[18]}]
set_output_delay -clock clk  0  [get_ports {Bias40[17]}]
set_output_delay -clock clk  0  [get_ports {Bias40[16]}]
set_output_delay -clock clk  0  [get_ports {Bias40[15]}]
set_output_delay -clock clk  0  [get_ports {Bias40[14]}]
set_output_delay -clock clk  0  [get_ports {Bias40[13]}]
set_output_delay -clock clk  0  [get_ports {Bias40[12]}]
set_output_delay -clock clk  0  [get_ports {Bias40[11]}]
set_output_delay -clock clk  0  [get_ports {Bias40[10]}]
set_output_delay -clock clk  0  [get_ports {Bias40[9]}]
set_output_delay -clock clk  0  [get_ports {Bias40[8]}]
set_output_delay -clock clk  0  [get_ports {Bias40[7]}]
set_output_delay -clock clk  0  [get_ports {Bias40[6]}]
set_output_delay -clock clk  0  [get_ports {Bias40[5]}]
set_output_delay -clock clk  0  [get_ports {Bias40[4]}]
set_output_delay -clock clk  0  [get_ports {Bias40[3]}]
set_output_delay -clock clk  0  [get_ports {Bias40[2]}]
set_output_delay -clock clk  0  [get_ports {Bias40[1]}]
set_output_delay -clock clk  0  [get_ports {Bias40[0]}]
set_output_delay -clock clk  0  [get_ports enable]
