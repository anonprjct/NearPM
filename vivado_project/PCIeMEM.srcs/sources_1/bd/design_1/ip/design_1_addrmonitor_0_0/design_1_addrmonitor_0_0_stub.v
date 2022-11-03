// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Mar 28 01:04:06 2021
// Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/ip/design_1_addrmonitor_0_0/design_1_addrmonitor_0_0_stub.v
// Design      : design_1_addrmonitor_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "addrmonitor,Vivado 2018.2" *)
module design_1_addrmonitor_0_0(s00_axi_wvalid, s00_axi_wdata, 
  s00_axi_awaddr, s00_axi_awvalid, readenable, readaddr, pmem_obj_offset, 
  pmem_obj_offset_valid, clk, clkmemops, aresetn, m00_axi_awaddr, m00_axi_awvalid, 
  m00_axi_wdata, m00_axi_wvalid, empty_fifo, state, virtualaddr_out, virtualaddr_out1, offset, 
  physicaladdr, count)
/* synthesis syn_black_box black_box_pad_pin="s00_axi_wvalid,s00_axi_wdata[63:0],s00_axi_awaddr[31:0],s00_axi_awvalid,readenable,readaddr[11:0],pmem_obj_offset[63:0],pmem_obj_offset_valid,clk,clkmemops,aresetn,m00_axi_awaddr[31:0],m00_axi_awvalid,m00_axi_wdata[63:0],m00_axi_wvalid,empty_fifo,state[2:0],virtualaddr_out[63:0],virtualaddr_out1[63:0],offset[63:0],physicaladdr[31:0],count[5:0]" */;
  input s00_axi_wvalid;
  input [63:0]s00_axi_wdata;
  input [31:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input readenable;
  input [11:0]readaddr;
  output [63:0]pmem_obj_offset;
  output pmem_obj_offset_valid;
  input clk;
  input clkmemops;
  input aresetn;
  output [31:0]m00_axi_awaddr;
  output m00_axi_awvalid;
  output [63:0]m00_axi_wdata;
  output m00_axi_wvalid;
  output empty_fifo;
  output [2:0]state;
  output [63:0]virtualaddr_out;
  output [63:0]virtualaddr_out1;
  output [63:0]offset;
  output [31:0]physicaladdr;
  output [5:0]count;
endmodule
