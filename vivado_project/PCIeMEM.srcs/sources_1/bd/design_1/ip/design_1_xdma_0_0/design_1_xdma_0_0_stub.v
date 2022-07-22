// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Mar 14 11:34:14 2021
// Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/oem/RTL/backups/Undolog1/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/ip/design_1_xdma_0_0/design_1_xdma_0_0_stub.v
// Design      : design_1_xdma_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "design_1_xdma_0_0_core_top,Vivado 2018.2" *)
module design_1_xdma_0_0(sys_clk, sys_clk_gt, sys_rst_n, 
  cfg_ltssm_state, user_lnk_up, pci_exp_txp, pci_exp_txn, pci_exp_rxp, pci_exp_rxn, axi_aclk, 
  axi_aresetn, axi_ctl_aresetn, usr_irq_req, usr_irq_ack, msi_enable, msi_vector_width, 
  m_axib_awid, m_axib_awaddr, m_axib_awlen, m_axib_awsize, m_axib_awburst, m_axib_awprot, 
  m_axib_awvalid, m_axib_awready, m_axib_awlock, m_axib_awcache, m_axib_wdata, m_axib_wstrb, 
  m_axib_wlast, m_axib_wvalid, m_axib_wready, m_axib_bid, m_axib_bresp, m_axib_bvalid, 
  m_axib_bready, m_axib_arid, m_axib_araddr, m_axib_arlen, m_axib_arsize, m_axib_arburst, 
  m_axib_arprot, m_axib_arvalid, m_axib_arready, m_axib_arlock, m_axib_arcache, m_axib_rid, 
  m_axib_rdata, m_axib_rresp, m_axib_rlast, m_axib_rvalid, m_axib_rready, s_axil_awaddr, 
  s_axil_awprot, s_axil_awvalid, s_axil_awready, s_axil_wdata, s_axil_wstrb, s_axil_wvalid, 
  s_axil_wready, s_axil_bvalid, s_axil_bresp, s_axil_bready, s_axil_araddr, s_axil_arprot, 
  s_axil_arvalid, s_axil_arready, s_axil_rdata, s_axil_rresp, s_axil_rvalid, s_axil_rready, 
  interrupt_out)
/* synthesis syn_black_box black_box_pad_pin="sys_clk,sys_clk_gt,sys_rst_n,cfg_ltssm_state[5:0],user_lnk_up,pci_exp_txp[3:0],pci_exp_txn[3:0],pci_exp_rxp[3:0],pci_exp_rxn[3:0],axi_aclk,axi_aresetn,axi_ctl_aresetn,usr_irq_req[0:0],usr_irq_ack[0:0],msi_enable,msi_vector_width[2:0],m_axib_awid[3:0],m_axib_awaddr[31:0],m_axib_awlen[7:0],m_axib_awsize[2:0],m_axib_awburst[1:0],m_axib_awprot[2:0],m_axib_awvalid,m_axib_awready,m_axib_awlock,m_axib_awcache[3:0],m_axib_wdata[63:0],m_axib_wstrb[7:0],m_axib_wlast,m_axib_wvalid,m_axib_wready,m_axib_bid[3:0],m_axib_bresp[1:0],m_axib_bvalid,m_axib_bready,m_axib_arid[3:0],m_axib_araddr[31:0],m_axib_arlen[7:0],m_axib_arsize[2:0],m_axib_arburst[1:0],m_axib_arprot[2:0],m_axib_arvalid,m_axib_arready,m_axib_arlock,m_axib_arcache[3:0],m_axib_rid[3:0],m_axib_rdata[63:0],m_axib_rresp[1:0],m_axib_rlast,m_axib_rvalid,m_axib_rready,s_axil_awaddr[31:0],s_axil_awprot[2:0],s_axil_awvalid,s_axil_awready,s_axil_wdata[31:0],s_axil_wstrb[3:0],s_axil_wvalid,s_axil_wready,s_axil_bvalid,s_axil_bresp[1:0],s_axil_bready,s_axil_araddr[31:0],s_axil_arprot[2:0],s_axil_arvalid,s_axil_arready,s_axil_rdata[31:0],s_axil_rresp[1:0],s_axil_rvalid,s_axil_rready,interrupt_out" */;
  input sys_clk;
  input sys_clk_gt;
  input sys_rst_n;
  output [5:0]cfg_ltssm_state;
  output user_lnk_up;
  output [3:0]pci_exp_txp;
  output [3:0]pci_exp_txn;
  input [3:0]pci_exp_rxp;
  input [3:0]pci_exp_rxn;
  output axi_aclk;
  output axi_aresetn;
  output axi_ctl_aresetn;
  input [0:0]usr_irq_req;
  output [0:0]usr_irq_ack;
  output msi_enable;
  output [2:0]msi_vector_width;
  output [3:0]m_axib_awid;
  output [31:0]m_axib_awaddr;
  output [7:0]m_axib_awlen;
  output [2:0]m_axib_awsize;
  output [1:0]m_axib_awburst;
  output [2:0]m_axib_awprot;
  output m_axib_awvalid;
  input m_axib_awready;
  output m_axib_awlock;
  output [3:0]m_axib_awcache;
  output [63:0]m_axib_wdata;
  output [7:0]m_axib_wstrb;
  output m_axib_wlast;
  output m_axib_wvalid;
  input m_axib_wready;
  input [3:0]m_axib_bid;
  input [1:0]m_axib_bresp;
  input m_axib_bvalid;
  output m_axib_bready;
  output [3:0]m_axib_arid;
  output [31:0]m_axib_araddr;
  output [7:0]m_axib_arlen;
  output [2:0]m_axib_arsize;
  output [1:0]m_axib_arburst;
  output [2:0]m_axib_arprot;
  output m_axib_arvalid;
  input m_axib_arready;
  output m_axib_arlock;
  output [3:0]m_axib_arcache;
  input [3:0]m_axib_rid;
  input [63:0]m_axib_rdata;
  input [1:0]m_axib_rresp;
  input m_axib_rlast;
  input m_axib_rvalid;
  output m_axib_rready;
  input [31:0]s_axil_awaddr;
  input [2:0]s_axil_awprot;
  input s_axil_awvalid;
  output s_axil_awready;
  input [31:0]s_axil_wdata;
  input [3:0]s_axil_wstrb;
  input s_axil_wvalid;
  output s_axil_wready;
  output s_axil_bvalid;
  output [1:0]s_axil_bresp;
  input s_axil_bready;
  input [31:0]s_axil_araddr;
  input [2:0]s_axil_arprot;
  input s_axil_arvalid;
  output s_axil_arready;
  output [31:0]s_axil_rdata;
  output [1:0]s_axil_rresp;
  output s_axil_rvalid;
  input s_axil_rready;
  output interrupt_out;
endmodule
