-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Sat Oct 10 23:05:19 2020
-- Host        : desk053 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_util_ds_buf_0_0 -prefix
--               design_1_util_ds_buf_0_0_ design_1_util_ds_buf_0_0_stub.vhdl
-- Design      : design_1_util_ds_buf_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_util_ds_buf_0_0 is
  Port ( 
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_util_ds_buf_0_0;

architecture stub of design_1_util_ds_buf_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "IBUF_DS_P[0:0],IBUF_DS_N[0:0],IBUF_OUT[0:0],IBUF_DS_ODIV2[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "util_ds_buf,Vivado 2018.2";
begin
end;
