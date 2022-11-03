-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Thu Jul 22 15:58:11 2021
-- Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/ip/design_1_memops_scheduler_1_0/design_1_memops_scheduler_1_0_stub.vhdl
-- Design      : design_1_memops_scheduler_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_memops_scheduler_1_0 is
  Port ( 
    m05_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m05_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m05_axi_awvalid : out STD_LOGIC;
    m05_axi_awready : in STD_LOGIC;
    m05_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m05_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m05_axi_wvalid : out STD_LOGIC;
    m05_axi_wready : in STD_LOGIC;
    m05_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m05_axi_bvalid : in STD_LOGIC;
    m05_axi_bready : out STD_LOGIC;
    m05_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m05_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m05_axi_arvalid : out STD_LOGIC;
    m05_axi_arready : in STD_LOGIC;
    m05_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m05_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m05_axi_rvalid : in STD_LOGIC;
    m05_axi_rready : out STD_LOGIC;
    m02_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m02_axi_awvalid : out STD_LOGIC;
    m02_axi_awready : in STD_LOGIC;
    m02_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m02_axi_wvalid : out STD_LOGIC;
    m02_axi_wready : in STD_LOGIC;
    m02_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m02_axi_bvalid : in STD_LOGIC;
    m02_axi_bready : out STD_LOGIC;
    m02_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m02_axi_arvalid : out STD_LOGIC;
    m02_axi_arready : in STD_LOGIC;
    m02_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m02_axi_rvalid : in STD_LOGIC;
    m02_axi_rready : out STD_LOGIC;
    m03_axi_aclk : in STD_LOGIC;
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m01_axi_aclk : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m07_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m07_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m07_axi_awvalid : out STD_LOGIC;
    m07_axi_awready : in STD_LOGIC;
    m07_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m07_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m07_axi_wvalid : out STD_LOGIC;
    m07_axi_wready : in STD_LOGIC;
    m07_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m07_axi_bvalid : in STD_LOGIC;
    m07_axi_bready : out STD_LOGIC;
    m07_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m07_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m07_axi_arvalid : out STD_LOGIC;
    m07_axi_arready : in STD_LOGIC;
    m07_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m07_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m07_axi_rvalid : in STD_LOGIC;
    m07_axi_rready : out STD_LOGIC;
    write_ptr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    read_ptr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ndp_done : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ndp_status : out STD_LOGIC_VECTOR ( 7 downto 0 );
    done_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    start_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    mst_exec_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ndp_start : out STD_LOGIC_VECTOR ( 7 downto 0 );
    time_cycles : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ulog_offset : out STD_LOGIC_VECTOR ( 63 downto 0 );
    base_offset : out STD_LOGIC_VECTOR ( 63 downto 0 );
    log_src : out STD_LOGIC_VECTOR ( 63 downto 0 );
    log_size : out STD_LOGIC_VECTOR ( 63 downto 0 );
    regout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    max_write_read_diff : out STD_LOGIC_VECTOR ( 7 downto 0 );
    offset_read_enable : out STD_LOGIC;
    offset_read_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    offset : in STD_LOGIC_VECTOR ( 63 downto 0 );
    offset_valid : in STD_LOGIC;
    offset_reg : out STD_LOGIC_VECTOR ( 63 downto 0 );
    lut_read_latency : out STD_LOGIC_VECTOR ( 31 downto 0 );
    operation_type : out STD_LOGIC_VECTOR ( 2 downto 0 );
    redo_log_assigned : out STD_LOGIC_VECTOR ( 7 downto 0 );
    has_dependence : out STD_LOGIC;
    started_logs : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ndp_not_inuse : out STD_LOGIC;
    ndp_status_reg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_entry_valid : out STD_LOGIC_VECTOR ( 30 downto 0 );
    count_ones : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_awaddr_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_awvalid_in : in STD_LOGIC;
    write_conflict : out STD_LOGIC_VECTOR ( 16 downto 0 );
    stall_proc : out STD_LOGIC;
    stall_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    offset_reg1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    offset_reg2 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    vaddr_offset_count : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ulog_offset_reg : out STD_LOGIC_VECTOR ( 63 downto 0 );
    base_offset_reg : out STD_LOGIC_VECTOR ( 63 downto 0 );
    log_src_reg : out STD_LOGIC_VECTOR ( 63 downto 0 );
    log_size_reg : out STD_LOGIC_VECTOR ( 63 downto 0 );
    offset_reg1_valid : out STD_LOGIC;
    offset_reg2_valid : out STD_LOGIC;
    m06_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m06_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m06_axi_awvalid : out STD_LOGIC;
    m06_axi_awready : in STD_LOGIC;
    m06_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m06_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m06_axi_wvalid : out STD_LOGIC;
    m06_axi_wready : in STD_LOGIC;
    m06_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m06_axi_bvalid : in STD_LOGIC;
    m06_axi_bready : out STD_LOGIC;
    m06_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m06_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m06_axi_arvalid : out STD_LOGIC;
    m06_axi_arready : in STD_LOGIC;
    m06_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m06_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m06_axi_rvalid : in STD_LOGIC;
    m06_axi_rready : out STD_LOGIC;
    m04_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m04_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m04_axi_awvalid : out STD_LOGIC;
    m04_axi_awready : in STD_LOGIC;
    m04_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m04_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m04_axi_wvalid : out STD_LOGIC;
    m04_axi_wready : in STD_LOGIC;
    m04_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m04_axi_bvalid : in STD_LOGIC;
    m04_axi_bready : out STD_LOGIC;
    m04_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m04_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m04_axi_arvalid : out STD_LOGIC;
    m04_axi_arready : in STD_LOGIC;
    m04_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m04_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m04_axi_rvalid : in STD_LOGIC;
    m04_axi_rready : out STD_LOGIC;
    m03_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m03_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m03_axi_awvalid : out STD_LOGIC;
    m03_axi_awready : in STD_LOGIC;
    m03_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m03_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m03_axi_wvalid : out STD_LOGIC;
    m03_axi_wready : in STD_LOGIC;
    m03_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m03_axi_bvalid : in STD_LOGIC;
    m03_axi_bready : out STD_LOGIC;
    m03_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m03_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m03_axi_arvalid : out STD_LOGIC;
    m03_axi_arready : in STD_LOGIC;
    m03_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m03_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m03_axi_rvalid : in STD_LOGIC;
    m03_axi_rready : out STD_LOGIC;
    m01_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m01_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m01_axi_awvalid : out STD_LOGIC;
    m01_axi_awready : in STD_LOGIC;
    m01_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m01_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m01_axi_wvalid : out STD_LOGIC;
    m01_axi_wready : in STD_LOGIC;
    m01_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m01_axi_bvalid : in STD_LOGIC;
    m01_axi_bready : out STD_LOGIC;
    m01_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m01_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m01_axi_arvalid : out STD_LOGIC;
    m01_axi_arready : in STD_LOGIC;
    m01_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m01_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m01_axi_rvalid : in STD_LOGIC;
    m01_axi_rready : out STD_LOGIC;
    m02_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );

