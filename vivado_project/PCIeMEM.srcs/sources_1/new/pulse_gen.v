`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2021 07:35:12 PM
// Design Name: 
// Module Name: pulse_gen
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


module pulse_gen(
    input clk,
    input aresetn,
    output reg pulse
    );
    reg [31:0] count;
    always@(posedge clk) begin
    if(aresetn == 1'd0) begin
        count <= 32'd0;
        pulse <= 1'b0;
    end
    else begin
    count <= count + 32'd1;
    if(count<25)
        pulse <=1'b1;
    else
        pulse <=1'b0;
        
    if(count==50)
        count <=32'd0;
    end
    end
endmodule
