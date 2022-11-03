proc create_ipi_design { offsetfile design_name } {
	create_bd_design $design_name
	open_bd_design $design_name

	# Create Clock and Reset Ports
	set ACLK [ create_bd_port -dir I -type clk ACLK ]
	set_property -dict [ list CONFIG.FREQ_HZ {100000000} CONFIG.PHASE {0.000} CONFIG.CLK_DOMAIN "${design_name}_ACLK" ] $ACLK
	set ARESETN [ create_bd_port -dir I -type rst ARESETN ]
	set_property -dict [ list CONFIG.POLARITY {ACTIVE_LOW}  ] $ARESETN
	set_property CONFIG.ASSOCIATED_RESET ARESETN $ACLK

	# Create instance: memop_scheduler_0, and set properties
	set memop_scheduler_0 [ create_bd_cell -type ip -vlnv user.org:user:memop_scheduler:1.0 memop_scheduler_0]

	# Create instance: master_0, and set properties
	set master_0 [ create_bd_cell -type ip -vlnv  xilinx.com:ip:axi_vip master_0]
	set_property -dict [ list CONFIG.PROTOCOL {AXI4LITE} CONFIG.INTERFACE_MODE {MASTER} ] $master_0

	# Create interface connections
	connect_bd_intf_net [get_bd_intf_pins master_0/M_AXI ] [get_bd_intf_pins memop_scheduler_0/S00_AXI]

	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins master_0/ACLK] [get_bd_pins memop_scheduler_0/S00_AXI_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins master_0/ARESETN] [get_bd_pins memop_scheduler_0/S00_AXI_ARESETN]

	# Create External ports
	set M00_AXI_INIT_AXI_TXN [ create_bd_port -dir I M00_AXI_INIT_AXI_TXN ]
	set M00_AXI_ERROR [ create_bd_port -dir O M00_AXI_ERROR ]
	set M00_AXI_TXN_DONE [ create_bd_port -dir O M00_AXI_TXN_DONE ]

	# Create instance: slave_0, and set properties
	set slave_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_0]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4LITE}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_0

connect_bd_intf_net [get_bd_intf_pins slave_0/S_AXI ] [get_bd_intf_pins memop_scheduler_0/M00_AXI]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_0/ACLK] [get_bd_pins memop_scheduler_0/M00_AXI_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_0/ARESETN] [get_bd_pins memop_scheduler_0/M00_AXI_ARESETN]
	connect_bd_net -net init_axi_txn_00 [get_bd_ports M00_AXI_INIT_AXI_TXN] [get_bd_pins memop_scheduler_0/M00_AXI_INIT_AXI_TXN]
	connect_bd_net -net error_00 [get_bd_ports M00_AXI_ERROR] [get_bd_pins memop_scheduler_0/M00_AXI_ERROR]
	connect_bd_net -net txn_done_00 [get_bd_ports M00_AXI_TXN_DONE] [get_bd_pins memop_scheduler_0/M00_AXI_TXN_DONE]

	# Create External ports
	set M01_AXI_INIT_AXI_TXN [ create_bd_port -dir I M01_AXI_INIT_AXI_TXN ]
	set M01_AXI_ERROR [ create_bd_port -dir O M01_AXI_ERROR ]
	set M01_AXI_TXN_DONE [ create_bd_port -dir O M01_AXI_TXN_DONE ]

	# Create instance: slave_1, and set properties
	set slave_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_1]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4LITE}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_1

