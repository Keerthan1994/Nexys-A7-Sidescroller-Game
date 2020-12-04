# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
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
set_param chipscope.maxJobs 3
set_msg_config  -id {Common 17-1649}  -string {{CRITICAL WARNING: [Common 17-1649] The Vivado message database 'C:/Users/rromano/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.runs/synth_1/vivado.pb' contains 20125 messages. Restoring all messages from this message database will impact Vivado performance, so only WARNING, CRITICAL WARNING, and ERROR messages will be restored. To restore all messages from this file use the tcl command 'set_param messaging.loadPbLimit 20126' and re-open the project.}}  -suppress 
set_msg_config  -id {Common 17-1649}  -string {{CRITICAL WARNING: [Common 17-1649] The Vivado message database 'C:/Users/rromano/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.runs/synth_1/vivado.pb' contains 20143 messages. Restoring all messages from this message database will impact Vivado performance, so only WARNING, CRITICAL WARNING, and ERROR messages will be restored. To restore all messages from this file use the tcl command 'set_param messaging.loadPbLimit 20144' and re-open the project.}}  -suppress 
set_param project.vivado.isBlockSynthRun true
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.cache/wt [current_project]
set_property parent.project_path C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys-a7-100t:part0:1.0 [current_project]
set_property ip_repo_paths c:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/fpga_code/ece540_ip_repo/rojobot31 [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.srcs/sources_1/ip/rojobot31_0/rojobot31_0.xci
set_property is_enabled true [get_files -all C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.srcs/sources_1/ip/rojobot31_0/src/bot31_if.v]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top rojobot31_0 -part xc7a100tcsg324-1 -mode out_of_context

rename_ref -prefix_all rojobot31_0_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef rojobot31_0.dcp
create_report "rojobot31_0_synth_1_synth_report_utilization_0" "report_utilization -file rojobot31_0_utilization_synth.rpt -pb rojobot31_0_utilization_synth.pb"

if { [catch {
  file copy -force C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.runs/rojobot31_0_synth_1/rojobot31_0.dcp C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.srcs/sources_1/ip/rojobot31_0/rojobot31_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.srcs/sources_1/ip/rojobot31_0/rojobot31_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.srcs/sources_1/ip/rojobot31_0/rojobot31_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.srcs/sources_1/ip/rojobot31_0/rojobot31_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.srcs/sources_1/ip/rojobot31_0/rojobot31_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.ip_user_files/ip/rojobot31_0]} {
  catch { 
    file copy -force C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.srcs/sources_1/ip/rojobot31_0/rojobot31_0_stub.v C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.ip_user_files/ip/rojobot31_0
  }
}

if {[file isdir C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.ip_user_files/ip/rojobot31_0]} {
  catch { 
    file copy -force C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.srcs/sources_1/ip/rojobot31_0/rojobot31_0_stub.vhdl C:/Users/ryanp/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.ip_user_files/ip/rojobot31_0
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