end design_1_memops_scheduler_1_0;

architecture stub of design_1_memops_scheduler_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "m05_axi_awaddr[31:0],m05_axi_awprot[2:0],m05_axi_awvalid,m05_axi_awready,m05_axi_wdata[31:0],m05_axi_wstrb[3:0],m05_axi_wvalid,m05_axi_wready,m05_axi_bresp[1:0],m05_axi_bvalid,m05_axi_bready,m05_axi_araddr[31:0],m05_axi_arprot[2:0],m05_axi_arvalid,m05_axi_arready,m05_axi_rdata[31:0],m05_axi_rresp[1:0],m05_axi_rvalid,m05_axi_rready,m02_axi_awaddr[31:0],m02_axi_awprot[2:0],m02_axi_awvalid,m02_axi_awready,m02_axi_wdata[31:0],m02_axi_wstrb[3:0],m02_axi_wvalid,m02_axi_wready,m02_axi_bresp[1:0],m02_axi_bvalid,m02_axi_bready,m02_axi_araddr[31:0],m02_axi_arprot[2:0],m02_axi_arvalid,m02_axi_arready,m02_axi_rdata[31:0],m02_axi_rresp[1:0],m02_axi_rvalid,m02_axi_rready,m03_axi_aclk,m00_axi_awaddr[31:0],m00_axi_awprot[2:0],m00_axi_awvalid,m00_axi_awready,m00_axi_wdata[31:0],m00_axi_wstrb[3:0],m00_axi_wvalid,m00_axi_wready,m00_axi_bresp[1:0],m00_axi_bvalid,m00_axi_bready,m00_axi_araddr[31:0],m00_axi_arprot[2:0],m00_axi_arvalid,m00_axi_arready,m00_axi_rdata[31:0],m00_axi_rresp[1:0],m00_axi_rvalid,m00_axi_rready,m01_axi_aclk,m00_axi_aclk,m00_axi_aresetn,m07_axi_awaddr[31:0],m07_axi_awprot[2:0],m07_axi_awvalid,m07_axi_awready,m07_axi_wdata[31:0],m07_axi_wstrb[3:0],m07_axi_wvalid,m07_axi_wready,m07_axi_bresp[1:0],m07_axi_bvalid,m07_axi_bready,m07_axi_araddr[31:0],m07_axi_arprot[2:0],m07_axi_arvalid,m07_axi_arready,m07_axi_rdata[31:0],m07_axi_rresp[1:0],m07_axi_rvalid,m07_axi_rready,write_ptr[7:0],read_ptr[7:0],ndp_done[7:0],ndp_status[7:0],done_count[4:0],start_count[4:0],mst_exec_state[3:0],ndp_start[7:0],time_cycles[63:0],ulog_offset[63:0],base_offset[63:0],log_src[63:0],log_size[63:0],regout[31:0],max_write_read_diff[7:0],offset_read_enable,offset_read_addr[11:0],offset[63:0],offset_valid,offset_reg[63:0],lut_read_latency[31:0],operation_type[2:0],redo_log_assigned[7:0],has_dependence,started_logs[4:0],ndp_not_inuse,ndp_status_reg[7:0],fifo_entry_valid[30:0],count_ones[31:0],axi_awaddr_in[31:0],axi_awvalid_in,write_conflict[16:0],stall_proc,stall_addr[31:0],offset_reg1[63:0],offset_reg2[63:0],vaddr_offset_count[1:0],ulog_offset_reg[63:0],base_offset_reg[63:0],log_src_reg[63:0],log_size_reg[63:0],offset_reg1_valid,offset_reg2_valid,m06_axi_awaddr[31:0],m06_axi_awprot[2:0],m06_axi_awvalid,m06_axi_awready,m06_axi_wdata[31:0],m06_axi_wstrb[3:0],m06_axi_wvalid,m06_axi_wready,m06_axi_bresp[1:0],m06_axi_bvalid,m06_axi_bready,m06_axi_araddr[31:0],m06_axi_arprot[2:0],m06_axi_arvalid,m06_axi_arready,m06_axi_rdata[31:0],m06_axi_rresp[1:0],m06_axi_rvalid,m06_axi_rready,m04_axi_awaddr[31:0],m04_axi_awprot[2:0],m04_axi_awvalid,m04_axi_awready,m04_axi_wdata[31:0],m04_axi_wstrb[3:0],m04_axi_wvalid,m04_axi_wready,m04_axi_bresp[1:0],m04_axi_bvalid,m04_axi_bready,m04_axi_araddr[31:0],m04_axi_arprot[2:0],m04_axi_arvalid,m04_axi_arready,m04_axi_rdata[31:0],m04_axi_rresp[1:0],m04_axi_rvalid,m04_axi_rready,m03_axi_awaddr[31:0],m03_axi_awprot[2:0],m03_axi_awvalid,m03_axi_awready,m03_axi_wdata[31:0],m03_axi_wstrb[3:0],m03_axi_wvalid,m03_axi_wready,m03_axi_bresp[1:0],m03_axi_bvalid,m03_axi_bready,m03_axi_araddr[31:0],m03_axi_arprot[2:0],m03_axi_arvalid,m03_axi_arready,m03_axi_rdata[31:0],m03_axi_rresp[1:0],m03_axi_rvalid,m03_axi_rready,m01_axi_awaddr[31:0],m01_axi_awprot[2:0],m01_axi_awvalid,m01_axi_awready,m01_axi_wdata[31:0],m01_axi_wstrb[3:0],m01_axi_wvalid,m01_axi_wready,m01_axi_bresp[1:0],m01_axi_bvalid,m01_axi_bready,m01_axi_araddr[31:0],m01_axi_arprot[2:0],m01_axi_arvalid,m01_axi_arready,m01_axi_rdata[31:0],m01_axi_rresp[1:0],m01_axi_rvalid,m01_axi_rready,m02_axi_aclk,s00_axi_awaddr[9:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[9:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "memops_scheduler_v1_1,Vivado 2018.2";
begin
end;