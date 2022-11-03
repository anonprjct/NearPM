#*****************************************************************************************
# Vivado (TM) v2018.2 (64-bit)
#
# build.tcl: Tcl script for re-creating project 'PCIeMEM'
#
# Generated by Vivado on Fri Aug 13 00:29:09 EDT 2021
# IP Build 2256618 on Thu Jun 14 22:10:49 MDT 2018
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.
#
# * Note that the runs in the created project will be configured the same way as the
#   original project, however they will not be launched automatically. To regenerate the
#   run results please launch the synthesis/implementation runs as needed.
#
#*****************************************************************************************
# NOTE: In order to use this script for source control purposes, please make sure that the
#       following files are added to the source control system:-
#
# 1. This project restoration tcl script (build.tcl) that was generated.
#
# 2. The following source(s) files that were local or imported into the original project.
#    (Please see the '$orig_proj_dir' and '$origin_dir' variable setting below at the start of the script)
#
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/new/addrmonitor.v"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/new/gate_axi.v"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/design_1.bd"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/new/pulse_gen.v"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/new/gate_ready.v"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/new/clock_mux.v"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/new/gate_valid.v"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/constrs_1/new/design_top.xdc"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/constrs_v1/new/design_top.xdc"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/constrs_v1/new/constrain-v1.xdc"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/constrs_3/new/design_top.xdc"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/constrs_3/new/constrain-v1.xdc"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/constrs_4/new/design_top.xdc"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/constrs_4/new/constrain-v1.xdc"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/constrs_5/new/design_top.xdc"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/constrs_5/new/constrain-v1.xdc"
#    "/home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/constrs_5/new/clock.xdc"
#
# 3. The following remote source files that were added to the original project:-
#
#    <none>
#
#*****************************************************************************************

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir [file dirname [info script]]

# Use origin directory path location variable, if specified in the tcl shell
if { [info exists ::origin_dir_loc] } {
  set origin_dir $::origin_dir_loc
}

# Set the project name
set _xil_proj_name_ "NearPM"

# Use project name variable, if specified in the tcl shell
if { [info exists ::user_project_name] } {
  set _xil_proj_name_ $::user_project_name
}

variable script_file
set script_file "build.tcl"

# Help information for this script
proc help {} {
  variable script_file
  puts "\nDescription:"
  puts "Recreate a Vivado project from this script. The created project will be"
  puts "functionally equivalent to the original project for which this script was"
  puts "generated. The script contains commands for creating a project, filesets,"
  puts "runs, adding/importing sources and setting properties on various objects.\n"
  puts "Syntax:"
  puts "$script_file"
  puts "$script_file -tclargs \[--origin_dir <path>\]"
  puts "$script_file -tclargs \[--project_name <name>\]"
  puts "$script_file -tclargs \[--help\]\n"
  puts "Usage:"
  puts "Name                   Description"
  puts "-------------------------------------------------------------------------"
  puts "\[--origin_dir <path>\]  Determine source file paths wrt this path. Default"
  puts "                       origin_dir path value is \".\", otherwise, the value"
  puts "                       that was set with the \"-paths_relative_to\" switch"
  puts "                       when this script was generated.\n"
  puts "\[--project_name <name>\] Create project with the specified name. Default"
  puts "                       name is the name of the project from where this"
  puts "                       script was generated.\n"
  puts "\[--help\]               Print help information for this script"
  puts "-------------------------------------------------------------------------\n"
  exit 0
}

if { $::argc > 0 } {
  for {set i 0} {$i < $::argc} {incr i} {
    set option [string trim [lindex $::argv $i]]
    switch -regexp -- $option {
      "--origin_dir"   { incr i; set origin_dir [lindex $::argv $i] }
      "--project_name" { incr i; set _xil_proj_name_ [lindex $::argv $i] }
      "--help"         { help }
      default {
        if { [regexp {^-} $option] } {
          puts "ERROR: Unknown option '$option' specified, please type '$script_file -tclargs --help' for usage info.\n"
          return 1
        }
      }
    }
  }
}

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/PCIeMEM"]"

# Create project
create_project ${_xil_proj_name_} $origin_dir/${_xil_proj_name_} -part xcvu9p-flga2104-2L-e

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Reconstruct message rules
set_msg_config  -ruleid {1}  -id {[BD 41-1306]}  -suppress  -source 2
set_msg_config  -ruleid {2}  -id {[BD 41-1271]}  -suppress  -source 2
set_msg_config  -ruleid {7}  -id {[BD 41-1306]}  -suppress  -source 2
set_msg_config  -ruleid {8}  -id {[BD 41-1271]}  -suppress  -source 2


