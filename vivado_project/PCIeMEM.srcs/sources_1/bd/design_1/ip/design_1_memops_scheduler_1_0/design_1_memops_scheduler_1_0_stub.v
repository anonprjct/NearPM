// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Thu Jul 22 15:58:11 2021
// Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/ip/design_1_memops_scheduler_1_0/design_1_memops_scheduler_1_0_stub.v
// Design      : design_1_memops_scheduler_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "memops_scheduler_v1_1,Vivado 2018.2" *)
module design_1_memops_scheduler_1_0(m05_axi_awaddr, m05_axi_awprot, 
  m05_axi_awvalid, m05_axi_awready, m05_axi_wdata, m05_axi_wstrb, m05_axi_wvalid, 
  m05_axi_wready, m05_axi_bresp, m05_axi_bvalid, m05_axi_bready, m05_axi_araddr, 
  m05_axi_arprot, m05_axi_arvalid, m05_axi_arready, m05_axi_rdata, m05_axi_rresp, 
  m05_axi_rvalid, m05_axi_rready, m02_axi_awaddr, m02_axi_awprot, m02_axi_awvalid, 
  m02_axi_awready, m02_axi_wdata, m02_axi_wstrb, m02_axi_wvalid, m02_axi_wready, 
  m02_axi_bresp, m02_axi_bvalid, m02_axi_bready, m02_axi_araddr, m02_axi_arprot, 
  m02_axi_arvalid, m02_axi_arready, m02_axi_rdata, m02_axi_rresp, m02_axi_rvalid, 
  m02_axi_rready, m03_axi_aclk, m00_axi_awaddr, m00_axi_awprot, m00_axi_awvalid, 
  m00_axi_awready, m00_axi_wdata, m00_axi_wstrb, m00_axi_wvalid, m00_axi_wready, 
  m00_axi_bresp, m00_axi_bvalid, m00_axi_bready, m00_axi_araddr, m00_axi_arprot, 
  m00_axi_arvalid, m00_axi_arready, m00_axi_rdata, m00_axi_rresp, m00_axi_rvalid, 
  m00_axi_rready, m01_axi_aclk, m00_axi_aclk, m00_axi_aresetn, m07_axi_awaddr, 
  m07_axi_awprot, m07_axi_awvalid, m07_axi_awready, m07_axi_wdata, m07_axi_wstrb, 
  m07_axi_wvalid, m07_axi_wready, m07_axi_bresp, m07_axi_bvalid, m07_axi_bready, 
  m07_axi_araddr, m07_axi_arprot, m07_axi_arvalid, m07_axi_arready, m07_axi_rdata, 
  m07_axi_rresp, m07_axi_rvalid, m07_axi_rready, write_ptr, read_ptr, ndp_done, ndp_status, 
  done_count, start_count, mst_exec_state, ndp_start, time_cycles, ulog_offset, base_offset, 
  log_src, log_size, regout, max_write_read_diff, offset_read_enable, offset_read_addr, offset, 
  offset_valid, offset_reg, lut_read_latency, operation_type, redo_log_assigned, 
  has_dependence, started_logs, ndp_not_inuse, ndp_status_reg, fifo_entry_valid, count_ones, 
  axi_awaddr_in, axi_awvalid_in, write_conflict, stall_proc, stall_addr, offset_reg1, 
  offset_reg2, vaddr_offset_count, ulog_offset_reg, base_offset_reg, log_src_reg, 
  log_size_reg, offset_reg1_valid, offset_reg2_valid, m06_axi_awaddr, m06_axi_awprot, 
  m06_axi_awvalid, m06_axi_awready, m06_axi_wdata, m06_axi_wstrb, m06_axi_wvalid, 
  m06_axi_wready, m06_axi_bresp, m06_axi_bvalid, m06_axi_bready, m06_axi_araddr, 
  m06_axi_arprot, m06_axi_arvalid, m06_axi_arready, m06_axi_rdata, m06_axi_rresp, 
  m06_axi_rvalid, m06_axi_rready, m04_axi_awaddr, m04_axi_awprot, m04_axi_awvalid, 
  m04_axi_awready, m04_axi_wdata, m04_axi_wstrb, m04_axi_wvalid, m04_axi_wready, 
  m04_axi_bresp, m04_axi_bvalid, m04_axi_bready, m04_axi_araddr, m04_axi_arprot, 
  m04_axi_arvalid, m04_axi_arready, m04_axi_rdata, m04_axi_rresp, m04_axi_rvalid, 
  m04_axi_rready, m03_axi_awaddr, m03_axi_awprot, m03_axi_awvalid, m03_axi_awready, 
  m03_axi_wdata, m03_axi_wstrb, m03_axi_wvalid, m03_axi_wready, m03_axi_bresp, 
  m03_axi_bvalid, m03_axi_bready, m03_axi_araddr, m03_axi_arprot, m03_axi_arvalid, 
  m03_axi_arready, m03_axi_rdata, m03_axi_rresp, m03_axi_rvalid, m03_axi_rready, 
  m01_axi_awaddr, m01_axi_awprot, m01_axi_awvalid, m01_axi_awready, m01_axi_wdata, 
  m01_axi_wstrb, m01_axi_wvalid, m01_axi_wready, m01_axi_bresp, m01_axi_bvalid, 
  m01_axi_bready, m01_axi_araddr, m01_axi_arprot, m01_axi_arvalid, m01_axi_arready, 
  m01_axi_rdata, m01_axi_rresp, m01_axi_rvalid, m01_axi_rready, m02_axi_aclk, s00_axi_awaddr, 
  s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, 
  s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, 
  s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, 
  s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, s00_axi_aclk, s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="m05_axi_awaddr[31:0],m05_axi_awprot[2:0],m05_axi_awvalid,m05_axi_awready,m05_axi_wdata[31:0],m05_axi_wstrb[3:0],m05_axi_wvalid,m05_axi_wready,m05_axi_bresp[1:0],m05_axi_bvalid,m05_axi_bready,m05_axi_araddr[31:0],m05_axi_arprot[2:0],m05_axi_arvalid,m05_axi_arready,m05_axi_rdata[31:0],m05_axi_rresp[1:0],m05_axi_rvalid,m05_axi_rready,m02_axi_awaddr[31:0],m02_axi_awprot[2:0],m02_axi_awvalid,m02_axi_awready,m02_axi_wdata[31:0],m02_axi_wstrb[3:0],m02_axi_wvalid,m02_axi_wready,m02_axi_bresp[1:0],m02_axi_bvalid,m02_axi_bready,m02_axi_araddr[31:0],m02_axi_arprot[2:0],m02_axi_arvalid,m02_axi_arready,m02_axi_rdata[31:0],m02_axi_rresp[1:0],m02_axi_rvalid,m02_axi_rready,m03_axi_aclk,m00_axi_awaddr[31:0],m00_axi_awprot[2:0],m00_axi_awvalid,m00_axi_awready,m00_axi_wdata[31:0],m00_axi_wstrb[3:0],m00_axi_wvalid,m00_axi_wready,m00_axi_bresp[1:0],m00_axi_bvalid,m00_axi_bready,m00_axi_araddr[31:0],m00_axi_arprot[2:0],m00_axi_arvalid,m00_axi_arready,m00_axi_rdata[31:0],m00_axi_rresp[1:0],m00_axi_rvalid,m00_axi_rready,m01_axi_aclk,m00_axi_aclk,m00_axi_aresetn,m07_axi_awaddr[31:0],m07_axi_awprot[2:0],m07_axi_awvalid,m07_axi_awready,m07_axi_wdata[31:0],m07_axi_wstrb[3:0],m07_axi_wvalid,m07_axi_wready,m07_axi_bresp[1:0],m07_axi_bvalid,m07_axi_bready,m07_axi_araddr[31:0],m07_axi_arprot[2:0],m07_axi_arvalid,m07_axi_arready,m07_axi_rdata[31:0],m07_axi_rresp[1:0],m07_axi_rvalid,m07_axi_rready,write_ptr[7:0],read_ptr[7:0],ndp_done[7:0],ndp_status[7:0],done_count[4:0],start_count[4:0],mst_exec_state[3:0],ndp_start[7:0],time_cycles[63:0],ulog_offset[63:0],base_offset[63:0],log_src[63:0],log_size[63:0],regout[31:0],max_write_read_diff[7:0],offset_read_enable,offset_read_addr[11:0],offset[63:0],offset_valid,offset_reg[63:0],lut_read_latency[31:0],operation_type[2:0],redo_log_assigned[7:0],has_dependence,started_logs[4:0],ndp_not_inuse,ndp_status_reg[7:0],fifo_entry_valid[30:0],count_ones[31:0],axi_awaddr_in[31:0],axi_awvalid_in,write_conflict[16:0],stall_proc,stall_addr[31:0],offset_reg1[63:0],offset_reg2[63:0],vaddr_offset_count[1:0],ulog_offset_reg[63:0],base_offset_reg[63:0],log_src_reg[63:0],log_size_reg[63:0],offset_reg1_valid,offset_reg2_valid,m06_axi_awaddr[31:0],m06_axi_awprot[2:0],m06_axi_awvalid,m06_axi_awready,m06_axi_wdata[31:0],m06_axi_wstrb[3:0],m06_axi_wvalid,m06_axi_wready,m06_axi_bresp[1:0],m06_axi_bvalid,m06_axi_bready,m06_axi_araddr[31:0],m06_axi_arprot[2:0],m06_axi_arvalid,m06_axi_arready,m06_axi_rdata[31:0],m06_axi_rresp[1:0],m06_axi_rvalid,m06_axi_rready,m04_axi_awaddr[31:0],m04_axi_awprot[2:0],m04_axi_awvalid,m04_axi_awready,m04_axi_wdata[31:0],m04_axi_wstrb[3:0],m04_axi_wvalid,m04_axi_wready,m04_axi_bresp[1:0],m04_axi_bvalid,m04_axi_bready,m04_axi_araddr[31:0],m04_axi_arprot[2:0],m04_axi_arvalid,m04_axi_arready,m04_axi_rdata[31:0],m04_axi_rresp[1:0],m04_axi_rvalid,m04_axi_rready,m03_axi_awaddr[31:0],m03_axi_awprot[2:0],m03_axi_awvalid,m03_axi_awready,m03_axi_wdata[31:0],m03_axi_wstrb[3:0],m03_axi_wvalid,m03_axi_wready,m03_axi_bresp[1:0],m03_axi_bvalid,m03_axi_bready,m03_axi_araddr[31:0],m03_axi_arprot[2:0],m03_axi_arvalid,m03_axi_arready,m03_axi_rdata[31:0],m03_axi_rresp[1:0],m03_axi_rvalid,m03_axi_rready,m01_axi_awaddr[31:0],m01_axi_awprot[2:0],m01_axi_awvalid,m01_axi_awready,m01_axi_wdata[31:0],m01_axi_wstrb[3:0],m01_axi_wvalid,m01_axi_wready,m01_axi_bresp[1:0],m01_axi_bvalid,m01_axi_bready,m01_axi_araddr[31:0],m01_axi_arprot[2:0],m01_axi_arvalid,m01_axi_arready,m01_axi_rdata[31:0],m01_axi_rresp[1:0],m01_axi_rvalid,m01_axi_rready,m02_axi_aclk,s00_axi_awaddr[9:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[9:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn" */;
  output [31:0]m05_axi_awaddr;
  output [2:0]m05_axi_awprot;
  output m05_axi_awvalid;
  input m05_axi_awready;
  output [31:0]m05_axi_wdata;
  output [3:0]m05_axi_wstrb;
  output m05_axi_wvalid;
  input m05_axi_wready;
  input [1:0]m05_axi_bresp;
  input m05_axi_bvalid;
  output m05_axi_bready;
  output [31:0]m05_axi_araddr;
  output [2:0]m05_axi_arprot;
  output m05_axi_arvalid;
  input m05_axi_arready;
  input [31:0]m05_axi_rdata;
  input [1:0]m05_axi_rresp;
  input m05_axi_rvalid;
  output m05_axi_rready;
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
  input m03_axi_aclk;
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
  input m01_axi_aclk;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  output [31:0]m07_axi_awaddr;
  output [2:0]m07_axi_awprot;
  output m07_axi_awvalid;
  input m07_axi_awready;
  output [31:0]m07_axi_wdata;
  output [3:0]m07_axi_wstrb;
  output m07_axi_wvalid;
  input m07_axi_wready;
  input [1:0]m07_axi_bresp;
  input m07_axi_bvalid;
  output m07_axi_bready;
  output [31:0]m07_axi_araddr;
  output [2:0]m07_axi_arprot;
  output m07_axi_arvalid;
  input m07_axi_arready;
  input [31:0]m07_axi_rdata;
  input [1:0]m07_axi_rresp;
  input m07_axi_rvalid;
  output m07_axi_rready;
  output [7:0]write_ptr;
  output [7:0]read_ptr;
  output [7:0]ndp_done;
  output [7:0]ndp_status;
  output [4:0]done_count;
  output [4:0]start_count;
  output [3:0]mst_exec_state;
  output [7:0]ndp_start;
  output [63:0]time_cycles;
  output [63:0]ulog_offset;
  output [63:0]base_offset;
  output [63:0]log_src;
  output [63:0]log_size;
  output [31:0]regout;
  output [7:0]max_write_read_diff;
  output offset_read_enable;
  output [11:0]offset_read_addr;
  input [63:0]offset;
  input offset_valid;
  output [63:0]offset_reg;
  output [31:0]lut_read_latency;
  output [2:0]operation_type;
  output [7:0]redo_log_assigned;
  output has_dependence;
  output [4:0]started_logs;
  output ndp_not_inuse;
  output [7:0]ndp_status_reg;
  output [30:0]fifo_entry_valid;
  output [31:0]count_ones;
  input [31:0]axi_awaddr_in;
  input axi_awvalid_in;
  output [16:0]write_conflict;
  output stall_proc;
  output [31:0]stall_addr;
  output [63:0]offset_reg1;
  output [63:0]offset_reg2;
  output [1:0]vaddr_offset_count;
  output [63:0]ulog_offset_reg;
  output [63:0]base_offset_reg;
  output [63:0]log_src_reg;
  output [63:0]log_size_reg;
  output offset_reg1_valid;
  output offset_reg2_valid;
  output [31:0]m06_axi_awaddr;
  output [2:0]m06_axi_awprot;
  output m06_axi_awvalid;
  input m06_axi_awready;
  output [31:0]m06_axi_wdata;
  output [3:0]m06_axi_wstrb;
  output m06_axi_wvalid;
  input m06_axi_wready;
  input [1:0]m06_axi_bresp;
  input m06_axi_bvalid;
  output m06_axi_bready;
  output [31:0]m06_axi_araddr;
  output [2:0]m06_axi_arprot;
  output m06_axi_arvalid;
  input m06_axi_arready;
  input [31:0]m06_axi_rdata;
  input [1:0]m06_axi_rresp;
  input m06_axi_rvalid;
  output m06_axi_rready;
  output [31:0]m04_axi_awaddr;
  output [2:0]m04_axi_awprot;
  output m04_axi_awvalid;
  input m04_axi_awready;
  output [31:0]m04_axi_wdata;
  output [3:0]m04_axi_wstrb;
  output m04_axi_wvalid;
  input m04_axi_wready;
  input [1:0]m04_axi_bresp;
  input m04_axi_bvalid;
  output m04_axi_bready;
  output [31:0]m04_axi_araddr;
  output [2:0]m04_axi_arprot;
  output m04_axi_arvalid;
  input m04_axi_arready;
  input [31:0]m04_axi_rdata;
  input [1:0]m04_axi_rresp;
  input m04_axi_rvalid;
  output m04_axi_rready;
  output [31:0]m03_axi_awaddr;
  output [2:0]m03_axi_awprot;
  output m03_axi_awvalid;
  input m03_axi_awready;
  output [31:0]m03_axi_wdata;
  output [3:0]m03_axi_wstrb;
  output m03_axi_wvalid;
  input m03_axi_wready;
  input [1:0]m03_axi_bresp;
  input m03_axi_bvalid;
  output m03_axi_bready;
  output [31:0]m03_axi_araddr;
  output [2:0]m03_axi_arprot;
  output m03_axi_arvalid;
  input m03_axi_arready;
  input [31:0]m03_axi_rdata;
  input [1:0]m03_axi_rresp;
  input m03_axi_rvalid;
  output m03_axi_rready;
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
  input m02_axi_aclk;
  input [9:0]s00_axi_awaddr;
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
  input [9:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_aresetn;
endmodule
