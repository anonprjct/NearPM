// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:addrmonitor:1.0
// IP Revision: 1

(* X_CORE_INFO = "addrmonitor,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "design_1_addrmonitor_0_0,addrmonitor,{}" *)
(* CORE_GENERATION_INFO = "design_1_addrmonitor_0_0,addrmonitor,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=addrmonitor,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S00_AXI_ID_WIDTH=4,C_S00_AXI_DATA_WIDTH=64,C_S00_AXI_ADDR_WIDTH=32,C_S00_AXI_AWUSER_WIDTH=0,C_S00_AXI_ARUSER_WIDTH=0,C_S00_AXI_WUSER_WIDTH=0,C_S00_AXI_RUSER_WIDTH=0,C_S00_AXI_BUSER_WIDTH=0,C_M00_AXI_BURST_LEN=16,C_M00_AXI_ID_WIDTH=4,C_M00_AXI_ADDR_WIDTH=32,C_M00_AXI_DATA_WIDTH=64,C_M00_AXI\
_AWUSER_WIDTH=0,C_M00_AXI_ARUSER_WIDTH=0,C_M00_AXI_WUSER_WIDTH=0,C_M00_AXI_RUSER_WIDTH=0,C_M00_AXI_BUSER_WIDTH=0}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_addrmonitor_0_0 (
  s00_axi_wvalid,
  s00_axi_wdata,
  s00_axi_awaddr,
  s00_axi_awvalid,
  readenable,
  readaddr,
  pmem_obj_offset,
  pmem_obj_offset_valid,
  clk,
  clkmemops,
  aresetn,
  m00_axi_awaddr,
  m00_axi_awvalid,
  m00_axi_wdata,
  m00_axi_wvalid,
  empty_fifo,
  state,
  virtualaddr_out,
  virtualaddr_out1,
  offset,
  physicaladdr,
  count
);

input wire s00_axi_wvalid;
input wire [63 : 0] s00_axi_wdata;
input wire [31 : 0] s00_axi_awaddr;
input wire s00_axi_awvalid;
input wire readenable;
input wire [11 : 0] readaddr;
output wire [63 : 0] pmem_obj_offset;
output wire pmem_obj_offset_valid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET aresetn, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire clkmemops;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
output wire [31 : 0] m00_axi_awaddr;
output wire m00_axi_awvalid;
output wire [63 : 0] m00_axi_wdata;
output wire m00_axi_wvalid;
output wire empty_fifo;
output wire [2 : 0] state;
output wire [63 : 0] virtualaddr_out;
output wire [63 : 0] virtualaddr_out1;
output wire [63 : 0] offset;
output wire [31 : 0] physicaladdr;
output wire [5 : 0] count;

  addrmonitor #(
    .C_S00_AXI_ID_WIDTH(4),
    .C_S00_AXI_DATA_WIDTH(64),
    .C_S00_AXI_ADDR_WIDTH(32),
    .C_S00_AXI_AWUSER_WIDTH(0),
    .C_S00_AXI_ARUSER_WIDTH(0),
    .C_S00_AXI_WUSER_WIDTH(0),
    .C_S00_AXI_RUSER_WIDTH(0),
    .C_S00_AXI_BUSER_WIDTH(0),
    .C_M00_AXI_BURST_LEN(16),
    .C_M00_AXI_ID_WIDTH(4),
    .C_M00_AXI_ADDR_WIDTH(32),
    .C_M00_AXI_DATA_WIDTH(64),
    .C_M00_AXI_AWUSER_WIDTH(0),
    .C_M00_AXI_ARUSER_WIDTH(0),
    .C_M00_AXI_WUSER_WIDTH(0),
    .C_M00_AXI_RUSER_WIDTH(0),
    .C_M00_AXI_BUSER_WIDTH(0)
  ) inst (
    .s00_axi_wvalid(s00_axi_wvalid),
    .s00_axi_wdata(s00_axi_wdata),
    .s00_axi_awaddr(s00_axi_awaddr),
    .s00_axi_awvalid(s00_axi_awvalid),
    .readenable(readenable),
    .readaddr(readaddr),
    .pmem_obj_offset(pmem_obj_offset),
    .pmem_obj_offset_valid(pmem_obj_offset_valid),
    .clk(clk),
    .clkmemops(clkmemops),
    .aresetn(aresetn),
    .m00_axi_awaddr(m00_axi_awaddr),
    .m00_axi_awvalid(m00_axi_awvalid),
    .m00_axi_wdata(m00_axi_wdata),
    .m00_axi_wvalid(m00_axi_wvalid),
    .empty_fifo(empty_fifo),
    .state(state),
    .virtualaddr_out(virtualaddr_out),
    .virtualaddr_out1(virtualaddr_out1),
    .offset(offset),
    .physicaladdr(physicaladdr),
    .count(count)
  );
endmodule
