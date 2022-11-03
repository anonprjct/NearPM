-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Sun Mar 14 11:36:20 2021
-- Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/oem/RTL/backups/Undolog1/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/design_1_axi_smc_1_stub.vhdl
-- Design      : design_1_axi_smc_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_axi_smc_1 is
  Port ( 
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aclk2 : in STD_LOGIC;
    aclk3 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 113 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wuser : in STD_LOGIC_VECTOR ( 13 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_buser : out STD_LOGIC_VECTOR ( 113 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 113 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_ruser : out STD_LOGIC_VECTOR ( 13 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wvalid : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S03_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awvalid : in STD_LOGIC;
    S03_AXI_awready : out STD_LOGIC;
    S03_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_wvalid : in STD_LOGIC;
    S03_AXI_wready : out STD_LOGIC;
    S03_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_bvalid : out STD_LOGIC;
    S03_AXI_bready : in STD_LOGIC;
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arvalid : in STD_LOGIC;
    S03_AXI_arready : out STD_LOGIC;
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rvalid : out STD_LOGIC;
    S03_AXI_rready : in STD_LOGIC;
    S04_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arvalid : in STD_LOGIC;
    S04_AXI_arready : out STD_LOGIC;
    S04_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_rlast : out STD_LOGIC;
    S04_AXI_rvalid : out STD_LOGIC;
    S04_AXI_rready : in STD_LOGIC;
    S05_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awvalid : in STD_LOGIC;
    S05_AXI_awready : out STD_LOGIC;
    S05_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_wlast : in STD_LOGIC;
    S05_AXI_wvalid : in STD_LOGIC;
    S05_AXI_wready : out STD_LOGIC;
    S05_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_bvalid : out STD_LOGIC;
    S05_AXI_bready : in STD_LOGIC;
    S06_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S06_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_awvalid : in STD_LOGIC;
    S06_AXI_awready : out STD_LOGIC;
    S06_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S06_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_wvalid : in STD_LOGIC;
    S06_AXI_wready : out STD_LOGIC;
    S06_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_bvalid : out STD_LOGIC;
    S06_AXI_bready : in STD_LOGIC;
    S06_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S06_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_arvalid : in STD_LOGIC;
    S06_AXI_arready : out STD_LOGIC;
    S06_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S06_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_rvalid : out STD_LOGIC;
    S06_AXI_rready : in STD_LOGIC;
    S07_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S07_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S07_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S07_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S07_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S07_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S07_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S07_AXI_awvalid : in STD_LOGIC;
    S07_AXI_awready : out STD_LOGIC;
    S07_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S07_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S07_AXI_wlast : in STD_LOGIC;
    S07_AXI_wvalid : in STD_LOGIC;
    S07_AXI_wready : out STD_LOGIC;
    S07_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S07_AXI_bvalid : out STD_LOGIC;
    S07_AXI_bready : in STD_LOGIC;
    S08_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S08_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S08_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S08_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S08_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S08_AXI_arvalid : in STD_LOGIC;
    S08_AXI_arready : out STD_LOGIC;
    S08_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S08_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S08_AXI_rlast : out STD_LOGIC;
    S08_AXI_rvalid : out STD_LOGIC;
    S08_AXI_rready : in STD_LOGIC;
    S09_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S09_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S09_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S09_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S09_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S09_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S09_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S09_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S09_AXI_awvalid : in STD_LOGIC;
    S09_AXI_awready : out STD_LOGIC;
    S09_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S09_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S09_AXI_wlast : in STD_LOGIC;
    S09_AXI_wvalid : in STD_LOGIC;
    S09_AXI_wready : out STD_LOGIC;
    S09_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S09_AXI_bvalid : out STD_LOGIC;
    S09_AXI_bready : in STD_LOGIC;
    S10_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S10_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S10_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S10_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S10_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S10_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S10_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S10_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S10_AXI_arvalid : in STD_LOGIC;
    S10_AXI_arready : out STD_LOGIC;
    S10_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S10_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S10_AXI_rlast : out STD_LOGIC;
    S10_AXI_rvalid : out STD_LOGIC;
    S10_AXI_rready : in STD_LOGIC;
    S11_AXI_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S11_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S11_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S11_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S11_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S11_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S11_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S11_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S11_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S11_AXI_awuser : in STD_LOGIC_VECTOR ( 113 downto 0 );
    S11_AXI_awvalid : in STD_LOGIC;
    S11_AXI_awready : out STD_LOGIC;
    S11_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S11_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S11_AXI_wlast : in STD_LOGIC;
    S11_AXI_wuser : in STD_LOGIC_VECTOR ( 13 downto 0 );
    S11_AXI_wvalid : in STD_LOGIC;
    S11_AXI_wready : out STD_LOGIC;
    S11_AXI_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S11_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S11_AXI_buser : out STD_LOGIC_VECTOR ( 113 downto 0 );
    S11_AXI_bvalid : out STD_LOGIC;
    S11_AXI_bready : in STD_LOGIC;
    S11_AXI_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S11_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S11_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S11_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S11_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S11_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S11_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S11_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S11_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S11_AXI_aruser : in STD_LOGIC_VECTOR ( 113 downto 0 );
    S11_AXI_arvalid : in STD_LOGIC;
    S11_AXI_arready : out STD_LOGIC;
    S11_AXI_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S11_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S11_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S11_AXI_rlast : out STD_LOGIC;
    S11_AXI_ruser : out STD_LOGIC_VECTOR ( 13 downto 0 );
    S11_AXI_rvalid : out STD_LOGIC;
    S11_AXI_rready : in STD_LOGIC;
    S12_AXI_awid : in STD_LOGIC;
    S12_AXI_awaddr : in STD_LOGIC;
    S12_AXI_awlen : in STD_LOGIC;
    S12_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S12_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S12_AXI_awlock : in STD_LOGIC;
    S12_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S12_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S12_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S12_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S12_AXI_awuser : in STD_LOGIC;
    S12_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S12_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S12_AXI_wid : in STD_LOGIC;
    S12_AXI_wdata : in STD_LOGIC;
    S12_AXI_wstrb : in STD_LOGIC;
    S12_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S12_AXI_wuser : in STD_LOGIC;
    S12_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S12_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S12_AXI_bid : out STD_LOGIC;
    S12_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S12_AXI_buser : out STD_LOGIC;
    S12_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S12_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S12_AXI_arid : in STD_LOGIC;
    S12_AXI_araddr : in STD_LOGIC;
    S12_AXI_arlen : in STD_LOGIC;
    S12_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S12_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S12_AXI_arlock : in STD_LOGIC;
    S12_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S12_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S12_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S12_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S12_AXI_aruser : in STD_LOGIC;
    S12_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S12_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S12_AXI_rid : out STD_LOGIC;
    S12_AXI_rdata : out STD_LOGIC;
    S12_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S12_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S12_AXI_ruser : out STD_LOGIC;
    S12_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S12_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S13_AXI_awid : in STD_LOGIC;
    S13_AXI_awaddr : in STD_LOGIC;
    S13_AXI_awlen : in STD_LOGIC;
    S13_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S13_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S13_AXI_awlock : in STD_LOGIC;
    S13_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S13_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S13_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S13_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S13_AXI_awuser : in STD_LOGIC;
    S13_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S13_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S13_AXI_wid : in STD_LOGIC;
    S13_AXI_wdata : in STD_LOGIC;
    S13_AXI_wstrb : in STD_LOGIC;
    S13_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S13_AXI_wuser : in STD_LOGIC;
    S13_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S13_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S13_AXI_bid : out STD_LOGIC;
    S13_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S13_AXI_buser : out STD_LOGIC;
    S13_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S13_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S13_AXI_arid : in STD_LOGIC;
    S13_AXI_araddr : in STD_LOGIC;
    S13_AXI_arlen : in STD_LOGIC;
    S13_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S13_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S13_AXI_arlock : in STD_LOGIC;
    S13_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S13_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S13_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S13_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S13_AXI_aruser : in STD_LOGIC;
    S13_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S13_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S13_AXI_rid : out STD_LOGIC;
    S13_AXI_rdata : out STD_LOGIC;
    S13_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S13_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S13_AXI_ruser : out STD_LOGIC;
    S13_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S13_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S14_AXI_awid : in STD_LOGIC;
    S14_AXI_awaddr : in STD_LOGIC;
    S14_AXI_awlen : in STD_LOGIC;
    S14_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S14_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S14_AXI_awlock : in STD_LOGIC;
    S14_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S14_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S14_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S14_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S14_AXI_awuser : in STD_LOGIC;
    S14_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S14_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S14_AXI_wid : in STD_LOGIC;
    S14_AXI_wdata : in STD_LOGIC;
    S14_AXI_wstrb : in STD_LOGIC;
    S14_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S14_AXI_wuser : in STD_LOGIC;
    S14_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S14_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S14_AXI_bid : out STD_LOGIC;
    S14_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S14_AXI_buser : out STD_LOGIC;
    S14_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S14_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S14_AXI_arid : in STD_LOGIC;
    S14_AXI_araddr : in STD_LOGIC;
    S14_AXI_arlen : in STD_LOGIC;
    S14_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S14_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S14_AXI_arlock : in STD_LOGIC;
    S14_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S14_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S14_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S14_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S14_AXI_aruser : in STD_LOGIC;
    S14_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S14_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S14_AXI_rid : out STD_LOGIC;
    S14_AXI_rdata : out STD_LOGIC;
    S14_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S14_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S14_AXI_ruser : out STD_LOGIC;
    S14_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S14_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC
  );

end design_1_axi_smc_1;

architecture stub of design_1_axi_smc_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aclk1,aclk2,aclk3,aresetn,S00_AXI_awid[5:0],S00_AXI_awaddr[31:0],S00_AXI_awlen[7:0],S00_AXI_awsize[2:0],S00_AXI_awburst[1:0],S00_AXI_awlock[0:0],S00_AXI_awcache[3:0],S00_AXI_awprot[2:0],S00_AXI_awqos[3:0],S00_AXI_awuser[113:0],S00_AXI_awvalid,S00_AXI_awready,S00_AXI_wdata[511:0],S00_AXI_wstrb[63:0],S00_AXI_wlast,S00_AXI_wuser[13:0],S00_AXI_wvalid,S00_AXI_wready,S00_AXI_bid[5:0],S00_AXI_bresp[1:0],S00_AXI_buser[113:0],S00_AXI_bvalid,S00_AXI_bready,S00_AXI_arid[5:0],S00_AXI_araddr[31:0],S00_AXI_arlen[7:0],S00_AXI_arsize[2:0],S00_AXI_arburst[1:0],S00_AXI_arlock[0:0],S00_AXI_arcache[3:0],S00_AXI_arprot[2:0],S00_AXI_arqos[3:0],S00_AXI_aruser[113:0],S00_AXI_arvalid,S00_AXI_arready,S00_AXI_rid[5:0],S00_AXI_rdata[511:0],S00_AXI_rresp[1:0],S00_AXI_rlast,S00_AXI_ruser[13:0],S00_AXI_rvalid,S00_AXI_rready,S01_AXI_araddr[31:0],S01_AXI_arlen[7:0],S01_AXI_arsize[2:0],S01_AXI_arburst[1:0],S01_AXI_arlock[0:0],S01_AXI_arcache[3:0],S01_AXI_arprot[2:0],S01_AXI_arqos[3:0],S01_AXI_arvalid,S01_AXI_arready,S01_AXI_rdata[31:0],S01_AXI_rresp[1:0],S01_AXI_rlast,S01_AXI_rvalid,S01_AXI_rready,S02_AXI_awaddr[31:0],S02_AXI_awlen[7:0],S02_AXI_awsize[2:0],S02_AXI_awburst[1:0],S02_AXI_awlock[0:0],S02_AXI_awcache[3:0],S02_AXI_awprot[2:0],S02_AXI_awqos[3:0],S02_AXI_awvalid,S02_AXI_awready,S02_AXI_wdata[31:0],S02_AXI_wstrb[3:0],S02_AXI_wlast,S02_AXI_wvalid,S02_AXI_wready,S02_AXI_bresp[1:0],S02_AXI_bvalid,S02_AXI_bready,S03_AXI_awaddr[31:0],S03_AXI_awprot[2:0],S03_AXI_awvalid,S03_AXI_awready,S03_AXI_wdata[31:0],S03_AXI_wstrb[3:0],S03_AXI_wvalid,S03_AXI_wready,S03_AXI_bresp[1:0],S03_AXI_bvalid,S03_AXI_bready,S03_AXI_araddr[31:0],S03_AXI_arprot[2:0],S03_AXI_arvalid,S03_AXI_arready,S03_AXI_rdata[31:0],S03_AXI_rresp[1:0],S03_AXI_rvalid,S03_AXI_rready,S04_AXI_araddr[31:0],S04_AXI_arlen[7:0],S04_AXI_arsize[2:0],S04_AXI_arburst[1:0],S04_AXI_arlock[0:0],S04_AXI_arcache[3:0],S04_AXI_arprot[2:0],S04_AXI_arqos[3:0],S04_AXI_arvalid,S04_AXI_arready,S04_AXI_rdata[31:0],S04_AXI_rresp[1:0],S04_AXI_rlast,S04_AXI_rvalid,S04_AXI_rready,S05_AXI_awaddr[31:0],S05_AXI_awlen[7:0],S05_AXI_awsize[2:0],S05_AXI_awburst[1:0],S05_AXI_awlock[0:0],S05_AXI_awcache[3:0],S05_AXI_awprot[2:0],S05_AXI_awqos[3:0],S05_AXI_awvalid,S05_AXI_awready,S05_AXI_wdata[31:0],S05_AXI_wstrb[3:0],S05_AXI_wlast,S05_AXI_wvalid,S05_AXI_wready,S05_AXI_bresp[1:0],S05_AXI_bvalid,S05_AXI_bready,S06_AXI_awaddr[31:0],S06_AXI_awprot[2:0],S06_AXI_awvalid,S06_AXI_awready,S06_AXI_wdata[31:0],S06_AXI_wstrb[3:0],S06_AXI_wvalid,S06_AXI_wready,S06_AXI_bresp[1:0],S06_AXI_bvalid,S06_AXI_bready,S06_AXI_araddr[31:0],S06_AXI_arprot[2:0],S06_AXI_arvalid,S06_AXI_arready,S06_AXI_rdata[31:0],S06_AXI_rresp[1:0],S06_AXI_rvalid,S06_AXI_rready,S07_AXI_awaddr[31:0],S07_AXI_awlen[7:0],S07_AXI_awsize[2:0],S07_AXI_awburst[1:0],S07_AXI_awlock[0:0],S07_AXI_awcache[3:0],S07_AXI_awprot[2:0],S07_AXI_awqos[3:0],S07_AXI_awvalid,S07_AXI_awready,S07_AXI_wdata[31:0],S07_AXI_wstrb[3:0],S07_AXI_wlast,S07_AXI_wvalid,S07_AXI_wready,S07_AXI_bresp[1:0],S07_AXI_bvalid,S07_AXI_bready,S08_AXI_araddr[31:0],S08_AXI_arlen[7:0],S08_AXI_arsize[2:0],S08_AXI_arburst[1:0],S08_AXI_arlock[0:0],S08_AXI_arcache[3:0],S08_AXI_arprot[2:0],S08_AXI_arqos[3:0],S08_AXI_arvalid,S08_AXI_arready,S08_AXI_rdata[31:0],S08_AXI_rresp[1:0],S08_AXI_rlast,S08_AXI_rvalid,S08_AXI_rready,S09_AXI_awaddr[31:0],S09_AXI_awlen[7:0],S09_AXI_awsize[2:0],S09_AXI_awburst[1:0],S09_AXI_awlock[0:0],S09_AXI_awcache[3:0],S09_AXI_awprot[2:0],S09_AXI_awqos[3:0],S09_AXI_awvalid,S09_AXI_awready,S09_AXI_wdata[31:0],S09_AXI_wstrb[3:0],S09_AXI_wlast,S09_AXI_wvalid,S09_AXI_wready,S09_AXI_bresp[1:0],S09_AXI_bvalid,S09_AXI_bready,S10_AXI_araddr[31:0],S10_AXI_arlen[7:0],S10_AXI_arsize[2:0],S10_AXI_arburst[1:0],S10_AXI_arlock[0:0],S10_AXI_arcache[3:0],S10_AXI_arprot[2:0],S10_AXI_arqos[3:0],S10_AXI_arvalid,S10_AXI_arready,S10_AXI_rdata[31:0],S10_AXI_rresp[1:0],S10_AXI_rlast,S10_AXI_rvalid,S10_AXI_rready,S11_AXI_awid[5:0],S11_AXI_awaddr[31:0],S11_AXI_awlen[7:0],S11_AXI_awsize[2:0],S11_AXI_awburst[1:0],S11_AXI_awlock[0:0],S11_AXI_awcache[3:0],S11_AXI_awprot[2:0],S11_AXI_awqos[3:0],S11_AXI_awuser[113:0],S11_AXI_awvalid,S11_AXI_awready,S11_AXI_wdata[511:0],S11_AXI_wstrb[63:0],S11_AXI_wlast,S11_AXI_wuser[13:0],S11_AXI_wvalid,S11_AXI_wready,S11_AXI_bid[5:0],S11_AXI_bresp[1:0],S11_AXI_buser[113:0],S11_AXI_bvalid,S11_AXI_bready,S11_AXI_arid[5:0],S11_AXI_araddr[31:0],S11_AXI_arlen[7:0],S11_AXI_arsize[2:0],S11_AXI_arburst[1:0],S11_AXI_arlock[0:0],S11_AXI_arcache[3:0],S11_AXI_arprot[2:0],S11_AXI_arqos[3:0],S11_AXI_aruser[113:0],S11_AXI_arvalid,S11_AXI_arready,S11_AXI_rid[5:0],S11_AXI_rdata[511:0],S11_AXI_rresp[1:0],S11_AXI_rlast,S11_AXI_ruser[13:0],S11_AXI_rvalid,S11_AXI_rready,S12_AXI_awid,S12_AXI_awaddr,S12_AXI_awlen,S12_AXI_awsize[2:0],S12_AXI_awburst[1:0],S12_AXI_awlock,S12_AXI_awcache[3:0],S12_AXI_awprot[2:0],S12_AXI_awregion[3:0],S12_AXI_awqos[3:0],S12_AXI_awuser,S12_AXI_awvalid[0:0],S12_AXI_awready[0:0],S12_AXI_wid,S12_AXI_wdata,S12_AXI_wstrb,S12_AXI_wlast[0:0],S12_AXI_wuser,S12_AXI_wvalid[0:0],S12_AXI_wready[0:0],S12_AXI_bid,S12_AXI_bresp[1:0],S12_AXI_buser,S12_AXI_bvalid[0:0],S12_AXI_bready[0:0],S12_AXI_arid,S12_AXI_araddr,S12_AXI_arlen,S12_AXI_arsize[2:0],S12_AXI_arburst[1:0],S12_AXI_arlock,S12_AXI_arcache[3:0],S12_AXI_arprot[2:0],S12_AXI_arregion[3:0],S12_AXI_arqos[3:0],S12_AXI_aruser,S12_AXI_arvalid[0:0],S12_AXI_arready[0:0],S12_AXI_rid,S12_AXI_rdata,S12_AXI_rresp[1:0],S12_AXI_rlast[0:0],S12_AXI_ruser,S12_AXI_rvalid[0:0],S12_AXI_rready[0:0],S13_AXI_awid,S13_AXI_awaddr,S13_AXI_awlen,S13_AXI_awsize[2:0],S13_AXI_awburst[1:0],S13_AXI_awlock,S13_AXI_awcache[3:0],S13_AXI_awprot[2:0],S13_AXI_awregion[3:0],S13_AXI_awqos[3:0],S13_AXI_awuser,S13_AXI_awvalid[0:0],S13_AXI_awready[0:0],S13_AXI_wid,S13_AXI_wdata,S13_AXI_wstrb,S13_AXI_wlast[0:0],S13_AXI_wuser,S13_AXI_wvalid[0:0],S13_AXI_wready[0:0],S13_AXI_bid,S13_AXI_bresp[1:0],S13_AXI_buser,S13_AXI_bvalid[0:0],S13_AXI_bready[0:0],S13_AXI_arid,S13_AXI_araddr,S13_AXI_arlen,S13_AXI_arsize[2:0],S13_AXI_arburst[1:0],S13_AXI_arlock,S13_AXI_arcache[3:0],S13_AXI_arprot[2:0],S13_AXI_arregion[3:0],S13_AXI_arqos[3:0],S13_AXI_aruser,S13_AXI_arvalid[0:0],S13_AXI_arready[0:0],S13_AXI_rid,S13_AXI_rdata,S13_AXI_rresp[1:0],S13_AXI_rlast[0:0],S13_AXI_ruser,S13_AXI_rvalid[0:0],S13_AXI_rready[0:0],S14_AXI_awid,S14_AXI_awaddr,S14_AXI_awlen,S14_AXI_awsize[2:0],S14_AXI_awburst[1:0],S14_AXI_awlock,S14_AXI_awcache[3:0],S14_AXI_awprot[2:0],S14_AXI_awregion[3:0],S14_AXI_awqos[3:0],S14_AXI_awuser,S14_AXI_awvalid[0:0],S14_AXI_awready[0:0],S14_AXI_wid,S14_AXI_wdata,S14_AXI_wstrb,S14_AXI_wlast[0:0],S14_AXI_wuser,S14_AXI_wvalid[0:0],S14_AXI_wready[0:0],S14_AXI_bid,S14_AXI_bresp[1:0],S14_AXI_buser,S14_AXI_bvalid[0:0],S14_AXI_bready[0:0],S14_AXI_arid,S14_AXI_araddr,S14_AXI_arlen,S14_AXI_arsize[2:0],S14_AXI_arburst[1:0],S14_AXI_arlock,S14_AXI_arcache[3:0],S14_AXI_arprot[2:0],S14_AXI_arregion[3:0],S14_AXI_arqos[3:0],S14_AXI_aruser,S14_AXI_arvalid[0:0],S14_AXI_arready[0:0],S14_AXI_rid,S14_AXI_rdata,S14_AXI_rresp[1:0],S14_AXI_rlast[0:0],S14_AXI_ruser,S14_AXI_rvalid[0:0],S14_AXI_rready[0:0],M00_AXI_awaddr[30:0],M00_AXI_awlen[7:0],M00_AXI_awsize[2:0],M00_AXI_awburst[1:0],M00_AXI_awlock[0:0],M00_AXI_awcache[3:0],M00_AXI_awprot[2:0],M00_AXI_awqos[3:0],M00_AXI_awvalid,M00_AXI_awready,M00_AXI_wdata[511:0],M00_AXI_wstrb[63:0],M00_AXI_wlast,M00_AXI_wvalid,M00_AXI_wready,M00_AXI_bresp[1:0],M00_AXI_bvalid,M00_AXI_bready,M00_AXI_araddr[30:0],M00_AXI_arlen[7:0],M00_AXI_arsize[2:0],M00_AXI_arburst[1:0],M00_AXI_arlock[0:0],M00_AXI_arcache[3:0],M00_AXI_arprot[2:0],M00_AXI_arqos[3:0],M00_AXI_arvalid,M00_AXI_arready,M00_AXI_rdata[511:0],M00_AXI_rresp[1:0],M00_AXI_rlast,M00_AXI_rvalid,M00_AXI_rready,M01_AXI_awaddr[3:0],M01_AXI_awprot[2:0],M01_AXI_awvalid,M01_AXI_awready,M01_AXI_wdata[31:0],M01_AXI_wstrb[3:0],M01_AXI_wvalid,M01_AXI_wready,M01_AXI_bresp[1:0],M01_AXI_bvalid,M01_AXI_bready,M01_AXI_araddr[3:0],M01_AXI_arprot[2:0],M01_AXI_arvalid,M01_AXI_arready,M01_AXI_rdata[31:0],M01_AXI_rresp[1:0],M01_AXI_rvalid,M01_AXI_rready,M02_AXI_awaddr[31:0],M02_AXI_awprot[2:0],M02_AXI_awvalid,M02_AXI_awready,M02_AXI_wdata[31:0],M02_AXI_wstrb[3:0],M02_AXI_wvalid,M02_AXI_wready,M02_AXI_bresp[1:0],M02_AXI_bvalid,M02_AXI_bready,M02_AXI_araddr[31:0],M02_AXI_arprot[2:0],M02_AXI_arvalid,M02_AXI_arready,M02_AXI_rdata[31:0],M02_AXI_rresp[1:0],M02_AXI_rvalid,M02_AXI_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_6f02,Vivado 2018.2";
begin
end;