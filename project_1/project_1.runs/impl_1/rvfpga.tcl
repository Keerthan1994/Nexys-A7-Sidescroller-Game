# 
# Report generation script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
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

set_msg_config  -id {Common 17-1649}  -string {{CRITICAL WARNING: [Common 17-1649] The Vivado message database 'C:/Users/rromano/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.runs/synth_1/vivado.pb' contains 20125 messages. Restoring all messages from this message database will impact Vivado performance, so only WARNING, CRITICAL WARNING, and ERROR messages will be restored. To restore all messages from this file use the tcl command 'set_param messaging.loadPbLimit 20126' and re-open the project.}}  -suppress 
set_msg_config  -id {Common 17-1649}  -string {{CRITICAL WARNING: [Common 17-1649] The Vivado message database 'C:/Users/rromano/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.runs/synth_1/vivado.pb' contains 20143 messages. Restoring all messages from this message database will impact Vivado performance, so only WARNING, CRITICAL WARNING, and ERROR messages will be restored. To restore all messages from this file use the tcl command 'set_param messaging.loadPbLimit 20144' and re-open the project.}}  -suppress 

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_param chipscope.maxJobs 4
  set_param xicom.use_bs_reader 1
  open_checkpoint rvfpga_routed.dcp
  set_property webtalk.parent_dir C:/Users/rromano/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.cache/wt [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force rvfpga.mmi }
  write_bitstream -force rvfpga.bit 
  catch {write_debug_probes -quiet -force rvfpga}
  catch {file copy -force rvfpga.ltx debug_nets.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

