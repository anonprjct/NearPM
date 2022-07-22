-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri May 21 15:35:12 2021
-- Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_undolog_0_3 -prefix
--               design_1_undolog_0_3_ design_1_undolog_0_0_sim_netlist.vhdl
-- Design      : design_1_undolog_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_undolog_0_3_undolog_v2_1_M00_AXI is
  port (
    m00_axi_bready : out STD_LOGIC;
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_arvalid : out STD_LOGIC;
    memclr_done : out STD_LOGIC;
    start_clobber_reg : out STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    \slv_reg11_reg[2]\ : out STD_LOGIC;
    memclr_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wdata_reg[31]_0\ : out STD_LOGIC;
    \wdata_reg[31]_1\ : out STD_LOGIC;
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_aclk : in STD_LOGIC;
    start_clobber_reg_reg_0 : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    \slv_reg11_reg[2]_0\ : in STD_LOGIC;
    logclr_pulsegend1_reg : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    DMA_DEST1 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 22 downto 0 );
    in13 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    physical_src_addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \slv_reg4_reg[19]\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \slv_reg0_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_wready : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_undolog_0_3_undolog_v2_1_M00_AXI;

architecture STRUCTURE of design_1_undolog_0_3_undolog_v2_1_M00_AXI is
  signal \DMA_DONE_i_1__0_n_0\ : STD_LOGIC;
  signal DMA_DONE_i_2_n_0 : STD_LOGIC;
  signal DMA_DONE_i_3_n_0 : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_arvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_awvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_bready_i_1__0_n_0\ : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal \axi_wvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \^m00_axi_arvalid\ : STD_LOGIC;
  signal \^m00_axi_awvalid\ : STD_LOGIC;
  signal \^m00_axi_bready\ : STD_LOGIC;
  signal \^m00_axi_rready\ : STD_LOGIC;
  signal \^m00_axi_wvalid\ : STD_LOGIC;
  signal \^memclr_done\ : STD_LOGIC;
  signal \mst_exec_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \mst_exec_state__0\ : signal is "yes";
  signal raddr : STD_LOGIC_VECTOR ( 5 to 5 );
  signal raddr0 : STD_LOGIC;
  signal \raddr[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \raddr[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \raddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[5]\ : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal read_issued : STD_LOGIC;
  signal \read_issued_i_1__0_n_0\ : STD_LOGIC;
  signal read_issued_i_3_n_0 : STD_LOGIC;
  signal read_issued_reg_n_0 : STD_LOGIC;
  signal reads_done : STD_LOGIC;
  signal reads_done0 : STD_LOGIC;
  signal \^start_clobber_reg\ : STD_LOGIC;
  signal start_single_read : STD_LOGIC;
  signal \start_single_read_i_1__0_n_0\ : STD_LOGIC;
  signal start_single_read_i_3_n_0 : STD_LOGIC;
  signal start_single_read_reg_n_0 : STD_LOGIC;
  signal start_single_write0 : STD_LOGIC;
  signal \start_single_write_i_1__0_n_0\ : STD_LOGIC;
  signal start_single_write_i_2_n_0 : STD_LOGIC;
  signal start_single_write_reg_n_0 : STD_LOGIC;
  signal waddr : STD_LOGIC_VECTOR ( 6 downto 3 );
  signal waddr1_in : STD_LOGIC_VECTOR ( 6 downto 3 );
  signal \waddr[6]_i_1_n_0\ : STD_LOGIC;
  signal wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \wdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[13]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[14]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[16]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[17]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[18]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[19]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \wdata[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \^wdata_reg[31]_0\ : STD_LOGIC;
  signal \^wdata_reg[31]_1\ : STD_LOGIC;
  signal \write_issued_i_1__0_n_0\ : STD_LOGIC;
  signal write_issued_reg_n_0 : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  signal writes_done0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[3]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[0]\ : label is "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_mst_exec_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[1]\ : label is "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101";
  attribute KEEP of \FSM_sequential_mst_exec_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[2]\ : label is "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101";
  attribute KEEP of \FSM_sequential_mst_exec_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[3]\ : label is "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101";
  attribute KEEP of \FSM_sequential_mst_exec_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of \axi_awvalid_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_bready_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_wvalid_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \raddr[5]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_issued_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair3";
begin
  m00_axi_arvalid <= \^m00_axi_arvalid\;
  m00_axi_awvalid <= \^m00_axi_awvalid\;
  m00_axi_bready <= \^m00_axi_bready\;
  m00_axi_rready <= \^m00_axi_rready\;
  m00_axi_wvalid <= \^m00_axi_wvalid\;
  memclr_done <= \^memclr_done\;
  start_clobber_reg <= \^start_clobber_reg\;
  \wdata_reg[31]_0\ <= \^wdata_reg[31]_0\;
  \wdata_reg[31]_1\ <= \^wdata_reg[31]_1\;
\DMA_DONE_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axi_aresetn,
      O => \DMA_DONE_i_1__0_n_0\
    );
DMA_DONE_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => \mst_exec_state__0\(2),
      I1 => reads_done,
      I2 => \mst_exec_state__0\(3),
      I3 => DMA_DONE_i_3_n_0,
      I4 => \^memclr_done\,
      O => DMA_DONE_i_2_n_0
    );
DMA_DONE_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080000000000000F"
    )
        port map (
      I0 => rdata(1),
      I1 => reads_done,
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(3),
      I4 => \mst_exec_state__0\(1),
      I5 => \mst_exec_state__0\(0),
      O => DMA_DONE_i_3_n_0
    );
DMA_DONE_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => DMA_DONE_i_2_n_0,
      Q => \^memclr_done\,
      R => \DMA_DONE_i_1__0_n_0\
    );
\FSM_sequential_mst_exec_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \FSM_sequential_mst_exec_state[0]_i_2__0_n_0\,
      I1 => \mst_exec_state__0\(3),
      I2 => \FSM_sequential_mst_exec_state[0]_i_3__0_n_0\,
      I3 => \mst_exec_state__0\(2),
      I4 => \FSM_sequential_mst_exec_state[0]_i_4_n_0\,
      O => \FSM_sequential_mst_exec_state[0]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47F3CFC0"
    )
        port map (
      I0 => rdata(1),
      I1 => \mst_exec_state__0\(1),
      I2 => writes_done,
      I3 => \mst_exec_state__0\(0),
      I4 => reads_done,
      O => \FSM_sequential_mst_exec_state[0]_i_2__0_n_0\
    );
\FSM_sequential_mst_exec_state[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A8FFFFFFA800"
    )
        port map (
      I0 => reads_done,
      I1 => rdata(1),
      I2 => rdata(0),
      I3 => \mst_exec_state__0\(1),
      I4 => \mst_exec_state__0\(0),
      I5 => writes_done,
      O => \FSM_sequential_mst_exec_state[0]_i_3__0_n_0\
    );
\FSM_sequential_mst_exec_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505FCFCF505FC0C0"
    )
        port map (
      I0 => reads_done,
      I1 => writes_done,
      I2 => \mst_exec_state__0\(1),
      I3 => \FSM_sequential_mst_exec_state[1]_i_4_n_0\,
      I4 => \mst_exec_state__0\(0),
      I5 => logclr_pulsegend1_reg,
      O => \FSM_sequential_mst_exec_state[0]_i_4_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47BBFF004788FF00"
    )
        port map (
      I0 => writes_done,
      I1 => \mst_exec_state__0\(2),
      I2 => reads_done,
      I3 => \mst_exec_state__0\(1),
      I4 => \mst_exec_state__0\(0),
      I5 => \FSM_sequential_mst_exec_state[1]_i_4_n_0\,
      O => \FSM_sequential_mst_exec_state[1]_i_2_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FF070F0"
    )
        port map (
      I0 => rdata(1),
      I1 => reads_done,
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(0),
      I4 => writes_done,
      O => \FSM_sequential_mst_exec_state[1]_i_3_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => reads_done,
      I1 => rdata(1),
      I2 => rdata(0),
      O => \FSM_sequential_mst_exec_state[1]_i_4_n_0\
    );
\FSM_sequential_mst_exec_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005F80FF80"
    )
        port map (
      I0 => \mst_exec_state__0\(0),
      I1 => reads_done,
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => writes_done,
      I5 => \mst_exec_state__0\(3),
      O => \FSM_sequential_mst_exec_state[2]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74CC44CCCCCCCCCC"
    )
        port map (
      I0 => \FSM_sequential_mst_exec_state[3]_i_2_n_0\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(0),
      I4 => writes_done,
      I5 => \mst_exec_state__0\(1),
      O => \FSM_sequential_mst_exec_state[3]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reads_done,
      I1 => rdata(1),
      O => \FSM_sequential_mst_exec_state[3]_i_2_n_0\
    );
\FSM_sequential_mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[0]_i_1_n_0\,
      Q => \mst_exec_state__0\(0),
      R => \DMA_DONE_i_1__0_n_0\
    );
\FSM_sequential_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state_reg[1]_i_1_n_0\,
      Q => \mst_exec_state__0\(1),
      R => \DMA_DONE_i_1__0_n_0\
    );
\FSM_sequential_mst_exec_state_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_mst_exec_state[1]_i_3_n_0\,
      O => \FSM_sequential_mst_exec_state_reg[1]_i_1_n_0\,
      S => \mst_exec_state__0\(3)
    );
\FSM_sequential_mst_exec_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[2]_i_1_n_0\,
      Q => \mst_exec_state__0\(2),
      R => \DMA_DONE_i_1__0_n_0\
    );
\FSM_sequential_mst_exec_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[3]_i_1_n_0\,
      Q => \mst_exec_state__0\(3),
      R => \DMA_DONE_i_1__0_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \raddr_reg_n_0_[2]\,
      Q => m00_axi_araddr(0),
      R => SR(0)
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \raddr_reg_n_0_[5]\,
      Q => m00_axi_araddr(1),
      R => SR(0)
    );
\axi_arvalid_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => start_single_read_reg_n_0,
      I1 => \^m00_axi_arvalid\,
      I2 => m00_axi_arready,
      O => \axi_arvalid_i_1__0_n_0\
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \axi_arvalid_i_1__0_n_0\,
      Q => \^m00_axi_arvalid\,
      R => SR(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => waddr(3),
      Q => m00_axi_awaddr(0),
      R => SR(0)
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => waddr(4),
      Q => m00_axi_awaddr(1),
      R => SR(0)
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => waddr(5),
      Q => m00_axi_awaddr(2),
      R => SR(0)
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => waddr(6),
      Q => m00_axi_awaddr(3),
      R => SR(0)
    );
\axi_awvalid_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => start_single_write_reg_n_0,
      I1 => \^m00_axi_awvalid\,
      I2 => m00_axi_awready,
      O => \axi_awvalid_i_1__0_n_0\
    );
axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \axi_awvalid_i_1__0_n_0\,
      Q => \^m00_axi_awvalid\,
      R => SR(0)
    );
\axi_bready_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m00_axi_bvalid,
      I1 => \^m00_axi_bready\,
      O => \axi_bready_i_1__0_n_0\
    );
axi_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \axi_bready_i_1__0_n_0\,
      Q => \^m00_axi_bready\,
      R => SR(0)
    );
axi_rready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => m00_axi_rvalid,
      O => axi_rready_i_1_n_0
    );
axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^m00_axi_rready\,
      R => SR(0)
    );
\axi_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(0),
      Q => m00_axi_wdata(0),
      R => SR(0)
    );
\axi_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(10),
      Q => m00_axi_wdata(10),
      R => SR(0)
    );
\axi_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(11),
      Q => m00_axi_wdata(11),
      R => SR(0)
    );
\axi_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(12),
      Q => m00_axi_wdata(12),
      R => SR(0)
    );
\axi_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(13),
      Q => m00_axi_wdata(13),
      R => SR(0)
    );
\axi_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(14),
      Q => m00_axi_wdata(14),
      R => SR(0)
    );
\axi_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(15),
      Q => m00_axi_wdata(15),
      R => SR(0)
    );
\axi_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(16),
      Q => m00_axi_wdata(16),
      R => SR(0)
    );
\axi_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(17),
      Q => m00_axi_wdata(17),
      R => SR(0)
    );
\axi_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(18),
      Q => m00_axi_wdata(18),
      R => SR(0)
    );
\axi_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(19),
      Q => m00_axi_wdata(19),
      R => SR(0)
    );
\axi_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(1),
      Q => m00_axi_wdata(1),
      R => SR(0)
    );
\axi_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(20),
      Q => m00_axi_wdata(20),
      R => SR(0)
    );
\axi_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(21),
      Q => m00_axi_wdata(21),
      R => SR(0)
    );
\axi_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(22),
      Q => m00_axi_wdata(22),
      R => SR(0)
    );
\axi_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(23),
      Q => m00_axi_wdata(23),
      R => SR(0)
    );
\axi_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(24),
      Q => m00_axi_wdata(24),
      R => SR(0)
    );
\axi_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(25),
      Q => m00_axi_wdata(25),
      R => SR(0)
    );
\axi_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(26),
      Q => m00_axi_wdata(26),
      R => SR(0)
    );
\axi_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(27),
      Q => m00_axi_wdata(27),
      R => SR(0)
    );
\axi_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(28),
      Q => m00_axi_wdata(28),
      R => SR(0)
    );
\axi_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(29),
      Q => m00_axi_wdata(29),
      R => SR(0)
    );
\axi_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(2),
      Q => m00_axi_wdata(2),
      R => SR(0)
    );
\axi_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(30),
      Q => m00_axi_wdata(30),
      R => SR(0)
    );
\axi_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(31),
      Q => m00_axi_wdata(31),
      R => SR(0)
    );
\axi_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(3),
      Q => m00_axi_wdata(3),
      R => SR(0)
    );
\axi_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(4),
      Q => m00_axi_wdata(4),
      R => SR(0)
    );
\axi_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(5),
      Q => m00_axi_wdata(5),
      R => SR(0)
    );
\axi_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(6),
      Q => m00_axi_wdata(6),
      R => SR(0)
    );
\axi_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(7),
      Q => m00_axi_wdata(7),
      R => SR(0)
    );
\axi_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(8),
      Q => m00_axi_wdata(8),
      R => SR(0)
    );
\axi_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => wdata(9),
      Q => m00_axi_wdata(9),
      R => SR(0)
    );
\axi_wvalid_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => start_single_write_reg_n_0,
      I1 => \^m00_axi_wvalid\,
      I2 => m00_axi_wready,
      O => \axi_wvalid_i_1__0_n_0\
    );
axi_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \axi_wvalid_i_1__0_n_0\,
      Q => \^m00_axi_wvalid\,
      R => SR(0)
    );
\memclr_state[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15EA"
    )
        port map (
      I0 => \mst_exec_state__0\(3),
      I1 => \mst_exec_state__0\(1),
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(0),
      O => memclr_state(0)
    );
\memclr_state[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3788"
    )
        port map (
      I0 => \mst_exec_state__0\(3),
      I1 => \mst_exec_state__0\(0),
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(1),
      O => memclr_state(1)
    );
\memclr_state[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A444"
    )
        port map (
      I0 => \mst_exec_state__0\(3),
      I1 => \mst_exec_state__0\(2),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(0),
      O => memclr_state(2)
    );
\memclr_state[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \mst_exec_state__0\(3),
      I1 => \mst_exec_state__0\(1),
      I2 => \mst_exec_state__0\(0),
      I3 => \mst_exec_state__0\(2),
      O => memclr_state(3)
    );
\raddr[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"63"
    )
        port map (
      I0 => \mst_exec_state__0\(2),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      O => \raddr[2]_i_1__1_n_0\
    );
\raddr[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020102000100020"
    )
        port map (
      I0 => \mst_exec_state__0\(0),
      I1 => reads_done,
      I2 => raddr0,
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(3),
      I5 => \mst_exec_state__0\(1),
      O => \raddr[5]_i_1__1_n_0\
    );
\raddr[5]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mst_exec_state__0\(2),
      I1 => \mst_exec_state__0\(3),
      O => raddr(5)
    );
\raddr[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => read_issued_reg_n_0,
      I1 => \^m00_axi_arvalid\,
      I2 => m00_axi_rvalid,
      I3 => start_single_read_reg_n_0,
      O => raddr0
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \raddr[5]_i_1__1_n_0\,
      D => \raddr[2]_i_1__1_n_0\,
      Q => \raddr_reg_n_0_[2]\,
      R => \DMA_DONE_i_1__0_n_0\
    );
\raddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \raddr[5]_i_1__1_n_0\,
      D => raddr(5),
      Q => \raddr_reg_n_0_[5]\,
      R => \DMA_DONE_i_1__0_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(0),
      Q => rdata(0),
      R => SR(0)
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(10),
      Q => rdata(10),
      R => SR(0)
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(11),
      Q => rdata(11),
      R => SR(0)
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(12),
      Q => rdata(12),
      R => SR(0)
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(13),
      Q => rdata(13),
      R => SR(0)
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(14),
      Q => rdata(14),
      R => SR(0)
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(15),
      Q => rdata(15),
      R => SR(0)
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(16),
      Q => rdata(16),
      R => SR(0)
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(17),
      Q => rdata(17),
      R => SR(0)
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(18),
      Q => rdata(18),
      R => SR(0)
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(19),
      Q => rdata(19),
      R => SR(0)
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(1),
      Q => rdata(1),
      R => SR(0)
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(20),
      Q => rdata(20),
      R => SR(0)
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(21),
      Q => rdata(21),
      R => SR(0)
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(22),
      Q => rdata(22),
      R => SR(0)
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(23),
      Q => rdata(23),
      R => SR(0)
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(24),
      Q => rdata(24),
      R => SR(0)
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(25),
      Q => rdata(25),
      R => SR(0)
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(26),
      Q => rdata(26),
      R => SR(0)
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(27),
      Q => rdata(27),
      R => SR(0)
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(28),
      Q => rdata(28),
      R => SR(0)
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(29),
      Q => rdata(29),
      R => SR(0)
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(2),
      Q => rdata(2),
      R => SR(0)
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(30),
      Q => rdata(30),
      R => SR(0)
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(31),
      Q => rdata(31),
      R => SR(0)
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(3),
      Q => rdata(3),
      R => SR(0)
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(4),
      Q => rdata(4),
      R => SR(0)
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(5),
      Q => rdata(5),
      R => SR(0)
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(6),
      Q => rdata(6),
      R => SR(0)
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(7),
      Q => rdata(7),
      R => SR(0)
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(8),
      Q => rdata(8),
      R => SR(0)
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => reads_done0,
      D => m00_axi_rdata(9),
      Q => rdata(9),
      R => SR(0)
    );
\read_issued_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0100"
    )
        port map (
      I0 => \^m00_axi_arvalid\,
      I1 => m00_axi_rvalid,
      I2 => start_single_read_reg_n_0,
      I3 => read_issued,
      I4 => read_issued_reg_n_0,
      O => \read_issued_i_1__0_n_0\
    );
read_issued_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08480408"
    )
        port map (
      I0 => \mst_exec_state__0\(0),
      I1 => read_issued_i_3_n_0,
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(3),
      I4 => \mst_exec_state__0\(1),
      O => read_issued
    );
read_issued_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAB"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => read_issued_reg_n_0,
      I2 => \^m00_axi_arvalid\,
      I3 => m00_axi_rvalid,
      I4 => start_single_read_reg_n_0,
      I5 => reads_done,
      O => read_issued_i_3_n_0
    );
read_issued_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \read_issued_i_1__0_n_0\,
      Q => read_issued_reg_n_0,
      R => \DMA_DONE_i_1__0_n_0\
    );
reads_done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m00_axi_rvalid,
      I1 => \^m00_axi_rready\,
      O => reads_done0
    );
reads_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => reads_done0,
      Q => reads_done,
      R => SR(0)
    );
\slv_reg11[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^memclr_done\,
      I1 => \slv_reg11_reg[2]_0\,
      O => \slv_reg11_reg[2]\
    );
start_clobber_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => start_clobber_reg_reg_0,
      Q => \^start_clobber_reg\,
      R => '0'
    );
\start_single_read_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0100"
    )
        port map (
      I0 => read_issued_reg_n_0,
      I1 => \^m00_axi_arvalid\,
      I2 => m00_axi_rvalid,
      I3 => start_single_read,
      I4 => start_single_read_reg_n_0,
      O => \start_single_read_i_1__0_n_0\
    );
\start_single_read_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08480408"
    )
        port map (
      I0 => \mst_exec_state__0\(0),
      I1 => start_single_read_i_3_n_0,
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(3),
      I4 => \mst_exec_state__0\(1),
      O => start_single_read
    );
start_single_read_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555557"
    )
        port map (
      I0 => \^m00_axi_rready\,
      I1 => read_issued_reg_n_0,
      I2 => \^m00_axi_arvalid\,
      I3 => m00_axi_rvalid,
      I4 => start_single_read_reg_n_0,
      I5 => reads_done,
      O => start_single_read_i_3_n_0
    );
start_single_read_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \start_single_read_i_1__0_n_0\,
      Q => start_single_read_reg_n_0,
      R => \DMA_DONE_i_1__0_n_0\
    );
\start_single_write_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF4400"
    )
        port map (
      I0 => writes_done,
      I1 => start_single_write0,
      I2 => \^m00_axi_bready\,
      I3 => start_single_write_i_2_n_0,
      I4 => start_single_write_reg_n_0,
      O => \start_single_write_i_1__0_n_0\
    );
start_single_write_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4538"
    )
        port map (
      I0 => \mst_exec_state__0\(3),
      I1 => \mst_exec_state__0\(0),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      O => start_single_write_i_2_n_0
    );
start_single_write_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \start_single_write_i_1__0_n_0\,
      Q => start_single_write_reg_n_0,
      R => \DMA_DONE_i_1__0_n_0\
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \mst_exec_state__0\(3),
      I1 => \mst_exec_state__0\(2),
      I2 => \mst_exec_state__0\(0),
      O => waddr1_in(3)
    );
\waddr[4]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mst_exec_state__0\(2),
      O => waddr1_in(4)
    );
\waddr[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1500"
    )
        port map (
      I0 => \mst_exec_state__0\(1),
      I1 => \mst_exec_state__0\(2),
      I2 => \mst_exec_state__0\(3),
      I3 => \mst_exec_state__0\(0),
      O => waddr1_in(5)
    );
\waddr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004040040400440"
    )
        port map (
      I0 => writes_done,
      I1 => start_single_write0,
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(1),
      I4 => \mst_exec_state__0\(0),
      I5 => \mst_exec_state__0\(3),
      O => \waddr[6]_i_1_n_0\
    );
\waddr[6]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \mst_exec_state__0\(1),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(2),
      O => waddr1_in(6)
    );
\waddr[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => m00_axi_bvalid,
      I1 => \^m00_axi_wvalid\,
      I2 => write_issued_reg_n_0,
      I3 => start_single_write_reg_n_0,
      I4 => \^m00_axi_awvalid\,
      O => start_single_write0
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => waddr1_in(3),
      Q => waddr(3),
      R => \DMA_DONE_i_1__0_n_0\
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => waddr1_in(4),
      Q => waddr(4),
      R => \DMA_DONE_i_1__0_n_0\
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => waddr1_in(5),
      Q => waddr(5),
      R => \DMA_DONE_i_1__0_n_0\
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => waddr1_in(6),
      Q => waddr(6),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(8),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(9),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[10]_i_2__0_n_0\,
      O => \wdata[10]_i_1_n_0\
    );
\wdata[10]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(10),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(9),
      O => \wdata[10]_i_2__0_n_0\
    );
\wdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(9),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(10),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[11]_i_2__0_n_0\,
      O => \wdata[11]_i_1_n_0\
    );
\wdata[11]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(11),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(10),
      O => \wdata[11]_i_2__0_n_0\
    );
\wdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(10),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(11),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[12]_i_2__0_n_0\,
      O => \wdata[12]_i_1_n_0\
    );
\wdata[12]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(12),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(11),
      O => \wdata[12]_i_2__0_n_0\
    );
\wdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(11),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(12),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[13]_i_2__0_n_0\,
      O => \wdata[13]_i_1_n_0\
    );
\wdata[13]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(13),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(12),
      O => \wdata[13]_i_2__0_n_0\
    );
\wdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(12),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(13),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[14]_i_2__0_n_0\,
      O => \wdata[14]_i_1_n_0\
    );
\wdata[14]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(14),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(13),
      O => \wdata[14]_i_2__0_n_0\
    );
\wdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(13),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(14),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[15]_i_2__0_n_0\,
      O => \wdata[15]_i_1_n_0\
    );
\wdata[15]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(15),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(14),
      O => \wdata[15]_i_2__0_n_0\
    );
\wdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(14),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(15),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[16]_i_2__0_n_0\,
      O => \wdata[16]_i_1_n_0\
    );
\wdata[16]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(16),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(15),
      O => \wdata[16]_i_2__0_n_0\
    );
\wdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(15),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(16),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[17]_i_2__0_n_0\,
      O => \wdata[17]_i_1_n_0\
    );
\wdata[17]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(17),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(16),
      O => \wdata[17]_i_2__0_n_0\
    );
\wdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(16),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(17),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[18]_i_2__0_n_0\,
      O => \wdata[18]_i_1_n_0\
    );
\wdata[18]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(18),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(17),
      O => \wdata[18]_i_2__0_n_0\
    );
\wdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(17),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(18),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[19]_i_2__0_n_0\,
      O => \wdata[19]_i_1_n_0\
    );
\wdata[19]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(19),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(18),
      O => \wdata[19]_i_2__0_n_0\
    );
\wdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \slv_reg0_reg[1]\(0),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(0),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[1]_i_2__0_n_0\,
      O => \wdata[1]_i_1_n_0\
    );
\wdata[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(1),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(0),
      O => \wdata[1]_i_2__0_n_0\
    );
\wdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DMA_DEST1(18),
      I1 => in13(0),
      I2 => \^wdata_reg[31]_0\,
      I3 => rdata(20),
      I4 => \^wdata_reg[31]_1\,
      I5 => physical_src_addr(0),
      O => \wdata[20]_i_1_n_0\
    );
\wdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DMA_DEST1(19),
      I1 => in13(1),
      I2 => \^wdata_reg[31]_0\,
      I3 => rdata(21),
      I4 => \^wdata_reg[31]_1\,
      I5 => physical_src_addr(1),
      O => \wdata[21]_i_1_n_0\
    );
\wdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DMA_DEST1(20),
      I1 => in13(2),
      I2 => \^wdata_reg[31]_0\,
      I3 => rdata(22),
      I4 => \^wdata_reg[31]_1\,
      I5 => physical_src_addr(2),
      O => \wdata[22]_i_1_n_0\
    );
\wdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DMA_DEST1(21),
      I1 => in13(3),
      I2 => \^wdata_reg[31]_0\,
      I3 => rdata(23),
      I4 => \^wdata_reg[31]_1\,
      I5 => physical_src_addr(3),
      O => \wdata[23]_i_1_n_0\
    );
\wdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DMA_DEST1(22),
      I1 => in13(4),
      I2 => \^wdata_reg[31]_0\,
      I3 => rdata(24),
      I4 => \^wdata_reg[31]_1\,
      I5 => physical_src_addr(4),
      O => \wdata[24]_i_1_n_0\
    );
\wdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DMA_DEST1(23),
      I1 => in13(5),
      I2 => \^wdata_reg[31]_0\,
      I3 => rdata(25),
      I4 => \^wdata_reg[31]_1\,
      I5 => physical_src_addr(5),
      O => \wdata[25]_i_1_n_0\
    );
\wdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DMA_DEST1(24),
      I1 => in13(6),
      I2 => \^wdata_reg[31]_0\,
      I3 => rdata(26),
      I4 => \^wdata_reg[31]_1\,
      I5 => physical_src_addr(6),
      O => \wdata[26]_i_1_n_0\
    );
\wdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DMA_DEST1(25),
      I1 => in13(7),
      I2 => \^wdata_reg[31]_0\,
      I3 => rdata(27),
      I4 => \^wdata_reg[31]_1\,
      I5 => physical_src_addr(7),
      O => \wdata[27]_i_1_n_0\
    );
\wdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFF0C00AA000C00"
    )
        port map (
      I0 => DMA_DEST1(26),
      I1 => Q(19),
      I2 => \^start_clobber_reg\,
      I3 => \^wdata_reg[31]_0\,
      I4 => \^wdata_reg[31]_1\,
      I5 => rdata(28),
      O => \wdata[28]_i_1_n_0\
    );
\wdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFF0C00AA000C00"
    )
        port map (
      I0 => DMA_DEST1(27),
      I1 => Q(20),
      I2 => \^start_clobber_reg\,
      I3 => \^wdata_reg[31]_0\,
      I4 => \^wdata_reg[31]_1\,
      I5 => rdata(29),
      O => \wdata[29]_i_1_n_0\
    );
\wdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(0),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(1),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[2]_i_2__0_n_0\,
      O => \wdata[2]_i_1_n_0\
    );
\wdata[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(2),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(1),
      O => \wdata[2]_i_2__0_n_0\
    );
\wdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA000CFF0CFF"
    )
        port map (
      I0 => DMA_DEST1(28),
      I1 => Q(21),
      I2 => \^start_clobber_reg\,
      I3 => \^wdata_reg[31]_0\,
      I4 => rdata(30),
      I5 => \^wdata_reg[31]_1\,
      O => \wdata[30]_i_1_n_0\
    );
\wdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA000CFF0CFF"
    )
        port map (
      I0 => DMA_DEST1(29),
      I1 => Q(22),
      I2 => \^start_clobber_reg\,
      I3 => \^wdata_reg[31]_0\,
      I4 => rdata(31),
      I5 => \^wdata_reg[31]_1\,
      O => \wdata[31]_i_1_n_0\
    );
\wdata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2240"
    )
        port map (
      I0 => \mst_exec_state__0\(0),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      O => \^wdata_reg[31]_0\
    );
\wdata[31]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F53"
    )
        port map (
      I0 => \mst_exec_state__0\(3),
      I1 => \mst_exec_state__0\(1),
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(0),
      O => \^wdata_reg[31]_1\
    );
\wdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(1),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(2),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[3]_i_2__0_n_0\,
      O => \wdata[3]_i_1_n_0\
    );
\wdata[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(3),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(2),
      O => \wdata[3]_i_2__0_n_0\
    );
\wdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(2),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(3),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[4]_i_2__0_n_0\,
      O => \wdata[4]_i_1_n_0\
    );
\wdata[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(4),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(3),
      O => \wdata[4]_i_2__0_n_0\
    );
\wdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(3),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(4),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[5]_i_2__0_n_0\,
      O => \wdata[5]_i_1_n_0\
    );
\wdata[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(5),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(4),
      O => \wdata[5]_i_2__0_n_0\
    );
\wdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8FFFFBBB80000"
    )
        port map (
      I0 => DMA_DEST1(4),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(5),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[6]_i_2__0_n_0\,
      O => \wdata[6]_i_1_n_0\
    );
\wdata[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(6),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(5),
      O => \wdata[6]_i_2__0_n_0\
    );
\wdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(5),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(6),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[7]_i_2__0_n_0\,
      O => \wdata[7]_i_1_n_0\
    );
\wdata[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(7),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(6),
      O => \wdata[7]_i_2__0_n_0\
    );
\wdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(6),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(7),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[8]_i_2__0_n_0\,
      O => \wdata[8]_i_1_n_0\
    );
\wdata[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(8),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(7),
      O => \wdata[8]_i_2__0_n_0\
    );
\wdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => DMA_DEST1(7),
      I1 => \^wdata_reg[31]_1\,
      I2 => Q(8),
      I3 => \^start_clobber_reg\,
      I4 => \^wdata_reg[31]_0\,
      I5 => \wdata[9]_i_2__0_n_0\,
      O => \wdata[9]_i_1_n_0\
    );
\wdata[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => rdata(9),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[19]\(8),
      O => \wdata[9]_i_2__0_n_0\
    );
\wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => D(0),
      Q => wdata(0),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[10]_i_1_n_0\,
      Q => wdata(10),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[11]_i_1_n_0\,
      Q => wdata(11),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[12]_i_1_n_0\,
      Q => wdata(12),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[13]_i_1_n_0\,
      Q => wdata(13),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[14]_i_1_n_0\,
      Q => wdata(14),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[15]_i_1_n_0\,
      Q => wdata(15),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[16]_i_1_n_0\,
      Q => wdata(16),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[17]_i_1_n_0\,
      Q => wdata(17),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[18]_i_1_n_0\,
      Q => wdata(18),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[19]_i_1_n_0\,
      Q => wdata(19),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[1]_i_1_n_0\,
      Q => wdata(1),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[20]_i_1_n_0\,
      Q => wdata(20),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[21]_i_1_n_0\,
      Q => wdata(21),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[22]_i_1_n_0\,
      Q => wdata(22),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[23]_i_1_n_0\,
      Q => wdata(23),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[24]_i_1_n_0\,
      Q => wdata(24),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[25]_i_1_n_0\,
      Q => wdata(25),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[26]_i_1_n_0\,
      Q => wdata(26),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[27]_i_1_n_0\,
      Q => wdata(27),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[28]_i_1_n_0\,
      Q => wdata(28),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[29]_i_1_n_0\,
      Q => wdata(29),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[2]_i_1_n_0\,
      Q => wdata(2),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[30]_i_1_n_0\,
      Q => wdata(30),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[31]_i_1_n_0\,
      Q => wdata(31),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[3]_i_1_n_0\,
      Q => wdata(3),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[4]_i_1_n_0\,
      Q => wdata(4),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[5]_i_1_n_0\,
      Q => wdata(5),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[6]_i_1_n_0\,
      Q => wdata(6),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[7]_i_1_n_0\,
      Q => wdata(7),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[8]_i_1_n_0\,
      Q => wdata(8),
      R => \DMA_DONE_i_1__0_n_0\
    );
\wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \waddr[6]_i_1_n_0\,
      D => \wdata[9]_i_1_n_0\,
      Q => wdata(9),
      R => \DMA_DONE_i_1__0_n_0\
    );
\write_issued_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4400"
    )
        port map (
      I0 => writes_done,
      I1 => start_single_write0,
      I2 => \^m00_axi_bready\,
      I3 => start_single_write_i_2_n_0,
      I4 => write_issued_reg_n_0,
      O => \write_issued_i_1__0_n_0\
    );
write_issued_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \write_issued_i_1__0_n_0\,
      Q => write_issued_reg_n_0,
      R => \DMA_DONE_i_1__0_n_0\
    );
writes_done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m00_axi_bvalid,
      I1 => \^m00_axi_bready\,
      O => writes_done0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => writes_done0,
      Q => writes_done,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_undolog_0_3_undolog_v2_1_M01_AXI is
  port (
    m01_axi_bready : out STD_LOGIC;
    m01_axi_wvalid : out STD_LOGIC;
    m01_axi_awvalid : out STD_LOGIC;
    m01_axi_arvalid : out STD_LOGIC;
    datacpy_done : out STD_LOGIC;
    m01_axi_rready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg11_reg[1]\ : out STD_LOGIC;
    datacpy_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wdata_reg[31]_0\ : out STD_LOGIC;
    \wdata_reg[0]_0\ : out STD_LOGIC;
    m01_axi_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m01_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m01_axi_araddr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m01_axi_aclk : in STD_LOGIC;
    m01_axi_rvalid : in STD_LOGIC;
    m01_axi_bvalid : in STD_LOGIC;
    \slv_reg11_reg[1]_0\ : in STD_LOGIC;
    data_copy_pulse : in STD_LOGIC;
    DMA_START2 : in STD_LOGIC;
    m01_axi_aresetn : in STD_LOGIC;
    \operation_type_reg[1]\ : in STD_LOGIC;
    \slv_reg4_reg[31]\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \operation_type_reg[1]_0\ : in STD_LOGIC;
    \operation_type_reg[1]_1\ : in STD_LOGIC;
    \operation_type_reg[1]_2\ : in STD_LOGIC;
    \operation_type_reg[1]_3\ : in STD_LOGIC;
    \operation_type_reg[1]_4\ : in STD_LOGIC;
    \operation_type_reg[1]_5\ : in STD_LOGIC;
    \operation_type_reg[1]_6\ : in STD_LOGIC;
    \operation_type_reg[1]_7\ : in STD_LOGIC;
    \operation_type_reg[1]_8\ : in STD_LOGIC;
    \operation_type_reg[1]_9\ : in STD_LOGIC;
    \operation_type_reg[1]_10\ : in STD_LOGIC;
    \slv_reg0_reg[19]\ : in STD_LOGIC;
    \slv_reg0_reg[18]\ : in STD_LOGIC;
    \slv_reg0_reg[17]\ : in STD_LOGIC;
    \slv_reg0_reg[16]\ : in STD_LOGIC;
    \slv_reg0_reg[15]\ : in STD_LOGIC;
    \slv_reg0_reg[14]\ : in STD_LOGIC;
    \slv_reg0_reg[13]\ : in STD_LOGIC;
    \slv_reg0_reg[12]\ : in STD_LOGIC;
    \slv_reg0_reg[11]\ : in STD_LOGIC;
    \slv_reg0_reg[10]\ : in STD_LOGIC;
    \slv_reg0_reg[9]\ : in STD_LOGIC;
    \slv_reg0_reg[8]\ : in STD_LOGIC;
    \slv_reg0_reg[7]\ : in STD_LOGIC;
    \slv_reg0_reg[6]\ : in STD_LOGIC;
    \slv_reg0_reg[5]\ : in STD_LOGIC;
    \slv_reg0_reg[4]\ : in STD_LOGIC;
    \slv_reg0_reg[3]\ : in STD_LOGIC;
    \slv_reg0_reg[2]\ : in STD_LOGIC;
    m01_axi_wready : in STD_LOGIC;
    m01_axi_awready : in STD_LOGIC;
    m01_axi_arready : in STD_LOGIC;
    m01_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end design_1_undolog_0_3_undolog_v2_1_M01_AXI;

architecture STRUCTURE of design_1_undolog_0_3_undolog_v2_1_M01_AXI is
  signal DMA_DONE_i_1_n_0 : STD_LOGIC;
  signal \DMA_DONE_i_2__0_n_0\ : STD_LOGIC;
  signal \DMA_DONE_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \axi_arvalid_i_1__1_n_0\ : STD_LOGIC;
  signal \axi_awvalid_i_1__1_n_0\ : STD_LOGIC;
  signal \axi_bready_i_1__1_n_0\ : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal \axi_wvalid_i_1__1_n_0\ : STD_LOGIC;
  signal \^datacpy_done\ : STD_LOGIC;
  signal \^m01_axi_arvalid\ : STD_LOGIC;
  signal \^m01_axi_awvalid\ : STD_LOGIC;
  signal \^m01_axi_bready\ : STD_LOGIC;
  signal \^m01_axi_rready\ : STD_LOGIC;
  signal \^m01_axi_wvalid\ : STD_LOGIC;
  signal \mst_exec_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \mst_exec_state__0\ : signal is "yes";
  signal raddr0 : STD_LOGIC;
  signal \raddr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \raddr[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \raddr[5]_i_2_n_0\ : STD_LOGIC;
  signal \raddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \raddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[0]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[10]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[11]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[12]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[13]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[14]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[15]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[16]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[17]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[18]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[19]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[20]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[21]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[22]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[23]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[24]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[25]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[26]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[27]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[28]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[29]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[2]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[30]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[31]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[3]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[4]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[5]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[6]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[7]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[8]\ : STD_LOGIC;
  signal \rdata_reg_n_0_[9]\ : STD_LOGIC;
  signal read_issued : STD_LOGIC;
  signal \read_issued_i_1__1_n_0\ : STD_LOGIC;
  signal \read_issued_i_3__0_n_0\ : STD_LOGIC;
  signal read_issued_reg_n_0 : STD_LOGIC;
  signal reads_done : STD_LOGIC;
  signal reads_done0 : STD_LOGIC;
  signal start_single_read : STD_LOGIC;
  signal \start_single_read_i_1__1_n_0\ : STD_LOGIC;
  signal \start_single_read_i_3__0_n_0\ : STD_LOGIC;
  signal start_single_read_reg_n_0 : STD_LOGIC;
  signal start_single_write0 : STD_LOGIC;
  signal \start_single_write_i_1__1_n_0\ : STD_LOGIC;
  signal \start_single_write_i_2__0_n_0\ : STD_LOGIC;
  signal start_single_write_reg_n_0 : STD_LOGIC;
  signal \waddr[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[6]_i_2_n_0\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \wdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \wdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \wdata_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \^wdata_reg[31]_0\ : STD_LOGIC;
  signal \wdata_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \wdata_reg_n_0_[0]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[10]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[11]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[12]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[13]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[14]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[15]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[16]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[17]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[18]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[19]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[1]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[20]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[21]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[22]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[23]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[24]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[25]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[26]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[27]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[28]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[29]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[2]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[30]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[31]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[3]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[4]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[5]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[6]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[7]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[8]\ : STD_LOGIC;
  signal \wdata_reg_n_0_[9]\ : STD_LOGIC;
  signal \write_issued_i_1__1_n_0\ : STD_LOGIC;
  signal write_issued_reg_n_0 : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  signal writes_done0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_4__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[3]_i_2__0\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[0]\ : label is "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_mst_exec_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[1]\ : label is "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101";
  attribute KEEP of \FSM_sequential_mst_exec_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[2]\ : label is "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101";
  attribute KEEP of \FSM_sequential_mst_exec_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[3]\ : label is "UPDATE_READ_CR_1:0011,UPDATE_READ_CR_2:0100,INIT_READ_SRC:0010,WAIT_WRITE_COMPLETE:1011,INIT_WRITE_LEN:1010,UPDATE_WRITE_CR_2:1001,INIT_CHECK_TX_STATUS:0001,IDLE:0000,UPDATE_WRITE_CR_1:1000,INIT_CHECK_RX_STATUS:0110,INIT_WRITE_DEST:0111,INIT_READ_LEN:0101";
  attribute KEEP of \FSM_sequential_mst_exec_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of \axi_awvalid_i_1__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_bready_i_1__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_wvalid_i_1__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \raddr[5]_i_3__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_issued_i_1__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \writes_done_i_1__0\ : label is "soft_lutpair7";
begin
  Q(0) <= \^q\(0);
  datacpy_done <= \^datacpy_done\;
  m01_axi_arvalid <= \^m01_axi_arvalid\;
  m01_axi_awvalid <= \^m01_axi_awvalid\;
  m01_axi_bready <= \^m01_axi_bready\;
  m01_axi_rready <= \^m01_axi_rready\;
  m01_axi_wvalid <= \^m01_axi_wvalid\;
  \wdata_reg[31]_0\ <= \^wdata_reg[31]_0\;
DMA_DONE_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m01_axi_aresetn,
      O => DMA_DONE_i_1_n_0
    );
\DMA_DONE_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => \mst_exec_state__0\(2),
      I1 => reads_done,
      I2 => \mst_exec_state__0\(3),
      I3 => \DMA_DONE_i_3__0_n_0\,
      I4 => \^datacpy_done\,
      O => \DMA_DONE_i_2__0_n_0\
    );
\DMA_DONE_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080000000000000F"
    )
        port map (
      I0 => \^q\(0),
      I1 => reads_done,
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(3),
      I4 => \mst_exec_state__0\(1),
      I5 => \mst_exec_state__0\(0),
      O => \DMA_DONE_i_3__0_n_0\
    );
DMA_DONE_reg: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \DMA_DONE_i_2__0_n_0\,
      Q => \^datacpy_done\,
      R => DMA_DONE_i_1_n_0
    );
\FSM_sequential_mst_exec_state[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \FSM_sequential_mst_exec_state[0]_i_2__1_n_0\,
      I1 => \mst_exec_state__0\(3),
      I2 => \FSM_sequential_mst_exec_state[0]_i_3__1_n_0\,
      I3 => \mst_exec_state__0\(2),
      I4 => \FSM_sequential_mst_exec_state[0]_i_4__0_n_0\,
      O => \FSM_sequential_mst_exec_state[0]_i_1__1_n_0\
    );
\FSM_sequential_mst_exec_state[0]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47F3CFC0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \mst_exec_state__0\(1),
      I2 => writes_done,
      I3 => \mst_exec_state__0\(0),
      I4 => reads_done,
      O => \FSM_sequential_mst_exec_state[0]_i_2__1_n_0\
    );
\FSM_sequential_mst_exec_state[0]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A8FFFFFFA800"
    )
        port map (
      I0 => reads_done,
      I1 => \^q\(0),
      I2 => \rdata_reg_n_0_[0]\,
      I3 => \mst_exec_state__0\(1),
      I4 => \mst_exec_state__0\(0),
      I5 => writes_done,
      O => \FSM_sequential_mst_exec_state[0]_i_3__1_n_0\
    );
\FSM_sequential_mst_exec_state[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBB8BBB8BBB8B88"
    )
        port map (
      I0 => \FSM_sequential_mst_exec_state[0]_i_5__0_n_0\,
      I1 => \mst_exec_state__0\(1),
      I2 => \FSM_sequential_mst_exec_state[1]_i_4__0_n_0\,
      I3 => \mst_exec_state__0\(0),
      I4 => data_copy_pulse,
      I5 => DMA_START2,
      O => \FSM_sequential_mst_exec_state[0]_i_4__0_n_0\
    );
\FSM_sequential_mst_exec_state[0]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => reads_done,
      I1 => \mst_exec_state__0\(0),
      I2 => writes_done,
      O => \FSM_sequential_mst_exec_state[0]_i_5__0_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47BBFF004788FF00"
    )
        port map (
      I0 => writes_done,
      I1 => \mst_exec_state__0\(2),
      I2 => reads_done,
      I3 => \mst_exec_state__0\(1),
      I4 => \mst_exec_state__0\(0),
      I5 => \FSM_sequential_mst_exec_state[1]_i_4__0_n_0\,
      O => \FSM_sequential_mst_exec_state[1]_i_2__0_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FF070F0"
    )
        port map (
      I0 => \^q\(0),
      I1 => reads_done,
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(0),
      I4 => writes_done,
      O => \FSM_sequential_mst_exec_state[1]_i_3__0_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => reads_done,
      I1 => \^q\(0),
      I2 => \rdata_reg_n_0_[0]\,
      O => \FSM_sequential_mst_exec_state[1]_i_4__0_n_0\
    );
\FSM_sequential_mst_exec_state[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005F80FF80"
    )
        port map (
      I0 => \mst_exec_state__0\(0),
      I1 => reads_done,
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => writes_done,
      I5 => \mst_exec_state__0\(3),
      O => \FSM_sequential_mst_exec_state[2]_i_1__0_n_0\
    );
\FSM_sequential_mst_exec_state[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74CC44CCCCCCCCCC"
    )
        port map (
      I0 => \FSM_sequential_mst_exec_state[3]_i_2__0_n_0\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(0),
      I4 => writes_done,
      I5 => \mst_exec_state__0\(1),
      O => \FSM_sequential_mst_exec_state[3]_i_1__0_n_0\
    );
\FSM_sequential_mst_exec_state[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reads_done,
      I1 => \^q\(0),
      O => \FSM_sequential_mst_exec_state[3]_i_2__0_n_0\
    );
\FSM_sequential_mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[0]_i_1__1_n_0\,
      Q => \mst_exec_state__0\(0),
      R => DMA_DONE_i_1_n_0
    );
\FSM_sequential_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state_reg[1]_i_1__0_n_0\,
      Q => \mst_exec_state__0\(1),
      R => DMA_DONE_i_1_n_0
    );
\FSM_sequential_mst_exec_state_reg[1]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_mst_exec_state[1]_i_2__0_n_0\,
      I1 => \FSM_sequential_mst_exec_state[1]_i_3__0_n_0\,
      O => \FSM_sequential_mst_exec_state_reg[1]_i_1__0_n_0\,
      S => \mst_exec_state__0\(3)
    );
\FSM_sequential_mst_exec_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[2]_i_1__0_n_0\,
      Q => \mst_exec_state__0\(2),
      R => DMA_DONE_i_1_n_0
    );
\FSM_sequential_mst_exec_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[3]_i_1__0_n_0\,
      Q => \mst_exec_state__0\(3),
      R => DMA_DONE_i_1_n_0
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \raddr_reg_n_0_[2]\,
      Q => m01_axi_araddr(0),
      R => SR(0)
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \raddr_reg_n_0_[5]\,
      Q => m01_axi_araddr(1),
      R => SR(0)
    );
\axi_arvalid_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => start_single_read_reg_n_0,
      I1 => \^m01_axi_arvalid\,
      I2 => m01_axi_arready,
      O => \axi_arvalid_i_1__1_n_0\
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \axi_arvalid_i_1__1_n_0\,
      Q => \^m01_axi_arvalid\,
      R => SR(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \waddr_reg_n_0_[3]\,
      Q => m01_axi_awaddr(0),
      R => SR(0)
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \waddr_reg_n_0_[4]\,
      Q => m01_axi_awaddr(1),
      R => SR(0)
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \waddr_reg_n_0_[5]\,
      Q => m01_axi_awaddr(2),
      R => SR(0)
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \waddr_reg_n_0_[6]\,
      Q => m01_axi_awaddr(3),
      R => SR(0)
    );
\axi_awvalid_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => start_single_write_reg_n_0,
      I1 => \^m01_axi_awvalid\,
      I2 => m01_axi_awready,
      O => \axi_awvalid_i_1__1_n_0\
    );
axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \axi_awvalid_i_1__1_n_0\,
      Q => \^m01_axi_awvalid\,
      R => SR(0)
    );
\axi_bready_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m01_axi_bvalid,
      I1 => \^m01_axi_bready\,
      O => \axi_bready_i_1__1_n_0\
    );
axi_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \axi_bready_i_1__1_n_0\,
      Q => \^m01_axi_bready\,
      R => SR(0)
    );
axi_rready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^m01_axi_rready\,
      I1 => m01_axi_rvalid,
      O => axi_rready_i_1_n_0
    );
axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^m01_axi_rready\,
      R => SR(0)
    );
\axi_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[0]\,
      Q => m01_axi_wdata(0),
      R => SR(0)
    );
\axi_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[10]\,
      Q => m01_axi_wdata(10),
      R => SR(0)
    );
\axi_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[11]\,
      Q => m01_axi_wdata(11),
      R => SR(0)
    );
\axi_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[12]\,
      Q => m01_axi_wdata(12),
      R => SR(0)
    );
\axi_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[13]\,
      Q => m01_axi_wdata(13),
      R => SR(0)
    );
\axi_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[14]\,
      Q => m01_axi_wdata(14),
      R => SR(0)
    );
\axi_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[15]\,
      Q => m01_axi_wdata(15),
      R => SR(0)
    );
\axi_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[16]\,
      Q => m01_axi_wdata(16),
      R => SR(0)
    );
\axi_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[17]\,
      Q => m01_axi_wdata(17),
      R => SR(0)
    );
\axi_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[18]\,
      Q => m01_axi_wdata(18),
      R => SR(0)
    );
\axi_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[19]\,
      Q => m01_axi_wdata(19),
      R => SR(0)
    );
\axi_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[1]\,
      Q => m01_axi_wdata(1),
      R => SR(0)
    );
\axi_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[20]\,
      Q => m01_axi_wdata(20),
      R => SR(0)
    );
\axi_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[21]\,
      Q => m01_axi_wdata(21),
      R => SR(0)
    );
\axi_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[22]\,
      Q => m01_axi_wdata(22),
      R => SR(0)
    );
\axi_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[23]\,
      Q => m01_axi_wdata(23),
      R => SR(0)
    );
\axi_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[24]\,
      Q => m01_axi_wdata(24),
      R => SR(0)
    );
\axi_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[25]\,
      Q => m01_axi_wdata(25),
      R => SR(0)
    );
\axi_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[26]\,
      Q => m01_axi_wdata(26),
      R => SR(0)
    );
\axi_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[27]\,
      Q => m01_axi_wdata(27),
      R => SR(0)
    );
\axi_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[28]\,
      Q => m01_axi_wdata(28),
      R => SR(0)
    );
\axi_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[29]\,
      Q => m01_axi_wdata(29),
      R => SR(0)
    );
\axi_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[2]\,
      Q => m01_axi_wdata(2),
      R => SR(0)
    );
\axi_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[30]\,
      Q => m01_axi_wdata(30),
      R => SR(0)
    );
\axi_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[31]\,
      Q => m01_axi_wdata(31),
      R => SR(0)
    );
\axi_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[3]\,
      Q => m01_axi_wdata(3),
      R => SR(0)
    );
\axi_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[4]\,
      Q => m01_axi_wdata(4),
      R => SR(0)
    );
\axi_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[5]\,
      Q => m01_axi_wdata(5),
      R => SR(0)
    );
\axi_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[6]\,
      Q => m01_axi_wdata(6),
      R => SR(0)
    );
\axi_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[7]\,
      Q => m01_axi_wdata(7),
      R => SR(0)
    );
\axi_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[8]\,
      Q => m01_axi_wdata(8),
      R => SR(0)
    );
\axi_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \wdata_reg_n_0_[9]\,
      Q => m01_axi_wdata(9),
      R => SR(0)
    );
\axi_wvalid_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => start_single_write_reg_n_0,
      I1 => \^m01_axi_wvalid\,
      I2 => m01_axi_wready,
      O => \axi_wvalid_i_1__1_n_0\
    );
axi_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \axi_wvalid_i_1__1_n_0\,
      Q => \^m01_axi_wvalid\,
      R => SR(0)
    );
\datacpy_state[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15EA"
    )
        port map (
      I0 => \mst_exec_state__0\(3),
      I1 => \mst_exec_state__0\(1),
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(0),
      O => datacpy_state(0)
    );
\datacpy_state[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3788"
    )
        port map (
      I0 => \mst_exec_state__0\(3),
      I1 => \mst_exec_state__0\(0),
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(1),
      O => datacpy_state(1)
    );
\datacpy_state[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A444"
    )
        port map (
      I0 => \mst_exec_state__0\(3),
      I1 => \mst_exec_state__0\(2),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(0),
      O => datacpy_state(2)
    );
\datacpy_state[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \mst_exec_state__0\(3),
      I1 => \mst_exec_state__0\(1),
      I2 => \mst_exec_state__0\(0),
      I3 => \mst_exec_state__0\(2),
      O => datacpy_state(3)
    );
\raddr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"63"
    )
        port map (
      I0 => \mst_exec_state__0\(2),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      O => \raddr[2]_i_1__0_n_0\
    );
\raddr[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020102000100020"
    )
        port map (
      I0 => \mst_exec_state__0\(0),
      I1 => reads_done,
      I2 => raddr0,
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(3),
      I5 => \mst_exec_state__0\(1),
      O => \raddr[5]_i_1__0_n_0\
    );
\raddr[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mst_exec_state__0\(2),
      I1 => \mst_exec_state__0\(3),
      O => \raddr[5]_i_2_n_0\
    );
\raddr[5]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => read_issued_reg_n_0,
      I1 => \^m01_axi_arvalid\,
      I2 => m01_axi_rvalid,
      I3 => start_single_read_reg_n_0,
      O => raddr0
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \raddr[5]_i_1__0_n_0\,
      D => \raddr[2]_i_1__0_n_0\,
      Q => \raddr_reg_n_0_[2]\,
      R => DMA_DONE_i_1_n_0
    );
\raddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \raddr[5]_i_1__0_n_0\,
      D => \raddr[5]_i_2_n_0\,
      Q => \raddr_reg_n_0_[5]\,
      R => DMA_DONE_i_1_n_0
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(0),
      Q => \rdata_reg_n_0_[0]\,
      R => SR(0)
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(10),
      Q => \rdata_reg_n_0_[10]\,
      R => SR(0)
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(11),
      Q => \rdata_reg_n_0_[11]\,
      R => SR(0)
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(12),
      Q => \rdata_reg_n_0_[12]\,
      R => SR(0)
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(13),
      Q => \rdata_reg_n_0_[13]\,
      R => SR(0)
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(14),
      Q => \rdata_reg_n_0_[14]\,
      R => SR(0)
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(15),
      Q => \rdata_reg_n_0_[15]\,
      R => SR(0)
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(16),
      Q => \rdata_reg_n_0_[16]\,
      R => SR(0)
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(17),
      Q => \rdata_reg_n_0_[17]\,
      R => SR(0)
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(18),
      Q => \rdata_reg_n_0_[18]\,
      R => SR(0)
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(19),
      Q => \rdata_reg_n_0_[19]\,
      R => SR(0)
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(1),
      Q => \^q\(0),
      R => SR(0)
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(20),
      Q => \rdata_reg_n_0_[20]\,
      R => SR(0)
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(21),
      Q => \rdata_reg_n_0_[21]\,
      R => SR(0)
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(22),
      Q => \rdata_reg_n_0_[22]\,
      R => SR(0)
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(23),
      Q => \rdata_reg_n_0_[23]\,
      R => SR(0)
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(24),
      Q => \rdata_reg_n_0_[24]\,
      R => SR(0)
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(25),
      Q => \rdata_reg_n_0_[25]\,
      R => SR(0)
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(26),
      Q => \rdata_reg_n_0_[26]\,
      R => SR(0)
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(27),
      Q => \rdata_reg_n_0_[27]\,
      R => SR(0)
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(28),
      Q => \rdata_reg_n_0_[28]\,
      R => SR(0)
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(29),
      Q => \rdata_reg_n_0_[29]\,
      R => SR(0)
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(2),
      Q => \rdata_reg_n_0_[2]\,
      R => SR(0)
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(30),
      Q => \rdata_reg_n_0_[30]\,
      R => SR(0)
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(31),
      Q => \rdata_reg_n_0_[31]\,
      R => SR(0)
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(3),
      Q => \rdata_reg_n_0_[3]\,
      R => SR(0)
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(4),
      Q => \rdata_reg_n_0_[4]\,
      R => SR(0)
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(5),
      Q => \rdata_reg_n_0_[5]\,
      R => SR(0)
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(6),
      Q => \rdata_reg_n_0_[6]\,
      R => SR(0)
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(7),
      Q => \rdata_reg_n_0_[7]\,
      R => SR(0)
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(8),
      Q => \rdata_reg_n_0_[8]\,
      R => SR(0)
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => reads_done0,
      D => m01_axi_rdata(9),
      Q => \rdata_reg_n_0_[9]\,
      R => SR(0)
    );
\read_issued_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0100"
    )
        port map (
      I0 => \^m01_axi_arvalid\,
      I1 => m01_axi_rvalid,
      I2 => start_single_read_reg_n_0,
      I3 => read_issued,
      I4 => read_issued_reg_n_0,
      O => \read_issued_i_1__1_n_0\
    );
\read_issued_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08480408"
    )
        port map (
      I0 => \mst_exec_state__0\(0),
      I1 => \read_issued_i_3__0_n_0\,
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(3),
      I4 => \mst_exec_state__0\(1),
      O => read_issued
    );
\read_issued_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAB"
    )
        port map (
      I0 => \^m01_axi_rready\,
      I1 => read_issued_reg_n_0,
      I2 => \^m01_axi_arvalid\,
      I3 => m01_axi_rvalid,
      I4 => start_single_read_reg_n_0,
      I5 => reads_done,
      O => \read_issued_i_3__0_n_0\
    );
read_issued_reg: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \read_issued_i_1__1_n_0\,
      Q => read_issued_reg_n_0,
      R => DMA_DONE_i_1_n_0
    );
\reads_done_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m01_axi_rvalid,
      I1 => \^m01_axi_rready\,
      O => reads_done0
    );
reads_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => reads_done0,
      Q => reads_done,
      R => SR(0)
    );
\slv_reg11[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^datacpy_done\,
      I1 => \slv_reg11_reg[1]_0\,
      O => \slv_reg11_reg[1]\
    );
\start_single_read_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0100"
    )
        port map (
      I0 => read_issued_reg_n_0,
      I1 => \^m01_axi_arvalid\,
      I2 => m01_axi_rvalid,
      I3 => start_single_read,
      I4 => start_single_read_reg_n_0,
      O => \start_single_read_i_1__1_n_0\
    );
\start_single_read_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08480408"
    )
        port map (
      I0 => \mst_exec_state__0\(0),
      I1 => \start_single_read_i_3__0_n_0\,
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(3),
      I4 => \mst_exec_state__0\(1),
      O => start_single_read
    );
\start_single_read_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555557"
    )
        port map (
      I0 => \^m01_axi_rready\,
      I1 => read_issued_reg_n_0,
      I2 => \^m01_axi_arvalid\,
      I3 => m01_axi_rvalid,
      I4 => start_single_read_reg_n_0,
      I5 => reads_done,
      O => \start_single_read_i_3__0_n_0\
    );
start_single_read_reg: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \start_single_read_i_1__1_n_0\,
      Q => start_single_read_reg_n_0,
      R => DMA_DONE_i_1_n_0
    );
\start_single_write_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF4400"
    )
        port map (
      I0 => writes_done,
      I1 => start_single_write0,
      I2 => \^m01_axi_bready\,
      I3 => \start_single_write_i_2__0_n_0\,
      I4 => start_single_write_reg_n_0,
      O => \start_single_write_i_1__1_n_0\
    );
\start_single_write_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4538"
    )
        port map (
      I0 => \mst_exec_state__0\(3),
      I1 => \mst_exec_state__0\(0),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      O => \start_single_write_i_2__0_n_0\
    );
start_single_write_reg: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \start_single_write_i_1__1_n_0\,
      Q => start_single_write_reg_n_0,
      R => DMA_DONE_i_1_n_0
    );
\waddr[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \mst_exec_state__0\(3),
      I1 => \mst_exec_state__0\(2),
      I2 => \mst_exec_state__0\(0),
      O => \waddr[3]_i_1__0_n_0\
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mst_exec_state__0\(2),
      O => \waddr[4]_i_1_n_0\
    );
\waddr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1500"
    )
        port map (
      I0 => \mst_exec_state__0\(1),
      I1 => \mst_exec_state__0\(2),
      I2 => \mst_exec_state__0\(3),
      I3 => \mst_exec_state__0\(0),
      O => \waddr[5]_i_1_n_0\
    );
\waddr[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004040040400440"
    )
        port map (
      I0 => writes_done,
      I1 => start_single_write0,
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(1),
      I4 => \mst_exec_state__0\(0),
      I5 => \mst_exec_state__0\(3),
      O => \waddr[6]_i_1__0_n_0\
    );
\waddr[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \mst_exec_state__0\(1),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(2),
      O => \waddr[6]_i_2_n_0\
    );
\waddr[6]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => m01_axi_bvalid,
      I1 => \^m01_axi_wvalid\,
      I2 => write_issued_reg_n_0,
      I3 => start_single_write_reg_n_0,
      I4 => \^m01_axi_awvalid\,
      O => start_single_write0
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \waddr[3]_i_1__0_n_0\,
      Q => \waddr_reg_n_0_[3]\,
      R => DMA_DONE_i_1_n_0
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \waddr[4]_i_1_n_0\,
      Q => \waddr_reg_n_0_[4]\,
      R => DMA_DONE_i_1_n_0
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \waddr[5]_i_1_n_0\,
      Q => \waddr_reg_n_0_[5]\,
      R => DMA_DONE_i_1_n_0
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \waddr[6]_i_2_n_0\,
      Q => \waddr_reg_n_0_[6]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[10]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(8),
      O => \wdata[10]_i_2_n_0\
    );
\wdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[11]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(9),
      O => \wdata[11]_i_2_n_0\
    );
\wdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[12]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(10),
      O => \wdata[12]_i_2_n_0\
    );
\wdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[13]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(11),
      O => \wdata[13]_i_2_n_0\
    );
\wdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[14]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(12),
      O => \wdata[14]_i_2_n_0\
    );
\wdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[15]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(13),
      O => \wdata[15]_i_2_n_0\
    );
\wdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[16]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(14),
      O => \wdata[16]_i_2_n_0\
    );
\wdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[17]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(15),
      O => \wdata[17]_i_2_n_0\
    );
\wdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[18]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(16),
      O => \wdata[18]_i_2_n_0\
    );
\wdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[19]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(17),
      O => \wdata[19]_i_2_n_0\
    );
\wdata[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F53"
    )
        port map (
      I0 => \mst_exec_state__0\(3),
      I1 => \mst_exec_state__0\(1),
      I2 => \mst_exec_state__0\(2),
      I3 => \mst_exec_state__0\(0),
      O => \wdata_reg[0]_0\
    );
\wdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[20]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(18),
      O => \wdata[20]_i_2_n_0\
    );
\wdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[21]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(19),
      O => \wdata[21]_i_2_n_0\
    );
\wdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[22]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(20),
      O => \wdata[22]_i_2_n_0\
    );
\wdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[23]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(21),
      O => \wdata[23]_i_2_n_0\
    );
\wdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[24]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(22),
      O => \wdata[24]_i_2_n_0\
    );
\wdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[25]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(23),
      O => \wdata[25]_i_2_n_0\
    );
\wdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[26]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(24),
      O => \wdata[26]_i_2_n_0\
    );
\wdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[27]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(25),
      O => \wdata[27]_i_2_n_0\
    );
\wdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[28]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(26),
      O => \wdata[28]_i_2_n_0\
    );
\wdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[29]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(27),
      O => \wdata[29]_i_2_n_0\
    );
\wdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[2]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(0),
      O => \wdata[2]_i_2_n_0\
    );
\wdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[30]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(28),
      O => \wdata[30]_i_2_n_0\
    );
\wdata[31]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2240"
    )
        port map (
      I0 => \mst_exec_state__0\(0),
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      O => \^wdata_reg[31]_0\
    );
\wdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[31]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(29),
      O => \wdata[31]_i_3_n_0\
    );
\wdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[3]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(1),
      O => \wdata[3]_i_2_n_0\
    );
\wdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[4]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(2),
      O => \wdata[4]_i_2_n_0\
    );
\wdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[5]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(3),
      O => \wdata[5]_i_2_n_0\
    );
\wdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[6]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(4),
      O => \wdata[6]_i_2_n_0\
    );
\wdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[7]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(5),
      O => \wdata[7]_i_2_n_0\
    );
\wdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[8]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(6),
      O => \wdata[8]_i_2_n_0\
    );
\wdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEEFA20AA220A"
    )
        port map (
      I0 => \rdata_reg_n_0_[9]\,
      I1 => \mst_exec_state__0\(3),
      I2 => \mst_exec_state__0\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => \mst_exec_state__0\(0),
      I5 => \slv_reg4_reg[31]\(7),
      O => \wdata[9]_i_2_n_0\
    );
\wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => D(0),
      Q => \wdata_reg_n_0_[0]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[10]_i_1_n_0\,
      Q => \wdata_reg_n_0_[10]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[10]_i_2_n_0\,
      I1 => \slv_reg0_reg[10]\,
      O => \wdata_reg[10]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[11]_i_1_n_0\,
      Q => \wdata_reg_n_0_[11]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[11]_i_2_n_0\,
      I1 => \slv_reg0_reg[11]\,
      O => \wdata_reg[11]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[12]_i_1_n_0\,
      Q => \wdata_reg_n_0_[12]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[12]_i_2_n_0\,
      I1 => \slv_reg0_reg[12]\,
      O => \wdata_reg[12]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[13]_i_1_n_0\,
      Q => \wdata_reg_n_0_[13]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[13]_i_2_n_0\,
      I1 => \slv_reg0_reg[13]\,
      O => \wdata_reg[13]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[14]_i_1_n_0\,
      Q => \wdata_reg_n_0_[14]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[14]_i_2_n_0\,
      I1 => \slv_reg0_reg[14]\,
      O => \wdata_reg[14]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[15]_i_1_n_0\,
      Q => \wdata_reg_n_0_[15]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[15]_i_2_n_0\,
      I1 => \slv_reg0_reg[15]\,
      O => \wdata_reg[15]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[16]_i_1_n_0\,
      Q => \wdata_reg_n_0_[16]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[16]_i_2_n_0\,
      I1 => \slv_reg0_reg[16]\,
      O => \wdata_reg[16]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[17]_i_1_n_0\,
      Q => \wdata_reg_n_0_[17]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[17]_i_2_n_0\,
      I1 => \slv_reg0_reg[17]\,
      O => \wdata_reg[17]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[18]_i_1_n_0\,
      Q => \wdata_reg_n_0_[18]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[18]_i_2_n_0\,
      I1 => \slv_reg0_reg[18]\,
      O => \wdata_reg[18]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[19]_i_1_n_0\,
      Q => \wdata_reg_n_0_[19]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[19]_i_2_n_0\,
      I1 => \slv_reg0_reg[19]\,
      O => \wdata_reg[19]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => D(1),
      Q => \wdata_reg_n_0_[1]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[20]_i_1_n_0\,
      Q => \wdata_reg_n_0_[20]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[20]_i_2_n_0\,
      I1 => \operation_type_reg[1]_10\,
      O => \wdata_reg[20]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[21]_i_1_n_0\,
      Q => \wdata_reg_n_0_[21]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[21]_i_2_n_0\,
      I1 => \operation_type_reg[1]_9\,
      O => \wdata_reg[21]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[22]_i_1_n_0\,
      Q => \wdata_reg_n_0_[22]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[22]_i_2_n_0\,
      I1 => \operation_type_reg[1]_8\,
      O => \wdata_reg[22]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[23]_i_1_n_0\,
      Q => \wdata_reg_n_0_[23]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[23]_i_2_n_0\,
      I1 => \operation_type_reg[1]_7\,
      O => \wdata_reg[23]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[24]_i_1_n_0\,
      Q => \wdata_reg_n_0_[24]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[24]_i_2_n_0\,
      I1 => \operation_type_reg[1]_6\,
      O => \wdata_reg[24]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[25]_i_1_n_0\,
      Q => \wdata_reg_n_0_[25]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[25]_i_2_n_0\,
      I1 => \operation_type_reg[1]_5\,
      O => \wdata_reg[25]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[26]_i_1_n_0\,
      Q => \wdata_reg_n_0_[26]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[26]_i_2_n_0\,
      I1 => \operation_type_reg[1]_4\,
      O => \wdata_reg[26]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[27]_i_1_n_0\,
      Q => \wdata_reg_n_0_[27]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[27]_i_2_n_0\,
      I1 => \operation_type_reg[1]_3\,
      O => \wdata_reg[27]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[28]_i_1_n_0\,
      Q => \wdata_reg_n_0_[28]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[28]_i_2_n_0\,
      I1 => \operation_type_reg[1]_2\,
      O => \wdata_reg[28]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[29]_i_1_n_0\,
      Q => \wdata_reg_n_0_[29]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[29]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[29]_i_2_n_0\,
      I1 => \operation_type_reg[1]_1\,
      O => \wdata_reg[29]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[2]_i_1_n_0\,
      Q => \wdata_reg_n_0_[2]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[2]_i_2_n_0\,
      I1 => \slv_reg0_reg[2]\,
      O => \wdata_reg[2]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[30]_i_1_n_0\,
      Q => \wdata_reg_n_0_[30]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[30]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[30]_i_2_n_0\,
      I1 => \operation_type_reg[1]_0\,
      O => \wdata_reg[30]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[31]_i_1_n_0\,
      Q => \wdata_reg_n_0_[31]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[31]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[31]_i_3_n_0\,
      I1 => \operation_type_reg[1]\,
      O => \wdata_reg[31]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[3]_i_1_n_0\,
      Q => \wdata_reg_n_0_[3]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[3]_i_2_n_0\,
      I1 => \slv_reg0_reg[3]\,
      O => \wdata_reg[3]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[4]_i_1_n_0\,
      Q => \wdata_reg_n_0_[4]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[4]_i_2_n_0\,
      I1 => \slv_reg0_reg[4]\,
      O => \wdata_reg[4]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[5]_i_1_n_0\,
      Q => \wdata_reg_n_0_[5]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[5]_i_2_n_0\,
      I1 => \slv_reg0_reg[5]\,
      O => \wdata_reg[5]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[6]_i_1_n_0\,
      Q => \wdata_reg_n_0_[6]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[6]_i_2_n_0\,
      I1 => \slv_reg0_reg[6]\,
      O => \wdata_reg[6]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[7]_i_1_n_0\,
      Q => \wdata_reg_n_0_[7]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[7]_i_2_n_0\,
      I1 => \slv_reg0_reg[7]\,
      O => \wdata_reg[7]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[8]_i_1_n_0\,
      Q => \wdata_reg_n_0_[8]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[8]_i_2_n_0\,
      I1 => \slv_reg0_reg[8]\,
      O => \wdata_reg[8]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => \waddr[6]_i_1__0_n_0\,
      D => \wdata_reg[9]_i_1_n_0\,
      Q => \wdata_reg_n_0_[9]\,
      R => DMA_DONE_i_1_n_0
    );
\wdata_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[9]_i_2_n_0\,
      I1 => \slv_reg0_reg[9]\,
      O => \wdata_reg[9]_i_1_n_0\,
      S => \^wdata_reg[31]_0\
    );
\write_issued_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4400"
    )
        port map (
      I0 => writes_done,
      I1 => start_single_write0,
      I2 => \^m01_axi_bready\,
      I3 => \start_single_write_i_2__0_n_0\,
      I4 => write_issued_reg_n_0,
      O => \write_issued_i_1__1_n_0\
    );
write_issued_reg: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => \write_issued_i_1__1_n_0\,
      Q => write_issued_reg_n_0,
      R => DMA_DONE_i_1_n_0
    );
\writes_done_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m01_axi_bvalid,
      I1 => \^m01_axi_bready\,
      O => writes_done0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m01_axi_aclk,
      CE => '1',
      D => writes_done0,
      Q => writes_done,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_undolog_0_3_undolog_v2_1_M02_AXI is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m02_axi_bready : out STD_LOGIC;
    metadata_done : out STD_LOGIC;
    m02_axi_arvalid : out STD_LOGIC;
    m02_axi_wvalid : out STD_LOGIC;
    m02_axi_awvalid : out STD_LOGIC;
    metadatacpy_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg11_reg[0]\ : out STD_LOGIC;
    m02_axi_rready : out STD_LOGIC;
    \rdata[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    redolog_dest_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    redolog_src_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \raddr[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \waddr[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \wdata[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m02_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 19 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \slv_reg4_reg[14]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \slv_reg4_reg[22]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg8_reg[6]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \slv_reg4_reg[29]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \slv_reg8_reg[14]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m02_axi_bvalid : in STD_LOGIC;
    \slv_reg11_reg[0]_0\ : in STD_LOGIC;
    \mst_exec_state1__9\ : in STD_LOGIC;
    m02_axi_aresetn : in STD_LOGIC;
    m02_axi_rvalid : in STD_LOGIC;
    \slv_reg0_reg[29]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    in24 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \slv_reg0_reg[26]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \slv_reg0_reg[16]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    in27 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    in26 : in STD_LOGIC_VECTOR ( 28 downto 0 );
    m02_axi_arready : in STD_LOGIC;
    m02_axi_wready : in STD_LOGIC;
    m02_axi_awready : in STD_LOGIC;
    m02_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_mst_exec_state_reg[3]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end design_1_undolog_0_3_undolog_v2_1_M02_AXI;

architecture STRUCTURE of design_1_undolog_0_3_undolog_v2_1_M02_AXI is
  signal \FSM_sequential_mst_exec_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[3]_i_1__1_n_0\ : STD_LOGIC;
  signal axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bready_i_1_n_0 : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal axi_wvalid_i_1_n_0 : STD_LOGIC;
  signal in22 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m02_axi_arvalid\ : STD_LOGIC;
  signal \^m02_axi_awvalid\ : STD_LOGIC;
  signal \^m02_axi_bready\ : STD_LOGIC;
  signal \^m02_axi_rready\ : STD_LOGIC;
  signal \^m02_axi_wvalid\ : STD_LOGIC;
  signal \^metadata_done\ : STD_LOGIC;
  signal metadata_done_i_1_n_0 : STD_LOGIC;
  signal metadata_done_i_2_n_0 : STD_LOGIC;
  signal \mst_exec_state__0\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \mst_exec_state__0\ : signal is "yes";
  signal \^out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  signal \p_2_out_carry__0_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__0_n_1\ : STD_LOGIC;
  signal \p_2_out_carry__0_n_2\ : STD_LOGIC;
  signal \p_2_out_carry__0_n_3\ : STD_LOGIC;
  signal \p_2_out_carry__0_n_5\ : STD_LOGIC;
  signal \p_2_out_carry__0_n_6\ : STD_LOGIC;
  signal \p_2_out_carry__0_n_7\ : STD_LOGIC;
  signal \p_2_out_carry__1_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__1_n_1\ : STD_LOGIC;
  signal \p_2_out_carry__1_n_2\ : STD_LOGIC;
  signal \p_2_out_carry__1_n_3\ : STD_LOGIC;
  signal \p_2_out_carry__1_n_5\ : STD_LOGIC;
  signal \p_2_out_carry__1_n_6\ : STD_LOGIC;
  signal \p_2_out_carry__1_n_7\ : STD_LOGIC;
  signal \p_2_out_carry__2_n_1\ : STD_LOGIC;
  signal \p_2_out_carry__2_n_2\ : STD_LOGIC;
  signal \p_2_out_carry__2_n_3\ : STD_LOGIC;
  signal \p_2_out_carry__2_n_5\ : STD_LOGIC;
  signal \p_2_out_carry__2_n_6\ : STD_LOGIC;
  signal \p_2_out_carry__2_n_7\ : STD_LOGIC;
  signal p_2_out_carry_i_7_n_0 : STD_LOGIC;
  signal p_2_out_carry_i_9_n_0 : STD_LOGIC;
  signal p_2_out_carry_n_0 : STD_LOGIC;
  signal p_2_out_carry_n_1 : STD_LOGIC;
  signal p_2_out_carry_n_2 : STD_LOGIC;
  signal p_2_out_carry_n_3 : STD_LOGIC;
  signal p_2_out_carry_n_5 : STD_LOGIC;
  signal p_2_out_carry_n_6 : STD_LOGIC;
  signal p_2_out_carry_n_7 : STD_LOGIC;
  signal raddr0 : STD_LOGIC;
  signal \raddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[10]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[11]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[12]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[13]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[14]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[15]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[16]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[17]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[18]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[19]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[20]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[21]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[22]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[23]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[24]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[25]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[26]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[27]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[28]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[29]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[30]_i_1_n_0\ : STD_LOGIC;
  signal \^raddr[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \raddr[31]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[31]_i_2_n_0\ : STD_LOGIC;
  signal \raddr[31]_i_4_n_0\ : STD_LOGIC;
  signal \raddr[31]_i_5_n_0\ : STD_LOGIC;
  signal \raddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[8]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[9]_i_1_n_0\ : STD_LOGIC;
  signal \^rdata[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal read_issued_i_1_n_0 : STD_LOGIC;
  signal read_issued_reg_n_0 : STD_LOGIC;
  signal reads_done : STD_LOGIC;
  signal reads_done0 : STD_LOGIC;
  signal \redolog_dest_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \redolog_dest_data[63]_i_1_n_0\ : STD_LOGIC;
  signal \redolog_src_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \redolog_src_data[63]_i_1_n_0\ : STD_LOGIC;
  signal start_single_read_i_1_n_0 : STD_LOGIC;
  signal start_single_read_i_2_n_0 : STD_LOGIC;
  signal start_single_read_reg_n_0 : STD_LOGIC;
  signal start_single_write0 : STD_LOGIC;
  signal start_single_write_i_1_n_0 : STD_LOGIC;
  signal \start_single_write_i_2__1_n_0\ : STD_LOGIC;
  signal start_single_write_reg_n_0 : STD_LOGIC;
  signal \waddr[10]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[10]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[11]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[11]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[12]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[12]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[13]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[13]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[14]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[14]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[15]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[15]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[16]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[16]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[17]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[17]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[18]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[18]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[19]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[19]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[20]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[20]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[21]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[21]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[22]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[22]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[23]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[23]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[24]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[24]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[25]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[25]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[26]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[26]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[27]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[27]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[28]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[28]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[29]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[29]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[30]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[30]_i_3_n_0\ : STD_LOGIC;
  signal \^waddr[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \waddr[31]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[31]_i_4_n_0\ : STD_LOGIC;
  signal \waddr[31]_i_5_n_0\ : STD_LOGIC;
  signal \waddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[3]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[4]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[5]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[5]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \waddr[6]_i_3__1_n_0\ : STD_LOGIC;
  signal \waddr[7]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[7]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[8]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[8]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[9]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[9]_i_3_n_0\ : STD_LOGIC;
  signal \waddr_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \waddr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \^wdata[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal write_issued_i_1_n_0 : STD_LOGIC;
  signal write_issued_reg_n_0 : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  signal writes_done0 : STD_LOGIC;
  signal NLW_p_2_out_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_p_2_out_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_p_2_out_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_p_2_out_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[0]\ : label is "UPDATE_2:0110,WR_ULOG_OFFSET_2:1000,UPDATE_1:0101,READ_DEST_VALUE_2:0100,READ_DEST_VALUE_1:0011,WR_ULOG_OFFSET_1:0111,IDLE:0000,DONE:1011,READ_SRC_VALUE_2:0010,READ_SRC_VALUE_1:0001,WR_LOG_SIZE_2:1010,WR_LOG_SIZE_1:1001";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_mst_exec_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[1]\ : label is "UPDATE_2:0110,WR_ULOG_OFFSET_2:1000,UPDATE_1:0101,READ_DEST_VALUE_2:0100,READ_DEST_VALUE_1:0011,WR_ULOG_OFFSET_1:0111,IDLE:0000,DONE:1011,READ_SRC_VALUE_2:0010,READ_SRC_VALUE_1:0001,WR_LOG_SIZE_2:1010,WR_LOG_SIZE_1:1001";
  attribute KEEP of \FSM_sequential_mst_exec_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[2]\ : label is "UPDATE_2:0110,WR_ULOG_OFFSET_2:1000,UPDATE_1:0101,READ_DEST_VALUE_2:0100,READ_DEST_VALUE_1:0011,WR_ULOG_OFFSET_1:0111,IDLE:0000,DONE:1011,READ_SRC_VALUE_2:0010,READ_SRC_VALUE_1:0001,WR_LOG_SIZE_2:1010,WR_LOG_SIZE_1:1001";
  attribute KEEP of \FSM_sequential_mst_exec_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[3]\ : label is "UPDATE_2:0110,WR_ULOG_OFFSET_2:1000,UPDATE_1:0101,READ_DEST_VALUE_2:0100,READ_DEST_VALUE_1:0011,WR_ULOG_OFFSET_1:0111,IDLE:0000,DONE:1011,READ_SRC_VALUE_2:0010,READ_SRC_VALUE_1:0001,WR_LOG_SIZE_2:1010,WR_LOG_SIZE_1:1001";
  attribute KEEP of \FSM_sequential_mst_exec_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arvalid_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of axi_awvalid_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of axi_bready_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of axi_wvalid_i_1 : label is "soft_lutpair9";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p_2_out_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \p_2_out_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \p_2_out_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \p_2_out_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \raddr[31]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \writes_done_i_1__1\ : label is "soft_lutpair10";
begin
  m02_axi_arvalid <= \^m02_axi_arvalid\;
  m02_axi_awvalid <= \^m02_axi_awvalid\;
  m02_axi_bready <= \^m02_axi_bready\;
  m02_axi_rready <= \^m02_axi_rready\;
  m02_axi_wvalid <= \^m02_axi_wvalid\;
  metadata_done <= \^metadata_done\;
  \out\(2 downto 0) <= \^out\(2 downto 0);
  \raddr[31]\(31 downto 0) <= \^raddr[31]\(31 downto 0);
  \rdata[31]\(31 downto 0) <= \^rdata[31]\(31 downto 0);
  \waddr[31]\(31 downto 0) <= \^waddr[31]\(31 downto 0);
  \wdata[31]\(31 downto 0) <= \^wdata[31]\(31 downto 0);
\FSM_sequential_mst_exec_state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"34FF3400"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      I2 => writes_done,
      I3 => \^out\(2),
      I4 => \FSM_sequential_mst_exec_state[0]_i_2_n_0\,
      O => \FSM_sequential_mst_exec_state[0]_i_1__0_n_0\
    );
\FSM_sequential_mst_exec_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4477BF834477BC80"
    )
        port map (
      I0 => writes_done,
      I1 => \mst_exec_state__0\(2),
      I2 => \^out\(1),
      I3 => reads_done,
      I4 => \^out\(0),
      I5 => \mst_exec_state1__9\,
      O => \FSM_sequential_mst_exec_state[0]_i_2_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10CDFF0015C8FF00"
    )
        port map (
      I0 => \^out\(2),
      I1 => writes_done,
      I2 => \mst_exec_state__0\(2),
      I3 => \^out\(1),
      I4 => \^out\(0),
      I5 => reads_done,
      O => \FSM_sequential_mst_exec_state[1]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F80FF80"
    )
        port map (
      I0 => \^out\(0),
      I1 => reads_done,
      I2 => \^out\(1),
      I3 => \mst_exec_state__0\(2),
      I4 => writes_done,
      I5 => \^out\(2),
      O => \FSM_sequential_mst_exec_state[2]_i_1__1_n_0\
    );
\FSM_sequential_mst_exec_state[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7444CCCC"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(2),
      I2 => \mst_exec_state__0\(2),
      I3 => writes_done,
      I4 => \^out\(1),
      O => \FSM_sequential_mst_exec_state[3]_i_1__1_n_0\
    );
\FSM_sequential_mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[0]_i_1__0_n_0\,
      Q => \^out\(0),
      R => metadata_done_i_1_n_0
    );
\FSM_sequential_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[1]_i_1_n_0\,
      Q => \^out\(1),
      R => metadata_done_i_1_n_0
    );
\FSM_sequential_mst_exec_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[2]_i_1__1_n_0\,
      Q => \mst_exec_state__0\(2),
      R => metadata_done_i_1_n_0
    );
\FSM_sequential_mst_exec_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[3]_i_1__1_n_0\,
      Q => \^out\(2),
      R => metadata_done_i_1_n_0
    );
\axi_araddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(0),
      Q => m02_axi_araddr(0),
      R => SR(0)
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(10),
      Q => m02_axi_araddr(10),
      R => SR(0)
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(11),
      Q => m02_axi_araddr(11),
      R => SR(0)
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(12),
      Q => m02_axi_araddr(12),
      R => SR(0)
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(13),
      Q => m02_axi_araddr(13),
      R => SR(0)
    );
\axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(14),
      Q => m02_axi_araddr(14),
      R => SR(0)
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(15),
      Q => m02_axi_araddr(15),
      R => SR(0)
    );
\axi_araddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(16),
      Q => m02_axi_araddr(16),
      R => SR(0)
    );
\axi_araddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(17),
      Q => m02_axi_araddr(17),
      R => SR(0)
    );
\axi_araddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(18),
      Q => m02_axi_araddr(18),
      R => SR(0)
    );
\axi_araddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(19),
      Q => m02_axi_araddr(19),
      R => SR(0)
    );
\axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(1),
      Q => m02_axi_araddr(1),
      R => SR(0)
    );
\axi_araddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(20),
      Q => m02_axi_araddr(20),
      R => SR(0)
    );
\axi_araddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(21),
      Q => m02_axi_araddr(21),
      R => SR(0)
    );
\axi_araddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(22),
      Q => m02_axi_araddr(22),
      R => SR(0)
    );
\axi_araddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(23),
      Q => m02_axi_araddr(23),
      R => SR(0)
    );
\axi_araddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(24),
      Q => m02_axi_araddr(24),
      R => SR(0)
    );
\axi_araddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(25),
      Q => m02_axi_araddr(25),
      R => SR(0)
    );
\axi_araddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(26),
      Q => m02_axi_araddr(26),
      R => SR(0)
    );
\axi_araddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(27),
      Q => m02_axi_araddr(27),
      R => SR(0)
    );
\axi_araddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(28),
      Q => m02_axi_araddr(28),
      R => SR(0)
    );
\axi_araddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(29),
      Q => m02_axi_araddr(29),
      R => SR(0)
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(2),
      Q => m02_axi_araddr(2),
      R => SR(0)
    );
\axi_araddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(30),
      Q => m02_axi_araddr(30),
      R => SR(0)
    );
\axi_araddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(31),
      Q => m02_axi_araddr(31),
      R => SR(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(3),
      Q => m02_axi_araddr(3),
      R => SR(0)
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(4),
      Q => m02_axi_araddr(4),
      R => SR(0)
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(5),
      Q => m02_axi_araddr(5),
      R => SR(0)
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(6),
      Q => m02_axi_araddr(6),
      R => SR(0)
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(7),
      Q => m02_axi_araddr(7),
      R => SR(0)
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(8),
      Q => m02_axi_araddr(8),
      R => SR(0)
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^raddr[31]\(9),
      Q => m02_axi_araddr(9),
      R => SR(0)
    );
axi_arvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => start_single_read_reg_n_0,
      I1 => \^m02_axi_arvalid\,
      I2 => m02_axi_arready,
      O => axi_arvalid_i_1_n_0
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => axi_arvalid_i_1_n_0,
      Q => \^m02_axi_arvalid\,
      R => SR(0)
    );
\axi_awaddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(0),
      Q => m02_axi_awaddr(0),
      R => SR(0)
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(10),
      Q => m02_axi_awaddr(10),
      R => SR(0)
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(11),
      Q => m02_axi_awaddr(11),
      R => SR(0)
    );
\axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(12),
      Q => m02_axi_awaddr(12),
      R => SR(0)
    );
\axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(13),
      Q => m02_axi_awaddr(13),
      R => SR(0)
    );
\axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(14),
      Q => m02_axi_awaddr(14),
      R => SR(0)
    );
\axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(15),
      Q => m02_axi_awaddr(15),
      R => SR(0)
    );
\axi_awaddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(16),
      Q => m02_axi_awaddr(16),
      R => SR(0)
    );
\axi_awaddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(17),
      Q => m02_axi_awaddr(17),
      R => SR(0)
    );
\axi_awaddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(18),
      Q => m02_axi_awaddr(18),
      R => SR(0)
    );
\axi_awaddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(19),
      Q => m02_axi_awaddr(19),
      R => SR(0)
    );
\axi_awaddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(1),
      Q => m02_axi_awaddr(1),
      R => SR(0)
    );
\axi_awaddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(20),
      Q => m02_axi_awaddr(20),
      R => SR(0)
    );
\axi_awaddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(21),
      Q => m02_axi_awaddr(21),
      R => SR(0)
    );
\axi_awaddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(22),
      Q => m02_axi_awaddr(22),
      R => SR(0)
    );
\axi_awaddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(23),
      Q => m02_axi_awaddr(23),
      R => SR(0)
    );
\axi_awaddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(24),
      Q => m02_axi_awaddr(24),
      R => SR(0)
    );
\axi_awaddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(25),
      Q => m02_axi_awaddr(25),
      R => SR(0)
    );
\axi_awaddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(26),
      Q => m02_axi_awaddr(26),
      R => SR(0)
    );
\axi_awaddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(27),
      Q => m02_axi_awaddr(27),
      R => SR(0)
    );
\axi_awaddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(28),
      Q => m02_axi_awaddr(28),
      R => SR(0)
    );
\axi_awaddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(29),
      Q => m02_axi_awaddr(29),
      R => SR(0)
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(2),
      Q => m02_axi_awaddr(2),
      R => SR(0)
    );
\axi_awaddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(30),
      Q => m02_axi_awaddr(30),
      R => SR(0)
    );
\axi_awaddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(31),
      Q => m02_axi_awaddr(31),
      R => SR(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(3),
      Q => m02_axi_awaddr(3),
      R => SR(0)
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(4),
      Q => m02_axi_awaddr(4),
      R => SR(0)
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(5),
      Q => m02_axi_awaddr(5),
      R => SR(0)
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(6),
      Q => m02_axi_awaddr(6),
      R => SR(0)
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(7),
      Q => m02_axi_awaddr(7),
      R => SR(0)
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(8),
      Q => m02_axi_awaddr(8),
      R => SR(0)
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^waddr[31]\(9),
      Q => m02_axi_awaddr(9),
      R => SR(0)
    );
axi_awvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => start_single_write_reg_n_0,
      I1 => \^m02_axi_awvalid\,
      I2 => m02_axi_awready,
      O => axi_awvalid_i_1_n_0
    );
axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => axi_awvalid_i_1_n_0,
      Q => \^m02_axi_awvalid\,
      R => SR(0)
    );
axi_bready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m02_axi_bvalid,
      I1 => \^m02_axi_bready\,
      O => axi_bready_i_1_n_0
    );
axi_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => axi_bready_i_1_n_0,
      Q => \^m02_axi_bready\,
      R => SR(0)
    );
axi_rready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^m02_axi_rready\,
      I1 => m02_axi_rvalid,
      O => axi_rready_i_1_n_0
    );
axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^m02_axi_rready\,
      R => SR(0)
    );
\axi_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(0),
      Q => m02_axi_wdata(0),
      R => SR(0)
    );
\axi_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(10),
      Q => m02_axi_wdata(10),
      R => SR(0)
    );
\axi_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(11),
      Q => m02_axi_wdata(11),
      R => SR(0)
    );
\axi_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(12),
      Q => m02_axi_wdata(12),
      R => SR(0)
    );
\axi_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(13),
      Q => m02_axi_wdata(13),
      R => SR(0)
    );
\axi_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(14),
      Q => m02_axi_wdata(14),
      R => SR(0)
    );
\axi_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(15),
      Q => m02_axi_wdata(15),
      R => SR(0)
    );
\axi_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(16),
      Q => m02_axi_wdata(16),
      R => SR(0)
    );
\axi_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(17),
      Q => m02_axi_wdata(17),
      R => SR(0)
    );
\axi_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(18),
      Q => m02_axi_wdata(18),
      R => SR(0)
    );
\axi_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(19),
      Q => m02_axi_wdata(19),
      R => SR(0)
    );
\axi_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(1),
      Q => m02_axi_wdata(1),
      R => SR(0)
    );
\axi_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(20),
      Q => m02_axi_wdata(20),
      R => SR(0)
    );
\axi_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(21),
      Q => m02_axi_wdata(21),
      R => SR(0)
    );
\axi_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(22),
      Q => m02_axi_wdata(22),
      R => SR(0)
    );
\axi_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(23),
      Q => m02_axi_wdata(23),
      R => SR(0)
    );
\axi_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(24),
      Q => m02_axi_wdata(24),
      R => SR(0)
    );
\axi_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(25),
      Q => m02_axi_wdata(25),
      R => SR(0)
    );
\axi_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(26),
      Q => m02_axi_wdata(26),
      R => SR(0)
    );
\axi_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(27),
      Q => m02_axi_wdata(27),
      R => SR(0)
    );
\axi_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(28),
      Q => m02_axi_wdata(28),
      R => SR(0)
    );
\axi_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(29),
      Q => m02_axi_wdata(29),
      R => SR(0)
    );
\axi_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(2),
      Q => m02_axi_wdata(2),
      R => SR(0)
    );
\axi_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(30),
      Q => m02_axi_wdata(30),
      R => SR(0)
    );
\axi_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(31),
      Q => m02_axi_wdata(31),
      R => SR(0)
    );
\axi_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(3),
      Q => m02_axi_wdata(3),
      R => SR(0)
    );
\axi_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(4),
      Q => m02_axi_wdata(4),
      R => SR(0)
    );
\axi_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(5),
      Q => m02_axi_wdata(5),
      R => SR(0)
    );
\axi_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(6),
      Q => m02_axi_wdata(6),
      R => SR(0)
    );
\axi_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(7),
      Q => m02_axi_wdata(7),
      R => SR(0)
    );
\axi_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(8),
      Q => m02_axi_wdata(8),
      R => SR(0)
    );
\axi_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => \^wdata[31]\(9),
      Q => m02_axi_wdata(9),
      R => SR(0)
    );
axi_wvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => start_single_write_reg_n_0,
      I1 => \^m02_axi_wvalid\,
      I2 => m02_axi_wready,
      O => axi_wvalid_i_1_n_0
    );
axi_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => axi_wvalid_i_1_n_0,
      Q => \^m02_axi_wvalid\,
      R => SR(0)
    );
metadata_done_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m02_axi_aresetn,
      O => metadata_done_i_1_n_0
    );
metadata_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      I2 => \^out\(2),
      I3 => \mst_exec_state__0\(2),
      O => metadata_done_i_2_n_0
    );
metadata_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => metadata_done_i_2_n_0,
      Q => \^metadata_done\,
      R => metadata_done_i_1_n_0
    );
\metadatacpy_state[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA54"
    )
        port map (
      I0 => \^out\(2),
      I1 => \mst_exec_state__0\(2),
      I2 => \^out\(1),
      I3 => \^out\(0),
      O => metadatacpy_state(0)
    );
\metadatacpy_state[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA0E"
    )
        port map (
      I0 => \^out\(2),
      I1 => \mst_exec_state__0\(2),
      I2 => \^out\(0),
      I3 => \^out\(1),
      O => metadatacpy_state(1)
    );
\metadatacpy_state[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEE0"
    )
        port map (
      I0 => \^out\(2),
      I1 => \mst_exec_state__0\(2),
      I2 => \^out\(0),
      I3 => \^out\(1),
      O => metadatacpy_state(2)
    );
\metadatacpy_state[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007E"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => \mst_exec_state__0\(2),
      I3 => \^out\(2),
      O => metadatacpy_state(3)
    );
p_2_out_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => p_2_out_carry_n_0,
      CO(6) => p_2_out_carry_n_1,
      CO(5) => p_2_out_carry_n_2,
      CO(4) => p_2_out_carry_n_3,
      CO(3) => NLW_p_2_out_carry_CO_UNCONNECTED(3),
      CO(2) => p_2_out_carry_n_5,
      CO(1) => p_2_out_carry_n_6,
      CO(0) => p_2_out_carry_n_7,
      DI(7 downto 3) => Q(6 downto 2),
      DI(2) => DI(0),
      DI(1 downto 0) => Q(1 downto 0),
      O(7 downto 0) => in22(7 downto 0),
      S(7 downto 3) => S(5 downto 1),
      S(2) => p_2_out_carry_i_7_n_0,
      S(1) => S(0),
      S(0) => p_2_out_carry_i_9_n_0
    );
\p_2_out_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => p_2_out_carry_n_0,
      CI_TOP => '0',
      CO(7) => \p_2_out_carry__0_n_0\,
      CO(6) => \p_2_out_carry__0_n_1\,
      CO(5) => \p_2_out_carry__0_n_2\,
      CO(4) => \p_2_out_carry__0_n_3\,
      CO(3) => \NLW_p_2_out_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \p_2_out_carry__0_n_5\,
      CO(1) => \p_2_out_carry__0_n_6\,
      CO(0) => \p_2_out_carry__0_n_7\,
      DI(7 downto 0) => Q(14 downto 7),
      O(7 downto 0) => in22(15 downto 8),
      S(7 downto 0) => \slv_reg4_reg[14]\(7 downto 0)
    );
\p_2_out_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \p_2_out_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \p_2_out_carry__1_n_0\,
      CO(6) => \p_2_out_carry__1_n_1\,
      CO(5) => \p_2_out_carry__1_n_2\,
      CO(4) => \p_2_out_carry__1_n_3\,
      CO(3) => \NLW_p_2_out_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \p_2_out_carry__1_n_5\,
      CO(1) => \p_2_out_carry__1_n_6\,
      CO(0) => \p_2_out_carry__1_n_7\,
      DI(7 downto 5) => \slv_reg4_reg[22]\(2 downto 0),
      DI(4 downto 0) => Q(19 downto 15),
      O(7 downto 0) => in22(23 downto 16),
      S(7 downto 0) => \slv_reg8_reg[6]\(7 downto 0)
    );
\p_2_out_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \p_2_out_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_p_2_out_carry__2_CO_UNCONNECTED\(7),
      CO(6) => \p_2_out_carry__2_n_1\,
      CO(5) => \p_2_out_carry__2_n_2\,
      CO(4) => \p_2_out_carry__2_n_3\,
      CO(3) => \NLW_p_2_out_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \p_2_out_carry__2_n_5\,
      CO(1) => \p_2_out_carry__2_n_6\,
      CO(0) => \p_2_out_carry__2_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => \slv_reg4_reg[29]\(6 downto 0),
      O(7 downto 0) => in22(31 downto 24),
      S(7 downto 0) => \slv_reg8_reg[14]\(7 downto 0)
    );
p_2_out_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => Q(2),
      I1 => \^out\(2),
      I2 => \^out\(1),
      O => p_2_out_carry_i_7_n_0
    );
p_2_out_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mst_exec_state__0\(2),
      I1 => Q(0),
      O => p_2_out_carry_i_9_n_0
    );
\raddr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => in22(0),
      I1 => \^out\(1),
      I2 => \^out\(0),
      I3 => \mst_exec_state__0\(2),
      I4 => \slv_reg0_reg[16]\(0),
      O => \raddr[0]_i_1_n_0\
    );
\raddr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(10),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(10),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(8),
      O => \raddr[10]_i_1_n_0\
    );
\raddr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(11),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(11),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(9),
      O => \raddr[11]_i_1_n_0\
    );
\raddr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(12),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(12),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(10),
      O => \raddr[12]_i_1_n_0\
    );
\raddr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(13),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(13),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(11),
      O => \raddr[13]_i_1_n_0\
    );
\raddr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(14),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(14),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(12),
      O => \raddr[14]_i_1_n_0\
    );
\raddr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(15),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(15),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(13),
      O => \raddr[15]_i_1_n_0\
    );
\raddr[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(16),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(16),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(14),
      O => \raddr[16]_i_1_n_0\
    );
\raddr[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[26]\(0),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(17),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(15),
      O => \raddr[17]_i_1_n_0\
    );
\raddr[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[26]\(1),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(18),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(16),
      O => \raddr[18]_i_1_n_0\
    );
\raddr[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[26]\(2),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(19),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(17),
      O => \raddr[19]_i_1_n_0\
    );
\raddr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => in22(1),
      I1 => \^out\(1),
      I2 => \^out\(0),
      I3 => \mst_exec_state__0\(2),
      I4 => \slv_reg0_reg[16]\(1),
      O => \raddr[1]_i_1_n_0\
    );
\raddr[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[26]\(3),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(20),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(18),
      O => \raddr[20]_i_1_n_0\
    );
\raddr[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[26]\(4),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(21),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(19),
      O => \raddr[21]_i_1_n_0\
    );
\raddr[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[26]\(5),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(22),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(20),
      O => \raddr[22]_i_1_n_0\
    );
\raddr[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[26]\(6),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(23),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(21),
      O => \raddr[23]_i_1_n_0\
    );
\raddr[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[26]\(7),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(24),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(22),
      O => \raddr[24]_i_1_n_0\
    );
\raddr[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[29]\(0),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(25),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(23),
      O => \raddr[25]_i_1_n_0\
    );
\raddr[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[29]\(1),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(26),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(24),
      O => \raddr[26]_i_1_n_0\
    );
\raddr[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[29]\(2),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(27),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(25),
      O => \raddr[27]_i_1_n_0\
    );
\raddr[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[29]\(3),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(28),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(26),
      O => \raddr[28]_i_1_n_0\
    );
\raddr[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[29]\(4),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(29),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(27),
      O => \raddr[29]_i_1_n_0\
    );
\raddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(2),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(2),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(0),
      O => \raddr[2]_i_1_n_0\
    );
\raddr[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[29]\(5),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(30),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(28),
      O => \raddr[30]_i_1_n_0\
    );
\raddr[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000400040400"
    )
        port map (
      I0 => \^out\(2),
      I1 => raddr0,
      I2 => reads_done,
      I3 => \mst_exec_state__0\(2),
      I4 => \^out\(1),
      I5 => \^out\(0),
      O => \raddr[31]_i_1_n_0\
    );
\raddr[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[29]\(6),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(31),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(29),
      O => \raddr[31]_i_2_n_0\
    );
\raddr[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => read_issued_reg_n_0,
      I1 => \^m02_axi_arvalid\,
      I2 => m02_axi_rvalid,
      I3 => start_single_read_reg_n_0,
      O => raddr0
    );
\raddr[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3E39"
    )
        port map (
      I0 => \^out\(0),
      I1 => \mst_exec_state__0\(2),
      I2 => \^out\(2),
      I3 => \^out\(1),
      O => \raddr[31]_i_4_n_0\
    );
\raddr[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      I2 => \^out\(2),
      I3 => \mst_exec_state__0\(2),
      O => \raddr[31]_i_5_n_0\
    );
\raddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(3),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(3),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(1),
      O => \raddr[3]_i_1_n_0\
    );
\raddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(4),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(4),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(2),
      O => \raddr[4]_i_1_n_0\
    );
\raddr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(5),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(5),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(3),
      O => \raddr[5]_i_1_n_0\
    );
\raddr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(6),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(6),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(4),
      O => \raddr[6]_i_1_n_0\
    );
\raddr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(7),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(7),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(5),
      O => \raddr[7]_i_1_n_0\
    );
\raddr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(8),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(8),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(6),
      O => \raddr[8]_i_1_n_0\
    );
\raddr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \slv_reg0_reg[16]\(9),
      I1 => \raddr[31]_i_4_n_0\,
      I2 => in22(9),
      I3 => \raddr[31]_i_5_n_0\,
      I4 => in24(7),
      O => \raddr[9]_i_1_n_0\
    );
\raddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[0]_i_1_n_0\,
      Q => \^raddr[31]\(0),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[10]_i_1_n_0\,
      Q => \^raddr[31]\(10),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[11]_i_1_n_0\,
      Q => \^raddr[31]\(11),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[12]_i_1_n_0\,
      Q => \^raddr[31]\(12),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[13]_i_1_n_0\,
      Q => \^raddr[31]\(13),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[14]_i_1_n_0\,
      Q => \^raddr[31]\(14),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[15]_i_1_n_0\,
      Q => \^raddr[31]\(15),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[16]_i_1_n_0\,
      Q => \^raddr[31]\(16),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[17]_i_1_n_0\,
      Q => \^raddr[31]\(17),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[18]_i_1_n_0\,
      Q => \^raddr[31]\(18),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[19]_i_1_n_0\,
      Q => \^raddr[31]\(19),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[1]_i_1_n_0\,
      Q => \^raddr[31]\(1),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[20]_i_1_n_0\,
      Q => \^raddr[31]\(20),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[21]_i_1_n_0\,
      Q => \^raddr[31]\(21),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[22]_i_1_n_0\,
      Q => \^raddr[31]\(22),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[23]_i_1_n_0\,
      Q => \^raddr[31]\(23),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[24]_i_1_n_0\,
      Q => \^raddr[31]\(24),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[25]_i_1_n_0\,
      Q => \^raddr[31]\(25),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[26]_i_1_n_0\,
      Q => \^raddr[31]\(26),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[27]_i_1_n_0\,
      Q => \^raddr[31]\(27),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[28]_i_1_n_0\,
      Q => \^raddr[31]\(28),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[29]_i_1_n_0\,
      Q => \^raddr[31]\(29),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[2]_i_1_n_0\,
      Q => \^raddr[31]\(2),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[30]_i_1_n_0\,
      Q => \^raddr[31]\(30),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[31]_i_2_n_0\,
      Q => \^raddr[31]\(31),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[3]_i_1_n_0\,
      Q => \^raddr[31]\(3),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[4]_i_1_n_0\,
      Q => \^raddr[31]\(4),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[5]_i_1_n_0\,
      Q => \^raddr[31]\(5),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[6]_i_1_n_0\,
      Q => \^raddr[31]\(6),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[7]_i_1_n_0\,
      Q => \^raddr[31]\(7),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[8]_i_1_n_0\,
      Q => \^raddr[31]\(8),
      R => metadata_done_i_1_n_0
    );
\raddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \raddr[31]_i_1_n_0\,
      D => \raddr[9]_i_1_n_0\,
      Q => \^raddr[31]\(9),
      R => metadata_done_i_1_n_0
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m02_axi_rvalid,
      I1 => \^m02_axi_rready\,
      O => reads_done0
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(0),
      Q => \^rdata[31]\(0),
      R => SR(0)
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(10),
      Q => \^rdata[31]\(10),
      R => SR(0)
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(11),
      Q => \^rdata[31]\(11),
      R => SR(0)
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(12),
      Q => \^rdata[31]\(12),
      R => SR(0)
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(13),
      Q => \^rdata[31]\(13),
      R => SR(0)
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(14),
      Q => \^rdata[31]\(14),
      R => SR(0)
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(15),
      Q => \^rdata[31]\(15),
      R => SR(0)
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(16),
      Q => \^rdata[31]\(16),
      R => SR(0)
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(17),
      Q => \^rdata[31]\(17),
      R => SR(0)
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(18),
      Q => \^rdata[31]\(18),
      R => SR(0)
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(19),
      Q => \^rdata[31]\(19),
      R => SR(0)
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(1),
      Q => \^rdata[31]\(1),
      R => SR(0)
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(20),
      Q => \^rdata[31]\(20),
      R => SR(0)
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(21),
      Q => \^rdata[31]\(21),
      R => SR(0)
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(22),
      Q => \^rdata[31]\(22),
      R => SR(0)
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(23),
      Q => \^rdata[31]\(23),
      R => SR(0)
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(24),
      Q => \^rdata[31]\(24),
      R => SR(0)
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(25),
      Q => \^rdata[31]\(25),
      R => SR(0)
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(26),
      Q => \^rdata[31]\(26),
      R => SR(0)
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(27),
      Q => \^rdata[31]\(27),
      R => SR(0)
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(28),
      Q => \^rdata[31]\(28),
      R => SR(0)
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(29),
      Q => \^rdata[31]\(29),
      R => SR(0)
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(2),
      Q => \^rdata[31]\(2),
      R => SR(0)
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(30),
      Q => \^rdata[31]\(30),
      R => SR(0)
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(31),
      Q => \^rdata[31]\(31),
      R => SR(0)
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(3),
      Q => \^rdata[31]\(3),
      R => SR(0)
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(4),
      Q => \^rdata[31]\(4),
      R => SR(0)
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(5),
      Q => \^rdata[31]\(5),
      R => SR(0)
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(6),
      Q => \^rdata[31]\(6),
      R => SR(0)
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(7),
      Q => \^rdata[31]\(7),
      R => SR(0)
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(8),
      Q => \^rdata[31]\(8),
      R => SR(0)
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => reads_done0,
      D => m02_axi_rdata(9),
      Q => \^rdata[31]\(9),
      R => SR(0)
    );
read_issued_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00500000"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^m02_axi_rready\,
      I2 => raddr0,
      I3 => reads_done,
      I4 => start_single_read_i_2_n_0,
      I5 => read_issued_reg_n_0,
      O => read_issued_i_1_n_0
    );
read_issued_reg: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => read_issued_i_1_n_0,
      Q => read_issued_reg_n_0,
      R => metadata_done_i_1_n_0
    );
reads_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => reads_done0,
      Q => reads_done,
      R => SR(0)
    );
\redolog_dest_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^out\(2),
      I1 => \mst_exec_state__0\(2),
      I2 => reads_done,
      I3 => \^out\(0),
      I4 => \^out\(1),
      O => \redolog_dest_data[31]_i_1_n_0\
    );
\redolog_dest_data[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(1),
      I2 => \^out\(0),
      I3 => \mst_exec_state__0\(2),
      I4 => reads_done,
      O => \redolog_dest_data[63]_i_1_n_0\
    );
\redolog_dest_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(0),
      Q => redolog_dest_data(0),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(10),
      Q => redolog_dest_data(10),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(11),
      Q => redolog_dest_data(11),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(12),
      Q => redolog_dest_data(12),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(13),
      Q => redolog_dest_data(13),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(14),
      Q => redolog_dest_data(14),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(15),
      Q => redolog_dest_data(15),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(16),
      Q => redolog_dest_data(16),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(17),
      Q => redolog_dest_data(17),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(18),
      Q => redolog_dest_data(18),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(19),
      Q => redolog_dest_data(19),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(1),
      Q => redolog_dest_data(1),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(20),
      Q => redolog_dest_data(20),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(21),
      Q => redolog_dest_data(21),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(22),
      Q => redolog_dest_data(22),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(23),
      Q => redolog_dest_data(23),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(24),
      Q => redolog_dest_data(24),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(25),
      Q => redolog_dest_data(25),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(26),
      Q => redolog_dest_data(26),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(27),
      Q => redolog_dest_data(27),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(28),
      Q => redolog_dest_data(28),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(29),
      Q => redolog_dest_data(29),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(2),
      Q => redolog_dest_data(2),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(30),
      Q => redolog_dest_data(30),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(31),
      Q => redolog_dest_data(31),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(0),
      Q => redolog_dest_data(32),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(1),
      Q => redolog_dest_data(33),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(2),
      Q => redolog_dest_data(34),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(3),
      Q => redolog_dest_data(35),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(4),
      Q => redolog_dest_data(36),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(5),
      Q => redolog_dest_data(37),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(6),
      Q => redolog_dest_data(38),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(7),
      Q => redolog_dest_data(39),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(3),
      Q => redolog_dest_data(3),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(8),
      Q => redolog_dest_data(40),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(9),
      Q => redolog_dest_data(41),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(10),
      Q => redolog_dest_data(42),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(11),
      Q => redolog_dest_data(43),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(12),
      Q => redolog_dest_data(44),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(13),
      Q => redolog_dest_data(45),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(14),
      Q => redolog_dest_data(46),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(15),
      Q => redolog_dest_data(47),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(16),
      Q => redolog_dest_data(48),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(17),
      Q => redolog_dest_data(49),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(4),
      Q => redolog_dest_data(4),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(18),
      Q => redolog_dest_data(50),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(19),
      Q => redolog_dest_data(51),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(20),
      Q => redolog_dest_data(52),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(21),
      Q => redolog_dest_data(53),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(22),
      Q => redolog_dest_data(54),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(23),
      Q => redolog_dest_data(55),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(24),
      Q => redolog_dest_data(56),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(25),
      Q => redolog_dest_data(57),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(26),
      Q => redolog_dest_data(58),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(27),
      Q => redolog_dest_data(59),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(5),
      Q => redolog_dest_data(5),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(28),
      Q => redolog_dest_data(60),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(29),
      Q => redolog_dest_data(61),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(30),
      Q => redolog_dest_data(62),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[63]_i_1_n_0\,
      D => \^rdata[31]\(31),
      Q => redolog_dest_data(63),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(6),
      Q => redolog_dest_data(6),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(7),
      Q => redolog_dest_data(7),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(8),
      Q => redolog_dest_data(8),
      R => metadata_done_i_1_n_0
    );
\redolog_dest_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_dest_data[31]_i_1_n_0\,
      D => \^rdata[31]\(9),
      Q => redolog_dest_data(9),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \^out\(2),
      I1 => \mst_exec_state__0\(2),
      I2 => \^out\(1),
      I3 => \^out\(0),
      I4 => reads_done,
      O => \redolog_src_data[31]_i_1_n_0\
    );
\redolog_src_data[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \^out\(2),
      I1 => \mst_exec_state__0\(2),
      I2 => \^out\(0),
      I3 => \^out\(1),
      I4 => reads_done,
      O => \redolog_src_data[63]_i_1_n_0\
    );
\redolog_src_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(0),
      Q => redolog_src_data(0),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(10),
      Q => redolog_src_data(10),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(11),
      Q => redolog_src_data(11),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(12),
      Q => redolog_src_data(12),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(13),
      Q => redolog_src_data(13),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(14),
      Q => redolog_src_data(14),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(15),
      Q => redolog_src_data(15),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(16),
      Q => redolog_src_data(16),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(17),
      Q => redolog_src_data(17),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(18),
      Q => redolog_src_data(18),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(19),
      Q => redolog_src_data(19),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(1),
      Q => redolog_src_data(1),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(20),
      Q => redolog_src_data(20),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(21),
      Q => redolog_src_data(21),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(22),
      Q => redolog_src_data(22),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(23),
      Q => redolog_src_data(23),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(24),
      Q => redolog_src_data(24),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(25),
      Q => redolog_src_data(25),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(26),
      Q => redolog_src_data(26),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(27),
      Q => redolog_src_data(27),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(28),
      Q => redolog_src_data(28),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(29),
      Q => redolog_src_data(29),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(2),
      Q => redolog_src_data(2),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(30),
      Q => redolog_src_data(30),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(31),
      Q => redolog_src_data(31),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(0),
      Q => redolog_src_data(32),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(1),
      Q => redolog_src_data(33),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(2),
      Q => redolog_src_data(34),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(3),
      Q => redolog_src_data(35),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(4),
      Q => redolog_src_data(36),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(5),
      Q => redolog_src_data(37),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(6),
      Q => redolog_src_data(38),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(7),
      Q => redolog_src_data(39),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(3),
      Q => redolog_src_data(3),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(8),
      Q => redolog_src_data(40),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(9),
      Q => redolog_src_data(41),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(10),
      Q => redolog_src_data(42),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(11),
      Q => redolog_src_data(43),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(12),
      Q => redolog_src_data(44),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(13),
      Q => redolog_src_data(45),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(14),
      Q => redolog_src_data(46),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(15),
      Q => redolog_src_data(47),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(16),
      Q => redolog_src_data(48),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(17),
      Q => redolog_src_data(49),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(4),
      Q => redolog_src_data(4),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(18),
      Q => redolog_src_data(50),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(19),
      Q => redolog_src_data(51),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(20),
      Q => redolog_src_data(52),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(21),
      Q => redolog_src_data(53),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(22),
      Q => redolog_src_data(54),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(23),
      Q => redolog_src_data(55),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(24),
      Q => redolog_src_data(56),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(25),
      Q => redolog_src_data(57),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(26),
      Q => redolog_src_data(58),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(27),
      Q => redolog_src_data(59),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(5),
      Q => redolog_src_data(5),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(28),
      Q => redolog_src_data(60),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(29),
      Q => redolog_src_data(61),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(30),
      Q => redolog_src_data(62),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[63]_i_1_n_0\,
      D => \^rdata[31]\(31),
      Q => redolog_src_data(63),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(6),
      Q => redolog_src_data(6),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(7),
      Q => redolog_src_data(7),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(8),
      Q => redolog_src_data(8),
      R => metadata_done_i_1_n_0
    );
\redolog_src_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \redolog_src_data[31]_i_1_n_0\,
      D => \^rdata[31]\(9),
      Q => redolog_src_data(9),
      R => metadata_done_i_1_n_0
    );
\slv_reg11[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^metadata_done\,
      I1 => \slv_reg11_reg[0]_0\,
      O => \slv_reg11_reg[0]\
    );
start_single_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00500000"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^m02_axi_rready\,
      I2 => raddr0,
      I3 => reads_done,
      I4 => start_single_read_i_2_n_0,
      I5 => start_single_read_reg_n_0,
      O => start_single_read_i_1_n_0
    );
start_single_read_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => \mst_exec_state__0\(2),
      O => start_single_read_i_2_n_0
    );
start_single_read_reg: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => start_single_read_i_1_n_0,
      Q => start_single_read_reg_n_0,
      R => metadata_done_i_1_n_0
    );
start_single_write_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF4400"
    )
        port map (
      I0 => writes_done,
      I1 => start_single_write0,
      I2 => \^m02_axi_bready\,
      I3 => \start_single_write_i_2__1_n_0\,
      I4 => start_single_write_reg_n_0,
      O => start_single_write_i_1_n_0
    );
\start_single_write_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"524A"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(1),
      I2 => \mst_exec_state__0\(2),
      I3 => \^out\(0),
      O => \start_single_write_i_2__1_n_0\
    );
start_single_write_reg: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => start_single_write_i_1_n_0,
      Q => start_single_write_reg_n_0,
      R => metadata_done_i_1_n_0
    );
\waddr[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(8),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[16]\(10),
      O => \waddr[10]_i_2_n_0\
    );
\waddr[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(8),
      I1 => \^out\(1),
      I2 => in26(7),
      I3 => \^out\(0),
      I4 => in24(8),
      O => \waddr[10]_i_3_n_0\
    );
\waddr[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(9),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[16]\(11),
      O => \waddr[11]_i_2_n_0\
    );
\waddr[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(9),
      I1 => \^out\(1),
      I2 => in26(8),
      I3 => \^out\(0),
      I4 => in24(9),
      O => \waddr[11]_i_3_n_0\
    );
\waddr[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(10),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[16]\(12),
      O => \waddr[12]_i_2_n_0\
    );
\waddr[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(10),
      I1 => \^out\(1),
      I2 => in26(9),
      I3 => \^out\(0),
      I4 => in24(10),
      O => \waddr[12]_i_3_n_0\
    );
\waddr[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(11),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[16]\(13),
      O => \waddr[13]_i_2_n_0\
    );
\waddr[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(11),
      I1 => \^out\(1),
      I2 => in26(10),
      I3 => \^out\(0),
      I4 => in24(11),
      O => \waddr[13]_i_3_n_0\
    );
\waddr[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(12),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[16]\(14),
      O => \waddr[14]_i_2_n_0\
    );
\waddr[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(12),
      I1 => \^out\(1),
      I2 => in26(11),
      I3 => \^out\(0),
      I4 => in24(12),
      O => \waddr[14]_i_3_n_0\
    );
\waddr[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(13),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[16]\(15),
      O => \waddr[15]_i_2_n_0\
    );
\waddr[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(13),
      I1 => \^out\(1),
      I2 => in26(12),
      I3 => \^out\(0),
      I4 => in24(13),
      O => \waddr[15]_i_3_n_0\
    );
\waddr[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(14),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[16]\(16),
      O => \waddr[16]_i_2_n_0\
    );
\waddr[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(14),
      I1 => \^out\(1),
      I2 => in26(13),
      I3 => \^out\(0),
      I4 => in24(14),
      O => \waddr[16]_i_3_n_0\
    );
\waddr[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(15),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[26]\(0),
      O => \waddr[17]_i_2_n_0\
    );
\waddr[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(15),
      I1 => \^out\(1),
      I2 => in26(14),
      I3 => \^out\(0),
      I4 => in24(15),
      O => \waddr[17]_i_3_n_0\
    );
\waddr[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(16),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[26]\(1),
      O => \waddr[18]_i_2_n_0\
    );
\waddr[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(16),
      I1 => \^out\(1),
      I2 => in26(15),
      I3 => \^out\(0),
      I4 => in24(16),
      O => \waddr[18]_i_3_n_0\
    );
\waddr[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(17),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[26]\(2),
      O => \waddr[19]_i_2_n_0\
    );
\waddr[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(17),
      I1 => \^out\(1),
      I2 => in26(16),
      I3 => \^out\(0),
      I4 => in24(17),
      O => \waddr[19]_i_3_n_0\
    );
\waddr[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(18),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[26]\(3),
      O => \waddr[20]_i_2_n_0\
    );
\waddr[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(18),
      I1 => \^out\(1),
      I2 => in26(17),
      I3 => \^out\(0),
      I4 => in24(18),
      O => \waddr[20]_i_3_n_0\
    );
\waddr[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(19),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[26]\(4),
      O => \waddr[21]_i_2_n_0\
    );
\waddr[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(19),
      I1 => \^out\(1),
      I2 => in26(18),
      I3 => \^out\(0),
      I4 => in24(19),
      O => \waddr[21]_i_3_n_0\
    );
\waddr[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(20),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[26]\(5),
      O => \waddr[22]_i_2_n_0\
    );
\waddr[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(20),
      I1 => \^out\(1),
      I2 => in26(19),
      I3 => \^out\(0),
      I4 => in24(20),
      O => \waddr[22]_i_3_n_0\
    );
\waddr[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(21),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[26]\(6),
      O => \waddr[23]_i_2_n_0\
    );
\waddr[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(21),
      I1 => \^out\(1),
      I2 => in26(20),
      I3 => \^out\(0),
      I4 => in24(21),
      O => \waddr[23]_i_3_n_0\
    );
\waddr[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(22),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[26]\(7),
      O => \waddr[24]_i_2_n_0\
    );
\waddr[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(22),
      I1 => \^out\(1),
      I2 => in26(21),
      I3 => \^out\(0),
      I4 => in24(22),
      O => \waddr[24]_i_3_n_0\
    );
\waddr[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(23),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[29]\(0),
      O => \waddr[25]_i_2_n_0\
    );
\waddr[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(23),
      I1 => \^out\(1),
      I2 => in26(22),
      I3 => \^out\(0),
      I4 => in24(23),
      O => \waddr[25]_i_3_n_0\
    );
\waddr[26]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(24),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[29]\(1),
      O => \waddr[26]_i_2_n_0\
    );
\waddr[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(24),
      I1 => \^out\(1),
      I2 => in26(23),
      I3 => \^out\(0),
      I4 => in24(24),
      O => \waddr[26]_i_3_n_0\
    );
\waddr[27]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(25),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[29]\(2),
      O => \waddr[27]_i_2_n_0\
    );
\waddr[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(25),
      I1 => \^out\(1),
      I2 => in26(24),
      I3 => \^out\(0),
      I4 => in24(25),
      O => \waddr[27]_i_3_n_0\
    );
\waddr[28]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(26),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[29]\(3),
      O => \waddr[28]_i_2_n_0\
    );
\waddr[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(26),
      I1 => \^out\(1),
      I2 => in26(25),
      I3 => \^out\(0),
      I4 => in24(26),
      O => \waddr[28]_i_3_n_0\
    );
\waddr[29]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(27),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[29]\(4),
      O => \waddr[29]_i_2_n_0\
    );
\waddr[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(27),
      I1 => \^out\(1),
      I2 => in26(26),
      I3 => \^out\(0),
      I4 => in24(27),
      O => \waddr[29]_i_3_n_0\
    );
\waddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8FFF38B880C00"
    )
        port map (
      I0 => in27(0),
      I1 => \^out\(2),
      I2 => \^out\(0),
      I3 => in24(0),
      I4 => \^out\(1),
      I5 => \slv_reg0_reg[16]\(2),
      O => \waddr[2]_i_1_n_0\
    );
\waddr[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(28),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[29]\(5),
      O => \waddr[30]_i_2_n_0\
    );
\waddr[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(28),
      I1 => \^out\(1),
      I2 => in26(27),
      I3 => \^out\(0),
      I4 => in24(28),
      O => \waddr[30]_i_3_n_0\
    );
\waddr[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004004444004000"
    )
        port map (
      I0 => writes_done,
      I1 => start_single_write0,
      I2 => \^out\(0),
      I3 => \mst_exec_state__0\(2),
      I4 => \^out\(1),
      I5 => \^out\(2),
      O => \waddr[31]_i_1_n_0\
    );
\waddr[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => m02_axi_bvalid,
      I1 => \^m02_axi_wvalid\,
      I2 => write_issued_reg_n_0,
      I3 => start_single_write_reg_n_0,
      I4 => \^m02_axi_awvalid\,
      O => start_single_write0
    );
\waddr[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(29),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[29]\(6),
      O => \waddr[31]_i_4_n_0\
    );
\waddr[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(29),
      I1 => \^out\(1),
      I2 => in26(28),
      I3 => \^out\(0),
      I4 => in24(29),
      O => \waddr[31]_i_5_n_0\
    );
\waddr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(1),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[16]\(3),
      O => \waddr[3]_i_2_n_0\
    );
\waddr[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(1),
      I1 => \^out\(1),
      I2 => in26(0),
      I3 => \^out\(0),
      I4 => in24(1),
      O => \waddr[3]_i_3_n_0\
    );
\waddr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(2),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[16]\(4),
      O => \waddr[4]_i_2_n_0\
    );
\waddr[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(2),
      I1 => \^out\(1),
      I2 => in26(1),
      I3 => \^out\(0),
      I4 => in24(2),
      O => \waddr[4]_i_3_n_0\
    );
\waddr[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(3),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[16]\(5),
      O => \waddr[5]_i_2_n_0\
    );
\waddr[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(3),
      I1 => \^out\(1),
      I2 => in26(2),
      I3 => \^out\(0),
      I4 => in24(3),
      O => \waddr[5]_i_3_n_0\
    );
\waddr[6]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(4),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[16]\(6),
      O => \waddr[6]_i_2__1_n_0\
    );
\waddr[6]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(4),
      I1 => \^out\(1),
      I2 => in26(3),
      I3 => \^out\(0),
      I4 => in24(4),
      O => \waddr[6]_i_3__1_n_0\
    );
\waddr[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(5),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[16]\(7),
      O => \waddr[7]_i_2_n_0\
    );
\waddr[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(5),
      I1 => \^out\(1),
      I2 => in26(4),
      I3 => \^out\(0),
      I4 => in24(5),
      O => \waddr[7]_i_3_n_0\
    );
\waddr[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(6),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[16]\(8),
      O => \waddr[8]_i_2_n_0\
    );
\waddr[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(6),
      I1 => \^out\(1),
      I2 => in26(5),
      I3 => \^out\(0),
      I4 => in24(6),
      O => \waddr[8]_i_3_n_0\
    );
\waddr[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^out\(0),
      I1 => in24(7),
      I2 => \^out\(1),
      I3 => \slv_reg0_reg[16]\(9),
      O => \waddr[9]_i_2_n_0\
    );
\waddr[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in27(7),
      I1 => \^out\(1),
      I2 => in26(6),
      I3 => \^out\(0),
      I4 => in24(7),
      O => \waddr[9]_i_3_n_0\
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \slv_reg0_reg[16]\(0),
      Q => \^waddr[31]\(0),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[10]_i_1_n_0\,
      Q => \^waddr[31]\(10),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[10]_i_2_n_0\,
      I1 => \waddr[10]_i_3_n_0\,
      O => \waddr_reg[10]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[11]_i_1_n_0\,
      Q => \^waddr[31]\(11),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[11]_i_2_n_0\,
      I1 => \waddr[11]_i_3_n_0\,
      O => \waddr_reg[11]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[12]_i_1_n_0\,
      Q => \^waddr[31]\(12),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[12]_i_2_n_0\,
      I1 => \waddr[12]_i_3_n_0\,
      O => \waddr_reg[12]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[13]_i_1_n_0\,
      Q => \^waddr[31]\(13),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[13]_i_2_n_0\,
      I1 => \waddr[13]_i_3_n_0\,
      O => \waddr_reg[13]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[14]_i_1_n_0\,
      Q => \^waddr[31]\(14),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[14]_i_2_n_0\,
      I1 => \waddr[14]_i_3_n_0\,
      O => \waddr_reg[14]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[15]_i_1_n_0\,
      Q => \^waddr[31]\(15),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[15]_i_2_n_0\,
      I1 => \waddr[15]_i_3_n_0\,
      O => \waddr_reg[15]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[16]_i_1_n_0\,
      Q => \^waddr[31]\(16),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[16]_i_2_n_0\,
      I1 => \waddr[16]_i_3_n_0\,
      O => \waddr_reg[16]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[17]_i_1_n_0\,
      Q => \^waddr[31]\(17),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[17]_i_2_n_0\,
      I1 => \waddr[17]_i_3_n_0\,
      O => \waddr_reg[17]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[18]_i_1_n_0\,
      Q => \^waddr[31]\(18),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[18]_i_2_n_0\,
      I1 => \waddr[18]_i_3_n_0\,
      O => \waddr_reg[18]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[19]_i_1_n_0\,
      Q => \^waddr[31]\(19),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[19]_i_2_n_0\,
      I1 => \waddr[19]_i_3_n_0\,
      O => \waddr_reg[19]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => D(0),
      Q => \^waddr[31]\(1),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[20]_i_1_n_0\,
      Q => \^waddr[31]\(20),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[20]_i_2_n_0\,
      I1 => \waddr[20]_i_3_n_0\,
      O => \waddr_reg[20]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[21]_i_1_n_0\,
      Q => \^waddr[31]\(21),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[21]_i_2_n_0\,
      I1 => \waddr[21]_i_3_n_0\,
      O => \waddr_reg[21]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[22]_i_1_n_0\,
      Q => \^waddr[31]\(22),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[22]_i_2_n_0\,
      I1 => \waddr[22]_i_3_n_0\,
      O => \waddr_reg[22]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[23]_i_1_n_0\,
      Q => \^waddr[31]\(23),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[23]_i_2_n_0\,
      I1 => \waddr[23]_i_3_n_0\,
      O => \waddr_reg[23]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[24]_i_1_n_0\,
      Q => \^waddr[31]\(24),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[24]_i_2_n_0\,
      I1 => \waddr[24]_i_3_n_0\,
      O => \waddr_reg[24]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[25]_i_1_n_0\,
      Q => \^waddr[31]\(25),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[25]_i_2_n_0\,
      I1 => \waddr[25]_i_3_n_0\,
      O => \waddr_reg[25]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[26]_i_1_n_0\,
      Q => \^waddr[31]\(26),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[26]_i_2_n_0\,
      I1 => \waddr[26]_i_3_n_0\,
      O => \waddr_reg[26]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[27]_i_1_n_0\,
      Q => \^waddr[31]\(27),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[27]_i_2_n_0\,
      I1 => \waddr[27]_i_3_n_0\,
      O => \waddr_reg[27]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[28]_i_1_n_0\,
      Q => \^waddr[31]\(28),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[28]_i_2_n_0\,
      I1 => \waddr[28]_i_3_n_0\,
      O => \waddr_reg[28]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[29]_i_1_n_0\,
      Q => \^waddr[31]\(29),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[29]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[29]_i_2_n_0\,
      I1 => \waddr[29]_i_3_n_0\,
      O => \waddr_reg[29]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr[2]_i_1_n_0\,
      Q => \^waddr[31]\(2),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[30]_i_1_n_0\,
      Q => \^waddr[31]\(30),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[30]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[30]_i_2_n_0\,
      I1 => \waddr[30]_i_3_n_0\,
      O => \waddr_reg[30]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[31]_i_2_n_0\,
      Q => \^waddr[31]\(31),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[31]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[31]_i_4_n_0\,
      I1 => \waddr[31]_i_5_n_0\,
      O => \waddr_reg[31]_i_2_n_0\,
      S => \^out\(2)
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[3]_i_1_n_0\,
      Q => \^waddr[31]\(3),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[3]_i_2_n_0\,
      I1 => \waddr[3]_i_3_n_0\,
      O => \waddr_reg[3]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[4]_i_1_n_0\,
      Q => \^waddr[31]\(4),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[4]_i_2_n_0\,
      I1 => \waddr[4]_i_3_n_0\,
      O => \waddr_reg[4]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[5]_i_1_n_0\,
      Q => \^waddr[31]\(5),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[5]_i_2_n_0\,
      I1 => \waddr[5]_i_3_n_0\,
      O => \waddr_reg[5]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[6]_i_1_n_0\,
      Q => \^waddr[31]\(6),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[6]_i_2__1_n_0\,
      I1 => \waddr[6]_i_3__1_n_0\,
      O => \waddr_reg[6]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[7]_i_1_n_0\,
      Q => \^waddr[31]\(7),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[7]_i_2_n_0\,
      I1 => \waddr[7]_i_3_n_0\,
      O => \waddr_reg[7]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[8]_i_1_n_0\,
      Q => \^waddr[31]\(8),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[8]_i_2_n_0\,
      I1 => \waddr[8]_i_3_n_0\,
      O => \waddr_reg[8]_i_1_n_0\,
      S => \^out\(2)
    );
\waddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \waddr_reg[9]_i_1_n_0\,
      Q => \^waddr[31]\(9),
      R => metadata_done_i_1_n_0
    );
\waddr_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \waddr[9]_i_2_n_0\,
      I1 => \waddr[9]_i_3_n_0\,
      O => \waddr_reg[9]_i_1_n_0\,
      S => \^out\(2)
    );
\wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(0),
      Q => \^wdata[31]\(0),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(10),
      Q => \^wdata[31]\(10),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(11),
      Q => \^wdata[31]\(11),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(12),
      Q => \^wdata[31]\(12),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(13),
      Q => \^wdata[31]\(13),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(14),
      Q => \^wdata[31]\(14),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(15),
      Q => \^wdata[31]\(15),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(16),
      Q => \^wdata[31]\(16),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(17),
      Q => \^wdata[31]\(17),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(18),
      Q => \^wdata[31]\(18),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(19),
      Q => \^wdata[31]\(19),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(1),
      Q => \^wdata[31]\(1),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(20),
      Q => \^wdata[31]\(20),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(21),
      Q => \^wdata[31]\(21),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(22),
      Q => \^wdata[31]\(22),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(23),
      Q => \^wdata[31]\(23),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(24),
      Q => \^wdata[31]\(24),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(25),
      Q => \^wdata[31]\(25),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(26),
      Q => \^wdata[31]\(26),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(27),
      Q => \^wdata[31]\(27),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(28),
      Q => \^wdata[31]\(28),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(29),
      Q => \^wdata[31]\(29),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(2),
      Q => \^wdata[31]\(2),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(30),
      Q => \^wdata[31]\(30),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(31),
      Q => \^wdata[31]\(31),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(3),
      Q => \^wdata[31]\(3),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(4),
      Q => \^wdata[31]\(4),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(5),
      Q => \^wdata[31]\(5),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(6),
      Q => \^wdata[31]\(6),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(7),
      Q => \^wdata[31]\(7),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(8),
      Q => \^wdata[31]\(8),
      R => metadata_done_i_1_n_0
    );
\wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => \waddr[31]_i_1_n_0\,
      D => \FSM_sequential_mst_exec_state_reg[3]_0\(9),
      Q => \^wdata[31]\(9),
      R => metadata_done_i_1_n_0
    );
write_issued_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4400"
    )
        port map (
      I0 => writes_done,
      I1 => start_single_write0,
      I2 => \^m02_axi_bready\,
      I3 => \start_single_write_i_2__1_n_0\,
      I4 => write_issued_reg_n_0,
      O => write_issued_i_1_n_0
    );
write_issued_reg: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => write_issued_i_1_n_0,
      Q => write_issued_reg_n_0,
      R => metadata_done_i_1_n_0
    );
\writes_done_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m02_axi_bvalid,
      I1 => \^m02_axi_bready\,
      O => writes_done0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m02_axi_aclk,
      CE => '1',
      D => writes_done0,
      Q => writes_done,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_undolog_0_3_undolog_v2_1_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    \dataout[2]\ : out STD_LOGIC;
    \dataout[1]\ : out STD_LOGIC;
    \dataout[0]\ : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    time_cycles : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    logclr_done_reg : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_araddr_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_araddr_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \log_src[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \raddr_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \raddr_reg[23]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \raddr_reg[27]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \ulog_offset[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \wdata_reg[27]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \wdata_reg[27]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \raddr_reg[23]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \raddr_reg[31]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \physical_src_addr[28]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \raddr_reg[31]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \log_size[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    start_clobber_reg_reg : out STD_LOGIC;
    \FSM_sequential_mst_exec_state_reg[0]\ : out STD_LOGIC;
    start_logclr : out STD_LOGIC;
    \mst_exec_state1__9\ : out STD_LOGIC;
    \log_src[63]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_copy_pulse : out STD_LOGIC;
    start_redolog : out STD_LOGIC;
    DMA_START2 : out STD_LOGIC;
    \raddr_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \raddr_reg[31]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \physical_src_addr[28]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \raddr_reg[31]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wdata_reg[9]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \wdata_reg[31]\ : out STD_LOGIC;
    \operation_type[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \wdata_reg[30]\ : out STD_LOGIC;
    \wdata_reg[29]\ : out STD_LOGIC;
    \wdata_reg[28]\ : out STD_LOGIC;
    \wdata_reg[27]_1\ : out STD_LOGIC;
    \wdata_reg[26]\ : out STD_LOGIC;
    \wdata_reg[25]\ : out STD_LOGIC;
    \wdata_reg[24]\ : out STD_LOGIC;
    \wdata_reg[23]\ : out STD_LOGIC;
    \wdata_reg[22]\ : out STD_LOGIC;
    \wdata_reg[21]\ : out STD_LOGIC;
    \wdata_reg[20]\ : out STD_LOGIC;
    \wdata_reg[19]\ : out STD_LOGIC;
    \wdata_reg[18]\ : out STD_LOGIC;
    \wdata_reg[17]\ : out STD_LOGIC;
    \wdata_reg[16]\ : out STD_LOGIC;
    \wdata_reg[15]\ : out STD_LOGIC;
    \wdata_reg[14]\ : out STD_LOGIC;
    \wdata_reg[13]\ : out STD_LOGIC;
    \wdata_reg[12]\ : out STD_LOGIC;
    \wdata_reg[11]\ : out STD_LOGIC;
    \wdata_reg[10]\ : out STD_LOGIC;
    \wdata_reg[9]_0\ : out STD_LOGIC;
    \wdata_reg[8]\ : out STD_LOGIC;
    \wdata_reg[7]\ : out STD_LOGIC;
    \wdata_reg[6]\ : out STD_LOGIC;
    \wdata_reg[5]\ : out STD_LOGIC;
    \wdata_reg[4]\ : out STD_LOGIC;
    \wdata_reg[3]\ : out STD_LOGIC;
    \wdata_reg[2]\ : out STD_LOGIC;
    \wdata_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    reg_init_complete : out STD_LOGIC;
    base_offset : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ulog_offset : out STD_LOGIC_VECTOR ( 31 downto 0 );
    log_size : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \wdata_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \waddr_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \waddr_reg[31]\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    in13 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    in24 : out STD_LOGIC_VECTOR ( 29 downto 0 );
    in26 : out STD_LOGIC_VECTOR ( 28 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    DMA_DONE_reg : in STD_LOGIC;
    DMA_DONE_reg_0 : in STD_LOGIC;
    metadata_done_reg : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m02_axi_aresetn : in STD_LOGIC;
    m01_axi_aresetn : in STD_LOGIC;
    \FSM_sequential_mst_exec_state_reg[0]_0\ : in STD_LOGIC;
    \rdata_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_mst_exec_state_reg[3]\ : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    start_clobber_reg : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \slv_reg0_reg[29]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    DMA_DEST1 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \slv_reg0_reg[26]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_sequential_mst_exec_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_mst_exec_state_reg[3]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    redolog_dest_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    redolog_src_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    DMA_DONE_reg_1 : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end design_1_undolog_0_3_undolog_v2_1_S00_AXI;

architecture STRUCTURE of design_1_undolog_0_3_undolog_v2_1_S00_AXI is
  signal \DMA_START0__7\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^base_offset\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal clear : STD_LOGIC;
  signal \^data_copy_pulse\ : STD_LOGIC;
  signal data_copy_pulsegen : STD_LOGIC;
  signal data_copy_pulsegend1 : STD_LOGIC;
  signal \^dataout[0]\ : STD_LOGIC;
  signal \^dataout[1]\ : STD_LOGIC;
  signal \^dataout[2]\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_10\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_11\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_12\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_13\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_14\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_15\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_8\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_9\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_10\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_11\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_12\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_13\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_14\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_15\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_8\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_9\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_10\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_11\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_12\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_13\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_14\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_15\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_8\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_9\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_10\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_11\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_12\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_13\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_14\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_15\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_8\ : STD_LOGIC;
  signal \i_/i_/i__carry__3_n_9\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_10\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_11\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_12\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_13\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_14\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_15\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_8\ : STD_LOGIC;
  signal \i_/i_/i__carry__4_n_9\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_10\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_11\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_12\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_13\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_14\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_15\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_8\ : STD_LOGIC;
  signal \i_/i_/i__carry__5_n_9\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_10\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_11\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_12\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_13\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_14\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_15\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_8\ : STD_LOGIC;
  signal \i_/i_/i__carry__6_n_9\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_10\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_11\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_12\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_13\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_14\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_15\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_8\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_9\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \^log_size\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^log_size[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^log_src[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^log_src[63]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^logclr_done_reg\ : STD_LOGIC;
  signal logclr_done_reg_i_1_n_0 : STD_LOGIC;
  signal logclr_pulsegen : STD_LOGIC;
  signal logclr_pulsegend1 : STD_LOGIC;
  signal \operation_type[0]_i_1_n_0\ : STD_LOGIC;
  signal \^operation_type[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \operation_type[1]_i_1_n_0\ : STD_LOGIC;
  signal \operation_type[1]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \raddr[8]_i_3_n_0\ : STD_LOGIC;
  signal \raddr_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \raddr_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \raddr_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \raddr_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \raddr_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \raddr_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \raddr_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \raddr_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \raddr_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \raddr_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \raddr_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \raddr_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \raddr_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \raddr_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \raddr_reg[31]_i_6_n_2\ : STD_LOGIC;
  signal \raddr_reg[31]_i_6_n_3\ : STD_LOGIC;
  signal \raddr_reg[31]_i_6_n_5\ : STD_LOGIC;
  signal \raddr_reg[31]_i_6_n_6\ : STD_LOGIC;
  signal \raddr_reg[31]_i_6_n_7\ : STD_LOGIC;
  signal \raddr_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \raddr_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \raddr_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \raddr_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \raddr_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \raddr_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \raddr_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal redolog_pulsegen : STD_LOGIC;
  signal redolog_pulsegend1 : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_init_complete_INST_0_i_1_n_0 : STD_LOGIC;
  signal reg_init_complete_INST_0_i_2_n_0 : STD_LOGIC;
  signal reg_init_complete_INST_0_i_3_n_0 : STD_LOGIC;
  signal reg_init_complete_INST_0_i_4_n_0 : STD_LOGIC;
  signal reg_init_complete_INST_0_i_5_n_0 : STD_LOGIC;
  signal reg_init_complete_INST_0_i_6_n_0 : STD_LOGIC;
  signal reg_init_complete_INST_0_i_7_n_0 : STD_LOGIC;
  signal reg_init_complete_INST_0_i_8_n_0 : STD_LOGIC;
  signal reg_init_complete_reg_i_1_n_0 : STD_LOGIC;
  signal reg_init_complete_reg_i_2_n_0 : STD_LOGIC;
  signal reg_init_complete_reg_reg_n_0 : STD_LOGIC;
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg10[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg111 : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[3]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg8[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg9[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[9]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal start_clobber : STD_LOGIC;
  signal start_clobber0_out : STD_LOGIC;
  signal start_clobber_i_2_n_0 : STD_LOGIC;
  signal start_clobber_i_3_n_0 : STD_LOGIC;
  signal start_clobber_i_4_n_0 : STD_LOGIC;
  signal start_clobber_i_5_n_0 : STD_LOGIC;
  signal start_clobber_i_6_n_0 : STD_LOGIC;
  signal start_clobber_i_7_n_0 : STD_LOGIC;
  signal start_clobber_i_8_n_0 : STD_LOGIC;
  signal start_clobber_i_9_n_0 : STD_LOGIC;
  signal start_data_copy_pulse : STD_LOGIC;
  signal \^start_logclr\ : STD_LOGIC;
  signal start_logclr_pulse : STD_LOGIC;
  signal \^start_redolog\ : STD_LOGIC;
  signal start_redolog_pulse : STD_LOGIC;
  signal start_timer : STD_LOGIC;
  signal start_timer_i_1_n_0 : STD_LOGIC;
  signal stop_timer_i_1_n_0 : STD_LOGIC;
  signal stop_timer_reg_n_0 : STD_LOGIC;
  signal \^time_cycles\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal time_cycles0 : STD_LOGIC;
  signal \^ulog_offset\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^ulog_offset[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \undolog_v2_1_M02_AXI_inst/in19\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \undolog_v2_1_M02_AXI_inst/in20\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \undolog_v2_1_M02_AXI_inst/in27\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \waddr[10]_i_5_n_0\ : STD_LOGIC;
  signal \waddr[2]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[2]_i_4_n_0\ : STD_LOGIC;
  signal \waddr_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \waddr_reg[10]_i_4_n_1\ : STD_LOGIC;
  signal \waddr_reg[10]_i_4_n_2\ : STD_LOGIC;
  signal \waddr_reg[10]_i_4_n_3\ : STD_LOGIC;
  signal \waddr_reg[10]_i_4_n_5\ : STD_LOGIC;
  signal \waddr_reg[10]_i_4_n_6\ : STD_LOGIC;
  signal \waddr_reg[10]_i_4_n_7\ : STD_LOGIC;
  signal \waddr_reg[16]_i_4_n_0\ : STD_LOGIC;
  signal \waddr_reg[16]_i_4_n_1\ : STD_LOGIC;
  signal \waddr_reg[16]_i_4_n_2\ : STD_LOGIC;
  signal \waddr_reg[16]_i_4_n_3\ : STD_LOGIC;
  signal \waddr_reg[16]_i_4_n_5\ : STD_LOGIC;
  signal \waddr_reg[16]_i_4_n_6\ : STD_LOGIC;
  signal \waddr_reg[16]_i_4_n_7\ : STD_LOGIC;
  signal \waddr_reg[18]_i_4_n_0\ : STD_LOGIC;
  signal \waddr_reg[18]_i_4_n_1\ : STD_LOGIC;
  signal \waddr_reg[18]_i_4_n_2\ : STD_LOGIC;
  signal \waddr_reg[18]_i_4_n_3\ : STD_LOGIC;
  signal \waddr_reg[18]_i_4_n_5\ : STD_LOGIC;
  signal \waddr_reg[18]_i_4_n_6\ : STD_LOGIC;
  signal \waddr_reg[18]_i_4_n_7\ : STD_LOGIC;
  signal \waddr_reg[24]_i_4_n_0\ : STD_LOGIC;
  signal \waddr_reg[24]_i_4_n_1\ : STD_LOGIC;
  signal \waddr_reg[24]_i_4_n_2\ : STD_LOGIC;
  signal \waddr_reg[24]_i_4_n_3\ : STD_LOGIC;
  signal \waddr_reg[24]_i_4_n_5\ : STD_LOGIC;
  signal \waddr_reg[24]_i_4_n_6\ : STD_LOGIC;
  signal \waddr_reg[24]_i_4_n_7\ : STD_LOGIC;
  signal \waddr_reg[26]_i_4_n_0\ : STD_LOGIC;
  signal \waddr_reg[26]_i_4_n_1\ : STD_LOGIC;
  signal \waddr_reg[26]_i_4_n_2\ : STD_LOGIC;
  signal \waddr_reg[26]_i_4_n_3\ : STD_LOGIC;
  signal \waddr_reg[26]_i_4_n_5\ : STD_LOGIC;
  signal \waddr_reg[26]_i_4_n_6\ : STD_LOGIC;
  signal \waddr_reg[26]_i_4_n_7\ : STD_LOGIC;
  signal \waddr_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \waddr_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \waddr_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \waddr_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \waddr_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \waddr_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \waddr_reg[2]_i_2_n_7\ : STD_LOGIC;
  signal \waddr_reg[31]_i_6_n_2\ : STD_LOGIC;
  signal \waddr_reg[31]_i_6_n_3\ : STD_LOGIC;
  signal \waddr_reg[31]_i_6_n_5\ : STD_LOGIC;
  signal \waddr_reg[31]_i_6_n_6\ : STD_LOGIC;
  signal \waddr_reg[31]_i_6_n_7\ : STD_LOGIC;
  signal \waddr_reg[31]_i_7_n_5\ : STD_LOGIC;
  signal \waddr_reg[31]_i_7_n_6\ : STD_LOGIC;
  signal \waddr_reg[31]_i_7_n_7\ : STD_LOGIC;
  signal \wdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \wdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \wdata[10]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[10]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[11]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[11]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[12]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[13]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[13]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[14]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[14]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[15]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[15]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[16]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[16]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[17]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[17]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[18]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[18]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[19]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[19]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \wdata[20]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[20]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[21]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[21]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[22]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[22]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[23]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[23]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[24]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[24]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[25]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[25]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[26]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[26]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[27]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[27]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[28]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[28]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[29]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[29]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[30]_i_2__0_n_0\ : STD_LOGIC;
  signal \wdata[30]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[31]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[31]_i_3__1_n_0\ : STD_LOGIC;
  signal \wdata[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[8]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \wdata[9]_i_2__1_n_0\ : STD_LOGIC;
  signal \wdata[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \NLW_i_/i_/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_/i_/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_/i_/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_/i_/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_/i_/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_/i_/i__carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_/i_/i__carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_/i_/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_raddr_reg[16]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_raddr_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_raddr_reg[31]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_raddr_reg[31]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_raddr_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_waddr_reg[10]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_waddr_reg[16]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_waddr_reg[18]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_waddr_reg[24]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_waddr_reg[26]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_waddr_reg[2]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_waddr_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_waddr_reg[31]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_waddr_reg[31]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_waddr_reg[31]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_waddr_reg[31]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[0]_i_5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \axi_awaddr[31]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \axi_awaddr[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of data_copy_pulsegen_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of logclr_done_reg_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of logclr_pulsegen_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \operation_type[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \operation_type[1]_i_2\ : label is "soft_lutpair13";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \raddr_reg[16]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \raddr_reg[24]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \raddr_reg[31]_i_6\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \raddr_reg[8]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of reg_init_complete_reg_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg9[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \slv_reg9[10]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \slv_reg9[11]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \slv_reg9[12]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \slv_reg9[13]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \slv_reg9[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg9[15]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \slv_reg9[16]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg9[17]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg9[18]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \slv_reg9[19]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg9[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \slv_reg9[20]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg9[21]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \slv_reg9[22]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg9[23]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg9[24]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg9[25]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg9[26]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg9[27]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg9[28]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg9[29]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg9[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \slv_reg9[30]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg9[31]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg9[3]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \slv_reg9[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \slv_reg9[5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \slv_reg9[6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \slv_reg9[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \slv_reg9[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg9[9]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of start_clobber_reg_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of start_logclr_INST_0 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of start_redolog_INST_0 : label is "soft_lutpair31";
  attribute METHODOLOGY_DRC_VIOS of \waddr_reg[10]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \waddr_reg[16]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \waddr_reg[18]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \waddr_reg[24]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \waddr_reg[26]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \waddr_reg[2]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \waddr_reg[31]_i_6\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \waddr_reg[31]_i_7\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \wdata[20]_i_2__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \wdata[21]_i_2__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \wdata[22]_i_2__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \wdata[23]_i_2__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \wdata[24]_i_2__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \wdata[25]_i_2__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \wdata[26]_i_2__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \wdata[27]_i_2__1\ : label is "soft_lutpair36";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  base_offset(63 downto 0) <= \^base_offset\(63 downto 0);
  data_copy_pulse <= \^data_copy_pulse\;
  \dataout[0]\ <= \^dataout[0]\;
  \dataout[1]\ <= \^dataout[1]\;
  \dataout[2]\ <= \^dataout[2]\;
  log_size(31 downto 0) <= \^log_size\(31 downto 0);
  \log_size[31]\(31 downto 0) <= \^log_size[31]\(31 downto 0);
  \log_src[31]\(31 downto 0) <= \^log_src[31]\(31 downto 0);
  \log_src[63]\(31 downto 0) <= \^log_src[63]\(31 downto 0);
  logclr_done_reg <= \^logclr_done_reg\;
  \operation_type[1]\(1 downto 0) <= \^operation_type[1]\(1 downto 0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
  start_logclr <= \^start_logclr\;
  start_redolog <= \^start_redolog\;
  time_cycles(63 downto 0) <= \^time_cycles\(63 downto 0);
  ulog_offset(31 downto 0) <= \^ulog_offset\(31 downto 0);
  \ulog_offset[31]\(31 downto 0) <= \^ulog_offset[31]\(31 downto 0);
DMA_DEST1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ulog_offset[31]\(4),
      O => \wdata_reg[9]\(1)
    );
DMA_DEST1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ulog_offset[31]\(3),
      O => \wdata_reg[9]\(0)
    );
\DMA_SRC0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(29),
      I1 => \^q\(13),
      O => \physical_src_addr[28]\(2)
    );
\DMA_SRC0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(28),
      I1 => \^q\(12),
      O => \physical_src_addr[28]\(1)
    );
\DMA_SRC0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(27),
      I1 => \^q\(11),
      O => \physical_src_addr[28]\(0)
    );
\DMA_SRC0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^log_src[31]\(30),
      I2 => \^q\(15),
      I3 => \^log_src[31]\(31),
      O => \physical_src_addr[28]_0\(3)
    );
\DMA_SRC0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^log_src[31]\(29),
      I2 => \^q\(14),
      I3 => \^log_src[31]\(30),
      O => \physical_src_addr[28]_0\(2)
    );
\DMA_SRC0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^log_src[31]\(28),
      I2 => \^q\(13),
      I3 => \^log_src[31]\(29),
      O => \physical_src_addr[28]_0\(1)
    );
\DMA_SRC0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^log_src[31]\(27),
      I2 => \^q\(12),
      I3 => \^log_src[31]\(28),
      O => \physical_src_addr[28]_0\(0)
    );
DMA_SRC0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(26),
      I1 => \^q\(10),
      O => \wdata_reg[27]_0\(6)
    );
DMA_SRC0_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^log_src[31]\(24),
      I2 => \^q\(9),
      I3 => \^log_src[31]\(25),
      O => \wdata_reg[27]\(5)
    );
DMA_SRC0_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^log_src[31]\(23),
      I2 => \^q\(8),
      I3 => \^log_src[31]\(24),
      O => \wdata_reg[27]\(4)
    );
DMA_SRC0_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^log_src[31]\(22),
      I2 => \^q\(7),
      I3 => \^log_src[31]\(23),
      O => \wdata_reg[27]\(3)
    );
DMA_SRC0_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^log_src[31]\(21),
      I2 => \^q\(6),
      I3 => \^log_src[31]\(22),
      O => \wdata_reg[27]\(2)
    );
DMA_SRC0_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^log_src[31]\(20),
      I2 => \^q\(5),
      I3 => \^log_src[31]\(21),
      O => \wdata_reg[27]\(1)
    );
DMA_SRC0_carry_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^log_src[31]\(20),
      I1 => \^q\(4),
      O => \wdata_reg[27]\(0)
    );
DMA_SRC0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(25),
      I1 => \^q\(9),
      O => \wdata_reg[27]_0\(5)
    );
DMA_SRC0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(24),
      I1 => \^q\(8),
      O => \wdata_reg[27]_0\(4)
    );
DMA_SRC0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(23),
      I1 => \^q\(7),
      O => \wdata_reg[27]_0\(3)
    );
DMA_SRC0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(22),
      I1 => \^q\(6),
      O => \wdata_reg[27]_0\(2)
    );
DMA_SRC0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(21),
      I1 => \^q\(5),
      O => \wdata_reg[27]_0\(1)
    );
DMA_SRC0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^log_src[31]\(20),
      I1 => \^q\(4),
      O => \wdata_reg[27]_0\(0)
    );
DMA_SRC0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^log_src[31]\(26),
      I2 => \^q\(11),
      I3 => \^log_src[31]\(27),
      O => \wdata_reg[27]\(7)
    );
DMA_SRC0_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^log_src[31]\(25),
      I2 => \^q\(10),
      I3 => \^log_src[31]\(26),
      O => \wdata_reg[27]\(6)
    );
\FSM_sequential_mst_exec_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040404"
    )
        port map (
      I0 => redolog_pulsegend1,
      I1 => redolog_pulsegen,
      I2 => \^log_src[63]\(28),
      I3 => \^log_src[63]\(29),
      I4 => \^log_src[63]\(30),
      I5 => \^log_src[63]\(31),
      O => \mst_exec_state1__9\
    );
\FSM_sequential_mst_exec_state[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => logclr_pulsegend1,
      I1 => logclr_pulsegen,
      I2 => start_clobber,
      O => \FSM_sequential_mst_exec_state_reg[0]\
    );
\FSM_sequential_mst_exec_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000004000000"
    )
        port map (
      I0 => redolog_pulsegend1,
      I1 => redolog_pulsegen,
      I2 => \^log_src[63]\(28),
      I3 => \^log_src[63]\(29),
      I4 => \^log_src[63]\(31),
      I5 => \^log_src[63]\(30),
      O => DMA_START2
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF8CCC8CCC8CCC"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => clear
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      R => clear
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      R => clear
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      R => clear
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(3),
      Q => sel0(3),
      R => clear
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => clear
    );
\axi_awaddr[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => redolog_pulsegend1,
      I1 => redolog_pulsegen,
      I2 => m02_axi_aresetn,
      O => \axi_araddr_reg[0]\(0)
    );
\axi_awaddr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFF"
    )
        port map (
      I0 => start_clobber,
      I1 => logclr_pulsegen,
      I2 => logclr_pulsegend1,
      I3 => m00_axi_aresetn,
      O => SR(0)
    );
\axi_awaddr[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \DMA_START0__7\,
      I1 => m01_axi_aresetn,
      O => \axi_araddr_reg[2]_0\(0)
    );
\axi_awaddr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAEAAAAAAAAA"
    )
        port map (
      I0 => \^data_copy_pulse\,
      I1 => \^log_src[63]\(30),
      I2 => \^log_src[63]\(31),
      I3 => \^log_src[63]\(29),
      I4 => \^log_src[63]\(28),
      I5 => \^start_redolog\,
      O => \DMA_START0__7\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready_i_1_n_0,
      D => s00_axi_awaddr(0),
      Q => p_0_in(0),
      R => clear
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready_i_1_n_0,
      D => s00_axi_awaddr(1),
      Q => p_0_in(1),
      R => clear
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready_i_1_n_0,
      D => s00_axi_awaddr(2),
      Q => p_0_in(2),
      R => clear
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready_i_1_n_0,
      D => s00_axi_awaddr(3),
      Q => p_0_in(3),
      R => clear
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s00_axi_awready\,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^s00_axi_awready\,
      R => clear
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      I3 => \^s00_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => clear
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[0]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[0]_i_4_n_0\,
      O => reg_data_out(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^dataout[0]\,
      I1 => slv_reg10(0),
      I2 => sel0(1),
      I3 => \slv_reg9_reg_n_0_[0]\,
      I4 => sel0(0),
      I5 => \^q\(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(0),
      I1 => \^log_size[31]\(0),
      I2 => sel0(1),
      I3 => \^log_src[63]\(0),
      I4 => sel0(0),
      I5 => \^log_src[31]\(0),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(32),
      I1 => \^base_offset\(0),
      I2 => sel0(1),
      I3 => \^ulog_offset\(0),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(0),
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[10]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[10]_i_4_n_0\,
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(10),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[10]\,
      I3 => sel0(1),
      I4 => slv_reg10(10),
      I5 => sel0(2),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(10),
      I1 => \^log_size[31]\(10),
      I2 => sel0(1),
      I3 => \^log_src[63]\(10),
      I4 => sel0(0),
      I5 => \^log_src[31]\(10),
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(42),
      I1 => \^base_offset\(10),
      I2 => sel0(1),
      I3 => \^ulog_offset\(10),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(10),
      O => \axi_rdata[10]_i_4_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[11]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[11]_i_4_n_0\,
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(11),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[11]\,
      I3 => sel0(1),
      I4 => slv_reg10(11),
      I5 => sel0(2),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(11),
      I1 => \^log_size[31]\(11),
      I2 => sel0(1),
      I3 => \^log_src[63]\(11),
      I4 => sel0(0),
      I5 => \^log_src[31]\(11),
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(43),
      I1 => \^base_offset\(11),
      I2 => sel0(1),
      I3 => \^ulog_offset\(11),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(11),
      O => \axi_rdata[11]_i_4_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[12]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[12]_i_4_n_0\,
      O => reg_data_out(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(12),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[12]\,
      I3 => sel0(1),
      I4 => slv_reg10(12),
      I5 => sel0(2),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(12),
      I1 => \^log_size[31]\(12),
      I2 => sel0(1),
      I3 => \^log_src[63]\(12),
      I4 => sel0(0),
      I5 => \^log_src[31]\(12),
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(44),
      I1 => \^base_offset\(12),
      I2 => sel0(1),
      I3 => \^ulog_offset\(12),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(12),
      O => \axi_rdata[12]_i_4_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[13]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[13]_i_4_n_0\,
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(13),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[13]\,
      I3 => sel0(1),
      I4 => slv_reg10(13),
      I5 => sel0(2),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(13),
      I1 => \^log_size[31]\(13),
      I2 => sel0(1),
      I3 => \^log_src[63]\(13),
      I4 => sel0(0),
      I5 => \^log_src[31]\(13),
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(45),
      I1 => \^base_offset\(13),
      I2 => sel0(1),
      I3 => \^ulog_offset\(13),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(13),
      O => \axi_rdata[13]_i_4_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[14]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[14]_i_4_n_0\,
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(14),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[14]\,
      I3 => sel0(1),
      I4 => slv_reg10(14),
      I5 => sel0(2),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(14),
      I1 => \^log_size[31]\(14),
      I2 => sel0(1),
      I3 => \^log_src[63]\(14),
      I4 => sel0(0),
      I5 => \^log_src[31]\(14),
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(46),
      I1 => \^base_offset\(14),
      I2 => sel0(1),
      I3 => \^ulog_offset\(14),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(14),
      O => \axi_rdata[14]_i_4_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[15]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[15]_i_4_n_0\,
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(15),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[15]\,
      I3 => sel0(1),
      I4 => slv_reg10(15),
      I5 => sel0(2),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(15),
      I1 => \^log_size[31]\(15),
      I2 => sel0(1),
      I3 => \^log_src[63]\(15),
      I4 => sel0(0),
      I5 => \^log_src[31]\(15),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(47),
      I1 => \^base_offset\(15),
      I2 => sel0(1),
      I3 => \^ulog_offset\(15),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(15),
      O => \axi_rdata[15]_i_4_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[16]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[16]_i_4_n_0\,
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(16),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[16]\,
      I3 => sel0(1),
      I4 => slv_reg10(16),
      I5 => sel0(2),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(16),
      I1 => \^log_size[31]\(16),
      I2 => sel0(1),
      I3 => \^log_src[63]\(16),
      I4 => sel0(0),
      I5 => \^log_src[31]\(16),
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(48),
      I1 => \^base_offset\(16),
      I2 => sel0(1),
      I3 => \^ulog_offset\(16),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(16),
      O => \axi_rdata[16]_i_4_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[17]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[17]_i_4_n_0\,
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(17),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[17]\,
      I3 => sel0(1),
      I4 => slv_reg10(17),
      I5 => sel0(2),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(17),
      I1 => \^log_size[31]\(17),
      I2 => sel0(1),
      I3 => \^log_src[63]\(17),
      I4 => sel0(0),
      I5 => \^log_src[31]\(17),
      O => \axi_rdata[17]_i_3_n_0\
    );
\axi_rdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(49),
      I1 => \^base_offset\(17),
      I2 => sel0(1),
      I3 => \^ulog_offset\(17),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(17),
      O => \axi_rdata[17]_i_4_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[18]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[18]_i_4_n_0\,
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(18),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[18]\,
      I3 => sel0(1),
      I4 => slv_reg10(18),
      I5 => sel0(2),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(18),
      I1 => \^log_size[31]\(18),
      I2 => sel0(1),
      I3 => \^log_src[63]\(18),
      I4 => sel0(0),
      I5 => \^log_src[31]\(18),
      O => \axi_rdata[18]_i_3_n_0\
    );
\axi_rdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(50),
      I1 => \^base_offset\(18),
      I2 => sel0(1),
      I3 => \^ulog_offset\(18),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(18),
      O => \axi_rdata[18]_i_4_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[19]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[19]_i_4_n_0\,
      O => reg_data_out(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(19),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[19]\,
      I3 => sel0(1),
      I4 => slv_reg10(19),
      I5 => sel0(2),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(19),
      I1 => \^log_size[31]\(19),
      I2 => sel0(1),
      I3 => \^log_src[63]\(19),
      I4 => sel0(0),
      I5 => \^log_src[31]\(19),
      O => \axi_rdata[19]_i_3_n_0\
    );
\axi_rdata[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(51),
      I1 => \^base_offset\(19),
      I2 => sel0(1),
      I3 => \^ulog_offset\(19),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(19),
      O => \axi_rdata[19]_i_4_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[1]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[1]_i_4_n_0\,
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^dataout[1]\,
      I1 => slv_reg10(1),
      I2 => sel0(1),
      I3 => \slv_reg9_reg_n_0_[1]\,
      I4 => sel0(0),
      I5 => \^q\(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(1),
      I1 => \^log_size[31]\(1),
      I2 => sel0(1),
      I3 => \^log_src[63]\(1),
      I4 => sel0(0),
      I5 => \^log_src[31]\(1),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(33),
      I1 => \^base_offset\(1),
      I2 => sel0(1),
      I3 => \^ulog_offset\(1),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(1),
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[20]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[20]_i_4_n_0\,
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(20),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[20]\,
      I3 => sel0(1),
      I4 => slv_reg10(20),
      I5 => sel0(2),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(20),
      I1 => \^log_size[31]\(20),
      I2 => sel0(1),
      I3 => \^log_src[63]\(20),
      I4 => sel0(0),
      I5 => \^log_src[31]\(20),
      O => \axi_rdata[20]_i_3_n_0\
    );
\axi_rdata[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(52),
      I1 => \^base_offset\(20),
      I2 => sel0(1),
      I3 => \^ulog_offset\(20),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(20),
      O => \axi_rdata[20]_i_4_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[21]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[21]_i_4_n_0\,
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(21),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[21]\,
      I3 => sel0(1),
      I4 => slv_reg10(21),
      I5 => sel0(2),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(21),
      I1 => \^log_size[31]\(21),
      I2 => sel0(1),
      I3 => \^log_src[63]\(21),
      I4 => sel0(0),
      I5 => \^log_src[31]\(21),
      O => \axi_rdata[21]_i_3_n_0\
    );
\axi_rdata[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(53),
      I1 => \^base_offset\(21),
      I2 => sel0(1),
      I3 => \^ulog_offset\(21),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(21),
      O => \axi_rdata[21]_i_4_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[22]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[22]_i_4_n_0\,
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(22),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[22]\,
      I3 => sel0(1),
      I4 => slv_reg10(22),
      I5 => sel0(2),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(22),
      I1 => \^log_size[31]\(22),
      I2 => sel0(1),
      I3 => \^log_src[63]\(22),
      I4 => sel0(0),
      I5 => \^log_src[31]\(22),
      O => \axi_rdata[22]_i_3_n_0\
    );
\axi_rdata[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(54),
      I1 => \^base_offset\(22),
      I2 => sel0(1),
      I3 => \^ulog_offset\(22),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(22),
      O => \axi_rdata[22]_i_4_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[23]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[23]_i_4_n_0\,
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(23),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[23]\,
      I3 => sel0(1),
      I4 => slv_reg10(23),
      I5 => sel0(2),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(23),
      I1 => \^log_size[31]\(23),
      I2 => sel0(1),
      I3 => \^log_src[63]\(23),
      I4 => sel0(0),
      I5 => \^log_src[31]\(23),
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(55),
      I1 => \^base_offset\(23),
      I2 => sel0(1),
      I3 => \^ulog_offset\(23),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(23),
      O => \axi_rdata[23]_i_4_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[24]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[24]_i_4_n_0\,
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(24),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[24]\,
      I3 => sel0(1),
      I4 => slv_reg10(24),
      I5 => sel0(2),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(24),
      I1 => \^log_size[31]\(24),
      I2 => sel0(1),
      I3 => \^log_src[63]\(24),
      I4 => sel0(0),
      I5 => \^log_src[31]\(24),
      O => \axi_rdata[24]_i_3_n_0\
    );
\axi_rdata[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(56),
      I1 => \^base_offset\(24),
      I2 => sel0(1),
      I3 => \^ulog_offset\(24),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(24),
      O => \axi_rdata[24]_i_4_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[25]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[25]_i_4_n_0\,
      O => reg_data_out(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(25),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[25]\,
      I3 => sel0(1),
      I4 => slv_reg10(25),
      I5 => sel0(2),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(25),
      I1 => \^log_size[31]\(25),
      I2 => sel0(1),
      I3 => \^log_src[63]\(25),
      I4 => sel0(0),
      I5 => \^log_src[31]\(25),
      O => \axi_rdata[25]_i_3_n_0\
    );
\axi_rdata[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(57),
      I1 => \^base_offset\(25),
      I2 => sel0(1),
      I3 => \^ulog_offset\(25),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(25),
      O => \axi_rdata[25]_i_4_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[26]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[26]_i_4_n_0\,
      O => reg_data_out(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(26),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[26]\,
      I3 => sel0(1),
      I4 => slv_reg10(26),
      I5 => sel0(2),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(26),
      I1 => \^log_size[31]\(26),
      I2 => sel0(1),
      I3 => \^log_src[63]\(26),
      I4 => sel0(0),
      I5 => \^log_src[31]\(26),
      O => \axi_rdata[26]_i_3_n_0\
    );
\axi_rdata[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(58),
      I1 => \^base_offset\(26),
      I2 => sel0(1),
      I3 => \^ulog_offset\(26),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(26),
      O => \axi_rdata[26]_i_4_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[27]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[27]_i_4_n_0\,
      O => reg_data_out(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(27),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[27]\,
      I3 => sel0(1),
      I4 => slv_reg10(27),
      I5 => sel0(2),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(27),
      I1 => \^log_size[31]\(27),
      I2 => sel0(1),
      I3 => \^log_src[63]\(27),
      I4 => sel0(0),
      I5 => \^log_src[31]\(27),
      O => \axi_rdata[27]_i_3_n_0\
    );
\axi_rdata[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(59),
      I1 => \^base_offset\(27),
      I2 => sel0(1),
      I3 => \^ulog_offset\(27),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(27),
      O => \axi_rdata[27]_i_4_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[28]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[28]_i_4_n_0\,
      O => reg_data_out(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(28),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[28]\,
      I3 => sel0(1),
      I4 => slv_reg10(28),
      I5 => sel0(2),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(28),
      I1 => \^log_size[31]\(28),
      I2 => sel0(1),
      I3 => \^log_src[63]\(28),
      I4 => sel0(0),
      I5 => \^log_src[31]\(28),
      O => \axi_rdata[28]_i_3_n_0\
    );
\axi_rdata[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(60),
      I1 => \^base_offset\(28),
      I2 => sel0(1),
      I3 => \^ulog_offset\(28),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(28),
      O => \axi_rdata[28]_i_4_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[29]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[29]_i_4_n_0\,
      O => reg_data_out(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(29),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[29]\,
      I3 => sel0(1),
      I4 => slv_reg10(29),
      I5 => sel0(2),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(29),
      I1 => \^log_size[31]\(29),
      I2 => sel0(1),
      I3 => \^log_src[63]\(29),
      I4 => sel0(0),
      I5 => \^log_src[31]\(29),
      O => \axi_rdata[29]_i_3_n_0\
    );
\axi_rdata[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(61),
      I1 => \^base_offset\(29),
      I2 => sel0(1),
      I3 => \^ulog_offset\(29),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(29),
      O => \axi_rdata[29]_i_4_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[2]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[2]_i_4_n_0\,
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^dataout[2]\,
      I1 => slv_reg10(2),
      I2 => sel0(1),
      I3 => \slv_reg9_reg_n_0_[2]\,
      I4 => sel0(0),
      I5 => \^q\(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(2),
      I1 => \^log_size[31]\(2),
      I2 => sel0(1),
      I3 => \^log_src[63]\(2),
      I4 => sel0(0),
      I5 => \^log_src[31]\(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(34),
      I1 => \^base_offset\(2),
      I2 => sel0(1),
      I3 => \^ulog_offset\(2),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(2),
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[30]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => reg_data_out(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(30),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[30]\,
      I3 => sel0(1),
      I4 => slv_reg10(30),
      I5 => sel0(2),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(30),
      I1 => \^log_size[31]\(30),
      I2 => sel0(1),
      I3 => \^log_src[63]\(30),
      I4 => sel0(0),
      I5 => \^log_src[31]\(30),
      O => \axi_rdata[30]_i_3_n_0\
    );
\axi_rdata[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(62),
      I1 => \^base_offset\(30),
      I2 => sel0(1),
      I3 => \^ulog_offset\(30),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(30),
      O => \axi_rdata[30]_i_4_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[31]_i_4_n_0\,
      O => reg_data_out(31)
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(31),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[31]\,
      I3 => sel0(1),
      I4 => slv_reg10(31),
      I5 => sel0(2),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(31),
      I1 => \^log_size[31]\(31),
      I2 => sel0(1),
      I3 => \^log_src[63]\(31),
      I4 => sel0(0),
      I5 => \^log_src[31]\(31),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(63),
      I1 => \^base_offset\(31),
      I2 => sel0(1),
      I3 => \^ulog_offset\(31),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(31),
      O => \axi_rdata[31]_i_4_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[3]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[3]_i_4_n_0\,
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(3),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[3]\,
      I3 => sel0(1),
      I4 => slv_reg10(3),
      I5 => sel0(2),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(3),
      I1 => \^log_size[31]\(3),
      I2 => sel0(1),
      I3 => \^log_src[63]\(3),
      I4 => sel0(0),
      I5 => \^log_src[31]\(3),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(35),
      I1 => \^base_offset\(3),
      I2 => sel0(1),
      I3 => \^ulog_offset\(3),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(3),
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[4]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[4]_i_4_n_0\,
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(4),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[4]\,
      I3 => sel0(1),
      I4 => slv_reg10(4),
      I5 => sel0(2),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(4),
      I1 => \^log_size[31]\(4),
      I2 => sel0(1),
      I3 => \^log_src[63]\(4),
      I4 => sel0(0),
      I5 => \^log_src[31]\(4),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(36),
      I1 => \^base_offset\(4),
      I2 => sel0(1),
      I3 => \^ulog_offset\(4),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(4),
      O => \axi_rdata[4]_i_4_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[5]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[5]_i_4_n_0\,
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(5),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[5]\,
      I3 => sel0(1),
      I4 => slv_reg10(5),
      I5 => sel0(2),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(5),
      I1 => \^log_size[31]\(5),
      I2 => sel0(1),
      I3 => \^log_src[63]\(5),
      I4 => sel0(0),
      I5 => \^log_src[31]\(5),
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(37),
      I1 => \^base_offset\(5),
      I2 => sel0(1),
      I3 => \^ulog_offset\(5),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(5),
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[6]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[6]_i_4_n_0\,
      O => reg_data_out(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(6),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[6]\,
      I3 => sel0(1),
      I4 => slv_reg10(6),
      I5 => sel0(2),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(6),
      I1 => \^log_size[31]\(6),
      I2 => sel0(1),
      I3 => \^log_src[63]\(6),
      I4 => sel0(0),
      I5 => \^log_src[31]\(6),
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(38),
      I1 => \^base_offset\(6),
      I2 => sel0(1),
      I3 => \^ulog_offset\(6),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(6),
      O => \axi_rdata[6]_i_4_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[7]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[7]_i_4_n_0\,
      O => reg_data_out(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(7),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[7]\,
      I3 => sel0(1),
      I4 => slv_reg10(7),
      I5 => sel0(2),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(7),
      I1 => \^log_size[31]\(7),
      I2 => sel0(1),
      I3 => \^log_src[63]\(7),
      I4 => sel0(0),
      I5 => \^log_src[31]\(7),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(39),
      I1 => \^base_offset\(7),
      I2 => sel0(1),
      I3 => \^ulog_offset\(7),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(7),
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[8]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[8]_i_4_n_0\,
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(8),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[8]\,
      I3 => sel0(1),
      I4 => slv_reg10(8),
      I5 => sel0(2),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(8),
      I1 => \^log_size[31]\(8),
      I2 => sel0(1),
      I3 => \^log_src[63]\(8),
      I4 => sel0(0),
      I5 => \^log_src[31]\(8),
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(40),
      I1 => \^base_offset\(8),
      I2 => sel0(1),
      I3 => \^ulog_offset\(8),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(8),
      O => \axi_rdata[8]_i_4_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[9]_i_3_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[9]_i_4_n_0\,
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^q\(9),
      I1 => sel0(0),
      I2 => \slv_reg9_reg_n_0_[9]\,
      I3 => sel0(1),
      I4 => slv_reg10(9),
      I5 => sel0(2),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^log_size\(9),
      I1 => \^log_size[31]\(9),
      I2 => sel0(1),
      I3 => \^log_src[63]\(9),
      I4 => sel0(0),
      I5 => \^log_src[31]\(9),
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^base_offset\(41),
      I1 => \^base_offset\(9),
      I2 => sel0(1),
      I3 => \^ulog_offset\(9),
      I4 => sel0(0),
      I5 => \^ulog_offset[31]\(9),
      O => \axi_rdata[9]_i_4_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => clear
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => clear
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => clear
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => clear
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => clear
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => clear
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => clear
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => clear
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => clear
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => clear
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => clear
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => clear
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => clear
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => clear
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => clear
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => clear
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => clear
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => clear
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => clear
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => clear
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => clear
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => clear
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => clear
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => clear
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => clear
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => clear
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => clear
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => clear
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => clear
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => clear
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => clear
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => clear
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => clear
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => clear
    );
data_copy_pulse_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_copy_pulsegen,
      I1 => data_copy_pulsegend1,
      O => \^data_copy_pulse\
    );
data_copy_pulsegen_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => start_data_copy_pulse
    );
data_copy_pulsegen_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => start_data_copy_pulse,
      Q => data_copy_pulsegen,
      R => clear
    );
data_copy_pulsegend1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data_copy_pulsegen,
      Q => data_copy_pulsegend1,
      R => clear
    );
\i_/i_/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \i_/i_/i__carry_n_0\,
      CO(6) => \i_/i_/i__carry_n_1\,
      CO(5) => \i_/i_/i__carry_n_2\,
      CO(4) => \i_/i_/i__carry_n_3\,
      CO(3) => \NLW_i_/i_/i__carry_CO_UNCONNECTED\(3),
      CO(2) => \i_/i_/i__carry_n_5\,
      CO(1) => \i_/i_/i__carry_n_6\,
      CO(0) => \i_/i_/i__carry_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \i_/i_/i__carry_n_8\,
      O(6) => \i_/i_/i__carry_n_9\,
      O(5) => \i_/i_/i__carry_n_10\,
      O(4) => \i_/i_/i__carry_n_11\,
      O(3) => \i_/i_/i__carry_n_12\,
      O(2) => \i_/i_/i__carry_n_13\,
      O(1) => \i_/i_/i__carry_n_14\,
      O(0) => \i_/i_/i__carry_n_15\,
      S(7 downto 1) => \^time_cycles\(7 downto 1),
      S(0) => \i__carry_i_1_n_0\
    );
\i_/i_/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \i_/i_/i__carry_n_0\,
      CI_TOP => '0',
      CO(7) => \i_/i_/i__carry__0_n_0\,
      CO(6) => \i_/i_/i__carry__0_n_1\,
      CO(5) => \i_/i_/i__carry__0_n_2\,
      CO(4) => \i_/i_/i__carry__0_n_3\,
      CO(3) => \NLW_i_/i_/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \i_/i_/i__carry__0_n_5\,
      CO(1) => \i_/i_/i__carry__0_n_6\,
      CO(0) => \i_/i_/i__carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \i_/i_/i__carry__0_n_8\,
      O(6) => \i_/i_/i__carry__0_n_9\,
      O(5) => \i_/i_/i__carry__0_n_10\,
      O(4) => \i_/i_/i__carry__0_n_11\,
      O(3) => \i_/i_/i__carry__0_n_12\,
      O(2) => \i_/i_/i__carry__0_n_13\,
      O(1) => \i_/i_/i__carry__0_n_14\,
      O(0) => \i_/i_/i__carry__0_n_15\,
      S(7 downto 0) => \^time_cycles\(15 downto 8)
    );
\i_/i_/i__carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \i_/i_/i__carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \i_/i_/i__carry__1_n_0\,
      CO(6) => \i_/i_/i__carry__1_n_1\,
      CO(5) => \i_/i_/i__carry__1_n_2\,
      CO(4) => \i_/i_/i__carry__1_n_3\,
      CO(3) => \NLW_i_/i_/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \i_/i_/i__carry__1_n_5\,
      CO(1) => \i_/i_/i__carry__1_n_6\,
      CO(0) => \i_/i_/i__carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \i_/i_/i__carry__1_n_8\,
      O(6) => \i_/i_/i__carry__1_n_9\,
      O(5) => \i_/i_/i__carry__1_n_10\,
      O(4) => \i_/i_/i__carry__1_n_11\,
      O(3) => \i_/i_/i__carry__1_n_12\,
      O(2) => \i_/i_/i__carry__1_n_13\,
      O(1) => \i_/i_/i__carry__1_n_14\,
      O(0) => \i_/i_/i__carry__1_n_15\,
      S(7 downto 0) => \^time_cycles\(23 downto 16)
    );
\i_/i_/i__carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \i_/i_/i__carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \i_/i_/i__carry__2_n_0\,
      CO(6) => \i_/i_/i__carry__2_n_1\,
      CO(5) => \i_/i_/i__carry__2_n_2\,
      CO(4) => \i_/i_/i__carry__2_n_3\,
      CO(3) => \NLW_i_/i_/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \i_/i_/i__carry__2_n_5\,
      CO(1) => \i_/i_/i__carry__2_n_6\,
      CO(0) => \i_/i_/i__carry__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \i_/i_/i__carry__2_n_8\,
      O(6) => \i_/i_/i__carry__2_n_9\,
      O(5) => \i_/i_/i__carry__2_n_10\,
      O(4) => \i_/i_/i__carry__2_n_11\,
      O(3) => \i_/i_/i__carry__2_n_12\,
      O(2) => \i_/i_/i__carry__2_n_13\,
      O(1) => \i_/i_/i__carry__2_n_14\,
      O(0) => \i_/i_/i__carry__2_n_15\,
      S(7 downto 0) => \^time_cycles\(31 downto 24)
    );
\i_/i_/i__carry__3\: unisim.vcomponents.CARRY8
     port map (
      CI => \i_/i_/i__carry__2_n_0\,
      CI_TOP => '0',
      CO(7) => \i_/i_/i__carry__3_n_0\,
      CO(6) => \i_/i_/i__carry__3_n_1\,
      CO(5) => \i_/i_/i__carry__3_n_2\,
      CO(4) => \i_/i_/i__carry__3_n_3\,
      CO(3) => \NLW_i_/i_/i__carry__3_CO_UNCONNECTED\(3),
      CO(2) => \i_/i_/i__carry__3_n_5\,
      CO(1) => \i_/i_/i__carry__3_n_6\,
      CO(0) => \i_/i_/i__carry__3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \i_/i_/i__carry__3_n_8\,
      O(6) => \i_/i_/i__carry__3_n_9\,
      O(5) => \i_/i_/i__carry__3_n_10\,
      O(4) => \i_/i_/i__carry__3_n_11\,
      O(3) => \i_/i_/i__carry__3_n_12\,
      O(2) => \i_/i_/i__carry__3_n_13\,
      O(1) => \i_/i_/i__carry__3_n_14\,
      O(0) => \i_/i_/i__carry__3_n_15\,
      S(7 downto 0) => \^time_cycles\(39 downto 32)
    );
\i_/i_/i__carry__4\: unisim.vcomponents.CARRY8
     port map (
      CI => \i_/i_/i__carry__3_n_0\,
      CI_TOP => '0',
      CO(7) => \i_/i_/i__carry__4_n_0\,
      CO(6) => \i_/i_/i__carry__4_n_1\,
      CO(5) => \i_/i_/i__carry__4_n_2\,
      CO(4) => \i_/i_/i__carry__4_n_3\,
      CO(3) => \NLW_i_/i_/i__carry__4_CO_UNCONNECTED\(3),
      CO(2) => \i_/i_/i__carry__4_n_5\,
      CO(1) => \i_/i_/i__carry__4_n_6\,
      CO(0) => \i_/i_/i__carry__4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \i_/i_/i__carry__4_n_8\,
      O(6) => \i_/i_/i__carry__4_n_9\,
      O(5) => \i_/i_/i__carry__4_n_10\,
      O(4) => \i_/i_/i__carry__4_n_11\,
      O(3) => \i_/i_/i__carry__4_n_12\,
      O(2) => \i_/i_/i__carry__4_n_13\,
      O(1) => \i_/i_/i__carry__4_n_14\,
      O(0) => \i_/i_/i__carry__4_n_15\,
      S(7 downto 0) => \^time_cycles\(47 downto 40)
    );
\i_/i_/i__carry__5\: unisim.vcomponents.CARRY8
     port map (
      CI => \i_/i_/i__carry__4_n_0\,
      CI_TOP => '0',
      CO(7) => \i_/i_/i__carry__5_n_0\,
      CO(6) => \i_/i_/i__carry__5_n_1\,
      CO(5) => \i_/i_/i__carry__5_n_2\,
      CO(4) => \i_/i_/i__carry__5_n_3\,
      CO(3) => \NLW_i_/i_/i__carry__5_CO_UNCONNECTED\(3),
      CO(2) => \i_/i_/i__carry__5_n_5\,
      CO(1) => \i_/i_/i__carry__5_n_6\,
      CO(0) => \i_/i_/i__carry__5_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \i_/i_/i__carry__5_n_8\,
      O(6) => \i_/i_/i__carry__5_n_9\,
      O(5) => \i_/i_/i__carry__5_n_10\,
      O(4) => \i_/i_/i__carry__5_n_11\,
      O(3) => \i_/i_/i__carry__5_n_12\,
      O(2) => \i_/i_/i__carry__5_n_13\,
      O(1) => \i_/i_/i__carry__5_n_14\,
      O(0) => \i_/i_/i__carry__5_n_15\,
      S(7 downto 0) => \^time_cycles\(55 downto 48)
    );
\i_/i_/i__carry__6\: unisim.vcomponents.CARRY8
     port map (
      CI => \i_/i_/i__carry__5_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_i_/i_/i__carry__6_CO_UNCONNECTED\(7),
      CO(6) => \i_/i_/i__carry__6_n_1\,
      CO(5) => \i_/i_/i__carry__6_n_2\,
      CO(4) => \i_/i_/i__carry__6_n_3\,
      CO(3) => \NLW_i_/i_/i__carry__6_CO_UNCONNECTED\(3),
      CO(2) => \i_/i_/i__carry__6_n_5\,
      CO(1) => \i_/i_/i__carry__6_n_6\,
      CO(0) => \i_/i_/i__carry__6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \i_/i_/i__carry__6_n_8\,
      O(6) => \i_/i_/i__carry__6_n_9\,
      O(5) => \i_/i_/i__carry__6_n_10\,
      O(4) => \i_/i_/i__carry__6_n_11\,
      O(3) => \i_/i_/i__carry__6_n_12\,
      O(2) => \i_/i_/i__carry__6_n_13\,
      O(1) => \i_/i_/i__carry__6_n_14\,
      O(0) => \i_/i_/i__carry__6_n_15\,
      S(7 downto 0) => \^time_cycles\(63 downto 56)
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^time_cycles\(0),
      O => \i__carry_i_1_n_0\
    );
logclr_done_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E000E0"
    )
        port map (
      I0 => \^logclr_done_reg\,
      I1 => DMA_DONE_reg_1,
      I2 => s00_axi_aresetn,
      I3 => logclr_pulsegen,
      I4 => logclr_pulsegend1,
      O => logclr_done_reg_i_1_n_0
    );
logclr_done_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => logclr_done_reg_i_1_n_0,
      Q => \^logclr_done_reg\,
      R => '0'
    );
logclr_pulsegen_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => start_logclr_pulse
    );
logclr_pulsegen_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => start_logclr_pulse,
      Q => logclr_pulsegen,
      R => clear
    );
logclr_pulsegend1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => logclr_pulsegen,
      Q => logclr_pulsegend1,
      R => clear
    );
\operation_type[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAAAAA"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      O => \operation_type[0]_i_1_n_0\
    );
\operation_type[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1080FFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => s00_axi_aresetn,
      O => \operation_type[1]_i_1_n_0\
    );
\operation_type[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \^q\(2),
      I1 => s00_axi_aresetn,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => \operation_type[1]_i_2_n_0\
    );
\operation_type_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \operation_type[1]_i_1_n_0\,
      D => \operation_type[0]_i_1_n_0\,
      Q => \^operation_type[1]\(0),
      R => '0'
    );
\operation_type_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \operation_type[1]_i_1_n_0\,
      D => \operation_type[1]_i_2_n_0\,
      Q => \^operation_type[1]\(1),
      R => '0'
    );
\p_2_out_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(14),
      I1 => \^log_src[31]\(15),
      O => \raddr_reg[15]\(7)
    );
\p_2_out_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(13),
      I1 => \^log_src[31]\(14),
      O => \raddr_reg[15]\(6)
    );
\p_2_out_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(12),
      I1 => \^log_src[31]\(13),
      O => \raddr_reg[15]\(5)
    );
\p_2_out_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(11),
      I1 => \^log_src[31]\(12),
      O => \raddr_reg[15]\(4)
    );
\p_2_out_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(10),
      I1 => \^log_src[31]\(11),
      O => \raddr_reg[15]\(3)
    );
\p_2_out_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(9),
      I1 => \^log_src[31]\(10),
      O => \raddr_reg[15]\(2)
    );
\p_2_out_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(8),
      I1 => \^log_src[31]\(9),
      O => \raddr_reg[15]\(1)
    );
\p_2_out_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(7),
      I1 => \^log_src[31]\(8),
      O => \raddr_reg[15]\(0)
    );
\p_2_out_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(22),
      I1 => \^q\(6),
      O => \raddr_reg[23]_0\(2)
    );
\p_2_out_carry__1_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(16),
      I1 => \^log_src[31]\(17),
      O => \raddr_reg[23]\(1)
    );
\p_2_out_carry__1_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(15),
      I1 => \^log_src[31]\(16),
      O => \raddr_reg[23]\(0)
    );
\p_2_out_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(21),
      I1 => \^q\(5),
      O => \raddr_reg[23]_0\(1)
    );
\p_2_out_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(20),
      I1 => \^q\(4),
      O => \raddr_reg[23]_0\(0)
    );
\p_2_out_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^log_src[31]\(22),
      I2 => \^log_src[31]\(23),
      I3 => \^q\(7),
      O => \raddr_reg[23]\(7)
    );
\p_2_out_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^log_src[31]\(21),
      I2 => \^log_src[31]\(22),
      I3 => \^q\(6),
      O => \raddr_reg[23]\(6)
    );
\p_2_out_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^log_src[31]\(20),
      I2 => \^log_src[31]\(21),
      I3 => \^q\(5),
      O => \raddr_reg[23]\(5)
    );
\p_2_out_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^log_src[31]\(19),
      I1 => \^log_src[31]\(20),
      I2 => \^q\(4),
      O => \raddr_reg[23]\(4)
    );
\p_2_out_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(18),
      I1 => \^log_src[31]\(19),
      O => \raddr_reg[23]\(3)
    );
\p_2_out_carry__1_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(17),
      I1 => \^log_src[31]\(18),
      O => \raddr_reg[23]\(2)
    );
\p_2_out_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(29),
      I1 => \^q\(13),
      O => \raddr_reg[31]_0\(6)
    );
\p_2_out_carry__2_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^log_src[31]\(28),
      I2 => \^log_src[31]\(29),
      I3 => \^q\(13),
      O => \raddr_reg[31]_1\(5)
    );
\p_2_out_carry__2_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^log_src[31]\(27),
      I2 => \^log_src[31]\(28),
      I3 => \^q\(12),
      O => \raddr_reg[31]_1\(4)
    );
\p_2_out_carry__2_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^log_src[31]\(26),
      I2 => \^log_src[31]\(27),
      I3 => \^q\(11),
      O => \raddr_reg[31]_1\(3)
    );
\p_2_out_carry__2_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^log_src[31]\(25),
      I2 => \^log_src[31]\(26),
      I3 => \^q\(10),
      O => \raddr_reg[31]_1\(2)
    );
\p_2_out_carry__2_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^log_src[31]\(24),
      I2 => \^log_src[31]\(25),
      I3 => \^q\(9),
      O => \raddr_reg[31]_1\(1)
    );
\p_2_out_carry__2_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^log_src[31]\(23),
      I2 => \^log_src[31]\(24),
      I3 => \^q\(8),
      O => \raddr_reg[31]_1\(0)
    );
\p_2_out_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(28),
      I1 => \^q\(12),
      O => \raddr_reg[31]_0\(5)
    );
\p_2_out_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(27),
      I1 => \^q\(11),
      O => \raddr_reg[31]_0\(4)
    );
\p_2_out_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(26),
      I1 => \^q\(10),
      O => \raddr_reg[31]_0\(3)
    );
\p_2_out_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(25),
      I1 => \^q\(9),
      O => \raddr_reg[31]_0\(2)
    );
\p_2_out_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(24),
      I1 => \^q\(8),
      O => \raddr_reg[31]_0\(1)
    );
\p_2_out_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_src[31]\(23),
      I1 => \^q\(7),
      O => \raddr_reg[31]_0\(0)
    );
\p_2_out_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^log_src[31]\(30),
      I2 => \^log_src[31]\(31),
      I3 => \^q\(15),
      O => \raddr_reg[31]_1\(7)
    );
\p_2_out_carry__2_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^log_src[31]\(29),
      I2 => \^log_src[31]\(30),
      I3 => \^q\(14),
      O => \raddr_reg[31]_1\(6)
    );
p_2_out_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^log_src[31]\(2),
      O => \raddr_reg[7]\(0)
    );
p_2_out_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(6),
      I1 => \^log_src[31]\(7),
      O => S(5)
    );
p_2_out_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(5),
      I1 => \^log_src[31]\(6),
      O => S(4)
    );
p_2_out_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(4),
      I1 => \^log_src[31]\(5),
      O => S(3)
    );
p_2_out_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(3),
      I1 => \^log_src[31]\(4),
      O => S(2)
    );
p_2_out_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^log_src[31]\(2),
      I1 => \^log_src[31]\(3),
      O => S(1)
    );
p_2_out_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^log_src[31]\(1),
      O => S(0)
    );
\raddr[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ulog_offset[31]\(2),
      O => \raddr[8]_i_3_n_0\
    );
\raddr_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \raddr_reg[8]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \raddr_reg[16]_i_2_n_0\,
      CO(6) => \raddr_reg[16]_i_2_n_1\,
      CO(5) => \raddr_reg[16]_i_2_n_2\,
      CO(4) => \raddr_reg[16]_i_2_n_3\,
      CO(3) => \NLW_raddr_reg[16]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \raddr_reg[16]_i_2_n_5\,
      CO(1) => \raddr_reg[16]_i_2_n_6\,
      CO(0) => \raddr_reg[16]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in24(14 downto 7),
      S(7 downto 0) => \^ulog_offset[31]\(16 downto 9)
    );
\raddr_reg[24]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \raddr_reg[16]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \raddr_reg[24]_i_2_n_0\,
      CO(6) => \raddr_reg[24]_i_2_n_1\,
      CO(5) => \raddr_reg[24]_i_2_n_2\,
      CO(4) => \raddr_reg[24]_i_2_n_3\,
      CO(3) => \NLW_raddr_reg[24]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \raddr_reg[24]_i_2_n_5\,
      CO(1) => \raddr_reg[24]_i_2_n_6\,
      CO(0) => \raddr_reg[24]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in24(22 downto 15),
      S(7 downto 3) => \slv_reg0_reg[26]_0\(4 downto 0),
      S(2 downto 0) => \^ulog_offset[31]\(19 downto 17)
    );
\raddr_reg[31]_i_6\: unisim.vcomponents.CARRY8
     port map (
      CI => \raddr_reg[24]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_raddr_reg[31]_i_6_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \raddr_reg[31]_i_6_n_2\,
      CO(4) => \raddr_reg[31]_i_6_n_3\,
      CO(3) => \NLW_raddr_reg[31]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \raddr_reg[31]_i_6_n_5\,
      CO(1) => \raddr_reg[31]_i_6_n_6\,
      CO(0) => \raddr_reg[31]_i_6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_raddr_reg[31]_i_6_O_UNCONNECTED\(7),
      O(6 downto 0) => in24(29 downto 23),
      S(7) => '0',
      S(6 downto 0) => \slv_reg0_reg[29]_0\(6 downto 0)
    );
\raddr_reg[8]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \raddr_reg[8]_i_2_n_0\,
      CO(6) => \raddr_reg[8]_i_2_n_1\,
      CO(5) => \raddr_reg[8]_i_2_n_2\,
      CO(4) => \raddr_reg[8]_i_2_n_3\,
      CO(3) => \NLW_raddr_reg[8]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \raddr_reg[8]_i_2_n_5\,
      CO(1) => \raddr_reg[8]_i_2_n_6\,
      CO(0) => \raddr_reg[8]_i_2_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \^ulog_offset[31]\(2),
      DI(0) => '0',
      O(7 downto 1) => in24(6 downto 0),
      O(0) => \undolog_v2_1_M02_AXI_inst/in27\(1),
      S(7 downto 2) => \^ulog_offset[31]\(8 downto 3),
      S(1) => \raddr[8]_i_3_n_0\,
      S(0) => \^ulog_offset[31]\(1)
    );
redolog_pulsegen_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => start_redolog_pulse
    );
redolog_pulsegen_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => start_redolog_pulse,
      Q => redolog_pulsegen,
      R => clear
    );
redolog_pulsegend1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => redolog_pulsegen,
      Q => redolog_pulsegend1,
      R => clear
    );
reg_init_complete_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => reg_init_complete_INST_0_i_1_n_0,
      I1 => reg_init_complete_INST_0_i_2_n_0,
      I2 => reg_init_complete_INST_0_i_3_n_0,
      I3 => reg_init_complete_INST_0_i_4_n_0,
      O => reg_init_complete
    );
reg_init_complete_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[21]\,
      I1 => \slv_reg9_reg_n_0_[20]\,
      I2 => \slv_reg9_reg_n_0_[23]\,
      I3 => \slv_reg9_reg_n_0_[22]\,
      I4 => reg_init_complete_INST_0_i_5_n_0,
      O => reg_init_complete_INST_0_i_1_n_0
    );
reg_init_complete_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[29]\,
      I1 => \slv_reg9_reg_n_0_[28]\,
      I2 => \slv_reg9_reg_n_0_[30]\,
      I3 => \slv_reg9_reg_n_0_[31]\,
      I4 => reg_init_complete_INST_0_i_6_n_0,
      O => reg_init_complete_INST_0_i_2_n_0
    );
reg_init_complete_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[5]\,
      I1 => \slv_reg9_reg_n_0_[4]\,
      I2 => \slv_reg9_reg_n_0_[7]\,
      I3 => \slv_reg9_reg_n_0_[6]\,
      I4 => reg_init_complete_INST_0_i_7_n_0,
      O => reg_init_complete_INST_0_i_3_n_0
    );
reg_init_complete_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[13]\,
      I1 => \slv_reg9_reg_n_0_[12]\,
      I2 => \slv_reg9_reg_n_0_[15]\,
      I3 => \slv_reg9_reg_n_0_[14]\,
      I4 => reg_init_complete_INST_0_i_8_n_0,
      O => reg_init_complete_INST_0_i_4_n_0
    );
reg_init_complete_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[18]\,
      I1 => \slv_reg9_reg_n_0_[19]\,
      I2 => \slv_reg9_reg_n_0_[16]\,
      I3 => \slv_reg9_reg_n_0_[17]\,
      O => reg_init_complete_INST_0_i_5_n_0
    );
reg_init_complete_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[26]\,
      I1 => \slv_reg9_reg_n_0_[27]\,
      I2 => \slv_reg9_reg_n_0_[24]\,
      I3 => \slv_reg9_reg_n_0_[25]\,
      O => reg_init_complete_INST_0_i_6_n_0
    );
reg_init_complete_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[2]\,
      I1 => \slv_reg9_reg_n_0_[3]\,
      I2 => \slv_reg9_reg_n_0_[0]\,
      I3 => \slv_reg9_reg_n_0_[1]\,
      O => reg_init_complete_INST_0_i_7_n_0
    );
reg_init_complete_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[10]\,
      I1 => \slv_reg9_reg_n_0_[11]\,
      I2 => \slv_reg9_reg_n_0_[8]\,
      I3 => \slv_reg9_reg_n_0_[9]\,
      O => reg_init_complete_INST_0_i_8_n_0
    );
reg_init_complete_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAB"
    )
        port map (
      I0 => reg_init_complete_reg_reg_n_0,
      I1 => reg_init_complete_INST_0_i_1_n_0,
      I2 => reg_init_complete_INST_0_i_2_n_0,
      I3 => reg_init_complete_INST_0_i_3_n_0,
      I4 => reg_init_complete_INST_0_i_4_n_0,
      I5 => reg_init_complete_reg_i_2_n_0,
      O => reg_init_complete_reg_i_1_n_0
    );
reg_init_complete_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => logclr_pulsegend1,
      I1 => logclr_pulsegen,
      I2 => s00_axi_aresetn,
      O => reg_init_complete_reg_i_2_n_0
    );
reg_init_complete_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => reg_init_complete_reg_i_1_n_0,
      Q => reg_init_complete_reg_reg_n_0,
      R => '0'
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^ulog_offset[31]\(0),
      R => clear
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^ulog_offset[31]\(10),
      R => clear
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^ulog_offset[31]\(11),
      R => clear
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^ulog_offset[31]\(12),
      R => clear
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^ulog_offset[31]\(13),
      R => clear
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^ulog_offset[31]\(14),
      R => clear
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^ulog_offset[31]\(15),
      R => clear
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^ulog_offset[31]\(16),
      R => clear
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^ulog_offset[31]\(17),
      R => clear
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^ulog_offset[31]\(18),
      R => clear
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^ulog_offset[31]\(19),
      R => clear
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^ulog_offset[31]\(1),
      R => clear
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^ulog_offset[31]\(20),
      R => clear
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^ulog_offset[31]\(21),
      R => clear
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^ulog_offset[31]\(22),
      R => clear
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^ulog_offset[31]\(23),
      R => clear
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^ulog_offset[31]\(24),
      R => clear
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^ulog_offset[31]\(25),
      R => clear
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^ulog_offset[31]\(26),
      R => clear
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^ulog_offset[31]\(27),
      R => clear
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^ulog_offset[31]\(28),
      R => clear
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^ulog_offset[31]\(29),
      R => clear
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^ulog_offset[31]\(2),
      R => clear
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^ulog_offset[31]\(30),
      R => clear
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^ulog_offset[31]\(31),
      R => clear
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^ulog_offset[31]\(3),
      R => clear
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^ulog_offset[31]\(4),
      R => clear
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^ulog_offset[31]\(5),
      R => clear
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^ulog_offset[31]\(6),
      R => clear
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^ulog_offset[31]\(7),
      R => clear
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^ulog_offset[31]\(8),
      R => clear
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^ulog_offset[31]\(9),
      R => clear
    );
\slv_reg10[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(3),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => \slv_reg10[15]_i_1_n_0\
    );
\slv_reg10[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(3),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => \slv_reg10[23]_i_1_n_0\
    );
\slv_reg10[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(3),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => \slv_reg10[31]_i_1_n_0\
    );
\slv_reg10[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(3),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => \slv_reg10[7]_i_1_n_0\
    );
\slv_reg10_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg10(0),
      R => clear
    );
\slv_reg10_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg10(10),
      R => clear
    );
\slv_reg10_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg10(11),
      R => clear
    );
\slv_reg10_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg10(12),
      R => clear
    );
\slv_reg10_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg10(13),
      R => clear
    );
\slv_reg10_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg10(14),
      R => clear
    );
\slv_reg10_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg10(15),
      R => clear
    );
\slv_reg10_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg10(16),
      R => clear
    );
\slv_reg10_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg10(17),
      R => clear
    );
\slv_reg10_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg10(18),
      R => clear
    );
\slv_reg10_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg10(19),
      R => clear
    );
\slv_reg10_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg10(1),
      R => clear
    );
\slv_reg10_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg10(20),
      R => clear
    );
\slv_reg10_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg10(21),
      R => clear
    );
\slv_reg10_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg10(22),
      R => clear
    );
\slv_reg10_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg10(23),
      R => clear
    );
\slv_reg10_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg10(24),
      R => clear
    );
\slv_reg10_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg10(25),
      R => clear
    );
\slv_reg10_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg10(26),
      R => clear
    );
\slv_reg10_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg10(27),
      R => clear
    );
\slv_reg10_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg10(28),
      R => clear
    );
\slv_reg10_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg10(29),
      R => clear
    );
\slv_reg10_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg10(2),
      R => clear
    );
\slv_reg10_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg10(30),
      R => clear
    );
\slv_reg10_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg10(31),
      R => clear
    );
\slv_reg10_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg10(3),
      R => clear
    );
\slv_reg10_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg10(4),
      R => clear
    );
\slv_reg10_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg10(5),
      R => clear
    );
\slv_reg10_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg10(6),
      R => clear
    );
\slv_reg10_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg10(7),
      R => clear
    );
\slv_reg10_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg10(8),
      R => clear
    );
\slv_reg10_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg10[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg10(9),
      R => clear
    );
\slv_reg11[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5DFF5DFFFFFF5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => data_copy_pulsegen,
      I2 => data_copy_pulsegend1,
      I3 => \^start_logclr\,
      I4 => redolog_pulsegen,
      I5 => redolog_pulsegend1,
      O => slv_reg111
    );
\slv_reg11_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => metadata_done_reg,
      Q => \^dataout[0]\,
      R => slv_reg111
    );
\slv_reg11_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => DMA_DONE_reg_0,
      Q => \^dataout[1]\,
      R => slv_reg111
    );
\slv_reg11_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => DMA_DONE_reg,
      Q => \^dataout[2]\,
      R => slv_reg111
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => clear
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(0),
      O => \slv_reg1[31]_i_2_n_0\
    );
\slv_reg1[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^ulog_offset\(0),
      R => clear
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^ulog_offset\(10),
      R => clear
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^ulog_offset\(11),
      R => clear
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^ulog_offset\(12),
      R => clear
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^ulog_offset\(13),
      R => clear
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^ulog_offset\(14),
      R => clear
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^ulog_offset\(15),
      R => clear
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^ulog_offset\(16),
      R => clear
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^ulog_offset\(17),
      R => clear
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^ulog_offset\(18),
      R => clear
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^ulog_offset\(19),
      R => clear
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^ulog_offset\(1),
      R => clear
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^ulog_offset\(20),
      R => clear
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^ulog_offset\(21),
      R => clear
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^ulog_offset\(22),
      R => clear
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^ulog_offset\(23),
      R => clear
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(24),
      Q => \^ulog_offset\(24),
      R => clear
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(25),
      Q => \^ulog_offset\(25),
      R => clear
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(26),
      Q => \^ulog_offset\(26),
      R => clear
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(27),
      Q => \^ulog_offset\(27),
      R => clear
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(28),
      Q => \^ulog_offset\(28),
      R => clear
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(29),
      Q => \^ulog_offset\(29),
      R => clear
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^ulog_offset\(2),
      R => clear
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(30),
      Q => \^ulog_offset\(30),
      R => clear
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_2_n_0\,
      D => s00_axi_wdata(31),
      Q => \^ulog_offset\(31),
      R => clear
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^ulog_offset\(3),
      R => clear
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^ulog_offset\(4),
      R => clear
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^ulog_offset\(5),
      R => clear
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^ulog_offset\(6),
      R => clear
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^ulog_offset\(7),
      R => clear
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^ulog_offset\(8),
      R => clear
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^ulog_offset\(9),
      R => clear
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^base_offset\(0),
      R => clear
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^base_offset\(10),
      R => clear
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^base_offset\(11),
      R => clear
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^base_offset\(12),
      R => clear
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^base_offset\(13),
      R => clear
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^base_offset\(14),
      R => clear
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^base_offset\(15),
      R => clear
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^base_offset\(16),
      R => clear
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^base_offset\(17),
      R => clear
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^base_offset\(18),
      R => clear
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^base_offset\(19),
      R => clear
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^base_offset\(1),
      R => clear
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^base_offset\(20),
      R => clear
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^base_offset\(21),
      R => clear
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^base_offset\(22),
      R => clear
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^base_offset\(23),
      R => clear
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^base_offset\(24),
      R => clear
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^base_offset\(25),
      R => clear
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^base_offset\(26),
      R => clear
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^base_offset\(27),
      R => clear
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^base_offset\(28),
      R => clear
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^base_offset\(29),
      R => clear
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^base_offset\(2),
      R => clear
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^base_offset\(30),
      R => clear
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^base_offset\(31),
      R => clear
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^base_offset\(3),
      R => clear
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^base_offset\(4),
      R => clear
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^base_offset\(5),
      R => clear
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^base_offset\(6),
      R => clear
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^base_offset\(7),
      R => clear
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^base_offset\(8),
      R => clear
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^base_offset\(9),
      R => clear
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^base_offset\(32),
      R => clear
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^base_offset\(42),
      R => clear
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^base_offset\(43),
      R => clear
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^base_offset\(44),
      R => clear
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^base_offset\(45),
      R => clear
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^base_offset\(46),
      R => clear
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^base_offset\(47),
      R => clear
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^base_offset\(48),
      R => clear
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^base_offset\(49),
      R => clear
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^base_offset\(50),
      R => clear
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^base_offset\(51),
      R => clear
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^base_offset\(33),
      R => clear
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^base_offset\(52),
      R => clear
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^base_offset\(53),
      R => clear
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^base_offset\(54),
      R => clear
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^base_offset\(55),
      R => clear
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^base_offset\(56),
      R => clear
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^base_offset\(57),
      R => clear
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^base_offset\(58),
      R => clear
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^base_offset\(59),
      R => clear
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^base_offset\(60),
      R => clear
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^base_offset\(61),
      R => clear
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^base_offset\(34),
      R => clear
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^base_offset\(62),
      R => clear
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^base_offset\(63),
      R => clear
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^base_offset\(35),
      R => clear
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^base_offset\(36),
      R => clear
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^base_offset\(37),
      R => clear
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^base_offset\(38),
      R => clear
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^base_offset\(39),
      R => clear
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^base_offset\(40),
      R => clear
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^base_offset\(41),
      R => clear
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(2),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^log_src[31]\(0),
      R => clear
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^log_src[31]\(10),
      R => clear
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^log_src[31]\(11),
      R => clear
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^log_src[31]\(12),
      R => clear
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^log_src[31]\(13),
      R => clear
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^log_src[31]\(14),
      R => clear
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^log_src[31]\(15),
      R => clear
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^log_src[31]\(16),
      R => clear
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^log_src[31]\(17),
      R => clear
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^log_src[31]\(18),
      R => clear
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^log_src[31]\(19),
      R => clear
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^log_src[31]\(1),
      R => clear
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^log_src[31]\(20),
      R => clear
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^log_src[31]\(21),
      R => clear
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^log_src[31]\(22),
      R => clear
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^log_src[31]\(23),
      R => clear
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^log_src[31]\(24),
      R => clear
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^log_src[31]\(25),
      R => clear
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^log_src[31]\(26),
      R => clear
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^log_src[31]\(27),
      R => clear
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^log_src[31]\(28),
      R => clear
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^log_src[31]\(29),
      R => clear
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^log_src[31]\(2),
      R => clear
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^log_src[31]\(30),
      R => clear
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^log_src[31]\(31),
      R => clear
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^log_src[31]\(3),
      R => clear
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^log_src[31]\(4),
      R => clear
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^log_src[31]\(5),
      R => clear
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^log_src[31]\(6),
      R => clear
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^log_src[31]\(7),
      R => clear
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^log_src[31]\(8),
      R => clear
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^log_src[31]\(9),
      R => clear
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^log_src[63]\(0),
      R => clear
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^log_src[63]\(10),
      R => clear
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^log_src[63]\(11),
      R => clear
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^log_src[63]\(12),
      R => clear
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^log_src[63]\(13),
      R => clear
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^log_src[63]\(14),
      R => clear
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^log_src[63]\(15),
      R => clear
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^log_src[63]\(16),
      R => clear
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^log_src[63]\(17),
      R => clear
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^log_src[63]\(18),
      R => clear
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^log_src[63]\(19),
      R => clear
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^log_src[63]\(1),
      R => clear
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^log_src[63]\(20),
      R => clear
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^log_src[63]\(21),
      R => clear
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^log_src[63]\(22),
      R => clear
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^log_src[63]\(23),
      R => clear
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^log_src[63]\(24),
      R => clear
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^log_src[63]\(25),
      R => clear
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^log_src[63]\(26),
      R => clear
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^log_src[63]\(27),
      R => clear
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^log_src[63]\(28),
      R => clear
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^log_src[63]\(29),
      R => clear
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^log_src[63]\(2),
      R => clear
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^log_src[63]\(30),
      R => clear
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^log_src[63]\(31),
      R => clear
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^log_src[63]\(3),
      R => clear
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^log_src[63]\(4),
      R => clear
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^log_src[63]\(5),
      R => clear
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^log_src[63]\(6),
      R => clear
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^log_src[63]\(7),
      R => clear
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^log_src[63]\(8),
      R => clear
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^log_src[63]\(9),
      R => clear
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(3),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(3),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(3),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => p_0_in(3),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^log_size[31]\(0),
      R => clear
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^log_size[31]\(10),
      R => clear
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^log_size[31]\(11),
      R => clear
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^log_size[31]\(12),
      R => clear
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^log_size[31]\(13),
      R => clear
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^log_size[31]\(14),
      R => clear
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^log_size[31]\(15),
      R => clear
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^log_size[31]\(16),
      R => clear
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^log_size[31]\(17),
      R => clear
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^log_size[31]\(18),
      R => clear
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^log_size[31]\(19),
      R => clear
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^log_size[31]\(1),
      R => clear
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^log_size[31]\(20),
      R => clear
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^log_size[31]\(21),
      R => clear
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^log_size[31]\(22),
      R => clear
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^log_size[31]\(23),
      R => clear
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^log_size[31]\(24),
      R => clear
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^log_size[31]\(25),
      R => clear
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^log_size[31]\(26),
      R => clear
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^log_size[31]\(27),
      R => clear
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^log_size[31]\(28),
      R => clear
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^log_size[31]\(29),
      R => clear
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^log_size[31]\(2),
      R => clear
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^log_size[31]\(30),
      R => clear
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^log_size[31]\(31),
      R => clear
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^log_size[31]\(3),
      R => clear
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^log_size[31]\(4),
      R => clear
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^log_size[31]\(5),
      R => clear
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^log_size[31]\(6),
      R => clear
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^log_size[31]\(7),
      R => clear
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^log_size[31]\(8),
      R => clear
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^log_size[31]\(9),
      R => clear
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(3),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^log_size\(0),
      R => clear
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^log_size\(10),
      R => clear
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^log_size\(11),
      R => clear
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^log_size\(12),
      R => clear
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^log_size\(13),
      R => clear
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^log_size\(14),
      R => clear
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^log_size\(15),
      R => clear
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^log_size\(16),
      R => clear
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^log_size\(17),
      R => clear
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^log_size\(18),
      R => clear
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^log_size\(19),
      R => clear
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^log_size\(1),
      R => clear
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^log_size\(20),
      R => clear
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^log_size\(21),
      R => clear
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^log_size\(22),
      R => clear
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^log_size\(23),
      R => clear
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^log_size\(24),
      R => clear
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^log_size\(25),
      R => clear
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^log_size\(26),
      R => clear
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^log_size\(27),
      R => clear
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^log_size\(28),
      R => clear
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^log_size\(29),
      R => clear
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^log_size\(2),
      R => clear
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^log_size\(30),
      R => clear
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^log_size\(31),
      R => clear
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^log_size\(3),
      R => clear
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^log_size\(4),
      R => clear
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^log_size\(5),
      R => clear
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^log_size\(6),
      R => clear
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^log_size\(7),
      R => clear
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^log_size\(8),
      R => clear
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^log_size\(9),
      R => clear
    );
\slv_reg8[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => s00_axi_wdata(0),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => p_2_in(0)
    );
\slv_reg8[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => s00_axi_wstrb(1),
      O => \slv_reg8[15]_i_1_n_0\
    );
\slv_reg8[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => s00_axi_wdata(1),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => p_2_in(1)
    );
\slv_reg8[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => s00_axi_wstrb(2),
      O => \slv_reg8[23]_i_1_n_0\
    );
\slv_reg8[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => s00_axi_wdata(2),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => p_2_in(2)
    );
\slv_reg8[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => s00_axi_wstrb(3),
      O => \slv_reg8[31]_i_1_n_0\
    );
\slv_reg8[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      I3 => \^s00_axi_wready\,
      I4 => s00_axi_aresetn,
      O => \slv_reg8[3]_i_1_n_0\
    );
\slv_reg8[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3777"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg8[3]_i_2_n_0\
    );
\slv_reg8[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => s00_axi_wdata(3),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => p_2_in(3)
    );
\slv_reg8[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      I5 => s00_axi_wstrb(0),
      O => \slv_reg8[7]_i_1_n_0\
    );
\slv_reg8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => p_2_in(0),
      Q => \^q\(0),
      R => \slv_reg8[3]_i_1_n_0\
    );
\slv_reg8_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^q\(10),
      R => clear
    );
\slv_reg8_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^q\(11),
      R => clear
    );
\slv_reg8_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^q\(12),
      R => clear
    );
\slv_reg8_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^q\(13),
      R => clear
    );
\slv_reg8_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^q\(14),
      R => clear
    );
\slv_reg8_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^q\(15),
      R => clear
    );
\slv_reg8_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^q\(16),
      R => clear
    );
\slv_reg8_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^q\(17),
      R => clear
    );
\slv_reg8_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^q\(18),
      R => clear
    );
\slv_reg8_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^q\(19),
      R => clear
    );
\slv_reg8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => p_2_in(1),
      Q => \^q\(1),
      R => \slv_reg8[3]_i_1_n_0\
    );
\slv_reg8_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^q\(20),
      R => clear
    );
\slv_reg8_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^q\(21),
      R => clear
    );
\slv_reg8_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^q\(22),
      R => clear
    );
\slv_reg8_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^q\(23),
      R => clear
    );
\slv_reg8_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^q\(24),
      R => clear
    );
\slv_reg8_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^q\(25),
      R => clear
    );
\slv_reg8_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^q\(26),
      R => clear
    );
\slv_reg8_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^q\(27),
      R => clear
    );
\slv_reg8_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^q\(28),
      R => clear
    );
\slv_reg8_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^q\(29),
      R => clear
    );
\slv_reg8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => p_2_in(2),
      Q => \^q\(2),
      R => \slv_reg8[3]_i_1_n_0\
    );
\slv_reg8_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^q\(30),
      R => clear
    );
\slv_reg8_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^q\(31),
      R => clear
    );
\slv_reg8_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => p_2_in(3),
      Q => \^q\(3),
      R => \slv_reg8[3]_i_1_n_0\
    );
\slv_reg8_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^q\(4),
      R => clear
    );
\slv_reg8_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^q\(5),
      R => clear
    );
\slv_reg8_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^q\(6),
      R => clear
    );
\slv_reg8_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^q\(7),
      R => clear
    );
\slv_reg8_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^q\(8),
      R => clear
    );
\slv_reg8_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^q\(9),
      R => clear
    );
\slv_reg9[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_wdata(0),
      O => \slv_reg9[0]_i_1_n_0\
    );
\slv_reg9[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(1),
      I3 => s00_axi_wdata(10),
      O => \slv_reg9[10]_i_1_n_0\
    );
\slv_reg9[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(1),
      I3 => s00_axi_wdata(11),
      O => \slv_reg9[11]_i_1_n_0\
    );
\slv_reg9[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(1),
      I3 => s00_axi_wdata(12),
      O => \slv_reg9[12]_i_1_n_0\
    );
\slv_reg9[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(1),
      I3 => s00_axi_wdata(13),
      O => \slv_reg9[13]_i_1_n_0\
    );
\slv_reg9[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(1),
      I3 => s00_axi_wdata(14),
      O => \slv_reg9[14]_i_1_n_0\
    );
\slv_reg9[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(1),
      I3 => s00_axi_wdata(15),
      O => \slv_reg9[15]_i_1_n_0\
    );
\slv_reg9[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_wdata(16),
      O => \slv_reg9[16]_i_1_n_0\
    );
\slv_reg9[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_wdata(17),
      O => \slv_reg9[17]_i_1_n_0\
    );
\slv_reg9[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_wdata(18),
      O => \slv_reg9[18]_i_1_n_0\
    );
\slv_reg9[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_wdata(19),
      O => \slv_reg9[19]_i_1_n_0\
    );
\slv_reg9[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_wdata(1),
      O => \slv_reg9[1]_i_1_n_0\
    );
\slv_reg9[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_wdata(20),
      O => \slv_reg9[20]_i_1_n_0\
    );
\slv_reg9[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_wdata(21),
      O => \slv_reg9[21]_i_1_n_0\
    );
\slv_reg9[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_wdata(22),
      O => \slv_reg9[22]_i_1_n_0\
    );
\slv_reg9[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_wdata(23),
      O => \slv_reg9[23]_i_1_n_0\
    );
\slv_reg9[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(3),
      I3 => s00_axi_wdata(24),
      O => \slv_reg9[24]_i_1_n_0\
    );
\slv_reg9[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(3),
      I3 => s00_axi_wdata(25),
      O => \slv_reg9[25]_i_1_n_0\
    );
\slv_reg9[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(3),
      I3 => s00_axi_wdata(26),
      O => \slv_reg9[26]_i_1_n_0\
    );
\slv_reg9[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(3),
      I3 => s00_axi_wdata(27),
      O => \slv_reg9[27]_i_1_n_0\
    );
\slv_reg9[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(3),
      I3 => s00_axi_wdata(28),
      O => \slv_reg9[28]_i_1_n_0\
    );
\slv_reg9[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(3),
      I3 => s00_axi_wdata(29),
      O => \slv_reg9[29]_i_1_n_0\
    );
\slv_reg9[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_wdata(2),
      O => \slv_reg9[2]_i_1_n_0\
    );
\slv_reg9[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(3),
      I3 => s00_axi_wdata(30),
      O => \slv_reg9[30]_i_1_n_0\
    );
\slv_reg9[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_awready\,
      I4 => \^s00_axi_wready\,
      O => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(3),
      I3 => s00_axi_wdata(31),
      O => \slv_reg9[31]_i_2_n_0\
    );
\slv_reg9[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_wdata(3),
      O => \slv_reg9[3]_i_1_n_0\
    );
\slv_reg9[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_wdata(4),
      O => \slv_reg9[4]_i_1_n_0\
    );
\slv_reg9[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_wdata(5),
      O => \slv_reg9[5]_i_1_n_0\
    );
\slv_reg9[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_wdata(6),
      O => \slv_reg9[6]_i_1_n_0\
    );
\slv_reg9[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_wdata(7),
      O => \slv_reg9[7]_i_1_n_0\
    );
\slv_reg9[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(1),
      I3 => s00_axi_wdata(8),
      O => \slv_reg9[8]_i_1_n_0\
    );
\slv_reg9[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(1),
      I3 => s00_axi_wdata(9),
      O => \slv_reg9[9]_i_1_n_0\
    );
\slv_reg9_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[0]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[0]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[10]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[10]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[11]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[11]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[12]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[12]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[13]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[13]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[14]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[14]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[15]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[15]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[16]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[16]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[17]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[17]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[18]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[18]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[19]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[19]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[1]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[1]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[20]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[20]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[21]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[21]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[22]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[22]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[23]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[23]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[24]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[24]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[25]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[25]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[26]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[26]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[27]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[27]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[28]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[28]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[29]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[29]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[2]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[2]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[30]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[30]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[31]_i_2_n_0\,
      Q => \slv_reg9_reg_n_0_[31]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[3]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[3]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[4]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[4]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[5]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[5]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[6]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[6]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[7]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[7]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[8]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[8]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
\slv_reg9_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg8[3]_i_2_n_0\,
      D => \slv_reg9[9]_i_1_n_0\,
      Q => \slv_reg9_reg_n_0_[9]\,
      R => \slv_reg9[31]_i_1_n_0\
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s00_axi_arready\,
      O => \slv_reg_rden__0\
    );
start_clobber_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => start_clobber_i_2_n_0,
      I1 => start_clobber_i_3_n_0,
      I2 => start_clobber_i_4_n_0,
      I3 => start_clobber_i_5_n_0,
      I4 => reg_init_complete_reg_reg_n_0,
      O => start_clobber0_out
    );
start_clobber_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => slv_reg10(13),
      I1 => slv_reg10(12),
      I2 => slv_reg10(15),
      I3 => slv_reg10(14),
      I4 => start_clobber_i_6_n_0,
      O => start_clobber_i_2_n_0
    );
start_clobber_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => slv_reg10(5),
      I1 => slv_reg10(4),
      I2 => slv_reg10(7),
      I3 => slv_reg10(6),
      I4 => start_clobber_i_7_n_0,
      O => start_clobber_i_3_n_0
    );
start_clobber_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => slv_reg10(29),
      I1 => slv_reg10(28),
      I2 => slv_reg10(30),
      I3 => slv_reg10(31),
      I4 => start_clobber_i_8_n_0,
      O => start_clobber_i_4_n_0
    );
start_clobber_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => slv_reg10(21),
      I1 => slv_reg10(20),
      I2 => slv_reg10(23),
      I3 => slv_reg10(22),
      I4 => start_clobber_i_9_n_0,
      O => start_clobber_i_5_n_0
    );
start_clobber_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg10(10),
      I1 => slv_reg10(11),
      I2 => slv_reg10(8),
      I3 => slv_reg10(9),
      O => start_clobber_i_6_n_0
    );
start_clobber_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => slv_reg10(2),
      I1 => slv_reg10(3),
      I2 => slv_reg10(0),
      I3 => slv_reg10(1),
      O => start_clobber_i_7_n_0
    );
start_clobber_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg10(26),
      I1 => slv_reg10(27),
      I2 => slv_reg10(24),
      I3 => slv_reg10(25),
      O => start_clobber_i_8_n_0
    );
start_clobber_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg10(18),
      I1 => slv_reg10(19),
      I2 => slv_reg10(16),
      I3 => slv_reg10(17),
      O => start_clobber_i_9_n_0
    );
\start_clobber_reg__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => start_clobber0_out,
      Q => start_clobber,
      R => clear
    );
start_clobber_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E000E0"
    )
        port map (
      I0 => start_clobber_reg,
      I1 => start_clobber,
      I2 => m00_axi_aresetn,
      I3 => logclr_pulsegen,
      I4 => logclr_pulsegend1,
      O => start_clobber_reg_reg
    );
start_logclr_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => logclr_pulsegen,
      I1 => logclr_pulsegend1,
      O => \^start_logclr\
    );
start_redolog_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => redolog_pulsegen,
      I1 => redolog_pulsegend1,
      O => \^start_redolog\
    );
start_timer_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => logclr_pulsegend1,
      I1 => logclr_pulsegen,
      I2 => start_timer,
      O => start_timer_i_1_n_0
    );
start_timer_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => start_timer_i_1_n_0,
      Q => start_timer,
      R => clear
    );
stop_timer_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEA"
    )
        port map (
      I0 => stop_timer_reg_n_0,
      I1 => \^dataout[1]\,
      I2 => \^dataout[0]\,
      I3 => \^dataout[2]\,
      O => stop_timer_i_1_n_0
    );
stop_timer_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => stop_timer_i_1_n_0,
      Q => stop_timer_reg_n_0,
      R => clear
    );
\time_cycles[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => start_timer,
      I1 => stop_timer_reg_n_0,
      O => time_cycles0
    );
\time_cycles_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry_n_15\,
      Q => \^time_cycles\(0),
      R => clear
    );
\time_cycles_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__0_n_13\,
      Q => \^time_cycles\(10),
      R => clear
    );
\time_cycles_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__0_n_12\,
      Q => \^time_cycles\(11),
      R => clear
    );
\time_cycles_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__0_n_11\,
      Q => \^time_cycles\(12),
      R => clear
    );
\time_cycles_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__0_n_10\,
      Q => \^time_cycles\(13),
      R => clear
    );
\time_cycles_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__0_n_9\,
      Q => \^time_cycles\(14),
      R => clear
    );
\time_cycles_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__0_n_8\,
      Q => \^time_cycles\(15),
      R => clear
    );
\time_cycles_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__1_n_15\,
      Q => \^time_cycles\(16),
      R => clear
    );
\time_cycles_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__1_n_14\,
      Q => \^time_cycles\(17),
      R => clear
    );
\time_cycles_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__1_n_13\,
      Q => \^time_cycles\(18),
      R => clear
    );
\time_cycles_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__1_n_12\,
      Q => \^time_cycles\(19),
      R => clear
    );
\time_cycles_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry_n_14\,
      Q => \^time_cycles\(1),
      R => clear
    );
\time_cycles_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__1_n_11\,
      Q => \^time_cycles\(20),
      R => clear
    );
\time_cycles_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__1_n_10\,
      Q => \^time_cycles\(21),
      R => clear
    );
\time_cycles_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__1_n_9\,
      Q => \^time_cycles\(22),
      R => clear
    );
\time_cycles_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__1_n_8\,
      Q => \^time_cycles\(23),
      R => clear
    );
\time_cycles_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__2_n_15\,
      Q => \^time_cycles\(24),
      R => clear
    );
\time_cycles_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__2_n_14\,
      Q => \^time_cycles\(25),
      R => clear
    );
\time_cycles_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__2_n_13\,
      Q => \^time_cycles\(26),
      R => clear
    );
\time_cycles_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__2_n_12\,
      Q => \^time_cycles\(27),
      R => clear
    );
\time_cycles_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__2_n_11\,
      Q => \^time_cycles\(28),
      R => clear
    );
\time_cycles_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__2_n_10\,
      Q => \^time_cycles\(29),
      R => clear
    );
\time_cycles_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry_n_13\,
      Q => \^time_cycles\(2),
      R => clear
    );
\time_cycles_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__2_n_9\,
      Q => \^time_cycles\(30),
      R => clear
    );
\time_cycles_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__2_n_8\,
      Q => \^time_cycles\(31),
      R => clear
    );
\time_cycles_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__3_n_15\,
      Q => \^time_cycles\(32),
      R => clear
    );
\time_cycles_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__3_n_14\,
      Q => \^time_cycles\(33),
      R => clear
    );
\time_cycles_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__3_n_13\,
      Q => \^time_cycles\(34),
      R => clear
    );
\time_cycles_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__3_n_12\,
      Q => \^time_cycles\(35),
      R => clear
    );
\time_cycles_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__3_n_11\,
      Q => \^time_cycles\(36),
      R => clear
    );
\time_cycles_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__3_n_10\,
      Q => \^time_cycles\(37),
      R => clear
    );
\time_cycles_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__3_n_9\,
      Q => \^time_cycles\(38),
      R => clear
    );
\time_cycles_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__3_n_8\,
      Q => \^time_cycles\(39),
      R => clear
    );
\time_cycles_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry_n_12\,
      Q => \^time_cycles\(3),
      R => clear
    );
\time_cycles_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__4_n_15\,
      Q => \^time_cycles\(40),
      R => clear
    );
\time_cycles_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__4_n_14\,
      Q => \^time_cycles\(41),
      R => clear
    );
\time_cycles_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__4_n_13\,
      Q => \^time_cycles\(42),
      R => clear
    );
\time_cycles_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__4_n_12\,
      Q => \^time_cycles\(43),
      R => clear
    );
\time_cycles_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__4_n_11\,
      Q => \^time_cycles\(44),
      R => clear
    );
\time_cycles_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__4_n_10\,
      Q => \^time_cycles\(45),
      R => clear
    );
\time_cycles_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__4_n_9\,
      Q => \^time_cycles\(46),
      R => clear
    );
\time_cycles_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__4_n_8\,
      Q => \^time_cycles\(47),
      R => clear
    );
\time_cycles_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__5_n_15\,
      Q => \^time_cycles\(48),
      R => clear
    );
\time_cycles_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__5_n_14\,
      Q => \^time_cycles\(49),
      R => clear
    );
\time_cycles_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry_n_11\,
      Q => \^time_cycles\(4),
      R => clear
    );
\time_cycles_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__5_n_13\,
      Q => \^time_cycles\(50),
      R => clear
    );
\time_cycles_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__5_n_12\,
      Q => \^time_cycles\(51),
      R => clear
    );
\time_cycles_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__5_n_11\,
      Q => \^time_cycles\(52),
      R => clear
    );
\time_cycles_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__5_n_10\,
      Q => \^time_cycles\(53),
      R => clear
    );
\time_cycles_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__5_n_9\,
      Q => \^time_cycles\(54),
      R => clear
    );
\time_cycles_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__5_n_8\,
      Q => \^time_cycles\(55),
      R => clear
    );
\time_cycles_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__6_n_15\,
      Q => \^time_cycles\(56),
      R => clear
    );
\time_cycles_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__6_n_14\,
      Q => \^time_cycles\(57),
      R => clear
    );
\time_cycles_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__6_n_13\,
      Q => \^time_cycles\(58),
      R => clear
    );
\time_cycles_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__6_n_12\,
      Q => \^time_cycles\(59),
      R => clear
    );
\time_cycles_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry_n_10\,
      Q => \^time_cycles\(5),
      R => clear
    );
\time_cycles_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__6_n_11\,
      Q => \^time_cycles\(60),
      R => clear
    );
\time_cycles_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__6_n_10\,
      Q => \^time_cycles\(61),
      R => clear
    );
\time_cycles_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__6_n_9\,
      Q => \^time_cycles\(62),
      R => clear
    );
\time_cycles_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__6_n_8\,
      Q => \^time_cycles\(63),
      R => clear
    );
\time_cycles_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry_n_9\,
      Q => \^time_cycles\(6),
      R => clear
    );
\time_cycles_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry_n_8\,
      Q => \^time_cycles\(7),
      R => clear
    );
\time_cycles_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__0_n_15\,
      Q => \^time_cycles\(8),
      R => clear
    );
\time_cycles_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => time_cycles0,
      D => \i_/i_/i__carry__0_n_14\,
      Q => \^time_cycles\(9),
      R => clear
    );
\ulog_offset0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ulog_offset[31]\(29),
      I1 => \^q\(13),
      O => \raddr_reg[31]\(2)
    );
\ulog_offset0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ulog_offset[31]\(28),
      I1 => \^q\(12),
      O => \raddr_reg[31]\(1)
    );
\ulog_offset0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ulog_offset[31]\(27),
      I1 => \^q\(11),
      O => \raddr_reg[31]\(0)
    );
\ulog_offset0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^ulog_offset[31]\(30),
      I2 => \^q\(15),
      I3 => \^ulog_offset[31]\(31),
      O => \raddr_reg[31]_2\(3)
    );
\ulog_offset0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^ulog_offset[31]\(29),
      I2 => \^q\(14),
      I3 => \^ulog_offset[31]\(30),
      O => \raddr_reg[31]_2\(2)
    );
\ulog_offset0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^ulog_offset[31]\(28),
      I2 => \^q\(13),
      I3 => \^ulog_offset[31]\(29),
      O => \raddr_reg[31]_2\(1)
    );
\ulog_offset0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^ulog_offset[31]\(27),
      I2 => \^q\(12),
      I3 => \^ulog_offset[31]\(28),
      O => \raddr_reg[31]_2\(0)
    );
ulog_offset0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ulog_offset[31]\(26),
      I1 => \^q\(10),
      O => DI(6)
    );
ulog_offset0_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^ulog_offset[31]\(24),
      I2 => \^q\(9),
      I3 => \^ulog_offset[31]\(25),
      O => \raddr_reg[27]\(5)
    );
ulog_offset0_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^ulog_offset[31]\(23),
      I2 => \^q\(8),
      I3 => \^ulog_offset[31]\(24),
      O => \raddr_reg[27]\(4)
    );
ulog_offset0_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^ulog_offset[31]\(22),
      I2 => \^q\(7),
      I3 => \^ulog_offset[31]\(23),
      O => \raddr_reg[27]\(3)
    );
ulog_offset0_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^ulog_offset[31]\(21),
      I2 => \^q\(6),
      I3 => \^ulog_offset[31]\(22),
      O => \raddr_reg[27]\(2)
    );
ulog_offset0_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^ulog_offset[31]\(20),
      I2 => \^q\(5),
      I3 => \^ulog_offset[31]\(21),
      O => \raddr_reg[27]\(1)
    );
ulog_offset0_carry_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ulog_offset[31]\(20),
      I1 => \^q\(4),
      O => \raddr_reg[27]\(0)
    );
ulog_offset0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ulog_offset[31]\(25),
      I1 => \^q\(9),
      O => DI(5)
    );
ulog_offset0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ulog_offset[31]\(24),
      I1 => \^q\(8),
      O => DI(4)
    );
ulog_offset0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ulog_offset[31]\(23),
      I1 => \^q\(7),
      O => DI(3)
    );
ulog_offset0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ulog_offset[31]\(22),
      I1 => \^q\(6),
      O => DI(2)
    );
ulog_offset0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ulog_offset[31]\(21),
      I1 => \^q\(5),
      O => DI(1)
    );
ulog_offset0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ulog_offset[31]\(20),
      I1 => \^q\(4),
      O => DI(0)
    );
ulog_offset0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^ulog_offset[31]\(26),
      I2 => \^q\(11),
      I3 => \^ulog_offset[31]\(27),
      O => \raddr_reg[27]\(7)
    );
ulog_offset0_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^ulog_offset[31]\(25),
      I2 => \^q\(10),
      I3 => \^ulog_offset[31]\(26),
      O => \raddr_reg[27]\(6)
    );
\waddr[10]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ulog_offset[31]\(4),
      O => \waddr[10]_i_5_n_0\
    );
\waddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \undolog_v2_1_M02_AXI_inst/in27\(1),
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => \^ulog_offset[31]\(1),
      O => \waddr_reg[1]\(0)
    );
\waddr[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ulog_offset[31]\(4),
      O => \waddr[2]_i_3_n_0\
    );
\waddr[2]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ulog_offset[31]\(2),
      O => \waddr[2]_i_4_n_0\
    );
\waddr_reg[10]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \waddr_reg[10]_i_4_n_0\,
      CO(6) => \waddr_reg[10]_i_4_n_1\,
      CO(5) => \waddr_reg[10]_i_4_n_2\,
      CO(4) => \waddr_reg[10]_i_4_n_3\,
      CO(3) => \NLW_waddr_reg[10]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \waddr_reg[10]_i_4_n_5\,
      CO(1) => \waddr_reg[10]_i_4_n_6\,
      CO(0) => \waddr_reg[10]_i_4_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \^ulog_offset[31]\(4),
      DI(0) => '0',
      O(7 downto 0) => in26(7 downto 0),
      S(7 downto 2) => \^ulog_offset[31]\(10 downto 5),
      S(1) => \waddr[10]_i_5_n_0\,
      S(0) => \^ulog_offset[31]\(3)
    );
\waddr_reg[16]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => \waddr_reg[2]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \waddr_reg[16]_i_4_n_0\,
      CO(6) => \waddr_reg[16]_i_4_n_1\,
      CO(5) => \waddr_reg[16]_i_4_n_2\,
      CO(4) => \waddr_reg[16]_i_4_n_3\,
      CO(3) => \NLW_waddr_reg[16]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \waddr_reg[16]_i_4_n_5\,
      CO(1) => \waddr_reg[16]_i_4_n_6\,
      CO(0) => \waddr_reg[16]_i_4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \waddr_reg[31]\(14 downto 7),
      S(7 downto 0) => \^ulog_offset[31]\(16 downto 9)
    );
\waddr_reg[18]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => \waddr_reg[10]_i_4_n_0\,
      CI_TOP => '0',
      CO(7) => \waddr_reg[18]_i_4_n_0\,
      CO(6) => \waddr_reg[18]_i_4_n_1\,
      CO(5) => \waddr_reg[18]_i_4_n_2\,
      CO(4) => \waddr_reg[18]_i_4_n_3\,
      CO(3) => \NLW_waddr_reg[18]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \waddr_reg[18]_i_4_n_5\,
      CO(1) => \waddr_reg[18]_i_4_n_6\,
      CO(0) => \waddr_reg[18]_i_4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in26(15 downto 8),
      S(7 downto 0) => \^ulog_offset[31]\(18 downto 11)
    );
\waddr_reg[24]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => \waddr_reg[16]_i_4_n_0\,
      CI_TOP => '0',
      CO(7) => \waddr_reg[24]_i_4_n_0\,
      CO(6) => \waddr_reg[24]_i_4_n_1\,
      CO(5) => \waddr_reg[24]_i_4_n_2\,
      CO(4) => \waddr_reg[24]_i_4_n_3\,
      CO(3) => \NLW_waddr_reg[24]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \waddr_reg[24]_i_4_n_5\,
      CO(1) => \waddr_reg[24]_i_4_n_6\,
      CO(0) => \waddr_reg[24]_i_4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \waddr_reg[31]\(22 downto 15),
      S(7 downto 3) => \slv_reg0_reg[26]_0\(4 downto 0),
      S(2 downto 0) => \^ulog_offset[31]\(19 downto 17)
    );
\waddr_reg[26]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => \waddr_reg[18]_i_4_n_0\,
      CI_TOP => '0',
      CO(7) => \waddr_reg[26]_i_4_n_0\,
      CO(6) => \waddr_reg[26]_i_4_n_1\,
      CO(5) => \waddr_reg[26]_i_4_n_2\,
      CO(4) => \waddr_reg[26]_i_4_n_3\,
      CO(3) => \NLW_waddr_reg[26]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \waddr_reg[26]_i_4_n_5\,
      CO(1) => \waddr_reg[26]_i_4_n_6\,
      CO(0) => \waddr_reg[26]_i_4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in26(23 downto 16),
      S(7 downto 6) => \slv_reg0_reg[29]_0\(1 downto 0),
      S(5 downto 1) => \slv_reg0_reg[26]_0\(4 downto 0),
      S(0) => \^ulog_offset[31]\(19)
    );
\waddr_reg[2]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \waddr_reg[2]_i_2_n_0\,
      CO(6) => \waddr_reg[2]_i_2_n_1\,
      CO(5) => \waddr_reg[2]_i_2_n_2\,
      CO(4) => \waddr_reg[2]_i_2_n_3\,
      CO(3) => \NLW_waddr_reg[2]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \waddr_reg[2]_i_2_n_5\,
      CO(1) => \waddr_reg[2]_i_2_n_6\,
      CO(0) => \waddr_reg[2]_i_2_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => \^ulog_offset[31]\(4),
      DI(2) => '0',
      DI(1) => \^ulog_offset[31]\(2),
      DI(0) => '0',
      O(7 downto 1) => \waddr_reg[31]\(6 downto 0),
      O(0) => \NLW_waddr_reg[2]_i_2_O_UNCONNECTED\(0),
      S(7 downto 4) => \^ulog_offset[31]\(8 downto 5),
      S(3) => \waddr[2]_i_3_n_0\,
      S(2) => \^ulog_offset[31]\(3),
      S(1) => \waddr[2]_i_4_n_0\,
      S(0) => \^ulog_offset[31]\(1)
    );
\waddr_reg[31]_i_6\: unisim.vcomponents.CARRY8
     port map (
      CI => \waddr_reg[24]_i_4_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_waddr_reg[31]_i_6_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \waddr_reg[31]_i_6_n_2\,
      CO(4) => \waddr_reg[31]_i_6_n_3\,
      CO(3) => \NLW_waddr_reg[31]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \waddr_reg[31]_i_6_n_5\,
      CO(1) => \waddr_reg[31]_i_6_n_6\,
      CO(0) => \waddr_reg[31]_i_6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_waddr_reg[31]_i_6_O_UNCONNECTED\(7),
      O(6 downto 0) => \waddr_reg[31]\(29 downto 23),
      S(7) => '0',
      S(6 downto 0) => \slv_reg0_reg[29]_0\(6 downto 0)
    );
\waddr_reg[31]_i_7\: unisim.vcomponents.CARRY8
     port map (
      CI => \waddr_reg[26]_i_4_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_waddr_reg[31]_i_7_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \waddr_reg[31]_i_7_n_5\,
      CO(1) => \waddr_reg[31]_i_7_n_6\,
      CO(0) => \waddr_reg[31]_i_7_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 5) => \NLW_waddr_reg[31]_i_7_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => in26(28 downto 24),
      S(7 downto 5) => B"000",
      S(4 downto 0) => \slv_reg0_reg[29]_0\(6 downto 2)
    );
\wdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFF0CFFAAFF0C00"
    )
        port map (
      I0 => \^ulog_offset[31]\(0),
      I1 => \^log_size[31]\(0),
      I2 => start_clobber_reg,
      I3 => \FSM_sequential_mst_exec_state_reg[0]_1\,
      I4 => \FSM_sequential_mst_exec_state_reg[3]_0\,
      I5 => \^log_src[31]\(0),
      O => \wdata_reg[0]\(0)
    );
\wdata[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFCFAFC0"
    )
        port map (
      I0 => \^ulog_offset[31]\(0),
      I1 => \^log_size[31]\(0),
      I2 => \FSM_sequential_mst_exec_state_reg[0]_0\,
      I3 => \FSM_sequential_mst_exec_state_reg[3]\,
      I4 => \^log_src[31]\(0),
      O => D(0)
    );
\wdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(0),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(0),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(0),
      O => \wdata[0]_i_2_n_0\
    );
\wdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(0),
      I1 => \out\(1),
      I2 => \^log_size[31]\(0),
      I3 => \out\(0),
      I4 => \^base_offset\(32),
      O => \wdata[0]_i_3_n_0\
    );
\wdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(32),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(32),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(0)
    );
\wdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(0),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(0),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(0)
    );
\wdata[10]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(10),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(10),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(10),
      O => \wdata[10]_i_2__1_n_0\
    );
\wdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(10),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(8),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(10),
      O => \wdata_reg[10]\
    );
\wdata[10]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(10),
      I1 => \out\(1),
      I2 => \^log_size[31]\(10),
      I3 => \out\(0),
      I4 => \^base_offset\(42),
      O => \wdata[10]_i_3__0_n_0\
    );
\wdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(42),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(42),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(10)
    );
\wdata[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(10),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(10),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(10)
    );
\wdata[11]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(11),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(11),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(11),
      O => \wdata[11]_i_2__1_n_0\
    );
\wdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(11),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(9),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(11),
      O => \wdata_reg[11]\
    );
\wdata[11]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(11),
      I1 => \out\(1),
      I2 => \^log_size[31]\(11),
      I3 => \out\(0),
      I4 => \^base_offset\(43),
      O => \wdata[11]_i_3__0_n_0\
    );
\wdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(43),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(43),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(11)
    );
\wdata[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(11),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(11),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(11)
    );
\wdata[12]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(12),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(12),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(12),
      O => \wdata[12]_i_2__1_n_0\
    );
\wdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(12),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(10),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(12),
      O => \wdata_reg[12]\
    );
\wdata[12]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(12),
      I1 => \out\(1),
      I2 => \^log_size[31]\(12),
      I3 => \out\(0),
      I4 => \^base_offset\(44),
      O => \wdata[12]_i_3__0_n_0\
    );
\wdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(44),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(44),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(12)
    );
\wdata[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(12),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(12),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(12)
    );
\wdata[13]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(13),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(13),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(13),
      O => \wdata[13]_i_2__1_n_0\
    );
\wdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(13),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(11),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(13),
      O => \wdata_reg[13]\
    );
\wdata[13]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(13),
      I1 => \out\(1),
      I2 => \^log_size[31]\(13),
      I3 => \out\(0),
      I4 => \^base_offset\(45),
      O => \wdata[13]_i_3__0_n_0\
    );
\wdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(45),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(45),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(13)
    );
\wdata[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(13),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(13),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(13)
    );
\wdata[14]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(14),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(14),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(14),
      O => \wdata[14]_i_2__1_n_0\
    );
\wdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(14),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(12),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(14),
      O => \wdata_reg[14]\
    );
\wdata[14]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(14),
      I1 => \out\(1),
      I2 => \^log_size[31]\(14),
      I3 => \out\(0),
      I4 => \^base_offset\(46),
      O => \wdata[14]_i_3__0_n_0\
    );
\wdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(46),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(46),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(14)
    );
\wdata[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(14),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(14),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(14)
    );
\wdata[15]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(15),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(15),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(15),
      O => \wdata[15]_i_2__1_n_0\
    );
\wdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(15),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(13),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(15),
      O => \wdata_reg[15]\
    );
\wdata[15]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(15),
      I1 => \out\(1),
      I2 => \^log_size[31]\(15),
      I3 => \out\(0),
      I4 => \^base_offset\(47),
      O => \wdata[15]_i_3__0_n_0\
    );
\wdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(47),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(47),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(15)
    );
\wdata[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(15),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(15),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(15)
    );
\wdata[16]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(16),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(16),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(16),
      O => \wdata[16]_i_2__1_n_0\
    );
\wdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(16),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(14),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(16),
      O => \wdata_reg[16]\
    );
\wdata[16]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(16),
      I1 => \out\(1),
      I2 => \^log_size[31]\(16),
      I3 => \out\(0),
      I4 => \^base_offset\(48),
      O => \wdata[16]_i_3__0_n_0\
    );
\wdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(48),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(48),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(16)
    );
\wdata[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(16),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(16),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(16)
    );
\wdata[17]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(17),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(17),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(17),
      O => \wdata[17]_i_2__1_n_0\
    );
\wdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(17),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(15),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(17),
      O => \wdata_reg[17]\
    );
\wdata[17]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(17),
      I1 => \out\(1),
      I2 => \^log_size[31]\(17),
      I3 => \out\(0),
      I4 => \^base_offset\(49),
      O => \wdata[17]_i_3__0_n_0\
    );
\wdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(49),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(49),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(17)
    );
\wdata[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(17),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(17),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(17)
    );
\wdata[18]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(18),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(18),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(18),
      O => \wdata[18]_i_2__1_n_0\
    );
\wdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(18),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(16),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(18),
      O => \wdata_reg[18]\
    );
\wdata[18]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(18),
      I1 => \out\(1),
      I2 => \^log_size[31]\(18),
      I3 => \out\(0),
      I4 => \^base_offset\(50),
      O => \wdata[18]_i_3__0_n_0\
    );
\wdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(50),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(50),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(18)
    );
\wdata[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(18),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(18),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(18)
    );
\wdata[19]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(19),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(19),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(19),
      O => \wdata[19]_i_2__1_n_0\
    );
\wdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(19),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(17),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(19),
      O => \wdata_reg[19]\
    );
\wdata[19]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(19),
      I1 => \out\(1),
      I2 => \^log_size[31]\(19),
      I3 => \out\(0),
      I4 => \^base_offset\(51),
      O => \wdata[19]_i_3__0_n_0\
    );
\wdata[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(51),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(51),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(19)
    );
\wdata[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(19),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(19),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(19)
    );
\wdata[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^ulog_offset[31]\(1),
      I1 => \^log_size[31]\(1),
      I2 => \FSM_sequential_mst_exec_state_reg[0]_0\,
      I3 => \rdata_reg[1]\(0),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_src[31]\(1),
      O => D(1)
    );
\wdata[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(1),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(1),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(1),
      O => \wdata[1]_i_2__1_n_0\
    );
\wdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(1),
      I1 => \out\(1),
      I2 => \^log_size[31]\(1),
      I3 => \out\(0),
      I4 => \^base_offset\(33),
      O => \wdata[1]_i_3_n_0\
    );
\wdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(33),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(33),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(1)
    );
\wdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(1),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(1),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(1)
    );
\wdata[20]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(20),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(20),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(20),
      O => \wdata[20]_i_2__0_n_0\
    );
\wdata[20]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_size[31]\(20),
      I1 => start_clobber_reg,
      O => in13(0)
    );
\wdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \slv_reg0_reg[26]_0\(0),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(18),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(20),
      O => \wdata_reg[20]\
    );
\wdata[20]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(20),
      I1 => \out\(1),
      I2 => \^log_size[31]\(20),
      I3 => \out\(0),
      I4 => \^base_offset\(52),
      O => \wdata[20]_i_3__0_n_0\
    );
\wdata[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(52),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(52),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(20)
    );
\wdata[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(20),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(20),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(20)
    );
\wdata[21]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(21),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(21),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(21),
      O => \wdata[21]_i_2__0_n_0\
    );
\wdata[21]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_size[31]\(21),
      I1 => start_clobber_reg,
      O => in13(1)
    );
\wdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \slv_reg0_reg[26]_0\(1),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(19),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(21),
      O => \wdata_reg[21]\
    );
\wdata[21]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(21),
      I1 => \out\(1),
      I2 => \^log_size[31]\(21),
      I3 => \out\(0),
      I4 => \^base_offset\(53),
      O => \wdata[21]_i_3__0_n_0\
    );
\wdata[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(53),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(53),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(21)
    );
\wdata[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(21),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(21),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(21)
    );
\wdata[22]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(22),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(22),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(22),
      O => \wdata[22]_i_2__0_n_0\
    );
\wdata[22]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_size[31]\(22),
      I1 => start_clobber_reg,
      O => in13(2)
    );
\wdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \slv_reg0_reg[26]_0\(2),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(20),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(22),
      O => \wdata_reg[22]\
    );
\wdata[22]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(22),
      I1 => \out\(1),
      I2 => \^log_size[31]\(22),
      I3 => \out\(0),
      I4 => \^base_offset\(54),
      O => \wdata[22]_i_3__0_n_0\
    );
\wdata[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(54),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(54),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(22)
    );
\wdata[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(22),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(22),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(22)
    );
\wdata[23]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(23),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(23),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(23),
      O => \wdata[23]_i_2__0_n_0\
    );
\wdata[23]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_size[31]\(23),
      I1 => start_clobber_reg,
      O => in13(3)
    );
\wdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \slv_reg0_reg[26]_0\(3),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(21),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(23),
      O => \wdata_reg[23]\
    );
\wdata[23]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(23),
      I1 => \out\(1),
      I2 => \^log_size[31]\(23),
      I3 => \out\(0),
      I4 => \^base_offset\(55),
      O => \wdata[23]_i_3__0_n_0\
    );
\wdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(55),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(55),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(23)
    );
\wdata[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(23),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(23),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(23)
    );
\wdata[24]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(24),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(24),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(24),
      O => \wdata[24]_i_2__0_n_0\
    );
\wdata[24]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_size[31]\(24),
      I1 => start_clobber_reg,
      O => in13(4)
    );
\wdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \slv_reg0_reg[26]_0\(4),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(22),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(24),
      O => \wdata_reg[24]\
    );
\wdata[24]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(24),
      I1 => \out\(1),
      I2 => \^log_size[31]\(24),
      I3 => \out\(0),
      I4 => \^base_offset\(56),
      O => \wdata[24]_i_3__0_n_0\
    );
\wdata[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(56),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(56),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(24)
    );
\wdata[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(24),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(24),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(24)
    );
\wdata[25]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(25),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(25),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(25),
      O => \wdata[25]_i_2__0_n_0\
    );
\wdata[25]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_size[31]\(25),
      I1 => start_clobber_reg,
      O => in13(5)
    );
\wdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \slv_reg0_reg[29]_0\(0),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(23),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(25),
      O => \wdata_reg[25]\
    );
\wdata[25]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(25),
      I1 => \out\(1),
      I2 => \^log_size[31]\(25),
      I3 => \out\(0),
      I4 => \^base_offset\(57),
      O => \wdata[25]_i_3__0_n_0\
    );
\wdata[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(57),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(57),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(25)
    );
\wdata[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(25),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(25),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(25)
    );
\wdata[26]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(26),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(26),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(26),
      O => \wdata[26]_i_2__0_n_0\
    );
\wdata[26]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_size[31]\(26),
      I1 => start_clobber_reg,
      O => in13(6)
    );
\wdata[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \slv_reg0_reg[29]_0\(1),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(24),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(26),
      O => \wdata_reg[26]\
    );
\wdata[26]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(26),
      I1 => \out\(1),
      I2 => \^log_size[31]\(26),
      I3 => \out\(0),
      I4 => \^base_offset\(58),
      O => \wdata[26]_i_3__0_n_0\
    );
\wdata[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(58),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(58),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(26)
    );
\wdata[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(26),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(26),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(26)
    );
\wdata[27]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(27),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(27),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(27),
      O => \wdata[27]_i_2__0_n_0\
    );
\wdata[27]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^log_size[31]\(27),
      I1 => start_clobber_reg,
      O => in13(7)
    );
\wdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \slv_reg0_reg[29]_0\(2),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(25),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(27),
      O => \wdata_reg[27]_1\
    );
\wdata[27]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(27),
      I1 => \out\(1),
      I2 => \^log_size[31]\(27),
      I3 => \out\(0),
      I4 => \^base_offset\(59),
      O => \wdata[27]_i_3__0_n_0\
    );
\wdata[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(59),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(59),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(27)
    );
\wdata[27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(27),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(27),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(27)
    );
\wdata[28]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(28),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(28),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(28),
      O => \wdata[28]_i_2__0_n_0\
    );
\wdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \slv_reg0_reg[29]_0\(3),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(26),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(28),
      O => \wdata_reg[28]\
    );
\wdata[28]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(28),
      I1 => \out\(1),
      I2 => \^log_size[31]\(28),
      I3 => \out\(0),
      I4 => \^base_offset\(60),
      O => \wdata[28]_i_3__0_n_0\
    );
\wdata[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(60),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(60),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(28)
    );
\wdata[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(28),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(28),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(28)
    );
\wdata[29]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(29),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(29),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(29),
      O => \wdata[29]_i_2__0_n_0\
    );
\wdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \slv_reg0_reg[29]_0\(4),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(27),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(29),
      O => \wdata_reg[29]\
    );
\wdata[29]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(29),
      I1 => \out\(1),
      I2 => \^log_size[31]\(29),
      I3 => \out\(0),
      I4 => \^base_offset\(61),
      O => \wdata[29]_i_3__0_n_0\
    );
\wdata[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(61),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(61),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(29)
    );
\wdata[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(29),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(29),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(29)
    );
\wdata[2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(2),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(2),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(2),
      O => \wdata[2]_i_2__1_n_0\
    );
\wdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(2),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(0),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(2),
      O => \wdata_reg[2]\
    );
\wdata[2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(2),
      I1 => \out\(1),
      I2 => \^log_size[31]\(2),
      I3 => \out\(0),
      I4 => \^base_offset\(34),
      O => \wdata[2]_i_3__0_n_0\
    );
\wdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(34),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(34),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(2)
    );
\wdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(2),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(2),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(2)
    );
\wdata[30]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(30),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(30),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(30),
      O => \wdata[30]_i_2__0_n_0\
    );
\wdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \slv_reg0_reg[29]_0\(5),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(28),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(30),
      O => \wdata_reg[30]\
    );
\wdata[30]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(30),
      I1 => \out\(1),
      I2 => \^log_size[31]\(30),
      I3 => \out\(0),
      I4 => \^base_offset\(62),
      O => \wdata[30]_i_3__0_n_0\
    );
\wdata[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(62),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(62),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(30)
    );
\wdata[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(30),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(30),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(30)
    );
\wdata[31]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(31),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(31),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(31),
      O => \wdata[31]_i_2__1_n_0\
    );
\wdata[31]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(31),
      I1 => \out\(1),
      I2 => \^log_size[31]\(31),
      I3 => \out\(0),
      I4 => \^base_offset\(63),
      O => \wdata[31]_i_3__1_n_0\
    );
\wdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \slv_reg0_reg[29]_0\(6),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(29),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(31),
      O => \wdata_reg[31]\
    );
\wdata[31]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(63),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(63),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(31)
    );
\wdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(31),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(31),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(31)
    );
\wdata[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(3),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(3),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(3),
      O => \wdata[3]_i_2__1_n_0\
    );
\wdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(3),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(1),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(3),
      O => \wdata_reg[3]\
    );
\wdata[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(3),
      I1 => \out\(1),
      I2 => \^log_size[31]\(3),
      I3 => \out\(0),
      I4 => \^base_offset\(35),
      O => \wdata[3]_i_3__0_n_0\
    );
\wdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(35),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(35),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(3)
    );
\wdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(3),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(3),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(3)
    );
\wdata[4]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(4),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(4),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(4),
      O => \wdata[4]_i_2__1_n_0\
    );
\wdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(4),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(2),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(4),
      O => \wdata_reg[4]\
    );
\wdata[4]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(4),
      I1 => \out\(1),
      I2 => \^log_size[31]\(4),
      I3 => \out\(0),
      I4 => \^base_offset\(36),
      O => \wdata[4]_i_3__0_n_0\
    );
\wdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(36),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(36),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(4)
    );
\wdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(4),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(4),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(4)
    );
\wdata[5]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(5),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(5),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(5),
      O => \wdata[5]_i_2__1_n_0\
    );
\wdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(5),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(3),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(5),
      O => \wdata_reg[5]\
    );
\wdata[5]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(5),
      I1 => \out\(1),
      I2 => \^log_size[31]\(5),
      I3 => \out\(0),
      I4 => \^base_offset\(37),
      O => \wdata[5]_i_3__0_n_0\
    );
\wdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(37),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(37),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(5)
    );
\wdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(5),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(5),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(5)
    );
\wdata[6]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(6),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(6),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(6),
      O => \wdata[6]_i_2__1_n_0\
    );
\wdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(6),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(4),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(6),
      O => \wdata_reg[6]\
    );
\wdata[6]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(6),
      I1 => \out\(1),
      I2 => \^log_size[31]\(6),
      I3 => \out\(0),
      I4 => \^base_offset\(38),
      O => \wdata[6]_i_3__0_n_0\
    );
\wdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(38),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(38),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(6)
    );
\wdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(6),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(6),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(6)
    );
\wdata[7]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(7),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(7),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(7),
      O => \wdata[7]_i_2__1_n_0\
    );
\wdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(7),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(5),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(7),
      O => \wdata_reg[7]\
    );
\wdata[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(7),
      I1 => \out\(1),
      I2 => \^log_size[31]\(7),
      I3 => \out\(0),
      I4 => \^base_offset\(39),
      O => \wdata[7]_i_3__0_n_0\
    );
\wdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(39),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(39),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(7)
    );
\wdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(7),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(7),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(7)
    );
\wdata[8]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(8),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(8),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(8),
      O => \wdata[8]_i_2__1_n_0\
    );
\wdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(8),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(6),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(8),
      O => \wdata_reg[8]\
    );
\wdata[8]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(8),
      I1 => \out\(1),
      I2 => \^log_size[31]\(8),
      I3 => \out\(0),
      I4 => \^base_offset\(40),
      O => \wdata[8]_i_3__0_n_0\
    );
\wdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(40),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(40),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(8)
    );
\wdata[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(8),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(8),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(8)
    );
\wdata[9]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^base_offset\(9),
      I1 => \out\(0),
      I2 => \undolog_v2_1_M02_AXI_inst/in20\(9),
      I3 => \out\(1),
      I4 => \undolog_v2_1_M02_AXI_inst/in19\(9),
      O => \wdata[9]_i_2__1_n_0\
    );
\wdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^ulog_offset[31]\(9),
      I1 => \^operation_type[1]\(1),
      I2 => \^operation_type[1]\(0),
      I3 => DMA_DEST1(7),
      I4 => \FSM_sequential_mst_exec_state_reg[3]\,
      I5 => \^log_size[31]\(9),
      O => \wdata_reg[9]_0\
    );
\wdata[9]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^log_size\(9),
      I1 => \out\(1),
      I2 => \^log_size[31]\(9),
      I3 => \out\(0),
      I4 => \^base_offset\(41),
      O => \wdata[9]_i_3__0_n_0\
    );
\wdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(41),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(41),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in20\(9)
    );
\wdata[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011511000"
    )
        port map (
      I0 => \^log_src[63]\(28),
      I1 => \^log_src[63]\(29),
      I2 => redolog_dest_data(9),
      I3 => \^log_src[63]\(30),
      I4 => redolog_src_data(9),
      I5 => \^log_src[63]\(31),
      O => \undolog_v2_1_M02_AXI_inst/in19\(9)
    );
\wdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[0]_i_2_n_0\,
      I1 => \wdata[0]_i_3_n_0\,
      O => \wdata_reg[31]_0\(0),
      S => \out\(2)
    );
\wdata_reg[10]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[10]_i_2__1_n_0\,
      I1 => \wdata[10]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(10),
      S => \out\(2)
    );
\wdata_reg[11]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[11]_i_2__1_n_0\,
      I1 => \wdata[11]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(11),
      S => \out\(2)
    );
\wdata_reg[12]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[12]_i_2__1_n_0\,
      I1 => \wdata[12]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(12),
      S => \out\(2)
    );
\wdata_reg[13]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[13]_i_2__1_n_0\,
      I1 => \wdata[13]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(13),
      S => \out\(2)
    );
\wdata_reg[14]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[14]_i_2__1_n_0\,
      I1 => \wdata[14]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(14),
      S => \out\(2)
    );
\wdata_reg[15]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[15]_i_2__1_n_0\,
      I1 => \wdata[15]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(15),
      S => \out\(2)
    );
\wdata_reg[16]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[16]_i_2__1_n_0\,
      I1 => \wdata[16]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(16),
      S => \out\(2)
    );
\wdata_reg[17]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[17]_i_2__1_n_0\,
      I1 => \wdata[17]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(17),
      S => \out\(2)
    );
\wdata_reg[18]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[18]_i_2__1_n_0\,
      I1 => \wdata[18]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(18),
      S => \out\(2)
    );
\wdata_reg[19]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[19]_i_2__1_n_0\,
      I1 => \wdata[19]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(19),
      S => \out\(2)
    );
\wdata_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[1]_i_2__1_n_0\,
      I1 => \wdata[1]_i_3_n_0\,
      O => \wdata_reg[31]_0\(1),
      S => \out\(2)
    );
\wdata_reg[20]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[20]_i_2__0_n_0\,
      I1 => \wdata[20]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(20),
      S => \out\(2)
    );
\wdata_reg[21]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[21]_i_2__0_n_0\,
      I1 => \wdata[21]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(21),
      S => \out\(2)
    );
\wdata_reg[22]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[22]_i_2__0_n_0\,
      I1 => \wdata[22]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(22),
      S => \out\(2)
    );
\wdata_reg[23]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[23]_i_2__0_n_0\,
      I1 => \wdata[23]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(23),
      S => \out\(2)
    );
\wdata_reg[24]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[24]_i_2__0_n_0\,
      I1 => \wdata[24]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(24),
      S => \out\(2)
    );
\wdata_reg[25]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[25]_i_2__0_n_0\,
      I1 => \wdata[25]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(25),
      S => \out\(2)
    );
\wdata_reg[26]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[26]_i_2__0_n_0\,
      I1 => \wdata[26]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(26),
      S => \out\(2)
    );
\wdata_reg[27]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[27]_i_2__0_n_0\,
      I1 => \wdata[27]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(27),
      S => \out\(2)
    );
\wdata_reg[28]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[28]_i_2__0_n_0\,
      I1 => \wdata[28]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(28),
      S => \out\(2)
    );
\wdata_reg[29]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[29]_i_2__0_n_0\,
      I1 => \wdata[29]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(29),
      S => \out\(2)
    );
\wdata_reg[2]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[2]_i_2__1_n_0\,
      I1 => \wdata[2]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(2),
      S => \out\(2)
    );
\wdata_reg[30]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[30]_i_2__0_n_0\,
      I1 => \wdata[30]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(30),
      S => \out\(2)
    );
\wdata_reg[31]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[31]_i_2__1_n_0\,
      I1 => \wdata[31]_i_3__1_n_0\,
      O => \wdata_reg[31]_0\(31),
      S => \out\(2)
    );
\wdata_reg[3]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[3]_i_2__1_n_0\,
      I1 => \wdata[3]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(3),
      S => \out\(2)
    );
\wdata_reg[4]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[4]_i_2__1_n_0\,
      I1 => \wdata[4]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(4),
      S => \out\(2)
    );
\wdata_reg[5]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[5]_i_2__1_n_0\,
      I1 => \wdata[5]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(5),
      S => \out\(2)
    );
\wdata_reg[6]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[6]_i_2__1_n_0\,
      I1 => \wdata[6]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(6),
      S => \out\(2)
    );
\wdata_reg[7]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[7]_i_2__1_n_0\,
      I1 => \wdata[7]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(7),
      S => \out\(2)
    );
\wdata_reg[8]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[8]_i_2__1_n_0\,
      I1 => \wdata[8]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(8),
      S => \out\(2)
    );
\wdata_reg[9]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wdata[9]_i_2__1_n_0\,
      I1 => \wdata[9]_i_3__0_n_0\,
      O => \wdata_reg[31]_0\(9),
      S => \out\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_undolog_0_3_undolog_v2_1 is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_arvalid : out STD_LOGIC;
    m01_axi_rready : out STD_LOGIC;
    m01_axi_arvalid : out STD_LOGIC;
    \dataout[1]\ : out STD_LOGIC;
    \dataout[0]\ : out STD_LOGIC;
    \dataout[2]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    metadatacpy_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \log_src[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_bready : out STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m01_axi_bready : out STD_LOGIC;
    \ulog_offset[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \log_size[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    datacpy_done : out STD_LOGIC;
    metadata_done : out STD_LOGIC;
    memclr_done : out STD_LOGIC;
    ulog_offset : out STD_LOGIC_VECTOR ( 31 downto 0 );
    base_offset : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \log_src[63]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    log_size : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \operation_type[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_rready : out STD_LOGIC;
    \rdata[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    redolog_dest_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    redolog_src_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \raddr[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \waddr[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \wdata[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m02_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m01_axi_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m01_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m01_axi_araddr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    time_cycles : out STD_LOGIC_VECTOR ( 63 downto 0 );
    start_logclr : out STD_LOGIC;
    data_copy_pulse : out STD_LOGIC;
    start_redolog : out STD_LOGIC;
    memclr_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    physical_dest_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    datacpy_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    physical_src_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    reg_init_complete : out STD_LOGIC;
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_awvalid : out STD_LOGIC;
    m01_axi_wvalid : out STD_LOGIC;
    m01_axi_awvalid : out STD_LOGIC;
    m02_axi_arvalid : out STD_LOGIC;
    m02_axi_wvalid : out STD_LOGIC;
    m02_axi_awvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    logclr_done_reg : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m02_axi_aresetn : in STD_LOGIC;
    m01_axi_aresetn : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m01_axi_rvalid : in STD_LOGIC;
    m02_axi_bvalid : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    m01_axi_bvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_aclk : in STD_LOGIC;
    m01_axi_aclk : in STD_LOGIC;
    m02_axi_aclk : in STD_LOGIC;
    m02_axi_rvalid : in STD_LOGIC;
    m02_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m01_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    m02_axi_arready : in STD_LOGIC;
    m02_axi_wready : in STD_LOGIC;
    m02_axi_awready : in STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m01_axi_wready : in STD_LOGIC;
    m01_axi_awready : in STD_LOGIC;
    m01_axi_arready : in STD_LOGIC
  );
end design_1_undolog_0_3_undolog_v2_1;

architecture STRUCTURE of design_1_undolog_0_3_undolog_v2_1 is
  signal DMA_DEST1 : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \DMA_DEST1_carry__0_n_0\ : STD_LOGIC;
  signal \DMA_DEST1_carry__0_n_1\ : STD_LOGIC;
  signal \DMA_DEST1_carry__0_n_2\ : STD_LOGIC;
  signal \DMA_DEST1_carry__0_n_3\ : STD_LOGIC;
  signal \DMA_DEST1_carry__0_n_5\ : STD_LOGIC;
  signal \DMA_DEST1_carry__0_n_6\ : STD_LOGIC;
  signal \DMA_DEST1_carry__0_n_7\ : STD_LOGIC;
  signal \DMA_DEST1_carry__1_n_0\ : STD_LOGIC;
  signal \DMA_DEST1_carry__1_n_1\ : STD_LOGIC;
  signal \DMA_DEST1_carry__1_n_2\ : STD_LOGIC;
  signal \DMA_DEST1_carry__1_n_3\ : STD_LOGIC;
  signal \DMA_DEST1_carry__1_n_5\ : STD_LOGIC;
  signal \DMA_DEST1_carry__1_n_6\ : STD_LOGIC;
  signal \DMA_DEST1_carry__1_n_7\ : STD_LOGIC;
  signal \DMA_DEST1_carry__2_n_3\ : STD_LOGIC;
  signal \DMA_DEST1_carry__2_n_5\ : STD_LOGIC;
  signal \DMA_DEST1_carry__2_n_6\ : STD_LOGIC;
  signal \DMA_DEST1_carry__2_n_7\ : STD_LOGIC;
  signal DMA_DEST1_carry_n_0 : STD_LOGIC;
  signal DMA_DEST1_carry_n_1 : STD_LOGIC;
  signal DMA_DEST1_carry_n_2 : STD_LOGIC;
  signal DMA_DEST1_carry_n_3 : STD_LOGIC;
  signal DMA_DEST1_carry_n_5 : STD_LOGIC;
  signal DMA_DEST1_carry_n_6 : STD_LOGIC;
  signal DMA_DEST1_carry_n_7 : STD_LOGIC;
  signal \DMA_SRC0_carry__0_n_5\ : STD_LOGIC;
  signal \DMA_SRC0_carry__0_n_6\ : STD_LOGIC;
  signal \DMA_SRC0_carry__0_n_7\ : STD_LOGIC;
  signal DMA_SRC0_carry_n_0 : STD_LOGIC;
  signal DMA_SRC0_carry_n_1 : STD_LOGIC;
  signal DMA_SRC0_carry_n_2 : STD_LOGIC;
  signal DMA_SRC0_carry_n_3 : STD_LOGIC;
  signal DMA_SRC0_carry_n_5 : STD_LOGIC;
  signal DMA_SRC0_carry_n_6 : STD_LOGIC;
  signal DMA_SRC0_carry_n_7 : STD_LOGIC;
  signal DMA_START2 : STD_LOGIC;
  signal \^data_copy_pulse\ : STD_LOGIC;
  signal \^dataout[0]\ : STD_LOGIC;
  signal \^dataout[1]\ : STD_LOGIC;
  signal \^dataout[2]\ : STD_LOGIC;
  signal in13 : STD_LOGIC_VECTOR ( 27 downto 20 );
  signal in24 : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal in26 : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal in27 : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \^log_size[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^log_src[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^memclr_done\ : STD_LOGIC;
  signal \mst_exec_state1__9\ : STD_LOGIC;
  signal \^physical_dest_addr\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^physical_src_addr\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^redolog_dest_data\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^redolog_src_data\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal start_clobber_reg : STD_LOGIC;
  signal \ulog_offset0_carry__0_n_5\ : STD_LOGIC;
  signal \ulog_offset0_carry__0_n_6\ : STD_LOGIC;
  signal \ulog_offset0_carry__0_n_7\ : STD_LOGIC;
  signal ulog_offset0_carry_n_0 : STD_LOGIC;
  signal ulog_offset0_carry_n_1 : STD_LOGIC;
  signal ulog_offset0_carry_n_2 : STD_LOGIC;
  signal ulog_offset0_carry_n_3 : STD_LOGIC;
  signal ulog_offset0_carry_n_5 : STD_LOGIC;
  signal ulog_offset0_carry_n_6 : STD_LOGIC;
  signal ulog_offset0_carry_n_7 : STD_LOGIC;
  signal \^ulog_offset[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal undolog_v2_1_M00_AXI_inst_n_12 : STD_LOGIC;
  signal undolog_v2_1_M00_AXI_inst_n_13 : STD_LOGIC;
  signal undolog_v2_1_M00_AXI_inst_n_7 : STD_LOGIC;
  signal undolog_v2_1_M01_AXI_inst_n_12 : STD_LOGIC;
  signal undolog_v2_1_M01_AXI_inst_n_13 : STD_LOGIC;
  signal undolog_v2_1_M01_AXI_inst_n_6 : STD_LOGIC;
  signal undolog_v2_1_M01_AXI_inst_n_7 : STD_LOGIC;
  signal undolog_v2_1_M02_AXI_inst_n_0 : STD_LOGIC;
  signal undolog_v2_1_M02_AXI_inst_n_1 : STD_LOGIC;
  signal undolog_v2_1_M02_AXI_inst_n_12 : STD_LOGIC;
  signal undolog_v2_1_M02_AXI_inst_n_2 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_108 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_109 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_110 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_111 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_112 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_113 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_146 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_147 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_148 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_149 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_150 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_151 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_152 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_153 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_154 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_155 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_156 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_157 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_158 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_159 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_160 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_161 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_162 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_163 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_164 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_165 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_166 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_167 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_168 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_169 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_202 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_203 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_204 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_205 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_206 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_207 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_208 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_209 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_210 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_211 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_212 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_213 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_214 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_215 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_216 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_217 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_218 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_219 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_220 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_221 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_222 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_223 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_224 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_225 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_226 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_227 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_228 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_229 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_230 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_231 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_232 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_233 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_234 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_235 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_236 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_237 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_238 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_239 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_240 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_241 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_274 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_275 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_313 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_314 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_315 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_316 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_317 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_318 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_319 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_320 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_321 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_322 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_323 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_324 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_325 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_326 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_327 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_328 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_329 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_330 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_331 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_332 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_335 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_336 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_337 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_338 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_339 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_340 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_341 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_342 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_343 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_344 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_345 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_346 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_347 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_348 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_349 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_350 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_351 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_352 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_353 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_354 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_355 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_356 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_357 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_358 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_359 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_360 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_361 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_362 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_363 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_364 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_494 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_495 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_496 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_497 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_498 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_499 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_500 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_501 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_502 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_503 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_504 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_505 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_506 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_507 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_508 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_509 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_510 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_511 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_512 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_513 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_514 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_515 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_516 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_517 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_518 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_519 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_520 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_521 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_522 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_523 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_524 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_525 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_526 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_73 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_74 : STD_LOGIC;
  signal undolog_v2_1_S00_AXI_inst_n_75 : STD_LOGIC;
  signal NLW_DMA_DEST1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_DMA_DEST1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_DMA_DEST1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_DMA_DEST1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_DMA_DEST1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_DMA_SRC0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_DMA_SRC0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_DMA_SRC0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_ulog_offset0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ulog_offset0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_ulog_offset0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of DMA_DEST1_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \DMA_DEST1_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \DMA_DEST1_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \DMA_DEST1_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of DMA_SRC0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \DMA_SRC0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ulog_offset0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ulog_offset0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  data_copy_pulse <= \^data_copy_pulse\;
  \dataout[0]\ <= \^dataout[0]\;
  \dataout[1]\ <= \^dataout[1]\;
  \dataout[2]\ <= \^dataout[2]\;
  \log_size[31]\(31 downto 0) <= \^log_size[31]\(31 downto 0);
  \log_src[31]\(31 downto 0) <= \^log_src[31]\(31 downto 0);
  memclr_done <= \^memclr_done\;
  physical_dest_addr(11 downto 0) <= \^physical_dest_addr\(11 downto 0);
  physical_src_addr(11 downto 0) <= \^physical_src_addr\(11 downto 0);
  redolog_dest_data(63 downto 0) <= \^redolog_dest_data\(63 downto 0);
  redolog_src_data(63 downto 0) <= \^redolog_src_data\(63 downto 0);
  \ulog_offset[31]\(31 downto 0) <= \^ulog_offset[31]\(31 downto 0);
DMA_DEST1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => DMA_DEST1_carry_n_0,
      CO(6) => DMA_DEST1_carry_n_1,
      CO(5) => DMA_DEST1_carry_n_2,
      CO(4) => DMA_DEST1_carry_n_3,
      CO(3) => NLW_DMA_DEST1_carry_CO_UNCONNECTED(3),
      CO(2) => DMA_DEST1_carry_n_5,
      CO(1) => DMA_DEST1_carry_n_6,
      CO(0) => DMA_DEST1_carry_n_7,
      DI(7 downto 3) => B"00000",
      DI(2 downto 1) => \^ulog_offset[31]\(4 downto 3),
      DI(0) => '0',
      O(7 downto 0) => DMA_DEST1(9 downto 2),
      S(7 downto 3) => \^ulog_offset[31]\(9 downto 5),
      S(2) => undolog_v2_1_S00_AXI_inst_n_330,
      S(1) => undolog_v2_1_S00_AXI_inst_n_331,
      S(0) => \^ulog_offset[31]\(2)
    );
\DMA_DEST1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => DMA_DEST1_carry_n_0,
      CI_TOP => '0',
      CO(7) => \DMA_DEST1_carry__0_n_0\,
      CO(6) => \DMA_DEST1_carry__0_n_1\,
      CO(5) => \DMA_DEST1_carry__0_n_2\,
      CO(4) => \DMA_DEST1_carry__0_n_3\,
      CO(3) => \NLW_DMA_DEST1_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \DMA_DEST1_carry__0_n_5\,
      CO(1) => \DMA_DEST1_carry__0_n_6\,
      CO(0) => \DMA_DEST1_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => DMA_DEST1(17 downto 10),
      S(7 downto 0) => \^ulog_offset[31]\(17 downto 10)
    );
\DMA_DEST1_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \DMA_DEST1_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \DMA_DEST1_carry__1_n_0\,
      CO(6) => \DMA_DEST1_carry__1_n_1\,
      CO(5) => \DMA_DEST1_carry__1_n_2\,
      CO(4) => \DMA_DEST1_carry__1_n_3\,
      CO(3) => \NLW_DMA_DEST1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \DMA_DEST1_carry__1_n_5\,
      CO(1) => \DMA_DEST1_carry__1_n_6\,
      CO(0) => \DMA_DEST1_carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => DMA_DEST1(25 downto 18),
      S(7 downto 2) => \^physical_dest_addr\(5 downto 0),
      S(1 downto 0) => \^ulog_offset[31]\(19 downto 18)
    );
\DMA_DEST1_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \DMA_DEST1_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_DMA_DEST1_carry__2_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \DMA_DEST1_carry__2_n_3\,
      CO(3) => \NLW_DMA_DEST1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \DMA_DEST1_carry__2_n_5\,
      CO(1) => \DMA_DEST1_carry__2_n_6\,
      CO(0) => \DMA_DEST1_carry__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 6) => \NLW_DMA_DEST1_carry__2_O_UNCONNECTED\(7 downto 6),
      O(5 downto 0) => DMA_DEST1(31 downto 26),
      S(7 downto 6) => B"00",
      S(5 downto 0) => \^physical_dest_addr\(11 downto 6)
    );
DMA_SRC0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => DMA_SRC0_carry_n_0,
      CO(6) => DMA_SRC0_carry_n_1,
      CO(5) => DMA_SRC0_carry_n_2,
      CO(4) => DMA_SRC0_carry_n_3,
      CO(3) => NLW_DMA_SRC0_carry_CO_UNCONNECTED(3),
      CO(2) => DMA_SRC0_carry_n_5,
      CO(1) => DMA_SRC0_carry_n_6,
      CO(0) => DMA_SRC0_carry_n_7,
      DI(7) => undolog_v2_1_S00_AXI_inst_n_217,
      DI(6) => undolog_v2_1_S00_AXI_inst_n_218,
      DI(5) => undolog_v2_1_S00_AXI_inst_n_219,
      DI(4) => undolog_v2_1_S00_AXI_inst_n_220,
      DI(3) => undolog_v2_1_S00_AXI_inst_n_221,
      DI(2) => undolog_v2_1_S00_AXI_inst_n_222,
      DI(1) => undolog_v2_1_S00_AXI_inst_n_223,
      DI(0) => '0',
      O(7 downto 0) => \^physical_src_addr\(7 downto 0),
      S(7) => undolog_v2_1_S00_AXI_inst_n_202,
      S(6) => undolog_v2_1_S00_AXI_inst_n_203,
      S(5) => undolog_v2_1_S00_AXI_inst_n_204,
      S(4) => undolog_v2_1_S00_AXI_inst_n_205,
      S(3) => undolog_v2_1_S00_AXI_inst_n_206,
      S(2) => undolog_v2_1_S00_AXI_inst_n_207,
      S(1) => undolog_v2_1_S00_AXI_inst_n_208,
      S(0) => undolog_v2_1_S00_AXI_inst_n_209
    );
\DMA_SRC0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => DMA_SRC0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_DMA_SRC0_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \DMA_SRC0_carry__0_n_5\,
      CO(1) => \DMA_SRC0_carry__0_n_6\,
      CO(0) => \DMA_SRC0_carry__0_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2) => undolog_v2_1_S00_AXI_inst_n_230,
      DI(1) => undolog_v2_1_S00_AXI_inst_n_231,
      DI(0) => undolog_v2_1_S00_AXI_inst_n_232,
      O(7 downto 4) => \NLW_DMA_SRC0_carry__0_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => \^physical_src_addr\(11 downto 8),
      S(7 downto 4) => B"0000",
      S(3) => undolog_v2_1_S00_AXI_inst_n_322,
      S(2) => undolog_v2_1_S00_AXI_inst_n_323,
      S(1) => undolog_v2_1_S00_AXI_inst_n_324,
      S(0) => undolog_v2_1_S00_AXI_inst_n_325
    );
ulog_offset0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => ulog_offset0_carry_n_0,
      CO(6) => ulog_offset0_carry_n_1,
      CO(5) => ulog_offset0_carry_n_2,
      CO(4) => ulog_offset0_carry_n_3,
      CO(3) => NLW_ulog_offset0_carry_CO_UNCONNECTED(3),
      CO(2) => ulog_offset0_carry_n_5,
      CO(1) => ulog_offset0_carry_n_6,
      CO(0) => ulog_offset0_carry_n_7,
      DI(7) => undolog_v2_1_S00_AXI_inst_n_210,
      DI(6) => undolog_v2_1_S00_AXI_inst_n_211,
      DI(5) => undolog_v2_1_S00_AXI_inst_n_212,
      DI(4) => undolog_v2_1_S00_AXI_inst_n_213,
      DI(3) => undolog_v2_1_S00_AXI_inst_n_214,
      DI(2) => undolog_v2_1_S00_AXI_inst_n_215,
      DI(1) => undolog_v2_1_S00_AXI_inst_n_216,
      DI(0) => '0',
      O(7 downto 0) => \^physical_dest_addr\(7 downto 0),
      S(7) => undolog_v2_1_S00_AXI_inst_n_162,
      S(6) => undolog_v2_1_S00_AXI_inst_n_163,
      S(5) => undolog_v2_1_S00_AXI_inst_n_164,
      S(4) => undolog_v2_1_S00_AXI_inst_n_165,
      S(3) => undolog_v2_1_S00_AXI_inst_n_166,
      S(2) => undolog_v2_1_S00_AXI_inst_n_167,
      S(1) => undolog_v2_1_S00_AXI_inst_n_168,
      S(0) => undolog_v2_1_S00_AXI_inst_n_169
    );
\ulog_offset0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => ulog_offset0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_ulog_offset0_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \ulog_offset0_carry__0_n_5\,
      CO(1) => \ulog_offset0_carry__0_n_6\,
      CO(0) => \ulog_offset0_carry__0_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2) => undolog_v2_1_S00_AXI_inst_n_227,
      DI(1) => undolog_v2_1_S00_AXI_inst_n_228,
      DI(0) => undolog_v2_1_S00_AXI_inst_n_229,
      O(7 downto 4) => \NLW_ulog_offset0_carry__0_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => \^physical_dest_addr\(11 downto 8),
      S(7 downto 4) => B"0000",
      S(3) => undolog_v2_1_S00_AXI_inst_n_326,
      S(2) => undolog_v2_1_S00_AXI_inst_n_327,
      S(1) => undolog_v2_1_S00_AXI_inst_n_328,
      S(0) => undolog_v2_1_S00_AXI_inst_n_329
    );
undolog_v2_1_M00_AXI_inst: entity work.design_1_undolog_0_3_undolog_v2_1_M00_AXI
     port map (
      D(0) => undolog_v2_1_S00_AXI_inst_n_364,
      DMA_DEST1(29 downto 0) => DMA_DEST1(31 downto 2),
      Q(22 downto 19) => \^log_size[31]\(31 downto 28),
      Q(18 downto 0) => \^log_size[31]\(19 downto 1),
      SR(0) => undolog_v2_1_S00_AXI_inst_n_73,
      in13(7 downto 0) => in13(27 downto 20),
      logclr_pulsegend1_reg => undolog_v2_1_S00_AXI_inst_n_275,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(1 downto 0) => m00_axi_araddr(1 downto 0),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arready => m00_axi_arready,
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_awaddr(3 downto 0) => m00_axi_awaddr(3 downto 0),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_rdata(31 downto 0) => m00_axi_rdata(31 downto 0),
      m00_axi_rready => m00_axi_rready,
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_wdata(31 downto 0) => m00_axi_wdata(31 downto 0),
      m00_axi_wready => m00_axi_wready,
      m00_axi_wvalid => m00_axi_wvalid,
      memclr_done => \^memclr_done\,
      memclr_state(3 downto 0) => memclr_state(3 downto 0),
      physical_src_addr(7 downto 0) => \^physical_src_addr\(7 downto 0),
      \slv_reg0_reg[1]\(0) => \^ulog_offset[31]\(1),
      \slv_reg11_reg[2]\ => undolog_v2_1_M00_AXI_inst_n_7,
      \slv_reg11_reg[2]_0\ => \^dataout[2]\,
      \slv_reg4_reg[19]\(18 downto 0) => \^log_src[31]\(19 downto 1),
      start_clobber_reg => start_clobber_reg,
      start_clobber_reg_reg_0 => undolog_v2_1_S00_AXI_inst_n_274,
      \wdata_reg[31]_0\ => undolog_v2_1_M00_AXI_inst_n_12,
      \wdata_reg[31]_1\ => undolog_v2_1_M00_AXI_inst_n_13
    );
undolog_v2_1_M01_AXI_inst: entity work.design_1_undolog_0_3_undolog_v2_1_M01_AXI
     port map (
      D(1) => undolog_v2_1_S00_AXI_inst_n_240,
      D(0) => undolog_v2_1_S00_AXI_inst_n_241,
      DMA_START2 => DMA_START2,
      Q(0) => undolog_v2_1_M01_AXI_inst_n_6,
      SR(0) => undolog_v2_1_S00_AXI_inst_n_75,
      data_copy_pulse => \^data_copy_pulse\,
      datacpy_done => datacpy_done,
      datacpy_state(3 downto 0) => datacpy_state(3 downto 0),
      m01_axi_aclk => m01_axi_aclk,
      m01_axi_araddr(1 downto 0) => m01_axi_araddr(1 downto 0),
      m01_axi_aresetn => m01_axi_aresetn,
      m01_axi_arready => m01_axi_arready,
      m01_axi_arvalid => m01_axi_arvalid,
      m01_axi_awaddr(3 downto 0) => m01_axi_awaddr(3 downto 0),
      m01_axi_awready => m01_axi_awready,
      m01_axi_awvalid => m01_axi_awvalid,
      m01_axi_bready => m01_axi_bready,
      m01_axi_bvalid => m01_axi_bvalid,
      m01_axi_rdata(31 downto 0) => m01_axi_rdata(31 downto 0),
      m01_axi_rready => m01_axi_rready,
      m01_axi_rvalid => m01_axi_rvalid,
      m01_axi_wdata(31 downto 0) => m01_axi_wdata(31 downto 0),
      m01_axi_wready => m01_axi_wready,
      m01_axi_wvalid => m01_axi_wvalid,
      \operation_type_reg[1]\ => undolog_v2_1_S00_AXI_inst_n_332,
      \operation_type_reg[1]_0\ => undolog_v2_1_S00_AXI_inst_n_335,
      \operation_type_reg[1]_1\ => undolog_v2_1_S00_AXI_inst_n_336,
      \operation_type_reg[1]_10\ => undolog_v2_1_S00_AXI_inst_n_345,
      \operation_type_reg[1]_2\ => undolog_v2_1_S00_AXI_inst_n_337,
      \operation_type_reg[1]_3\ => undolog_v2_1_S00_AXI_inst_n_338,
      \operation_type_reg[1]_4\ => undolog_v2_1_S00_AXI_inst_n_339,
      \operation_type_reg[1]_5\ => undolog_v2_1_S00_AXI_inst_n_340,
      \operation_type_reg[1]_6\ => undolog_v2_1_S00_AXI_inst_n_341,
      \operation_type_reg[1]_7\ => undolog_v2_1_S00_AXI_inst_n_342,
      \operation_type_reg[1]_8\ => undolog_v2_1_S00_AXI_inst_n_343,
      \operation_type_reg[1]_9\ => undolog_v2_1_S00_AXI_inst_n_344,
      \slv_reg0_reg[10]\ => undolog_v2_1_S00_AXI_inst_n_355,
      \slv_reg0_reg[11]\ => undolog_v2_1_S00_AXI_inst_n_354,
      \slv_reg0_reg[12]\ => undolog_v2_1_S00_AXI_inst_n_353,
      \slv_reg0_reg[13]\ => undolog_v2_1_S00_AXI_inst_n_352,
      \slv_reg0_reg[14]\ => undolog_v2_1_S00_AXI_inst_n_351,
      \slv_reg0_reg[15]\ => undolog_v2_1_S00_AXI_inst_n_350,
      \slv_reg0_reg[16]\ => undolog_v2_1_S00_AXI_inst_n_349,
      \slv_reg0_reg[17]\ => undolog_v2_1_S00_AXI_inst_n_348,
      \slv_reg0_reg[18]\ => undolog_v2_1_S00_AXI_inst_n_347,
      \slv_reg0_reg[19]\ => undolog_v2_1_S00_AXI_inst_n_346,
      \slv_reg0_reg[2]\ => undolog_v2_1_S00_AXI_inst_n_363,
      \slv_reg0_reg[3]\ => undolog_v2_1_S00_AXI_inst_n_362,
      \slv_reg0_reg[4]\ => undolog_v2_1_S00_AXI_inst_n_361,
      \slv_reg0_reg[5]\ => undolog_v2_1_S00_AXI_inst_n_360,
      \slv_reg0_reg[6]\ => undolog_v2_1_S00_AXI_inst_n_359,
      \slv_reg0_reg[7]\ => undolog_v2_1_S00_AXI_inst_n_358,
      \slv_reg0_reg[8]\ => undolog_v2_1_S00_AXI_inst_n_357,
      \slv_reg0_reg[9]\ => undolog_v2_1_S00_AXI_inst_n_356,
      \slv_reg11_reg[1]\ => undolog_v2_1_M01_AXI_inst_n_7,
      \slv_reg11_reg[1]_0\ => \^dataout[1]\,
      \slv_reg4_reg[31]\(29 downto 0) => \^log_src[31]\(31 downto 2),
      \wdata_reg[0]_0\ => undolog_v2_1_M01_AXI_inst_n_13,
      \wdata_reg[31]_0\ => undolog_v2_1_M01_AXI_inst_n_12
    );
undolog_v2_1_M02_AXI_inst: entity work.design_1_undolog_0_3_undolog_v2_1_M02_AXI
     port map (
      D(0) => undolog_v2_1_S00_AXI_inst_n_526,
      DI(0) => undolog_v2_1_S00_AXI_inst_n_313,
      \FSM_sequential_mst_exec_state_reg[3]_0\(31) => undolog_v2_1_S00_AXI_inst_n_494,
      \FSM_sequential_mst_exec_state_reg[3]_0\(30) => undolog_v2_1_S00_AXI_inst_n_495,
      \FSM_sequential_mst_exec_state_reg[3]_0\(29) => undolog_v2_1_S00_AXI_inst_n_496,
      \FSM_sequential_mst_exec_state_reg[3]_0\(28) => undolog_v2_1_S00_AXI_inst_n_497,
      \FSM_sequential_mst_exec_state_reg[3]_0\(27) => undolog_v2_1_S00_AXI_inst_n_498,
      \FSM_sequential_mst_exec_state_reg[3]_0\(26) => undolog_v2_1_S00_AXI_inst_n_499,
      \FSM_sequential_mst_exec_state_reg[3]_0\(25) => undolog_v2_1_S00_AXI_inst_n_500,
      \FSM_sequential_mst_exec_state_reg[3]_0\(24) => undolog_v2_1_S00_AXI_inst_n_501,
      \FSM_sequential_mst_exec_state_reg[3]_0\(23) => undolog_v2_1_S00_AXI_inst_n_502,
      \FSM_sequential_mst_exec_state_reg[3]_0\(22) => undolog_v2_1_S00_AXI_inst_n_503,
      \FSM_sequential_mst_exec_state_reg[3]_0\(21) => undolog_v2_1_S00_AXI_inst_n_504,
      \FSM_sequential_mst_exec_state_reg[3]_0\(20) => undolog_v2_1_S00_AXI_inst_n_505,
      \FSM_sequential_mst_exec_state_reg[3]_0\(19) => undolog_v2_1_S00_AXI_inst_n_506,
      \FSM_sequential_mst_exec_state_reg[3]_0\(18) => undolog_v2_1_S00_AXI_inst_n_507,
      \FSM_sequential_mst_exec_state_reg[3]_0\(17) => undolog_v2_1_S00_AXI_inst_n_508,
      \FSM_sequential_mst_exec_state_reg[3]_0\(16) => undolog_v2_1_S00_AXI_inst_n_509,
      \FSM_sequential_mst_exec_state_reg[3]_0\(15) => undolog_v2_1_S00_AXI_inst_n_510,
      \FSM_sequential_mst_exec_state_reg[3]_0\(14) => undolog_v2_1_S00_AXI_inst_n_511,
      \FSM_sequential_mst_exec_state_reg[3]_0\(13) => undolog_v2_1_S00_AXI_inst_n_512,
      \FSM_sequential_mst_exec_state_reg[3]_0\(12) => undolog_v2_1_S00_AXI_inst_n_513,
      \FSM_sequential_mst_exec_state_reg[3]_0\(11) => undolog_v2_1_S00_AXI_inst_n_514,
      \FSM_sequential_mst_exec_state_reg[3]_0\(10) => undolog_v2_1_S00_AXI_inst_n_515,
      \FSM_sequential_mst_exec_state_reg[3]_0\(9) => undolog_v2_1_S00_AXI_inst_n_516,
      \FSM_sequential_mst_exec_state_reg[3]_0\(8) => undolog_v2_1_S00_AXI_inst_n_517,
      \FSM_sequential_mst_exec_state_reg[3]_0\(7) => undolog_v2_1_S00_AXI_inst_n_518,
      \FSM_sequential_mst_exec_state_reg[3]_0\(6) => undolog_v2_1_S00_AXI_inst_n_519,
      \FSM_sequential_mst_exec_state_reg[3]_0\(5) => undolog_v2_1_S00_AXI_inst_n_520,
      \FSM_sequential_mst_exec_state_reg[3]_0\(4) => undolog_v2_1_S00_AXI_inst_n_521,
      \FSM_sequential_mst_exec_state_reg[3]_0\(3) => undolog_v2_1_S00_AXI_inst_n_522,
      \FSM_sequential_mst_exec_state_reg[3]_0\(2) => undolog_v2_1_S00_AXI_inst_n_523,
      \FSM_sequential_mst_exec_state_reg[3]_0\(1) => undolog_v2_1_S00_AXI_inst_n_524,
      \FSM_sequential_mst_exec_state_reg[3]_0\(0) => undolog_v2_1_S00_AXI_inst_n_525,
      Q(19 downto 0) => \^log_src[31]\(19 downto 0),
      S(5) => undolog_v2_1_S00_AXI_inst_n_108,
      S(4) => undolog_v2_1_S00_AXI_inst_n_109,
      S(3) => undolog_v2_1_S00_AXI_inst_n_110,
      S(2) => undolog_v2_1_S00_AXI_inst_n_111,
      S(1) => undolog_v2_1_S00_AXI_inst_n_112,
      S(0) => undolog_v2_1_S00_AXI_inst_n_113,
      SR(0) => undolog_v2_1_S00_AXI_inst_n_74,
      in24(29 downto 0) => in24(31 downto 2),
      in26(28 downto 0) => in26(31 downto 3),
      in27(29 downto 0) => in27(31 downto 2),
      m02_axi_aclk => m02_axi_aclk,
      m02_axi_araddr(31 downto 0) => m02_axi_araddr(31 downto 0),
      m02_axi_aresetn => m02_axi_aresetn,
      m02_axi_arready => m02_axi_arready,
      m02_axi_arvalid => m02_axi_arvalid,
      m02_axi_awaddr(31 downto 0) => m02_axi_awaddr(31 downto 0),
      m02_axi_awready => m02_axi_awready,
      m02_axi_awvalid => m02_axi_awvalid,
      m02_axi_bready => m02_axi_bready,
      m02_axi_bvalid => m02_axi_bvalid,
      m02_axi_rdata(31 downto 0) => m02_axi_rdata(31 downto 0),
      m02_axi_rready => m02_axi_rready,
      m02_axi_rvalid => m02_axi_rvalid,
      m02_axi_wdata(31 downto 0) => m02_axi_wdata(31 downto 0),
      m02_axi_wready => m02_axi_wready,
      m02_axi_wvalid => m02_axi_wvalid,
      metadata_done => metadata_done,
      metadatacpy_state(3 downto 0) => metadatacpy_state(3 downto 0),
      \mst_exec_state1__9\ => \mst_exec_state1__9\,
      \out\(2) => undolog_v2_1_M02_AXI_inst_n_0,
      \out\(1) => undolog_v2_1_M02_AXI_inst_n_1,
      \out\(0) => undolog_v2_1_M02_AXI_inst_n_2,
      \raddr[31]\(31 downto 0) => \raddr[31]\(31 downto 0),
      \rdata[31]\(31 downto 0) => \rdata[31]\(31 downto 0),
      redolog_dest_data(63 downto 0) => \^redolog_dest_data\(63 downto 0),
      redolog_src_data(63 downto 0) => \^redolog_src_data\(63 downto 0),
      \slv_reg0_reg[16]\(16 downto 0) => \^ulog_offset[31]\(16 downto 0),
      \slv_reg0_reg[26]\(7 downto 3) => \^physical_dest_addr\(4 downto 0),
      \slv_reg0_reg[26]\(2 downto 0) => \^ulog_offset[31]\(19 downto 17),
      \slv_reg0_reg[29]\(6 downto 0) => \^physical_dest_addr\(11 downto 5),
      \slv_reg11_reg[0]\ => undolog_v2_1_M02_AXI_inst_n_12,
      \slv_reg11_reg[0]_0\ => \^dataout[0]\,
      \slv_reg4_reg[14]\(7) => undolog_v2_1_S00_AXI_inst_n_146,
      \slv_reg4_reg[14]\(6) => undolog_v2_1_S00_AXI_inst_n_147,
      \slv_reg4_reg[14]\(5) => undolog_v2_1_S00_AXI_inst_n_148,
      \slv_reg4_reg[14]\(4) => undolog_v2_1_S00_AXI_inst_n_149,
      \slv_reg4_reg[14]\(3) => undolog_v2_1_S00_AXI_inst_n_150,
      \slv_reg4_reg[14]\(2) => undolog_v2_1_S00_AXI_inst_n_151,
      \slv_reg4_reg[14]\(1) => undolog_v2_1_S00_AXI_inst_n_152,
      \slv_reg4_reg[14]\(0) => undolog_v2_1_S00_AXI_inst_n_153,
      \slv_reg4_reg[22]\(2) => undolog_v2_1_S00_AXI_inst_n_224,
      \slv_reg4_reg[22]\(1) => undolog_v2_1_S00_AXI_inst_n_225,
      \slv_reg4_reg[22]\(0) => undolog_v2_1_S00_AXI_inst_n_226,
      \slv_reg4_reg[29]\(6) => undolog_v2_1_S00_AXI_inst_n_233,
      \slv_reg4_reg[29]\(5) => undolog_v2_1_S00_AXI_inst_n_234,
      \slv_reg4_reg[29]\(4) => undolog_v2_1_S00_AXI_inst_n_235,
      \slv_reg4_reg[29]\(3) => undolog_v2_1_S00_AXI_inst_n_236,
      \slv_reg4_reg[29]\(2) => undolog_v2_1_S00_AXI_inst_n_237,
      \slv_reg4_reg[29]\(1) => undolog_v2_1_S00_AXI_inst_n_238,
      \slv_reg4_reg[29]\(0) => undolog_v2_1_S00_AXI_inst_n_239,
      \slv_reg8_reg[14]\(7) => undolog_v2_1_S00_AXI_inst_n_314,
      \slv_reg8_reg[14]\(6) => undolog_v2_1_S00_AXI_inst_n_315,
      \slv_reg8_reg[14]\(5) => undolog_v2_1_S00_AXI_inst_n_316,
      \slv_reg8_reg[14]\(4) => undolog_v2_1_S00_AXI_inst_n_317,
      \slv_reg8_reg[14]\(3) => undolog_v2_1_S00_AXI_inst_n_318,
      \slv_reg8_reg[14]\(2) => undolog_v2_1_S00_AXI_inst_n_319,
      \slv_reg8_reg[14]\(1) => undolog_v2_1_S00_AXI_inst_n_320,
      \slv_reg8_reg[14]\(0) => undolog_v2_1_S00_AXI_inst_n_321,
      \slv_reg8_reg[6]\(7) => undolog_v2_1_S00_AXI_inst_n_154,
      \slv_reg8_reg[6]\(6) => undolog_v2_1_S00_AXI_inst_n_155,
      \slv_reg8_reg[6]\(5) => undolog_v2_1_S00_AXI_inst_n_156,
      \slv_reg8_reg[6]\(4) => undolog_v2_1_S00_AXI_inst_n_157,
      \slv_reg8_reg[6]\(3) => undolog_v2_1_S00_AXI_inst_n_158,
      \slv_reg8_reg[6]\(2) => undolog_v2_1_S00_AXI_inst_n_159,
      \slv_reg8_reg[6]\(1) => undolog_v2_1_S00_AXI_inst_n_160,
      \slv_reg8_reg[6]\(0) => undolog_v2_1_S00_AXI_inst_n_161,
      \waddr[31]\(31 downto 0) => \waddr[31]\(31 downto 0),
      \wdata[31]\(31 downto 0) => \wdata[31]\(31 downto 0)
    );
undolog_v2_1_S00_AXI_inst: entity work.design_1_undolog_0_3_undolog_v2_1_S00_AXI
     port map (
      D(1) => undolog_v2_1_S00_AXI_inst_n_240,
      D(0) => undolog_v2_1_S00_AXI_inst_n_241,
      DI(6) => undolog_v2_1_S00_AXI_inst_n_210,
      DI(5) => undolog_v2_1_S00_AXI_inst_n_211,
      DI(4) => undolog_v2_1_S00_AXI_inst_n_212,
      DI(3) => undolog_v2_1_S00_AXI_inst_n_213,
      DI(2) => undolog_v2_1_S00_AXI_inst_n_214,
      DI(1) => undolog_v2_1_S00_AXI_inst_n_215,
      DI(0) => undolog_v2_1_S00_AXI_inst_n_216,
      DMA_DEST1(29 downto 0) => DMA_DEST1(31 downto 2),
      DMA_DONE_reg => undolog_v2_1_M00_AXI_inst_n_7,
      DMA_DONE_reg_0 => undolog_v2_1_M01_AXI_inst_n_7,
      DMA_DONE_reg_1 => \^memclr_done\,
      DMA_START2 => DMA_START2,
      \FSM_sequential_mst_exec_state_reg[0]\ => undolog_v2_1_S00_AXI_inst_n_275,
      \FSM_sequential_mst_exec_state_reg[0]_0\ => undolog_v2_1_M01_AXI_inst_n_12,
      \FSM_sequential_mst_exec_state_reg[0]_1\ => undolog_v2_1_M00_AXI_inst_n_12,
      \FSM_sequential_mst_exec_state_reg[3]\ => undolog_v2_1_M01_AXI_inst_n_13,
      \FSM_sequential_mst_exec_state_reg[3]_0\ => undolog_v2_1_M00_AXI_inst_n_13,
      Q(31 downto 0) => Q(31 downto 0),
      S(5) => undolog_v2_1_S00_AXI_inst_n_108,
      S(4) => undolog_v2_1_S00_AXI_inst_n_109,
      S(3) => undolog_v2_1_S00_AXI_inst_n_110,
      S(2) => undolog_v2_1_S00_AXI_inst_n_111,
      S(1) => undolog_v2_1_S00_AXI_inst_n_112,
      S(0) => undolog_v2_1_S00_AXI_inst_n_113,
      SR(0) => undolog_v2_1_S00_AXI_inst_n_73,
      \axi_araddr_reg[0]\(0) => undolog_v2_1_S00_AXI_inst_n_74,
      \axi_araddr_reg[2]_0\(0) => undolog_v2_1_S00_AXI_inst_n_75,
      base_offset(63 downto 0) => base_offset(63 downto 0),
      data_copy_pulse => \^data_copy_pulse\,
      \dataout[0]\ => \^dataout[0]\,
      \dataout[1]\ => \^dataout[1]\,
      \dataout[2]\ => \^dataout[2]\,
      in13(7 downto 0) => in13(27 downto 20),
      in24(29 downto 0) => in24(31 downto 2),
      in26(28 downto 0) => in26(31 downto 3),
      log_size(31 downto 0) => log_size(31 downto 0),
      \log_size[31]\(31 downto 0) => \^log_size[31]\(31 downto 0),
      \log_src[31]\(31 downto 0) => \^log_src[31]\(31 downto 0),
      \log_src[63]\(31 downto 0) => \log_src[63]\(31 downto 0),
      logclr_done_reg => logclr_done_reg,
      m00_axi_aresetn => m00_axi_aresetn,
      m01_axi_aresetn => m01_axi_aresetn,
      m02_axi_aresetn => m02_axi_aresetn,
      metadata_done_reg => undolog_v2_1_M02_AXI_inst_n_12,
      \mst_exec_state1__9\ => \mst_exec_state1__9\,
      \operation_type[1]\(1 downto 0) => \operation_type[1]\(1 downto 0),
      \out\(2) => undolog_v2_1_M02_AXI_inst_n_0,
      \out\(1) => undolog_v2_1_M02_AXI_inst_n_1,
      \out\(0) => undolog_v2_1_M02_AXI_inst_n_2,
      \physical_src_addr[28]\(2) => undolog_v2_1_S00_AXI_inst_n_230,
      \physical_src_addr[28]\(1) => undolog_v2_1_S00_AXI_inst_n_231,
      \physical_src_addr[28]\(0) => undolog_v2_1_S00_AXI_inst_n_232,
      \physical_src_addr[28]_0\(3) => undolog_v2_1_S00_AXI_inst_n_322,
      \physical_src_addr[28]_0\(2) => undolog_v2_1_S00_AXI_inst_n_323,
      \physical_src_addr[28]_0\(1) => undolog_v2_1_S00_AXI_inst_n_324,
      \physical_src_addr[28]_0\(0) => undolog_v2_1_S00_AXI_inst_n_325,
      \raddr_reg[15]\(7) => undolog_v2_1_S00_AXI_inst_n_146,
      \raddr_reg[15]\(6) => undolog_v2_1_S00_AXI_inst_n_147,
      \raddr_reg[15]\(5) => undolog_v2_1_S00_AXI_inst_n_148,
      \raddr_reg[15]\(4) => undolog_v2_1_S00_AXI_inst_n_149,
      \raddr_reg[15]\(3) => undolog_v2_1_S00_AXI_inst_n_150,
      \raddr_reg[15]\(2) => undolog_v2_1_S00_AXI_inst_n_151,
      \raddr_reg[15]\(1) => undolog_v2_1_S00_AXI_inst_n_152,
      \raddr_reg[15]\(0) => undolog_v2_1_S00_AXI_inst_n_153,
      \raddr_reg[23]\(7) => undolog_v2_1_S00_AXI_inst_n_154,
      \raddr_reg[23]\(6) => undolog_v2_1_S00_AXI_inst_n_155,
      \raddr_reg[23]\(5) => undolog_v2_1_S00_AXI_inst_n_156,
      \raddr_reg[23]\(4) => undolog_v2_1_S00_AXI_inst_n_157,
      \raddr_reg[23]\(3) => undolog_v2_1_S00_AXI_inst_n_158,
      \raddr_reg[23]\(2) => undolog_v2_1_S00_AXI_inst_n_159,
      \raddr_reg[23]\(1) => undolog_v2_1_S00_AXI_inst_n_160,
      \raddr_reg[23]\(0) => undolog_v2_1_S00_AXI_inst_n_161,
      \raddr_reg[23]_0\(2) => undolog_v2_1_S00_AXI_inst_n_224,
      \raddr_reg[23]_0\(1) => undolog_v2_1_S00_AXI_inst_n_225,
      \raddr_reg[23]_0\(0) => undolog_v2_1_S00_AXI_inst_n_226,
      \raddr_reg[27]\(7) => undolog_v2_1_S00_AXI_inst_n_162,
      \raddr_reg[27]\(6) => undolog_v2_1_S00_AXI_inst_n_163,
      \raddr_reg[27]\(5) => undolog_v2_1_S00_AXI_inst_n_164,
      \raddr_reg[27]\(4) => undolog_v2_1_S00_AXI_inst_n_165,
      \raddr_reg[27]\(3) => undolog_v2_1_S00_AXI_inst_n_166,
      \raddr_reg[27]\(2) => undolog_v2_1_S00_AXI_inst_n_167,
      \raddr_reg[27]\(1) => undolog_v2_1_S00_AXI_inst_n_168,
      \raddr_reg[27]\(0) => undolog_v2_1_S00_AXI_inst_n_169,
      \raddr_reg[31]\(2) => undolog_v2_1_S00_AXI_inst_n_227,
      \raddr_reg[31]\(1) => undolog_v2_1_S00_AXI_inst_n_228,
      \raddr_reg[31]\(0) => undolog_v2_1_S00_AXI_inst_n_229,
      \raddr_reg[31]_0\(6) => undolog_v2_1_S00_AXI_inst_n_233,
      \raddr_reg[31]_0\(5) => undolog_v2_1_S00_AXI_inst_n_234,
      \raddr_reg[31]_0\(4) => undolog_v2_1_S00_AXI_inst_n_235,
      \raddr_reg[31]_0\(3) => undolog_v2_1_S00_AXI_inst_n_236,
      \raddr_reg[31]_0\(2) => undolog_v2_1_S00_AXI_inst_n_237,
      \raddr_reg[31]_0\(1) => undolog_v2_1_S00_AXI_inst_n_238,
      \raddr_reg[31]_0\(0) => undolog_v2_1_S00_AXI_inst_n_239,
      \raddr_reg[31]_1\(7) => undolog_v2_1_S00_AXI_inst_n_314,
      \raddr_reg[31]_1\(6) => undolog_v2_1_S00_AXI_inst_n_315,
      \raddr_reg[31]_1\(5) => undolog_v2_1_S00_AXI_inst_n_316,
      \raddr_reg[31]_1\(4) => undolog_v2_1_S00_AXI_inst_n_317,
      \raddr_reg[31]_1\(3) => undolog_v2_1_S00_AXI_inst_n_318,
      \raddr_reg[31]_1\(2) => undolog_v2_1_S00_AXI_inst_n_319,
      \raddr_reg[31]_1\(1) => undolog_v2_1_S00_AXI_inst_n_320,
      \raddr_reg[31]_1\(0) => undolog_v2_1_S00_AXI_inst_n_321,
      \raddr_reg[31]_2\(3) => undolog_v2_1_S00_AXI_inst_n_326,
      \raddr_reg[31]_2\(2) => undolog_v2_1_S00_AXI_inst_n_327,
      \raddr_reg[31]_2\(1) => undolog_v2_1_S00_AXI_inst_n_328,
      \raddr_reg[31]_2\(0) => undolog_v2_1_S00_AXI_inst_n_329,
      \raddr_reg[7]\(0) => undolog_v2_1_S00_AXI_inst_n_313,
      \rdata_reg[1]\(0) => undolog_v2_1_M01_AXI_inst_n_6,
      redolog_dest_data(63 downto 0) => \^redolog_dest_data\(63 downto 0),
      redolog_src_data(63 downto 0) => \^redolog_src_data\(63 downto 0),
      reg_init_complete => reg_init_complete,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(3 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(3 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg0_reg[26]_0\(4 downto 0) => \^physical_dest_addr\(4 downto 0),
      \slv_reg0_reg[29]_0\(6 downto 0) => \^physical_dest_addr\(11 downto 5),
      start_clobber_reg => start_clobber_reg,
      start_clobber_reg_reg => undolog_v2_1_S00_AXI_inst_n_274,
      start_logclr => start_logclr,
      start_redolog => start_redolog,
      time_cycles(63 downto 0) => time_cycles(63 downto 0),
      ulog_offset(31 downto 0) => ulog_offset(31 downto 0),
      \ulog_offset[31]\(31 downto 0) => \^ulog_offset[31]\(31 downto 0),
      \waddr_reg[1]\(0) => undolog_v2_1_S00_AXI_inst_n_526,
      \waddr_reg[31]\(29 downto 0) => in27(31 downto 2),
      \wdata_reg[0]\(0) => undolog_v2_1_S00_AXI_inst_n_364,
      \wdata_reg[10]\ => undolog_v2_1_S00_AXI_inst_n_355,
      \wdata_reg[11]\ => undolog_v2_1_S00_AXI_inst_n_354,
      \wdata_reg[12]\ => undolog_v2_1_S00_AXI_inst_n_353,
      \wdata_reg[13]\ => undolog_v2_1_S00_AXI_inst_n_352,
      \wdata_reg[14]\ => undolog_v2_1_S00_AXI_inst_n_351,
      \wdata_reg[15]\ => undolog_v2_1_S00_AXI_inst_n_350,
      \wdata_reg[16]\ => undolog_v2_1_S00_AXI_inst_n_349,
      \wdata_reg[17]\ => undolog_v2_1_S00_AXI_inst_n_348,
      \wdata_reg[18]\ => undolog_v2_1_S00_AXI_inst_n_347,
      \wdata_reg[19]\ => undolog_v2_1_S00_AXI_inst_n_346,
      \wdata_reg[20]\ => undolog_v2_1_S00_AXI_inst_n_345,
      \wdata_reg[21]\ => undolog_v2_1_S00_AXI_inst_n_344,
      \wdata_reg[22]\ => undolog_v2_1_S00_AXI_inst_n_343,
      \wdata_reg[23]\ => undolog_v2_1_S00_AXI_inst_n_342,
      \wdata_reg[24]\ => undolog_v2_1_S00_AXI_inst_n_341,
      \wdata_reg[25]\ => undolog_v2_1_S00_AXI_inst_n_340,
      \wdata_reg[26]\ => undolog_v2_1_S00_AXI_inst_n_339,
      \wdata_reg[27]\(7) => undolog_v2_1_S00_AXI_inst_n_202,
      \wdata_reg[27]\(6) => undolog_v2_1_S00_AXI_inst_n_203,
      \wdata_reg[27]\(5) => undolog_v2_1_S00_AXI_inst_n_204,
      \wdata_reg[27]\(4) => undolog_v2_1_S00_AXI_inst_n_205,
      \wdata_reg[27]\(3) => undolog_v2_1_S00_AXI_inst_n_206,
      \wdata_reg[27]\(2) => undolog_v2_1_S00_AXI_inst_n_207,
      \wdata_reg[27]\(1) => undolog_v2_1_S00_AXI_inst_n_208,
      \wdata_reg[27]\(0) => undolog_v2_1_S00_AXI_inst_n_209,
      \wdata_reg[27]_0\(6) => undolog_v2_1_S00_AXI_inst_n_217,
      \wdata_reg[27]_0\(5) => undolog_v2_1_S00_AXI_inst_n_218,
      \wdata_reg[27]_0\(4) => undolog_v2_1_S00_AXI_inst_n_219,
      \wdata_reg[27]_0\(3) => undolog_v2_1_S00_AXI_inst_n_220,
      \wdata_reg[27]_0\(2) => undolog_v2_1_S00_AXI_inst_n_221,
      \wdata_reg[27]_0\(1) => undolog_v2_1_S00_AXI_inst_n_222,
      \wdata_reg[27]_0\(0) => undolog_v2_1_S00_AXI_inst_n_223,
      \wdata_reg[27]_1\ => undolog_v2_1_S00_AXI_inst_n_338,
      \wdata_reg[28]\ => undolog_v2_1_S00_AXI_inst_n_337,
      \wdata_reg[29]\ => undolog_v2_1_S00_AXI_inst_n_336,
      \wdata_reg[2]\ => undolog_v2_1_S00_AXI_inst_n_363,
      \wdata_reg[30]\ => undolog_v2_1_S00_AXI_inst_n_335,
      \wdata_reg[31]\ => undolog_v2_1_S00_AXI_inst_n_332,
      \wdata_reg[31]_0\(31) => undolog_v2_1_S00_AXI_inst_n_494,
      \wdata_reg[31]_0\(30) => undolog_v2_1_S00_AXI_inst_n_495,
      \wdata_reg[31]_0\(29) => undolog_v2_1_S00_AXI_inst_n_496,
      \wdata_reg[31]_0\(28) => undolog_v2_1_S00_AXI_inst_n_497,
      \wdata_reg[31]_0\(27) => undolog_v2_1_S00_AXI_inst_n_498,
      \wdata_reg[31]_0\(26) => undolog_v2_1_S00_AXI_inst_n_499,
      \wdata_reg[31]_0\(25) => undolog_v2_1_S00_AXI_inst_n_500,
      \wdata_reg[31]_0\(24) => undolog_v2_1_S00_AXI_inst_n_501,
      \wdata_reg[31]_0\(23) => undolog_v2_1_S00_AXI_inst_n_502,
      \wdata_reg[31]_0\(22) => undolog_v2_1_S00_AXI_inst_n_503,
      \wdata_reg[31]_0\(21) => undolog_v2_1_S00_AXI_inst_n_504,
      \wdata_reg[31]_0\(20) => undolog_v2_1_S00_AXI_inst_n_505,
      \wdata_reg[31]_0\(19) => undolog_v2_1_S00_AXI_inst_n_506,
      \wdata_reg[31]_0\(18) => undolog_v2_1_S00_AXI_inst_n_507,
      \wdata_reg[31]_0\(17) => undolog_v2_1_S00_AXI_inst_n_508,
      \wdata_reg[31]_0\(16) => undolog_v2_1_S00_AXI_inst_n_509,
      \wdata_reg[31]_0\(15) => undolog_v2_1_S00_AXI_inst_n_510,
      \wdata_reg[31]_0\(14) => undolog_v2_1_S00_AXI_inst_n_511,
      \wdata_reg[31]_0\(13) => undolog_v2_1_S00_AXI_inst_n_512,
      \wdata_reg[31]_0\(12) => undolog_v2_1_S00_AXI_inst_n_513,
      \wdata_reg[31]_0\(11) => undolog_v2_1_S00_AXI_inst_n_514,
      \wdata_reg[31]_0\(10) => undolog_v2_1_S00_AXI_inst_n_515,
      \wdata_reg[31]_0\(9) => undolog_v2_1_S00_AXI_inst_n_516,
      \wdata_reg[31]_0\(8) => undolog_v2_1_S00_AXI_inst_n_517,
      \wdata_reg[31]_0\(7) => undolog_v2_1_S00_AXI_inst_n_518,
      \wdata_reg[31]_0\(6) => undolog_v2_1_S00_AXI_inst_n_519,
      \wdata_reg[31]_0\(5) => undolog_v2_1_S00_AXI_inst_n_520,
      \wdata_reg[31]_0\(4) => undolog_v2_1_S00_AXI_inst_n_521,
      \wdata_reg[31]_0\(3) => undolog_v2_1_S00_AXI_inst_n_522,
      \wdata_reg[31]_0\(2) => undolog_v2_1_S00_AXI_inst_n_523,
      \wdata_reg[31]_0\(1) => undolog_v2_1_S00_AXI_inst_n_524,
      \wdata_reg[31]_0\(0) => undolog_v2_1_S00_AXI_inst_n_525,
      \wdata_reg[3]\ => undolog_v2_1_S00_AXI_inst_n_362,
      \wdata_reg[4]\ => undolog_v2_1_S00_AXI_inst_n_361,
      \wdata_reg[5]\ => undolog_v2_1_S00_AXI_inst_n_360,
      \wdata_reg[6]\ => undolog_v2_1_S00_AXI_inst_n_359,
      \wdata_reg[7]\ => undolog_v2_1_S00_AXI_inst_n_358,
      \wdata_reg[8]\ => undolog_v2_1_S00_AXI_inst_n_357,
      \wdata_reg[9]\(1) => undolog_v2_1_S00_AXI_inst_n_330,
      \wdata_reg[9]\(0) => undolog_v2_1_S00_AXI_inst_n_331,
      \wdata_reg[9]_0\ => undolog_v2_1_S00_AXI_inst_n_356
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_undolog_0_3 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_undolog_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_undolog_0_3 : entity is "design_1_undolog_0_0,undolog_v2_1,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_undolog_0_3 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_undolog_0_3 : entity is "undolog_v2_1,Vivado 2018.2";
end design_1_undolog_0_3;

architecture STRUCTURE of design_1_undolog_0_3 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^dataout\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^log_src\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^m00_axi_araddr\ : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \^m00_axi_awaddr\ : STD_LOGIC_VECTOR ( 6 downto 3 );
  signal \^m01_axi_araddr\ : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \^m01_axi_awaddr\ : STD_LOGIC_VECTOR ( 6 downto 3 );
  signal \^operation_type\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^physical_dest_addr\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^physical_src_addr\ : STD_LOGIC_VECTOR ( 31 downto 20 );
  signal \^regout\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^ulog_offset\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^vaddr_offset\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m00_axi_aclk : signal is "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk";
  attribute X_INTERFACE_INFO of m00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of m00_axi_aresetn : signal is "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  attribute X_INTERFACE_INFO of m00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of m00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of m00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of m00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  attribute X_INTERFACE_INFO of m00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  attribute X_INTERFACE_INFO of m00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m00_axi_rready : signal is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of m00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  attribute X_INTERFACE_INFO of m00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  attribute X_INTERFACE_INFO of m00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  attribute X_INTERFACE_INFO of m01_axi_aclk : signal is "xilinx.com:signal:clock:1.0 M01_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of m01_axi_aclk : signal is "XIL_INTERFACENAME M01_AXI_CLK, ASSOCIATED_BUSIF M01_AXI, ASSOCIATED_RESET m01_axi_aresetn, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk";
  attribute X_INTERFACE_INFO of m01_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 M01_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of m01_axi_aresetn : signal is "XIL_INTERFACENAME M01_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m01_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY";
  attribute X_INTERFACE_INFO of m01_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID";
  attribute X_INTERFACE_INFO of m01_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY";
  attribute X_INTERFACE_INFO of m01_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID";
  attribute X_INTERFACE_INFO of m01_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M01_AXI BREADY";
  attribute X_INTERFACE_INFO of m01_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M01_AXI BVALID";
  attribute X_INTERFACE_INFO of m01_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M01_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m01_axi_rready : signal is "XIL_INTERFACENAME M01_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of m01_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M01_AXI RVALID";
  attribute X_INTERFACE_INFO of m01_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M01_AXI WREADY";
  attribute X_INTERFACE_INFO of m01_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M01_AXI WVALID";
  attribute X_INTERFACE_INFO of m02_axi_aclk : signal is "xilinx.com:signal:clock:1.0 M02_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of m02_axi_aclk : signal is "XIL_INTERFACENAME M02_AXI_CLK, ASSOCIATED_BUSIF M02_AXI, ASSOCIATED_RESET m02_axi_aresetn, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk";
  attribute X_INTERFACE_INFO of m02_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 M02_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of m02_axi_aresetn : signal is "XIL_INTERFACENAME M02_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m02_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M02_AXI ARREADY";
  attribute X_INTERFACE_INFO of m02_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M02_AXI ARVALID";
  attribute X_INTERFACE_INFO of m02_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M02_AXI AWREADY";
  attribute X_INTERFACE_INFO of m02_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M02_AXI AWVALID";
  attribute X_INTERFACE_INFO of m02_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M02_AXI BREADY";
  attribute X_INTERFACE_INFO of m02_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M02_AXI BVALID";
  attribute X_INTERFACE_INFO of m02_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M02_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m02_axi_rready : signal is "XIL_INTERFACENAME M02_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of m02_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M02_AXI RVALID";
  attribute X_INTERFACE_INFO of m02_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M02_AXI WREADY";
  attribute X_INTERFACE_INFO of m02_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M02_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 12, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN design_1_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of m00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of m00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  attribute X_INTERFACE_INFO of m00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_INFO of m00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of m00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  attribute X_INTERFACE_INFO of m00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  attribute X_INTERFACE_INFO of m00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  attribute X_INTERFACE_INFO of m00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of m00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of m01_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR";
  attribute X_INTERFACE_INFO of m01_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT";
  attribute X_INTERFACE_INFO of m01_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR";
  attribute X_INTERFACE_INFO of m01_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT";
  attribute X_INTERFACE_INFO of m01_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M01_AXI BRESP";
  attribute X_INTERFACE_INFO of m01_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M01_AXI RDATA";
  attribute X_INTERFACE_INFO of m01_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M01_AXI RRESP";
  attribute X_INTERFACE_INFO of m01_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M01_AXI WDATA";
  attribute X_INTERFACE_INFO of m01_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB";
  attribute X_INTERFACE_INFO of m02_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M02_AXI ARADDR";
  attribute X_INTERFACE_INFO of m02_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M02_AXI ARPROT";
  attribute X_INTERFACE_INFO of m02_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M02_AXI AWADDR";
  attribute X_INTERFACE_INFO of m02_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M02_AXI AWPROT";
  attribute X_INTERFACE_INFO of m02_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M02_AXI BRESP";
  attribute X_INTERFACE_INFO of m02_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M02_AXI RDATA";
  attribute X_INTERFACE_INFO of m02_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M02_AXI RRESP";
  attribute X_INTERFACE_INFO of m02_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M02_AXI WDATA";
  attribute X_INTERFACE_INFO of m02_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M02_AXI WSTRB";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  dataout(31) <= \<const0>\;
  dataout(30) <= \<const0>\;
  dataout(29) <= \<const0>\;
  dataout(28) <= \<const0>\;
  dataout(27) <= \<const0>\;
  dataout(26) <= \<const0>\;
  dataout(25) <= \<const0>\;
  dataout(24) <= \<const0>\;
  dataout(23) <= \<const0>\;
  dataout(22) <= \<const0>\;
  dataout(21) <= \<const0>\;
  dataout(20) <= \<const0>\;
  dataout(19) <= \<const0>\;
  dataout(18) <= \<const0>\;
  dataout(17) <= \<const0>\;
  dataout(16) <= \<const0>\;
  dataout(15) <= \<const0>\;
  dataout(14) <= \<const0>\;
  dataout(13) <= \<const0>\;
  dataout(12) <= \<const0>\;
  dataout(11) <= \<const0>\;
  dataout(10) <= \<const0>\;
  dataout(9) <= \<const0>\;
  dataout(8) <= \<const0>\;
  dataout(7) <= \<const0>\;
  dataout(6) <= \<const0>\;
  dataout(5) <= \<const0>\;
  dataout(4) <= \<const0>\;
  dataout(3) <= \<const0>\;
  dataout(2 downto 0) <= \^dataout\(2 downto 0);
  log_src(63 downto 0) <= \^log_src\(63 downto 0);
  m00_axi_araddr(31) <= \<const0>\;
  m00_axi_araddr(30) <= \<const1>\;
  m00_axi_araddr(29) <= \<const0>\;
  m00_axi_araddr(28) <= \<const0>\;
  m00_axi_araddr(27) <= \<const0>\;
  m00_axi_araddr(26) <= \<const0>\;
  m00_axi_araddr(25) <= \<const0>\;
  m00_axi_araddr(24) <= \<const0>\;
  m00_axi_araddr(23) <= \<const0>\;
  m00_axi_araddr(22) <= \<const0>\;
  m00_axi_araddr(21) <= \<const0>\;
  m00_axi_araddr(20) <= \<const0>\;
  m00_axi_araddr(19) <= \<const0>\;
  m00_axi_araddr(18) <= \<const0>\;
  m00_axi_araddr(17) <= \<const0>\;
  m00_axi_araddr(16) <= \<const0>\;
  m00_axi_araddr(15) <= \<const0>\;
  m00_axi_araddr(14) <= \<const0>\;
  m00_axi_araddr(13) <= \<const0>\;
  m00_axi_araddr(12) <= \<const0>\;
  m00_axi_araddr(11) <= \<const0>\;
  m00_axi_araddr(10) <= \<const0>\;
  m00_axi_araddr(9) <= \<const0>\;
  m00_axi_araddr(8) <= \<const0>\;
  m00_axi_araddr(7) <= \<const0>\;
  m00_axi_araddr(6) <= \<const0>\;
  m00_axi_araddr(5) <= \^m00_axi_araddr\(4);
  m00_axi_araddr(4) <= \^m00_axi_araddr\(4);
  m00_axi_araddr(3) <= \<const0>\;
  m00_axi_araddr(2) <= \^m00_axi_araddr\(2);
  m00_axi_araddr(1) <= \<const0>\;
  m00_axi_araddr(0) <= \<const0>\;
  m00_axi_arprot(2) <= \<const0>\;
  m00_axi_arprot(1) <= \<const0>\;
  m00_axi_arprot(0) <= \<const1>\;
  m00_axi_awaddr(31) <= \<const0>\;
  m00_axi_awaddr(30) <= \<const1>\;
  m00_axi_awaddr(29) <= \<const0>\;
  m00_axi_awaddr(28) <= \<const0>\;
  m00_axi_awaddr(27) <= \<const0>\;
  m00_axi_awaddr(26) <= \<const0>\;
  m00_axi_awaddr(25) <= \<const0>\;
  m00_axi_awaddr(24) <= \<const0>\;
  m00_axi_awaddr(23) <= \<const0>\;
  m00_axi_awaddr(22) <= \<const0>\;
  m00_axi_awaddr(21) <= \<const0>\;
  m00_axi_awaddr(20) <= \<const0>\;
  m00_axi_awaddr(19) <= \<const0>\;
  m00_axi_awaddr(18) <= \<const0>\;
  m00_axi_awaddr(17) <= \<const0>\;
  m00_axi_awaddr(16) <= \<const0>\;
  m00_axi_awaddr(15) <= \<const0>\;
  m00_axi_awaddr(14) <= \<const0>\;
  m00_axi_awaddr(13) <= \<const0>\;
  m00_axi_awaddr(12) <= \<const0>\;
  m00_axi_awaddr(11) <= \<const0>\;
  m00_axi_awaddr(10) <= \<const0>\;
  m00_axi_awaddr(9) <= \<const0>\;
  m00_axi_awaddr(8) <= \<const0>\;
  m00_axi_awaddr(7) <= \<const0>\;
  m00_axi_awaddr(6 downto 3) <= \^m00_axi_awaddr\(6 downto 3);
  m00_axi_awaddr(2) <= \<const0>\;
  m00_axi_awaddr(1) <= \<const0>\;
  m00_axi_awaddr(0) <= \<const0>\;
  m00_axi_awprot(2) <= \<const0>\;
  m00_axi_awprot(1) <= \<const0>\;
  m00_axi_awprot(0) <= \<const0>\;
  m00_axi_error <= \<const0>\;
  m00_axi_txn_done <= \<const0>\;
  m00_axi_wstrb(3) <= \<const1>\;
  m00_axi_wstrb(2) <= \<const1>\;
  m00_axi_wstrb(1) <= \<const1>\;
  m00_axi_wstrb(0) <= \<const1>\;
  m01_axi_araddr(31) <= \<const0>\;
  m01_axi_araddr(30) <= \<const1>\;
  m01_axi_araddr(29) <= \<const0>\;
  m01_axi_araddr(28) <= \<const0>\;
  m01_axi_araddr(27) <= \<const0>\;
  m01_axi_araddr(26) <= \<const0>\;
  m01_axi_araddr(25) <= \<const0>\;
  m01_axi_araddr(24) <= \<const0>\;
  m01_axi_araddr(23) <= \<const0>\;
  m01_axi_araddr(22) <= \<const0>\;
  m01_axi_araddr(21) <= \<const0>\;
  m01_axi_araddr(20) <= \<const0>\;
  m01_axi_araddr(19) <= \<const0>\;
  m01_axi_araddr(18) <= \<const0>\;
  m01_axi_araddr(17) <= \<const0>\;
  m01_axi_araddr(16) <= \<const0>\;
  m01_axi_araddr(15) <= \<const0>\;
  m01_axi_araddr(14) <= \<const0>\;
  m01_axi_araddr(13) <= \<const0>\;
  m01_axi_araddr(12) <= \<const0>\;
  m01_axi_araddr(11) <= \<const0>\;
  m01_axi_araddr(10) <= \<const0>\;
  m01_axi_araddr(9) <= \<const0>\;
  m01_axi_araddr(8) <= \<const0>\;
  m01_axi_araddr(7) <= \<const0>\;
  m01_axi_araddr(6) <= \<const0>\;
  m01_axi_araddr(5) <= \^m01_axi_araddr\(4);
  m01_axi_araddr(4) <= \^m01_axi_araddr\(4);
  m01_axi_araddr(3) <= \<const0>\;
  m01_axi_araddr(2) <= \^m01_axi_araddr\(2);
  m01_axi_araddr(1) <= \<const0>\;
  m01_axi_araddr(0) <= \<const0>\;
  m01_axi_arprot(2) <= \<const0>\;
  m01_axi_arprot(1) <= \<const0>\;
  m01_axi_arprot(0) <= \<const1>\;
  m01_axi_awaddr(31) <= \<const0>\;
  m01_axi_awaddr(30) <= \<const1>\;
  m01_axi_awaddr(29) <= \<const0>\;
  m01_axi_awaddr(28) <= \<const0>\;
  m01_axi_awaddr(27) <= \<const0>\;
  m01_axi_awaddr(26) <= \<const0>\;
  m01_axi_awaddr(25) <= \<const0>\;
  m01_axi_awaddr(24) <= \<const0>\;
  m01_axi_awaddr(23) <= \<const0>\;
  m01_axi_awaddr(22) <= \<const0>\;
  m01_axi_awaddr(21) <= \<const0>\;
  m01_axi_awaddr(20) <= \<const0>\;
  m01_axi_awaddr(19) <= \<const0>\;
  m01_axi_awaddr(18) <= \<const0>\;
  m01_axi_awaddr(17) <= \<const0>\;
  m01_axi_awaddr(16) <= \<const0>\;
  m01_axi_awaddr(15) <= \<const0>\;
  m01_axi_awaddr(14) <= \<const0>\;
  m01_axi_awaddr(13) <= \<const0>\;
  m01_axi_awaddr(12) <= \<const0>\;
  m01_axi_awaddr(11) <= \<const0>\;
  m01_axi_awaddr(10) <= \<const0>\;
  m01_axi_awaddr(9) <= \<const0>\;
  m01_axi_awaddr(8) <= \<const0>\;
  m01_axi_awaddr(7) <= \<const0>\;
  m01_axi_awaddr(6 downto 3) <= \^m01_axi_awaddr\(6 downto 3);
  m01_axi_awaddr(2) <= \<const0>\;
  m01_axi_awaddr(1) <= \<const0>\;
  m01_axi_awaddr(0) <= \<const0>\;
  m01_axi_awprot(2) <= \<const0>\;
  m01_axi_awprot(1) <= \<const0>\;
  m01_axi_awprot(0) <= \<const0>\;
  m01_axi_error <= \<const0>\;
  m01_axi_txn_done <= \<const0>\;
  m01_axi_wstrb(3) <= \<const1>\;
  m01_axi_wstrb(2) <= \<const1>\;
  m01_axi_wstrb(1) <= \<const1>\;
  m01_axi_wstrb(0) <= \<const1>\;
  m02_axi_arprot(2) <= \<const0>\;
  m02_axi_arprot(1) <= \<const0>\;
  m02_axi_arprot(0) <= \<const1>\;
  m02_axi_awprot(2) <= \<const0>\;
  m02_axi_awprot(1) <= \<const0>\;
  m02_axi_awprot(0) <= \<const0>\;
  m02_axi_error <= \<const0>\;
  m02_axi_txn_done <= \<const0>\;
  m02_axi_wstrb(3) <= \<const1>\;
  m02_axi_wstrb(2) <= \<const1>\;
  m02_axi_wstrb(1) <= \<const1>\;
  m02_axi_wstrb(0) <= \<const1>\;
  operation_type(2) <= \<const0>\;
  operation_type(1 downto 0) <= \^operation_type\(1 downto 0);
  physical_dest_addr(31 downto 20) <= \^physical_dest_addr\(31 downto 20);
  physical_dest_addr(19 downto 2) <= \^ulog_offset\(19 downto 2);
  physical_dest_addr(1) <= \^physical_dest_addr\(1);
  physical_dest_addr(0) <= \^ulog_offset\(0);
  physical_src_addr(31 downto 20) <= \^physical_src_addr\(31 downto 20);
  physical_src_addr(19 downto 0) <= \^log_src\(19 downto 0);
  regout(31 downto 16) <= \^regout\(31 downto 16);
  regout(15 downto 4) <= \^vaddr_offset\(11 downto 0);
  regout(3 downto 0) <= \^regout\(3 downto 0);
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  start_ulog <= \<const0>\;
  ulog_offset(63 downto 2) <= \^ulog_offset\(63 downto 2);
  ulog_offset(1) <= \^physical_dest_addr\(1);
  ulog_offset(0) <= \^ulog_offset\(0);
  vaddr_offset(27 downto 12) <= \^regout\(31 downto 16);
  vaddr_offset(11 downto 0) <= \^vaddr_offset\(11 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_undolog_0_3_undolog_v2_1
     port map (
      Q(31 downto 16) => \^regout\(31 downto 16),
      Q(15 downto 4) => \^vaddr_offset\(11 downto 0),
      Q(3 downto 0) => \^regout\(3 downto 0),
      base_offset(63 downto 0) => base_offset(63 downto 0),
      data_copy_pulse => data_copy_pulse,
      datacpy_done => datacpy_done,
      datacpy_state(3 downto 0) => datacpy_state(3 downto 0),
      \dataout[0]\ => \^dataout\(0),
      \dataout[1]\ => \^dataout\(1),
      \dataout[2]\ => \^dataout\(2),
      log_size(31 downto 0) => log_size(63 downto 32),
      \log_size[31]\(31 downto 0) => log_size(31 downto 0),
      \log_src[31]\(31 downto 0) => \^log_src\(31 downto 0),
      \log_src[63]\(31 downto 0) => \^log_src\(63 downto 32),
      logclr_done_reg => logclr_done_reg,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(1) => \^m00_axi_araddr\(4),
      m00_axi_araddr(0) => \^m00_axi_araddr\(2),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arready => m00_axi_arready,
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_awaddr(3 downto 0) => \^m00_axi_awaddr\(6 downto 3),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_rdata(31 downto 0) => m00_axi_rdata(31 downto 0),
      m00_axi_rready => m00_axi_rready,
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_wdata(31 downto 0) => m00_axi_wdata(31 downto 0),
      m00_axi_wready => m00_axi_wready,
      m00_axi_wvalid => m00_axi_wvalid,
      m01_axi_aclk => m01_axi_aclk,
      m01_axi_araddr(1) => \^m01_axi_araddr\(4),
      m01_axi_araddr(0) => \^m01_axi_araddr\(2),
      m01_axi_aresetn => m01_axi_aresetn,
      m01_axi_arready => m01_axi_arready,
      m01_axi_arvalid => m01_axi_arvalid,
      m01_axi_awaddr(3 downto 0) => \^m01_axi_awaddr\(6 downto 3),
      m01_axi_awready => m01_axi_awready,
      m01_axi_awvalid => m01_axi_awvalid,
      m01_axi_bready => m01_axi_bready,
      m01_axi_bvalid => m01_axi_bvalid,
      m01_axi_rdata(31 downto 0) => m01_axi_rdata(31 downto 0),
      m01_axi_rready => m01_axi_rready,
      m01_axi_rvalid => m01_axi_rvalid,
      m01_axi_wdata(31 downto 0) => m01_axi_wdata(31 downto 0),
      m01_axi_wready => m01_axi_wready,
      m01_axi_wvalid => m01_axi_wvalid,
      m02_axi_aclk => m02_axi_aclk,
      m02_axi_araddr(31 downto 0) => m02_axi_araddr(31 downto 0),
      m02_axi_aresetn => m02_axi_aresetn,
      m02_axi_arready => m02_axi_arready,
      m02_axi_arvalid => m02_axi_arvalid,
      m02_axi_awaddr(31 downto 0) => m02_axi_awaddr(31 downto 0),
      m02_axi_awready => m02_axi_awready,
      m02_axi_awvalid => m02_axi_awvalid,
      m02_axi_bready => m02_axi_bready,
      m02_axi_bvalid => m02_axi_bvalid,
      m02_axi_rdata(31 downto 0) => m02_axi_rdata(31 downto 0),
      m02_axi_rready => m02_axi_rready,
      m02_axi_rvalid => m02_axi_rvalid,
      m02_axi_wdata(31 downto 0) => m02_axi_wdata(31 downto 0),
      m02_axi_wready => m02_axi_wready,
      m02_axi_wvalid => m02_axi_wvalid,
      memclr_done => memclr_done,
      memclr_state(3 downto 0) => memclr_state(3 downto 0),
      metadata_done => metadata_done,
      metadatacpy_state(3 downto 0) => metadatacpy_state(3 downto 0),
      \operation_type[1]\(1 downto 0) => \^operation_type\(1 downto 0),
      physical_dest_addr(11 downto 0) => \^physical_dest_addr\(31 downto 20),
      physical_src_addr(11 downto 0) => \^physical_src_addr\(31 downto 20),
      \raddr[31]\(31 downto 0) => raddr(31 downto 0),
      \rdata[31]\(31 downto 0) => rdata(31 downto 0),
      redolog_dest_data(63 downto 0) => redolog_dest_data(63 downto 0),
      redolog_src_data(63 downto 0) => redolog_src_data(63 downto 0),
      reg_init_complete => reg_init_complete,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(5 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(5 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      start_logclr => start_logclr,
      start_redolog => start_redolog,
      time_cycles(63 downto 0) => time_cycles(63 downto 0),
      ulog_offset(31 downto 0) => \^ulog_offset\(63 downto 32),
      \ulog_offset[31]\(31 downto 2) => \^ulog_offset\(31 downto 2),
      \ulog_offset[31]\(1) => \^physical_dest_addr\(1),
      \ulog_offset[31]\(0) => \^ulog_offset\(0),
      \waddr[31]\(31 downto 0) => waddr(31 downto 0),
      \wdata[31]\(31 downto 0) => wdata(31 downto 0)
    );
end STRUCTURE;
