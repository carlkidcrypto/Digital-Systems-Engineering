# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.cache/wt [current_project]
set_property parent.project_path C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem.xci
set_property is_locked true [get_files C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.runs/mem_synth_1 -new_name mem -ip [get_ips mem]]

if { $cached_ip eq {} } {

synth_design -top mem -part xc7z010clg400-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix mem_ mem.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mem_stub.v
 lappend ipCachedFiles mem_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mem_stub.vhdl
 lappend ipCachedFiles mem_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mem_sim_netlist.v
 lappend ipCachedFiles mem_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mem_sim_netlist.vhdl
 lappend ipCachedFiles mem_sim_netlist.vhdl

 config_ip_cache -add -dcp mem.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips mem]
}

rename_ref -prefix_all mem_

write_checkpoint -force -noxdef mem.dcp

catch { report_utilization -file mem_utilization_synth.rpt -pb mem_utilization_synth.pb }

if { [catch {
  file copy -force C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.runs/mem_synth_1/mem.dcp C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.runs/mem_synth_1/mem.dcp C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.runs/mem_synth_1/mem_stub.v C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.runs/mem_synth_1/mem_stub.vhdl C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.runs/mem_synth_1/mem_sim_netlist.v C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.runs/mem_synth_1/mem_sim_netlist.vhdl C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.ip_user_files/ip/mem]} {
  catch { 
    file copy -force C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem_stub.v C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.ip_user_files/ip/mem
  }
}

if {[file isdir C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.ip_user_files/ip/mem]} {
  catch { 
    file copy -force C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem_stub.vhdl C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.ip_user_files/ip/mem
  }
}
