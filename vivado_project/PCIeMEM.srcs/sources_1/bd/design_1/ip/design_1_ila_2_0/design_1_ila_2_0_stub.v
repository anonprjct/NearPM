// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon May 24 00:50:50 2021
// Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/ip/design_1_ila_2_0/design_1_ila_2_0_stub.v
// Design      : design_1_ila_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2018.2" *)
module design_1_ila_2_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[4:0],probe1[4:0],probe2[3:0],probe3[7:0],probe4[0:0],probe5[0:0],probe6[1:0],probe7[0:0],probe8[7:0],probe9[0:0]" */;
  input clk;
  input [4:0]probe0;
  input [4:0]probe1;
  input [3:0]probe2;
  input [7:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [1:0]probe6;
  input [0:0]probe7;
  input [7:0]probe8;
  input [0:0]probe9;
endmodule
