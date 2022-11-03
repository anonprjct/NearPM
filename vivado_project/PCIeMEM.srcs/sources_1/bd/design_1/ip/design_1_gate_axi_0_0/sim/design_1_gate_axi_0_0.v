// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:gate_axi:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_gate_axi_0_0 (
  clk_src,
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
  ndp_not_inuse_out
);

input wire clk_src;
input wire clk_dest;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
input wire awvalid_in;
input wire awready_in;
input wire arvalid_in;
input wire arready_in;
input wire wvalid_in;
input wire wready_in;
input wire bvalid_in;
input wire bready_in;
input wire rvalid_in;
input wire rready_in;
input wire [31 : 0] awaddr_in;
input wire ndp_not_inuse;
output wire awvalid_out;
output wire awready_out;
output wire arvalid_out;
output wire arready_out;
output wire wvalid_out;
output wire wready_out;
output wire bvalid_out;
output wire bready_out;
output wire rvalid_out;
output wire rready_out;
output wire [31 : 0] awaddr_out;
output wire ndp_not_inuse_out;

  gate_axi inst (
    .clk_src(clk_src),
    .clk_dest(clk_dest),
    .aresetn(aresetn),
    .awvalid_in(awvalid_in),
    .awready_in(awready_in),
    .arvalid_in(arvalid_in),
    .arready_in(arready_in),
    .wvalid_in(wvalid_in),
    .wready_in(wready_in),
    .bvalid_in(bvalid_in),
    .bready_in(bready_in),
    .rvalid_in(rvalid_in),
    .rready_in(rready_in),
    .awaddr_in(awaddr_in),
    .ndp_not_inuse(ndp_not_inuse),
    .awvalid_out(awvalid_out),
    .awready_out(awready_out),
    .arvalid_out(arvalid_out),
    .arready_out(arready_out),
    .wvalid_out(wvalid_out),
    .wready_out(wready_out),
    .bvalid_out(bvalid_out),
    .bready_out(bready_out),
    .rvalid_out(rvalid_out),
    .rready_out(rready_out),
    .awaddr_out(awaddr_out),
    .ndp_not_inuse_out(ndp_not_inuse_out)
  );
endmodule
