-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Sun Mar 28 01:04:06 2021
-- Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/ip/design_1_addrmonitor_0_0/design_1_addrmonitor_0_0_stub.vhdl
-- Design      : design_1_addrmonitor_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_addrmonitor_0_0 is
  Port ( 
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    readenable : in STD_LOGIC;
    readaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pmem_obj_offset : out STD_LOGIC_VECTOR ( 63 downto 0 );
    pmem_obj_offset_valid : out STD_LOGIC;
    clk : in STD_LOGIC;
    clkmemops : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    empty_fifo : out STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    virtualaddr_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    virtualaddr_out1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    offset : out STD_LOGIC_VECTOR ( 63 downto 0 );
    physicaladdr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    count : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );

end design_1_addrmonitor_0_0;

architecture stub of design_1_addrmonitor_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s00_axi_wvalid,s00_axi_wdata[63:0],s00_axi_awaddr[31:0],s00_axi_awvalid,readenable,readaddr[11:0],pmem_obj_offset[63:0],pmem_obj_offset_valid,clk,clkmemops,aresetn,m00_axi_awaddr[31:0],m00_axi_awvalid,m00_axi_wdata[63:0],m00_axi_wvalid,empty_fifo,state[2:0],virtualaddr_out[63:0],virtualaddr_out1[63:0],offset[63:0],physicaladdr[31:0],count[5:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "addrmonitor,Vivado 2018.2";
begin
end;
