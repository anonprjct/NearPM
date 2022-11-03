`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2020 08:51:29 PM
// Design Name: 
// Module Name: metadata_gen
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


module metadata_gen(
    input [63:0] ulog_offset,
    input [63:0] base_offset,
    input [63:0] log_src,
    input [63:0] log_size,
    input start_ulog,
    input clk,
    input reset
    );
    
    reg [3:0] metadata_state;
    
    always@(posedge clk) begin
        if(reset) begin
            metadata_state <= 4'd0;
        end
        else begin
            case (metadata_state)                                                                                                                           
                default:                                                                
                begin                                                                  
                    metadata_state <= 4'b0000;
                end
            endcase
    
    end
    
    
    
endmodule
