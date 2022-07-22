// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sat Mar 20 01:32:59 2021
// Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/ip/design_1_gate_axi_0_0/design_1_gate_axi_0_0_stub.v
// Design      : design_1_gate_axi_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gate_axi,Vivado 2018.2" *)
module design_1_gate_axi_0_0(clk_src, clk_dest, aresetn, awvalid_in, 
  awready_in, arvalid_in, arready_in, wvalid_in, wready_in, bvalid_in, bready_in, rvalid_in, 
  rready_in, awaddr_in, ndp_not_inuse, awvalid_out, awready_out, arvalid_out, arready_out, 
  wvalid_out, wready_out, bvalid_out, bready_out, rvalid_out, rready_out, awaddr_out, 
  ndp_not_inuse_out)
/* synthesis syn_black_box black_box_pad_pin="clk_src,clk_dest,aresetn,awvalid_in,awready_in,arvalid_in,arready_in,wvalid_in,wready_in,bvalid_in,bready_in,rvalid_in,rready_in,awaddr_in[31:0],ndp_not_inuse,awvalid_out,awready_out,arvalid_out,arready_out,wvalid_out,wready_out,bvalid_out,bready_out,rvalid_out,rready_out,awaddr_out[31:0],ndp_not_inuse_out" */;
  input clk_src;
  input clk_dest;
  input aresetn;
  input awvalid_in;
  input awready_in;
  input arvalid_in;
  input arready_in;
  input wvalid_in;
  input wready_in;
  input bvalid_in;
  input bready_in;
  input rvalid_in;
  input rready_in;
  input [31:0]awaddr_in;
  input ndp_not_inuse;
  output awvalid_out;
  output awready_out;
  output arvalid_out;
  output arready_out;
  output wvalid_out;
  output wready_out;
  output bvalid_out;
  output bready_out;
  output rvalid_out;
  output rready_out;
  output [31:0]awaddr_out;
  output ndp_not_inuse_out;
endmodule
