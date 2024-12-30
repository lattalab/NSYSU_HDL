set_db write_stream_text_size 10

set streamOutMapLink /home/cad/CBDK/ADFP/Executable_Package/Collaterals/Tech/APR/N16ADFP_APR_Innovus/N16ADFP_APR_Innovus_Gdsout_11M.10a.map

set_db write_stream_text_size 10
if {! [file exists stream_out_map]} {
    set streamOutMapFile [file dirname [file normalize $streamOutMapLink/___]]
    if [file exists $streamOutMapFile] {
       file copy $streamOutMapFile stream_out_map
       set outfile [open stream_out_map a]
       puts  $outfile "CUSTOM_CB CUSTOM 108 250"
       #puts $outfile "CUSTOM_CB CUSTOM 108 0"
       close $outfile
    }
}

write_stream outputs/FMA_pipe.gds -map_file stream_out_map -lib_name DesignLib \
      -merge { \
            /home/cad/CBDK/ADFP/Executable_Package/Collaterals/IP/stdcell/N16ADFP_StdCell/GDS/N16ADFP_StdCell.gds      \
      } \
      -uniquify_cell_names -unit 1000 -mode all -report_file write_stream.log

#create_pin_text -cells thumb label_loc.txt
