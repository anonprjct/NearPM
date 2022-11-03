-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Sat Mar 20 01:32:59 2021
-- Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/ip/design_1_gate_axi_0_0/design_1_gate_axi_0_0_sim_netlist.vhdl
-- Design      : design_1_gate_axi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gate_axi_0_0_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_gate_axi_0_0_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_1_gate_axi_0_0_xpm_cdc_single : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gate_axi_0_0_xpm_cdc_single : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_gate_axi_0_0_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of design_1_gate_axi_0_0_xpm_cdc_single : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of design_1_gate_axi_0_0_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_gate_axi_0_0_xpm_cdc_single : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_1_gate_axi_0_0_xpm_cdc_single : entity is "SINGLE";
end design_1_gate_axi_0_0_xpm_cdc_single;

architecture STRUCTURE of design_1_gate_axi_0_0_xpm_cdc_single is
  signal src_ff : STD_LOGIC;
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => src_ff,
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_ff,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gate_axi_0_0_gate_axi is
  port (
    awaddr_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    awready_out : out STD_LOGIC;
    ndp_not_inuse_out : out STD_LOGIC;
    awvalid_out : out STD_LOGIC;
    bvalid_in : in STD_LOGIC;
    wvalid_in : in STD_LOGIC;
    awvalid_in : in STD_LOGIC;
    awaddr_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_src : in STD_LOGIC;
    ndp_not_inuse : in STD_LOGIC;
    clk_dest : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    awready_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gate_axi_0_0_gate_axi : entity is "gate_axi";
end design_1_gate_axi_0_0_gate_axi;

architecture STRUCTURE of design_1_gate_axi_0_0_gate_axi is
  signal ndp_not_inuse_sync : STD_LOGIC;
  signal stall_set : STD_LOGIC;
  signal stall_set_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of awvalid_out_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ndp_not_inuse_out_INST_0 : label is "soft_lutpair0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of xpm_cdc_single_inst : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of xpm_cdc_single_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_inst : label is 1;
  attribute VERSION : integer;
  attribute VERSION of xpm_cdc_single_inst : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of xpm_cdc_single_inst : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_cdc_single_inst : label is "TRUE";
begin
\awaddr_out[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(0),
      O => awaddr_out(0)
    );
\awaddr_out[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(10),
      O => awaddr_out(10)
    );
\awaddr_out[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(11),
      O => awaddr_out(11)
    );
\awaddr_out[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(12),
      O => awaddr_out(12)
    );
\awaddr_out[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(13),
      O => awaddr_out(13)
    );
\awaddr_out[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(14),
      O => awaddr_out(14)
    );
\awaddr_out[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(15),
      O => awaddr_out(15)
    );
\awaddr_out[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(16),
      O => awaddr_out(16)
    );
\awaddr_out[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(17),
      O => awaddr_out(17)
    );
\awaddr_out[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(18),
      O => awaddr_out(18)
    );
\awaddr_out[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(19),
      O => awaddr_out(19)
    );
\awaddr_out[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(1),
      O => awaddr_out(1)
    );
\awaddr_out[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(20),
      O => awaddr_out(20)
    );
\awaddr_out[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(21),
      O => awaddr_out(21)
    );
\awaddr_out[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(22),
      O => awaddr_out(22)
    );
\awaddr_out[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(23),
      O => awaddr_out(23)
    );
\awaddr_out[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(24),
      O => awaddr_out(24)
    );
\awaddr_out[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(25),
      O => awaddr_out(25)
    );
\awaddr_out[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(26),
      O => awaddr_out(26)
    );
\awaddr_out[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(27),
      O => awaddr_out(27)
    );
\awaddr_out[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(28),
      O => awaddr_out(28)
    );
\awaddr_out[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(29),
      O => awaddr_out(29)
    );
\awaddr_out[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(2),
      O => awaddr_out(2)
    );
\awaddr_out[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(30),
      O => awaddr_out(30)
    );
\awaddr_out[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(31),
      O => awaddr_out(31)
    );
\awaddr_out[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(3),
      O => awaddr_out(3)
    );
\awaddr_out[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(4),
      O => awaddr_out(4)
    );
\awaddr_out[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(5),
      O => awaddr_out(5)
    );
\awaddr_out[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(6),
      O => awaddr_out(6)
    );
\awaddr_out[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(7),
      O => awaddr_out(7)
    );
\awaddr_out[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(8),
      O => awaddr_out(8)
    );
\awaddr_out[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awaddr_in(9),
      O => awaddr_out(9)
    );
awready_out_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => stall_set,
      I1 => ndp_not_inuse_sync,
      I2 => bvalid_in,
      I3 => wvalid_in,
      I4 => awvalid_in,
      I5 => awready_in,
      O => awready_out
    );
