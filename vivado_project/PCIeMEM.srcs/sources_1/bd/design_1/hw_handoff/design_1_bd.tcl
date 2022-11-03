
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# addrmonitor, gate_axi

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcvu9p-flga2104-2L-e
   set_property BOARD_PART xilinx.com:vcu118:part0:2.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set ddr4_sdram_c1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddr4_sdram_c1 ]
  set default_250mhz_clk1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 default_250mhz_clk1 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
   ] $default_250mhz_clk1
  set pci_express_x4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pci_express_x4 ]
  set pcie_refclk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 pcie_refclk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   ] $pcie_refclk
  set user_si570_clock [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 user_si570_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   ] $user_si570_clock

  # Create ports
  set pcie_perstn [ create_bd_port -dir I -type rst pcie_perstn ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $pcie_perstn
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset

  # Create instance: AXI_Lite_slave_plug_0, and set properties
  set AXI_Lite_slave_plug_0 [ create_bd_cell -type ip -vlnv user.org:user:AXI_Lite_slave_plug:1.0 AXI_Lite_slave_plug_0 ]

  # Create instance: addrmonitor_0, and set properties
  set block_name addrmonitor
  set block_cell_name addrmonitor_0
  if { [catch {set addrmonitor_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $addrmonitor_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_data_fifo_0, and set properties
  set axi_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_data_fifo:2.1 axi_data_fifo_0 ]
  set_property -dict [ list \
   CONFIG.READ_FIFO_DELAY {1} \
   CONFIG.READ_FIFO_DEPTH {512} \
   CONFIG.WRITE_FIFO_DELAY {1} \
   CONFIG.WRITE_FIFO_DEPTH {512} \
 ] $axi_data_fifo_0

  # Create instance: axi_data_fifo_1, and set properties
  set axi_data_fifo_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_data_fifo:2.1 axi_data_fifo_1 ]
  set_property -dict [ list \
   CONFIG.READ_FIFO_DELAY {1} \
   CONFIG.READ_FIFO_DEPTH {512} \
   CONFIG.WRITE_FIFO_DELAY {1} \
   CONFIG.WRITE_FIFO_DEPTH {512} \
 ] $axi_data_fifo_1

  # Create instance: axi_data_fifo_2, and set properties
  set axi_data_fifo_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_data_fifo:2.1 axi_data_fifo_2 ]
  set_property -dict [ list \
   CONFIG.READ_FIFO_DELAY {1} \
   CONFIG.READ_FIFO_DEPTH {512} \
   CONFIG.WRITE_FIFO_DELAY {1} \
   CONFIG.WRITE_FIFO_DEPTH {512} \
 ] $axi_data_fifo_2

  # Create instance: axi_data_fifo_3, and set properties
  set axi_data_fifo_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_data_fifo:2.1 axi_data_fifo_3 ]
  set_property -dict [ list \
   CONFIG.READ_FIFO_DELAY {1} \
   CONFIG.READ_FIFO_DEPTH {512} \
   CONFIG.WRITE_FIFO_DELAY {1} \
   CONFIG.WRITE_FIFO_DEPTH {512} \
 ] $axi_data_fifo_3

  # Create instance: axi_data_fifo_4, and set properties
  set axi_data_fifo_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_data_fifo:2.1 axi_data_fifo_4 ]
  set_property -dict [ list \
   CONFIG.READ_FIFO_DELAY {1} \
   CONFIG.READ_FIFO_DEPTH {512} \
   CONFIG.WRITE_FIFO_DELAY {1} \
   CONFIG.WRITE_FIFO_DEPTH {512} \
 ] $axi_data_fifo_4

  # Create instance: axi_data_fifo_5, and set properties
  set axi_data_fifo_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_data_fifo:2.1 axi_data_fifo_5 ]
  set_property -dict [ list \
   CONFIG.READ_FIFO_DELAY {1} \
   CONFIG.READ_FIFO_DEPTH {512} \
   CONFIG.WRITE_FIFO_DELAY {1} \
   CONFIG.WRITE_FIFO_DEPTH {512} \
 ] $axi_data_fifo_5

  # Create instance: axi_data_fifo_6, and set properties
  set axi_data_fifo_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_data_fifo:2.1 axi_data_fifo_6 ]
  set_property -dict [ list \
   CONFIG.READ_FIFO_DELAY {1} \
   CONFIG.READ_FIFO_DEPTH {512} \
   CONFIG.WRITE_FIFO_DELAY {1} \
   CONFIG.WRITE_FIFO_DEPTH {512} \
 ] $axi_data_fifo_6

  # Create instance: axi_data_fifo_7, and set properties
  set axi_data_fifo_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_data_fifo:2.1 axi_data_fifo_7 ]
  set_property -dict [ list \
   CONFIG.READ_FIFO_DELAY {1} \
   CONFIG.READ_FIFO_DEPTH {512} \
   CONFIG.WRITE_FIFO_DELAY {1} \
   CONFIG.WRITE_FIFO_DEPTH {512} \
 ] $axi_data_fifo_7

  # Create instance: axi_data_fifo_8, and set properties
  set axi_data_fifo_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_data_fifo:2.1 axi_data_fifo_8 ]
  set_property -dict [ list \
   CONFIG.READ_FIFO_DELAY {1} \
   CONFIG.READ_FIFO_DEPTH {512} \
   CONFIG.WRITE_FIFO_DELAY {1} \
   CONFIG.WRITE_FIFO_DEPTH {512} \
 ] $axi_data_fifo_8

  # Create instance: axi_data_fifo_9, and set properties
  set axi_data_fifo_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_data_fifo:2.1 axi_data_fifo_9 ]
  set_property -dict [ list \
   CONFIG.READ_FIFO_DELAY {1} \
   CONFIG.READ_FIFO_DEPTH {512} \
   CONFIG.WRITE_FIFO_DELAY {1} \
   CONFIG.WRITE_FIFO_DEPTH {512} \
 ] $axi_data_fifo_9

  # Create instance: axi_data_fifo_10, and set properties
  set axi_data_fifo_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_data_fifo:2.1 axi_data_fifo_10 ]
  set_property -dict [ list \
   CONFIG.READ_FIFO_DELAY {1} \
   CONFIG.READ_FIFO_DEPTH {512} \
   CONFIG.WRITE_FIFO_DELAY {1} \
   CONFIG.WRITE_FIFO_DEPTH {512} \
 ] $axi_data_fifo_10

  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [ list \
   CONFIG.c_include_sg {0} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {26} \
 ] $axi_dma_0

  # Create instance: axi_dma_1, and set properties
  set axi_dma_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_1 ]
  set_property -dict [ list \
   CONFIG.c_include_sg {0} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {26} \
 ] $axi_dma_1

  # Create instance: axi_dma_2, and set properties
  set axi_dma_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_2 ]
  set_property -dict [ list \
   CONFIG.c_include_sg {0} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {26} \
 ] $axi_dma_2

  # Create instance: axi_dma_3, and set properties
  set axi_dma_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_3 ]
  set_property -dict [ list \
   CONFIG.c_include_sg {0} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {26} \
 ] $axi_dma_3

  # Create instance: axi_dma_4, and set properties
  set axi_dma_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_4 ]
  set_property -dict [ list \
   CONFIG.c_include_sg {0} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {26} \
 ] $axi_dma_4

  # Create instance: axi_dma_5, and set properties
  set axi_dma_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_5 ]
  set_property -dict [ list \
   CONFIG.c_include_sg {0} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {26} \
 ] $axi_dma_5

  # Create instance: axi_dma_6, and set properties
  set axi_dma_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_6 ]
  set_property -dict [ list \
   CONFIG.c_include_sg {0} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {26} \
 ] $axi_dma_6

  # Create instance: axi_dma_7, and set properties
  set axi_dma_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_7 ]
  set_property -dict [ list \
   CONFIG.c_include_sg {0} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {26} \
 ] $axi_dma_7

  # Create instance: axi_register_slice_0, and set properties
  set axi_register_slice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_0 ]

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
   CONFIG.NUM_CLKS {4} \
   CONFIG.NUM_MI {3} \
   CONFIG.NUM_SI {15} \
 ] $axi_smc

  # Create instance: axis_data_fifo_0, and set properties
  set axis_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_0 ]

  # Create instance: axis_data_fifo_1, and set properties
  set axis_data_fifo_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_1 ]

  # Create instance: axis_data_fifo_2, and set properties
  set axis_data_fifo_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_2 ]

  # Create instance: axis_data_fifo_3, and set properties
  set axis_data_fifo_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_3 ]

  # Create instance: axis_data_fifo_4, and set properties
  set axis_data_fifo_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_4 ]

  # Create instance: axis_data_fifo_5, and set properties
  set axis_data_fifo_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_5 ]

  # Create instance: axis_data_fifo_6, and set properties
  set axis_data_fifo_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_6 ]

  # Create instance: axis_data_fifo_7, and set properties
  set axis_data_fifo_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_7 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {90.547} \
   CONFIG.CLKOUT1_PHASE_ERROR {83.183} \
   CONFIG.CLKOUT1_REQUESTED_DUTY_CYCLE {50} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {250} \
   CONFIG.CLKOUT2_JITTER {170.541} \
   CONFIG.CLKOUT2_PHASE_ERROR {83.183} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {10} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {user_si570_clock} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {8.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {5.000} \
   CONFIG.MMCM_CLKOUT0_DUTY_CYCLE {0.500} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {125} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Create instance: ddr4_0, and set properties
  set ddr4_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4:2.2 ddr4_0 ]
  set_property -dict [ list \
   CONFIG.ADDN_UI_CLKOUT1_FREQ_HZ {250} \
   CONFIG.ADDN_UI_CLKOUT2_FREQ_HZ {None} \
   CONFIG.C0_CLOCK_BOARD_INTERFACE {default_250mhz_clk1} \
   CONFIG.C0_DDR4_BOARD_INTERFACE {ddr4_sdram_c1} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
 ] $ddr4_0

  # Create instance: gate_axi_0, and set properties
  set block_name gate_axi
  set block_cell_name gate_axi_0
  if { [catch {set gate_axi_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $gate_axi_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {7} \
   CONFIG.C_PROBE0_WIDTH {3} \
   CONFIG.C_PROBE1_WIDTH {32} \
   CONFIG.C_PROBE2_WIDTH {64} \
   CONFIG.C_PROBE3_WIDTH {64} \
   CONFIG.C_PROBE4_WIDTH {6} \
   CONFIG.C_PROBE5_WIDTH {1} \
 ] $ila_0

  # Create instance: ila_1, and set properties
  set ila_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_1 ]
  set_property -dict [ list \
   CONFIG.C_NUM_OF_PROBES {9} \
   CONFIG.C_SLOT_0_AXI_PROTOCOL {AXI4S} \
 ] $ila_1

  # Create instance: ila_2, and set properties
  set ila_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_2 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {10} \
   CONFIG.C_PROBE0_WIDTH {5} \
   CONFIG.C_PROBE10_WIDTH {1} \
   CONFIG.C_PROBE11_WIDTH {1} \
   CONFIG.C_PROBE1_WIDTH {5} \
   CONFIG.C_PROBE2_WIDTH {4} \
   CONFIG.C_PROBE3_WIDTH {8} \
   CONFIG.C_PROBE4_WIDTH {1} \
   CONFIG.C_PROBE5_WIDTH {1} \
   CONFIG.C_PROBE6_WIDTH {2} \
   CONFIG.C_PROBE7_WIDTH {1} \
   CONFIG.C_PROBE8_WIDTH {8} \
   CONFIG.C_PROBE9_WIDTH {1} \
 ] $ila_2

  # Create instance: ila_3, and set properties
  set ila_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_3 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {6} \
   CONFIG.C_PROBE2_WIDTH {64} \
   CONFIG.C_PROBE3_WIDTH {64} \
   CONFIG.C_PROBE4_WIDTH {64} \
   CONFIG.C_PROBE5_WIDTH {32} \
 ] $ila_3

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

  # Create instance: memops_scheduler_1, and set properties
  set memops_scheduler_1 [ create_bd_cell -type ip -vlnv user.org:user:memops_scheduler:1.1 memops_scheduler_1 ]

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: rst_ddr4_0_300M, and set properties
  set rst_ddr4_0_300M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ddr4_0_300M ]

  # Create instance: rst_ddr4_0_300M_1, and set properties
  set rst_ddr4_0_300M_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ddr4_0_300M_1 ]

  # Create instance: rst_ddr4_0_300M_2, and set properties
  set rst_ddr4_0_300M_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ddr4_0_300M_2 ]

  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_CLKS {4} \
   CONFIG.NUM_SI {10} \
 ] $smartconnect_0

  # Create instance: smartconnect_1, and set properties
  set smartconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_1 ]
  set_property -dict [ list \
   CONFIG.NUM_CLKS {2} \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_1

  # Create instance: undolog_0, and set properties
  set undolog_0 [ create_bd_cell -type ip -vlnv user.org:user:undolog:2.1 undolog_0 ]
  set_property -dict [ list \
   CONFIG.C_M00_AXI_START_DATA_VALUE {0x00000000} \
   CONFIG.C_M00_AXI_TARGET_SLAVE_BASE_ADDR {0x40000000} \
   CONFIG.C_M01_AXI_START_DATA_VALUE {0x00000000} \
   CONFIG.C_M01_AXI_TARGET_SLAVE_BASE_ADDR {0x40000000} \
   CONFIG.C_M02_AXI_START_DATA_VALUE {0x00000000} \
   CONFIG.C_M02_AXI_TARGET_SLAVE_BASE_ADDR {0x00000000} \
 ] $undolog_0

  # Create instance: undolog_1, and set properties
  set undolog_1 [ create_bd_cell -type ip -vlnv user.org:user:undolog:2.1 undolog_1 ]
  set_property -dict [ list \
   CONFIG.C_M00_AXI_START_DATA_VALUE {0x00000000} \
   CONFIG.C_M01_AXI_START_DATA_VALUE {0x00000000} \
   CONFIG.C_M02_AXI_START_DATA_VALUE {0x00000000} \
   CONFIG.C_M02_AXI_TARGET_SLAVE_BASE_ADDR {0x00000000} \
 ] $undolog_1

  # Create instance: undolog_2, and set properties
  set undolog_2 [ create_bd_cell -type ip -vlnv user.org:user:undolog:2.1 undolog_2 ]
  set_property -dict [ list \
   CONFIG.C_M00_AXI_START_DATA_VALUE {0x00000000} \
   CONFIG.C_M01_AXI_START_DATA_VALUE {0x00000000} \
   CONFIG.C_M02_AXI_START_DATA_VALUE {0x00000000} \
   CONFIG.C_M02_AXI_TARGET_SLAVE_BASE_ADDR {0x00000000} \
 ] $undolog_2

  # Create instance: undolog_3, and set properties
  set undolog_3 [ create_bd_cell -type ip -vlnv user.org:user:undolog:2.1 undolog_3 ]
  set_property -dict [ list \
   CONFIG.C_M00_AXI_START_DATA_VALUE {0x00000000} \
   CONFIG.C_M01_AXI_START_DATA_VALUE {0x00000000} \
   CONFIG.C_M02_AXI_START_DATA_VALUE {0x00000000} \
   CONFIG.C_M02_AXI_TARGET_SLAVE_BASE_ADDR {0x00000000} \
 ] $undolog_3

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDSGTE} \
   CONFIG.DIFF_CLK_IN_BOARD_INTERFACE {pcie_refclk} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $util_ds_buf_0

  # Create instance: xdma_0, and set properties
  set xdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xdma:4.1 xdma_0 ]
  set_property -dict [ list \
   CONFIG.PCIE_BOARD_INTERFACE {pci_express_x4} \
   CONFIG.PF0_DEVICE_ID_mqdma {9024} \
   CONFIG.PF2_DEVICE_ID_mqdma {9024} \
   CONFIG.PF3_DEVICE_ID_mqdma {9024} \
   CONFIG.SYS_RST_N_BOARD_INTERFACE {pcie_perstn} \
   CONFIG.axi_addr_width {32} \
   CONFIG.axisten_freq {250} \
   CONFIG.bar_indicator {BAR_1:0} \
   CONFIG.en_axi_slave_if {false} \
   CONFIG.functional_mode {AXI_Bridge} \
   CONFIG.pciebar2axibar_0 {0x44A10000} \
   CONFIG.pciebar2axibar_1 {0x0000000000000000} \
   CONFIG.pciebar2axibar_2 {0x80000000} \
   CONFIG.pf0_bar0_64bit {true} \
   CONFIG.pf0_bar0_prefetchable {true} \
   CONFIG.pf0_bar0_size {128} \
   CONFIG.pf0_bar1_enabled {false} \
   CONFIG.pf0_bar1_scale {Kilobytes} \
   CONFIG.pf0_bar1_size {4} \
   CONFIG.pf0_bar2_64bit {true} \
   CONFIG.pf0_bar2_enabled {true} \
   CONFIG.pf0_bar2_prefetchable {true} \
   CONFIG.pf0_bar2_scale {Gigabytes} \
   CONFIG.pf0_bar2_size {1} \
   CONFIG.pf0_bar3_enabled {false} \
   CONFIG.pf0_device_id {9024} \
   CONFIG.pf0_msix_cap_pba_bir {BAR_1:0} \
   CONFIG.pf0_msix_cap_table_bir {BAR_1:0} \
   CONFIG.pl_link_cap_max_link_speed {5.0_GT/s} \
   CONFIG.plltype {QPLL1} \
   CONFIG.xdma_axilite_slave {true} \
 ] $xdma_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_1

  # Create interface connections
  connect_bd_intf_net -intf_net axi_data_fifo_0_M_AXI [get_bd_intf_pins axi_data_fifo_0/M_AXI] [get_bd_intf_pins axi_data_fifo_1/S_AXI]
  connect_bd_intf_net -intf_net axi_data_fifo_10_M_AXI [get_bd_intf_pins axi_data_fifo_10/M_AXI] [get_bd_intf_pins axi_data_fifo_9/S_AXI]
  connect_bd_intf_net -intf_net axi_data_fifo_1_M_AXI [get_bd_intf_pins axi_data_fifo_1/M_AXI] [get_bd_intf_pins axi_data_fifo_2/S_AXI]
  connect_bd_intf_net -intf_net axi_data_fifo_2_M_AXI [get_bd_intf_pins axi_data_fifo_2/M_AXI] [get_bd_intf_pins axi_data_fifo_3/S_AXI]
  connect_bd_intf_net -intf_net axi_data_fifo_3_M_AXI [get_bd_intf_pins axi_data_fifo_3/M_AXI] [get_bd_intf_pins axi_data_fifo_4/S_AXI]
  connect_bd_intf_net -intf_net axi_data_fifo_4_M_AXI [get_bd_intf_pins axi_data_fifo_4/M_AXI] [get_bd_intf_pins axi_data_fifo_5/S_AXI]
  connect_bd_intf_net -intf_net axi_data_fifo_5_M_AXI [get_bd_intf_pins axi_data_fifo_5/M_AXI] [get_bd_intf_pins axi_data_fifo_6/S_AXI]
  connect_bd_intf_net -intf_net axi_data_fifo_6_M_AXI [get_bd_intf_pins axi_data_fifo_6/M_AXI] [get_bd_intf_pins axi_data_fifo_7/S_AXI]
  connect_bd_intf_net -intf_net axi_data_fifo_7_M_AXI [get_bd_intf_pins axi_data_fifo_7/M_AXI] [get_bd_intf_pins axi_data_fifo_8/S_AXI]
  connect_bd_intf_net -intf_net axi_data_fifo_8_M_AXI [get_bd_intf_pins axi_data_fifo_10/S_AXI] [get_bd_intf_pins axi_data_fifo_8/M_AXI]
  connect_bd_intf_net -intf_net axi_data_fifo_9_M_AXI [get_bd_intf_pins axi_data_fifo_9/M_AXI] [get_bd_intf_pins smartconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_MM2S [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [get_bd_intf_pins axi_smc/S01_AXI]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_S2MM [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins axi_smc/S02_AXI]
  connect_bd_intf_net -intf_net axi_dma_1_M_AXIS_MM2S [get_bd_intf_pins axi_dma_1/M_AXIS_MM2S] [get_bd_intf_pins axis_data_fifo_1/S_AXIS]
  connect_bd_intf_net -intf_net axi_dma_1_M_AXI_MM2S [get_bd_intf_pins axi_dma_1/M_AXI_MM2S] [get_bd_intf_pins axi_smc/S04_AXI]
  connect_bd_intf_net -intf_net axi_dma_1_M_AXI_S2MM [get_bd_intf_pins axi_dma_1/M_AXI_S2MM] [get_bd_intf_pins axi_smc/S05_AXI]
  connect_bd_intf_net -intf_net axi_dma_2_M_AXIS_MM2S [get_bd_intf_pins axi_dma_2/M_AXIS_MM2S] [get_bd_intf_pins axis_data_fifo_2/S_AXIS]
  connect_bd_intf_net -intf_net axi_dma_2_M_AXI_MM2S [get_bd_intf_pins axi_dma_2/M_AXI_MM2S] [get_bd_intf_pins axi_smc/S08_AXI]
  connect_bd_intf_net -intf_net axi_dma_2_M_AXI_S2MM [get_bd_intf_pins axi_dma_2/M_AXI_S2MM] [get_bd_intf_pins axi_smc/S07_AXI]
  connect_bd_intf_net -intf_net axi_dma_3_M_AXIS_MM2S [get_bd_intf_pins axi_dma_3/M_AXIS_MM2S] [get_bd_intf_pins axis_data_fifo_3/S_AXIS]
  connect_bd_intf_net -intf_net axi_dma_3_M_AXI_MM2S [get_bd_intf_pins axi_dma_3/M_AXI_MM2S] [get_bd_intf_pins axi_smc/S10_AXI]
  connect_bd_intf_net -intf_net axi_dma_3_M_AXI_S2MM [get_bd_intf_pins axi_dma_3/M_AXI_S2MM] [get_bd_intf_pins axi_smc/S09_AXI]
  connect_bd_intf_net -intf_net axi_dma_4_M_AXI_MM2S [get_bd_intf_pins axi_dma_4/M_AXI_MM2S] [get_bd_intf_pins smartconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_dma_4_M_AXI_S2MM [get_bd_intf_pins axi_dma_4/M_AXI_S2MM] [get_bd_intf_pins smartconnect_0/S01_AXI]
  connect_bd_intf_net -intf_net axi_dma_5_M_AXIS_MM2S [get_bd_intf_pins axi_dma_5/M_AXIS_MM2S] [get_bd_intf_pins axis_data_fifo_5/S_AXIS]
  connect_bd_intf_net -intf_net axi_dma_5_M_AXI_MM2S [get_bd_intf_pins axi_dma_5/M_AXI_MM2S] [get_bd_intf_pins smartconnect_0/S02_AXI]
  connect_bd_intf_net -intf_net axi_dma_5_M_AXI_S2MM [get_bd_intf_pins axi_dma_5/M_AXI_S2MM] [get_bd_intf_pins smartconnect_0/S03_AXI]
  connect_bd_intf_net -intf_net axi_dma_6_M_AXI_MM2S [get_bd_intf_pins axi_dma_6/M_AXI_MM2S] [get_bd_intf_pins smartconnect_0/S05_AXI]
  connect_bd_intf_net -intf_net axi_dma_6_M_AXI_S2MM [get_bd_intf_pins axi_dma_6/M_AXI_S2MM] [get_bd_intf_pins smartconnect_0/S06_AXI]
  connect_bd_intf_net -intf_net axi_dma_7_M_AXIS_MM2S [get_bd_intf_pins axi_dma_7/M_AXIS_MM2S] [get_bd_intf_pins axis_data_fifo_7/S_AXIS]
  connect_bd_intf_net -intf_net axi_dma_7_M_AXI_MM2S [get_bd_intf_pins axi_dma_7/M_AXI_MM2S] [get_bd_intf_pins smartconnect_0/S08_AXI]
  connect_bd_intf_net -intf_net axi_dma_7_M_AXI_S2MM [get_bd_intf_pins axi_dma_7/M_AXI_S2MM] [get_bd_intf_pins smartconnect_0/S07_AXI]
  connect_bd_intf_net -intf_net axi_register_slice_0_M_AXI [get_bd_intf_pins axi_data_fifo_0/S_AXI] [get_bd_intf_pins axi_register_slice_0/M_AXI]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins ddr4_0/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net axi_smc_M01_AXI [get_bd_intf_pins AXI_Lite_slave_plug_0/S00_AXI] [get_bd_intf_pins axi_smc/M01_AXI]
  connect_bd_intf_net -intf_net axi_smc_M02_AXI [get_bd_intf_pins axi_smc/M02_AXI] [get_bd_intf_pins xdma_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM] [get_bd_intf_pins axis_data_fifo_0/M_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_1_M_AXIS [get_bd_intf_pins axi_dma_1/S_AXIS_S2MM] [get_bd_intf_pins axis_data_fifo_1/M_AXIS]
connect_bd_intf_net -intf_net [get_bd_intf_nets axis_data_fifo_1_M_AXIS] [get_bd_intf_pins axis_data_fifo_1/M_AXIS] [get_bd_intf_pins ila_1/SLOT_0_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_2_M_AXIS [get_bd_intf_pins axi_dma_2/S_AXIS_S2MM] [get_bd_intf_pins axis_data_fifo_2/M_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_3_M_AXIS [get_bd_intf_pins axi_dma_3/S_AXIS_S2MM] [get_bd_intf_pins axis_data_fifo_3/M_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_4_M_AXIS [get_bd_intf_pins axi_dma_4/S_AXIS_S2MM] [get_bd_intf_pins axis_data_fifo_4/M_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_5_M_AXIS [get_bd_intf_pins axi_dma_5/S_AXIS_S2MM] [get_bd_intf_pins axis_data_fifo_5/M_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_6_M_AXIS [get_bd_intf_pins axi_dma_6/S_AXIS_S2MM] [get_bd_intf_pins axis_data_fifo_6/M_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_7_M_AXIS [get_bd_intf_pins axi_dma_7/S_AXIS_S2MM] [get_bd_intf_pins axis_data_fifo_7/M_AXIS]
  connect_bd_intf_net -intf_net ddr4_0_C0_DDR4 [get_bd_intf_ports ddr4_sdram_c1] [get_bd_intf_pins ddr4_0/C0_DDR4]
  connect_bd_intf_net -intf_net default_250mhz_clk1_1 [get_bd_intf_ports default_250mhz_clk1] [get_bd_intf_pins ddr4_0/C0_SYS_CLK]
  connect_bd_intf_net -intf_net memops_scheduler_1_M00_AXI [get_bd_intf_pins memops_scheduler_1/M00_AXI] [get_bd_intf_pins undolog_0/S00_AXI]
  connect_bd_intf_net -intf_net memops_scheduler_1_M01_AXI [get_bd_intf_pins memops_scheduler_1/M01_AXI] [get_bd_intf_pins undolog_1/S00_AXI]
  connect_bd_intf_net -intf_net memops_scheduler_1_M02_AXI [get_bd_intf_pins memops_scheduler_1/M02_AXI] [get_bd_intf_pins undolog_2/S00_AXI]
  connect_bd_intf_net -intf_net memops_scheduler_1_M03_AXI [get_bd_intf_pins memops_scheduler_1/M03_AXI] [get_bd_intf_pins undolog_3/S00_AXI]
  connect_bd_intf_net -intf_net pcie_refclk_1 [get_bd_intf_ports pcie_refclk] [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_pins axi_smc/S11_AXI] [get_bd_intf_pins smartconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net smartconnect_1_M00_AXI [get_bd_intf_pins axi_smc/S00_AXI] [get_bd_intf_pins smartconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net smartconnect_1_M01_AXI [get_bd_intf_pins memops_scheduler_1/S00_AXI] [get_bd_intf_pins smartconnect_1/M01_AXI]
  connect_bd_intf_net -intf_net undolog_0_M00_AXI [get_bd_intf_pins axi_dma_0/S_AXI_LITE] [get_bd_intf_pins undolog_0/M00_AXI]
  connect_bd_intf_net -intf_net undolog_0_M01_AXI [get_bd_intf_pins axi_dma_1/S_AXI_LITE] [get_bd_intf_pins undolog_0/M01_AXI]
  connect_bd_intf_net -intf_net undolog_0_M02_AXI [get_bd_intf_pins axi_smc/S03_AXI] [get_bd_intf_pins undolog_0/M02_AXI]
  connect_bd_intf_net -intf_net undolog_1_M00_AXI [get_bd_intf_pins axi_dma_3/S_AXI_LITE] [get_bd_intf_pins undolog_1/M00_AXI]
  connect_bd_intf_net -intf_net undolog_1_M01_AXI [get_bd_intf_pins axi_dma_2/S_AXI_LITE] [get_bd_intf_pins undolog_1/M01_AXI]
  connect_bd_intf_net -intf_net undolog_1_M02_AXI [get_bd_intf_pins axi_smc/S06_AXI] [get_bd_intf_pins undolog_1/M02_AXI]
  connect_bd_intf_net -intf_net undolog_2_M00_AXI [get_bd_intf_pins axi_dma_4/S_AXI_LITE] [get_bd_intf_pins undolog_2/M00_AXI]
  connect_bd_intf_net -intf_net undolog_2_M01_AXI [get_bd_intf_pins axi_dma_5/S_AXI_LITE] [get_bd_intf_pins undolog_2/M01_AXI]
  connect_bd_intf_net -intf_net undolog_2_M02_AXI [get_bd_intf_pins smartconnect_0/S04_AXI] [get_bd_intf_pins undolog_2/M02_AXI]
  connect_bd_intf_net -intf_net undolog_3_M00_AXI [get_bd_intf_pins axi_dma_6/S_AXI_LITE] [get_bd_intf_pins undolog_3/M00_AXI]
  connect_bd_intf_net -intf_net undolog_3_M01_AXI [get_bd_intf_pins axi_dma_7/S_AXI_LITE] [get_bd_intf_pins undolog_3/M01_AXI]
  connect_bd_intf_net -intf_net undolog_3_M02_AXI [get_bd_intf_pins smartconnect_0/S09_AXI] [get_bd_intf_pins undolog_3/M02_AXI]
  connect_bd_intf_net -intf_net user_si570_clock_1 [get_bd_intf_ports user_si570_clock] [get_bd_intf_pins clk_wiz_0/CLK_IN1_D]
  connect_bd_intf_net -intf_net xdma_0_M_AXI_B [get_bd_intf_pins axi_register_slice_0/S_AXI] [get_bd_intf_pins xdma_0/M_AXI_B]
  connect_bd_intf_net -intf_net xdma_0_pcie_mgt [get_bd_intf_ports pci_express_x4] [get_bd_intf_pins xdma_0/pcie_mgt]

  # Create port connections
  connect_bd_net -net addrmonitor_0_count [get_bd_pins addrmonitor_0/count] [get_bd_pins ila_0/probe4]
  connect_bd_net -net addrmonitor_0_m00_axi_awaddr [get_bd_pins addrmonitor_0/m00_axi_awaddr] [get_bd_pins axi_register_slice_0/s_axi_awaddr] [get_bd_pins memops_scheduler_1/axi_awaddr_in]
  connect_bd_net -net addrmonitor_0_m00_axi_awvalid [get_bd_pins addrmonitor_0/m00_axi_awvalid] [get_bd_pins axi_register_slice_0/s_axi_awvalid] [get_bd_pins memops_scheduler_1/axi_awvalid_in]
  connect_bd_net -net addrmonitor_0_m00_axi_wdata [get_bd_pins addrmonitor_0/m00_axi_wdata] [get_bd_pins axi_register_slice_0/s_axi_wdata]
  connect_bd_net -net addrmonitor_0_m00_axi_wvalid [get_bd_pins addrmonitor_0/m00_axi_wvalid] [get_bd_pins axi_register_slice_0/s_axi_wvalid]
  connect_bd_net -net addrmonitor_0_offset [get_bd_pins addrmonitor_0/offset] [get_bd_pins ila_0/probe3]
  connect_bd_net -net addrmonitor_0_physicaladdr [get_bd_pins addrmonitor_0/physicaladdr] [get_bd_pins ila_0/probe1]
  connect_bd_net -net addrmonitor_0_pmem_obj_offset [get_bd_pins addrmonitor_0/pmem_obj_offset] [get_bd_pins memops_scheduler_1/offset]
  connect_bd_net -net addrmonitor_0_pmem_obj_offset_valid [get_bd_pins addrmonitor_0/pmem_obj_offset_valid] [get_bd_pins ila_0/probe6] [get_bd_pins memops_scheduler_1/offset_valid]
  connect_bd_net -net addrmonitor_0_state [get_bd_pins addrmonitor_0/state] [get_bd_pins ila_0/probe0]
  connect_bd_net -net addrmonitor_0_virtualaddr [get_bd_pins addrmonitor_0/virtualaddr_out] [get_bd_pins ila_0/probe2]
  connect_bd_net -net axi_dma_0_m_axis_mm2s_tkeep [get_bd_pins axi_dma_0/m_axis_mm2s_tkeep] [get_bd_pins axis_data_fifo_0/s_axis_tkeep]
  connect_bd_net -net axi_dma_0_m_axis_mm2s_tlast [get_bd_pins axi_dma_0/m_axis_mm2s_tlast] [get_bd_pins axis_data_fifo_0/s_axis_tlast]
  connect_bd_net -net axi_dma_0_m_axis_mm2s_tvalid [get_bd_pins axi_dma_0/m_axis_mm2s_tvalid] [get_bd_pins axis_data_fifo_0/s_axis_tvalid]
  connect_bd_net -net axi_dma_4_m_axis_mm2s_tkeep [get_bd_pins axi_dma_4/m_axis_mm2s_tkeep] [get_bd_pins axis_data_fifo_4/s_axis_tkeep]
  connect_bd_net -net axi_dma_4_m_axis_mm2s_tlast [get_bd_pins axi_dma_4/m_axis_mm2s_tlast] [get_bd_pins axis_data_fifo_4/s_axis_tlast]
  connect_bd_net -net axi_dma_4_m_axis_mm2s_tvalid [get_bd_pins axi_dma_4/m_axis_mm2s_tvalid] [get_bd_pins axis_data_fifo_4/s_axis_tvalid]
  connect_bd_net -net axi_dma_6_m_axis_mm2s_tkeep [get_bd_pins axi_dma_6/m_axis_mm2s_tkeep] [get_bd_pins axis_data_fifo_6/s_axis_tkeep]
  connect_bd_net -net axi_dma_6_m_axis_mm2s_tlast [get_bd_pins axi_dma_6/m_axis_mm2s_tlast] [get_bd_pins axis_data_fifo_6/s_axis_tlast]
  connect_bd_net -net axi_dma_6_m_axis_mm2s_tvalid [get_bd_pins axi_dma_6/m_axis_mm2s_tvalid] [get_bd_pins axis_data_fifo_6/s_axis_tvalid]
  connect_bd_net -net axi_smc_S00_AXI_arready [get_bd_pins axi_smc/S00_AXI_arready] [get_bd_pins gate_axi_0/arready_in]
  connect_bd_net -net axi_smc_S00_AXI_awready [get_bd_pins axi_smc/S00_AXI_awready] [get_bd_pins gate_axi_0/awready_in]
  connect_bd_net -net axi_smc_S00_AXI_bvalid [get_bd_pins axi_smc/S00_AXI_bvalid] [get_bd_pins gate_axi_0/bvalid_in]
  connect_bd_net -net axi_smc_S00_AXI_rvalid [get_bd_pins axi_smc/S00_AXI_rvalid] [get_bd_pins gate_axi_0/rvalid_in]
  connect_bd_net -net axi_smc_S00_AXI_wready [get_bd_pins axi_smc/S00_AXI_wready] [get_bd_pins gate_axi_0/wready_in]
  connect_bd_net -net axis_data_fifo_0_s_axis_tready [get_bd_pins axi_dma_0/m_axis_mm2s_tready] [get_bd_pins axis_data_fifo_0/s_axis_tready]
  connect_bd_net -net axis_data_fifo_4_s_axis_tready [get_bd_pins axi_dma_4/m_axis_mm2s_tready] [get_bd_pins axis_data_fifo_4/s_axis_tready]
  connect_bd_net -net axis_data_fifo_6_s_axis_tready [get_bd_pins axi_dma_6/m_axis_mm2s_tready] [get_bd_pins axis_data_fifo_6/s_axis_tready]
  connect_bd_net -net ddr4_0_addn_ui_clkout1 [get_bd_pins addrmonitor_0/clkmemops] [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins axi_dma_1/m_axi_mm2s_aclk] [get_bd_pins axi_dma_1/m_axi_s2mm_aclk] [get_bd_pins axi_dma_1/s_axi_lite_aclk] [get_bd_pins axi_dma_2/m_axi_mm2s_aclk] [get_bd_pins axi_dma_2/m_axi_s2mm_aclk] [get_bd_pins axi_dma_2/s_axi_lite_aclk] [get_bd_pins axi_dma_3/m_axi_mm2s_aclk] [get_bd_pins axi_dma_3/m_axi_s2mm_aclk] [get_bd_pins axi_dma_3/s_axi_lite_aclk] [get_bd_pins axi_smc/aclk2] [get_bd_pins axis_data_fifo_0/s_axis_aclk] [get_bd_pins axis_data_fifo_1/s_axis_aclk] [get_bd_pins axis_data_fifo_2/s_axis_aclk] [get_bd_pins axis_data_fifo_3/s_axis_aclk] [get_bd_pins ddr4_0/addn_ui_clkout1] [get_bd_pins gate_axi_0/clk_src] [get_bd_pins ila_1/clk] [get_bd_pins ila_2/clk] [get_bd_pins ila_3/clk] [get_bd_pins memops_scheduler_1/m00_axi_aclk] [get_bd_pins memops_scheduler_1/m01_axi_aclk] [get_bd_pins memops_scheduler_1/m02_axi_aclk] [get_bd_pins memops_scheduler_1/m03_axi_aclk] [get_bd_pins memops_scheduler_1/s00_axi_aclk] [get_bd_pins rst_ddr4_0_300M/slowest_sync_clk] [get_bd_pins rst_ddr4_0_300M_1/slowest_sync_clk] [get_bd_pins smartconnect_0/aclk2] [get_bd_pins smartconnect_1/aclk1] [get_bd_pins undolog_0/m00_axi_aclk] [get_bd_pins undolog_0/m01_axi_aclk] [get_bd_pins undolog_0/m02_axi_aclk] [get_bd_pins undolog_0/s00_axi_aclk] [get_bd_pins undolog_1/m00_axi_aclk] [get_bd_pins undolog_1/m01_axi_aclk] [get_bd_pins undolog_1/m02_axi_aclk] [get_bd_pins undolog_1/s00_axi_aclk] [get_bd_pins undolog_2/s00_axi_aclk] [get_bd_pins undolog_3/s00_axi_aclk]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk [get_bd_pins AXI_Lite_slave_plug_0/s00_axi_aclk] [get_bd_pins axi_smc/aclk] [get_bd_pins ddr4_0/c0_ddr4_ui_clk] [get_bd_pins rst_ddr4_0_300M_2/slowest_sync_clk] [get_bd_pins smartconnect_0/aclk]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddr4_0/c0_ddr4_ui_clk_sync_rst] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins rst_ddr4_0_300M/ext_reset_in] [get_bd_pins rst_ddr4_0_300M_1/ext_reset_in] [get_bd_pins rst_ddr4_0_300M_2/ext_reset_in]
  connect_bd_net -net gate_axi_0_arready_out [get_bd_pins gate_axi_0/arready_out] [get_bd_pins smartconnect_1/M00_AXI_arready]
  connect_bd_net -net gate_axi_0_arvalid_out [get_bd_pins axi_smc/S00_AXI_arvalid] [get_bd_pins gate_axi_0/arvalid_out]
  connect_bd_net -net gate_axi_0_awaddr_out [get_bd_pins axi_smc/S00_AXI_awaddr] [get_bd_pins gate_axi_0/awaddr_out]
  connect_bd_net -net gate_axi_0_awready_out [get_bd_pins gate_axi_0/awready_out] [get_bd_pins smartconnect_1/M00_AXI_awready]
  connect_bd_net -net gate_axi_0_awvalid_out [get_bd_pins axi_smc/S00_AXI_awvalid] [get_bd_pins gate_axi_0/awvalid_out]
  connect_bd_net -net gate_axi_0_bready_out [get_bd_pins axi_smc/S00_AXI_bready] [get_bd_pins gate_axi_0/bready_out]
  connect_bd_net -net gate_axi_0_bvalid_out [get_bd_pins gate_axi_0/bvalid_out] [get_bd_pins smartconnect_1/M00_AXI_bvalid]
  connect_bd_net -net gate_axi_0_rready_out [get_bd_pins axi_smc/S00_AXI_rready] [get_bd_pins gate_axi_0/rready_out]
  connect_bd_net -net gate_axi_0_rvalid_out [get_bd_pins gate_axi_0/rvalid_out] [get_bd_pins smartconnect_1/M00_AXI_rvalid]
  connect_bd_net -net gate_axi_0_wready_out [get_bd_pins gate_axi_0/wready_out] [get_bd_pins smartconnect_1/M00_AXI_wready]
  connect_bd_net -net gate_axi_0_wvalid_out [get_bd_pins axi_smc/S00_AXI_wvalid] [get_bd_pins gate_axi_0/wvalid_out]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins proc_sys_reset_0/mb_debug_sys_rst]
  connect_bd_net -net memops_scheduler_0_ndp_not_inuse [get_bd_pins gate_axi_0/ndp_not_inuse] [get_bd_pins ila_2/probe9] [get_bd_pins memops_scheduler_1/ndp_not_inuse]
  connect_bd_net -net memops_scheduler_1_done_count [get_bd_pins ila_2/probe0] [get_bd_pins memops_scheduler_1/done_count]
  connect_bd_net -net memops_scheduler_1_mst_exec_state [get_bd_pins ila_2/probe2] [get_bd_pins memops_scheduler_1/mst_exec_state]
  connect_bd_net -net memops_scheduler_1_ndp_done [get_bd_pins ila_2/probe8] [get_bd_pins memops_scheduler_1/ndp_done]
  connect_bd_net -net memops_scheduler_1_ndp_start [get_bd_pins ila_2/probe3] [get_bd_pins memops_scheduler_1/ndp_start]
  connect_bd_net -net memops_scheduler_1_offset_read_addr [get_bd_pins addrmonitor_0/readaddr] [get_bd_pins memops_scheduler_1/offset_read_addr]
  connect_bd_net -net memops_scheduler_1_offset_read_enable [get_bd_pins addrmonitor_0/readenable] [get_bd_pins ila_2/probe7] [get_bd_pins memops_scheduler_1/offset_read_enable]
  connect_bd_net -net memops_scheduler_1_offset_reg1_valid [get_bd_pins ila_2/probe4] [get_bd_pins memops_scheduler_1/offset_reg1_valid]
  connect_bd_net -net memops_scheduler_1_offset_reg2_valid [get_bd_pins ila_2/probe5] [get_bd_pins memops_scheduler_1/offset_reg2_valid]
  connect_bd_net -net memops_scheduler_1_start_count [get_bd_pins ila_2/probe1] [get_bd_pins memops_scheduler_1/start_count]
  connect_bd_net -net memops_scheduler_1_vaddr_offset_count [get_bd_pins ila_2/probe6] [get_bd_pins memops_scheduler_1/vaddr_offset_count]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_dma_4/m_axi_mm2s_aclk] [get_bd_pins axi_dma_4/m_axi_s2mm_aclk] [get_bd_pins axi_dma_4/s_axi_lite_aclk] [get_bd_pins axi_dma_5/m_axi_mm2s_aclk] [get_bd_pins axi_dma_5/m_axi_s2mm_aclk] [get_bd_pins axi_dma_5/s_axi_lite_aclk] [get_bd_pins axi_dma_6/m_axi_mm2s_aclk] [get_bd_pins axi_dma_6/m_axi_s2mm_aclk] [get_bd_pins axi_dma_6/s_axi_lite_aclk] [get_bd_pins axi_dma_7/m_axi_mm2s_aclk] [get_bd_pins axi_dma_7/m_axi_s2mm_aclk] [get_bd_pins axi_dma_7/s_axi_lite_aclk] [get_bd_pins axi_smc/aclk3] [get_bd_pins axis_data_fifo_4/s_axis_aclk] [get_bd_pins axis_data_fifo_5/s_axis_aclk] [get_bd_pins axis_data_fifo_6/s_axis_aclk] [get_bd_pins axis_data_fifo_7/s_axis_aclk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins smartconnect_0/aclk3] [get_bd_pins undolog_2/m00_axi_aclk] [get_bd_pins undolog_2/m01_axi_aclk] [get_bd_pins undolog_2/m02_axi_aclk] [get_bd_pins undolog_3/m00_axi_aclk] [get_bd_pins undolog_3/m01_axi_aclk] [get_bd_pins undolog_3/m02_axi_aclk]
  connect_bd_net -net pcie_perstn_1 [get_bd_ports pcie_perstn] [get_bd_pins xdma_0/sys_rst_n]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_dma_4/axi_resetn] [get_bd_pins axi_dma_5/axi_resetn] [get_bd_pins axi_dma_6/axi_resetn] [get_bd_pins axis_data_fifo_4/s_axis_aresetn] [get_bd_pins axis_data_fifo_5/s_axis_aresetn] [get_bd_pins axis_data_fifo_6/s_axis_aresetn] [get_bd_pins axis_data_fifo_7/s_axis_aresetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins undolog_2/m00_axi_aresetn] [get_bd_pins undolog_2/m01_axi_aresetn] [get_bd_pins undolog_2/m02_axi_aresetn] [get_bd_pins undolog_3/m00_axi_aresetn] [get_bd_pins undolog_3/m01_axi_aresetn] [get_bd_pins undolog_3/m02_axi_aresetn]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins ddr4_0/sys_rst]
  connect_bd_net -net rst_ddr4_0_300M_1_peripheral_aresetn [get_bd_pins memops_scheduler_1/m00_axi_aresetn] [get_bd_pins memops_scheduler_1/s00_axi_aresetn] [get_bd_pins rst_ddr4_0_300M_1/peripheral_aresetn] [get_bd_pins undolog_0/m00_axi_aresetn] [get_bd_pins undolog_0/m01_axi_aresetn] [get_bd_pins undolog_0/m02_axi_aresetn] [get_bd_pins undolog_0/s00_axi_aresetn] [get_bd_pins undolog_1/m00_axi_aresetn] [get_bd_pins undolog_1/m01_axi_aresetn] [get_bd_pins undolog_1/m02_axi_aresetn] [get_bd_pins undolog_1/s00_axi_aresetn] [get_bd_pins undolog_2/s00_axi_aresetn] [get_bd_pins undolog_3/s00_axi_aresetn]
  connect_bd_net -net rst_ddr4_0_300M_2_peripheral_aresetn [get_bd_pins AXI_Lite_slave_plug_0/s00_axi_aresetn] [get_bd_pins ddr4_0/c0_ddr4_aresetn] [get_bd_pins rst_ddr4_0_300M_2/peripheral_aresetn]
  connect_bd_net -net rst_ddr4_0_300M_interconnect_aresetn [get_bd_pins axis_data_fifo_0/s_axis_aresetn] [get_bd_pins axis_data_fifo_1/s_axis_aresetn] [get_bd_pins axis_data_fifo_2/s_axis_aresetn] [get_bd_pins axis_data_fifo_3/s_axis_aresetn] [get_bd_pins rst_ddr4_0_300M/interconnect_aresetn]
  connect_bd_net -net rst_ddr4_0_300M_peripheral_aresetn [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins axi_dma_1/axi_resetn] [get_bd_pins axi_dma_2/axi_resetn] [get_bd_pins axi_dma_3/axi_resetn] [get_bd_pins rst_ddr4_0_300M/peripheral_aresetn]
  connect_bd_net -net smartconnect_1_M00_AXI_arvalid [get_bd_pins gate_axi_0/arvalid_in] [get_bd_pins smartconnect_1/M00_AXI_arvalid]
  connect_bd_net -net smartconnect_1_M00_AXI_awaddr [get_bd_pins gate_axi_0/awaddr_in] [get_bd_pins smartconnect_1/M00_AXI_awaddr]
  connect_bd_net -net smartconnect_1_M00_AXI_awqos [get_bd_pins axi_smc/S00_AXI_awqos] [get_bd_pins smartconnect_1/M00_AXI_awqos]
  connect_bd_net -net smartconnect_1_M00_AXI_awvalid [get_bd_pins gate_axi_0/awvalid_in] [get_bd_pins smartconnect_1/M00_AXI_awvalid]
  connect_bd_net -net smartconnect_1_M00_AXI_bready [get_bd_pins gate_axi_0/bready_in] [get_bd_pins smartconnect_1/M00_AXI_bready]
  connect_bd_net -net smartconnect_1_M00_AXI_rready [get_bd_pins gate_axi_0/rready_in] [get_bd_pins smartconnect_1/M00_AXI_rready]
  connect_bd_net -net smartconnect_1_M00_AXI_wlast [get_bd_pins axi_smc/S00_AXI_wlast] [get_bd_pins smartconnect_1/M00_AXI_wlast]
  connect_bd_net -net smartconnect_1_M00_AXI_wvalid [get_bd_pins gate_axi_0/wvalid_in] [get_bd_pins smartconnect_1/M00_AXI_wvalid]
  connect_bd_net -net undolog_0_data_copy_pulse [get_bd_pins ila_3/probe0] [get_bd_pins undolog_0/data_copy_pulse]
  connect_bd_net -net undolog_0_datacpy_done [get_bd_pins ila_3/probe1] [get_bd_pins undolog_0/datacpy_done]
  connect_bd_net -net undolog_0_log_size [get_bd_pins ila_3/probe2] [get_bd_pins undolog_0/log_size]
  connect_bd_net -net undolog_0_log_src [get_bd_pins ila_3/probe3] [get_bd_pins undolog_0/log_src]
  connect_bd_net -net undolog_0_regout [get_bd_pins ila_3/probe5] [get_bd_pins undolog_0/regout]
  connect_bd_net -net undolog_0_ulog_offset [get_bd_pins ila_3/probe4] [get_bd_pins undolog_0/ulog_offset]
  connect_bd_net -net util_ds_buf_0_IBUF_DS_ODIV2 [get_bd_pins util_ds_buf_0/IBUF_DS_ODIV2] [get_bd_pins xdma_0/sys_clk]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins xdma_0/sys_clk_gt]
  connect_bd_net -net xdma_0_axi_aclk [get_bd_pins addrmonitor_0/clk] [get_bd_pins axi_data_fifo_0/aclk] [get_bd_pins axi_data_fifo_1/aclk] [get_bd_pins axi_data_fifo_10/aclk] [get_bd_pins axi_data_fifo_2/aclk] [get_bd_pins axi_data_fifo_3/aclk] [get_bd_pins axi_data_fifo_4/aclk] [get_bd_pins axi_data_fifo_5/aclk] [get_bd_pins axi_data_fifo_6/aclk] [get_bd_pins axi_data_fifo_7/aclk] [get_bd_pins axi_data_fifo_8/aclk] [get_bd_pins axi_data_fifo_9/aclk] [get_bd_pins axi_register_slice_0/aclk] [get_bd_pins axi_smc/aclk1] [get_bd_pins gate_axi_0/clk_dest] [get_bd_pins ila_0/clk] [get_bd_pins smartconnect_0/aclk1] [get_bd_pins smartconnect_1/aclk] [get_bd_pins xdma_0/axi_aclk]
  connect_bd_net -net xdma_0_axi_aresetn [get_bd_pins addrmonitor_0/aresetn] [get_bd_pins axi_data_fifo_0/aresetn] [get_bd_pins axi_data_fifo_1/aresetn] [get_bd_pins axi_data_fifo_10/aresetn] [get_bd_pins axi_data_fifo_2/aresetn] [get_bd_pins axi_data_fifo_3/aresetn] [get_bd_pins axi_data_fifo_4/aresetn] [get_bd_pins axi_data_fifo_5/aresetn] [get_bd_pins axi_data_fifo_6/aresetn] [get_bd_pins axi_data_fifo_7/aresetn] [get_bd_pins axi_data_fifo_8/aresetn] [get_bd_pins axi_data_fifo_9/aresetn] [get_bd_pins axi_register_slice_0/aresetn] [get_bd_pins axi_smc/aresetn] [get_bd_pins gate_axi_0/aresetn] [get_bd_pins ila_0/probe5] [get_bd_pins smartconnect_0/aresetn] [get_bd_pins smartconnect_1/aresetn] [get_bd_pins xdma_0/axi_aresetn]
  connect_bd_net -net xdma_0_m_axib_awaddr [get_bd_pins addrmonitor_0/s00_axi_awaddr] [get_bd_pins xdma_0/m_axib_awaddr]
  connect_bd_net -net xdma_0_m_axib_awvalid [get_bd_pins addrmonitor_0/s00_axi_awvalid] [get_bd_pins xdma_0/m_axib_awvalid]
  connect_bd_net -net xdma_0_m_axib_wdata [get_bd_pins addrmonitor_0/s00_axi_wdata] [get_bd_pins xdma_0/m_axib_wdata]
  connect_bd_net -net xdma_0_m_axib_wvalid [get_bd_pins addrmonitor_0/s00_axi_wvalid] [get_bd_pins xdma_0/m_axib_wvalid]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins undolog_0/m00_axi_init_axi_txn] [get_bd_pins undolog_0/m01_axi_init_axi_txn] [get_bd_pins undolog_0/m02_axi_init_axi_txn] [get_bd_pins undolog_1/m00_axi_init_axi_txn] [get_bd_pins undolog_1/m01_axi_init_axi_txn] [get_bd_pins undolog_1/m02_axi_init_axi_txn] [get_bd_pins undolog_2/m00_axi_init_axi_txn] [get_bd_pins undolog_2/m01_axi_init_axi_txn] [get_bd_pins undolog_2/m02_axi_init_axi_txn] [get_bd_pins undolog_3/m00_axi_init_axi_txn] [get_bd_pins undolog_3/m01_axi_init_axi_txn] [get_bd_pins undolog_3/m02_axi_init_axi_txn] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins axis_data_fifo_0/s_axis_tdata] [get_bd_pins axis_data_fifo_4/s_axis_tdata] [get_bd_pins axis_data_fifo_6/s_axis_tdata] [get_bd_pins xlconstant_1/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_1/Data_MM2S] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_1/Data_S2MM] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_1/Data_MM2S] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_1/Data_S2MM] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_2/Data_MM2S] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_2/Data_S2MM] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_2/Data_MM2S] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_2/Data_S2MM] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_3/Data_MM2S] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_3/Data_S2MM] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_3/Data_MM2S] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_3/Data_S2MM] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_4/Data_MM2S] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_4/Data_S2MM] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_4/Data_MM2S] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_4/Data_S2MM] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_5/Data_MM2S] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_5/Data_S2MM] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_5/Data_MM2S] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_5/Data_S2MM] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_6/Data_MM2S] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_6/Data_S2MM] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_6/Data_MM2S] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_6/Data_S2MM] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_7/Data_MM2S] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_7/Data_S2MM] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_7/Data_MM2S] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_7/Data_S2MM] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces memops_scheduler_1/M00_AXI] [get_bd_addr_segs undolog_0/S00_AXI/S00_AXI_reg] SEG_undolog_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces memops_scheduler_1/M01_AXI] [get_bd_addr_segs undolog_1/S00_AXI/S00_AXI_reg] SEG_undolog_1_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces memops_scheduler_1/M02_AXI] [get_bd_addr_segs undolog_2/S00_AXI/S00_AXI_reg] SEG_undolog_2_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces memops_scheduler_1/M03_AXI] [get_bd_addr_segs undolog_3/S00_AXI/S00_AXI_reg] SEG_undolog_3_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces undolog_0/M02_AXI] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces undolog_0/M00_AXI] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] SEG_axi_dma_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces undolog_0/M01_AXI] [get_bd_addr_segs axi_dma_1/S_AXI_LITE/Reg] SEG_axi_dma_1_Reg
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces undolog_0/M02_AXI] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces undolog_0/M02_AXI] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces undolog_1/M02_AXI] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces undolog_1/M01_AXI] [get_bd_addr_segs axi_dma_2/S_AXI_LITE/Reg] SEG_axi_dma_2_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces undolog_1/M00_AXI] [get_bd_addr_segs axi_dma_3/S_AXI_LITE/Reg] SEG_axi_dma_3_Reg
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces undolog_1/M02_AXI] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces undolog_1/M02_AXI] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces undolog_2/M02_AXI] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces undolog_2/M00_AXI] [get_bd_addr_segs axi_dma_4/S_AXI_LITE/Reg] SEG_axi_dma_4_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces undolog_2/M01_AXI] [get_bd_addr_segs axi_dma_5/S_AXI_LITE/Reg] SEG_axi_dma_5_Reg
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces undolog_2/M02_AXI] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces undolog_2/M02_AXI] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces undolog_3/M02_AXI] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces undolog_3/M00_AXI] [get_bd_addr_segs axi_dma_6/S_AXI_LITE/Reg] SEG_axi_dma_6_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces undolog_3/M01_AXI] [get_bd_addr_segs axi_dma_7/S_AXI_LITE/Reg] SEG_axi_dma_7_Reg
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces undolog_3/M02_AXI] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces undolog_3/M02_AXI] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces xdma_0/M_AXI_B] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces xdma_0/M_AXI_B] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x00010000 -offset 0x44A10000 [get_bd_addr_spaces xdma_0/M_AXI_B] [get_bd_addr_segs memops_scheduler_1/S00_AXI/S00_AXI_reg] SEG_memops_scheduler_1_S00_AXI_reg
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces xdma_0/M_AXI_B] [get_bd_addr_segs xdma_0/S_AXI_LITE/CTL0] SEG_xdma_0_CTL0

  # Exclude Address Segments
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_1/Data_MM2S] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_dma_1/Data_MM2S/SEG_AXI_Lite_slave_plug_0_S00_AXI_reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_1/Data_S2MM] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_dma_1/Data_S2MM/SEG_AXI_Lite_slave_plug_0_S00_AXI_reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_2/Data_MM2S] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_dma_2/Data_MM2S/SEG_AXI_Lite_slave_plug_0_S00_AXI_reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_2/Data_S2MM] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_dma_2/Data_S2MM/SEG_AXI_Lite_slave_plug_0_S00_AXI_reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_3/Data_MM2S] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_dma_3/Data_MM2S/SEG_AXI_Lite_slave_plug_0_S00_AXI_reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_3/Data_S2MM] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_dma_3/Data_S2MM/SEG_AXI_Lite_slave_plug_0_S00_AXI_reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_4/Data_MM2S] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_dma_4/Data_MM2S/SEG_AXI_Lite_slave_plug_0_S00_AXI_reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_4/Data_S2MM] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_dma_4/Data_S2MM/SEG_AXI_Lite_slave_plug_0_S00_AXI_reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_5/Data_MM2S] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_dma_5/Data_MM2S/SEG_AXI_Lite_slave_plug_0_S00_AXI_reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_5/Data_S2MM] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_dma_5/Data_S2MM/SEG_AXI_Lite_slave_plug_0_S00_AXI_reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_6/Data_MM2S] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_dma_6/Data_MM2S/SEG_AXI_Lite_slave_plug_0_S00_AXI_reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_6/Data_S2MM] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_dma_6/Data_S2MM/SEG_AXI_Lite_slave_plug_0_S00_AXI_reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_7/Data_MM2S] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_dma_7/Data_MM2S/SEG_AXI_Lite_slave_plug_0_S00_AXI_reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces axi_dma_7/Data_S2MM] [get_bd_addr_segs AXI_Lite_slave_plug_0/S00_AXI/S00_AXI_reg] SEG_AXI_Lite_slave_plug_0_S00_AXI_reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_dma_7/Data_S2MM/SEG_AXI_Lite_slave_plug_0_S00_AXI_reg]



  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


