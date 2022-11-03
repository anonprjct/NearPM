//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Thu Jul 22 15:52:31 2021
//Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=54,numReposBlks=54,numNonXlnxBlks=6,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=11,da_board_cnt=2,da_clkrst_cnt=15,da_mb_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (ddr4_sdram_c1_act_n,
    ddr4_sdram_c1_adr,
    ddr4_sdram_c1_ba,
    ddr4_sdram_c1_bg,
    ddr4_sdram_c1_ck_c,
    ddr4_sdram_c1_ck_t,
    ddr4_sdram_c1_cke,
    ddr4_sdram_c1_cs_n,
    ddr4_sdram_c1_dm_n,
    ddr4_sdram_c1_dq,
    ddr4_sdram_c1_dqs_c,
    ddr4_sdram_c1_dqs_t,
    ddr4_sdram_c1_odt,
    ddr4_sdram_c1_reset_n,
    default_250mhz_clk1_clk_n,
    default_250mhz_clk1_clk_p,
    pci_express_x4_rxn,
    pci_express_x4_rxp,
    pci_express_x4_txn,
    pci_express_x4_txp,
    pcie_perstn,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p,
    reset,
    user_si570_clock_clk_n,
    user_si570_clock_clk_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_sdram_c1, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 18, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED DM_NO_DBI, DATA_WIDTH 64, MEMORY_PART MT40A256M16GE-083E, MEMORY_TYPE Components, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 833" *) output ddr4_sdram_c1_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 ADR" *) output [16:0]ddr4_sdram_c1_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 BA" *) output [1:0]ddr4_sdram_c1_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 BG" *) output ddr4_sdram_c1_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 CK_C" *) output ddr4_sdram_c1_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 CK_T" *) output ddr4_sdram_c1_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 CKE" *) output ddr4_sdram_c1_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 CS_N" *) output ddr4_sdram_c1_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 DM_N" *) inout [7:0]ddr4_sdram_c1_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 DQ" *) inout [63:0]ddr4_sdram_c1_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 DQS_C" *) inout [7:0]ddr4_sdram_c1_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 DQS_T" *) inout [7:0]ddr4_sdram_c1_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 ODT" *) output ddr4_sdram_c1_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram_c1 RESET_N" *) output ddr4_sdram_c1_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 default_250mhz_clk1 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME default_250mhz_clk1, CAN_DEBUG false, FREQ_HZ 250000000" *) input default_250mhz_clk1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 default_250mhz_clk1 CLK_P" *) input default_250mhz_clk1_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x4 rxn" *) input [3:0]pci_express_x4_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x4 rxp" *) input [3:0]pci_express_x4_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x4 txn" *) output [3:0]pci_express_x4_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x4 txp" *) output [3:0]pci_express_x4_txp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_PERSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_PERSTN, POLARITY ACTIVE_LOW" *) input pcie_perstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input pcie_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_P" *) input pcie_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 user_si570_clock CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME user_si570_clock, CAN_DEBUG false, FREQ_HZ 156250000" *) input user_si570_clock_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 user_si570_clock CLK_P" *) input user_si570_clock_clk_p;

  wire [5:0]addrmonitor_0_count;
  wire [31:0]addrmonitor_0_m00_axi_awaddr;
  wire addrmonitor_0_m00_axi_awvalid;
  wire [63:0]addrmonitor_0_m00_axi_wdata;
  wire addrmonitor_0_m00_axi_wvalid;
  wire [63:0]addrmonitor_0_offset;
  wire [31:0]addrmonitor_0_physicaladdr;
  wire [63:0]addrmonitor_0_pmem_obj_offset;
  wire addrmonitor_0_pmem_obj_offset_valid;
  wire [2:0]addrmonitor_0_state;
  wire [63:0]addrmonitor_0_virtualaddr;
  wire [31:0]axi_data_fifo_0_M_AXI_ARADDR;
  wire [1:0]axi_data_fifo_0_M_AXI_ARBURST;
  wire [3:0]axi_data_fifo_0_M_AXI_ARCACHE;
  wire [3:0]axi_data_fifo_0_M_AXI_ARID;
  wire [7:0]axi_data_fifo_0_M_AXI_ARLEN;
  wire [0:0]axi_data_fifo_0_M_AXI_ARLOCK;
  wire [2:0]axi_data_fifo_0_M_AXI_ARPROT;
  wire [3:0]axi_data_fifo_0_M_AXI_ARQOS;
  wire axi_data_fifo_0_M_AXI_ARREADY;
  wire [3:0]axi_data_fifo_0_M_AXI_ARREGION;
  wire [2:0]axi_data_fifo_0_M_AXI_ARSIZE;
  wire axi_data_fifo_0_M_AXI_ARVALID;
  wire [31:0]axi_data_fifo_0_M_AXI_AWADDR;
  wire [1:0]axi_data_fifo_0_M_AXI_AWBURST;
  wire [3:0]axi_data_fifo_0_M_AXI_AWCACHE;
  wire [3:0]axi_data_fifo_0_M_AXI_AWID;
  wire [7:0]axi_data_fifo_0_M_AXI_AWLEN;
  wire [0:0]axi_data_fifo_0_M_AXI_AWLOCK;
  wire [2:0]axi_data_fifo_0_M_AXI_AWPROT;
  wire [3:0]axi_data_fifo_0_M_AXI_AWQOS;
  wire axi_data_fifo_0_M_AXI_AWREADY;
  wire [3:0]axi_data_fifo_0_M_AXI_AWREGION;
  wire [2:0]axi_data_fifo_0_M_AXI_AWSIZE;
  wire axi_data_fifo_0_M_AXI_AWVALID;
  wire [3:0]axi_data_fifo_0_M_AXI_BID;
  wire axi_data_fifo_0_M_AXI_BREADY;
  wire [1:0]axi_data_fifo_0_M_AXI_BRESP;
  wire axi_data_fifo_0_M_AXI_BVALID;
  wire [63:0]axi_data_fifo_0_M_AXI_RDATA;
  wire [3:0]axi_data_fifo_0_M_AXI_RID;
  wire axi_data_fifo_0_M_AXI_RLAST;
  wire axi_data_fifo_0_M_AXI_RREADY;
  wire [1:0]axi_data_fifo_0_M_AXI_RRESP;
  wire axi_data_fifo_0_M_AXI_RVALID;
  wire [63:0]axi_data_fifo_0_M_AXI_WDATA;
  wire axi_data_fifo_0_M_AXI_WLAST;
  wire axi_data_fifo_0_M_AXI_WREADY;
  wire [7:0]axi_data_fifo_0_M_AXI_WSTRB;
  wire axi_data_fifo_0_M_AXI_WVALID;
  wire [31:0]axi_data_fifo_10_M_AXI_ARADDR;
  wire [1:0]axi_data_fifo_10_M_AXI_ARBURST;
  wire [3:0]axi_data_fifo_10_M_AXI_ARCACHE;
  wire [3:0]axi_data_fifo_10_M_AXI_ARID;
  wire [7:0]axi_data_fifo_10_M_AXI_ARLEN;
  wire [0:0]axi_data_fifo_10_M_AXI_ARLOCK;
  wire [2:0]axi_data_fifo_10_M_AXI_ARPROT;
  wire [3:0]axi_data_fifo_10_M_AXI_ARQOS;
  wire axi_data_fifo_10_M_AXI_ARREADY;
  wire [3:0]axi_data_fifo_10_M_AXI_ARREGION;
  wire [2:0]axi_data_fifo_10_M_AXI_ARSIZE;
  wire axi_data_fifo_10_M_AXI_ARVALID;
  wire [31:0]axi_data_fifo_10_M_AXI_AWADDR;
  wire [1:0]axi_data_fifo_10_M_AXI_AWBURST;
  wire [3:0]axi_data_fifo_10_M_AXI_AWCACHE;
  wire [3:0]axi_data_fifo_10_M_AXI_AWID;
  wire [7:0]axi_data_fifo_10_M_AXI_AWLEN;
  wire [0:0]axi_data_fifo_10_M_AXI_AWLOCK;
  wire [2:0]axi_data_fifo_10_M_AXI_AWPROT;
  wire [3:0]axi_data_fifo_10_M_AXI_AWQOS;
  wire axi_data_fifo_10_M_AXI_AWREADY;
  wire [3:0]axi_data_fifo_10_M_AXI_AWREGION;
  wire [2:0]axi_data_fifo_10_M_AXI_AWSIZE;
  wire axi_data_fifo_10_M_AXI_AWVALID;
  wire [3:0]axi_data_fifo_10_M_AXI_BID;
  wire axi_data_fifo_10_M_AXI_BREADY;
  wire [1:0]axi_data_fifo_10_M_AXI_BRESP;
  wire axi_data_fifo_10_M_AXI_BVALID;
  wire [63:0]axi_data_fifo_10_M_AXI_RDATA;
  wire [3:0]axi_data_fifo_10_M_AXI_RID;
  wire axi_data_fifo_10_M_AXI_RLAST;
  wire axi_data_fifo_10_M_AXI_RREADY;
  wire [1:0]axi_data_fifo_10_M_AXI_RRESP;
  wire axi_data_fifo_10_M_AXI_RVALID;
  wire [63:0]axi_data_fifo_10_M_AXI_WDATA;
  wire axi_data_fifo_10_M_AXI_WLAST;
  wire axi_data_fifo_10_M_AXI_WREADY;
  wire [7:0]axi_data_fifo_10_M_AXI_WSTRB;
  wire axi_data_fifo_10_M_AXI_WVALID;
  wire [31:0]axi_data_fifo_1_M_AXI_ARADDR;
  wire [1:0]axi_data_fifo_1_M_AXI_ARBURST;
  wire [3:0]axi_data_fifo_1_M_AXI_ARCACHE;
  wire [3:0]axi_data_fifo_1_M_AXI_ARID;
  wire [7:0]axi_data_fifo_1_M_AXI_ARLEN;
  wire [0:0]axi_data_fifo_1_M_AXI_ARLOCK;
  wire [2:0]axi_data_fifo_1_M_AXI_ARPROT;
  wire [3:0]axi_data_fifo_1_M_AXI_ARQOS;
  wire axi_data_fifo_1_M_AXI_ARREADY;
  wire [3:0]axi_data_fifo_1_M_AXI_ARREGION;
  wire [2:0]axi_data_fifo_1_M_AXI_ARSIZE;
  wire axi_data_fifo_1_M_AXI_ARVALID;
  wire [31:0]axi_data_fifo_1_M_AXI_AWADDR;
  wire [1:0]axi_data_fifo_1_M_AXI_AWBURST;
  wire [3:0]axi_data_fifo_1_M_AXI_AWCACHE;
  wire [3:0]axi_data_fifo_1_M_AXI_AWID;
  wire [7:0]axi_data_fifo_1_M_AXI_AWLEN;
  wire [0:0]axi_data_fifo_1_M_AXI_AWLOCK;
  wire [2:0]axi_data_fifo_1_M_AXI_AWPROT;
  wire [3:0]axi_data_fifo_1_M_AXI_AWQOS;
  wire axi_data_fifo_1_M_AXI_AWREADY;
  wire [3:0]axi_data_fifo_1_M_AXI_AWREGION;
  wire [2:0]axi_data_fifo_1_M_AXI_AWSIZE;
  wire axi_data_fifo_1_M_AXI_AWVALID;
  wire [3:0]axi_data_fifo_1_M_AXI_BID;
  wire axi_data_fifo_1_M_AXI_BREADY;
  wire [1:0]axi_data_fifo_1_M_AXI_BRESP;
  wire axi_data_fifo_1_M_AXI_BVALID;
  wire [63:0]axi_data_fifo_1_M_AXI_RDATA;
  wire [3:0]axi_data_fifo_1_M_AXI_RID;
  wire axi_data_fifo_1_M_AXI_RLAST;
  wire axi_data_fifo_1_M_AXI_RREADY;
  wire [1:0]axi_data_fifo_1_M_AXI_RRESP;
  wire axi_data_fifo_1_M_AXI_RVALID;
  wire [63:0]axi_data_fifo_1_M_AXI_WDATA;
  wire axi_data_fifo_1_M_AXI_WLAST;
  wire axi_data_fifo_1_M_AXI_WREADY;
  wire [7:0]axi_data_fifo_1_M_AXI_WSTRB;
  wire axi_data_fifo_1_M_AXI_WVALID;
  wire [31:0]axi_data_fifo_2_M_AXI_ARADDR;
  wire [1:0]axi_data_fifo_2_M_AXI_ARBURST;
  wire [3:0]axi_data_fifo_2_M_AXI_ARCACHE;
  wire [3:0]axi_data_fifo_2_M_AXI_ARID;
  wire [7:0]axi_data_fifo_2_M_AXI_ARLEN;
  wire [0:0]axi_data_fifo_2_M_AXI_ARLOCK;
  wire [2:0]axi_data_fifo_2_M_AXI_ARPROT;
  wire [3:0]axi_data_fifo_2_M_AXI_ARQOS;
  wire axi_data_fifo_2_M_AXI_ARREADY;
  wire [3:0]axi_data_fifo_2_M_AXI_ARREGION;
  wire [2:0]axi_data_fifo_2_M_AXI_ARSIZE;
  wire axi_data_fifo_2_M_AXI_ARVALID;
  wire [31:0]axi_data_fifo_2_M_AXI_AWADDR;
  wire [1:0]axi_data_fifo_2_M_AXI_AWBURST;
  wire [3:0]axi_data_fifo_2_M_AXI_AWCACHE;
  wire [3:0]axi_data_fifo_2_M_AXI_AWID;
  wire [7:0]axi_data_fifo_2_M_AXI_AWLEN;
  wire [0:0]axi_data_fifo_2_M_AXI_AWLOCK;
  wire [2:0]axi_data_fifo_2_M_AXI_AWPROT;
  wire [3:0]axi_data_fifo_2_M_AXI_AWQOS;
  wire axi_data_fifo_2_M_AXI_AWREADY;
  wire [3:0]axi_data_fifo_2_M_AXI_AWREGION;
  wire [2:0]axi_data_fifo_2_M_AXI_AWSIZE;
  wire axi_data_fifo_2_M_AXI_AWVALID;
  wire [3:0]axi_data_fifo_2_M_AXI_BID;
  wire axi_data_fifo_2_M_AXI_BREADY;
  wire [1:0]axi_data_fifo_2_M_AXI_BRESP;
  wire axi_data_fifo_2_M_AXI_BVALID;
  wire [63:0]axi_data_fifo_2_M_AXI_RDATA;
  wire [3:0]axi_data_fifo_2_M_AXI_RID;
  wire axi_data_fifo_2_M_AXI_RLAST;
  wire axi_data_fifo_2_M_AXI_RREADY;
  wire [1:0]axi_data_fifo_2_M_AXI_RRESP;
  wire axi_data_fifo_2_M_AXI_RVALID;
  wire [63:0]axi_data_fifo_2_M_AXI_WDATA;
  wire axi_data_fifo_2_M_AXI_WLAST;
  wire axi_data_fifo_2_M_AXI_WREADY;
  wire [7:0]axi_data_fifo_2_M_AXI_WSTRB;
  wire axi_data_fifo_2_M_AXI_WVALID;
  wire [31:0]axi_data_fifo_3_M_AXI_ARADDR;
  wire [1:0]axi_data_fifo_3_M_AXI_ARBURST;
  wire [3:0]axi_data_fifo_3_M_AXI_ARCACHE;
  wire [3:0]axi_data_fifo_3_M_AXI_ARID;
  wire [7:0]axi_data_fifo_3_M_AXI_ARLEN;
  wire [0:0]axi_data_fifo_3_M_AXI_ARLOCK;
  wire [2:0]axi_data_fifo_3_M_AXI_ARPROT;
  wire [3:0]axi_data_fifo_3_M_AXI_ARQOS;
  wire axi_data_fifo_3_M_AXI_ARREADY;
  wire [3:0]axi_data_fifo_3_M_AXI_ARREGION;
  wire [2:0]axi_data_fifo_3_M_AXI_ARSIZE;
  wire axi_data_fifo_3_M_AXI_ARVALID;
  wire [31:0]axi_data_fifo_3_M_AXI_AWADDR;
  wire [1:0]axi_data_fifo_3_M_AXI_AWBURST;
  wire [3:0]axi_data_fifo_3_M_AXI_AWCACHE;
  wire [3:0]axi_data_fifo_3_M_AXI_AWID;
  wire [7:0]axi_data_fifo_3_M_AXI_AWLEN;
  wire [0:0]axi_data_fifo_3_M_AXI_AWLOCK;
  wire [2:0]axi_data_fifo_3_M_AXI_AWPROT;
  wire [3:0]axi_data_fifo_3_M_AXI_AWQOS;
  wire axi_data_fifo_3_M_AXI_AWREADY;
  wire [3:0]axi_data_fifo_3_M_AXI_AWREGION;
  wire [2:0]axi_data_fifo_3_M_AXI_AWSIZE;
  wire axi_data_fifo_3_M_AXI_AWVALID;
  wire [3:0]axi_data_fifo_3_M_AXI_BID;
  wire axi_data_fifo_3_M_AXI_BREADY;
  wire [1:0]axi_data_fifo_3_M_AXI_BRESP;
  wire axi_data_fifo_3_M_AXI_BVALID;
  wire [63:0]axi_data_fifo_3_M_AXI_RDATA;
  wire [3:0]axi_data_fifo_3_M_AXI_RID;
  wire axi_data_fifo_3_M_AXI_RLAST;
  wire axi_data_fifo_3_M_AXI_RREADY;
  wire [1:0]axi_data_fifo_3_M_AXI_RRESP;
  wire axi_data_fifo_3_M_AXI_RVALID;
  wire [63:0]axi_data_fifo_3_M_AXI_WDATA;
  wire axi_data_fifo_3_M_AXI_WLAST;
  wire axi_data_fifo_3_M_AXI_WREADY;
  wire [7:0]axi_data_fifo_3_M_AXI_WSTRB;
  wire axi_data_fifo_3_M_AXI_WVALID;
  wire [31:0]axi_data_fifo_4_M_AXI_ARADDR;
  wire [1:0]axi_data_fifo_4_M_AXI_ARBURST;
  wire [3:0]axi_data_fifo_4_M_AXI_ARCACHE;
  wire [3:0]axi_data_fifo_4_M_AXI_ARID;
  wire [7:0]axi_data_fifo_4_M_AXI_ARLEN;
  wire [0:0]axi_data_fifo_4_M_AXI_ARLOCK;
  wire [2:0]axi_data_fifo_4_M_AXI_ARPROT;
  wire [3:0]axi_data_fifo_4_M_AXI_ARQOS;
  wire axi_data_fifo_4_M_AXI_ARREADY;
  wire [3:0]axi_data_fifo_4_M_AXI_ARREGION;
  wire [2:0]axi_data_fifo_4_M_AXI_ARSIZE;
  wire axi_data_fifo_4_M_AXI_ARVALID;
  wire [31:0]axi_data_fifo_4_M_AXI_AWADDR;
  wire [1:0]axi_data_fifo_4_M_AXI_AWBURST;
  wire [3:0]axi_data_fifo_4_M_AXI_AWCACHE;
  wire [3:0]axi_data_fifo_4_M_AXI_AWID;
  wire [7:0]axi_data_fifo_4_M_AXI_AWLEN;
  wire [0:0]axi_data_fifo_4_M_AXI_AWLOCK;
  wire [2:0]axi_data_fifo_4_M_AXI_AWPROT;
  wire [3:0]axi_data_fifo_4_M_AXI_AWQOS;
  wire axi_data_fifo_4_M_AXI_AWREADY;
  wire [3:0]axi_data_fifo_4_M_AXI_AWREGION;
  wire [2:0]axi_data_fifo_4_M_AXI_AWSIZE;
  wire axi_data_fifo_4_M_AXI_AWVALID;
  wire [3:0]axi_data_fifo_4_M_AXI_BID;
  wire axi_data_fifo_4_M_AXI_BREADY;
  wire [1:0]axi_data_fifo_4_M_AXI_BRESP;
  wire axi_data_fifo_4_M_AXI_BVALID;
  wire [63:0]axi_data_fifo_4_M_AXI_RDATA;
  wire [3:0]axi_data_fifo_4_M_AXI_RID;
  wire axi_data_fifo_4_M_AXI_RLAST;
  wire axi_data_fifo_4_M_AXI_RREADY;
  wire [1:0]axi_data_fifo_4_M_AXI_RRESP;
  wire axi_data_fifo_4_M_AXI_RVALID;
  wire [63:0]axi_data_fifo_4_M_AXI_WDATA;
  wire axi_data_fifo_4_M_AXI_WLAST;
  wire axi_data_fifo_4_M_AXI_WREADY;
  wire [7:0]axi_data_fifo_4_M_AXI_WSTRB;
  wire axi_data_fifo_4_M_AXI_WVALID;
  wire [31:0]axi_data_fifo_5_M_AXI_ARADDR;
  wire [1:0]axi_data_fifo_5_M_AXI_ARBURST;
  wire [3:0]axi_data_fifo_5_M_AXI_ARCACHE;
  wire [3:0]axi_data_fifo_5_M_AXI_ARID;
  wire [7:0]axi_data_fifo_5_M_AXI_ARLEN;
  wire [0:0]axi_data_fifo_5_M_AXI_ARLOCK;
  wire [2:0]axi_data_fifo_5_M_AXI_ARPROT;
  wire [3:0]axi_data_fifo_5_M_AXI_ARQOS;
  wire axi_data_fifo_5_M_AXI_ARREADY;
  wire [3:0]axi_data_fifo_5_M_AXI_ARREGION;
  wire [2:0]axi_data_fifo_5_M_AXI_ARSIZE;
  wire axi_data_fifo_5_M_AXI_ARVALID;
  wire [31:0]axi_data_fifo_5_M_AXI_AWADDR;
  wire [1:0]axi_data_fifo_5_M_AXI_AWBURST;
  wire [3:0]axi_data_fifo_5_M_AXI_AWCACHE;
  wire [3:0]axi_data_fifo_5_M_AXI_AWID;
  wire [7:0]axi_data_fifo_5_M_AXI_AWLEN;
  wire [0:0]axi_data_fifo_5_M_AXI_AWLOCK;
  wire [2:0]axi_data_fifo_5_M_AXI_AWPROT;
  wire [3:0]axi_data_fifo_5_M_AXI_AWQOS;
  wire axi_data_fifo_5_M_AXI_AWREADY;
  wire [3:0]axi_data_fifo_5_M_AXI_AWREGION;
  wire [2:0]axi_data_fifo_5_M_AXI_AWSIZE;
  wire axi_data_fifo_5_M_AXI_AWVALID;
  wire [3:0]axi_data_fifo_5_M_AXI_BID;
  wire axi_data_fifo_5_M_AXI_BREADY;
  wire [1:0]axi_data_fifo_5_M_AXI_BRESP;
  wire axi_data_fifo_5_M_AXI_BVALID;
  wire [63:0]axi_data_fifo_5_M_AXI_RDATA;
  wire [3:0]axi_data_fifo_5_M_AXI_RID;
  wire axi_data_fifo_5_M_AXI_RLAST;
  wire axi_data_fifo_5_M_AXI_RREADY;
  wire [1:0]axi_data_fifo_5_M_AXI_RRESP;
  wire axi_data_fifo_5_M_AXI_RVALID;
  wire [63:0]axi_data_fifo_5_M_AXI_WDATA;
  wire axi_data_fifo_5_M_AXI_WLAST;
  wire axi_data_fifo_5_M_AXI_WREADY;
  wire [7:0]axi_data_fifo_5_M_AXI_WSTRB;
  wire axi_data_fifo_5_M_AXI_WVALID;
  wire [31:0]axi_data_fifo_6_M_AXI_ARADDR;
  wire [1:0]axi_data_fifo_6_M_AXI_ARBURST;
  wire [3:0]axi_data_fifo_6_M_AXI_ARCACHE;
  wire [3:0]axi_data_fifo_6_M_AXI_ARID;
  wire [7:0]axi_data_fifo_6_M_AXI_ARLEN;
  wire [0:0]axi_data_fifo_6_M_AXI_ARLOCK;
  wire [2:0]axi_data_fifo_6_M_AXI_ARPROT;
  wire [3:0]axi_data_fifo_6_M_AXI_ARQOS;
  wire axi_data_fifo_6_M_AXI_ARREADY;
  wire [3:0]axi_data_fifo_6_M_AXI_ARREGION;
  wire [2:0]axi_data_fifo_6_M_AXI_ARSIZE;
  wire axi_data_fifo_6_M_AXI_ARVALID;
  wire [31:0]axi_data_fifo_6_M_AXI_AWADDR;
  wire [1:0]axi_data_fifo_6_M_AXI_AWBURST;
  wire [3:0]axi_data_fifo_6_M_AXI_AWCACHE;
  wire [3:0]axi_data_fifo_6_M_AXI_AWID;
  wire [7:0]axi_data_fifo_6_M_AXI_AWLEN;
  wire [0:0]axi_data_fifo_6_M_AXI_AWLOCK;
  wire [2:0]axi_data_fifo_6_M_AXI_AWPROT;
  wire [3:0]axi_data_fifo_6_M_AXI_AWQOS;
  wire axi_data_fifo_6_M_AXI_AWREADY;
  wire [3:0]axi_data_fifo_6_M_AXI_AWREGION;
  wire [2:0]axi_data_fifo_6_M_AXI_AWSIZE;
  wire axi_data_fifo_6_M_AXI_AWVALID;
  wire [3:0]axi_data_fifo_6_M_AXI_BID;
  wire axi_data_fifo_6_M_AXI_BREADY;
  wire [1:0]axi_data_fifo_6_M_AXI_BRESP;
  wire axi_data_fifo_6_M_AXI_BVALID;
  wire [63:0]axi_data_fifo_6_M_AXI_RDATA;
  wire [3:0]axi_data_fifo_6_M_AXI_RID;
  wire axi_data_fifo_6_M_AXI_RLAST;
  wire axi_data_fifo_6_M_AXI_RREADY;
  wire [1:0]axi_data_fifo_6_M_AXI_RRESP;
  wire axi_data_fifo_6_M_AXI_RVALID;
  wire [63:0]axi_data_fifo_6_M_AXI_WDATA;
  wire axi_data_fifo_6_M_AXI_WLAST;
  wire axi_data_fifo_6_M_AXI_WREADY;
  wire [7:0]axi_data_fifo_6_M_AXI_WSTRB;
  wire axi_data_fifo_6_M_AXI_WVALID;
  wire [31:0]axi_data_fifo_7_M_AXI_ARADDR;
  wire [1:0]axi_data_fifo_7_M_AXI_ARBURST;
  wire [3:0]axi_data_fifo_7_M_AXI_ARCACHE;
  wire [3:0]axi_data_fifo_7_M_AXI_ARID;
  wire [7:0]axi_data_fifo_7_M_AXI_ARLEN;
  wire [0:0]axi_data_fifo_7_M_AXI_ARLOCK;
  wire [2:0]axi_data_fifo_7_M_AXI_ARPROT;
  wire [3:0]axi_data_fifo_7_M_AXI_ARQOS;
  wire axi_data_fifo_7_M_AXI_ARREADY;
  wire [3:0]axi_data_fifo_7_M_AXI_ARREGION;
  wire [2:0]axi_data_fifo_7_M_AXI_ARSIZE;
  wire axi_data_fifo_7_M_AXI_ARVALID;
  wire [31:0]axi_data_fifo_7_M_AXI_AWADDR;
  wire [1:0]axi_data_fifo_7_M_AXI_AWBURST;
  wire [3:0]axi_data_fifo_7_M_AXI_AWCACHE;
  wire [3:0]axi_data_fifo_7_M_AXI_AWID;
  wire [7:0]axi_data_fifo_7_M_AXI_AWLEN;
  wire [0:0]axi_data_fifo_7_M_AXI_AWLOCK;
  wire [2:0]axi_data_fifo_7_M_AXI_AWPROT;
  wire [3:0]axi_data_fifo_7_M_AXI_AWQOS;
  wire axi_data_fifo_7_M_AXI_AWREADY;
  wire [3:0]axi_data_fifo_7_M_AXI_AWREGION;
  wire [2:0]axi_data_fifo_7_M_AXI_AWSIZE;
  wire axi_data_fifo_7_M_AXI_AWVALID;
  wire [3:0]axi_data_fifo_7_M_AXI_BID;
  wire axi_data_fifo_7_M_AXI_BREADY;
  wire [1:0]axi_data_fifo_7_M_AXI_BRESP;
  wire axi_data_fifo_7_M_AXI_BVALID;
  wire [63:0]axi_data_fifo_7_M_AXI_RDATA;
  wire [3:0]axi_data_fifo_7_M_AXI_RID;
  wire axi_data_fifo_7_M_AXI_RLAST;
  wire axi_data_fifo_7_M_AXI_RREADY;
  wire [1:0]axi_data_fifo_7_M_AXI_RRESP;
  wire axi_data_fifo_7_M_AXI_RVALID;
  wire [63:0]axi_data_fifo_7_M_AXI_WDATA;
  wire axi_data_fifo_7_M_AXI_WLAST;
  wire axi_data_fifo_7_M_AXI_WREADY;
  wire [7:0]axi_data_fifo_7_M_AXI_WSTRB;
  wire axi_data_fifo_7_M_AXI_WVALID;
  wire [31:0]axi_data_fifo_8_M_AXI_ARADDR;
  wire [1:0]axi_data_fifo_8_M_AXI_ARBURST;
  wire [3:0]axi_data_fifo_8_M_AXI_ARCACHE;
  wire [3:0]axi_data_fifo_8_M_AXI_ARID;
  wire [7:0]axi_data_fifo_8_M_AXI_ARLEN;
  wire [0:0]axi_data_fifo_8_M_AXI_ARLOCK;
  wire [2:0]axi_data_fifo_8_M_AXI_ARPROT;
  wire [3:0]axi_data_fifo_8_M_AXI_ARQOS;
  wire axi_data_fifo_8_M_AXI_ARREADY;
  wire [3:0]axi_data_fifo_8_M_AXI_ARREGION;
  wire [2:0]axi_data_fifo_8_M_AXI_ARSIZE;
  wire axi_data_fifo_8_M_AXI_ARVALID;
  wire [31:0]axi_data_fifo_8_M_AXI_AWADDR;
  wire [1:0]axi_data_fifo_8_M_AXI_AWBURST;
  wire [3:0]axi_data_fifo_8_M_AXI_AWCACHE;
  wire [3:0]axi_data_fifo_8_M_AXI_AWID;
  wire [7:0]axi_data_fifo_8_M_AXI_AWLEN;
  wire [0:0]axi_data_fifo_8_M_AXI_AWLOCK;
  wire [2:0]axi_data_fifo_8_M_AXI_AWPROT;
  wire [3:0]axi_data_fifo_8_M_AXI_AWQOS;
  wire axi_data_fifo_8_M_AXI_AWREADY;
  wire [3:0]axi_data_fifo_8_M_AXI_AWREGION;
  wire [2:0]axi_data_fifo_8_M_AXI_AWSIZE;
  wire axi_data_fifo_8_M_AXI_AWVALID;
  wire [3:0]axi_data_fifo_8_M_AXI_BID;
  wire axi_data_fifo_8_M_AXI_BREADY;
  wire [1:0]axi_data_fifo_8_M_AXI_BRESP;
  wire axi_data_fifo_8_M_AXI_BVALID;
  wire [63:0]axi_data_fifo_8_M_AXI_RDATA;
  wire [3:0]axi_data_fifo_8_M_AXI_RID;
  wire axi_data_fifo_8_M_AXI_RLAST;
  wire axi_data_fifo_8_M_AXI_RREADY;
  wire [1:0]axi_data_fifo_8_M_AXI_RRESP;
  wire axi_data_fifo_8_M_AXI_RVALID;
  wire [63:0]axi_data_fifo_8_M_AXI_WDATA;
  wire axi_data_fifo_8_M_AXI_WLAST;
  wire axi_data_fifo_8_M_AXI_WREADY;
  wire [7:0]axi_data_fifo_8_M_AXI_WSTRB;
  wire axi_data_fifo_8_M_AXI_WVALID;
  wire [31:0]axi_data_fifo_9_M_AXI_ARADDR;
  wire [1:0]axi_data_fifo_9_M_AXI_ARBURST;
  wire [3:0]axi_data_fifo_9_M_AXI_ARCACHE;
  wire [3:0]axi_data_fifo_9_M_AXI_ARID;
  wire [7:0]axi_data_fifo_9_M_AXI_ARLEN;
  wire [0:0]axi_data_fifo_9_M_AXI_ARLOCK;
  wire [2:0]axi_data_fifo_9_M_AXI_ARPROT;
  wire [3:0]axi_data_fifo_9_M_AXI_ARQOS;
  wire axi_data_fifo_9_M_AXI_ARREADY;
  wire [2:0]axi_data_fifo_9_M_AXI_ARSIZE;
  wire axi_data_fifo_9_M_AXI_ARVALID;
  wire [31:0]axi_data_fifo_9_M_AXI_AWADDR;
  wire [1:0]axi_data_fifo_9_M_AXI_AWBURST;
  wire [3:0]axi_data_fifo_9_M_AXI_AWCACHE;
  wire [3:0]axi_data_fifo_9_M_AXI_AWID;
  wire [7:0]axi_data_fifo_9_M_AXI_AWLEN;
  wire [0:0]axi_data_fifo_9_M_AXI_AWLOCK;
  wire [2:0]axi_data_fifo_9_M_AXI_AWPROT;
  wire [3:0]axi_data_fifo_9_M_AXI_AWQOS;
  wire axi_data_fifo_9_M_AXI_AWREADY;
  wire [2:0]axi_data_fifo_9_M_AXI_AWSIZE;
  wire axi_data_fifo_9_M_AXI_AWVALID;
  wire [3:0]axi_data_fifo_9_M_AXI_BID;
  wire axi_data_fifo_9_M_AXI_BREADY;
  wire [1:0]axi_data_fifo_9_M_AXI_BRESP;
  wire axi_data_fifo_9_M_AXI_BVALID;
  wire [63:0]axi_data_fifo_9_M_AXI_RDATA;
  wire [3:0]axi_data_fifo_9_M_AXI_RID;
  wire axi_data_fifo_9_M_AXI_RLAST;
  wire axi_data_fifo_9_M_AXI_RREADY;
  wire [1:0]axi_data_fifo_9_M_AXI_RRESP;
  wire axi_data_fifo_9_M_AXI_RVALID;
  wire [63:0]axi_data_fifo_9_M_AXI_WDATA;
  wire axi_data_fifo_9_M_AXI_WLAST;
  wire axi_data_fifo_9_M_AXI_WREADY;
  wire [7:0]axi_data_fifo_9_M_AXI_WSTRB;
  wire axi_data_fifo_9_M_AXI_WVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARPROT;
  wire axi_dma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARSIZE;
  wire axi_dma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_RDATA;
  wire axi_dma_0_M_AXI_MM2S_RLAST;
  wire axi_dma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_0_M_AXI_MM2S_RRESP;
  wire axi_dma_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWPROT;
  wire axi_dma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWSIZE;
  wire axi_dma_0_M_AXI_S2MM_AWVALID;
  wire axi_dma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_0_M_AXI_S2MM_BRESP;
  wire axi_dma_0_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_0_M_AXI_S2MM_WDATA;
  wire axi_dma_0_M_AXI_S2MM_WLAST;
  wire axi_dma_0_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_0_M_AXI_S2MM_WSTRB;
  wire axi_dma_0_M_AXI_S2MM_WVALID;
  wire [3:0]axi_dma_0_m_axis_mm2s_tkeep;
  wire axi_dma_0_m_axis_mm2s_tlast;
  wire axi_dma_0_m_axis_mm2s_tvalid;
  wire [31:0]axi_dma_1_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_dma_1_M_AXIS_MM2S_TKEEP;
  wire axi_dma_1_M_AXIS_MM2S_TLAST;
  wire axi_dma_1_M_AXIS_MM2S_TREADY;
  wire axi_dma_1_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_1_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_1_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_1_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_1_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_1_M_AXI_MM2S_ARPROT;
  wire axi_dma_1_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_1_M_AXI_MM2S_ARSIZE;
  wire axi_dma_1_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_1_M_AXI_MM2S_RDATA;
  wire axi_dma_1_M_AXI_MM2S_RLAST;
  wire axi_dma_1_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_1_M_AXI_MM2S_RRESP;
  wire axi_dma_1_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_1_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_1_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_1_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_1_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_1_M_AXI_S2MM_AWPROT;
  wire axi_dma_1_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_1_M_AXI_S2MM_AWSIZE;
  wire axi_dma_1_M_AXI_S2MM_AWVALID;
  wire axi_dma_1_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_1_M_AXI_S2MM_BRESP;
  wire axi_dma_1_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_1_M_AXI_S2MM_WDATA;
  wire axi_dma_1_M_AXI_S2MM_WLAST;
  wire axi_dma_1_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_1_M_AXI_S2MM_WSTRB;
  wire axi_dma_1_M_AXI_S2MM_WVALID;
  wire [31:0]axi_dma_2_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_dma_2_M_AXIS_MM2S_TKEEP;
  wire axi_dma_2_M_AXIS_MM2S_TLAST;
  wire axi_dma_2_M_AXIS_MM2S_TREADY;
  wire axi_dma_2_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_2_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_2_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_2_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_2_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_2_M_AXI_MM2S_ARPROT;
  wire axi_dma_2_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_2_M_AXI_MM2S_ARSIZE;
  wire axi_dma_2_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_2_M_AXI_MM2S_RDATA;
  wire axi_dma_2_M_AXI_MM2S_RLAST;
  wire axi_dma_2_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_2_M_AXI_MM2S_RRESP;
  wire axi_dma_2_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_2_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_2_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_2_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_2_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_2_M_AXI_S2MM_AWPROT;
  wire axi_dma_2_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_2_M_AXI_S2MM_AWSIZE;
  wire axi_dma_2_M_AXI_S2MM_AWVALID;
  wire axi_dma_2_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_2_M_AXI_S2MM_BRESP;
  wire axi_dma_2_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_2_M_AXI_S2MM_WDATA;
  wire axi_dma_2_M_AXI_S2MM_WLAST;
  wire axi_dma_2_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_2_M_AXI_S2MM_WSTRB;
  wire axi_dma_2_M_AXI_S2MM_WVALID;
  wire [31:0]axi_dma_3_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_dma_3_M_AXIS_MM2S_TKEEP;
  wire axi_dma_3_M_AXIS_MM2S_TLAST;
  wire axi_dma_3_M_AXIS_MM2S_TREADY;
  wire axi_dma_3_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_3_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_3_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_3_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_3_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_3_M_AXI_MM2S_ARPROT;
  wire axi_dma_3_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_3_M_AXI_MM2S_ARSIZE;
  wire axi_dma_3_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_3_M_AXI_MM2S_RDATA;
  wire axi_dma_3_M_AXI_MM2S_RLAST;
  wire axi_dma_3_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_3_M_AXI_MM2S_RRESP;
  wire axi_dma_3_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_3_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_3_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_3_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_3_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_3_M_AXI_S2MM_AWPROT;
  wire axi_dma_3_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_3_M_AXI_S2MM_AWSIZE;
  wire axi_dma_3_M_AXI_S2MM_AWVALID;
  wire axi_dma_3_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_3_M_AXI_S2MM_BRESP;
  wire axi_dma_3_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_3_M_AXI_S2MM_WDATA;
  wire axi_dma_3_M_AXI_S2MM_WLAST;
  wire axi_dma_3_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_3_M_AXI_S2MM_WSTRB;
  wire axi_dma_3_M_AXI_S2MM_WVALID;
  wire [31:0]axi_dma_4_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_4_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_4_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_4_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_4_M_AXI_MM2S_ARPROT;
  wire axi_dma_4_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_4_M_AXI_MM2S_ARSIZE;
  wire axi_dma_4_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_4_M_AXI_MM2S_RDATA;
  wire axi_dma_4_M_AXI_MM2S_RLAST;
  wire axi_dma_4_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_4_M_AXI_MM2S_RRESP;
  wire axi_dma_4_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_4_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_4_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_4_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_4_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_4_M_AXI_S2MM_AWPROT;
  wire axi_dma_4_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_4_M_AXI_S2MM_AWSIZE;
  wire axi_dma_4_M_AXI_S2MM_AWVALID;
  wire axi_dma_4_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_4_M_AXI_S2MM_BRESP;
  wire axi_dma_4_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_4_M_AXI_S2MM_WDATA;
  wire axi_dma_4_M_AXI_S2MM_WLAST;
  wire axi_dma_4_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_4_M_AXI_S2MM_WSTRB;
  wire axi_dma_4_M_AXI_S2MM_WVALID;
  wire [3:0]axi_dma_4_m_axis_mm2s_tkeep;
  wire axi_dma_4_m_axis_mm2s_tlast;
  wire axi_dma_4_m_axis_mm2s_tvalid;
  wire [31:0]axi_dma_5_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_dma_5_M_AXIS_MM2S_TKEEP;
  wire axi_dma_5_M_AXIS_MM2S_TLAST;
  wire axi_dma_5_M_AXIS_MM2S_TREADY;
  wire axi_dma_5_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_5_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_5_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_5_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_5_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_5_M_AXI_MM2S_ARPROT;
  wire axi_dma_5_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_5_M_AXI_MM2S_ARSIZE;
  wire axi_dma_5_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_5_M_AXI_MM2S_RDATA;
  wire axi_dma_5_M_AXI_MM2S_RLAST;
  wire axi_dma_5_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_5_M_AXI_MM2S_RRESP;
  wire axi_dma_5_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_5_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_5_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_5_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_5_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_5_M_AXI_S2MM_AWPROT;
  wire axi_dma_5_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_5_M_AXI_S2MM_AWSIZE;
  wire axi_dma_5_M_AXI_S2MM_AWVALID;
  wire axi_dma_5_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_5_M_AXI_S2MM_BRESP;
  wire axi_dma_5_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_5_M_AXI_S2MM_WDATA;
  wire axi_dma_5_M_AXI_S2MM_WLAST;
  wire axi_dma_5_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_5_M_AXI_S2MM_WSTRB;
  wire axi_dma_5_M_AXI_S2MM_WVALID;
  wire [31:0]axi_dma_6_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_6_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_6_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_6_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_6_M_AXI_MM2S_ARPROT;
  wire axi_dma_6_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_6_M_AXI_MM2S_ARSIZE;
  wire axi_dma_6_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_6_M_AXI_MM2S_RDATA;
  wire axi_dma_6_M_AXI_MM2S_RLAST;
  wire axi_dma_6_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_6_M_AXI_MM2S_RRESP;
  wire axi_dma_6_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_6_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_6_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_6_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_6_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_6_M_AXI_S2MM_AWPROT;
  wire axi_dma_6_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_6_M_AXI_S2MM_AWSIZE;
  wire axi_dma_6_M_AXI_S2MM_AWVALID;
  wire axi_dma_6_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_6_M_AXI_S2MM_BRESP;
  wire axi_dma_6_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_6_M_AXI_S2MM_WDATA;
  wire axi_dma_6_M_AXI_S2MM_WLAST;
  wire axi_dma_6_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_6_M_AXI_S2MM_WSTRB;
  wire axi_dma_6_M_AXI_S2MM_WVALID;
  wire [3:0]axi_dma_6_m_axis_mm2s_tkeep;
  wire axi_dma_6_m_axis_mm2s_tlast;
  wire axi_dma_6_m_axis_mm2s_tvalid;
  wire [31:0]axi_dma_7_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_dma_7_M_AXIS_MM2S_TKEEP;
  wire axi_dma_7_M_AXIS_MM2S_TLAST;
  wire axi_dma_7_M_AXIS_MM2S_TREADY;
  wire axi_dma_7_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_7_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_7_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_7_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_7_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_7_M_AXI_MM2S_ARPROT;
  wire axi_dma_7_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_7_M_AXI_MM2S_ARSIZE;
  wire axi_dma_7_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_7_M_AXI_MM2S_RDATA;
  wire axi_dma_7_M_AXI_MM2S_RLAST;
  wire axi_dma_7_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_7_M_AXI_MM2S_RRESP;
  wire axi_dma_7_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_7_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_7_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_7_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_7_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_7_M_AXI_S2MM_AWPROT;
  wire axi_dma_7_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_7_M_AXI_S2MM_AWSIZE;
  wire axi_dma_7_M_AXI_S2MM_AWVALID;
  wire axi_dma_7_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_7_M_AXI_S2MM_BRESP;
  wire axi_dma_7_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_7_M_AXI_S2MM_WDATA;
  wire axi_dma_7_M_AXI_S2MM_WLAST;
  wire axi_dma_7_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_7_M_AXI_S2MM_WSTRB;
  wire axi_dma_7_M_AXI_S2MM_WVALID;
  wire [31:0]axi_register_slice_0_M_AXI_ARADDR;
  wire [1:0]axi_register_slice_0_M_AXI_ARBURST;
  wire [3:0]axi_register_slice_0_M_AXI_ARCACHE;
  wire [3:0]axi_register_slice_0_M_AXI_ARID;
  wire [7:0]axi_register_slice_0_M_AXI_ARLEN;
  wire [0:0]axi_register_slice_0_M_AXI_ARLOCK;
  wire [2:0]axi_register_slice_0_M_AXI_ARPROT;
  wire [3:0]axi_register_slice_0_M_AXI_ARQOS;
  wire axi_register_slice_0_M_AXI_ARREADY;
  wire [3:0]axi_register_slice_0_M_AXI_ARREGION;
  wire [2:0]axi_register_slice_0_M_AXI_ARSIZE;
  wire axi_register_slice_0_M_AXI_ARVALID;
  wire [31:0]axi_register_slice_0_M_AXI_AWADDR;
  wire [1:0]axi_register_slice_0_M_AXI_AWBURST;
  wire [3:0]axi_register_slice_0_M_AXI_AWCACHE;
  wire [3:0]axi_register_slice_0_M_AXI_AWID;
  wire [7:0]axi_register_slice_0_M_AXI_AWLEN;
  wire [0:0]axi_register_slice_0_M_AXI_AWLOCK;
  wire [2:0]axi_register_slice_0_M_AXI_AWPROT;
  wire [3:0]axi_register_slice_0_M_AXI_AWQOS;
  wire axi_register_slice_0_M_AXI_AWREADY;
  wire [3:0]axi_register_slice_0_M_AXI_AWREGION;
  wire [2:0]axi_register_slice_0_M_AXI_AWSIZE;
  wire axi_register_slice_0_M_AXI_AWVALID;
  wire [3:0]axi_register_slice_0_M_AXI_BID;
  wire axi_register_slice_0_M_AXI_BREADY;
  wire [1:0]axi_register_slice_0_M_AXI_BRESP;
  wire axi_register_slice_0_M_AXI_BVALID;
  wire [63:0]axi_register_slice_0_M_AXI_RDATA;
  wire [3:0]axi_register_slice_0_M_AXI_RID;
  wire axi_register_slice_0_M_AXI_RLAST;
  wire axi_register_slice_0_M_AXI_RREADY;
  wire [1:0]axi_register_slice_0_M_AXI_RRESP;
  wire axi_register_slice_0_M_AXI_RVALID;
  wire [63:0]axi_register_slice_0_M_AXI_WDATA;
  wire axi_register_slice_0_M_AXI_WLAST;
  wire axi_register_slice_0_M_AXI_WREADY;
  wire [7:0]axi_register_slice_0_M_AXI_WSTRB;
  wire axi_register_slice_0_M_AXI_WVALID;
  wire [30:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [30:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [511:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [511:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [63:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [3:0]axi_smc_M01_AXI_ARADDR;
  wire [2:0]axi_smc_M01_AXI_ARPROT;
  wire axi_smc_M01_AXI_ARREADY;
  wire axi_smc_M01_AXI_ARVALID;
  wire [3:0]axi_smc_M01_AXI_AWADDR;
  wire [2:0]axi_smc_M01_AXI_AWPROT;
  wire axi_smc_M01_AXI_AWREADY;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WREADY;
  wire [3:0]axi_smc_M01_AXI_WSTRB;
  wire axi_smc_M01_AXI_WVALID;
  wire [31:0]axi_smc_M02_AXI_ARADDR;
  wire [2:0]axi_smc_M02_AXI_ARPROT;
  wire axi_smc_M02_AXI_ARREADY;
  wire axi_smc_M02_AXI_ARVALID;
  wire [31:0]axi_smc_M02_AXI_AWADDR;
  wire [2:0]axi_smc_M02_AXI_AWPROT;
  wire axi_smc_M02_AXI_AWREADY;
  wire axi_smc_M02_AXI_AWVALID;
  wire axi_smc_M02_AXI_BREADY;
  wire [1:0]axi_smc_M02_AXI_BRESP;
  wire axi_smc_M02_AXI_BVALID;
  wire [31:0]axi_smc_M02_AXI_RDATA;
  wire axi_smc_M02_AXI_RREADY;
  wire [1:0]axi_smc_M02_AXI_RRESP;
  wire axi_smc_M02_AXI_RVALID;
  wire [31:0]axi_smc_M02_AXI_WDATA;
  wire axi_smc_M02_AXI_WREADY;
  wire [3:0]axi_smc_M02_AXI_WSTRB;
  wire axi_smc_M02_AXI_WVALID;
  wire axi_smc_S00_AXI_arready;
  wire axi_smc_S00_AXI_awready;
  wire axi_smc_S00_AXI_bvalid;
  wire axi_smc_S00_AXI_rvalid;
  wire axi_smc_S00_AXI_wready;
  wire [31:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire [3:0]axis_data_fifo_0_M_AXIS_TKEEP;
  wire axis_data_fifo_0_M_AXIS_TLAST;
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire axis_data_fifo_0_s_axis_tready;
  wire [31:0]axis_data_fifo_1_M_AXIS_TDATA;
  wire [3:0]axis_data_fifo_1_M_AXIS_TKEEP;
  wire axis_data_fifo_1_M_AXIS_TLAST;
  wire axis_data_fifo_1_M_AXIS_TREADY;
  wire axis_data_fifo_1_M_AXIS_TVALID;
  wire [31:0]axis_data_fifo_2_M_AXIS_TDATA;
  wire [3:0]axis_data_fifo_2_M_AXIS_TKEEP;
  wire axis_data_fifo_2_M_AXIS_TLAST;
  wire axis_data_fifo_2_M_AXIS_TREADY;
  wire axis_data_fifo_2_M_AXIS_TVALID;
  wire [31:0]axis_data_fifo_3_M_AXIS_TDATA;
  wire [3:0]axis_data_fifo_3_M_AXIS_TKEEP;
  wire axis_data_fifo_3_M_AXIS_TLAST;
  wire axis_data_fifo_3_M_AXIS_TREADY;
  wire axis_data_fifo_3_M_AXIS_TVALID;
  wire [31:0]axis_data_fifo_4_M_AXIS_TDATA;
  wire [3:0]axis_data_fifo_4_M_AXIS_TKEEP;
  wire axis_data_fifo_4_M_AXIS_TLAST;
  wire axis_data_fifo_4_M_AXIS_TREADY;
  wire axis_data_fifo_4_M_AXIS_TVALID;
  wire axis_data_fifo_4_s_axis_tready;
  wire [31:0]axis_data_fifo_5_M_AXIS_TDATA;
  wire [3:0]axis_data_fifo_5_M_AXIS_TKEEP;
  wire axis_data_fifo_5_M_AXIS_TLAST;
  wire axis_data_fifo_5_M_AXIS_TREADY;
  wire axis_data_fifo_5_M_AXIS_TVALID;
  wire [31:0]axis_data_fifo_6_M_AXIS_TDATA;
  wire [3:0]axis_data_fifo_6_M_AXIS_TKEEP;
  wire axis_data_fifo_6_M_AXIS_TLAST;
  wire axis_data_fifo_6_M_AXIS_TREADY;
  wire axis_data_fifo_6_M_AXIS_TVALID;
  wire axis_data_fifo_6_s_axis_tready;
  wire [31:0]axis_data_fifo_7_M_AXIS_TDATA;
  wire [3:0]axis_data_fifo_7_M_AXIS_TKEEP;
  wire axis_data_fifo_7_M_AXIS_TLAST;
  wire axis_data_fifo_7_M_AXIS_TREADY;
  wire axis_data_fifo_7_M_AXIS_TVALID;
  wire ddr4_0_C0_DDR4_ACT_N;
  wire [16:0]ddr4_0_C0_DDR4_ADR;
  wire [1:0]ddr4_0_C0_DDR4_BA;
  wire [0:0]ddr4_0_C0_DDR4_BG;
  wire [0:0]ddr4_0_C0_DDR4_CKE;
  wire [0:0]ddr4_0_C0_DDR4_CK_C;
  wire [0:0]ddr4_0_C0_DDR4_CK_T;
  wire [0:0]ddr4_0_C0_DDR4_CS_N;
  wire [7:0]ddr4_0_C0_DDR4_DM_N;
  wire [63:0]ddr4_0_C0_DDR4_DQ;
  wire [7:0]ddr4_0_C0_DDR4_DQS_C;
  wire [7:0]ddr4_0_C0_DDR4_DQS_T;
  wire [0:0]ddr4_0_C0_DDR4_ODT;
  wire ddr4_0_C0_DDR4_RESET_N;
  wire ddr4_0_addn_ui_clkout1;
  wire ddr4_0_c0_ddr4_ui_clk;
  wire ddr4_0_c0_ddr4_ui_clk_sync_rst;
  wire default_250mhz_clk1_1_CLK_N;
  wire default_250mhz_clk1_1_CLK_P;
  wire gate_axi_0_arready_out;
  wire gate_axi_0_arvalid_out;
  wire [31:0]gate_axi_0_awaddr_out;
  wire gate_axi_0_awready_out;
  wire gate_axi_0_awvalid_out;
  wire gate_axi_0_bready_out;
  wire gate_axi_0_bvalid_out;
  wire gate_axi_0_rready_out;
  wire gate_axi_0_rvalid_out;
  wire gate_axi_0_wready_out;
  wire gate_axi_0_wvalid_out;
  wire mdm_1_debug_sys_rst;
  wire memops_scheduler_0_ndp_not_inuse;
  wire [31:0]memops_scheduler_1_M00_AXI_ARADDR;
  wire [2:0]memops_scheduler_1_M00_AXI_ARPROT;
  wire memops_scheduler_1_M00_AXI_ARREADY;
  wire memops_scheduler_1_M00_AXI_ARVALID;
  wire [31:0]memops_scheduler_1_M00_AXI_AWADDR;
  wire [2:0]memops_scheduler_1_M00_AXI_AWPROT;
  wire memops_scheduler_1_M00_AXI_AWREADY;
  wire memops_scheduler_1_M00_AXI_AWVALID;
  wire memops_scheduler_1_M00_AXI_BREADY;
  wire [1:0]memops_scheduler_1_M00_AXI_BRESP;
  wire memops_scheduler_1_M00_AXI_BVALID;
  wire [31:0]memops_scheduler_1_M00_AXI_RDATA;
  wire memops_scheduler_1_M00_AXI_RREADY;
  wire [1:0]memops_scheduler_1_M00_AXI_RRESP;
  wire memops_scheduler_1_M00_AXI_RVALID;
  wire [31:0]memops_scheduler_1_M00_AXI_WDATA;
  wire memops_scheduler_1_M00_AXI_WREADY;
  wire [3:0]memops_scheduler_1_M00_AXI_WSTRB;
  wire memops_scheduler_1_M00_AXI_WVALID;
  wire [31:0]memops_scheduler_1_M01_AXI_ARADDR;
  wire [2:0]memops_scheduler_1_M01_AXI_ARPROT;
  wire memops_scheduler_1_M01_AXI_ARREADY;
  wire memops_scheduler_1_M01_AXI_ARVALID;
  wire [31:0]memops_scheduler_1_M01_AXI_AWADDR;
  wire [2:0]memops_scheduler_1_M01_AXI_AWPROT;
  wire memops_scheduler_1_M01_AXI_AWREADY;
  wire memops_scheduler_1_M01_AXI_AWVALID;
  wire memops_scheduler_1_M01_AXI_BREADY;
  wire [1:0]memops_scheduler_1_M01_AXI_BRESP;
  wire memops_scheduler_1_M01_AXI_BVALID;
  wire [31:0]memops_scheduler_1_M01_AXI_RDATA;
  wire memops_scheduler_1_M01_AXI_RREADY;
  wire [1:0]memops_scheduler_1_M01_AXI_RRESP;
  wire memops_scheduler_1_M01_AXI_RVALID;
  wire [31:0]memops_scheduler_1_M01_AXI_WDATA;
  wire memops_scheduler_1_M01_AXI_WREADY;
  wire [3:0]memops_scheduler_1_M01_AXI_WSTRB;
  wire memops_scheduler_1_M01_AXI_WVALID;
  wire [31:0]memops_scheduler_1_M02_AXI_ARADDR;
  wire [2:0]memops_scheduler_1_M02_AXI_ARPROT;
  wire memops_scheduler_1_M02_AXI_ARREADY;
  wire memops_scheduler_1_M02_AXI_ARVALID;
  wire [31:0]memops_scheduler_1_M02_AXI_AWADDR;
  wire [2:0]memops_scheduler_1_M02_AXI_AWPROT;
  wire memops_scheduler_1_M02_AXI_AWREADY;
  wire memops_scheduler_1_M02_AXI_AWVALID;
  wire memops_scheduler_1_M02_AXI_BREADY;
  wire [1:0]memops_scheduler_1_M02_AXI_BRESP;
  wire memops_scheduler_1_M02_AXI_BVALID;
  wire [31:0]memops_scheduler_1_M02_AXI_RDATA;
  wire memops_scheduler_1_M02_AXI_RREADY;
  wire [1:0]memops_scheduler_1_M02_AXI_RRESP;
  wire memops_scheduler_1_M02_AXI_RVALID;
  wire [31:0]memops_scheduler_1_M02_AXI_WDATA;
  wire memops_scheduler_1_M02_AXI_WREADY;
  wire [3:0]memops_scheduler_1_M02_AXI_WSTRB;
  wire memops_scheduler_1_M02_AXI_WVALID;
  wire [31:0]memops_scheduler_1_M03_AXI_ARADDR;
  wire [2:0]memops_scheduler_1_M03_AXI_ARPROT;
  wire memops_scheduler_1_M03_AXI_ARREADY;
  wire memops_scheduler_1_M03_AXI_ARVALID;
  wire [31:0]memops_scheduler_1_M03_AXI_AWADDR;
  wire [2:0]memops_scheduler_1_M03_AXI_AWPROT;
  wire memops_scheduler_1_M03_AXI_AWREADY;
  wire memops_scheduler_1_M03_AXI_AWVALID;
  wire memops_scheduler_1_M03_AXI_BREADY;
  wire [1:0]memops_scheduler_1_M03_AXI_BRESP;
  wire memops_scheduler_1_M03_AXI_BVALID;
  wire [31:0]memops_scheduler_1_M03_AXI_RDATA;
  wire memops_scheduler_1_M03_AXI_RREADY;
  wire [1:0]memops_scheduler_1_M03_AXI_RRESP;
  wire memops_scheduler_1_M03_AXI_RVALID;
  wire [31:0]memops_scheduler_1_M03_AXI_WDATA;
  wire memops_scheduler_1_M03_AXI_WREADY;
  wire [3:0]memops_scheduler_1_M03_AXI_WSTRB;
  wire memops_scheduler_1_M03_AXI_WVALID;
  wire [4:0]memops_scheduler_1_done_count;
  wire [3:0]memops_scheduler_1_mst_exec_state;
  wire [7:0]memops_scheduler_1_ndp_done;
  wire [7:0]memops_scheduler_1_ndp_start;
  wire [11:0]memops_scheduler_1_offset_read_addr;
  wire memops_scheduler_1_offset_read_enable;
  wire memops_scheduler_1_offset_reg1_valid;
  wire memops_scheduler_1_offset_reg2_valid;
  wire [4:0]memops_scheduler_1_start_count;
  wire [1:0]memops_scheduler_1_vaddr_offset_count;
  wire microblaze_0_Clk;
  wire pcie_perstn_1;
  wire pcie_refclk_1_CLK_N;
  wire pcie_refclk_1_CLK_P;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire reset_1;
  wire [0:0]rst_ddr4_0_300M_1_peripheral_aresetn;
  wire [0:0]rst_ddr4_0_300M_2_peripheral_aresetn;
  wire [0:0]rst_ddr4_0_300M_interconnect_aresetn;
  wire [0:0]rst_ddr4_0_300M_peripheral_aresetn;
  wire [31:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [5:0]smartconnect_0_M00_AXI_ARID;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire [113:0]smartconnect_0_M00_AXI_ARUSER;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [31:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [5:0]smartconnect_0_M00_AXI_AWID;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire [113:0]smartconnect_0_M00_AXI_AWUSER;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire [5:0]smartconnect_0_M00_AXI_BID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire [113:0]smartconnect_0_M00_AXI_BUSER;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [511:0]smartconnect_0_M00_AXI_RDATA;
  wire [5:0]smartconnect_0_M00_AXI_RID;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire [13:0]smartconnect_0_M00_AXI_RUSER;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [511:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [63:0]smartconnect_0_M00_AXI_WSTRB;
  wire [13:0]smartconnect_0_M00_AXI_WUSER;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [31:0]smartconnect_1_M00_AXI_ARADDR;
  wire [1:0]smartconnect_1_M00_AXI_ARBURST;
  wire [3:0]smartconnect_1_M00_AXI_ARCACHE;
  wire [5:0]smartconnect_1_M00_AXI_ARID;
  wire [7:0]smartconnect_1_M00_AXI_ARLEN;
  wire [0:0]smartconnect_1_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_1_M00_AXI_ARPROT;
  wire [3:0]smartconnect_1_M00_AXI_ARQOS;
  wire [2:0]smartconnect_1_M00_AXI_ARSIZE;
  wire [113:0]smartconnect_1_M00_AXI_ARUSER;
  wire [1:0]smartconnect_1_M00_AXI_AWBURST;
  wire [3:0]smartconnect_1_M00_AXI_AWCACHE;
  wire [5:0]smartconnect_1_M00_AXI_AWID;
  wire [7:0]smartconnect_1_M00_AXI_AWLEN;
  wire [0:0]smartconnect_1_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_1_M00_AXI_AWPROT;
  wire [2:0]smartconnect_1_M00_AXI_AWSIZE;
  wire [113:0]smartconnect_1_M00_AXI_AWUSER;
  wire [5:0]smartconnect_1_M00_AXI_BID;
  wire [1:0]smartconnect_1_M00_AXI_BRESP;
  wire [113:0]smartconnect_1_M00_AXI_BUSER;
  wire [511:0]smartconnect_1_M00_AXI_RDATA;
  wire [5:0]smartconnect_1_M00_AXI_RID;
  wire smartconnect_1_M00_AXI_RLAST;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire [13:0]smartconnect_1_M00_AXI_RUSER;
  wire [511:0]smartconnect_1_M00_AXI_WDATA;
  wire [63:0]smartconnect_1_M00_AXI_WSTRB;
  wire [13:0]smartconnect_1_M00_AXI_WUSER;
  wire smartconnect_1_M00_AXI_arvalid;
  wire [31:0]smartconnect_1_M00_AXI_awaddr;
  wire [3:0]smartconnect_1_M00_AXI_awqos;
  wire smartconnect_1_M00_AXI_awvalid;
  wire smartconnect_1_M00_AXI_bready;
  wire smartconnect_1_M00_AXI_rready;
  wire smartconnect_1_M00_AXI_wlast;
  wire smartconnect_1_M00_AXI_wvalid;
  wire [9:0]smartconnect_1_M01_AXI_ARADDR;
  wire [2:0]smartconnect_1_M01_AXI_ARPROT;
  wire smartconnect_1_M01_AXI_ARREADY;
  wire smartconnect_1_M01_AXI_ARVALID;
  wire [9:0]smartconnect_1_M01_AXI_AWADDR;
  wire [2:0]smartconnect_1_M01_AXI_AWPROT;
  wire smartconnect_1_M01_AXI_AWREADY;
  wire smartconnect_1_M01_AXI_AWVALID;
  wire smartconnect_1_M01_AXI_BREADY;
  wire [1:0]smartconnect_1_M01_AXI_BRESP;
  wire smartconnect_1_M01_AXI_BVALID;
  wire [31:0]smartconnect_1_M01_AXI_RDATA;
  wire smartconnect_1_M01_AXI_RREADY;
  wire [1:0]smartconnect_1_M01_AXI_RRESP;
  wire smartconnect_1_M01_AXI_RVALID;
  wire [31:0]smartconnect_1_M01_AXI_WDATA;
  wire smartconnect_1_M01_AXI_WREADY;
  wire [3:0]smartconnect_1_M01_AXI_WSTRB;
  wire smartconnect_1_M01_AXI_WVALID;
  wire [31:0]undolog_0_M00_AXI_ARADDR;
  wire undolog_0_M00_AXI_ARREADY;
  wire undolog_0_M00_AXI_ARVALID;
  wire [31:0]undolog_0_M00_AXI_AWADDR;
  wire undolog_0_M00_AXI_AWREADY;
  wire undolog_0_M00_AXI_AWVALID;
  wire undolog_0_M00_AXI_BREADY;
  wire [1:0]undolog_0_M00_AXI_BRESP;
  wire undolog_0_M00_AXI_BVALID;
  wire [31:0]undolog_0_M00_AXI_RDATA;
  wire undolog_0_M00_AXI_RREADY;
  wire [1:0]undolog_0_M00_AXI_RRESP;
  wire undolog_0_M00_AXI_RVALID;
  wire [31:0]undolog_0_M00_AXI_WDATA;
  wire undolog_0_M00_AXI_WREADY;
  wire undolog_0_M00_AXI_WVALID;
  wire [31:0]undolog_0_M01_AXI_ARADDR;
  wire undolog_0_M01_AXI_ARREADY;
  wire undolog_0_M01_AXI_ARVALID;
  wire [31:0]undolog_0_M01_AXI_AWADDR;
  wire undolog_0_M01_AXI_AWREADY;
  wire undolog_0_M01_AXI_AWVALID;
  wire undolog_0_M01_AXI_BREADY;
  wire [1:0]undolog_0_M01_AXI_BRESP;
  wire undolog_0_M01_AXI_BVALID;
  wire [31:0]undolog_0_M01_AXI_RDATA;
  wire undolog_0_M01_AXI_RREADY;
  wire [1:0]undolog_0_M01_AXI_RRESP;
  wire undolog_0_M01_AXI_RVALID;
  wire [31:0]undolog_0_M01_AXI_WDATA;
  wire undolog_0_M01_AXI_WREADY;
  wire undolog_0_M01_AXI_WVALID;
  wire [31:0]undolog_0_M02_AXI_ARADDR;
  wire [2:0]undolog_0_M02_AXI_ARPROT;
  wire undolog_0_M02_AXI_ARREADY;
  wire undolog_0_M02_AXI_ARVALID;
  wire [31:0]undolog_0_M02_AXI_AWADDR;
  wire [2:0]undolog_0_M02_AXI_AWPROT;
  wire undolog_0_M02_AXI_AWREADY;
  wire undolog_0_M02_AXI_AWVALID;
  wire undolog_0_M02_AXI_BREADY;
  wire [1:0]undolog_0_M02_AXI_BRESP;
  wire undolog_0_M02_AXI_BVALID;
  wire [31:0]undolog_0_M02_AXI_RDATA;
  wire undolog_0_M02_AXI_RREADY;
  wire [1:0]undolog_0_M02_AXI_RRESP;
  wire undolog_0_M02_AXI_RVALID;
  wire [31:0]undolog_0_M02_AXI_WDATA;
  wire undolog_0_M02_AXI_WREADY;
  wire [3:0]undolog_0_M02_AXI_WSTRB;
  wire undolog_0_M02_AXI_WVALID;
  wire undolog_0_data_copy_pulse;
  wire undolog_0_datacpy_done;
  wire [63:0]undolog_0_log_size;
  wire [63:0]undolog_0_log_src;
  wire [31:0]undolog_0_regout;
  wire [63:0]undolog_0_ulog_offset;
  wire [31:0]undolog_1_M00_AXI_ARADDR;
  wire undolog_1_M00_AXI_ARREADY;
  wire undolog_1_M00_AXI_ARVALID;
  wire [31:0]undolog_1_M00_AXI_AWADDR;
  wire undolog_1_M00_AXI_AWREADY;
  wire undolog_1_M00_AXI_AWVALID;
  wire undolog_1_M00_AXI_BREADY;
  wire [1:0]undolog_1_M00_AXI_BRESP;
  wire undolog_1_M00_AXI_BVALID;
  wire [31:0]undolog_1_M00_AXI_RDATA;
  wire undolog_1_M00_AXI_RREADY;
  wire [1:0]undolog_1_M00_AXI_RRESP;
  wire undolog_1_M00_AXI_RVALID;
  wire [31:0]undolog_1_M00_AXI_WDATA;
  wire undolog_1_M00_AXI_WREADY;
  wire undolog_1_M00_AXI_WVALID;
  wire [31:0]undolog_1_M01_AXI_ARADDR;
  wire undolog_1_M01_AXI_ARREADY;
  wire undolog_1_M01_AXI_ARVALID;
  wire [31:0]undolog_1_M01_AXI_AWADDR;
  wire undolog_1_M01_AXI_AWREADY;
  wire undolog_1_M01_AXI_AWVALID;
  wire undolog_1_M01_AXI_BREADY;
  wire [1:0]undolog_1_M01_AXI_BRESP;
  wire undolog_1_M01_AXI_BVALID;
  wire [31:0]undolog_1_M01_AXI_RDATA;
  wire undolog_1_M01_AXI_RREADY;
  wire [1:0]undolog_1_M01_AXI_RRESP;
  wire undolog_1_M01_AXI_RVALID;
  wire [31:0]undolog_1_M01_AXI_WDATA;
  wire undolog_1_M01_AXI_WREADY;
  wire undolog_1_M01_AXI_WVALID;
  wire [31:0]undolog_1_M02_AXI_ARADDR;
  wire [2:0]undolog_1_M02_AXI_ARPROT;
  wire undolog_1_M02_AXI_ARREADY;
  wire undolog_1_M02_AXI_ARVALID;
  wire [31:0]undolog_1_M02_AXI_AWADDR;
  wire [2:0]undolog_1_M02_AXI_AWPROT;
  wire undolog_1_M02_AXI_AWREADY;
  wire undolog_1_M02_AXI_AWVALID;
  wire undolog_1_M02_AXI_BREADY;
  wire [1:0]undolog_1_M02_AXI_BRESP;
  wire undolog_1_M02_AXI_BVALID;
  wire [31:0]undolog_1_M02_AXI_RDATA;
  wire undolog_1_M02_AXI_RREADY;
  wire [1:0]undolog_1_M02_AXI_RRESP;
  wire undolog_1_M02_AXI_RVALID;
  wire [31:0]undolog_1_M02_AXI_WDATA;
  wire undolog_1_M02_AXI_WREADY;
  wire [3:0]undolog_1_M02_AXI_WSTRB;
  wire undolog_1_M02_AXI_WVALID;
  wire [31:0]undolog_2_M00_AXI_ARADDR;
  wire undolog_2_M00_AXI_ARREADY;
  wire undolog_2_M00_AXI_ARVALID;
  wire [31:0]undolog_2_M00_AXI_AWADDR;
  wire undolog_2_M00_AXI_AWREADY;
  wire undolog_2_M00_AXI_AWVALID;
  wire undolog_2_M00_AXI_BREADY;
  wire [1:0]undolog_2_M00_AXI_BRESP;
  wire undolog_2_M00_AXI_BVALID;
  wire [31:0]undolog_2_M00_AXI_RDATA;
  wire undolog_2_M00_AXI_RREADY;
  wire [1:0]undolog_2_M00_AXI_RRESP;
  wire undolog_2_M00_AXI_RVALID;
  wire [31:0]undolog_2_M00_AXI_WDATA;
  wire undolog_2_M00_AXI_WREADY;
  wire undolog_2_M00_AXI_WVALID;
  wire [31:0]undolog_2_M01_AXI_ARADDR;
  wire undolog_2_M01_AXI_ARREADY;
  wire undolog_2_M01_AXI_ARVALID;
  wire [31:0]undolog_2_M01_AXI_AWADDR;
  wire undolog_2_M01_AXI_AWREADY;
  wire undolog_2_M01_AXI_AWVALID;
  wire undolog_2_M01_AXI_BREADY;
  wire [1:0]undolog_2_M01_AXI_BRESP;
  wire undolog_2_M01_AXI_BVALID;
  wire [31:0]undolog_2_M01_AXI_RDATA;
  wire undolog_2_M01_AXI_RREADY;
  wire [1:0]undolog_2_M01_AXI_RRESP;
  wire undolog_2_M01_AXI_RVALID;
  wire [31:0]undolog_2_M01_AXI_WDATA;
  wire undolog_2_M01_AXI_WREADY;
  wire undolog_2_M01_AXI_WVALID;
  wire [31:0]undolog_2_M02_AXI_ARADDR;
  wire [2:0]undolog_2_M02_AXI_ARPROT;
  wire undolog_2_M02_AXI_ARREADY;
  wire undolog_2_M02_AXI_ARVALID;
  wire [31:0]undolog_2_M02_AXI_AWADDR;
  wire [2:0]undolog_2_M02_AXI_AWPROT;
  wire undolog_2_M02_AXI_AWREADY;
  wire undolog_2_M02_AXI_AWVALID;
  wire undolog_2_M02_AXI_BREADY;
  wire [1:0]undolog_2_M02_AXI_BRESP;
  wire undolog_2_M02_AXI_BVALID;
  wire [31:0]undolog_2_M02_AXI_RDATA;
  wire undolog_2_M02_AXI_RREADY;
  wire [1:0]undolog_2_M02_AXI_RRESP;
  wire undolog_2_M02_AXI_RVALID;
  wire [31:0]undolog_2_M02_AXI_WDATA;
  wire undolog_2_M02_AXI_WREADY;
  wire [3:0]undolog_2_M02_AXI_WSTRB;
  wire undolog_2_M02_AXI_WVALID;
  wire [31:0]undolog_3_M00_AXI_ARADDR;
  wire undolog_3_M00_AXI_ARREADY;
  wire undolog_3_M00_AXI_ARVALID;
  wire [31:0]undolog_3_M00_AXI_AWADDR;
  wire undolog_3_M00_AXI_AWREADY;
  wire undolog_3_M00_AXI_AWVALID;
  wire undolog_3_M00_AXI_BREADY;
  wire [1:0]undolog_3_M00_AXI_BRESP;
  wire undolog_3_M00_AXI_BVALID;
  wire [31:0]undolog_3_M00_AXI_RDATA;
  wire undolog_3_M00_AXI_RREADY;
  wire [1:0]undolog_3_M00_AXI_RRESP;
  wire undolog_3_M00_AXI_RVALID;
  wire [31:0]undolog_3_M00_AXI_WDATA;
  wire undolog_3_M00_AXI_WREADY;
  wire undolog_3_M00_AXI_WVALID;
  wire [31:0]undolog_3_M01_AXI_ARADDR;
  wire undolog_3_M01_AXI_ARREADY;
  wire undolog_3_M01_AXI_ARVALID;
  wire [31:0]undolog_3_M01_AXI_AWADDR;
  wire undolog_3_M01_AXI_AWREADY;
  wire undolog_3_M01_AXI_AWVALID;
  wire undolog_3_M01_AXI_BREADY;
  wire [1:0]undolog_3_M01_AXI_BRESP;
  wire undolog_3_M01_AXI_BVALID;
  wire [31:0]undolog_3_M01_AXI_RDATA;
  wire undolog_3_M01_AXI_RREADY;
  wire [1:0]undolog_3_M01_AXI_RRESP;
  wire undolog_3_M01_AXI_RVALID;
  wire [31:0]undolog_3_M01_AXI_WDATA;
  wire undolog_3_M01_AXI_WREADY;
  wire undolog_3_M01_AXI_WVALID;
  wire [31:0]undolog_3_M02_AXI_ARADDR;
  wire [2:0]undolog_3_M02_AXI_ARPROT;
  wire undolog_3_M02_AXI_ARREADY;
  wire undolog_3_M02_AXI_ARVALID;
  wire [31:0]undolog_3_M02_AXI_AWADDR;
  wire [2:0]undolog_3_M02_AXI_AWPROT;
  wire undolog_3_M02_AXI_AWREADY;
  wire undolog_3_M02_AXI_AWVALID;
  wire undolog_3_M02_AXI_BREADY;
  wire [1:0]undolog_3_M02_AXI_BRESP;
  wire undolog_3_M02_AXI_BVALID;
  wire [31:0]undolog_3_M02_AXI_RDATA;
  wire undolog_3_M02_AXI_RREADY;
  wire [1:0]undolog_3_M02_AXI_RRESP;
  wire undolog_3_M02_AXI_RVALID;
  wire [31:0]undolog_3_M02_AXI_WDATA;
  wire undolog_3_M02_AXI_WREADY;
  wire [3:0]undolog_3_M02_AXI_WSTRB;
  wire undolog_3_M02_AXI_WVALID;
  wire user_si570_clock_1_CLK_N;
  wire user_si570_clock_1_CLK_P;
  wire [0:0]util_ds_buf_0_IBUF_DS_ODIV2;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [31:0]xdma_0_M_AXI_B_ARADDR;
  wire [1:0]xdma_0_M_AXI_B_ARBURST;
  wire [3:0]xdma_0_M_AXI_B_ARCACHE;
  wire [3:0]xdma_0_M_AXI_B_ARID;
  wire [7:0]xdma_0_M_AXI_B_ARLEN;
  wire xdma_0_M_AXI_B_ARLOCK;
  wire [2:0]xdma_0_M_AXI_B_ARPROT;
  wire xdma_0_M_AXI_B_ARREADY;
  wire [2:0]xdma_0_M_AXI_B_ARSIZE;
  wire xdma_0_M_AXI_B_ARVALID;
  wire [1:0]xdma_0_M_AXI_B_AWBURST;
  wire [3:0]xdma_0_M_AXI_B_AWCACHE;
  wire [3:0]xdma_0_M_AXI_B_AWID;
  wire [7:0]xdma_0_M_AXI_B_AWLEN;
  wire xdma_0_M_AXI_B_AWLOCK;
  wire [2:0]xdma_0_M_AXI_B_AWPROT;
  wire xdma_0_M_AXI_B_AWREADY;
  wire [2:0]xdma_0_M_AXI_B_AWSIZE;
  wire [3:0]xdma_0_M_AXI_B_BID;
  wire xdma_0_M_AXI_B_BREADY;
  wire [1:0]xdma_0_M_AXI_B_BRESP;
  wire xdma_0_M_AXI_B_BVALID;
  wire [63:0]xdma_0_M_AXI_B_RDATA;
  wire [3:0]xdma_0_M_AXI_B_RID;
  wire xdma_0_M_AXI_B_RLAST;
  wire xdma_0_M_AXI_B_RREADY;
  wire [1:0]xdma_0_M_AXI_B_RRESP;
  wire xdma_0_M_AXI_B_RVALID;
  wire xdma_0_M_AXI_B_WLAST;
  wire xdma_0_M_AXI_B_WREADY;
  wire [7:0]xdma_0_M_AXI_B_WSTRB;
  wire xdma_0_axi_aclk;
  wire xdma_0_axi_aresetn;
  wire [31:0]xdma_0_m_axib_awaddr;
  wire xdma_0_m_axib_awvalid;
  wire [63:0]xdma_0_m_axib_wdata;
  wire xdma_0_m_axib_wvalid;
  wire [3:0]xdma_0_pcie_mgt_rxn;
  wire [3:0]xdma_0_pcie_mgt_rxp;
  wire [3:0]xdma_0_pcie_mgt_txn;
  wire [3:0]xdma_0_pcie_mgt_txp;
  wire [0:0]xlconstant_0_dout;
  wire [31:0]xlconstant_1_dout;

  assign ddr4_sdram_c1_act_n = ddr4_0_C0_DDR4_ACT_N;
  assign ddr4_sdram_c1_adr[16:0] = ddr4_0_C0_DDR4_ADR;
  assign ddr4_sdram_c1_ba[1:0] = ddr4_0_C0_DDR4_BA;
  assign ddr4_sdram_c1_bg = ddr4_0_C0_DDR4_BG;
  assign ddr4_sdram_c1_ck_c = ddr4_0_C0_DDR4_CK_C;
  assign ddr4_sdram_c1_ck_t = ddr4_0_C0_DDR4_CK_T;
  assign ddr4_sdram_c1_cke = ddr4_0_C0_DDR4_CKE;
  assign ddr4_sdram_c1_cs_n = ddr4_0_C0_DDR4_CS_N;
  assign ddr4_sdram_c1_odt = ddr4_0_C0_DDR4_ODT;
  assign ddr4_sdram_c1_reset_n = ddr4_0_C0_DDR4_RESET_N;
  assign default_250mhz_clk1_1_CLK_N = default_250mhz_clk1_clk_n;
  assign default_250mhz_clk1_1_CLK_P = default_250mhz_clk1_clk_p;
  assign pci_express_x4_txn[3:0] = xdma_0_pcie_mgt_txn;
  assign pci_express_x4_txp[3:0] = xdma_0_pcie_mgt_txp;
  assign pcie_perstn_1 = pcie_perstn;
  assign pcie_refclk_1_CLK_N = pcie_refclk_clk_n;
  assign pcie_refclk_1_CLK_P = pcie_refclk_clk_p;
  assign reset_1 = reset;
  assign user_si570_clock_1_CLK_N = user_si570_clock_clk_n;
  assign user_si570_clock_1_CLK_P = user_si570_clock_clk_p;
  assign xdma_0_pcie_mgt_rxn = pci_express_x4_rxn[3:0];
  assign xdma_0_pcie_mgt_rxp = pci_express_x4_rxp[3:0];
  design_1_AXI_Lite_slave_plug_0_0 AXI_Lite_slave_plug_0
       (.s00_axi_aclk(ddr4_0_c0_ddr4_ui_clk),
        .s00_axi_araddr(axi_smc_M01_AXI_ARADDR),
        .s00_axi_aresetn(rst_ddr4_0_300M_2_peripheral_aresetn),
        .s00_axi_arprot(axi_smc_M01_AXI_ARPROT),
        .s00_axi_arready(axi_smc_M01_AXI_ARREADY),
        .s00_axi_arvalid(axi_smc_M01_AXI_ARVALID),
        .s00_axi_awaddr(axi_smc_M01_AXI_AWADDR),
        .s00_axi_awprot(axi_smc_M01_AXI_AWPROT),
        .s00_axi_awready(axi_smc_M01_AXI_AWREADY),
        .s00_axi_awvalid(axi_smc_M01_AXI_AWVALID),
        .s00_axi_bready(axi_smc_M01_AXI_BREADY),
        .s00_axi_bresp(axi_smc_M01_AXI_BRESP),
        .s00_axi_bvalid(axi_smc_M01_AXI_BVALID),
        .s00_axi_rdata(axi_smc_M01_AXI_RDATA),
        .s00_axi_rready(axi_smc_M01_AXI_RREADY),
        .s00_axi_rresp(axi_smc_M01_AXI_RRESP),
        .s00_axi_rvalid(axi_smc_M01_AXI_RVALID),
        .s00_axi_wdata(axi_smc_M01_AXI_WDATA),
        .s00_axi_wready(axi_smc_M01_AXI_WREADY),
        .s00_axi_wstrb(axi_smc_M01_AXI_WSTRB),
        .s00_axi_wvalid(axi_smc_M01_AXI_WVALID));
  design_1_addrmonitor_0_0 addrmonitor_0
       (.aresetn(xdma_0_axi_aresetn),
        .clk(xdma_0_axi_aclk),
        .clkmemops(ddr4_0_addn_ui_clkout1),
        .count(addrmonitor_0_count),
        .m00_axi_awaddr(addrmonitor_0_m00_axi_awaddr),
        .m00_axi_awvalid(addrmonitor_0_m00_axi_awvalid),
        .m00_axi_wdata(addrmonitor_0_m00_axi_wdata),
        .m00_axi_wvalid(addrmonitor_0_m00_axi_wvalid),
        .offset(addrmonitor_0_offset),
        .physicaladdr(addrmonitor_0_physicaladdr),
        .pmem_obj_offset(addrmonitor_0_pmem_obj_offset),
        .pmem_obj_offset_valid(addrmonitor_0_pmem_obj_offset_valid),
        .readaddr(memops_scheduler_1_offset_read_addr),
        .readenable(memops_scheduler_1_offset_read_enable),
        .s00_axi_awaddr(xdma_0_m_axib_awaddr),
        .s00_axi_awvalid(xdma_0_m_axib_awvalid),
        .s00_axi_wdata(xdma_0_m_axib_wdata),
        .s00_axi_wvalid(xdma_0_m_axib_wvalid),
        .state(addrmonitor_0_state),
        .virtualaddr_out(addrmonitor_0_virtualaddr));
  design_1_axi_data_fifo_0_0 axi_data_fifo_0
       (.aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(axi_data_fifo_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_data_fifo_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_data_fifo_0_M_AXI_ARCACHE),
        .m_axi_arid(axi_data_fifo_0_M_AXI_ARID),
        .m_axi_arlen(axi_data_fifo_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_data_fifo_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_data_fifo_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_data_fifo_0_M_AXI_ARQOS),
        .m_axi_arready(axi_data_fifo_0_M_AXI_ARREADY),
        .m_axi_arregion(axi_data_fifo_0_M_AXI_ARREGION),
        .m_axi_arsize(axi_data_fifo_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_data_fifo_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_data_fifo_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_data_fifo_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_data_fifo_0_M_AXI_AWCACHE),
        .m_axi_awid(axi_data_fifo_0_M_AXI_AWID),
        .m_axi_awlen(axi_data_fifo_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_data_fifo_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_data_fifo_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_data_fifo_0_M_AXI_AWQOS),
        .m_axi_awready(axi_data_fifo_0_M_AXI_AWREADY),
        .m_axi_awregion(axi_data_fifo_0_M_AXI_AWREGION),
        .m_axi_awsize(axi_data_fifo_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_data_fifo_0_M_AXI_AWVALID),
        .m_axi_bid(axi_data_fifo_0_M_AXI_BID),
        .m_axi_bready(axi_data_fifo_0_M_AXI_BREADY),
        .m_axi_bresp(axi_data_fifo_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_data_fifo_0_M_AXI_BVALID),
        .m_axi_rdata(axi_data_fifo_0_M_AXI_RDATA),
        .m_axi_rid(axi_data_fifo_0_M_AXI_RID),
        .m_axi_rlast(axi_data_fifo_0_M_AXI_RLAST),
        .m_axi_rready(axi_data_fifo_0_M_AXI_RREADY),
        .m_axi_rresp(axi_data_fifo_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_data_fifo_0_M_AXI_RVALID),
        .m_axi_wdata(axi_data_fifo_0_M_AXI_WDATA),
        .m_axi_wlast(axi_data_fifo_0_M_AXI_WLAST),
        .m_axi_wready(axi_data_fifo_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_data_fifo_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_data_fifo_0_M_AXI_WVALID),
        .s_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .s_axi_arburst(axi_register_slice_0_M_AXI_ARBURST),
        .s_axi_arcache(axi_register_slice_0_M_AXI_ARCACHE),
        .s_axi_arid(axi_register_slice_0_M_AXI_ARID),
        .s_axi_arlen(axi_register_slice_0_M_AXI_ARLEN),
        .s_axi_arlock(axi_register_slice_0_M_AXI_ARLOCK),
        .s_axi_arprot(axi_register_slice_0_M_AXI_ARPROT),
        .s_axi_arqos(axi_register_slice_0_M_AXI_ARQOS),
        .s_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .s_axi_arregion(axi_register_slice_0_M_AXI_ARREGION),
        .s_axi_arsize(axi_register_slice_0_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .s_axi_awburst(axi_register_slice_0_M_AXI_AWBURST),
        .s_axi_awcache(axi_register_slice_0_M_AXI_AWCACHE),
        .s_axi_awid(axi_register_slice_0_M_AXI_AWID),
        .s_axi_awlen(axi_register_slice_0_M_AXI_AWLEN),
        .s_axi_awlock(axi_register_slice_0_M_AXI_AWLOCK),
        .s_axi_awprot(axi_register_slice_0_M_AXI_AWPROT),
        .s_axi_awqos(axi_register_slice_0_M_AXI_AWQOS),
        .s_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .s_axi_awregion(axi_register_slice_0_M_AXI_AWREGION),
        .s_axi_awsize(axi_register_slice_0_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .s_axi_bid(axi_register_slice_0_M_AXI_BID),
        .s_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .s_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .s_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .s_axi_rid(axi_register_slice_0_M_AXI_RID),
        .s_axi_rlast(axi_register_slice_0_M_AXI_RLAST),
        .s_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .s_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .s_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .s_axi_wlast(axi_register_slice_0_M_AXI_WLAST),
        .s_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_register_slice_0_M_AXI_WVALID));
  design_1_axi_data_fifo_0_1 axi_data_fifo_1
       (.aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(axi_data_fifo_1_M_AXI_ARADDR),
        .m_axi_arburst(axi_data_fifo_1_M_AXI_ARBURST),
        .m_axi_arcache(axi_data_fifo_1_M_AXI_ARCACHE),
        .m_axi_arid(axi_data_fifo_1_M_AXI_ARID),
        .m_axi_arlen(axi_data_fifo_1_M_AXI_ARLEN),
        .m_axi_arlock(axi_data_fifo_1_M_AXI_ARLOCK),
        .m_axi_arprot(axi_data_fifo_1_M_AXI_ARPROT),
        .m_axi_arqos(axi_data_fifo_1_M_AXI_ARQOS),
        .m_axi_arready(axi_data_fifo_1_M_AXI_ARREADY),
        .m_axi_arregion(axi_data_fifo_1_M_AXI_ARREGION),
        .m_axi_arsize(axi_data_fifo_1_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_data_fifo_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_data_fifo_1_M_AXI_AWADDR),
        .m_axi_awburst(axi_data_fifo_1_M_AXI_AWBURST),
        .m_axi_awcache(axi_data_fifo_1_M_AXI_AWCACHE),
        .m_axi_awid(axi_data_fifo_1_M_AXI_AWID),
        .m_axi_awlen(axi_data_fifo_1_M_AXI_AWLEN),
        .m_axi_awlock(axi_data_fifo_1_M_AXI_AWLOCK),
        .m_axi_awprot(axi_data_fifo_1_M_AXI_AWPROT),
        .m_axi_awqos(axi_data_fifo_1_M_AXI_AWQOS),
        .m_axi_awready(axi_data_fifo_1_M_AXI_AWREADY),
        .m_axi_awregion(axi_data_fifo_1_M_AXI_AWREGION),
        .m_axi_awsize(axi_data_fifo_1_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_data_fifo_1_M_AXI_AWVALID),
        .m_axi_bid(axi_data_fifo_1_M_AXI_BID),
        .m_axi_bready(axi_data_fifo_1_M_AXI_BREADY),
        .m_axi_bresp(axi_data_fifo_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_data_fifo_1_M_AXI_BVALID),
        .m_axi_rdata(axi_data_fifo_1_M_AXI_RDATA),
        .m_axi_rid(axi_data_fifo_1_M_AXI_RID),
        .m_axi_rlast(axi_data_fifo_1_M_AXI_RLAST),
        .m_axi_rready(axi_data_fifo_1_M_AXI_RREADY),
        .m_axi_rresp(axi_data_fifo_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_data_fifo_1_M_AXI_RVALID),
        .m_axi_wdata(axi_data_fifo_1_M_AXI_WDATA),
        .m_axi_wlast(axi_data_fifo_1_M_AXI_WLAST),
        .m_axi_wready(axi_data_fifo_1_M_AXI_WREADY),
        .m_axi_wstrb(axi_data_fifo_1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_data_fifo_1_M_AXI_WVALID),
        .s_axi_araddr(axi_data_fifo_0_M_AXI_ARADDR),
        .s_axi_arburst(axi_data_fifo_0_M_AXI_ARBURST),
        .s_axi_arcache(axi_data_fifo_0_M_AXI_ARCACHE),
        .s_axi_arid(axi_data_fifo_0_M_AXI_ARID),
        .s_axi_arlen(axi_data_fifo_0_M_AXI_ARLEN),
        .s_axi_arlock(axi_data_fifo_0_M_AXI_ARLOCK),
        .s_axi_arprot(axi_data_fifo_0_M_AXI_ARPROT),
        .s_axi_arqos(axi_data_fifo_0_M_AXI_ARQOS),
        .s_axi_arready(axi_data_fifo_0_M_AXI_ARREADY),
        .s_axi_arregion(axi_data_fifo_0_M_AXI_ARREGION),
        .s_axi_arsize(axi_data_fifo_0_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_data_fifo_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_data_fifo_0_M_AXI_AWADDR),
        .s_axi_awburst(axi_data_fifo_0_M_AXI_AWBURST),
        .s_axi_awcache(axi_data_fifo_0_M_AXI_AWCACHE),
        .s_axi_awid(axi_data_fifo_0_M_AXI_AWID),
        .s_axi_awlen(axi_data_fifo_0_M_AXI_AWLEN),
        .s_axi_awlock(axi_data_fifo_0_M_AXI_AWLOCK),
        .s_axi_awprot(axi_data_fifo_0_M_AXI_AWPROT),
        .s_axi_awqos(axi_data_fifo_0_M_AXI_AWQOS),
        .s_axi_awready(axi_data_fifo_0_M_AXI_AWREADY),
        .s_axi_awregion(axi_data_fifo_0_M_AXI_AWREGION),
        .s_axi_awsize(axi_data_fifo_0_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_data_fifo_0_M_AXI_AWVALID),
        .s_axi_bid(axi_data_fifo_0_M_AXI_BID),
        .s_axi_bready(axi_data_fifo_0_M_AXI_BREADY),
        .s_axi_bresp(axi_data_fifo_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_data_fifo_0_M_AXI_BVALID),
        .s_axi_rdata(axi_data_fifo_0_M_AXI_RDATA),
        .s_axi_rid(axi_data_fifo_0_M_AXI_RID),
        .s_axi_rlast(axi_data_fifo_0_M_AXI_RLAST),
        .s_axi_rready(axi_data_fifo_0_M_AXI_RREADY),
        .s_axi_rresp(axi_data_fifo_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_data_fifo_0_M_AXI_RVALID),
        .s_axi_wdata(axi_data_fifo_0_M_AXI_WDATA),
        .s_axi_wlast(axi_data_fifo_0_M_AXI_WLAST),
        .s_axi_wready(axi_data_fifo_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_data_fifo_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_data_fifo_0_M_AXI_WVALID));
  design_1_axi_data_fifo_5_4 axi_data_fifo_10
       (.aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(axi_data_fifo_10_M_AXI_ARADDR),
        .m_axi_arburst(axi_data_fifo_10_M_AXI_ARBURST),
        .m_axi_arcache(axi_data_fifo_10_M_AXI_ARCACHE),
        .m_axi_arid(axi_data_fifo_10_M_AXI_ARID),
        .m_axi_arlen(axi_data_fifo_10_M_AXI_ARLEN),
        .m_axi_arlock(axi_data_fifo_10_M_AXI_ARLOCK),
        .m_axi_arprot(axi_data_fifo_10_M_AXI_ARPROT),
        .m_axi_arqos(axi_data_fifo_10_M_AXI_ARQOS),
        .m_axi_arready(axi_data_fifo_10_M_AXI_ARREADY),
        .m_axi_arregion(axi_data_fifo_10_M_AXI_ARREGION),
        .m_axi_arsize(axi_data_fifo_10_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_data_fifo_10_M_AXI_ARVALID),
        .m_axi_awaddr(axi_data_fifo_10_M_AXI_AWADDR),
        .m_axi_awburst(axi_data_fifo_10_M_AXI_AWBURST),
        .m_axi_awcache(axi_data_fifo_10_M_AXI_AWCACHE),
        .m_axi_awid(axi_data_fifo_10_M_AXI_AWID),
        .m_axi_awlen(axi_data_fifo_10_M_AXI_AWLEN),
        .m_axi_awlock(axi_data_fifo_10_M_AXI_AWLOCK),
        .m_axi_awprot(axi_data_fifo_10_M_AXI_AWPROT),
        .m_axi_awqos(axi_data_fifo_10_M_AXI_AWQOS),
        .m_axi_awready(axi_data_fifo_10_M_AXI_AWREADY),
        .m_axi_awregion(axi_data_fifo_10_M_AXI_AWREGION),
        .m_axi_awsize(axi_data_fifo_10_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_data_fifo_10_M_AXI_AWVALID),
        .m_axi_bid(axi_data_fifo_10_M_AXI_BID),
        .m_axi_bready(axi_data_fifo_10_M_AXI_BREADY),
        .m_axi_bresp(axi_data_fifo_10_M_AXI_BRESP),
        .m_axi_bvalid(axi_data_fifo_10_M_AXI_BVALID),
        .m_axi_rdata(axi_data_fifo_10_M_AXI_RDATA),
        .m_axi_rid(axi_data_fifo_10_M_AXI_RID),
        .m_axi_rlast(axi_data_fifo_10_M_AXI_RLAST),
        .m_axi_rready(axi_data_fifo_10_M_AXI_RREADY),
        .m_axi_rresp(axi_data_fifo_10_M_AXI_RRESP),
        .m_axi_rvalid(axi_data_fifo_10_M_AXI_RVALID),
        .m_axi_wdata(axi_data_fifo_10_M_AXI_WDATA),
        .m_axi_wlast(axi_data_fifo_10_M_AXI_WLAST),
        .m_axi_wready(axi_data_fifo_10_M_AXI_WREADY),
        .m_axi_wstrb(axi_data_fifo_10_M_AXI_WSTRB),
        .m_axi_wvalid(axi_data_fifo_10_M_AXI_WVALID),
        .s_axi_araddr(axi_data_fifo_8_M_AXI_ARADDR),
        .s_axi_arburst(axi_data_fifo_8_M_AXI_ARBURST),
        .s_axi_arcache(axi_data_fifo_8_M_AXI_ARCACHE),
        .s_axi_arid(axi_data_fifo_8_M_AXI_ARID),
        .s_axi_arlen(axi_data_fifo_8_M_AXI_ARLEN),
        .s_axi_arlock(axi_data_fifo_8_M_AXI_ARLOCK),
        .s_axi_arprot(axi_data_fifo_8_M_AXI_ARPROT),
        .s_axi_arqos(axi_data_fifo_8_M_AXI_ARQOS),
        .s_axi_arready(axi_data_fifo_8_M_AXI_ARREADY),
        .s_axi_arregion(axi_data_fifo_8_M_AXI_ARREGION),
        .s_axi_arsize(axi_data_fifo_8_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_data_fifo_8_M_AXI_ARVALID),
        .s_axi_awaddr(axi_data_fifo_8_M_AXI_AWADDR),
        .s_axi_awburst(axi_data_fifo_8_M_AXI_AWBURST),
        .s_axi_awcache(axi_data_fifo_8_M_AXI_AWCACHE),
        .s_axi_awid(axi_data_fifo_8_M_AXI_AWID),
        .s_axi_awlen(axi_data_fifo_8_M_AXI_AWLEN),
        .s_axi_awlock(axi_data_fifo_8_M_AXI_AWLOCK),
        .s_axi_awprot(axi_data_fifo_8_M_AXI_AWPROT),
        .s_axi_awqos(axi_data_fifo_8_M_AXI_AWQOS),
        .s_axi_awready(axi_data_fifo_8_M_AXI_AWREADY),
        .s_axi_awregion(axi_data_fifo_8_M_AXI_AWREGION),
        .s_axi_awsize(axi_data_fifo_8_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_data_fifo_8_M_AXI_AWVALID),
        .s_axi_bid(axi_data_fifo_8_M_AXI_BID),
        .s_axi_bready(axi_data_fifo_8_M_AXI_BREADY),
        .s_axi_bresp(axi_data_fifo_8_M_AXI_BRESP),
        .s_axi_bvalid(axi_data_fifo_8_M_AXI_BVALID),
        .s_axi_rdata(axi_data_fifo_8_M_AXI_RDATA),
        .s_axi_rid(axi_data_fifo_8_M_AXI_RID),
        .s_axi_rlast(axi_data_fifo_8_M_AXI_RLAST),
        .s_axi_rready(axi_data_fifo_8_M_AXI_RREADY),
        .s_axi_rresp(axi_data_fifo_8_M_AXI_RRESP),
        .s_axi_rvalid(axi_data_fifo_8_M_AXI_RVALID),
        .s_axi_wdata(axi_data_fifo_8_M_AXI_WDATA),
        .s_axi_wlast(axi_data_fifo_8_M_AXI_WLAST),
        .s_axi_wready(axi_data_fifo_8_M_AXI_WREADY),
        .s_axi_wstrb(axi_data_fifo_8_M_AXI_WSTRB),
        .s_axi_wvalid(axi_data_fifo_8_M_AXI_WVALID));
  design_1_axi_data_fifo_1_0 axi_data_fifo_2
       (.aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(axi_data_fifo_2_M_AXI_ARADDR),
        .m_axi_arburst(axi_data_fifo_2_M_AXI_ARBURST),
        .m_axi_arcache(axi_data_fifo_2_M_AXI_ARCACHE),
        .m_axi_arid(axi_data_fifo_2_M_AXI_ARID),
        .m_axi_arlen(axi_data_fifo_2_M_AXI_ARLEN),
        .m_axi_arlock(axi_data_fifo_2_M_AXI_ARLOCK),
        .m_axi_arprot(axi_data_fifo_2_M_AXI_ARPROT),
        .m_axi_arqos(axi_data_fifo_2_M_AXI_ARQOS),
        .m_axi_arready(axi_data_fifo_2_M_AXI_ARREADY),
        .m_axi_arregion(axi_data_fifo_2_M_AXI_ARREGION),
        .m_axi_arsize(axi_data_fifo_2_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_data_fifo_2_M_AXI_ARVALID),
        .m_axi_awaddr(axi_data_fifo_2_M_AXI_AWADDR),
        .m_axi_awburst(axi_data_fifo_2_M_AXI_AWBURST),
        .m_axi_awcache(axi_data_fifo_2_M_AXI_AWCACHE),
        .m_axi_awid(axi_data_fifo_2_M_AXI_AWID),
        .m_axi_awlen(axi_data_fifo_2_M_AXI_AWLEN),
        .m_axi_awlock(axi_data_fifo_2_M_AXI_AWLOCK),
        .m_axi_awprot(axi_data_fifo_2_M_AXI_AWPROT),
        .m_axi_awqos(axi_data_fifo_2_M_AXI_AWQOS),
        .m_axi_awready(axi_data_fifo_2_M_AXI_AWREADY),
        .m_axi_awregion(axi_data_fifo_2_M_AXI_AWREGION),
        .m_axi_awsize(axi_data_fifo_2_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_data_fifo_2_M_AXI_AWVALID),
        .m_axi_bid(axi_data_fifo_2_M_AXI_BID),
        .m_axi_bready(axi_data_fifo_2_M_AXI_BREADY),
        .m_axi_bresp(axi_data_fifo_2_M_AXI_BRESP),
        .m_axi_bvalid(axi_data_fifo_2_M_AXI_BVALID),
        .m_axi_rdata(axi_data_fifo_2_M_AXI_RDATA),
        .m_axi_rid(axi_data_fifo_2_M_AXI_RID),
        .m_axi_rlast(axi_data_fifo_2_M_AXI_RLAST),
        .m_axi_rready(axi_data_fifo_2_M_AXI_RREADY),
        .m_axi_rresp(axi_data_fifo_2_M_AXI_RRESP),
        .m_axi_rvalid(axi_data_fifo_2_M_AXI_RVALID),
        .m_axi_wdata(axi_data_fifo_2_M_AXI_WDATA),
        .m_axi_wlast(axi_data_fifo_2_M_AXI_WLAST),
        .m_axi_wready(axi_data_fifo_2_M_AXI_WREADY),
        .m_axi_wstrb(axi_data_fifo_2_M_AXI_WSTRB),
        .m_axi_wvalid(axi_data_fifo_2_M_AXI_WVALID),
        .s_axi_araddr(axi_data_fifo_1_M_AXI_ARADDR),
        .s_axi_arburst(axi_data_fifo_1_M_AXI_ARBURST),
        .s_axi_arcache(axi_data_fifo_1_M_AXI_ARCACHE),
        .s_axi_arid(axi_data_fifo_1_M_AXI_ARID),
        .s_axi_arlen(axi_data_fifo_1_M_AXI_ARLEN),
        .s_axi_arlock(axi_data_fifo_1_M_AXI_ARLOCK),
        .s_axi_arprot(axi_data_fifo_1_M_AXI_ARPROT),
        .s_axi_arqos(axi_data_fifo_1_M_AXI_ARQOS),
        .s_axi_arready(axi_data_fifo_1_M_AXI_ARREADY),
        .s_axi_arregion(axi_data_fifo_1_M_AXI_ARREGION),
        .s_axi_arsize(axi_data_fifo_1_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_data_fifo_1_M_AXI_ARVALID),
        .s_axi_awaddr(axi_data_fifo_1_M_AXI_AWADDR),
        .s_axi_awburst(axi_data_fifo_1_M_AXI_AWBURST),
        .s_axi_awcache(axi_data_fifo_1_M_AXI_AWCACHE),
        .s_axi_awid(axi_data_fifo_1_M_AXI_AWID),
        .s_axi_awlen(axi_data_fifo_1_M_AXI_AWLEN),
        .s_axi_awlock(axi_data_fifo_1_M_AXI_AWLOCK),
        .s_axi_awprot(axi_data_fifo_1_M_AXI_AWPROT),
        .s_axi_awqos(axi_data_fifo_1_M_AXI_AWQOS),
        .s_axi_awready(axi_data_fifo_1_M_AXI_AWREADY),
        .s_axi_awregion(axi_data_fifo_1_M_AXI_AWREGION),
        .s_axi_awsize(axi_data_fifo_1_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_data_fifo_1_M_AXI_AWVALID),
        .s_axi_bid(axi_data_fifo_1_M_AXI_BID),
        .s_axi_bready(axi_data_fifo_1_M_AXI_BREADY),
        .s_axi_bresp(axi_data_fifo_1_M_AXI_BRESP),
        .s_axi_bvalid(axi_data_fifo_1_M_AXI_BVALID),
        .s_axi_rdata(axi_data_fifo_1_M_AXI_RDATA),
        .s_axi_rid(axi_data_fifo_1_M_AXI_RID),
        .s_axi_rlast(axi_data_fifo_1_M_AXI_RLAST),
        .s_axi_rready(axi_data_fifo_1_M_AXI_RREADY),
        .s_axi_rresp(axi_data_fifo_1_M_AXI_RRESP),
        .s_axi_rvalid(axi_data_fifo_1_M_AXI_RVALID),
        .s_axi_wdata(axi_data_fifo_1_M_AXI_WDATA),
        .s_axi_wlast(axi_data_fifo_1_M_AXI_WLAST),
        .s_axi_wready(axi_data_fifo_1_M_AXI_WREADY),
        .s_axi_wstrb(axi_data_fifo_1_M_AXI_WSTRB),
        .s_axi_wvalid(axi_data_fifo_1_M_AXI_WVALID));
  design_1_axi_data_fifo_2_0 axi_data_fifo_3
       (.aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(axi_data_fifo_3_M_AXI_ARADDR),
        .m_axi_arburst(axi_data_fifo_3_M_AXI_ARBURST),
        .m_axi_arcache(axi_data_fifo_3_M_AXI_ARCACHE),
        .m_axi_arid(axi_data_fifo_3_M_AXI_ARID),
        .m_axi_arlen(axi_data_fifo_3_M_AXI_ARLEN),
        .m_axi_arlock(axi_data_fifo_3_M_AXI_ARLOCK),
        .m_axi_arprot(axi_data_fifo_3_M_AXI_ARPROT),
        .m_axi_arqos(axi_data_fifo_3_M_AXI_ARQOS),
        .m_axi_arready(axi_data_fifo_3_M_AXI_ARREADY),
        .m_axi_arregion(axi_data_fifo_3_M_AXI_ARREGION),
        .m_axi_arsize(axi_data_fifo_3_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_data_fifo_3_M_AXI_ARVALID),
        .m_axi_awaddr(axi_data_fifo_3_M_AXI_AWADDR),
        .m_axi_awburst(axi_data_fifo_3_M_AXI_AWBURST),
        .m_axi_awcache(axi_data_fifo_3_M_AXI_AWCACHE),
        .m_axi_awid(axi_data_fifo_3_M_AXI_AWID),
        .m_axi_awlen(axi_data_fifo_3_M_AXI_AWLEN),
        .m_axi_awlock(axi_data_fifo_3_M_AXI_AWLOCK),
        .m_axi_awprot(axi_data_fifo_3_M_AXI_AWPROT),
        .m_axi_awqos(axi_data_fifo_3_M_AXI_AWQOS),
        .m_axi_awready(axi_data_fifo_3_M_AXI_AWREADY),
        .m_axi_awregion(axi_data_fifo_3_M_AXI_AWREGION),
        .m_axi_awsize(axi_data_fifo_3_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_data_fifo_3_M_AXI_AWVALID),
        .m_axi_bid(axi_data_fifo_3_M_AXI_BID),
        .m_axi_bready(axi_data_fifo_3_M_AXI_BREADY),
        .m_axi_bresp(axi_data_fifo_3_M_AXI_BRESP),
        .m_axi_bvalid(axi_data_fifo_3_M_AXI_BVALID),
        .m_axi_rdata(axi_data_fifo_3_M_AXI_RDATA),
        .m_axi_rid(axi_data_fifo_3_M_AXI_RID),
        .m_axi_rlast(axi_data_fifo_3_M_AXI_RLAST),
        .m_axi_rready(axi_data_fifo_3_M_AXI_RREADY),
        .m_axi_rresp(axi_data_fifo_3_M_AXI_RRESP),
        .m_axi_rvalid(axi_data_fifo_3_M_AXI_RVALID),
        .m_axi_wdata(axi_data_fifo_3_M_AXI_WDATA),
        .m_axi_wlast(axi_data_fifo_3_M_AXI_WLAST),
        .m_axi_wready(axi_data_fifo_3_M_AXI_WREADY),
        .m_axi_wstrb(axi_data_fifo_3_M_AXI_WSTRB),
        .m_axi_wvalid(axi_data_fifo_3_M_AXI_WVALID),
        .s_axi_araddr(axi_data_fifo_2_M_AXI_ARADDR),
        .s_axi_arburst(axi_data_fifo_2_M_AXI_ARBURST),
        .s_axi_arcache(axi_data_fifo_2_M_AXI_ARCACHE),
        .s_axi_arid(axi_data_fifo_2_M_AXI_ARID),
        .s_axi_arlen(axi_data_fifo_2_M_AXI_ARLEN),
        .s_axi_arlock(axi_data_fifo_2_M_AXI_ARLOCK),
        .s_axi_arprot(axi_data_fifo_2_M_AXI_ARPROT),
        .s_axi_arqos(axi_data_fifo_2_M_AXI_ARQOS),
        .s_axi_arready(axi_data_fifo_2_M_AXI_ARREADY),
        .s_axi_arregion(axi_data_fifo_2_M_AXI_ARREGION),
        .s_axi_arsize(axi_data_fifo_2_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_data_fifo_2_M_AXI_ARVALID),
        .s_axi_awaddr(axi_data_fifo_2_M_AXI_AWADDR),
        .s_axi_awburst(axi_data_fifo_2_M_AXI_AWBURST),
        .s_axi_awcache(axi_data_fifo_2_M_AXI_AWCACHE),
        .s_axi_awid(axi_data_fifo_2_M_AXI_AWID),
        .s_axi_awlen(axi_data_fifo_2_M_AXI_AWLEN),
        .s_axi_awlock(axi_data_fifo_2_M_AXI_AWLOCK),
        .s_axi_awprot(axi_data_fifo_2_M_AXI_AWPROT),
        .s_axi_awqos(axi_data_fifo_2_M_AXI_AWQOS),
        .s_axi_awready(axi_data_fifo_2_M_AXI_AWREADY),
        .s_axi_awregion(axi_data_fifo_2_M_AXI_AWREGION),
        .s_axi_awsize(axi_data_fifo_2_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_data_fifo_2_M_AXI_AWVALID),
        .s_axi_bid(axi_data_fifo_2_M_AXI_BID),
        .s_axi_bready(axi_data_fifo_2_M_AXI_BREADY),
        .s_axi_bresp(axi_data_fifo_2_M_AXI_BRESP),
        .s_axi_bvalid(axi_data_fifo_2_M_AXI_BVALID),
        .s_axi_rdata(axi_data_fifo_2_M_AXI_RDATA),
        .s_axi_rid(axi_data_fifo_2_M_AXI_RID),
        .s_axi_rlast(axi_data_fifo_2_M_AXI_RLAST),
        .s_axi_rready(axi_data_fifo_2_M_AXI_RREADY),
        .s_axi_rresp(axi_data_fifo_2_M_AXI_RRESP),
        .s_axi_rvalid(axi_data_fifo_2_M_AXI_RVALID),
        .s_axi_wdata(axi_data_fifo_2_M_AXI_WDATA),
        .s_axi_wlast(axi_data_fifo_2_M_AXI_WLAST),
        .s_axi_wready(axi_data_fifo_2_M_AXI_WREADY),
        .s_axi_wstrb(axi_data_fifo_2_M_AXI_WSTRB),
        .s_axi_wvalid(axi_data_fifo_2_M_AXI_WVALID));
  design_1_axi_data_fifo_3_0 axi_data_fifo_4
       (.aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(axi_data_fifo_4_M_AXI_ARADDR),
        .m_axi_arburst(axi_data_fifo_4_M_AXI_ARBURST),
        .m_axi_arcache(axi_data_fifo_4_M_AXI_ARCACHE),
        .m_axi_arid(axi_data_fifo_4_M_AXI_ARID),
        .m_axi_arlen(axi_data_fifo_4_M_AXI_ARLEN),
        .m_axi_arlock(axi_data_fifo_4_M_AXI_ARLOCK),
        .m_axi_arprot(axi_data_fifo_4_M_AXI_ARPROT),
        .m_axi_arqos(axi_data_fifo_4_M_AXI_ARQOS),
        .m_axi_arready(axi_data_fifo_4_M_AXI_ARREADY),
        .m_axi_arregion(axi_data_fifo_4_M_AXI_ARREGION),
        .m_axi_arsize(axi_data_fifo_4_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_data_fifo_4_M_AXI_ARVALID),
        .m_axi_awaddr(axi_data_fifo_4_M_AXI_AWADDR),
        .m_axi_awburst(axi_data_fifo_4_M_AXI_AWBURST),
        .m_axi_awcache(axi_data_fifo_4_M_AXI_AWCACHE),
        .m_axi_awid(axi_data_fifo_4_M_AXI_AWID),
        .m_axi_awlen(axi_data_fifo_4_M_AXI_AWLEN),
        .m_axi_awlock(axi_data_fifo_4_M_AXI_AWLOCK),
        .m_axi_awprot(axi_data_fifo_4_M_AXI_AWPROT),
        .m_axi_awqos(axi_data_fifo_4_M_AXI_AWQOS),
        .m_axi_awready(axi_data_fifo_4_M_AXI_AWREADY),
        .m_axi_awregion(axi_data_fifo_4_M_AXI_AWREGION),
        .m_axi_awsize(axi_data_fifo_4_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_data_fifo_4_M_AXI_AWVALID),
        .m_axi_bid(axi_data_fifo_4_M_AXI_BID),
        .m_axi_bready(axi_data_fifo_4_M_AXI_BREADY),
        .m_axi_bresp(axi_data_fifo_4_M_AXI_BRESP),
        .m_axi_bvalid(axi_data_fifo_4_M_AXI_BVALID),
        .m_axi_rdata(axi_data_fifo_4_M_AXI_RDATA),
        .m_axi_rid(axi_data_fifo_4_M_AXI_RID),
        .m_axi_rlast(axi_data_fifo_4_M_AXI_RLAST),
        .m_axi_rready(axi_data_fifo_4_M_AXI_RREADY),
        .m_axi_rresp(axi_data_fifo_4_M_AXI_RRESP),
        .m_axi_rvalid(axi_data_fifo_4_M_AXI_RVALID),
        .m_axi_wdata(axi_data_fifo_4_M_AXI_WDATA),
        .m_axi_wlast(axi_data_fifo_4_M_AXI_WLAST),
        .m_axi_wready(axi_data_fifo_4_M_AXI_WREADY),
        .m_axi_wstrb(axi_data_fifo_4_M_AXI_WSTRB),
        .m_axi_wvalid(axi_data_fifo_4_M_AXI_WVALID),
        .s_axi_araddr(axi_data_fifo_3_M_AXI_ARADDR),
        .s_axi_arburst(axi_data_fifo_3_M_AXI_ARBURST),
        .s_axi_arcache(axi_data_fifo_3_M_AXI_ARCACHE),
        .s_axi_arid(axi_data_fifo_3_M_AXI_ARID),
        .s_axi_arlen(axi_data_fifo_3_M_AXI_ARLEN),
        .s_axi_arlock(axi_data_fifo_3_M_AXI_ARLOCK),
        .s_axi_arprot(axi_data_fifo_3_M_AXI_ARPROT),
        .s_axi_arqos(axi_data_fifo_3_M_AXI_ARQOS),
        .s_axi_arready(axi_data_fifo_3_M_AXI_ARREADY),
        .s_axi_arregion(axi_data_fifo_3_M_AXI_ARREGION),
        .s_axi_arsize(axi_data_fifo_3_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_data_fifo_3_M_AXI_ARVALID),
        .s_axi_awaddr(axi_data_fifo_3_M_AXI_AWADDR),
        .s_axi_awburst(axi_data_fifo_3_M_AXI_AWBURST),
        .s_axi_awcache(axi_data_fifo_3_M_AXI_AWCACHE),
        .s_axi_awid(axi_data_fifo_3_M_AXI_AWID),
        .s_axi_awlen(axi_data_fifo_3_M_AXI_AWLEN),
        .s_axi_awlock(axi_data_fifo_3_M_AXI_AWLOCK),
        .s_axi_awprot(axi_data_fifo_3_M_AXI_AWPROT),
        .s_axi_awqos(axi_data_fifo_3_M_AXI_AWQOS),
        .s_axi_awready(axi_data_fifo_3_M_AXI_AWREADY),
        .s_axi_awregion(axi_data_fifo_3_M_AXI_AWREGION),
        .s_axi_awsize(axi_data_fifo_3_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_data_fifo_3_M_AXI_AWVALID),
        .s_axi_bid(axi_data_fifo_3_M_AXI_BID),
        .s_axi_bready(axi_data_fifo_3_M_AXI_BREADY),
        .s_axi_bresp(axi_data_fifo_3_M_AXI_BRESP),
        .s_axi_bvalid(axi_data_fifo_3_M_AXI_BVALID),
        .s_axi_rdata(axi_data_fifo_3_M_AXI_RDATA),
        .s_axi_rid(axi_data_fifo_3_M_AXI_RID),
        .s_axi_rlast(axi_data_fifo_3_M_AXI_RLAST),
        .s_axi_rready(axi_data_fifo_3_M_AXI_RREADY),
        .s_axi_rresp(axi_data_fifo_3_M_AXI_RRESP),
        .s_axi_rvalid(axi_data_fifo_3_M_AXI_RVALID),
        .s_axi_wdata(axi_data_fifo_3_M_AXI_WDATA),
        .s_axi_wlast(axi_data_fifo_3_M_AXI_WLAST),
        .s_axi_wready(axi_data_fifo_3_M_AXI_WREADY),
        .s_axi_wstrb(axi_data_fifo_3_M_AXI_WSTRB),
        .s_axi_wvalid(axi_data_fifo_3_M_AXI_WVALID));
  design_1_axi_data_fifo_4_0 axi_data_fifo_5
       (.aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(axi_data_fifo_5_M_AXI_ARADDR),
        .m_axi_arburst(axi_data_fifo_5_M_AXI_ARBURST),
        .m_axi_arcache(axi_data_fifo_5_M_AXI_ARCACHE),
        .m_axi_arid(axi_data_fifo_5_M_AXI_ARID),
        .m_axi_arlen(axi_data_fifo_5_M_AXI_ARLEN),
        .m_axi_arlock(axi_data_fifo_5_M_AXI_ARLOCK),
        .m_axi_arprot(axi_data_fifo_5_M_AXI_ARPROT),
        .m_axi_arqos(axi_data_fifo_5_M_AXI_ARQOS),
        .m_axi_arready(axi_data_fifo_5_M_AXI_ARREADY),
        .m_axi_arregion(axi_data_fifo_5_M_AXI_ARREGION),
        .m_axi_arsize(axi_data_fifo_5_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_data_fifo_5_M_AXI_ARVALID),
        .m_axi_awaddr(axi_data_fifo_5_M_AXI_AWADDR),
        .m_axi_awburst(axi_data_fifo_5_M_AXI_AWBURST),
        .m_axi_awcache(axi_data_fifo_5_M_AXI_AWCACHE),
        .m_axi_awid(axi_data_fifo_5_M_AXI_AWID),
        .m_axi_awlen(axi_data_fifo_5_M_AXI_AWLEN),
        .m_axi_awlock(axi_data_fifo_5_M_AXI_AWLOCK),
        .m_axi_awprot(axi_data_fifo_5_M_AXI_AWPROT),
        .m_axi_awqos(axi_data_fifo_5_M_AXI_AWQOS),
        .m_axi_awready(axi_data_fifo_5_M_AXI_AWREADY),
        .m_axi_awregion(axi_data_fifo_5_M_AXI_AWREGION),
        .m_axi_awsize(axi_data_fifo_5_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_data_fifo_5_M_AXI_AWVALID),
        .m_axi_bid(axi_data_fifo_5_M_AXI_BID),
        .m_axi_bready(axi_data_fifo_5_M_AXI_BREADY),
        .m_axi_bresp(axi_data_fifo_5_M_AXI_BRESP),
        .m_axi_bvalid(axi_data_fifo_5_M_AXI_BVALID),
        .m_axi_rdata(axi_data_fifo_5_M_AXI_RDATA),
        .m_axi_rid(axi_data_fifo_5_M_AXI_RID),
        .m_axi_rlast(axi_data_fifo_5_M_AXI_RLAST),
        .m_axi_rready(axi_data_fifo_5_M_AXI_RREADY),
        .m_axi_rresp(axi_data_fifo_5_M_AXI_RRESP),
        .m_axi_rvalid(axi_data_fifo_5_M_AXI_RVALID),
        .m_axi_wdata(axi_data_fifo_5_M_AXI_WDATA),
        .m_axi_wlast(axi_data_fifo_5_M_AXI_WLAST),
        .m_axi_wready(axi_data_fifo_5_M_AXI_WREADY),
        .m_axi_wstrb(axi_data_fifo_5_M_AXI_WSTRB),
        .m_axi_wvalid(axi_data_fifo_5_M_AXI_WVALID),
        .s_axi_araddr(axi_data_fifo_4_M_AXI_ARADDR),
        .s_axi_arburst(axi_data_fifo_4_M_AXI_ARBURST),
        .s_axi_arcache(axi_data_fifo_4_M_AXI_ARCACHE),
        .s_axi_arid(axi_data_fifo_4_M_AXI_ARID),
        .s_axi_arlen(axi_data_fifo_4_M_AXI_ARLEN),
        .s_axi_arlock(axi_data_fifo_4_M_AXI_ARLOCK),
        .s_axi_arprot(axi_data_fifo_4_M_AXI_ARPROT),
        .s_axi_arqos(axi_data_fifo_4_M_AXI_ARQOS),
        .s_axi_arready(axi_data_fifo_4_M_AXI_ARREADY),
        .s_axi_arregion(axi_data_fifo_4_M_AXI_ARREGION),
        .s_axi_arsize(axi_data_fifo_4_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_data_fifo_4_M_AXI_ARVALID),
        .s_axi_awaddr(axi_data_fifo_4_M_AXI_AWADDR),
        .s_axi_awburst(axi_data_fifo_4_M_AXI_AWBURST),
        .s_axi_awcache(axi_data_fifo_4_M_AXI_AWCACHE),
        .s_axi_awid(axi_data_fifo_4_M_AXI_AWID),
        .s_axi_awlen(axi_data_fifo_4_M_AXI_AWLEN),
        .s_axi_awlock(axi_data_fifo_4_M_AXI_AWLOCK),
        .s_axi_awprot(axi_data_fifo_4_M_AXI_AWPROT),
        .s_axi_awqos(axi_data_fifo_4_M_AXI_AWQOS),
        .s_axi_awready(axi_data_fifo_4_M_AXI_AWREADY),
        .s_axi_awregion(axi_data_fifo_4_M_AXI_AWREGION),
        .s_axi_awsize(axi_data_fifo_4_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_data_fifo_4_M_AXI_AWVALID),
        .s_axi_bid(axi_data_fifo_4_M_AXI_BID),
        .s_axi_bready(axi_data_fifo_4_M_AXI_BREADY),
        .s_axi_bresp(axi_data_fifo_4_M_AXI_BRESP),
        .s_axi_bvalid(axi_data_fifo_4_M_AXI_BVALID),
        .s_axi_rdata(axi_data_fifo_4_M_AXI_RDATA),
        .s_axi_rid(axi_data_fifo_4_M_AXI_RID),
        .s_axi_rlast(axi_data_fifo_4_M_AXI_RLAST),
        .s_axi_rready(axi_data_fifo_4_M_AXI_RREADY),
        .s_axi_rresp(axi_data_fifo_4_M_AXI_RRESP),
        .s_axi_rvalid(axi_data_fifo_4_M_AXI_RVALID),
        .s_axi_wdata(axi_data_fifo_4_M_AXI_WDATA),
        .s_axi_wlast(axi_data_fifo_4_M_AXI_WLAST),
        .s_axi_wready(axi_data_fifo_4_M_AXI_WREADY),
        .s_axi_wstrb(axi_data_fifo_4_M_AXI_WSTRB),
        .s_axi_wvalid(axi_data_fifo_4_M_AXI_WVALID));
  design_1_axi_data_fifo_5_0 axi_data_fifo_6
       (.aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(axi_data_fifo_6_M_AXI_ARADDR),
        .m_axi_arburst(axi_data_fifo_6_M_AXI_ARBURST),
        .m_axi_arcache(axi_data_fifo_6_M_AXI_ARCACHE),
        .m_axi_arid(axi_data_fifo_6_M_AXI_ARID),
        .m_axi_arlen(axi_data_fifo_6_M_AXI_ARLEN),
        .m_axi_arlock(axi_data_fifo_6_M_AXI_ARLOCK),
        .m_axi_arprot(axi_data_fifo_6_M_AXI_ARPROT),
        .m_axi_arqos(axi_data_fifo_6_M_AXI_ARQOS),
        .m_axi_arready(axi_data_fifo_6_M_AXI_ARREADY),
        .m_axi_arregion(axi_data_fifo_6_M_AXI_ARREGION),
        .m_axi_arsize(axi_data_fifo_6_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_data_fifo_6_M_AXI_ARVALID),
        .m_axi_awaddr(axi_data_fifo_6_M_AXI_AWADDR),
        .m_axi_awburst(axi_data_fifo_6_M_AXI_AWBURST),
        .m_axi_awcache(axi_data_fifo_6_M_AXI_AWCACHE),
        .m_axi_awid(axi_data_fifo_6_M_AXI_AWID),
        .m_axi_awlen(axi_data_fifo_6_M_AXI_AWLEN),
        .m_axi_awlock(axi_data_fifo_6_M_AXI_AWLOCK),
        .m_axi_awprot(axi_data_fifo_6_M_AXI_AWPROT),
        .m_axi_awqos(axi_data_fifo_6_M_AXI_AWQOS),
        .m_axi_awready(axi_data_fifo_6_M_AXI_AWREADY),
        .m_axi_awregion(axi_data_fifo_6_M_AXI_AWREGION),
        .m_axi_awsize(axi_data_fifo_6_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_data_fifo_6_M_AXI_AWVALID),
        .m_axi_bid(axi_data_fifo_6_M_AXI_BID),
        .m_axi_bready(axi_data_fifo_6_M_AXI_BREADY),
        .m_axi_bresp(axi_data_fifo_6_M_AXI_BRESP),
        .m_axi_bvalid(axi_data_fifo_6_M_AXI_BVALID),
        .m_axi_rdata(axi_data_fifo_6_M_AXI_RDATA),
        .m_axi_rid(axi_data_fifo_6_M_AXI_RID),
        .m_axi_rlast(axi_data_fifo_6_M_AXI_RLAST),
        .m_axi_rready(axi_data_fifo_6_M_AXI_RREADY),
        .m_axi_rresp(axi_data_fifo_6_M_AXI_RRESP),
        .m_axi_rvalid(axi_data_fifo_6_M_AXI_RVALID),
        .m_axi_wdata(axi_data_fifo_6_M_AXI_WDATA),
        .m_axi_wlast(axi_data_fifo_6_M_AXI_WLAST),
        .m_axi_wready(axi_data_fifo_6_M_AXI_WREADY),
        .m_axi_wstrb(axi_data_fifo_6_M_AXI_WSTRB),
        .m_axi_wvalid(axi_data_fifo_6_M_AXI_WVALID),
        .s_axi_araddr(axi_data_fifo_5_M_AXI_ARADDR),
        .s_axi_arburst(axi_data_fifo_5_M_AXI_ARBURST),
        .s_axi_arcache(axi_data_fifo_5_M_AXI_ARCACHE),
        .s_axi_arid(axi_data_fifo_5_M_AXI_ARID),
        .s_axi_arlen(axi_data_fifo_5_M_AXI_ARLEN),
        .s_axi_arlock(axi_data_fifo_5_M_AXI_ARLOCK),
        .s_axi_arprot(axi_data_fifo_5_M_AXI_ARPROT),
        .s_axi_arqos(axi_data_fifo_5_M_AXI_ARQOS),
        .s_axi_arready(axi_data_fifo_5_M_AXI_ARREADY),
        .s_axi_arregion(axi_data_fifo_5_M_AXI_ARREGION),
        .s_axi_arsize(axi_data_fifo_5_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_data_fifo_5_M_AXI_ARVALID),
        .s_axi_awaddr(axi_data_fifo_5_M_AXI_AWADDR),
        .s_axi_awburst(axi_data_fifo_5_M_AXI_AWBURST),
        .s_axi_awcache(axi_data_fifo_5_M_AXI_AWCACHE),
        .s_axi_awid(axi_data_fifo_5_M_AXI_AWID),
        .s_axi_awlen(axi_data_fifo_5_M_AXI_AWLEN),
        .s_axi_awlock(axi_data_fifo_5_M_AXI_AWLOCK),
        .s_axi_awprot(axi_data_fifo_5_M_AXI_AWPROT),
        .s_axi_awqos(axi_data_fifo_5_M_AXI_AWQOS),
        .s_axi_awready(axi_data_fifo_5_M_AXI_AWREADY),
        .s_axi_awregion(axi_data_fifo_5_M_AXI_AWREGION),
        .s_axi_awsize(axi_data_fifo_5_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_data_fifo_5_M_AXI_AWVALID),
        .s_axi_bid(axi_data_fifo_5_M_AXI_BID),
        .s_axi_bready(axi_data_fifo_5_M_AXI_BREADY),
        .s_axi_bresp(axi_data_fifo_5_M_AXI_BRESP),
        .s_axi_bvalid(axi_data_fifo_5_M_AXI_BVALID),
        .s_axi_rdata(axi_data_fifo_5_M_AXI_RDATA),
        .s_axi_rid(axi_data_fifo_5_M_AXI_RID),
        .s_axi_rlast(axi_data_fifo_5_M_AXI_RLAST),
        .s_axi_rready(axi_data_fifo_5_M_AXI_RREADY),
        .s_axi_rresp(axi_data_fifo_5_M_AXI_RRESP),
        .s_axi_rvalid(axi_data_fifo_5_M_AXI_RVALID),
        .s_axi_wdata(axi_data_fifo_5_M_AXI_WDATA),
        .s_axi_wlast(axi_data_fifo_5_M_AXI_WLAST),
        .s_axi_wready(axi_data_fifo_5_M_AXI_WREADY),
        .s_axi_wstrb(axi_data_fifo_5_M_AXI_WSTRB),
        .s_axi_wvalid(axi_data_fifo_5_M_AXI_WVALID));
  design_1_axi_data_fifo_5_1 axi_data_fifo_7
       (.aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(axi_data_fifo_7_M_AXI_ARADDR),
        .m_axi_arburst(axi_data_fifo_7_M_AXI_ARBURST),
        .m_axi_arcache(axi_data_fifo_7_M_AXI_ARCACHE),
        .m_axi_arid(axi_data_fifo_7_M_AXI_ARID),
        .m_axi_arlen(axi_data_fifo_7_M_AXI_ARLEN),
        .m_axi_arlock(axi_data_fifo_7_M_AXI_ARLOCK),
        .m_axi_arprot(axi_data_fifo_7_M_AXI_ARPROT),
        .m_axi_arqos(axi_data_fifo_7_M_AXI_ARQOS),
        .m_axi_arready(axi_data_fifo_7_M_AXI_ARREADY),
        .m_axi_arregion(axi_data_fifo_7_M_AXI_ARREGION),
        .m_axi_arsize(axi_data_fifo_7_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_data_fifo_7_M_AXI_ARVALID),
        .m_axi_awaddr(axi_data_fifo_7_M_AXI_AWADDR),
        .m_axi_awburst(axi_data_fifo_7_M_AXI_AWBURST),
        .m_axi_awcache(axi_data_fifo_7_M_AXI_AWCACHE),
        .m_axi_awid(axi_data_fifo_7_M_AXI_AWID),
        .m_axi_awlen(axi_data_fifo_7_M_AXI_AWLEN),
        .m_axi_awlock(axi_data_fifo_7_M_AXI_AWLOCK),
        .m_axi_awprot(axi_data_fifo_7_M_AXI_AWPROT),
        .m_axi_awqos(axi_data_fifo_7_M_AXI_AWQOS),
        .m_axi_awready(axi_data_fifo_7_M_AXI_AWREADY),
        .m_axi_awregion(axi_data_fifo_7_M_AXI_AWREGION),
        .m_axi_awsize(axi_data_fifo_7_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_data_fifo_7_M_AXI_AWVALID),
        .m_axi_bid(axi_data_fifo_7_M_AXI_BID),
        .m_axi_bready(axi_data_fifo_7_M_AXI_BREADY),
        .m_axi_bresp(axi_data_fifo_7_M_AXI_BRESP),
        .m_axi_bvalid(axi_data_fifo_7_M_AXI_BVALID),
        .m_axi_rdata(axi_data_fifo_7_M_AXI_RDATA),
        .m_axi_rid(axi_data_fifo_7_M_AXI_RID),
        .m_axi_rlast(axi_data_fifo_7_M_AXI_RLAST),
        .m_axi_rready(axi_data_fifo_7_M_AXI_RREADY),
        .m_axi_rresp(axi_data_fifo_7_M_AXI_RRESP),
        .m_axi_rvalid(axi_data_fifo_7_M_AXI_RVALID),
        .m_axi_wdata(axi_data_fifo_7_M_AXI_WDATA),
        .m_axi_wlast(axi_data_fifo_7_M_AXI_WLAST),
        .m_axi_wready(axi_data_fifo_7_M_AXI_WREADY),
        .m_axi_wstrb(axi_data_fifo_7_M_AXI_WSTRB),
        .m_axi_wvalid(axi_data_fifo_7_M_AXI_WVALID),
        .s_axi_araddr(axi_data_fifo_6_M_AXI_ARADDR),
        .s_axi_arburst(axi_data_fifo_6_M_AXI_ARBURST),
        .s_axi_arcache(axi_data_fifo_6_M_AXI_ARCACHE),
        .s_axi_arid(axi_data_fifo_6_M_AXI_ARID),
        .s_axi_arlen(axi_data_fifo_6_M_AXI_ARLEN),
        .s_axi_arlock(axi_data_fifo_6_M_AXI_ARLOCK),
        .s_axi_arprot(axi_data_fifo_6_M_AXI_ARPROT),
        .s_axi_arqos(axi_data_fifo_6_M_AXI_ARQOS),
        .s_axi_arready(axi_data_fifo_6_M_AXI_ARREADY),
        .s_axi_arregion(axi_data_fifo_6_M_AXI_ARREGION),
        .s_axi_arsize(axi_data_fifo_6_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_data_fifo_6_M_AXI_ARVALID),
        .s_axi_awaddr(axi_data_fifo_6_M_AXI_AWADDR),
        .s_axi_awburst(axi_data_fifo_6_M_AXI_AWBURST),
        .s_axi_awcache(axi_data_fifo_6_M_AXI_AWCACHE),
        .s_axi_awid(axi_data_fifo_6_M_AXI_AWID),
        .s_axi_awlen(axi_data_fifo_6_M_AXI_AWLEN),
        .s_axi_awlock(axi_data_fifo_6_M_AXI_AWLOCK),
        .s_axi_awprot(axi_data_fifo_6_M_AXI_AWPROT),
        .s_axi_awqos(axi_data_fifo_6_M_AXI_AWQOS),
        .s_axi_awready(axi_data_fifo_6_M_AXI_AWREADY),
        .s_axi_awregion(axi_data_fifo_6_M_AXI_AWREGION),
        .s_axi_awsize(axi_data_fifo_6_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_data_fifo_6_M_AXI_AWVALID),
        .s_axi_bid(axi_data_fifo_6_M_AXI_BID),
        .s_axi_bready(axi_data_fifo_6_M_AXI_BREADY),
        .s_axi_bresp(axi_data_fifo_6_M_AXI_BRESP),
        .s_axi_bvalid(axi_data_fifo_6_M_AXI_BVALID),
        .s_axi_rdata(axi_data_fifo_6_M_AXI_RDATA),
        .s_axi_rid(axi_data_fifo_6_M_AXI_RID),
        .s_axi_rlast(axi_data_fifo_6_M_AXI_RLAST),
        .s_axi_rready(axi_data_fifo_6_M_AXI_RREADY),
        .s_axi_rresp(axi_data_fifo_6_M_AXI_RRESP),
        .s_axi_rvalid(axi_data_fifo_6_M_AXI_RVALID),
        .s_axi_wdata(axi_data_fifo_6_M_AXI_WDATA),
        .s_axi_wlast(axi_data_fifo_6_M_AXI_WLAST),
        .s_axi_wready(axi_data_fifo_6_M_AXI_WREADY),
        .s_axi_wstrb(axi_data_fifo_6_M_AXI_WSTRB),
        .s_axi_wvalid(axi_data_fifo_6_M_AXI_WVALID));
  design_1_axi_data_fifo_5_2 axi_data_fifo_8
       (.aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(axi_data_fifo_8_M_AXI_ARADDR),
        .m_axi_arburst(axi_data_fifo_8_M_AXI_ARBURST),
        .m_axi_arcache(axi_data_fifo_8_M_AXI_ARCACHE),
        .m_axi_arid(axi_data_fifo_8_M_AXI_ARID),
        .m_axi_arlen(axi_data_fifo_8_M_AXI_ARLEN),
        .m_axi_arlock(axi_data_fifo_8_M_AXI_ARLOCK),
        .m_axi_arprot(axi_data_fifo_8_M_AXI_ARPROT),
        .m_axi_arqos(axi_data_fifo_8_M_AXI_ARQOS),
        .m_axi_arready(axi_data_fifo_8_M_AXI_ARREADY),
        .m_axi_arregion(axi_data_fifo_8_M_AXI_ARREGION),
        .m_axi_arsize(axi_data_fifo_8_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_data_fifo_8_M_AXI_ARVALID),
        .m_axi_awaddr(axi_data_fifo_8_M_AXI_AWADDR),
        .m_axi_awburst(axi_data_fifo_8_M_AXI_AWBURST),
        .m_axi_awcache(axi_data_fifo_8_M_AXI_AWCACHE),
        .m_axi_awid(axi_data_fifo_8_M_AXI_AWID),
        .m_axi_awlen(axi_data_fifo_8_M_AXI_AWLEN),
        .m_axi_awlock(axi_data_fifo_8_M_AXI_AWLOCK),
        .m_axi_awprot(axi_data_fifo_8_M_AXI_AWPROT),
        .m_axi_awqos(axi_data_fifo_8_M_AXI_AWQOS),
        .m_axi_awready(axi_data_fifo_8_M_AXI_AWREADY),
        .m_axi_awregion(axi_data_fifo_8_M_AXI_AWREGION),
        .m_axi_awsize(axi_data_fifo_8_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_data_fifo_8_M_AXI_AWVALID),
        .m_axi_bid(axi_data_fifo_8_M_AXI_BID),
        .m_axi_bready(axi_data_fifo_8_M_AXI_BREADY),
        .m_axi_bresp(axi_data_fifo_8_M_AXI_BRESP),
        .m_axi_bvalid(axi_data_fifo_8_M_AXI_BVALID),
        .m_axi_rdata(axi_data_fifo_8_M_AXI_RDATA),
        .m_axi_rid(axi_data_fifo_8_M_AXI_RID),
        .m_axi_rlast(axi_data_fifo_8_M_AXI_RLAST),
        .m_axi_rready(axi_data_fifo_8_M_AXI_RREADY),
        .m_axi_rresp(axi_data_fifo_8_M_AXI_RRESP),
        .m_axi_rvalid(axi_data_fifo_8_M_AXI_RVALID),
        .m_axi_wdata(axi_data_fifo_8_M_AXI_WDATA),
        .m_axi_wlast(axi_data_fifo_8_M_AXI_WLAST),
        .m_axi_wready(axi_data_fifo_8_M_AXI_WREADY),
        .m_axi_wstrb(axi_data_fifo_8_M_AXI_WSTRB),
        .m_axi_wvalid(axi_data_fifo_8_M_AXI_WVALID),
        .s_axi_araddr(axi_data_fifo_7_M_AXI_ARADDR),
        .s_axi_arburst(axi_data_fifo_7_M_AXI_ARBURST),
        .s_axi_arcache(axi_data_fifo_7_M_AXI_ARCACHE),
        .s_axi_arid(axi_data_fifo_7_M_AXI_ARID),
        .s_axi_arlen(axi_data_fifo_7_M_AXI_ARLEN),
        .s_axi_arlock(axi_data_fifo_7_M_AXI_ARLOCK),
        .s_axi_arprot(axi_data_fifo_7_M_AXI_ARPROT),
        .s_axi_arqos(axi_data_fifo_7_M_AXI_ARQOS),
        .s_axi_arready(axi_data_fifo_7_M_AXI_ARREADY),
        .s_axi_arregion(axi_data_fifo_7_M_AXI_ARREGION),
        .s_axi_arsize(axi_data_fifo_7_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_data_fifo_7_M_AXI_ARVALID),
        .s_axi_awaddr(axi_data_fifo_7_M_AXI_AWADDR),
        .s_axi_awburst(axi_data_fifo_7_M_AXI_AWBURST),
        .s_axi_awcache(axi_data_fifo_7_M_AXI_AWCACHE),
        .s_axi_awid(axi_data_fifo_7_M_AXI_AWID),
        .s_axi_awlen(axi_data_fifo_7_M_AXI_AWLEN),
        .s_axi_awlock(axi_data_fifo_7_M_AXI_AWLOCK),
        .s_axi_awprot(axi_data_fifo_7_M_AXI_AWPROT),
        .s_axi_awqos(axi_data_fifo_7_M_AXI_AWQOS),
        .s_axi_awready(axi_data_fifo_7_M_AXI_AWREADY),
        .s_axi_awregion(axi_data_fifo_7_M_AXI_AWREGION),
        .s_axi_awsize(axi_data_fifo_7_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_data_fifo_7_M_AXI_AWVALID),
        .s_axi_bid(axi_data_fifo_7_M_AXI_BID),
        .s_axi_bready(axi_data_fifo_7_M_AXI_BREADY),
        .s_axi_bresp(axi_data_fifo_7_M_AXI_BRESP),
        .s_axi_bvalid(axi_data_fifo_7_M_AXI_BVALID),
        .s_axi_rdata(axi_data_fifo_7_M_AXI_RDATA),
        .s_axi_rid(axi_data_fifo_7_M_AXI_RID),
        .s_axi_rlast(axi_data_fifo_7_M_AXI_RLAST),
        .s_axi_rready(axi_data_fifo_7_M_AXI_RREADY),
        .s_axi_rresp(axi_data_fifo_7_M_AXI_RRESP),
        .s_axi_rvalid(axi_data_fifo_7_M_AXI_RVALID),
        .s_axi_wdata(axi_data_fifo_7_M_AXI_WDATA),
        .s_axi_wlast(axi_data_fifo_7_M_AXI_WLAST),
        .s_axi_wready(axi_data_fifo_7_M_AXI_WREADY),
        .s_axi_wstrb(axi_data_fifo_7_M_AXI_WSTRB),
        .s_axi_wvalid(axi_data_fifo_7_M_AXI_WVALID));
  design_1_axi_data_fifo_5_3 axi_data_fifo_9
       (.aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(axi_data_fifo_9_M_AXI_ARADDR),
        .m_axi_arburst(axi_data_fifo_9_M_AXI_ARBURST),
        .m_axi_arcache(axi_data_fifo_9_M_AXI_ARCACHE),
        .m_axi_arid(axi_data_fifo_9_M_AXI_ARID),
        .m_axi_arlen(axi_data_fifo_9_M_AXI_ARLEN),
        .m_axi_arlock(axi_data_fifo_9_M_AXI_ARLOCK),
        .m_axi_arprot(axi_data_fifo_9_M_AXI_ARPROT),
        .m_axi_arqos(axi_data_fifo_9_M_AXI_ARQOS),
        .m_axi_arready(axi_data_fifo_9_M_AXI_ARREADY),
        .m_axi_arsize(axi_data_fifo_9_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_data_fifo_9_M_AXI_ARVALID),
        .m_axi_awaddr(axi_data_fifo_9_M_AXI_AWADDR),
        .m_axi_awburst(axi_data_fifo_9_M_AXI_AWBURST),
        .m_axi_awcache(axi_data_fifo_9_M_AXI_AWCACHE),
        .m_axi_awid(axi_data_fifo_9_M_AXI_AWID),
        .m_axi_awlen(axi_data_fifo_9_M_AXI_AWLEN),
        .m_axi_awlock(axi_data_fifo_9_M_AXI_AWLOCK),
        .m_axi_awprot(axi_data_fifo_9_M_AXI_AWPROT),
        .m_axi_awqos(axi_data_fifo_9_M_AXI_AWQOS),
        .m_axi_awready(axi_data_fifo_9_M_AXI_AWREADY),
        .m_axi_awsize(axi_data_fifo_9_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_data_fifo_9_M_AXI_AWVALID),
        .m_axi_bid(axi_data_fifo_9_M_AXI_BID),
        .m_axi_bready(axi_data_fifo_9_M_AXI_BREADY),
        .m_axi_bresp(axi_data_fifo_9_M_AXI_BRESP),
        .m_axi_bvalid(axi_data_fifo_9_M_AXI_BVALID),
        .m_axi_rdata(axi_data_fifo_9_M_AXI_RDATA),
        .m_axi_rid(axi_data_fifo_9_M_AXI_RID),
        .m_axi_rlast(axi_data_fifo_9_M_AXI_RLAST),
        .m_axi_rready(axi_data_fifo_9_M_AXI_RREADY),
        .m_axi_rresp(axi_data_fifo_9_M_AXI_RRESP),
        .m_axi_rvalid(axi_data_fifo_9_M_AXI_RVALID),
        .m_axi_wdata(axi_data_fifo_9_M_AXI_WDATA),
        .m_axi_wlast(axi_data_fifo_9_M_AXI_WLAST),
        .m_axi_wready(axi_data_fifo_9_M_AXI_WREADY),
        .m_axi_wstrb(axi_data_fifo_9_M_AXI_WSTRB),
        .m_axi_wvalid(axi_data_fifo_9_M_AXI_WVALID),
        .s_axi_araddr(axi_data_fifo_10_M_AXI_ARADDR),
        .s_axi_arburst(axi_data_fifo_10_M_AXI_ARBURST),
        .s_axi_arcache(axi_data_fifo_10_M_AXI_ARCACHE),
        .s_axi_arid(axi_data_fifo_10_M_AXI_ARID),
        .s_axi_arlen(axi_data_fifo_10_M_AXI_ARLEN),
        .s_axi_arlock(axi_data_fifo_10_M_AXI_ARLOCK),
        .s_axi_arprot(axi_data_fifo_10_M_AXI_ARPROT),
        .s_axi_arqos(axi_data_fifo_10_M_AXI_ARQOS),
        .s_axi_arready(axi_data_fifo_10_M_AXI_ARREADY),
        .s_axi_arregion(axi_data_fifo_10_M_AXI_ARREGION),
        .s_axi_arsize(axi_data_fifo_10_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_data_fifo_10_M_AXI_ARVALID),
        .s_axi_awaddr(axi_data_fifo_10_M_AXI_AWADDR),
        .s_axi_awburst(axi_data_fifo_10_M_AXI_AWBURST),
        .s_axi_awcache(axi_data_fifo_10_M_AXI_AWCACHE),
        .s_axi_awid(axi_data_fifo_10_M_AXI_AWID),
        .s_axi_awlen(axi_data_fifo_10_M_AXI_AWLEN),
        .s_axi_awlock(axi_data_fifo_10_M_AXI_AWLOCK),
        .s_axi_awprot(axi_data_fifo_10_M_AXI_AWPROT),
        .s_axi_awqos(axi_data_fifo_10_M_AXI_AWQOS),
        .s_axi_awready(axi_data_fifo_10_M_AXI_AWREADY),
        .s_axi_awregion(axi_data_fifo_10_M_AXI_AWREGION),
        .s_axi_awsize(axi_data_fifo_10_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_data_fifo_10_M_AXI_AWVALID),
        .s_axi_bid(axi_data_fifo_10_M_AXI_BID),
        .s_axi_bready(axi_data_fifo_10_M_AXI_BREADY),
        .s_axi_bresp(axi_data_fifo_10_M_AXI_BRESP),
        .s_axi_bvalid(axi_data_fifo_10_M_AXI_BVALID),
        .s_axi_rdata(axi_data_fifo_10_M_AXI_RDATA),
        .s_axi_rid(axi_data_fifo_10_M_AXI_RID),
        .s_axi_rlast(axi_data_fifo_10_M_AXI_RLAST),
        .s_axi_rready(axi_data_fifo_10_M_AXI_RREADY),
        .s_axi_rresp(axi_data_fifo_10_M_AXI_RRESP),
        .s_axi_rvalid(axi_data_fifo_10_M_AXI_RVALID),
        .s_axi_wdata(axi_data_fifo_10_M_AXI_WDATA),
        .s_axi_wlast(axi_data_fifo_10_M_AXI_WLAST),
        .s_axi_wready(axi_data_fifo_10_M_AXI_WREADY),
        .s_axi_wstrb(axi_data_fifo_10_M_AXI_WSTRB),
        .s_axi_wvalid(axi_data_fifo_10_M_AXI_WVALID));
  design_1_axi_dma_0_0 axi_dma_0
       (.axi_resetn(rst_ddr4_0_300M_peripheral_aresetn),
        .m_axi_mm2s_aclk(ddr4_0_addn_ui_clkout1),
        .m_axi_mm2s_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(ddr4_0_addn_ui_clkout1),
        .m_axi_s2mm_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tkeep(axi_dma_0_m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(axi_dma_0_m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(axis_data_fifo_0_s_axis_tready),
        .m_axis_mm2s_tvalid(axi_dma_0_m_axis_mm2s_tvalid),
        .s_axi_lite_aclk(ddr4_0_addn_ui_clkout1),
        .s_axi_lite_araddr(undolog_0_M00_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(undolog_0_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(undolog_0_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(undolog_0_M00_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(undolog_0_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(undolog_0_M00_AXI_AWVALID),
        .s_axi_lite_bready(undolog_0_M00_AXI_BREADY),
        .s_axi_lite_bresp(undolog_0_M00_AXI_BRESP),
        .s_axi_lite_bvalid(undolog_0_M00_AXI_BVALID),
        .s_axi_lite_rdata(undolog_0_M00_AXI_RDATA),
        .s_axi_lite_rready(undolog_0_M00_AXI_RREADY),
        .s_axi_lite_rresp(undolog_0_M00_AXI_RRESP),
        .s_axi_lite_rvalid(undolog_0_M00_AXI_RVALID),
        .s_axi_lite_wdata(undolog_0_M00_AXI_WDATA),
        .s_axi_lite_wready(undolog_0_M00_AXI_WREADY),
        .s_axi_lite_wvalid(undolog_0_M00_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_data_fifo_0_M_AXIS_TVALID));
  design_1_axi_dma_0_1 axi_dma_1
       (.axi_resetn(rst_ddr4_0_300M_peripheral_aresetn),
        .m_axi_mm2s_aclk(ddr4_0_addn_ui_clkout1),
        .m_axi_mm2s_araddr(axi_dma_1_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_1_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_1_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_1_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_1_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_1_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_1_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_1_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_1_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_1_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_1_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_1_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_1_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(ddr4_0_addn_ui_clkout1),
        .m_axi_s2mm_awaddr(axi_dma_1_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_1_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_1_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_1_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_1_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_1_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_1_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_1_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_1_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_1_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_1_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_1_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_1_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_1_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_1_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_1_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(axi_dma_1_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_1_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_1_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_1_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_1_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(ddr4_0_addn_ui_clkout1),
        .s_axi_lite_araddr(undolog_0_M01_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(undolog_0_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(undolog_0_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(undolog_0_M01_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(undolog_0_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(undolog_0_M01_AXI_AWVALID),
        .s_axi_lite_bready(undolog_0_M01_AXI_BREADY),
        .s_axi_lite_bresp(undolog_0_M01_AXI_BRESP),
        .s_axi_lite_bvalid(undolog_0_M01_AXI_BVALID),
        .s_axi_lite_rdata(undolog_0_M01_AXI_RDATA),
        .s_axi_lite_rready(undolog_0_M01_AXI_RREADY),
        .s_axi_lite_rresp(undolog_0_M01_AXI_RRESP),
        .s_axi_lite_rvalid(undolog_0_M01_AXI_RVALID),
        .s_axi_lite_wdata(undolog_0_M01_AXI_WDATA),
        .s_axi_lite_wready(undolog_0_M01_AXI_WREADY),
        .s_axi_lite_wvalid(undolog_0_M01_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_data_fifo_1_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_data_fifo_1_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_data_fifo_1_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_data_fifo_1_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_data_fifo_1_M_AXIS_TVALID));
  design_1_axi_dma_0_2 axi_dma_2
       (.axi_resetn(rst_ddr4_0_300M_peripheral_aresetn),
        .m_axi_mm2s_aclk(ddr4_0_addn_ui_clkout1),
        .m_axi_mm2s_araddr(axi_dma_2_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_2_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_2_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_2_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_2_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_2_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_2_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_2_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_2_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_2_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_2_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_2_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_2_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(ddr4_0_addn_ui_clkout1),
        .m_axi_s2mm_awaddr(axi_dma_2_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_2_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_2_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_2_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_2_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_2_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_2_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_2_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_2_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_2_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_2_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_2_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_2_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_2_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_2_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_2_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(axi_dma_2_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_2_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_2_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_2_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_2_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(ddr4_0_addn_ui_clkout1),
        .s_axi_lite_araddr(undolog_1_M01_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(undolog_1_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(undolog_1_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(undolog_1_M01_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(undolog_1_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(undolog_1_M01_AXI_AWVALID),
        .s_axi_lite_bready(undolog_1_M01_AXI_BREADY),
        .s_axi_lite_bresp(undolog_1_M01_AXI_BRESP),
        .s_axi_lite_bvalid(undolog_1_M01_AXI_BVALID),
        .s_axi_lite_rdata(undolog_1_M01_AXI_RDATA),
        .s_axi_lite_rready(undolog_1_M01_AXI_RREADY),
        .s_axi_lite_rresp(undolog_1_M01_AXI_RRESP),
        .s_axi_lite_rvalid(undolog_1_M01_AXI_RVALID),
        .s_axi_lite_wdata(undolog_1_M01_AXI_WDATA),
        .s_axi_lite_wready(undolog_1_M01_AXI_WREADY),
        .s_axi_lite_wvalid(undolog_1_M01_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_data_fifo_2_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_data_fifo_2_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_data_fifo_2_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_data_fifo_2_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_data_fifo_2_M_AXIS_TVALID));
  design_1_axi_dma_0_3 axi_dma_3
       (.axi_resetn(rst_ddr4_0_300M_peripheral_aresetn),
        .m_axi_mm2s_aclk(ddr4_0_addn_ui_clkout1),
        .m_axi_mm2s_araddr(axi_dma_3_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_3_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_3_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_3_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_3_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_3_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_3_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_3_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_3_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_3_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_3_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_3_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_3_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(ddr4_0_addn_ui_clkout1),
        .m_axi_s2mm_awaddr(axi_dma_3_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_3_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_3_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_3_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_3_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_3_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_3_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_3_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_3_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_3_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_3_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_3_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_3_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_3_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_3_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_3_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(axi_dma_3_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_3_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_3_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_3_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_3_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(ddr4_0_addn_ui_clkout1),
        .s_axi_lite_araddr(undolog_1_M00_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(undolog_1_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(undolog_1_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(undolog_1_M00_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(undolog_1_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(undolog_1_M00_AXI_AWVALID),
        .s_axi_lite_bready(undolog_1_M00_AXI_BREADY),
        .s_axi_lite_bresp(undolog_1_M00_AXI_BRESP),
        .s_axi_lite_bvalid(undolog_1_M00_AXI_BVALID),
        .s_axi_lite_rdata(undolog_1_M00_AXI_RDATA),
        .s_axi_lite_rready(undolog_1_M00_AXI_RREADY),
        .s_axi_lite_rresp(undolog_1_M00_AXI_RRESP),
        .s_axi_lite_rvalid(undolog_1_M00_AXI_RVALID),
        .s_axi_lite_wdata(undolog_1_M00_AXI_WDATA),
        .s_axi_lite_wready(undolog_1_M00_AXI_WREADY),
        .s_axi_lite_wvalid(undolog_1_M00_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_data_fifo_3_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_data_fifo_3_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_data_fifo_3_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_data_fifo_3_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_data_fifo_3_M_AXIS_TVALID));
  design_1_axi_dma_0_4 axi_dma_4
       (.axi_resetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_mm2s_aclk(microblaze_0_Clk),
        .m_axi_mm2s_araddr(axi_dma_4_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_4_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_4_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_4_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_4_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_4_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_4_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_4_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_4_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_4_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_4_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_4_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_4_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(microblaze_0_Clk),
        .m_axi_s2mm_awaddr(axi_dma_4_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_4_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_4_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_4_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_4_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_4_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_4_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_4_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_4_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_4_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_4_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_4_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_4_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_4_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_4_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_4_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tkeep(axi_dma_4_m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(axi_dma_4_m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(axis_data_fifo_4_s_axis_tready),
        .m_axis_mm2s_tvalid(axi_dma_4_m_axis_mm2s_tvalid),
        .s_axi_lite_aclk(microblaze_0_Clk),
        .s_axi_lite_araddr(undolog_2_M00_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(undolog_2_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(undolog_2_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(undolog_2_M00_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(undolog_2_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(undolog_2_M00_AXI_AWVALID),
        .s_axi_lite_bready(undolog_2_M00_AXI_BREADY),
        .s_axi_lite_bresp(undolog_2_M00_AXI_BRESP),
        .s_axi_lite_bvalid(undolog_2_M00_AXI_BVALID),
        .s_axi_lite_rdata(undolog_2_M00_AXI_RDATA),
        .s_axi_lite_rready(undolog_2_M00_AXI_RREADY),
        .s_axi_lite_rresp(undolog_2_M00_AXI_RRESP),
        .s_axi_lite_rvalid(undolog_2_M00_AXI_RVALID),
        .s_axi_lite_wdata(undolog_2_M00_AXI_WDATA),
        .s_axi_lite_wready(undolog_2_M00_AXI_WREADY),
        .s_axi_lite_wvalid(undolog_2_M00_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_data_fifo_4_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_data_fifo_4_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_data_fifo_4_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_data_fifo_4_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_data_fifo_4_M_AXIS_TVALID));
  design_1_axi_dma_1_0 axi_dma_5
       (.axi_resetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_mm2s_aclk(microblaze_0_Clk),
        .m_axi_mm2s_araddr(axi_dma_5_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_5_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_5_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_5_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_5_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_5_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_5_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_5_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_5_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_5_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_5_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_5_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_5_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(microblaze_0_Clk),
        .m_axi_s2mm_awaddr(axi_dma_5_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_5_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_5_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_5_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_5_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_5_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_5_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_5_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_5_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_5_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_5_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_5_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_5_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_5_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_5_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_5_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(axi_dma_5_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_5_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_5_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_5_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_5_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(microblaze_0_Clk),
        .s_axi_lite_araddr(undolog_2_M01_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(undolog_2_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(undolog_2_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(undolog_2_M01_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(undolog_2_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(undolog_2_M01_AXI_AWVALID),
        .s_axi_lite_bready(undolog_2_M01_AXI_BREADY),
        .s_axi_lite_bresp(undolog_2_M01_AXI_BRESP),
        .s_axi_lite_bvalid(undolog_2_M01_AXI_BVALID),
        .s_axi_lite_rdata(undolog_2_M01_AXI_RDATA),
        .s_axi_lite_rready(undolog_2_M01_AXI_RREADY),
        .s_axi_lite_rresp(undolog_2_M01_AXI_RRESP),
        .s_axi_lite_rvalid(undolog_2_M01_AXI_RVALID),
        .s_axi_lite_wdata(undolog_2_M01_AXI_WDATA),
        .s_axi_lite_wready(undolog_2_M01_AXI_WREADY),
        .s_axi_lite_wvalid(undolog_2_M01_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_data_fifo_5_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_data_fifo_5_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_data_fifo_5_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_data_fifo_5_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_data_fifo_5_M_AXIS_TVALID));
  design_1_axi_dma_0_5 axi_dma_6
       (.axi_resetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_mm2s_aclk(microblaze_0_Clk),
        .m_axi_mm2s_araddr(axi_dma_6_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_6_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_6_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_6_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_6_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_6_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_6_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_6_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_6_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_6_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_6_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_6_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_6_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(microblaze_0_Clk),
        .m_axi_s2mm_awaddr(axi_dma_6_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_6_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_6_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_6_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_6_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_6_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_6_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_6_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_6_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_6_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_6_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_6_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_6_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_6_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_6_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_6_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tkeep(axi_dma_6_m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(axi_dma_6_m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(axis_data_fifo_6_s_axis_tready),
        .m_axis_mm2s_tvalid(axi_dma_6_m_axis_mm2s_tvalid),
        .s_axi_lite_aclk(microblaze_0_Clk),
        .s_axi_lite_araddr(undolog_3_M00_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(undolog_3_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(undolog_3_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(undolog_3_M00_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(undolog_3_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(undolog_3_M00_AXI_AWVALID),
        .s_axi_lite_bready(undolog_3_M00_AXI_BREADY),
        .s_axi_lite_bresp(undolog_3_M00_AXI_BRESP),
        .s_axi_lite_bvalid(undolog_3_M00_AXI_BVALID),
        .s_axi_lite_rdata(undolog_3_M00_AXI_RDATA),
        .s_axi_lite_rready(undolog_3_M00_AXI_RREADY),
        .s_axi_lite_rresp(undolog_3_M00_AXI_RRESP),
        .s_axi_lite_rvalid(undolog_3_M00_AXI_RVALID),
        .s_axi_lite_wdata(undolog_3_M00_AXI_WDATA),
        .s_axi_lite_wready(undolog_3_M00_AXI_WREADY),
        .s_axi_lite_wvalid(undolog_3_M00_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_data_fifo_6_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_data_fifo_6_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_data_fifo_6_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_data_fifo_6_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_data_fifo_6_M_AXIS_TVALID));
  design_1_axi_dma_6_0 axi_dma_7
       (.axi_resetn(1'b1),
        .m_axi_mm2s_aclk(microblaze_0_Clk),
        .m_axi_mm2s_araddr(axi_dma_7_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_7_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_7_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_7_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_7_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_7_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_7_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_7_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_7_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_7_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_7_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_7_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_7_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(microblaze_0_Clk),
        .m_axi_s2mm_awaddr(axi_dma_7_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_7_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_7_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_7_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_7_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_7_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_7_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_7_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_7_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_7_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_7_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_7_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_7_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_7_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_7_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_7_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(axi_dma_7_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_7_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_7_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_7_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_7_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(microblaze_0_Clk),
        .s_axi_lite_araddr(undolog_3_M01_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(undolog_3_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(undolog_3_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(undolog_3_M01_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(undolog_3_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(undolog_3_M01_AXI_AWVALID),
        .s_axi_lite_bready(undolog_3_M01_AXI_BREADY),
        .s_axi_lite_bresp(undolog_3_M01_AXI_BRESP),
        .s_axi_lite_bvalid(undolog_3_M01_AXI_BVALID),
        .s_axi_lite_rdata(undolog_3_M01_AXI_RDATA),
        .s_axi_lite_rready(undolog_3_M01_AXI_RREADY),
        .s_axi_lite_rresp(undolog_3_M01_AXI_RRESP),
        .s_axi_lite_rvalid(undolog_3_M01_AXI_RVALID),
        .s_axi_lite_wdata(undolog_3_M01_AXI_WDATA),
        .s_axi_lite_wready(undolog_3_M01_AXI_WREADY),
        .s_axi_lite_wvalid(undolog_3_M01_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_data_fifo_7_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_data_fifo_7_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_data_fifo_7_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_data_fifo_7_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_data_fifo_7_M_AXIS_TVALID));
  design_1_axi_register_slice_0_0 axi_register_slice_0
       (.aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_register_slice_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_register_slice_0_M_AXI_ARCACHE),
        .m_axi_arid(axi_register_slice_0_M_AXI_ARID),
        .m_axi_arlen(axi_register_slice_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_register_slice_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_register_slice_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_register_slice_0_M_AXI_ARQOS),
        .m_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .m_axi_arregion(axi_register_slice_0_M_AXI_ARREGION),
        .m_axi_arsize(axi_register_slice_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_register_slice_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_register_slice_0_M_AXI_AWCACHE),
        .m_axi_awid(axi_register_slice_0_M_AXI_AWID),
        .m_axi_awlen(axi_register_slice_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_register_slice_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_register_slice_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_register_slice_0_M_AXI_AWQOS),
        .m_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .m_axi_awregion(axi_register_slice_0_M_AXI_AWREGION),
        .m_axi_awsize(axi_register_slice_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .m_axi_bid(axi_register_slice_0_M_AXI_BID),
        .m_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .m_axi_rid(axi_register_slice_0_M_AXI_RID),
        .m_axi_rlast(axi_register_slice_0_M_AXI_RLAST),
        .m_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .m_axi_wlast(axi_register_slice_0_M_AXI_WLAST),
        .m_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .s_axi_araddr(xdma_0_M_AXI_B_ARADDR),
        .s_axi_arburst(xdma_0_M_AXI_B_ARBURST),
        .s_axi_arcache(xdma_0_M_AXI_B_ARCACHE),
        .s_axi_arid(xdma_0_M_AXI_B_ARID),
        .s_axi_arlen(xdma_0_M_AXI_B_ARLEN),
        .s_axi_arlock(xdma_0_M_AXI_B_ARLOCK),
        .s_axi_arprot(xdma_0_M_AXI_B_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(xdma_0_M_AXI_B_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(xdma_0_M_AXI_B_ARSIZE),
        .s_axi_arvalid(xdma_0_M_AXI_B_ARVALID),
        .s_axi_awaddr(addrmonitor_0_m00_axi_awaddr),
        .s_axi_awburst(xdma_0_M_AXI_B_AWBURST),
        .s_axi_awcache(xdma_0_M_AXI_B_AWCACHE),
        .s_axi_awid(xdma_0_M_AXI_B_AWID),
        .s_axi_awlen(xdma_0_M_AXI_B_AWLEN),
        .s_axi_awlock(xdma_0_M_AXI_B_AWLOCK),
        .s_axi_awprot(xdma_0_M_AXI_B_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(xdma_0_M_AXI_B_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(xdma_0_M_AXI_B_AWSIZE),
        .s_axi_awvalid(addrmonitor_0_m00_axi_awvalid),
        .s_axi_bid(xdma_0_M_AXI_B_BID),
        .s_axi_bready(xdma_0_M_AXI_B_BREADY),
        .s_axi_bresp(xdma_0_M_AXI_B_BRESP),
        .s_axi_bvalid(xdma_0_M_AXI_B_BVALID),
        .s_axi_rdata(xdma_0_M_AXI_B_RDATA),
        .s_axi_rid(xdma_0_M_AXI_B_RID),
        .s_axi_rlast(xdma_0_M_AXI_B_RLAST),
        .s_axi_rready(xdma_0_M_AXI_B_RREADY),
        .s_axi_rresp(xdma_0_M_AXI_B_RRESP),
        .s_axi_rvalid(xdma_0_M_AXI_B_RVALID),
        .s_axi_wdata(addrmonitor_0_m00_axi_wdata),
        .s_axi_wlast(xdma_0_M_AXI_B_WLAST),
        .s_axi_wready(xdma_0_M_AXI_B_WREADY),
        .s_axi_wstrb(xdma_0_M_AXI_B_WSTRB),
        .s_axi_wvalid(addrmonitor_0_m00_axi_wvalid));
  design_1_axi_smc_1 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arprot(axi_smc_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awprot(axi_smc_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_smc_M02_AXI_ARADDR),
        .M02_AXI_arprot(axi_smc_M02_AXI_ARPROT),
        .M02_AXI_arready(axi_smc_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_smc_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_M02_AXI_AWADDR),
        .M02_AXI_awprot(axi_smc_M02_AXI_AWPROT),
        .M02_AXI_awready(axi_smc_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_smc_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_M02_AXI_RDATA),
        .M02_AXI_rready(axi_smc_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_M02_AXI_WDATA),
        .M02_AXI_wready(axi_smc_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_smc_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_smc_M02_AXI_WVALID),
        .S00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .S00_AXI_arburst(smartconnect_1_M00_AXI_ARBURST),
        .S00_AXI_arcache(smartconnect_1_M00_AXI_ARCACHE),
        .S00_AXI_arid(smartconnect_1_M00_AXI_ARID),
        .S00_AXI_arlen(smartconnect_1_M00_AXI_ARLEN),
        .S00_AXI_arlock(smartconnect_1_M00_AXI_ARLOCK),
        .S00_AXI_arprot(smartconnect_1_M00_AXI_ARPROT),
        .S00_AXI_arqos(smartconnect_1_M00_AXI_ARQOS),
        .S00_AXI_arready(axi_smc_S00_AXI_arready),
        .S00_AXI_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .S00_AXI_aruser(smartconnect_1_M00_AXI_ARUSER),
        .S00_AXI_arvalid(gate_axi_0_arvalid_out),
        .S00_AXI_awaddr(gate_axi_0_awaddr_out),
        .S00_AXI_awburst(smartconnect_1_M00_AXI_AWBURST),
        .S00_AXI_awcache(smartconnect_1_M00_AXI_AWCACHE),
        .S00_AXI_awid(smartconnect_1_M00_AXI_AWID),
        .S00_AXI_awlen(smartconnect_1_M00_AXI_AWLEN),
        .S00_AXI_awlock(smartconnect_1_M00_AXI_AWLOCK),
        .S00_AXI_awprot(smartconnect_1_M00_AXI_AWPROT),
        .S00_AXI_awqos(smartconnect_1_M00_AXI_awqos),
        .S00_AXI_awready(axi_smc_S00_AXI_awready),
        .S00_AXI_awsize(smartconnect_1_M00_AXI_AWSIZE),
        .S00_AXI_awuser(smartconnect_1_M00_AXI_AWUSER),
        .S00_AXI_awvalid(gate_axi_0_awvalid_out),
        .S00_AXI_bid(smartconnect_1_M00_AXI_BID),
        .S00_AXI_bready(gate_axi_0_bready_out),
        .S00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .S00_AXI_buser(smartconnect_1_M00_AXI_BUSER),
        .S00_AXI_bvalid(axi_smc_S00_AXI_bvalid),
        .S00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .S00_AXI_rid(smartconnect_1_M00_AXI_RID),
        .S00_AXI_rlast(smartconnect_1_M00_AXI_RLAST),
        .S00_AXI_rready(gate_axi_0_rready_out),
        .S00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .S00_AXI_ruser(smartconnect_1_M00_AXI_RUSER),
        .S00_AXI_rvalid(axi_smc_S00_AXI_rvalid),
        .S00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .S00_AXI_wlast(smartconnect_1_M00_AXI_wlast),
        .S00_AXI_wready(axi_smc_S00_AXI_wready),
        .S00_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .S00_AXI_wuser(smartconnect_1_M00_AXI_WUSER),
        .S00_AXI_wvalid(gate_axi_0_wvalid_out),
        .S01_AXI_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .S01_AXI_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .S01_AXI_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .S01_AXI_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .S01_AXI_arlock(1'b0),
        .S01_AXI_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .S01_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .S01_AXI_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .S01_AXI_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .S01_AXI_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .S01_AXI_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .S01_AXI_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .S01_AXI_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .S01_AXI_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .S02_AXI_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .S02_AXI_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .S02_AXI_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .S02_AXI_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .S02_AXI_awlock(1'b0),
        .S02_AXI_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .S02_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .S02_AXI_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .S02_AXI_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .S02_AXI_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .S02_AXI_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .S02_AXI_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .S02_AXI_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .S02_AXI_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .S02_AXI_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .S02_AXI_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .S02_AXI_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .S03_AXI_araddr(undolog_0_M02_AXI_ARADDR),
        .S03_AXI_arprot(undolog_0_M02_AXI_ARPROT),
        .S03_AXI_arready(undolog_0_M02_AXI_ARREADY),
        .S03_AXI_arvalid(undolog_0_M02_AXI_ARVALID),
        .S03_AXI_awaddr(undolog_0_M02_AXI_AWADDR),
        .S03_AXI_awprot(undolog_0_M02_AXI_AWPROT),
        .S03_AXI_awready(undolog_0_M02_AXI_AWREADY),
        .S03_AXI_awvalid(undolog_0_M02_AXI_AWVALID),
        .S03_AXI_bready(undolog_0_M02_AXI_BREADY),
        .S03_AXI_bresp(undolog_0_M02_AXI_BRESP),
        .S03_AXI_bvalid(undolog_0_M02_AXI_BVALID),
        .S03_AXI_rdata(undolog_0_M02_AXI_RDATA),
        .S03_AXI_rready(undolog_0_M02_AXI_RREADY),
        .S03_AXI_rresp(undolog_0_M02_AXI_RRESP),
        .S03_AXI_rvalid(undolog_0_M02_AXI_RVALID),
        .S03_AXI_wdata(undolog_0_M02_AXI_WDATA),
        .S03_AXI_wready(undolog_0_M02_AXI_WREADY),
        .S03_AXI_wstrb(undolog_0_M02_AXI_WSTRB),
        .S03_AXI_wvalid(undolog_0_M02_AXI_WVALID),
        .S04_AXI_araddr(axi_dma_1_M_AXI_MM2S_ARADDR),
        .S04_AXI_arburst(axi_dma_1_M_AXI_MM2S_ARBURST),
        .S04_AXI_arcache(axi_dma_1_M_AXI_MM2S_ARCACHE),
        .S04_AXI_arlen(axi_dma_1_M_AXI_MM2S_ARLEN),
        .S04_AXI_arlock(1'b0),
        .S04_AXI_arprot(axi_dma_1_M_AXI_MM2S_ARPROT),
        .S04_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S04_AXI_arready(axi_dma_1_M_AXI_MM2S_ARREADY),
        .S04_AXI_arsize(axi_dma_1_M_AXI_MM2S_ARSIZE),
        .S04_AXI_arvalid(axi_dma_1_M_AXI_MM2S_ARVALID),
        .S04_AXI_rdata(axi_dma_1_M_AXI_MM2S_RDATA),
        .S04_AXI_rlast(axi_dma_1_M_AXI_MM2S_RLAST),
        .S04_AXI_rready(axi_dma_1_M_AXI_MM2S_RREADY),
        .S04_AXI_rresp(axi_dma_1_M_AXI_MM2S_RRESP),
        .S04_AXI_rvalid(axi_dma_1_M_AXI_MM2S_RVALID),
        .S05_AXI_awaddr(axi_dma_1_M_AXI_S2MM_AWADDR),
        .S05_AXI_awburst(axi_dma_1_M_AXI_S2MM_AWBURST),
        .S05_AXI_awcache(axi_dma_1_M_AXI_S2MM_AWCACHE),
        .S05_AXI_awlen(axi_dma_1_M_AXI_S2MM_AWLEN),
        .S05_AXI_awlock(1'b0),
        .S05_AXI_awprot(axi_dma_1_M_AXI_S2MM_AWPROT),
        .S05_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S05_AXI_awready(axi_dma_1_M_AXI_S2MM_AWREADY),
        .S05_AXI_awsize(axi_dma_1_M_AXI_S2MM_AWSIZE),
        .S05_AXI_awvalid(axi_dma_1_M_AXI_S2MM_AWVALID),
        .S05_AXI_bready(axi_dma_1_M_AXI_S2MM_BREADY),
        .S05_AXI_bresp(axi_dma_1_M_AXI_S2MM_BRESP),
        .S05_AXI_bvalid(axi_dma_1_M_AXI_S2MM_BVALID),
        .S05_AXI_wdata(axi_dma_1_M_AXI_S2MM_WDATA),
        .S05_AXI_wlast(axi_dma_1_M_AXI_S2MM_WLAST),
        .S05_AXI_wready(axi_dma_1_M_AXI_S2MM_WREADY),
        .S05_AXI_wstrb(axi_dma_1_M_AXI_S2MM_WSTRB),
        .S05_AXI_wvalid(axi_dma_1_M_AXI_S2MM_WVALID),
        .S06_AXI_araddr(undolog_1_M02_AXI_ARADDR),
        .S06_AXI_arprot(undolog_1_M02_AXI_ARPROT),
        .S06_AXI_arready(undolog_1_M02_AXI_ARREADY),
        .S06_AXI_arvalid(undolog_1_M02_AXI_ARVALID),
        .S06_AXI_awaddr(undolog_1_M02_AXI_AWADDR),
        .S06_AXI_awprot(undolog_1_M02_AXI_AWPROT),
        .S06_AXI_awready(undolog_1_M02_AXI_AWREADY),
        .S06_AXI_awvalid(undolog_1_M02_AXI_AWVALID),
        .S06_AXI_bready(undolog_1_M02_AXI_BREADY),
        .S06_AXI_bresp(undolog_1_M02_AXI_BRESP),
        .S06_AXI_bvalid(undolog_1_M02_AXI_BVALID),
        .S06_AXI_rdata(undolog_1_M02_AXI_RDATA),
        .S06_AXI_rready(undolog_1_M02_AXI_RREADY),
        .S06_AXI_rresp(undolog_1_M02_AXI_RRESP),
        .S06_AXI_rvalid(undolog_1_M02_AXI_RVALID),
        .S06_AXI_wdata(undolog_1_M02_AXI_WDATA),
        .S06_AXI_wready(undolog_1_M02_AXI_WREADY),
        .S06_AXI_wstrb(undolog_1_M02_AXI_WSTRB),
        .S06_AXI_wvalid(undolog_1_M02_AXI_WVALID),
        .S07_AXI_awaddr(axi_dma_2_M_AXI_S2MM_AWADDR),
        .S07_AXI_awburst(axi_dma_2_M_AXI_S2MM_AWBURST),
        .S07_AXI_awcache(axi_dma_2_M_AXI_S2MM_AWCACHE),
        .S07_AXI_awlen(axi_dma_2_M_AXI_S2MM_AWLEN),
        .S07_AXI_awlock(1'b0),
        .S07_AXI_awprot(axi_dma_2_M_AXI_S2MM_AWPROT),
        .S07_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S07_AXI_awready(axi_dma_2_M_AXI_S2MM_AWREADY),
        .S07_AXI_awsize(axi_dma_2_M_AXI_S2MM_AWSIZE),
        .S07_AXI_awvalid(axi_dma_2_M_AXI_S2MM_AWVALID),
        .S07_AXI_bready(axi_dma_2_M_AXI_S2MM_BREADY),
        .S07_AXI_bresp(axi_dma_2_M_AXI_S2MM_BRESP),
        .S07_AXI_bvalid(axi_dma_2_M_AXI_S2MM_BVALID),
        .S07_AXI_wdata(axi_dma_2_M_AXI_S2MM_WDATA),
        .S07_AXI_wlast(axi_dma_2_M_AXI_S2MM_WLAST),
        .S07_AXI_wready(axi_dma_2_M_AXI_S2MM_WREADY),
        .S07_AXI_wstrb(axi_dma_2_M_AXI_S2MM_WSTRB),
        .S07_AXI_wvalid(axi_dma_2_M_AXI_S2MM_WVALID),
        .S08_AXI_araddr(axi_dma_2_M_AXI_MM2S_ARADDR),
        .S08_AXI_arburst(axi_dma_2_M_AXI_MM2S_ARBURST),
        .S08_AXI_arcache(axi_dma_2_M_AXI_MM2S_ARCACHE),
        .S08_AXI_arlen(axi_dma_2_M_AXI_MM2S_ARLEN),
        .S08_AXI_arlock(1'b0),
        .S08_AXI_arprot(axi_dma_2_M_AXI_MM2S_ARPROT),
        .S08_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S08_AXI_arready(axi_dma_2_M_AXI_MM2S_ARREADY),
        .S08_AXI_arsize(axi_dma_2_M_AXI_MM2S_ARSIZE),
        .S08_AXI_arvalid(axi_dma_2_M_AXI_MM2S_ARVALID),
        .S08_AXI_rdata(axi_dma_2_M_AXI_MM2S_RDATA),
        .S08_AXI_rlast(axi_dma_2_M_AXI_MM2S_RLAST),
        .S08_AXI_rready(axi_dma_2_M_AXI_MM2S_RREADY),
        .S08_AXI_rresp(axi_dma_2_M_AXI_MM2S_RRESP),
        .S08_AXI_rvalid(axi_dma_2_M_AXI_MM2S_RVALID),
        .S09_AXI_awaddr(axi_dma_3_M_AXI_S2MM_AWADDR),
        .S09_AXI_awburst(axi_dma_3_M_AXI_S2MM_AWBURST),
        .S09_AXI_awcache(axi_dma_3_M_AXI_S2MM_AWCACHE),
        .S09_AXI_awlen(axi_dma_3_M_AXI_S2MM_AWLEN),
        .S09_AXI_awlock(1'b0),
        .S09_AXI_awprot(axi_dma_3_M_AXI_S2MM_AWPROT),
        .S09_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S09_AXI_awready(axi_dma_3_M_AXI_S2MM_AWREADY),
        .S09_AXI_awsize(axi_dma_3_M_AXI_S2MM_AWSIZE),
        .S09_AXI_awvalid(axi_dma_3_M_AXI_S2MM_AWVALID),
        .S09_AXI_bready(axi_dma_3_M_AXI_S2MM_BREADY),
        .S09_AXI_bresp(axi_dma_3_M_AXI_S2MM_BRESP),
        .S09_AXI_bvalid(axi_dma_3_M_AXI_S2MM_BVALID),
        .S09_AXI_wdata(axi_dma_3_M_AXI_S2MM_WDATA),
        .S09_AXI_wlast(axi_dma_3_M_AXI_S2MM_WLAST),
        .S09_AXI_wready(axi_dma_3_M_AXI_S2MM_WREADY),
        .S09_AXI_wstrb(axi_dma_3_M_AXI_S2MM_WSTRB),
        .S09_AXI_wvalid(axi_dma_3_M_AXI_S2MM_WVALID),
        .S10_AXI_araddr(axi_dma_3_M_AXI_MM2S_ARADDR),
        .S10_AXI_arburst(axi_dma_3_M_AXI_MM2S_ARBURST),
        .S10_AXI_arcache(axi_dma_3_M_AXI_MM2S_ARCACHE),
        .S10_AXI_arlen(axi_dma_3_M_AXI_MM2S_ARLEN),
        .S10_AXI_arlock(1'b0),
        .S10_AXI_arprot(axi_dma_3_M_AXI_MM2S_ARPROT),
        .S10_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S10_AXI_arready(axi_dma_3_M_AXI_MM2S_ARREADY),
        .S10_AXI_arsize(axi_dma_3_M_AXI_MM2S_ARSIZE),
        .S10_AXI_arvalid(axi_dma_3_M_AXI_MM2S_ARVALID),
        .S10_AXI_rdata(axi_dma_3_M_AXI_MM2S_RDATA),
        .S10_AXI_rlast(axi_dma_3_M_AXI_MM2S_RLAST),
        .S10_AXI_rready(axi_dma_3_M_AXI_MM2S_RREADY),
        .S10_AXI_rresp(axi_dma_3_M_AXI_MM2S_RRESP),
        .S10_AXI_rvalid(axi_dma_3_M_AXI_MM2S_RVALID),
        .S11_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .S11_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .S11_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .S11_AXI_arid(smartconnect_0_M00_AXI_ARID),
        .S11_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .S11_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .S11_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .S11_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .S11_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .S11_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .S11_AXI_aruser(smartconnect_0_M00_AXI_ARUSER),
        .S11_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .S11_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .S11_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .S11_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .S11_AXI_awid(smartconnect_0_M00_AXI_AWID),
        .S11_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .S11_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .S11_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .S11_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .S11_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .S11_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .S11_AXI_awuser(smartconnect_0_M00_AXI_AWUSER),
        .S11_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .S11_AXI_bid(smartconnect_0_M00_AXI_BID),
        .S11_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .S11_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .S11_AXI_buser(smartconnect_0_M00_AXI_BUSER),
        .S11_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .S11_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .S11_AXI_rid(smartconnect_0_M00_AXI_RID),
        .S11_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .S11_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .S11_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .S11_AXI_ruser(smartconnect_0_M00_AXI_RUSER),
        .S11_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .S11_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .S11_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .S11_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .S11_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .S11_AXI_wuser(smartconnect_0_M00_AXI_WUSER),
        .S11_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S12_AXI_araddr(1'b0),
        .S12_AXI_arburst({1'b0,1'b1}),
        .S12_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S12_AXI_arid(1'b0),
        .S12_AXI_arlen(1'b0),
        .S12_AXI_arlock(1'b0),
        .S12_AXI_arprot({1'b0,1'b0,1'b0}),
        .S12_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S12_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S12_AXI_arsize({1'b0,1'b1,1'b0}),
        .S12_AXI_aruser(1'b0),
        .S12_AXI_arvalid(1'b0),
        .S12_AXI_awaddr(1'b0),
        .S12_AXI_awburst({1'b0,1'b1}),
        .S12_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S12_AXI_awid(1'b0),
        .S12_AXI_awlen(1'b0),
        .S12_AXI_awlock(1'b0),
        .S12_AXI_awprot({1'b0,1'b0,1'b0}),
        .S12_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S12_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S12_AXI_awsize({1'b0,1'b1,1'b0}),
        .S12_AXI_awuser(1'b0),
        .S12_AXI_awvalid(1'b0),
        .S12_AXI_bready(1'b0),
        .S12_AXI_rready(1'b0),
        .S12_AXI_wdata(1'b0),
        .S12_AXI_wid(1'b0),
        .S12_AXI_wlast(1'b0),
        .S12_AXI_wstrb(1'b1),
        .S12_AXI_wuser(1'b0),
        .S12_AXI_wvalid(1'b0),
        .S13_AXI_araddr(1'b0),
        .S13_AXI_arburst({1'b0,1'b1}),
        .S13_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S13_AXI_arid(1'b0),
        .S13_AXI_arlen(1'b0),
        .S13_AXI_arlock(1'b0),
        .S13_AXI_arprot({1'b0,1'b0,1'b0}),
        .S13_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S13_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S13_AXI_arsize({1'b0,1'b1,1'b0}),
        .S13_AXI_aruser(1'b0),
        .S13_AXI_arvalid(1'b0),
        .S13_AXI_awaddr(1'b0),
        .S13_AXI_awburst({1'b0,1'b1}),
        .S13_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S13_AXI_awid(1'b0),
        .S13_AXI_awlen(1'b0),
        .S13_AXI_awlock(1'b0),
        .S13_AXI_awprot({1'b0,1'b0,1'b0}),
        .S13_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S13_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S13_AXI_awsize({1'b0,1'b1,1'b0}),
        .S13_AXI_awuser(1'b0),
        .S13_AXI_awvalid(1'b0),
        .S13_AXI_bready(1'b0),
        .S13_AXI_rready(1'b0),
        .S13_AXI_wdata(1'b0),
        .S13_AXI_wid(1'b0),
        .S13_AXI_wlast(1'b0),
        .S13_AXI_wstrb(1'b1),
        .S13_AXI_wuser(1'b0),
        .S13_AXI_wvalid(1'b0),
        .S14_AXI_araddr(1'b0),
        .S14_AXI_arburst({1'b0,1'b1}),
        .S14_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S14_AXI_arid(1'b0),
        .S14_AXI_arlen(1'b0),
        .S14_AXI_arlock(1'b0),
        .S14_AXI_arprot({1'b0,1'b0,1'b0}),
        .S14_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S14_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S14_AXI_arsize({1'b0,1'b1,1'b0}),
        .S14_AXI_aruser(1'b0),
        .S14_AXI_arvalid(1'b0),
        .S14_AXI_awaddr(1'b0),
        .S14_AXI_awburst({1'b0,1'b1}),
        .S14_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S14_AXI_awid(1'b0),
        .S14_AXI_awlen(1'b0),
        .S14_AXI_awlock(1'b0),
        .S14_AXI_awprot({1'b0,1'b0,1'b0}),
        .S14_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S14_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S14_AXI_awsize({1'b0,1'b1,1'b0}),
        .S14_AXI_awuser(1'b0),
        .S14_AXI_awvalid(1'b0),
        .S14_AXI_bready(1'b0),
        .S14_AXI_rready(1'b0),
        .S14_AXI_wdata(1'b0),
        .S14_AXI_wid(1'b0),
        .S14_AXI_wlast(1'b0),
        .S14_AXI_wstrb(1'b1),
        .S14_AXI_wuser(1'b0),
        .S14_AXI_wvalid(1'b0),
        .aclk(ddr4_0_c0_ddr4_ui_clk),
        .aclk1(xdma_0_axi_aclk),
        .aclk2(ddr4_0_addn_ui_clkout1),
        .aclk3(microblaze_0_Clk),
        .aresetn(xdma_0_axi_aresetn));
  design_1_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(ddr4_0_addn_ui_clkout1),
        .s_axis_aresetn(rst_ddr4_0_300M_interconnect_aresetn),
        .s_axis_tdata(xlconstant_1_dout),
        .s_axis_tkeep(axi_dma_0_m_axis_mm2s_tkeep),
        .s_axis_tlast(axi_dma_0_m_axis_mm2s_tlast),
        .s_axis_tready(axis_data_fifo_0_s_axis_tready),
        .s_axis_tvalid(axi_dma_0_m_axis_mm2s_tvalid));
  design_1_axis_data_fifo_0_1 axis_data_fifo_1
       (.m_axis_tdata(axis_data_fifo_1_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_1_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_1_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_1_M_AXIS_TVALID),
        .s_axis_aclk(ddr4_0_addn_ui_clkout1),
        .s_axis_aresetn(rst_ddr4_0_300M_interconnect_aresetn),
        .s_axis_tdata(axi_dma_1_M_AXIS_MM2S_TDATA),
        .s_axis_tkeep(axi_dma_1_M_AXIS_MM2S_TKEEP),
        .s_axis_tlast(axi_dma_1_M_AXIS_MM2S_TLAST),
        .s_axis_tready(axi_dma_1_M_AXIS_MM2S_TREADY),
        .s_axis_tvalid(axi_dma_1_M_AXIS_MM2S_TVALID));
  design_1_axis_data_fifo_0_2 axis_data_fifo_2
       (.m_axis_tdata(axis_data_fifo_2_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_2_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_2_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_2_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_2_M_AXIS_TVALID),
        .s_axis_aclk(ddr4_0_addn_ui_clkout1),
        .s_axis_aresetn(rst_ddr4_0_300M_interconnect_aresetn),
        .s_axis_tdata(axi_dma_2_M_AXIS_MM2S_TDATA),
        .s_axis_tkeep(axi_dma_2_M_AXIS_MM2S_TKEEP),
        .s_axis_tlast(axi_dma_2_M_AXIS_MM2S_TLAST),
        .s_axis_tready(axi_dma_2_M_AXIS_MM2S_TREADY),
        .s_axis_tvalid(axi_dma_2_M_AXIS_MM2S_TVALID));
  design_1_axis_data_fifo_2_0 axis_data_fifo_3
       (.m_axis_tdata(axis_data_fifo_3_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_3_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_3_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_3_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_3_M_AXIS_TVALID),
        .s_axis_aclk(ddr4_0_addn_ui_clkout1),
        .s_axis_aresetn(rst_ddr4_0_300M_interconnect_aresetn),
        .s_axis_tdata(axi_dma_3_M_AXIS_MM2S_TDATA),
        .s_axis_tkeep(axi_dma_3_M_AXIS_MM2S_TKEEP),
        .s_axis_tlast(axi_dma_3_M_AXIS_MM2S_TLAST),
        .s_axis_tready(axi_dma_3_M_AXIS_MM2S_TREADY),
        .s_axis_tvalid(axi_dma_3_M_AXIS_MM2S_TVALID));
  design_1_axis_data_fifo_0_3 axis_data_fifo_4
       (.m_axis_tdata(axis_data_fifo_4_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_4_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_4_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_4_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_4_M_AXIS_TVALID),
        .s_axis_aclk(microblaze_0_Clk),
        .s_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axis_tdata(xlconstant_1_dout),
        .s_axis_tkeep(axi_dma_4_m_axis_mm2s_tkeep),
        .s_axis_tlast(axi_dma_4_m_axis_mm2s_tlast),
        .s_axis_tready(axis_data_fifo_4_s_axis_tready),
        .s_axis_tvalid(axi_dma_4_m_axis_mm2s_tvalid));
  design_1_axis_data_fifo_1_0 axis_data_fifo_5
       (.m_axis_tdata(axis_data_fifo_5_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_5_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_5_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_5_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_5_M_AXIS_TVALID),
        .s_axis_aclk(microblaze_0_Clk),
        .s_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axis_tdata(axi_dma_5_M_AXIS_MM2S_TDATA),
        .s_axis_tkeep(axi_dma_5_M_AXIS_MM2S_TKEEP),
        .s_axis_tlast(axi_dma_5_M_AXIS_MM2S_TLAST),
        .s_axis_tready(axi_dma_5_M_AXIS_MM2S_TREADY),
        .s_axis_tvalid(axi_dma_5_M_AXIS_MM2S_TVALID));
  design_1_axis_data_fifo_0_4 axis_data_fifo_6
       (.m_axis_tdata(axis_data_fifo_6_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_6_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_6_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_6_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_6_M_AXIS_TVALID),
        .s_axis_aclk(microblaze_0_Clk),
        .s_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axis_tdata(xlconstant_1_dout),
        .s_axis_tkeep(axi_dma_6_m_axis_mm2s_tkeep),
        .s_axis_tlast(axi_dma_6_m_axis_mm2s_tlast),
        .s_axis_tready(axis_data_fifo_6_s_axis_tready),
        .s_axis_tvalid(axi_dma_6_m_axis_mm2s_tvalid));
  design_1_axis_data_fifo_6_0 axis_data_fifo_7
       (.m_axis_tdata(axis_data_fifo_7_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_7_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_7_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_7_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_7_M_AXIS_TVALID),
        .s_axis_aclk(microblaze_0_Clk),
        .s_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axis_tdata(axi_dma_7_M_AXIS_MM2S_TDATA),
        .s_axis_tkeep(axi_dma_7_M_AXIS_MM2S_TKEEP),
        .s_axis_tlast(axi_dma_7_M_AXIS_MM2S_TLAST),
        .s_axis_tready(axi_dma_7_M_AXIS_MM2S_TREADY),
        .s_axis_tvalid(axi_dma_7_M_AXIS_MM2S_TVALID));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(user_si570_clock_1_CLK_N),
        .clk_in1_p(user_si570_clock_1_CLK_P),
        .clk_out1(microblaze_0_Clk),
        .reset(1'b0));
  design_1_ddr4_0_0 ddr4_0
       (.addn_ui_clkout1(ddr4_0_addn_ui_clkout1),
        .c0_ddr4_act_n(ddr4_0_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddr4_0_C0_DDR4_ADR),
        .c0_ddr4_aresetn(rst_ddr4_0_300M_2_peripheral_aresetn),
        .c0_ddr4_ba(ddr4_0_C0_DDR4_BA),
        .c0_ddr4_bg(ddr4_0_C0_DDR4_BG),
        .c0_ddr4_ck_c(ddr4_0_C0_DDR4_CK_C),
        .c0_ddr4_ck_t(ddr4_0_C0_DDR4_CK_T),
        .c0_ddr4_cke(ddr4_0_C0_DDR4_CKE),
        .c0_ddr4_cs_n(ddr4_0_C0_DDR4_CS_N),
        .c0_ddr4_dm_dbi_n(ddr4_sdram_c1_dm_n[7:0]),
        .c0_ddr4_dq(ddr4_sdram_c1_dq[63:0]),
        .c0_ddr4_dqs_c(ddr4_sdram_c1_dqs_c[7:0]),
        .c0_ddr4_dqs_t(ddr4_sdram_c1_dqs_t[7:0]),
        .c0_ddr4_odt(ddr4_0_C0_DDR4_ODT),
        .c0_ddr4_reset_n(ddr4_0_C0_DDR4_RESET_N),
        .c0_ddr4_s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .c0_ddr4_s_axi_arburst(axi_smc_M00_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(axi_smc_M00_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(1'b0),
        .c0_ddr4_s_axi_arlen(axi_smc_M00_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(axi_smc_M00_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(axi_smc_M00_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(axi_smc_M00_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize(axi_smc_M00_AXI_ARSIZE),
        .c0_ddr4_s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .c0_ddr4_s_axi_awburst(axi_smc_M00_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(axi_smc_M00_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(1'b0),
        .c0_ddr4_s_axi_awlen(axi_smc_M00_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(axi_smc_M00_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(axi_smc_M00_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(axi_smc_M00_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize(axi_smc_M00_AXI_AWSIZE),
        .c0_ddr4_s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .c0_ddr4_s_axi_bready(axi_smc_M00_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .c0_ddr4_s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .c0_ddr4_s_axi_rlast(axi_smc_M00_AXI_RLAST),
        .c0_ddr4_s_axi_rready(axi_smc_M00_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(axi_smc_M00_AXI_WLAST),
        .c0_ddr4_s_axi_wready(axi_smc_M00_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(axi_smc_M00_AXI_WVALID),
        .c0_ddr4_ui_clk(ddr4_0_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .c0_sys_clk_n(default_250mhz_clk1_1_CLK_N),
        .c0_sys_clk_p(default_250mhz_clk1_1_CLK_P),
        .sys_rst(reset_1));
  design_1_gate_axi_0_0 gate_axi_0
       (.aresetn(xdma_0_axi_aresetn),
        .arready_in(axi_smc_S00_AXI_arready),
        .arready_out(gate_axi_0_arready_out),
        .arvalid_in(smartconnect_1_M00_AXI_arvalid),
        .arvalid_out(gate_axi_0_arvalid_out),
        .awaddr_in(smartconnect_1_M00_AXI_awaddr),
        .awaddr_out(gate_axi_0_awaddr_out),
        .awready_in(axi_smc_S00_AXI_awready),
        .awready_out(gate_axi_0_awready_out),
        .awvalid_in(smartconnect_1_M00_AXI_awvalid),
        .awvalid_out(gate_axi_0_awvalid_out),
        .bready_in(smartconnect_1_M00_AXI_bready),
        .bready_out(gate_axi_0_bready_out),
        .bvalid_in(axi_smc_S00_AXI_bvalid),
        .bvalid_out(gate_axi_0_bvalid_out),
        .clk_dest(xdma_0_axi_aclk),
        .clk_src(ddr4_0_addn_ui_clkout1),
        .ndp_not_inuse(memops_scheduler_0_ndp_not_inuse),
        .rready_in(smartconnect_1_M00_AXI_rready),
        .rready_out(gate_axi_0_rready_out),
        .rvalid_in(axi_smc_S00_AXI_rvalid),
        .rvalid_out(gate_axi_0_rvalid_out),
        .wready_in(axi_smc_S00_AXI_wready),
        .wready_out(gate_axi_0_wready_out),
        .wvalid_in(smartconnect_1_M00_AXI_wvalid),
        .wvalid_out(gate_axi_0_wvalid_out));
  design_1_ila_0_1 ila_0
       (.clk(xdma_0_axi_aclk),
        .probe0(addrmonitor_0_state),
        .probe1(addrmonitor_0_physicaladdr),
        .probe2(addrmonitor_0_virtualaddr),
        .probe3(addrmonitor_0_offset),
        .probe4(addrmonitor_0_count),
        .probe5(xdma_0_axi_aresetn),
        .probe6(addrmonitor_0_pmem_obj_offset_valid));
  design_1_ila_1_0 ila_1
       (.clk(ddr4_0_addn_ui_clkout1),
        .probe0(axis_data_fifo_1_M_AXIS_TREADY),
        .probe1(axis_data_fifo_1_M_AXIS_TDATA),
        .probe2({1'b1,1'b1,1'b1,1'b1}),
        .probe3(axis_data_fifo_1_M_AXIS_TVALID),
        .probe4(axis_data_fifo_1_M_AXIS_TLAST),
        .probe5(1'b0),
        .probe6(axis_data_fifo_1_M_AXIS_TKEEP),
        .probe7(1'b0),
        .probe8(1'b0));
  design_1_ila_2_0 ila_2
       (.clk(ddr4_0_addn_ui_clkout1),
        .probe0(memops_scheduler_1_done_count),
        .probe1(memops_scheduler_1_start_count),
        .probe2(memops_scheduler_1_mst_exec_state),
        .probe3(memops_scheduler_1_ndp_start),
        .probe4(memops_scheduler_1_offset_reg1_valid),
        .probe5(memops_scheduler_1_offset_reg2_valid),
        .probe6(memops_scheduler_1_vaddr_offset_count),
        .probe7(memops_scheduler_1_offset_read_enable),
        .probe8(memops_scheduler_1_ndp_done),
        .probe9(memops_scheduler_0_ndp_not_inuse));
  design_1_ila_3_0 ila_3
       (.clk(ddr4_0_addn_ui_clkout1),
        .probe0(undolog_0_data_copy_pulse),
        .probe1(undolog_0_datacpy_done),
        .probe2(undolog_0_log_size),
        .probe3(undolog_0_log_src),
        .probe4(undolog_0_ulog_offset),
        .probe5(undolog_0_regout));
  design_1_mdm_1_0 mdm_1
       (.Dbg_TDO_0(1'b0),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst));
  design_1_memops_scheduler_1_0 memops_scheduler_1
       (.axi_awaddr_in(addrmonitor_0_m00_axi_awaddr),
        .axi_awvalid_in(addrmonitor_0_m00_axi_awvalid),
        .done_count(memops_scheduler_1_done_count),
        .m00_axi_aclk(ddr4_0_addn_ui_clkout1),
        .m00_axi_araddr(memops_scheduler_1_M00_AXI_ARADDR),
        .m00_axi_aresetn(rst_ddr4_0_300M_1_peripheral_aresetn),
        .m00_axi_arprot(memops_scheduler_1_M00_AXI_ARPROT),
        .m00_axi_arready(memops_scheduler_1_M00_AXI_ARREADY),
        .m00_axi_arvalid(memops_scheduler_1_M00_AXI_ARVALID),
        .m00_axi_awaddr(memops_scheduler_1_M00_AXI_AWADDR),
        .m00_axi_awprot(memops_scheduler_1_M00_AXI_AWPROT),
        .m00_axi_awready(memops_scheduler_1_M00_AXI_AWREADY),
        .m00_axi_awvalid(memops_scheduler_1_M00_AXI_AWVALID),
        .m00_axi_bready(memops_scheduler_1_M00_AXI_BREADY),
        .m00_axi_bresp(memops_scheduler_1_M00_AXI_BRESP),
        .m00_axi_bvalid(memops_scheduler_1_M00_AXI_BVALID),
        .m00_axi_rdata(memops_scheduler_1_M00_AXI_RDATA),
        .m00_axi_rready(memops_scheduler_1_M00_AXI_RREADY),
        .m00_axi_rresp(memops_scheduler_1_M00_AXI_RRESP),
        .m00_axi_rvalid(memops_scheduler_1_M00_AXI_RVALID),
        .m00_axi_wdata(memops_scheduler_1_M00_AXI_WDATA),
        .m00_axi_wready(memops_scheduler_1_M00_AXI_WREADY),
        .m00_axi_wstrb(memops_scheduler_1_M00_AXI_WSTRB),
        .m00_axi_wvalid(memops_scheduler_1_M00_AXI_WVALID),
        .m01_axi_aclk(ddr4_0_addn_ui_clkout1),
        .m01_axi_araddr(memops_scheduler_1_M01_AXI_ARADDR),
        .m01_axi_arprot(memops_scheduler_1_M01_AXI_ARPROT),
        .m01_axi_arready(memops_scheduler_1_M01_AXI_ARREADY),
        .m01_axi_arvalid(memops_scheduler_1_M01_AXI_ARVALID),
        .m01_axi_awaddr(memops_scheduler_1_M01_AXI_AWADDR),
        .m01_axi_awprot(memops_scheduler_1_M01_AXI_AWPROT),
        .m01_axi_awready(memops_scheduler_1_M01_AXI_AWREADY),
        .m01_axi_awvalid(memops_scheduler_1_M01_AXI_AWVALID),
        .m01_axi_bready(memops_scheduler_1_M01_AXI_BREADY),
        .m01_axi_bresp(memops_scheduler_1_M01_AXI_BRESP),
        .m01_axi_bvalid(memops_scheduler_1_M01_AXI_BVALID),
        .m01_axi_rdata(memops_scheduler_1_M01_AXI_RDATA),
        .m01_axi_rready(memops_scheduler_1_M01_AXI_RREADY),
        .m01_axi_rresp(memops_scheduler_1_M01_AXI_RRESP),
        .m01_axi_rvalid(memops_scheduler_1_M01_AXI_RVALID),
        .m01_axi_wdata(memops_scheduler_1_M01_AXI_WDATA),
        .m01_axi_wready(memops_scheduler_1_M01_AXI_WREADY),
        .m01_axi_wstrb(memops_scheduler_1_M01_AXI_WSTRB),
        .m01_axi_wvalid(memops_scheduler_1_M01_AXI_WVALID),
        .m02_axi_aclk(ddr4_0_addn_ui_clkout1),
        .m02_axi_araddr(memops_scheduler_1_M02_AXI_ARADDR),
        .m02_axi_arprot(memops_scheduler_1_M02_AXI_ARPROT),
        .m02_axi_arready(memops_scheduler_1_M02_AXI_ARREADY),
        .m02_axi_arvalid(memops_scheduler_1_M02_AXI_ARVALID),
        .m02_axi_awaddr(memops_scheduler_1_M02_AXI_AWADDR),
        .m02_axi_awprot(memops_scheduler_1_M02_AXI_AWPROT),
        .m02_axi_awready(memops_scheduler_1_M02_AXI_AWREADY),
        .m02_axi_awvalid(memops_scheduler_1_M02_AXI_AWVALID),
        .m02_axi_bready(memops_scheduler_1_M02_AXI_BREADY),
        .m02_axi_bresp(memops_scheduler_1_M02_AXI_BRESP),
        .m02_axi_bvalid(memops_scheduler_1_M02_AXI_BVALID),
        .m02_axi_rdata(memops_scheduler_1_M02_AXI_RDATA),
        .m02_axi_rready(memops_scheduler_1_M02_AXI_RREADY),
        .m02_axi_rresp(memops_scheduler_1_M02_AXI_RRESP),
        .m02_axi_rvalid(memops_scheduler_1_M02_AXI_RVALID),
        .m02_axi_wdata(memops_scheduler_1_M02_AXI_WDATA),
        .m02_axi_wready(memops_scheduler_1_M02_AXI_WREADY),
        .m02_axi_wstrb(memops_scheduler_1_M02_AXI_WSTRB),
        .m02_axi_wvalid(memops_scheduler_1_M02_AXI_WVALID),
        .m03_axi_aclk(ddr4_0_addn_ui_clkout1),
        .m03_axi_araddr(memops_scheduler_1_M03_AXI_ARADDR),
        .m03_axi_arprot(memops_scheduler_1_M03_AXI_ARPROT),
        .m03_axi_arready(memops_scheduler_1_M03_AXI_ARREADY),
        .m03_axi_arvalid(memops_scheduler_1_M03_AXI_ARVALID),
        .m03_axi_awaddr(memops_scheduler_1_M03_AXI_AWADDR),
        .m03_axi_awprot(memops_scheduler_1_M03_AXI_AWPROT),
        .m03_axi_awready(memops_scheduler_1_M03_AXI_AWREADY),
        .m03_axi_awvalid(memops_scheduler_1_M03_AXI_AWVALID),
        .m03_axi_bready(memops_scheduler_1_M03_AXI_BREADY),
        .m03_axi_bresp(memops_scheduler_1_M03_AXI_BRESP),
        .m03_axi_bvalid(memops_scheduler_1_M03_AXI_BVALID),
        .m03_axi_rdata(memops_scheduler_1_M03_AXI_RDATA),
        .m03_axi_rready(memops_scheduler_1_M03_AXI_RREADY),
        .m03_axi_rresp(memops_scheduler_1_M03_AXI_RRESP),
        .m03_axi_rvalid(memops_scheduler_1_M03_AXI_RVALID),
        .m03_axi_wdata(memops_scheduler_1_M03_AXI_WDATA),
        .m03_axi_wready(memops_scheduler_1_M03_AXI_WREADY),
        .m03_axi_wstrb(memops_scheduler_1_M03_AXI_WSTRB),
        .m03_axi_wvalid(memops_scheduler_1_M03_AXI_WVALID),
        .m04_axi_arready(1'b0),
        .m04_axi_awready(1'b0),
        .m04_axi_bresp({1'b0,1'b0}),
        .m04_axi_bvalid(1'b0),
        .m04_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m04_axi_rresp({1'b0,1'b0}),
        .m04_axi_rvalid(1'b0),
        .m04_axi_wready(1'b0),
        .m05_axi_arready(1'b0),
        .m05_axi_awready(1'b0),
        .m05_axi_bresp({1'b0,1'b0}),
        .m05_axi_bvalid(1'b0),
        .m05_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m05_axi_rresp({1'b0,1'b0}),
        .m05_axi_rvalid(1'b0),
        .m05_axi_wready(1'b0),
        .m06_axi_arready(1'b0),
        .m06_axi_awready(1'b0),
        .m06_axi_bresp({1'b0,1'b0}),
        .m06_axi_bvalid(1'b0),
        .m06_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m06_axi_rresp({1'b0,1'b0}),
        .m06_axi_rvalid(1'b0),
        .m06_axi_wready(1'b0),
        .m07_axi_arready(1'b0),
        .m07_axi_awready(1'b0),
        .m07_axi_bresp({1'b0,1'b0}),
        .m07_axi_bvalid(1'b0),
        .m07_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m07_axi_rresp({1'b0,1'b0}),
        .m07_axi_rvalid(1'b0),
        .m07_axi_wready(1'b0),
        .mst_exec_state(memops_scheduler_1_mst_exec_state),
        .ndp_done(memops_scheduler_1_ndp_done),
        .ndp_not_inuse(memops_scheduler_0_ndp_not_inuse),
        .ndp_start(memops_scheduler_1_ndp_start),
        .offset(addrmonitor_0_pmem_obj_offset),
        .offset_read_addr(memops_scheduler_1_offset_read_addr),
        .offset_read_enable(memops_scheduler_1_offset_read_enable),
        .offset_reg1_valid(memops_scheduler_1_offset_reg1_valid),
        .offset_reg2_valid(memops_scheduler_1_offset_reg2_valid),
        .offset_valid(addrmonitor_0_pmem_obj_offset_valid),
        .s00_axi_aclk(ddr4_0_addn_ui_clkout1),
        .s00_axi_araddr(smartconnect_1_M01_AXI_ARADDR),
        .s00_axi_aresetn(rst_ddr4_0_300M_1_peripheral_aresetn),
        .s00_axi_arprot(smartconnect_1_M01_AXI_ARPROT),
        .s00_axi_arready(smartconnect_1_M01_AXI_ARREADY),
        .s00_axi_arvalid(smartconnect_1_M01_AXI_ARVALID),
        .s00_axi_awaddr(smartconnect_1_M01_AXI_AWADDR),
        .s00_axi_awprot(smartconnect_1_M01_AXI_AWPROT),
        .s00_axi_awready(smartconnect_1_M01_AXI_AWREADY),
        .s00_axi_awvalid(smartconnect_1_M01_AXI_AWVALID),
        .s00_axi_bready(smartconnect_1_M01_AXI_BREADY),
        .s00_axi_bresp(smartconnect_1_M01_AXI_BRESP),
        .s00_axi_bvalid(smartconnect_1_M01_AXI_BVALID),
        .s00_axi_rdata(smartconnect_1_M01_AXI_RDATA),
        .s00_axi_rready(smartconnect_1_M01_AXI_RREADY),
        .s00_axi_rresp(smartconnect_1_M01_AXI_RRESP),
        .s00_axi_rvalid(smartconnect_1_M01_AXI_RVALID),
        .s00_axi_wdata(smartconnect_1_M01_AXI_WDATA),
        .s00_axi_wready(smartconnect_1_M01_AXI_WREADY),
        .s00_axi_wstrb(smartconnect_1_M01_AXI_WSTRB),
        .s00_axi_wvalid(smartconnect_1_M01_AXI_WVALID),
        .start_count(memops_scheduler_1_start_count),
        .vaddr_offset_count(memops_scheduler_1_vaddr_offset_count));
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(microblaze_0_Clk));
  design_1_rst_ddr4_0_300M_0 rst_ddr4_0_300M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .interconnect_aresetn(rst_ddr4_0_300M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ddr4_0_300M_peripheral_aresetn),
        .slowest_sync_clk(ddr4_0_addn_ui_clkout1));
  design_1_rst_ddr4_0_300M_1_0 rst_ddr4_0_300M_1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ddr4_0_300M_1_peripheral_aresetn),
        .slowest_sync_clk(ddr4_0_addn_ui_clkout1));
  design_1_rst_ddr4_0_300M_2_0 rst_ddr4_0_300M_2
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ddr4_0_300M_2_peripheral_aresetn),
        .slowest_sync_clk(ddr4_0_c0_ddr4_ui_clk));
  design_1_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(smartconnect_0_M00_AXI_ARID),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_aruser(smartconnect_0_M00_AXI_ARUSER),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(smartconnect_0_M00_AXI_AWID),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awuser(smartconnect_0_M00_AXI_AWUSER),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bid(smartconnect_0_M00_AXI_BID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_buser(smartconnect_0_M00_AXI_BUSER),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rid(smartconnect_0_M00_AXI_RID),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_ruser(smartconnect_0_M00_AXI_RUSER),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wuser(smartconnect_0_M00_AXI_WUSER),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_dma_4_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_dma_4_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_dma_4_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_dma_4_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_dma_4_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_dma_4_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_dma_4_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(axi_dma_4_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(axi_dma_4_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_dma_4_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_dma_4_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_dma_4_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_dma_4_M_AXI_MM2S_RVALID),
        .S01_AXI_awaddr(axi_dma_4_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_dma_4_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_dma_4_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_dma_4_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(axi_dma_4_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(axi_dma_4_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_dma_4_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_dma_4_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_dma_4_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_dma_4_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_dma_4_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(axi_dma_4_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_dma_4_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_dma_4_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_dma_4_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_dma_4_M_AXI_S2MM_WVALID),
        .S02_AXI_araddr(axi_dma_5_M_AXI_MM2S_ARADDR),
        .S02_AXI_arburst(axi_dma_5_M_AXI_MM2S_ARBURST),
        .S02_AXI_arcache(axi_dma_5_M_AXI_MM2S_ARCACHE),
        .S02_AXI_arlen(axi_dma_5_M_AXI_MM2S_ARLEN),
        .S02_AXI_arlock(1'b0),
        .S02_AXI_arprot(axi_dma_5_M_AXI_MM2S_ARPROT),
        .S02_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_arready(axi_dma_5_M_AXI_MM2S_ARREADY),
        .S02_AXI_arsize(axi_dma_5_M_AXI_MM2S_ARSIZE),
        .S02_AXI_arvalid(axi_dma_5_M_AXI_MM2S_ARVALID),
        .S02_AXI_rdata(axi_dma_5_M_AXI_MM2S_RDATA),
        .S02_AXI_rlast(axi_dma_5_M_AXI_MM2S_RLAST),
        .S02_AXI_rready(axi_dma_5_M_AXI_MM2S_RREADY),
        .S02_AXI_rresp(axi_dma_5_M_AXI_MM2S_RRESP),
        .S02_AXI_rvalid(axi_dma_5_M_AXI_MM2S_RVALID),
        .S03_AXI_awaddr(axi_dma_5_M_AXI_S2MM_AWADDR),
        .S03_AXI_awburst(axi_dma_5_M_AXI_S2MM_AWBURST),
        .S03_AXI_awcache(axi_dma_5_M_AXI_S2MM_AWCACHE),
        .S03_AXI_awlen(axi_dma_5_M_AXI_S2MM_AWLEN),
        .S03_AXI_awlock(1'b0),
        .S03_AXI_awprot(axi_dma_5_M_AXI_S2MM_AWPROT),
        .S03_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_awready(axi_dma_5_M_AXI_S2MM_AWREADY),
        .S03_AXI_awsize(axi_dma_5_M_AXI_S2MM_AWSIZE),
        .S03_AXI_awvalid(axi_dma_5_M_AXI_S2MM_AWVALID),
        .S03_AXI_bready(axi_dma_5_M_AXI_S2MM_BREADY),
        .S03_AXI_bresp(axi_dma_5_M_AXI_S2MM_BRESP),
        .S03_AXI_bvalid(axi_dma_5_M_AXI_S2MM_BVALID),
        .S03_AXI_wdata(axi_dma_5_M_AXI_S2MM_WDATA),
        .S03_AXI_wlast(axi_dma_5_M_AXI_S2MM_WLAST),
        .S03_AXI_wready(axi_dma_5_M_AXI_S2MM_WREADY),
        .S03_AXI_wstrb(axi_dma_5_M_AXI_S2MM_WSTRB),
        .S03_AXI_wvalid(axi_dma_5_M_AXI_S2MM_WVALID),
        .S04_AXI_araddr(undolog_2_M02_AXI_ARADDR),
        .S04_AXI_arprot(undolog_2_M02_AXI_ARPROT),
        .S04_AXI_arready(undolog_2_M02_AXI_ARREADY),
        .S04_AXI_arvalid(undolog_2_M02_AXI_ARVALID),
        .S04_AXI_awaddr(undolog_2_M02_AXI_AWADDR),
        .S04_AXI_awprot(undolog_2_M02_AXI_AWPROT),
        .S04_AXI_awready(undolog_2_M02_AXI_AWREADY),
        .S04_AXI_awvalid(undolog_2_M02_AXI_AWVALID),
        .S04_AXI_bready(undolog_2_M02_AXI_BREADY),
        .S04_AXI_bresp(undolog_2_M02_AXI_BRESP),
        .S04_AXI_bvalid(undolog_2_M02_AXI_BVALID),
        .S04_AXI_rdata(undolog_2_M02_AXI_RDATA),
        .S04_AXI_rready(undolog_2_M02_AXI_RREADY),
        .S04_AXI_rresp(undolog_2_M02_AXI_RRESP),
        .S04_AXI_rvalid(undolog_2_M02_AXI_RVALID),
        .S04_AXI_wdata(undolog_2_M02_AXI_WDATA),
        .S04_AXI_wready(undolog_2_M02_AXI_WREADY),
        .S04_AXI_wstrb(undolog_2_M02_AXI_WSTRB),
        .S04_AXI_wvalid(undolog_2_M02_AXI_WVALID),
        .S05_AXI_araddr(axi_dma_6_M_AXI_MM2S_ARADDR),
        .S05_AXI_arburst(axi_dma_6_M_AXI_MM2S_ARBURST),
        .S05_AXI_arcache(axi_dma_6_M_AXI_MM2S_ARCACHE),
        .S05_AXI_arlen(axi_dma_6_M_AXI_MM2S_ARLEN),
        .S05_AXI_arlock(1'b0),
        .S05_AXI_arprot(axi_dma_6_M_AXI_MM2S_ARPROT),
        .S05_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S05_AXI_arready(axi_dma_6_M_AXI_MM2S_ARREADY),
        .S05_AXI_arsize(axi_dma_6_M_AXI_MM2S_ARSIZE),
        .S05_AXI_arvalid(axi_dma_6_M_AXI_MM2S_ARVALID),
        .S05_AXI_rdata(axi_dma_6_M_AXI_MM2S_RDATA),
        .S05_AXI_rlast(axi_dma_6_M_AXI_MM2S_RLAST),
        .S05_AXI_rready(axi_dma_6_M_AXI_MM2S_RREADY),
        .S05_AXI_rresp(axi_dma_6_M_AXI_MM2S_RRESP),
        .S05_AXI_rvalid(axi_dma_6_M_AXI_MM2S_RVALID),
        .S06_AXI_awaddr(axi_dma_6_M_AXI_S2MM_AWADDR),
        .S06_AXI_awburst(axi_dma_6_M_AXI_S2MM_AWBURST),
        .S06_AXI_awcache(axi_dma_6_M_AXI_S2MM_AWCACHE),
        .S06_AXI_awlen(axi_dma_6_M_AXI_S2MM_AWLEN),
        .S06_AXI_awlock(1'b0),
        .S06_AXI_awprot(axi_dma_6_M_AXI_S2MM_AWPROT),
        .S06_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S06_AXI_awready(axi_dma_6_M_AXI_S2MM_AWREADY),
        .S06_AXI_awsize(axi_dma_6_M_AXI_S2MM_AWSIZE),
        .S06_AXI_awvalid(axi_dma_6_M_AXI_S2MM_AWVALID),
        .S06_AXI_bready(axi_dma_6_M_AXI_S2MM_BREADY),
        .S06_AXI_bresp(axi_dma_6_M_AXI_S2MM_BRESP),
        .S06_AXI_bvalid(axi_dma_6_M_AXI_S2MM_BVALID),
        .S06_AXI_wdata(axi_dma_6_M_AXI_S2MM_WDATA),
        .S06_AXI_wlast(axi_dma_6_M_AXI_S2MM_WLAST),
        .S06_AXI_wready(axi_dma_6_M_AXI_S2MM_WREADY),
        .S06_AXI_wstrb(axi_dma_6_M_AXI_S2MM_WSTRB),
        .S06_AXI_wvalid(axi_dma_6_M_AXI_S2MM_WVALID),
        .S07_AXI_awaddr(axi_dma_7_M_AXI_S2MM_AWADDR),
        .S07_AXI_awburst(axi_dma_7_M_AXI_S2MM_AWBURST),
        .S07_AXI_awcache(axi_dma_7_M_AXI_S2MM_AWCACHE),
        .S07_AXI_awlen(axi_dma_7_M_AXI_S2MM_AWLEN),
        .S07_AXI_awlock(1'b0),
        .S07_AXI_awprot(axi_dma_7_M_AXI_S2MM_AWPROT),
        .S07_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S07_AXI_awready(axi_dma_7_M_AXI_S2MM_AWREADY),
        .S07_AXI_awsize(axi_dma_7_M_AXI_S2MM_AWSIZE),
        .S07_AXI_awvalid(axi_dma_7_M_AXI_S2MM_AWVALID),
        .S07_AXI_bready(axi_dma_7_M_AXI_S2MM_BREADY),
        .S07_AXI_bresp(axi_dma_7_M_AXI_S2MM_BRESP),
        .S07_AXI_bvalid(axi_dma_7_M_AXI_S2MM_BVALID),
        .S07_AXI_wdata(axi_dma_7_M_AXI_S2MM_WDATA),
        .S07_AXI_wlast(axi_dma_7_M_AXI_S2MM_WLAST),
        .S07_AXI_wready(axi_dma_7_M_AXI_S2MM_WREADY),
        .S07_AXI_wstrb(axi_dma_7_M_AXI_S2MM_WSTRB),
        .S07_AXI_wvalid(axi_dma_7_M_AXI_S2MM_WVALID),
        .S08_AXI_araddr(axi_dma_7_M_AXI_MM2S_ARADDR),
        .S08_AXI_arburst(axi_dma_7_M_AXI_MM2S_ARBURST),
        .S08_AXI_arcache(axi_dma_7_M_AXI_MM2S_ARCACHE),
        .S08_AXI_arlen(axi_dma_7_M_AXI_MM2S_ARLEN),
        .S08_AXI_arlock(1'b0),
        .S08_AXI_arprot(axi_dma_7_M_AXI_MM2S_ARPROT),
        .S08_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S08_AXI_arready(axi_dma_7_M_AXI_MM2S_ARREADY),
        .S08_AXI_arsize(axi_dma_7_M_AXI_MM2S_ARSIZE),
        .S08_AXI_arvalid(axi_dma_7_M_AXI_MM2S_ARVALID),
        .S08_AXI_rdata(axi_dma_7_M_AXI_MM2S_RDATA),
        .S08_AXI_rlast(axi_dma_7_M_AXI_MM2S_RLAST),
        .S08_AXI_rready(axi_dma_7_M_AXI_MM2S_RREADY),
        .S08_AXI_rresp(axi_dma_7_M_AXI_MM2S_RRESP),
        .S08_AXI_rvalid(axi_dma_7_M_AXI_MM2S_RVALID),
        .S09_AXI_araddr(undolog_3_M02_AXI_ARADDR),
        .S09_AXI_arprot(undolog_3_M02_AXI_ARPROT),
        .S09_AXI_arready(undolog_3_M02_AXI_ARREADY),
        .S09_AXI_arvalid(undolog_3_M02_AXI_ARVALID),
        .S09_AXI_awaddr(undolog_3_M02_AXI_AWADDR),
        .S09_AXI_awprot(undolog_3_M02_AXI_AWPROT),
        .S09_AXI_awready(undolog_3_M02_AXI_AWREADY),
        .S09_AXI_awvalid(undolog_3_M02_AXI_AWVALID),
        .S09_AXI_bready(undolog_3_M02_AXI_BREADY),
        .S09_AXI_bresp(undolog_3_M02_AXI_BRESP),
        .S09_AXI_bvalid(undolog_3_M02_AXI_BVALID),
        .S09_AXI_rdata(undolog_3_M02_AXI_RDATA),
        .S09_AXI_rready(undolog_3_M02_AXI_RREADY),
        .S09_AXI_rresp(undolog_3_M02_AXI_RRESP),
        .S09_AXI_rvalid(undolog_3_M02_AXI_RVALID),
        .S09_AXI_wdata(undolog_3_M02_AXI_WDATA),
        .S09_AXI_wready(undolog_3_M02_AXI_WREADY),
        .S09_AXI_wstrb(undolog_3_M02_AXI_WSTRB),
        .S09_AXI_wvalid(undolog_3_M02_AXI_WVALID),
        .aclk(ddr4_0_c0_ddr4_ui_clk),
        .aclk1(xdma_0_axi_aclk),
        .aclk2(ddr4_0_addn_ui_clkout1),
        .aclk3(microblaze_0_Clk),
        .aresetn(xdma_0_axi_aresetn));
  design_1_smartconnect_1_0 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arid(smartconnect_1_M00_AXI_ARID),
        .M00_AXI_arlen(smartconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(gate_axi_0_arready_out),
        .M00_AXI_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_aruser(smartconnect_1_M00_AXI_ARUSER),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_arvalid),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_awaddr),
        .M00_AXI_awburst(smartconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awid(smartconnect_1_M00_AXI_AWID),
        .M00_AXI_awlen(smartconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_1_M00_AXI_awqos),
        .M00_AXI_awready(gate_axi_0_awready_out),
        .M00_AXI_awsize(smartconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awuser(smartconnect_1_M00_AXI_AWUSER),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_awvalid),
        .M00_AXI_bid(smartconnect_1_M00_AXI_BID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_bready),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_buser(smartconnect_1_M00_AXI_BUSER),
        .M00_AXI_bvalid(gate_axi_0_bvalid_out),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rid(smartconnect_1_M00_AXI_RID),
        .M00_AXI_rlast(smartconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_1_M00_AXI_rready),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_ruser(smartconnect_1_M00_AXI_RUSER),
        .M00_AXI_rvalid(gate_axi_0_rvalid_out),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_1_M00_AXI_wlast),
        .M00_AXI_wready(gate_axi_0_wready_out),
        .M00_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wuser(smartconnect_1_M00_AXI_WUSER),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_wvalid),
        .M01_AXI_araddr(smartconnect_1_M01_AXI_ARADDR),
        .M01_AXI_arprot(smartconnect_1_M01_AXI_ARPROT),
        .M01_AXI_arready(smartconnect_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_1_M01_AXI_AWADDR),
        .M01_AXI_awprot(smartconnect_1_M01_AXI_AWPROT),
        .M01_AXI_awready(smartconnect_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_1_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_1_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_1_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_1_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_1_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_1_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_1_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_1_M01_AXI_WVALID),
        .S00_AXI_araddr(axi_data_fifo_9_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_data_fifo_9_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_data_fifo_9_M_AXI_ARCACHE),
        .S00_AXI_arid(axi_data_fifo_9_M_AXI_ARID),
        .S00_AXI_arlen(axi_data_fifo_9_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_data_fifo_9_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_data_fifo_9_M_AXI_ARPROT),
        .S00_AXI_arqos(axi_data_fifo_9_M_AXI_ARQOS),
        .S00_AXI_arready(axi_data_fifo_9_M_AXI_ARREADY),
        .S00_AXI_arsize(axi_data_fifo_9_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_data_fifo_9_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_data_fifo_9_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_data_fifo_9_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_data_fifo_9_M_AXI_AWCACHE),
        .S00_AXI_awid(axi_data_fifo_9_M_AXI_AWID),
        .S00_AXI_awlen(axi_data_fifo_9_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_data_fifo_9_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_data_fifo_9_M_AXI_AWPROT),
        .S00_AXI_awqos(axi_data_fifo_9_M_AXI_AWQOS),
        .S00_AXI_awready(axi_data_fifo_9_M_AXI_AWREADY),
        .S00_AXI_awsize(axi_data_fifo_9_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_data_fifo_9_M_AXI_AWVALID),
        .S00_AXI_bid(axi_data_fifo_9_M_AXI_BID),
        .S00_AXI_bready(axi_data_fifo_9_M_AXI_BREADY),
        .S00_AXI_bresp(axi_data_fifo_9_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_data_fifo_9_M_AXI_BVALID),
        .S00_AXI_rdata(axi_data_fifo_9_M_AXI_RDATA),
        .S00_AXI_rid(axi_data_fifo_9_M_AXI_RID),
        .S00_AXI_rlast(axi_data_fifo_9_M_AXI_RLAST),
        .S00_AXI_rready(axi_data_fifo_9_M_AXI_RREADY),
        .S00_AXI_rresp(axi_data_fifo_9_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_data_fifo_9_M_AXI_RVALID),
        .S00_AXI_wdata(axi_data_fifo_9_M_AXI_WDATA),
        .S00_AXI_wlast(axi_data_fifo_9_M_AXI_WLAST),
        .S00_AXI_wready(axi_data_fifo_9_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_data_fifo_9_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_data_fifo_9_M_AXI_WVALID),
        .aclk(xdma_0_axi_aclk),
        .aclk1(ddr4_0_addn_ui_clkout1),
        .aresetn(xdma_0_axi_aresetn));
  design_1_undolog_0_0 undolog_0
       (.data_copy_pulse(undolog_0_data_copy_pulse),
        .datacpy_done(undolog_0_datacpy_done),
        .log_size(undolog_0_log_size),
        .log_src(undolog_0_log_src),
        .m00_axi_aclk(ddr4_0_addn_ui_clkout1),
        .m00_axi_araddr(undolog_0_M00_AXI_ARADDR),
        .m00_axi_aresetn(rst_ddr4_0_300M_1_peripheral_aresetn),
        .m00_axi_arready(undolog_0_M00_AXI_ARREADY),
        .m00_axi_arvalid(undolog_0_M00_AXI_ARVALID),
        .m00_axi_awaddr(undolog_0_M00_AXI_AWADDR),
        .m00_axi_awready(undolog_0_M00_AXI_AWREADY),
        .m00_axi_awvalid(undolog_0_M00_AXI_AWVALID),
        .m00_axi_bready(undolog_0_M00_AXI_BREADY),
        .m00_axi_bresp(undolog_0_M00_AXI_BRESP),
        .m00_axi_bvalid(undolog_0_M00_AXI_BVALID),
        .m00_axi_init_axi_txn(xlconstant_0_dout),
        .m00_axi_rdata(undolog_0_M00_AXI_RDATA),
        .m00_axi_rready(undolog_0_M00_AXI_RREADY),
        .m00_axi_rresp(undolog_0_M00_AXI_RRESP),
        .m00_axi_rvalid(undolog_0_M00_AXI_RVALID),
        .m00_axi_wdata(undolog_0_M00_AXI_WDATA),
        .m00_axi_wready(undolog_0_M00_AXI_WREADY),
        .m00_axi_wvalid(undolog_0_M00_AXI_WVALID),
        .m01_axi_aclk(ddr4_0_addn_ui_clkout1),
        .m01_axi_araddr(undolog_0_M01_AXI_ARADDR),
        .m01_axi_aresetn(rst_ddr4_0_300M_1_peripheral_aresetn),
        .m01_axi_arready(undolog_0_M01_AXI_ARREADY),
        .m01_axi_arvalid(undolog_0_M01_AXI_ARVALID),
        .m01_axi_awaddr(undolog_0_M01_AXI_AWADDR),
        .m01_axi_awready(undolog_0_M01_AXI_AWREADY),
        .m01_axi_awvalid(undolog_0_M01_AXI_AWVALID),
        .m01_axi_bready(undolog_0_M01_AXI_BREADY),
        .m01_axi_bresp(undolog_0_M01_AXI_BRESP),
        .m01_axi_bvalid(undolog_0_M01_AXI_BVALID),
        .m01_axi_init_axi_txn(xlconstant_0_dout),
        .m01_axi_rdata(undolog_0_M01_AXI_RDATA),
        .m01_axi_rready(undolog_0_M01_AXI_RREADY),
        .m01_axi_rresp(undolog_0_M01_AXI_RRESP),
        .m01_axi_rvalid(undolog_0_M01_AXI_RVALID),
        .m01_axi_wdata(undolog_0_M01_AXI_WDATA),
        .m01_axi_wready(undolog_0_M01_AXI_WREADY),
        .m01_axi_wvalid(undolog_0_M01_AXI_WVALID),
        .m02_axi_aclk(ddr4_0_addn_ui_clkout1),
        .m02_axi_araddr(undolog_0_M02_AXI_ARADDR),
        .m02_axi_aresetn(rst_ddr4_0_300M_1_peripheral_aresetn),
        .m02_axi_arprot(undolog_0_M02_AXI_ARPROT),
        .m02_axi_arready(undolog_0_M02_AXI_ARREADY),
        .m02_axi_arvalid(undolog_0_M02_AXI_ARVALID),
        .m02_axi_awaddr(undolog_0_M02_AXI_AWADDR),
        .m02_axi_awprot(undolog_0_M02_AXI_AWPROT),
        .m02_axi_awready(undolog_0_M02_AXI_AWREADY),
        .m02_axi_awvalid(undolog_0_M02_AXI_AWVALID),
        .m02_axi_bready(undolog_0_M02_AXI_BREADY),
        .m02_axi_bresp(undolog_0_M02_AXI_BRESP),
        .m02_axi_bvalid(undolog_0_M02_AXI_BVALID),
        .m02_axi_init_axi_txn(xlconstant_0_dout),
        .m02_axi_rdata(undolog_0_M02_AXI_RDATA),
        .m02_axi_rready(undolog_0_M02_AXI_RREADY),
        .m02_axi_rresp(undolog_0_M02_AXI_RRESP),
        .m02_axi_rvalid(undolog_0_M02_AXI_RVALID),
        .m02_axi_wdata(undolog_0_M02_AXI_WDATA),
        .m02_axi_wready(undolog_0_M02_AXI_WREADY),
        .m02_axi_wstrb(undolog_0_M02_AXI_WSTRB),
        .m02_axi_wvalid(undolog_0_M02_AXI_WVALID),
        .regout(undolog_0_regout),
        .s00_axi_aclk(ddr4_0_addn_ui_clkout1),
        .s00_axi_araddr(memops_scheduler_1_M00_AXI_ARADDR[5:0]),
        .s00_axi_aresetn(rst_ddr4_0_300M_1_peripheral_aresetn),
        .s00_axi_arprot(memops_scheduler_1_M00_AXI_ARPROT),
        .s00_axi_arready(memops_scheduler_1_M00_AXI_ARREADY),
        .s00_axi_arvalid(memops_scheduler_1_M00_AXI_ARVALID),
        .s00_axi_awaddr(memops_scheduler_1_M00_AXI_AWADDR[5:0]),
        .s00_axi_awprot(memops_scheduler_1_M00_AXI_AWPROT),
        .s00_axi_awready(memops_scheduler_1_M00_AXI_AWREADY),
        .s00_axi_awvalid(memops_scheduler_1_M00_AXI_AWVALID),
        .s00_axi_bready(memops_scheduler_1_M00_AXI_BREADY),
        .s00_axi_bresp(memops_scheduler_1_M00_AXI_BRESP),
        .s00_axi_bvalid(memops_scheduler_1_M00_AXI_BVALID),
        .s00_axi_rdata(memops_scheduler_1_M00_AXI_RDATA),
        .s00_axi_rready(memops_scheduler_1_M00_AXI_RREADY),
        .s00_axi_rresp(memops_scheduler_1_M00_AXI_RRESP),
        .s00_axi_rvalid(memops_scheduler_1_M00_AXI_RVALID),
        .s00_axi_wdata(memops_scheduler_1_M00_AXI_WDATA),
        .s00_axi_wready(memops_scheduler_1_M00_AXI_WREADY),
        .s00_axi_wstrb(memops_scheduler_1_M00_AXI_WSTRB),
        .s00_axi_wvalid(memops_scheduler_1_M00_AXI_WVALID),
        .ulog_offset(undolog_0_ulog_offset));
  design_1_undolog_0_1 undolog_1
       (.m00_axi_aclk(ddr4_0_addn_ui_clkout1),
        .m00_axi_araddr(undolog_1_M00_AXI_ARADDR),
        .m00_axi_aresetn(rst_ddr4_0_300M_1_peripheral_aresetn),
        .m00_axi_arready(undolog_1_M00_AXI_ARREADY),
        .m00_axi_arvalid(undolog_1_M00_AXI_ARVALID),
        .m00_axi_awaddr(undolog_1_M00_AXI_AWADDR),
        .m00_axi_awready(undolog_1_M00_AXI_AWREADY),
        .m00_axi_awvalid(undolog_1_M00_AXI_AWVALID),
        .m00_axi_bready(undolog_1_M00_AXI_BREADY),
        .m00_axi_bresp(undolog_1_M00_AXI_BRESP),
        .m00_axi_bvalid(undolog_1_M00_AXI_BVALID),
        .m00_axi_init_axi_txn(xlconstant_0_dout),
        .m00_axi_rdata(undolog_1_M00_AXI_RDATA),
        .m00_axi_rready(undolog_1_M00_AXI_RREADY),
        .m00_axi_rresp(undolog_1_M00_AXI_RRESP),
        .m00_axi_rvalid(undolog_1_M00_AXI_RVALID),
        .m00_axi_wdata(undolog_1_M00_AXI_WDATA),
        .m00_axi_wready(undolog_1_M00_AXI_WREADY),
        .m00_axi_wvalid(undolog_1_M00_AXI_WVALID),
        .m01_axi_aclk(ddr4_0_addn_ui_clkout1),
        .m01_axi_araddr(undolog_1_M01_AXI_ARADDR),
        .m01_axi_aresetn(rst_ddr4_0_300M_1_peripheral_aresetn),
        .m01_axi_arready(undolog_1_M01_AXI_ARREADY),
        .m01_axi_arvalid(undolog_1_M01_AXI_ARVALID),
        .m01_axi_awaddr(undolog_1_M01_AXI_AWADDR),
        .m01_axi_awready(undolog_1_M01_AXI_AWREADY),
        .m01_axi_awvalid(undolog_1_M01_AXI_AWVALID),
        .m01_axi_bready(undolog_1_M01_AXI_BREADY),
        .m01_axi_bresp(undolog_1_M01_AXI_BRESP),
        .m01_axi_bvalid(undolog_1_M01_AXI_BVALID),
        .m01_axi_init_axi_txn(xlconstant_0_dout),
        .m01_axi_rdata(undolog_1_M01_AXI_RDATA),
        .m01_axi_rready(undolog_1_M01_AXI_RREADY),
        .m01_axi_rresp(undolog_1_M01_AXI_RRESP),
        .m01_axi_rvalid(undolog_1_M01_AXI_RVALID),
        .m01_axi_wdata(undolog_1_M01_AXI_WDATA),
        .m01_axi_wready(undolog_1_M01_AXI_WREADY),
        .m01_axi_wvalid(undolog_1_M01_AXI_WVALID),
        .m02_axi_aclk(ddr4_0_addn_ui_clkout1),
        .m02_axi_araddr(undolog_1_M02_AXI_ARADDR),
        .m02_axi_aresetn(rst_ddr4_0_300M_1_peripheral_aresetn),
        .m02_axi_arprot(undolog_1_M02_AXI_ARPROT),
        .m02_axi_arready(undolog_1_M02_AXI_ARREADY),
        .m02_axi_arvalid(undolog_1_M02_AXI_ARVALID),
        .m02_axi_awaddr(undolog_1_M02_AXI_AWADDR),
        .m02_axi_awprot(undolog_1_M02_AXI_AWPROT),
        .m02_axi_awready(undolog_1_M02_AXI_AWREADY),
        .m02_axi_awvalid(undolog_1_M02_AXI_AWVALID),
        .m02_axi_bready(undolog_1_M02_AXI_BREADY),
        .m02_axi_bresp(undolog_1_M02_AXI_BRESP),
        .m02_axi_bvalid(undolog_1_M02_AXI_BVALID),
        .m02_axi_init_axi_txn(xlconstant_0_dout),
        .m02_axi_rdata(undolog_1_M02_AXI_RDATA),
        .m02_axi_rready(undolog_1_M02_AXI_RREADY),
        .m02_axi_rresp(undolog_1_M02_AXI_RRESP),
        .m02_axi_rvalid(undolog_1_M02_AXI_RVALID),
        .m02_axi_wdata(undolog_1_M02_AXI_WDATA),
        .m02_axi_wready(undolog_1_M02_AXI_WREADY),
        .m02_axi_wstrb(undolog_1_M02_AXI_WSTRB),
        .m02_axi_wvalid(undolog_1_M02_AXI_WVALID),
        .s00_axi_aclk(ddr4_0_addn_ui_clkout1),
        .s00_axi_araddr(memops_scheduler_1_M01_AXI_ARADDR[5:0]),
        .s00_axi_aresetn(rst_ddr4_0_300M_1_peripheral_aresetn),
        .s00_axi_arprot(memops_scheduler_1_M01_AXI_ARPROT),
        .s00_axi_arready(memops_scheduler_1_M01_AXI_ARREADY),
        .s00_axi_arvalid(memops_scheduler_1_M01_AXI_ARVALID),
        .s00_axi_awaddr(memops_scheduler_1_M01_AXI_AWADDR[5:0]),
        .s00_axi_awprot(memops_scheduler_1_M01_AXI_AWPROT),
        .s00_axi_awready(memops_scheduler_1_M01_AXI_AWREADY),
        .s00_axi_awvalid(memops_scheduler_1_M01_AXI_AWVALID),
        .s00_axi_bready(memops_scheduler_1_M01_AXI_BREADY),
        .s00_axi_bresp(memops_scheduler_1_M01_AXI_BRESP),
        .s00_axi_bvalid(memops_scheduler_1_M01_AXI_BVALID),
        .s00_axi_rdata(memops_scheduler_1_M01_AXI_RDATA),
        .s00_axi_rready(memops_scheduler_1_M01_AXI_RREADY),
        .s00_axi_rresp(memops_scheduler_1_M01_AXI_RRESP),
        .s00_axi_rvalid(memops_scheduler_1_M01_AXI_RVALID),
        .s00_axi_wdata(memops_scheduler_1_M01_AXI_WDATA),
        .s00_axi_wready(memops_scheduler_1_M01_AXI_WREADY),
        .s00_axi_wstrb(memops_scheduler_1_M01_AXI_WSTRB),
        .s00_axi_wvalid(memops_scheduler_1_M01_AXI_WVALID));
  design_1_undolog_0_2 undolog_2
       (.m00_axi_aclk(microblaze_0_Clk),
        .m00_axi_araddr(undolog_2_M00_AXI_ARADDR),
        .m00_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m00_axi_arready(undolog_2_M00_AXI_ARREADY),
        .m00_axi_arvalid(undolog_2_M00_AXI_ARVALID),
        .m00_axi_awaddr(undolog_2_M00_AXI_AWADDR),
        .m00_axi_awready(undolog_2_M00_AXI_AWREADY),
        .m00_axi_awvalid(undolog_2_M00_AXI_AWVALID),
        .m00_axi_bready(undolog_2_M00_AXI_BREADY),
        .m00_axi_bresp(undolog_2_M00_AXI_BRESP),
        .m00_axi_bvalid(undolog_2_M00_AXI_BVALID),
        .m00_axi_init_axi_txn(xlconstant_0_dout),
        .m00_axi_rdata(undolog_2_M00_AXI_RDATA),
        .m00_axi_rready(undolog_2_M00_AXI_RREADY),
        .m00_axi_rresp(undolog_2_M00_AXI_RRESP),
        .m00_axi_rvalid(undolog_2_M00_AXI_RVALID),
        .m00_axi_wdata(undolog_2_M00_AXI_WDATA),
        .m00_axi_wready(undolog_2_M00_AXI_WREADY),
        .m00_axi_wvalid(undolog_2_M00_AXI_WVALID),
        .m01_axi_aclk(microblaze_0_Clk),
        .m01_axi_araddr(undolog_2_M01_AXI_ARADDR),
        .m01_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m01_axi_arready(undolog_2_M01_AXI_ARREADY),
        .m01_axi_arvalid(undolog_2_M01_AXI_ARVALID),
        .m01_axi_awaddr(undolog_2_M01_AXI_AWADDR),
        .m01_axi_awready(undolog_2_M01_AXI_AWREADY),
        .m01_axi_awvalid(undolog_2_M01_AXI_AWVALID),
        .m01_axi_bready(undolog_2_M01_AXI_BREADY),
        .m01_axi_bresp(undolog_2_M01_AXI_BRESP),
        .m01_axi_bvalid(undolog_2_M01_AXI_BVALID),
        .m01_axi_init_axi_txn(xlconstant_0_dout),
        .m01_axi_rdata(undolog_2_M01_AXI_RDATA),
        .m01_axi_rready(undolog_2_M01_AXI_RREADY),
        .m01_axi_rresp(undolog_2_M01_AXI_RRESP),
        .m01_axi_rvalid(undolog_2_M01_AXI_RVALID),
        .m01_axi_wdata(undolog_2_M01_AXI_WDATA),
        .m01_axi_wready(undolog_2_M01_AXI_WREADY),
        .m01_axi_wvalid(undolog_2_M01_AXI_WVALID),
        .m02_axi_aclk(microblaze_0_Clk),
        .m02_axi_araddr(undolog_2_M02_AXI_ARADDR),
        .m02_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m02_axi_arprot(undolog_2_M02_AXI_ARPROT),
        .m02_axi_arready(undolog_2_M02_AXI_ARREADY),
        .m02_axi_arvalid(undolog_2_M02_AXI_ARVALID),
        .m02_axi_awaddr(undolog_2_M02_AXI_AWADDR),
        .m02_axi_awprot(undolog_2_M02_AXI_AWPROT),
        .m02_axi_awready(undolog_2_M02_AXI_AWREADY),
        .m02_axi_awvalid(undolog_2_M02_AXI_AWVALID),
        .m02_axi_bready(undolog_2_M02_AXI_BREADY),
        .m02_axi_bresp(undolog_2_M02_AXI_BRESP),
        .m02_axi_bvalid(undolog_2_M02_AXI_BVALID),
        .m02_axi_init_axi_txn(xlconstant_0_dout),
        .m02_axi_rdata(undolog_2_M02_AXI_RDATA),
        .m02_axi_rready(undolog_2_M02_AXI_RREADY),
        .m02_axi_rresp(undolog_2_M02_AXI_RRESP),
        .m02_axi_rvalid(undolog_2_M02_AXI_RVALID),
        .m02_axi_wdata(undolog_2_M02_AXI_WDATA),
        .m02_axi_wready(undolog_2_M02_AXI_WREADY),
        .m02_axi_wstrb(undolog_2_M02_AXI_WSTRB),
        .m02_axi_wvalid(undolog_2_M02_AXI_WVALID),
        .s00_axi_aclk(ddr4_0_addn_ui_clkout1),
        .s00_axi_araddr(memops_scheduler_1_M02_AXI_ARADDR[5:0]),
        .s00_axi_aresetn(rst_ddr4_0_300M_1_peripheral_aresetn),
        .s00_axi_arprot(memops_scheduler_1_M02_AXI_ARPROT),
        .s00_axi_arready(memops_scheduler_1_M02_AXI_ARREADY),
        .s00_axi_arvalid(memops_scheduler_1_M02_AXI_ARVALID),
        .s00_axi_awaddr(memops_scheduler_1_M02_AXI_AWADDR[5:0]),
        .s00_axi_awprot(memops_scheduler_1_M02_AXI_AWPROT),
        .s00_axi_awready(memops_scheduler_1_M02_AXI_AWREADY),
        .s00_axi_awvalid(memops_scheduler_1_M02_AXI_AWVALID),
        .s00_axi_bready(memops_scheduler_1_M02_AXI_BREADY),
        .s00_axi_bresp(memops_scheduler_1_M02_AXI_BRESP),
        .s00_axi_bvalid(memops_scheduler_1_M02_AXI_BVALID),
        .s00_axi_rdata(memops_scheduler_1_M02_AXI_RDATA),
        .s00_axi_rready(memops_scheduler_1_M02_AXI_RREADY),
        .s00_axi_rresp(memops_scheduler_1_M02_AXI_RRESP),
        .s00_axi_rvalid(memops_scheduler_1_M02_AXI_RVALID),
        .s00_axi_wdata(memops_scheduler_1_M02_AXI_WDATA),
        .s00_axi_wready(memops_scheduler_1_M02_AXI_WREADY),
        .s00_axi_wstrb(memops_scheduler_1_M02_AXI_WSTRB),
        .s00_axi_wvalid(memops_scheduler_1_M02_AXI_WVALID));
  design_1_undolog_0_3 undolog_3
       (.m00_axi_aclk(microblaze_0_Clk),
        .m00_axi_araddr(undolog_3_M00_AXI_ARADDR),
        .m00_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m00_axi_arready(undolog_3_M00_AXI_ARREADY),
        .m00_axi_arvalid(undolog_3_M00_AXI_ARVALID),
        .m00_axi_awaddr(undolog_3_M00_AXI_AWADDR),
        .m00_axi_awready(undolog_3_M00_AXI_AWREADY),
        .m00_axi_awvalid(undolog_3_M00_AXI_AWVALID),
        .m00_axi_bready(undolog_3_M00_AXI_BREADY),
        .m00_axi_bresp(undolog_3_M00_AXI_BRESP),
        .m00_axi_bvalid(undolog_3_M00_AXI_BVALID),
        .m00_axi_init_axi_txn(xlconstant_0_dout),
        .m00_axi_rdata(undolog_3_M00_AXI_RDATA),
        .m00_axi_rready(undolog_3_M00_AXI_RREADY),
        .m00_axi_rresp(undolog_3_M00_AXI_RRESP),
        .m00_axi_rvalid(undolog_3_M00_AXI_RVALID),
        .m00_axi_wdata(undolog_3_M00_AXI_WDATA),
        .m00_axi_wready(undolog_3_M00_AXI_WREADY),
        .m00_axi_wvalid(undolog_3_M00_AXI_WVALID),
        .m01_axi_aclk(microblaze_0_Clk),
        .m01_axi_araddr(undolog_3_M01_AXI_ARADDR),
        .m01_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m01_axi_arready(undolog_3_M01_AXI_ARREADY),
        .m01_axi_arvalid(undolog_3_M01_AXI_ARVALID),
        .m01_axi_awaddr(undolog_3_M01_AXI_AWADDR),
        .m01_axi_awready(undolog_3_M01_AXI_AWREADY),
        .m01_axi_awvalid(undolog_3_M01_AXI_AWVALID),
        .m01_axi_bready(undolog_3_M01_AXI_BREADY),
        .m01_axi_bresp(undolog_3_M01_AXI_BRESP),
        .m01_axi_bvalid(undolog_3_M01_AXI_BVALID),
        .m01_axi_init_axi_txn(xlconstant_0_dout),
        .m01_axi_rdata(undolog_3_M01_AXI_RDATA),
        .m01_axi_rready(undolog_3_M01_AXI_RREADY),
        .m01_axi_rresp(undolog_3_M01_AXI_RRESP),
        .m01_axi_rvalid(undolog_3_M01_AXI_RVALID),
        .m01_axi_wdata(undolog_3_M01_AXI_WDATA),
        .m01_axi_wready(undolog_3_M01_AXI_WREADY),
        .m01_axi_wvalid(undolog_3_M01_AXI_WVALID),
        .m02_axi_aclk(microblaze_0_Clk),
        .m02_axi_araddr(undolog_3_M02_AXI_ARADDR),
        .m02_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m02_axi_arprot(undolog_3_M02_AXI_ARPROT),
        .m02_axi_arready(undolog_3_M02_AXI_ARREADY),
        .m02_axi_arvalid(undolog_3_M02_AXI_ARVALID),
        .m02_axi_awaddr(undolog_3_M02_AXI_AWADDR),
        .m02_axi_awprot(undolog_3_M02_AXI_AWPROT),
        .m02_axi_awready(undolog_3_M02_AXI_AWREADY),
        .m02_axi_awvalid(undolog_3_M02_AXI_AWVALID),
        .m02_axi_bready(undolog_3_M02_AXI_BREADY),
        .m02_axi_bresp(undolog_3_M02_AXI_BRESP),
        .m02_axi_bvalid(undolog_3_M02_AXI_BVALID),
        .m02_axi_init_axi_txn(xlconstant_0_dout),
        .m02_axi_rdata(undolog_3_M02_AXI_RDATA),
        .m02_axi_rready(undolog_3_M02_AXI_RREADY),
        .m02_axi_rresp(undolog_3_M02_AXI_RRESP),
        .m02_axi_rvalid(undolog_3_M02_AXI_RVALID),
        .m02_axi_wdata(undolog_3_M02_AXI_WDATA),
        .m02_axi_wready(undolog_3_M02_AXI_WREADY),
        .m02_axi_wstrb(undolog_3_M02_AXI_WSTRB),
        .m02_axi_wvalid(undolog_3_M02_AXI_WVALID),
        .s00_axi_aclk(ddr4_0_addn_ui_clkout1),
        .s00_axi_araddr(memops_scheduler_1_M03_AXI_ARADDR[5:0]),
        .s00_axi_aresetn(rst_ddr4_0_300M_1_peripheral_aresetn),
        .s00_axi_arprot(memops_scheduler_1_M03_AXI_ARPROT),
        .s00_axi_arready(memops_scheduler_1_M03_AXI_ARREADY),
        .s00_axi_arvalid(memops_scheduler_1_M03_AXI_ARVALID),
        .s00_axi_awaddr(memops_scheduler_1_M03_AXI_AWADDR[5:0]),
        .s00_axi_awprot(memops_scheduler_1_M03_AXI_AWPROT),
        .s00_axi_awready(memops_scheduler_1_M03_AXI_AWREADY),
        .s00_axi_awvalid(memops_scheduler_1_M03_AXI_AWVALID),
        .s00_axi_bready(memops_scheduler_1_M03_AXI_BREADY),
        .s00_axi_bresp(memops_scheduler_1_M03_AXI_BRESP),
        .s00_axi_bvalid(memops_scheduler_1_M03_AXI_BVALID),
        .s00_axi_rdata(memops_scheduler_1_M03_AXI_RDATA),
        .s00_axi_rready(memops_scheduler_1_M03_AXI_RREADY),
        .s00_axi_rresp(memops_scheduler_1_M03_AXI_RRESP),
        .s00_axi_rvalid(memops_scheduler_1_M03_AXI_RVALID),
        .s00_axi_wdata(memops_scheduler_1_M03_AXI_WDATA),
        .s00_axi_wready(memops_scheduler_1_M03_AXI_WREADY),
        .s00_axi_wstrb(memops_scheduler_1_M03_AXI_WSTRB),
        .s00_axi_wvalid(memops_scheduler_1_M03_AXI_WVALID));
  design_1_util_ds_buf_0_0 util_ds_buf_0
       (.IBUF_DS_N(pcie_refclk_1_CLK_N),
        .IBUF_DS_ODIV2(util_ds_buf_0_IBUF_DS_ODIV2),
        .IBUF_DS_P(pcie_refclk_1_CLK_P),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  design_1_xdma_0_0 xdma_0
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(xdma_0_axi_aresetn),
        .m_axib_araddr(xdma_0_M_AXI_B_ARADDR),
        .m_axib_arburst(xdma_0_M_AXI_B_ARBURST),
        .m_axib_arcache(xdma_0_M_AXI_B_ARCACHE),
        .m_axib_arid(xdma_0_M_AXI_B_ARID),
        .m_axib_arlen(xdma_0_M_AXI_B_ARLEN),
        .m_axib_arlock(xdma_0_M_AXI_B_ARLOCK),
        .m_axib_arprot(xdma_0_M_AXI_B_ARPROT),
        .m_axib_arready(xdma_0_M_AXI_B_ARREADY),
        .m_axib_arsize(xdma_0_M_AXI_B_ARSIZE),
        .m_axib_arvalid(xdma_0_M_AXI_B_ARVALID),
        .m_axib_awaddr(xdma_0_m_axib_awaddr),
        .m_axib_awburst(xdma_0_M_AXI_B_AWBURST),
        .m_axib_awcache(xdma_0_M_AXI_B_AWCACHE),
        .m_axib_awid(xdma_0_M_AXI_B_AWID),
        .m_axib_awlen(xdma_0_M_AXI_B_AWLEN),
        .m_axib_awlock(xdma_0_M_AXI_B_AWLOCK),
        .m_axib_awprot(xdma_0_M_AXI_B_AWPROT),
        .m_axib_awready(xdma_0_M_AXI_B_AWREADY),
        .m_axib_awsize(xdma_0_M_AXI_B_AWSIZE),
        .m_axib_awvalid(xdma_0_m_axib_awvalid),
        .m_axib_bid(xdma_0_M_AXI_B_BID),
        .m_axib_bready(xdma_0_M_AXI_B_BREADY),
        .m_axib_bresp(xdma_0_M_AXI_B_BRESP),
        .m_axib_bvalid(xdma_0_M_AXI_B_BVALID),
        .m_axib_rdata(xdma_0_M_AXI_B_RDATA),
        .m_axib_rid(xdma_0_M_AXI_B_RID),
        .m_axib_rlast(xdma_0_M_AXI_B_RLAST),
        .m_axib_rready(xdma_0_M_AXI_B_RREADY),
        .m_axib_rresp(xdma_0_M_AXI_B_RRESP),
        .m_axib_rvalid(xdma_0_M_AXI_B_RVALID),
        .m_axib_wdata(xdma_0_m_axib_wdata),
        .m_axib_wlast(xdma_0_M_AXI_B_WLAST),
        .m_axib_wready(xdma_0_M_AXI_B_WREADY),
        .m_axib_wstrb(xdma_0_M_AXI_B_WSTRB),
        .m_axib_wvalid(xdma_0_m_axib_wvalid),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .s_axil_araddr(axi_smc_M02_AXI_ARADDR),
        .s_axil_arprot(axi_smc_M02_AXI_ARPROT),
        .s_axil_arready(axi_smc_M02_AXI_ARREADY),
        .s_axil_arvalid(axi_smc_M02_AXI_ARVALID),
        .s_axil_awaddr(axi_smc_M02_AXI_AWADDR),
        .s_axil_awprot(axi_smc_M02_AXI_AWPROT),
        .s_axil_awready(axi_smc_M02_AXI_AWREADY),
        .s_axil_awvalid(axi_smc_M02_AXI_AWVALID),
        .s_axil_bready(axi_smc_M02_AXI_BREADY),
        .s_axil_bresp(axi_smc_M02_AXI_BRESP),
        .s_axil_bvalid(axi_smc_M02_AXI_BVALID),
        .s_axil_rdata(axi_smc_M02_AXI_RDATA),
        .s_axil_rready(axi_smc_M02_AXI_RREADY),
        .s_axil_rresp(axi_smc_M02_AXI_RRESP),
        .s_axil_rvalid(axi_smc_M02_AXI_RVALID),
        .s_axil_wdata(axi_smc_M02_AXI_WDATA),
        .s_axil_wready(axi_smc_M02_AXI_WREADY),
        .s_axil_wstrb(axi_smc_M02_AXI_WSTRB),
        .s_axil_wvalid(axi_smc_M02_AXI_WVALID),
        .sys_clk(util_ds_buf_0_IBUF_DS_ODIV2),
        .sys_clk_gt(util_ds_buf_0_IBUF_OUT),
        .sys_rst_n(pcie_perstn_1),
        .usr_irq_req(1'b0));
  design_1_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
