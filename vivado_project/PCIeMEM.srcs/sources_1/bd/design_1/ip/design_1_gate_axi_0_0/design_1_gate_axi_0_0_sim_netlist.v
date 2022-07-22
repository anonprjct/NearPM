// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sat Mar 20 01:32:59 2021
// Host        : desk053 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/oem/RTL/backups/Undolog2/PCIeMEM/PCIeMEM.srcs/sources_1/bd/design_1/ip/design_1_gate_axi_0_0/design_1_gate_axi_0_0_sim_netlist.v
// Design      : design_1_gate_axi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_gate_axi_0_0,gate_axi,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "gate_axi,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_gate_axi_0_0
   (clk_src,
    clk_dest,
    aresetn,
    awvalid_in,
    awready_in,
    arvalid_in,
    arready_in,
    wvalid_in,
    wready_in,
    bvalid_in,
    bready_in,
    rvalid_in,
    rready_in,
    awaddr_in,
    ndp_not_inuse,
    awvalid_out,
    awready_out,
    arvalid_out,
    arready_out,
    wvalid_out,
    wready_out,
    bvalid_out,
    bready_out,
    rvalid_out,
    rready_out,
    awaddr_out,
    ndp_not_inuse_out);
  input clk_src;
  input clk_dest;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *) input aresetn;
  input awvalid_in;
  input awready_in;
  input arvalid_in;
  input arready_in;
  input wvalid_in;
  input wready_in;
  input bvalid_in;
  input bready_in;
  input rvalid_in;
  input rready_in;
  input [31:0]awaddr_in;
  input ndp_not_inuse;
  output awvalid_out;
  output awready_out;
  output arvalid_out;
  output arready_out;
  output wvalid_out;
  output wready_out;
  output bvalid_out;
  output bready_out;
  output rvalid_out;
  output rready_out;
  output [31:0]awaddr_out;
  output ndp_not_inuse_out;

  wire aresetn;
  wire arready_in;
  wire arvalid_in;
  wire [31:0]awaddr_in;
  wire [31:0]awaddr_out;
  wire awready_in;
  wire awready_out;
  wire awvalid_in;
  wire awvalid_out;
  wire bready_in;
  wire bvalid_in;
  wire clk_dest;
  wire clk_src;
  wire ndp_not_inuse;
  wire ndp_not_inuse_out;
  wire rready_in;
  wire rvalid_in;
  wire wready_in;
  wire wvalid_in;

  assign arready_out = arready_in;
  assign arvalid_out = arvalid_in;
  assign bready_out = bready_in;
  assign bvalid_out = bvalid_in;
  assign rready_out = rready_in;
  assign rvalid_out = rvalid_in;
  assign wready_out = wready_in;
  assign wvalid_out = wvalid_in;
  design_1_gate_axi_0_0_gate_axi inst
       (.aresetn(aresetn),
        .awaddr_in(awaddr_in),
        .awaddr_out(awaddr_out),
        .awready_in(awready_in),
        .awready_out(awready_out),
        .awvalid_in(awvalid_in),
        .awvalid_out(awvalid_out),
        .bvalid_in(bvalid_in),
        .clk_dest(clk_dest),
        .clk_src(clk_src),
        .ndp_not_inuse(ndp_not_inuse),
        .ndp_not_inuse_out(ndp_not_inuse_out),
        .wvalid_in(wvalid_in));
endmodule

