# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/carlo/Downloads/lab_2/project_2_3/project_2_3.cache/wt [current_project]
set_property parent.project_path C:/Users/carlo/Downloads/lab_2/project_2_3/project_2_3.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/carlo/Downloads/lab_2/project_2_3/project_2_3.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib -sv {
  C:/Users/carlo/Downloads/lab_2/project_2_3/project_2_3.srcs/sources_1/imports/lab_2/dp.sv
  C:/Users/carlo/Downloads/lab_2/project_2_3/project_2_3.srcs/sources_1/imports/lab_2/fsm.sv
  C:/Users/carlo/Downloads/lab_2/project_2_3/project_2_3.srcs/sources_1/imports/lab_2/gcd_core.sv
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/carlo/Downloads/lab_2/project_2_3/project_2_3.srcs/constrs_1/imports/lab_2/project_2_zybo.xdc
set_property used_in_implementation false [get_files C:/Users/carlo/Downloads/lab_2/project_2_3/project_2_3.srcs/constrs_1/imports/lab_2/project_2_zybo.xdc]


synth_design -top gcd_core -part xc7z010clg400-1


write_checkpoint -force -noxdef gcd_core.dcp

catch { report_utilization -file gcd_core_utilization_synth.rpt -pb gcd_core_utilization_synth.pb }
