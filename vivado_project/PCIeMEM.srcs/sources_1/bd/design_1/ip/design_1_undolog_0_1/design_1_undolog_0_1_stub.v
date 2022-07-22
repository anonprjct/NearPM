// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri May 21 15:35:12 2021
// Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_undolog_0_1 -prefix
//               design_1_undolog_0_1_ design_1_undolog_0_0_stub.v
// Design      : design_1_undolog_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "undolog_v2_1,Vivado 2018.2" *)
module design_1_undolog_0_1(memclr_state, metadatacpy_state, 
  datacpy_state, m01_axi_awaddr, m01_axi_awprot, m01_axi_awvalid, m01_axi_awready, 
  m01_axi_wdata, m01_axi_wstrb, m01_axi_wvalid, m01_axi_wready, m01_axi_bresp, 
  m01_axi_bvalid, m01_axi_bready, m01_axi_araddr, m01_axi_arprot, m01_axi_arvalid, 
  m01_axi_arready, m01_axi_rdata, m01_axi_rresp, m01_axi_rvalid, m01_axi_rready, 
  m01_axi_aclk, m01_axi_aresetn, m01_axi_init_axi_txn, m01_axi_error, m01_axi_txn_done, 
  m02_axi_awaddr, m02_axi_awprot, m02_axi_awvalid, m02_axi_awready, m02_axi_wdata, 
  m02_axi_wstrb, m02_axi_wvalid, m02_axi_wready, m02_axi_bresp, m02_axi_bvalid, 
  m02_axi_bready, m02_axi_araddr, m02_axi_arprot, m02_axi_arvalid, m02_axi_arready, 
  m02_axi_rdata, m02_axi_rresp, m02_axi_rvalid, m02_axi_rready, start_ulog, start_logclr, 
  metadata_done, memclr_done, dataout, datacpy_done, ulog_offset, base_offset, log_src, log_size, 
  time_cycles, logclr_done_reg, reg_init_complete, vaddr_offset, physical_src_addr, 
  physical_dest_addr, start_redolog, operation_type, redolog_src_data, redolog_dest_data, 
  raddr, rdata, waddr, wdata, data_copy_pulse, regout, m02_axi_aclk, m02_axi_aresetn, 
  m02_axi_init_axi_txn, m02_axi_error, m02_axi_txn_done, s00_axi_awaddr, s00_axi_awprot, 
  s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, 
  s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, 
  s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, 
  s00_axi_rvalid, s00_axi_rready, s00_axi_aclk, s00_axi_aresetn, m00_axi_awaddr, 
  m00_axi_awprot, m00_axi_awvalid, m00_axi_awready, m00_axi_wdata, m00_axi_wstrb, 
  m00_axi_wvalid, m00_axi_wready, m00_axi_bresp, m00_axi_bvalid, m00_axi_bready, 
  m00_axi_araddr, m00_axi_arprot, m00_axi_arvalid, m00_axi_arready, m00_axi_rdata, 
  m00_axi_rresp, m00_axi_rvalid, m00_axi_rready, m00_axi_aclk, m00_axi_aresetn, 
  m00_axi_init_axi_txn, m00_axi_error, m00_axi_txn_done)