connect_bd_intf_net [get_bd_intf_pins slave_1/S_AXI ] [get_bd_intf_pins memop_scheduler_0/M01_AXI]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_1/ACLK] [get_bd_pins memop_scheduler_0/M01_AXI_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_1/ARESETN] [get_bd_pins memop_scheduler_0/M01_AXI_ARESETN]
	connect_bd_net -net init_axi_txn_11 [get_bd_ports M01_AXI_INIT_AXI_TXN] [get_bd_pins memop_scheduler_0/M01_AXI_INIT_AXI_TXN]
	connect_bd_net -net error_11 [get_bd_ports M01_AXI_ERROR] [get_bd_pins memop_scheduler_0/M01_AXI_ERROR]
	connect_bd_net -net txn_done_11 [get_bd_ports M01_AXI_TXN_DONE] [get_bd_pins memop_scheduler_0/M01_AXI_TXN_DONE]

	# Create External ports
	set M02_AXI_INIT_AXI_TXN [ create_bd_port -dir I M02_AXI_INIT_AXI_TXN ]
	set M02_AXI_ERROR [ create_bd_port -dir O M02_AXI_ERROR ]
	set M02_AXI_TXN_DONE [ create_bd_port -dir O M02_AXI_TXN_DONE ]

	# Create instance: slave_2, and set properties
	set slave_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_2]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4LITE}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_2

connect_bd_intf_net [get_bd_intf_pins slave_2/S_AXI ] [get_bd_intf_pins memop_scheduler_0/M02_AXI]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_2/ACLK] [get_bd_pins memop_scheduler_0/M02_AXI_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_2/ARESETN] [get_bd_pins memop_scheduler_0/M02_AXI_ARESETN]
	connect_bd_net -net init_axi_txn_22 [get_bd_ports M02_AXI_INIT_AXI_TXN] [get_bd_pins memop_scheduler_0/M02_AXI_INIT_AXI_TXN]
	connect_bd_net -net error_22 [get_bd_ports M02_AXI_ERROR] [get_bd_pins memop_scheduler_0/M02_AXI_ERROR]
	connect_bd_net -net txn_done_22 [get_bd_ports M02_AXI_TXN_DONE] [get_bd_pins memop_scheduler_0/M02_AXI_TXN_DONE]

	# Create External ports
	set M03_AXI_INIT_AXI_TXN [ create_bd_port -dir I M03_AXI_INIT_AXI_TXN ]
	set M03_AXI_ERROR [ create_bd_port -dir O M03_AXI_ERROR ]
	set M03_AXI_TXN_DONE [ create_bd_port -dir O M03_AXI_TXN_DONE ]

	# Create instance: slave_3, and set properties
	set slave_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_3]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4LITE}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_3

connect_bd_intf_net [get_bd_intf_pins slave_3/S_AXI ] [get_bd_intf_pins memop_scheduler_0/M03_AXI]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_3/ACLK] [get_bd_pins memop_scheduler_0/M03_AXI_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_3/ARESETN] [get_bd_pins memop_scheduler_0/M03_AXI_ARESETN]
	connect_bd_net -net init_axi_txn_33 [get_bd_ports M03_AXI_INIT_AXI_TXN] [get_bd_pins memop_scheduler_0/M03_AXI_INIT_AXI_TXN]
	connect_bd_net -net error_33 [get_bd_ports M03_AXI_ERROR] [get_bd_pins memop_scheduler_0/M03_AXI_ERROR]
	connect_bd_net -net txn_done_33 [get_bd_ports M03_AXI_TXN_DONE] [get_bd_pins memop_scheduler_0/M03_AXI_TXN_DONE]

	# Create External ports
	set M04_AXI_INIT_AXI_TXN [ create_bd_port -dir I M04_AXI_INIT_AXI_TXN ]
	set M04_AXI_ERROR [ create_bd_port -dir O M04_AXI_ERROR ]
	set M04_AXI_TXN_DONE [ create_bd_port -dir O M04_AXI_TXN_DONE ]

	# Create instance: slave_4, and set properties
	set slave_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_4]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4LITE}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_4

