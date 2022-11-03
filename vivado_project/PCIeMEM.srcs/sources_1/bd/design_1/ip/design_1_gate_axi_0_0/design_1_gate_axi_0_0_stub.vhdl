-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Sat Mar 20 01:32:59 2021
-- Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/ip/design_1_gate_axi_0_0/design_1_gate_axi_0_0_stub.vhdl
-- Design      : design_1_gate_axi_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_gate_axi_0_0 is
  Port ( 
    clk_src : in STD_LOGIC;
    clk_dest : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    awvalid_in : in STD_LOGIC;
    awready_in : in STD_LOGIC;
    arvalid_in : in STD_LOGIC;
    arready_in : in STD_LOGIC;
    wvalid_in : in STD_LOGIC;
    wready_in : in STD_LOGIC;
    bvalid_in : in STD_LOGIC;
    bready_in : in STD_LOGIC;
    rvalid_in : in STD_LOGIC;
    rready_in : in STD_LOGIC;
    awaddr_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ndp_not_inuse : in STD_LOGIC;
    awvalid_out : out STD_LOGIC;
    awready_out : out STD_LOGIC;
    arvalid_out : out STD_LOGIC;
    arready_out : out STD_LOGIC;
    wvalid_out : out STD_LOGIC;
    wready_out : out STD_LOGIC;
    bvalid_out : out STD_LOGIC;
    bready_out : out STD_LOGIC;
    rvalid_out : out STD_LOGIC;
    rready_out : out STD_LOGIC;
    awaddr_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ndp_not_inuse_out : out STD_LOGIC
  );

end design_1_gate_axi_0_0;

architecture stub of design_1_gate_axi_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_src,clk_dest,aresetn,awvalid_in,awready_in,arvalid_in,arready_in,wvalid_in,wready_in,bvalid_in,bready_in,rvalid_in,rready_in,awaddr_in[31:0],ndp_not_inuse,awvalid_out,awready_out,arvalid_out,arready_out,wvalid_out,wready_out,bvalid_out,bready_out,rvalid_out,rready_out,awaddr_out[31:0],ndp_not_inuse_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "gate_axi,Vivado 2018.2";
begin
end;
