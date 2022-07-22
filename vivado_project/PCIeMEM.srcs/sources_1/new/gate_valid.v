`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2021 04:47:08 PM
// Design Name: 
// Module Name: gate_valid
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


module gate_valid(
  input clk,
  input aresetn,
  input awvalid_in,
  input wvalid_in,
  input bvalid_in,
  input arvalid_in,
  input rvalid_in,
  input ndp_not_inuse,
  input wlast,
  output awvalid_out,
  output wvalid_out,
  output bvalid_out,
  output arvalid_out,
  output rvalid_out
    );
    reg end_writetx;
    always@(posedge clk) begin
        if(aresetn == 1'b0) begin
            end_writetx <= 1'b1;
        end
        else begin      
            end_writetx <= 1'b1;      
            if(wlast == 1'b1)
                end_writetx <=1'b0;
            if(ndp_not_inuse ==1'b1)
                end_writetx <= 1'b1;
        end        
    end
       assign awvalid_out = ndp_not_inuse & awvalid_in;
       //assign awvalid_out = end_writetx & awvalid_in;
       assign wvalid_out = ndp_not_inuse & wvalid_in;
       //assign wvalid_out = wvalid_in;
       assign bvalid_out = ndp_not_inuse & bvalid_in;
       //assign bvalid_out = bvalid_in;
       //assign bready_out = bready_in;
       //assign arready_out = ndp_not_inuse & arready_in;
       assign arvalid_out = arvalid_in;
       //assign rready_out = ndp_not_inuse & rready_in;
       assign rvalid_out =  rvalid_in;
endmodule
