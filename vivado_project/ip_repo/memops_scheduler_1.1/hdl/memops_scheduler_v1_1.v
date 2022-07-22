
`timescale 1 ns / 1 ps


	module memops_scheduler_v1_1 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 10,

		// Parameters of Axi Master Bus Interface M00_AXI
		parameter  C_M00_AXI_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_M00_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M00_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M00_AXI_DATA_WIDTH	= 32,
		parameter integer C_M00_AXI_TRANSACTIONS_NUM	= 4,

		// Parameters of Axi Master Bus Interface M01_AXI
		parameter  C_M01_AXI_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_M01_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M01_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M01_AXI_DATA_WIDTH	= 32,
		parameter integer C_M01_AXI_TRANSACTIONS_NUM	= 4,

		// Parameters of Axi Master Bus Interface M02_AXI
		parameter  C_M02_AXI_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_M02_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M02_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M02_AXI_DATA_WIDTH	= 32,
		parameter integer C_M02_AXI_TRANSACTIONS_NUM	= 4,

		// Parameters of Axi Master Bus Interface M03_AXI
		parameter  C_M03_AXI_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_M03_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M03_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M03_AXI_DATA_WIDTH	= 32,
		parameter integer C_M03_AXI_TRANSACTIONS_NUM	= 4,

		// Parameters of Axi Master Bus Interface M04_AXI
		parameter  C_M04_AXI_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_M04_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M04_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M04_AXI_DATA_WIDTH	= 32,
		parameter integer C_M04_AXI_TRANSACTIONS_NUM	= 4,

		// Parameters of Axi Master Bus Interface M05_AXI
		parameter  C_M05_AXI_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_M05_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M05_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M05_AXI_DATA_WIDTH	= 32,
		parameter integer C_M05_AXI_TRANSACTIONS_NUM	= 4,

		// Parameters of Axi Master Bus Interface M06_AXI
		parameter  C_M06_AXI_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_M06_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M06_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M06_AXI_DATA_WIDTH	= 32,
		parameter integer C_M06_AXI_TRANSACTIONS_NUM	= 4,

		// Parameters of Axi Master Bus Interface M07_AXI
		parameter  C_M07_AXI_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_M07_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M07_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M07_AXI_DATA_WIDTH	= 32,
		parameter integer C_M07_AXI_TRANSACTIONS_NUM	= 4
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready,

		// Ports of Axi Master Bus Interface M00_AXI
		//input wire  m00_axi_init_axi_txn,
		//output wire  m00_axi_error,
		//output wire  m00_axi_txn_done,
		input wire  m00_axi_aclk,
		input wire  m00_axi_aresetn,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
		output wire [2 : 0] m00_axi_awprot,
		output wire  m00_axi_awvalid,
		input wire  m00_axi_awready,
		output wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
		output wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
		output wire  m00_axi_wvalid,
		input wire  m00_axi_wready,
		input wire [1 : 0] m00_axi_bresp,
		input wire  m00_axi_bvalid,
		output wire  m00_axi_bready,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
		output wire [2 : 0] m00_axi_arprot,
		output wire  m00_axi_arvalid,
		input wire  m00_axi_arready,
		input wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
		input wire [1 : 0] m00_axi_rresp,
		input wire  m00_axi_rvalid,
		output wire  m00_axi_rready,

		// Ports of Axi Master Bus Interface M01_AXI
		//input wire  m01_axi_init_axi_txn,
		//output wire  m01_axi_error,
		//output wire  m01_axi_txn_done,
		input wire  m01_axi_aclk,
		//input wire  m01_axi_aresetn,
		output wire [C_M01_AXI_ADDR_WIDTH-1 : 0] m01_axi_awaddr,
		output wire [2 : 0] m01_axi_awprot,
		output wire  m01_axi_awvalid,
		input wire  m01_axi_awready,
		output wire [C_M01_AXI_DATA_WIDTH-1 : 0] m01_axi_wdata,
		output wire [C_M01_AXI_DATA_WIDTH/8-1 : 0] m01_axi_wstrb,
		output wire  m01_axi_wvalid,
		input wire  m01_axi_wready,
		input wire [1 : 0] m01_axi_bresp,
		input wire  m01_axi_bvalid,
		output wire  m01_axi_bready,
		output wire [C_M01_AXI_ADDR_WIDTH-1 : 0] m01_axi_araddr,
		output wire [2 : 0] m01_axi_arprot,
		output wire  m01_axi_arvalid,
		input wire  m01_axi_arready,
		input wire [C_M01_AXI_DATA_WIDTH-1 : 0] m01_axi_rdata,
		input wire [1 : 0] m01_axi_rresp,
		input wire  m01_axi_rvalid,
		output wire  m01_axi_rready,

		// Ports of Axi Master Bus Interface M02_AXI
		//input wire  m02_axi_init_axi_txn,
		//output wire  m02_axi_error,
		//output wire  m02_axi_txn_done,
		input wire  m02_axi_aclk,
		//input wire  m02_axi_aresetn,
		output wire [C_M02_AXI_ADDR_WIDTH-1 : 0] m02_axi_awaddr,
		output wire [2 : 0] m02_axi_awprot,
		output wire  m02_axi_awvalid,
		input wire  m02_axi_awready,
		output wire [C_M02_AXI_DATA_WIDTH-1 : 0] m02_axi_wdata,
		output wire [C_M02_AXI_DATA_WIDTH/8-1 : 0] m02_axi_wstrb,
		output wire  m02_axi_wvalid,
		input wire  m02_axi_wready,
		input wire [1 : 0] m02_axi_bresp,
		input wire  m02_axi_bvalid,
		output wire  m02_axi_bready,
		output wire [C_M02_AXI_ADDR_WIDTH-1 : 0] m02_axi_araddr,
		output wire [2 : 0] m02_axi_arprot,
		output wire  m02_axi_arvalid,
		input wire  m02_axi_arready,
		input wire [C_M02_AXI_DATA_WIDTH-1 : 0] m02_axi_rdata,
		input wire [1 : 0] m02_axi_rresp,
		input wire  m02_axi_rvalid,
		output wire  m02_axi_rready,

		// Ports of Axi Master Bus Interface M03_AXI
		//input wire  m03_axi_init_axi_txn,
		//output wire  m03_axi_error,
		//output wire  m03_axi_txn_done,
		input wire  m03_axi_aclk,
		//input wire  m03_axi_aresetn,
		output wire [C_M03_AXI_ADDR_WIDTH-1 : 0] m03_axi_awaddr,
		output wire [2 : 0] m03_axi_awprot,
		output wire  m03_axi_awvalid,
		input wire  m03_axi_awready,
		output wire [C_M03_AXI_DATA_WIDTH-1 : 0] m03_axi_wdata,
		output wire [C_M03_AXI_DATA_WIDTH/8-1 : 0] m03_axi_wstrb,
		output wire  m03_axi_wvalid,
		input wire  m03_axi_wready,
		input wire [1 : 0] m03_axi_bresp,
		input wire  m03_axi_bvalid,
		output wire  m03_axi_bready,
		output wire [C_M03_AXI_ADDR_WIDTH-1 : 0] m03_axi_araddr,
		output wire [2 : 0] m03_axi_arprot,
		output wire  m03_axi_arvalid,
		input wire  m03_axi_arready,
		input wire [C_M03_AXI_DATA_WIDTH-1 : 0] m03_axi_rdata,
		input wire [1 : 0] m03_axi_rresp,
		input wire  m03_axi_rvalid,
		output wire  m03_axi_rready,

		// Ports of Axi Master Bus Interface M04_AXI
		//input wire  m04_axi_init_axi_txn,
		//output wire  m04_axi_error,
		//output wire  m04_axi_txn_done,
		//input wire  m04_axi_aclk,
		//input wire  m04_axi_aresetn,
		output wire [C_M04_AXI_ADDR_WIDTH-1 : 0] m04_axi_awaddr,
		output wire [2 : 0] m04_axi_awprot,
		output wire  m04_axi_awvalid,
		input wire  m04_axi_awready,
		output wire [C_M04_AXI_DATA_WIDTH-1 : 0] m04_axi_wdata,
		output wire [C_M04_AXI_DATA_WIDTH/8-1 : 0] m04_axi_wstrb,
		output wire  m04_axi_wvalid,
		input wire  m04_axi_wready,
		input wire [1 : 0] m04_axi_bresp,
		input wire  m04_axi_bvalid,
		output wire  m04_axi_bready,
		output wire [C_M04_AXI_ADDR_WIDTH-1 : 0] m04_axi_araddr,
		output wire [2 : 0] m04_axi_arprot,
		output wire  m04_axi_arvalid,
		input wire  m04_axi_arready,
		input wire [C_M04_AXI_DATA_WIDTH-1 : 0] m04_axi_rdata,
		input wire [1 : 0] m04_axi_rresp,
		input wire  m04_axi_rvalid,
		output wire  m04_axi_rready,

		// Ports of Axi Master Bus Interface M05_AXI
		//input wire  m05_axi_init_axi_txn,
		//output wire  m05_axi_error,
		//output wire  m05_axi_txn_done,
		//input wire  m05_axi_aclk,
		//input wire  m05_axi_aresetn,
		output wire [C_M05_AXI_ADDR_WIDTH-1 : 0] m05_axi_awaddr,
		output wire [2 : 0] m05_axi_awprot,
		output wire  m05_axi_awvalid,
		input wire  m05_axi_awready,
		output wire [C_M05_AXI_DATA_WIDTH-1 : 0] m05_axi_wdata,
		output wire [C_M05_AXI_DATA_WIDTH/8-1 : 0] m05_axi_wstrb,
		output wire  m05_axi_wvalid,
		input wire  m05_axi_wready,
		input wire [1 : 0] m05_axi_bresp,
		input wire  m05_axi_bvalid,
		output wire  m05_axi_bready,
		output wire [C_M05_AXI_ADDR_WIDTH-1 : 0] m05_axi_araddr,
		output wire [2 : 0] m05_axi_arprot,
		output wire  m05_axi_arvalid,
		input wire  m05_axi_arready,
		input wire [C_M05_AXI_DATA_WIDTH-1 : 0] m05_axi_rdata,
		input wire [1 : 0] m05_axi_rresp,
		input wire  m05_axi_rvalid,
		output wire  m05_axi_rready,

		// Ports of Axi Master Bus Interface M06_AXI
		//input wire  m06_axi_init_axi_txn,
		//output wire  m06_axi_error,
		//output wire  m06_axi_txn_done,
		//input wire  m06_axi_aclk,
		//input wire  m06_axi_aresetn,
		output wire [C_M06_AXI_ADDR_WIDTH-1 : 0] m06_axi_awaddr,
		output wire [2 : 0] m06_axi_awprot,
		output wire  m06_axi_awvalid,
		input wire  m06_axi_awready,
		output wire [C_M06_AXI_DATA_WIDTH-1 : 0] m06_axi_wdata,
		output wire [C_M06_AXI_DATA_WIDTH/8-1 : 0] m06_axi_wstrb,
		output wire  m06_axi_wvalid,
		input wire  m06_axi_wready,
		input wire [1 : 0] m06_axi_bresp,
		input wire  m06_axi_bvalid,
		output wire  m06_axi_bready,
		output wire [C_M06_AXI_ADDR_WIDTH-1 : 0] m06_axi_araddr,
		output wire [2 : 0] m06_axi_arprot,
		output wire  m06_axi_arvalid,
		input wire  m06_axi_arready,
		input wire [C_M06_AXI_DATA_WIDTH-1 : 0] m06_axi_rdata,
		input wire [1 : 0] m06_axi_rresp,
		input wire  m06_axi_rvalid,
		output wire  m06_axi_rready,

		// Ports of Axi Master Bus Interface M07_AXI
		//input wire  m07_axi_init_axi_txn,
		//output wire  m07_axi_error,
		//output wire  m07_axi_txn_done,
		//input wire  m07_axi_aclk,
		//input wire  m07_axi_aresetn,
		output wire [C_M07_AXI_ADDR_WIDTH-1 : 0] m07_axi_awaddr,
		output wire [2 : 0] m07_axi_awprot,
		output wire  m07_axi_awvalid,
		input wire  m07_axi_awready,
		output wire [C_M07_AXI_DATA_WIDTH-1 : 0] m07_axi_wdata,
		output wire [C_M07_AXI_DATA_WIDTH/8-1 : 0] m07_axi_wstrb,
		output wire  m07_axi_wvalid,
		input wire  m07_axi_wready,
		input wire [1 : 0] m07_axi_bresp,
		input wire  m07_axi_bvalid,
		output wire  m07_axi_bready,
		output wire [C_M07_AXI_ADDR_WIDTH-1 : 0] m07_axi_araddr,
		output wire [2 : 0] m07_axi_arprot,
		output wire  m07_axi_arvalid,
		input wire  m07_axi_arready,
		input wire [C_M07_AXI_DATA_WIDTH-1 : 0] m07_axi_rdata,
		input wire [1 : 0] m07_axi_rresp,
		input wire  m07_axi_rvalid,
		output wire  m07_axi_rready,
		output wire [7:0] write_ptr,
		output wire [7:0] read_ptr,
		output wire [7:0] ndp_done,
		output wire [7:0] ndp_status,
		     output wire [4:0] done_count,
           output wire [4:0] start_count,
           output wire [3:0] mst_exec_state,
           output wire [7:0] ndp_start,
           output wire [63:0] time_cycles,
           output wire [63:0] ulog_offset,
           output    wire [63:0] base_offset,
           output    wire [63:0] log_src,
            output   wire [63:0] log_size,
            output [31:0] regout,
            output wire [7:0] max_write_read_diff,
            output wire offset_read_enable,
            output [11:0] offset_read_addr,
            input [63:0] offset,
            input offset_valid,
            output [63:0] offset_reg,
            output [31:0] lut_read_latency,
            output [2:0] operation_type,
            output [7:0] redo_log_assigned,
            output has_dependence,
            output [4:0] started_logs,
            output wire ndp_not_inuse,
            output [7:0] ndp_status_reg,
            output [30:0] fifo_entry_valid,
            output [31:0] count_ones,
            input [31:0] axi_awaddr_in,
            input axi_awvalid_in,
            output [16:0] write_conflict,
            output stall_proc,
            output [31:0] stall_addr,
            output [63:0] offset_reg1,
            output [63:0] offset_reg2,
            output [1:0] vaddr_offset_count,
            output [63:0] ulog_offset_reg,
            output [63:0] base_offset_reg,
            output [63:0] log_src_reg,
            output [63:0] log_size_reg,
            output offset_reg1_valid,
            output offset_reg2_valid
	);
	reg [31:0] count_ones; 
    integer idx;
    
    always @* begin
        count_ones = 32'd0;  
        for( idx = 0; idx<31; idx = idx + 1) begin
            count_ones = count_ones + fifo_entry_valid[idx];
        end
    end
	assign ndp_not_inuse = stall_proc;  //1'b1; //count_ones < 32'd28;//~(fifo_entry_valid & 31'h0fff_ffff);////~|ndp_status; //~(ndp_status[0] & ndp_status[1] & ndp_status[2] & ndp_status[3]) ;//
	wire [11:0] offset_read_addr;
	wire [63:0] ulog_offset;
    wire [63:0] base_offset;
    wire [63:0] log_src;
    wire [63:0] log_size;
    wire clobber_enable;
    wire [2:0] operation_type;
  //  wire [7:0] ndp_done;
    //wire [7:0] ndp_status;
    wire [7:0] ndp_start;
    
    
    reg [31:0] lut_read_latency;
    reg lut_read;
    always @(posedge s00_axi_aclk)begin
      if ( s00_axi_aresetn == 1'b0 )
             begin
                   lut_read_latency <= 32'd0;
                   lut_read <= 1'b0;
             end
             else
             begin
                  if(offset_read_enable == 1'b1)
                     lut_read <= 1'b1;
                     
                  if(offset_valid ==1'b1)
                     lut_read <= 1'b0;
                     
                  if(lut_read ==1'b1)
                     lut_read_latency <= lut_read_latency + 1'b1;
             end
    
    end
    
// Instantiation of Axi Bus Interface S00_AXI
	memops_scheduler_v1_1_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) memops_scheduler_v1_1_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		.time_cycles(time_cycles),
		.ulog_offset(ulog_offset),
        .base_offset(base_offset),
        .log_src(log_src),
        .log_size_out(log_size),
        .ndp_status_reg(ndp_status_reg),
        .ndp_start(ndp_start),
        .write_ptr(write_ptr),
        .read_ptr(read_ptr),
        .ndp_done(ndp_done),
        .done_count(done_count),
        .start_count(start_count),
        .regout(regout),
        .clobber_enable(clobber_enable),
        .max_write_read_diff(max_write_read_diff),
        .offset_read_enable(offset_read_enable),
        .offset_read_addr(offset_read_addr),
        .operation_type(operation_type),
        .redo_log_assigned(redo_log_assigned),
        .has_dependence(has_dependence),
        .started_logs(started_logs),
        .fifo_entry_valid(fifo_entry_valid),
        .axi_awaddr_in(axi_awaddr_in),
        .axi_awvalid_in(axi_awvalid_in),
        .offset(offset),
        .offset_valid(offset_valid),
        .write_conflict(write_conflict),
        .stall_proc(stall_proc),
        .stall_addr(stall_addr)
	);

// Instantiation of Axi Bus Interface M00_AXI
	memops_scheduler_v1_1_M00_AXI # ( 
		.C_M_START_DATA_VALUE(C_M00_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M00_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M00_AXI_TRANSACTIONS_NUM)
	) memops_scheduler_v1_1_M00_AXI_inst (
		//.INIT_AXI_TXN(m00_axi_init_axi_txn),
		//.ERROR(m00_axi_error),
		//.TXN_DONE(m00_axi_txn_done),
		.M_AXI_ACLK(m00_axi_aclk),
		.M_AXI_ARESETN(m00_axi_aresetn),
		.M_AXI_AWADDR(m00_axi_awaddr),
		.M_AXI_AWPROT(m00_axi_awprot),
		.M_AXI_AWVALID(m00_axi_awvalid),
		.M_AXI_AWREADY(m00_axi_awready),
		.M_AXI_WDATA(m00_axi_wdata),
		.M_AXI_WSTRB(m00_axi_wstrb),
		.M_AXI_WVALID(m00_axi_wvalid),
		.M_AXI_WREADY(m00_axi_wready),
		.M_AXI_BRESP(m00_axi_bresp),
		.M_AXI_BVALID(m00_axi_bvalid),
		.M_AXI_BREADY(m00_axi_bready),
		.M_AXI_ARADDR(m00_axi_araddr),
		.M_AXI_ARPROT(m00_axi_arprot),
		.M_AXI_ARVALID(m00_axi_arvalid),
		.M_AXI_ARREADY(m00_axi_arready),
		.M_AXI_RDATA(m00_axi_rdata),
		.M_AXI_RRESP(m00_axi_rresp),
		.M_AXI_RVALID(m00_axi_rvalid),
		.M_AXI_RREADY(m00_axi_rready),
		.ulog_offset(ulog_offset),
        .base_offset(base_offset),
        .log_src(log_src),
        .log_size(log_size),
        .ndp_status(ndp_status[0]),
        .ndp_start(ndp_start[0]),
        .ndp_done(ndp_done[0]),
        .mst_exec_state(mst_exec_state),
        .clobber_enable(clobber_enable),
        .offset(offset),
        .offset_reg(offset_reg),
        .offset_valid(offset_valid),
        .operation_type(operation_type),
        .offset_reg1(offset_reg1),
        .offset_reg2(offset_reg2),
        .vaddr_offset_count(vaddr_offset_count),
        .ulog_offset_reg(ulog_offset_reg),
        .log_src_reg(log_src_reg),
        .log_size_reg(log_size_reg),
        .offset_read_enable(offset_read_enable)
        
	);

// Instantiation of Axi Bus Interface M01_AXI
	memops_scheduler_v1_1_M00_AXI # ( 
		.C_M_START_DATA_VALUE(C_M01_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M01_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M01_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M01_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M01_AXI_TRANSACTIONS_NUM)
	) memops_scheduler_v1_1_M01_AXI_inst (
		//.INIT_AXI_TXN(m01_axi_init_axi_txn),
		//.ERROR(m01_axi_error),
		//.TXN_DONE(m01_axi_txn_done),
		.M_AXI_ACLK(m01_axi_aclk),
		.M_AXI_ARESETN(m00_axi_aresetn),
		.M_AXI_AWADDR(m01_axi_awaddr),
		.M_AXI_AWPROT(m01_axi_awprot),
		.M_AXI_AWVALID(m01_axi_awvalid),
		.M_AXI_AWREADY(m01_axi_awready),
		.M_AXI_WDATA(m01_axi_wdata),
		.M_AXI_WSTRB(m01_axi_wstrb),
		.M_AXI_WVALID(m01_axi_wvalid),
		.M_AXI_WREADY(m01_axi_wready),
		.M_AXI_BRESP(m01_axi_bresp),
		.M_AXI_BVALID(m01_axi_bvalid),
		.M_AXI_BREADY(m01_axi_bready),
		.M_AXI_ARADDR(m01_axi_araddr),
		.M_AXI_ARPROT(m01_axi_arprot),
		.M_AXI_ARVALID(m01_axi_arvalid),
		.M_AXI_ARREADY(m01_axi_arready),
		.M_AXI_RDATA(m01_axi_rdata),
		.M_AXI_RRESP(m01_axi_rresp),
		.M_AXI_RVALID(m01_axi_rvalid),
		.M_AXI_RREADY(m01_axi_rready),
		.ulog_offset(ulog_offset),
        	.base_offset(base_offset),
        	.log_src(log_src),
        	.log_size(log_size),
        	.ndp_status(ndp_status[1]),
        	.ndp_start(ndp_start[1]),
                    .ndp_done(ndp_done[1]),
                    .clobber_enable(clobber_enable),
                    .offset(offset),
                            .offset_valid(offset_valid),
                            .operation_type(operation_type),
                            .offset_reg1_valid(offset_reg1_valid),
                            .offset_reg2_valid(offset_reg2_valid)

	);

// Instantiation of Axi Bus Interface M02_AXI
	memops_scheduler_v1_1_M00_AXI # ( 
		.C_M_START_DATA_VALUE(C_M02_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M02_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M02_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M02_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M02_AXI_TRANSACTIONS_NUM)
	) memops_scheduler_v1_1_M02_AXI_inst (
		//.INIT_AXI_TXN(m02_axi_init_axi_txn),
		//.ERROR(m02_axi_error),
		//.TXN_DONE(m02_axi_txn_done),
		.M_AXI_ACLK(m02_axi_aclk),
		.M_AXI_ARESETN(m00_axi_aresetn),
		.M_AXI_AWADDR(m02_axi_awaddr),
		.M_AXI_AWPROT(m02_axi_awprot),
		.M_AXI_AWVALID(m02_axi_awvalid),
		.M_AXI_AWREADY(m02_axi_awready),
		.M_AXI_WDATA(m02_axi_wdata),
		.M_AXI_WSTRB(m02_axi_wstrb),
		.M_AXI_WVALID(m02_axi_wvalid),
		.M_AXI_WREADY(m02_axi_wready),
		.M_AXI_BRESP(m02_axi_bresp),
		.M_AXI_BVALID(m02_axi_bvalid),
		.M_AXI_BREADY(m02_axi_bready),
		.M_AXI_ARADDR(m02_axi_araddr),
		.M_AXI_ARPROT(m02_axi_arprot),
		.M_AXI_ARVALID(m02_axi_arvalid),
		.M_AXI_ARREADY(m02_axi_arready),
		.M_AXI_RDATA(m02_axi_rdata),
		.M_AXI_RRESP(m02_axi_rresp),
		.M_AXI_RVALID(m02_axi_rvalid),
		.M_AXI_RREADY(m02_axi_rready),
		.ulog_offset(ulog_offset),
        	.base_offset(base_offset),
        	.log_src(log_src),
        	.log_size(log_size),
        	.ndp_status(ndp_status[2]),
        	.ndp_start(ndp_start[2]),
                    .ndp_done(ndp_done[2]),
                    .clobber_enable(clobber_enable),
                    .offset(offset),
                    .offset_valid(offset_valid),
                    .operation_type(operation_type)

	);

// Instantiation of Axi Bus Interface M03_AXI
	memops_scheduler_v1_1_M00_AXI # ( 
		.C_M_START_DATA_VALUE(C_M03_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M03_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M03_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M03_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M03_AXI_TRANSACTIONS_NUM)
	) memops_scheduler_v1_1_M03_AXI_inst (
		//.INIT_AXI_TXN(m03_axi_init_axi_txn),
		//.ERROR(m03_axi_error),
		//.TXN_DONE(m03_axi_txn_done),
		.M_AXI_ACLK(m03_axi_aclk),
		.M_AXI_ARESETN(m00_axi_aresetn),
		.M_AXI_AWADDR(m03_axi_awaddr),
		.M_AXI_AWPROT(m03_axi_awprot),
		.M_AXI_AWVALID(m03_axi_awvalid),
		.M_AXI_AWREADY(m03_axi_awready),
		.M_AXI_WDATA(m03_axi_wdata),
		.M_AXI_WSTRB(m03_axi_wstrb),
		.M_AXI_WVALID(m03_axi_wvalid),
		.M_AXI_WREADY(m03_axi_wready),
		.M_AXI_BRESP(m03_axi_bresp),
		.M_AXI_BVALID(m03_axi_bvalid),
		.M_AXI_BREADY(m03_axi_bready),
		.M_AXI_ARADDR(m03_axi_araddr),
		.M_AXI_ARPROT(m03_axi_arprot),
		.M_AXI_ARVALID(m03_axi_arvalid),
		.M_AXI_ARREADY(m03_axi_arready),
		.M_AXI_RDATA(m03_axi_rdata),
		.M_AXI_RRESP(m03_axi_rresp),
		.M_AXI_RVALID(m03_axi_rvalid),
		.M_AXI_RREADY(m03_axi_rready),
		.ulog_offset(ulog_offset),
        	.base_offset(base_offset),
        	.log_src(log_src),
        	.log_size(log_size),
        	.ndp_status(ndp_status[3]),
        	.ndp_start(ndp_start[3]),
                    .ndp_done(ndp_done[3]),
                    .clobber_enable(clobber_enable),
                    .offset(offset),
                    .offset_valid(offset_valid),
                    .operation_type(operation_type)
	);

// Instantiation of Axi Bus Interface M04_AXI
	memops_scheduler_v1_1_M00_AXI # ( 
		.C_M_START_DATA_VALUE(C_M04_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M04_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M04_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M04_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M04_AXI_TRANSACTIONS_NUM)
	) memops_scheduler_v1_1_M04_AXI_inst (
		//.INIT_AXI_TXN(m04_axi_init_axi_txn),
		//.ERROR(m04_axi_error),
		//.TXN_DONE(m04_axi_txn_done),
		.M_AXI_ACLK(m00_axi_aclk),
		.M_AXI_ARESETN(m00_axi_aresetn),
		.M_AXI_AWADDR(m04_axi_awaddr),
		.M_AXI_AWPROT(m04_axi_awprot),
		.M_AXI_AWVALID(m04_axi_awvalid),
		.M_AXI_AWREADY(m04_axi_awready),
		.M_AXI_WDATA(m04_axi_wdata),
		.M_AXI_WSTRB(m04_axi_wstrb),
		.M_AXI_WVALID(m04_axi_wvalid),
		.M_AXI_WREADY(m04_axi_wready),
		.M_AXI_BRESP(m04_axi_bresp),
		.M_AXI_BVALID(m04_axi_bvalid),
		.M_AXI_BREADY(m04_axi_bready),
		.M_AXI_ARADDR(m04_axi_araddr),
		.M_AXI_ARPROT(m04_axi_arprot),
		.M_AXI_ARVALID(m04_axi_arvalid),
		.M_AXI_ARREADY(m04_axi_arready),
		.M_AXI_RDATA(m04_axi_rdata),
		.M_AXI_RRESP(m04_axi_rresp),
		.M_AXI_RVALID(m04_axi_rvalid),
		.M_AXI_RREADY(m04_axi_rready),
		.ulog_offset(ulog_offset),
        	.base_offset(base_offset),
        	.log_src(log_src),
        	.log_size(log_size),
        	.ndp_status(ndp_status[4]),
        	.ndp_start(ndp_start[4]),
                    .ndp_done(ndp_done[4]),
                    .clobber_enable(clobber_enable),
                    .offset(offset),
                    .offset_valid(offset_valid),
                    .operation_type(operation_type)
	);

// Instantiation of Axi Bus Interface M05_AXI
	memops_scheduler_v1_1_M00_AXI # ( 
		.C_M_START_DATA_VALUE(C_M05_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M05_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M05_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M05_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M05_AXI_TRANSACTIONS_NUM)
	) memops_scheduler_v1_1_M05_AXI_inst (
		//.INIT_AXI_TXN(m05_axi_init_axi_txn),
		//.ERROR(m05_axi_error),
		//.TXN_DONE(m05_axi_txn_done),
		.M_AXI_ACLK(m00_axi_aclk),
		.M_AXI_ARESETN(m00_axi_aresetn),
		.M_AXI_AWADDR(m05_axi_awaddr),
		.M_AXI_AWPROT(m05_axi_awprot),
		.M_AXI_AWVALID(m05_axi_awvalid),
		.M_AXI_AWREADY(m05_axi_awready),
		.M_AXI_WDATA(m05_axi_wdata),
		.M_AXI_WSTRB(m05_axi_wstrb),
		.M_AXI_WVALID(m05_axi_wvalid),
		.M_AXI_WREADY(m05_axi_wready),
		.M_AXI_BRESP(m05_axi_bresp),
		.M_AXI_BVALID(m05_axi_bvalid),
		.M_AXI_BREADY(m05_axi_bready),
		.M_AXI_ARADDR(m05_axi_araddr),
		.M_AXI_ARPROT(m05_axi_arprot),
		.M_AXI_ARVALID(m05_axi_arvalid),
		.M_AXI_ARREADY(m05_axi_arready),
		.M_AXI_RDATA(m05_axi_rdata),
		.M_AXI_RRESP(m05_axi_rresp),
		.M_AXI_RVALID(m05_axi_rvalid),
		.M_AXI_RREADY(m05_axi_rready),
		.ulog_offset(ulog_offset),
        	.base_offset(base_offset),
        	.log_src(log_src),
        	.log_size(log_size),
        	.ndp_status(ndp_status[5]),
        	.ndp_start(ndp_start[5]),
                    .ndp_done(ndp_done[5]),
                    .clobber_enable(clobber_enable),
                    .offset(offset),
                                        .offset_valid(offset_valid),
                                        .operation_type(operation_type)
	);

// Instantiation of Axi Bus Interface M06_AXI
	memops_scheduler_v1_1_M00_AXI # ( 
		.C_M_START_DATA_VALUE(C_M06_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M06_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M06_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M06_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M06_AXI_TRANSACTIONS_NUM)
	) memops_scheduler_v1_1_M06_AXI_inst (
		//.INIT_AXI_TXN(m06_axi_init_axi_txn),
		//.ERROR(m06_axi_error),
		//.TXN_DONE(m06_axi_txn_done),
		.M_AXI_ACLK(m00_axi_aclk),
		.M_AXI_ARESETN(m00_axi_aresetn),
		.M_AXI_AWADDR(m06_axi_awaddr),
		.M_AXI_AWPROT(m06_axi_awprot),
		.M_AXI_AWVALID(m06_axi_awvalid),
		.M_AXI_AWREADY(m06_axi_awready),
		.M_AXI_WDATA(m06_axi_wdata),
		.M_AXI_WSTRB(m06_axi_wstrb),
		.M_AXI_WVALID(m06_axi_wvalid),
		.M_AXI_WREADY(m06_axi_wready),
		.M_AXI_BRESP(m06_axi_bresp),
		.M_AXI_BVALID(m06_axi_bvalid),
		.M_AXI_BREADY(m06_axi_bready),
		.M_AXI_ARADDR(m06_axi_araddr),
		.M_AXI_ARPROT(m06_axi_arprot),
		.M_AXI_ARVALID(m06_axi_arvalid),
		.M_AXI_ARREADY(m06_axi_arready),
		.M_AXI_RDATA(m06_axi_rdata),
		.M_AXI_RRESP(m06_axi_rresp),
		.M_AXI_RVALID(m06_axi_rvalid),
		.M_AXI_RREADY(m06_axi_rready),
		.ulog_offset(ulog_offset),
        	.base_offset(base_offset),
        	.log_src(log_src),
        	.log_size(log_size),
        	.ndp_status(ndp_status[6]),
        	.ndp_start(ndp_start[6]),
                    .ndp_done(ndp_done[6]),
                    .clobber_enable(clobber_enable),
                    .offset(offset),
                                        .offset_valid(offset_valid),
                                        .operation_type(operation_type)
	);

// Instantiation of Axi Bus Interface M07_AXI
	memops_scheduler_v1_1_M00_AXI # ( 
		.C_M_START_DATA_VALUE(C_M07_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M07_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M07_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M07_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M07_AXI_TRANSACTIONS_NUM)
	) memops_scheduler_v1_1_M07_AXI_inst (
		//.INIT_AXI_TXN(m07_axi_init_axi_txn),
		//.ERROR(m07_axi_error),
		//.TXN_DONE(m07_axi_txn_done),
		.M_AXI_ACLK(m00_axi_aclk),
		.M_AXI_ARESETN(m00_axi_aresetn),
		.M_AXI_AWADDR(m07_axi_awaddr),
		.M_AXI_AWPROT(m07_axi_awprot),
		.M_AXI_AWVALID(m07_axi_awvalid),
		.M_AXI_AWREADY(m07_axi_awready),
		.M_AXI_WDATA(m07_axi_wdata),
		.M_AXI_WSTRB(m07_axi_wstrb),
		.M_AXI_WVALID(m07_axi_wvalid),
		.M_AXI_WREADY(m07_axi_wready),
		.M_AXI_BRESP(m07_axi_bresp),
		.M_AXI_BVALID(m07_axi_bvalid),
		.M_AXI_BREADY(m07_axi_bready),
		.M_AXI_ARADDR(m07_axi_araddr),
		.M_AXI_ARPROT(m07_axi_arprot),
		.M_AXI_ARVALID(m07_axi_arvalid),
		.M_AXI_ARREADY(m07_axi_arready),
		.M_AXI_RDATA(m07_axi_rdata),
		.M_AXI_RRESP(m07_axi_rresp),
		.M_AXI_RVALID(m07_axi_rvalid),
		.M_AXI_RREADY(m07_axi_rready),
		.ulog_offset(ulog_offset),
        	.base_offset(base_offset),
        	.log_src(log_src),
        	.log_size(log_size),
        	.ndp_status(ndp_status[7]),
        	.ndp_start(ndp_start[7]),
                    .ndp_done(ndp_done[7]),
                    .clobber_enable(clobber_enable),
                    .offset(offset),
                                        .offset_valid(offset_valid),
                                        .operation_type(operation_type)
	);

	// Add user logic here

	// User logic ends

   
	endmodule