# Set project properties
set obj [current_project]
set_property -name "board_part" -value "xilinx.com:vcu118:part0:2.0" -objects $obj
set_property -name "default_lib" -value "xil_defaultlib" -objects $obj
set_property -name "dsa.accelerator_binary_content" -value "bitstream" -objects $obj
set_property -name "dsa.accelerator_binary_format" -value "xclbin2" -objects $obj
set_property -name "dsa.board_id" -value "vcu118" -objects $obj
set_property -name "dsa.description" -value "Vivado generated DSA" -objects $obj
set_property -name "dsa.dr_bd_base_address" -value "0" -objects $obj
set_property -name "dsa.emu_dir" -value "emu" -objects $obj
set_property -name "dsa.flash_interface_type" -value "bpix16" -objects $obj
set_property -name "dsa.flash_offset_address" -value "0" -objects $obj
set_property -name "dsa.flash_size" -value "1024" -objects $obj
set_property -name "dsa.host_architecture" -value "x86_64" -objects $obj
set_property -name "dsa.host_interface" -value "pcie" -objects $obj
set_property -name "dsa.num_compute_units" -value "60" -objects $obj
set_property -name "dsa.platform_state" -value "pre_synth" -objects $obj
set_property -name "dsa.uses_pr" -value "1" -objects $obj
set_property -name "dsa.vendor" -value "xilinx" -objects $obj
set_property -name "dsa.version" -value "0.0" -objects $obj
set_property -name "enable_vhdl_2008" -value "1" -objects $obj
set_property -name "ip_cache_permissions" -value "read write" -objects $obj
set_property -name "ip_output_repo" -value "$proj_dir/${_xil_proj_name_}.cache/ip" -objects $obj
set_property -name "mem.enable_memory_map_generation" -value "1" -objects $obj
set_property -name "sim.central_dir" -value "$proj_dir/${_xil_proj_name_}.ip_user_files" -objects $obj
set_property -name "sim.ip.auto_export_scripts" -value "1" -objects $obj
set_property -name "simulator_language" -value "Mixed" -objects $obj
set_property -name "xpm_libraries" -value "XPM_CDC XPM_FIFO XPM_MEMORY" -objects $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set IP repository paths
set obj [get_filesets sources_1]
set_property "ip_repo_paths" "[file normalize "$origin_dir/ip_repo/undolog_2.1"] [file normalize "$origin_dir/ip_repo/undolog_2.0"] [file normalize "$origin_dir/ip_repo/undolog_1.0"] [file normalize "$origin_dir/../../ip_repo/AXI_Lite_slave_plug_1.0"] [file normalize "$origin_dir/../../ip_repo/AXI_DMA_driver_1.0"] [file normalize "$origin_dir/ip_repo/memops_scheduler_1.1"]" $obj

# Rebuild user ip_repo's index before adding any source files
update_ip_catalog -rebuild

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
# Import local files from the original project
set files [list \
 [file normalize "${origin_dir}/PCIeMEM.srcs/sources_1/new/addrmonitor.v" ]\
 [file normalize "${origin_dir}/PCIeMEM.srcs/sources_1/new/gate_axi.v" ]\
 [file normalize "${origin_dir}/PCIeMEM.srcs/sources_1/bd/design_1/design_1.bd" ]\
 [file normalize "${origin_dir}/PCIeMEM.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v" ]\
 [file normalize "${origin_dir}/PCIeMEM.srcs/sources_1/new/pulse_gen.v" ]\
 [file normalize "${origin_dir}/PCIeMEM.srcs/sources_1/new/gate_ready.v" ]\
 [file normalize "${origin_dir}/PCIeMEM.srcs/sources_1/new/clock_mux.v" ]\
 [file normalize "${origin_dir}/PCIeMEM.srcs/sources_1/new/gate_valid.v" ]\
]
set imported_files [import_files -fileset sources_1 $files]

# Set 'sources_1' fileset file properties for remote files
# None

# Set 'sources_1' fileset file properties for local files
set file "design_1/design_1.bd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "registered_with_manager" -value "1" -objects $file_obj


# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property -name "top" -value "design_1_wrapper" -objects $obj

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/PCIeMEM.srcs/constrs_1/new/design_top.xdc"]"
set file_imported [import_files -fileset constrs_1 [list $file]]
set file "new/design_top.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]

# Create 'constrs_v1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_v1] ""]} {
  create_fileset -constrset constrs_v1
}

