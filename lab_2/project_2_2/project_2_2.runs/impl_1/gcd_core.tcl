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
  set_property webtalk.parent_dir {C:/Users/carlo/OneDrive - University of Idaho/UofI_19-20/Spring_2020/ECE_440/lab_2/project_2_2/project_2_2.cache/wt} [current_project]
  set_property parent.project_path {C:/Users/carlo/OneDrive - University of Idaho/UofI_19-20/Spring_2020/ECE_440/lab_2/project_2_2/project_2_2.xpr} [current_project]
  set_property ip_output_repo {{C:/Users/carlo/OneDrive - University of Idaho/UofI_19-20/Spring_2020/ECE_440/lab_2/project_2_2/project_2_2.cache/ip}} [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet {{C:/Users/carlo/OneDrive - University of Idaho/UofI_19-20/Spring_2020/ECE_440/lab_2/project_2_2/project_2_2.runs/synth_1/gcd_core.dcp}}
  read_xdc {{C:/Users/carlo/OneDrive - University of Idaho/UofI_19-20/Spring_2020/ECE_440/lab_2/project_2_2/project_2_2.srcs/constrs_1/imports/lab_2/project_2_zybo.xdc}}
  link_design -top gcd_core -part xc7z010clg400-1
  write_hwdef -file gcd_core.hwdef
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
  write_checkpoint -force gcd_core_opt.dcp
  catch { report_drc -file gcd_core_drc_opted.rpt }
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
  write_checkpoint -force gcd_core_placed.dcp
  catch { report_io -file gcd_core_io_placed.rpt }
  catch { report_utilization -file gcd_core_utilization_placed.rpt -pb gcd_core_utilization_placed.pb }
  catch { report_control_sets -verbose -file gcd_core_control_sets_placed.rpt }
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
  write_checkpoint -force gcd_core_routed.dcp
  catch { report_drc -file gcd_core_drc_routed.rpt -pb gcd_core_drc_routed.pb -rpx gcd_core_drc_routed.rpx }
  catch { report_methodology -file gcd_core_methodology_drc_routed.rpt -rpx gcd_core_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file gcd_core_timing_summary_routed.rpt -rpx gcd_core_timing_summary_routed.rpx }
  catch { report_power -file gcd_core_power_routed.rpt -pb gcd_core_power_summary_routed.pb -rpx gcd_core_power_routed.rpx }
  catch { report_route_status -file gcd_core_route_status.rpt -pb gcd_core_route_status.pb }
  catch { report_clock_utilization -file gcd_core_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force gcd_core_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

