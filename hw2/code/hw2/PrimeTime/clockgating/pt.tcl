set company "VLSILAB"
set designer "OWEN"
#######################################################################
## Logical Library Settings
#######################################################################
set search_path      "/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/CCS/  $search_path"
set target_library   "N16ADFP_StdCellss0p72vm40c_ccs.db N16ADFP_StdCellff0p88v125c_ccs.db"
set link_library     "* $target_library"
set symbol_library   "generic.sdb"
set sh_source_uses_search_path true

######################################################################
# power analysis
######################################################################
# source saifmap.ptpx.tcl
# report_name_mapping
set power_enable_analysis true
set power_analysis_mode averaged
set power_report_leakage_breakdowns true

# read verilog: read in the synthesized netlist
read_verilog /home/B103040045_HDL/hw2/gatelevel/Clockgating_delay/hw2_clock_gating_syn.v
# current_design: set the design top module
current_design hw2_clockgating
link

# read_sdc and read_sdf: set corresponding SDC and SDF files
read_sdc /home/B103040045_HDL/hw2/gatelevel/Clockgating_delay/hw2_clock_gating_syn.sdc
read_sdf /home/B103040045_HDL/hw2/gatelevel/Clockgating_delay/hw2_clock_gating_syn.sdf

######################################################################
# Timing analysis
######################################################################
check_timing
update_timing
# Generate timing report
report_timing -path full -delay max -max_paths 5 -nworst 1 > report_timing_average_vcd_hw2_pipe.rpt
report_timing -from [all_inputs]  > in_timing_report.txt
uplevel #0 { report_timing  -through { s1/* } -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group  > s1_timing_report.txt}
uplevel #0 { report_timing  -through { s2/* } -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group  > s2_timing_report.txt}
report_timing -from [all_outputs]  > out_timing_report.txt

# read_vcd: read in the VCD file
read_vcd -strip_path testbench/pipe /home/B103040045_HDL/hw2/post_sim/clock_gating/clockgating.vcd

######################################################################
# Power analysis
######################################################################
check_power
update_power
report_power -hierarchy > report_power_average_vcd_hw2_pipe.rpt

#quit
exit