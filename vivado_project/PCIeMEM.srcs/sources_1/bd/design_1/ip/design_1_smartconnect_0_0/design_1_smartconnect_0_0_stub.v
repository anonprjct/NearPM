// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Mar 12 23:47:29 2021
// Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/oem/RTL/backups/Undolog1/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/design_1_smartconnect_0_0_stub.v
// Design      : design_1_smartconnect_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_48ac,Vivado 2018.2" *)
module design_1_smartconnect_0_0(aclk, aclk1, aclk2, aclk3, aresetn, S00_AXI_araddr, 
  S00_AXI_arlen, S00_AXI_arsize, S00_AXI_arburst, S00_AXI_arlock, S00_AXI_arcache, 
  S00_AXI_arprot, S00_AXI_arqos, S00_AXI_arvalid, S00_AXI_arready, S00_AXI_rdata, 
  S00_AXI_rresp, S00_AXI_rlast, S00_AXI_rvalid, S00_AXI_rready, S01_AXI_awaddr, 
  S01_AXI_awlen, S01_AXI_awsize, S01_AXI_awburst, S01_AXI_awlock, S01_AXI_awcache, 
  S01_AXI_awprot, S01_AXI_awqos, S01_AXI_awvalid, S01_AXI_awready, S01_AXI_wdata, 
  S01_AXI_wstrb, S01_AXI_wlast, S01_AXI_wvalid, S01_AXI_wready, S01_AXI_bresp, 
  S01_AXI_bvalid, S01_AXI_bready, S02_AXI_araddr, S02_AXI_arlen, S02_AXI_arsize, 
  S02_AXI_arburst, S02_AXI_arlock, S02_AXI_arcache, S02_AXI_arprot, S02_AXI_arqos, 
  S02_AXI_arvalid, S02_AXI_arready, S02_AXI_rdata, S02_AXI_rresp, S02_AXI_rlast, 
  S02_AXI_rvalid, S02_AXI_rready, S03_AXI_awaddr, S03_AXI_awlen, S03_AXI_awsize, 
  S03_AXI_awburst, S03_AXI_awlock, S03_AXI_awcache, S03_AXI_awprot, S03_AXI_awqos, 
  S03_AXI_awvalid, S03_AXI_awready, S03_AXI_wdata, S03_AXI_wstrb, S03_AXI_wlast, 
  S03_AXI_wvalid, S03_AXI_wready, S03_AXI_bresp, S03_AXI_bvalid, S03_AXI_bready, 
  S04_AXI_awaddr, S04_AXI_awprot, S04_AXI_awvalid, S04_AXI_awready, S04_AXI_wdata, 
  S04_AXI_wstrb, S04_AXI_wvalid, S04_AXI_wready, S04_AXI_bresp, S04_AXI_bvalid, 
  S04_AXI_bready, S04_AXI_araddr, S04_AXI_arprot, S04_AXI_arvalid, S04_AXI_arready, 
  S04_AXI_rdata, S04_AXI_rresp, S04_AXI_rvalid, S04_AXI_rready, S05_AXI_araddr, 
  S05_AXI_arlen, S05_AXI_arsize, S05_AXI_arburst, S05_AXI_arlock, S05_AXI_arcache, 
  S05_AXI_arprot, S05_AXI_arqos, S05_AXI_arvalid, S05_AXI_arready, S05_AXI_rdata, 
  S05_AXI_rresp, S05_AXI_rlast, S05_AXI_rvalid, S05_AXI_rready, S06_AXI_awaddr, 
  S06_AXI_awlen, S06_AXI_awsize, S06_AXI_awburst, S06_AXI_awlock, S06_AXI_awcache, 
  S06_AXI_awprot, S06_AXI_awqos, S06_AXI_awvalid, S06_AXI_awready, S06_AXI_wdata, 
  S06_AXI_wstrb, S06_AXI_wlast, S06_AXI_wvalid, S06_AXI_wready, S06_AXI_bresp, 
  S06_AXI_bvalid, S06_AXI_bready, S07_AXI_awaddr, S07_AXI_awlen, S07_AXI_awsize, 
  S07_AXI_awburst, S07_AXI_awlock, S07_AXI_awcache, S07_AXI_awprot, S07_AXI_awqos, 
  S07_AXI_awvalid, S07_AXI_awready, S07_AXI_wdata, S07_AXI_wstrb, S07_AXI_wlast, 
  S07_AXI_wvalid, S07_AXI_wready, S07_AXI_bresp, S07_AXI_bvalid, S07_AXI_bready, 
  S08_AXI_araddr, S08_AXI_arlen, S08_AXI_arsize, S08_AXI_arburst, S08_AXI_arlock, 
  S08_AXI_arcache, S08_AXI_arprot, S08_AXI_arqos, S08_AXI_arvalid, S08_AXI_arready, 
  S08_AXI_rdata, S08_AXI_rresp, S08_AXI_rlast, S08_AXI_rvalid, S08_AXI_rready, 
  S09_AXI_awaddr, S09_AXI_awprot, S09_AXI_awvalid, S09_AXI_awready, S09_AXI_wdata, 
  S09_AXI_wstrb, S09_AXI_wvalid, S09_AXI_wready, S09_AXI_bresp, S09_AXI_bvalid, 
  S09_AXI_bready, S09_AXI_araddr, S09_AXI_arprot, S09_AXI_arvalid, S09_AXI_arready, 
  S09_AXI_rdata, S09_AXI_rresp, S09_AXI_rvalid, S09_AXI_rready, M00_AXI_awid, M00_AXI_awaddr, 
  M00_AXI_awlen, M00_AXI_awsize, M00_AXI_awburst, M00_AXI_awlock, M00_AXI_awcache, 
  M00_AXI_awprot, M00_AXI_awqos, M00_AXI_awuser, M00_AXI_awvalid, M00_AXI_awready, 
  M00_AXI_wdata, M00_AXI_wstrb, M00_AXI_wlast, M00_AXI_wuser, M00_AXI_wvalid, M00_AXI_wready, 
  M00_AXI_bid, M00_AXI_bresp, M00_AXI_buser, M00_AXI_bvalid, M00_AXI_bready, M00_AXI_arid, 
  M00_AXI_araddr, M00_AXI_arlen, M00_AXI_arsize, M00_AXI_arburst, M00_AXI_arlock, 
  M00_AXI_arcache, M00_AXI_arprot, M00_AXI_arqos, M00_AXI_aruser, M00_AXI_arvalid, 
  M00_AXI_arready, M00_AXI_rid, M00_AXI_rdata, M00_AXI_rresp, M00_AXI_rlast, M00_AXI_ruser, 
  M00_AXI_rvalid, M00_AXI_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aclk1,aclk2,aclk3,aresetn,S00_AXI_araddr[31:0],S00_AXI_arlen[7:0],S00_AXI_arsize[2:0],S00_AXI_arburst[1:0],S00_AXI_arlock[0:0],S00_AXI_arcache[3:0],S00_AXI_arprot[2:0],S00_AXI_arqos[3:0],S00_AXI_arvalid,S00_AXI_arready,S00_AXI_rdata[31:0],S00_AXI_rresp[1:0],S00_AXI_rlast,S00_AXI_rvalid,S00_AXI_rready,S01_AXI_awaddr[31:0],S01_AXI_awlen[7:0],S01_AXI_awsize[2:0],S01_AXI_awburst[1:0],S01_AXI_awlock[0:0],S01_AXI_awcache[3:0],S01_AXI_awprot[2:0],S01_AXI_awqos[3:0],S01_AXI_awvalid,S01_AXI_awready,S01_AXI_wdata[31:0],S01_AXI_wstrb[3:0],S01_AXI_wlast,S01_AXI_wvalid,S01_AXI_wready,S01_AXI_bresp[1:0],S01_AXI_bvalid,S01_AXI_bready,S02_AXI_araddr[31:0],S02_AXI_arlen[7:0],S02_AXI_arsize[2:0],S02_AXI_arburst[1:0],S02_AXI_arlock[0:0],S02_AXI_arcache[3:0],S02_AXI_arprot[2:0],S02_AXI_arqos[3:0],S02_AXI_arvalid,S02_AXI_arready,S02_AXI_rdata[31:0],S02_AXI_rresp[1:0],S02_AXI_rlast,S02_AXI_rvalid,S02_AXI_rready,S03_AXI_awaddr[31:0],S03_AXI_awlen[7:0],S03_AXI_awsize[2:0],S03_AXI_awburst[1:0],S03_AXI_awlock[0:0],S03_AXI_awcache[3:0],S03_AXI_awprot[2:0],S03_AXI_awqos[3:0],S03_AXI_awvalid,S03_AXI_awready,S03_AXI_wdata[31:0],S03_AXI_wstrb[3:0],S03_AXI_wlast,S03_AXI_wvalid,S03_AXI_wready,S03_AXI_bresp[1:0],S03_AXI_bvalid,S03_AXI_bready,S04_AXI_awaddr[31:0],S04_AXI_awprot[2:0],S04_AXI_awvalid,S04_AXI_awready,S04_AXI_wdata[31:0],S04_AXI_wstrb[3:0],S04_AXI_wvalid,S04_AXI_wready,S04_AXI_bresp[1:0],S04_AXI_bvalid,S04_AXI_bready,S04_AXI_araddr[31:0],S04_AXI_arprot[2:0],S04_AXI_arvalid,S04_AXI_arready,S04_AXI_rdata[31:0],S04_AXI_rresp[1:0],S04_AXI_rvalid,S04_AXI_rready,S05_AXI_araddr[31:0],S05_AXI_arlen[7:0],S05_AXI_arsize[2:0],S05_AXI_arburst[1:0],S05_AXI_arlock[0:0],S05_AXI_arcache[3:0],S05_AXI_arprot[2:0],S05_AXI_arqos[3:0],S05_AXI_arvalid,S05_AXI_arready,S05_AXI_rdata[31:0],S05_AXI_rresp[1:0],S05_AXI_rlast,S05_AXI_rvalid,S05_AXI_rready,S06_AXI_awaddr[31:0],S06_AXI_awlen[7:0],S06_AXI_awsize[2:0],S06_AXI_awburst[1:0],S06_AXI_awlock[0:0],S06_AXI_awcache[3:0],S06_AXI_awprot[2:0],S06_AXI_awqos[3:0],S06_AXI_awvalid,S06_AXI_awready,S06_AXI_wdata[31:0],S06_AXI_wstrb[3:0],S06_AXI_wlast,S06_AXI_wvalid,S06_AXI_wready,S06_AXI_bresp[1:0],S06_AXI_bvalid,S06_AXI_bready,S07_AXI_awaddr[31:0],S07_AXI_awlen[7:0],S07_AXI_awsize[2:0],S07_AXI_awburst[1:0],S07_AXI_awlock[0:0],S07_AXI_awcache[3:0],S07_AXI_awprot[2:0],S07_AXI_awqos[3:0],S07_AXI_awvalid,S07_AXI_awready,S07_AXI_wdata[31:0],S07_AXI_wstrb[3:0],S07_AXI_wlast,S07_AXI_wvalid,S07_AXI_wready,S07_AXI_bresp[1:0],S07_AXI_bvalid,S07_AXI_bready,S08_AXI_araddr[31:0],S08_AXI_arlen[7:0],S08_AXI_arsize[2:0],S08_AXI_arburst[1:0],S08_AXI_arlock[0:0],S08_AXI_arcache[3:0],S08_AXI_arprot[2:0],S08_AXI_arqos[3:0],S08_AXI_arvalid,S08_AXI_arready,S08_AXI_rdata[31:0],S08_AXI_rresp[1:0],S08_AXI_rlast,S08_AXI_rvalid,S08_AXI_rready,S09_AXI_awaddr[31:0],S09_AXI_awprot[2:0],S09_AXI_awvalid,S09_AXI_awready,S09_AXI_wdata[31:0],S09_AXI_wstrb[3:0],S09_AXI_wvalid,S09_AXI_wready,S09_AXI_bresp[1:0],S09_AXI_bvalid,S09_AXI_bready,S09_AXI_araddr[31:0],S09_AXI_arprot[2:0],S09_AXI_arvalid,S09_AXI_arready,S09_AXI_rdata[31:0],S09_AXI_rresp[1:0],S09_AXI_rvalid,S09_AXI_rready,M00_AXI_awid[5:0],M00_AXI_awaddr[31:0],M00_AXI_awlen[7:0],M00_AXI_awsize[2:0],M00_AXI_awburst[1:0],M00_AXI_awlock[0:0],M00_AXI_awcache[3:0],M00_AXI_awprot[2:0],M00_AXI_awqos[3:0],M00_AXI_awuser[113:0],M00_AXI_awvalid,M00_AXI_awready,M00_AXI_wdata[511:0],M00_AXI_wstrb[63:0],M00_AXI_wlast,M00_AXI_wuser[13:0],M00_AXI_wvalid,M00_AXI_wready,M00_AXI_bid[5:0],M00_AXI_bresp[1:0],M00_AXI_buser[113:0],M00_AXI_bvalid,M00_AXI_bready,M00_AXI_arid[5:0],M00_AXI_araddr[31:0],M00_AXI_arlen[7:0],M00_AXI_arsize[2:0],M00_AXI_arburst[1:0],M00_AXI_arlock[0:0],M00_AXI_arcache[3:0],M00_AXI_arprot[2:0],M00_AXI_arqos[3:0],M00_AXI_aruser[113:0],M00_AXI_arvalid,M00_AXI_arready,M00_AXI_rid[5:0],M00_AXI_rdata[511:0],M00_AXI_rresp[1:0],M00_AXI_rlast,M00_AXI_ruser[13:0],M00_AXI_rvalid,M00_AXI_rready" */;
  input aclk;
  input aclk1;
  input aclk2;
  input aclk3;
  input aresetn;
  input [31:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  input [31:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  input S01_AXI_awvalid;
  output S01_AXI_awready;
  input [31:0]S01_AXI_wdata;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wlast;
  input S01_AXI_wvalid;
  output S01_AXI_wready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input S01_AXI_bready;
  input [31:0]S02_AXI_araddr;
  input [7:0]S02_AXI_arlen;
  input [2:0]S02_AXI_arsize;
  input [1:0]S02_AXI_arburst;
  input [0:0]S02_AXI_arlock;
  input [3:0]S02_AXI_arcache;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  input S02_AXI_arvalid;
  output S02_AXI_arready;
  output [31:0]S02_AXI_rdata;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rlast;
  output S02_AXI_rvalid;
  input S02_AXI_rready;
  input [31:0]S03_AXI_awaddr;
  input [7:0]S03_AXI_awlen;
  input [2:0]S03_AXI_awsize;
  input [1:0]S03_AXI_awburst;
  input [0:0]S03_AXI_awlock;
  input [3:0]S03_AXI_awcache;
  input [2:0]S03_AXI_awprot;
  input [3:0]S03_AXI_awqos;
  input S03_AXI_awvalid;
  output S03_AXI_awready;
  input [31:0]S03_AXI_wdata;
  input [3:0]S03_AXI_wstrb;
  input S03_AXI_wlast;
  input S03_AXI_wvalid;
  output S03_AXI_wready;
  output [1:0]S03_AXI_bresp;
  output S03_AXI_bvalid;
  input S03_AXI_bready;
  input [31:0]S04_AXI_awaddr;
  input [2:0]S04_AXI_awprot;
  input S04_AXI_awvalid;
  output S04_AXI_awready;
  input [31:0]S04_AXI_wdata;
  input [3:0]S04_AXI_wstrb;
  input S04_AXI_wvalid;
  output S04_AXI_wready;
  output [1:0]S04_AXI_bresp;
  output S04_AXI_bvalid;
  input S04_AXI_bready;
  input [31:0]S04_AXI_araddr;
  input [2:0]S04_AXI_arprot;
  input S04_AXI_arvalid;
  output S04_AXI_arready;
  output [31:0]S04_AXI_rdata;
  output [1:0]S04_AXI_rresp;
  output S04_AXI_rvalid;
  input S04_AXI_rready;
  input [31:0]S05_AXI_araddr;
  input [7:0]S05_AXI_arlen;
  input [2:0]S05_AXI_arsize;
  input [1:0]S05_AXI_arburst;
  input [0:0]S05_AXI_arlock;
  input [3:0]S05_AXI_arcache;
  input [2:0]S05_AXI_arprot;
  input [3:0]S05_AXI_arqos;
  input S05_AXI_arvalid;
  output S05_AXI_arready;
  output [31:0]S05_AXI_rdata;
  output [1:0]S05_AXI_rresp;
  output S05_AXI_rlast;
  output S05_AXI_rvalid;
  input S05_AXI_rready;
  input [31:0]S06_AXI_awaddr;
  input [7:0]S06_AXI_awlen;
  input [2:0]S06_AXI_awsize;
  input [1:0]S06_AXI_awburst;
  input [0:0]S06_AXI_awlock;
  input [3:0]S06_AXI_awcache;
  input [2:0]S06_AXI_awprot;
  input [3:0]S06_AXI_awqos;
  input S06_AXI_awvalid;
  output S06_AXI_awready;
  input [31:0]S06_AXI_wdata;
  input [3:0]S06_AXI_wstrb;
  input S06_AXI_wlast;
  input S06_AXI_wvalid;
  output S06_AXI_wready;
  output [1:0]S06_AXI_bresp;
  output S06_AXI_bvalid;
  input S06_AXI_bready;
  input [31:0]S07_AXI_awaddr;
  input [7:0]S07_AXI_awlen;
  input [2:0]S07_AXI_awsize;
  input [1:0]S07_AXI_awburst;
  input [0:0]S07_AXI_awlock;
  input [3:0]S07_AXI_awcache;
  input [2:0]S07_AXI_awprot;
  input [3:0]S07_AXI_awqos;
  input S07_AXI_awvalid;
  output S07_AXI_awready;
  input [31:0]S07_AXI_wdata;
  input [3:0]S07_AXI_wstrb;
  input S07_AXI_wlast;
  input S07_AXI_wvalid;
  output S07_AXI_wready;
  output [1:0]S07_AXI_bresp;
  output S07_AXI_bvalid;
  input S07_AXI_bready;
  input [31:0]S08_AXI_araddr;
  input [7:0]S08_AXI_arlen;
  input [2:0]S08_AXI_arsize;
  input [1:0]S08_AXI_arburst;
  input [0:0]S08_AXI_arlock;
  input [3:0]S08_AXI_arcache;
  input [2:0]S08_AXI_arprot;
  input [3:0]S08_AXI_arqos;
  input S08_AXI_arvalid;
  output S08_AXI_arready;
  output [31:0]S08_AXI_rdata;
  output [1:0]S08_AXI_rresp;
  output S08_AXI_rlast;
  output S08_AXI_rvalid;
  input S08_AXI_rready;
  input [31:0]S09_AXI_awaddr;
  input [2:0]S09_AXI_awprot;
  input S09_AXI_awvalid;
  output S09_AXI_awready;
  input [31:0]S09_AXI_wdata;
  input [3:0]S09_AXI_wstrb;
  input S09_AXI_wvalid;
  output S09_AXI_wready;
  output [1:0]S09_AXI_bresp;
  output S09_AXI_bvalid;
  input S09_AXI_bready;
  input [31:0]S09_AXI_araddr;
  input [2:0]S09_AXI_arprot;
  input S09_AXI_arvalid;
  output S09_AXI_arready;
  output [31:0]S09_AXI_rdata;
  output [1:0]S09_AXI_rresp;
  output S09_AXI_rvalid;
  input S09_AXI_rready;
  output [5:0]M00_AXI_awid;
  output [31:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output [113:0]M00_AXI_awuser;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output [13:0]M00_AXI_wuser;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [5:0]M00_AXI_bid;
  input [1:0]M00_AXI_bresp;
  input [113:0]M00_AXI_buser;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [5:0]M00_AXI_arid;
  output [31:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output [113:0]M00_AXI_aruser;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [5:0]M00_AXI_rid;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input [13:0]M00_AXI_ruser;
  input M00_AXI_rvalid;
  output M00_AXI_rready;
endmodule
