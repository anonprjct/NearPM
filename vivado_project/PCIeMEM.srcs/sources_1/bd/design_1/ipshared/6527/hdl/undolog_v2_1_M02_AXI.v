
`timescale 1 ns / 1 ps

	module undolog_v2_1_M02_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// The master will start generating data from the C_M_START_DATA_VALUE value
		parameter  C_M_START_DATA_VALUE	= 32'h00000000,
		// The master requires a target slave base address.
    // The master will initiate read and write transactions on the slave with base address specified here as a parameter.
		parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h00000000,
		// Width of M_AXI address bus. 
    // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		// Width of M_AXI data bus. 
    // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
		parameter integer C_M_AXI_DATA_WIDTH	= 32,
		// Transaction number is the number of write 
    // and read transactions the master will perform as a part of this example memory test.
		parameter integer C_M_TRANSACTIONS_NUM	= 4
	)
	(
			// Users to add ports here
        
        output reg metadata_done,
        
        input wire [63:0] ulog_offset,
        input wire [63:0] base_offset,
        input wire [63:0] log_src,
        input wire [63:0] log_size,
        input wire [27:0] vaddr_offset,
        input wire start_ulog,
	input wire start_redolog,
        output [3:0] mst_exec_state,
        output [63:0] redolog_src_data,
        output [63:0] redolog_dest_data,
        output [31:0] raddr,
        output [31:0] rdata,
        output [31:0] waddr,
        output [31:0] wdata,
        // User ports ends
        // Do not modify the ports beyond this line

        // Initiate AXI transactions
        input wire  INIT_AXI_TXN,
        // Asserts when ERROR is detected
        output reg  ERROR,
        // Asserts when AXI transactions is complete
        output wire  TXN_DONE,
        // AXI clock signal
        input wire  M_AXI_ACLK,
        // AXI active low reset signal
        input wire  M_AXI_ARESETN,
        // Master Interface Write Address Channel ports. Write address (issued by master)
        output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
        // Write channel Protection type.
    // This signal indicates the privilege and security level of the transaction,
    // and whether the transaction is a data access or an instruction access.
        output wire [2 : 0] M_AXI_AWPROT,
        // Write address valid. 
    // This signal indicates that the master signaling valid write address and control information.
        output wire  M_AXI_AWVALID,
        // Write address ready. 
    // This signal indicates that the slave is ready to accept an address and associated control signals.
        input wire  M_AXI_AWREADY,
        // Master Interface Write Data Channel ports. Write data (issued by master)
        output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
        // Write strobes. 
    // This signal indicates which byte lanes hold valid data.
    // There is one write strobe bit for each eight bits of the write data bus.
        output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
        // Write valid. This signal indicates that valid write data and strobes are available.
        output wire  M_AXI_WVALID,
        // Write ready. This signal indicates that the slave can accept the write data.
        input wire  M_AXI_WREADY,
        // Master Interface Write Response Channel ports. 
    // This signal indicates the status of the write transaction.
        input wire [1 : 0] M_AXI_BRESP,
        // Write response valid. 
    // This signal indicates that the channel is signaling a valid write response
        input wire  M_AXI_BVALID,
        // Response ready. This signal indicates that the master can accept a write response.
        output wire  M_AXI_BREADY,
        // Master Interface Read Address Channel ports. Read address (issued by master)
        output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
        // Protection type. 
    // This signal indicates the privilege and security level of the transaction, 
    // and whether the transaction is a data access or an instruction access.
        output wire [2 : 0] M_AXI_ARPROT,
        // Read address valid. 
    // This signal indicates that the channel is signaling valid read address and control information.
        output wire  M_AXI_ARVALID,
        // Read address ready. 
    // This signal indicates that the slave is ready to accept an address and associated control signals.
        input wire  M_AXI_ARREADY,
        // Master Interface Read Data Channel ports. Read data (issued by slave)
        input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
        // Read response. This signal indicates the status of the read transfer.
        input wire [1 : 0] M_AXI_RRESP,
        // Read valid. This signal indicates that the channel is signaling the required read data.
        input wire  M_AXI_RVALID,
        // Read ready. This signal indicates that the master can accept the read data and response information.
        output wire  M_AXI_RREADY
    );

    // function called clogb2 that returns an integer which has the
    // value of the ceiling of the log base 2

     function integer clogb2 (input integer bit_depth);
         begin
         for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
             bit_depth = bit_depth >> 1;
         end
     endfunction

    // TRANS_NUM_BITS is the width of the index counter for 
    // number of write or read transaction.
     localparam integer TRANS_NUM_BITS = clogb2(C_M_TRANSACTIONS_NUM-1);

    //DMA configuration parameters
     localparam XAXIDMA_TX_OFFSET  =  32'h00000000;
     localparam XAXIDMA_RX_OFFSET  =  32'h00000030;
     localparam XAXIDMA_CR_OFFSET  =  32'h00000000;
     localparam XAXIDMA_SR_OFFSET  =  32'h00000004;
     localparam XAXIDMA_SRCADDR_OFFSET    = 32'h00000018;
     localparam XAXIDMA_DESTADDR_OFFSET    = 32'h00000018;
     localparam XAXIDMA_CR_RUNSTOP_MASK    = 32'h00000001;
     localparam XAXIDMA_BUFFLEN_OFFSET    = 32'h00000028;
     localparam XAXIDMA_HALTED_MASK    =    32'h00000001;
     localparam XAXIDMA_IDLE_MASK    =    32'h00000002;
     

    /////////////////////////////////////////////


    // Example State machine to initialize counter, initialize write transactions, 
    // initialize read transactions and comparison of read data with the 
    // written data words.
    parameter [3:0] IDLE               = 4'b0000,
       //undolog
        WR_ULOG_OFFSET_1               = 4'b0001,
        WR_ULOG_OFFSET_2               = 4'b0010,
        WR_BASE_OFFSET_1               = 4'b0011,
        WR_BASE_OFFSET_2               = 4'b0100,
        WR_LOG_SIZE_1                  = 4'b0101,
        WR_LOG_SIZE_2                  = 4'b0110,
        DONE                           = 4'b0111,

	//redolog
	READ_SRC_VALUE_1		       = 4'b1000,
	READ_SRC_VALUE_2		       = 4'b1001,
	READ_DEST_VALUE_1		       = 4'b1010,
	READ_DEST_VALUE_2		       = 4'b1011,
	UPDATE_1			       = 4'b1100,
	UPDATE_2			       = 4'b1101;


    reg [3:0] mst_exec_state;

    // AXI4LITE signals
    //write address valid
    reg      axi_awvalid;
    //write data valid
    reg      axi_wvalid;
    //read address valid
    reg      axi_arvalid;
    //read data acceptance
    reg      axi_rready;
    //write response acceptance
    reg      axi_bready;
    //write address
    reg [C_M_AXI_ADDR_WIDTH-1 : 0]     axi_awaddr;
    //write data
    reg [C_M_AXI_DATA_WIDTH-1 : 0]     axi_wdata;
    //read addresss
    reg [C_M_AXI_ADDR_WIDTH-1 : 0]     axi_araddr;
    //Asserts when there is a write response error
    wire      write_resp_error;
    //Asserts when there is a read response error
    wire      read_resp_error;
    //A pulse to initiate a write transaction
    reg      start_single_write;
    //A pulse to initiate a read transaction
    reg      start_single_read;
    //Asserts when a single beat write transaction is issued and remains asserted till the completion of write trasaction.
    reg      write_issued;
    //Asserts when a single beat read transaction is issued and remains asserted till the completion of read trasaction.
    reg      read_issued;
    //flag that marks the completion of write trasactions. The number of write transaction is user selected by the parameter C_M_TRANSACTIONS_NUM.
    reg      writes_done;
    //flag that marks the completion of read trasactions. The number of read transaction is user selected by the parameter C_M_TRANSACTIONS_NUM
    reg      reads_done;
    //The error register is asserted when any of the write response error, read response error or the data mismatch flags are asserted.
    reg      error_reg;
    //index counter to track the number of write transaction issued
    reg [TRANS_NUM_BITS : 0]     write_index;
    //index counter to track the number of read transaction issued
    reg [TRANS_NUM_BITS : 0]     read_index;
    //Expected read data used to compare with the read data.
    reg [C_M_AXI_DATA_WIDTH-1 : 0]     expected_rdata;
    //Flag marks the completion of comparison of the read data with the expected read data
    reg      compare_done;
    //This flag is asserted when there is a mismatch of the read data with the expected read data.
    reg      read_mismatch;
    //Flag is asserted when the write index reaches the last write transction number
    reg      last_write;
    //Flag is asserted when the read index reaches the last read transction number
    reg      last_read;
    reg      init_txn_ff;
    reg      init_txn_ff2;
    reg      init_txn_edge;
    wire      init_txn_pulse;


    // I/O Connections assignments

    //Adding the offset address to the base addr of the slave
    assign M_AXI_AWADDR    = C_M_TARGET_SLAVE_BASE_ADDR + axi_awaddr;
    //AXI 4 write data
    assign M_AXI_WDATA    = axi_wdata;
    assign M_AXI_AWPROT    = 3'b000;
    assign M_AXI_AWVALID    = axi_awvalid;
    //Write Data(W)
    assign M_AXI_WVALID    = axi_wvalid;
    //Set all byte strobes in this example
    assign M_AXI_WSTRB    = 4'b1111;
    //Write Response (B)
    assign M_AXI_BREADY    = axi_bready;
    //Read Address (AR)
    assign M_AXI_ARADDR    = C_M_TARGET_SLAVE_BASE_ADDR + axi_araddr;
    assign M_AXI_ARVALID    = axi_arvalid;
    assign M_AXI_ARPROT    = 3'b001;
    //Read and Read Response (R)
    assign M_AXI_RREADY    = axi_rready;
    //Example design I/O
    assign TXN_DONE    = compare_done;
    assign init_txn_pulse    = start_ulog | start_redolog;
    //assign init_txn_pulse    = (!init_txn_ff2) && init_txn_ff;


    //Generate a pulse to initiate AXI transaction.
    always @(posedge M_AXI_ACLK)                                              
      begin                                                                        
        // Initiates AXI transaction delay    
        if (M_AXI_ARESETN == 0 )                                                   
          begin                                                                    
            init_txn_ff <= 1'b0;                                                   
            init_txn_ff2 <= 1'b0;                                                   
          end                                                                               
        else                                                                       
          begin  
            init_txn_ff <= INIT_AXI_TXN;
            init_txn_ff2 <= init_txn_ff;                                                                 
          end                                                                      
      end     


    //--------------------
    //Write Address Channel
    //--------------------

    // The purpose of the write address channel is to request the address and 
    // command information for the entire transaction.  It is a single beat
    // of information.

    // Note for this example the axi_awvalid/axi_wvalid are asserted at the same
    // time, and then each is deasserted independent from each other.
    // This is a lower-performance, but simplier control scheme.

    // AXI VALID signals must be held active until accepted by the partner.

    // A data transfer is accepted by the slave when a master has
    // VALID data and the slave acknoledges it is also READY. While the master
    // is allowed to generated multiple, back-to-back requests by not 
    // deasserting VALID, this design will add rest cycle for
    // simplicity.

    // Since only one outstanding transaction is issued by the user design,
    // there will not be a collision between a new request and an accepted
    // request on the same clock cycle. 

      always @(posedge M_AXI_ACLK)                                              
      begin                                                                        
        //Only VALID signals must be deasserted during reset per AXI spec          
        //Consider inverting then registering active-low reset for higher fmax     
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                   
          begin                                                                    
            axi_awvalid <= 1'b0;                                                   
          end                                                                      
          //Signal a new address/data command is available by user logic           
        else                                                                       
          begin                                                                    
            if (start_single_write)                                                
              begin                                                                
                axi_awvalid <= 1'b1;                                               
              end                                                                  
         //Address accepted by interconnect/slave (issue of M_AXI_AWREADY by slave)
            else if (M_AXI_AWREADY && axi_awvalid)                                 
              begin                                                                
                axi_awvalid <= 1'b0;                                               
              end                                                                  
          end                                                                      
      end                                                                          
                                                                                   
                                                                                   
      // start_single_write triggers a new write                                   
      // transaction. write_index is a counter to                                  
      // keep track with number of write transaction                               
      // issued/initiated                                                          
      always @(posedge M_AXI_ACLK)                                                 
      begin                                                                        
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                   
          begin                                                                    
            write_index <= 0;                                                      
          end                                                                      
          // Signals a new write address/ write data is                            
          // available by user logic                                               
        else if (start_single_write)                                               
          begin                                                                    
            write_index <= write_index + 1;                                        
          end                                                                      
      end                                                                          


    //--------------------
    //Write Data Channel
    //--------------------

    //The write data channel is for transfering the actual data.
    //The data generation is speific to the example design, and 
    //so only the WVALID/WREADY handshake is shown here

       always @(posedge M_AXI_ACLK)                                        
       begin                                                                         
         if (M_AXI_ARESETN == 0  || init_txn_pulse == 1'b1)                                                    
           begin                                                                     
             axi_wvalid <= 1'b0;                                                     
           end                                                                       
         //Signal a new address/data command is available by user logic              
         else if (start_single_write)                                                
           begin                                                                     
             axi_wvalid <= 1'b1;                                                     
           end                                                                       
         //Data accepted by interconnect/slave (issue of M_AXI_WREADY by slave)      
         else if (M_AXI_WREADY && axi_wvalid)                                        
           begin                                                                     
            axi_wvalid <= 1'b0;                                                      
           end                                                                       
       end                                                                           


    //----------------------------
    //Write Response (B) Channel
    //----------------------------

    //The write response channel provides feedback that the write has committed
    //to memory. BREADY will occur after both the data and the write address
    //has arrived and been accepted by the slave, and can guarantee that no
    //other accesses launched afterwards will be able to be reordered before it.

    //The BRESP bit [1] is used indicate any errors from the interconnect or
    //slave for the entire write burst. This example will capture the error.

    //While not necessary per spec, it is advisable to reset READY signals in
    //case of differing reset latencies between master/slave.

      always @(posedge M_AXI_ACLK)                                    
      begin                                                                
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                           
          begin                                                            
            axi_bready <= 1'b0;                                            
          end                                                              
        // accept/acknowledge bresp with axi_bready by the master          
        // when M_AXI_BVALID is asserted by slave                          
        else if (M_AXI_BVALID && ~axi_bready)                              
          begin                                                            
            axi_bready <= 1'b1;                                            
          end                                                              
        // deassert after one clock cycle                                  
        else if (axi_bready)                                               
          begin                                                            
            axi_bready <= 1'b0;                                            
          end                                                              
        // retain the previous value                                       
        else                                                               
          axi_bready <= axi_bready;                                        
      end                                                                  
                                                                           
    //Flag write errors                                                    
    assign write_resp_error = (axi_bready & M_AXI_BVALID & M_AXI_BRESP[1]);


    //----------------------------
    //Read Address Channel
    //----------------------------

    //start_single_read triggers a new read transaction. read_index is a counter to
    //keep track with number of read transaction issued/initiated

      always @(posedge M_AXI_ACLK)                                                     
      begin                                                                            
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                       
          begin                                                                        
            read_index <= 0;                                                           
          end                                                                          
        // Signals a new read address is                                               
        // available by user logic                                                     
        else if (start_single_read)                                                    
          begin                                                                        
            read_index <= read_index + 1;                                              
          end                                                                          
      end                                                                              
                                                                                       
      // A new axi_arvalid is asserted when there is a valid read address              
      // available by the master. start_single_read triggers a new read                
      // transaction                                                                   
      always @(posedge M_AXI_ACLK)                                                     
      begin                                                                            
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                       
          begin                                                                        
            axi_arvalid <= 1'b0;                                                       
          end                                                                          
        //Signal a new read address command is available by user logic                 
        else if (start_single_read)                                                    
          begin                                                                        
            axi_arvalid <= 1'b1;                                                       
          end                                                                          
        //RAddress accepted by interconnect/slave (issue of M_AXI_ARREADY by slave)    
        else if (M_AXI_ARREADY && axi_arvalid)                                         
          begin                                                                        
            axi_arvalid <= 1'b0;                                                       
          end                                                                          
        // retain the previous value                                                   
      end                                                                              


    //--------------------------------
    //Read Data (and Response) Channel
    //--------------------------------

    //The Read Data channel returns the results of the read request 
    //The master will accept the read data by asserting axi_rready
    //when there is a valid read data available.
    //While not necessary per spec, it is advisable to reset READY signals in
    //case of differing reset latencies between master/slave.

      always @(posedge M_AXI_ACLK)                                    
      begin                                                                 
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                            
          begin                                                             
            axi_rready <= 1'b0;                                             
          end                                                               
        // accept/acknowledge rdata/rresp with axi_rready by the master     
        // when M_AXI_RVALID is asserted by slave                           
        else if (M_AXI_RVALID && ~axi_rready)                               
          begin                                                             
            axi_rready <= 1'b1;                                             
          end                                                               
        // deassert after one clock cycle                                   
        else if (axi_rready)                                                
          begin                                                             
            axi_rready <= 1'b0;                                             
          end                                                               
        // retain the previous value                                        
      end                                                                   
                                                                            
    //Flag write errors                                                     
    assign read_resp_error = (axi_rready & M_AXI_RVALID & M_AXI_RRESP[1]);  


    //--------------------------------
    //User Logic
    //--------------------------------

    //Address/Data Stimulus
    reg [31:0] waddr;
    reg [31:0] wdata;
    reg [31:0] raddr;
    reg [31:0] rdata;
    //Address/data pairs for this example. The read and write values should
    //match.
    //Modify these as desired for different address patterns.

      //Write Addresses                                        
      always @(posedge M_AXI_ACLK)                                  
          begin                                                     
            if (M_AXI_ARESETN == 0  || init_txn_pulse == 1'b1)                                
              begin                                                 
                axi_awaddr <= 0;                                    
              end                                                   
              // Signals a new write address/ write data is         
              // available by user logic                            
            else //if (M_AXI_AWREADY && axi_awvalid)                  
              begin                                                 
                axi_awaddr <= waddr;//axi_awaddr + 32'h00000004;            
                                                                    
              end                                                   
          end                                                       
                                                                    
      // Write data generation                                      
      always @(posedge M_AXI_ACLK)                                  
          begin                                                     
            if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                
              begin                                                 
                axi_wdata <= 32'd0;//C_M_START_DATA_VALUE;                  
              end                                                   
            // Signals a new write address/ write data is           
            // available by user logic                              
            else //if (M_AXI_WREADY && axi_wvalid)                    
              begin                                                 
                axi_wdata <= wdata;//C_M_START_DATA_VALUE + write_index;    
              end                                                   
            end                                                     
                                                                    
      //Read Addresses                                              
      always @(posedge M_AXI_ACLK)                                  
          begin                                                     
            if (M_AXI_ARESETN == 0  || init_txn_pulse == 1'b1)                                
              begin                                                 
                axi_araddr <= 0;                                    
              end                                                   
              // Signals a new write address/ write data is         
              // available by user logic                            
            else //if (M_AXI_ARREADY && axi_arvalid)                  
              begin                                                 
                axi_araddr <= raddr;//axi_araddr + 32'h00000004;            
              end                                                   
          end                                                       
                                                                    
                                                                    
                                                                    
      always @(posedge M_AXI_ACLK)                                  
          begin                                                     
            if (M_AXI_ARESETN == 0  || init_txn_pulse == 1'b1)                                
              begin                                                 
                expected_rdata <= C_M_START_DATA_VALUE;             
              end                                                   
              // Signals a new write address/ write data is         
              // available by user logic                            
            else if (M_AXI_RVALID && axi_rready)                    
              begin                                                 
                expected_rdata <= C_M_START_DATA_VALUE + read_index;
              end                                                   
          end                                            
    
    
    /*
    WR_ULOG_OFFSET_1               = 4'b0001,
            WR_ULOG_OFFSET_2               = 4'b0010,
            WR_BASE_OFFSET_1               = 4'b0011,
            WR_BASE_OFFSET_2               = 4'b0100,
            WR_LOG_SIZE_1                  = 4'b0101,
            WR_LOG_SIZE_2                  = 4'b0110,
            DONE                           = 4'b0111;
            
             input wire [63:0] ulog_offset,
                   input wire [63:0] base_offset,
                   input wire [63:0] log_src,
                   input wire [63:0] log_size,
               

    */
   /*    reg metadata_done_pulsegen;
       reg metadata_done_pulsegen_d1;    
       reg metadata_write_complete;
       assign metadata_done = metadata_done_pulsegen && (!metadata_done_pulsegen_d1);

       always @ (posedge M_AXI_ACLK) begin
         if (M_AXI_ARESETN == 1'b0) begin
            metadata_done_pulsegen <= 1'b0;
            metadata_done_pulsegen_d1 <= 1'b0;            
         end
         else begin
            metadata_done_pulsegen <= metadata_write_complete;
            metadata_done_pulsegen_d1 <= metadata_done_pulsegen;
         end
       end
*/
      //implement MM-steam command interface state machine                


      reg [63:0] redolog_src_data;
      reg [63:0] redolog_dest_data;
      reg [5:0] tmp;
      always @ ( posedge M_AXI_ACLK)                                                    
      begin                                                                             
        if (M_AXI_ARESETN == 1'b0)                                                     
          begin                                                                         
          // reset condition                                                            
          // All the signals are assigned default values under reset condition          
            mst_exec_state  <= IDLE;                                            
            start_single_write <= 1'b0;                                                 
            write_issued  <= 1'b0;           
            waddr <= 32'd0;        
            raddr <= 32'd0;       
            wdata <=32'd0;      
            start_single_read  <= 1'b0;                                                 
            read_issued   <= 1'b0;                                                      
            compare_done  <= 1'b0;   
            metadata_done <= 1'b0;
	    redolog_src_data <= 64'd0;
	    redolog_dest_data <= 64'd0;
//        metadata_write_complete <= 1'b0;        
            ERROR <= 1'b0;
            
            tmp <=  6'd0;
          end                                                                           
        else                                                                            
          begin          
        metadata_done <= 1'b0;          
           // state transition                                                          
            case (mst_exec_state)                                                                                     
              IDLE:                                                             
              // This state is responsible to initiate 
              // AXI transaction when init_txn_pulse is asserted 
              begin
   		mst_exec_state  <= IDLE;        
                
		if ( start_ulog == 1'b1 )                                     
                  begin                                                                 
                    mst_exec_state  <= WR_ULOG_OFFSET_1;                                      
                    ERROR <= 1'b0;
                  end                                                                   
                /*
		READ_SRC_VALUE		       = 4'b1000;
		UPDATE			       = 4'b1001;
		WRITE_BACK		       = 4'b1010;
		*/                                                           
                if ( start_redolog == 1'b1 && (log_src[63:60] == 4'h0 || log_src[63:60] == 4'h2 || log_src[63:60] == 4'h4))                                     
                  begin                                                                 
                    mst_exec_state  <= READ_SRC_VALUE_1;    
                    //redolog_src_data <=  base_offset;                                 
                    ERROR <= 1'b0;
                  end                                                     
      
	///Ulog section  
              end                                                                            
              WR_ULOG_OFFSET_1:                                                     
                   if (writes_done)                                                        
                   begin                                                                 
                       mst_exec_state <= WR_ULOG_OFFSET_2;//                                      
                     end                                                                   
                   else                                                                    
                     begin                                                                 
                       mst_exec_state  <= WR_ULOG_OFFSET_1;                                      
                                                                                           
                       if (~axi_awvalid && ~axi_wvalid && ~M_AXI_BVALID &&  ~start_single_write && ~write_issued)
                         begin                                                           
                           start_single_write <= 1'b1;                                   
                           write_issued  <= 1'b1;             
                           waddr <=  ulog_offset;     
                           wdata <= base_offset[31:0];
                         end                                                             
                       else if (axi_bready)                                              
                         begin                                                           
                           write_issued  <= 1'b0;                                        
                         end                                                             
                       else                                                              
                         begin                                                           
                           start_single_write <= 1'b0; //Negate to generate a pulse      
                         end                                                             
                    end
           WR_ULOG_OFFSET_2:                                                     
                   if (writes_done)                                                        
                   begin                                                                 
                       mst_exec_state <= WR_LOG_SIZE_1;//                                      
                     end                                                                   
                   else                                                                    
                     begin                                                                 
                       mst_exec_state  <= WR_ULOG_OFFSET_2;                                      
                                                                                           
                       if (~axi_awvalid && ~axi_wvalid && ~M_AXI_BVALID &&  ~start_single_write && ~write_issued)
                         begin                                                           
                           start_single_write <= 1'b1;                                   
                           write_issued  <= 1'b1;             
                           waddr <=  ulog_offset + 4;     
                           wdata <= base_offset[63:32];
                         end                                                             
                       else if (axi_bready)                                              
                         begin                                                           
                           write_issued  <= 1'b0;                                        
                         end                                                             
                       else                                                              
                         begin                                                           
                           start_single_write <= 1'b0; //Negate to generate a pulse      
                         end                                                             
                    end 

           WR_LOG_SIZE_1:                                                     
                   if (writes_done)                                                        
                   begin                                                                 
                       mst_exec_state <= WR_LOG_SIZE_2;//                                      
                     end                                                                   
                   else                                                                    
                     begin                                                                 
                       mst_exec_state  <= WR_LOG_SIZE_1;                                      
                                                                                           
                       if (~axi_awvalid && ~axi_wvalid && ~M_AXI_BVALID &&  ~start_single_write && ~write_issued)
                         begin                                                           
                           start_single_write <= 1'b1;                                   
                           write_issued  <= 1'b1;             
                           waddr <=  ulog_offset + 16;     
                           wdata <= log_size[31:0];
                         end                                                             
                       else if (axi_bready)                                              
                         begin                                                           
                           write_issued  <= 1'b0;                                        
                         end                                                             
                       else                                                              
                         begin                                                           
                           start_single_write <= 1'b0; //Negate to generate a pulse      
                         end                                                             
                    end            
                   
           WR_LOG_SIZE_2:                                                                                                                   
                   if (writes_done)                                                        
                   begin                                                                 
                       mst_exec_state <= DONE;//                                      
                     end                                                                   
                   else                                                                    
                     begin                                                                 
                       mst_exec_state  <= WR_LOG_SIZE_2;                                      
                                                                                           
                       if (~axi_awvalid && ~axi_wvalid && ~M_AXI_BVALID &&  ~start_single_write && ~write_issued)
                         begin                                                           
                           start_single_write <= 1'b1;                                   
                           write_issued  <= 1'b1;             
                           waddr <=  ulog_offset + 20;     
                           wdata <= log_size[63:32];
                         end                                                             
                       else if (axi_bready)                                              
                         begin                                                           
                           write_issued  <= 1'b0;                                        
                         end                                                             
                       else                                                              
                         begin                                                           
                           start_single_write <= 1'b0; //Negate to generate a pulse      
                         end                                                             
                    end   
	   //redo log
	   //	READ_SRC_VALUE_1		       = 4'b1000;
	//	READ_SRC_VALUE_2		       = 4'b1001;
	//	READ_DEST_VALUE_1		       = 4'b1010;
	//	READ_DEST_VALUE_2		       = 4'b1011;

	//	UPDATE_1			       = 4'b1010;
	//	UPDATE_2			       = 4'b1011;
	     READ_SRC_VALUE_1:                                                                
                    if (reads_done)                                                        
                      begin                                                                                                                                  
                          mst_exec_state <= READ_SRC_VALUE_2;     
			              redolog_src_data[31:0] <= rdata; 			  
                      end                                                                  
                    else                                                                   
                      begin                                                                
                        mst_exec_state  <= READ_SRC_VALUE_1;                                      
                                                                                          
                        if (~axi_arvalid && ~M_AXI_RVALID && ~start_single_read && ~read_issued)
                          begin                                                            
                            start_single_read <= 1'b1;                                     
                            read_issued  <= 1'b1;       
			    //in redo log base offset is the src address
                            raddr <= ((log_src[47:0] - {vaddr_offset,20'h0_0000}) & 32'hffffffff);                                  
                          end                                                              
                        else if (axi_rready)                                               
                          begin                                                            
                            read_issued  <= 1'b0;                                          
                          end                                                              
                        else                                                               
                          begin                                                            
                            start_single_read <= 1'b0; //Negate to generate a pulse        
                          end                                                              
                      end  
  		READ_SRC_VALUE_2:                                                                
                    if (reads_done)                                                        
                      begin                                                                                                                                  
                          mst_exec_state <= READ_DEST_VALUE_1;    
			              redolog_src_data[63:32] <= rdata;	  
                      end                                                                  
                    else                                                                   
                      begin                                                                
                        mst_exec_state  <= READ_SRC_VALUE_2;                                      
                        		                                                                   
                        if (~axi_arvalid && ~M_AXI_RVALID && ~start_single_read && ~read_issued)
                          begin                                                            
                            start_single_read <= 1'b1;                                     
                            read_issued  <= 1'b1;       
                            raddr <= ((log_src[47:0] - {vaddr_offset,20'h0_0000}) & 32'hffffffff) + 32'd4;                                  
                          end                                                              
                        else if (axi_rready)                                               
                          begin                                                            
                            read_issued  <= 1'b0;                                          
                          end                                                              
                        else                                                               
                          begin                                                            
                            start_single_read <= 1'b0; //Negate to generate a pulse        
                          end                                                              
                      end  
	       READ_DEST_VALUE_1:                                                                
                    if (reads_done)                                                        
                      begin                                                                                                                                  
                          mst_exec_state <= READ_DEST_VALUE_2;     
			              redolog_dest_data[31:0] <= rdata;			  
                      end                                                                  
                    else                                                                   
                      begin                                                                
                        mst_exec_state  <= READ_DEST_VALUE_1;                                      
                                                                                           
                        if (~axi_arvalid && ~M_AXI_RVALID && ~start_single_read && ~read_issued)
                          begin                                                            
                            start_single_read <= 1'b1;                                     
                            read_issued  <= 1'b1;       
                            raddr <= ulog_offset;                                  
                          end                                                              
                        else if (axi_rready)                                               
                          begin                                                            
                            read_issued  <= 1'b0;                                          
                          end                                                              
                        else                                                               
                          begin                                                            
                            start_single_read <= 1'b0; //Negate to generate a pulse        
                          end                                                              
                      end  
  		READ_DEST_VALUE_2:                                                                
                    if (reads_done)                                                        
                      begin                                                                                                                                  
                          mst_exec_state <= UPDATE_1;    
			              redolog_dest_data[63:32] <= rdata;			  
                      end                                                                  
                    else                                                                   
                      begin                                                                
                        mst_exec_state  <= READ_DEST_VALUE_2;                                      
                                                                                           
                        if (~axi_arvalid && ~M_AXI_RVALID && ~start_single_read && ~read_issued)
                          begin                                                            
                            start_single_read <= 1'b1;                                     
                            read_issued  <= 1'b1;       
                            raddr <= ulog_offset + 32'd4;                                  
                          end                                                              
                        else if (axi_rready)                                               
                          begin                                                            
                            read_issued  <= 1'b0;                                          
                          end                                                              
                        else                                                               
                          begin                                                            
                            start_single_read <= 1'b0; //Negate to generate a pulse        
                          end                                                              
                      end  
		//and 2
		//or 4
		//set 0
		//buf set a
		//buf copy c
	   UPDATE_1:                                                                                                                   
                   if (writes_done)                                                        
                   begin                                                                 
                       mst_exec_state <= UPDATE_2;//                                      
                     end                                                                   
                   else                                                                    
                     begin                                                                 
                       mst_exec_state  <= UPDATE_1;                                      
                                                                                           
                       if (~axi_awvalid && ~axi_wvalid && ~M_AXI_BVALID &&  ~start_single_write && ~write_issued)
                         begin                                                           
                           start_single_write <= 1'b1;                                   
                           write_issued  <= 1'b1;             
                           waddr <=  ulog_offset;     
			   
                       case(log_src[63:60])
                        8'h0: 		wdata <= redolog_src_data[31:0];
                        8'h2: 		wdata <= redolog_src_data[31:0] & redolog_dest_data[31:0];
                        8'h4: 		wdata <= redolog_src_data[31:0] | redolog_dest_data[31:0];
                        default:	wdata <= 32'd0;
                       endcase
                          
                         end                                                             
                       else if (axi_bready)                                              
                         begin                                                           
                           write_issued  <= 1'b0;                                        
                         end                                                             
                       else                                                              
                         begin                                                           
                           start_single_write <= 1'b0; //Negate to generate a pulse      
                         end                                                             
                    end   
 	   UPDATE_2:                                                                                                                   
                   if (writes_done)                                                        
                   begin                                                                 
                       mst_exec_state <= DONE;//                                      
                     end                                                                   
                   else                                                                    
                     begin                                                                 
                       mst_exec_state  <= UPDATE_2;                                      
                                                                                           
                       if (~axi_awvalid && ~axi_wvalid && ~M_AXI_BVALID &&  ~start_single_write && ~write_issued)
                         begin                                                           
                           start_single_write <= 1'b1;                                   
                           write_issued  <= 1'b1;             
                           waddr <=  ulog_offset  + 32'd4;     
                           
                       case(log_src[63:60])
                        8'h0: 		wdata <= redolog_src_data[63:32];
                        8'h2: 		wdata <= redolog_src_data[63:32] & redolog_dest_data[63:32];
                        8'h4: 		wdata <= redolog_src_data[63:32] | redolog_dest_data[63:32];
                        default:	wdata <= 32'd0;
                       endcase

                         end                                                             
                       else if (axi_bready)                                              
                         begin                                                           
                           write_issued  <= 1'b0;                                        
                         end                                                             
                       else                                                              
                         begin                                                           
                           start_single_write <= 1'b0; //Negate to generate a pulse      
                         end                                                             
                    end   


           DONE:                                                                                                            
                   begin             
               	       metadata_done <= 1'b1;           
                       mst_exec_state <= IDLE;//                                                                          
                   end
/*               UPDATE_READ_CR_1:                                                                
                   // This state is responsible to issue start_single_read pulse to        
                   // initiate a read transaction. Read transactions will be               
                   // issued until last_read signal is asserted.                           
                    // read controller                                                     
                    if (reads_done)                                                        
                      begin                                                                                                                                  
                          mst_exec_state <= UPDATE_READ_CR_2;                                   
                      end                                                                  
                    else                                                                   
                      begin                                                                
                        mst_exec_state  <= UPDATE_READ_CR_1;                                      
                                                                                           
                        if (~axi_arvalid && ~M_AXI_RVALID && ~start_single_read && ~read_issued)
                          begin                                                            
                            start_single_read <= 1'b1;                                     
                            read_issued  <= 1'b1;       
                            raddr <= XAXIDMA_TX_OFFSET + XAXIDMA_CR_OFFSET;                                  
                          end                                                              
                        else if (axi_rready)                                               
                          begin                                                            
                            read_issued  <= 1'b0;                                          
                          end                                                              
                        else                                                               
                          begin                                                            
                            start_single_read <= 1'b0; //Negate to generate a pulse        
                          end                                                              
                      end  
                      */                  
               default :                                                                
                 begin                                                                  
                   mst_exec_state  <= IDLE;                                     
                 end                                                                    
            endcase                                                                     
        end                                                                             
      end       
      
      
                                     
      //Terminal write count                                                            
                                                                                        
      always @(posedge M_AXI_ACLK)                                                      
      begin                                                                             
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                         
          last_write <= 1'b0;                                                           
                                                                                        
        //The last write should be associated with a write address ready response       
        else if ((write_index == C_M_TRANSACTIONS_NUM) && M_AXI_AWREADY)                
          last_write <= 1'b1;                                                           
        else                                                                            
          last_write <= last_write;                                                     
      end                                                                               
                                                                                        
      //Check for last write completion.                                                
                                                                                        
      //This logic is to qualify the last write count with the final write              
      //response. This demonstrates how to confirm that a write has been                
      //committed.                                                                      
                                                                                        
      always @(posedge M_AXI_ACLK)                                                      
      begin                                                                             
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                         
          writes_done <= 1'b0;                                                          
                                                                                        
          //The writes_done should be associated with a bready response                 
        //else if (last_write && M_AXI_BVALID && axi_bready) 
        else if (M_AXI_BVALID && axi_bready)                              
          writes_done <= 1'b1;                                                          
        else                                                                            
          writes_done <= 1'b0;//writes_done;                                                   
      end                                                                               
                                                                                        
    //------------------                                                                
    //Read example                                                                      
    //------------------                                                                
                                                                                        
    //Terminal Read Count                                                               
                                                                                        
      always @(posedge M_AXI_ACLK)                                                      
      begin                                                                             
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                         
          last_read <= 1'b0;                                                            
                                                                                        
        //The last read should be associated with a read address ready response         
        else if ((read_index == C_M_TRANSACTIONS_NUM) && (M_AXI_ARREADY) )              
          last_read <= 1'b1;                                                            
        else                                                                            
          last_read <= last_read;                                                       
      end                                                                               
                                                                                        
    /*                                                                                  
     Check for last read completion.                                                    
                                                                                        
     This logic is to qualify the last read count with the final read                   
     response/data.                                                                     
     */                                                                                 
      always @(posedge M_AXI_ACLK)                                                      
      begin                                                                             
        if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)begin                                                         
          reads_done <= 1'b0;                                                           
          rdata <= 32'd0;        
          end                                                                         
        //The reads_done should be associated with a read ready response                
        //else if (last_read && M_AXI_RVALID && axi_rready)                               
        else if (M_AXI_RVALID && axi_rready) begin                            
          reads_done <= 1'b1;   
          rdata <=  M_AXI_RDATA;
          end                                                       
        else                                                                            
          reads_done <= 1'b0;//reads_done;                                                     
        end                                                                             
                                                                                        
    //-----------------------------                                                     
    //Example design error register                                                     
    //-----------------------------                                                     
                                                                                        
    //Data Comparison                                                                   
      always @(posedge M_AXI_ACLK)                                                      
      begin                                                                             
        if (M_AXI_ARESETN == 0  || init_txn_pulse == 1'b1)                                                         
        read_mismatch <= 1'b0;                                                          
                                                                                        
        //The read data when available (on axi_rready) is compared with the expected data
        else if ((M_AXI_RVALID && axi_rready) && (M_AXI_RDATA != expected_rdata))         
          read_mismatch <= 1'b1;                                                        
        else                                                                            
          read_mismatch <= read_mismatch;                                               
      end                                                                               
                                                                                        
    // Register and hold any data mismatches, or read/write interface errors            
      always @(posedge M_AXI_ACLK)                                                      
      begin                                                                             
        if (M_AXI_ARESETN == 0  || init_txn_pulse == 1'b1)                                                         
          error_reg <= 1'b0;                                                            
                                                                                        
        //Capture any error types                                                       
        else if (read_mismatch || write_resp_error || read_resp_error)                  
          error_reg <= 1'b1;                                                            
        else                                                                            
          error_reg <= error_reg;                                                       
      end                                                                               
    // Add user logic here

    // User logic ends
	endmodule
