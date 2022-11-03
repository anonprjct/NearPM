-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri May 21 15:35:12 2021
-- Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_undolog_0_1 -prefix
--               design_1_undolog_0_1_ design_1_undolog_0_0_stub.vhdl
-- Design      : design_1_undolog_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_undolog_0_1 is
  Port ( 
    memclr_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    metadatacpy_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    datacpy_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
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
    m01_axi_aclk : in STD_LOGIC;
    m01_axi_aresetn : in STD_LOGIC;
    m01_axi_init_axi_txn : in STD_LOGIC;
    m01_axi_error : out STD_LOGIC;
    m01_axi_txn_done : out STD_LOGIC;
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
    start_ulog : out STD_LOGIC;
    start_logclr : out STD_LOGIC;
    metadata_done : out STD_LOGIC;
    memclr_done : out STD_LOGIC;
    dataout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    datacpy_done : out STD_LOGIC;
    ulog_offset : out STD_LOGIC_VECTOR ( 63 downto 0 );
    base_offset : out STD_LOGIC_VECTOR ( 63 downto 0 );
    log_src : out STD_LOGIC_VECTOR ( 63 downto 0 );
    log_size : out STD_LOGIC_VECTOR ( 63 downto 0 );
    time_cycles : out STD_LOGIC_VECTOR ( 63 downto 0 );
    logclr_done_reg : out STD_LOGIC;
    reg_init_complete : out STD_LOGIC;
    vaddr_offset : out STD_LOGIC_VECTOR ( 27 downto 0 );
    physical_src_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    physical_dest_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    start_redolog : out STD_LOGIC;
    operation_type : out STD_LOGIC_VECTOR ( 2 downto 0 );
    redolog_src_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    redolog_dest_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    raddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    waddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_copy_pulse : out STD_LOGIC;
    regout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_aclk : in STD_LOGIC;
    m02_axi_aresetn : in STD_LOGIC;
    m02_axi_init_axi_txn : in STD_LOGIC;
    m02_axi_error : out STD_LOGIC;
    m02_axi_txn_done : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
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
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_init_axi_txn : in STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC
  );

end design_1_undolog_0_1;

architecture stub of design_1_undolog_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "memclr_state[3:0],metadatacpy_state[3:0],datacpy_state[3:0],m01_axi_awaddr[31:0],m01_axi_awprot[2:0],m01_axi_awvalid,m01_axi_awready,m01_axi_wdata[31:0],m01_axi_wstrb[3:0],m01_axi_wvalid,m01_axi_wready,m01_axi_bresp[1:0],m01_axi_bvalid,m01_axi_bready,m01_axi_araddr[31:0],m01_axi_arprot[2:0],m01_axi_arvalid,m01_axi_arready,m01_axi_rdata[31:0],m01_axi_rresp[1:0],m01_axi_rvalid,m01_axi_rready,m01_axi_aclk,m01_axi_aresetn,m01_axi_init_axi_txn,m01_axi_error,m01_axi_txn_done,m02_axi_awaddr[31:0],m02_axi_awprot[2:0],m02_axi_awvalid,m02_axi_awready,m02_axi_wdata[31:0],m02_axi_wstrb[3:0],m02_axi_wvalid,m02_axi_wready,m02_axi_bresp[1:0],m02_axi_bvalid,m02_axi_bready,m02_axi_araddr[31:0],m02_axi_arprot[2:0],m02_axi_arvalid,m02_axi_arready,m02_axi_rdata[31:0],m02_axi_rresp[1:0],m02_axi_rvalid,m02_axi_rready,start_ulog,start_logclr,metadata_done,memclr_done,dataout[31:0],datacpy_done,ulog_offset[63:0],base_offset[63:0],log_src[63:0],log_size[63:0],time_cycles[63:0],logclr_done_reg,reg_init_complete,vaddr_offset[27:0],physical_src_addr[31:0],physical_dest_addr[31:0],start_redolog,operation_type[2:0],redolog_src_data[63:0],redolog_dest_data[63:0],raddr[31:0],rdata[31:0],waddr[31:0],wdata[31:0],data_copy_pulse,regout[31:0],m02_axi_aclk,m02_axi_aresetn,m02_axi_init_axi_txn,m02_axi_error,m02_axi_txn_done,s00_axi_awaddr[5:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[5:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn,m00_axi_awaddr[31:0],m00_axi_awprot[2:0],m00_axi_awvalid,m00_axi_awready,m00_axi_wdata[31:0],m00_axi_wstrb[3:0],m00_axi_wvalid,m00_axi_wready,m00_axi_bresp[1:0],m00_axi_bvalid,m00_axi_bready,m00_axi_araddr[31:0],m00_axi_arprot[2:0],m00_axi_arvalid,m00_axi_arready,m00_axi_rdata[31:0],m00_axi_rresp[1:0],m00_axi_rvalid,m00_axi_rready,m00_axi_aclk,m00_axi_aresetn,m00_axi_init_axi_txn,m00_axi_error,m00_axi_txn_done";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "undolog_v2_1,Vivado 2018.2";
begin
end;