/* synthesis syn_black_box black_box_pad_pin="memclr_state[3:0],metadatacpy_state[3:0],datacpy_state[3:0],m01_axi_awaddr[31:0],m01_axi_awprot[2:0],m01_axi_awvalid,m01_axi_awready,m01_axi_wdata[31:0],m01_axi_wstrb[3:0],m01_axi_wvalid,m01_axi_wready,m01_axi_bresp[1:0],m01_axi_bvalid,m01_axi_bready,m01_axi_araddr[31:0],m01_axi_arprot[2:0],m01_axi_arvalid,m01_axi_arready,m01_axi_rdata[31:0],m01_axi_rresp[1:0],m01_axi_rvalid,m01_axi_rready,m01_axi_aclk,m01_axi_aresetn,m01_axi_init_axi_txn,m01_axi_error,m01_axi_txn_done,m02_axi_awaddr[31:0],m02_axi_awprot[2:0],m02_axi_awvalid,m02_axi_awready,m02_axi_wdata[31:0],m02_axi_wstrb[3:0],m02_axi_wvalid,m02_axi_wready,m02_axi_bresp[1:0],m02_axi_bvalid,m02_axi_bready,m02_axi_araddr[31:0],m02_axi_arprot[2:0],m02_axi_arvalid,m02_axi_arready,m02_axi_rdata[31:0],m02_axi_rresp[1:0],m02_axi_rvalid,m02_axi_rready,start_ulog,start_logclr,metadata_done,memclr_done,dataout[31:0],datacpy_done,ulog_offset[63:0],base_offset[63:0],log_src[63:0],log_size[63:0],time_cycles[63:0],logclr_done_reg,reg_init_complete,vaddr_offset[27:0],physical_src_addr[31:0],physical_dest_addr[31:0],start_redolog,operation_type[2:0],redolog_src_data[63:0],redolog_dest_data[63:0],raddr[31:0],rdata[31:0],waddr[31:0],wdata[31:0],data_copy_pulse,regout[31:0],m02_axi_aclk,m02_axi_aresetn,m02_axi_init_axi_txn,m02_axi_error,m02_axi_txn_done,s00_axi_awaddr[5:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[5:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn,m00_axi_awaddr[31:0],m00_axi_awprot[2:0],m00_axi_awvalid,m00_axi_awready,m00_axi_wdata[31:0],m00_axi_wstrb[3:0],m00_axi_wvalid,m00_axi_wready,m00_axi_bresp[1:0],m00_axi_bvalid,m00_axi_bready,m00_axi_araddr[31:0],m00_axi_arprot[2:0],m00_axi_arvalid,m00_axi_arready,m00_axi_rdata[31:0],m00_axi_rresp[1:0],m00_axi_rvalid,m00_axi_rready,m00_axi_aclk,m00_axi_aresetn,m00_axi_init_axi_txn,m00_axi_error,m00_axi_txn_done" */;
  output [3:0]memclr_state;
  output [3:0]metadatacpy_state;
  output [3:0]datacpy_state;
  output [31:0]m01_axi_awaddr;
  output [2:0]m01_axi_awprot;
  output m01_axi_awvalid;
  input m01_axi_awready;
  output [31:0]m01_axi_wdata;
  output [3:0]m01_axi_wstrb;
  output m01_axi_wvalid;
  input m01_axi_wready;
  input [1:0]m01_axi_bresp;
  input m01_axi_bvalid;
  output m01_axi_bready;
  output [31:0]m01_axi_araddr;
  output [2:0]m01_axi_arprot;
  output m01_axi_arvalid;
  input m01_axi_arready;
  input [31:0]m01_axi_rdata;
  input [1:0]m01_axi_rresp;
  input m01_axi_rvalid;
  output m01_axi_rready;
  input m01_axi_aclk;
  input m01_axi_aresetn;
  input m01_axi_init_axi_txn;
  output m01_axi_error;
  output m01_axi_txn_done;
  output [31:0]m02_axi_awaddr;
  output [2:0]m02_axi_awprot;
  output m02_axi_awvalid;
  input m02_axi_awready;
  output [31:0]m02_axi_wdata;
  output [3:0]m02_axi_wstrb;
  output m02_axi_wvalid;
  input m02_axi_wready;
  input [1:0]m02_axi_bresp;
  input m02_axi_bvalid;
  output m02_axi_bready;
  output [31:0]m02_axi_araddr;
  output [2:0]m02_axi_arprot;
  output m02_axi_arvalid;
  input m02_axi_arready;
  input [31:0]m02_axi_rdata;
  input [1:0]m02_axi_rresp;
  input m02_axi_rvalid;
  output m02_axi_rready;
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
  input m02_axi_aclk;
  input m02_axi_aresetn;
  input m02_axi_init_axi_txn;
  output m02_axi_error;
  output m02_axi_txn_done;
  input [5:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [5:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  output [31:0]m00_axi_awaddr;
  output [2:0]m00_axi_awprot;
  output m00_axi_awvalid;
  input m00_axi_awready;
  output [31:0]m00_axi_wdata;
  output [3:0]m00_axi_wstrb;
  output m00_axi_wvalid;
  input m00_axi_wready;
  input [1:0]m00_axi_bresp;
  input m00_axi_bvalid;
  output m00_axi_bready;
  output [31:0]m00_axi_araddr;
  output [2:0]m00_axi_arprot;
  output m00_axi_arvalid;
  input m00_axi_arready;
  input [31:0]m00_axi_rdata;
  input [1:0]m00_axi_rresp;
  input m00_axi_rvalid;
  output m00_axi_rready;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  input m00_axi_init_axi_txn;
  output m00_axi_error;
  output m00_axi_txn_done;
endmodule
