`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 10:31:01 PM
// Design Name: 
// Module Name: gate_ready
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


module gate_ready(
    input clk,
    input aresetn,
    input wlast,
    input awready_in,
    input wready_in,
    input bready_in,
    input arready_in,
    input rready_in,
    input ndp_not_inuse,
    output awready_out,
    output wready_out,
    output bready_out,
    output arready_out,
    output rready_out
    );
     reg end_writetx;
       always@(posedge clk) begin  
               end_writetx <= 1'b1;      
               if(wlast == 1'b1 && ndp_not_inuse ==1'b0)
                   end_writetx <=1'b0;
               if(ndp_not_inuse ==1'b1)
                   end_writetx <= 1'b1;
       end
    //assign awready_out = ndp_not_inuse & awready_in;
    assign awready_out = end_writetx & awready_in;
    assign wready_out = wready_in;
    assign bready_out = bready_in;
    //assign bready_out = bready_in;
    //assign arready_out = ndp_not_inuse & arready_in;
    assign arready_out = arready_in;
    //assign rready_out = ndp_not_inuse & rready_in;
    assign rready_out =  rready_in;
endmodule