connect_bd_intf_net [get_bd_intf_pins slave_4/S_AXI ] [get_bd_intf_pins memop_scheduler_0/M04_AXI]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_4/ACLK] [get_bd_pins memop_scheduler_0/M04_AXI_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_4/ARESETN] [get_bd_pins memop_scheduler_0/M04_AXI_ARESETN]
	connect_bd_net -net init_axi_txn_44 [get_bd_ports M04_AXI_INIT_AXI_TXN] [get_bd_pins memop_scheduler_0/M04_AXI_INIT_AXI_TXN]
	connect_bd_net -net error_44 [get_bd_ports M04_AXI_ERROR] [get_bd_pins memop_scheduler_0/M04_AXI_ERROR]
	connect_bd_net -net txn_done_44 [get_bd_ports M04_AXI_TXN_DONE] [get_bd_pins memop_scheduler_0/M04_AXI_TXN_DONE]

	# Create External ports
	set M05_AXI_INIT_AXI_TXN [ create_bd_port -dir I M05_AXI_INIT_AXI_TXN ]
	set M05_AXI_ERROR [ create_bd_port -dir O M05_AXI_ERROR ]
	set M05_AXI_TXN_DONE [ create_bd_port -dir O M05_AXI_TXN_DONE ]

	# Create instance: slave_5, and set properties
	set slave_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_5]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4LITE}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_5

connect_bd_intf_net [get_bd_intf_pins slave_5/S_AXI ] [get_bd_intf_pins memop_scheduler_0/M05_AXI]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_5/ACLK] [get_bd_pins memop_scheduler_0/M05_AXI_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_5/ARESETN] [get_bd_pins memop_scheduler_0/M05_AXI_ARESETN]
	connect_bd_net -net init_axi_txn_55 [get_bd_ports M05_AXI_INIT_AXI_TXN] [get_bd_pins memop_scheduler_0/M05_AXI_INIT_AXI_TXN]
	connect_bd_net -net error_55 [get_bd_ports M05_AXI_ERROR] [get_bd_pins memop_scheduler_0/M05_AXI_ERROR]
	connect_bd_net -net txn_done_55 [get_bd_ports M05_AXI_TXN_DONE] [get_bd_pins memop_scheduler_0/M05_AXI_TXN_DONE]

	# Create External ports
	set M06_AXI_INIT_AXI_TXN [ create_bd_port -dir I M06_AXI_INIT_AXI_TXN ]
	set M06_AXI_ERROR [ create_bd_port -dir O M06_AXI_ERROR ]
	set M06_AXI_TXN_DONE [ create_bd_port -dir O M06_AXI_TXN_DONE ]

	# Create instance: slave_6, and set properties
	set slave_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_6]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4LITE}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_6

connect_bd_intf_net [get_bd_intf_pins slave_6/S_AXI ] [get_bd_intf_pins memop_scheduler_0/M06_AXI]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_6/ACLK] [get_bd_pins memop_scheduler_0/M06_AXI_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_6/ARESETN] [get_bd_pins memop_scheduler_0/M06_AXI_ARESETN]
	connect_bd_net -net init_axi_txn_66 [get_bd_ports M06_AXI_INIT_AXI_TXN] [get_bd_pins memop_scheduler_0/M06_AXI_INIT_AXI_TXN]
	connect_bd_net -net error_66 [get_bd_ports M06_AXI_ERROR] [get_bd_pins memop_scheduler_0/M06_AXI_ERROR]
	connect_bd_net -net txn_done_66 [get_bd_ports M06_AXI_TXN_DONE] [get_bd_pins memop_scheduler_0/M06_AXI_TXN_DONE]

	# Create External ports
	set M07_AXI_INIT_AXI_TXN [ create_bd_port -dir I M07_AXI_INIT_AXI_TXN ]
	set M07_AXI_ERROR [ create_bd_port -dir O M07_AXI_ERROR ]
	set M07_AXI_TXN_DONE [ create_bd_port -dir O M07_AXI_TXN_DONE ]

	# Create instance: slave_7, and set properties
	set slave_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip slave_7]
	set_property -dict [ list  CONFIG.PROTOCOL {AXI4LITE}  CONFIG.INTERFACE_MODE {SLAVE} ] $slave_7

