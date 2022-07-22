`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2021 09:00:52 AM
// Design Name: 
// Module Name: vaddr_valid_reg
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


module vaddr_valid_reg(
       input offset_valid,
       input clk,
       input aresetn,
       input ndp_done,
       input [63:0] offset,
       input [63:0] offset_reg1,
       output reg offset_reg1_valid,
       output reg offset_reg2_valid,
       output reg [1:0] vaddr_offset_count
           

    );
    
    always@(posedge clk)begin
        if(aresetn == 1'b0 || ndp_done) begin
            vaddr_offset_count <= 2'b00;
            offset_reg1_valid <= 1'b0;
            offset_reg2_valid <= 1'b0;
        end
        else begin
            if(ndp_done == 1'b1)
                begin
                    vaddr_offset_count <= 2'b00;
                    offset_reg1_valid <= 1'b0;
                    offset_reg2_valid <= 1'b0;
                end     
            else if(offset_valid == 1'b1 && vaddr_offset_count == 2'b00)
                begin
                    //offset_reg1 <= offset;
                    vaddr_offset_count <= 2'b01;
                    offset_reg1_valid <= 1'b1;
                end                                   
            else if(offset_valid == 1'b1 && vaddr_offset_count == 2'b01 && offset != offset_reg1)
                begin
                    //offset_reg2 <= offset;
                    vaddr_offset_count <= 2'b10;
                    offset_reg2_valid <= 1'b1;
                end
        end
    end
 endmodule