# Set 'constrs_v1' fileset object
set obj [get_filesets constrs_v1]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/PCIeMEM.srcs/constrs_v1/new/design_top.xdc"]"
set file_imported [import_files -fileset constrs_v1 [list $file]]
set file "new/design_top.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_v1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/PCIeMEM.srcs/constrs_v1/new/constrain_v1.xdc"]"
set file_imported [import_files -fileset constrs_v1 [list $file]]
set file "new/constrain_v1.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_v1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Set 'constrs_v1' fileset properties
set obj [get_filesets constrs_v1]
set_property -name "target_constrs_file" -value "[get_files *new/constrain_v1.xdc]" -objects $obj
set_property -name "target_ucf" -value "[get_files *new/constrain_v1.xdc]" -objects $obj

# Create 'constrs_3' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_3] ""]} {
  create_fileset -constrset constrs_3
}

# Set 'constrs_3' fileset object
set obj [get_filesets constrs_3]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/PCIeMEM.srcs/constrs_3/new/design_top.xdc"]"
set file_imported [import_files -fileset constrs_3 [list $file]]
set file "new/design_top.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_3] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/PCIeMEM.srcs/constrs_3/new/constrain_3.xdc"]"
set file_imported [import_files -fileset constrs_3 [list $file]]
set file "new/constrain_3.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_3] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Set 'constrs_3' fileset properties
set obj [get_filesets constrs_3]
set_property -name "target_constrs_file" -value "[get_files *new/constrain_3.xdc]" -objects $obj
set_property -name "target_ucf" -value "[get_files *new/constrain_3.xdc]" -objects $obj

# Create 'constrs_4' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_4] ""]} {
  create_fileset -constrset constrs_4
}

# Set 'constrs_4' fileset object
set obj [get_filesets constrs_4]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/PCIeMEM.srcs/constrs_4/new/design_top.xdc"]"
set file_imported [import_files -fileset constrs_4 [list $file]]
set file "new/design_top.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_4] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/PCIeMEM.srcs/constrs_4/new/constrain_4.xdc"]"
set file_imported [import_files -fileset constrs_4 [list $file]]
set file "new/constrain_4.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_4] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Set 'constrs_4' fileset properties
set obj [get_filesets constrs_4]
set_property -name "target_constrs_file" -value "[get_files *new/constrain_4.xdc]" -objects $obj
set_property -name "target_ucf" -value "[get_files *new/constrain_4.xdc]" -objects $obj

# Create 'constrs_5' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_5] ""]} {
  create_fileset -constrset constrs_5
}

# Set 'constrs_5' fileset object
set obj [get_filesets constrs_5]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/PCIeMEM.srcs/constrs_5/new/design_top.xdc"]"
set file_imported [import_files -fileset constrs_5 [list $file]]
set file "new/design_top.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_5] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/PCIeMEM.srcs/constrs_5/new/constrain-v1.xdc"]"
set file_imported [import_files -fileset constrs_5 [list $file]]
set file "new/constrain-v1.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_5] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/PCIeMEM.srcs/constrs_5/new/clock.xdc"]"
set file_imported [import_files -fileset constrs_5 [list $file]]
set file "new/clock.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_5] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Set 'constrs_5' fileset properties
set obj [get_filesets constrs_5]
set_property -name "target_constrs_file" -value "[get_files *new/constrain-v1.xdc]" -objects $obj
set_property -name "target_ucf" -value "[get_files *new/constrain-v1.xdc]" -objects $obj

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Empty (no sources present)

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property -name "top" -value "design_1_wrapper" -objects $obj
set_property -name "top_lib" -value "xil_defaultlib" -objects $obj

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
    create_run -name synth_1 -part xcvu9p-flga2104-2L-e -flow {Vivado Synthesis 2018} -strategy "Vivado Synthesis Defaults" -report_strategy {No Reports} -constrset constrs_5
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2018" [get_runs synth_1]
}
set obj [get_runs synth_1]
set_property set_report_strategy_name 1 $obj
set_property report_strategy {Vivado Synthesis Default Reports} $obj
set_property set_report_strategy_name 0 $obj
# Create 'synth_1_synth_report_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs synth_1] synth_1_synth_report_utilization_0] "" ] } {
  create_report_config -report_name synth_1_synth_report_utilization_0 -report_type report_utilization:1.0 -steps synth_design -runs synth_1
}
set obj [get_report_configs -of_objects [get_runs synth_1] synth_1_synth_report_utilization_0]
if { $obj != "" } {

}
set obj [get_runs synth_1]
set_property -name "constrset" -value "constrs_5" -objects $obj
set_property -name "strategy" -value "Vivado Synthesis Defaults" -objects $obj

# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
    create_run -name impl_1 -part xcvu9p-flga2104-2L-e -flow {Vivado Implementation 2018} -strategy "Vivado Implementation Defaults" -report_strategy {No Reports} -constrset constrs_5 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2018" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property set_report_strategy_name 1 $obj
set_property report_strategy {Vivado Implementation Default Reports} $obj
set_property set_report_strategy_name 0 $obj
# Create 'impl_1_init_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_init_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_init_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps init_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_init_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_opt_report_drc_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_drc_0] "" ] } {
  create_report_config -report_name impl_1_opt_report_drc_0 -report_type report_drc:1.0 -steps opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_drc_0]
if { $obj != "" } {

}
# Create 'impl_1_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_power_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_power_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_power_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps power_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_power_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_place_report_io_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_io_0] "" ] } {
  create_report_config -report_name impl_1_place_report_io_0 -report_type report_io:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_io_0]
if { $obj != "" } {

}
# Create 'impl_1_place_report_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_utilization_0] "" ] } {
  create_report_config -report_name impl_1_place_report_utilization_0 -report_type report_utilization:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_utilization_0]
if { $obj != "" } {

}
# Create 'impl_1_place_report_control_sets_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_control_sets_0] "" ] } {
  create_report_config -report_name impl_1_place_report_control_sets_0 -report_type report_control_sets:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_control_sets_0]
if { $obj != "" } {

}
# Create 'impl_1_place_report_incremental_reuse_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_0] "" ] } {
  create_report_config -report_name impl_1_place_report_incremental_reuse_0 -report_type report_incremental_reuse:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_place_report_incremental_reuse_1' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_1] "" ] } {
  create_report_config -report_name impl_1_place_report_incremental_reuse_1 -report_type report_incremental_reuse:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_1]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_place_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_place_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_post_place_power_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_post_place_power_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_post_place_power_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps post_place_power_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_post_place_power_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_phys_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_phys_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_phys_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps phys_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_phys_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_route_report_drc_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_drc_0] "" ] } {
  create_report_config -report_name impl_1_route_report_drc_0 -report_type report_drc:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_drc_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_methodology_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_methodology_0] "" ] } {
  create_report_config -report_name impl_1_route_report_methodology_0 -report_type report_methodology:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_methodology_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_power_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_power_0] "" ] } {
  create_report_config -report_name impl_1_route_report_power_0 -report_type report_power:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_power_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_route_status_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_route_status_0] "" ] } {
  create_report_config -report_name impl_1_route_report_route_status_0 -report_type report_route_status:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_route_status_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_route_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_timing_summary_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_incremental_reuse_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_incremental_reuse_0] "" ] } {
  create_report_config -report_name impl_1_route_report_incremental_reuse_0 -report_type report_incremental_reuse:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_incremental_reuse_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_clock_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_clock_utilization_0] "" ] } {
  create_report_config -report_name impl_1_route_report_clock_utilization_0 -report_type report_clock_utilization:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_clock_utilization_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_bus_skew_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_bus_skew_0] "" ] } {
  create_report_config -report_name impl_1_route_report_bus_skew_0 -report_type report_bus_skew:1.1 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_bus_skew_0]
if { $obj != "" } {

}
# Create 'impl_1_post_route_phys_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_post_route_phys_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps post_route_phys_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_timing_summary_0]
if { $obj != "" } {

}
# Create 'impl_1_post_route_phys_opt_report_bus_skew_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_bus_skew_0] "" ] } {
  create_report_config -report_name impl_1_post_route_phys_opt_report_bus_skew_0 -report_type report_bus_skew:1.1 -steps post_route_phys_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_bus_skew_0]
if { $obj != "" } {

}
set obj [get_runs impl_1]
set_property -name "constrset" -value "constrs_5" -objects $obj
set_property -name "strategy" -value "Vivado Implementation Defaults" -objects $obj
set_property -name "steps.place_design.args.directive" -value "Explore" -objects $obj
set_property -name "steps.phys_opt_design.is_enabled" -value "1" -objects $obj
set_property -name "steps.phys_opt_design.args.directive" -value "Explore" -objects $obj
set_property -name "steps.route_design.args.directive" -value "Explore" -objects $obj
set_property -name "steps.post_route_phys_opt_design.is_enabled" -value "1" -objects $obj
set_property -name "steps.write_bitstream.args.readback_file" -value "0" -objects $obj
set_property -name "steps.write_bitstream.args.verbose" -value "0" -objects $obj

# set the current impl run
current_run -implementation [get_runs impl_1]

puts "INFO: Project created:${_xil_proj_name_}"