(* ORIG_REF_NAME = "gate_axi" *) 
module design_1_gate_axi_0_0_gate_axi
   (awaddr_out,
    awready_out,
    ndp_not_inuse_out,
    awvalid_out,
    bvalid_in,
    wvalid_in,
    awvalid_in,
    awaddr_in,
    clk_src,
    ndp_not_inuse,
    clk_dest,
    aresetn,
    awready_in);
  output [31:0]awaddr_out;
  output awready_out;
  output ndp_not_inuse_out;
  output awvalid_out;
  input bvalid_in;
  input wvalid_in;
  input awvalid_in;
  input [31:0]awaddr_in;
  input clk_src;
  input ndp_not_inuse;
  input clk_dest;
  input aresetn;
  input awready_in;

  wire aresetn;
  wire [31:0]awaddr_in;
  wire [31:0]awaddr_out;
  wire awready_in;
  wire awready_out;
  wire awvalid_in;
  wire awvalid_out;
  wire bvalid_in;
  wire clk_dest;
  wire clk_src;
  wire ndp_not_inuse;
  wire ndp_not_inuse_out;
  wire ndp_not_inuse_sync;
  wire stall_set;
  wire stall_set_i_1_n_0;
  wire wvalid_in;

  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[0]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[0]),
        .O(awaddr_out[0]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[10]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[10]),
        .O(awaddr_out[10]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[11]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[11]),
        .O(awaddr_out[11]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[12]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[12]),
        .O(awaddr_out[12]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[13]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[13]),
        .O(awaddr_out[13]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[14]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[14]),
        .O(awaddr_out[14]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[15]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[15]),
        .O(awaddr_out[15]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[16]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[16]),
        .O(awaddr_out[16]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[17]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[17]),
        .O(awaddr_out[17]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[18]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[18]),
        .O(awaddr_out[18]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[19]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[19]),
        .O(awaddr_out[19]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[1]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[1]),
        .O(awaddr_out[1]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[20]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[20]),
        .O(awaddr_out[20]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[21]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[21]),
        .O(awaddr_out[21]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[22]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[22]),
        .O(awaddr_out[22]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[23]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[23]),
        .O(awaddr_out[23]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[24]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[24]),
        .O(awaddr_out[24]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[25]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[25]),
        .O(awaddr_out[25]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[26]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[26]),
        .O(awaddr_out[26]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[27]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[27]),
        .O(awaddr_out[27]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[28]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[28]),
        .O(awaddr_out[28]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[29]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[29]),
        .O(awaddr_out[29]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[2]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[2]),
        .O(awaddr_out[2]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[30]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[30]),
        .O(awaddr_out[30]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[31]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[31]),
        .O(awaddr_out[31]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[3]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[3]),
        .O(awaddr_out[3]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[4]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[4]),
        .O(awaddr_out[4]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[5]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[5]),
        .O(awaddr_out[5]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[6]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[6]),
        .O(awaddr_out[6]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[7]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[7]),
        .O(awaddr_out[7]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[8]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[8]),
        .O(awaddr_out[8]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \awaddr_out[9]_INST_0 
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awaddr_in[9]),
        .O(awaddr_out[9]));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    awready_out_INST_0
       (.I0(stall_set),
        .I1(ndp_not_inuse_sync),
        .I2(bvalid_in),
        .I3(wvalid_in),
        .I4(awvalid_in),
        .I5(awready_in),
        .O(awready_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h4)) 
    awvalid_out_INST_0
       (.I0(stall_set),
        .I1(awvalid_in),
        .O(awvalid_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    ndp_not_inuse_out_INST_0
       (.I0(awvalid_in),
        .I1(wvalid_in),
        .I2(bvalid_in),
        .I3(ndp_not_inuse_sync),
        .I4(stall_set),
        .O(ndp_not_inuse_out));
  LUT6 #(
    .INIT(64'h000000000000FF01)) 
    stall_set_i_1
       (.I0(awvalid_in),
        .I1(wvalid_in),
        .I2(bvalid_in),
        .I3(stall_set),
        .I4(ndp_not_inuse_sync),
        .I5(aresetn),
        .O(stall_set_i_1_n_0));
  FDRE stall_set_reg
       (.C(clk_dest),
        .CE(1'b1),
        .D(stall_set_i_1_n_0),
        .Q(stall_set),
        .R(1'b0));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_gate_axi_0_0_xpm_cdc_single xpm_cdc_single_inst
       (.dest_clk(clk_dest),
        .dest_out(ndp_not_inuse_sync),
        .src_clk(clk_src),
        .src_in(ndp_not_inuse));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_gate_axi_0_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_clk;
  wire src_ff;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(src_ff),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_ff),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
