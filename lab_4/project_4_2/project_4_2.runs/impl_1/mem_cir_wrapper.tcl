proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.cache/wt [current_project]
  set_property parent.project_path C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.xpr [current_project]
  set_property ip_output_repo C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.runs/synth_1/mem_cir_wrapper.dcp
  add_files -quiet C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem.dcp
  set_property netlist_only true [get_files C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem.dcp]
  read_xdc -mode out_of_context -ref mem -cells U0 c:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sources_1/ip/mem/mem_ooc.xdc]
  read_xdc C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/constrs_1/imports/lab_4/ZYBO_Master.xdc
  link_design -top mem_cir_wrapper -part xc7z010clg400-1
  write_hwdef -file mem_cir_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force mem_cir_wrapper_opt.dcp
  catch { report_drc -file mem_cir_wrapper_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force mem_cir_wrapper_placed.dcp
  catch { report_io -file mem_cir_wrapper_io_placed.rpt }
  catch { report_utilization -file mem_cir_wrapper_utilization_placed.rpt -pb mem_cir_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file mem_cir_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force mem_cir_wrapper_routed.dcp
  catch { report_drc -file mem_cir_wrapper_drc_routed.rpt -pb mem_cir_wrapper_drc_routed.pb -rpx mem_cir_wrapper_drc_routed.rpx }
  catch { report_methodology -file mem_cir_wrapper_methodology_drc_routed.rpt -rpx mem_cir_wrapper_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file mem_cir_wrapper_timing_summary_routed.rpt -rpx mem_cir_wrapper_timing_summary_routed.rpx }
  catch { report_power -file mem_cir_wrapper_power_routed.rpt -pb mem_cir_wrapper_power_summary_routed.pb -rpx mem_cir_wrapper_power_routed.rpx }
  catch { report_route_status -file mem_cir_wrapper_route_status.rpt -pb mem_cir_wrapper_route_status.pb }
  catch { report_clock_utilization -file mem_cir_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force mem_cir_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