awvalid_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => stall_set,
      I1 => awvalid_in,
      O => awvalid_out
    );
ndp_not_inuse_out_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => awvalid_in,
      I1 => wvalid_in,
      I2 => bvalid_in,
      I3 => ndp_not_inuse_sync,
      I4 => stall_set,
      O => ndp_not_inuse_out
    );
stall_set_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF01"
    )
        port map (
      I0 => awvalid_in,
      I1 => wvalid_in,
      I2 => bvalid_in,
      I3 => stall_set,
      I4 => ndp_not_inuse_sync,
      I5 => aresetn,
      O => stall_set_i_1_n_0
    );
stall_set_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_dest,
      CE => '1',
      D => stall_set_i_1_n_0,
      Q => stall_set,
      R => '0'
    );
xpm_cdc_single_inst: entity work.design_1_gate_axi_0_0_xpm_cdc_single
     port map (
      dest_clk => clk_dest,
      dest_out => ndp_not_inuse_sync,
      src_clk => clk_src,
      src_in => ndp_not_inuse
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gate_axi_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_gate_axi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_gate_axi_0_0 : entity is "design_1_gate_axi_0_0,gate_axi,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_gate_axi_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_gate_axi_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_gate_axi_0_0 : entity is "gate_axi,Vivado 2018.2";
end design_1_gate_axi_0_0;

architecture STRUCTURE of design_1_gate_axi_0_0 is
  signal \^arready_in\ : STD_LOGIC;
  signal \^arvalid_in\ : STD_LOGIC;
  signal \^bready_in\ : STD_LOGIC;
  signal \^bvalid_in\ : STD_LOGIC;
  signal \^rready_in\ : STD_LOGIC;
  signal \^rvalid_in\ : STD_LOGIC;
  signal \^wready_in\ : STD_LOGIC;
  signal \^wvalid_in\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW";
begin
  \^arready_in\ <= arready_in;
  \^arvalid_in\ <= arvalid_in;
  \^bready_in\ <= bready_in;
  \^bvalid_in\ <= bvalid_in;
  \^rready_in\ <= rready_in;
  \^rvalid_in\ <= rvalid_in;
  \^wready_in\ <= wready_in;
  \^wvalid_in\ <= wvalid_in;
  arready_out <= \^arready_in\;
  arvalid_out <= \^arvalid_in\;
  bready_out <= \^bready_in\;
  bvalid_out <= \^bvalid_in\;
  rready_out <= \^rready_in\;
  rvalid_out <= \^rvalid_in\;
  wready_out <= \^wready_in\;
  wvalid_out <= \^wvalid_in\;
inst: entity work.design_1_gate_axi_0_0_gate_axi
     port map (
      aresetn => aresetn,
      awaddr_in(31 downto 0) => awaddr_in(31 downto 0),
      awaddr_out(31 downto 0) => awaddr_out(31 downto 0),
      awready_in => awready_in,
      awready_out => awready_out,
      awvalid_in => awvalid_in,
      awvalid_out => awvalid_out,
      bvalid_in => \^bvalid_in\,
      clk_dest => clk_dest,
      clk_src => clk_src,
      ndp_not_inuse => ndp_not_inuse,
      ndp_not_inuse_out => ndp_not_inuse_out,
      wvalid_in => \^wvalid_in\
    );
end STRUCTURE;
