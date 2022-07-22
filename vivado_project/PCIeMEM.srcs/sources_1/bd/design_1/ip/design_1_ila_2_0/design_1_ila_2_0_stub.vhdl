-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Mon May 24 00:50:50 2021
-- Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/ip/design_1_ila_2_0/design_1_ila_2_0_stub.vhdl
-- Design      : design_1_ila_2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ila_2_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_ila_2_0;

architecture stub of design_1_ila_2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[4:0],probe1[4:0],probe2[3:0],probe3[7:0],probe4[0:0],probe5[0:0],probe6[1:0],probe7[0:0],probe8[7:0],probe9[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2018.2";
begin
end;
