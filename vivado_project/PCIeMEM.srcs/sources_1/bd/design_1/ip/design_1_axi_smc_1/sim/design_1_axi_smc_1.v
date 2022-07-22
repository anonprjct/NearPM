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


// IP VLNV: xilinx.com:ip:smartconnect:1.0
// IP Revision: 9

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_axi_smc_1 (
  aclk,
  aclk1,
  aclk2,
  aclk3,
  aresetn,
  S00_AXI_awid,
  S00_AXI_awaddr,
  S00_AXI_awlen,
  S00_AXI_awsize,
  S00_AXI_awburst,
  S00_AXI_awlock,
  S00_AXI_awcache,
  S00_AXI_awprot,
  S00_AXI_awqos,
  S00_AXI_awuser,
  S00_AXI_awvalid,
  S00_AXI_awready,
  S00_AXI_wdata,
  S00_AXI_wstrb,
  S00_AXI_wlast,
  S00_AXI_wuser,
  S00_AXI_wvalid,
  S00_AXI_wready,
  S00_AXI_bid,
  S00_AXI_bresp,
  S00_AXI_buser,
  S00_AXI_bvalid,
  S00_AXI_bready,
  S00_AXI_arid,
  S00_AXI_araddr,
  S00_AXI_arlen,
  S00_AXI_arsize,
  S00_AXI_arburst,
  S00_AXI_arlock,
  S00_AXI_arcache,
  S00_AXI_arprot,
  S00_AXI_arqos,
  S00_AXI_aruser,
  S00_AXI_arvalid,
  S00_AXI_arready,
  S00_AXI_rid,
  S00_AXI_rdata,
  S00_AXI_rresp,
  S00_AXI_rlast,
  S00_AXI_ruser,
  S00_AXI_rvalid,
  S00_AXI_rready,
  S01_AXI_araddr,
  S01_AXI_arlen,
  S01_AXI_arsize,
  S01_AXI_arburst,
  S01_AXI_arlock,
  S01_AXI_arcache,
  S01_AXI_arprot,
  S01_AXI_arqos,
  S01_AXI_arvalid,
  S01_AXI_arready,
  S01_AXI_rdata,
  S01_AXI_rresp,
  S01_AXI_rlast,
  S01_AXI_rvalid,
  S01_AXI_rready,
  S02_AXI_awaddr,
  S02_AXI_awlen,
  S02_AXI_awsize,
  S02_AXI_awburst,
  S02_AXI_awlock,
  S02_AXI_awcache,
  S02_AXI_awprot,
  S02_AXI_awqos,
  S02_AXI_awvalid,
  S02_AXI_awready,
  S02_AXI_wdata,
  S02_AXI_wstrb,
  S02_AXI_wlast,
  S02_AXI_wvalid,
  S02_AXI_wready,
  S02_AXI_bresp,
  S02_AXI_bvalid,
  S02_AXI_bready,
  S03_AXI_awaddr,
  S03_AXI_awprot,
  S03_AXI_awvalid,
  S03_AXI_awready,
  S03_AXI_wdata,
  S03_AXI_wstrb,
  S03_AXI_wvalid,
  S03_AXI_wready,
  S03_AXI_bresp,
  S03_AXI_bvalid,
  S03_AXI_bready,
  S03_AXI_araddr,
  S03_AXI_arprot,
  S03_AXI_arvalid,
  S03_AXI_arready,
  S03_AXI_rdata,
  S03_AXI_rresp,
  S03_AXI_rvalid,
  S03_AXI_rready,
  S04_AXI_araddr,
  S04_AXI_arlen,
  S04_AXI_arsize,
  S04_AXI_arburst,
  S04_AXI_arlock,
  S04_AXI_arcache,
  S04_AXI_arprot,
  S04_AXI_arqos,
  S04_AXI_arvalid,
  S04_AXI_arready,
  S04_AXI_rdata,
  S04_AXI_rresp,
  S04_AXI_rlast,
  S04_AXI_rvalid,
  S04_AXI_rready,
  S05_AXI_awaddr,
  S05_AXI_awlen,
  S05_AXI_awsize,
  S05_AXI_awburst,
  S05_AXI_awlock,
  S05_AXI_awcache,
  S05_AXI_awprot,
  S05_AXI_awqos,
  S05_AXI_awvalid,
  S05_AXI_awready,
  S05_AXI_wdata,
  S05_AXI_wstrb,
  S05_AXI_wlast,
  S05_AXI_wvalid,
  S05_AXI_wready,
  S05_AXI_bresp,
  S05_AXI_bvalid,
  S05_AXI_bready,
  S06_AXI_awaddr,
  S06_AXI_awprot,
  S06_AXI_awvalid,
  S06_AXI_awready,
  S06_AXI_wdata,
  S06_AXI_wstrb,
  S06_AXI_wvalid,
  S06_AXI_wready,
  S06_AXI_bresp,
  S06_AXI_bvalid,
  S06_AXI_bready,
  S06_AXI_araddr,
  S06_AXI_arprot,
  S06_AXI_arvalid,
  S06_AXI_arready,
  S06_AXI_rdata,
  S06_AXI_rresp,
  S06_AXI_rvalid,
  S06_AXI_rready,
  S07_AXI_awaddr,
  S07_AXI_awlen,
  S07_AXI_awsize,
  S07_AXI_awburst,
  S07_AXI_awlock,
  S07_AXI_awcache,
  S07_AXI_awprot,
  S07_AXI_awqos,
  S07_AXI_awvalid,
  S07_AXI_awready,
  S07_AXI_wdata,
  S07_AXI_wstrb,
  S07_AXI_wlast,
  S07_AXI_wvalid,
  S07_AXI_wready,
  S07_AXI_bresp,
  S07_AXI_bvalid,
  S07_AXI_bready,
  S08_AXI_araddr,
  S08_AXI_arlen,
  S08_AXI_arsize,
  S08_AXI_arburst,
  S08_AXI_arlock,
  S08_AXI_arcache,
  S08_AXI_arprot,
  S08_AXI_arqos,
  S08_AXI_arvalid,
  S08_AXI_arready,
  S08_AXI_rdata,
  S08_AXI_rresp,
  S08_AXI_rlast,
  S08_AXI_rvalid,
  S08_AXI_rready,
  S09_AXI_awaddr,
  S09_AXI_awlen,
  S09_AXI_awsize,
  S09_AXI_awburst,
  S09_AXI_awlock,
  S09_AXI_awcache,
  S09_AXI_awprot,
  S09_AXI_awqos,
  S09_AXI_awvalid,
  S09_AXI_awready,
  S09_AXI_wdata,
  S09_AXI_wstrb,
  S09_AXI_wlast,
  S09_AXI_wvalid,
  S09_AXI_wready,
  S09_AXI_bresp,
  S09_AXI_bvalid,
  S09_AXI_bready,
  S10_AXI_araddr,
  S10_AXI_arlen,
  S10_AXI_arsize,
  S10_AXI_arburst,
  S10_AXI_arlock,
  S10_AXI_arcache,
  S10_AXI_arprot,
  S10_AXI_arqos,
  S10_AXI_arvalid,
  S10_AXI_arready,
  S10_AXI_rdata,
  S10_AXI_rresp,
  S10_AXI_rlast,
  S10_AXI_rvalid,
  S10_AXI_rready,
  S11_AXI_awid,
  S11_AXI_awaddr,
  S11_AXI_awlen,
  S11_AXI_awsize,
  S11_AXI_awburst,
  S11_AXI_awlock,
  S11_AXI_awcache,
  S11_AXI_awprot,
  S11_AXI_awqos,
  S11_AXI_awuser,
  S11_AXI_awvalid,
  S11_AXI_awready,
  S11_AXI_wdata,
  S11_AXI_wstrb,
  S11_AXI_wlast,
  S11_AXI_wuser,
  S11_AXI_wvalid,
  S11_AXI_wready,
  S11_AXI_bid,
  S11_AXI_bresp,
  S11_AXI_buser,
  S11_AXI_bvalid,
  S11_AXI_bready,
  S11_AXI_arid,
  S11_AXI_araddr,
  S11_AXI_arlen,
  S11_AXI_arsize,
  S11_AXI_arburst,
  S11_AXI_arlock,
  S11_AXI_arcache,
  S11_AXI_arprot,
  S11_AXI_arqos,
  S11_AXI_aruser,
  S11_AXI_arvalid,
  S11_AXI_arready,
  S11_AXI_rid,
  S11_AXI_rdata,
  S11_AXI_rresp,
  S11_AXI_rlast,
  S11_AXI_ruser,
  S11_AXI_rvalid,
  S11_AXI_rready,
  S12_AXI_awid,
  S12_AXI_awaddr,
  S12_AXI_awlen,
  S12_AXI_awsize,
  S12_AXI_awburst,
  S12_AXI_awlock,
  S12_AXI_awcache,
  S12_AXI_awprot,
  S12_AXI_awregion,
  S12_AXI_awqos,
  S12_AXI_awuser,
  S12_AXI_awvalid,
  S12_AXI_awready,
  S12_AXI_wid,
  S12_AXI_wdata,
  S12_AXI_wstrb,
  S12_AXI_wlast,
  S12_AXI_wuser,
  S12_AXI_wvalid,
  S12_AXI_wready,
  S12_AXI_bid,
  S12_AXI_bresp,
  S12_AXI_buser,
  S12_AXI_bvalid,
  S12_AXI_bready,
  S12_AXI_arid,
  S12_AXI_araddr,
  S12_AXI_arlen,
  S12_AXI_arsize,
  S12_AXI_arburst,
  S12_AXI_arlock,
  S12_AXI_arcache,
  S12_AXI_arprot,
  S12_AXI_arregion,
  S12_AXI_arqos,
  S12_AXI_aruser,
  S12_AXI_arvalid,
  S12_AXI_arready,
  S12_AXI_rid,
  S12_AXI_rdata,
  S12_AXI_rresp,
  S12_AXI_rlast,
  S12_AXI_ruser,
  S12_AXI_rvalid,
  S12_AXI_rready,
  S13_AXI_awid,
  S13_AXI_awaddr,
  S13_AXI_awlen,
  S13_AXI_awsize,
  S13_AXI_awburst,
  S13_AXI_awlock,
  S13_AXI_awcache,
  S13_AXI_awprot,
  S13_AXI_awregion,
  S13_AXI_awqos,
  S13_AXI_awuser,
  S13_AXI_awvalid,
  S13_AXI_awready,
  S13_AXI_wid,
  S13_AXI_wdata,
  S13_AXI_wstrb,
  S13_AXI_wlast,
  S13_AXI_wuser,
  S13_AXI_wvalid,
  S13_AXI_wready,
  S13_AXI_bid,
  S13_AXI_bresp,
  S13_AXI_buser,
  S13_AXI_bvalid,
  S13_AXI_bready,
  S13_AXI_arid,
  S13_AXI_araddr,
  S13_AXI_arlen,
  S13_AXI_arsize,
  S13_AXI_arburst,
  S13_AXI_arlock,
  S13_AXI_arcache,
  S13_AXI_arprot,
  S13_AXI_arregion,
  S13_AXI_arqos,
  S13_AXI_aruser,
  S13_AXI_arvalid,
  S13_AXI_arready,
  S13_AXI_rid,
  S13_AXI_rdata,
  S13_AXI_rresp,
  S13_AXI_rlast,
  S13_AXI_ruser,
  S13_AXI_rvalid,
  S13_AXI_rready,
  S14_AXI_awid,
  S14_AXI_awaddr,
  S14_AXI_awlen,
  S14_AXI_awsize,
  S14_AXI_awburst,
  S14_AXI_awlock,
  S14_AXI_awcache,
  S14_AXI_awprot,
  S14_AXI_awregion,
  S14_AXI_awqos,
  S14_AXI_awuser,
  S14_AXI_awvalid,
  S14_AXI_awready,
  S14_AXI_wid,
  S14_AXI_wdata,
  S14_AXI_wstrb,
  S14_AXI_wlast,
  S14_AXI_wuser,
  S14_AXI_wvalid,
  S14_AXI_wready,
  S14_AXI_bid,
  S14_AXI_bresp,
  S14_AXI_buser,
  S14_AXI_bvalid,
  S14_AXI_bready,
  S14_AXI_arid,
  S14_AXI_araddr,
  S14_AXI_arlen,
  S14_AXI_arsize,
  S14_AXI_arburst,
  S14_AXI_arlock,
  S14_AXI_arcache,
  S14_AXI_arprot,
  S14_AXI_arregion,
  S14_AXI_arqos,
  S14_AXI_aruser,
  S14_AXI_arvalid,
  S14_AXI_arready,
  S14_AXI_rid,
  S14_AXI_rdata,
  S14_AXI_rresp,
  S14_AXI_rlast,
  S14_AXI_ruser,
  S14_AXI_rvalid,
  S14_AXI_rready,
  M00_AXI_awaddr,
  M00_AXI_awlen,
  M00_AXI_awsize,
  M00_AXI_awburst,
  M00_AXI_awlock,
  M00_AXI_awcache,
  M00_AXI_awprot,
  M00_AXI_awqos,
  M00_AXI_awvalid,
  M00_AXI_awready,
  M00_AXI_wdata,
  M00_AXI_wstrb,
  M00_AXI_wlast,
  M00_AXI_wvalid,
  M00_AXI_wready,
  M00_AXI_bresp,
  M00_AXI_bvalid,
  M00_AXI_bready,
  M00_AXI_araddr,
  M00_AXI_arlen,
  M00_AXI_arsize,
  M00_AXI_arburst,
  M00_AXI_arlock,
  M00_AXI_arcache,
  M00_AXI_arprot,
  M00_AXI_arqos,
  M00_AXI_arvalid,
  M00_AXI_arready,
  M00_AXI_rdata,
  M00_AXI_rresp,
  M00_AXI_rlast,
  M00_AXI_rvalid,
  M00_AXI_rready,
  M01_AXI_awaddr,
  M01_AXI_awprot,
  M01_AXI_awvalid,
  M01_AXI_awready,
  M01_AXI_wdata,
  M01_AXI_wstrb,
  M01_AXI_wvalid,
  M01_AXI_wready,
  M01_AXI_bresp,
  M01_AXI_bvalid,
  M01_AXI_bready,
  M01_AXI_araddr,
  M01_AXI_arprot,
  M01_AXI_arvalid,
  M01_AXI_arready,
  M01_AXI_rdata,
  M01_AXI_rresp,
  M01_AXI_rvalid,
  M01_AXI_rready,
  M02_AXI_awaddr,
  M02_AXI_awprot,
  M02_AXI_awvalid,
  M02_AXI_awready,
  M02_AXI_wdata,
  M02_AXI_wstrb,
  M02_AXI_wvalid,
  M02_AXI_wready,
  M02_AXI_bresp,
  M02_AXI_bvalid,
  M02_AXI_bready,
  M02_AXI_araddr,
  M02_AXI_arprot,
  M02_AXI_arvalid,
  M02_AXI_arready,
  M02_AXI_rdata,
  M02_AXI_rresp,
  M02_AXI_rvalid,
  M02_AXI_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk, FREQ_HZ 300000000, PHASE 0.00, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, ASSOCIATED_BUSIF M00_AXI:M01_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI, ASSOCIATED_CLKEN m_sc_aclken" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, ASSOCIATED_BUSIF M02_AXI:S00_AXI, ASSOCIATED_CLKEN s_sc_aclken" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk1 CLK" *)
input wire aclk1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk2, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, ASSOCIATED_BUSIF S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI, ASSOCIATED_CLKEN m_sc_aclken" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk2 CLK" *)
input wire aclk2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk3, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, ASSOCIATED_CLKEN m_sc_aclken" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk3 CLK" *)
input wire aclk3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *)
input wire [5 : 0] S00_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *)
input wire [31 : 0] S00_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *)
input wire [7 : 0] S00_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *)
input wire [2 : 0] S00_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *)
input wire [1 : 0] S00_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *)
input wire [0 : 0] S00_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *)
input wire [3 : 0] S00_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *)
input wire [2 : 0] S00_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *)
input wire [3 : 0] S00_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWUSER" *)
input wire [113 : 0] S00_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *)
input wire S00_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *)
output wire S00_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *)
input wire [511 : 0] S00_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *)
input wire [63 : 0] S00_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *)
input wire S00_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WUSER" *)
input wire [13 : 0] S00_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *)
input wire S00_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *)
output wire S00_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *)
output wire [5 : 0] S00_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *)
output wire [1 : 0] S00_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BUSER" *)
output wire [113 : 0] S00_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *)
output wire S00_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *)
input wire S00_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *)
input wire [5 : 0] S00_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *)
input wire [31 : 0] S00_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *)
input wire [7 : 0] S00_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *)
input wire [2 : 0] S00_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *)
input wire [1 : 0] S00_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *)
input wire [0 : 0] S00_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *)
input wire [3 : 0] S00_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *)
input wire [2 : 0] S00_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *)
input wire [3 : 0] S00_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARUSER" *)
input wire [113 : 0] S00_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *)
input wire S00_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *)
output wire S00_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *)
output wire [5 : 0] S00_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *)
output wire [511 : 0] S00_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *)
output wire [1 : 0] S00_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *)
output wire S00_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RUSER" *)
output wire [13 : 0] S00_AXI_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *)
output wire S00_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 114, ARUSER_WIDTH 114, WUSER_WIDTH 14, RUSER_WIDTH 14, BUSER_WIDTH 114, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 32, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NU\
M_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *)
input wire S00_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR" *)
input wire [31 : 0] S01_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN" *)
input wire [7 : 0] S01_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE" *)
input wire [2 : 0] S01_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST" *)
input wire [1 : 0] S01_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK" *)
input wire [0 : 0] S01_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE" *)
input wire [3 : 0] S01_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT" *)
input wire [2 : 0] S01_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS" *)
input wire [3 : 0] S01_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID" *)
input wire S01_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY" *)
output wire S01_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RDATA" *)
output wire [31 : 0] S01_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RRESP" *)
output wire [1 : 0] S01_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RLAST" *)
output wire S01_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RVALID" *)
output wire S01_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE\
_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RREADY" *)
input wire S01_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWADDR" *)
input wire [31 : 0] S02_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLEN" *)
input wire [7 : 0] S02_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE" *)
input wire [2 : 0] S02_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWBURST" *)
input wire [1 : 0] S02_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK" *)
input wire [0 : 0] S02_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE" *)
input wire [3 : 0] S02_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWPROT" *)
input wire [2 : 0] S02_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWQOS" *)
input wire [3 : 0] S02_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWVALID" *)
input wire S02_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREADY" *)
output wire S02_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WDATA" *)
input wire [31 : 0] S02_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WSTRB" *)
input wire [3 : 0] S02_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WLAST" *)
input wire S02_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WVALID" *)
input wire S02_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WREADY" *)
output wire S02_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BRESP" *)
output wire [1 : 0] S02_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BVALID" *)
output wire S02_AXI_bvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S02_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 16, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRIT\
E_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BREADY" *)
input wire S02_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWADDR" *)
input wire [31 : 0] S03_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWPROT" *)
input wire [2 : 0] S03_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWVALID" *)
input wire S03_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWREADY" *)
output wire S03_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WDATA" *)
input wire [31 : 0] S03_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WSTRB" *)
input wire [3 : 0] S03_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WVALID" *)
input wire S03_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WREADY" *)
output wire S03_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BRESP" *)
output wire [1 : 0] S03_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BVALID" *)
output wire S03_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BREADY" *)
input wire S03_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARADDR" *)
input wire [31 : 0] S03_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARPROT" *)
input wire [2 : 0] S03_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARVALID" *)
input wire S03_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARREADY" *)
output wire S03_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RDATA" *)
output wire [31 : 0] S03_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RRESP" *)
output wire [1 : 0] S03_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RVALID" *)
output wire S03_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S03_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WR\
ITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RREADY" *)
input wire S03_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARADDR" *)
input wire [31 : 0] S04_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARLEN" *)
input wire [7 : 0] S04_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARSIZE" *)
input wire [2 : 0] S04_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARBURST" *)
input wire [1 : 0] S04_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARLOCK" *)
input wire [0 : 0] S04_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARCACHE" *)
input wire [3 : 0] S04_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARPROT" *)
input wire [2 : 0] S04_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARQOS" *)
input wire [3 : 0] S04_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARVALID" *)
input wire S04_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARREADY" *)
output wire S04_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RDATA" *)
output wire [31 : 0] S04_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RRESP" *)
output wire [1 : 0] S04_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RLAST" *)
output wire S04_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RVALID" *)
output wire S04_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S04_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE\
_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RREADY" *)
input wire S04_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWADDR" *)
input wire [31 : 0] S05_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWLEN" *)
input wire [7 : 0] S05_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWSIZE" *)
input wire [2 : 0] S05_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWBURST" *)
input wire [1 : 0] S05_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWLOCK" *)
input wire [0 : 0] S05_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWCACHE" *)
input wire [3 : 0] S05_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWPROT" *)
input wire [2 : 0] S05_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWQOS" *)
input wire [3 : 0] S05_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWVALID" *)
input wire S05_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWREADY" *)
output wire S05_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WDATA" *)
input wire [31 : 0] S05_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WSTRB" *)
input wire [3 : 0] S05_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WLAST" *)
input wire S05_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WVALID" *)
input wire S05_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WREADY" *)
output wire S05_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BRESP" *)
output wire [1 : 0] S05_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BVALID" *)
output wire S05_AXI_bvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S05_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 16, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRIT\
E_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BREADY" *)
input wire S05_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWADDR" *)
input wire [31 : 0] S06_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWPROT" *)
input wire [2 : 0] S06_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWVALID" *)
input wire S06_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWREADY" *)
output wire S06_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WDATA" *)
input wire [31 : 0] S06_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WSTRB" *)
input wire [3 : 0] S06_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WVALID" *)
input wire S06_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WREADY" *)
output wire S06_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BRESP" *)
output wire [1 : 0] S06_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BVALID" *)
output wire S06_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BREADY" *)
input wire S06_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARADDR" *)
input wire [31 : 0] S06_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARPROT" *)
input wire [2 : 0] S06_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARVALID" *)
input wire S06_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARREADY" *)
output wire S06_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RDATA" *)
output wire [31 : 0] S06_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RRESP" *)
output wire [1 : 0] S06_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RVALID" *)
output wire S06_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S06_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WR\
ITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RREADY" *)
input wire S06_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWADDR" *)
input wire [31 : 0] S07_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWLEN" *)
input wire [7 : 0] S07_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWSIZE" *)
input wire [2 : 0] S07_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWBURST" *)
input wire [1 : 0] S07_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWLOCK" *)
input wire [0 : 0] S07_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWCACHE" *)
input wire [3 : 0] S07_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWPROT" *)
input wire [2 : 0] S07_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWQOS" *)
input wire [3 : 0] S07_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWVALID" *)
input wire S07_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWREADY" *)
output wire S07_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WDATA" *)
input wire [31 : 0] S07_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WSTRB" *)
input wire [3 : 0] S07_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WLAST" *)
input wire S07_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WVALID" *)
input wire S07_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WREADY" *)
output wire S07_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI BRESP" *)
output wire [1 : 0] S07_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI BVALID" *)
output wire S07_AXI_bvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S07_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 16, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRIT\
E_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI BREADY" *)
input wire S07_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARADDR" *)
input wire [31 : 0] S08_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARLEN" *)
input wire [7 : 0] S08_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARSIZE" *)
input wire [2 : 0] S08_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARBURST" *)
input wire [1 : 0] S08_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARLOCK" *)
input wire [0 : 0] S08_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARCACHE" *)
input wire [3 : 0] S08_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARPROT" *)
input wire [2 : 0] S08_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARQOS" *)
input wire [3 : 0] S08_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARVALID" *)
input wire S08_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARREADY" *)
output wire S08_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI RDATA" *)
output wire [31 : 0] S08_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI RRESP" *)
output wire [1 : 0] S08_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI RLAST" *)
output wire S08_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI RVALID" *)
output wire S08_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S08_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE\
_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI RREADY" *)
input wire S08_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI AWADDR" *)
input wire [31 : 0] S09_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI AWLEN" *)
input wire [7 : 0] S09_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI AWSIZE" *)
input wire [2 : 0] S09_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI AWBURST" *)
input wire [1 : 0] S09_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI AWLOCK" *)
input wire [0 : 0] S09_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI AWCACHE" *)
input wire [3 : 0] S09_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI AWPROT" *)
input wire [2 : 0] S09_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI AWQOS" *)
input wire [3 : 0] S09_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI AWVALID" *)
input wire S09_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI AWREADY" *)
output wire S09_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI WDATA" *)
input wire [31 : 0] S09_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI WSTRB" *)
input wire [3 : 0] S09_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI WLAST" *)
input wire S09_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI WVALID" *)
input wire S09_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI WREADY" *)
output wire S09_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI BRESP" *)
output wire [1 : 0] S09_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI BVALID" *)
output wire S09_AXI_bvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S09_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 16, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRIT\
E_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S09_AXI BREADY" *)
input wire S09_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI ARADDR" *)
input wire [31 : 0] S10_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI ARLEN" *)
input wire [7 : 0] S10_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI ARSIZE" *)
input wire [2 : 0] S10_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI ARBURST" *)
input wire [1 : 0] S10_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI ARLOCK" *)
input wire [0 : 0] S10_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI ARCACHE" *)
input wire [3 : 0] S10_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI ARPROT" *)
input wire [2 : 0] S10_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI ARQOS" *)
input wire [3 : 0] S10_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI ARVALID" *)
input wire S10_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI ARREADY" *)
output wire S10_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI RDATA" *)
output wire [31 : 0] S10_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI RRESP" *)
output wire [1 : 0] S10_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI RLAST" *)
output wire S10_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI RVALID" *)
output wire S10_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S10_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE\
_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S10_AXI RREADY" *)
input wire S10_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI AWID" *)
input wire [5 : 0] S11_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI AWADDR" *)
input wire [31 : 0] S11_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI AWLEN" *)
input wire [7 : 0] S11_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI AWSIZE" *)
input wire [2 : 0] S11_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI AWBURST" *)
input wire [1 : 0] S11_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI AWLOCK" *)
input wire [0 : 0] S11_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI AWCACHE" *)
input wire [3 : 0] S11_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI AWPROT" *)
input wire [2 : 0] S11_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI AWQOS" *)
input wire [3 : 0] S11_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI AWUSER" *)
input wire [113 : 0] S11_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI AWVALID" *)
input wire S11_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI AWREADY" *)
output wire S11_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI WDATA" *)
input wire [511 : 0] S11_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI WSTRB" *)
input wire [63 : 0] S11_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI WLAST" *)
input wire S11_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI WUSER" *)
input wire [13 : 0] S11_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI WVALID" *)
input wire S11_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI WREADY" *)
output wire S11_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI BID" *)
output wire [5 : 0] S11_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI BRESP" *)
output wire [1 : 0] S11_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI BUSER" *)
output wire [113 : 0] S11_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI BVALID" *)
output wire S11_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI BREADY" *)
input wire S11_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI ARID" *)
input wire [5 : 0] S11_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI ARADDR" *)
input wire [31 : 0] S11_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI ARLEN" *)
input wire [7 : 0] S11_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI ARSIZE" *)
input wire [2 : 0] S11_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI ARBURST" *)
input wire [1 : 0] S11_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI ARLOCK" *)
input wire [0 : 0] S11_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI ARCACHE" *)
input wire [3 : 0] S11_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI ARPROT" *)
input wire [2 : 0] S11_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI ARQOS" *)
input wire [3 : 0] S11_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI ARUSER" *)
input wire [113 : 0] S11_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI ARVALID" *)
input wire S11_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI ARREADY" *)
output wire S11_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI RID" *)
output wire [5 : 0] S11_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI RDATA" *)
output wire [511 : 0] S11_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI RRESP" *)
output wire [1 : 0] S11_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI RLAST" *)
output wire S11_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI RUSER" *)
output wire [13 : 0] S11_AXI_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI RVALID" *)
output wire S11_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S11_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 114, ARUSER_WIDTH 114, WUSER_WIDTH 14, RUSER_WIDTH 14, BUSER_WIDTH 114, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.00, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1\
, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S11_AXI RREADY" *)
input wire S11_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI AWID" *)
input wire S12_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI AWADDR" *)
input wire S12_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI AWLEN" *)
input wire S12_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI AWSIZE" *)
input wire [2 : 0] S12_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI AWBURST" *)
input wire [1 : 0] S12_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI AWLOCK" *)
input wire S12_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI AWCACHE" *)
input wire [3 : 0] S12_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI AWPROT" *)
input wire [2 : 0] S12_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI AWREGION" *)
input wire [3 : 0] S12_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI AWQOS" *)
input wire [3 : 0] S12_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI AWUSER" *)
input wire S12_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI AWVALID" *)
input wire [0 : 0] S12_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI AWREADY" *)
output wire [0 : 0] S12_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI WID" *)
input wire S12_AXI_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI WDATA" *)
input wire S12_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI WSTRB" *)
input wire S12_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI WLAST" *)
input wire [0 : 0] S12_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI WUSER" *)
input wire S12_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI WVALID" *)
input wire [0 : 0] S12_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI WREADY" *)
output wire [0 : 0] S12_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI BID" *)
output wire S12_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI BRESP" *)
output wire [1 : 0] S12_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI BUSER" *)
output wire S12_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI BVALID" *)
output wire [0 : 0] S12_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI BREADY" *)
input wire [0 : 0] S12_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI ARID" *)
input wire S12_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI ARADDR" *)
input wire S12_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI ARLEN" *)
input wire S12_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI ARSIZE" *)
input wire [2 : 0] S12_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI ARBURST" *)
input wire [1 : 0] S12_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI ARLOCK" *)
input wire S12_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI ARCACHE" *)
input wire [3 : 0] S12_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI ARPROT" *)
input wire [2 : 0] S12_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI ARREGION" *)
input wire [3 : 0] S12_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI ARQOS" *)
input wire [3 : 0] S12_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI ARUSER" *)
input wire S12_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI ARVALID" *)
input wire [0 : 0] S12_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI ARREADY" *)
output wire [0 : 0] S12_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI RID" *)
output wire S12_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI RDATA" *)
output wire S12_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI RRESP" *)
output wire [1 : 0] S12_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI RLAST" *)
output wire [0 : 0] S12_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI RUSER" *)
output wire S12_AXI_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI RVALID" *)
output wire [0 : 0] S12_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S12_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.00, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_W\
RITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S12_AXI RREADY" *)
input wire [0 : 0] S12_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI AWID" *)
input wire S13_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI AWADDR" *)
input wire S13_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI AWLEN" *)
input wire S13_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI AWSIZE" *)
input wire [2 : 0] S13_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI AWBURST" *)
input wire [1 : 0] S13_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI AWLOCK" *)
input wire S13_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI AWCACHE" *)
input wire [3 : 0] S13_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI AWPROT" *)
input wire [2 : 0] S13_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI AWREGION" *)
input wire [3 : 0] S13_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI AWQOS" *)
input wire [3 : 0] S13_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI AWUSER" *)
input wire S13_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI AWVALID" *)
input wire [0 : 0] S13_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI AWREADY" *)
output wire [0 : 0] S13_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI WID" *)
input wire S13_AXI_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI WDATA" *)
input wire S13_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI WSTRB" *)
input wire S13_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI WLAST" *)
input wire [0 : 0] S13_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI WUSER" *)
input wire S13_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI WVALID" *)
input wire [0 : 0] S13_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI WREADY" *)
output wire [0 : 0] S13_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI BID" *)
output wire S13_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI BRESP" *)
output wire [1 : 0] S13_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI BUSER" *)
output wire S13_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI BVALID" *)
output wire [0 : 0] S13_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI BREADY" *)
input wire [0 : 0] S13_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI ARID" *)
input wire S13_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI ARADDR" *)
input wire S13_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI ARLEN" *)
input wire S13_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI ARSIZE" *)
input wire [2 : 0] S13_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI ARBURST" *)
input wire [1 : 0] S13_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI ARLOCK" *)
input wire S13_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI ARCACHE" *)
input wire [3 : 0] S13_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI ARPROT" *)
input wire [2 : 0] S13_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI ARREGION" *)
input wire [3 : 0] S13_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI ARQOS" *)
input wire [3 : 0] S13_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI ARUSER" *)
input wire S13_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI ARVALID" *)
input wire [0 : 0] S13_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI ARREADY" *)
output wire [0 : 0] S13_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI RID" *)
output wire S13_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI RDATA" *)
output wire S13_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI RRESP" *)
output wire [1 : 0] S13_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI RLAST" *)
output wire [0 : 0] S13_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI RUSER" *)
output wire S13_AXI_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI RVALID" *)
output wire [0 : 0] S13_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S13_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.00, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_W\
RITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S13_AXI RREADY" *)
input wire [0 : 0] S13_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI AWID" *)
input wire S14_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI AWADDR" *)
input wire S14_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI AWLEN" *)
input wire S14_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI AWSIZE" *)
input wire [2 : 0] S14_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI AWBURST" *)
input wire [1 : 0] S14_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI AWLOCK" *)
input wire S14_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI AWCACHE" *)
input wire [3 : 0] S14_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI AWPROT" *)
input wire [2 : 0] S14_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI AWREGION" *)
input wire [3 : 0] S14_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI AWQOS" *)
input wire [3 : 0] S14_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI AWUSER" *)
input wire S14_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI AWVALID" *)
input wire [0 : 0] S14_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI AWREADY" *)
output wire [0 : 0] S14_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI WID" *)
input wire S14_AXI_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI WDATA" *)
input wire S14_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI WSTRB" *)
input wire S14_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI WLAST" *)
input wire [0 : 0] S14_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI WUSER" *)
input wire S14_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI WVALID" *)
input wire [0 : 0] S14_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI WREADY" *)
output wire [0 : 0] S14_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI BID" *)
output wire S14_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI BRESP" *)
output wire [1 : 0] S14_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI BUSER" *)
output wire S14_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI BVALID" *)
output wire [0 : 0] S14_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI BREADY" *)
input wire [0 : 0] S14_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI ARID" *)
input wire S14_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI ARADDR" *)
input wire S14_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI ARLEN" *)
input wire S14_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI ARSIZE" *)
input wire [2 : 0] S14_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI ARBURST" *)
input wire [1 : 0] S14_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI ARLOCK" *)
input wire S14_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI ARCACHE" *)
input wire [3 : 0] S14_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI ARPROT" *)
input wire [2 : 0] S14_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI ARREGION" *)
input wire [3 : 0] S14_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI ARQOS" *)
input wire [3 : 0] S14_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI ARUSER" *)
input wire S14_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI ARVALID" *)
input wire [0 : 0] S14_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI ARREADY" *)
output wire [0 : 0] S14_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI RID" *)
output wire S14_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI RDATA" *)
output wire S14_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI RRESP" *)
output wire [1 : 0] S14_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI RLAST" *)
output wire [0 : 0] S14_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI RUSER" *)
output wire S14_AXI_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI RVALID" *)
output wire [0 : 0] S14_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S14_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.00, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_W\
RITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S14_AXI RREADY" *)
input wire [0 : 0] S14_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *)
output wire [30 : 0] M00_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *)
output wire [7 : 0] M00_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *)
output wire [2 : 0] M00_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *)
output wire [1 : 0] M00_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *)
output wire [0 : 0] M00_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *)
output wire [3 : 0] M00_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *)
output wire [2 : 0] M00_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *)
output wire [3 : 0] M00_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *)
output wire M00_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *)
input wire M00_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *)
output wire [511 : 0] M00_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *)
output wire [63 : 0] M00_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *)
output wire M00_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *)
output wire M00_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *)
input wire M00_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *)
input wire [1 : 0] M00_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *)
input wire M00_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *)
output wire M00_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *)
output wire [30 : 0] M00_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *)
output wire [7 : 0] M00_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *)
output wire [2 : 0] M00_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *)
output wire [1 : 0] M00_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *)
output wire [0 : 0] M00_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *)
output wire [3 : 0] M00_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *)
output wire [2 : 0] M00_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *)
output wire [3 : 0] M00_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *)
output wire M00_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *)
input wire M00_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *)
input wire [511 : 0] M00_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *)
input wire [1 : 0] M00_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *)
input wire M00_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *)
input wire M00_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 31, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 32, PHASE 0.00, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_W\
RITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *)
output wire M00_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR" *)
output wire [3 : 0] M01_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT" *)
output wire [2 : 0] M01_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID" *)
output wire M01_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY" *)
input wire M01_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WDATA" *)
output wire [31 : 0] M01_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB" *)
output wire [3 : 0] M01_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WVALID" *)
output wire M01_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WREADY" *)
input wire M01_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BRESP" *)
input wire [1 : 0] M01_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BVALID" *)
input wire M01_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BREADY" *)
output wire M01_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR" *)
output wire [3 : 0] M01_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT" *)
output wire [2 : 0] M01_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID" *)
output wire M01_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY" *)
input wire M01_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RDATA" *)
input wire [31 : 0] M01_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RRESP" *)
input wire [1 : 0] M01_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RVALID" *)
input wire M01_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.00, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RREADY" *)
output wire M01_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWADDR" *)
output wire [31 : 0] M02_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWPROT" *)
output wire [2 : 0] M02_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWVALID" *)
output wire M02_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWREADY" *)
input wire M02_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WDATA" *)
output wire [31 : 0] M02_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WSTRB" *)
output wire [3 : 0] M02_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WVALID" *)
output wire M02_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WREADY" *)
input wire M02_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BRESP" *)
input wire [1 : 0] M02_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BVALID" *)
input wire M02_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BREADY" *)
output wire M02_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARADDR" *)
output wire [31 : 0] M02_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARPROT" *)
output wire [2 : 0] M02_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARVALID" *)
output wire M02_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARREADY" *)
input wire M02_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RDATA" *)
input wire [31 : 0] M02_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RRESP" *)
input wire [1 : 0] M02_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RVALID" *)
input wire M02_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRIT\
E_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RREADY" *)
output wire M02_AXI_rready;

  bd_6f02 inst (
    .aclk(aclk),
    .aclk1(aclk1),
    .aclk2(aclk2),
    .aclk3(aclk3),
    .aresetn(aresetn),
    .S00_AXI_awid(S00_AXI_awid),
    .S00_AXI_awaddr(S00_AXI_awaddr),
    .S00_AXI_awlen(S00_AXI_awlen),
    .S00_AXI_awsize(S00_AXI_awsize),
    .S00_AXI_awburst(S00_AXI_awburst),
    .S00_AXI_awlock(S00_AXI_awlock),
    .S00_AXI_awcache(S00_AXI_awcache),
    .S00_AXI_awprot(S00_AXI_awprot),
    .S00_AXI_awqos(S00_AXI_awqos),
    .S00_AXI_awuser(S00_AXI_awuser),
    .S00_AXI_awvalid(S00_AXI_awvalid),
    .S00_AXI_awready(S00_AXI_awready),
    .S00_AXI_wdata(S00_AXI_wdata),
    .S00_AXI_wstrb(S00_AXI_wstrb),
    .S00_AXI_wlast(S00_AXI_wlast),
    .S00_AXI_wuser(S00_AXI_wuser),
    .S00_AXI_wvalid(S00_AXI_wvalid),
    .S00_AXI_wready(S00_AXI_wready),
    .S00_AXI_bid(S00_AXI_bid),
    .S00_AXI_bresp(S00_AXI_bresp),
    .S00_AXI_buser(S00_AXI_buser),
    .S00_AXI_bvalid(S00_AXI_bvalid),
    .S00_AXI_bready(S00_AXI_bready),
    .S00_AXI_arid(S00_AXI_arid),
    .S00_AXI_araddr(S00_AXI_araddr),
    .S00_AXI_arlen(S00_AXI_arlen),
    .S00_AXI_arsize(S00_AXI_arsize),
    .S00_AXI_arburst(S00_AXI_arburst),
    .S00_AXI_arlock(S00_AXI_arlock),
    .S00_AXI_arcache(S00_AXI_arcache),
    .S00_AXI_arprot(S00_AXI_arprot),
    .S00_AXI_arqos(S00_AXI_arqos),
    .S00_AXI_aruser(S00_AXI_aruser),
    .S00_AXI_arvalid(S00_AXI_arvalid),
    .S00_AXI_arready(S00_AXI_arready),
    .S00_AXI_rid(S00_AXI_rid),
    .S00_AXI_rdata(S00_AXI_rdata),
    .S00_AXI_rresp(S00_AXI_rresp),
    .S00_AXI_rlast(S00_AXI_rlast),
    .S00_AXI_ruser(S00_AXI_ruser),
    .S00_AXI_rvalid(S00_AXI_rvalid),
    .S00_AXI_rready(S00_AXI_rready),
    .S01_AXI_araddr(S01_AXI_araddr),
    .S01_AXI_arlen(S01_AXI_arlen),
    .S01_AXI_arsize(S01_AXI_arsize),
    .S01_AXI_arburst(S01_AXI_arburst),
    .S01_AXI_arlock(S01_AXI_arlock),
    .S01_AXI_arcache(S01_AXI_arcache),
    .S01_AXI_arprot(S01_AXI_arprot),
    .S01_AXI_arqos(S01_AXI_arqos),
    .S01_AXI_arvalid(S01_AXI_arvalid),
    .S01_AXI_arready(S01_AXI_arready),
    .S01_AXI_rdata(S01_AXI_rdata),
    .S01_AXI_rresp(S01_AXI_rresp),
    .S01_AXI_rlast(S01_AXI_rlast),
    .S01_AXI_rvalid(S01_AXI_rvalid),
    .S01_AXI_rready(S01_AXI_rready),
    .S02_AXI_awaddr(S02_AXI_awaddr),
    .S02_AXI_awlen(S02_AXI_awlen),
    .S02_AXI_awsize(S02_AXI_awsize),
    .S02_AXI_awburst(S02_AXI_awburst),
    .S02_AXI_awlock(S02_AXI_awlock),
    .S02_AXI_awcache(S02_AXI_awcache),
    .S02_AXI_awprot(S02_AXI_awprot),
    .S02_AXI_awqos(S02_AXI_awqos),
    .S02_AXI_awvalid(S02_AXI_awvalid),
    .S02_AXI_awready(S02_AXI_awready),
    .S02_AXI_wdata(S02_AXI_wdata),
    .S02_AXI_wstrb(S02_AXI_wstrb),
    .S02_AXI_wlast(S02_AXI_wlast),
    .S02_AXI_wvalid(S02_AXI_wvalid),
    .S02_AXI_wready(S02_AXI_wready),
    .S02_AXI_bresp(S02_AXI_bresp),
    .S02_AXI_bvalid(S02_AXI_bvalid),
    .S02_AXI_bready(S02_AXI_bready),
    .S03_AXI_awaddr(S03_AXI_awaddr),
    .S03_AXI_awprot(S03_AXI_awprot),
    .S03_AXI_awvalid(S03_AXI_awvalid),
    .S03_AXI_awready(S03_AXI_awready),
    .S03_AXI_wdata(S03_AXI_wdata),
    .S03_AXI_wstrb(S03_AXI_wstrb),
    .S03_AXI_wvalid(S03_AXI_wvalid),
    .S03_AXI_wready(S03_AXI_wready),
    .S03_AXI_bresp(S03_AXI_bresp),
    .S03_AXI_bvalid(S03_AXI_bvalid),
    .S03_AXI_bready(S03_AXI_bready),
    .S03_AXI_araddr(S03_AXI_araddr),
    .S03_AXI_arprot(S03_AXI_arprot),
    .S03_AXI_arvalid(S03_AXI_arvalid),
    .S03_AXI_arready(S03_AXI_arready),
    .S03_AXI_rdata(S03_AXI_rdata),
    .S03_AXI_rresp(S03_AXI_rresp),
    .S03_AXI_rvalid(S03_AXI_rvalid),
    .S03_AXI_rready(S03_AXI_rready),
    .S04_AXI_araddr(S04_AXI_araddr),
    .S04_AXI_arlen(S04_AXI_arlen),
    .S04_AXI_arsize(S04_AXI_arsize),
    .S04_AXI_arburst(S04_AXI_arburst),
    .S04_AXI_arlock(S04_AXI_arlock),
    .S04_AXI_arcache(S04_AXI_arcache),
    .S04_AXI_arprot(S04_AXI_arprot),
    .S04_AXI_arqos(S04_AXI_arqos),
    .S04_AXI_arvalid(S04_AXI_arvalid),
    .S04_AXI_arready(S04_AXI_arready),
    .S04_AXI_rdata(S04_AXI_rdata),
    .S04_AXI_rresp(S04_AXI_rresp),
    .S04_AXI_rlast(S04_AXI_rlast),
    .S04_AXI_rvalid(S04_AXI_rvalid),
    .S04_AXI_rready(S04_AXI_rready),
    .S05_AXI_awaddr(S05_AXI_awaddr),
    .S05_AXI_awlen(S05_AXI_awlen),
    .S05_AXI_awsize(S05_AXI_awsize),
    .S05_AXI_awburst(S05_AXI_awburst),
    .S05_AXI_awlock(S05_AXI_awlock),
    .S05_AXI_awcache(S05_AXI_awcache),
    .S05_AXI_awprot(S05_AXI_awprot),
    .S05_AXI_awqos(S05_AXI_awqos),
    .S05_AXI_awvalid(S05_AXI_awvalid),
    .S05_AXI_awready(S05_AXI_awready),
    .S05_AXI_wdata(S05_AXI_wdata),
    .S05_AXI_wstrb(S05_AXI_wstrb),
    .S05_AXI_wlast(S05_AXI_wlast),
    .S05_AXI_wvalid(S05_AXI_wvalid),
    .S05_AXI_wready(S05_AXI_wready),
    .S05_AXI_bresp(S05_AXI_bresp),
    .S05_AXI_bvalid(S05_AXI_bvalid),
    .S05_AXI_bready(S05_AXI_bready),
    .S06_AXI_awaddr(S06_AXI_awaddr),
    .S06_AXI_awprot(S06_AXI_awprot),
    .S06_AXI_awvalid(S06_AXI_awvalid),
    .S06_AXI_awready(S06_AXI_awready),
    .S06_AXI_wdata(S06_AXI_wdata),
    .S06_AXI_wstrb(S06_AXI_wstrb),
    .S06_AXI_wvalid(S06_AXI_wvalid),
    .S06_AXI_wready(S06_AXI_wready),
    .S06_AXI_bresp(S06_AXI_bresp),
    .S06_AXI_bvalid(S06_AXI_bvalid),
    .S06_AXI_bready(S06_AXI_bready),
    .S06_AXI_araddr(S06_AXI_araddr),
    .S06_AXI_arprot(S06_AXI_arprot),
    .S06_AXI_arvalid(S06_AXI_arvalid),
    .S06_AXI_arready(S06_AXI_arready),
    .S06_AXI_rdata(S06_AXI_rdata),
    .S06_AXI_rresp(S06_AXI_rresp),
    .S06_AXI_rvalid(S06_AXI_rvalid),
    .S06_AXI_rready(S06_AXI_rready),
    .S07_AXI_awaddr(S07_AXI_awaddr),
    .S07_AXI_awlen(S07_AXI_awlen),
    .S07_AXI_awsize(S07_AXI_awsize),
    .S07_AXI_awburst(S07_AXI_awburst),
    .S07_AXI_awlock(S07_AXI_awlock),
    .S07_AXI_awcache(S07_AXI_awcache),
    .S07_AXI_awprot(S07_AXI_awprot),
    .S07_AXI_awqos(S07_AXI_awqos),
    .S07_AXI_awvalid(S07_AXI_awvalid),
    .S07_AXI_awready(S07_AXI_awready),
    .S07_AXI_wdata(S07_AXI_wdata),
    .S07_AXI_wstrb(S07_AXI_wstrb),
    .S07_AXI_wlast(S07_AXI_wlast),
    .S07_AXI_wvalid(S07_AXI_wvalid),
    .S07_AXI_wready(S07_AXI_wready),
    .S07_AXI_bresp(S07_AXI_bresp),
    .S07_AXI_bvalid(S07_AXI_bvalid),
    .S07_AXI_bready(S07_AXI_bready),
    .S08_AXI_araddr(S08_AXI_araddr),
    .S08_AXI_arlen(S08_AXI_arlen),
    .S08_AXI_arsize(S08_AXI_arsize),
    .S08_AXI_arburst(S08_AXI_arburst),
    .S08_AXI_arlock(S08_AXI_arlock),
    .S08_AXI_arcache(S08_AXI_arcache),
    .S08_AXI_arprot(S08_AXI_arprot),
    .S08_AXI_arqos(S08_AXI_arqos),
    .S08_AXI_arvalid(S08_AXI_arvalid),
    .S08_AXI_arready(S08_AXI_arready),
    .S08_AXI_rdata(S08_AXI_rdata),
    .S08_AXI_rresp(S08_AXI_rresp),
    .S08_AXI_rlast(S08_AXI_rlast),
    .S08_AXI_rvalid(S08_AXI_rvalid),
    .S08_AXI_rready(S08_AXI_rready),
    .S09_AXI_awaddr(S09_AXI_awaddr),
    .S09_AXI_awlen(S09_AXI_awlen),
    .S09_AXI_awsize(S09_AXI_awsize),
    .S09_AXI_awburst(S09_AXI_awburst),
    .S09_AXI_awlock(S09_AXI_awlock),
    .S09_AXI_awcache(S09_AXI_awcache),
    .S09_AXI_awprot(S09_AXI_awprot),
    .S09_AXI_awqos(S09_AXI_awqos),
    .S09_AXI_awvalid(S09_AXI_awvalid),
    .S09_AXI_awready(S09_AXI_awready),
    .S09_AXI_wdata(S09_AXI_wdata),
    .S09_AXI_wstrb(S09_AXI_wstrb),
    .S09_AXI_wlast(S09_AXI_wlast),
    .S09_AXI_wvalid(S09_AXI_wvalid),
    .S09_AXI_wready(S09_AXI_wready),
    .S09_AXI_bresp(S09_AXI_bresp),
    .S09_AXI_bvalid(S09_AXI_bvalid),
    .S09_AXI_bready(S09_AXI_bready),
    .S10_AXI_araddr(S10_AXI_araddr),
    .S10_AXI_arlen(S10_AXI_arlen),
    .S10_AXI_arsize(S10_AXI_arsize),
    .S10_AXI_arburst(S10_AXI_arburst),
    .S10_AXI_arlock(S10_AXI_arlock),
    .S10_AXI_arcache(S10_AXI_arcache),
    .S10_AXI_arprot(S10_AXI_arprot),
    .S10_AXI_arqos(S10_AXI_arqos),
    .S10_AXI_arvalid(S10_AXI_arvalid),
    .S10_AXI_arready(S10_AXI_arready),
    .S10_AXI_rdata(S10_AXI_rdata),
    .S10_AXI_rresp(S10_AXI_rresp),
    .S10_AXI_rlast(S10_AXI_rlast),
    .S10_AXI_rvalid(S10_AXI_rvalid),
    .S10_AXI_rready(S10_AXI_rready),
    .S11_AXI_awid(S11_AXI_awid),
    .S11_AXI_awaddr(S11_AXI_awaddr),
    .S11_AXI_awlen(S11_AXI_awlen),
    .S11_AXI_awsize(S11_AXI_awsize),
    .S11_AXI_awburst(S11_AXI_awburst),
    .S11_AXI_awlock(S11_AXI_awlock),
    .S11_AXI_awcache(S11_AXI_awcache),
    .S11_AXI_awprot(S11_AXI_awprot),
    .S11_AXI_awqos(S11_AXI_awqos),
    .S11_AXI_awuser(S11_AXI_awuser),
    .S11_AXI_awvalid(S11_AXI_awvalid),
    .S11_AXI_awready(S11_AXI_awready),
    .S11_AXI_wdata(S11_AXI_wdata),
    .S11_AXI_wstrb(S11_AXI_wstrb),
    .S11_AXI_wlast(S11_AXI_wlast),
    .S11_AXI_wuser(S11_AXI_wuser),
    .S11_AXI_wvalid(S11_AXI_wvalid),
    .S11_AXI_wready(S11_AXI_wready),
    .S11_AXI_bid(S11_AXI_bid),
    .S11_AXI_bresp(S11_AXI_bresp),
    .S11_AXI_buser(S11_AXI_buser),
    .S11_AXI_bvalid(S11_AXI_bvalid),
    .S11_AXI_bready(S11_AXI_bready),
    .S11_AXI_arid(S11_AXI_arid),
    .S11_AXI_araddr(S11_AXI_araddr),
    .S11_AXI_arlen(S11_AXI_arlen),
    .S11_AXI_arsize(S11_AXI_arsize),
    .S11_AXI_arburst(S11_AXI_arburst),
    .S11_AXI_arlock(S11_AXI_arlock),
    .S11_AXI_arcache(S11_AXI_arcache),
    .S11_AXI_arprot(S11_AXI_arprot),
    .S11_AXI_arqos(S11_AXI_arqos),
    .S11_AXI_aruser(S11_AXI_aruser),
    .S11_AXI_arvalid(S11_AXI_arvalid),
    .S11_AXI_arready(S11_AXI_arready),
    .S11_AXI_rid(S11_AXI_rid),
    .S11_AXI_rdata(S11_AXI_rdata),
    .S11_AXI_rresp(S11_AXI_rresp),
    .S11_AXI_rlast(S11_AXI_rlast),
    .S11_AXI_ruser(S11_AXI_ruser),
    .S11_AXI_rvalid(S11_AXI_rvalid),
    .S11_AXI_rready(S11_AXI_rready),
    .S12_AXI_awid(S12_AXI_awid),
    .S12_AXI_awaddr(S12_AXI_awaddr),
    .S12_AXI_awlen(S12_AXI_awlen),
    .S12_AXI_awsize(S12_AXI_awsize),
    .S12_AXI_awburst(S12_AXI_awburst),
    .S12_AXI_awlock(S12_AXI_awlock),
    .S12_AXI_awcache(S12_AXI_awcache),
    .S12_AXI_awprot(S12_AXI_awprot),
    .S12_AXI_awregion(S12_AXI_awregion),
    .S12_AXI_awqos(S12_AXI_awqos),
    .S12_AXI_awuser(S12_AXI_awuser),
    .S12_AXI_awvalid(S12_AXI_awvalid),
    .S12_AXI_awready(S12_AXI_awready),
    .S12_AXI_wid(S12_AXI_wid),
    .S12_AXI_wdata(S12_AXI_wdata),
    .S12_AXI_wstrb(S12_AXI_wstrb),
    .S12_AXI_wlast(S12_AXI_wlast),
    .S12_AXI_wuser(S12_AXI_wuser),
    .S12_AXI_wvalid(S12_AXI_wvalid),
    .S12_AXI_wready(S12_AXI_wready),
    .S12_AXI_bid(S12_AXI_bid),
    .S12_AXI_bresp(S12_AXI_bresp),
    .S12_AXI_buser(S12_AXI_buser),
    .S12_AXI_bvalid(S12_AXI_bvalid),
    .S12_AXI_bready(S12_AXI_bready),
    .S12_AXI_arid(S12_AXI_arid),
    .S12_AXI_araddr(S12_AXI_araddr),
    .S12_AXI_arlen(S12_AXI_arlen),
    .S12_AXI_arsize(S12_AXI_arsize),
    .S12_AXI_arburst(S12_AXI_arburst),
    .S12_AXI_arlock(S12_AXI_arlock),
    .S12_AXI_arcache(S12_AXI_arcache),
    .S12_AXI_arprot(S12_AXI_arprot),
    .S12_AXI_arregion(S12_AXI_arregion),
    .S12_AXI_arqos(S12_AXI_arqos),
    .S12_AXI_aruser(S12_AXI_aruser),
    .S12_AXI_arvalid(S12_AXI_arvalid),
    .S12_AXI_arready(S12_AXI_arready),
    .S12_AXI_rid(S12_AXI_rid),
    .S12_AXI_rdata(S12_AXI_rdata),
    .S12_AXI_rresp(S12_AXI_rresp),
    .S12_AXI_rlast(S12_AXI_rlast),
    .S12_AXI_ruser(S12_AXI_ruser),
    .S12_AXI_rvalid(S12_AXI_rvalid),
    .S12_AXI_rready(S12_AXI_rready),
    .S13_AXI_awid(S13_AXI_awid),
    .S13_AXI_awaddr(S13_AXI_awaddr),
    .S13_AXI_awlen(S13_AXI_awlen),
    .S13_AXI_awsize(S13_AXI_awsize),
    .S13_AXI_awburst(S13_AXI_awburst),
    .S13_AXI_awlock(S13_AXI_awlock),
    .S13_AXI_awcache(S13_AXI_awcache),
    .S13_AXI_awprot(S13_AXI_awprot),
    .S13_AXI_awregion(S13_AXI_awregion),
    .S13_AXI_awqos(S13_AXI_awqos),
    .S13_AXI_awuser(S13_AXI_awuser),
    .S13_AXI_awvalid(S13_AXI_awvalid),
    .S13_AXI_awready(S13_AXI_awready),
    .S13_AXI_wid(S13_AXI_wid),
    .S13_AXI_wdata(S13_AXI_wdata),
    .S13_AXI_wstrb(S13_AXI_wstrb),
    .S13_AXI_wlast(S13_AXI_wlast),
    .S13_AXI_wuser(S13_AXI_wuser),
    .S13_AXI_wvalid(S13_AXI_wvalid),
    .S13_AXI_wready(S13_AXI_wready),
    .S13_AXI_bid(S13_AXI_bid),
    .S13_AXI_bresp(S13_AXI_bresp),
    .S13_AXI_buser(S13_AXI_buser),
    .S13_AXI_bvalid(S13_AXI_bvalid),
    .S13_AXI_bready(S13_AXI_bready),
    .S13_AXI_arid(S13_AXI_arid),
    .S13_AXI_araddr(S13_AXI_araddr),
    .S13_AXI_arlen(S13_AXI_arlen),
    .S13_AXI_arsize(S13_AXI_arsize),
    .S13_AXI_arburst(S13_AXI_arburst),
    .S13_AXI_arlock(S13_AXI_arlock),
    .S13_AXI_arcache(S13_AXI_arcache),
    .S13_AXI_arprot(S13_AXI_arprot),
    .S13_AXI_arregion(S13_AXI_arregion),
    .S13_AXI_arqos(S13_AXI_arqos),
    .S13_AXI_aruser(S13_AXI_aruser),
    .S13_AXI_arvalid(S13_AXI_arvalid),
    .S13_AXI_arready(S13_AXI_arready),
    .S13_AXI_rid(S13_AXI_rid),
    .S13_AXI_rdata(S13_AXI_rdata),
    .S13_AXI_rresp(S13_AXI_rresp),
    .S13_AXI_rlast(S13_AXI_rlast),
    .S13_AXI_ruser(S13_AXI_ruser),
    .S13_AXI_rvalid(S13_AXI_rvalid),
    .S13_AXI_rready(S13_AXI_rready),
    .S14_AXI_awid(S14_AXI_awid),
    .S14_AXI_awaddr(S14_AXI_awaddr),
    .S14_AXI_awlen(S14_AXI_awlen),
    .S14_AXI_awsize(S14_AXI_awsize),
    .S14_AXI_awburst(S14_AXI_awburst),
    .S14_AXI_awlock(S14_AXI_awlock),
    .S14_AXI_awcache(S14_AXI_awcache),
    .S14_AXI_awprot(S14_AXI_awprot),
    .S14_AXI_awregion(S14_AXI_awregion),
    .S14_AXI_awqos(S14_AXI_awqos),
    .S14_AXI_awuser(S14_AXI_awuser),
    .S14_AXI_awvalid(S14_AXI_awvalid),
    .S14_AXI_awready(S14_AXI_awready),
    .S14_AXI_wid(S14_AXI_wid),
    .S14_AXI_wdata(S14_AXI_wdata),
    .S14_AXI_wstrb(S14_AXI_wstrb),
    .S14_AXI_wlast(S14_AXI_wlast),
    .S14_AXI_wuser(S14_AXI_wuser),
    .S14_AXI_wvalid(S14_AXI_wvalid),
    .S14_AXI_wready(S14_AXI_wready),
    .S14_AXI_bid(S14_AXI_bid),
    .S14_AXI_bresp(S14_AXI_bresp),
    .S14_AXI_buser(S14_AXI_buser),
    .S14_AXI_bvalid(S14_AXI_bvalid),
    .S14_AXI_bready(S14_AXI_bready),
    .S14_AXI_arid(S14_AXI_arid),
    .S14_AXI_araddr(S14_AXI_araddr),
    .S14_AXI_arlen(S14_AXI_arlen),
    .S14_AXI_arsize(S14_AXI_arsize),
    .S14_AXI_arburst(S14_AXI_arburst),
    .S14_AXI_arlock(S14_AXI_arlock),
    .S14_AXI_arcache(S14_AXI_arcache),
    .S14_AXI_arprot(S14_AXI_arprot),
    .S14_AXI_arregion(S14_AXI_arregion),
    .S14_AXI_arqos(S14_AXI_arqos),
    .S14_AXI_aruser(S14_AXI_aruser),
    .S14_AXI_arvalid(S14_AXI_arvalid),
    .S14_AXI_arready(S14_AXI_arready),
    .S14_AXI_rid(S14_AXI_rid),
    .S14_AXI_rdata(S14_AXI_rdata),
    .S14_AXI_rresp(S14_AXI_rresp),
    .S14_AXI_rlast(S14_AXI_rlast),
    .S14_AXI_ruser(S14_AXI_ruser),
    .S14_AXI_rvalid(S14_AXI_rvalid),
    .S14_AXI_rready(S14_AXI_rready),
    .M00_AXI_awaddr(M00_AXI_awaddr),
    .M00_AXI_awlen(M00_AXI_awlen),
    .M00_AXI_awsize(M00_AXI_awsize),
    .M00_AXI_awburst(M00_AXI_awburst),
    .M00_AXI_awlock(M00_AXI_awlock),
    .M00_AXI_awcache(M00_AXI_awcache),
    .M00_AXI_awprot(M00_AXI_awprot),
    .M00_AXI_awqos(M00_AXI_awqos),
    .M00_AXI_awvalid(M00_AXI_awvalid),
    .M00_AXI_awready(M00_AXI_awready),
    .M00_AXI_wdata(M00_AXI_wdata),
    .M00_AXI_wstrb(M00_AXI_wstrb),
    .M00_AXI_wlast(M00_AXI_wlast),
    .M00_AXI_wvalid(M00_AXI_wvalid),
    .M00_AXI_wready(M00_AXI_wready),
    .M00_AXI_bresp(M00_AXI_bresp),
    .M00_AXI_bvalid(M00_AXI_bvalid),
    .M00_AXI_bready(M00_AXI_bready),
    .M00_AXI_araddr(M00_AXI_araddr),
    .M00_AXI_arlen(M00_AXI_arlen),
    .M00_AXI_arsize(M00_AXI_arsize),
    .M00_AXI_arburst(M00_AXI_arburst),
    .M00_AXI_arlock(M00_AXI_arlock),
    .M00_AXI_arcache(M00_AXI_arcache),
    .M00_AXI_arprot(M00_AXI_arprot),
    .M00_AXI_arqos(M00_AXI_arqos),
    .M00_AXI_arvalid(M00_AXI_arvalid),
    .M00_AXI_arready(M00_AXI_arready),
    .M00_AXI_rdata(M00_AXI_rdata),
    .M00_AXI_rresp(M00_AXI_rresp),
    .M00_AXI_rlast(M00_AXI_rlast),
    .M00_AXI_rvalid(M00_AXI_rvalid),
    .M00_AXI_rready(M00_AXI_rready),
    .M01_AXI_awaddr(M01_AXI_awaddr),
    .M01_AXI_awprot(M01_AXI_awprot),
    .M01_AXI_awvalid(M01_AXI_awvalid),
    .M01_AXI_awready(M01_AXI_awready),
    .M01_AXI_wdata(M01_AXI_wdata),
    .M01_AXI_wstrb(M01_AXI_wstrb),
    .M01_AXI_wvalid(M01_AXI_wvalid),
    .M01_AXI_wready(M01_AXI_wready),
    .M01_AXI_bresp(M01_AXI_bresp),
    .M01_AXI_bvalid(M01_AXI_bvalid),
    .M01_AXI_bready(M01_AXI_bready),
    .M01_AXI_araddr(M01_AXI_araddr),
    .M01_AXI_arprot(M01_AXI_arprot),
    .M01_AXI_arvalid(M01_AXI_arvalid),
    .M01_AXI_arready(M01_AXI_arready),
    .M01_AXI_rdata(M01_AXI_rdata),
    .M01_AXI_rresp(M01_AXI_rresp),
    .M01_AXI_rvalid(M01_AXI_rvalid),
    .M01_AXI_rready(M01_AXI_rready),
    .M02_AXI_awaddr(M02_AXI_awaddr),
    .M02_AXI_awprot(M02_AXI_awprot),
    .M02_AXI_awvalid(M02_AXI_awvalid),
    .M02_AXI_awready(M02_AXI_awready),
    .M02_AXI_wdata(M02_AXI_wdata),
    .M02_AXI_wstrb(M02_AXI_wstrb),
    .M02_AXI_wvalid(M02_AXI_wvalid),
    .M02_AXI_wready(M02_AXI_wready),
    .M02_AXI_bresp(M02_AXI_bresp),
    .M02_AXI_bvalid(M02_AXI_bvalid),
    .M02_AXI_bready(M02_AXI_bready),
    .M02_AXI_araddr(M02_AXI_araddr),
    .M02_AXI_arprot(M02_AXI_arprot),
    .M02_AXI_arvalid(M02_AXI_arvalid),
    .M02_AXI_arready(M02_AXI_arready),
    .M02_AXI_rdata(M02_AXI_rdata),
    .M02_AXI_rresp(M02_AXI_rresp),
    .M02_AXI_rvalid(M02_AXI_rvalid),
    .M02_AXI_rready(M02_AXI_rready)
  );
endmodule
