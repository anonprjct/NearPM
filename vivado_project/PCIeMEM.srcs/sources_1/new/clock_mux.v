`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 07:07:28 PM
// Design Name: 
// Module Name: clock_mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clock_mux(
    input clk_fast,
    input clk_slow,
    input clk_sel,
    output clk_out
    );
    
    BUFGMUX_CTRL BUFGMUX_CTRL_inst (
          .O(clk_out),   // 1-bit output: Clock output
          .I0(clk_slow), // 1-bit input: Clock input (S=0)
          .I1(clk_fast), // 1-bit input: Clock input (S=1)
          .S(clk_sel)    // 1-bit input: Clock select
    );    
endmodule
