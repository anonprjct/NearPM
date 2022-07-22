
`timescale 1 ns / 1 ps

	module undolog_v2_1 #
	(
		// Users to add parameters here
        
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 6,

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
		parameter integer C_M02_AXI_TRANSACTIONS_NUM	= 4
	)
	(
		// Users to add ports here
         output [3:0]memclr_state,
         output [3:0]metadatacpy_state,
         output [3:0]datacpy_state,
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
		input wire  m00_axi_init_axi_txn,
		output wire  m00_axi_error,
		output wire  m00_axi_txn_done,
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
		input wire  m01_axi_init_axi_txn,
		output wire  m01_axi_error,
		output wire  m01_axi_txn_done,
		input wire  m01_axi_aclk,
		input wire  m01_axi_aresetn,
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
		input wire  m02_axi_init_axi_txn,
		output wire  m02_axi_error,
		output wire  m02_axi_txn_done,
		input wire  m02_axi_aclk,
		input wire  m02_axi_aresetn,
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
		
		output start_ulog,
           output start_logclr,
           output metadata_done,
           output memclr_done,
           output wire [31:0] dataout,
           output datacpy_done,
           output wire [63:0] ulog_offset,
            output       wire [63:0] base_offset,
            output       wire [63:0] log_src,
            output       wire [63:0] log_size,
            output       wire [63:0] time_cycles,
            output wire logclr_done_reg,
            output wire reg_init_complete,
            output wire [27:0] vaddr_offset,
            output [31:0] physical_src_addr,
            output [31:0] physical_dest_addr,
            output start_redolog,
            output [2:0] operation_type,
            output [63:0] redolog_src_data,
            output [63:0] redolog_dest_data,
            output [31:0] raddr,
            output [31:0] rdata,
            output [31:0] waddr,
            output [31:0] wdata,
            output data_copy_pulse,
            output [31:0] regout
            
	);
	/*wire [63:0] ulog_offset;
        wire [63:0] base_offset;
        wire [63:0] log_src;
        wire [63:0] log_size;
 */       wire start_ulog;
        wire start_logclr;
        wire metadata_done;
        wire memclr_done;
        wire datacpy_done;
        wire start_clobber;
	    wire start_redolog;
	    wire [2:0] operation_type;
	    
	wire [31:0] physical_src_addr;
	wire [31:0] physical_dest_addr;
	
	assign physical_src_addr = (log_src[47:0] - {vaddr_offset,20'h0_0000}) & 32'hffffffff;
	assign physical_dest_addr = (ulog_offset - {16'd0,vaddr_offset,20'h0_0000}) & 32'hffffffff;
	
// Instantiation of Axi Bus Interface S00_AXI
	undolog_v2_1_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) undolog_v2_1_S00_AXI_inst (
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
                .log_size(log_size),
                .start_logclr(start_logclr),
                .start_ulog(start_ulog),
                .start_clobber(start_clobber),
                .logclr_done(memclr_done),
                .metadata_done(metadata_done),
                .datacpy_done(datacpy_done),
                .dataout(dataout),
                .logclr_done_reg(logclr_done_reg),
                .reg_init_complete(reg_init_complete),
                .vaddr_offset(vaddr_offset),
                .start_redolog(start_redolog),
                .operation_type(operation_type),
                .data_copy_pulse(data_copy_pulse),
                .regout(regout)
	);

// Instantiation of Axi Bus Interface M00_AXI
	undolog_v2_1_M00_AXI # ( 
		.C_M_START_DATA_VALUE(C_M00_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M00_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M00_AXI_TRANSACTIONS_NUM)
	) undolog_v2_1_M00_AXI_inst (
		.INIT_AXI_TXN(m00_axi_init_axi_txn),
		.ERROR(m00_axi_error),
		.TXN_DONE(m00_axi_txn_done),
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
		.DMA_START(start_logclr),
                //.DMA_SRC(log_src),
                .DMA_SRC(physical_src_addr),
                //.DMA_DEST(ulog_offset + 64'd24),                
                .DMA_DEST(physical_dest_addr + 64'd24),                
                .DMA_LEN(log_size),
                .DMA_DONE(memclr_done),
                .start_clobber(start_clobber),
                .mst_exec_state(memclr_state)   
	);

// Instantiation of Axi Bus Interface M01_AXI
	undolog_v2_1_M01_AXI # ( 
		.C_M_START_DATA_VALUE(C_M01_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M01_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M01_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M01_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M01_AXI_TRANSACTIONS_NUM)
	) undolog_v2_1_M01_AXI_inst (
		.INIT_AXI_TXN(m01_axi_init_axi_txn),
		.ERROR(m01_axi_error),
		.TXN_DONE(m01_axi_txn_done),
		.M_AXI_ACLK(m01_axi_aclk),
		.M_AXI_ARESETN(m01_axi_aresetn),
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
		.DMA_START(start_ulog | (start_redolog && (log_src[63:60] == 4'ha || log_src[63:60] == 4'hc)) | data_copy_pulse),
                //.DMA_SRC(log_src),
                .DMA_SRC(log_src),//physical_src_addr),
                //.DMA_DEST(ulog_offset + 64'd24),
                .DMA_DEST(operation_type == 3'd2 ? physical_dest_addr : physical_dest_addr + 64'd24),
                //.DMA_DEST(physical_dest_addr + 64'd24),
                .DMA_LEN(log_size ),
                .DMA_DONE(datacpy_done),
                .mst_exec_state(datacpy_state)    
	);

// Instantiation of Axi Bus Interface M02_AXI
	undolog_v2_1_M02_AXI # ( 
		.C_M_START_DATA_VALUE(C_M02_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M02_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M02_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M02_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M02_AXI_TRANSACTIONS_NUM)
	) undolog_v2_1_M02_AXI_inst (
		.INIT_AXI_TXN(m02_axi_init_axi_txn),
		.ERROR(m02_axi_error),
		.TXN_DONE(m02_axi_txn_done),
		.M_AXI_ACLK(m02_axi_aclk),
		.M_AXI_ARESETN(m02_axi_aresetn),
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
		.ulog_offset(physical_dest_addr),
                .base_offset(base_offset),
                .log_src(log_src),
                .log_size(log_size),
                .start_ulog(start_ulog),
                .metadata_done(metadata_done),
                .mst_exec_state(metadatacpy_state),
                .vaddr_offset(vaddr_offset),
                .start_redolog(start_redolog),
                .redolog_src_data(redolog_src_data),
                .redolog_dest_data(redolog_dest_data),
                .raddr(raddr),
                .rdata(rdata),
                .waddr(waddr),
                .wdata(wdata)
                
	);

	// Add user logic here

	// User logic ends

	endmodule
