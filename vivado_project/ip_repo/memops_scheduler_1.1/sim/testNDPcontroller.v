`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2021 10:03:07 AM
// Design Name: 
// Module Name: testNDPcontroller
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


module testNDPcontroller;
   reg clk;
   reg reset;
   reg [7:0] ndp_status;
   reg [7:0] ndp_done;
   reg [31:0] sw_cmd;
   reg [31:0] sw_reset;
   wire [31:0] ndp_complete;
   wire [7:0] ndp_start;
   wire [63:0] time_cycles;
   wire [7:0] read_ptr;
   wire [7:0] write_ptr;
   wire clobber_enable;
   wire offset_read_enable;
   wire [11:0] offset_read_addr;
   
   wire [7:0] max_write_read_diff; 
    
    
   NDPcontroller dut(
   .clk(clk),
   .reset(reset),
   .ndp_status(ndp_status),
   .ndp_done(ndp_done),
   .sw_cmd(sw_cmd),
   .sw_reset(sw_reset),
   .ndp_complete(ndp_complete),
   .ndp_start(ndp_start),
   .time_cycles(time_cycles),
   .read_ptr(read_ptr),
   .write_ptr(write_ptr),
   .clobber_enable(clobber_enable),
   .max_write_read_diff(max_write_read_diff),
   .offset_read_enable(offset_read_enable),
   .offset_read_addr(offset_read_addr)
   );
    
   initial begin
     clk = 1'b0;
     reset = 1'b1;
     ndp_status = 7'd0;
     ndp_done = 7'd0;
     sw_cmd = 32'd0;
     sw_reset = 32'd0;
     #10
     reset = 1'b0;
     #10
     reset = 1'b1;
     sw_cmd = 32'hdead0007;
     #10
     sw_cmd = 32'd0;
     ndp_status = 7'd0;
     #10
     sw_cmd = 32'hcccc0008;
     #10
     sw_cmd = 32'd0;
     #10
     ndp_done = 7'd3;
     #10
     ndp_done = 7'd0;
     #10
     ndp_done = 7'd0;
     #80
     sw_reset = 32'd7;
     #10
     sw_reset = 32'd0;
        #10
        sw_cmd = 32'hdeae0007;
        #10
        sw_cmd = 32'd0;
        ndp_status = 7'd0;
        #10
        sw_cmd = 32'habcd0007;
        #10
        sw_cmd = 32'd0;
        #10
        ndp_done = 7'd3;
        #10
        ndp_done = 7'd0;
        #10
        ndp_done = 7'd0;
        #80
        sw_reset = 32'd7;
        #10
        sw_reset = 32'd0;
   end
   
   always begin
     #5 clk = !clk;
   end
endmodule
