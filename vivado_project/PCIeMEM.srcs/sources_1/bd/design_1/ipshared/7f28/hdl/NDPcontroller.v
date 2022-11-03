`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2021 09:47:27 AM
// Design Name: 
// Module Name: NDPcontroller
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


module NDPcontroller(
    input clk,
    input reset,
    //input [7:0] ndp_status,
    input [7:0] ndp_done,
    input [31:0] sw_cmd,
    input [31:0] sw_start_cmd,
    input [31:0] sw_reset,
    input [63:0] src,
    input [63:0] size,
    input [31:0] axi_awaddr,
    input axi_awvalid,
    input [63:0] offset,
    input offset_valid,
    output [7:0] ndp_status_reg,
    output reg [31:0] ndp_complete,
    output reg [7:0] ndp_start,
    output reg [63:0] time_cycles,
    output wire [7:0] read_ptr_out,
    output reg [7:0] write_ptr,
    output [4:0] start_count,
    output [4:0] done_count,
    output clobber_enable,
    output reg [7:0] max_write_read_diff,
    output reg offset_read_enable,
    output reg [11:0] offset_read_addr,
    output reg [11:0] offset_read_addr2,
    output reg [2:0] operation_type,
    output [7:0] redo_log_assigned,
    output  has_dependence,
    output [4:0] started_logs,
    output [30:0] fifo_entry_valid,
    output reg [16:0] write_conflict,
    output stall_proc,
    output [31:0] stall_addr

    );
    //operation types
    // 3'b001 - undo log or undo log +clobber
    // 3'b010 - redo log
    // 3'b011 - clobber
    
    
    //last 4 registers reserved for control
    reg [4:0] start_count;
    reg schedule_cmd;
    reg [31:0] clobber_reg;
    reg start_timer;
    reg stop_timer;
    reg [7:0]  read_ptr;
    reg inv_cycle;
    reg [30:0] fifo_entry_valid;
    reg [15:0] swcmd_d1;
    reg [15:0] swcmd_d2;
    reg [1:0] datacpy_state;
    reg data_copy_started;
    reg [7:0] read_ptr_d1;
    
    //setting write pointer
    assign clobber_enable = clobber_reg[read_ptr>>3];
    always @(posedge clk)
    begin
       if ( reset == 1'b0 )
           begin
             write_ptr  <= 8'd0;
             start_count <= 4'd0;
             start_timer <= 1'b0;
             clobber_reg <= 32'd0;
             offset_read_enable <= 1'b0;
             offset_read_addr <= 12'd0;
             offset_read_addr2 <= 12'd0;
             operation_type <= 3'd0;
             inv_cycle <= 1'b0;
             fifo_entry_valid <= 31'd0;
             swcmd_d1 <= 16'd0;
             swcmd_d2 <= 16'd0;
             datacpy_state <= 2'd0;
             data_copy_started <= 1'b0;
           end
         else
           begin
             offset_read_enable <= 1'b0;
             inv_cycle <= 1'b0;
             swcmd_d1 <= sw_cmd[15:0];
             swcmd_d2 <= swcmd_d1;
             //write pointer handling
             if( sw_start_cmd[15:0] == 32'd7 || sw_start_cmd[15:0] == 32'd8 || sw_start_cmd[15:0] == 32'd9 || sw_start_cmd[15:0] == 32'd6)
             begin         
             
                    fifo_entry_valid[write_ptr >> 3] <= 1'b1;   
                   
                    
                    if( write_ptr == 32'd240 ) begin
                        write_ptr <= 32'd0;
                    end
                    else begin
                        write_ptr <= write_ptr + 32'd8;
                    end
                    
                    if( sw_start_cmd[15:0] == 32'd8 || sw_start_cmd[15:0] == 32'd7 || sw_start_cmd[15:0] == 32'd6)
                        start_count <= start_count + 8'd1;
             end
             
             if(read_ptr == 5'd0)
                fifo_entry_valid[30] <= 1'b0;
             else
                fifo_entry_valid[(read_ptr - 5'd8) >> 3] <= 1'b0;    
                
             //undo log
             if( sw_cmd[15:0] == 16'd7 && !inv_cycle)
                begin           
                    clobber_reg[write_ptr >> 3] <= 1'b0;            
                    //start_count <= start_count + 8'd1;
                    //write_ptr <= write_ptr + 32'd8;
                    start_timer <= 1'b1;
                    offset_read_enable <= 1'b1;
                    offset_read_addr <= sw_cmd[27:16];
                    operation_type <= 3'd1;
                    inv_cycle <= 1'b1;
                end
             //undo + clobber
             if( sw_cmd[15:0] == 16'd8 && !inv_cycle)
                begin                  
                    clobber_reg[write_ptr >> 3] <= 1'b1;      
                    //start_count <= start_count + 8'd1;
                   // write_ptr <= write_ptr + 32'd8;
                    start_timer <= 1'b1;
                    offset_read_enable <= 1'b1;
                    offset_read_addr <= sw_cmd[27:16];
                    operation_type <= 3'd1;
                    inv_cycle <= 1'b1;
                end
              //redo log
              if( sw_cmd[15:0] == 16'd9 && !inv_cycle)
                begin                  
                    clobber_reg[write_ptr >> 3] <= 1'b0;      
                   // start_count <= start_count + 8'd1;
                   // write_ptr <= write_ptr + 32'd8;
                    start_timer <= 1'b1;
                    offset_read_enable <= 1'b1;
                    offset_read_addr <= sw_cmd[27:16];
                    operation_type <= 3'd2;
                    inv_cycle <= 1'b1;
                end
             //data copy
              if( sw_cmd[15:0] == 16'd6 && !inv_cycle && !data_copy_started)
              begin                  
                clobber_reg[write_ptr >> 3] <= 1'b0;      
                // start_count <= start_count + 8'd1;
                // write_ptr <= write_ptr + 32'd8;
                start_timer <= 1'b1;
                offset_read_enable <= 1'b1;
                offset_read_addr <= {6'd0,sw_cmd[21:16]};
                offset_read_addr2 <= {6'd0,sw_cmd[27:22]};
                operation_type <= 3'd3;
                inv_cycle <= 1'b1;
                datacpy_state <= 2'd1;
                data_copy_started <=1'b1;
             end
             
             if( swcmd_d1[15:0] == 16'd6 && datacpy_state == 2'd1)
             begin 
                offset_read_enable <= 1'b0;
                offset_read_addr <= offset_read_addr2;
                operation_type <= 3'd3;
                inv_cycle <= 1'b1;
                datacpy_state <= 2'd2;
             end
             
             if( swcmd_d2[15:0] == 16'd6 && datacpy_state == 2'd2)
             begin 
                offset_read_enable <= 1'b1;
                offset_read_addr <= offset_read_addr2;
                operation_type <= 3'd3;
                inv_cycle <= 1'b1;
                datacpy_state <= 2'd0;
             end
             
             if(read_ptr_d1 != read_ptr) begin
                data_copy_started <= 1'b0;
             end
             
             if(sw_reset == 32'd7)
                start_count <= 4'd0;
                
            
           end
    end
   
    //loop to count all completed logs
    reg [4:0] done_count_ones; 
    integer idx;
    reg [7:0] redo_log_assigned;
    
    always @* begin
      done_count_ones = 5'd0;  
      for( idx = 0; idx<4; idx = idx + 1) begin
        done_count_ones = done_count_ones + (ndp_done[idx] & !redo_log_assigned[idx]);
      end
    end
    
    //simple redolog dependence handling
    //encoder to get NDP id
    reg [2:0] ndp_start_id;
    always @* begin 
         case(ndp_start)
            8'b00000001: ndp_start_id = 3'b000;
            8'b00000010: ndp_start_id = 3'b001;
            8'b00000100: ndp_start_id = 3'b010;
            8'b00001000: ndp_start_id = 3'b011;
            default: ndp_start_id = 3'b000;
         endcase
    end
    
    reg [2:0] ndp_done_id;
    always @* begin 
         case(ndp_done)
            8'b00000001: ndp_done_id = 3'b000;
            8'b00000010: ndp_done_id = 3'b001;
            8'b00000100: ndp_done_id = 3'b010;
            8'b00001000: ndp_done_id = 3'b011;
            default: ndp_done_id = 3'b000;
         endcase
    end
    
    reg [63:0] assigned_src [8:0];
    integer idx1;     
    
    
     always @(posedge clk)
     begin
        if ( reset == 1'b0 )
        begin
            for(idx1 = 0; idx1<8; idx1 = idx1 +1) begin
                assigned_src[idx1] <= 64'd0;     
            end
        end 
        else
        begin       
            if(ndp_start)
                assigned_src[ndp_start_id] <= (src & 64'h0fff_ffff_ffff_ffff);
                
            if(ndp_done)
                assigned_src[ndp_done_id] <= 64'd0;
            
        end
     end
     
     reg [8:0] has_match;
     integer idx2;
     wire has_dependence;
     always @* begin
        has_match = 8'd0;  
        for( idx2 = 0; idx2<8; idx2 = idx2 + 1) begin
          has_match[idx2] = (src & 64'h0fff_ffff_ffff_ffff) == assigned_src[idx2];
        end
     end
     
     assign has_dependence = |has_match;
     
     //assign a free NDP 
     reg [7:0] ndp_status_reg;
     reg [4:0] started_logs;
     
     reg [63:0] ndp_src_reg [8:0];
     reg [31:0] ndp_size_reg [8:0];
     integer idx3;
     assign read_ptr_out = read_ptr_d1;//read_ptr;//read_ptr_d1;

     always @(posedge clk)
     begin
        if ( reset == 1'b0 )
        begin
                ndp_status_reg <=8'd0;
                started_logs <=5'd0;
                redo_log_assigned <= 8'd0;
                schedule_cmd <= 8'd0;
                read_ptr <= 8'd0;   
                read_ptr_d1 <= 8'd0;
                
                for(idx3 =0; idx3<8;idx3=idx3+1) begin
                    ndp_src_reg[idx3] <= 64'd0;
                    ndp_size_reg[idx3] <= 32'd0;
                end
        end
        else begin 
                read_ptr_d1 <= read_ptr;
                
            
            //if((started_logs < start_count || (sw_cmd[15:0] == 16'd9 && !inv_cycle)) && !has_dependence)
            //if((read_ptr < write_ptr)&& !has_dependence)
            if((started_logs < start_count || (sw_cmd[15:0] == 16'd9 && !inv_cycle) || (sw_cmd[15:0] == 16'd6 && !inv_cycle)) && fifo_entry_valid[read_ptr >> 3] == 1'b1
                     )
            begin
                casez (ndp_status_reg)
                8'b???????0:begin
                    ndp_start <= 8'b00000001;
                    ndp_status_reg[0] <= 1'b1; 
                    ndp_src_reg[0] <= src;
                    ndp_size_reg[0] <= size;
                    
                    if( read_ptr == 32'd240)  begin
                        read_ptr <= 32'd0;
                    end
                    else begin
                        read_ptr <= read_ptr + 32'd8;
                    end
                    
                    if(sw_cmd[15:0] != 32'd9) begin
                        started_logs <= started_logs +5'd1;                           
                    end
                    else begin
                        redo_log_assigned[0] <= 1'b1; 
                    end
                end
     /*           8'b??????0?:begin
                    ndp_start <= 8'b00000010;
                    ndp_status_reg[1] <= 1'b1;
                    ndp_src_reg[1] <= src;
                    ndp_size_reg[1] <= size;
                    
                    if( read_ptr == 32'd240)  begin
                        read_ptr <= 32'd0;
                    end
                    else begin
                        read_ptr <= read_ptr + 32'd8;
                    end
                   
                    if(sw_cmd[15:0] != 32'd9) begin
                        started_logs <= started_logs +5'd1;    
                     end
                     else begin
                        redo_log_assigned[1] <= 1'b1; 
                     end
                end
                8'b?????0??:begin
                    ndp_start <= 8'b00000100;
                    ndp_status_reg[2] <= 1'b1; 
                    ndp_src_reg[2] <= src;
                    ndp_size_reg[2] <= size;
                    
                    if( read_ptr == 32'd240)  begin
                        read_ptr <= 32'd0;
                    end
                    else begin
                        read_ptr <= read_ptr + 32'd8;
                    end
                    
                    if(sw_cmd[15:0] != 32'd9) begin
                        started_logs <= started_logs +5'd1;    
                    end
                    else begin
                         redo_log_assigned[2] <= 1'b1; 
                    end
                end
                8'b????0???:begin
                    ndp_start <= 8'b00001000;
                    ndp_status_reg[3] <= 1'b1;
                    ndp_src_reg[3] <= src;
                    ndp_size_reg[3] <= size;
                    
                    if( read_ptr == 32'd240)  begin
                        read_ptr <= 32'd0;
                    end
                    else begin
                        read_ptr <= read_ptr + 32'd8;
                    end
                    
                    if(sw_cmd[15:0] != 32'd9) begin
                        started_logs <= started_logs +5'd1;   
                    end
                    else begin
                        redo_log_assigned[3] <= 1'b1; 
                    end
                end
    */  
      /*          8'bxxx0_xxxx: ndp_start[4] = 8'b00010000;
                8'bxx0x_xxxx: ndp_start[5] = 8'b00100000;
                8'bx0xx_xxxx: ndp_start[6] = 8'b01000000;
                8'b0xxx_xxxx: ndp_start[7] = 8'b10000000;
     */         default :ndp_start <= 8'd0;
                endcase
           end
           else begin
                ndp_start <= 8'd0;
           end
           
          
           
           //reset ndp status reg
           if(ndp_done[0] == 1'b1)begin
                ndp_status_reg[0] <= 1'b0;
                redo_log_assigned[0] <= 1'b0;
                ndp_src_reg[0] <= 64'd0;
                ndp_size_reg[0] <= 32'd0;    
           end         
           if(ndp_done[1] == 1'b1)begin
                ndp_status_reg[1] <= 1'b0;
                redo_log_assigned[1] <= 1'b0; 
                ndp_src_reg[1] <= 64'd0;
                ndp_size_reg[1] <= 32'd0;     
           end
           if(ndp_done[2] == 1'b1)begin
                ndp_status_reg[2] <= 1'b0;
                redo_log_assigned[2] <= 1'b0; 
                ndp_src_reg[2] <= 64'd0;
                ndp_size_reg[2] <= 32'd0;     
           end
           if(ndp_done[3] == 1'b1)begin
                ndp_status_reg[3] <= 1'b0;
                redo_log_assigned[3] <= 1'b0;    
                ndp_src_reg[3] <= 64'd0;
                ndp_size_reg[3] <= 32'd0;  
           end
       
           if( sw_reset == 32'd7) begin
                started_logs <= 5'd0;
           end
       end
    end
    
    //track write dependencies
    reg [63:0] offset_reg;
    always @(posedge clk)
    begin
        if ( reset == 1'b0 )
        begin
               offset_reg <= 64'd0;
        end
        else
        begin
            if(offset_valid)
                offset_reg <= offset;
        end
    end
    
    reg [8:0] stall_state;
    always @(posedge clk)
    begin
        if ( reset == 1'b0 )
        begin
            write_conflict <=16'd0;
            stall_state <= 8'd0;
        end
        else
        begin
            if(axi_awvalid ==1'd1) begin
                //if(((ndp_src_reg[0] - offset_reg)<= axi_awaddr) && (((ndp_src_reg[0] - offset_reg) + ndp_size_reg[0]) > axi_awaddr) && 
                //ndp_status_reg[0] && ndp_src_reg[0] != 64'd0)begin
                if(((ndp_src_reg[0] - offset_reg)== axi_awaddr) &&  
                                ndp_status_reg[0] && ndp_src_reg[0] != 64'd0)begin
                    write_conflict <= write_conflict + 16'd1;
                    stall_state[0] <= 1'b1;
                    
                end
               // if(((ndp_src_reg[1] - offset_reg)<= axi_awaddr) && (((ndp_src_reg[1] - offset_reg) + ndp_size_reg[1]) > axi_awaddr) && 
               // ndp_status_reg[1] && ndp_src_reg[1] != 64'd0)begin
                if(((ndp_src_reg[1] - offset_reg)== axi_awaddr) && 
                                ndp_status_reg[1] && ndp_src_reg[1] != 64'd0)begin
                    write_conflict <= write_conflict + 16'd1;
                    stall_state[1] <= 1'b1;
                    
                end
              //  if(((ndp_src_reg[2] - offset_reg)<= axi_awaddr) && (((ndp_src_reg[2] - offset_reg) + ndp_size_reg[2]) > axi_awaddr) && 
              //  ndp_status_reg[2] && ndp_src_reg[2] != 64'd0)begin
                 if(((ndp_src_reg[2] - offset_reg)== axi_awaddr) &&  
                               ndp_status_reg[2] && ndp_src_reg[2] != 64'd0)begin
                    write_conflict <= write_conflict + 16'd1;
                    stall_state[2] <= 1'b1;
                    
                end
               // if(((ndp_src_reg[3] - offset_reg)<= axi_awaddr) && (((ndp_src_reg[3] - offset_reg) + ndp_size_reg[3]) > axi_awaddr) && 
               // ndp_status_reg[3] && ndp_src_reg[3] != 64'd0)begin
                if(((ndp_src_reg[3] - offset_reg)== axi_awaddr) &&  
                                ndp_status_reg[3] && ndp_src_reg[3] != 64'd0)begin
                    write_conflict <= write_conflict + 16'd1;
                    stall_state[3] <= 1'b1;
                
                end
            end 
            
            //reset ndp status reg
            if(ndp_done[0] == 1'b1)begin
               stall_state[0] <= 1'b0;
            end         
            if(ndp_done[1] == 1'b1)begin
               stall_state[1] <= 1'b0;
            end
            if(ndp_done[2] == 1'b1)begin
               stall_state[2] <= 1'b0;    
            end
            if(ndp_done[3] == 1'b1)begin
               stall_state[3] <= 1'b0;
            end  
            
        end
    end
    assign stall_proc = ~(stall_state[0] | stall_state[1] | stall_state[2] | stall_state[3]);     
    assign stall_addr =  (ndp_src_reg[0] - offset_reg);
           
    reg [4:0] done_count;
    
 
    //set complete register
    always @(posedge clk)
    begin
       if ( reset == 1'b0 )
       begin
           ndp_complete <= 32'd0;
           done_count <= 4'd0;  
           stop_timer <= 1'b0;
        //   slv_reg252 <= 8'd0;
       end
       else
       begin  
           //Halt condition for the NDP *start count will be always ahead of done count
           //if( done_count == start_count && done_count != 4'd0)
           if( done_count == 5'd1)
           begin
               ndp_complete[0]  <= 1'b1;
               stop_timer <= 1'b1;
           end
           else
           begin
               ndp_complete  <= 32'd0;
           end 
           
     /*      if( read_ptr == write_ptr)
           begin
               ndp_complete[1]  <= 1'b1;
           end
           else
           begin
               ndp_complete[1]  <= 1'b0;
           end 
     */      
           done_count <= done_count + done_count_ones;
           
      
           
           if( sw_reset == 32'd7)
               done_count <= 4'd0;

       end
    end
    
    ///TEMP timer
    always @(posedge clk)
    begin
       if ( reset == 1'b0 )
       begin
              time_cycles <= 64'd0;
       end
       else
       begin
            if(start_timer==1'b1 && stop_timer==1'b0)
              time_cycles <= time_cycles + 64'd1;
       end
    end
    
    // Temp write read pointer max difference
    always @(posedge clk)
        begin
           if ( reset == 1'b0 )
           begin
                  max_write_read_diff <= 7'd0;
           end
           else
           begin
                if((write_ptr - read_ptr) > max_write_read_diff)
                    max_write_read_diff <= (write_ptr - read_ptr);
           end
        end
endmodule