connect_bd_intf_net [get_bd_intf_pins slave_7/S_AXI ] [get_bd_intf_pins memop_scheduler_0/M07_AXI]
	# Create port connections
	connect_bd_net -net aclk_net [get_bd_ports ACLK] [get_bd_pins slave_7/ACLK] [get_bd_pins memop_scheduler_0/M07_AXI_ACLK]
	connect_bd_net -net aresetn_net [get_bd_ports ARESETN] [get_bd_pins slave_7/ARESETN] [get_bd_pins memop_scheduler_0/M07_AXI_ARESETN]
	connect_bd_net -net init_axi_txn_77 [get_bd_ports M07_AXI_INIT_AXI_TXN] [get_bd_pins memop_scheduler_0/M07_AXI_INIT_AXI_TXN]
	connect_bd_net -net error_77 [get_bd_ports M07_AXI_ERROR] [get_bd_pins memop_scheduler_0/M07_AXI_ERROR]
	connect_bd_net -net txn_done_77 [get_bd_ports M07_AXI_TXN_DONE] [get_bd_pins memop_scheduler_0/M07_AXI_TXN_DONE]
set_property target_simulator XSim [current_project]
set_property -name {xsim.simulate.runtime} -value {100ms} -objects [get_filesets sim_1]

	# Auto assign address
	assign_bd_address

	# Copy all address to interface_address.vh file
	set bd_path [file dirname [get_property NAME [get_files ${design_name}.bd]]]
	upvar 1 $offsetfile offset_file
	set offset_file "${bd_path}/memop_scheduler_v1_0_tb_include.svh"
	set fp [open $offset_file "w"]
	puts $fp "`ifndef memop_scheduler_v1_0_tb_include_vh_"
	puts $fp "`define memop_scheduler_v1_0_tb_include_vh_\n"
	puts $fp "//Configuration current bd names"
	puts $fp "`define BD_NAME ${design_name}"
	puts $fp "`define BD_INST_NAME ${design_name}_i"
	puts $fp "`define BD_WRAPPER ${design_name}_wrapper\n"
	puts $fp "//Configuration address parameters"

	puts $fp "`endif"
	close $fp
}

set ip_path [file dirname [file normalize [get_property XML_FILE_NAME [ipx::get_cores user.org:user:memop_scheduler:1.0]]]]
set test_bench_file ${ip_path}/example_designs/bfm_design/memop_scheduler_v1_0_tb.sv
set interface_address_vh_file ""

# Set IP Repository and Update IP Catalogue 
set repo_paths [get_property ip_repo_paths [current_fileset]] 
if { [lsearch -exact -nocase $repo_paths $ip_path ] == -1 } {
	set_property ip_repo_paths "$ip_path [get_property ip_repo_paths [current_fileset]]" [current_fileset]
	update_ip_catalog
}

set design_name ""
set all_bd {}
set all_bd_files [get_files *.bd -quiet]
foreach file $all_bd_files {
set file_name [string range $file [expr {[string last "/" $file] + 1}] end]
set bd_name [string range $file_name 0 [expr {[string last "." $file_name] -1}]]
lappend all_bd $bd_name
}

for { set i 1 } { 1 } { incr i } {
	set design_name "memop_scheduler_v1_0_bfm_${i}"
	if { [lsearch -exact -nocase $all_bd $design_name ] == -1 } {
		break
	}
}

create_ipi_design interface_address_vh_file ${design_name}
validate_bd_design

set wrapper_file [make_wrapper -files [get_files ${design_name}.bd] -top -force]
import_files -force -norecurse $wrapper_file

set_property SOURCE_SET sources_1 [get_filesets sim_1]
import_files -fileset sim_1 -norecurse -force $test_bench_file
remove_files -quiet -fileset sim_1 memop_scheduler_v1_0_tb_include.vh
import_files -fileset sim_1 -norecurse -force $interface_address_vh_file
set_property top memop_scheduler_v1_0_tb [get_filesets sim_1]
set_property top_lib {} [get_filesets sim_1]
set_property top_file {} [get_filesets sim_1]
launch_simulation -simset sim_1 -mode behavioral