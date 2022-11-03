`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2021 09:45:14 AM
// Design Name: 
// Module Name: addrmonitor
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
module addrmonitor #(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_ID_WIDTH	= 4,
		parameter integer C_S00_AXI_DATA_WIDTH	= 64,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 32,
		parameter integer C_S00_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_S00_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_S00_AXI_WUSER_WIDTH	= 0,
		parameter integer C_S00_AXI_RUSER_WIDTH	= 0,
		parameter integer C_S00_AXI_BUSER_WIDTH	= 0,

		// Parameters of Axi Master Bus Interface M00_AXI
//		parameter  C_M00_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M00_AXI_BURST_LEN	= 16,
		parameter integer C_M00_AXI_ID_WIDTH	= 4,
		parameter integer C_M00_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M00_AXI_DATA_WIDTH	= 64,
		parameter integer C_M00_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_WUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_RUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_BUSER_WIDTH	= 0
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		//input wire  s00_axi_aclk,
		//input wire  s00_axi_aresetn,

		// Ports of Axi Master Bus Interface M00_AXI
		//input wire  m00_axi_init_axi_txn,
		//output wire  m00_axi_txn_done,
		//output wire  m00_axi_error,
		//input wire  m00_axi_aclk,
		//input wire  m00_axi_aresetn,
		input wire  s00_axi_wvalid,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire  s00_axi_awvalid,
		input wire readenable,
		input wire [11:0] readaddr,
		
		output wire [63:0] pmem_obj_offset,
		output wire pmem_obj_offset_valid, 
		
	    input wire  clk,
	    input wire clkmemops,
        input wire  aresetn,   
        
		//output wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_awid,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,

		output wire  m00_axi_awvalid,
		//input wire  m00_axi_awready,
		output wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
		//output wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
		//output wire  m00_axi_wlast,
		//output wire [C_M00_AXI_WUSER_WIDTH-1 : 0] m00_axi_wuser,
		output wire  m00_axi_wvalid,
		output empty_fifo,
		
		//input wire  m00_axi_wready,
		
		output [2:0] state,
		output reg [63:0] virtualaddr_out,
		output wire [63:0] virtualaddr_out1,
        output [63:0] offset,
        output [31:0] physicaladdr,
        output reg [5:0] count,  
        output reg [3:0] offset_count   
		

	);
		
 
    assign m00_axi_awaddr = s00_axi_awaddr;
 
    assign m00_axi_awvalid = s00_axi_awvalid;
    assign m00_axi_wdata = s00_axi_wdata;
 
    assign m00_axi_wvalid = s00_axi_wvalid;
 
    
    parameter [2:0] //IDLE               = 3'b000,
                    CAPTURE_DATA         = 3'b001,
                    CAPTURE_ADDR         = 3'b010, 
                    COMPUTE_OFFSET       = 3'b011,
                    STORE_OFFSET         = 3'b100;    
              
    
    reg [63:0] virtualaddr;
    reg [63:0] offset;
    reg [31:0] physicaladdr;     
    reg [63:0] pmemobjID;
    
    

    //clock domain handling 
    wire  [63:0] pmem_obj_offset_clk0;
    wire  [63:0] pmem_obj_offset_clk1;
    assign pmem_obj_offset = pmem_obj_offset_clk1;
    
    reg pmem_obj_offset_valid_clk0;
    reg readenabled1;
    reg readenabled2;
    reg readenabled3;
    
    always @(posedge clkmemops) begin
    if ( aresetn == 1'b0 )begin
        readenabled1 <= 1'b0;
        readenabled2 <= 1'b0;
      readenabled3 <= 1'b0;
    end
    else begin
        readenabled1 <= readenable;
        readenabled2 <= readenabled1;
        readenabled3 <= readenabled2;
    end
    end
    
    
    reg [2:0] state;

    //LUT control registers
    reg ena;
    reg wea;

    always @(posedge clk) begin
    if ( aresetn == 1'b0 )begin
        state <= CAPTURE_DATA;
        physicaladdr <= 32'd0;
        virtualaddr <= 64'd0;
        offset <= 64'd0;
        pmemobjID <= 64'd0;
	    ena <= 1'b0;
	    wea <= 1'b0;    
	
	    count <= 6'd0;
    end
    else begin
        case (state)     
        CAPTURE_DATA: begin
	     wea <= 1'b0;
	     ena <= 1'b0;

             if(s00_axi_wvalid == 1'b1 && s00_axi_wdata== 64'hdeadbeefdeadbeef) begin
                physicaladdr <= s00_axi_awaddr;
                state <= CAPTURE_ADDR;
             end
        end
        CAPTURE_ADDR: begin
             if(s00_axi_wvalid == 1'b1 && s00_axi_awaddr == physicaladdr) begin                                     
                virtualaddr <= s00_axi_wdata;
                state <= COMPUTE_OFFSET;
             end
        end
        COMPUTE_OFFSET: begin
                offset <= virtualaddr - physicaladdr;
                state <= STORE_OFFSET;
                
                count <= count + 6'd1;
	end
        STORE_OFFSET: begin
             if(s00_axi_wvalid == 1'b1 && s00_axi_awaddr == physicaladdr) begin
                pmemobjID <= s00_axi_wdata;
                state <= CAPTURE_DATA;
		        wea <= 1'b1;
		        ena <= 1'b1;
             end
        end
        default: begin
                state <= CAPTURE_DATA;
        end
        endcase
        end   
    end
    
    ///////////////////////////////
    /// remove later
    
    reg [63:0] offset_store [9:0];
    reg [3:0] offset_count;
    integer idx;
    reg [2:0] state_d1;
    reg valid_d1;
    reg  [31:0] awaddr_d1;
    
    
    assign virtualaddr_out1 = offset_store[1];
    always @(posedge clk) begin
    if ( aresetn == 1'b0 )begin
        for( idx = 0; idx<10; idx = idx + 1) begin
            offset_store[idx] <= 64'd0;
        end
        offset_count <= 4'd0;
        state_d1 <=3'd0;
        valid_d1 <=1'b0;
        awaddr_d1 <= 32'd0;
    end 
    else begin
        state_d1 <= state;
        valid_d1 <= s00_axi_wvalid;
        awaddr_d1 <= s00_axi_awaddr;
        offset_count <= offset_count + 4'd1;
        virtualaddr_out <= offset_store[offset_count];
        
        if(state_d1 == STORE_OFFSET) begin
            if(valid_d1 == 1'b1 && awaddr_d1 == physicaladdr)
                offset_store[pmemobjID] <= offset;
        end
    end    
    end
    
    ////
    /////////////////////////////////
    
    
    //offset lookup
    // xpm_memory_sdpram: Simple Dual Port RAM
    // Xilinx Parameterized Macro, version 2018.1
	xpm_memory_sdpram #(
	.ADDR_WIDTH_A(6), // DECIMAL
	.ADDR_WIDTH_B(6), // DECIMAL
	.AUTO_SLEEP_TIME(0), // DECIMAL
	.BYTE_WRITE_WIDTH_A(32), // DECIMAL
	.CLOCKING_MODE("common_clock"), // String
	.ECC_MODE("no_ecc"), // String
	.MEMORY_INIT_FILE("none"), // String
	.MEMORY_INIT_PARAM("0"), // String
	.MEMORY_OPTIMIZATION("true"), // String
	.MEMORY_PRIMITIVE("block"), // String
	.MEMORY_SIZE(2048), // DECIMAL
	.MESSAGE_CONTROL(0), // DECIMAL
	.READ_DATA_WIDTH_B(32), // DECIMAL
	.READ_LATENCY_B(2), // DECIMAL
	.READ_RESET_VALUE_B("0"), // String
	.USE_EMBEDDED_CONSTRAINT(0), // DECIMAL
	.USE_MEM_INIT(1), // DECIMAL
	.WAKEUP_TIME("disable_sleep"), // String
	.WRITE_DATA_WIDTH_A(32), // DECIMAL
	.WRITE_MODE_B("no_change") // String
	)
	xpm_memory_sdpram_inst0 (
	//.dbiterrb(dbiterrb), 	// 1-bit output: Status signal to indicate double bit error occurrence
				// on the data output of port B.
	.doutb(pmem_obj_offset_clk0[31:0]), 		// READ_DATA_WIDTH_B-bit output: Data output for port B read operations.
	//.sbiterrb(sbiterrb), 	// 1-bit output: Status signal to indicate single bit error occurrence
				// on the data output of port B.
	.addra(pmemobjID[5:0]), 		// ADDR_WIDTH_A-bit input: Address for port A write operations.
	.addrb(readaddr[5:0]), 		// ADDR_WIDTH_B-bit input: Address for port B read operations.
	.clka(clk), 		// 1-bit input: Clock signal for port A. Also clocks port B when
				// parameter CLOCKING_MODE is "common_clock".
	//.clkb(clkb), 		// 1-bit input: Clock signal for port B when parameter CLOCKING_MODE is
				// "independent_clock". Unused when parameter CLOCKING_MODE is
				// "common_clock".
	.dina(offset[31:0]), 		// WRITE_DATA_WIDTH_A-bit input: Data input for port A write operations.
	.ena(ena), 		// 1-bit input: Memory enable signal for port A. Must be high on clock
				// cycles when write operations are initiated. Pipelined internally.
	.enb(1'b1), 		// 1-bit input: Memory enable signal for port B. Must be high on clock
				// cycles when read operations are initiated. Pipelined internally.
	//.injectdbiterra(injectdbiterra), // 1-bit input: Controls double bit error injection on input data when
				// ECC enabled (Error injection capability is not available in
				// "decode_only" mode).
	//.injectsbiterra(injectsbiterra), // 1-bit input: Controls single bit error injection on input data when
				// ECC enabled (Error injection capability is not available in
				// "decode_only" mode).
	.regceb(1'b1), 	// 1-bit input: Clock Enable for the last register stage on the output
				// data path.
	//.rstb(rstb), 		// 1-bit input: Reset signal for the final port B output register stage.
				// Synchronously resets output port doutb to the value specified by
				// parameter READ_RESET_VALUE_B.
	//.sleep(sleep), 		// 1-bit input: sleep signal to enable the dynamic power saving feature.
	.wea(wea) 		// WRITE_DATA_WIDTH_A-bit input: Write enable vector for port A input
				// data port dina. 1 bit wide when word-wide writes are used. In
				// byte-wide write configurations, each bit controls the writing one
				// byte of dina to address addra. For example, to synchronously write
				// only bits [15-8] of dina when WRITE_DATA_WIDTH_A is 32, wea would be
				// 4'b0010.
	);

	xpm_memory_sdpram #(
	.ADDR_WIDTH_A(6), // DECIMAL
	.ADDR_WIDTH_B(6), // DECIMAL
	.AUTO_SLEEP_TIME(0), // DECIMAL
	.BYTE_WRITE_WIDTH_A(32), // DECIMAL
	.CLOCKING_MODE("common_clock"), // String
	.ECC_MODE("no_ecc"), // String
	.MEMORY_INIT_FILE("none"), // String
	.MEMORY_INIT_PARAM("0"), // String
	.MEMORY_OPTIMIZATION("true"), // String
	.MEMORY_PRIMITIVE("block"), // String
	.MEMORY_SIZE(2048), // DECIMAL
	.MESSAGE_CONTROL(0), // DECIMAL
	.READ_DATA_WIDTH_B(32), // DECIMAL
	.READ_LATENCY_B(2), // DECIMAL
	.READ_RESET_VALUE_B("0"), // String
	.USE_EMBEDDED_CONSTRAINT(0), // DECIMAL
	.USE_MEM_INIT(1), // DECIMAL
	.WAKEUP_TIME("disable_sleep"), // String
	.WRITE_DATA_WIDTH_A(32), // DECIMAL
	.WRITE_MODE_B("no_change") // String
	)
	xpm_memory_sdpram_inst1 (
	//.dbiterrb(dbiterrb), 	// 1-bit output: Status signal to indicate double bit error occurrence
				// on the data output of port B.
	.doutb(pmem_obj_offset_clk0[63:32]), 		// READ_DATA_WIDTH_B-bit output: Data output for port B read operations.
	//.sbiterrb(sbiterrb), 	// 1-bit output: Status signal to indicate single bit error occurrence
				// on the data output of port B.
	.addra(pmemobjID[11:6]), 		// ADDR_WIDTH_A-bit input: Address for port A write operations.
	.addrb(readaddr[11:6]), 		// ADDR_WIDTH_B-bit input: Address for port B read operations.
	.clka(clk), 		// 1-bit input: Clock signal for port A. Also clocks port B when
				// parameter CLOCKING_MODE is "common_clock".
	//.clkb(clkb), 		// 1-bit input: Clock signal for port B when parameter CLOCKING_MODE is
				// "independent_clock". Unused when parameter CLOCKING_MODE is
				// "common_clock".
	.dina(offset[63:32]), 		// WRITE_DATA_WIDTH_A-bit input: Data input for port A write operations.
	.ena(ena), 		// 1-bit input: Memory enable signal for port A. Must be high on clock
				// cycles when write operations are initiated. Pipelined internally.
	.enb(1'b1), 		// 1-bit input: Memory enable signal for port B. Must be high on clock
				// cycles when read operations are initiated. Pipelined internally.
	//.injectdbiterra(injectdbiterra), // 1-bit input: Controls double bit error injection on input data when
				// ECC enabled (Error injection capability is not available in
				// "decode_only" mode).
	//.injectsbiterra(injectsbiterra), // 1-bit input: Controls single bit error injection on input data when
				// ECC enabled (Error injection capability is not available in
				// "decode_only" mode).
	.regceb(1'b1), 	// 1-bit input: Clock Enable for the last register stage on the output
				// data path.
	//.rstb(rstb), 		// 1-bit input: Reset signal for the final port B output register stage.
				// Synchronously resets output port doutb to the value specified by
				// parameter READ_RESET_VALUE_B.
	//.sleep(sleep), 		// 1-bit input: sleep signal to enable the dynamic power saving feature.
	.wea(wea) 		// WRITE_DATA_WIDTH_A-bit input: Write enable vector for port A input
				// data port dina. 1 bit wide when word-wide writes are used. In
				// byte-wide write configurations, each bit controls the writing one
				// byte of dina to address addra. For example, to synchronously write
				// only bits [15-8] of dina when WRITE_DATA_WIDTH_A is 32, wea would be
				// 4'b0010.
	);
    //delay enable 1 cycle to make output valid(read only has a one cycle delay)
 /*   always @(posedge clk) begin
    if ( aresetn == 1'b0 )begin
        pmem_obj_offset_valid_clk0 <= 1'b0;
    end
    else begin
//        pmem_obj_offset_valid <= 1'b0;
//        if(readenable == 1'b1)
//            pmem_obj_offset_valid <= 1'b1;
              pmem_obj_offset_valid_clk0 <= readenabled1;
    end
    end
*/
    //fifo write pulse
    reg fifo_pulse_d0;
    reg fifo_pulse_d1;
    wire fifo_write_pulse;
    
     always @(posedge clk) begin
       if ( aresetn == 1'b0 )begin
           fifo_pulse_d0 <= 1'b0;
           fifo_pulse_d1 <= 1'b0;
       end
       else begin
           fifo_pulse_d0 <= readenabled1;
           fifo_pulse_d1 <= fifo_pulse_d0;
       end
       end
    assign fifo_write_pulse = fifo_pulse_d0 & ~fifo_pulse_d1;
    //This is signal transition from addrmonitor 250MHz to memops clock domain 100MHz 
    
    wire empty_fifo;
    
    
    //sync fifo
     xpm_fifo_async #(
         .CDC_SYNC_STAGES(2),       // DECIMAL
         .DOUT_RESET_VALUE("0"),    // String
         .ECC_MODE("no_ecc"),       // String
         .FIFO_MEMORY_TYPE("auto"), // String
         .FIFO_READ_LATENCY(1),     // DECIMAL
         .FIFO_WRITE_DEPTH(2048),   // DECIMAL
         .FULL_RESET_VALUE(0),      // DECIMAL
         .PROG_EMPTY_THRESH(10),    // DECIMAL
         .PROG_FULL_THRESH(10),     // DECIMAL
         .RD_DATA_COUNT_WIDTH(1),   // DECIMAL
         .READ_DATA_WIDTH(64),      // DECIMAL
         .READ_MODE("std"),         // String
         .RELATED_CLOCKS(0),        // DECIMAL
         .USE_ADV_FEATURES("1707"), // String
         .WAKEUP_TIME(0),           // DECIMAL
         .WRITE_DATA_WIDTH(64),     // DECIMAL
         .WR_DATA_COUNT_WIDTH(1)    // DECIMAL
      )
      xpm_fifo_async_inst (
    //     .almost_empty(almost_empty),   // 1-bit output: Almost Empty : When asserted, this signal indicates that
                                        // only one more read can be performed before the FIFO goes to empty.
   
    //     .almost_full(almost_full),     // 1-bit output: Almost Full: When asserted, this signal indicates that
                                        // only one more write can be performed before the FIFO is full.
   
         .data_valid(pmem_obj_offset_valid),       // 1-bit output: Read Data Valid: When asserted, this signal indicates
                                        // that valid data is available on the output bus (dout).
   
    //     .dbiterr(dbiterr),             // 1-bit output: Double Bit Error: Indicates that the ECC decoder detected
                                        // a double-bit error and data in the FIFO core is corrupted.
   
         .dout(pmem_obj_offset_clk1),                   // READ_DATA_WIDTH-bit output: Read Data: The output data bus is driven
                                        // when reading the FIFO.
   
         .empty(empty_fifo),                 // 1-bit output: Empty Flag: When asserted, this signal indicates that the
                                        // FIFO is empty. Read requests are ignored when the FIFO is empty,
                                        // initiating a read while empty is not destructive to the FIFO.
   
   //      .full(full),                   // 1-bit output: Full Flag: When asserted, this signal indicates that the
                                        // FIFO is full. Write requests are ignored when the FIFO is full,
                                        // initiating a write when the FIFO is full is not destructive to the
                                        // contents of the FIFO.
   
   //      .overflow(overflow),           // 1-bit output: Overflow: This signal indicates that a write request
                                        // (wren) during the prior clock cycle was rejected, because the FIFO is
                                        // full. Overflowing the FIFO is not destructive to the contents of the
                                        // FIFO.
   
   //      .prog_empty(prog_empty),       // 1-bit output: Programmable Empty: This signal is asserted when the
                                        // number of words in the FIFO is less than or equal to the programmable
                                        // empty threshold value. It is de-asserted when the number of words in
                                        // the FIFO exceeds the programmable empty threshold value.
   
   //      .prog_full(prog_full),         // 1-bit output: Programmable Full: This signal is asserted when the
                                        // number of words in the FIFO is greater than or equal to the
                                        // programmable full threshold value. It is de-asserted when the number of
                                        // words in the FIFO is less than the programmable full threshold value.
   
   //      .rd_data_count(rd_data_count), // RD_DATA_COUNT_WIDTH-bit output: Read Data Count: This bus indicates the
                                        // number of words read from the FIFO.
   
   //      .rd_rst_busy(rd_rst_busy),     // 1-bit output: Read Reset Busy: Active-High indicator that the FIFO read
                                        // domain is currently in a reset state.
   
   //      .sbiterr(sbiterr),             // 1-bit output: Single Bit Error: Indicates that the ECC decoder detected
                                        // and fixed a single-bit error.
   
   //      .underflow(underflow),         // 1-bit output: Underflow: Indicates that the read request (rd_en) during
                                        // the previous clock cycle was rejected because the FIFO is empty. Under
                                        // flowing the FIFO is not destructive to the FIFO.
   
   //      .wr_ack(wr_ack),               // 1-bit output: Write Acknowledge: This signal indicates that a write
                                        // request (wr_en) during the prior clock cycle is succeeded.
   
   //      .wr_data_count(wr_data_count), // WR_DATA_COUNT_WIDTH-bit output: Write Data Count: This bus indicates
                                        // the number of words written into the FIFO.
   
   //      .wr_rst_busy(wr_rst_busy),     // 1-bit output: Write Reset Busy: Active-High indicator that the FIFO
                                        // write domain is currently in a reset state.
   
         .din(pmem_obj_offset_clk0),                     // WRITE_DATA_WIDTH-bit input: Write Data: The input data bus used when
                                        // writing the FIFO.
   
   //      .injectdbiterr(injectdbiterr), // 1-bit input: Double Bit Error Injection: Injects a double bit error if
                                        // the ECC feature is used on block RAMs or UltraRAM macros.
   
   //      .injectsbiterr(injectsbiterr), // 1-bit input: Single Bit Error Injection: Injects a single bit error if
                                        // the ECC feature is used on block RAMs or UltraRAM macros.
   
         .rd_clk(clkmemops),               // 1-bit input: Read clock: Used for read operation. rd_clk must be a free
                                        // running clock.
   
         .rd_en(~empty_fifo),                 // 1-bit input: Read Enable: If the FIFO is not empty, asserting this
                                        // signal causes data (on dout) to be read from the FIFO. Must be held
                                        // active-low when rd_rst_busy is active high. .
   
         .rst(~aresetn),                     // 1-bit input: Reset: Must be synchronous to wr_clk. Must be applied only
                                        // when wr_clk is stable and free-running.
   
   //      .sleep(sleep),                 // 1-bit input: Dynamic power saving: If sleep is High, the memory/fifo
                                        // block is in power saving mode.
   
         .wr_clk(clk),               // 1-bit input: Write clock: Used for write operation. wr_clk must be a
                                        // free running clock.
   
         .wr_en(fifo_write_pulse)                  // 1-bit input: Write Enable: If the FIFO is not full, asserting this
                                        // signal causes data (on din) to be written to the FIFO. Must be held
                                        // active-low when rst or wr_rst_busy is active high. .
   
      );
    
    
 /*   
    //valid signal
    xpm_cdc_single #(
          .DEST_SYNC_FF(4),   // DECIMAL; range: 2-10
          .INIT_SYNC_FF(0),   // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
          .SIM_ASSERT_CHK(0), // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
          .SRC_INPUT_REG(1)   // DECIMAL; 0=do not register input, 1=register input
       )
       xpm_cdc_single_inst (
          .dest_out(pmem_obj_offset_valid), // 1-bit output: src_in synchronized to the destination clock domain. This output is
                               // registered.
    
          .dest_clk(clkmemops), // 1-bit input: Clock signal for the destination clock domain.
          .src_clk(clk),   // 1-bit input: optional; required when SRC_INPUT_REG = 1
          .src_in(pmem_obj_offset_valid_clk0)      // 1-bit input: Input signal to be synchronized to dest_clk domain.
       );

    //offset
    xpm_cdc_array_single #(
      .DEST_SYNC_FF(4),   // DECIMAL; range: 2-10
      .INIT_SYNC_FF(0),   // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
      .SIM_ASSERT_CHK(0), // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
      .SRC_INPUT_REG(1),  // DECIMAL; 0=do not register input, 1=register input
      .WIDTH(64)           // DECIMAL; range: 1-1024
   )
   xpm_cdc_array_single_inst (
      .dest_out(pmem_obj_offset_clk1), // WIDTH-bit output: src_in synchronized to the destination clock domain. This
                           // output is registered.

      .dest_clk(clkmemops), // 1-bit input: Clock signal for the destination clock domain.
      .src_clk(clk),   // 1-bit input: optional; required when SRC_INPUT_REG = 1
      .src_in(pmem_obj_offset_clk0)      // WIDTH-bit input: Input single-bit array to be synchronized to destination clock
                           // domain. It is assumed that each bit of the array is unrelated to the others. This
                           // is reflected in the constraints applied to this macro. To transfer a binary value
                           // losslessly across the two clock domains, use the XPM_CDC_GRAY macro instead.

   );
   */

endmodule

