# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.cache/wt [current_project]
set_property parent.project_path C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files C:/Users/carlo/Downloads/lab_4/mem.coe
add_files -quiet C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem.dcp
set_property used_in_implementation false [get_files C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem.dcp]
read_verilog -library xil_defaultlib -sv C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/new/mem_cir_wrapper.sv
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/constrs_1/imports/lab_4/ZYBO_Master.xdc
set_property used_in_implementation false [get_files C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/constrs_1/imports/lab_4/ZYBO_Master.xdc]


synth_design -top mem_cir_wrapper -part xc7z010clg400-1


write_checkpoint -force -noxdef mem_cir_wrapper.dcp

catch { report_utilization -file mem_cir_wrapper_utilization_synth.rpt -pb mem_cir_wrapper_utilization_synth.pb }
