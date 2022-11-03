// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri May 21 15:35:12 2021
// Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_undolog_0_3 -prefix
//               design_1_undolog_0_3_ design_1_undolog_0_0_sim_netlist.v
// Design      : design_1_undolog_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_undolog_0_0,undolog_v2_1,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "undolog_v2_1,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_undolog_0_3
   (memclr_state,
    metadatacpy_state,
    datacpy_state,
    m01_axi_awaddr,
    m01_axi_awprot,
    m01_axi_awvalid,
    m01_axi_awready,
    m01_axi_wdata,
    m01_axi_wstrb,
    m01_axi_wvalid,
    m01_axi_wready,
    m01_axi_bresp,
    m01_axi_bvalid,
    m01_axi_bready,
    m01_axi_araddr,
    m01_axi_arprot,
    m01_axi_arvalid,
    m01_axi_arready,
    m01_axi_rdata,
    m01_axi_rresp,
    m01_axi_rvalid,
    m01_axi_rready,
    m01_axi_aclk,
    m01_axi_aresetn,
    m01_axi_init_axi_txn,
    m01_axi_error,
    m01_axi_txn_done,
    m02_axi_awaddr,
    m02_axi_awprot,
    m02_axi_awvalid,
    m02_axi_awready,
    m02_axi_wdata,
    m02_axi_wstrb,
    m02_axi_wvalid,
    m02_axi_wready,
    m02_axi_bresp,
    m02_axi_bvalid,
    m02_axi_bready,
    m02_axi_araddr,
    m02_axi_arprot,
    m02_axi_arvalid,
    m02_axi_arready,
    m02_axi_rdata,
    m02_axi_rresp,
    m02_axi_rvalid,
    m02_axi_rready,
    start_ulog,
    start_logclr,
    metadata_done,
    memclr_done,
    dataout,
    datacpy_done,
    ulog_offset,
    base_offset,
    log_src,
    log_size,
    time_cycles,
    logclr_done_reg,
    reg_init_complete,
    vaddr_offset,
    physical_src_addr,
    physical_dest_addr,
    start_redolog,
    operation_type,
    redolog_src_data,
    redolog_dest_data,
    raddr,
    rdata,
    waddr,
    wdata,
    data_copy_pulse,
    regout,
    m02_axi_aclk,
    m02_axi_aresetn,
    m02_axi_init_axi_txn,
    m02_axi_error,
    m02_axi_txn_done,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn,
    m00_axi_awaddr,
    m00_axi_awprot,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bresp,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_araddr,
    m00_axi_arprot,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rvalid,
    m00_axi_rready,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_init_axi_txn,
    m00_axi_error,
    m00_axi_txn_done);
  output [3:0]memclr_state;
  output [3:0]metadatacpy_state;
  output [3:0]datacpy_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR" *) output [31:0]m01_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT" *) output [2:0]m01_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID" *) output m01_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY" *) input m01_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WDATA" *) output [31:0]m01_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB" *) output [3:0]m01_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WVALID" *) output m01_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WREADY" *) input m01_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BRESP" *) input [1:0]m01_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BVALID" *) input m01_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BREADY" *) output m01_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR" *) output [31:0]m01_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT" *) output [2:0]m01_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID" *) output m01_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY" *) input m01_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RDATA" *) input [31:0]m01_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RRESP" *) input [1:0]m01_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RVALID" *) input m01_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m01_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M01_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_AXI_CLK, ASSOCIATED_BUSIF M01_AXI, ASSOCIATED_RESET m01_axi_aresetn, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk" *) input m01_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M01_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_AXI_RST, POLARITY ACTIVE_LOW" *) input m01_axi_aresetn;
  input m01_axi_init_axi_txn;
  output m01_axi_error;
  output m01_axi_txn_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWADDR" *) output [31:0]m02_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWPROT" *) output [2:0]m02_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWVALID" *) output m02_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWREADY" *) input m02_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WDATA" *) output [31:0]m02_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WSTRB" *) output [3:0]m02_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WVALID" *) output m02_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WREADY" *) input m02_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BRESP" *) input [1:0]m02_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BVALID" *) input m02_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BREADY" *) output m02_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARADDR" *) output [31:0]m02_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARPROT" *) output [2:0]m02_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARVALID" *) output m02_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARREADY" *) input m02_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RDATA" *) input [31:0]m02_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RRESP" *) input [1:0]m02_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RVALID" *) input m02_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m02_axi_rready;
  output start_ulog;
  output start_logclr;
  output metadata_done;
  output memclr_done;
  output [31:0]dataout;
  output datacpy_done;
  output [63:0]ulog_offset;
  output [63:0]base_offset;
  output [63:0]log_src;
  output [63:0]log_size;
  output [63:0]time_cycles;
  output logclr_done_reg;
  output reg_init_complete;
  output [27:0]vaddr_offset;
  output [31:0]physical_src_addr;
  output [31:0]physical_dest_addr;
  output start_redolog;
  output [2:0]operation_type;
  output [63:0]redolog_src_data;
  output [63:0]redolog_dest_data;
  output [31:0]raddr;
  output [31:0]rdata;
  output [31:0]waddr;
  output [31:0]wdata;
  output data_copy_pulse;
  output [31:0]regout;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M02_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_AXI_CLK, ASSOCIATED_BUSIF M02_AXI, ASSOCIATED_RESET m02_axi_aresetn, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk" *) input m02_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M02_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_AXI_RST, POLARITY ACTIVE_LOW" *) input m02_axi_aresetn;
  input m02_axi_init_axi_txn;
  output m02_axi_error;
  output m02_axi_txn_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [5:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 12, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [31:0]m00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output m00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input m00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]m00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]m00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output m00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input m00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input m00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output m00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output m00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input m00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]m00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk" *) input m00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW" *) input m00_axi_aresetn;
  input m00_axi_init_axi_txn;
  output m00_axi_error;
  output m00_axi_txn_done;

  wire \<const0> ;
  wire \<const1> ;
  wire [63:0]base_offset;
  wire data_copy_pulse;
  wire datacpy_done;
  wire [3:0]datacpy_state;
  wire [2:0]\^dataout ;
  wire [63:0]log_size;
  wire [63:0]log_src;
  wire logclr_done_reg;
  wire m00_axi_aclk;
  wire [4:2]\^m00_axi_araddr ;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [6:3]\^m00_axi_awaddr ;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire m00_axi_wvalid;
  wire m01_axi_aclk;
  wire [4:2]\^m01_axi_araddr ;
  wire m01_axi_aresetn;
  wire m01_axi_arready;
  wire m01_axi_arvalid;
  wire [6:3]\^m01_axi_awaddr ;
  wire m01_axi_awready;
  wire m01_axi_awvalid;
  wire m01_axi_bready;
  wire m01_axi_bvalid;
  wire [31:0]m01_axi_rdata;
  wire m01_axi_rready;
  wire m01_axi_rvalid;
  wire [31:0]m01_axi_wdata;
  wire m01_axi_wready;
  wire m01_axi_wvalid;
  wire m02_axi_aclk;
  wire [31:0]m02_axi_araddr;
  wire m02_axi_aresetn;
  wire m02_axi_arready;
  wire m02_axi_arvalid;
  wire [31:0]m02_axi_awaddr;
  wire m02_axi_awready;
  wire m02_axi_awvalid;
  wire m02_axi_bready;
  wire m02_axi_bvalid;
  wire [31:0]m02_axi_rdata;
  wire m02_axi_rready;
  wire m02_axi_rvalid;
  wire [31:0]m02_axi_wdata;
  wire m02_axi_wready;
  wire m02_axi_wvalid;
  wire memclr_done;
  wire [3:0]memclr_state;
  wire metadata_done;
  wire [3:0]metadatacpy_state;
  wire [1:0]\^operation_type ;
  wire [31:1]\^physical_dest_addr ;
  wire [31:20]\^physical_src_addr ;
  wire [31:0]raddr;
  wire [31:0]rdata;
  wire [63:0]redolog_dest_data;
  wire [63:0]redolog_src_data;
  wire reg_init_complete;
  wire [31:0]\^regout ;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire start_logclr;
  wire start_redolog;
  wire [63:0]time_cycles;
  wire [63:0]\^ulog_offset ;
  wire [11:0]\^vaddr_offset ;
  wire [31:0]waddr;
  wire [31:0]wdata;

  assign dataout[31] = \<const0> ;
  assign dataout[30] = \<const0> ;
  assign dataout[29] = \<const0> ;
  assign dataout[28] = \<const0> ;
  assign dataout[27] = \<const0> ;
  assign dataout[26] = \<const0> ;
  assign dataout[25] = \<const0> ;
  assign dataout[24] = \<const0> ;
  assign dataout[23] = \<const0> ;
  assign dataout[22] = \<const0> ;
  assign dataout[21] = \<const0> ;
  assign dataout[20] = \<const0> ;
  assign dataout[19] = \<const0> ;
  assign dataout[18] = \<const0> ;
  assign dataout[17] = \<const0> ;
  assign dataout[16] = \<const0> ;
  assign dataout[15] = \<const0> ;
  assign dataout[14] = \<const0> ;
  assign dataout[13] = \<const0> ;
  assign dataout[12] = \<const0> ;
  assign dataout[11] = \<const0> ;
  assign dataout[10] = \<const0> ;
  assign dataout[9] = \<const0> ;
  assign dataout[8] = \<const0> ;
  assign dataout[7] = \<const0> ;
  assign dataout[6] = \<const0> ;
  assign dataout[5] = \<const0> ;
  assign dataout[4] = \<const0> ;
  assign dataout[3] = \<const0> ;
  assign dataout[2:0] = \^dataout [2:0];
  assign m00_axi_araddr[31] = \<const0> ;
  assign m00_axi_araddr[30] = \<const1> ;
  assign m00_axi_araddr[29] = \<const0> ;
  assign m00_axi_araddr[28] = \<const0> ;
  assign m00_axi_araddr[27] = \<const0> ;
  assign m00_axi_araddr[26] = \<const0> ;
  assign m00_axi_araddr[25] = \<const0> ;
  assign m00_axi_araddr[24] = \<const0> ;
  assign m00_axi_araddr[23] = \<const0> ;
  assign m00_axi_araddr[22] = \<const0> ;
  assign m00_axi_araddr[21] = \<const0> ;
  assign m00_axi_araddr[20] = \<const0> ;
  assign m00_axi_araddr[19] = \<const0> ;
  assign m00_axi_araddr[18] = \<const0> ;
  assign m00_axi_araddr[17] = \<const0> ;
  assign m00_axi_araddr[16] = \<const0> ;
  assign m00_axi_araddr[15] = \<const0> ;
  assign m00_axi_araddr[14] = \<const0> ;
  assign m00_axi_araddr[13] = \<const0> ;
  assign m00_axi_araddr[12] = \<const0> ;
  assign m00_axi_araddr[11] = \<const0> ;
  assign m00_axi_araddr[10] = \<const0> ;
  assign m00_axi_araddr[9] = \<const0> ;
  assign m00_axi_araddr[8] = \<const0> ;
  assign m00_axi_araddr[7] = \<const0> ;
  assign m00_axi_araddr[6] = \<const0> ;
  assign m00_axi_araddr[5] = \^m00_axi_araddr [4];
  assign m00_axi_araddr[4] = \^m00_axi_araddr [4];
  assign m00_axi_araddr[3] = \<const0> ;
  assign m00_axi_araddr[2] = \^m00_axi_araddr [2];
  assign m00_axi_araddr[1] = \<const0> ;
  assign m00_axi_araddr[0] = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const1> ;
  assign m00_axi_awaddr[31] = \<const0> ;
  assign m00_axi_awaddr[30] = \<const1> ;
  assign m00_axi_awaddr[29] = \<const0> ;
  assign m00_axi_awaddr[28] = \<const0> ;
  assign m00_axi_awaddr[27] = \<const0> ;
  assign m00_axi_awaddr[26] = \<const0> ;
  assign m00_axi_awaddr[25] = \<const0> ;
  assign m00_axi_awaddr[24] = \<const0> ;
  assign m00_axi_awaddr[23] = \<const0> ;
  assign m00_axi_awaddr[22] = \<const0> ;
  assign m00_axi_awaddr[21] = \<const0> ;
  assign m00_axi_awaddr[20] = \<const0> ;
  assign m00_axi_awaddr[19] = \<const0> ;
  assign m00_axi_awaddr[18] = \<const0> ;
  assign m00_axi_awaddr[17] = \<const0> ;
  assign m00_axi_awaddr[16] = \<const0> ;
  assign m00_axi_awaddr[15] = \<const0> ;
  assign m00_axi_awaddr[14] = \<const0> ;
  assign m00_axi_awaddr[13] = \<const0> ;
  assign m00_axi_awaddr[12] = \<const0> ;
  assign m00_axi_awaddr[11] = \<const0> ;
  assign m00_axi_awaddr[10] = \<const0> ;
  assign m00_axi_awaddr[9] = \<const0> ;
  assign m00_axi_awaddr[8] = \<const0> ;
  assign m00_axi_awaddr[7] = \<const0> ;
  assign m00_axi_awaddr[6:3] = \^m00_axi_awaddr [6:3];
  assign m00_axi_awaddr[2] = \<const0> ;
  assign m00_axi_awaddr[1] = \<const0> ;
  assign m00_axi_awaddr[0] = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_error = \<const0> ;
  assign m00_axi_txn_done = \<const0> ;
  assign m00_axi_wstrb[3] = \<const1> ;
  assign m00_axi_wstrb[2] = \<const1> ;
  assign m00_axi_wstrb[1] = \<const1> ;
  assign m00_axi_wstrb[0] = \<const1> ;
  assign m01_axi_araddr[31] = \<const0> ;
  assign m01_axi_araddr[30] = \<const1> ;
  assign m01_axi_araddr[29] = \<const0> ;
  assign m01_axi_araddr[28] = \<const0> ;
  assign m01_axi_araddr[27] = \<const0> ;
  assign m01_axi_araddr[26] = \<const0> ;
  assign m01_axi_araddr[25] = \<const0> ;
  assign m01_axi_araddr[24] = \<const0> ;
  assign m01_axi_araddr[23] = \<const0> ;
  assign m01_axi_araddr[22] = \<const0> ;
  assign m01_axi_araddr[21] = \<const0> ;
  assign m01_axi_araddr[20] = \<const0> ;
  assign m01_axi_araddr[19] = \<const0> ;
  assign m01_axi_araddr[18] = \<const0> ;
  assign m01_axi_araddr[17] = \<const0> ;
  assign m01_axi_araddr[16] = \<const0> ;
  assign m01_axi_araddr[15] = \<const0> ;
  assign m01_axi_araddr[14] = \<const0> ;
  assign m01_axi_araddr[13] = \<const0> ;
  assign m01_axi_araddr[12] = \<const0> ;
  assign m01_axi_araddr[11] = \<const0> ;
  assign m01_axi_araddr[10] = \<const0> ;
  assign m01_axi_araddr[9] = \<const0> ;
  assign m01_axi_araddr[8] = \<const0> ;
  assign m01_axi_araddr[7] = \<const0> ;
  assign m01_axi_araddr[6] = \<const0> ;
  assign m01_axi_araddr[5] = \^m01_axi_araddr [4];
  assign m01_axi_araddr[4] = \^m01_axi_araddr [4];
  assign m01_axi_araddr[3] = \<const0> ;
  assign m01_axi_araddr[2] = \^m01_axi_araddr [2];
  assign m01_axi_araddr[1] = \<const0> ;
  assign m01_axi_araddr[0] = \<const0> ;
  assign m01_axi_arprot[2] = \<const0> ;
  assign m01_axi_arprot[1] = \<const0> ;
  assign m01_axi_arprot[0] = \<const1> ;
  assign m01_axi_awaddr[31] = \<const0> ;
  assign m01_axi_awaddr[30] = \<const1> ;
  assign m01_axi_awaddr[29] = \<const0> ;
  assign m01_axi_awaddr[28] = \<const0> ;
  assign m01_axi_awaddr[27] = \<const0> ;
  assign m01_axi_awaddr[26] = \<const0> ;
  assign m01_axi_awaddr[25] = \<const0> ;
  assign m01_axi_awaddr[24] = \<const0> ;
  assign m01_axi_awaddr[23] = \<const0> ;
  assign m01_axi_awaddr[22] = \<const0> ;
  assign m01_axi_awaddr[21] = \<const0> ;
  assign m01_axi_awaddr[20] = \<const0> ;
  assign m01_axi_awaddr[19] = \<const0> ;
  assign m01_axi_awaddr[18] = \<const0> ;
  assign m01_axi_awaddr[17] = \<const0> ;
  assign m01_axi_awaddr[16] = \<const0> ;
  assign m01_axi_awaddr[15] = \<const0> ;
  assign m01_axi_awaddr[14] = \<const0> ;
  assign m01_axi_awaddr[13] = \<const0> ;
  assign m01_axi_awaddr[12] = \<const0> ;
  assign m01_axi_awaddr[11] = \<const0> ;
  assign m01_axi_awaddr[10] = \<const0> ;
  assign m01_axi_awaddr[9] = \<const0> ;
  assign m01_axi_awaddr[8] = \<const0> ;
  assign m01_axi_awaddr[7] = \<const0> ;
  assign m01_axi_awaddr[6:3] = \^m01_axi_awaddr [6:3];
  assign m01_axi_awaddr[2] = \<const0> ;
  assign m01_axi_awaddr[1] = \<const0> ;
  assign m01_axi_awaddr[0] = \<const0> ;
  assign m01_axi_awprot[2] = \<const0> ;
  assign m01_axi_awprot[1] = \<const0> ;
  assign m01_axi_awprot[0] = \<const0> ;
  assign m01_axi_error = \<const0> ;
  assign m01_axi_txn_done = \<const0> ;
  assign m01_axi_wstrb[3] = \<const1> ;
  assign m01_axi_wstrb[2] = \<const1> ;
  assign m01_axi_wstrb[1] = \<const1> ;
  assign m01_axi_wstrb[0] = \<const1> ;
  assign m02_axi_arprot[2] = \<const0> ;
  assign m02_axi_arprot[1] = \<const0> ;
  assign m02_axi_arprot[0] = \<const1> ;
  assign m02_axi_awprot[2] = \<const0> ;
  assign m02_axi_awprot[1] = \<const0> ;
  assign m02_axi_awprot[0] = \<const0> ;
  assign m02_axi_error = \<const0> ;
  assign m02_axi_txn_done = \<const0> ;
  assign m02_axi_wstrb[3] = \<const1> ;
  assign m02_axi_wstrb[2] = \<const1> ;
  assign m02_axi_wstrb[1] = \<const1> ;
  assign m02_axi_wstrb[0] = \<const1> ;
  assign operation_type[2] = \<const0> ;
  assign operation_type[1:0] = \^operation_type [1:0];
  assign physical_dest_addr[31:20] = \^physical_dest_addr [31:20];
  assign physical_dest_addr[19:2] = \^ulog_offset [19:2];
  assign physical_dest_addr[1] = \^physical_dest_addr [1];
  assign physical_dest_addr[0] = \^ulog_offset [0];
  assign physical_src_addr[31:20] = \^physical_src_addr [31:20];
  assign physical_src_addr[19:0] = log_src[19:0];
  assign regout[31:16] = \^regout [31:16];
  assign regout[15:4] = \^vaddr_offset [11:0];
  assign regout[3:0] = \^regout [3:0];
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign start_ulog = \<const0> ;
  assign ulog_offset[63:2] = \^ulog_offset [63:2];
  assign ulog_offset[1] = \^physical_dest_addr [1];
  assign ulog_offset[0] = \^ulog_offset [0];
  assign vaddr_offset[27:12] = \^regout [31:16];
  assign vaddr_offset[11:0] = \^vaddr_offset [11:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_undolog_0_3_undolog_v2_1 inst
       (.Q({\^regout [31:16],\^vaddr_offset ,\^regout [3:0]}),
        .base_offset(base_offset),
        .data_copy_pulse(data_copy_pulse),
        .datacpy_done(datacpy_done),
        .datacpy_state(datacpy_state),
        .\dataout[0] (\^dataout [0]),
        .\dataout[1] (\^dataout [1]),
        .\dataout[2] (\^dataout [2]),
        .log_size(log_size[63:32]),
        .\log_size[31] (log_size[31:0]),
        .\log_src[31] (log_src[31:0]),
        .\log_src[63] (log_src[63:32]),
        .logclr_done_reg(logclr_done_reg),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr({\^m00_axi_araddr [4],\^m00_axi_araddr [2]}),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_awaddr(\^m00_axi_awaddr ),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wvalid(m00_axi_wvalid),
        .m01_axi_aclk(m01_axi_aclk),
        .m01_axi_araddr({\^m01_axi_araddr [4],\^m01_axi_araddr [2]}),
        .m01_axi_aresetn(m01_axi_aresetn),
        .m01_axi_arready(m01_axi_arready),
        .m01_axi_arvalid(m01_axi_arvalid),
        .m01_axi_awaddr(\^m01_axi_awaddr ),
        .m01_axi_awready(m01_axi_awready),
        .m01_axi_awvalid(m01_axi_awvalid),
        .m01_axi_bready(m01_axi_bready),
        .m01_axi_bvalid(m01_axi_bvalid),
        .m01_axi_rdata(m01_axi_rdata),
        .m01_axi_rready(m01_axi_rready),
        .m01_axi_rvalid(m01_axi_rvalid),
        .m01_axi_wdata(m01_axi_wdata),
        .m01_axi_wready(m01_axi_wready),
        .m01_axi_wvalid(m01_axi_wvalid),
        .m02_axi_aclk(m02_axi_aclk),
        .m02_axi_araddr(m02_axi_araddr),
        .m02_axi_aresetn(m02_axi_aresetn),
        .m02_axi_arready(m02_axi_arready),
        .m02_axi_arvalid(m02_axi_arvalid),
        .m02_axi_awaddr(m02_axi_awaddr),
        .m02_axi_awready(m02_axi_awready),
        .m02_axi_awvalid(m02_axi_awvalid),
        .m02_axi_bready(m02_axi_bready),
        .m02_axi_bvalid(m02_axi_bvalid),
        .m02_axi_rdata(m02_axi_rdata),
        .m02_axi_rready(m02_axi_rready),
        .m02_axi_rvalid(m02_axi_rvalid),
        .m02_axi_wdata(m02_axi_wdata),
        .m02_axi_wready(m02_axi_wready),
        .m02_axi_wvalid(m02_axi_wvalid),
        .memclr_done(memclr_done),
        .memclr_state(memclr_state),
        .metadata_done(metadata_done),
        .metadatacpy_state(metadatacpy_state),
        .\operation_type[1] (\^operation_type ),
        .physical_dest_addr(\^physical_dest_addr [31:20]),
        .physical_src_addr(\^physical_src_addr ),
        .\raddr[31] (raddr),
        .\rdata[31] (rdata),
        .redolog_dest_data(redolog_dest_data),
        .redolog_src_data(redolog_src_data),
        .reg_init_complete(reg_init_complete),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .start_logclr(start_logclr),
        .start_redolog(start_redolog),
        .time_cycles(time_cycles),
        .ulog_offset(\^ulog_offset [63:32]),
        .\ulog_offset[31] ({\^ulog_offset [31:2],\^physical_dest_addr [1],\^ulog_offset [0]}),
        .\waddr[31] (waddr),
        .\wdata[31] (wdata));
endmodule

module design_1_undolog_0_3_undolog_v2_1
   (s00_axi_awready,
    s00_axi_wready,
    m00_axi_rready,
    m00_axi_arvalid,
    m01_axi_rready,
    m01_axi_arvalid,
    \dataout[1] ,
    \dataout[0] ,
    \dataout[2] ,
    Q,
    metadatacpy_state,
    \log_src[31] ,
    m02_axi_bready,
    m00_axi_bready,
    m01_axi_bready,
    \ulog_offset[31] ,
    \log_size[31] ,
    datacpy_done,
    metadata_done,
    memclr_done,
    ulog_offset,
    base_offset,
    \log_src[63] ,
    log_size,
    \operation_type[1] ,
    s00_axi_arready,
    s00_axi_rdata,
    m02_axi_rready,
    \rdata[31] ,
    redolog_dest_data,
    redolog_src_data,
    \raddr[31] ,
    \waddr[31] ,
    \wdata[31] ,
    m02_axi_awaddr,
    m02_axi_wdata,
    m02_axi_araddr,
    m00_axi_awaddr,
    m00_axi_wdata,
    m00_axi_araddr,
    m01_axi_awaddr,
    m01_axi_wdata,
    m01_axi_araddr,
    time_cycles,
    start_logclr,
    data_copy_pulse,
    start_redolog,
    memclr_state,
    physical_dest_addr,
    datacpy_state,
    physical_src_addr,
    reg_init_complete,
    m00_axi_wvalid,
    m00_axi_awvalid,
    m01_axi_wvalid,
    m01_axi_awvalid,
    m02_axi_arvalid,
    m02_axi_wvalid,
    m02_axi_awvalid,
    s00_axi_rvalid,
    s00_axi_bvalid,
    logclr_done_reg,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aresetn,
    m00_axi_aresetn,
    m02_axi_aresetn,
    m01_axi_aresetn,
    m00_axi_rvalid,
    m01_axi_rvalid,
    m02_axi_bvalid,
    m00_axi_bvalid,
    m01_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    m00_axi_aclk,
    m01_axi_aclk,
    m02_axi_aclk,
    m02_axi_rvalid,
    m02_axi_rdata,
    m00_axi_rdata,
    m01_axi_rdata,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready,
    m02_axi_arready,
    m02_axi_wready,
    m02_axi_awready,
    m00_axi_wready,
    m00_axi_awready,
    m00_axi_arready,
    m01_axi_wready,
    m01_axi_awready,
    m01_axi_arready);
  output s00_axi_awready;
  output s00_axi_wready;
  output m00_axi_rready;
  output m00_axi_arvalid;
  output m01_axi_rready;
  output m01_axi_arvalid;
  output \dataout[1] ;
  output \dataout[0] ;
  output \dataout[2] ;
  output [31:0]Q;
  output [3:0]metadatacpy_state;
  output [31:0]\log_src[31] ;
  output m02_axi_bready;
  output m00_axi_bready;
  output m01_axi_bready;
  output [31:0]\ulog_offset[31] ;
  output [31:0]\log_size[31] ;
  output datacpy_done;
  output metadata_done;
  output memclr_done;
  output [31:0]ulog_offset;
  output [63:0]base_offset;
  output [31:0]\log_src[63] ;
  output [31:0]log_size;
  output [1:0]\operation_type[1] ;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output m02_axi_rready;
  output [31:0]\rdata[31] ;
  output [63:0]redolog_dest_data;
  output [63:0]redolog_src_data;
  output [31:0]\raddr[31] ;
  output [31:0]\waddr[31] ;
  output [31:0]\wdata[31] ;
  output [31:0]m02_axi_awaddr;
  output [31:0]m02_axi_wdata;
  output [31:0]m02_axi_araddr;
  output [3:0]m00_axi_awaddr;
  output [31:0]m00_axi_wdata;
  output [1:0]m00_axi_araddr;
  output [3:0]m01_axi_awaddr;
  output [31:0]m01_axi_wdata;
  output [1:0]m01_axi_araddr;
  output [63:0]time_cycles;
  output start_logclr;
  output data_copy_pulse;
  output start_redolog;
  output [3:0]memclr_state;
  output [11:0]physical_dest_addr;
  output [3:0]datacpy_state;
  output [11:0]physical_src_addr;
  output reg_init_complete;
  output m00_axi_wvalid;
  output m00_axi_awvalid;
  output m01_axi_wvalid;
  output m01_axi_awvalid;
  output m02_axi_arvalid;
  output m02_axi_wvalid;
  output m02_axi_awvalid;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output logclr_done_reg;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aresetn;
  input m00_axi_aresetn;
  input m02_axi_aresetn;
  input m01_axi_aresetn;
  input m00_axi_rvalid;
  input m01_axi_rvalid;
  input m02_axi_bvalid;
  input m00_axi_bvalid;
  input m01_axi_bvalid;
  input s00_axi_aclk;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input m00_axi_aclk;
  input m01_axi_aclk;
  input m02_axi_aclk;
  input m02_axi_rvalid;
  input [31:0]m02_axi_rdata;
  input [31:0]m00_axi_rdata;
  input [31:0]m01_axi_rdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input m02_axi_arready;
  input m02_axi_wready;
  input m02_axi_awready;
  input m00_axi_wready;
  input m00_axi_awready;
  input m00_axi_arready;
  input m01_axi_wready;
  input m01_axi_awready;
  input m01_axi_arready;

  wire [31:2]DMA_DEST1;
  wire DMA_DEST1_carry__0_n_0;
  wire DMA_DEST1_carry__0_n_1;
  wire DMA_DEST1_carry__0_n_2;
  wire DMA_DEST1_carry__0_n_3;
  wire DMA_DEST1_carry__0_n_5;
  wire DMA_DEST1_carry__0_n_6;
  wire DMA_DEST1_carry__0_n_7;
  wire DMA_DEST1_carry__1_n_0;
  wire DMA_DEST1_carry__1_n_1;
  wire DMA_DEST1_carry__1_n_2;
  wire DMA_DEST1_carry__1_n_3;
  wire DMA_DEST1_carry__1_n_5;
  wire DMA_DEST1_carry__1_n_6;
  wire DMA_DEST1_carry__1_n_7;
  wire DMA_DEST1_carry__2_n_3;
  wire DMA_DEST1_carry__2_n_5;
  wire DMA_DEST1_carry__2_n_6;
  wire DMA_DEST1_carry__2_n_7;
  wire DMA_DEST1_carry_n_0;
  wire DMA_DEST1_carry_n_1;
  wire DMA_DEST1_carry_n_2;
  wire DMA_DEST1_carry_n_3;
  wire DMA_DEST1_carry_n_5;
  wire DMA_DEST1_carry_n_6;
  wire DMA_DEST1_carry_n_7;
  wire DMA_SRC0_carry__0_n_5;
  wire DMA_SRC0_carry__0_n_6;
  wire DMA_SRC0_carry__0_n_7;
  wire DMA_SRC0_carry_n_0;
  wire DMA_SRC0_carry_n_1;
  wire DMA_SRC0_carry_n_2;
  wire DMA_SRC0_carry_n_3;
  wire DMA_SRC0_carry_n_5;
  wire DMA_SRC0_carry_n_6;
  wire DMA_SRC0_carry_n_7;
  wire DMA_START2;
  wire [31:0]Q;
  wire [63:0]base_offset;
  wire data_copy_pulse;
  wire datacpy_done;
  wire [3:0]datacpy_state;
  wire \dataout[0] ;
  wire \dataout[1] ;
  wire \dataout[2] ;
  wire [27:20]in13;
  wire [31:2]in24;
  wire [31:3]in26;
  wire [31:2]in27;
  wire [31:0]log_size;
  wire [31:0]\log_size[31] ;
  wire [31:0]\log_src[31] ;
  wire [31:0]\log_src[63] ;
  wire logclr_done_reg;
  wire m00_axi_aclk;
  wire [1:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [3:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire m00_axi_wvalid;
  wire m01_axi_aclk;
  wire [1:0]m01_axi_araddr;
  wire m01_axi_aresetn;
  wire m01_axi_arready;
  wire m01_axi_arvalid;
  wire [3:0]m01_axi_awaddr;
  wire m01_axi_awready;
  wire m01_axi_awvalid;
  wire m01_axi_bready;
  wire m01_axi_bvalid;
  wire [31:0]m01_axi_rdata;
  wire m01_axi_rready;
  wire m01_axi_rvalid;
  wire [31:0]m01_axi_wdata;
  wire m01_axi_wready;
  wire m01_axi_wvalid;
  wire m02_axi_aclk;
  wire [31:0]m02_axi_araddr;
  wire m02_axi_aresetn;
  wire m02_axi_arready;
  wire m02_axi_arvalid;
  wire [31:0]m02_axi_awaddr;
  wire m02_axi_awready;
  wire m02_axi_awvalid;
  wire m02_axi_bready;
  wire m02_axi_bvalid;
  wire [31:0]m02_axi_rdata;
  wire m02_axi_rready;
  wire m02_axi_rvalid;
  wire [31:0]m02_axi_wdata;
  wire m02_axi_wready;
  wire m02_axi_wvalid;
  wire memclr_done;
  wire [3:0]memclr_state;
  wire metadata_done;
  wire [3:0]metadatacpy_state;
  wire mst_exec_state1__9;
  wire [1:0]\operation_type[1] ;
  wire [11:0]physical_dest_addr;
  wire [11:0]physical_src_addr;
  wire [31:0]\raddr[31] ;
  wire [31:0]\rdata[31] ;
  wire [63:0]redolog_dest_data;
  wire [63:0]redolog_src_data;
  wire reg_init_complete;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire start_clobber_reg;
  wire start_logclr;
  wire start_redolog;
  wire [63:0]time_cycles;
  wire [31:0]ulog_offset;
  wire ulog_offset0_carry__0_n_5;
  wire ulog_offset0_carry__0_n_6;
  wire ulog_offset0_carry__0_n_7;
  wire ulog_offset0_carry_n_0;
  wire ulog_offset0_carry_n_1;
  wire ulog_offset0_carry_n_2;
  wire ulog_offset0_carry_n_3;
  wire ulog_offset0_carry_n_5;
  wire ulog_offset0_carry_n_6;
  wire ulog_offset0_carry_n_7;
  wire [31:0]\ulog_offset[31] ;
  wire undolog_v2_1_M00_AXI_inst_n_12;
  wire undolog_v2_1_M00_AXI_inst_n_13;
  wire undolog_v2_1_M00_AXI_inst_n_7;
  wire undolog_v2_1_M01_AXI_inst_n_12;
  wire undolog_v2_1_M01_AXI_inst_n_13;
  wire undolog_v2_1_M01_AXI_inst_n_6;
  wire undolog_v2_1_M01_AXI_inst_n_7;
  wire undolog_v2_1_M02_AXI_inst_n_0;
  wire undolog_v2_1_M02_AXI_inst_n_1;
  wire undolog_v2_1_M02_AXI_inst_n_12;
  wire undolog_v2_1_M02_AXI_inst_n_2;
  wire undolog_v2_1_S00_AXI_inst_n_108;
  wire undolog_v2_1_S00_AXI_inst_n_109;
  wire undolog_v2_1_S00_AXI_inst_n_110;
  wire undolog_v2_1_S00_AXI_inst_n_111;
  wire undolog_v2_1_S00_AXI_inst_n_112;
  wire undolog_v2_1_S00_AXI_inst_n_113;
  wire undolog_v2_1_S00_AXI_inst_n_146;
  wire undolog_v2_1_S00_AXI_inst_n_147;
  wire undolog_v2_1_S00_AXI_inst_n_148;
  wire undolog_v2_1_S00_AXI_inst_n_149;
  wire undolog_v2_1_S00_AXI_inst_n_150;
  wire undolog_v2_1_S00_AXI_inst_n_151;
  wire undolog_v2_1_S00_AXI_inst_n_152;
  wire undolog_v2_1_S00_AXI_inst_n_153;
  wire undolog_v2_1_S00_AXI_inst_n_154;
  wire undolog_v2_1_S00_AXI_inst_n_155;
  wire undolog_v2_1_S00_AXI_inst_n_156;
  wire undolog_v2_1_S00_AXI_inst_n_157;
  wire undolog_v2_1_S00_AXI_inst_n_158;
  wire undolog_v2_1_S00_AXI_inst_n_159;
  wire undolog_v2_1_S00_AXI_inst_n_160;
  wire undolog_v2_1_S00_AXI_inst_n_161;
  wire undolog_v2_1_S00_AXI_inst_n_162;
  wire undolog_v2_1_S00_AXI_inst_n_163;
  wire undolog_v2_1_S00_AXI_inst_n_164;
  wire undolog_v2_1_S00_AXI_inst_n_165;
  wire undolog_v2_1_S00_AXI_inst_n_166;
  wire undolog_v2_1_S00_AXI_inst_n_167;
  wire undolog_v2_1_S00_AXI_inst_n_168;
  wire undolog_v2_1_S00_AXI_inst_n_169;
  wire undolog_v2_1_S00_AXI_inst_n_202;
  wire undolog_v2_1_S00_AXI_inst_n_203;
  wire undolog_v2_1_S00_AXI_inst_n_204;
  wire undolog_v2_1_S00_AXI_inst_n_205;
  wire undolog_v2_1_S00_AXI_inst_n_206;
  wire undolog_v2_1_S00_AXI_inst_n_207;
  wire undolog_v2_1_S00_AXI_inst_n_208;
  wire undolog_v2_1_S00_AXI_inst_n_209;
  wire undolog_v2_1_S00_AXI_inst_n_210;
  wire undolog_v2_1_S00_AXI_inst_n_211;
  wire undolog_v2_1_S00_AXI_inst_n_212;
  wire undolog_v2_1_S00_AXI_inst_n_213;
  wire undolog_v2_1_S00_AXI_inst_n_214;
  wire undolog_v2_1_S00_AXI_inst_n_215;
  wire undolog_v2_1_S00_AXI_inst_n_216;
  wire undolog_v2_1_S00_AXI_inst_n_217;
  wire undolog_v2_1_S00_AXI_inst_n_218;
  wire undolog_v2_1_S00_AXI_inst_n_219;
  wire undolog_v2_1_S00_AXI_inst_n_220;
  wire undolog_v2_1_S00_AXI_inst_n_221;
  wire undolog_v2_1_S00_AXI_inst_n_222;
  wire undolog_v2_1_S00_AXI_inst_n_223;
  wire undolog_v2_1_S00_AXI_inst_n_224;
  wire undolog_v2_1_S00_AXI_inst_n_225;
  wire undolog_v2_1_S00_AXI_inst_n_226;
  wire undolog_v2_1_S00_AXI_inst_n_227;
  wire undolog_v2_1_S00_AXI_inst_n_228;
  wire undolog_v2_1_S00_AXI_inst_n_229;
  wire undolog_v2_1_S00_AXI_inst_n_230;
  wire undolog_v2_1_S00_AXI_inst_n_231;
  wire undolog_v2_1_S00_AXI_inst_n_232;
  wire undolog_v2_1_S00_AXI_inst_n_233;
  wire undolog_v2_1_S00_AXI_inst_n_234;
  wire undolog_v2_1_S00_AXI_inst_n_235;
  wire undolog_v2_1_S00_AXI_inst_n_236;
  wire undolog_v2_1_S00_AXI_inst_n_237;
  wire undolog_v2_1_S00_AXI_inst_n_238;
  wire undolog_v2_1_S00_AXI_inst_n_239;
  wire undolog_v2_1_S00_AXI_inst_n_240;
  wire undolog_v2_1_S00_AXI_inst_n_241;
  wire undolog_v2_1_S00_AXI_inst_n_274;
  wire undolog_v2_1_S00_AXI_inst_n_275;
  wire undolog_v2_1_S00_AXI_inst_n_313;
  wire undolog_v2_1_S00_AXI_inst_n_314;
  wire undolog_v2_1_S00_AXI_inst_n_315;
  wire undolog_v2_1_S00_AXI_inst_n_316;
  wire undolog_v2_1_S00_AXI_inst_n_317;
  wire undolog_v2_1_S00_AXI_inst_n_318;
  wire undolog_v2_1_S00_AXI_inst_n_319;
  wire undolog_v2_1_S00_AXI_inst_n_320;
  wire undolog_v2_1_S00_AXI_inst_n_321;
  wire undolog_v2_1_S00_AXI_inst_n_322;
  wire undolog_v2_1_S00_AXI_inst_n_323;
  wire undolog_v2_1_S00_AXI_inst_n_324;
  wire undolog_v2_1_S00_AXI_inst_n_325;
  wire undolog_v2_1_S00_AXI_inst_n_326;
  wire undolog_v2_1_S00_AXI_inst_n_327;
  wire undolog_v2_1_S00_AXI_inst_n_328;
  wire undolog_v2_1_S00_AXI_inst_n_329;
  wire undolog_v2_1_S00_AXI_inst_n_330;
  wire undolog_v2_1_S00_AXI_inst_n_331;
  wire undolog_v2_1_S00_AXI_inst_n_332;
  wire undolog_v2_1_S00_AXI_inst_n_335;
  wire undolog_v2_1_S00_AXI_inst_n_336;
  wire undolog_v2_1_S00_AXI_inst_n_337;
  wire undolog_v2_1_S00_AXI_inst_n_338;
  wire undolog_v2_1_S00_AXI_inst_n_339;
  wire undolog_v2_1_S00_AXI_inst_n_340;
  wire undolog_v2_1_S00_AXI_inst_n_341;
  wire undolog_v2_1_S00_AXI_inst_n_342;
  wire undolog_v2_1_S00_AXI_inst_n_343;
  wire undolog_v2_1_S00_AXI_inst_n_344;
  wire undolog_v2_1_S00_AXI_inst_n_345;
  wire undolog_v2_1_S00_AXI_inst_n_346;
  wire undolog_v2_1_S00_AXI_inst_n_347;
  wire undolog_v2_1_S00_AXI_inst_n_348;
  wire undolog_v2_1_S00_AXI_inst_n_349;
  wire undolog_v2_1_S00_AXI_inst_n_350;
  wire undolog_v2_1_S00_AXI_inst_n_351;
  wire undolog_v2_1_S00_AXI_inst_n_352;
  wire undolog_v2_1_S00_AXI_inst_n_353;
  wire undolog_v2_1_S00_AXI_inst_n_354;
  wire undolog_v2_1_S00_AXI_inst_n_355;
  wire undolog_v2_1_S00_AXI_inst_n_356;
  wire undolog_v2_1_S00_AXI_inst_n_357;
  wire undolog_v2_1_S00_AXI_inst_n_358;
  wire undolog_v2_1_S00_AXI_inst_n_359;
  wire undolog_v2_1_S00_AXI_inst_n_360;
  wire undolog_v2_1_S00_AXI_inst_n_361;
  wire undolog_v2_1_S00_AXI_inst_n_362;
  wire undolog_v2_1_S00_AXI_inst_n_363;
  wire undolog_v2_1_S00_AXI_inst_n_364;
  wire undolog_v2_1_S00_AXI_inst_n_494;
  wire undolog_v2_1_S00_AXI_inst_n_495;
  wire undolog_v2_1_S00_AXI_inst_n_496;
  wire undolog_v2_1_S00_AXI_inst_n_497;
  wire undolog_v2_1_S00_AXI_inst_n_498;
  wire undolog_v2_1_S00_AXI_inst_n_499;
  wire undolog_v2_1_S00_AXI_inst_n_500;
  wire undolog_v2_1_S00_AXI_inst_n_501;
  wire undolog_v2_1_S00_AXI_inst_n_502;
  wire undolog_v2_1_S00_AXI_inst_n_503;
  wire undolog_v2_1_S00_AXI_inst_n_504;
  wire undolog_v2_1_S00_AXI_inst_n_505;
  wire undolog_v2_1_S00_AXI_inst_n_506;
  wire undolog_v2_1_S00_AXI_inst_n_507;
  wire undolog_v2_1_S00_AXI_inst_n_508;
  wire undolog_v2_1_S00_AXI_inst_n_509;
  wire undolog_v2_1_S00_AXI_inst_n_510;
  wire undolog_v2_1_S00_AXI_inst_n_511;
  wire undolog_v2_1_S00_AXI_inst_n_512;
  wire undolog_v2_1_S00_AXI_inst_n_513;
  wire undolog_v2_1_S00_AXI_inst_n_514;
  wire undolog_v2_1_S00_AXI_inst_n_515;
  wire undolog_v2_1_S00_AXI_inst_n_516;
  wire undolog_v2_1_S00_AXI_inst_n_517;
  wire undolog_v2_1_S00_AXI_inst_n_518;
  wire undolog_v2_1_S00_AXI_inst_n_519;
  wire undolog_v2_1_S00_AXI_inst_n_520;
  wire undolog_v2_1_S00_AXI_inst_n_521;
  wire undolog_v2_1_S00_AXI_inst_n_522;
  wire undolog_v2_1_S00_AXI_inst_n_523;
  wire undolog_v2_1_S00_AXI_inst_n_524;
  wire undolog_v2_1_S00_AXI_inst_n_525;
  wire undolog_v2_1_S00_AXI_inst_n_526;
  wire undolog_v2_1_S00_AXI_inst_n_73;
  wire undolog_v2_1_S00_AXI_inst_n_74;
  wire undolog_v2_1_S00_AXI_inst_n_75;
  wire [31:0]\waddr[31] ;
  wire [31:0]\wdata[31] ;
  wire [3:3]NLW_DMA_DEST1_carry_CO_UNCONNECTED;
  wire [3:3]NLW_DMA_DEST1_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_DMA_DEST1_carry__1_CO_UNCONNECTED;
  wire [7:3]NLW_DMA_DEST1_carry__2_CO_UNCONNECTED;
  wire [7:6]NLW_DMA_DEST1_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_DMA_SRC0_carry_CO_UNCONNECTED;
  wire [7:3]NLW_DMA_SRC0_carry__0_CO_UNCONNECTED;
  wire [7:4]NLW_DMA_SRC0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_ulog_offset0_carry_CO_UNCONNECTED;
  wire [7:3]NLW_ulog_offset0_carry__0_CO_UNCONNECTED;
  wire [7:4]NLW_ulog_offset0_carry__0_O_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 DMA_DEST1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({DMA_DEST1_carry_n_0,DMA_DEST1_carry_n_1,DMA_DEST1_carry_n_2,DMA_DEST1_carry_n_3,NLW_DMA_DEST1_carry_CO_UNCONNECTED[3],DMA_DEST1_carry_n_5,DMA_DEST1_carry_n_6,DMA_DEST1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,\ulog_offset[31] [4:3],1'b0}),
        .O(DMA_DEST1[9:2]),
        .S({\ulog_offset[31] [9:5],undolog_v2_1_S00_AXI_inst_n_330,undolog_v2_1_S00_AXI_inst_n_331,\ulog_offset[31] [2]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 DMA_DEST1_carry__0
       (.CI(DMA_DEST1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({DMA_DEST1_carry__0_n_0,DMA_DEST1_carry__0_n_1,DMA_DEST1_carry__0_n_2,DMA_DEST1_carry__0_n_3,NLW_DMA_DEST1_carry__0_CO_UNCONNECTED[3],DMA_DEST1_carry__0_n_5,DMA_DEST1_carry__0_n_6,DMA_DEST1_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(DMA_DEST1[17:10]),
        .S(\ulog_offset[31] [17:10]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 DMA_DEST1_carry__1
       (.CI(DMA_DEST1_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({DMA_DEST1_carry__1_n_0,DMA_DEST1_carry__1_n_1,DMA_DEST1_carry__1_n_2,DMA_DEST1_carry__1_n_3,NLW_DMA_DEST1_carry__1_CO_UNCONNECTED[3],DMA_DEST1_carry__1_n_5,DMA_DEST1_carry__1_n_6,DMA_DEST1_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(DMA_DEST1[25:18]),
        .S({physical_dest_addr[5:0],\ulog_offset[31] [19:18]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 DMA_DEST1_carry__2
       (.CI(DMA_DEST1_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_DMA_DEST1_carry__2_CO_UNCONNECTED[7:5],DMA_DEST1_carry__2_n_3,NLW_DMA_DEST1_carry__2_CO_UNCONNECTED[3],DMA_DEST1_carry__2_n_5,DMA_DEST1_carry__2_n_6,DMA_DEST1_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_DMA_DEST1_carry__2_O_UNCONNECTED[7:6],DMA_DEST1[31:26]}),
        .S({1'b0,1'b0,physical_dest_addr[11:6]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 DMA_SRC0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({DMA_SRC0_carry_n_0,DMA_SRC0_carry_n_1,DMA_SRC0_carry_n_2,DMA_SRC0_carry_n_3,NLW_DMA_SRC0_carry_CO_UNCONNECTED[3],DMA_SRC0_carry_n_5,DMA_SRC0_carry_n_6,DMA_SRC0_carry_n_7}),
        .DI({undolog_v2_1_S00_AXI_inst_n_217,undolog_v2_1_S00_AXI_inst_n_218,undolog_v2_1_S00_AXI_inst_n_219,undolog_v2_1_S00_AXI_inst_n_220,undolog_v2_1_S00_AXI_inst_n_221,undolog_v2_1_S00_AXI_inst_n_222,undolog_v2_1_S00_AXI_inst_n_223,1'b0}),
        .O(physical_src_addr[7:0]),
        .S({undolog_v2_1_S00_AXI_inst_n_202,undolog_v2_1_S00_AXI_inst_n_203,undolog_v2_1_S00_AXI_inst_n_204,undolog_v2_1_S00_AXI_inst_n_205,undolog_v2_1_S00_AXI_inst_n_206,undolog_v2_1_S00_AXI_inst_n_207,undolog_v2_1_S00_AXI_inst_n_208,undolog_v2_1_S00_AXI_inst_n_209}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 DMA_SRC0_carry__0
       (.CI(DMA_SRC0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_DMA_SRC0_carry__0_CO_UNCONNECTED[7:3],DMA_SRC0_carry__0_n_5,DMA_SRC0_carry__0_n_6,DMA_SRC0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,undolog_v2_1_S00_AXI_inst_n_230,undolog_v2_1_S00_AXI_inst_n_231,undolog_v2_1_S00_AXI_inst_n_232}),
        .O({NLW_DMA_SRC0_carry__0_O_UNCONNECTED[7:4],physical_src_addr[11:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,undolog_v2_1_S00_AXI_inst_n_322,undolog_v2_1_S00_AXI_inst_n_323,undolog_v2_1_S00_AXI_inst_n_324,undolog_v2_1_S00_AXI_inst_n_325}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 ulog_offset0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({ulog_offset0_carry_n_0,ulog_offset0_carry_n_1,ulog_offset0_carry_n_2,ulog_offset0_carry_n_3,NLW_ulog_offset0_carry_CO_UNCONNECTED[3],ulog_offset0_carry_n_5,ulog_offset0_carry_n_6,ulog_offset0_carry_n_7}),
        .DI({undolog_v2_1_S00_AXI_inst_n_210,undolog_v2_1_S00_AXI_inst_n_211,undolog_v2_1_S00_AXI_inst_n_212,undolog_v2_1_S00_AXI_inst_n_213,undolog_v2_1_S00_AXI_inst_n_214,undolog_v2_1_S00_AXI_inst_n_215,undolog_v2_1_S00_AXI_inst_n_216,1'b0}),
        .O(physical_dest_addr[7:0]),
        .S({undolog_v2_1_S00_AXI_inst_n_162,undolog_v2_1_S00_AXI_inst_n_163,undolog_v2_1_S00_AXI_inst_n_164,undolog_v2_1_S00_AXI_inst_n_165,undolog_v2_1_S00_AXI_inst_n_166,undolog_v2_1_S00_AXI_inst_n_167,undolog_v2_1_S00_AXI_inst_n_168,undolog_v2_1_S00_AXI_inst_n_169}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 ulog_offset0_carry__0
       (.CI(ulog_offset0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_ulog_offset0_carry__0_CO_UNCONNECTED[7:3],ulog_offset0_carry__0_n_5,ulog_offset0_carry__0_n_6,ulog_offset0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,undolog_v2_1_S00_AXI_inst_n_227,undolog_v2_1_S00_AXI_inst_n_228,undolog_v2_1_S00_AXI_inst_n_229}),
        .O({NLW_ulog_offset0_carry__0_O_UNCONNECTED[7:4],physical_dest_addr[11:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,undolog_v2_1_S00_AXI_inst_n_326,undolog_v2_1_S00_AXI_inst_n_327,undolog_v2_1_S00_AXI_inst_n_328,undolog_v2_1_S00_AXI_inst_n_329}));
  design_1_undolog_0_3_undolog_v2_1_M00_AXI undolog_v2_1_M00_AXI_inst
       (.D(undolog_v2_1_S00_AXI_inst_n_364),
        .DMA_DEST1(DMA_DEST1),
        .Q({\log_size[31] [31:28],\log_size[31] [19:1]}),
        .SR(undolog_v2_1_S00_AXI_inst_n_73),
        .in13(in13),
        .logclr_pulsegend1_reg(undolog_v2_1_S00_AXI_inst_n_275),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wvalid(m00_axi_wvalid),
        .memclr_done(memclr_done),
        .memclr_state(memclr_state),
        .physical_src_addr(physical_src_addr[7:0]),
        .\slv_reg0_reg[1] (\ulog_offset[31] [1]),
        .\slv_reg11_reg[2] (undolog_v2_1_M00_AXI_inst_n_7),
        .\slv_reg11_reg[2]_0 (\dataout[2] ),
        .\slv_reg4_reg[19] (\log_src[31] [19:1]),
        .start_clobber_reg(start_clobber_reg),
        .start_clobber_reg_reg_0(undolog_v2_1_S00_AXI_inst_n_274),
        .\wdata_reg[31]_0 (undolog_v2_1_M00_AXI_inst_n_12),
        .\wdata_reg[31]_1 (undolog_v2_1_M00_AXI_inst_n_13));
  design_1_undolog_0_3_undolog_v2_1_M01_AXI undolog_v2_1_M01_AXI_inst
       (.D({undolog_v2_1_S00_AXI_inst_n_240,undolog_v2_1_S00_AXI_inst_n_241}),
        .DMA_START2(DMA_START2),
        .Q(undolog_v2_1_M01_AXI_inst_n_6),
        .SR(undolog_v2_1_S00_AXI_inst_n_75),
        .data_copy_pulse(data_copy_pulse),
        .datacpy_done(datacpy_done),
        .datacpy_state(datacpy_state),
        .m01_axi_aclk(m01_axi_aclk),
        .m01_axi_araddr(m01_axi_araddr),
        .m01_axi_aresetn(m01_axi_aresetn),
        .m01_axi_arready(m01_axi_arready),
        .m01_axi_arvalid(m01_axi_arvalid),
        .m01_axi_awaddr(m01_axi_awaddr),
        .m01_axi_awready(m01_axi_awready),
        .m01_axi_awvalid(m01_axi_awvalid),
        .m01_axi_bready(m01_axi_bready),
        .m01_axi_bvalid(m01_axi_bvalid),
        .m01_axi_rdata(m01_axi_rdata),
        .m01_axi_rready(m01_axi_rready),
        .m01_axi_rvalid(m01_axi_rvalid),
        .m01_axi_wdata(m01_axi_wdata),
        .m01_axi_wready(m01_axi_wready),
        .m01_axi_wvalid(m01_axi_wvalid),
        .\operation_type_reg[1] (undolog_v2_1_S00_AXI_inst_n_332),
        .\operation_type_reg[1]_0 (undolog_v2_1_S00_AXI_inst_n_335),
        .\operation_type_reg[1]_1 (undolog_v2_1_S00_AXI_inst_n_336),
        .\operation_type_reg[1]_10 (undolog_v2_1_S00_AXI_inst_n_345),
        .\operation_type_reg[1]_2 (undolog_v2_1_S00_AXI_inst_n_337),
        .\operation_type_reg[1]_3 (undolog_v2_1_S00_AXI_inst_n_338),
        .\operation_type_reg[1]_4 (undolog_v2_1_S00_AXI_inst_n_339),
        .\operation_type_reg[1]_5 (undolog_v2_1_S00_AXI_inst_n_340),
        .\operation_type_reg[1]_6 (undolog_v2_1_S00_AXI_inst_n_341),
        .\operation_type_reg[1]_7 (undolog_v2_1_S00_AXI_inst_n_342),
        .\operation_type_reg[1]_8 (undolog_v2_1_S00_AXI_inst_n_343),
        .\operation_type_reg[1]_9 (undolog_v2_1_S00_AXI_inst_n_344),
        .\slv_reg0_reg[10] (undolog_v2_1_S00_AXI_inst_n_355),
        .\slv_reg0_reg[11] (undolog_v2_1_S00_AXI_inst_n_354),
        .\slv_reg0_reg[12] (undolog_v2_1_S00_AXI_inst_n_353),
        .\slv_reg0_reg[13] (undolog_v2_1_S00_AXI_inst_n_352),
        .\slv_reg0_reg[14] (undolog_v2_1_S00_AXI_inst_n_351),
        .\slv_reg0_reg[15] (undolog_v2_1_S00_AXI_inst_n_350),
        .\slv_reg0_reg[16] (undolog_v2_1_S00_AXI_inst_n_349),
        .\slv_reg0_reg[17] (undolog_v2_1_S00_AXI_inst_n_348),
        .\slv_reg0_reg[18] (undolog_v2_1_S00_AXI_inst_n_347),
        .\slv_reg0_reg[19] (undolog_v2_1_S00_AXI_inst_n_346),
        .\slv_reg0_reg[2] (undolog_v2_1_S00_AXI_inst_n_363),
        .\slv_reg0_reg[3] (undolog_v2_1_S00_AXI_inst_n_362),
        .\slv_reg0_reg[4] (undolog_v2_1_S00_AXI_inst_n_361),
        .\slv_reg0_reg[5] (undolog_v2_1_S00_AXI_inst_n_360),
        .\slv_reg0_reg[6] (undolog_v2_1_S00_AXI_inst_n_359),
        .\slv_reg0_reg[7] (undolog_v2_1_S00_AXI_inst_n_358),
        .\slv_reg0_reg[8] (undolog_v2_1_S00_AXI_inst_n_357),
        .\slv_reg0_reg[9] (undolog_v2_1_S00_AXI_inst_n_356),
        .\slv_reg11_reg[1] (undolog_v2_1_M01_AXI_inst_n_7),
        .\slv_reg11_reg[1]_0 (\dataout[1] ),
        .\slv_reg4_reg[31] (\log_src[31] [31:2]),
        .\wdata_reg[0]_0 (undolog_v2_1_M01_AXI_inst_n_13),
        .\wdata_reg[31]_0 (undolog_v2_1_M01_AXI_inst_n_12));
  design_1_undolog_0_3_undolog_v2_1_M02_AXI undolog_v2_1_M02_AXI_inst
       (.D(undolog_v2_1_S00_AXI_inst_n_526),
        .DI(undolog_v2_1_S00_AXI_inst_n_313),
        .\FSM_sequential_mst_exec_state_reg[3]_0 ({undolog_v2_1_S00_AXI_inst_n_494,undolog_v2_1_S00_AXI_inst_n_495,undolog_v2_1_S00_AXI_inst_n_496,undolog_v2_1_S00_AXI_inst_n_497,undolog_v2_1_S00_AXI_inst_n_498,undolog_v2_1_S00_AXI_inst_n_499,undolog_v2_1_S00_AXI_inst_n_500,undolog_v2_1_S00_AXI_inst_n_501,undolog_v2_1_S00_AXI_inst_n_502,undolog_v2_1_S00_AXI_inst_n_503,undolog_v2_1_S00_AXI_inst_n_504,undolog_v2_1_S00_AXI_inst_n_505,undolog_v2_1_S00_AXI_inst_n_506,undolog_v2_1_S00_AXI_inst_n_507,undolog_v2_1_S00_AXI_inst_n_508,undolog_v2_1_S00_AXI_inst_n_509,undolog_v2_1_S00_AXI_inst_n_510,undolog_v2_1_S00_AXI_inst_n_511,undolog_v2_1_S00_AXI_inst_n_512,undolog_v2_1_S00_AXI_inst_n_513,undolog_v2_1_S00_AXI_inst_n_514,undolog_v2_1_S00_AXI_inst_n_515,undolog_v2_1_S00_AXI_inst_n_516,undolog_v2_1_S00_AXI_inst_n_517,undolog_v2_1_S00_AXI_inst_n_518,undolog_v2_1_S00_AXI_inst_n_519,undolog_v2_1_S00_AXI_inst_n_520,undolog_v2_1_S00_AXI_inst_n_521,undolog_v2_1_S00_AXI_inst_n_522,undolog_v2_1_S00_AXI_inst_n_523,undolog_v2_1_S00_AXI_inst_n_524,undolog_v2_1_S00_AXI_inst_n_525}),
        .Q(\log_src[31] [19:0]),
        .S({undolog_v2_1_S00_AXI_inst_n_108,undolog_v2_1_S00_AXI_inst_n_109,undolog_v2_1_S00_AXI_inst_n_110,undolog_v2_1_S00_AXI_inst_n_111,undolog_v2_1_S00_AXI_inst_n_112,undolog_v2_1_S00_AXI_inst_n_113}),
        .SR(undolog_v2_1_S00_AXI_inst_n_74),
        .in24(in24),
        .in26(in26),
        .in27(in27),
        .m02_axi_aclk(m02_axi_aclk),
        .m02_axi_araddr(m02_axi_araddr),
        .m02_axi_aresetn(m02_axi_aresetn),
        .m02_axi_arready(m02_axi_arready),
        .m02_axi_arvalid(m02_axi_arvalid),
        .m02_axi_awaddr(m02_axi_awaddr),
        .m02_axi_awready(m02_axi_awready),
        .m02_axi_awvalid(m02_axi_awvalid),
        .m02_axi_bready(m02_axi_bready),
        .m02_axi_bvalid(m02_axi_bvalid),
        .m02_axi_rdata(m02_axi_rdata),
        .m02_axi_rready(m02_axi_rready),
        .m02_axi_rvalid(m02_axi_rvalid),
        .m02_axi_wdata(m02_axi_wdata),
        .m02_axi_wready(m02_axi_wready),
        .m02_axi_wvalid(m02_axi_wvalid),
        .metadata_done(metadata_done),
        .metadatacpy_state(metadatacpy_state),
        .mst_exec_state1__9(mst_exec_state1__9),
        .out({undolog_v2_1_M02_AXI_inst_n_0,undolog_v2_1_M02_AXI_inst_n_1,undolog_v2_1_M02_AXI_inst_n_2}),
        .\raddr[31] (\raddr[31] ),
        .\rdata[31] (\rdata[31] ),
        .redolog_dest_data(redolog_dest_data),
        .redolog_src_data(redolog_src_data),
        .\slv_reg0_reg[16] (\ulog_offset[31] [16:0]),
        .\slv_reg0_reg[26] ({physical_dest_addr[4:0],\ulog_offset[31] [19:17]}),
        .\slv_reg0_reg[29] (physical_dest_addr[11:5]),
        .\slv_reg11_reg[0] (undolog_v2_1_M02_AXI_inst_n_12),
        .\slv_reg11_reg[0]_0 (\dataout[0] ),
        .\slv_reg4_reg[14] ({undolog_v2_1_S00_AXI_inst_n_146,undolog_v2_1_S00_AXI_inst_n_147,undolog_v2_1_S00_AXI_inst_n_148,undolog_v2_1_S00_AXI_inst_n_149,undolog_v2_1_S00_AXI_inst_n_150,undolog_v2_1_S00_AXI_inst_n_151,undolog_v2_1_S00_AXI_inst_n_152,undolog_v2_1_S00_AXI_inst_n_153}),
        .\slv_reg4_reg[22] ({undolog_v2_1_S00_AXI_inst_n_224,undolog_v2_1_S00_AXI_inst_n_225,undolog_v2_1_S00_AXI_inst_n_226}),
        .\slv_reg4_reg[29] ({undolog_v2_1_S00_AXI_inst_n_233,undolog_v2_1_S00_AXI_inst_n_234,undolog_v2_1_S00_AXI_inst_n_235,undolog_v2_1_S00_AXI_inst_n_236,undolog_v2_1_S00_AXI_inst_n_237,undolog_v2_1_S00_AXI_inst_n_238,undolog_v2_1_S00_AXI_inst_n_239}),
        .\slv_reg8_reg[14] ({undolog_v2_1_S00_AXI_inst_n_314,undolog_v2_1_S00_AXI_inst_n_315,undolog_v2_1_S00_AXI_inst_n_316,undolog_v2_1_S00_AXI_inst_n_317,undolog_v2_1_S00_AXI_inst_n_318,undolog_v2_1_S00_AXI_inst_n_319,undolog_v2_1_S00_AXI_inst_n_320,undolog_v2_1_S00_AXI_inst_n_321}),
        .\slv_reg8_reg[6] ({undolog_v2_1_S00_AXI_inst_n_154,undolog_v2_1_S00_AXI_inst_n_155,undolog_v2_1_S00_AXI_inst_n_156,undolog_v2_1_S00_AXI_inst_n_157,undolog_v2_1_S00_AXI_inst_n_158,undolog_v2_1_S00_AXI_inst_n_159,undolog_v2_1_S00_AXI_inst_n_160,undolog_v2_1_S00_AXI_inst_n_161}),
        .\waddr[31] (\waddr[31] ),
        .\wdata[31] (\wdata[31] ));
  design_1_undolog_0_3_undolog_v2_1_S00_AXI undolog_v2_1_S00_AXI_inst
       (.D({undolog_v2_1_S00_AXI_inst_n_240,undolog_v2_1_S00_AXI_inst_n_241}),
        .DI({undolog_v2_1_S00_AXI_inst_n_210,undolog_v2_1_S00_AXI_inst_n_211,undolog_v2_1_S00_AXI_inst_n_212,undolog_v2_1_S00_AXI_inst_n_213,undolog_v2_1_S00_AXI_inst_n_214,undolog_v2_1_S00_AXI_inst_n_215,undolog_v2_1_S00_AXI_inst_n_216}),
        .DMA_DEST1(DMA_DEST1),
        .DMA_DONE_reg(undolog_v2_1_M00_AXI_inst_n_7),
        .DMA_DONE_reg_0(undolog_v2_1_M01_AXI_inst_n_7),
        .DMA_DONE_reg_1(memclr_done),
        .DMA_START2(DMA_START2),
        .\FSM_sequential_mst_exec_state_reg[0] (undolog_v2_1_S00_AXI_inst_n_275),
        .\FSM_sequential_mst_exec_state_reg[0]_0 (undolog_v2_1_M01_AXI_inst_n_12),
        .\FSM_sequential_mst_exec_state_reg[0]_1 (undolog_v2_1_M00_AXI_inst_n_12),
        .\FSM_sequential_mst_exec_state_reg[3] (undolog_v2_1_M01_AXI_inst_n_13),
        .\FSM_sequential_mst_exec_state_reg[3]_0 (undolog_v2_1_M00_AXI_inst_n_13),
        .Q(Q),
        .S({undolog_v2_1_S00_AXI_inst_n_108,undolog_v2_1_S00_AXI_inst_n_109,undolog_v2_1_S00_AXI_inst_n_110,undolog_v2_1_S00_AXI_inst_n_111,undolog_v2_1_S00_AXI_inst_n_112,undolog_v2_1_S00_AXI_inst_n_113}),
        .SR(undolog_v2_1_S00_AXI_inst_n_73),
        .\axi_araddr_reg[0] (undolog_v2_1_S00_AXI_inst_n_74),
        .\axi_araddr_reg[2]_0 (undolog_v2_1_S00_AXI_inst_n_75),
        .base_offset(base_offset),
        .data_copy_pulse(data_copy_pulse),
        .\dataout[0] (\dataout[0] ),
        .\dataout[1] (\dataout[1] ),
        .\dataout[2] (\dataout[2] ),
        .in13(in13),
        .in24(in24),
        .in26(in26),
        .log_size(log_size),
        .\log_size[31] (\log_size[31] ),
        .\log_src[31] (\log_src[31] ),
        .\log_src[63] (\log_src[63] ),
        .logclr_done_reg(logclr_done_reg),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m01_axi_aresetn(m01_axi_aresetn),
        .m02_axi_aresetn(m02_axi_aresetn),
        .metadata_done_reg(undolog_v2_1_M02_AXI_inst_n_12),
        .mst_exec_state1__9(mst_exec_state1__9),
        .\operation_type[1] (\operation_type[1] ),
        .out({undolog_v2_1_M02_AXI_inst_n_0,undolog_v2_1_M02_AXI_inst_n_1,undolog_v2_1_M02_AXI_inst_n_2}),
        .\physical_src_addr[28] ({undolog_v2_1_S00_AXI_inst_n_230,undolog_v2_1_S00_AXI_inst_n_231,undolog_v2_1_S00_AXI_inst_n_232}),
        .\physical_src_addr[28]_0 ({undolog_v2_1_S00_AXI_inst_n_322,undolog_v2_1_S00_AXI_inst_n_323,undolog_v2_1_S00_AXI_inst_n_324,undolog_v2_1_S00_AXI_inst_n_325}),
        .\raddr_reg[15] ({undolog_v2_1_S00_AXI_inst_n_146,undolog_v2_1_S00_AXI_inst_n_147,undolog_v2_1_S00_AXI_inst_n_148,undolog_v2_1_S00_AXI_inst_n_149,undolog_v2_1_S00_AXI_inst_n_150,undolog_v2_1_S00_AXI_inst_n_151,undolog_v2_1_S00_AXI_inst_n_152,undolog_v2_1_S00_AXI_inst_n_153}),
        .\raddr_reg[23] ({undolog_v2_1_S00_AXI_inst_n_154,undolog_v2_1_S00_AXI_inst_n_155,undolog_v2_1_S00_AXI_inst_n_156,undolog_v2_1_S00_AXI_inst_n_157,undolog_v2_1_S00_AXI_inst_n_158,undolog_v2_1_S00_AXI_inst_n_159,undolog_v2_1_S00_AXI_inst_n_160,undolog_v2_1_S00_AXI_inst_n_161}),
        .\raddr_reg[23]_0 ({undolog_v2_1_S00_AXI_inst_n_224,undolog_v2_1_S00_AXI_inst_n_225,undolog_v2_1_S00_AXI_inst_n_226}),
        .\raddr_reg[27] ({undolog_v2_1_S00_AXI_inst_n_162,undolog_v2_1_S00_AXI_inst_n_163,undolog_v2_1_S00_AXI_inst_n_164,undolog_v2_1_S00_AXI_inst_n_165,undolog_v2_1_S00_AXI_inst_n_166,undolog_v2_1_S00_AXI_inst_n_167,undolog_v2_1_S00_AXI_inst_n_168,undolog_v2_1_S00_AXI_inst_n_169}),
        .\raddr_reg[31] ({undolog_v2_1_S00_AXI_inst_n_227,undolog_v2_1_S00_AXI_inst_n_228,undolog_v2_1_S00_AXI_inst_n_229}),
        .\raddr_reg[31]_0 ({undolog_v2_1_S00_AXI_inst_n_233,undolog_v2_1_S00_AXI_inst_n_234,undolog_v2_1_S00_AXI_inst_n_235,undolog_v2_1_S00_AXI_inst_n_236,undolog_v2_1_S00_AXI_inst_n_237,undolog_v2_1_S00_AXI_inst_n_238,undolog_v2_1_S00_AXI_inst_n_239}),
        .\raddr_reg[31]_1 ({undolog_v2_1_S00_AXI_inst_n_314,undolog_v2_1_S00_AXI_inst_n_315,undolog_v2_1_S00_AXI_inst_n_316,undolog_v2_1_S00_AXI_inst_n_317,undolog_v2_1_S00_AXI_inst_n_318,undolog_v2_1_S00_AXI_inst_n_319,undolog_v2_1_S00_AXI_inst_n_320,undolog_v2_1_S00_AXI_inst_n_321}),
        .\raddr_reg[31]_2 ({undolog_v2_1_S00_AXI_inst_n_326,undolog_v2_1_S00_AXI_inst_n_327,undolog_v2_1_S00_AXI_inst_n_328,undolog_v2_1_S00_AXI_inst_n_329}),
        .\raddr_reg[7] (undolog_v2_1_S00_AXI_inst_n_313),
        .\rdata_reg[1] (undolog_v2_1_M01_AXI_inst_n_6),
        .redolog_dest_data(redolog_dest_data),
        .redolog_src_data(redolog_src_data),
        .reg_init_complete(reg_init_complete),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg0_reg[26]_0 (physical_dest_addr[4:0]),
        .\slv_reg0_reg[29]_0 (physical_dest_addr[11:5]),
        .start_clobber_reg(start_clobber_reg),
        .start_clobber_reg_reg(undolog_v2_1_S00_AXI_inst_n_274),
        .start_logclr(start_logclr),
        .start_redolog(start_redolog),
        .time_cycles(time_cycles),
        .ulog_offset(ulog_offset),
        .\ulog_offset[31] (\ulog_offset[31] ),
        .\waddr_reg[1] (undolog_v2_1_S00_AXI_inst_n_526),
        .\waddr_reg[31] (in27),
        .\wdata_reg[0] (undolog_v2_1_S00_AXI_inst_n_364),
        .\wdata_reg[10] (undolog_v2_1_S00_AXI_inst_n_355),
        .\wdata_reg[11] (undolog_v2_1_S00_AXI_inst_n_354),
        .\wdata_reg[12] (undolog_v2_1_S00_AXI_inst_n_353),
        .\wdata_reg[13] (undolog_v2_1_S00_AXI_inst_n_352),
        .\wdata_reg[14] (undolog_v2_1_S00_AXI_inst_n_351),
        .\wdata_reg[15] (undolog_v2_1_S00_AXI_inst_n_350),
        .\wdata_reg[16] (undolog_v2_1_S00_AXI_inst_n_349),
        .\wdata_reg[17] (undolog_v2_1_S00_AXI_inst_n_348),
        .\wdata_reg[18] (undolog_v2_1_S00_AXI_inst_n_347),
        .\wdata_reg[19] (undolog_v2_1_S00_AXI_inst_n_346),
        .\wdata_reg[20] (undolog_v2_1_S00_AXI_inst_n_345),
        .\wdata_reg[21] (undolog_v2_1_S00_AXI_inst_n_344),
        .\wdata_reg[22] (undolog_v2_1_S00_AXI_inst_n_343),
        .\wdata_reg[23] (undolog_v2_1_S00_AXI_inst_n_342),
        .\wdata_reg[24] (undolog_v2_1_S00_AXI_inst_n_341),
        .\wdata_reg[25] (undolog_v2_1_S00_AXI_inst_n_340),
        .\wdata_reg[26] (undolog_v2_1_S00_AXI_inst_n_339),
        .\wdata_reg[27] ({undolog_v2_1_S00_AXI_inst_n_202,undolog_v2_1_S00_AXI_inst_n_203,undolog_v2_1_S00_AXI_inst_n_204,undolog_v2_1_S00_AXI_inst_n_205,undolog_v2_1_S00_AXI_inst_n_206,undolog_v2_1_S00_AXI_inst_n_207,undolog_v2_1_S00_AXI_inst_n_208,undolog_v2_1_S00_AXI_inst_n_209}),
        .\wdata_reg[27]_0 ({undolog_v2_1_S00_AXI_inst_n_217,undolog_v2_1_S00_AXI_inst_n_218,undolog_v2_1_S00_AXI_inst_n_219,undolog_v2_1_S00_AXI_inst_n_220,undolog_v2_1_S00_AXI_inst_n_221,undolog_v2_1_S00_AXI_inst_n_222,undolog_v2_1_S00_AXI_inst_n_223}),
        .\wdata_reg[27]_1 (undolog_v2_1_S00_AXI_inst_n_338),
        .\wdata_reg[28] (undolog_v2_1_S00_AXI_inst_n_337),
        .\wdata_reg[29] (undolog_v2_1_S00_AXI_inst_n_336),
        .\wdata_reg[2] (undolog_v2_1_S00_AXI_inst_n_363),
        .\wdata_reg[30] (undolog_v2_1_S00_AXI_inst_n_335),
        .\wdata_reg[31] (undolog_v2_1_S00_AXI_inst_n_332),
        .\wdata_reg[31]_0 ({undolog_v2_1_S00_AXI_inst_n_494,undolog_v2_1_S00_AXI_inst_n_495,undolog_v2_1_S00_AXI_inst_n_496,undolog_v2_1_S00_AXI_inst_n_497,undolog_v2_1_S00_AXI_inst_n_498,undolog_v2_1_S00_AXI_inst_n_499,undolog_v2_1_S00_AXI_inst_n_500,undolog_v2_1_S00_AXI_inst_n_501,undolog_v2_1_S00_AXI_inst_n_502,undolog_v2_1_S00_AXI_inst_n_503,undolog_v2_1_S00_AXI_inst_n_504,undolog_v2_1_S00_AXI_inst_n_505,undolog_v2_1_S00_AXI_inst_n_506,undolog_v2_1_S00_AXI_inst_n_507,undolog_v2_1_S00_AXI_inst_n_508,undolog_v2_1_S00_AXI_inst_n_509,undolog_v2_1_S00_AXI_inst_n_510,undolog_v2_1_S00_AXI_inst_n_511,undolog_v2_1_S00_AXI_inst_n_512,undolog_v2_1_S00_AXI_inst_n_513,undolog_v2_1_S00_AXI_inst_n_514,undolog_v2_1_S00_AXI_inst_n_515,undolog_v2_1_S00_AXI_inst_n_516,undolog_v2_1_S00_AXI_inst_n_517,undolog_v2_1_S00_AXI_inst_n_518,undolog_v2_1_S00_AXI_inst_n_519,undolog_v2_1_S00_AXI_inst_n_520,undolog_v2_1_S00_AXI_inst_n_521,undolog_v2_1_S00_AXI_inst_n_522,undolog_v2_1_S00_AXI_inst_n_523,undolog_v2_1_S00_AXI_inst_n_524,undolog_v2_1_S00_AXI_inst_n_525}),
        .\wdata_reg[3] (undolog_v2_1_S00_AXI_inst_n_362),
        .\wdata_reg[4] (undolog_v2_1_S00_AXI_inst_n_361),
        .\wdata_reg[5] (undolog_v2_1_S00_AXI_inst_n_360),
        .\wdata_reg[6] (undolog_v2_1_S00_AXI_inst_n_359),
        .\wdata_reg[7] (undolog_v2_1_S00_AXI_inst_n_358),
        .\wdata_reg[8] (undolog_v2_1_S00_AXI_inst_n_357),
        .\wdata_reg[9] ({undolog_v2_1_S00_AXI_inst_n_330,undolog_v2_1_S00_AXI_inst_n_331}),
        .\wdata_reg[9]_0 (undolog_v2_1_S00_AXI_inst_n_356));
endmodule

module design_1_undolog_0_3_undolog_v2_1_M00_AXI
   (m00_axi_bready,
    m00_axi_wvalid,
    m00_axi_awvalid,
    m00_axi_arvalid,
    memclr_done,
    start_clobber_reg,
    m00_axi_rready,
    \slv_reg11_reg[2] ,
    memclr_state,
    \wdata_reg[31]_0 ,
    \wdata_reg[31]_1 ,
    m00_axi_awaddr,
    m00_axi_wdata,
    m00_axi_araddr,
    SR,
    m00_axi_aclk,
    start_clobber_reg_reg_0,
    m00_axi_rvalid,
    m00_axi_bvalid,
    \slv_reg11_reg[2]_0 ,
    logclr_pulsegend1_reg,
    m00_axi_aresetn,
    DMA_DEST1,
    Q,
    in13,
    physical_src_addr,
    \slv_reg4_reg[19] ,
    \slv_reg0_reg[1] ,
    m00_axi_wready,
    m00_axi_awready,
    m00_axi_arready,
    m00_axi_rdata,
    D);
  output m00_axi_bready;
  output m00_axi_wvalid;
  output m00_axi_awvalid;
  output m00_axi_arvalid;
  output memclr_done;
  output start_clobber_reg;
  output m00_axi_rready;
  output \slv_reg11_reg[2] ;
  output [3:0]memclr_state;
  output \wdata_reg[31]_0 ;
  output \wdata_reg[31]_1 ;
  output [3:0]m00_axi_awaddr;
  output [31:0]m00_axi_wdata;
  output [1:0]m00_axi_araddr;
  input [0:0]SR;
  input m00_axi_aclk;
  input start_clobber_reg_reg_0;
  input m00_axi_rvalid;
  input m00_axi_bvalid;
  input \slv_reg11_reg[2]_0 ;
  input logclr_pulsegend1_reg;
  input m00_axi_aresetn;
  input [29:0]DMA_DEST1;
  input [22:0]Q;
  input [7:0]in13;
  input [7:0]physical_src_addr;
  input [18:0]\slv_reg4_reg[19] ;
  input [0:0]\slv_reg0_reg[1] ;
  input m00_axi_wready;
  input m00_axi_awready;
  input m00_axi_arready;
  input [31:0]m00_axi_rdata;
  input [0:0]D;

  wire [0:0]D;
  wire [29:0]DMA_DEST1;
  wire DMA_DONE_i_1__0_n_0;
  wire DMA_DONE_i_2_n_0;
  wire DMA_DONE_i_3_n_0;
  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_mst_exec_state[0]_i_3__0_n_0 ;
  wire \FSM_sequential_mst_exec_state[0]_i_4_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_2_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_3_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_4_n_0 ;
  wire \FSM_sequential_mst_exec_state[2]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[3]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[3]_i_2_n_0 ;
  wire \FSM_sequential_mst_exec_state_reg[1]_i_1_n_0 ;
  wire [22:0]Q;
  wire [0:0]SR;
  wire axi_arvalid_i_1__0_n_0;
  wire axi_awvalid_i_1__0_n_0;
  wire axi_bready_i_1__0_n_0;
  wire axi_rready_i_1_n_0;
  wire axi_wvalid_i_1__0_n_0;
  wire [7:0]in13;
  wire logclr_pulsegend1_reg;
  wire m00_axi_aclk;
  wire [1:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [3:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire m00_axi_wvalid;
  wire memclr_done;
  wire [3:0]memclr_state;
  (* RTL_KEEP = "yes" *) wire [3:0]mst_exec_state__0;
  wire [7:0]physical_src_addr;
  wire [5:5]raddr;
  wire raddr0;
  wire \raddr[2]_i_1__1_n_0 ;
  wire \raddr[5]_i_1__1_n_0 ;
  wire \raddr_reg_n_0_[2] ;
  wire \raddr_reg_n_0_[5] ;
  wire [31:0]rdata;
  wire read_issued;
  wire read_issued_i_1__0_n_0;
  wire read_issued_i_3_n_0;
  wire read_issued_reg_n_0;
  wire reads_done;
  wire reads_done0;
  wire [0:0]\slv_reg0_reg[1] ;
  wire \slv_reg11_reg[2] ;
  wire \slv_reg11_reg[2]_0 ;
  wire [18:0]\slv_reg4_reg[19] ;
  wire start_clobber_reg;
  wire start_clobber_reg_reg_0;
  wire start_single_read;
  wire start_single_read_i_1__0_n_0;
  wire start_single_read_i_3_n_0;
  wire start_single_read_reg_n_0;
  wire start_single_write0;
  wire start_single_write_i_1__0_n_0;
  wire start_single_write_i_2_n_0;
  wire start_single_write_reg_n_0;
  wire [6:3]waddr;
  wire [6:3]waddr1_in;
  wire \waddr[6]_i_1_n_0 ;
  wire [31:0]wdata;
  wire \wdata[10]_i_1_n_0 ;
  wire \wdata[10]_i_2__0_n_0 ;
  wire \wdata[11]_i_1_n_0 ;
  wire \wdata[11]_i_2__0_n_0 ;
  wire \wdata[12]_i_1_n_0 ;
  wire \wdata[12]_i_2__0_n_0 ;
  wire \wdata[13]_i_1_n_0 ;
  wire \wdata[13]_i_2__0_n_0 ;
  wire \wdata[14]_i_1_n_0 ;
  wire \wdata[14]_i_2__0_n_0 ;
  wire \wdata[15]_i_1_n_0 ;
  wire \wdata[15]_i_2__0_n_0 ;
  wire \wdata[16]_i_1_n_0 ;
  wire \wdata[16]_i_2__0_n_0 ;
  wire \wdata[17]_i_1_n_0 ;
  wire \wdata[17]_i_2__0_n_0 ;
  wire \wdata[18]_i_1_n_0 ;
  wire \wdata[18]_i_2__0_n_0 ;
  wire \wdata[19]_i_1_n_0 ;
  wire \wdata[19]_i_2__0_n_0 ;
  wire \wdata[1]_i_1_n_0 ;
  wire \wdata[1]_i_2__0_n_0 ;
  wire \wdata[20]_i_1_n_0 ;
  wire \wdata[21]_i_1_n_0 ;
  wire \wdata[22]_i_1_n_0 ;
  wire \wdata[23]_i_1_n_0 ;
  wire \wdata[24]_i_1_n_0 ;
  wire \wdata[25]_i_1_n_0 ;
  wire \wdata[26]_i_1_n_0 ;
  wire \wdata[27]_i_1_n_0 ;
  wire \wdata[28]_i_1_n_0 ;
  wire \wdata[29]_i_1_n_0 ;
  wire \wdata[2]_i_1_n_0 ;
  wire \wdata[2]_i_2__0_n_0 ;
  wire \wdata[30]_i_1_n_0 ;
  wire \wdata[31]_i_1_n_0 ;
  wire \wdata[3]_i_1_n_0 ;
  wire \wdata[3]_i_2__0_n_0 ;
  wire \wdata[4]_i_1_n_0 ;
  wire \wdata[4]_i_2__0_n_0 ;
  wire \wdata[5]_i_1_n_0 ;
  wire \wdata[5]_i_2__0_n_0 ;
  wire \wdata[6]_i_1_n_0 ;
  wire \wdata[6]_i_2__0_n_0 ;
  wire \wdata[7]_i_1_n_0 ;
  wire \wdata[7]_i_2__0_n_0 ;
  wire \wdata[8]_i_1_n_0 ;
  wire \wdata[8]_i_2__0_n_0 ;
  wire \wdata[9]_i_1_n_0 ;
  wire \wdata[9]_i_2__0_n_0 ;
  wire \wdata_reg[31]_0 ;
  wire \wdata_reg[31]_1 ;
  wire write_issued_i_1__0_n_0;
  wire write_issued_reg_n_0;
  wire writes_done;
  wire writes_done0;

  LUT1 #(
    .INIT(2'h1)) 
    DMA_DONE_i_1__0
       (.I0(m00_axi_aresetn),
        .O(DMA_DONE_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    DMA_DONE_i_2
       (.I0(mst_exec_state__0[2]),
        .I1(reads_done),
        .I2(mst_exec_state__0[3]),
        .I3(DMA_DONE_i_3_n_0),
        .I4(memclr_done),
        .O(DMA_DONE_i_2_n_0));
  LUT6 #(
    .INIT(64'h080000000000000F)) 
    DMA_DONE_i_3
       (.I0(rdata[1]),
        .I1(reads_done),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[3]),
        .I4(mst_exec_state__0[1]),
        .I5(mst_exec_state__0[0]),
        .O(DMA_DONE_i_3_n_0));
  FDRE DMA_DONE_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(DMA_DONE_i_2_n_0),
        .Q(memclr_done),
        .R(DMA_DONE_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[0]_i_2__0_n_0 ),
        .I1(mst_exec_state__0[3]),
        .I2(\FSM_sequential_mst_exec_state[0]_i_3__0_n_0 ),
        .I3(mst_exec_state__0[2]),
        .I4(\FSM_sequential_mst_exec_state[0]_i_4_n_0 ),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h47F3CFC0)) 
    \FSM_sequential_mst_exec_state[0]_i_2__0 
       (.I0(rdata[1]),
        .I1(mst_exec_state__0[1]),
        .I2(writes_done),
        .I3(mst_exec_state__0[0]),
        .I4(reads_done),
        .O(\FSM_sequential_mst_exec_state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000A8FFFFFFA800)) 
    \FSM_sequential_mst_exec_state[0]_i_3__0 
       (.I0(reads_done),
        .I1(rdata[1]),
        .I2(rdata[0]),
        .I3(mst_exec_state__0[1]),
        .I4(mst_exec_state__0[0]),
        .I5(writes_done),
        .O(\FSM_sequential_mst_exec_state[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h505FCFCF505FC0C0)) 
    \FSM_sequential_mst_exec_state[0]_i_4 
       (.I0(reads_done),
        .I1(writes_done),
        .I2(mst_exec_state__0[1]),
        .I3(\FSM_sequential_mst_exec_state[1]_i_4_n_0 ),
        .I4(mst_exec_state__0[0]),
        .I5(logclr_pulsegend1_reg),
        .O(\FSM_sequential_mst_exec_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h47BBFF004788FF00)) 
    \FSM_sequential_mst_exec_state[1]_i_2 
       (.I0(writes_done),
        .I1(mst_exec_state__0[2]),
        .I2(reads_done),
        .I3(mst_exec_state__0[1]),
        .I4(mst_exec_state__0[0]),
        .I5(\FSM_sequential_mst_exec_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FF070F0)) 
    \FSM_sequential_mst_exec_state[1]_i_3 
       (.I0(rdata[1]),
        .I1(reads_done),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[0]),
        .I4(writes_done),
        .O(\FSM_sequential_mst_exec_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_sequential_mst_exec_state[1]_i_4 
       (.I0(reads_done),
        .I1(rdata[1]),
        .I2(rdata[0]),
        .O(\FSM_sequential_mst_exec_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000005F80FF80)) 
    \FSM_sequential_mst_exec_state[2]_i_1 
       (.I0(mst_exec_state__0[0]),
        .I1(reads_done),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(writes_done),
        .I5(mst_exec_state__0[3]),
        .O(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74CC44CCCCCCCCCC)) 
    \FSM_sequential_mst_exec_state[3]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[3]_i_2_n_0 ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[0]),
        .I4(writes_done),
        .I5(mst_exec_state__0[1]),
        .O(\FSM_sequential_mst_exec_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_mst_exec_state[3]_i_2 
       (.I0(reads_done),
        .I1(rdata[1]),
        .O(\FSM_sequential_mst_exec_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state__0[0]),
        .R(DMA_DONE_i_1__0_n_0));
  (* FSM_ENCODED_STATES = "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state_reg[1]_i_1_n_0 ),
        .Q(mst_exec_state__0[1]),
        .R(DMA_DONE_i_1__0_n_0));
  MUXF7 \FSM_sequential_mst_exec_state_reg[1]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_mst_exec_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_mst_exec_state_reg[1]_i_1_n_0 ),
        .S(mst_exec_state__0[3]));
  (* FSM_ENCODED_STATES = "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ),
        .Q(mst_exec_state__0[2]),
        .R(DMA_DONE_i_1__0_n_0));
  (* FSM_ENCODED_STATES = "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[3] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[3]_i_1_n_0 ),
        .Q(mst_exec_state__0[3]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \axi_araddr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\raddr_reg_n_0_[2] ),
        .Q(m00_axi_araddr[0]),
        .R(SR));
  FDRE \axi_araddr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\raddr_reg_n_0_[5] ),
        .Q(m00_axi_araddr[1]),
        .R(SR));
  LUT3 #(
    .INIT(8'hAE)) 
    axi_arvalid_i_1__0
       (.I0(start_single_read_reg_n_0),
        .I1(m00_axi_arvalid),
        .I2(m00_axi_arready),
        .O(axi_arvalid_i_1__0_n_0));
  FDRE axi_arvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_arvalid_i_1__0_n_0),
        .Q(m00_axi_arvalid),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(waddr[3]),
        .Q(m00_axi_awaddr[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(waddr[4]),
        .Q(m00_axi_awaddr[1]),
        .R(SR));
  FDRE \axi_awaddr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(waddr[5]),
        .Q(m00_axi_awaddr[2]),
        .R(SR));
  FDRE \axi_awaddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(waddr[6]),
        .Q(m00_axi_awaddr[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_awvalid_i_1__0
       (.I0(start_single_write_reg_n_0),
        .I1(m00_axi_awvalid),
        .I2(m00_axi_awready),
        .O(axi_awvalid_i_1__0_n_0));
  FDRE axi_awvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_awvalid_i_1__0_n_0),
        .Q(m00_axi_awvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_bready_i_1__0
       (.I0(m00_axi_bvalid),
        .I1(m00_axi_bready),
        .O(axi_bready_i_1__0_n_0));
  FDRE axi_bready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_bready_i_1__0_n_0),
        .Q(m00_axi_bready),
        .R(SR));
  LUT2 #(
    .INIT(4'h4)) 
    axi_rready_i_1
       (.I0(m00_axi_rready),
        .I1(m00_axi_rvalid),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(m00_axi_rready),
        .R(SR));
  FDRE \axi_wdata_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[0]),
        .Q(m00_axi_wdata[0]),
        .R(SR));
  FDRE \axi_wdata_reg[10] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[10]),
        .Q(m00_axi_wdata[10]),
        .R(SR));
  FDRE \axi_wdata_reg[11] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[11]),
        .Q(m00_axi_wdata[11]),
        .R(SR));
  FDRE \axi_wdata_reg[12] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[12]),
        .Q(m00_axi_wdata[12]),
        .R(SR));
  FDRE \axi_wdata_reg[13] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[13]),
        .Q(m00_axi_wdata[13]),
        .R(SR));
  FDRE \axi_wdata_reg[14] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[14]),
        .Q(m00_axi_wdata[14]),
        .R(SR));
  FDRE \axi_wdata_reg[15] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[15]),
        .Q(m00_axi_wdata[15]),
        .R(SR));
  FDRE \axi_wdata_reg[16] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[16]),
        .Q(m00_axi_wdata[16]),
        .R(SR));
  FDRE \axi_wdata_reg[17] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[17]),
        .Q(m00_axi_wdata[17]),
        .R(SR));
  FDRE \axi_wdata_reg[18] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[18]),
        .Q(m00_axi_wdata[18]),
        .R(SR));
  FDRE \axi_wdata_reg[19] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[19]),
        .Q(m00_axi_wdata[19]),
        .R(SR));
  FDRE \axi_wdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[1]),
        .Q(m00_axi_wdata[1]),
        .R(SR));
  FDRE \axi_wdata_reg[20] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[20]),
        .Q(m00_axi_wdata[20]),
        .R(SR));
  FDRE \axi_wdata_reg[21] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[21]),
        .Q(m00_axi_wdata[21]),
        .R(SR));
  FDRE \axi_wdata_reg[22] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[22]),
        .Q(m00_axi_wdata[22]),
        .R(SR));
  FDRE \axi_wdata_reg[23] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[23]),
        .Q(m00_axi_wdata[23]),
        .R(SR));
  FDRE \axi_wdata_reg[24] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[24]),
        .Q(m00_axi_wdata[24]),
        .R(SR));
  FDRE \axi_wdata_reg[25] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[25]),
        .Q(m00_axi_wdata[25]),
        .R(SR));
  FDRE \axi_wdata_reg[26] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[26]),
        .Q(m00_axi_wdata[26]),
        .R(SR));
  FDRE \axi_wdata_reg[27] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[27]),
        .Q(m00_axi_wdata[27]),
        .R(SR));
  FDRE \axi_wdata_reg[28] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[28]),
        .Q(m00_axi_wdata[28]),
        .R(SR));
  FDRE \axi_wdata_reg[29] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[29]),
        .Q(m00_axi_wdata[29]),
        .R(SR));
  FDRE \axi_wdata_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[2]),
        .Q(m00_axi_wdata[2]),
        .R(SR));
  FDRE \axi_wdata_reg[30] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[30]),
        .Q(m00_axi_wdata[30]),
        .R(SR));
  FDRE \axi_wdata_reg[31] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[31]),
        .Q(m00_axi_wdata[31]),
        .R(SR));
  FDRE \axi_wdata_reg[3] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[3]),
        .Q(m00_axi_wdata[3]),
        .R(SR));
  FDRE \axi_wdata_reg[4] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[4]),
        .Q(m00_axi_wdata[4]),
        .R(SR));
  FDRE \axi_wdata_reg[5] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[5]),
        .Q(m00_axi_wdata[5]),
        .R(SR));
  FDRE \axi_wdata_reg[6] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[6]),
        .Q(m00_axi_wdata[6]),
        .R(SR));
  FDRE \axi_wdata_reg[7] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[7]),
        .Q(m00_axi_wdata[7]),
        .R(SR));
  FDRE \axi_wdata_reg[8] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[8]),
        .Q(m00_axi_wdata[8]),
        .R(SR));
  FDRE \axi_wdata_reg[9] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(wdata[9]),
        .Q(m00_axi_wdata[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_wvalid_i_1__0
       (.I0(start_single_write_reg_n_0),
        .I1(m00_axi_wvalid),
        .I2(m00_axi_wready),
        .O(axi_wvalid_i_1__0_n_0));
  FDRE axi_wvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_wvalid_i_1__0_n_0),
        .Q(m00_axi_wvalid),
        .R(SR));
  LUT4 #(
    .INIT(16'h15EA)) 
    \memclr_state[0]_INST_0 
       (.I0(mst_exec_state__0[3]),
        .I1(mst_exec_state__0[1]),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[0]),
        .O(memclr_state[0]));
  LUT4 #(
    .INIT(16'h3788)) 
    \memclr_state[1]_INST_0 
       (.I0(mst_exec_state__0[3]),
        .I1(mst_exec_state__0[0]),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[1]),
        .O(memclr_state[1]));
  LUT4 #(
    .INIT(16'hA444)) 
    \memclr_state[2]_INST_0 
       (.I0(mst_exec_state__0[3]),
        .I1(mst_exec_state__0[2]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[0]),
        .O(memclr_state[2]));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \memclr_state[3]_INST_0 
       (.I0(mst_exec_state__0[3]),
        .I1(mst_exec_state__0[1]),
        .I2(mst_exec_state__0[0]),
        .I3(mst_exec_state__0[2]),
        .O(memclr_state[3]));
  LUT3 #(
    .INIT(8'h63)) 
    \raddr[2]_i_1__1 
       (.I0(mst_exec_state__0[2]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .O(\raddr[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0020102000100020)) 
    \raddr[5]_i_1__1 
       (.I0(mst_exec_state__0[0]),
        .I1(reads_done),
        .I2(raddr0),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[3]),
        .I5(mst_exec_state__0[1]),
        .O(\raddr[5]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \raddr[5]_i_2__0 
       (.I0(mst_exec_state__0[2]),
        .I1(mst_exec_state__0[3]),
        .O(raddr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \raddr[5]_i_3 
       (.I0(read_issued_reg_n_0),
        .I1(m00_axi_arvalid),
        .I2(m00_axi_rvalid),
        .I3(start_single_read_reg_n_0),
        .O(raddr0));
  FDRE \raddr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\raddr[5]_i_1__1_n_0 ),
        .D(\raddr[2]_i_1__1_n_0 ),
        .Q(\raddr_reg_n_0_[2] ),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \raddr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\raddr[5]_i_1__1_n_0 ),
        .D(raddr),
        .Q(\raddr_reg_n_0_[5] ),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \rdata_reg[0] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[0]),
        .Q(rdata[0]),
        .R(SR));
  FDRE \rdata_reg[10] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[10]),
        .Q(rdata[10]),
        .R(SR));
  FDRE \rdata_reg[11] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[11]),
        .Q(rdata[11]),
        .R(SR));
  FDRE \rdata_reg[12] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[12]),
        .Q(rdata[12]),
        .R(SR));
  FDRE \rdata_reg[13] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[13]),
        .Q(rdata[13]),
        .R(SR));
  FDRE \rdata_reg[14] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[14]),
        .Q(rdata[14]),
        .R(SR));
  FDRE \rdata_reg[15] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[15]),
        .Q(rdata[15]),
        .R(SR));
  FDRE \rdata_reg[16] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[16]),
        .Q(rdata[16]),
        .R(SR));
  FDRE \rdata_reg[17] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[17]),
        .Q(rdata[17]),
        .R(SR));
  FDRE \rdata_reg[18] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[18]),
        .Q(rdata[18]),
        .R(SR));
  FDRE \rdata_reg[19] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[19]),
        .Q(rdata[19]),
        .R(SR));
  FDRE \rdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[1]),
        .Q(rdata[1]),
        .R(SR));
  FDRE \rdata_reg[20] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[20]),
        .Q(rdata[20]),
        .R(SR));
  FDRE \rdata_reg[21] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[21]),
        .Q(rdata[21]),
        .R(SR));
  FDRE \rdata_reg[22] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[22]),
        .Q(rdata[22]),
        .R(SR));
  FDRE \rdata_reg[23] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[23]),
        .Q(rdata[23]),
        .R(SR));
  FDRE \rdata_reg[24] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[24]),
        .Q(rdata[24]),
        .R(SR));
  FDRE \rdata_reg[25] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[25]),
        .Q(rdata[25]),
        .R(SR));
  FDRE \rdata_reg[26] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[26]),
        .Q(rdata[26]),
        .R(SR));
  FDRE \rdata_reg[27] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[27]),
        .Q(rdata[27]),
        .R(SR));
  FDRE \rdata_reg[28] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[28]),
        .Q(rdata[28]),
        .R(SR));
  FDRE \rdata_reg[29] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[29]),
        .Q(rdata[29]),
        .R(SR));
  FDRE \rdata_reg[2] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[2]),
        .Q(rdata[2]),
        .R(SR));
  FDRE \rdata_reg[30] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[30]),
        .Q(rdata[30]),
        .R(SR));
  FDRE \rdata_reg[31] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[31]),
        .Q(rdata[31]),
        .R(SR));
  FDRE \rdata_reg[3] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[3]),
        .Q(rdata[3]),
        .R(SR));
  FDRE \rdata_reg[4] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[4]),
        .Q(rdata[4]),
        .R(SR));
  FDRE \rdata_reg[5] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[5]),
        .Q(rdata[5]),
        .R(SR));
  FDRE \rdata_reg[6] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[6]),
        .Q(rdata[6]),
        .R(SR));
  FDRE \rdata_reg[7] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[7]),
        .Q(rdata[7]),
        .R(SR));
  FDRE \rdata_reg[8] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[8]),
        .Q(rdata[8]),
        .R(SR));
  FDRE \rdata_reg[9] 
       (.C(m00_axi_aclk),
        .CE(reads_done0),
        .D(m00_axi_rdata[9]),
        .Q(rdata[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00FF0100)) 
    read_issued_i_1__0
       (.I0(m00_axi_arvalid),
        .I1(m00_axi_rvalid),
        .I2(start_single_read_reg_n_0),
        .I3(read_issued),
        .I4(read_issued_reg_n_0),
        .O(read_issued_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h08480408)) 
    read_issued_i_2
       (.I0(mst_exec_state__0[0]),
        .I1(read_issued_i_3_n_0),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[3]),
        .I4(mst_exec_state__0[1]),
        .O(read_issued));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAB)) 
    read_issued_i_3
       (.I0(m00_axi_rready),
        .I1(read_issued_reg_n_0),
        .I2(m00_axi_arvalid),
        .I3(m00_axi_rvalid),
        .I4(start_single_read_reg_n_0),
        .I5(reads_done),
        .O(read_issued_i_3_n_0));
  FDRE read_issued_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(read_issued_i_1__0_n_0),
        .Q(read_issued_reg_n_0),
        .R(DMA_DONE_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    reads_done_i_1
       (.I0(m00_axi_rvalid),
        .I1(m00_axi_rready),
        .O(reads_done0));
  FDRE reads_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(reads_done0),
        .Q(reads_done),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \slv_reg11[2]_i_2 
       (.I0(memclr_done),
        .I1(\slv_reg11_reg[2]_0 ),
        .O(\slv_reg11_reg[2] ));
  FDRE start_clobber_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(start_clobber_reg_reg_0),
        .Q(start_clobber_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00FF0100)) 
    start_single_read_i_1__0
       (.I0(read_issued_reg_n_0),
        .I1(m00_axi_arvalid),
        .I2(m00_axi_rvalid),
        .I3(start_single_read),
        .I4(start_single_read_reg_n_0),
        .O(start_single_read_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h08480408)) 
    start_single_read_i_2__1
       (.I0(mst_exec_state__0[0]),
        .I1(start_single_read_i_3_n_0),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[3]),
        .I4(mst_exec_state__0[1]),
        .O(start_single_read));
  LUT6 #(
    .INIT(64'h0000000055555557)) 
    start_single_read_i_3
       (.I0(m00_axi_rready),
        .I1(read_issued_reg_n_0),
        .I2(m00_axi_arvalid),
        .I3(m00_axi_rvalid),
        .I4(start_single_read_reg_n_0),
        .I5(reads_done),
        .O(start_single_read_i_3_n_0));
  FDRE start_single_read_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(start_single_read_i_1__0_n_0),
        .Q(start_single_read_reg_n_0),
        .R(DMA_DONE_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hFEFF4400)) 
    start_single_write_i_1__0
       (.I0(writes_done),
        .I1(start_single_write0),
        .I2(m00_axi_bready),
        .I3(start_single_write_i_2_n_0),
        .I4(start_single_write_reg_n_0),
        .O(start_single_write_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h4538)) 
    start_single_write_i_2
       (.I0(mst_exec_state__0[3]),
        .I1(mst_exec_state__0[0]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .O(start_single_write_i_2_n_0));
  FDRE start_single_write_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(start_single_write_i_1__0_n_0),
        .Q(start_single_write_reg_n_0),
        .R(DMA_DONE_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    \waddr[3]_i_1 
       (.I0(mst_exec_state__0[3]),
        .I1(mst_exec_state__0[2]),
        .I2(mst_exec_state__0[0]),
        .O(waddr1_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[4]_i_1__0 
       (.I0(mst_exec_state__0[2]),
        .O(waddr1_in[4]));
  LUT4 #(
    .INIT(16'h1500)) 
    \waddr[5]_i_1__0 
       (.I0(mst_exec_state__0[1]),
        .I1(mst_exec_state__0[2]),
        .I2(mst_exec_state__0[3]),
        .I3(mst_exec_state__0[0]),
        .O(waddr1_in[5]));
  LUT6 #(
    .INIT(64'h0004040040400440)) 
    \waddr[6]_i_1 
       (.I0(writes_done),
        .I1(start_single_write0),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[1]),
        .I4(mst_exec_state__0[0]),
        .I5(mst_exec_state__0[3]),
        .O(\waddr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \waddr[6]_i_2__0 
       (.I0(mst_exec_state__0[1]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[2]),
        .O(waddr1_in[6]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \waddr[6]_i_3 
       (.I0(m00_axi_bvalid),
        .I1(m00_axi_wvalid),
        .I2(write_issued_reg_n_0),
        .I3(start_single_write_reg_n_0),
        .I4(m00_axi_awvalid),
        .O(start_single_write0));
  FDRE \waddr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(waddr1_in[3]),
        .Q(waddr[3]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \waddr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(waddr1_in[4]),
        .Q(waddr[4]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \waddr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(waddr1_in[5]),
        .Q(waddr[5]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \waddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(waddr1_in[6]),
        .Q(waddr[6]),
        .R(DMA_DONE_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[10]_i_1 
       (.I0(DMA_DEST1[8]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[9]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[10]_i_2__0_n_0 ),
        .O(\wdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[10]_i_2__0 
       (.I0(rdata[10]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [9]),
        .O(\wdata[10]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[11]_i_1 
       (.I0(DMA_DEST1[9]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[10]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[11]_i_2__0_n_0 ),
        .O(\wdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[11]_i_2__0 
       (.I0(rdata[11]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [10]),
        .O(\wdata[11]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[12]_i_1 
       (.I0(DMA_DEST1[10]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[11]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[12]_i_2__0_n_0 ),
        .O(\wdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[12]_i_2__0 
       (.I0(rdata[12]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [11]),
        .O(\wdata[12]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[13]_i_1 
       (.I0(DMA_DEST1[11]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[12]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[13]_i_2__0_n_0 ),
        .O(\wdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[13]_i_2__0 
       (.I0(rdata[13]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [12]),
        .O(\wdata[13]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[14]_i_1 
       (.I0(DMA_DEST1[12]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[13]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[14]_i_2__0_n_0 ),
        .O(\wdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[14]_i_2__0 
       (.I0(rdata[14]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [13]),
        .O(\wdata[14]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[15]_i_1 
       (.I0(DMA_DEST1[13]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[14]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[15]_i_2__0_n_0 ),
        .O(\wdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[15]_i_2__0 
       (.I0(rdata[15]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [14]),
        .O(\wdata[15]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[16]_i_1 
       (.I0(DMA_DEST1[14]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[15]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[16]_i_2__0_n_0 ),
        .O(\wdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[16]_i_2__0 
       (.I0(rdata[16]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [15]),
        .O(\wdata[16]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[17]_i_1 
       (.I0(DMA_DEST1[15]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[16]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[17]_i_2__0_n_0 ),
        .O(\wdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[17]_i_2__0 
       (.I0(rdata[17]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [16]),
        .O(\wdata[17]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[18]_i_1 
       (.I0(DMA_DEST1[16]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[17]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[18]_i_2__0_n_0 ),
        .O(\wdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[18]_i_2__0 
       (.I0(rdata[18]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [17]),
        .O(\wdata[18]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[19]_i_1 
       (.I0(DMA_DEST1[17]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[18]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[19]_i_2__0_n_0 ),
        .O(\wdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[19]_i_2__0 
       (.I0(rdata[19]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [18]),
        .O(\wdata[19]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[1]_i_1 
       (.I0(\slv_reg0_reg[1] ),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[0]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[1]_i_2__0_n_0 ),
        .O(\wdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[1]_i_2__0 
       (.I0(rdata[1]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [0]),
        .O(\wdata[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata[20]_i_1 
       (.I0(DMA_DEST1[18]),
        .I1(in13[0]),
        .I2(\wdata_reg[31]_0 ),
        .I3(rdata[20]),
        .I4(\wdata_reg[31]_1 ),
        .I5(physical_src_addr[0]),
        .O(\wdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata[21]_i_1 
       (.I0(DMA_DEST1[19]),
        .I1(in13[1]),
        .I2(\wdata_reg[31]_0 ),
        .I3(rdata[21]),
        .I4(\wdata_reg[31]_1 ),
        .I5(physical_src_addr[1]),
        .O(\wdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata[22]_i_1 
       (.I0(DMA_DEST1[20]),
        .I1(in13[2]),
        .I2(\wdata_reg[31]_0 ),
        .I3(rdata[22]),
        .I4(\wdata_reg[31]_1 ),
        .I5(physical_src_addr[2]),
        .O(\wdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata[23]_i_1 
       (.I0(DMA_DEST1[21]),
        .I1(in13[3]),
        .I2(\wdata_reg[31]_0 ),
        .I3(rdata[23]),
        .I4(\wdata_reg[31]_1 ),
        .I5(physical_src_addr[3]),
        .O(\wdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata[24]_i_1 
       (.I0(DMA_DEST1[22]),
        .I1(in13[4]),
        .I2(\wdata_reg[31]_0 ),
        .I3(rdata[24]),
        .I4(\wdata_reg[31]_1 ),
        .I5(physical_src_addr[4]),
        .O(\wdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata[25]_i_1 
       (.I0(DMA_DEST1[23]),
        .I1(in13[5]),
        .I2(\wdata_reg[31]_0 ),
        .I3(rdata[25]),
        .I4(\wdata_reg[31]_1 ),
        .I5(physical_src_addr[5]),
        .O(\wdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata[26]_i_1 
       (.I0(DMA_DEST1[24]),
        .I1(in13[6]),
        .I2(\wdata_reg[31]_0 ),
        .I3(rdata[26]),
        .I4(\wdata_reg[31]_1 ),
        .I5(physical_src_addr[6]),
        .O(\wdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata[27]_i_1 
       (.I0(DMA_DEST1[25]),
        .I1(in13[7]),
        .I2(\wdata_reg[31]_0 ),
        .I3(rdata[27]),
        .I4(\wdata_reg[31]_1 ),
        .I5(physical_src_addr[7]),
        .O(\wdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFF0C00AA000C00)) 
    \wdata[28]_i_1 
       (.I0(DMA_DEST1[26]),
        .I1(Q[19]),
        .I2(start_clobber_reg),
        .I3(\wdata_reg[31]_0 ),
        .I4(\wdata_reg[31]_1 ),
        .I5(rdata[28]),
        .O(\wdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFF0C00AA000C00)) 
    \wdata[29]_i_1 
       (.I0(DMA_DEST1[27]),
        .I1(Q[20]),
        .I2(start_clobber_reg),
        .I3(\wdata_reg[31]_0 ),
        .I4(\wdata_reg[31]_1 ),
        .I5(rdata[29]),
        .O(\wdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[2]_i_1 
       (.I0(DMA_DEST1[0]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[1]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[2]_i_2__0_n_0 ),
        .O(\wdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[2]_i_2__0 
       (.I0(rdata[2]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [1]),
        .O(\wdata[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA000CFF0CFF)) 
    \wdata[30]_i_1 
       (.I0(DMA_DEST1[28]),
        .I1(Q[21]),
        .I2(start_clobber_reg),
        .I3(\wdata_reg[31]_0 ),
        .I4(rdata[30]),
        .I5(\wdata_reg[31]_1 ),
        .O(\wdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA000CFF0CFF)) 
    \wdata[31]_i_1 
       (.I0(DMA_DEST1[29]),
        .I1(Q[22]),
        .I2(start_clobber_reg),
        .I3(\wdata_reg[31]_0 ),
        .I4(rdata[31]),
        .I5(\wdata_reg[31]_1 ),
        .O(\wdata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2240)) 
    \wdata[31]_i_2 
       (.I0(mst_exec_state__0[0]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .O(\wdata_reg[31]_0 ));
  LUT4 #(
    .INIT(16'h4F53)) 
    \wdata[31]_i_3__0 
       (.I0(mst_exec_state__0[3]),
        .I1(mst_exec_state__0[1]),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[0]),
        .O(\wdata_reg[31]_1 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[3]_i_1 
       (.I0(DMA_DEST1[1]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[2]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[3]_i_2__0_n_0 ),
        .O(\wdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[3]_i_2__0 
       (.I0(rdata[3]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [2]),
        .O(\wdata[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[4]_i_1 
       (.I0(DMA_DEST1[2]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[3]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[4]_i_2__0_n_0 ),
        .O(\wdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[4]_i_2__0 
       (.I0(rdata[4]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [3]),
        .O(\wdata[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[5]_i_1 
       (.I0(DMA_DEST1[3]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[4]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[5]_i_2__0_n_0 ),
        .O(\wdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[5]_i_2__0 
       (.I0(rdata[5]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [4]),
        .O(\wdata[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    \wdata[6]_i_1 
       (.I0(DMA_DEST1[4]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[5]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[6]_i_2__0_n_0 ),
        .O(\wdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[6]_i_2__0 
       (.I0(rdata[6]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [5]),
        .O(\wdata[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[7]_i_1 
       (.I0(DMA_DEST1[5]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[6]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[7]_i_2__0_n_0 ),
        .O(\wdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[7]_i_2__0 
       (.I0(rdata[7]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [6]),
        .O(\wdata[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[8]_i_1 
       (.I0(DMA_DEST1[6]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[7]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[8]_i_2__0_n_0 ),
        .O(\wdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[8]_i_2__0 
       (.I0(rdata[8]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [7]),
        .O(\wdata[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \wdata[9]_i_1 
       (.I0(DMA_DEST1[7]),
        .I1(\wdata_reg[31]_1 ),
        .I2(Q[8]),
        .I3(start_clobber_reg),
        .I4(\wdata_reg[31]_0 ),
        .I5(\wdata[9]_i_2__0_n_0 ),
        .O(\wdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[9]_i_2__0 
       (.I0(rdata[9]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[19] [8]),
        .O(\wdata[9]_i_2__0_n_0 ));
  FDRE \wdata_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(D),
        .Q(wdata[0]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[10]_i_1_n_0 ),
        .Q(wdata[10]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[11]_i_1_n_0 ),
        .Q(wdata[11]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[12]_i_1_n_0 ),
        .Q(wdata[12]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[13]_i_1_n_0 ),
        .Q(wdata[13]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[14]_i_1_n_0 ),
        .Q(wdata[14]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[15]_i_1_n_0 ),
        .Q(wdata[15]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[16] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[16]_i_1_n_0 ),
        .Q(wdata[16]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[17] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[17]_i_1_n_0 ),
        .Q(wdata[17]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[18] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[18]_i_1_n_0 ),
        .Q(wdata[18]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[19] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[19]_i_1_n_0 ),
        .Q(wdata[19]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[1]_i_1_n_0 ),
        .Q(wdata[1]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[20] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[20]_i_1_n_0 ),
        .Q(wdata[20]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[21] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[21]_i_1_n_0 ),
        .Q(wdata[21]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[22] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[22]_i_1_n_0 ),
        .Q(wdata[22]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[23] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[23]_i_1_n_0 ),
        .Q(wdata[23]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[24] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[24]_i_1_n_0 ),
        .Q(wdata[24]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[25] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[25]_i_1_n_0 ),
        .Q(wdata[25]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[26] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[26]_i_1_n_0 ),
        .Q(wdata[26]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[27] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[27]_i_1_n_0 ),
        .Q(wdata[27]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[28] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[28]_i_1_n_0 ),
        .Q(wdata[28]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[29] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[29]_i_1_n_0 ),
        .Q(wdata[29]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[2]_i_1_n_0 ),
        .Q(wdata[2]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[30] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[30]_i_1_n_0 ),
        .Q(wdata[30]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[31] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[31]_i_1_n_0 ),
        .Q(wdata[31]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[3]_i_1_n_0 ),
        .Q(wdata[3]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[4]_i_1_n_0 ),
        .Q(wdata[4]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[5]_i_1_n_0 ),
        .Q(wdata[5]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[6]_i_1_n_0 ),
        .Q(wdata[6]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[7]_i_1_n_0 ),
        .Q(wdata[7]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[8]_i_1_n_0 ),
        .Q(wdata[8]),
        .R(DMA_DONE_i_1__0_n_0));
  FDRE \wdata_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\waddr[6]_i_1_n_0 ),
        .D(\wdata[9]_i_1_n_0 ),
        .Q(wdata[9]),
        .R(DMA_DONE_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hEFFF4400)) 
    write_issued_i_1__0
       (.I0(writes_done),
        .I1(start_single_write0),
        .I2(m00_axi_bready),
        .I3(start_single_write_i_2_n_0),
        .I4(write_issued_reg_n_0),
        .O(write_issued_i_1__0_n_0));
  FDRE write_issued_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(write_issued_i_1__0_n_0),
        .Q(write_issued_reg_n_0),
        .R(DMA_DONE_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    writes_done_i_1
       (.I0(m00_axi_bvalid),
        .I1(m00_axi_bready),
        .O(writes_done0));
  FDRE writes_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(writes_done0),
        .Q(writes_done),
        .R(SR));
endmodule

module design_1_undolog_0_3_undolog_v2_1_M01_AXI
   (m01_axi_bready,
    m01_axi_wvalid,
    m01_axi_awvalid,
    m01_axi_arvalid,
    datacpy_done,
    m01_axi_rready,
    Q,
    \slv_reg11_reg[1] ,
    datacpy_state,
    \wdata_reg[31]_0 ,
    \wdata_reg[0]_0 ,
    m01_axi_awaddr,
    m01_axi_wdata,
    m01_axi_araddr,
    SR,
    m01_axi_aclk,
    m01_axi_rvalid,
    m01_axi_bvalid,
    \slv_reg11_reg[1]_0 ,
    data_copy_pulse,
    DMA_START2,
    m01_axi_aresetn,
    \operation_type_reg[1] ,
    \slv_reg4_reg[31] ,
    \operation_type_reg[1]_0 ,
    \operation_type_reg[1]_1 ,
    \operation_type_reg[1]_2 ,
    \operation_type_reg[1]_3 ,
    \operation_type_reg[1]_4 ,
    \operation_type_reg[1]_5 ,
    \operation_type_reg[1]_6 ,
    \operation_type_reg[1]_7 ,
    \operation_type_reg[1]_8 ,
    \operation_type_reg[1]_9 ,
    \operation_type_reg[1]_10 ,
    \slv_reg0_reg[19] ,
    \slv_reg0_reg[18] ,
    \slv_reg0_reg[17] ,
    \slv_reg0_reg[16] ,
    \slv_reg0_reg[15] ,
    \slv_reg0_reg[14] ,
    \slv_reg0_reg[13] ,
    \slv_reg0_reg[12] ,
    \slv_reg0_reg[11] ,
    \slv_reg0_reg[10] ,
    \slv_reg0_reg[9] ,
    \slv_reg0_reg[8] ,
    \slv_reg0_reg[7] ,
    \slv_reg0_reg[6] ,
    \slv_reg0_reg[5] ,
    \slv_reg0_reg[4] ,
    \slv_reg0_reg[3] ,
    \slv_reg0_reg[2] ,
    m01_axi_wready,
    m01_axi_awready,
    m01_axi_arready,
    m01_axi_rdata,
    D);
  output m01_axi_bready;
  output m01_axi_wvalid;
  output m01_axi_awvalid;
  output m01_axi_arvalid;
  output datacpy_done;
  output m01_axi_rready;
  output [0:0]Q;
  output \slv_reg11_reg[1] ;
  output [3:0]datacpy_state;
  output \wdata_reg[31]_0 ;
  output \wdata_reg[0]_0 ;
  output [3:0]m01_axi_awaddr;
  output [31:0]m01_axi_wdata;
  output [1:0]m01_axi_araddr;
  input [0:0]SR;
  input m01_axi_aclk;
  input m01_axi_rvalid;
  input m01_axi_bvalid;
  input \slv_reg11_reg[1]_0 ;
  input data_copy_pulse;
  input DMA_START2;
  input m01_axi_aresetn;
  input \operation_type_reg[1] ;
  input [29:0]\slv_reg4_reg[31] ;
  input \operation_type_reg[1]_0 ;
  input \operation_type_reg[1]_1 ;
  input \operation_type_reg[1]_2 ;
  input \operation_type_reg[1]_3 ;
  input \operation_type_reg[1]_4 ;
  input \operation_type_reg[1]_5 ;
  input \operation_type_reg[1]_6 ;
  input \operation_type_reg[1]_7 ;
  input \operation_type_reg[1]_8 ;
  input \operation_type_reg[1]_9 ;
  input \operation_type_reg[1]_10 ;
  input \slv_reg0_reg[19] ;
  input \slv_reg0_reg[18] ;
  input \slv_reg0_reg[17] ;
  input \slv_reg0_reg[16] ;
  input \slv_reg0_reg[15] ;
  input \slv_reg0_reg[14] ;
  input \slv_reg0_reg[13] ;
  input \slv_reg0_reg[12] ;
  input \slv_reg0_reg[11] ;
  input \slv_reg0_reg[10] ;
  input \slv_reg0_reg[9] ;
  input \slv_reg0_reg[8] ;
  input \slv_reg0_reg[7] ;
  input \slv_reg0_reg[6] ;
  input \slv_reg0_reg[5] ;
  input \slv_reg0_reg[4] ;
  input \slv_reg0_reg[3] ;
  input \slv_reg0_reg[2] ;
  input m01_axi_wready;
  input m01_axi_awready;
  input m01_axi_arready;
  input [31:0]m01_axi_rdata;
  input [1:0]D;

  wire [1:0]D;
  wire DMA_DONE_i_1_n_0;
  wire DMA_DONE_i_2__0_n_0;
  wire DMA_DONE_i_3__0_n_0;
  wire DMA_START2;
  wire \FSM_sequential_mst_exec_state[0]_i_1__1_n_0 ;
  wire \FSM_sequential_mst_exec_state[0]_i_2__1_n_0 ;
  wire \FSM_sequential_mst_exec_state[0]_i_3__1_n_0 ;
  wire \FSM_sequential_mst_exec_state[0]_i_4__0_n_0 ;
  wire \FSM_sequential_mst_exec_state[0]_i_5__0_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_3__0_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_4__0_n_0 ;
  wire \FSM_sequential_mst_exec_state[2]_i_1__0_n_0 ;
  wire \FSM_sequential_mst_exec_state[3]_i_1__0_n_0 ;
  wire \FSM_sequential_mst_exec_state[3]_i_2__0_n_0 ;
  wire \FSM_sequential_mst_exec_state_reg[1]_i_1__0_n_0 ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire axi_arvalid_i_1__1_n_0;
  wire axi_awvalid_i_1__1_n_0;
  wire axi_bready_i_1__1_n_0;
  wire axi_rready_i_1_n_0;
  wire axi_wvalid_i_1__1_n_0;
  wire data_copy_pulse;
  wire datacpy_done;
  wire [3:0]datacpy_state;
  wire m01_axi_aclk;
  wire [1:0]m01_axi_araddr;
  wire m01_axi_aresetn;
  wire m01_axi_arready;
  wire m01_axi_arvalid;
  wire [3:0]m01_axi_awaddr;
  wire m01_axi_awready;
  wire m01_axi_awvalid;
  wire m01_axi_bready;
  wire m01_axi_bvalid;
  wire [31:0]m01_axi_rdata;
  wire m01_axi_rready;
  wire m01_axi_rvalid;
  wire [31:0]m01_axi_wdata;
  wire m01_axi_wready;
  wire m01_axi_wvalid;
  (* RTL_KEEP = "yes" *) wire [3:0]mst_exec_state__0;
  wire \operation_type_reg[1] ;
  wire \operation_type_reg[1]_0 ;
  wire \operation_type_reg[1]_1 ;
  wire \operation_type_reg[1]_10 ;
  wire \operation_type_reg[1]_2 ;
  wire \operation_type_reg[1]_3 ;
  wire \operation_type_reg[1]_4 ;
  wire \operation_type_reg[1]_5 ;
  wire \operation_type_reg[1]_6 ;
  wire \operation_type_reg[1]_7 ;
  wire \operation_type_reg[1]_8 ;
  wire \operation_type_reg[1]_9 ;
  wire raddr0;
  wire \raddr[2]_i_1__0_n_0 ;
  wire \raddr[5]_i_1__0_n_0 ;
  wire \raddr[5]_i_2_n_0 ;
  wire \raddr_reg_n_0_[2] ;
  wire \raddr_reg_n_0_[5] ;
  wire \rdata_reg_n_0_[0] ;
  wire \rdata_reg_n_0_[10] ;
  wire \rdata_reg_n_0_[11] ;
  wire \rdata_reg_n_0_[12] ;
  wire \rdata_reg_n_0_[13] ;
  wire \rdata_reg_n_0_[14] ;
  wire \rdata_reg_n_0_[15] ;
  wire \rdata_reg_n_0_[16] ;
  wire \rdata_reg_n_0_[17] ;
  wire \rdata_reg_n_0_[18] ;
  wire \rdata_reg_n_0_[19] ;
  wire \rdata_reg_n_0_[20] ;
  wire \rdata_reg_n_0_[21] ;
  wire \rdata_reg_n_0_[22] ;
  wire \rdata_reg_n_0_[23] ;
  wire \rdata_reg_n_0_[24] ;
  wire \rdata_reg_n_0_[25] ;
  wire \rdata_reg_n_0_[26] ;
  wire \rdata_reg_n_0_[27] ;
  wire \rdata_reg_n_0_[28] ;
  wire \rdata_reg_n_0_[29] ;
  wire \rdata_reg_n_0_[2] ;
  wire \rdata_reg_n_0_[30] ;
  wire \rdata_reg_n_0_[31] ;
  wire \rdata_reg_n_0_[3] ;
  wire \rdata_reg_n_0_[4] ;
  wire \rdata_reg_n_0_[5] ;
  wire \rdata_reg_n_0_[6] ;
  wire \rdata_reg_n_0_[7] ;
  wire \rdata_reg_n_0_[8] ;
  wire \rdata_reg_n_0_[9] ;
  wire read_issued;
  wire read_issued_i_1__1_n_0;
  wire read_issued_i_3__0_n_0;
  wire read_issued_reg_n_0;
  wire reads_done;
  wire reads_done0;
  wire \slv_reg0_reg[10] ;
  wire \slv_reg0_reg[11] ;
  wire \slv_reg0_reg[12] ;
  wire \slv_reg0_reg[13] ;
  wire \slv_reg0_reg[14] ;
  wire \slv_reg0_reg[15] ;
  wire \slv_reg0_reg[16] ;
  wire \slv_reg0_reg[17] ;
  wire \slv_reg0_reg[18] ;
  wire \slv_reg0_reg[19] ;
  wire \slv_reg0_reg[2] ;
  wire \slv_reg0_reg[3] ;
  wire \slv_reg0_reg[4] ;
  wire \slv_reg0_reg[5] ;
  wire \slv_reg0_reg[6] ;
  wire \slv_reg0_reg[7] ;
  wire \slv_reg0_reg[8] ;
  wire \slv_reg0_reg[9] ;
  wire \slv_reg11_reg[1] ;
  wire \slv_reg11_reg[1]_0 ;
  wire [29:0]\slv_reg4_reg[31] ;
  wire start_single_read;
  wire start_single_read_i_1__1_n_0;
  wire start_single_read_i_3__0_n_0;
  wire start_single_read_reg_n_0;
  wire start_single_write0;
  wire start_single_write_i_1__1_n_0;
  wire start_single_write_i_2__0_n_0;
  wire start_single_write_reg_n_0;
  wire \waddr[3]_i_1__0_n_0 ;
  wire \waddr[4]_i_1_n_0 ;
  wire \waddr[5]_i_1_n_0 ;
  wire \waddr[6]_i_1__0_n_0 ;
  wire \waddr[6]_i_2_n_0 ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire \wdata[10]_i_2_n_0 ;
  wire \wdata[11]_i_2_n_0 ;
  wire \wdata[12]_i_2_n_0 ;
  wire \wdata[13]_i_2_n_0 ;
  wire \wdata[14]_i_2_n_0 ;
  wire \wdata[15]_i_2_n_0 ;
  wire \wdata[16]_i_2_n_0 ;
  wire \wdata[17]_i_2_n_0 ;
  wire \wdata[18]_i_2_n_0 ;
  wire \wdata[19]_i_2_n_0 ;
  wire \wdata[20]_i_2_n_0 ;
  wire \wdata[21]_i_2_n_0 ;
  wire \wdata[22]_i_2_n_0 ;
  wire \wdata[23]_i_2_n_0 ;
  wire \wdata[24]_i_2_n_0 ;
  wire \wdata[25]_i_2_n_0 ;
  wire \wdata[26]_i_2_n_0 ;
  wire \wdata[27]_i_2_n_0 ;
  wire \wdata[28]_i_2_n_0 ;
  wire \wdata[29]_i_2_n_0 ;
  wire \wdata[2]_i_2_n_0 ;
  wire \wdata[30]_i_2_n_0 ;
  wire \wdata[31]_i_3_n_0 ;
  wire \wdata[3]_i_2_n_0 ;
  wire \wdata[4]_i_2_n_0 ;
  wire \wdata[5]_i_2_n_0 ;
  wire \wdata[6]_i_2_n_0 ;
  wire \wdata[7]_i_2_n_0 ;
  wire \wdata[8]_i_2_n_0 ;
  wire \wdata[9]_i_2_n_0 ;
  wire \wdata_reg[0]_0 ;
  wire \wdata_reg[10]_i_1_n_0 ;
  wire \wdata_reg[11]_i_1_n_0 ;
  wire \wdata_reg[12]_i_1_n_0 ;
  wire \wdata_reg[13]_i_1_n_0 ;
  wire \wdata_reg[14]_i_1_n_0 ;
  wire \wdata_reg[15]_i_1_n_0 ;
  wire \wdata_reg[16]_i_1_n_0 ;
  wire \wdata_reg[17]_i_1_n_0 ;
  wire \wdata_reg[18]_i_1_n_0 ;
  wire \wdata_reg[19]_i_1_n_0 ;
  wire \wdata_reg[20]_i_1_n_0 ;
  wire \wdata_reg[21]_i_1_n_0 ;
  wire \wdata_reg[22]_i_1_n_0 ;
  wire \wdata_reg[23]_i_1_n_0 ;
  wire \wdata_reg[24]_i_1_n_0 ;
  wire \wdata_reg[25]_i_1_n_0 ;
  wire \wdata_reg[26]_i_1_n_0 ;
  wire \wdata_reg[27]_i_1_n_0 ;
  wire \wdata_reg[28]_i_1_n_0 ;
  wire \wdata_reg[29]_i_1_n_0 ;
  wire \wdata_reg[2]_i_1_n_0 ;
  wire \wdata_reg[30]_i_1_n_0 ;
  wire \wdata_reg[31]_0 ;
  wire \wdata_reg[31]_i_1_n_0 ;
  wire \wdata_reg[3]_i_1_n_0 ;
  wire \wdata_reg[4]_i_1_n_0 ;
  wire \wdata_reg[5]_i_1_n_0 ;
  wire \wdata_reg[6]_i_1_n_0 ;
  wire \wdata_reg[7]_i_1_n_0 ;
  wire \wdata_reg[8]_i_1_n_0 ;
  wire \wdata_reg[9]_i_1_n_0 ;
  wire \wdata_reg_n_0_[0] ;
  wire \wdata_reg_n_0_[10] ;
  wire \wdata_reg_n_0_[11] ;
  wire \wdata_reg_n_0_[12] ;
  wire \wdata_reg_n_0_[13] ;
  wire \wdata_reg_n_0_[14] ;
  wire \wdata_reg_n_0_[15] ;
  wire \wdata_reg_n_0_[16] ;
  wire \wdata_reg_n_0_[17] ;
  wire \wdata_reg_n_0_[18] ;
  wire \wdata_reg_n_0_[19] ;
  wire \wdata_reg_n_0_[1] ;
  wire \wdata_reg_n_0_[20] ;
  wire \wdata_reg_n_0_[21] ;
  wire \wdata_reg_n_0_[22] ;
  wire \wdata_reg_n_0_[23] ;
  wire \wdata_reg_n_0_[24] ;
  wire \wdata_reg_n_0_[25] ;
  wire \wdata_reg_n_0_[26] ;
  wire \wdata_reg_n_0_[27] ;
  wire \wdata_reg_n_0_[28] ;
  wire \wdata_reg_n_0_[29] ;
  wire \wdata_reg_n_0_[2] ;
  wire \wdata_reg_n_0_[30] ;
  wire \wdata_reg_n_0_[31] ;
  wire \wdata_reg_n_0_[3] ;
  wire \wdata_reg_n_0_[4] ;
  wire \wdata_reg_n_0_[5] ;
  wire \wdata_reg_n_0_[6] ;
  wire \wdata_reg_n_0_[7] ;
  wire \wdata_reg_n_0_[8] ;
  wire \wdata_reg_n_0_[9] ;
  wire write_issued_i_1__1_n_0;
  wire write_issued_reg_n_0;
  wire writes_done;
  wire writes_done0;

  LUT1 #(
    .INIT(2'h1)) 
    DMA_DONE_i_1
       (.I0(m01_axi_aresetn),
        .O(DMA_DONE_i_1_n_0));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    DMA_DONE_i_2__0
       (.I0(mst_exec_state__0[2]),
        .I1(reads_done),
        .I2(mst_exec_state__0[3]),
        .I3(DMA_DONE_i_3__0_n_0),
        .I4(datacpy_done),
        .O(DMA_DONE_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h080000000000000F)) 
    DMA_DONE_i_3__0
       (.I0(Q),
        .I1(reads_done),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[3]),
        .I4(mst_exec_state__0[1]),
        .I5(mst_exec_state__0[0]),
        .O(DMA_DONE_i_3__0_n_0));
  FDRE DMA_DONE_reg
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(DMA_DONE_i_2__0_n_0),
        .Q(datacpy_done),
        .R(DMA_DONE_i_1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \FSM_sequential_mst_exec_state[0]_i_1__1 
       (.I0(\FSM_sequential_mst_exec_state[0]_i_2__1_n_0 ),
        .I1(mst_exec_state__0[3]),
        .I2(\FSM_sequential_mst_exec_state[0]_i_3__1_n_0 ),
        .I3(mst_exec_state__0[2]),
        .I4(\FSM_sequential_mst_exec_state[0]_i_4__0_n_0 ),
        .O(\FSM_sequential_mst_exec_state[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h47F3CFC0)) 
    \FSM_sequential_mst_exec_state[0]_i_2__1 
       (.I0(Q),
        .I1(mst_exec_state__0[1]),
        .I2(writes_done),
        .I3(mst_exec_state__0[0]),
        .I4(reads_done),
        .O(\FSM_sequential_mst_exec_state[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000A8FFFFFFA800)) 
    \FSM_sequential_mst_exec_state[0]_i_3__1 
       (.I0(reads_done),
        .I1(Q),
        .I2(\rdata_reg_n_0_[0] ),
        .I3(mst_exec_state__0[1]),
        .I4(mst_exec_state__0[0]),
        .I5(writes_done),
        .O(\FSM_sequential_mst_exec_state[0]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h8BBB8BBB8BBB8B88)) 
    \FSM_sequential_mst_exec_state[0]_i_4__0 
       (.I0(\FSM_sequential_mst_exec_state[0]_i_5__0_n_0 ),
        .I1(mst_exec_state__0[1]),
        .I2(\FSM_sequential_mst_exec_state[1]_i_4__0_n_0 ),
        .I3(mst_exec_state__0[0]),
        .I4(data_copy_pulse),
        .I5(DMA_START2),
        .O(\FSM_sequential_mst_exec_state[0]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \FSM_sequential_mst_exec_state[0]_i_5__0 
       (.I0(reads_done),
        .I1(mst_exec_state__0[0]),
        .I2(writes_done),
        .O(\FSM_sequential_mst_exec_state[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h47BBFF004788FF00)) 
    \FSM_sequential_mst_exec_state[1]_i_2__0 
       (.I0(writes_done),
        .I1(mst_exec_state__0[2]),
        .I2(reads_done),
        .I3(mst_exec_state__0[1]),
        .I4(mst_exec_state__0[0]),
        .I5(\FSM_sequential_mst_exec_state[1]_i_4__0_n_0 ),
        .O(\FSM_sequential_mst_exec_state[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FF070F0)) 
    \FSM_sequential_mst_exec_state[1]_i_3__0 
       (.I0(Q),
        .I1(reads_done),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[0]),
        .I4(writes_done),
        .O(\FSM_sequential_mst_exec_state[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_sequential_mst_exec_state[1]_i_4__0 
       (.I0(reads_done),
        .I1(Q),
        .I2(\rdata_reg_n_0_[0] ),
        .O(\FSM_sequential_mst_exec_state[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000005F80FF80)) 
    \FSM_sequential_mst_exec_state[2]_i_1__0 
       (.I0(mst_exec_state__0[0]),
        .I1(reads_done),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(writes_done),
        .I5(mst_exec_state__0[3]),
        .O(\FSM_sequential_mst_exec_state[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h74CC44CCCCCCCCCC)) 
    \FSM_sequential_mst_exec_state[3]_i_1__0 
       (.I0(\FSM_sequential_mst_exec_state[3]_i_2__0_n_0 ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[0]),
        .I4(writes_done),
        .I5(mst_exec_state__0[1]),
        .O(\FSM_sequential_mst_exec_state[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_mst_exec_state[3]_i_2__0 
       (.I0(reads_done),
        .I1(Q),
        .O(\FSM_sequential_mst_exec_state[3]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1__1_n_0 ),
        .Q(mst_exec_state__0[0]),
        .R(DMA_DONE_i_1_n_0));
  (* FSM_ENCODED_STATES = "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state_reg[1]_i_1__0_n_0 ),
        .Q(mst_exec_state__0[1]),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \FSM_sequential_mst_exec_state_reg[1]_i_1__0 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2__0_n_0 ),
        .I1(\FSM_sequential_mst_exec_state[1]_i_3__0_n_0 ),
        .O(\FSM_sequential_mst_exec_state_reg[1]_i_1__0_n_0 ),
        .S(mst_exec_state__0[3]));
  (* FSM_ENCODED_STATES = "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[2] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[2]_i_1__0_n_0 ),
        .Q(mst_exec_state__0[2]),
        .R(DMA_DONE_i_1_n_0));
  (* FSM_ENCODED_STATES = "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[3] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[3]_i_1__0_n_0 ),
        .Q(mst_exec_state__0[3]),
        .R(DMA_DONE_i_1_n_0));
  FDRE \axi_araddr_reg[2] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\raddr_reg_n_0_[2] ),
        .Q(m01_axi_araddr[0]),
        .R(SR));
  FDRE \axi_araddr_reg[5] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\raddr_reg_n_0_[5] ),
        .Q(m01_axi_araddr[1]),
        .R(SR));
  LUT3 #(
    .INIT(8'hAE)) 
    axi_arvalid_i_1__1
       (.I0(start_single_read_reg_n_0),
        .I1(m01_axi_arvalid),
        .I2(m01_axi_arready),
        .O(axi_arvalid_i_1__1_n_0));
  FDRE axi_arvalid_reg
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(axi_arvalid_i_1__1_n_0),
        .Q(m01_axi_arvalid),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\waddr_reg_n_0_[3] ),
        .Q(m01_axi_awaddr[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\waddr_reg_n_0_[4] ),
        .Q(m01_axi_awaddr[1]),
        .R(SR));
  FDRE \axi_awaddr_reg[5] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\waddr_reg_n_0_[5] ),
        .Q(m01_axi_awaddr[2]),
        .R(SR));
  FDRE \axi_awaddr_reg[6] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\waddr_reg_n_0_[6] ),
        .Q(m01_axi_awaddr[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_awvalid_i_1__1
       (.I0(start_single_write_reg_n_0),
        .I1(m01_axi_awvalid),
        .I2(m01_axi_awready),
        .O(axi_awvalid_i_1__1_n_0));
  FDRE axi_awvalid_reg
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(axi_awvalid_i_1__1_n_0),
        .Q(m01_axi_awvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_bready_i_1__1
       (.I0(m01_axi_bvalid),
        .I1(m01_axi_bready),
        .O(axi_bready_i_1__1_n_0));
  FDRE axi_bready_reg
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(axi_bready_i_1__1_n_0),
        .Q(m01_axi_bready),
        .R(SR));
  LUT2 #(
    .INIT(4'h4)) 
    axi_rready_i_1
       (.I0(m01_axi_rready),
        .I1(m01_axi_rvalid),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(m01_axi_rready),
        .R(SR));
  FDRE \axi_wdata_reg[0] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[0] ),
        .Q(m01_axi_wdata[0]),
        .R(SR));
  FDRE \axi_wdata_reg[10] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[10] ),
        .Q(m01_axi_wdata[10]),
        .R(SR));
  FDRE \axi_wdata_reg[11] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[11] ),
        .Q(m01_axi_wdata[11]),
        .R(SR));
  FDRE \axi_wdata_reg[12] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[12] ),
        .Q(m01_axi_wdata[12]),
        .R(SR));
  FDRE \axi_wdata_reg[13] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[13] ),
        .Q(m01_axi_wdata[13]),
        .R(SR));
  FDRE \axi_wdata_reg[14] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[14] ),
        .Q(m01_axi_wdata[14]),
        .R(SR));
  FDRE \axi_wdata_reg[15] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[15] ),
        .Q(m01_axi_wdata[15]),
        .R(SR));
  FDRE \axi_wdata_reg[16] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[16] ),
        .Q(m01_axi_wdata[16]),
        .R(SR));
  FDRE \axi_wdata_reg[17] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[17] ),
        .Q(m01_axi_wdata[17]),
        .R(SR));
  FDRE \axi_wdata_reg[18] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[18] ),
        .Q(m01_axi_wdata[18]),
        .R(SR));
  FDRE \axi_wdata_reg[19] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[19] ),
        .Q(m01_axi_wdata[19]),
        .R(SR));
  FDRE \axi_wdata_reg[1] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[1] ),
        .Q(m01_axi_wdata[1]),
        .R(SR));
  FDRE \axi_wdata_reg[20] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[20] ),
        .Q(m01_axi_wdata[20]),
        .R(SR));
  FDRE \axi_wdata_reg[21] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[21] ),
        .Q(m01_axi_wdata[21]),
        .R(SR));
  FDRE \axi_wdata_reg[22] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[22] ),
        .Q(m01_axi_wdata[22]),
        .R(SR));
  FDRE \axi_wdata_reg[23] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[23] ),
        .Q(m01_axi_wdata[23]),
        .R(SR));
  FDRE \axi_wdata_reg[24] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[24] ),
        .Q(m01_axi_wdata[24]),
        .R(SR));
  FDRE \axi_wdata_reg[25] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[25] ),
        .Q(m01_axi_wdata[25]),
        .R(SR));
  FDRE \axi_wdata_reg[26] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[26] ),
        .Q(m01_axi_wdata[26]),
        .R(SR));
  FDRE \axi_wdata_reg[27] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[27] ),
        .Q(m01_axi_wdata[27]),
        .R(SR));
  FDRE \axi_wdata_reg[28] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[28] ),
        .Q(m01_axi_wdata[28]),
        .R(SR));
  FDRE \axi_wdata_reg[29] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[29] ),
        .Q(m01_axi_wdata[29]),
        .R(SR));
  FDRE \axi_wdata_reg[2] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[2] ),
        .Q(m01_axi_wdata[2]),
        .R(SR));
  FDRE \axi_wdata_reg[30] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[30] ),
        .Q(m01_axi_wdata[30]),
        .R(SR));
  FDRE \axi_wdata_reg[31] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[31] ),
        .Q(m01_axi_wdata[31]),
        .R(SR));
  FDRE \axi_wdata_reg[3] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[3] ),
        .Q(m01_axi_wdata[3]),
        .R(SR));
  FDRE \axi_wdata_reg[4] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[4] ),
        .Q(m01_axi_wdata[4]),
        .R(SR));
  FDRE \axi_wdata_reg[5] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[5] ),
        .Q(m01_axi_wdata[5]),
        .R(SR));
  FDRE \axi_wdata_reg[6] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[6] ),
        .Q(m01_axi_wdata[6]),
        .R(SR));
  FDRE \axi_wdata_reg[7] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[7] ),
        .Q(m01_axi_wdata[7]),
        .R(SR));
  FDRE \axi_wdata_reg[8] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[8] ),
        .Q(m01_axi_wdata[8]),
        .R(SR));
  FDRE \axi_wdata_reg[9] 
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(\wdata_reg_n_0_[9] ),
        .Q(m01_axi_wdata[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_wvalid_i_1__1
       (.I0(start_single_write_reg_n_0),
        .I1(m01_axi_wvalid),
        .I2(m01_axi_wready),
        .O(axi_wvalid_i_1__1_n_0));
  FDRE axi_wvalid_reg
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(axi_wvalid_i_1__1_n_0),
        .Q(m01_axi_wvalid),
        .R(SR));
  LUT4 #(
    .INIT(16'h15EA)) 
    \datacpy_state[0]_INST_0 
       (.I0(mst_exec_state__0[3]),
        .I1(mst_exec_state__0[1]),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[0]),
        .O(datacpy_state[0]));
  LUT4 #(
    .INIT(16'h3788)) 
    \datacpy_state[1]_INST_0 
       (.I0(mst_exec_state__0[3]),
        .I1(mst_exec_state__0[0]),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[1]),
        .O(datacpy_state[1]));
  LUT4 #(
    .INIT(16'hA444)) 
    \datacpy_state[2]_INST_0 
       (.I0(mst_exec_state__0[3]),
        .I1(mst_exec_state__0[2]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[0]),
        .O(datacpy_state[2]));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \datacpy_state[3]_INST_0 
       (.I0(mst_exec_state__0[3]),
        .I1(mst_exec_state__0[1]),
        .I2(mst_exec_state__0[0]),
        .I3(mst_exec_state__0[2]),
        .O(datacpy_state[3]));
  LUT3 #(
    .INIT(8'h63)) 
    \raddr[2]_i_1__0 
       (.I0(mst_exec_state__0[2]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .O(\raddr[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0020102000100020)) 
    \raddr[5]_i_1__0 
       (.I0(mst_exec_state__0[0]),
        .I1(reads_done),
        .I2(raddr0),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[3]),
        .I5(mst_exec_state__0[1]),
        .O(\raddr[5]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \raddr[5]_i_2 
       (.I0(mst_exec_state__0[2]),
        .I1(mst_exec_state__0[3]),
        .O(\raddr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \raddr[5]_i_3__0 
       (.I0(read_issued_reg_n_0),
        .I1(m01_axi_arvalid),
        .I2(m01_axi_rvalid),
        .I3(start_single_read_reg_n_0),
        .O(raddr0));
  FDRE \raddr_reg[2] 
       (.C(m01_axi_aclk),
        .CE(\raddr[5]_i_1__0_n_0 ),
        .D(\raddr[2]_i_1__0_n_0 ),
        .Q(\raddr_reg_n_0_[2] ),
        .R(DMA_DONE_i_1_n_0));
  FDRE \raddr_reg[5] 
       (.C(m01_axi_aclk),
        .CE(\raddr[5]_i_1__0_n_0 ),
        .D(\raddr[5]_i_2_n_0 ),
        .Q(\raddr_reg_n_0_[5] ),
        .R(DMA_DONE_i_1_n_0));
  FDRE \rdata_reg[0] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[0]),
        .Q(\rdata_reg_n_0_[0] ),
        .R(SR));
  FDRE \rdata_reg[10] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[10]),
        .Q(\rdata_reg_n_0_[10] ),
        .R(SR));
  FDRE \rdata_reg[11] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[11]),
        .Q(\rdata_reg_n_0_[11] ),
        .R(SR));
  FDRE \rdata_reg[12] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[12]),
        .Q(\rdata_reg_n_0_[12] ),
        .R(SR));
  FDRE \rdata_reg[13] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[13]),
        .Q(\rdata_reg_n_0_[13] ),
        .R(SR));
  FDRE \rdata_reg[14] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[14]),
        .Q(\rdata_reg_n_0_[14] ),
        .R(SR));
  FDRE \rdata_reg[15] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[15]),
        .Q(\rdata_reg_n_0_[15] ),
        .R(SR));
  FDRE \rdata_reg[16] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[16]),
        .Q(\rdata_reg_n_0_[16] ),
        .R(SR));
  FDRE \rdata_reg[17] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[17]),
        .Q(\rdata_reg_n_0_[17] ),
        .R(SR));
  FDRE \rdata_reg[18] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[18]),
        .Q(\rdata_reg_n_0_[18] ),
        .R(SR));
  FDRE \rdata_reg[19] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[19]),
        .Q(\rdata_reg_n_0_[19] ),
        .R(SR));
  FDRE \rdata_reg[1] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[1]),
        .Q(Q),
        .R(SR));
  FDRE \rdata_reg[20] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[20]),
        .Q(\rdata_reg_n_0_[20] ),
        .R(SR));
  FDRE \rdata_reg[21] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[21]),
        .Q(\rdata_reg_n_0_[21] ),
        .R(SR));
  FDRE \rdata_reg[22] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[22]),
        .Q(\rdata_reg_n_0_[22] ),
        .R(SR));
  FDRE \rdata_reg[23] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[23]),
        .Q(\rdata_reg_n_0_[23] ),
        .R(SR));
  FDRE \rdata_reg[24] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[24]),
        .Q(\rdata_reg_n_0_[24] ),
        .R(SR));
  FDRE \rdata_reg[25] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[25]),
        .Q(\rdata_reg_n_0_[25] ),
        .R(SR));
  FDRE \rdata_reg[26] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[26]),
        .Q(\rdata_reg_n_0_[26] ),
        .R(SR));
  FDRE \rdata_reg[27] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[27]),
        .Q(\rdata_reg_n_0_[27] ),
        .R(SR));
  FDRE \rdata_reg[28] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[28]),
        .Q(\rdata_reg_n_0_[28] ),
        .R(SR));
  FDRE \rdata_reg[29] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[29]),
        .Q(\rdata_reg_n_0_[29] ),
        .R(SR));
  FDRE \rdata_reg[2] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[2]),
        .Q(\rdata_reg_n_0_[2] ),
        .R(SR));
  FDRE \rdata_reg[30] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[30]),
        .Q(\rdata_reg_n_0_[30] ),
        .R(SR));
  FDRE \rdata_reg[31] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[31]),
        .Q(\rdata_reg_n_0_[31] ),
        .R(SR));
  FDRE \rdata_reg[3] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[3]),
        .Q(\rdata_reg_n_0_[3] ),
        .R(SR));
  FDRE \rdata_reg[4] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[4]),
        .Q(\rdata_reg_n_0_[4] ),
        .R(SR));
  FDRE \rdata_reg[5] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[5]),
        .Q(\rdata_reg_n_0_[5] ),
        .R(SR));
  FDRE \rdata_reg[6] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[6]),
        .Q(\rdata_reg_n_0_[6] ),
        .R(SR));
  FDRE \rdata_reg[7] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[7]),
        .Q(\rdata_reg_n_0_[7] ),
        .R(SR));
  FDRE \rdata_reg[8] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[8]),
        .Q(\rdata_reg_n_0_[8] ),
        .R(SR));
  FDRE \rdata_reg[9] 
       (.C(m01_axi_aclk),
        .CE(reads_done0),
        .D(m01_axi_rdata[9]),
        .Q(\rdata_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00FF0100)) 
    read_issued_i_1__1
       (.I0(m01_axi_arvalid),
        .I1(m01_axi_rvalid),
        .I2(start_single_read_reg_n_0),
        .I3(read_issued),
        .I4(read_issued_reg_n_0),
        .O(read_issued_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h08480408)) 
    read_issued_i_2__0
       (.I0(mst_exec_state__0[0]),
        .I1(read_issued_i_3__0_n_0),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[3]),
        .I4(mst_exec_state__0[1]),
        .O(read_issued));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAB)) 
    read_issued_i_3__0
       (.I0(m01_axi_rready),
        .I1(read_issued_reg_n_0),
        .I2(m01_axi_arvalid),
        .I3(m01_axi_rvalid),
        .I4(start_single_read_reg_n_0),
        .I5(reads_done),
        .O(read_issued_i_3__0_n_0));
  FDRE read_issued_reg
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(read_issued_i_1__1_n_0),
        .Q(read_issued_reg_n_0),
        .R(DMA_DONE_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    reads_done_i_1__0
       (.I0(m01_axi_rvalid),
        .I1(m01_axi_rready),
        .O(reads_done0));
  FDRE reads_done_reg
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(reads_done0),
        .Q(reads_done),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \slv_reg11[1]_i_1 
       (.I0(datacpy_done),
        .I1(\slv_reg11_reg[1]_0 ),
        .O(\slv_reg11_reg[1] ));
  LUT5 #(
    .INIT(32'h00FF0100)) 
    start_single_read_i_1__1
       (.I0(read_issued_reg_n_0),
        .I1(m01_axi_arvalid),
        .I2(m01_axi_rvalid),
        .I3(start_single_read),
        .I4(start_single_read_reg_n_0),
        .O(start_single_read_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h08480408)) 
    start_single_read_i_2__0
       (.I0(mst_exec_state__0[0]),
        .I1(start_single_read_i_3__0_n_0),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[3]),
        .I4(mst_exec_state__0[1]),
        .O(start_single_read));
  LUT6 #(
    .INIT(64'h0000000055555557)) 
    start_single_read_i_3__0
       (.I0(m01_axi_rready),
        .I1(read_issued_reg_n_0),
        .I2(m01_axi_arvalid),
        .I3(m01_axi_rvalid),
        .I4(start_single_read_reg_n_0),
        .I5(reads_done),
        .O(start_single_read_i_3__0_n_0));
  FDRE start_single_read_reg
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(start_single_read_i_1__1_n_0),
        .Q(start_single_read_reg_n_0),
        .R(DMA_DONE_i_1_n_0));
  LUT5 #(
    .INIT(32'hFEFF4400)) 
    start_single_write_i_1__1
       (.I0(writes_done),
        .I1(start_single_write0),
        .I2(m01_axi_bready),
        .I3(start_single_write_i_2__0_n_0),
        .I4(start_single_write_reg_n_0),
        .O(start_single_write_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h4538)) 
    start_single_write_i_2__0
       (.I0(mst_exec_state__0[3]),
        .I1(mst_exec_state__0[0]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .O(start_single_write_i_2__0_n_0));
  FDRE start_single_write_reg
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(start_single_write_i_1__1_n_0),
        .Q(start_single_write_reg_n_0),
        .R(DMA_DONE_i_1_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    \waddr[3]_i_1__0 
       (.I0(mst_exec_state__0[3]),
        .I1(mst_exec_state__0[2]),
        .I2(mst_exec_state__0[0]),
        .O(\waddr[3]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[4]_i_1 
       (.I0(mst_exec_state__0[2]),
        .O(\waddr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1500)) 
    \waddr[5]_i_1 
       (.I0(mst_exec_state__0[1]),
        .I1(mst_exec_state__0[2]),
        .I2(mst_exec_state__0[3]),
        .I3(mst_exec_state__0[0]),
        .O(\waddr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004040040400440)) 
    \waddr[6]_i_1__0 
       (.I0(writes_done),
        .I1(start_single_write0),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[1]),
        .I4(mst_exec_state__0[0]),
        .I5(mst_exec_state__0[3]),
        .O(\waddr[6]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \waddr[6]_i_2 
       (.I0(mst_exec_state__0[1]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[2]),
        .O(\waddr[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \waddr[6]_i_3__0 
       (.I0(m01_axi_bvalid),
        .I1(m01_axi_wvalid),
        .I2(write_issued_reg_n_0),
        .I3(start_single_write_reg_n_0),
        .I4(m01_axi_awvalid),
        .O(start_single_write0));
  FDRE \waddr_reg[3] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\waddr[3]_i_1__0_n_0 ),
        .Q(\waddr_reg_n_0_[3] ),
        .R(DMA_DONE_i_1_n_0));
  FDRE \waddr_reg[4] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\waddr[4]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[4] ),
        .R(DMA_DONE_i_1_n_0));
  FDRE \waddr_reg[5] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\waddr[5]_i_1_n_0 ),
        .Q(\waddr_reg_n_0_[5] ),
        .R(DMA_DONE_i_1_n_0));
  FDRE \waddr_reg[6] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\waddr[6]_i_2_n_0 ),
        .Q(\waddr_reg_n_0_[6] ),
        .R(DMA_DONE_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[10]_i_2 
       (.I0(\rdata_reg_n_0_[10] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [8]),
        .O(\wdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[11]_i_2 
       (.I0(\rdata_reg_n_0_[11] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [9]),
        .O(\wdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[12]_i_2 
       (.I0(\rdata_reg_n_0_[12] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [10]),
        .O(\wdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[13]_i_2 
       (.I0(\rdata_reg_n_0_[13] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [11]),
        .O(\wdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[14]_i_2 
       (.I0(\rdata_reg_n_0_[14] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [12]),
        .O(\wdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[15]_i_2 
       (.I0(\rdata_reg_n_0_[15] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [13]),
        .O(\wdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[16]_i_2 
       (.I0(\rdata_reg_n_0_[16] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [14]),
        .O(\wdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[17]_i_2 
       (.I0(\rdata_reg_n_0_[17] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [15]),
        .O(\wdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[18]_i_2 
       (.I0(\rdata_reg_n_0_[18] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [16]),
        .O(\wdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[19]_i_2 
       (.I0(\rdata_reg_n_0_[19] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [17]),
        .O(\wdata[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F53)) 
    \wdata[1]_i_2 
       (.I0(mst_exec_state__0[3]),
        .I1(mst_exec_state__0[1]),
        .I2(mst_exec_state__0[2]),
        .I3(mst_exec_state__0[0]),
        .O(\wdata_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[20]_i_2 
       (.I0(\rdata_reg_n_0_[20] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [18]),
        .O(\wdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[21]_i_2 
       (.I0(\rdata_reg_n_0_[21] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [19]),
        .O(\wdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[22]_i_2 
       (.I0(\rdata_reg_n_0_[22] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [20]),
        .O(\wdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[23]_i_2 
       (.I0(\rdata_reg_n_0_[23] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [21]),
        .O(\wdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[24]_i_2 
       (.I0(\rdata_reg_n_0_[24] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [22]),
        .O(\wdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[25]_i_2 
       (.I0(\rdata_reg_n_0_[25] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [23]),
        .O(\wdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[26]_i_2 
       (.I0(\rdata_reg_n_0_[26] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [24]),
        .O(\wdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[27]_i_2 
       (.I0(\rdata_reg_n_0_[27] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [25]),
        .O(\wdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[28]_i_2 
       (.I0(\rdata_reg_n_0_[28] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [26]),
        .O(\wdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[29]_i_2 
       (.I0(\rdata_reg_n_0_[29] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [27]),
        .O(\wdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[2]_i_2 
       (.I0(\rdata_reg_n_0_[2] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [0]),
        .O(\wdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[30]_i_2 
       (.I0(\rdata_reg_n_0_[30] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [28]),
        .O(\wdata[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2240)) 
    \wdata[31]_i_2__0 
       (.I0(mst_exec_state__0[0]),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .O(\wdata_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[31]_i_3 
       (.I0(\rdata_reg_n_0_[31] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [29]),
        .O(\wdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[3]_i_2 
       (.I0(\rdata_reg_n_0_[3] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [1]),
        .O(\wdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[4]_i_2 
       (.I0(\rdata_reg_n_0_[4] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [2]),
        .O(\wdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[5]_i_2 
       (.I0(\rdata_reg_n_0_[5] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [3]),
        .O(\wdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[6]_i_2 
       (.I0(\rdata_reg_n_0_[6] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [4]),
        .O(\wdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[7]_i_2 
       (.I0(\rdata_reg_n_0_[7] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [5]),
        .O(\wdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[8]_i_2 
       (.I0(\rdata_reg_n_0_[8] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [6]),
        .O(\wdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEEFA20AA220A)) 
    \wdata[9]_i_2 
       (.I0(\rdata_reg_n_0_[9] ),
        .I1(mst_exec_state__0[3]),
        .I2(mst_exec_state__0[1]),
        .I3(mst_exec_state__0[2]),
        .I4(mst_exec_state__0[0]),
        .I5(\slv_reg4_reg[31] [7]),
        .O(\wdata[9]_i_2_n_0 ));
  FDRE \wdata_reg[0] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\wdata_reg_n_0_[0] ),
        .R(DMA_DONE_i_1_n_0));
  FDRE \wdata_reg[10] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[10]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[10] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[10]_i_1 
       (.I0(\wdata[10]_i_2_n_0 ),
        .I1(\slv_reg0_reg[10] ),
        .O(\wdata_reg[10]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[11] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[11]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[11] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[11]_i_1 
       (.I0(\wdata[11]_i_2_n_0 ),
        .I1(\slv_reg0_reg[11] ),
        .O(\wdata_reg[11]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[12] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[12]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[12] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[12]_i_1 
       (.I0(\wdata[12]_i_2_n_0 ),
        .I1(\slv_reg0_reg[12] ),
        .O(\wdata_reg[12]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[13] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[13]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[13] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[13]_i_1 
       (.I0(\wdata[13]_i_2_n_0 ),
        .I1(\slv_reg0_reg[13] ),
        .O(\wdata_reg[13]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[14] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[14]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[14] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[14]_i_1 
       (.I0(\wdata[14]_i_2_n_0 ),
        .I1(\slv_reg0_reg[14] ),
        .O(\wdata_reg[14]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[15] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[15]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[15] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[15]_i_1 
       (.I0(\wdata[15]_i_2_n_0 ),
        .I1(\slv_reg0_reg[15] ),
        .O(\wdata_reg[15]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[16] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[16]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[16] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[16]_i_1 
       (.I0(\wdata[16]_i_2_n_0 ),
        .I1(\slv_reg0_reg[16] ),
        .O(\wdata_reg[16]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[17] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[17]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[17] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[17]_i_1 
       (.I0(\wdata[17]_i_2_n_0 ),
        .I1(\slv_reg0_reg[17] ),
        .O(\wdata_reg[17]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[18] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[18]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[18] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[18]_i_1 
       (.I0(\wdata[18]_i_2_n_0 ),
        .I1(\slv_reg0_reg[18] ),
        .O(\wdata_reg[18]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[19] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[19]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[19] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[19]_i_1 
       (.I0(\wdata[19]_i_2_n_0 ),
        .I1(\slv_reg0_reg[19] ),
        .O(\wdata_reg[19]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[1] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\wdata_reg_n_0_[1] ),
        .R(DMA_DONE_i_1_n_0));
  FDRE \wdata_reg[20] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[20]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[20] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[20]_i_1 
       (.I0(\wdata[20]_i_2_n_0 ),
        .I1(\operation_type_reg[1]_10 ),
        .O(\wdata_reg[20]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[21] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[21]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[21] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[21]_i_1 
       (.I0(\wdata[21]_i_2_n_0 ),
        .I1(\operation_type_reg[1]_9 ),
        .O(\wdata_reg[21]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[22] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[22]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[22] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[22]_i_1 
       (.I0(\wdata[22]_i_2_n_0 ),
        .I1(\operation_type_reg[1]_8 ),
        .O(\wdata_reg[22]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[23] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[23]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[23] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[23]_i_1 
       (.I0(\wdata[23]_i_2_n_0 ),
        .I1(\operation_type_reg[1]_7 ),
        .O(\wdata_reg[23]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[24] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[24]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[24] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[24]_i_1 
       (.I0(\wdata[24]_i_2_n_0 ),
        .I1(\operation_type_reg[1]_6 ),
        .O(\wdata_reg[24]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[25] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[25]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[25] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[25]_i_1 
       (.I0(\wdata[25]_i_2_n_0 ),
        .I1(\operation_type_reg[1]_5 ),
        .O(\wdata_reg[25]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[26] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[26]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[26] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[26]_i_1 
       (.I0(\wdata[26]_i_2_n_0 ),
        .I1(\operation_type_reg[1]_4 ),
        .O(\wdata_reg[26]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[27] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[27]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[27] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[27]_i_1 
       (.I0(\wdata[27]_i_2_n_0 ),
        .I1(\operation_type_reg[1]_3 ),
        .O(\wdata_reg[27]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[28] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[28]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[28] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[28]_i_1 
       (.I0(\wdata[28]_i_2_n_0 ),
        .I1(\operation_type_reg[1]_2 ),
        .O(\wdata_reg[28]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[29] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[29]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[29] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[29]_i_1 
       (.I0(\wdata[29]_i_2_n_0 ),
        .I1(\operation_type_reg[1]_1 ),
        .O(\wdata_reg[29]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[2] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[2]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[2] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[2]_i_1 
       (.I0(\wdata[2]_i_2_n_0 ),
        .I1(\slv_reg0_reg[2] ),
        .O(\wdata_reg[2]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[30] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[30]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[30] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[30]_i_1 
       (.I0(\wdata[30]_i_2_n_0 ),
        .I1(\operation_type_reg[1]_0 ),
        .O(\wdata_reg[30]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[31] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[31]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[31] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[31]_i_1 
       (.I0(\wdata[31]_i_3_n_0 ),
        .I1(\operation_type_reg[1] ),
        .O(\wdata_reg[31]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[3] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[3]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[3] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[3]_i_1 
       (.I0(\wdata[3]_i_2_n_0 ),
        .I1(\slv_reg0_reg[3] ),
        .O(\wdata_reg[3]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[4] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[4]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[4] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[4]_i_1 
       (.I0(\wdata[4]_i_2_n_0 ),
        .I1(\slv_reg0_reg[4] ),
        .O(\wdata_reg[4]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[5] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[5]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[5] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[5]_i_1 
       (.I0(\wdata[5]_i_2_n_0 ),
        .I1(\slv_reg0_reg[5] ),
        .O(\wdata_reg[5]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[6] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[6]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[6] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[6]_i_1 
       (.I0(\wdata[6]_i_2_n_0 ),
        .I1(\slv_reg0_reg[6] ),
        .O(\wdata_reg[6]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[7] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[7]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[7] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[7]_i_1 
       (.I0(\wdata[7]_i_2_n_0 ),
        .I1(\slv_reg0_reg[7] ),
        .O(\wdata_reg[7]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[8] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[8]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[8] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[8]_i_1 
       (.I0(\wdata[8]_i_2_n_0 ),
        .I1(\slv_reg0_reg[8] ),
        .O(\wdata_reg[8]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  FDRE \wdata_reg[9] 
       (.C(m01_axi_aclk),
        .CE(\waddr[6]_i_1__0_n_0 ),
        .D(\wdata_reg[9]_i_1_n_0 ),
        .Q(\wdata_reg_n_0_[9] ),
        .R(DMA_DONE_i_1_n_0));
  MUXF7 \wdata_reg[9]_i_1 
       (.I0(\wdata[9]_i_2_n_0 ),
        .I1(\slv_reg0_reg[9] ),
        .O(\wdata_reg[9]_i_1_n_0 ),
        .S(\wdata_reg[31]_0 ));
  LUT5 #(
    .INIT(32'hEFFF4400)) 
    write_issued_i_1__1
       (.I0(writes_done),
        .I1(start_single_write0),
        .I2(m01_axi_bready),
        .I3(start_single_write_i_2__0_n_0),
        .I4(write_issued_reg_n_0),
        .O(write_issued_i_1__1_n_0));
  FDRE write_issued_reg
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(write_issued_i_1__1_n_0),
        .Q(write_issued_reg_n_0),
        .R(DMA_DONE_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    writes_done_i_1__0
       (.I0(m01_axi_bvalid),
        .I1(m01_axi_bready),
        .O(writes_done0));
  FDRE writes_done_reg
       (.C(m01_axi_aclk),
        .CE(1'b1),
        .D(writes_done0),
        .Q(writes_done),
        .R(SR));
endmodule

module design_1_undolog_0_3_undolog_v2_1_M02_AXI
   (out,
    m02_axi_bready,
    metadata_done,
    m02_axi_arvalid,
    m02_axi_wvalid,
    m02_axi_awvalid,
    metadatacpy_state,
    \slv_reg11_reg[0] ,
    m02_axi_rready,
    \rdata[31] ,
    redolog_dest_data,
    redolog_src_data,
    \raddr[31] ,
    \waddr[31] ,
    \wdata[31] ,
    m02_axi_awaddr,
    m02_axi_wdata,
    m02_axi_araddr,
    SR,
    m02_axi_aclk,
    Q,
    DI,
    S,
    \slv_reg4_reg[14] ,
    \slv_reg4_reg[22] ,
    \slv_reg8_reg[6] ,
    \slv_reg4_reg[29] ,
    \slv_reg8_reg[14] ,
    m02_axi_bvalid,
    \slv_reg11_reg[0]_0 ,
    mst_exec_state1__9,
    m02_axi_aresetn,
    m02_axi_rvalid,
    \slv_reg0_reg[29] ,
    in24,
    \slv_reg0_reg[26] ,
    \slv_reg0_reg[16] ,
    in27,
    in26,
    m02_axi_arready,
    m02_axi_wready,
    m02_axi_awready,
    m02_axi_rdata,
    D,
    \FSM_sequential_mst_exec_state_reg[3]_0 );
  output [2:0]out;
  output m02_axi_bready;
  output metadata_done;
  output m02_axi_arvalid;
  output m02_axi_wvalid;
  output m02_axi_awvalid;
  output [3:0]metadatacpy_state;
  output \slv_reg11_reg[0] ;
  output m02_axi_rready;
  output [31:0]\rdata[31] ;
  output [63:0]redolog_dest_data;
  output [63:0]redolog_src_data;
  output [31:0]\raddr[31] ;
  output [31:0]\waddr[31] ;
  output [31:0]\wdata[31] ;
  output [31:0]m02_axi_awaddr;
  output [31:0]m02_axi_wdata;
  output [31:0]m02_axi_araddr;
  input [0:0]SR;
  input m02_axi_aclk;
  input [19:0]Q;
  input [0:0]DI;
  input [5:0]S;
  input [7:0]\slv_reg4_reg[14] ;
  input [2:0]\slv_reg4_reg[22] ;
  input [7:0]\slv_reg8_reg[6] ;
  input [6:0]\slv_reg4_reg[29] ;
  input [7:0]\slv_reg8_reg[14] ;
  input m02_axi_bvalid;
  input \slv_reg11_reg[0]_0 ;
  input mst_exec_state1__9;
  input m02_axi_aresetn;
  input m02_axi_rvalid;
  input [6:0]\slv_reg0_reg[29] ;
  input [29:0]in24;
  input [7:0]\slv_reg0_reg[26] ;
  input [16:0]\slv_reg0_reg[16] ;
  input [29:0]in27;
  input [28:0]in26;
  input m02_axi_arready;
  input m02_axi_wready;
  input m02_axi_awready;
  input [31:0]m02_axi_rdata;
  input [0:0]D;
  input [31:0]\FSM_sequential_mst_exec_state_reg[3]_0 ;

  wire [0:0]D;
  wire [0:0]DI;
  wire \FSM_sequential_mst_exec_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_mst_exec_state[0]_i_2_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[2]_i_1__1_n_0 ;
  wire \FSM_sequential_mst_exec_state[3]_i_1__1_n_0 ;
  wire [31:0]\FSM_sequential_mst_exec_state_reg[3]_0 ;
  wire [19:0]Q;
  wire [5:0]S;
  wire [0:0]SR;
  wire axi_arvalid_i_1_n_0;
  wire axi_awvalid_i_1_n_0;
  wire axi_bready_i_1_n_0;
  wire axi_rready_i_1_n_0;
  wire axi_wvalid_i_1_n_0;
  wire [31:0]in22;
  wire [29:0]in24;
  wire [28:0]in26;
  wire [29:0]in27;
  wire m02_axi_aclk;
  wire [31:0]m02_axi_araddr;
  wire m02_axi_aresetn;
  wire m02_axi_arready;
  wire m02_axi_arvalid;
  wire [31:0]m02_axi_awaddr;
  wire m02_axi_awready;
  wire m02_axi_awvalid;
  wire m02_axi_bready;
  wire m02_axi_bvalid;
  wire [31:0]m02_axi_rdata;
  wire m02_axi_rready;
  wire m02_axi_rvalid;
  wire [31:0]m02_axi_wdata;
  wire m02_axi_wready;
  wire m02_axi_wvalid;
  wire metadata_done;
  wire metadata_done_i_1_n_0;
  wire metadata_done_i_2_n_0;
  wire [3:0]metadatacpy_state;
  wire mst_exec_state1__9;
  (* RTL_KEEP = "yes" *) wire [2:2]mst_exec_state__0;
  (* RTL_KEEP = "yes" *) wire [2:0]out;
  wire p_2_out_carry__0_n_0;
  wire p_2_out_carry__0_n_1;
  wire p_2_out_carry__0_n_2;
  wire p_2_out_carry__0_n_3;
  wire p_2_out_carry__0_n_5;
  wire p_2_out_carry__0_n_6;
  wire p_2_out_carry__0_n_7;
  wire p_2_out_carry__1_n_0;
  wire p_2_out_carry__1_n_1;
  wire p_2_out_carry__1_n_2;
  wire p_2_out_carry__1_n_3;
  wire p_2_out_carry__1_n_5;
  wire p_2_out_carry__1_n_6;
  wire p_2_out_carry__1_n_7;
  wire p_2_out_carry__2_n_1;
  wire p_2_out_carry__2_n_2;
  wire p_2_out_carry__2_n_3;
  wire p_2_out_carry__2_n_5;
  wire p_2_out_carry__2_n_6;
  wire p_2_out_carry__2_n_7;
  wire p_2_out_carry_i_7_n_0;
  wire p_2_out_carry_i_9_n_0;
  wire p_2_out_carry_n_0;
  wire p_2_out_carry_n_1;
  wire p_2_out_carry_n_2;
  wire p_2_out_carry_n_3;
  wire p_2_out_carry_n_5;
  wire p_2_out_carry_n_6;
  wire p_2_out_carry_n_7;
  wire raddr0;
  wire \raddr[0]_i_1_n_0 ;
  wire \raddr[10]_i_1_n_0 ;
  wire \raddr[11]_i_1_n_0 ;
  wire \raddr[12]_i_1_n_0 ;
  wire \raddr[13]_i_1_n_0 ;
  wire \raddr[14]_i_1_n_0 ;
  wire \raddr[15]_i_1_n_0 ;
  wire \raddr[16]_i_1_n_0 ;
  wire \raddr[17]_i_1_n_0 ;
  wire \raddr[18]_i_1_n_0 ;
  wire \raddr[19]_i_1_n_0 ;
  wire \raddr[1]_i_1_n_0 ;
  wire \raddr[20]_i_1_n_0 ;
  wire \raddr[21]_i_1_n_0 ;
  wire \raddr[22]_i_1_n_0 ;
  wire \raddr[23]_i_1_n_0 ;
  wire \raddr[24]_i_1_n_0 ;
  wire \raddr[25]_i_1_n_0 ;
  wire \raddr[26]_i_1_n_0 ;
  wire \raddr[27]_i_1_n_0 ;
  wire \raddr[28]_i_1_n_0 ;
  wire \raddr[29]_i_1_n_0 ;
  wire \raddr[2]_i_1_n_0 ;
  wire \raddr[30]_i_1_n_0 ;
  wire [31:0]\raddr[31] ;
  wire \raddr[31]_i_1_n_0 ;
  wire \raddr[31]_i_2_n_0 ;
  wire \raddr[31]_i_4_n_0 ;
  wire \raddr[31]_i_5_n_0 ;
  wire \raddr[3]_i_1_n_0 ;
  wire \raddr[4]_i_1_n_0 ;
  wire \raddr[5]_i_1_n_0 ;
  wire \raddr[6]_i_1_n_0 ;
  wire \raddr[7]_i_1_n_0 ;
  wire \raddr[8]_i_1_n_0 ;
  wire \raddr[9]_i_1_n_0 ;
  wire [31:0]\rdata[31] ;
  wire read_issued_i_1_n_0;
  wire read_issued_reg_n_0;
  wire reads_done;
  wire reads_done0;
  wire [63:0]redolog_dest_data;
  wire \redolog_dest_data[31]_i_1_n_0 ;
  wire \redolog_dest_data[63]_i_1_n_0 ;
  wire [63:0]redolog_src_data;
  wire \redolog_src_data[31]_i_1_n_0 ;
  wire \redolog_src_data[63]_i_1_n_0 ;
  wire [16:0]\slv_reg0_reg[16] ;
  wire [7:0]\slv_reg0_reg[26] ;
  wire [6:0]\slv_reg0_reg[29] ;
  wire \slv_reg11_reg[0] ;
  wire \slv_reg11_reg[0]_0 ;
  wire [7:0]\slv_reg4_reg[14] ;
  wire [2:0]\slv_reg4_reg[22] ;
  wire [6:0]\slv_reg4_reg[29] ;
  wire [7:0]\slv_reg8_reg[14] ;
  wire [7:0]\slv_reg8_reg[6] ;
  wire start_single_read_i_1_n_0;
  wire start_single_read_i_2_n_0;
  wire start_single_read_reg_n_0;
  wire start_single_write0;
  wire start_single_write_i_1_n_0;
  wire start_single_write_i_2__1_n_0;
  wire start_single_write_reg_n_0;
  wire \waddr[10]_i_2_n_0 ;
  wire \waddr[10]_i_3_n_0 ;
  wire \waddr[11]_i_2_n_0 ;
  wire \waddr[11]_i_3_n_0 ;
  wire \waddr[12]_i_2_n_0 ;
  wire \waddr[12]_i_3_n_0 ;
  wire \waddr[13]_i_2_n_0 ;
  wire \waddr[13]_i_3_n_0 ;
  wire \waddr[14]_i_2_n_0 ;
  wire \waddr[14]_i_3_n_0 ;
  wire \waddr[15]_i_2_n_0 ;
  wire \waddr[15]_i_3_n_0 ;
  wire \waddr[16]_i_2_n_0 ;
  wire \waddr[16]_i_3_n_0 ;
  wire \waddr[17]_i_2_n_0 ;
  wire \waddr[17]_i_3_n_0 ;
  wire \waddr[18]_i_2_n_0 ;
  wire \waddr[18]_i_3_n_0 ;
  wire \waddr[19]_i_2_n_0 ;
  wire \waddr[19]_i_3_n_0 ;
  wire \waddr[20]_i_2_n_0 ;
  wire \waddr[20]_i_3_n_0 ;
  wire \waddr[21]_i_2_n_0 ;
  wire \waddr[21]_i_3_n_0 ;
  wire \waddr[22]_i_2_n_0 ;
  wire \waddr[22]_i_3_n_0 ;
  wire \waddr[23]_i_2_n_0 ;
  wire \waddr[23]_i_3_n_0 ;
  wire \waddr[24]_i_2_n_0 ;
  wire \waddr[24]_i_3_n_0 ;
  wire \waddr[25]_i_2_n_0 ;
  wire \waddr[25]_i_3_n_0 ;
  wire \waddr[26]_i_2_n_0 ;
  wire \waddr[26]_i_3_n_0 ;
  wire \waddr[27]_i_2_n_0 ;
  wire \waddr[27]_i_3_n_0 ;
  wire \waddr[28]_i_2_n_0 ;
  wire \waddr[28]_i_3_n_0 ;
  wire \waddr[29]_i_2_n_0 ;
  wire \waddr[29]_i_3_n_0 ;
  wire \waddr[2]_i_1_n_0 ;
  wire \waddr[30]_i_2_n_0 ;
  wire \waddr[30]_i_3_n_0 ;
  wire [31:0]\waddr[31] ;
  wire \waddr[31]_i_1_n_0 ;
  wire \waddr[31]_i_4_n_0 ;
  wire \waddr[31]_i_5_n_0 ;
  wire \waddr[3]_i_2_n_0 ;
  wire \waddr[3]_i_3_n_0 ;
  wire \waddr[4]_i_2_n_0 ;
  wire \waddr[4]_i_3_n_0 ;
  wire \waddr[5]_i_2_n_0 ;
  wire \waddr[5]_i_3_n_0 ;
  wire \waddr[6]_i_2__1_n_0 ;
  wire \waddr[6]_i_3__1_n_0 ;
  wire \waddr[7]_i_2_n_0 ;
  wire \waddr[7]_i_3_n_0 ;
  wire \waddr[8]_i_2_n_0 ;
  wire \waddr[8]_i_3_n_0 ;
  wire \waddr[9]_i_2_n_0 ;
  wire \waddr[9]_i_3_n_0 ;
  wire \waddr_reg[10]_i_1_n_0 ;
  wire \waddr_reg[11]_i_1_n_0 ;
  wire \waddr_reg[12]_i_1_n_0 ;
  wire \waddr_reg[13]_i_1_n_0 ;
  wire \waddr_reg[14]_i_1_n_0 ;
  wire \waddr_reg[15]_i_1_n_0 ;
  wire \waddr_reg[16]_i_1_n_0 ;
  wire \waddr_reg[17]_i_1_n_0 ;
  wire \waddr_reg[18]_i_1_n_0 ;
  wire \waddr_reg[19]_i_1_n_0 ;
  wire \waddr_reg[20]_i_1_n_0 ;
  wire \waddr_reg[21]_i_1_n_0 ;
  wire \waddr_reg[22]_i_1_n_0 ;
  wire \waddr_reg[23]_i_1_n_0 ;
  wire \waddr_reg[24]_i_1_n_0 ;
  wire \waddr_reg[25]_i_1_n_0 ;
  wire \waddr_reg[26]_i_1_n_0 ;
  wire \waddr_reg[27]_i_1_n_0 ;
  wire \waddr_reg[28]_i_1_n_0 ;
  wire \waddr_reg[29]_i_1_n_0 ;
  wire \waddr_reg[30]_i_1_n_0 ;
  wire \waddr_reg[31]_i_2_n_0 ;
  wire \waddr_reg[3]_i_1_n_0 ;
  wire \waddr_reg[4]_i_1_n_0 ;
  wire \waddr_reg[5]_i_1_n_0 ;
  wire \waddr_reg[6]_i_1_n_0 ;
  wire \waddr_reg[7]_i_1_n_0 ;
  wire \waddr_reg[8]_i_1_n_0 ;
  wire \waddr_reg[9]_i_1_n_0 ;
  wire [31:0]\wdata[31] ;
  wire write_issued_i_1_n_0;
  wire write_issued_reg_n_0;
  wire writes_done;
  wire writes_done0;
  wire [3:3]NLW_p_2_out_carry_CO_UNCONNECTED;
  wire [3:3]NLW_p_2_out_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_p_2_out_carry__1_CO_UNCONNECTED;
  wire [7:3]NLW_p_2_out_carry__2_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'h34FF3400)) 
    \FSM_sequential_mst_exec_state[0]_i_1__0 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(writes_done),
        .I3(out[2]),
        .I4(\FSM_sequential_mst_exec_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_mst_exec_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h4477BF834477BC80)) 
    \FSM_sequential_mst_exec_state[0]_i_2 
       (.I0(writes_done),
        .I1(mst_exec_state__0),
        .I2(out[1]),
        .I3(reads_done),
        .I4(out[0]),
        .I5(mst_exec_state1__9),
        .O(\FSM_sequential_mst_exec_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10CDFF0015C8FF00)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(out[2]),
        .I1(writes_done),
        .I2(mst_exec_state__0),
        .I3(out[1]),
        .I4(out[0]),
        .I5(reads_done),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F80FF80)) 
    \FSM_sequential_mst_exec_state[2]_i_1__1 
       (.I0(out[0]),
        .I1(reads_done),
        .I2(out[1]),
        .I3(mst_exec_state__0),
        .I4(writes_done),
        .I5(out[2]),
        .O(\FSM_sequential_mst_exec_state[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7444CCCC)) 
    \FSM_sequential_mst_exec_state[3]_i_1__1 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(mst_exec_state__0),
        .I3(writes_done),
        .I4(out[1]),
        .O(\FSM_sequential_mst_exec_state[3]_i_1__1_n_0 ));
  (* FSM_ENCODED_STATES = "UPDATE_2:0110,WR_ULOG_OFFSET_2:1000,UPDATE_1:0101,READ_DEST_VALUE_2:0100,READ_DEST_VALUE_1:0011,WR_ULOG_OFFSET_1:0111,IDLE:0000,DONE:1011,READ_SRC_VALUE_2:0010,READ_SRC_VALUE_1:0001,WR_LOG_SIZE_2:1010,WR_LOG_SIZE_1:1001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1__0_n_0 ),
        .Q(out[0]),
        .R(metadata_done_i_1_n_0));
  (* FSM_ENCODED_STATES = "UPDATE_2:0110,WR_ULOG_OFFSET_2:1000,UPDATE_1:0101,READ_DEST_VALUE_2:0100,READ_DEST_VALUE_1:0011,WR_ULOG_OFFSET_1:0111,IDLE:0000,DONE:1011,READ_SRC_VALUE_2:0010,READ_SRC_VALUE_1:0001,WR_LOG_SIZE_2:1010,WR_LOG_SIZE_1:1001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(out[1]),
        .R(metadata_done_i_1_n_0));
  (* FSM_ENCODED_STATES = "UPDATE_2:0110,WR_ULOG_OFFSET_2:1000,UPDATE_1:0101,READ_DEST_VALUE_2:0100,READ_DEST_VALUE_1:0011,WR_ULOG_OFFSET_1:0111,IDLE:0000,DONE:1011,READ_SRC_VALUE_2:0010,READ_SRC_VALUE_1:0001,WR_LOG_SIZE_2:1010,WR_LOG_SIZE_1:1001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[2] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[2]_i_1__1_n_0 ),
        .Q(mst_exec_state__0),
        .R(metadata_done_i_1_n_0));
  (* FSM_ENCODED_STATES = "UPDATE_2:0110,WR_ULOG_OFFSET_2:1000,UPDATE_1:0101,READ_DEST_VALUE_2:0100,READ_DEST_VALUE_1:0011,WR_ULOG_OFFSET_1:0111,IDLE:0000,DONE:1011,READ_SRC_VALUE_2:0010,READ_SRC_VALUE_1:0001,WR_LOG_SIZE_2:1010,WR_LOG_SIZE_1:1001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[3] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[3]_i_1__1_n_0 ),
        .Q(out[2]),
        .R(metadata_done_i_1_n_0));
  FDRE \axi_araddr_reg[0] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [0]),
        .Q(m02_axi_araddr[0]),
        .R(SR));
  FDRE \axi_araddr_reg[10] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [10]),
        .Q(m02_axi_araddr[10]),
        .R(SR));
  FDRE \axi_araddr_reg[11] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [11]),
        .Q(m02_axi_araddr[11]),
        .R(SR));
  FDRE \axi_araddr_reg[12] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [12]),
        .Q(m02_axi_araddr[12]),
        .R(SR));
  FDRE \axi_araddr_reg[13] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [13]),
        .Q(m02_axi_araddr[13]),
        .R(SR));
  FDRE \axi_araddr_reg[14] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [14]),
        .Q(m02_axi_araddr[14]),
        .R(SR));
  FDRE \axi_araddr_reg[15] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [15]),
        .Q(m02_axi_araddr[15]),
        .R(SR));
  FDRE \axi_araddr_reg[16] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [16]),
        .Q(m02_axi_araddr[16]),
        .R(SR));
  FDRE \axi_araddr_reg[17] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [17]),
        .Q(m02_axi_araddr[17]),
        .R(SR));
  FDRE \axi_araddr_reg[18] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [18]),
        .Q(m02_axi_araddr[18]),
        .R(SR));
  FDRE \axi_araddr_reg[19] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [19]),
        .Q(m02_axi_araddr[19]),
        .R(SR));
  FDRE \axi_araddr_reg[1] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [1]),
        .Q(m02_axi_araddr[1]),
        .R(SR));
  FDRE \axi_araddr_reg[20] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [20]),
        .Q(m02_axi_araddr[20]),
        .R(SR));
  FDRE \axi_araddr_reg[21] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [21]),
        .Q(m02_axi_araddr[21]),
        .R(SR));
  FDRE \axi_araddr_reg[22] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [22]),
        .Q(m02_axi_araddr[22]),
        .R(SR));
  FDRE \axi_araddr_reg[23] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [23]),
        .Q(m02_axi_araddr[23]),
        .R(SR));
  FDRE \axi_araddr_reg[24] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [24]),
        .Q(m02_axi_araddr[24]),
        .R(SR));
  FDRE \axi_araddr_reg[25] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [25]),
        .Q(m02_axi_araddr[25]),
        .R(SR));
  FDRE \axi_araddr_reg[26] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [26]),
        .Q(m02_axi_araddr[26]),
        .R(SR));
  FDRE \axi_araddr_reg[27] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [27]),
        .Q(m02_axi_araddr[27]),
        .R(SR));
  FDRE \axi_araddr_reg[28] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [28]),
        .Q(m02_axi_araddr[28]),
        .R(SR));
  FDRE \axi_araddr_reg[29] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [29]),
        .Q(m02_axi_araddr[29]),
        .R(SR));
  FDRE \axi_araddr_reg[2] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [2]),
        .Q(m02_axi_araddr[2]),
        .R(SR));
  FDRE \axi_araddr_reg[30] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [30]),
        .Q(m02_axi_araddr[30]),
        .R(SR));
  FDRE \axi_araddr_reg[31] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [31]),
        .Q(m02_axi_araddr[31]),
        .R(SR));
  FDRE \axi_araddr_reg[3] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [3]),
        .Q(m02_axi_araddr[3]),
        .R(SR));
  FDRE \axi_araddr_reg[4] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [4]),
        .Q(m02_axi_araddr[4]),
        .R(SR));
  FDRE \axi_araddr_reg[5] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [5]),
        .Q(m02_axi_araddr[5]),
        .R(SR));
  FDRE \axi_araddr_reg[6] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [6]),
        .Q(m02_axi_araddr[6]),
        .R(SR));
  FDRE \axi_araddr_reg[7] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [7]),
        .Q(m02_axi_araddr[7]),
        .R(SR));
  FDRE \axi_araddr_reg[8] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [8]),
        .Q(m02_axi_araddr[8]),
        .R(SR));
  FDRE \axi_araddr_reg[9] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\raddr[31] [9]),
        .Q(m02_axi_araddr[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_arvalid_i_1
       (.I0(start_single_read_reg_n_0),
        .I1(m02_axi_arvalid),
        .I2(m02_axi_arready),
        .O(axi_arvalid_i_1_n_0));
  FDRE axi_arvalid_reg
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(m02_axi_arvalid),
        .R(SR));
  FDRE \axi_awaddr_reg[0] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [0]),
        .Q(m02_axi_awaddr[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[10] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [10]),
        .Q(m02_axi_awaddr[10]),
        .R(SR));
  FDRE \axi_awaddr_reg[11] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [11]),
        .Q(m02_axi_awaddr[11]),
        .R(SR));
  FDRE \axi_awaddr_reg[12] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [12]),
        .Q(m02_axi_awaddr[12]),
        .R(SR));
  FDRE \axi_awaddr_reg[13] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [13]),
        .Q(m02_axi_awaddr[13]),
        .R(SR));
  FDRE \axi_awaddr_reg[14] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [14]),
        .Q(m02_axi_awaddr[14]),
        .R(SR));
  FDRE \axi_awaddr_reg[15] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [15]),
        .Q(m02_axi_awaddr[15]),
        .R(SR));
  FDRE \axi_awaddr_reg[16] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [16]),
        .Q(m02_axi_awaddr[16]),
        .R(SR));
  FDRE \axi_awaddr_reg[17] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [17]),
        .Q(m02_axi_awaddr[17]),
        .R(SR));
  FDRE \axi_awaddr_reg[18] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [18]),
        .Q(m02_axi_awaddr[18]),
        .R(SR));
  FDRE \axi_awaddr_reg[19] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [19]),
        .Q(m02_axi_awaddr[19]),
        .R(SR));
  FDRE \axi_awaddr_reg[1] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [1]),
        .Q(m02_axi_awaddr[1]),
        .R(SR));
  FDRE \axi_awaddr_reg[20] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [20]),
        .Q(m02_axi_awaddr[20]),
        .R(SR));
  FDRE \axi_awaddr_reg[21] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [21]),
        .Q(m02_axi_awaddr[21]),
        .R(SR));
  FDRE \axi_awaddr_reg[22] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [22]),
        .Q(m02_axi_awaddr[22]),
        .R(SR));
  FDRE \axi_awaddr_reg[23] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [23]),
        .Q(m02_axi_awaddr[23]),
        .R(SR));
  FDRE \axi_awaddr_reg[24] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [24]),
        .Q(m02_axi_awaddr[24]),
        .R(SR));
  FDRE \axi_awaddr_reg[25] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [25]),
        .Q(m02_axi_awaddr[25]),
        .R(SR));
  FDRE \axi_awaddr_reg[26] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [26]),
        .Q(m02_axi_awaddr[26]),
        .R(SR));
  FDRE \axi_awaddr_reg[27] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [27]),
        .Q(m02_axi_awaddr[27]),
        .R(SR));
  FDRE \axi_awaddr_reg[28] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [28]),
        .Q(m02_axi_awaddr[28]),
        .R(SR));
  FDRE \axi_awaddr_reg[29] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [29]),
        .Q(m02_axi_awaddr[29]),
        .R(SR));
  FDRE \axi_awaddr_reg[2] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [2]),
        .Q(m02_axi_awaddr[2]),
        .R(SR));
  FDRE \axi_awaddr_reg[30] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [30]),
        .Q(m02_axi_awaddr[30]),
        .R(SR));
  FDRE \axi_awaddr_reg[31] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [31]),
        .Q(m02_axi_awaddr[31]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [3]),
        .Q(m02_axi_awaddr[3]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [4]),
        .Q(m02_axi_awaddr[4]),
        .R(SR));
  FDRE \axi_awaddr_reg[5] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [5]),
        .Q(m02_axi_awaddr[5]),
        .R(SR));
  FDRE \axi_awaddr_reg[6] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [6]),
        .Q(m02_axi_awaddr[6]),
        .R(SR));
  FDRE \axi_awaddr_reg[7] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [7]),
        .Q(m02_axi_awaddr[7]),
        .R(SR));
  FDRE \axi_awaddr_reg[8] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [8]),
        .Q(m02_axi_awaddr[8]),
        .R(SR));
  FDRE \axi_awaddr_reg[9] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\waddr[31] [9]),
        .Q(m02_axi_awaddr[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_awvalid_i_1
       (.I0(start_single_write_reg_n_0),
        .I1(m02_axi_awvalid),
        .I2(m02_axi_awready),
        .O(axi_awvalid_i_1_n_0));
  FDRE axi_awvalid_reg
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(axi_awvalid_i_1_n_0),
        .Q(m02_axi_awvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_bready_i_1
       (.I0(m02_axi_bvalid),
        .I1(m02_axi_bready),
        .O(axi_bready_i_1_n_0));
  FDRE axi_bready_reg
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(axi_bready_i_1_n_0),
        .Q(m02_axi_bready),
        .R(SR));
  LUT2 #(
    .INIT(4'h4)) 
    axi_rready_i_1
       (.I0(m02_axi_rready),
        .I1(m02_axi_rvalid),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(m02_axi_rready),
        .R(SR));
  FDRE \axi_wdata_reg[0] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [0]),
        .Q(m02_axi_wdata[0]),
        .R(SR));
  FDRE \axi_wdata_reg[10] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [10]),
        .Q(m02_axi_wdata[10]),
        .R(SR));
  FDRE \axi_wdata_reg[11] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [11]),
        .Q(m02_axi_wdata[11]),
        .R(SR));
  FDRE \axi_wdata_reg[12] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [12]),
        .Q(m02_axi_wdata[12]),
        .R(SR));
  FDRE \axi_wdata_reg[13] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [13]),
        .Q(m02_axi_wdata[13]),
        .R(SR));
  FDRE \axi_wdata_reg[14] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [14]),
        .Q(m02_axi_wdata[14]),
        .R(SR));
  FDRE \axi_wdata_reg[15] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [15]),
        .Q(m02_axi_wdata[15]),
        .R(SR));
  FDRE \axi_wdata_reg[16] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [16]),
        .Q(m02_axi_wdata[16]),
        .R(SR));
  FDRE \axi_wdata_reg[17] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [17]),
        .Q(m02_axi_wdata[17]),
        .R(SR));
  FDRE \axi_wdata_reg[18] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [18]),
        .Q(m02_axi_wdata[18]),
        .R(SR));
  FDRE \axi_wdata_reg[19] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [19]),
        .Q(m02_axi_wdata[19]),
        .R(SR));
  FDRE \axi_wdata_reg[1] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [1]),
        .Q(m02_axi_wdata[1]),
        .R(SR));
  FDRE \axi_wdata_reg[20] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [20]),
        .Q(m02_axi_wdata[20]),
        .R(SR));
  FDRE \axi_wdata_reg[21] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [21]),
        .Q(m02_axi_wdata[21]),
        .R(SR));
  FDRE \axi_wdata_reg[22] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [22]),
        .Q(m02_axi_wdata[22]),
        .R(SR));
  FDRE \axi_wdata_reg[23] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [23]),
        .Q(m02_axi_wdata[23]),
        .R(SR));
  FDRE \axi_wdata_reg[24] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [24]),
        .Q(m02_axi_wdata[24]),
        .R(SR));
  FDRE \axi_wdata_reg[25] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [25]),
        .Q(m02_axi_wdata[25]),
        .R(SR));
  FDRE \axi_wdata_reg[26] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [26]),
        .Q(m02_axi_wdata[26]),
        .R(SR));
  FDRE \axi_wdata_reg[27] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [27]),
        .Q(m02_axi_wdata[27]),
        .R(SR));
  FDRE \axi_wdata_reg[28] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [28]),
        .Q(m02_axi_wdata[28]),
        .R(SR));
  FDRE \axi_wdata_reg[29] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [29]),
        .Q(m02_axi_wdata[29]),
        .R(SR));
  FDRE \axi_wdata_reg[2] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [2]),
        .Q(m02_axi_wdata[2]),
        .R(SR));
  FDRE \axi_wdata_reg[30] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [30]),
        .Q(m02_axi_wdata[30]),
        .R(SR));
  FDRE \axi_wdata_reg[31] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [31]),
        .Q(m02_axi_wdata[31]),
        .R(SR));
  FDRE \axi_wdata_reg[3] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [3]),
        .Q(m02_axi_wdata[3]),
        .R(SR));
  FDRE \axi_wdata_reg[4] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [4]),
        .Q(m02_axi_wdata[4]),
        .R(SR));
  FDRE \axi_wdata_reg[5] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [5]),
        .Q(m02_axi_wdata[5]),
        .R(SR));
  FDRE \axi_wdata_reg[6] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [6]),
        .Q(m02_axi_wdata[6]),
        .R(SR));
  FDRE \axi_wdata_reg[7] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [7]),
        .Q(m02_axi_wdata[7]),
        .R(SR));
  FDRE \axi_wdata_reg[8] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [8]),
        .Q(m02_axi_wdata[8]),
        .R(SR));
  FDRE \axi_wdata_reg[9] 
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(\wdata[31] [9]),
        .Q(m02_axi_wdata[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_wvalid_i_1
       (.I0(start_single_write_reg_n_0),
        .I1(m02_axi_wvalid),
        .I2(m02_axi_wready),
        .O(axi_wvalid_i_1_n_0));
  FDRE axi_wvalid_reg
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(m02_axi_wvalid),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    metadata_done_i_1
       (.I0(m02_axi_aresetn),
        .O(metadata_done_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    metadata_done_i_2
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(mst_exec_state__0),
        .O(metadata_done_i_2_n_0));
  FDRE metadata_done_reg
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(metadata_done_i_2_n_0),
        .Q(metadata_done),
        .R(metadata_done_i_1_n_0));
  LUT4 #(
    .INIT(16'hEA54)) 
    \metadatacpy_state[0]_INST_0 
       (.I0(out[2]),
        .I1(mst_exec_state__0),
        .I2(out[1]),
        .I3(out[0]),
        .O(metadatacpy_state[0]));
  LUT4 #(
    .INIT(16'hBA0E)) 
    \metadatacpy_state[1]_INST_0 
       (.I0(out[2]),
        .I1(mst_exec_state__0),
        .I2(out[0]),
        .I3(out[1]),
        .O(metadatacpy_state[1]));
  LUT4 #(
    .INIT(16'hAEE0)) 
    \metadatacpy_state[2]_INST_0 
       (.I0(out[2]),
        .I1(mst_exec_state__0),
        .I2(out[0]),
        .I3(out[1]),
        .O(metadatacpy_state[2]));
  LUT4 #(
    .INIT(16'h007E)) 
    \metadatacpy_state[3]_INST_0 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(mst_exec_state__0),
        .I3(out[2]),
        .O(metadatacpy_state[3]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 p_2_out_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({p_2_out_carry_n_0,p_2_out_carry_n_1,p_2_out_carry_n_2,p_2_out_carry_n_3,NLW_p_2_out_carry_CO_UNCONNECTED[3],p_2_out_carry_n_5,p_2_out_carry_n_6,p_2_out_carry_n_7}),
        .DI({Q[6:2],DI,Q[1:0]}),
        .O(in22[7:0]),
        .S({S[5:1],p_2_out_carry_i_7_n_0,S[0],p_2_out_carry_i_9_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 p_2_out_carry__0
       (.CI(p_2_out_carry_n_0),
        .CI_TOP(1'b0),
        .CO({p_2_out_carry__0_n_0,p_2_out_carry__0_n_1,p_2_out_carry__0_n_2,p_2_out_carry__0_n_3,NLW_p_2_out_carry__0_CO_UNCONNECTED[3],p_2_out_carry__0_n_5,p_2_out_carry__0_n_6,p_2_out_carry__0_n_7}),
        .DI(Q[14:7]),
        .O(in22[15:8]),
        .S(\slv_reg4_reg[14] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 p_2_out_carry__1
       (.CI(p_2_out_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({p_2_out_carry__1_n_0,p_2_out_carry__1_n_1,p_2_out_carry__1_n_2,p_2_out_carry__1_n_3,NLW_p_2_out_carry__1_CO_UNCONNECTED[3],p_2_out_carry__1_n_5,p_2_out_carry__1_n_6,p_2_out_carry__1_n_7}),
        .DI({\slv_reg4_reg[22] ,Q[19:15]}),
        .O(in22[23:16]),
        .S(\slv_reg8_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 p_2_out_carry__2
       (.CI(p_2_out_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_p_2_out_carry__2_CO_UNCONNECTED[7],p_2_out_carry__2_n_1,p_2_out_carry__2_n_2,p_2_out_carry__2_n_3,NLW_p_2_out_carry__2_CO_UNCONNECTED[3],p_2_out_carry__2_n_5,p_2_out_carry__2_n_6,p_2_out_carry__2_n_7}),
        .DI({1'b0,\slv_reg4_reg[29] }),
        .O(in22[31:24]),
        .S(\slv_reg8_reg[14] ));
  LUT3 #(
    .INIT(8'h65)) 
    p_2_out_carry_i_7
       (.I0(Q[2]),
        .I1(out[2]),
        .I2(out[1]),
        .O(p_2_out_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry_i_9
       (.I0(mst_exec_state__0),
        .I1(Q[0]),
        .O(p_2_out_carry_i_9_n_0));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \raddr[0]_i_1 
       (.I0(in22[0]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(mst_exec_state__0),
        .I4(\slv_reg0_reg[16] [0]),
        .O(\raddr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[10]_i_1 
       (.I0(\slv_reg0_reg[16] [10]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[10]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[8]),
        .O(\raddr[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[11]_i_1 
       (.I0(\slv_reg0_reg[16] [11]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[11]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[9]),
        .O(\raddr[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[12]_i_1 
       (.I0(\slv_reg0_reg[16] [12]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[12]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[10]),
        .O(\raddr[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[13]_i_1 
       (.I0(\slv_reg0_reg[16] [13]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[13]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[11]),
        .O(\raddr[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[14]_i_1 
       (.I0(\slv_reg0_reg[16] [14]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[14]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[12]),
        .O(\raddr[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[15]_i_1 
       (.I0(\slv_reg0_reg[16] [15]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[15]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[13]),
        .O(\raddr[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[16]_i_1 
       (.I0(\slv_reg0_reg[16] [16]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[16]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[14]),
        .O(\raddr[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[17]_i_1 
       (.I0(\slv_reg0_reg[26] [0]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[17]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[15]),
        .O(\raddr[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[18]_i_1 
       (.I0(\slv_reg0_reg[26] [1]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[18]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[16]),
        .O(\raddr[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[19]_i_1 
       (.I0(\slv_reg0_reg[26] [2]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[19]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[17]),
        .O(\raddr[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    \raddr[1]_i_1 
       (.I0(in22[1]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(mst_exec_state__0),
        .I4(\slv_reg0_reg[16] [1]),
        .O(\raddr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[20]_i_1 
       (.I0(\slv_reg0_reg[26] [3]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[20]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[18]),
        .O(\raddr[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[21]_i_1 
       (.I0(\slv_reg0_reg[26] [4]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[21]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[19]),
        .O(\raddr[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[22]_i_1 
       (.I0(\slv_reg0_reg[26] [5]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[22]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[20]),
        .O(\raddr[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[23]_i_1 
       (.I0(\slv_reg0_reg[26] [6]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[23]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[21]),
        .O(\raddr[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[24]_i_1 
       (.I0(\slv_reg0_reg[26] [7]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[24]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[22]),
        .O(\raddr[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[25]_i_1 
       (.I0(\slv_reg0_reg[29] [0]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[25]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[23]),
        .O(\raddr[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[26]_i_1 
       (.I0(\slv_reg0_reg[29] [1]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[26]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[24]),
        .O(\raddr[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[27]_i_1 
       (.I0(\slv_reg0_reg[29] [2]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[27]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[25]),
        .O(\raddr[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[28]_i_1 
       (.I0(\slv_reg0_reg[29] [3]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[28]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[26]),
        .O(\raddr[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[29]_i_1 
       (.I0(\slv_reg0_reg[29] [4]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[29]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[27]),
        .O(\raddr[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[2]_i_1 
       (.I0(\slv_reg0_reg[16] [2]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[2]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[0]),
        .O(\raddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[30]_i_1 
       (.I0(\slv_reg0_reg[29] [5]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[30]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[28]),
        .O(\raddr[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000400040400)) 
    \raddr[31]_i_1 
       (.I0(out[2]),
        .I1(raddr0),
        .I2(reads_done),
        .I3(mst_exec_state__0),
        .I4(out[1]),
        .I5(out[0]),
        .O(\raddr[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[31]_i_2 
       (.I0(\slv_reg0_reg[29] [6]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[31]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[29]),
        .O(\raddr[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \raddr[31]_i_3 
       (.I0(read_issued_reg_n_0),
        .I1(m02_axi_arvalid),
        .I2(m02_axi_rvalid),
        .I3(start_single_read_reg_n_0),
        .O(raddr0));
  LUT4 #(
    .INIT(16'h3E39)) 
    \raddr[31]_i_4 
       (.I0(out[0]),
        .I1(mst_exec_state__0),
        .I2(out[2]),
        .I3(out[1]),
        .O(\raddr[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \raddr[31]_i_5 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(mst_exec_state__0),
        .O(\raddr[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[3]_i_1 
       (.I0(\slv_reg0_reg[16] [3]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[3]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[1]),
        .O(\raddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[4]_i_1 
       (.I0(\slv_reg0_reg[16] [4]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[4]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[2]),
        .O(\raddr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[5]_i_1 
       (.I0(\slv_reg0_reg[16] [5]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[5]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[3]),
        .O(\raddr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[6]_i_1 
       (.I0(\slv_reg0_reg[16] [6]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[6]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[4]),
        .O(\raddr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[7]_i_1 
       (.I0(\slv_reg0_reg[16] [7]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[7]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[5]),
        .O(\raddr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[8]_i_1 
       (.I0(\slv_reg0_reg[16] [8]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[8]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[6]),
        .O(\raddr[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \raddr[9]_i_1 
       (.I0(\slv_reg0_reg[16] [9]),
        .I1(\raddr[31]_i_4_n_0 ),
        .I2(in22[9]),
        .I3(\raddr[31]_i_5_n_0 ),
        .I4(in24[7]),
        .O(\raddr[9]_i_1_n_0 ));
  FDRE \raddr_reg[0] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[0]_i_1_n_0 ),
        .Q(\raddr[31] [0]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[10] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[10]_i_1_n_0 ),
        .Q(\raddr[31] [10]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[11] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[11]_i_1_n_0 ),
        .Q(\raddr[31] [11]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[12] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[12]_i_1_n_0 ),
        .Q(\raddr[31] [12]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[13] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[13]_i_1_n_0 ),
        .Q(\raddr[31] [13]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[14] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[14]_i_1_n_0 ),
        .Q(\raddr[31] [14]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[15] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[15]_i_1_n_0 ),
        .Q(\raddr[31] [15]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[16] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[16]_i_1_n_0 ),
        .Q(\raddr[31] [16]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[17] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[17]_i_1_n_0 ),
        .Q(\raddr[31] [17]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[18] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[18]_i_1_n_0 ),
        .Q(\raddr[31] [18]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[19] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[19]_i_1_n_0 ),
        .Q(\raddr[31] [19]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[1] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[1]_i_1_n_0 ),
        .Q(\raddr[31] [1]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[20] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[20]_i_1_n_0 ),
        .Q(\raddr[31] [20]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[21] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[21]_i_1_n_0 ),
        .Q(\raddr[31] [21]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[22] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[22]_i_1_n_0 ),
        .Q(\raddr[31] [22]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[23] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[23]_i_1_n_0 ),
        .Q(\raddr[31] [23]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[24] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[24]_i_1_n_0 ),
        .Q(\raddr[31] [24]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[25] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[25]_i_1_n_0 ),
        .Q(\raddr[31] [25]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[26] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[26]_i_1_n_0 ),
        .Q(\raddr[31] [26]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[27] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[27]_i_1_n_0 ),
        .Q(\raddr[31] [27]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[28] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[28]_i_1_n_0 ),
        .Q(\raddr[31] [28]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[29] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[29]_i_1_n_0 ),
        .Q(\raddr[31] [29]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[2] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[2]_i_1_n_0 ),
        .Q(\raddr[31] [2]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[30] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[30]_i_1_n_0 ),
        .Q(\raddr[31] [30]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[31] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[31]_i_2_n_0 ),
        .Q(\raddr[31] [31]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[3] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[3]_i_1_n_0 ),
        .Q(\raddr[31] [3]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[4] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[4]_i_1_n_0 ),
        .Q(\raddr[31] [4]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[5] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[5]_i_1_n_0 ),
        .Q(\raddr[31] [5]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[6] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[6]_i_1_n_0 ),
        .Q(\raddr[31] [6]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[7] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[7]_i_1_n_0 ),
        .Q(\raddr[31] [7]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[8] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[8]_i_1_n_0 ),
        .Q(\raddr[31] [8]),
        .R(metadata_done_i_1_n_0));
  FDRE \raddr_reg[9] 
       (.C(m02_axi_aclk),
        .CE(\raddr[31]_i_1_n_0 ),
        .D(\raddr[9]_i_1_n_0 ),
        .Q(\raddr[31] [9]),
        .R(metadata_done_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_1 
       (.I0(m02_axi_rvalid),
        .I1(m02_axi_rready),
        .O(reads_done0));
  FDRE \rdata_reg[0] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[0]),
        .Q(\rdata[31] [0]),
        .R(SR));
  FDRE \rdata_reg[10] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[10]),
        .Q(\rdata[31] [10]),
        .R(SR));
  FDRE \rdata_reg[11] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[11]),
        .Q(\rdata[31] [11]),
        .R(SR));
  FDRE \rdata_reg[12] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[12]),
        .Q(\rdata[31] [12]),
        .R(SR));
  FDRE \rdata_reg[13] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[13]),
        .Q(\rdata[31] [13]),
        .R(SR));
  FDRE \rdata_reg[14] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[14]),
        .Q(\rdata[31] [14]),
        .R(SR));
  FDRE \rdata_reg[15] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[15]),
        .Q(\rdata[31] [15]),
        .R(SR));
  FDRE \rdata_reg[16] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[16]),
        .Q(\rdata[31] [16]),
        .R(SR));
  FDRE \rdata_reg[17] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[17]),
        .Q(\rdata[31] [17]),
        .R(SR));
  FDRE \rdata_reg[18] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[18]),
        .Q(\rdata[31] [18]),
        .R(SR));
  FDRE \rdata_reg[19] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[19]),
        .Q(\rdata[31] [19]),
        .R(SR));
  FDRE \rdata_reg[1] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[1]),
        .Q(\rdata[31] [1]),
        .R(SR));
  FDRE \rdata_reg[20] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[20]),
        .Q(\rdata[31] [20]),
        .R(SR));
  FDRE \rdata_reg[21] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[21]),
        .Q(\rdata[31] [21]),
        .R(SR));
  FDRE \rdata_reg[22] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[22]),
        .Q(\rdata[31] [22]),
        .R(SR));
  FDRE \rdata_reg[23] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[23]),
        .Q(\rdata[31] [23]),
        .R(SR));
  FDRE \rdata_reg[24] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[24]),
        .Q(\rdata[31] [24]),
        .R(SR));
  FDRE \rdata_reg[25] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[25]),
        .Q(\rdata[31] [25]),
        .R(SR));
  FDRE \rdata_reg[26] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[26]),
        .Q(\rdata[31] [26]),
        .R(SR));
  FDRE \rdata_reg[27] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[27]),
        .Q(\rdata[31] [27]),
        .R(SR));
  FDRE \rdata_reg[28] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[28]),
        .Q(\rdata[31] [28]),
        .R(SR));
  FDRE \rdata_reg[29] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[29]),
        .Q(\rdata[31] [29]),
        .R(SR));
  FDRE \rdata_reg[2] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[2]),
        .Q(\rdata[31] [2]),
        .R(SR));
  FDRE \rdata_reg[30] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[30]),
        .Q(\rdata[31] [30]),
        .R(SR));
  FDRE \rdata_reg[31] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[31]),
        .Q(\rdata[31] [31]),
        .R(SR));
  FDRE \rdata_reg[3] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[3]),
        .Q(\rdata[31] [3]),
        .R(SR));
  FDRE \rdata_reg[4] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[4]),
        .Q(\rdata[31] [4]),
        .R(SR));
  FDRE \rdata_reg[5] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[5]),
        .Q(\rdata[31] [5]),
        .R(SR));
  FDRE \rdata_reg[6] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[6]),
        .Q(\rdata[31] [6]),
        .R(SR));
  FDRE \rdata_reg[7] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[7]),
        .Q(\rdata[31] [7]),
        .R(SR));
  FDRE \rdata_reg[8] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[8]),
        .Q(\rdata[31] [8]),
        .R(SR));
  FDRE \rdata_reg[9] 
       (.C(m02_axi_aclk),
        .CE(reads_done0),
        .D(m02_axi_rdata[9]),
        .Q(\rdata[31] [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFBFFFF00500000)) 
    read_issued_i_1
       (.I0(out[2]),
        .I1(m02_axi_rready),
        .I2(raddr0),
        .I3(reads_done),
        .I4(start_single_read_i_2_n_0),
        .I5(read_issued_reg_n_0),
        .O(read_issued_i_1_n_0));
  FDRE read_issued_reg
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(read_issued_i_1_n_0),
        .Q(read_issued_reg_n_0),
        .R(metadata_done_i_1_n_0));
  FDRE reads_done_reg
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(reads_done0),
        .Q(reads_done),
        .R(SR));
  LUT5 #(
    .INIT(32'h10000000)) 
    \redolog_dest_data[31]_i_1 
       (.I0(out[2]),
        .I1(mst_exec_state__0),
        .I2(reads_done),
        .I3(out[0]),
        .I4(out[1]),
        .O(\redolog_dest_data[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \redolog_dest_data[63]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(mst_exec_state__0),
        .I4(reads_done),
        .O(\redolog_dest_data[63]_i_1_n_0 ));
  FDRE \redolog_dest_data_reg[0] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [0]),
        .Q(redolog_dest_data[0]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[10] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [10]),
        .Q(redolog_dest_data[10]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[11] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [11]),
        .Q(redolog_dest_data[11]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[12] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [12]),
        .Q(redolog_dest_data[12]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[13] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [13]),
        .Q(redolog_dest_data[13]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[14] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [14]),
        .Q(redolog_dest_data[14]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[15] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [15]),
        .Q(redolog_dest_data[15]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[16] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [16]),
        .Q(redolog_dest_data[16]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[17] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [17]),
        .Q(redolog_dest_data[17]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[18] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [18]),
        .Q(redolog_dest_data[18]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[19] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [19]),
        .Q(redolog_dest_data[19]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[1] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [1]),
        .Q(redolog_dest_data[1]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[20] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [20]),
        .Q(redolog_dest_data[20]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[21] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [21]),
        .Q(redolog_dest_data[21]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[22] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [22]),
        .Q(redolog_dest_data[22]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[23] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [23]),
        .Q(redolog_dest_data[23]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[24] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [24]),
        .Q(redolog_dest_data[24]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[25] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [25]),
        .Q(redolog_dest_data[25]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[26] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [26]),
        .Q(redolog_dest_data[26]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[27] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [27]),
        .Q(redolog_dest_data[27]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[28] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [28]),
        .Q(redolog_dest_data[28]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[29] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [29]),
        .Q(redolog_dest_data[29]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[2] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [2]),
        .Q(redolog_dest_data[2]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[30] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [30]),
        .Q(redolog_dest_data[30]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[31] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [31]),
        .Q(redolog_dest_data[31]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[32] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [0]),
        .Q(redolog_dest_data[32]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[33] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [1]),
        .Q(redolog_dest_data[33]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[34] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [2]),
        .Q(redolog_dest_data[34]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[35] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [3]),
        .Q(redolog_dest_data[35]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[36] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [4]),
        .Q(redolog_dest_data[36]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[37] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [5]),
        .Q(redolog_dest_data[37]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[38] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [6]),
        .Q(redolog_dest_data[38]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[39] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [7]),
        .Q(redolog_dest_data[39]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[3] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [3]),
        .Q(redolog_dest_data[3]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[40] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [8]),
        .Q(redolog_dest_data[40]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[41] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [9]),
        .Q(redolog_dest_data[41]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[42] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [10]),
        .Q(redolog_dest_data[42]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[43] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [11]),
        .Q(redolog_dest_data[43]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[44] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [12]),
        .Q(redolog_dest_data[44]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[45] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [13]),
        .Q(redolog_dest_data[45]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[46] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [14]),
        .Q(redolog_dest_data[46]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[47] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [15]),
        .Q(redolog_dest_data[47]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[48] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [16]),
        .Q(redolog_dest_data[48]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[49] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [17]),
        .Q(redolog_dest_data[49]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[4] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [4]),
        .Q(redolog_dest_data[4]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[50] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [18]),
        .Q(redolog_dest_data[50]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[51] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [19]),
        .Q(redolog_dest_data[51]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[52] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [20]),
        .Q(redolog_dest_data[52]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[53] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [21]),
        .Q(redolog_dest_data[53]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[54] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [22]),
        .Q(redolog_dest_data[54]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[55] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [23]),
        .Q(redolog_dest_data[55]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[56] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [24]),
        .Q(redolog_dest_data[56]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[57] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [25]),
        .Q(redolog_dest_data[57]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[58] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [26]),
        .Q(redolog_dest_data[58]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[59] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [27]),
        .Q(redolog_dest_data[59]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[5] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [5]),
        .Q(redolog_dest_data[5]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[60] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [28]),
        .Q(redolog_dest_data[60]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[61] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [29]),
        .Q(redolog_dest_data[61]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[62] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [30]),
        .Q(redolog_dest_data[62]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[63] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[63]_i_1_n_0 ),
        .D(\rdata[31] [31]),
        .Q(redolog_dest_data[63]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[6] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [6]),
        .Q(redolog_dest_data[6]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[7] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [7]),
        .Q(redolog_dest_data[7]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[8] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [8]),
        .Q(redolog_dest_data[8]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_dest_data_reg[9] 
       (.C(m02_axi_aclk),
        .CE(\redolog_dest_data[31]_i_1_n_0 ),
        .D(\rdata[31] [9]),
        .Q(redolog_dest_data[9]),
        .R(metadata_done_i_1_n_0));
  LUT5 #(
    .INIT(32'h01000000)) 
    \redolog_src_data[31]_i_1 
       (.I0(out[2]),
        .I1(mst_exec_state__0),
        .I2(out[1]),
        .I3(out[0]),
        .I4(reads_done),
        .O(\redolog_src_data[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \redolog_src_data[63]_i_1 
       (.I0(out[2]),
        .I1(mst_exec_state__0),
        .I2(out[0]),
        .I3(out[1]),
        .I4(reads_done),
        .O(\redolog_src_data[63]_i_1_n_0 ));
  FDRE \redolog_src_data_reg[0] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [0]),
        .Q(redolog_src_data[0]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[10] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [10]),
        .Q(redolog_src_data[10]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[11] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [11]),
        .Q(redolog_src_data[11]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[12] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [12]),
        .Q(redolog_src_data[12]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[13] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [13]),
        .Q(redolog_src_data[13]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[14] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [14]),
        .Q(redolog_src_data[14]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[15] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [15]),
        .Q(redolog_src_data[15]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[16] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [16]),
        .Q(redolog_src_data[16]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[17] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [17]),
        .Q(redolog_src_data[17]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[18] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [18]),
        .Q(redolog_src_data[18]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[19] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [19]),
        .Q(redolog_src_data[19]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[1] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [1]),
        .Q(redolog_src_data[1]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[20] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [20]),
        .Q(redolog_src_data[20]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[21] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [21]),
        .Q(redolog_src_data[21]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[22] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [22]),
        .Q(redolog_src_data[22]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[23] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [23]),
        .Q(redolog_src_data[23]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[24] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [24]),
        .Q(redolog_src_data[24]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[25] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [25]),
        .Q(redolog_src_data[25]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[26] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [26]),
        .Q(redolog_src_data[26]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[27] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [27]),
        .Q(redolog_src_data[27]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[28] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [28]),
        .Q(redolog_src_data[28]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[29] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [29]),
        .Q(redolog_src_data[29]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[2] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [2]),
        .Q(redolog_src_data[2]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[30] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [30]),
        .Q(redolog_src_data[30]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[31] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [31]),
        .Q(redolog_src_data[31]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[32] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [0]),
        .Q(redolog_src_data[32]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[33] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [1]),
        .Q(redolog_src_data[33]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[34] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [2]),
        .Q(redolog_src_data[34]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[35] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [3]),
        .Q(redolog_src_data[35]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[36] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [4]),
        .Q(redolog_src_data[36]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[37] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [5]),
        .Q(redolog_src_data[37]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[38] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [6]),
        .Q(redolog_src_data[38]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[39] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [7]),
        .Q(redolog_src_data[39]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[3] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [3]),
        .Q(redolog_src_data[3]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[40] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [8]),
        .Q(redolog_src_data[40]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[41] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [9]),
        .Q(redolog_src_data[41]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[42] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [10]),
        .Q(redolog_src_data[42]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[43] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [11]),
        .Q(redolog_src_data[43]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[44] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [12]),
        .Q(redolog_src_data[44]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[45] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [13]),
        .Q(redolog_src_data[45]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[46] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [14]),
        .Q(redolog_src_data[46]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[47] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [15]),
        .Q(redolog_src_data[47]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[48] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [16]),
        .Q(redolog_src_data[48]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[49] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [17]),
        .Q(redolog_src_data[49]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[4] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [4]),
        .Q(redolog_src_data[4]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[50] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [18]),
        .Q(redolog_src_data[50]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[51] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [19]),
        .Q(redolog_src_data[51]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[52] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [20]),
        .Q(redolog_src_data[52]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[53] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [21]),
        .Q(redolog_src_data[53]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[54] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [22]),
        .Q(redolog_src_data[54]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[55] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [23]),
        .Q(redolog_src_data[55]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[56] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [24]),
        .Q(redolog_src_data[56]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[57] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [25]),
        .Q(redolog_src_data[57]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[58] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [26]),
        .Q(redolog_src_data[58]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[59] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [27]),
        .Q(redolog_src_data[59]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[5] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [5]),
        .Q(redolog_src_data[5]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[60] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [28]),
        .Q(redolog_src_data[60]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[61] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [29]),
        .Q(redolog_src_data[61]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[62] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [30]),
        .Q(redolog_src_data[62]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[63] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[63]_i_1_n_0 ),
        .D(\rdata[31] [31]),
        .Q(redolog_src_data[63]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[6] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [6]),
        .Q(redolog_src_data[6]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[7] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [7]),
        .Q(redolog_src_data[7]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[8] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [8]),
        .Q(redolog_src_data[8]),
        .R(metadata_done_i_1_n_0));
  FDRE \redolog_src_data_reg[9] 
       (.C(m02_axi_aclk),
        .CE(\redolog_src_data[31]_i_1_n_0 ),
        .D(\rdata[31] [9]),
        .Q(redolog_src_data[9]),
        .R(metadata_done_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \slv_reg11[0]_i_1 
       (.I0(metadata_done),
        .I1(\slv_reg11_reg[0]_0 ),
        .O(\slv_reg11_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00500000)) 
    start_single_read_i_1
       (.I0(out[2]),
        .I1(m02_axi_rready),
        .I2(raddr0),
        .I3(reads_done),
        .I4(start_single_read_i_2_n_0),
        .I5(start_single_read_reg_n_0),
        .O(start_single_read_i_1_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    start_single_read_i_2
       (.I0(out[0]),
        .I1(out[1]),
        .I2(mst_exec_state__0),
        .O(start_single_read_i_2_n_0));
  FDRE start_single_read_reg
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(start_single_read_i_1_n_0),
        .Q(start_single_read_reg_n_0),
        .R(metadata_done_i_1_n_0));
  LUT5 #(
    .INIT(32'hFEFF4400)) 
    start_single_write_i_1
       (.I0(writes_done),
        .I1(start_single_write0),
        .I2(m02_axi_bready),
        .I3(start_single_write_i_2__1_n_0),
        .I4(start_single_write_reg_n_0),
        .O(start_single_write_i_1_n_0));
  LUT4 #(
    .INIT(16'h524A)) 
    start_single_write_i_2__1
       (.I0(out[2]),
        .I1(out[1]),
        .I2(mst_exec_state__0),
        .I3(out[0]),
        .O(start_single_write_i_2__1_n_0));
  FDRE start_single_write_reg
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(start_single_write_i_1_n_0),
        .Q(start_single_write_reg_n_0),
        .R(metadata_done_i_1_n_0));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[10]_i_2 
       (.I0(out[0]),
        .I1(in24[8]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[16] [10]),
        .O(\waddr[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[10]_i_3 
       (.I0(in27[8]),
        .I1(out[1]),
        .I2(in26[7]),
        .I3(out[0]),
        .I4(in24[8]),
        .O(\waddr[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[11]_i_2 
       (.I0(out[0]),
        .I1(in24[9]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[16] [11]),
        .O(\waddr[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[11]_i_3 
       (.I0(in27[9]),
        .I1(out[1]),
        .I2(in26[8]),
        .I3(out[0]),
        .I4(in24[9]),
        .O(\waddr[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[12]_i_2 
       (.I0(out[0]),
        .I1(in24[10]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[16] [12]),
        .O(\waddr[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[12]_i_3 
       (.I0(in27[10]),
        .I1(out[1]),
        .I2(in26[9]),
        .I3(out[0]),
        .I4(in24[10]),
        .O(\waddr[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[13]_i_2 
       (.I0(out[0]),
        .I1(in24[11]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[16] [13]),
        .O(\waddr[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[13]_i_3 
       (.I0(in27[11]),
        .I1(out[1]),
        .I2(in26[10]),
        .I3(out[0]),
        .I4(in24[11]),
        .O(\waddr[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[14]_i_2 
       (.I0(out[0]),
        .I1(in24[12]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[16] [14]),
        .O(\waddr[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[14]_i_3 
       (.I0(in27[12]),
        .I1(out[1]),
        .I2(in26[11]),
        .I3(out[0]),
        .I4(in24[12]),
        .O(\waddr[14]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[15]_i_2 
       (.I0(out[0]),
        .I1(in24[13]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[16] [15]),
        .O(\waddr[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[15]_i_3 
       (.I0(in27[13]),
        .I1(out[1]),
        .I2(in26[12]),
        .I3(out[0]),
        .I4(in24[13]),
        .O(\waddr[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[16]_i_2 
       (.I0(out[0]),
        .I1(in24[14]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[16] [16]),
        .O(\waddr[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[16]_i_3 
       (.I0(in27[14]),
        .I1(out[1]),
        .I2(in26[13]),
        .I3(out[0]),
        .I4(in24[14]),
        .O(\waddr[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[17]_i_2 
       (.I0(out[0]),
        .I1(in24[15]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[26] [0]),
        .O(\waddr[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[17]_i_3 
       (.I0(in27[15]),
        .I1(out[1]),
        .I2(in26[14]),
        .I3(out[0]),
        .I4(in24[15]),
        .O(\waddr[17]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[18]_i_2 
       (.I0(out[0]),
        .I1(in24[16]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[26] [1]),
        .O(\waddr[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[18]_i_3 
       (.I0(in27[16]),
        .I1(out[1]),
        .I2(in26[15]),
        .I3(out[0]),
        .I4(in24[16]),
        .O(\waddr[18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[19]_i_2 
       (.I0(out[0]),
        .I1(in24[17]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[26] [2]),
        .O(\waddr[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[19]_i_3 
       (.I0(in27[17]),
        .I1(out[1]),
        .I2(in26[16]),
        .I3(out[0]),
        .I4(in24[17]),
        .O(\waddr[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[20]_i_2 
       (.I0(out[0]),
        .I1(in24[18]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[26] [3]),
        .O(\waddr[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[20]_i_3 
       (.I0(in27[18]),
        .I1(out[1]),
        .I2(in26[17]),
        .I3(out[0]),
        .I4(in24[18]),
        .O(\waddr[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[21]_i_2 
       (.I0(out[0]),
        .I1(in24[19]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[26] [4]),
        .O(\waddr[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[21]_i_3 
       (.I0(in27[19]),
        .I1(out[1]),
        .I2(in26[18]),
        .I3(out[0]),
        .I4(in24[19]),
        .O(\waddr[21]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[22]_i_2 
       (.I0(out[0]),
        .I1(in24[20]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[26] [5]),
        .O(\waddr[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[22]_i_3 
       (.I0(in27[20]),
        .I1(out[1]),
        .I2(in26[19]),
        .I3(out[0]),
        .I4(in24[20]),
        .O(\waddr[22]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[23]_i_2 
       (.I0(out[0]),
        .I1(in24[21]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[26] [6]),
        .O(\waddr[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[23]_i_3 
       (.I0(in27[21]),
        .I1(out[1]),
        .I2(in26[20]),
        .I3(out[0]),
        .I4(in24[21]),
        .O(\waddr[23]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[24]_i_2 
       (.I0(out[0]),
        .I1(in24[22]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[26] [7]),
        .O(\waddr[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[24]_i_3 
       (.I0(in27[22]),
        .I1(out[1]),
        .I2(in26[21]),
        .I3(out[0]),
        .I4(in24[22]),
        .O(\waddr[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[25]_i_2 
       (.I0(out[0]),
        .I1(in24[23]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[29] [0]),
        .O(\waddr[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[25]_i_3 
       (.I0(in27[23]),
        .I1(out[1]),
        .I2(in26[22]),
        .I3(out[0]),
        .I4(in24[23]),
        .O(\waddr[25]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[26]_i_2 
       (.I0(out[0]),
        .I1(in24[24]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[29] [1]),
        .O(\waddr[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[26]_i_3 
       (.I0(in27[24]),
        .I1(out[1]),
        .I2(in26[23]),
        .I3(out[0]),
        .I4(in24[24]),
        .O(\waddr[26]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[27]_i_2 
       (.I0(out[0]),
        .I1(in24[25]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[29] [2]),
        .O(\waddr[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[27]_i_3 
       (.I0(in27[25]),
        .I1(out[1]),
        .I2(in26[24]),
        .I3(out[0]),
        .I4(in24[25]),
        .O(\waddr[27]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[28]_i_2 
       (.I0(out[0]),
        .I1(in24[26]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[29] [3]),
        .O(\waddr[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[28]_i_3 
       (.I0(in27[26]),
        .I1(out[1]),
        .I2(in26[25]),
        .I3(out[0]),
        .I4(in24[26]),
        .O(\waddr[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[29]_i_2 
       (.I0(out[0]),
        .I1(in24[27]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[29] [4]),
        .O(\waddr[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[29]_i_3 
       (.I0(in27[27]),
        .I1(out[1]),
        .I2(in26[26]),
        .I3(out[0]),
        .I4(in24[27]),
        .O(\waddr[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8FFF38B880C00)) 
    \waddr[2]_i_1 
       (.I0(in27[0]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(in24[0]),
        .I4(out[1]),
        .I5(\slv_reg0_reg[16] [2]),
        .O(\waddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[30]_i_2 
       (.I0(out[0]),
        .I1(in24[28]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[29] [5]),
        .O(\waddr[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[30]_i_3 
       (.I0(in27[28]),
        .I1(out[1]),
        .I2(in26[27]),
        .I3(out[0]),
        .I4(in24[28]),
        .O(\waddr[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004004444004000)) 
    \waddr[31]_i_1 
       (.I0(writes_done),
        .I1(start_single_write0),
        .I2(out[0]),
        .I3(mst_exec_state__0),
        .I4(out[1]),
        .I5(out[2]),
        .O(\waddr[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \waddr[31]_i_3 
       (.I0(m02_axi_bvalid),
        .I1(m02_axi_wvalid),
        .I2(write_issued_reg_n_0),
        .I3(start_single_write_reg_n_0),
        .I4(m02_axi_awvalid),
        .O(start_single_write0));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[31]_i_4 
       (.I0(out[0]),
        .I1(in24[29]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[29] [6]),
        .O(\waddr[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[31]_i_5 
       (.I0(in27[29]),
        .I1(out[1]),
        .I2(in26[28]),
        .I3(out[0]),
        .I4(in24[29]),
        .O(\waddr[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[3]_i_2 
       (.I0(out[0]),
        .I1(in24[1]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[16] [3]),
        .O(\waddr[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[3]_i_3 
       (.I0(in27[1]),
        .I1(out[1]),
        .I2(in26[0]),
        .I3(out[0]),
        .I4(in24[1]),
        .O(\waddr[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[4]_i_2 
       (.I0(out[0]),
        .I1(in24[2]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[16] [4]),
        .O(\waddr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[4]_i_3 
       (.I0(in27[2]),
        .I1(out[1]),
        .I2(in26[1]),
        .I3(out[0]),
        .I4(in24[2]),
        .O(\waddr[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[5]_i_2 
       (.I0(out[0]),
        .I1(in24[3]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[16] [5]),
        .O(\waddr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[5]_i_3 
       (.I0(in27[3]),
        .I1(out[1]),
        .I2(in26[2]),
        .I3(out[0]),
        .I4(in24[3]),
        .O(\waddr[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[6]_i_2__1 
       (.I0(out[0]),
        .I1(in24[4]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[16] [6]),
        .O(\waddr[6]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[6]_i_3__1 
       (.I0(in27[4]),
        .I1(out[1]),
        .I2(in26[3]),
        .I3(out[0]),
        .I4(in24[4]),
        .O(\waddr[6]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[7]_i_2 
       (.I0(out[0]),
        .I1(in24[5]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[16] [7]),
        .O(\waddr[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[7]_i_3 
       (.I0(in27[5]),
        .I1(out[1]),
        .I2(in26[4]),
        .I3(out[0]),
        .I4(in24[5]),
        .O(\waddr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[8]_i_2 
       (.I0(out[0]),
        .I1(in24[6]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[16] [8]),
        .O(\waddr[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[8]_i_3 
       (.I0(in27[6]),
        .I1(out[1]),
        .I2(in26[5]),
        .I3(out[0]),
        .I4(in24[6]),
        .O(\waddr[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \waddr[9]_i_2 
       (.I0(out[0]),
        .I1(in24[7]),
        .I2(out[1]),
        .I3(\slv_reg0_reg[16] [9]),
        .O(\waddr[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \waddr[9]_i_3 
       (.I0(in27[7]),
        .I1(out[1]),
        .I2(in26[6]),
        .I3(out[0]),
        .I4(in24[7]),
        .O(\waddr[9]_i_3_n_0 ));
  FDRE \waddr_reg[0] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\slv_reg0_reg[16] [0]),
        .Q(\waddr[31] [0]),
        .R(metadata_done_i_1_n_0));
  FDRE \waddr_reg[10] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[10]_i_1_n_0 ),
        .Q(\waddr[31] [10]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[10]_i_1 
       (.I0(\waddr[10]_i_2_n_0 ),
        .I1(\waddr[10]_i_3_n_0 ),
        .O(\waddr_reg[10]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[11] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[11]_i_1_n_0 ),
        .Q(\waddr[31] [11]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[11]_i_1 
       (.I0(\waddr[11]_i_2_n_0 ),
        .I1(\waddr[11]_i_3_n_0 ),
        .O(\waddr_reg[11]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[12] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[12]_i_1_n_0 ),
        .Q(\waddr[31] [12]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[12]_i_1 
       (.I0(\waddr[12]_i_2_n_0 ),
        .I1(\waddr[12]_i_3_n_0 ),
        .O(\waddr_reg[12]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[13] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[13]_i_1_n_0 ),
        .Q(\waddr[31] [13]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[13]_i_1 
       (.I0(\waddr[13]_i_2_n_0 ),
        .I1(\waddr[13]_i_3_n_0 ),
        .O(\waddr_reg[13]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[14] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[14]_i_1_n_0 ),
        .Q(\waddr[31] [14]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[14]_i_1 
       (.I0(\waddr[14]_i_2_n_0 ),
        .I1(\waddr[14]_i_3_n_0 ),
        .O(\waddr_reg[14]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[15] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[15]_i_1_n_0 ),
        .Q(\waddr[31] [15]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[15]_i_1 
       (.I0(\waddr[15]_i_2_n_0 ),
        .I1(\waddr[15]_i_3_n_0 ),
        .O(\waddr_reg[15]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[16] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[16]_i_1_n_0 ),
        .Q(\waddr[31] [16]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[16]_i_1 
       (.I0(\waddr[16]_i_2_n_0 ),
        .I1(\waddr[16]_i_3_n_0 ),
        .O(\waddr_reg[16]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[17] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[17]_i_1_n_0 ),
        .Q(\waddr[31] [17]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[17]_i_1 
       (.I0(\waddr[17]_i_2_n_0 ),
        .I1(\waddr[17]_i_3_n_0 ),
        .O(\waddr_reg[17]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[18] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[18]_i_1_n_0 ),
        .Q(\waddr[31] [18]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[18]_i_1 
       (.I0(\waddr[18]_i_2_n_0 ),
        .I1(\waddr[18]_i_3_n_0 ),
        .O(\waddr_reg[18]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[19] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[19]_i_1_n_0 ),
        .Q(\waddr[31] [19]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[19]_i_1 
       (.I0(\waddr[19]_i_2_n_0 ),
        .I1(\waddr[19]_i_3_n_0 ),
        .O(\waddr_reg[19]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[1] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(D),
        .Q(\waddr[31] [1]),
        .R(metadata_done_i_1_n_0));
  FDRE \waddr_reg[20] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[20]_i_1_n_0 ),
        .Q(\waddr[31] [20]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[20]_i_1 
       (.I0(\waddr[20]_i_2_n_0 ),
        .I1(\waddr[20]_i_3_n_0 ),
        .O(\waddr_reg[20]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[21] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[21]_i_1_n_0 ),
        .Q(\waddr[31] [21]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[21]_i_1 
       (.I0(\waddr[21]_i_2_n_0 ),
        .I1(\waddr[21]_i_3_n_0 ),
        .O(\waddr_reg[21]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[22] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[22]_i_1_n_0 ),
        .Q(\waddr[31] [22]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[22]_i_1 
       (.I0(\waddr[22]_i_2_n_0 ),
        .I1(\waddr[22]_i_3_n_0 ),
        .O(\waddr_reg[22]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[23] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[23]_i_1_n_0 ),
        .Q(\waddr[31] [23]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[23]_i_1 
       (.I0(\waddr[23]_i_2_n_0 ),
        .I1(\waddr[23]_i_3_n_0 ),
        .O(\waddr_reg[23]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[24] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[24]_i_1_n_0 ),
        .Q(\waddr[31] [24]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[24]_i_1 
       (.I0(\waddr[24]_i_2_n_0 ),
        .I1(\waddr[24]_i_3_n_0 ),
        .O(\waddr_reg[24]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[25] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[25]_i_1_n_0 ),
        .Q(\waddr[31] [25]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[25]_i_1 
       (.I0(\waddr[25]_i_2_n_0 ),
        .I1(\waddr[25]_i_3_n_0 ),
        .O(\waddr_reg[25]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[26] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[26]_i_1_n_0 ),
        .Q(\waddr[31] [26]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[26]_i_1 
       (.I0(\waddr[26]_i_2_n_0 ),
        .I1(\waddr[26]_i_3_n_0 ),
        .O(\waddr_reg[26]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[27] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[27]_i_1_n_0 ),
        .Q(\waddr[31] [27]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[27]_i_1 
       (.I0(\waddr[27]_i_2_n_0 ),
        .I1(\waddr[27]_i_3_n_0 ),
        .O(\waddr_reg[27]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[28] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[28]_i_1_n_0 ),
        .Q(\waddr[31] [28]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[28]_i_1 
       (.I0(\waddr[28]_i_2_n_0 ),
        .I1(\waddr[28]_i_3_n_0 ),
        .O(\waddr_reg[28]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[29] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[29]_i_1_n_0 ),
        .Q(\waddr[31] [29]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[29]_i_1 
       (.I0(\waddr[29]_i_2_n_0 ),
        .I1(\waddr[29]_i_3_n_0 ),
        .O(\waddr_reg[29]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[2] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr[2]_i_1_n_0 ),
        .Q(\waddr[31] [2]),
        .R(metadata_done_i_1_n_0));
  FDRE \waddr_reg[30] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[30]_i_1_n_0 ),
        .Q(\waddr[31] [30]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[30]_i_1 
       (.I0(\waddr[30]_i_2_n_0 ),
        .I1(\waddr[30]_i_3_n_0 ),
        .O(\waddr_reg[30]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[31] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[31]_i_2_n_0 ),
        .Q(\waddr[31] [31]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[31]_i_2 
       (.I0(\waddr[31]_i_4_n_0 ),
        .I1(\waddr[31]_i_5_n_0 ),
        .O(\waddr_reg[31]_i_2_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[3] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[3]_i_1_n_0 ),
        .Q(\waddr[31] [3]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[3]_i_1 
       (.I0(\waddr[3]_i_2_n_0 ),
        .I1(\waddr[3]_i_3_n_0 ),
        .O(\waddr_reg[3]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[4] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[4]_i_1_n_0 ),
        .Q(\waddr[31] [4]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[4]_i_1 
       (.I0(\waddr[4]_i_2_n_0 ),
        .I1(\waddr[4]_i_3_n_0 ),
        .O(\waddr_reg[4]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[5] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[5]_i_1_n_0 ),
        .Q(\waddr[31] [5]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[5]_i_1 
       (.I0(\waddr[5]_i_2_n_0 ),
        .I1(\waddr[5]_i_3_n_0 ),
        .O(\waddr_reg[5]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[6] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[6]_i_1_n_0 ),
        .Q(\waddr[31] [6]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[6]_i_1 
       (.I0(\waddr[6]_i_2__1_n_0 ),
        .I1(\waddr[6]_i_3__1_n_0 ),
        .O(\waddr_reg[6]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[7] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[7]_i_1_n_0 ),
        .Q(\waddr[31] [7]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[7]_i_1 
       (.I0(\waddr[7]_i_2_n_0 ),
        .I1(\waddr[7]_i_3_n_0 ),
        .O(\waddr_reg[7]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[8] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[8]_i_1_n_0 ),
        .Q(\waddr[31] [8]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[8]_i_1 
       (.I0(\waddr[8]_i_2_n_0 ),
        .I1(\waddr[8]_i_3_n_0 ),
        .O(\waddr_reg[8]_i_1_n_0 ),
        .S(out[2]));
  FDRE \waddr_reg[9] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\waddr_reg[9]_i_1_n_0 ),
        .Q(\waddr[31] [9]),
        .R(metadata_done_i_1_n_0));
  MUXF7 \waddr_reg[9]_i_1 
       (.I0(\waddr[9]_i_2_n_0 ),
        .I1(\waddr[9]_i_3_n_0 ),
        .O(\waddr_reg[9]_i_1_n_0 ),
        .S(out[2]));
  FDRE \wdata_reg[0] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [0]),
        .Q(\wdata[31] [0]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[10] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [10]),
        .Q(\wdata[31] [10]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[11] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [11]),
        .Q(\wdata[31] [11]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[12] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [12]),
        .Q(\wdata[31] [12]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[13] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [13]),
        .Q(\wdata[31] [13]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[14] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [14]),
        .Q(\wdata[31] [14]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[15] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [15]),
        .Q(\wdata[31] [15]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[16] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [16]),
        .Q(\wdata[31] [16]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[17] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [17]),
        .Q(\wdata[31] [17]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[18] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [18]),
        .Q(\wdata[31] [18]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[19] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [19]),
        .Q(\wdata[31] [19]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[1] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [1]),
        .Q(\wdata[31] [1]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[20] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [20]),
        .Q(\wdata[31] [20]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[21] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [21]),
        .Q(\wdata[31] [21]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[22] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [22]),
        .Q(\wdata[31] [22]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[23] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [23]),
        .Q(\wdata[31] [23]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[24] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [24]),
        .Q(\wdata[31] [24]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[25] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [25]),
        .Q(\wdata[31] [25]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[26] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [26]),
        .Q(\wdata[31] [26]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[27] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [27]),
        .Q(\wdata[31] [27]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[28] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [28]),
        .Q(\wdata[31] [28]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[29] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [29]),
        .Q(\wdata[31] [29]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[2] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [2]),
        .Q(\wdata[31] [2]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[30] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [30]),
        .Q(\wdata[31] [30]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[31] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [31]),
        .Q(\wdata[31] [31]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[3] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [3]),
        .Q(\wdata[31] [3]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[4] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [4]),
        .Q(\wdata[31] [4]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[5] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [5]),
        .Q(\wdata[31] [5]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[6] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [6]),
        .Q(\wdata[31] [6]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[7] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [7]),
        .Q(\wdata[31] [7]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[8] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [8]),
        .Q(\wdata[31] [8]),
        .R(metadata_done_i_1_n_0));
  FDRE \wdata_reg[9] 
       (.C(m02_axi_aclk),
        .CE(\waddr[31]_i_1_n_0 ),
        .D(\FSM_sequential_mst_exec_state_reg[3]_0 [9]),
        .Q(\wdata[31] [9]),
        .R(metadata_done_i_1_n_0));
  LUT5 #(
    .INIT(32'hEFFF4400)) 
    write_issued_i_1
       (.I0(writes_done),
        .I1(start_single_write0),
        .I2(m02_axi_bready),
        .I3(start_single_write_i_2__1_n_0),
        .I4(write_issued_reg_n_0),
        .O(write_issued_i_1_n_0));
  FDRE write_issued_reg
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(write_issued_i_1_n_0),
        .Q(write_issued_reg_n_0),
        .R(metadata_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    writes_done_i_1__1
       (.I0(m02_axi_bvalid),
        .I1(m02_axi_bready),
        .O(writes_done0));
  FDRE writes_done_reg
       (.C(m02_axi_aclk),
        .CE(1'b1),
        .D(writes_done0),
        .Q(writes_done),
        .R(SR));
endmodule

module design_1_undolog_0_3_undolog_v2_1_S00_AXI
   (s00_axi_awready,
    s00_axi_wready,
    \dataout[2] ,
    \dataout[1] ,
    \dataout[0] ,
    s00_axi_arready,
    time_cycles,
    s00_axi_bvalid,
    logclr_done_reg,
    s00_axi_rvalid,
    SR,
    \axi_araddr_reg[0] ,
    \axi_araddr_reg[2]_0 ,
    Q,
    S,
    \log_src[31] ,
    \raddr_reg[15] ,
    \raddr_reg[23] ,
    \raddr_reg[27] ,
    \ulog_offset[31] ,
    \wdata_reg[27] ,
    DI,
    \wdata_reg[27]_0 ,
    \raddr_reg[23]_0 ,
    \raddr_reg[31] ,
    \physical_src_addr[28] ,
    \raddr_reg[31]_0 ,
    D,
    \log_size[31] ,
    start_clobber_reg_reg,
    \FSM_sequential_mst_exec_state_reg[0] ,
    start_logclr,
    mst_exec_state1__9,
    \log_src[63] ,
    data_copy_pulse,
    start_redolog,
    DMA_START2,
    \raddr_reg[7] ,
    \raddr_reg[31]_1 ,
    \physical_src_addr[28]_0 ,
    \raddr_reg[31]_2 ,
    \wdata_reg[9] ,
    \wdata_reg[31] ,
    \operation_type[1] ,
    \wdata_reg[30] ,
    \wdata_reg[29] ,
    \wdata_reg[28] ,
    \wdata_reg[27]_1 ,
    \wdata_reg[26] ,
    \wdata_reg[25] ,
    \wdata_reg[24] ,
    \wdata_reg[23] ,
    \wdata_reg[22] ,
    \wdata_reg[21] ,
    \wdata_reg[20] ,
    \wdata_reg[19] ,
    \wdata_reg[18] ,
    \wdata_reg[17] ,
    \wdata_reg[16] ,
    \wdata_reg[15] ,
    \wdata_reg[14] ,
    \wdata_reg[13] ,
    \wdata_reg[12] ,
    \wdata_reg[11] ,
    \wdata_reg[10] ,
    \wdata_reg[9]_0 ,
    \wdata_reg[8] ,
    \wdata_reg[7] ,
    \wdata_reg[6] ,
    \wdata_reg[5] ,
    \wdata_reg[4] ,
    \wdata_reg[3] ,
    \wdata_reg[2] ,
    \wdata_reg[0] ,
    reg_init_complete,
    base_offset,
    ulog_offset,
    log_size,
    \wdata_reg[31]_0 ,
    \waddr_reg[1] ,
    \waddr_reg[31] ,
    in13,
    in24,
    in26,
    s00_axi_rdata,
    s00_axi_aclk,
    DMA_DONE_reg,
    DMA_DONE_reg_0,
    metadata_done_reg,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aresetn,
    m00_axi_aresetn,
    m02_axi_aresetn,
    m01_axi_aresetn,
    \FSM_sequential_mst_exec_state_reg[0]_0 ,
    \rdata_reg[1] ,
    \FSM_sequential_mst_exec_state_reg[3] ,
    s00_axi_wstrb,
    start_clobber_reg,
    s00_axi_wdata,
    \slv_reg0_reg[29]_0 ,
    DMA_DEST1,
    \slv_reg0_reg[26]_0 ,
    \FSM_sequential_mst_exec_state_reg[0]_1 ,
    \FSM_sequential_mst_exec_state_reg[3]_0 ,
    out,
    redolog_dest_data,
    redolog_src_data,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    DMA_DONE_reg_1,
    s00_axi_awaddr,
    s00_axi_araddr);
  output s00_axi_awready;
  output s00_axi_wready;
  output \dataout[2] ;
  output \dataout[1] ;
  output \dataout[0] ;
  output s00_axi_arready;
  output [63:0]time_cycles;
  output s00_axi_bvalid;
  output logclr_done_reg;
  output s00_axi_rvalid;
  output [0:0]SR;
  output [0:0]\axi_araddr_reg[0] ;
  output [0:0]\axi_araddr_reg[2]_0 ;
  output [31:0]Q;
  output [5:0]S;
  output [31:0]\log_src[31] ;
  output [7:0]\raddr_reg[15] ;
  output [7:0]\raddr_reg[23] ;
  output [7:0]\raddr_reg[27] ;
  output [31:0]\ulog_offset[31] ;
  output [7:0]\wdata_reg[27] ;
  output [6:0]DI;
  output [6:0]\wdata_reg[27]_0 ;
  output [2:0]\raddr_reg[23]_0 ;
  output [2:0]\raddr_reg[31] ;
  output [2:0]\physical_src_addr[28] ;
  output [6:0]\raddr_reg[31]_0 ;
  output [1:0]D;
  output [31:0]\log_size[31] ;
  output start_clobber_reg_reg;
  output \FSM_sequential_mst_exec_state_reg[0] ;
  output start_logclr;
  output mst_exec_state1__9;
  output [31:0]\log_src[63] ;
  output data_copy_pulse;
  output start_redolog;
  output DMA_START2;
  output [0:0]\raddr_reg[7] ;
  output [7:0]\raddr_reg[31]_1 ;
  output [3:0]\physical_src_addr[28]_0 ;
  output [3:0]\raddr_reg[31]_2 ;
  output [1:0]\wdata_reg[9] ;
  output \wdata_reg[31] ;
  output [1:0]\operation_type[1] ;
  output \wdata_reg[30] ;
  output \wdata_reg[29] ;
  output \wdata_reg[28] ;
  output \wdata_reg[27]_1 ;
  output \wdata_reg[26] ;
  output \wdata_reg[25] ;
  output \wdata_reg[24] ;
  output \wdata_reg[23] ;
  output \wdata_reg[22] ;
  output \wdata_reg[21] ;
  output \wdata_reg[20] ;
  output \wdata_reg[19] ;
  output \wdata_reg[18] ;
  output \wdata_reg[17] ;
  output \wdata_reg[16] ;
  output \wdata_reg[15] ;
  output \wdata_reg[14] ;
  output \wdata_reg[13] ;
  output \wdata_reg[12] ;
  output \wdata_reg[11] ;
  output \wdata_reg[10] ;
  output \wdata_reg[9]_0 ;
  output \wdata_reg[8] ;
  output \wdata_reg[7] ;
  output \wdata_reg[6] ;
  output \wdata_reg[5] ;
  output \wdata_reg[4] ;
  output \wdata_reg[3] ;
  output \wdata_reg[2] ;
  output [0:0]\wdata_reg[0] ;
  output reg_init_complete;
  output [63:0]base_offset;
  output [31:0]ulog_offset;
  output [31:0]log_size;
  output [31:0]\wdata_reg[31]_0 ;
  output [0:0]\waddr_reg[1] ;
  output [29:0]\waddr_reg[31] ;
  output [7:0]in13;
  output [29:0]in24;
  output [28:0]in26;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input DMA_DONE_reg;
  input DMA_DONE_reg_0;
  input metadata_done_reg;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aresetn;
  input m00_axi_aresetn;
  input m02_axi_aresetn;
  input m01_axi_aresetn;
  input \FSM_sequential_mst_exec_state_reg[0]_0 ;
  input [0:0]\rdata_reg[1] ;
  input \FSM_sequential_mst_exec_state_reg[3] ;
  input [3:0]s00_axi_wstrb;
  input start_clobber_reg;
  input [31:0]s00_axi_wdata;
  input [6:0]\slv_reg0_reg[29]_0 ;
  input [29:0]DMA_DEST1;
  input [4:0]\slv_reg0_reg[26]_0 ;
  input \FSM_sequential_mst_exec_state_reg[0]_1 ;
  input \FSM_sequential_mst_exec_state_reg[3]_0 ;
  input [2:0]out;
  input [63:0]redolog_dest_data;
  input [63:0]redolog_src_data;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input DMA_DONE_reg_1;
  input [3:0]s00_axi_awaddr;
  input [3:0]s00_axi_araddr;

  wire [1:0]D;
  wire [6:0]DI;
  wire [29:0]DMA_DEST1;
  wire DMA_DONE_reg;
  wire DMA_DONE_reg_0;
  wire DMA_DONE_reg_1;
  wire DMA_START0__7;
  wire DMA_START2;
  wire \FSM_sequential_mst_exec_state_reg[0] ;
  wire \FSM_sequential_mst_exec_state_reg[0]_0 ;
  wire \FSM_sequential_mst_exec_state_reg[0]_1 ;
  wire \FSM_sequential_mst_exec_state_reg[3] ;
  wire \FSM_sequential_mst_exec_state_reg[3]_0 ;
  wire [31:0]Q;
  wire [5:0]S;
  wire [0:0]SR;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [0:0]\axi_araddr_reg[0] ;
  wire [0:0]\axi_araddr_reg[2]_0 ;
  wire axi_arready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [63:0]base_offset;
  wire clear;
  wire data_copy_pulse;
  wire data_copy_pulsegen;
  wire data_copy_pulsegend1;
  wire \dataout[0] ;
  wire \dataout[1] ;
  wire \dataout[2] ;
  wire \i_/i_/i__carry__0_n_0 ;
  wire \i_/i_/i__carry__0_n_1 ;
  wire \i_/i_/i__carry__0_n_10 ;
  wire \i_/i_/i__carry__0_n_11 ;
  wire \i_/i_/i__carry__0_n_12 ;
  wire \i_/i_/i__carry__0_n_13 ;
  wire \i_/i_/i__carry__0_n_14 ;
  wire \i_/i_/i__carry__0_n_15 ;
  wire \i_/i_/i__carry__0_n_2 ;
  wire \i_/i_/i__carry__0_n_3 ;
  wire \i_/i_/i__carry__0_n_5 ;
  wire \i_/i_/i__carry__0_n_6 ;
  wire \i_/i_/i__carry__0_n_7 ;
  wire \i_/i_/i__carry__0_n_8 ;
  wire \i_/i_/i__carry__0_n_9 ;
  wire \i_/i_/i__carry__1_n_0 ;
  wire \i_/i_/i__carry__1_n_1 ;
  wire \i_/i_/i__carry__1_n_10 ;
  wire \i_/i_/i__carry__1_n_11 ;
  wire \i_/i_/i__carry__1_n_12 ;
  wire \i_/i_/i__carry__1_n_13 ;
  wire \i_/i_/i__carry__1_n_14 ;
  wire \i_/i_/i__carry__1_n_15 ;
  wire \i_/i_/i__carry__1_n_2 ;
  wire \i_/i_/i__carry__1_n_3 ;
  wire \i_/i_/i__carry__1_n_5 ;
  wire \i_/i_/i__carry__1_n_6 ;
  wire \i_/i_/i__carry__1_n_7 ;
  wire \i_/i_/i__carry__1_n_8 ;
  wire \i_/i_/i__carry__1_n_9 ;
  wire \i_/i_/i__carry__2_n_0 ;
  wire \i_/i_/i__carry__2_n_1 ;
  wire \i_/i_/i__carry__2_n_10 ;
  wire \i_/i_/i__carry__2_n_11 ;
  wire \i_/i_/i__carry__2_n_12 ;
  wire \i_/i_/i__carry__2_n_13 ;
  wire \i_/i_/i__carry__2_n_14 ;
  wire \i_/i_/i__carry__2_n_15 ;
  wire \i_/i_/i__carry__2_n_2 ;
  wire \i_/i_/i__carry__2_n_3 ;
  wire \i_/i_/i__carry__2_n_5 ;
  wire \i_/i_/i__carry__2_n_6 ;
  wire \i_/i_/i__carry__2_n_7 ;
  wire \i_/i_/i__carry__2_n_8 ;
  wire \i_/i_/i__carry__2_n_9 ;
  wire \i_/i_/i__carry__3_n_0 ;
  wire \i_/i_/i__carry__3_n_1 ;
  wire \i_/i_/i__carry__3_n_10 ;
  wire \i_/i_/i__carry__3_n_11 ;
  wire \i_/i_/i__carry__3_n_12 ;
  wire \i_/i_/i__carry__3_n_13 ;
  wire \i_/i_/i__carry__3_n_14 ;
  wire \i_/i_/i__carry__3_n_15 ;
  wire \i_/i_/i__carry__3_n_2 ;
  wire \i_/i_/i__carry__3_n_3 ;
  wire \i_/i_/i__carry__3_n_5 ;
  wire \i_/i_/i__carry__3_n_6 ;
  wire \i_/i_/i__carry__3_n_7 ;
  wire \i_/i_/i__carry__3_n_8 ;
  wire \i_/i_/i__carry__3_n_9 ;
  wire \i_/i_/i__carry__4_n_0 ;
  wire \i_/i_/i__carry__4_n_1 ;
  wire \i_/i_/i__carry__4_n_10 ;
  wire \i_/i_/i__carry__4_n_11 ;
  wire \i_/i_/i__carry__4_n_12 ;
  wire \i_/i_/i__carry__4_n_13 ;
  wire \i_/i_/i__carry__4_n_14 ;
  wire \i_/i_/i__carry__4_n_15 ;
  wire \i_/i_/i__carry__4_n_2 ;
  wire \i_/i_/i__carry__4_n_3 ;
  wire \i_/i_/i__carry__4_n_5 ;
  wire \i_/i_/i__carry__4_n_6 ;
  wire \i_/i_/i__carry__4_n_7 ;
  wire \i_/i_/i__carry__4_n_8 ;
  wire \i_/i_/i__carry__4_n_9 ;
  wire \i_/i_/i__carry__5_n_0 ;
  wire \i_/i_/i__carry__5_n_1 ;
  wire \i_/i_/i__carry__5_n_10 ;
  wire \i_/i_/i__carry__5_n_11 ;
  wire \i_/i_/i__carry__5_n_12 ;
  wire \i_/i_/i__carry__5_n_13 ;
  wire \i_/i_/i__carry__5_n_14 ;
  wire \i_/i_/i__carry__5_n_15 ;
  wire \i_/i_/i__carry__5_n_2 ;
  wire \i_/i_/i__carry__5_n_3 ;
  wire \i_/i_/i__carry__5_n_5 ;
  wire \i_/i_/i__carry__5_n_6 ;
  wire \i_/i_/i__carry__5_n_7 ;
  wire \i_/i_/i__carry__5_n_8 ;
  wire \i_/i_/i__carry__5_n_9 ;
  wire \i_/i_/i__carry__6_n_1 ;
  wire \i_/i_/i__carry__6_n_10 ;
  wire \i_/i_/i__carry__6_n_11 ;
  wire \i_/i_/i__carry__6_n_12 ;
  wire \i_/i_/i__carry__6_n_13 ;
  wire \i_/i_/i__carry__6_n_14 ;
  wire \i_/i_/i__carry__6_n_15 ;
  wire \i_/i_/i__carry__6_n_2 ;
  wire \i_/i_/i__carry__6_n_3 ;
  wire \i_/i_/i__carry__6_n_5 ;
  wire \i_/i_/i__carry__6_n_6 ;
  wire \i_/i_/i__carry__6_n_7 ;
  wire \i_/i_/i__carry__6_n_8 ;
  wire \i_/i_/i__carry__6_n_9 ;
  wire \i_/i_/i__carry_n_0 ;
  wire \i_/i_/i__carry_n_1 ;
  wire \i_/i_/i__carry_n_10 ;
  wire \i_/i_/i__carry_n_11 ;
  wire \i_/i_/i__carry_n_12 ;
  wire \i_/i_/i__carry_n_13 ;
  wire \i_/i_/i__carry_n_14 ;
  wire \i_/i_/i__carry_n_15 ;
  wire \i_/i_/i__carry_n_2 ;
  wire \i_/i_/i__carry_n_3 ;
  wire \i_/i_/i__carry_n_5 ;
  wire \i_/i_/i__carry_n_6 ;
  wire \i_/i_/i__carry_n_7 ;
  wire \i_/i_/i__carry_n_8 ;
  wire \i_/i_/i__carry_n_9 ;
  wire i__carry_i_1_n_0;
  wire [7:0]in13;
  wire [29:0]in24;
  wire [28:0]in26;
  wire [31:0]log_size;
  wire [31:0]\log_size[31] ;
  wire [31:0]\log_src[31] ;
  wire [31:0]\log_src[63] ;
  wire logclr_done_reg;
  wire logclr_done_reg_i_1_n_0;
  wire logclr_pulsegen;
  wire logclr_pulsegend1;
  wire m00_axi_aresetn;
  wire m01_axi_aresetn;
  wire m02_axi_aresetn;
  wire metadata_done_reg;
  wire mst_exec_state1__9;
  wire \operation_type[0]_i_1_n_0 ;
  wire [1:0]\operation_type[1] ;
  wire \operation_type[1]_i_1_n_0 ;
  wire \operation_type[1]_i_2_n_0 ;
  wire [2:0]out;
  wire [3:0]p_0_in;
  wire [3:0]p_2_in;
  wire [2:0]\physical_src_addr[28] ;
  wire [3:0]\physical_src_addr[28]_0 ;
  wire \raddr[8]_i_3_n_0 ;
  wire [7:0]\raddr_reg[15] ;
  wire \raddr_reg[16]_i_2_n_0 ;
  wire \raddr_reg[16]_i_2_n_1 ;
  wire \raddr_reg[16]_i_2_n_2 ;
  wire \raddr_reg[16]_i_2_n_3 ;
  wire \raddr_reg[16]_i_2_n_5 ;
  wire \raddr_reg[16]_i_2_n_6 ;
  wire \raddr_reg[16]_i_2_n_7 ;
  wire [7:0]\raddr_reg[23] ;
  wire [2:0]\raddr_reg[23]_0 ;
  wire \raddr_reg[24]_i_2_n_0 ;
  wire \raddr_reg[24]_i_2_n_1 ;
  wire \raddr_reg[24]_i_2_n_2 ;
  wire \raddr_reg[24]_i_2_n_3 ;
  wire \raddr_reg[24]_i_2_n_5 ;
  wire \raddr_reg[24]_i_2_n_6 ;
  wire \raddr_reg[24]_i_2_n_7 ;
  wire [7:0]\raddr_reg[27] ;
  wire [2:0]\raddr_reg[31] ;
  wire [6:0]\raddr_reg[31]_0 ;
  wire [7:0]\raddr_reg[31]_1 ;
  wire [3:0]\raddr_reg[31]_2 ;
  wire \raddr_reg[31]_i_6_n_2 ;
  wire \raddr_reg[31]_i_6_n_3 ;
  wire \raddr_reg[31]_i_6_n_5 ;
  wire \raddr_reg[31]_i_6_n_6 ;
  wire \raddr_reg[31]_i_6_n_7 ;
  wire [0:0]\raddr_reg[7] ;
  wire \raddr_reg[8]_i_2_n_0 ;
  wire \raddr_reg[8]_i_2_n_1 ;
  wire \raddr_reg[8]_i_2_n_2 ;
  wire \raddr_reg[8]_i_2_n_3 ;
  wire \raddr_reg[8]_i_2_n_5 ;
  wire \raddr_reg[8]_i_2_n_6 ;
  wire \raddr_reg[8]_i_2_n_7 ;
  wire [0:0]\rdata_reg[1] ;
  wire [63:0]redolog_dest_data;
  wire redolog_pulsegen;
  wire redolog_pulsegend1;
  wire [63:0]redolog_src_data;
  wire [31:0]reg_data_out;
  wire reg_init_complete;
  wire reg_init_complete_INST_0_i_1_n_0;
  wire reg_init_complete_INST_0_i_2_n_0;
  wire reg_init_complete_INST_0_i_3_n_0;
  wire reg_init_complete_INST_0_i_4_n_0;
  wire reg_init_complete_INST_0_i_5_n_0;
  wire reg_init_complete_INST_0_i_6_n_0;
  wire reg_init_complete_INST_0_i_7_n_0;
  wire reg_init_complete_INST_0_i_8_n_0;
  wire reg_init_complete_reg_i_1_n_0;
  wire reg_init_complete_reg_i_2_n_0;
  wire reg_init_complete_reg_reg_n_0;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [3:0]sel0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [4:0]\slv_reg0_reg[26]_0 ;
  wire [6:0]\slv_reg0_reg[29]_0 ;
  wire [31:0]slv_reg10;
  wire \slv_reg10[15]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[31]_i_1_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire slv_reg111;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire \slv_reg8[15]_i_1_n_0 ;
  wire \slv_reg8[23]_i_1_n_0 ;
  wire \slv_reg8[31]_i_1_n_0 ;
  wire \slv_reg8[3]_i_1_n_0 ;
  wire \slv_reg8[3]_i_2_n_0 ;
  wire \slv_reg8[7]_i_1_n_0 ;
  wire \slv_reg9[0]_i_1_n_0 ;
  wire \slv_reg9[10]_i_1_n_0 ;
  wire \slv_reg9[11]_i_1_n_0 ;
  wire \slv_reg9[12]_i_1_n_0 ;
  wire \slv_reg9[13]_i_1_n_0 ;
  wire \slv_reg9[14]_i_1_n_0 ;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[16]_i_1_n_0 ;
  wire \slv_reg9[17]_i_1_n_0 ;
  wire \slv_reg9[18]_i_1_n_0 ;
  wire \slv_reg9[19]_i_1_n_0 ;
  wire \slv_reg9[1]_i_1_n_0 ;
  wire \slv_reg9[20]_i_1_n_0 ;
  wire \slv_reg9[21]_i_1_n_0 ;
  wire \slv_reg9[22]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[24]_i_1_n_0 ;
  wire \slv_reg9[25]_i_1_n_0 ;
  wire \slv_reg9[26]_i_1_n_0 ;
  wire \slv_reg9[27]_i_1_n_0 ;
  wire \slv_reg9[28]_i_1_n_0 ;
  wire \slv_reg9[29]_i_1_n_0 ;
  wire \slv_reg9[2]_i_1_n_0 ;
  wire \slv_reg9[30]_i_1_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[31]_i_2_n_0 ;
  wire \slv_reg9[3]_i_1_n_0 ;
  wire \slv_reg9[4]_i_1_n_0 ;
  wire \slv_reg9[5]_i_1_n_0 ;
  wire \slv_reg9[6]_i_1_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire \slv_reg9[8]_i_1_n_0 ;
  wire \slv_reg9[9]_i_1_n_0 ;
  wire \slv_reg9_reg_n_0_[0] ;
  wire \slv_reg9_reg_n_0_[10] ;
  wire \slv_reg9_reg_n_0_[11] ;
  wire \slv_reg9_reg_n_0_[12] ;
  wire \slv_reg9_reg_n_0_[13] ;
  wire \slv_reg9_reg_n_0_[14] ;
  wire \slv_reg9_reg_n_0_[15] ;
  wire \slv_reg9_reg_n_0_[16] ;
  wire \slv_reg9_reg_n_0_[17] ;
  wire \slv_reg9_reg_n_0_[18] ;
  wire \slv_reg9_reg_n_0_[19] ;
  wire \slv_reg9_reg_n_0_[1] ;
  wire \slv_reg9_reg_n_0_[20] ;
  wire \slv_reg9_reg_n_0_[21] ;
  wire \slv_reg9_reg_n_0_[22] ;
  wire \slv_reg9_reg_n_0_[23] ;
  wire \slv_reg9_reg_n_0_[24] ;
  wire \slv_reg9_reg_n_0_[25] ;
  wire \slv_reg9_reg_n_0_[26] ;
  wire \slv_reg9_reg_n_0_[27] ;
  wire \slv_reg9_reg_n_0_[28] ;
  wire \slv_reg9_reg_n_0_[29] ;
  wire \slv_reg9_reg_n_0_[2] ;
  wire \slv_reg9_reg_n_0_[30] ;
  wire \slv_reg9_reg_n_0_[31] ;
  wire \slv_reg9_reg_n_0_[3] ;
  wire \slv_reg9_reg_n_0_[4] ;
  wire \slv_reg9_reg_n_0_[5] ;
  wire \slv_reg9_reg_n_0_[6] ;
  wire \slv_reg9_reg_n_0_[7] ;
  wire \slv_reg9_reg_n_0_[8] ;
  wire \slv_reg9_reg_n_0_[9] ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire start_clobber;
  wire start_clobber0_out;
  wire start_clobber_i_2_n_0;
  wire start_clobber_i_3_n_0;
  wire start_clobber_i_4_n_0;
  wire start_clobber_i_5_n_0;
  wire start_clobber_i_6_n_0;
  wire start_clobber_i_7_n_0;
  wire start_clobber_i_8_n_0;
  wire start_clobber_i_9_n_0;
  wire start_clobber_reg;
  wire start_clobber_reg_reg;
  wire start_data_copy_pulse;
  wire start_logclr;
  wire start_logclr_pulse;
  wire start_redolog;
  wire start_redolog_pulse;
  wire start_timer;
  wire start_timer_i_1_n_0;
  wire stop_timer_i_1_n_0;
  wire stop_timer_reg_n_0;
  wire [63:0]time_cycles;
  wire time_cycles0;
  wire [31:0]ulog_offset;
  wire [31:0]\ulog_offset[31] ;
  wire [31:0]\undolog_v2_1_M02_AXI_inst/in19 ;
  wire [31:0]\undolog_v2_1_M02_AXI_inst/in20 ;
  wire [1:1]\undolog_v2_1_M02_AXI_inst/in27 ;
  wire \waddr[10]_i_5_n_0 ;
  wire \waddr[2]_i_3_n_0 ;
  wire \waddr[2]_i_4_n_0 ;
  wire \waddr_reg[10]_i_4_n_0 ;
  wire \waddr_reg[10]_i_4_n_1 ;
  wire \waddr_reg[10]_i_4_n_2 ;
  wire \waddr_reg[10]_i_4_n_3 ;
  wire \waddr_reg[10]_i_4_n_5 ;
  wire \waddr_reg[10]_i_4_n_6 ;
  wire \waddr_reg[10]_i_4_n_7 ;
  wire \waddr_reg[16]_i_4_n_0 ;
  wire \waddr_reg[16]_i_4_n_1 ;
  wire \waddr_reg[16]_i_4_n_2 ;
  wire \waddr_reg[16]_i_4_n_3 ;
  wire \waddr_reg[16]_i_4_n_5 ;
  wire \waddr_reg[16]_i_4_n_6 ;
  wire \waddr_reg[16]_i_4_n_7 ;
  wire \waddr_reg[18]_i_4_n_0 ;
  wire \waddr_reg[18]_i_4_n_1 ;
  wire \waddr_reg[18]_i_4_n_2 ;
  wire \waddr_reg[18]_i_4_n_3 ;
  wire \waddr_reg[18]_i_4_n_5 ;
  wire \waddr_reg[18]_i_4_n_6 ;
  wire \waddr_reg[18]_i_4_n_7 ;
  wire [0:0]\waddr_reg[1] ;
  wire \waddr_reg[24]_i_4_n_0 ;
  wire \waddr_reg[24]_i_4_n_1 ;
  wire \waddr_reg[24]_i_4_n_2 ;
  wire \waddr_reg[24]_i_4_n_3 ;
  wire \waddr_reg[24]_i_4_n_5 ;
  wire \waddr_reg[24]_i_4_n_6 ;
  wire \waddr_reg[24]_i_4_n_7 ;
  wire \waddr_reg[26]_i_4_n_0 ;
  wire \waddr_reg[26]_i_4_n_1 ;
  wire \waddr_reg[26]_i_4_n_2 ;
  wire \waddr_reg[26]_i_4_n_3 ;
  wire \waddr_reg[26]_i_4_n_5 ;
  wire \waddr_reg[26]_i_4_n_6 ;
  wire \waddr_reg[26]_i_4_n_7 ;
  wire \waddr_reg[2]_i_2_n_0 ;
  wire \waddr_reg[2]_i_2_n_1 ;
  wire \waddr_reg[2]_i_2_n_2 ;
  wire \waddr_reg[2]_i_2_n_3 ;
  wire \waddr_reg[2]_i_2_n_5 ;
  wire \waddr_reg[2]_i_2_n_6 ;
  wire \waddr_reg[2]_i_2_n_7 ;
  wire [29:0]\waddr_reg[31] ;
  wire \waddr_reg[31]_i_6_n_2 ;
  wire \waddr_reg[31]_i_6_n_3 ;
  wire \waddr_reg[31]_i_6_n_5 ;
  wire \waddr_reg[31]_i_6_n_6 ;
  wire \waddr_reg[31]_i_6_n_7 ;
  wire \waddr_reg[31]_i_7_n_5 ;
  wire \waddr_reg[31]_i_7_n_6 ;
  wire \waddr_reg[31]_i_7_n_7 ;
  wire \wdata[0]_i_2_n_0 ;
  wire \wdata[0]_i_3_n_0 ;
  wire \wdata[10]_i_2__1_n_0 ;
  wire \wdata[10]_i_3__0_n_0 ;
  wire \wdata[11]_i_2__1_n_0 ;
  wire \wdata[11]_i_3__0_n_0 ;
  wire \wdata[12]_i_2__1_n_0 ;
  wire \wdata[12]_i_3__0_n_0 ;
  wire \wdata[13]_i_2__1_n_0 ;
  wire \wdata[13]_i_3__0_n_0 ;
  wire \wdata[14]_i_2__1_n_0 ;
  wire \wdata[14]_i_3__0_n_0 ;
  wire \wdata[15]_i_2__1_n_0 ;
  wire \wdata[15]_i_3__0_n_0 ;
  wire \wdata[16]_i_2__1_n_0 ;
  wire \wdata[16]_i_3__0_n_0 ;
  wire \wdata[17]_i_2__1_n_0 ;
  wire \wdata[17]_i_3__0_n_0 ;
  wire \wdata[18]_i_2__1_n_0 ;
  wire \wdata[18]_i_3__0_n_0 ;
  wire \wdata[19]_i_2__1_n_0 ;
  wire \wdata[19]_i_3__0_n_0 ;
  wire \wdata[1]_i_2__1_n_0 ;
  wire \wdata[1]_i_3_n_0 ;
  wire \wdata[20]_i_2__0_n_0 ;
  wire \wdata[20]_i_3__0_n_0 ;
  wire \wdata[21]_i_2__0_n_0 ;
  wire \wdata[21]_i_3__0_n_0 ;
  wire \wdata[22]_i_2__0_n_0 ;
  wire \wdata[22]_i_3__0_n_0 ;
  wire \wdata[23]_i_2__0_n_0 ;
  wire \wdata[23]_i_3__0_n_0 ;
  wire \wdata[24]_i_2__0_n_0 ;
  wire \wdata[24]_i_3__0_n_0 ;
  wire \wdata[25]_i_2__0_n_0 ;
  wire \wdata[25]_i_3__0_n_0 ;
  wire \wdata[26]_i_2__0_n_0 ;
  wire \wdata[26]_i_3__0_n_0 ;
  wire \wdata[27]_i_2__0_n_0 ;
  wire \wdata[27]_i_3__0_n_0 ;
  wire \wdata[28]_i_2__0_n_0 ;
  wire \wdata[28]_i_3__0_n_0 ;
  wire \wdata[29]_i_2__0_n_0 ;
  wire \wdata[29]_i_3__0_n_0 ;
  wire \wdata[2]_i_2__1_n_0 ;
  wire \wdata[2]_i_3__0_n_0 ;
  wire \wdata[30]_i_2__0_n_0 ;
  wire \wdata[30]_i_3__0_n_0 ;
  wire \wdata[31]_i_2__1_n_0 ;
  wire \wdata[31]_i_3__1_n_0 ;
  wire \wdata[3]_i_2__1_n_0 ;
  wire \wdata[3]_i_3__0_n_0 ;
  wire \wdata[4]_i_2__1_n_0 ;
  wire \wdata[4]_i_3__0_n_0 ;
  wire \wdata[5]_i_2__1_n_0 ;
  wire \wdata[5]_i_3__0_n_0 ;
  wire \wdata[6]_i_2__1_n_0 ;
  wire \wdata[6]_i_3__0_n_0 ;
  wire \wdata[7]_i_2__1_n_0 ;
  wire \wdata[7]_i_3__0_n_0 ;
  wire \wdata[8]_i_2__1_n_0 ;
  wire \wdata[8]_i_3__0_n_0 ;
  wire \wdata[9]_i_2__1_n_0 ;
  wire \wdata[9]_i_3__0_n_0 ;
  wire [0:0]\wdata_reg[0] ;
  wire \wdata_reg[10] ;
  wire \wdata_reg[11] ;
  wire \wdata_reg[12] ;
  wire \wdata_reg[13] ;
  wire \wdata_reg[14] ;
  wire \wdata_reg[15] ;
  wire \wdata_reg[16] ;
  wire \wdata_reg[17] ;
  wire \wdata_reg[18] ;
  wire \wdata_reg[19] ;
  wire \wdata_reg[20] ;
  wire \wdata_reg[21] ;
  wire \wdata_reg[22] ;
  wire \wdata_reg[23] ;
  wire \wdata_reg[24] ;
  wire \wdata_reg[25] ;
  wire \wdata_reg[26] ;
  wire [7:0]\wdata_reg[27] ;
  wire [6:0]\wdata_reg[27]_0 ;
  wire \wdata_reg[27]_1 ;
  wire \wdata_reg[28] ;
  wire \wdata_reg[29] ;
  wire \wdata_reg[2] ;
  wire \wdata_reg[30] ;
  wire \wdata_reg[31] ;
  wire [31:0]\wdata_reg[31]_0 ;
  wire \wdata_reg[3] ;
  wire \wdata_reg[4] ;
  wire \wdata_reg[5] ;
  wire \wdata_reg[6] ;
  wire \wdata_reg[7] ;
  wire \wdata_reg[8] ;
  wire [1:0]\wdata_reg[9] ;
  wire \wdata_reg[9]_0 ;
  wire [3:3]\NLW_i_/i_/i__carry_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i__carry__3_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i__carry__4_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i__carry__5_CO_UNCONNECTED ;
  wire [7:3]\NLW_i_/i_/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_raddr_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_raddr_reg[24]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_raddr_reg[31]_i_6_CO_UNCONNECTED ;
  wire [7:7]\NLW_raddr_reg[31]_i_6_O_UNCONNECTED ;
  wire [3:3]\NLW_raddr_reg[8]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_waddr_reg[10]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_waddr_reg[16]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_waddr_reg[18]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_waddr_reg[24]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_waddr_reg[26]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_waddr_reg[2]_i_2_CO_UNCONNECTED ;
  wire [0:0]\NLW_waddr_reg[2]_i_2_O_UNCONNECTED ;
  wire [7:3]\NLW_waddr_reg[31]_i_6_CO_UNCONNECTED ;
  wire [7:7]\NLW_waddr_reg[31]_i_6_O_UNCONNECTED ;
  wire [7:3]\NLW_waddr_reg[31]_i_7_CO_UNCONNECTED ;
  wire [7:5]\NLW_waddr_reg[31]_i_7_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    DMA_DEST1_carry_i_1
       (.I0(\ulog_offset[31] [4]),
        .O(\wdata_reg[9] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    DMA_DEST1_carry_i_2
       (.I0(\ulog_offset[31] [3]),
        .O(\wdata_reg[9] [0]));
  LUT2 #(
    .INIT(4'h2)) 
    DMA_SRC0_carry__0_i_1
       (.I0(\log_src[31] [29]),
        .I1(Q[13]),
        .O(\physical_src_addr[28] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    DMA_SRC0_carry__0_i_2
       (.I0(\log_src[31] [28]),
        .I1(Q[12]),
        .O(\physical_src_addr[28] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    DMA_SRC0_carry__0_i_3
       (.I0(\log_src[31] [27]),
        .I1(Q[11]),
        .O(\physical_src_addr[28] [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    DMA_SRC0_carry__0_i_4
       (.I0(Q[14]),
        .I1(\log_src[31] [30]),
        .I2(Q[15]),
        .I3(\log_src[31] [31]),
        .O(\physical_src_addr[28]_0 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    DMA_SRC0_carry__0_i_5
       (.I0(Q[13]),
        .I1(\log_src[31] [29]),
        .I2(Q[14]),
        .I3(\log_src[31] [30]),
        .O(\physical_src_addr[28]_0 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    DMA_SRC0_carry__0_i_6
       (.I0(Q[12]),
        .I1(\log_src[31] [28]),
        .I2(Q[13]),
        .I3(\log_src[31] [29]),
        .O(\physical_src_addr[28]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    DMA_SRC0_carry__0_i_7
       (.I0(Q[11]),
        .I1(\log_src[31] [27]),
        .I2(Q[12]),
        .I3(\log_src[31] [28]),
        .O(\physical_src_addr[28]_0 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    DMA_SRC0_carry_i_1
       (.I0(\log_src[31] [26]),
        .I1(Q[10]),
        .O(\wdata_reg[27]_0 [6]));
  LUT4 #(
    .INIT(16'hB44B)) 
    DMA_SRC0_carry_i_10
       (.I0(Q[8]),
        .I1(\log_src[31] [24]),
        .I2(Q[9]),
        .I3(\log_src[31] [25]),
        .O(\wdata_reg[27] [5]));
  LUT4 #(
    .INIT(16'hB44B)) 
    DMA_SRC0_carry_i_11
       (.I0(Q[7]),
        .I1(\log_src[31] [23]),
        .I2(Q[8]),
        .I3(\log_src[31] [24]),
        .O(\wdata_reg[27] [4]));
  LUT4 #(
    .INIT(16'hB44B)) 
    DMA_SRC0_carry_i_12
       (.I0(Q[6]),
        .I1(\log_src[31] [22]),
        .I2(Q[7]),
        .I3(\log_src[31] [23]),
        .O(\wdata_reg[27] [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    DMA_SRC0_carry_i_13
       (.I0(Q[5]),
        .I1(\log_src[31] [21]),
        .I2(Q[6]),
        .I3(\log_src[31] [22]),
        .O(\wdata_reg[27] [2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    DMA_SRC0_carry_i_14
       (.I0(Q[4]),
        .I1(\log_src[31] [20]),
        .I2(Q[5]),
        .I3(\log_src[31] [21]),
        .O(\wdata_reg[27] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    DMA_SRC0_carry_i_15
       (.I0(\log_src[31] [20]),
        .I1(Q[4]),
        .O(\wdata_reg[27] [0]));
  LUT2 #(
    .INIT(4'h2)) 
    DMA_SRC0_carry_i_2
       (.I0(\log_src[31] [25]),
        .I1(Q[9]),
        .O(\wdata_reg[27]_0 [5]));
  LUT2 #(
    .INIT(4'h2)) 
    DMA_SRC0_carry_i_3
       (.I0(\log_src[31] [24]),
        .I1(Q[8]),
        .O(\wdata_reg[27]_0 [4]));
  LUT2 #(
    .INIT(4'h2)) 
    DMA_SRC0_carry_i_4
       (.I0(\log_src[31] [23]),
        .I1(Q[7]),
        .O(\wdata_reg[27]_0 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    DMA_SRC0_carry_i_5
       (.I0(\log_src[31] [22]),
        .I1(Q[6]),
        .O(\wdata_reg[27]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    DMA_SRC0_carry_i_6
       (.I0(\log_src[31] [21]),
        .I1(Q[5]),
        .O(\wdata_reg[27]_0 [1]));
  LUT2 #(
    .INIT(4'hB)) 
    DMA_SRC0_carry_i_7
       (.I0(\log_src[31] [20]),
        .I1(Q[4]),
        .O(\wdata_reg[27]_0 [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    DMA_SRC0_carry_i_8
       (.I0(Q[10]),
        .I1(\log_src[31] [26]),
        .I2(Q[11]),
        .I3(\log_src[31] [27]),
        .O(\wdata_reg[27] [7]));
  LUT4 #(
    .INIT(16'hB44B)) 
    DMA_SRC0_carry_i_9
       (.I0(Q[9]),
        .I1(\log_src[31] [25]),
        .I2(Q[10]),
        .I3(\log_src[31] [26]),
        .O(\wdata_reg[27] [6]));
  LUT6 #(
    .INIT(64'h0000000000040404)) 
    \FSM_sequential_mst_exec_state[0]_i_3 
       (.I0(redolog_pulsegend1),
        .I1(redolog_pulsegen),
        .I2(\log_src[63] [28]),
        .I3(\log_src[63] [29]),
        .I4(\log_src[63] [30]),
        .I5(\log_src[63] [31]),
        .O(mst_exec_state1__9));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_sequential_mst_exec_state[0]_i_5 
       (.I0(logclr_pulsegend1),
        .I1(logclr_pulsegen),
        .I2(start_clobber),
        .O(\FSM_sequential_mst_exec_state_reg[0] ));
  LUT6 #(
    .INIT(64'h0004000004000000)) 
    \FSM_sequential_mst_exec_state[0]_i_6 
       (.I0(redolog_pulsegend1),
        .I1(redolog_pulsegen),
        .I2(\log_src[63] [28]),
        .I3(\log_src[63] [29]),
        .I4(\log_src[63] [31]),
        .I5(\log_src[63] [30]),
        .O(DMA_START2));
  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(s00_axi_awready),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(clear));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(clear));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(clear));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(clear));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .R(clear));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \axi_awaddr[31]_i_1 
       (.I0(redolog_pulsegend1),
        .I1(redolog_pulsegen),
        .I2(m02_axi_aresetn),
        .O(\axi_araddr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAEFF)) 
    \axi_awaddr[6]_i_1 
       (.I0(start_clobber),
        .I1(logclr_pulsegen),
        .I2(logclr_pulsegend1),
        .I3(m00_axi_aresetn),
        .O(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \axi_awaddr[6]_i_1__0 
       (.I0(DMA_START0__7),
        .I1(m01_axi_aresetn),
        .O(\axi_araddr_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAAAABAEAAAAAAAAA)) 
    \axi_awaddr[6]_i_2 
       (.I0(data_copy_pulse),
        .I1(\log_src[63] [30]),
        .I2(\log_src[63] [31]),
        .I3(\log_src[63] [29]),
        .I4(\log_src[63] [28]),
        .I5(start_redolog),
        .O(DMA_START0__7));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_1_n_0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(clear));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_1_n_0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(clear));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_1_n_0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in[2]),
        .R(clear));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_1_n_0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in[3]),
        .R(clear));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awready),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(s00_axi_awready),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(clear));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[0]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[0]_i_4_n_0 ),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(\dataout[0] ),
        .I1(slv_reg10[0]),
        .I2(sel0[1]),
        .I3(\slv_reg9_reg_n_0_[0] ),
        .I4(sel0[0]),
        .I5(Q[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(log_size[0]),
        .I1(\log_size[31] [0]),
        .I2(sel0[1]),
        .I3(\log_src[63] [0]),
        .I4(sel0[0]),
        .I5(\log_src[31] [0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(base_offset[32]),
        .I1(base_offset[0]),
        .I2(sel0[1]),
        .I3(ulog_offset[0]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [0]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[10]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[10]_i_4_n_0 ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[10]_i_2 
       (.I0(Q[10]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[10] ),
        .I3(sel0[1]),
        .I4(slv_reg10[10]),
        .I5(sel0[2]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(log_size[10]),
        .I1(\log_size[31] [10]),
        .I2(sel0[1]),
        .I3(\log_src[63] [10]),
        .I4(sel0[0]),
        .I5(\log_src[31] [10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_4 
       (.I0(base_offset[42]),
        .I1(base_offset[10]),
        .I2(sel0[1]),
        .I3(ulog_offset[10]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [10]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[11]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[11]_i_4_n_0 ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[11]_i_2 
       (.I0(Q[11]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[11] ),
        .I3(sel0[1]),
        .I4(slv_reg10[11]),
        .I5(sel0[2]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(log_size[11]),
        .I1(\log_size[31] [11]),
        .I2(sel0[1]),
        .I3(\log_src[63] [11]),
        .I4(sel0[0]),
        .I5(\log_src[31] [11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_4 
       (.I0(base_offset[43]),
        .I1(base_offset[11]),
        .I2(sel0[1]),
        .I3(ulog_offset[11]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [11]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[12]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[12]_i_2 
       (.I0(Q[12]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[12] ),
        .I3(sel0[1]),
        .I4(slv_reg10[12]),
        .I5(sel0[2]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(log_size[12]),
        .I1(\log_size[31] [12]),
        .I2(sel0[1]),
        .I3(\log_src[63] [12]),
        .I4(sel0[0]),
        .I5(\log_src[31] [12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_4 
       (.I0(base_offset[44]),
        .I1(base_offset[12]),
        .I2(sel0[1]),
        .I3(ulog_offset[12]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [12]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[13]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[13]_i_4_n_0 ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[13]_i_2 
       (.I0(Q[13]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[13] ),
        .I3(sel0[1]),
        .I4(slv_reg10[13]),
        .I5(sel0[2]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(log_size[13]),
        .I1(\log_size[31] [13]),
        .I2(sel0[1]),
        .I3(\log_src[63] [13]),
        .I4(sel0[0]),
        .I5(\log_src[31] [13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_4 
       (.I0(base_offset[45]),
        .I1(base_offset[13]),
        .I2(sel0[1]),
        .I3(ulog_offset[13]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [13]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[14]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[14]_i_4_n_0 ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[14]_i_2 
       (.I0(Q[14]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[14] ),
        .I3(sel0[1]),
        .I4(slv_reg10[14]),
        .I5(sel0[2]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_3 
       (.I0(log_size[14]),
        .I1(\log_size[31] [14]),
        .I2(sel0[1]),
        .I3(\log_src[63] [14]),
        .I4(sel0[0]),
        .I5(\log_src[31] [14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(base_offset[46]),
        .I1(base_offset[14]),
        .I2(sel0[1]),
        .I3(ulog_offset[14]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [14]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[15]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[15]_i_4_n_0 ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[15]_i_2 
       (.I0(Q[15]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[15] ),
        .I3(sel0[1]),
        .I4(slv_reg10[15]),
        .I5(sel0[2]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_3 
       (.I0(log_size[15]),
        .I1(\log_size[31] [15]),
        .I2(sel0[1]),
        .I3(\log_src[63] [15]),
        .I4(sel0[0]),
        .I5(\log_src[31] [15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(base_offset[47]),
        .I1(base_offset[15]),
        .I2(sel0[1]),
        .I3(ulog_offset[15]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [15]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[16]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[16]_i_4_n_0 ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[16]_i_2 
       (.I0(Q[16]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[16] ),
        .I3(sel0[1]),
        .I4(slv_reg10[16]),
        .I5(sel0[2]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_3 
       (.I0(log_size[16]),
        .I1(\log_size[31] [16]),
        .I2(sel0[1]),
        .I3(\log_src[63] [16]),
        .I4(sel0[0]),
        .I5(\log_src[31] [16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_4 
       (.I0(base_offset[48]),
        .I1(base_offset[16]),
        .I2(sel0[1]),
        .I3(ulog_offset[16]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [16]),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[17]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[17]_i_4_n_0 ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[17]_i_2 
       (.I0(Q[17]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[17] ),
        .I3(sel0[1]),
        .I4(slv_reg10[17]),
        .I5(sel0[2]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_3 
       (.I0(log_size[17]),
        .I1(\log_size[31] [17]),
        .I2(sel0[1]),
        .I3(\log_src[63] [17]),
        .I4(sel0[0]),
        .I5(\log_src[31] [17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_4 
       (.I0(base_offset[49]),
        .I1(base_offset[17]),
        .I2(sel0[1]),
        .I3(ulog_offset[17]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [17]),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[18]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[18]_i_4_n_0 ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[18]_i_2 
       (.I0(Q[18]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[18] ),
        .I3(sel0[1]),
        .I4(slv_reg10[18]),
        .I5(sel0[2]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_3 
       (.I0(log_size[18]),
        .I1(\log_size[31] [18]),
        .I2(sel0[1]),
        .I3(\log_src[63] [18]),
        .I4(sel0[0]),
        .I5(\log_src[31] [18]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_4 
       (.I0(base_offset[50]),
        .I1(base_offset[18]),
        .I2(sel0[1]),
        .I3(ulog_offset[18]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [18]),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[19]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[19]_i_4_n_0 ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[19]_i_2 
       (.I0(Q[19]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[19] ),
        .I3(sel0[1]),
        .I4(slv_reg10[19]),
        .I5(sel0[2]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_3 
       (.I0(log_size[19]),
        .I1(\log_size[31] [19]),
        .I2(sel0[1]),
        .I3(\log_src[63] [19]),
        .I4(sel0[0]),
        .I5(\log_src[31] [19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_4 
       (.I0(base_offset[51]),
        .I1(base_offset[19]),
        .I2(sel0[1]),
        .I3(ulog_offset[19]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [19]),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[1]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[1]_i_4_n_0 ),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(\dataout[1] ),
        .I1(slv_reg10[1]),
        .I2(sel0[1]),
        .I3(\slv_reg9_reg_n_0_[1] ),
        .I4(sel0[0]),
        .I5(Q[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(log_size[1]),
        .I1(\log_size[31] [1]),
        .I2(sel0[1]),
        .I3(\log_src[63] [1]),
        .I4(sel0[0]),
        .I5(\log_src[31] [1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_4 
       (.I0(base_offset[33]),
        .I1(base_offset[1]),
        .I2(sel0[1]),
        .I3(ulog_offset[1]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [1]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[20]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[20]_i_4_n_0 ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[20]_i_2 
       (.I0(Q[20]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[20] ),
        .I3(sel0[1]),
        .I4(slv_reg10[20]),
        .I5(sel0[2]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_3 
       (.I0(log_size[20]),
        .I1(\log_size[31] [20]),
        .I2(sel0[1]),
        .I3(\log_src[63] [20]),
        .I4(sel0[0]),
        .I5(\log_src[31] [20]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_4 
       (.I0(base_offset[52]),
        .I1(base_offset[20]),
        .I2(sel0[1]),
        .I3(ulog_offset[20]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [20]),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[21]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[21]_i_4_n_0 ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[21]_i_2 
       (.I0(Q[21]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[21] ),
        .I3(sel0[1]),
        .I4(slv_reg10[21]),
        .I5(sel0[2]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_3 
       (.I0(log_size[21]),
        .I1(\log_size[31] [21]),
        .I2(sel0[1]),
        .I3(\log_src[63] [21]),
        .I4(sel0[0]),
        .I5(\log_src[31] [21]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_4 
       (.I0(base_offset[53]),
        .I1(base_offset[21]),
        .I2(sel0[1]),
        .I3(ulog_offset[21]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [21]),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[22]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[22]_i_4_n_0 ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[22]_i_2 
       (.I0(Q[22]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[22] ),
        .I3(sel0[1]),
        .I4(slv_reg10[22]),
        .I5(sel0[2]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_3 
       (.I0(log_size[22]),
        .I1(\log_size[31] [22]),
        .I2(sel0[1]),
        .I3(\log_src[63] [22]),
        .I4(sel0[0]),
        .I5(\log_src[31] [22]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_4 
       (.I0(base_offset[54]),
        .I1(base_offset[22]),
        .I2(sel0[1]),
        .I3(ulog_offset[22]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [22]),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[23]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[23]_i_4_n_0 ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[23]_i_2 
       (.I0(Q[23]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[23] ),
        .I3(sel0[1]),
        .I4(slv_reg10[23]),
        .I5(sel0[2]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_3 
       (.I0(log_size[23]),
        .I1(\log_size[31] [23]),
        .I2(sel0[1]),
        .I3(\log_src[63] [23]),
        .I4(sel0[0]),
        .I5(\log_src[31] [23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_4 
       (.I0(base_offset[55]),
        .I1(base_offset[23]),
        .I2(sel0[1]),
        .I3(ulog_offset[23]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [23]),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[24]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[24]_i_4_n_0 ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[24]_i_2 
       (.I0(Q[24]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[24] ),
        .I3(sel0[1]),
        .I4(slv_reg10[24]),
        .I5(sel0[2]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_3 
       (.I0(log_size[24]),
        .I1(\log_size[31] [24]),
        .I2(sel0[1]),
        .I3(\log_src[63] [24]),
        .I4(sel0[0]),
        .I5(\log_src[31] [24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_4 
       (.I0(base_offset[56]),
        .I1(base_offset[24]),
        .I2(sel0[1]),
        .I3(ulog_offset[24]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [24]),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[25]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[25]_i_4_n_0 ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[25]_i_2 
       (.I0(Q[25]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[25] ),
        .I3(sel0[1]),
        .I4(slv_reg10[25]),
        .I5(sel0[2]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_3 
       (.I0(log_size[25]),
        .I1(\log_size[31] [25]),
        .I2(sel0[1]),
        .I3(\log_src[63] [25]),
        .I4(sel0[0]),
        .I5(\log_src[31] [25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_4 
       (.I0(base_offset[57]),
        .I1(base_offset[25]),
        .I2(sel0[1]),
        .I3(ulog_offset[25]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [25]),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[26]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[26]_i_4_n_0 ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[26]_i_2 
       (.I0(Q[26]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[26] ),
        .I3(sel0[1]),
        .I4(slv_reg10[26]),
        .I5(sel0[2]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_3 
       (.I0(log_size[26]),
        .I1(\log_size[31] [26]),
        .I2(sel0[1]),
        .I3(\log_src[63] [26]),
        .I4(sel0[0]),
        .I5(\log_src[31] [26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_4 
       (.I0(base_offset[58]),
        .I1(base_offset[26]),
        .I2(sel0[1]),
        .I3(ulog_offset[26]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [26]),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[27]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[27]_i_4_n_0 ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[27]_i_2 
       (.I0(Q[27]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[27] ),
        .I3(sel0[1]),
        .I4(slv_reg10[27]),
        .I5(sel0[2]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_3 
       (.I0(log_size[27]),
        .I1(\log_size[31] [27]),
        .I2(sel0[1]),
        .I3(\log_src[63] [27]),
        .I4(sel0[0]),
        .I5(\log_src[31] [27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_4 
       (.I0(base_offset[59]),
        .I1(base_offset[27]),
        .I2(sel0[1]),
        .I3(ulog_offset[27]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [27]),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[28]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[28]_i_4_n_0 ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[28]_i_2 
       (.I0(Q[28]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[28] ),
        .I3(sel0[1]),
        .I4(slv_reg10[28]),
        .I5(sel0[2]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_3 
       (.I0(log_size[28]),
        .I1(\log_size[31] [28]),
        .I2(sel0[1]),
        .I3(\log_src[63] [28]),
        .I4(sel0[0]),
        .I5(\log_src[31] [28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_4 
       (.I0(base_offset[60]),
        .I1(base_offset[28]),
        .I2(sel0[1]),
        .I3(ulog_offset[28]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [28]),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[29]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[29]_i_4_n_0 ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[29]_i_2 
       (.I0(Q[29]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[29] ),
        .I3(sel0[1]),
        .I4(slv_reg10[29]),
        .I5(sel0[2]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_3 
       (.I0(log_size[29]),
        .I1(\log_size[31] [29]),
        .I2(sel0[1]),
        .I3(\log_src[63] [29]),
        .I4(sel0[0]),
        .I5(\log_src[31] [29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_4 
       (.I0(base_offset[61]),
        .I1(base_offset[29]),
        .I2(sel0[1]),
        .I3(ulog_offset[29]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [29]),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[2]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[2]_i_4_n_0 ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(\dataout[2] ),
        .I1(slv_reg10[2]),
        .I2(sel0[1]),
        .I3(\slv_reg9_reg_n_0_[2] ),
        .I4(sel0[0]),
        .I5(Q[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(log_size[2]),
        .I1(\log_size[31] [2]),
        .I2(sel0[1]),
        .I3(\log_src[63] [2]),
        .I4(sel0[0]),
        .I5(\log_src[31] [2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_4 
       (.I0(base_offset[34]),
        .I1(base_offset[2]),
        .I2(sel0[1]),
        .I3(ulog_offset[2]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [2]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[30]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[30]_i_2 
       (.I0(Q[30]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[30] ),
        .I3(sel0[1]),
        .I4(slv_reg10[30]),
        .I5(sel0[2]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_3 
       (.I0(log_size[30]),
        .I1(\log_size[31] [30]),
        .I2(sel0[1]),
        .I3(\log_src[63] [30]),
        .I4(sel0[0]),
        .I5(\log_src[31] [30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_4 
       (.I0(base_offset[62]),
        .I1(base_offset[30]),
        .I2(sel0[1]),
        .I3(ulog_offset[30]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [30]),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[31]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[31]_i_4_n_0 ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[31]_i_2 
       (.I0(Q[31]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[31] ),
        .I3(sel0[1]),
        .I4(slv_reg10[31]),
        .I5(sel0[2]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_3 
       (.I0(log_size[31]),
        .I1(\log_size[31] [31]),
        .I2(sel0[1]),
        .I3(\log_src[63] [31]),
        .I4(sel0[0]),
        .I5(\log_src[31] [31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_4 
       (.I0(base_offset[63]),
        .I1(base_offset[31]),
        .I2(sel0[1]),
        .I3(ulog_offset[31]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [31]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[3]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[3]_i_4_n_0 ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[3]_i_2 
       (.I0(Q[3]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[3] ),
        .I3(sel0[1]),
        .I4(slv_reg10[3]),
        .I5(sel0[2]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(log_size[3]),
        .I1(\log_size[31] [3]),
        .I2(sel0[1]),
        .I3(\log_src[63] [3]),
        .I4(sel0[0]),
        .I5(\log_src[31] [3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(base_offset[35]),
        .I1(base_offset[3]),
        .I2(sel0[1]),
        .I3(ulog_offset[3]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[4]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[4]_i_4_n_0 ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[4]_i_2 
       (.I0(Q[4]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[4] ),
        .I3(sel0[1]),
        .I4(slv_reg10[4]),
        .I5(sel0[2]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(log_size[4]),
        .I1(\log_size[31] [4]),
        .I2(sel0[1]),
        .I3(\log_src[63] [4]),
        .I4(sel0[0]),
        .I5(\log_src[31] [4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_4 
       (.I0(base_offset[36]),
        .I1(base_offset[4]),
        .I2(sel0[1]),
        .I3(ulog_offset[4]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [4]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[5]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[5]_i_4_n_0 ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[5]_i_2 
       (.I0(Q[5]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[5] ),
        .I3(sel0[1]),
        .I4(slv_reg10[5]),
        .I5(sel0[2]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(log_size[5]),
        .I1(\log_size[31] [5]),
        .I2(sel0[1]),
        .I3(\log_src[63] [5]),
        .I4(sel0[0]),
        .I5(\log_src[31] [5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_4 
       (.I0(base_offset[37]),
        .I1(base_offset[5]),
        .I2(sel0[1]),
        .I3(ulog_offset[5]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [5]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[6]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[6]_i_4_n_0 ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[6]_i_2 
       (.I0(Q[6]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[6] ),
        .I3(sel0[1]),
        .I4(slv_reg10[6]),
        .I5(sel0[2]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(log_size[6]),
        .I1(\log_size[31] [6]),
        .I2(sel0[1]),
        .I3(\log_src[63] [6]),
        .I4(sel0[0]),
        .I5(\log_src[31] [6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_4 
       (.I0(base_offset[38]),
        .I1(base_offset[6]),
        .I2(sel0[1]),
        .I3(ulog_offset[6]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [6]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[7]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[7]_i_4_n_0 ),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[7]_i_2 
       (.I0(Q[7]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[7] ),
        .I3(sel0[1]),
        .I4(slv_reg10[7]),
        .I5(sel0[2]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(log_size[7]),
        .I1(\log_size[31] [7]),
        .I2(sel0[1]),
        .I3(\log_src[63] [7]),
        .I4(sel0[0]),
        .I5(\log_src[31] [7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_4 
       (.I0(base_offset[39]),
        .I1(base_offset[7]),
        .I2(sel0[1]),
        .I3(ulog_offset[7]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [7]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[8]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[8]_i_4_n_0 ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[8]_i_2 
       (.I0(Q[8]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[8] ),
        .I3(sel0[1]),
        .I4(slv_reg10[8]),
        .I5(sel0[2]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(log_size[8]),
        .I1(\log_size[31] [8]),
        .I2(sel0[1]),
        .I3(\log_src[63] [8]),
        .I4(sel0[0]),
        .I5(\log_src[31] [8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_4 
       (.I0(base_offset[40]),
        .I1(base_offset[8]),
        .I2(sel0[1]),
        .I3(ulog_offset[8]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [8]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata[9]_i_3_n_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[9]_i_4_n_0 ),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[9]_i_2 
       (.I0(Q[9]),
        .I1(sel0[0]),
        .I2(\slv_reg9_reg_n_0_[9] ),
        .I3(sel0[1]),
        .I4(slv_reg10[9]),
        .I5(sel0[2]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(log_size[9]),
        .I1(\log_size[31] [9]),
        .I2(sel0[1]),
        .I3(\log_src[63] [9]),
        .I4(sel0[0]),
        .I5(\log_src[31] [9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_4 
       (.I0(base_offset[41]),
        .I1(base_offset[9]),
        .I2(sel0[1]),
        .I3(ulog_offset[9]),
        .I4(sel0[0]),
        .I5(\ulog_offset[31] [9]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(clear));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(clear));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(clear));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(clear));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(clear));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(clear));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(clear));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(clear));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(clear));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(clear));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(clear));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(clear));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(clear));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(clear));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(clear));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(clear));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(clear));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(clear));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(clear));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(clear));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(clear));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(clear));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(clear));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(clear));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(clear));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(clear));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(clear));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(clear));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(clear));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(clear));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(clear));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(clear));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(clear));
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(clear));
  LUT2 #(
    .INIT(4'h2)) 
    data_copy_pulse_INST_0
       (.I0(data_copy_pulsegen),
        .I1(data_copy_pulsegend1),
        .O(data_copy_pulse));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    data_copy_pulsegen_i_1
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(start_data_copy_pulse));
  FDRE data_copy_pulsegen_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(start_data_copy_pulse),
        .Q(data_copy_pulsegen),
        .R(clear));
  FDRE data_copy_pulsegend1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_copy_pulsegen),
        .Q(data_copy_pulsegend1),
        .R(clear));
  CARRY8 \i_/i_/i__carry 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\i_/i_/i__carry_n_0 ,\i_/i_/i__carry_n_1 ,\i_/i_/i__carry_n_2 ,\i_/i_/i__carry_n_3 ,\NLW_i_/i_/i__carry_CO_UNCONNECTED [3],\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\i_/i_/i__carry_n_8 ,\i_/i_/i__carry_n_9 ,\i_/i_/i__carry_n_10 ,\i_/i_/i__carry_n_11 ,\i_/i_/i__carry_n_12 ,\i_/i_/i__carry_n_13 ,\i_/i_/i__carry_n_14 ,\i_/i_/i__carry_n_15 }),
        .S({time_cycles[7:1],i__carry_i_1_n_0}));
  CARRY8 \i_/i_/i__carry__0 
       (.CI(\i_/i_/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\i_/i_/i__carry__0_n_0 ,\i_/i_/i__carry__0_n_1 ,\i_/i_/i__carry__0_n_2 ,\i_/i_/i__carry__0_n_3 ,\NLW_i_/i_/i__carry__0_CO_UNCONNECTED [3],\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__0_n_8 ,\i_/i_/i__carry__0_n_9 ,\i_/i_/i__carry__0_n_10 ,\i_/i_/i__carry__0_n_11 ,\i_/i_/i__carry__0_n_12 ,\i_/i_/i__carry__0_n_13 ,\i_/i_/i__carry__0_n_14 ,\i_/i_/i__carry__0_n_15 }),
        .S(time_cycles[15:8]));
  CARRY8 \i_/i_/i__carry__1 
       (.CI(\i_/i_/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\i_/i_/i__carry__1_n_0 ,\i_/i_/i__carry__1_n_1 ,\i_/i_/i__carry__1_n_2 ,\i_/i_/i__carry__1_n_3 ,\NLW_i_/i_/i__carry__1_CO_UNCONNECTED [3],\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__1_n_8 ,\i_/i_/i__carry__1_n_9 ,\i_/i_/i__carry__1_n_10 ,\i_/i_/i__carry__1_n_11 ,\i_/i_/i__carry__1_n_12 ,\i_/i_/i__carry__1_n_13 ,\i_/i_/i__carry__1_n_14 ,\i_/i_/i__carry__1_n_15 }),
        .S(time_cycles[23:16]));
  CARRY8 \i_/i_/i__carry__2 
       (.CI(\i_/i_/i__carry__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\i_/i_/i__carry__2_n_0 ,\i_/i_/i__carry__2_n_1 ,\i_/i_/i__carry__2_n_2 ,\i_/i_/i__carry__2_n_3 ,\NLW_i_/i_/i__carry__2_CO_UNCONNECTED [3],\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__2_n_8 ,\i_/i_/i__carry__2_n_9 ,\i_/i_/i__carry__2_n_10 ,\i_/i_/i__carry__2_n_11 ,\i_/i_/i__carry__2_n_12 ,\i_/i_/i__carry__2_n_13 ,\i_/i_/i__carry__2_n_14 ,\i_/i_/i__carry__2_n_15 }),
        .S(time_cycles[31:24]));
  CARRY8 \i_/i_/i__carry__3 
       (.CI(\i_/i_/i__carry__2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\i_/i_/i__carry__3_n_0 ,\i_/i_/i__carry__3_n_1 ,\i_/i_/i__carry__3_n_2 ,\i_/i_/i__carry__3_n_3 ,\NLW_i_/i_/i__carry__3_CO_UNCONNECTED [3],\i_/i_/i__carry__3_n_5 ,\i_/i_/i__carry__3_n_6 ,\i_/i_/i__carry__3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__3_n_8 ,\i_/i_/i__carry__3_n_9 ,\i_/i_/i__carry__3_n_10 ,\i_/i_/i__carry__3_n_11 ,\i_/i_/i__carry__3_n_12 ,\i_/i_/i__carry__3_n_13 ,\i_/i_/i__carry__3_n_14 ,\i_/i_/i__carry__3_n_15 }),
        .S(time_cycles[39:32]));
  CARRY8 \i_/i_/i__carry__4 
       (.CI(\i_/i_/i__carry__3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\i_/i_/i__carry__4_n_0 ,\i_/i_/i__carry__4_n_1 ,\i_/i_/i__carry__4_n_2 ,\i_/i_/i__carry__4_n_3 ,\NLW_i_/i_/i__carry__4_CO_UNCONNECTED [3],\i_/i_/i__carry__4_n_5 ,\i_/i_/i__carry__4_n_6 ,\i_/i_/i__carry__4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__4_n_8 ,\i_/i_/i__carry__4_n_9 ,\i_/i_/i__carry__4_n_10 ,\i_/i_/i__carry__4_n_11 ,\i_/i_/i__carry__4_n_12 ,\i_/i_/i__carry__4_n_13 ,\i_/i_/i__carry__4_n_14 ,\i_/i_/i__carry__4_n_15 }),
        .S(time_cycles[47:40]));
  CARRY8 \i_/i_/i__carry__5 
       (.CI(\i_/i_/i__carry__4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\i_/i_/i__carry__5_n_0 ,\i_/i_/i__carry__5_n_1 ,\i_/i_/i__carry__5_n_2 ,\i_/i_/i__carry__5_n_3 ,\NLW_i_/i_/i__carry__5_CO_UNCONNECTED [3],\i_/i_/i__carry__5_n_5 ,\i_/i_/i__carry__5_n_6 ,\i_/i_/i__carry__5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__5_n_8 ,\i_/i_/i__carry__5_n_9 ,\i_/i_/i__carry__5_n_10 ,\i_/i_/i__carry__5_n_11 ,\i_/i_/i__carry__5_n_12 ,\i_/i_/i__carry__5_n_13 ,\i_/i_/i__carry__5_n_14 ,\i_/i_/i__carry__5_n_15 }),
        .S(time_cycles[55:48]));
  CARRY8 \i_/i_/i__carry__6 
       (.CI(\i_/i_/i__carry__5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_i_/i_/i__carry__6_CO_UNCONNECTED [7],\i_/i_/i__carry__6_n_1 ,\i_/i_/i__carry__6_n_2 ,\i_/i_/i__carry__6_n_3 ,\NLW_i_/i_/i__carry__6_CO_UNCONNECTED [3],\i_/i_/i__carry__6_n_5 ,\i_/i_/i__carry__6_n_6 ,\i_/i_/i__carry__6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__6_n_8 ,\i_/i_/i__carry__6_n_9 ,\i_/i_/i__carry__6_n_10 ,\i_/i_/i__carry__6_n_11 ,\i_/i_/i__carry__6_n_12 ,\i_/i_/i__carry__6_n_13 ,\i_/i_/i__carry__6_n_14 ,\i_/i_/i__carry__6_n_15 }),
        .S(time_cycles[63:56]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(time_cycles[0]),
        .O(i__carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hE0E000E0)) 
    logclr_done_reg_i_1
       (.I0(logclr_done_reg),
        .I1(DMA_DONE_reg_1),
        .I2(s00_axi_aresetn),
        .I3(logclr_pulsegen),
        .I4(logclr_pulsegend1),
        .O(logclr_done_reg_i_1_n_0));
  FDRE logclr_done_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(logclr_done_reg_i_1_n_0),
        .Q(logclr_done_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    logclr_pulsegen_i_1
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(start_logclr_pulse));
  FDRE logclr_pulsegen_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(start_logclr_pulse),
        .Q(logclr_pulsegen),
        .R(clear));
  FDRE logclr_pulsegend1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(logclr_pulsegen),
        .Q(logclr_pulsegend1),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hA8AAAAAA)) 
    \operation_type[0]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(\operation_type[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1080FFFF)) 
    \operation_type[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(s00_axi_aresetn),
        .O(\operation_type[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \operation_type[1]_i_2 
       (.I0(Q[2]),
        .I1(s00_axi_aresetn),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\operation_type[1]_i_2_n_0 ));
  FDRE \operation_type_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\operation_type[1]_i_1_n_0 ),
        .D(\operation_type[0]_i_1_n_0 ),
        .Q(\operation_type[1] [0]),
        .R(1'b0));
  FDRE \operation_type_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\operation_type[1]_i_1_n_0 ),
        .D(\operation_type[1]_i_2_n_0 ),
        .Q(\operation_type[1] [1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry__0_i_1
       (.I0(\log_src[31] [14]),
        .I1(\log_src[31] [15]),
        .O(\raddr_reg[15] [7]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry__0_i_2
       (.I0(\log_src[31] [13]),
        .I1(\log_src[31] [14]),
        .O(\raddr_reg[15] [6]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry__0_i_3
       (.I0(\log_src[31] [12]),
        .I1(\log_src[31] [13]),
        .O(\raddr_reg[15] [5]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry__0_i_4
       (.I0(\log_src[31] [11]),
        .I1(\log_src[31] [12]),
        .O(\raddr_reg[15] [4]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry__0_i_5
       (.I0(\log_src[31] [10]),
        .I1(\log_src[31] [11]),
        .O(\raddr_reg[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry__0_i_6
       (.I0(\log_src[31] [9]),
        .I1(\log_src[31] [10]),
        .O(\raddr_reg[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry__0_i_7
       (.I0(\log_src[31] [8]),
        .I1(\log_src[31] [9]),
        .O(\raddr_reg[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry__0_i_8
       (.I0(\log_src[31] [7]),
        .I1(\log_src[31] [8]),
        .O(\raddr_reg[15] [0]));
  LUT2 #(
    .INIT(4'h2)) 
    p_2_out_carry__1_i_1
       (.I0(\log_src[31] [22]),
        .I1(Q[6]),
        .O(\raddr_reg[23]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry__1_i_10
       (.I0(\log_src[31] [16]),
        .I1(\log_src[31] [17]),
        .O(\raddr_reg[23] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry__1_i_11
       (.I0(\log_src[31] [15]),
        .I1(\log_src[31] [16]),
        .O(\raddr_reg[23] [0]));
  LUT2 #(
    .INIT(4'h2)) 
    p_2_out_carry__1_i_2
       (.I0(\log_src[31] [21]),
        .I1(Q[5]),
        .O(\raddr_reg[23]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    p_2_out_carry__1_i_3
       (.I0(\log_src[31] [20]),
        .I1(Q[4]),
        .O(\raddr_reg[23]_0 [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    p_2_out_carry__1_i_4
       (.I0(Q[6]),
        .I1(\log_src[31] [22]),
        .I2(\log_src[31] [23]),
        .I3(Q[7]),
        .O(\raddr_reg[23] [7]));
  LUT4 #(
    .INIT(16'hB44B)) 
    p_2_out_carry__1_i_5
       (.I0(Q[5]),
        .I1(\log_src[31] [21]),
        .I2(\log_src[31] [22]),
        .I3(Q[6]),
        .O(\raddr_reg[23] [6]));
  LUT4 #(
    .INIT(16'hB44B)) 
    p_2_out_carry__1_i_6
       (.I0(Q[4]),
        .I1(\log_src[31] [20]),
        .I2(\log_src[31] [21]),
        .I3(Q[5]),
        .O(\raddr_reg[23] [5]));
  LUT3 #(
    .INIT(8'h69)) 
    p_2_out_carry__1_i_7
       (.I0(\log_src[31] [19]),
        .I1(\log_src[31] [20]),
        .I2(Q[4]),
        .O(\raddr_reg[23] [4]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry__1_i_8
       (.I0(\log_src[31] [18]),
        .I1(\log_src[31] [19]),
        .O(\raddr_reg[23] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry__1_i_9
       (.I0(\log_src[31] [17]),
        .I1(\log_src[31] [18]),
        .O(\raddr_reg[23] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    p_2_out_carry__2_i_1
       (.I0(\log_src[31] [29]),
        .I1(Q[13]),
        .O(\raddr_reg[31]_0 [6]));
  LUT4 #(
    .INIT(16'hB44B)) 
    p_2_out_carry__2_i_10
       (.I0(Q[12]),
        .I1(\log_src[31] [28]),
        .I2(\log_src[31] [29]),
        .I3(Q[13]),
        .O(\raddr_reg[31]_1 [5]));
  LUT4 #(
    .INIT(16'hB44B)) 
    p_2_out_carry__2_i_11
       (.I0(Q[11]),
        .I1(\log_src[31] [27]),
        .I2(\log_src[31] [28]),
        .I3(Q[12]),
        .O(\raddr_reg[31]_1 [4]));
  LUT4 #(
    .INIT(16'hB44B)) 
    p_2_out_carry__2_i_12
       (.I0(Q[10]),
        .I1(\log_src[31] [26]),
        .I2(\log_src[31] [27]),
        .I3(Q[11]),
        .O(\raddr_reg[31]_1 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    p_2_out_carry__2_i_13
       (.I0(Q[9]),
        .I1(\log_src[31] [25]),
        .I2(\log_src[31] [26]),
        .I3(Q[10]),
        .O(\raddr_reg[31]_1 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    p_2_out_carry__2_i_14
       (.I0(Q[8]),
        .I1(\log_src[31] [24]),
        .I2(\log_src[31] [25]),
        .I3(Q[9]),
        .O(\raddr_reg[31]_1 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    p_2_out_carry__2_i_15
       (.I0(Q[7]),
        .I1(\log_src[31] [23]),
        .I2(\log_src[31] [24]),
        .I3(Q[8]),
        .O(\raddr_reg[31]_1 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    p_2_out_carry__2_i_2
       (.I0(\log_src[31] [28]),
        .I1(Q[12]),
        .O(\raddr_reg[31]_0 [5]));
  LUT2 #(
    .INIT(4'h2)) 
    p_2_out_carry__2_i_3
       (.I0(\log_src[31] [27]),
        .I1(Q[11]),
        .O(\raddr_reg[31]_0 [4]));
  LUT2 #(
    .INIT(4'h2)) 
    p_2_out_carry__2_i_4
       (.I0(\log_src[31] [26]),
        .I1(Q[10]),
        .O(\raddr_reg[31]_0 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    p_2_out_carry__2_i_5
       (.I0(\log_src[31] [25]),
        .I1(Q[9]),
        .O(\raddr_reg[31]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    p_2_out_carry__2_i_6
       (.I0(\log_src[31] [24]),
        .I1(Q[8]),
        .O(\raddr_reg[31]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    p_2_out_carry__2_i_7
       (.I0(\log_src[31] [23]),
        .I1(Q[7]),
        .O(\raddr_reg[31]_0 [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    p_2_out_carry__2_i_8
       (.I0(Q[14]),
        .I1(\log_src[31] [30]),
        .I2(\log_src[31] [31]),
        .I3(Q[15]),
        .O(\raddr_reg[31]_1 [7]));
  LUT4 #(
    .INIT(16'hB44B)) 
    p_2_out_carry__2_i_9
       (.I0(Q[13]),
        .I1(\log_src[31] [29]),
        .I2(\log_src[31] [30]),
        .I3(Q[14]),
        .O(\raddr_reg[31]_1 [6]));
  LUT1 #(
    .INIT(2'h1)) 
    p_2_out_carry_i_1
       (.I0(\log_src[31] [2]),
        .O(\raddr_reg[7] ));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry_i_2
       (.I0(\log_src[31] [6]),
        .I1(\log_src[31] [7]),
        .O(S[5]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry_i_3
       (.I0(\log_src[31] [5]),
        .I1(\log_src[31] [6]),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry_i_4
       (.I0(\log_src[31] [4]),
        .I1(\log_src[31] [5]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry_i_5
       (.I0(\log_src[31] [3]),
        .I1(\log_src[31] [4]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    p_2_out_carry_i_6
       (.I0(\log_src[31] [2]),
        .I1(\log_src[31] [3]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    p_2_out_carry_i_8
       (.I0(\log_src[31] [1]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \raddr[8]_i_3 
       (.I0(\ulog_offset[31] [2]),
        .O(\raddr[8]_i_3_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \raddr_reg[16]_i_2 
       (.CI(\raddr_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\raddr_reg[16]_i_2_n_0 ,\raddr_reg[16]_i_2_n_1 ,\raddr_reg[16]_i_2_n_2 ,\raddr_reg[16]_i_2_n_3 ,\NLW_raddr_reg[16]_i_2_CO_UNCONNECTED [3],\raddr_reg[16]_i_2_n_5 ,\raddr_reg[16]_i_2_n_6 ,\raddr_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in24[14:7]),
        .S(\ulog_offset[31] [16:9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \raddr_reg[24]_i_2 
       (.CI(\raddr_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\raddr_reg[24]_i_2_n_0 ,\raddr_reg[24]_i_2_n_1 ,\raddr_reg[24]_i_2_n_2 ,\raddr_reg[24]_i_2_n_3 ,\NLW_raddr_reg[24]_i_2_CO_UNCONNECTED [3],\raddr_reg[24]_i_2_n_5 ,\raddr_reg[24]_i_2_n_6 ,\raddr_reg[24]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in24[22:15]),
        .S({\slv_reg0_reg[26]_0 ,\ulog_offset[31] [19:17]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \raddr_reg[31]_i_6 
       (.CI(\raddr_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_raddr_reg[31]_i_6_CO_UNCONNECTED [7:6],\raddr_reg[31]_i_6_n_2 ,\raddr_reg[31]_i_6_n_3 ,\NLW_raddr_reg[31]_i_6_CO_UNCONNECTED [3],\raddr_reg[31]_i_6_n_5 ,\raddr_reg[31]_i_6_n_6 ,\raddr_reg[31]_i_6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_raddr_reg[31]_i_6_O_UNCONNECTED [7],in24[29:23]}),
        .S({1'b0,\slv_reg0_reg[29]_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \raddr_reg[8]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\raddr_reg[8]_i_2_n_0 ,\raddr_reg[8]_i_2_n_1 ,\raddr_reg[8]_i_2_n_2 ,\raddr_reg[8]_i_2_n_3 ,\NLW_raddr_reg[8]_i_2_CO_UNCONNECTED [3],\raddr_reg[8]_i_2_n_5 ,\raddr_reg[8]_i_2_n_6 ,\raddr_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\ulog_offset[31] [2],1'b0}),
        .O({in24[6:0],\undolog_v2_1_M02_AXI_inst/in27 }),
        .S({\ulog_offset[31] [8:3],\raddr[8]_i_3_n_0 ,\ulog_offset[31] [1]}));
  LUT4 #(
    .INIT(16'h1000)) 
    redolog_pulsegen_i_1
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(start_redolog_pulse));
  FDRE redolog_pulsegen_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(start_redolog_pulse),
        .Q(redolog_pulsegen),
        .R(clear));
  FDRE redolog_pulsegend1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(redolog_pulsegen),
        .Q(redolog_pulsegend1),
        .R(clear));
  LUT4 #(
    .INIT(16'h0001)) 
    reg_init_complete_INST_0
       (.I0(reg_init_complete_INST_0_i_1_n_0),
        .I1(reg_init_complete_INST_0_i_2_n_0),
        .I2(reg_init_complete_INST_0_i_3_n_0),
        .I3(reg_init_complete_INST_0_i_4_n_0),
        .O(reg_init_complete));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    reg_init_complete_INST_0_i_1
       (.I0(\slv_reg9_reg_n_0_[21] ),
        .I1(\slv_reg9_reg_n_0_[20] ),
        .I2(\slv_reg9_reg_n_0_[23] ),
        .I3(\slv_reg9_reg_n_0_[22] ),
        .I4(reg_init_complete_INST_0_i_5_n_0),
        .O(reg_init_complete_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    reg_init_complete_INST_0_i_2
       (.I0(\slv_reg9_reg_n_0_[29] ),
        .I1(\slv_reg9_reg_n_0_[28] ),
        .I2(\slv_reg9_reg_n_0_[30] ),
        .I3(\slv_reg9_reg_n_0_[31] ),
        .I4(reg_init_complete_INST_0_i_6_n_0),
        .O(reg_init_complete_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    reg_init_complete_INST_0_i_3
       (.I0(\slv_reg9_reg_n_0_[5] ),
        .I1(\slv_reg9_reg_n_0_[4] ),
        .I2(\slv_reg9_reg_n_0_[7] ),
        .I3(\slv_reg9_reg_n_0_[6] ),
        .I4(reg_init_complete_INST_0_i_7_n_0),
        .O(reg_init_complete_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    reg_init_complete_INST_0_i_4
       (.I0(\slv_reg9_reg_n_0_[13] ),
        .I1(\slv_reg9_reg_n_0_[12] ),
        .I2(\slv_reg9_reg_n_0_[15] ),
        .I3(\slv_reg9_reg_n_0_[14] ),
        .I4(reg_init_complete_INST_0_i_8_n_0),
        .O(reg_init_complete_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    reg_init_complete_INST_0_i_5
       (.I0(\slv_reg9_reg_n_0_[18] ),
        .I1(\slv_reg9_reg_n_0_[19] ),
        .I2(\slv_reg9_reg_n_0_[16] ),
        .I3(\slv_reg9_reg_n_0_[17] ),
        .O(reg_init_complete_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    reg_init_complete_INST_0_i_6
       (.I0(\slv_reg9_reg_n_0_[26] ),
        .I1(\slv_reg9_reg_n_0_[27] ),
        .I2(\slv_reg9_reg_n_0_[24] ),
        .I3(\slv_reg9_reg_n_0_[25] ),
        .O(reg_init_complete_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    reg_init_complete_INST_0_i_7
       (.I0(\slv_reg9_reg_n_0_[2] ),
        .I1(\slv_reg9_reg_n_0_[3] ),
        .I2(\slv_reg9_reg_n_0_[0] ),
        .I3(\slv_reg9_reg_n_0_[1] ),
        .O(reg_init_complete_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    reg_init_complete_INST_0_i_8
       (.I0(\slv_reg9_reg_n_0_[10] ),
        .I1(\slv_reg9_reg_n_0_[11] ),
        .I2(\slv_reg9_reg_n_0_[8] ),
        .I3(\slv_reg9_reg_n_0_[9] ),
        .O(reg_init_complete_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAB)) 
    reg_init_complete_reg_i_1
       (.I0(reg_init_complete_reg_reg_n_0),
        .I1(reg_init_complete_INST_0_i_1_n_0),
        .I2(reg_init_complete_INST_0_i_2_n_0),
        .I3(reg_init_complete_INST_0_i_3_n_0),
        .I4(reg_init_complete_INST_0_i_4_n_0),
        .I5(reg_init_complete_reg_i_2_n_0),
        .O(reg_init_complete_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    reg_init_complete_reg_i_2
       (.I0(logclr_pulsegend1),
        .I1(logclr_pulsegen),
        .I2(s00_axi_aresetn),
        .O(reg_init_complete_reg_i_2_n_0));
  FDRE reg_init_complete_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reg_init_complete_reg_i_1_n_0),
        .Q(reg_init_complete_reg_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\ulog_offset[31] [0]),
        .R(clear));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\ulog_offset[31] [10]),
        .R(clear));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\ulog_offset[31] [11]),
        .R(clear));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\ulog_offset[31] [12]),
        .R(clear));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\ulog_offset[31] [13]),
        .R(clear));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\ulog_offset[31] [14]),
        .R(clear));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\ulog_offset[31] [15]),
        .R(clear));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\ulog_offset[31] [16]),
        .R(clear));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\ulog_offset[31] [17]),
        .R(clear));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\ulog_offset[31] [18]),
        .R(clear));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\ulog_offset[31] [19]),
        .R(clear));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\ulog_offset[31] [1]),
        .R(clear));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\ulog_offset[31] [20]),
        .R(clear));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\ulog_offset[31] [21]),
        .R(clear));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\ulog_offset[31] [22]),
        .R(clear));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\ulog_offset[31] [23]),
        .R(clear));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\ulog_offset[31] [24]),
        .R(clear));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\ulog_offset[31] [25]),
        .R(clear));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\ulog_offset[31] [26]),
        .R(clear));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\ulog_offset[31] [27]),
        .R(clear));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\ulog_offset[31] [28]),
        .R(clear));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\ulog_offset[31] [29]),
        .R(clear));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\ulog_offset[31] [2]),
        .R(clear));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\ulog_offset[31] [30]),
        .R(clear));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\ulog_offset[31] [31]),
        .R(clear));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\ulog_offset[31] [3]),
        .R(clear));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\ulog_offset[31] [4]),
        .R(clear));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\ulog_offset[31] [5]),
        .R(clear));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\ulog_offset[31] [6]),
        .R(clear));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\ulog_offset[31] [7]),
        .R(clear));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\ulog_offset[31] [8]),
        .R(clear));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\ulog_offset[31] [9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg10[0]),
        .R(clear));
  FDRE \slv_reg10_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg10[10]),
        .R(clear));
  FDRE \slv_reg10_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg10[11]),
        .R(clear));
  FDRE \slv_reg10_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg10[12]),
        .R(clear));
  FDRE \slv_reg10_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg10[13]),
        .R(clear));
  FDRE \slv_reg10_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg10[14]),
        .R(clear));
  FDRE \slv_reg10_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg10[15]),
        .R(clear));
  FDRE \slv_reg10_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg10[16]),
        .R(clear));
  FDRE \slv_reg10_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg10[17]),
        .R(clear));
  FDRE \slv_reg10_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg10[18]),
        .R(clear));
  FDRE \slv_reg10_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg10[19]),
        .R(clear));
  FDRE \slv_reg10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg10[1]),
        .R(clear));
  FDRE \slv_reg10_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg10[20]),
        .R(clear));
  FDRE \slv_reg10_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg10[21]),
        .R(clear));
  FDRE \slv_reg10_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg10[22]),
        .R(clear));
  FDRE \slv_reg10_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg10[23]),
        .R(clear));
  FDRE \slv_reg10_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg10[24]),
        .R(clear));
  FDRE \slv_reg10_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg10[25]),
        .R(clear));
  FDRE \slv_reg10_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg10[26]),
        .R(clear));
  FDRE \slv_reg10_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg10[27]),
        .R(clear));
  FDRE \slv_reg10_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg10[28]),
        .R(clear));
  FDRE \slv_reg10_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg10[29]),
        .R(clear));
  FDRE \slv_reg10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg10[2]),
        .R(clear));
  FDRE \slv_reg10_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg10[30]),
        .R(clear));
  FDRE \slv_reg10_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg10[31]),
        .R(clear));
  FDRE \slv_reg10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg10[3]),
        .R(clear));
  FDRE \slv_reg10_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg10[4]),
        .R(clear));
  FDRE \slv_reg10_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg10[5]),
        .R(clear));
  FDRE \slv_reg10_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg10[6]),
        .R(clear));
  FDRE \slv_reg10_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg10[7]),
        .R(clear));
  FDRE \slv_reg10_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg10[8]),
        .R(clear));
  FDRE \slv_reg10_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg10[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'hFF5DFF5DFFFFFF5D)) 
    \slv_reg11[2]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(data_copy_pulsegen),
        .I2(data_copy_pulsegend1),
        .I3(start_logclr),
        .I4(redolog_pulsegen),
        .I5(redolog_pulsegend1),
        .O(slv_reg111));
  FDRE \slv_reg11_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(metadata_done_reg),
        .Q(\dataout[0] ),
        .R(slv_reg111));
  FDRE \slv_reg11_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(DMA_DONE_reg_0),
        .Q(\dataout[1] ),
        .R(slv_reg111));
  FDRE \slv_reg11_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(DMA_DONE_reg),
        .Q(\dataout[2] ),
        .R(slv_reg111));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \slv_reg1[31]_i_1 
       (.I0(s00_axi_aresetn),
        .O(clear));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[31]_i_2 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg1[31]_i_3 
       (.I0(s00_axi_wready),
        .I1(s00_axi_awready),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(ulog_offset[0]),
        .R(clear));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(ulog_offset[10]),
        .R(clear));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(ulog_offset[11]),
        .R(clear));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(ulog_offset[12]),
        .R(clear));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(ulog_offset[13]),
        .R(clear));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(ulog_offset[14]),
        .R(clear));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(ulog_offset[15]),
        .R(clear));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(ulog_offset[16]),
        .R(clear));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(ulog_offset[17]),
        .R(clear));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(ulog_offset[18]),
        .R(clear));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(ulog_offset[19]),
        .R(clear));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(ulog_offset[1]),
        .R(clear));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(ulog_offset[20]),
        .R(clear));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(ulog_offset[21]),
        .R(clear));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(ulog_offset[22]),
        .R(clear));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(ulog_offset[23]),
        .R(clear));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(ulog_offset[24]),
        .R(clear));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(ulog_offset[25]),
        .R(clear));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(ulog_offset[26]),
        .R(clear));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(ulog_offset[27]),
        .R(clear));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(ulog_offset[28]),
        .R(clear));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(ulog_offset[29]),
        .R(clear));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(ulog_offset[2]),
        .R(clear));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(ulog_offset[30]),
        .R(clear));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_2_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(ulog_offset[31]),
        .R(clear));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(ulog_offset[3]),
        .R(clear));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(ulog_offset[4]),
        .R(clear));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(ulog_offset[5]),
        .R(clear));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(ulog_offset[6]),
        .R(clear));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(ulog_offset[7]),
        .R(clear));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(ulog_offset[8]),
        .R(clear));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(ulog_offset[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(base_offset[0]),
        .R(clear));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(base_offset[10]),
        .R(clear));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(base_offset[11]),
        .R(clear));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(base_offset[12]),
        .R(clear));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(base_offset[13]),
        .R(clear));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(base_offset[14]),
        .R(clear));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(base_offset[15]),
        .R(clear));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(base_offset[16]),
        .R(clear));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(base_offset[17]),
        .R(clear));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(base_offset[18]),
        .R(clear));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(base_offset[19]),
        .R(clear));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(base_offset[1]),
        .R(clear));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(base_offset[20]),
        .R(clear));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(base_offset[21]),
        .R(clear));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(base_offset[22]),
        .R(clear));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(base_offset[23]),
        .R(clear));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(base_offset[24]),
        .R(clear));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(base_offset[25]),
        .R(clear));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(base_offset[26]),
        .R(clear));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(base_offset[27]),
        .R(clear));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(base_offset[28]),
        .R(clear));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(base_offset[29]),
        .R(clear));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(base_offset[2]),
        .R(clear));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(base_offset[30]),
        .R(clear));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(base_offset[31]),
        .R(clear));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(base_offset[3]),
        .R(clear));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(base_offset[4]),
        .R(clear));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(base_offset[5]),
        .R(clear));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(base_offset[6]),
        .R(clear));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(base_offset[7]),
        .R(clear));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(base_offset[8]),
        .R(clear));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(base_offset[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(base_offset[32]),
        .R(clear));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(base_offset[42]),
        .R(clear));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(base_offset[43]),
        .R(clear));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(base_offset[44]),
        .R(clear));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(base_offset[45]),
        .R(clear));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(base_offset[46]),
        .R(clear));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(base_offset[47]),
        .R(clear));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(base_offset[48]),
        .R(clear));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(base_offset[49]),
        .R(clear));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(base_offset[50]),
        .R(clear));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(base_offset[51]),
        .R(clear));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(base_offset[33]),
        .R(clear));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(base_offset[52]),
        .R(clear));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(base_offset[53]),
        .R(clear));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(base_offset[54]),
        .R(clear));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(base_offset[55]),
        .R(clear));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(base_offset[56]),
        .R(clear));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(base_offset[57]),
        .R(clear));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(base_offset[58]),
        .R(clear));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(base_offset[59]),
        .R(clear));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(base_offset[60]),
        .R(clear));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(base_offset[61]),
        .R(clear));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(base_offset[34]),
        .R(clear));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(base_offset[62]),
        .R(clear));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(base_offset[63]),
        .R(clear));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(base_offset[35]),
        .R(clear));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(base_offset[36]),
        .R(clear));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(base_offset[37]),
        .R(clear));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(base_offset[38]),
        .R(clear));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(base_offset[39]),
        .R(clear));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(base_offset[40]),
        .R(clear));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(base_offset[41]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\log_src[31] [0]),
        .R(clear));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\log_src[31] [10]),
        .R(clear));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\log_src[31] [11]),
        .R(clear));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\log_src[31] [12]),
        .R(clear));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\log_src[31] [13]),
        .R(clear));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\log_src[31] [14]),
        .R(clear));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\log_src[31] [15]),
        .R(clear));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\log_src[31] [16]),
        .R(clear));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\log_src[31] [17]),
        .R(clear));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\log_src[31] [18]),
        .R(clear));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\log_src[31] [19]),
        .R(clear));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\log_src[31] [1]),
        .R(clear));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\log_src[31] [20]),
        .R(clear));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\log_src[31] [21]),
        .R(clear));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\log_src[31] [22]),
        .R(clear));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\log_src[31] [23]),
        .R(clear));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\log_src[31] [24]),
        .R(clear));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\log_src[31] [25]),
        .R(clear));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\log_src[31] [26]),
        .R(clear));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\log_src[31] [27]),
        .R(clear));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\log_src[31] [28]),
        .R(clear));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\log_src[31] [29]),
        .R(clear));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\log_src[31] [2]),
        .R(clear));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\log_src[31] [30]),
        .R(clear));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\log_src[31] [31]),
        .R(clear));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\log_src[31] [3]),
        .R(clear));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\log_src[31] [4]),
        .R(clear));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\log_src[31] [5]),
        .R(clear));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\log_src[31] [6]),
        .R(clear));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\log_src[31] [7]),
        .R(clear));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\log_src[31] [8]),
        .R(clear));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\log_src[31] [9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\log_src[63] [0]),
        .R(clear));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\log_src[63] [10]),
        .R(clear));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\log_src[63] [11]),
        .R(clear));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\log_src[63] [12]),
        .R(clear));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\log_src[63] [13]),
        .R(clear));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\log_src[63] [14]),
        .R(clear));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\log_src[63] [15]),
        .R(clear));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\log_src[63] [16]),
        .R(clear));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\log_src[63] [17]),
        .R(clear));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\log_src[63] [18]),
        .R(clear));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\log_src[63] [19]),
        .R(clear));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\log_src[63] [1]),
        .R(clear));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\log_src[63] [20]),
        .R(clear));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\log_src[63] [21]),
        .R(clear));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\log_src[63] [22]),
        .R(clear));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\log_src[63] [23]),
        .R(clear));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\log_src[63] [24]),
        .R(clear));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\log_src[63] [25]),
        .R(clear));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\log_src[63] [26]),
        .R(clear));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\log_src[63] [27]),
        .R(clear));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\log_src[63] [28]),
        .R(clear));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\log_src[63] [29]),
        .R(clear));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\log_src[63] [2]),
        .R(clear));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\log_src[63] [30]),
        .R(clear));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\log_src[63] [31]),
        .R(clear));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\log_src[63] [3]),
        .R(clear));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\log_src[63] [4]),
        .R(clear));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\log_src[63] [5]),
        .R(clear));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\log_src[63] [6]),
        .R(clear));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\log_src[63] [7]),
        .R(clear));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\log_src[63] [8]),
        .R(clear));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\log_src[63] [9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\log_size[31] [0]),
        .R(clear));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\log_size[31] [10]),
        .R(clear));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\log_size[31] [11]),
        .R(clear));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\log_size[31] [12]),
        .R(clear));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\log_size[31] [13]),
        .R(clear));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\log_size[31] [14]),
        .R(clear));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\log_size[31] [15]),
        .R(clear));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\log_size[31] [16]),
        .R(clear));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\log_size[31] [17]),
        .R(clear));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\log_size[31] [18]),
        .R(clear));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\log_size[31] [19]),
        .R(clear));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\log_size[31] [1]),
        .R(clear));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\log_size[31] [20]),
        .R(clear));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\log_size[31] [21]),
        .R(clear));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\log_size[31] [22]),
        .R(clear));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\log_size[31] [23]),
        .R(clear));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\log_size[31] [24]),
        .R(clear));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\log_size[31] [25]),
        .R(clear));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\log_size[31] [26]),
        .R(clear));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\log_size[31] [27]),
        .R(clear));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\log_size[31] [28]),
        .R(clear));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\log_size[31] [29]),
        .R(clear));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\log_size[31] [2]),
        .R(clear));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\log_size[31] [30]),
        .R(clear));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\log_size[31] [31]),
        .R(clear));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\log_size[31] [3]),
        .R(clear));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\log_size[31] [4]),
        .R(clear));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\log_size[31] [5]),
        .R(clear));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\log_size[31] [6]),
        .R(clear));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\log_size[31] [7]),
        .R(clear));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\log_size[31] [8]),
        .R(clear));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\log_size[31] [9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(log_size[0]),
        .R(clear));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(log_size[10]),
        .R(clear));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(log_size[11]),
        .R(clear));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(log_size[12]),
        .R(clear));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(log_size[13]),
        .R(clear));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(log_size[14]),
        .R(clear));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(log_size[15]),
        .R(clear));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(log_size[16]),
        .R(clear));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(log_size[17]),
        .R(clear));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(log_size[18]),
        .R(clear));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(log_size[19]),
        .R(clear));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(log_size[1]),
        .R(clear));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(log_size[20]),
        .R(clear));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(log_size[21]),
        .R(clear));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(log_size[22]),
        .R(clear));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(log_size[23]),
        .R(clear));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(log_size[24]),
        .R(clear));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(log_size[25]),
        .R(clear));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(log_size[26]),
        .R(clear));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(log_size[27]),
        .R(clear));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(log_size[28]),
        .R(clear));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(log_size[29]),
        .R(clear));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(log_size[2]),
        .R(clear));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(log_size[30]),
        .R(clear));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(log_size[31]),
        .R(clear));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(log_size[3]),
        .R(clear));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(log_size[4]),
        .R(clear));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(log_size[5]),
        .R(clear));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(log_size[6]),
        .R(clear));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(log_size[7]),
        .R(clear));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(log_size[8]),
        .R(clear));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(log_size[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'h00000080)) 
    \slv_reg8[0]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(s00_axi_wdata[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg8[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \slv_reg8[1]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(s00_axi_wdata[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg8[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \slv_reg8[2]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(s00_axi_wdata[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg8[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \slv_reg8[3]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .I4(s00_axi_aresetn),
        .O(\slv_reg8[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3777)) 
    \slv_reg8[3]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg8[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \slv_reg8[3]_i_3 
       (.I0(s00_axi_wstrb[0]),
        .I1(s00_axi_wdata[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg8[7]_i_1_n_0 ));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(Q[0]),
        .R(\slv_reg8[3]_i_1_n_0 ));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(Q[10]),
        .R(clear));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(Q[11]),
        .R(clear));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(Q[12]),
        .R(clear));
  FDRE \slv_reg8_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(Q[13]),
        .R(clear));
  FDRE \slv_reg8_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(Q[14]),
        .R(clear));
  FDRE \slv_reg8_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(Q[15]),
        .R(clear));
  FDRE \slv_reg8_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(Q[16]),
        .R(clear));
  FDRE \slv_reg8_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(Q[17]),
        .R(clear));
  FDRE \slv_reg8_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(Q[18]),
        .R(clear));
  FDRE \slv_reg8_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(Q[19]),
        .R(clear));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(Q[1]),
        .R(\slv_reg8[3]_i_1_n_0 ));
  FDRE \slv_reg8_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(Q[20]),
        .R(clear));
  FDRE \slv_reg8_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(Q[21]),
        .R(clear));
  FDRE \slv_reg8_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(Q[22]),
        .R(clear));
  FDRE \slv_reg8_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(Q[23]),
        .R(clear));
  FDRE \slv_reg8_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(Q[24]),
        .R(clear));
  FDRE \slv_reg8_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(Q[25]),
        .R(clear));
  FDRE \slv_reg8_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(Q[26]),
        .R(clear));
  FDRE \slv_reg8_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(Q[27]),
        .R(clear));
  FDRE \slv_reg8_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(Q[28]),
        .R(clear));
  FDRE \slv_reg8_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(Q[29]),
        .R(clear));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(Q[2]),
        .R(\slv_reg8[3]_i_1_n_0 ));
  FDRE \slv_reg8_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(Q[30]),
        .R(clear));
  FDRE \slv_reg8_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(Q[31]),
        .R(clear));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(Q[3]),
        .R(\slv_reg8[3]_i_1_n_0 ));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]),
        .R(clear));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(Q[5]),
        .R(clear));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(Q[6]),
        .R(clear));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(Q[7]),
        .R(clear));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(Q[8]),
        .R(clear));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(Q[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[0]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_wdata[0]),
        .O(\slv_reg9[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[10]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_wdata[10]),
        .O(\slv_reg9[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[11]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_wdata[11]),
        .O(\slv_reg9[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[12]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_wdata[12]),
        .O(\slv_reg9[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[13]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_wdata[13]),
        .O(\slv_reg9[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[14]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_wdata[14]),
        .O(\slv_reg9[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[15]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_wdata[15]),
        .O(\slv_reg9[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[16]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_wdata[16]),
        .O(\slv_reg9[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[17]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_wdata[17]),
        .O(\slv_reg9[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[18]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_wdata[18]),
        .O(\slv_reg9[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[19]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_wdata[19]),
        .O(\slv_reg9[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[1]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_wdata[1]),
        .O(\slv_reg9[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[20]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_wdata[20]),
        .O(\slv_reg9[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[21]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_wdata[21]),
        .O(\slv_reg9[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[22]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_wdata[22]),
        .O(\slv_reg9[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[23]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_wdata[23]),
        .O(\slv_reg9[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[24]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_wdata[24]),
        .O(\slv_reg9[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[25]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_wdata[25]),
        .O(\slv_reg9[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[26]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_wdata[26]),
        .O(\slv_reg9[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[27]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_wdata[27]),
        .O(\slv_reg9[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[28]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_wdata[28]),
        .O(\slv_reg9[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[29]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_wdata[29]),
        .O(\slv_reg9[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[2]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_wdata[2]),
        .O(\slv_reg9[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[30]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_wdata[30]),
        .O(\slv_reg9[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \slv_reg9[31]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .I4(s00_axi_wready),
        .O(\slv_reg9[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[31]_i_2 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_wdata[31]),
        .O(\slv_reg9[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[3]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_wdata[3]),
        .O(\slv_reg9[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[4]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_wdata[4]),
        .O(\slv_reg9[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[5]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_wdata[5]),
        .O(\slv_reg9[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[6]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_wdata[6]),
        .O(\slv_reg9[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_wdata[7]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[8]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_wdata[8]),
        .O(\slv_reg9[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg9[9]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_wdata[9]),
        .O(\slv_reg9[9]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[0]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[0] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[10]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[10] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[11]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[11] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[12]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[12] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[13]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[13] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[14]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[14] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[15]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[15] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[16]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[16] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[17]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[17] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[18]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[18] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[19]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[19] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[1]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[1] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[20]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[20] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[21]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[21] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[22]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[22] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[23]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[23] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[24]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[24] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[25]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[25] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[26]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[26] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[27]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[27] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[28]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[28] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[29]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[29] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[2]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[2] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[30]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[30] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[31]_i_2_n_0 ),
        .Q(\slv_reg9_reg_n_0_[31] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[3]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[3] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[4]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[4] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[5]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[5] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[6]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[6] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[7]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[7] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[8]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[8] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[3]_i_2_n_0 ),
        .D(\slv_reg9[9]_i_1_n_0 ),
        .Q(\slv_reg9_reg_n_0_[9] ),
        .R(\slv_reg9[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(s00_axi_arready),
        .O(slv_reg_rden__0));
  LUT5 #(
    .INIT(32'h00010000)) 
    start_clobber_i_1
       (.I0(start_clobber_i_2_n_0),
        .I1(start_clobber_i_3_n_0),
        .I2(start_clobber_i_4_n_0),
        .I3(start_clobber_i_5_n_0),
        .I4(reg_init_complete_reg_reg_n_0),
        .O(start_clobber0_out));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    start_clobber_i_2
       (.I0(slv_reg10[13]),
        .I1(slv_reg10[12]),
        .I2(slv_reg10[15]),
        .I3(slv_reg10[14]),
        .I4(start_clobber_i_6_n_0),
        .O(start_clobber_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    start_clobber_i_3
       (.I0(slv_reg10[5]),
        .I1(slv_reg10[4]),
        .I2(slv_reg10[7]),
        .I3(slv_reg10[6]),
        .I4(start_clobber_i_7_n_0),
        .O(start_clobber_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    start_clobber_i_4
       (.I0(slv_reg10[29]),
        .I1(slv_reg10[28]),
        .I2(slv_reg10[30]),
        .I3(slv_reg10[31]),
        .I4(start_clobber_i_8_n_0),
        .O(start_clobber_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    start_clobber_i_5
       (.I0(slv_reg10[21]),
        .I1(slv_reg10[20]),
        .I2(slv_reg10[23]),
        .I3(slv_reg10[22]),
        .I4(start_clobber_i_9_n_0),
        .O(start_clobber_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    start_clobber_i_6
       (.I0(slv_reg10[10]),
        .I1(slv_reg10[11]),
        .I2(slv_reg10[8]),
        .I3(slv_reg10[9]),
        .O(start_clobber_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    start_clobber_i_7
       (.I0(slv_reg10[2]),
        .I1(slv_reg10[3]),
        .I2(slv_reg10[0]),
        .I3(slv_reg10[1]),
        .O(start_clobber_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    start_clobber_i_8
       (.I0(slv_reg10[26]),
        .I1(slv_reg10[27]),
        .I2(slv_reg10[24]),
        .I3(slv_reg10[25]),
        .O(start_clobber_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    start_clobber_i_9
       (.I0(slv_reg10[18]),
        .I1(slv_reg10[19]),
        .I2(slv_reg10[16]),
        .I3(slv_reg10[17]),
        .O(start_clobber_i_9_n_0));
  FDRE start_clobber_reg__0
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(start_clobber0_out),
        .Q(start_clobber),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hE0E000E0)) 
    start_clobber_reg_i_1
       (.I0(start_clobber_reg),
        .I1(start_clobber),
        .I2(m00_axi_aresetn),
        .I3(logclr_pulsegen),
        .I4(logclr_pulsegend1),
        .O(start_clobber_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    start_logclr_INST_0
       (.I0(logclr_pulsegen),
        .I1(logclr_pulsegend1),
        .O(start_logclr));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    start_redolog_INST_0
       (.I0(redolog_pulsegen),
        .I1(redolog_pulsegend1),
        .O(start_redolog));
  LUT3 #(
    .INIT(8'hF4)) 
    start_timer_i_1
       (.I0(logclr_pulsegend1),
        .I1(logclr_pulsegen),
        .I2(start_timer),
        .O(start_timer_i_1_n_0));
  FDRE start_timer_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(start_timer_i_1_n_0),
        .Q(start_timer),
        .R(clear));
  LUT4 #(
    .INIT(16'hAAEA)) 
    stop_timer_i_1
       (.I0(stop_timer_reg_n_0),
        .I1(\dataout[1] ),
        .I2(\dataout[0] ),
        .I3(\dataout[2] ),
        .O(stop_timer_i_1_n_0));
  FDRE stop_timer_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(stop_timer_i_1_n_0),
        .Q(stop_timer_reg_n_0),
        .R(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \time_cycles[63]_i_1 
       (.I0(start_timer),
        .I1(stop_timer_reg_n_0),
        .O(time_cycles0));
  FDRE \time_cycles_reg[0] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry_n_15 ),
        .Q(time_cycles[0]),
        .R(clear));
  FDRE \time_cycles_reg[10] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__0_n_13 ),
        .Q(time_cycles[10]),
        .R(clear));
  FDRE \time_cycles_reg[11] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__0_n_12 ),
        .Q(time_cycles[11]),
        .R(clear));
  FDRE \time_cycles_reg[12] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__0_n_11 ),
        .Q(time_cycles[12]),
        .R(clear));
  FDRE \time_cycles_reg[13] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__0_n_10 ),
        .Q(time_cycles[13]),
        .R(clear));
  FDRE \time_cycles_reg[14] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__0_n_9 ),
        .Q(time_cycles[14]),
        .R(clear));
  FDRE \time_cycles_reg[15] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__0_n_8 ),
        .Q(time_cycles[15]),
        .R(clear));
  FDRE \time_cycles_reg[16] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__1_n_15 ),
        .Q(time_cycles[16]),
        .R(clear));
  FDRE \time_cycles_reg[17] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__1_n_14 ),
        .Q(time_cycles[17]),
        .R(clear));
  FDRE \time_cycles_reg[18] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__1_n_13 ),
        .Q(time_cycles[18]),
        .R(clear));
  FDRE \time_cycles_reg[19] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__1_n_12 ),
        .Q(time_cycles[19]),
        .R(clear));
  FDRE \time_cycles_reg[1] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry_n_14 ),
        .Q(time_cycles[1]),
        .R(clear));
  FDRE \time_cycles_reg[20] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__1_n_11 ),
        .Q(time_cycles[20]),
        .R(clear));
  FDRE \time_cycles_reg[21] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__1_n_10 ),
        .Q(time_cycles[21]),
        .R(clear));
  FDRE \time_cycles_reg[22] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__1_n_9 ),
        .Q(time_cycles[22]),
        .R(clear));
  FDRE \time_cycles_reg[23] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__1_n_8 ),
        .Q(time_cycles[23]),
        .R(clear));
  FDRE \time_cycles_reg[24] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__2_n_15 ),
        .Q(time_cycles[24]),
        .R(clear));
  FDRE \time_cycles_reg[25] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__2_n_14 ),
        .Q(time_cycles[25]),
        .R(clear));
  FDRE \time_cycles_reg[26] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__2_n_13 ),
        .Q(time_cycles[26]),
        .R(clear));
  FDRE \time_cycles_reg[27] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__2_n_12 ),
        .Q(time_cycles[27]),
        .R(clear));
  FDRE \time_cycles_reg[28] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__2_n_11 ),
        .Q(time_cycles[28]),
        .R(clear));
  FDRE \time_cycles_reg[29] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__2_n_10 ),
        .Q(time_cycles[29]),
        .R(clear));
  FDRE \time_cycles_reg[2] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry_n_13 ),
        .Q(time_cycles[2]),
        .R(clear));
  FDRE \time_cycles_reg[30] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__2_n_9 ),
        .Q(time_cycles[30]),
        .R(clear));
  FDRE \time_cycles_reg[31] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__2_n_8 ),
        .Q(time_cycles[31]),
        .R(clear));
  FDRE \time_cycles_reg[32] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__3_n_15 ),
        .Q(time_cycles[32]),
        .R(clear));
  FDRE \time_cycles_reg[33] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__3_n_14 ),
        .Q(time_cycles[33]),
        .R(clear));
  FDRE \time_cycles_reg[34] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__3_n_13 ),
        .Q(time_cycles[34]),
        .R(clear));
  FDRE \time_cycles_reg[35] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__3_n_12 ),
        .Q(time_cycles[35]),
        .R(clear));
  FDRE \time_cycles_reg[36] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__3_n_11 ),
        .Q(time_cycles[36]),
        .R(clear));
  FDRE \time_cycles_reg[37] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__3_n_10 ),
        .Q(time_cycles[37]),
        .R(clear));
  FDRE \time_cycles_reg[38] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__3_n_9 ),
        .Q(time_cycles[38]),
        .R(clear));
  FDRE \time_cycles_reg[39] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__3_n_8 ),
        .Q(time_cycles[39]),
        .R(clear));
  FDRE \time_cycles_reg[3] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry_n_12 ),
        .Q(time_cycles[3]),
        .R(clear));
  FDRE \time_cycles_reg[40] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__4_n_15 ),
        .Q(time_cycles[40]),
        .R(clear));
  FDRE \time_cycles_reg[41] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__4_n_14 ),
        .Q(time_cycles[41]),
        .R(clear));
  FDRE \time_cycles_reg[42] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__4_n_13 ),
        .Q(time_cycles[42]),
        .R(clear));
  FDRE \time_cycles_reg[43] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__4_n_12 ),
        .Q(time_cycles[43]),
        .R(clear));
  FDRE \time_cycles_reg[44] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__4_n_11 ),
        .Q(time_cycles[44]),
        .R(clear));
  FDRE \time_cycles_reg[45] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__4_n_10 ),
        .Q(time_cycles[45]),
        .R(clear));
  FDRE \time_cycles_reg[46] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__4_n_9 ),
        .Q(time_cycles[46]),
        .R(clear));
  FDRE \time_cycles_reg[47] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__4_n_8 ),
        .Q(time_cycles[47]),
        .R(clear));
  FDRE \time_cycles_reg[48] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__5_n_15 ),
        .Q(time_cycles[48]),
        .R(clear));
  FDRE \time_cycles_reg[49] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__5_n_14 ),
        .Q(time_cycles[49]),
        .R(clear));
  FDRE \time_cycles_reg[4] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry_n_11 ),
        .Q(time_cycles[4]),
        .R(clear));
  FDRE \time_cycles_reg[50] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__5_n_13 ),
        .Q(time_cycles[50]),
        .R(clear));
  FDRE \time_cycles_reg[51] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__5_n_12 ),
        .Q(time_cycles[51]),
        .R(clear));
  FDRE \time_cycles_reg[52] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__5_n_11 ),
        .Q(time_cycles[52]),
        .R(clear));
  FDRE \time_cycles_reg[53] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__5_n_10 ),
        .Q(time_cycles[53]),
        .R(clear));
  FDRE \time_cycles_reg[54] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__5_n_9 ),
        .Q(time_cycles[54]),
        .R(clear));
  FDRE \time_cycles_reg[55] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__5_n_8 ),
        .Q(time_cycles[55]),
        .R(clear));
  FDRE \time_cycles_reg[56] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__6_n_15 ),
        .Q(time_cycles[56]),
        .R(clear));
  FDRE \time_cycles_reg[57] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__6_n_14 ),
        .Q(time_cycles[57]),
        .R(clear));
  FDRE \time_cycles_reg[58] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__6_n_13 ),
        .Q(time_cycles[58]),
        .R(clear));
  FDRE \time_cycles_reg[59] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__6_n_12 ),
        .Q(time_cycles[59]),
        .R(clear));
  FDRE \time_cycles_reg[5] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry_n_10 ),
        .Q(time_cycles[5]),
        .R(clear));
  FDRE \time_cycles_reg[60] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__6_n_11 ),
        .Q(time_cycles[60]),
        .R(clear));
  FDRE \time_cycles_reg[61] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__6_n_10 ),
        .Q(time_cycles[61]),
        .R(clear));
  FDRE \time_cycles_reg[62] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__6_n_9 ),
        .Q(time_cycles[62]),
        .R(clear));
  FDRE \time_cycles_reg[63] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__6_n_8 ),
        .Q(time_cycles[63]),
        .R(clear));
  FDRE \time_cycles_reg[6] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry_n_9 ),
        .Q(time_cycles[6]),
        .R(clear));
  FDRE \time_cycles_reg[7] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry_n_8 ),
        .Q(time_cycles[7]),
        .R(clear));
  FDRE \time_cycles_reg[8] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__0_n_15 ),
        .Q(time_cycles[8]),
        .R(clear));
  FDRE \time_cycles_reg[9] 
       (.C(s00_axi_aclk),
        .CE(time_cycles0),
        .D(\i_/i_/i__carry__0_n_14 ),
        .Q(time_cycles[9]),
        .R(clear));
  LUT2 #(
    .INIT(4'h2)) 
    ulog_offset0_carry__0_i_1
       (.I0(\ulog_offset[31] [29]),
        .I1(Q[13]),
        .O(\raddr_reg[31] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    ulog_offset0_carry__0_i_2
       (.I0(\ulog_offset[31] [28]),
        .I1(Q[12]),
        .O(\raddr_reg[31] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    ulog_offset0_carry__0_i_3
       (.I0(\ulog_offset[31] [27]),
        .I1(Q[11]),
        .O(\raddr_reg[31] [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    ulog_offset0_carry__0_i_4
       (.I0(Q[14]),
        .I1(\ulog_offset[31] [30]),
        .I2(Q[15]),
        .I3(\ulog_offset[31] [31]),
        .O(\raddr_reg[31]_2 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    ulog_offset0_carry__0_i_5
       (.I0(Q[13]),
        .I1(\ulog_offset[31] [29]),
        .I2(Q[14]),
        .I3(\ulog_offset[31] [30]),
        .O(\raddr_reg[31]_2 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    ulog_offset0_carry__0_i_6
       (.I0(Q[12]),
        .I1(\ulog_offset[31] [28]),
        .I2(Q[13]),
        .I3(\ulog_offset[31] [29]),
        .O(\raddr_reg[31]_2 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    ulog_offset0_carry__0_i_7
       (.I0(Q[11]),
        .I1(\ulog_offset[31] [27]),
        .I2(Q[12]),
        .I3(\ulog_offset[31] [28]),
        .O(\raddr_reg[31]_2 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    ulog_offset0_carry_i_1
       (.I0(\ulog_offset[31] [26]),
        .I1(Q[10]),
        .O(DI[6]));
  LUT4 #(
    .INIT(16'hB44B)) 
    ulog_offset0_carry_i_10
       (.I0(Q[8]),
        .I1(\ulog_offset[31] [24]),
        .I2(Q[9]),
        .I3(\ulog_offset[31] [25]),
        .O(\raddr_reg[27] [5]));
  LUT4 #(
    .INIT(16'hB44B)) 
    ulog_offset0_carry_i_11
       (.I0(Q[7]),
        .I1(\ulog_offset[31] [23]),
        .I2(Q[8]),
        .I3(\ulog_offset[31] [24]),
        .O(\raddr_reg[27] [4]));
  LUT4 #(
    .INIT(16'hB44B)) 
    ulog_offset0_carry_i_12
       (.I0(Q[6]),
        .I1(\ulog_offset[31] [22]),
        .I2(Q[7]),
        .I3(\ulog_offset[31] [23]),
        .O(\raddr_reg[27] [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    ulog_offset0_carry_i_13
       (.I0(Q[5]),
        .I1(\ulog_offset[31] [21]),
        .I2(Q[6]),
        .I3(\ulog_offset[31] [22]),
        .O(\raddr_reg[27] [2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    ulog_offset0_carry_i_14
       (.I0(Q[4]),
        .I1(\ulog_offset[31] [20]),
        .I2(Q[5]),
        .I3(\ulog_offset[31] [21]),
        .O(\raddr_reg[27] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    ulog_offset0_carry_i_15
       (.I0(\ulog_offset[31] [20]),
        .I1(Q[4]),
        .O(\raddr_reg[27] [0]));
  LUT2 #(
    .INIT(4'h2)) 
    ulog_offset0_carry_i_2
       (.I0(\ulog_offset[31] [25]),
        .I1(Q[9]),
        .O(DI[5]));
  LUT2 #(
    .INIT(4'h2)) 
    ulog_offset0_carry_i_3
       (.I0(\ulog_offset[31] [24]),
        .I1(Q[8]),
        .O(DI[4]));
  LUT2 #(
    .INIT(4'h2)) 
    ulog_offset0_carry_i_4
       (.I0(\ulog_offset[31] [23]),
        .I1(Q[7]),
        .O(DI[3]));
  LUT2 #(
    .INIT(4'h2)) 
    ulog_offset0_carry_i_5
       (.I0(\ulog_offset[31] [22]),
        .I1(Q[6]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h2)) 
    ulog_offset0_carry_i_6
       (.I0(\ulog_offset[31] [21]),
        .I1(Q[5]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'hB)) 
    ulog_offset0_carry_i_7
       (.I0(\ulog_offset[31] [20]),
        .I1(Q[4]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    ulog_offset0_carry_i_8
       (.I0(Q[10]),
        .I1(\ulog_offset[31] [26]),
        .I2(Q[11]),
        .I3(\ulog_offset[31] [27]),
        .O(\raddr_reg[27] [7]));
  LUT4 #(
    .INIT(16'hB44B)) 
    ulog_offset0_carry_i_9
       (.I0(Q[9]),
        .I1(\ulog_offset[31] [25]),
        .I2(Q[10]),
        .I3(\ulog_offset[31] [26]),
        .O(\raddr_reg[27] [6]));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[10]_i_5 
       (.I0(\ulog_offset[31] [4]),
        .O(\waddr[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \waddr[1]_i_1 
       (.I0(\undolog_v2_1_M02_AXI_inst/in27 ),
        .I1(out[1]),
        .I2(out[2]),
        .I3(\ulog_offset[31] [1]),
        .O(\waddr_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[2]_i_3 
       (.I0(\ulog_offset[31] [4]),
        .O(\waddr[2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[2]_i_4 
       (.I0(\ulog_offset[31] [2]),
        .O(\waddr[2]_i_4_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \waddr_reg[10]_i_4 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\waddr_reg[10]_i_4_n_0 ,\waddr_reg[10]_i_4_n_1 ,\waddr_reg[10]_i_4_n_2 ,\waddr_reg[10]_i_4_n_3 ,\NLW_waddr_reg[10]_i_4_CO_UNCONNECTED [3],\waddr_reg[10]_i_4_n_5 ,\waddr_reg[10]_i_4_n_6 ,\waddr_reg[10]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\ulog_offset[31] [4],1'b0}),
        .O(in26[7:0]),
        .S({\ulog_offset[31] [10:5],\waddr[10]_i_5_n_0 ,\ulog_offset[31] [3]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \waddr_reg[16]_i_4 
       (.CI(\waddr_reg[2]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\waddr_reg[16]_i_4_n_0 ,\waddr_reg[16]_i_4_n_1 ,\waddr_reg[16]_i_4_n_2 ,\waddr_reg[16]_i_4_n_3 ,\NLW_waddr_reg[16]_i_4_CO_UNCONNECTED [3],\waddr_reg[16]_i_4_n_5 ,\waddr_reg[16]_i_4_n_6 ,\waddr_reg[16]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\waddr_reg[31] [14:7]),
        .S(\ulog_offset[31] [16:9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \waddr_reg[18]_i_4 
       (.CI(\waddr_reg[10]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\waddr_reg[18]_i_4_n_0 ,\waddr_reg[18]_i_4_n_1 ,\waddr_reg[18]_i_4_n_2 ,\waddr_reg[18]_i_4_n_3 ,\NLW_waddr_reg[18]_i_4_CO_UNCONNECTED [3],\waddr_reg[18]_i_4_n_5 ,\waddr_reg[18]_i_4_n_6 ,\waddr_reg[18]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in26[15:8]),
        .S(\ulog_offset[31] [18:11]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \waddr_reg[24]_i_4 
       (.CI(\waddr_reg[16]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\waddr_reg[24]_i_4_n_0 ,\waddr_reg[24]_i_4_n_1 ,\waddr_reg[24]_i_4_n_2 ,\waddr_reg[24]_i_4_n_3 ,\NLW_waddr_reg[24]_i_4_CO_UNCONNECTED [3],\waddr_reg[24]_i_4_n_5 ,\waddr_reg[24]_i_4_n_6 ,\waddr_reg[24]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\waddr_reg[31] [22:15]),
        .S({\slv_reg0_reg[26]_0 ,\ulog_offset[31] [19:17]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \waddr_reg[26]_i_4 
       (.CI(\waddr_reg[18]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\waddr_reg[26]_i_4_n_0 ,\waddr_reg[26]_i_4_n_1 ,\waddr_reg[26]_i_4_n_2 ,\waddr_reg[26]_i_4_n_3 ,\NLW_waddr_reg[26]_i_4_CO_UNCONNECTED [3],\waddr_reg[26]_i_4_n_5 ,\waddr_reg[26]_i_4_n_6 ,\waddr_reg[26]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in26[23:16]),
        .S({\slv_reg0_reg[29]_0 [1:0],\slv_reg0_reg[26]_0 ,\ulog_offset[31] [19]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \waddr_reg[2]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\waddr_reg[2]_i_2_n_0 ,\waddr_reg[2]_i_2_n_1 ,\waddr_reg[2]_i_2_n_2 ,\waddr_reg[2]_i_2_n_3 ,\NLW_waddr_reg[2]_i_2_CO_UNCONNECTED [3],\waddr_reg[2]_i_2_n_5 ,\waddr_reg[2]_i_2_n_6 ,\waddr_reg[2]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\ulog_offset[31] [4],1'b0,\ulog_offset[31] [2],1'b0}),
        .O({\waddr_reg[31] [6:0],\NLW_waddr_reg[2]_i_2_O_UNCONNECTED [0]}),
        .S({\ulog_offset[31] [8:5],\waddr[2]_i_3_n_0 ,\ulog_offset[31] [3],\waddr[2]_i_4_n_0 ,\ulog_offset[31] [1]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \waddr_reg[31]_i_6 
       (.CI(\waddr_reg[24]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_waddr_reg[31]_i_6_CO_UNCONNECTED [7:6],\waddr_reg[31]_i_6_n_2 ,\waddr_reg[31]_i_6_n_3 ,\NLW_waddr_reg[31]_i_6_CO_UNCONNECTED [3],\waddr_reg[31]_i_6_n_5 ,\waddr_reg[31]_i_6_n_6 ,\waddr_reg[31]_i_6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_waddr_reg[31]_i_6_O_UNCONNECTED [7],\waddr_reg[31] [29:23]}),
        .S({1'b0,\slv_reg0_reg[29]_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \waddr_reg[31]_i_7 
       (.CI(\waddr_reg[26]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_waddr_reg[31]_i_7_CO_UNCONNECTED [7:3],\waddr_reg[31]_i_7_n_5 ,\waddr_reg[31]_i_7_n_6 ,\waddr_reg[31]_i_7_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_waddr_reg[31]_i_7_O_UNCONNECTED [7:5],in26[28:24]}),
        .S({1'b0,1'b0,1'b0,\slv_reg0_reg[29]_0 [6:2]}));
  LUT6 #(
    .INIT(64'hAAFF0CFFAAFF0C00)) 
    \wdata[0]_i_1 
       (.I0(\ulog_offset[31] [0]),
        .I1(\log_size[31] [0]),
        .I2(start_clobber_reg),
        .I3(\FSM_sequential_mst_exec_state_reg[0]_1 ),
        .I4(\FSM_sequential_mst_exec_state_reg[3]_0 ),
        .I5(\log_src[31] [0]),
        .O(\wdata_reg[0] ));
  LUT5 #(
    .INIT(32'hAFCFAFC0)) 
    \wdata[0]_i_1__0 
       (.I0(\ulog_offset[31] [0]),
        .I1(\log_size[31] [0]),
        .I2(\FSM_sequential_mst_exec_state_reg[0]_0 ),
        .I3(\FSM_sequential_mst_exec_state_reg[3] ),
        .I4(\log_src[31] [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[0]_i_2 
       (.I0(base_offset[0]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [0]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [0]),
        .O(\wdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[0]_i_3 
       (.I0(log_size[0]),
        .I1(out[1]),
        .I2(\log_size[31] [0]),
        .I3(out[0]),
        .I4(base_offset[32]),
        .O(\wdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[0]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[32]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[32]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [0]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[0]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[0]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[0]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[10]_i_2__1 
       (.I0(base_offset[10]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [10]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [10]),
        .O(\wdata[10]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[10]_i_3 
       (.I0(\ulog_offset[31] [10]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[8]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [10]),
        .O(\wdata_reg[10] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[10]_i_3__0 
       (.I0(log_size[10]),
        .I1(out[1]),
        .I2(\log_size[31] [10]),
        .I3(out[0]),
        .I4(base_offset[42]),
        .O(\wdata[10]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[10]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[42]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[42]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [10]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[10]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[10]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[10]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[11]_i_2__1 
       (.I0(base_offset[11]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [11]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [11]),
        .O(\wdata[11]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[11]_i_3 
       (.I0(\ulog_offset[31] [11]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[9]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [11]),
        .O(\wdata_reg[11] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[11]_i_3__0 
       (.I0(log_size[11]),
        .I1(out[1]),
        .I2(\log_size[31] [11]),
        .I3(out[0]),
        .I4(base_offset[43]),
        .O(\wdata[11]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[11]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[43]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[43]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [11]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[11]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[11]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[11]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[12]_i_2__1 
       (.I0(base_offset[12]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [12]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [12]),
        .O(\wdata[12]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[12]_i_3 
       (.I0(\ulog_offset[31] [12]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[10]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [12]),
        .O(\wdata_reg[12] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[12]_i_3__0 
       (.I0(log_size[12]),
        .I1(out[1]),
        .I2(\log_size[31] [12]),
        .I3(out[0]),
        .I4(base_offset[44]),
        .O(\wdata[12]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[12]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[44]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[44]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [12]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[12]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[12]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[12]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[13]_i_2__1 
       (.I0(base_offset[13]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [13]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [13]),
        .O(\wdata[13]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[13]_i_3 
       (.I0(\ulog_offset[31] [13]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[11]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [13]),
        .O(\wdata_reg[13] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[13]_i_3__0 
       (.I0(log_size[13]),
        .I1(out[1]),
        .I2(\log_size[31] [13]),
        .I3(out[0]),
        .I4(base_offset[45]),
        .O(\wdata[13]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[13]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[45]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[45]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [13]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[13]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[13]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[13]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[14]_i_2__1 
       (.I0(base_offset[14]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [14]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [14]),
        .O(\wdata[14]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[14]_i_3 
       (.I0(\ulog_offset[31] [14]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[12]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [14]),
        .O(\wdata_reg[14] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[14]_i_3__0 
       (.I0(log_size[14]),
        .I1(out[1]),
        .I2(\log_size[31] [14]),
        .I3(out[0]),
        .I4(base_offset[46]),
        .O(\wdata[14]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[14]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[46]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[46]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [14]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[14]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[14]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[14]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[15]_i_2__1 
       (.I0(base_offset[15]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [15]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [15]),
        .O(\wdata[15]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[15]_i_3 
       (.I0(\ulog_offset[31] [15]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[13]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [15]),
        .O(\wdata_reg[15] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[15]_i_3__0 
       (.I0(log_size[15]),
        .I1(out[1]),
        .I2(\log_size[31] [15]),
        .I3(out[0]),
        .I4(base_offset[47]),
        .O(\wdata[15]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[15]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[47]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[47]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [15]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[15]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[15]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[15]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[16]_i_2__1 
       (.I0(base_offset[16]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [16]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [16]),
        .O(\wdata[16]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[16]_i_3 
       (.I0(\ulog_offset[31] [16]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[14]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [16]),
        .O(\wdata_reg[16] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[16]_i_3__0 
       (.I0(log_size[16]),
        .I1(out[1]),
        .I2(\log_size[31] [16]),
        .I3(out[0]),
        .I4(base_offset[48]),
        .O(\wdata[16]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[16]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[48]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[48]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [16]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[16]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[16]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[16]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[17]_i_2__1 
       (.I0(base_offset[17]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [17]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [17]),
        .O(\wdata[17]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[17]_i_3 
       (.I0(\ulog_offset[31] [17]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[15]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [17]),
        .O(\wdata_reg[17] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[17]_i_3__0 
       (.I0(log_size[17]),
        .I1(out[1]),
        .I2(\log_size[31] [17]),
        .I3(out[0]),
        .I4(base_offset[49]),
        .O(\wdata[17]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[17]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[49]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[49]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [17]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[17]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[17]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[17]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[18]_i_2__1 
       (.I0(base_offset[18]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [18]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [18]),
        .O(\wdata[18]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[18]_i_3 
       (.I0(\ulog_offset[31] [18]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[16]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [18]),
        .O(\wdata_reg[18] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[18]_i_3__0 
       (.I0(log_size[18]),
        .I1(out[1]),
        .I2(\log_size[31] [18]),
        .I3(out[0]),
        .I4(base_offset[50]),
        .O(\wdata[18]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[18]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[50]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[50]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [18]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[18]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[18]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[18]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[19]_i_2__1 
       (.I0(base_offset[19]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [19]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [19]),
        .O(\wdata[19]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[19]_i_3 
       (.I0(\ulog_offset[31] [19]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[17]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [19]),
        .O(\wdata_reg[19] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[19]_i_3__0 
       (.I0(log_size[19]),
        .I1(out[1]),
        .I2(\log_size[31] [19]),
        .I3(out[0]),
        .I4(base_offset[51]),
        .O(\wdata[19]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[19]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[51]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[51]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [19]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[19]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[19]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[19]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata[1]_i_1__0 
       (.I0(\ulog_offset[31] [1]),
        .I1(\log_size[31] [1]),
        .I2(\FSM_sequential_mst_exec_state_reg[0]_0 ),
        .I3(\rdata_reg[1] ),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_src[31] [1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[1]_i_2__1 
       (.I0(base_offset[1]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [1]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [1]),
        .O(\wdata[1]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[1]_i_3 
       (.I0(log_size[1]),
        .I1(out[1]),
        .I2(\log_size[31] [1]),
        .I3(out[0]),
        .I4(base_offset[33]),
        .O(\wdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[1]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[33]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[33]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [1]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[1]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[1]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[1]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[20]_i_2__0 
       (.I0(base_offset[20]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [20]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [20]),
        .O(\wdata[20]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[20]_i_2__1 
       (.I0(\log_size[31] [20]),
        .I1(start_clobber_reg),
        .O(in13[0]));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[20]_i_3 
       (.I0(\slv_reg0_reg[26]_0 [0]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[18]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [20]),
        .O(\wdata_reg[20] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[20]_i_3__0 
       (.I0(log_size[20]),
        .I1(out[1]),
        .I2(\log_size[31] [20]),
        .I3(out[0]),
        .I4(base_offset[52]),
        .O(\wdata[20]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[20]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[52]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[52]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [20]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[20]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[20]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[20]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[21]_i_2__0 
       (.I0(base_offset[21]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [21]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [21]),
        .O(\wdata[21]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[21]_i_2__1 
       (.I0(\log_size[31] [21]),
        .I1(start_clobber_reg),
        .O(in13[1]));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[21]_i_3 
       (.I0(\slv_reg0_reg[26]_0 [1]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[19]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [21]),
        .O(\wdata_reg[21] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[21]_i_3__0 
       (.I0(log_size[21]),
        .I1(out[1]),
        .I2(\log_size[31] [21]),
        .I3(out[0]),
        .I4(base_offset[53]),
        .O(\wdata[21]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[21]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[53]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[53]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [21]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[21]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[21]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[21]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[22]_i_2__0 
       (.I0(base_offset[22]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [22]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [22]),
        .O(\wdata[22]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[22]_i_2__1 
       (.I0(\log_size[31] [22]),
        .I1(start_clobber_reg),
        .O(in13[2]));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[22]_i_3 
       (.I0(\slv_reg0_reg[26]_0 [2]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[20]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [22]),
        .O(\wdata_reg[22] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[22]_i_3__0 
       (.I0(log_size[22]),
        .I1(out[1]),
        .I2(\log_size[31] [22]),
        .I3(out[0]),
        .I4(base_offset[54]),
        .O(\wdata[22]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[22]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[54]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[54]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [22]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[22]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[22]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[22]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[23]_i_2__0 
       (.I0(base_offset[23]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [23]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [23]),
        .O(\wdata[23]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[23]_i_2__1 
       (.I0(\log_size[31] [23]),
        .I1(start_clobber_reg),
        .O(in13[3]));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[23]_i_3 
       (.I0(\slv_reg0_reg[26]_0 [3]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[21]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [23]),
        .O(\wdata_reg[23] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[23]_i_3__0 
       (.I0(log_size[23]),
        .I1(out[1]),
        .I2(\log_size[31] [23]),
        .I3(out[0]),
        .I4(base_offset[55]),
        .O(\wdata[23]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[23]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[55]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[55]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [23]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[23]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[23]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[23]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[24]_i_2__0 
       (.I0(base_offset[24]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [24]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [24]),
        .O(\wdata[24]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[24]_i_2__1 
       (.I0(\log_size[31] [24]),
        .I1(start_clobber_reg),
        .O(in13[4]));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[24]_i_3 
       (.I0(\slv_reg0_reg[26]_0 [4]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[22]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [24]),
        .O(\wdata_reg[24] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[24]_i_3__0 
       (.I0(log_size[24]),
        .I1(out[1]),
        .I2(\log_size[31] [24]),
        .I3(out[0]),
        .I4(base_offset[56]),
        .O(\wdata[24]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[24]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[56]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[56]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [24]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[24]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[24]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[24]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [24]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[25]_i_2__0 
       (.I0(base_offset[25]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [25]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [25]),
        .O(\wdata[25]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[25]_i_2__1 
       (.I0(\log_size[31] [25]),
        .I1(start_clobber_reg),
        .O(in13[5]));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[25]_i_3 
       (.I0(\slv_reg0_reg[29]_0 [0]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[23]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [25]),
        .O(\wdata_reg[25] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[25]_i_3__0 
       (.I0(log_size[25]),
        .I1(out[1]),
        .I2(\log_size[31] [25]),
        .I3(out[0]),
        .I4(base_offset[57]),
        .O(\wdata[25]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[25]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[57]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[57]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [25]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[25]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[25]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[25]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [25]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[26]_i_2__0 
       (.I0(base_offset[26]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [26]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [26]),
        .O(\wdata[26]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[26]_i_2__1 
       (.I0(\log_size[31] [26]),
        .I1(start_clobber_reg),
        .O(in13[6]));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[26]_i_3 
       (.I0(\slv_reg0_reg[29]_0 [1]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[24]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [26]),
        .O(\wdata_reg[26] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[26]_i_3__0 
       (.I0(log_size[26]),
        .I1(out[1]),
        .I2(\log_size[31] [26]),
        .I3(out[0]),
        .I4(base_offset[58]),
        .O(\wdata[26]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[26]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[58]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[58]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [26]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[26]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[26]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[26]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[27]_i_2__0 
       (.I0(base_offset[27]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [27]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [27]),
        .O(\wdata[27]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[27]_i_2__1 
       (.I0(\log_size[31] [27]),
        .I1(start_clobber_reg),
        .O(in13[7]));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[27]_i_3 
       (.I0(\slv_reg0_reg[29]_0 [2]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[25]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [27]),
        .O(\wdata_reg[27]_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[27]_i_3__0 
       (.I0(log_size[27]),
        .I1(out[1]),
        .I2(\log_size[31] [27]),
        .I3(out[0]),
        .I4(base_offset[59]),
        .O(\wdata[27]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[27]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[59]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[59]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [27]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[27]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[27]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[27]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [27]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[28]_i_2__0 
       (.I0(base_offset[28]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [28]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [28]),
        .O(\wdata[28]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[28]_i_3 
       (.I0(\slv_reg0_reg[29]_0 [3]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[26]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [28]),
        .O(\wdata_reg[28] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[28]_i_3__0 
       (.I0(log_size[28]),
        .I1(out[1]),
        .I2(\log_size[31] [28]),
        .I3(out[0]),
        .I4(base_offset[60]),
        .O(\wdata[28]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[28]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[60]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[60]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [28]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[28]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[28]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[28]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [28]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[29]_i_2__0 
       (.I0(base_offset[29]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [29]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [29]),
        .O(\wdata[29]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[29]_i_3 
       (.I0(\slv_reg0_reg[29]_0 [4]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[27]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [29]),
        .O(\wdata_reg[29] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[29]_i_3__0 
       (.I0(log_size[29]),
        .I1(out[1]),
        .I2(\log_size[31] [29]),
        .I3(out[0]),
        .I4(base_offset[61]),
        .O(\wdata[29]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[29]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[61]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[61]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [29]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[29]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[29]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[29]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [29]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[2]_i_2__1 
       (.I0(base_offset[2]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [2]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [2]),
        .O(\wdata[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[2]_i_3 
       (.I0(\ulog_offset[31] [2]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[0]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [2]),
        .O(\wdata_reg[2] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[2]_i_3__0 
       (.I0(log_size[2]),
        .I1(out[1]),
        .I2(\log_size[31] [2]),
        .I3(out[0]),
        .I4(base_offset[34]),
        .O(\wdata[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[2]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[34]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[34]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [2]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[2]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[2]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[2]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[30]_i_2__0 
       (.I0(base_offset[30]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [30]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [30]),
        .O(\wdata[30]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[30]_i_3 
       (.I0(\slv_reg0_reg[29]_0 [5]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[28]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [30]),
        .O(\wdata_reg[30] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[30]_i_3__0 
       (.I0(log_size[30]),
        .I1(out[1]),
        .I2(\log_size[31] [30]),
        .I3(out[0]),
        .I4(base_offset[62]),
        .O(\wdata[30]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[30]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[62]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[62]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [30]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[30]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[30]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[30]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [30]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[31]_i_2__1 
       (.I0(base_offset[31]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [31]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [31]),
        .O(\wdata[31]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[31]_i_3__1 
       (.I0(log_size[31]),
        .I1(out[1]),
        .I2(\log_size[31] [31]),
        .I3(out[0]),
        .I4(base_offset[63]),
        .O(\wdata[31]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[31]_i_4 
       (.I0(\slv_reg0_reg[29]_0 [6]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[29]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [31]),
        .O(\wdata_reg[31] ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[31]_i_4__0 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[63]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[63]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [31]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[31]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[31]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[31]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [31]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[3]_i_2__1 
       (.I0(base_offset[3]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [3]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [3]),
        .O(\wdata[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[3]_i_3 
       (.I0(\ulog_offset[31] [3]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[1]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [3]),
        .O(\wdata_reg[3] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[3]_i_3__0 
       (.I0(log_size[3]),
        .I1(out[1]),
        .I2(\log_size[31] [3]),
        .I3(out[0]),
        .I4(base_offset[35]),
        .O(\wdata[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[3]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[35]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[35]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [3]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[3]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[3]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[3]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[4]_i_2__1 
       (.I0(base_offset[4]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [4]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [4]),
        .O(\wdata[4]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[4]_i_3 
       (.I0(\ulog_offset[31] [4]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[2]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [4]),
        .O(\wdata_reg[4] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[4]_i_3__0 
       (.I0(log_size[4]),
        .I1(out[1]),
        .I2(\log_size[31] [4]),
        .I3(out[0]),
        .I4(base_offset[36]),
        .O(\wdata[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[4]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[36]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[36]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [4]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[4]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[4]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[4]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[5]_i_2__1 
       (.I0(base_offset[5]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [5]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [5]),
        .O(\wdata[5]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[5]_i_3 
       (.I0(\ulog_offset[31] [5]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[3]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [5]),
        .O(\wdata_reg[5] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[5]_i_3__0 
       (.I0(log_size[5]),
        .I1(out[1]),
        .I2(\log_size[31] [5]),
        .I3(out[0]),
        .I4(base_offset[37]),
        .O(\wdata[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[5]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[37]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[37]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [5]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[5]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[5]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[5]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[6]_i_2__1 
       (.I0(base_offset[6]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [6]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [6]),
        .O(\wdata[6]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[6]_i_3 
       (.I0(\ulog_offset[31] [6]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[4]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [6]),
        .O(\wdata_reg[6] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[6]_i_3__0 
       (.I0(log_size[6]),
        .I1(out[1]),
        .I2(\log_size[31] [6]),
        .I3(out[0]),
        .I4(base_offset[38]),
        .O(\wdata[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[6]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[38]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[38]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [6]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[6]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[6]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[6]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[7]_i_2__1 
       (.I0(base_offset[7]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [7]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [7]),
        .O(\wdata[7]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[7]_i_3 
       (.I0(\ulog_offset[31] [7]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[5]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [7]),
        .O(\wdata_reg[7] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[7]_i_3__0 
       (.I0(log_size[7]),
        .I1(out[1]),
        .I2(\log_size[31] [7]),
        .I3(out[0]),
        .I4(base_offset[39]),
        .O(\wdata[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[7]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[39]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[39]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [7]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[7]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[7]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[7]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[8]_i_2__1 
       (.I0(base_offset[8]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [8]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [8]),
        .O(\wdata[8]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[8]_i_3 
       (.I0(\ulog_offset[31] [8]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[6]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [8]),
        .O(\wdata_reg[8] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[8]_i_3__0 
       (.I0(log_size[8]),
        .I1(out[1]),
        .I2(\log_size[31] [8]),
        .I3(out[0]),
        .I4(base_offset[40]),
        .O(\wdata[8]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[8]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[40]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[40]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [8]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[8]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[8]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[8]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata[9]_i_2__1 
       (.I0(base_offset[9]),
        .I1(out[0]),
        .I2(\undolog_v2_1_M02_AXI_inst/in20 [9]),
        .I3(out[1]),
        .I4(\undolog_v2_1_M02_AXI_inst/in19 [9]),
        .O(\wdata[9]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \wdata[9]_i_3 
       (.I0(\ulog_offset[31] [9]),
        .I1(\operation_type[1] [1]),
        .I2(\operation_type[1] [0]),
        .I3(DMA_DEST1[7]),
        .I4(\FSM_sequential_mst_exec_state_reg[3] ),
        .I5(\log_size[31] [9]),
        .O(\wdata_reg[9]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata[9]_i_3__0 
       (.I0(log_size[9]),
        .I1(out[1]),
        .I2(\log_size[31] [9]),
        .I3(out[0]),
        .I4(base_offset[41]),
        .O(\wdata[9]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[9]_i_4 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[41]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[41]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in20 [9]));
  LUT6 #(
    .INIT(64'h0000000011511000)) 
    \wdata[9]_i_5 
       (.I0(\log_src[63] [28]),
        .I1(\log_src[63] [29]),
        .I2(redolog_dest_data[9]),
        .I3(\log_src[63] [30]),
        .I4(redolog_src_data[9]),
        .I5(\log_src[63] [31]),
        .O(\undolog_v2_1_M02_AXI_inst/in19 [9]));
  MUXF7 \wdata_reg[0]_i_1 
       (.I0(\wdata[0]_i_2_n_0 ),
        .I1(\wdata[0]_i_3_n_0 ),
        .O(\wdata_reg[31]_0 [0]),
        .S(out[2]));
  MUXF7 \wdata_reg[10]_i_1__0 
       (.I0(\wdata[10]_i_2__1_n_0 ),
        .I1(\wdata[10]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [10]),
        .S(out[2]));
  MUXF7 \wdata_reg[11]_i_1__0 
       (.I0(\wdata[11]_i_2__1_n_0 ),
        .I1(\wdata[11]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [11]),
        .S(out[2]));
  MUXF7 \wdata_reg[12]_i_1__0 
       (.I0(\wdata[12]_i_2__1_n_0 ),
        .I1(\wdata[12]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [12]),
        .S(out[2]));
  MUXF7 \wdata_reg[13]_i_1__0 
       (.I0(\wdata[13]_i_2__1_n_0 ),
        .I1(\wdata[13]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [13]),
        .S(out[2]));
  MUXF7 \wdata_reg[14]_i_1__0 
       (.I0(\wdata[14]_i_2__1_n_0 ),
        .I1(\wdata[14]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [14]),
        .S(out[2]));
  MUXF7 \wdata_reg[15]_i_1__0 
       (.I0(\wdata[15]_i_2__1_n_0 ),
        .I1(\wdata[15]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [15]),
        .S(out[2]));
  MUXF7 \wdata_reg[16]_i_1__0 
       (.I0(\wdata[16]_i_2__1_n_0 ),
        .I1(\wdata[16]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [16]),
        .S(out[2]));
  MUXF7 \wdata_reg[17]_i_1__0 
       (.I0(\wdata[17]_i_2__1_n_0 ),
        .I1(\wdata[17]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [17]),
        .S(out[2]));
  MUXF7 \wdata_reg[18]_i_1__0 
       (.I0(\wdata[18]_i_2__1_n_0 ),
        .I1(\wdata[18]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [18]),
        .S(out[2]));
  MUXF7 \wdata_reg[19]_i_1__0 
       (.I0(\wdata[19]_i_2__1_n_0 ),
        .I1(\wdata[19]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [19]),
        .S(out[2]));
  MUXF7 \wdata_reg[1]_i_1 
       (.I0(\wdata[1]_i_2__1_n_0 ),
        .I1(\wdata[1]_i_3_n_0 ),
        .O(\wdata_reg[31]_0 [1]),
        .S(out[2]));
  MUXF7 \wdata_reg[20]_i_1__0 
       (.I0(\wdata[20]_i_2__0_n_0 ),
        .I1(\wdata[20]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [20]),
        .S(out[2]));
  MUXF7 \wdata_reg[21]_i_1__0 
       (.I0(\wdata[21]_i_2__0_n_0 ),
        .I1(\wdata[21]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [21]),
        .S(out[2]));
  MUXF7 \wdata_reg[22]_i_1__0 
       (.I0(\wdata[22]_i_2__0_n_0 ),
        .I1(\wdata[22]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [22]),
        .S(out[2]));
  MUXF7 \wdata_reg[23]_i_1__0 
       (.I0(\wdata[23]_i_2__0_n_0 ),
        .I1(\wdata[23]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [23]),
        .S(out[2]));
  MUXF7 \wdata_reg[24]_i_1__0 
       (.I0(\wdata[24]_i_2__0_n_0 ),
        .I1(\wdata[24]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [24]),
        .S(out[2]));
  MUXF7 \wdata_reg[25]_i_1__0 
       (.I0(\wdata[25]_i_2__0_n_0 ),
        .I1(\wdata[25]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [25]),
        .S(out[2]));
  MUXF7 \wdata_reg[26]_i_1__0 
       (.I0(\wdata[26]_i_2__0_n_0 ),
        .I1(\wdata[26]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [26]),
        .S(out[2]));
  MUXF7 \wdata_reg[27]_i_1__0 
       (.I0(\wdata[27]_i_2__0_n_0 ),
        .I1(\wdata[27]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [27]),
        .S(out[2]));
  MUXF7 \wdata_reg[28]_i_1__0 
       (.I0(\wdata[28]_i_2__0_n_0 ),
        .I1(\wdata[28]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [28]),
        .S(out[2]));
  MUXF7 \wdata_reg[29]_i_1__0 
       (.I0(\wdata[29]_i_2__0_n_0 ),
        .I1(\wdata[29]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [29]),
        .S(out[2]));
  MUXF7 \wdata_reg[2]_i_1__0 
       (.I0(\wdata[2]_i_2__1_n_0 ),
        .I1(\wdata[2]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [2]),
        .S(out[2]));
  MUXF7 \wdata_reg[30]_i_1__0 
       (.I0(\wdata[30]_i_2__0_n_0 ),
        .I1(\wdata[30]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [30]),
        .S(out[2]));
  MUXF7 \wdata_reg[31]_i_1__0 
       (.I0(\wdata[31]_i_2__1_n_0 ),
        .I1(\wdata[31]_i_3__1_n_0 ),
        .O(\wdata_reg[31]_0 [31]),
        .S(out[2]));
  MUXF7 \wdata_reg[3]_i_1__0 
       (.I0(\wdata[3]_i_2__1_n_0 ),
        .I1(\wdata[3]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [3]),
        .S(out[2]));
  MUXF7 \wdata_reg[4]_i_1__0 
       (.I0(\wdata[4]_i_2__1_n_0 ),
        .I1(\wdata[4]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [4]),
        .S(out[2]));
  MUXF7 \wdata_reg[5]_i_1__0 
       (.I0(\wdata[5]_i_2__1_n_0 ),
        .I1(\wdata[5]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [5]),
        .S(out[2]));
  MUXF7 \wdata_reg[6]_i_1__0 
       (.I0(\wdata[6]_i_2__1_n_0 ),
        .I1(\wdata[6]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [6]),
        .S(out[2]));
  MUXF7 \wdata_reg[7]_i_1__0 
       (.I0(\wdata[7]_i_2__1_n_0 ),
        .I1(\wdata[7]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [7]),
        .S(out[2]));
  MUXF7 \wdata_reg[8]_i_1__0 
       (.I0(\wdata[8]_i_2__1_n_0 ),
        .I1(\wdata[8]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [8]),
        .S(out[2]));
  MUXF7 \wdata_reg[9]_i_1__0 
       (.I0(\wdata[9]_i_2__1_n_0 ),
        .I1(\wdata[9]_i_3__0_n_0 ),
        .O(\wdata_reg[31]_0 [9]),
        .S(out[2]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
