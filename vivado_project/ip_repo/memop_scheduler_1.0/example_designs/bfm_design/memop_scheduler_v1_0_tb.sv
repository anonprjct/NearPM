
`timescale 1ns / 1ps
`include "memop_scheduler_v1_0_tb_include.svh"

import axi_vip_pkg::*;
import memop_scheduler_v1_0_bfm_1_slave_0_0_pkg::*;
import memop_scheduler_v1_0_bfm_1_slave_1_0_pkg::*;
import memop_scheduler_v1_0_bfm_1_slave_2_0_pkg::*;
import memop_scheduler_v1_0_bfm_1_slave_3_0_pkg::*;
import memop_scheduler_v1_0_bfm_1_slave_4_0_pkg::*;
import memop_scheduler_v1_0_bfm_1_slave_5_0_pkg::*;
import memop_scheduler_v1_0_bfm_1_slave_6_0_pkg::*;
import memop_scheduler_v1_0_bfm_1_slave_7_0_pkg::*;
import memop_scheduler_v1_0_bfm_1_master_0_0_pkg::*;

module memop_scheduler_v1_0_tb();


xil_axi_uint                            error_cnt = 0;
xil_axi_uint                            comparison_cnt = 0;
axi_transaction                         wr_transaction;   
axi_transaction                         rd_transaction;   
axi_monitor_transaction                 mst_monitor_transaction;  
axi_monitor_transaction                 master_moniter_transaction_queue[$];  
xil_axi_uint                            master_moniter_transaction_queue_size =0;  
axi_monitor_transaction                 mst_scb_transaction;  
axi_monitor_transaction                 passthrough_monitor_transaction;  
axi_monitor_transaction                 passthrough_master_moniter_transaction_queue[$];  
xil_axi_uint                            passthrough_master_moniter_transaction_queue_size =0;  
axi_monitor_transaction                 passthrough_mst_scb_transaction;  
axi_monitor_transaction                 passthrough_slave_moniter_transaction_queue[$];  
xil_axi_uint                            passthrough_slave_moniter_transaction_queue_size =0;  
axi_monitor_transaction                 passthrough_slv_scb_transaction;  
axi_monitor_transaction                 slv_monitor_transaction;  
axi_monitor_transaction                 slave_moniter_transaction_queue[$];  
xil_axi_uint                            slave_moniter_transaction_queue_size =0;  
axi_monitor_transaction                 slv_scb_transaction;  
xil_axi_uint                           mst_agent_verbosity = 0;  
xil_axi_uint                           slv_agent_verbosity = 0;  
xil_axi_uint                           passthrough_agent_verbosity = 0;  
bit                                     clock;
bit                                     reset;
xil_axi_ulong                           mem_rd_addr;
xil_axi_ulong                           mem_wr_addr;
bit[32-1:0]                             write_data;
bit                                     write_strb[];
bit[32-1:0]                             read_data;
memop_scheduler_v1_0_bfm_1_slave_0_0_slv_mem_t          slv_agent_0;
bit error_0;
bit done_0;
bit init_0;
memop_scheduler_v1_0_bfm_1_slave_1_0_slv_mem_t          slv_agent_1;
bit error_1;
bit done_1;
bit init_1;
memop_scheduler_v1_0_bfm_1_slave_2_0_slv_mem_t          slv_agent_2;
bit error_2;
bit done_2;
bit init_2;
memop_scheduler_v1_0_bfm_1_slave_3_0_slv_mem_t          slv_agent_3;
bit error_3;
bit done_3;
bit init_3;
memop_scheduler_v1_0_bfm_1_slave_4_0_slv_mem_t          slv_agent_4;
bit error_4;
bit done_4;
bit init_4;
memop_scheduler_v1_0_bfm_1_slave_5_0_slv_mem_t          slv_agent_5;
bit error_5;
bit done_5;
bit init_5;
memop_scheduler_v1_0_bfm_1_slave_6_0_slv_mem_t          slv_agent_6;
bit error_6;
bit done_6;
bit init_6;
memop_scheduler_v1_0_bfm_1_slave_7_0_slv_mem_t          slv_agent_7;
bit error_7;
bit done_7;
bit init_7;
integer result_slave;  
bit [31:0] S00_AXI_test_data[3:0]; 
 localparam LC_AXI_BURST_LENGTH = 8; 
 localparam LC_AXI_DATA_WIDTH = 32; 
task automatic COMPARE_DATA; 
  input [(LC_AXI_BURST_LENGTH * LC_AXI_DATA_WIDTH)-1:0]expected; 
  input [(LC_AXI_BURST_LENGTH * LC_AXI_DATA_WIDTH)-1:0]actual; 
  begin 
    if (expected === 'hx || actual === 'hx) begin 
      $display("TESTBENCH ERROR! COMPARE_DATA cannot be performed with an expected or actual vector that is all 'x'!"); 
 result_slave = 0;    $stop; 
  end 
  if (actual != expected) begin 
    $display("TESTBENCH ERROR! Data expected is not equal to actual.",     " expected = 0x%h",expected,     " actual   = 0x%h",actual); 
    result_slave = 0; 
    $stop; 
  end 
  else  
    begin 
     $display("TESTBENCH Passed! Data expected is equal to actual.", 
              " expected = 0x%h",expected,               " actual   = 0x%h",actual); 
    end 
  end 
endtask 
integer                                 i; 
integer                                 j;  
xil_axi_uint                            trans_cnt_before_switch = 48;  
xil_axi_uint                            passthrough_cmd_switch_cnt = 0;  
event                                   passthrough_mastermode_start_event;  
event                                   passthrough_mastermode_end_event;  
event                                   passthrough_slavemode_end_event;  
xil_axi_uint                            mtestID;  
xil_axi_ulong                           mtestADDR;  
xil_axi_len_t                           mtestBurstLength;  
xil_axi_size_t                          mtestDataSize;   
xil_axi_burst_t                         mtestBurstType;   
xil_axi_lock_t                          mtestLOCK;  
xil_axi_cache_t                         mtestCacheType = 0;  
xil_axi_prot_t                          mtestProtectionType = 3'b000;  
xil_axi_region_t                        mtestRegion = 4'b000;  
xil_axi_qos_t                           mtestQOS = 4'b000;  
xil_axi_data_beat                       dbeat;  
xil_axi_data_beat [255:0]               mtestWUSER;   
xil_axi_data_beat                       mtestAWUSER = 'h0;  
xil_axi_data_beat                       mtestARUSER = 0;  
xil_axi_data_beat [255:0]               mtestRUSER;      
xil_axi_uint                            mtestBUSER = 0;  
xil_axi_resp_t                          mtestBresp;  
xil_axi_resp_t[255:0]                   mtestRresp;  
bit [63:0]                              mtestWDataL; 
bit [63:0]                              mtestRDataL; 
axi_transaction                         pss_wr_transaction;   
axi_transaction                         pss_rd_transaction;   
axi_transaction                         reactive_transaction;   
axi_transaction                         rd_payload_transaction;  
axi_transaction                         wr_rand;  
axi_transaction                         rd_rand;  
axi_transaction                         wr_reactive;  
axi_transaction                         rd_reactive;  
axi_transaction                         wr_reactive2;   
axi_transaction                         rd_reactive2;  
axi_ready_gen                           bready_gen;  
axi_ready_gen                           rready_gen;  
axi_ready_gen                           awready_gen;  
axi_ready_gen                           wready_gen;  
axi_ready_gen                           arready_gen;  
axi_ready_gen                           bready_gen2;  
axi_ready_gen                           rready_gen2;  
axi_ready_gen                           awready_gen2;  
axi_ready_gen                           wready_gen2;  
axi_ready_gen                           arready_gen2;  
xil_axi_payload_byte                    data_mem[xil_axi_ulong];  
memop_scheduler_v1_0_bfm_1_master_0_0_mst_t          mst_agent_0;

  `BD_WRAPPER DUT(
      .ARESETN(reset), 
.M00_AXI_INIT_AXI_TXN(init_0),
.M00_AXI_TXN_DONE(done_0),
.M00_AXI_ERROR(error_0),
.M01_AXI_INIT_AXI_TXN(init_1),
.M01_AXI_TXN_DONE(done_1),
.M01_AXI_ERROR(error_1),
.M02_AXI_INIT_AXI_TXN(init_2),
.M02_AXI_TXN_DONE(done_2),
.M02_AXI_ERROR(error_2),
.M03_AXI_INIT_AXI_TXN(init_3),
.M03_AXI_TXN_DONE(done_3),
.M03_AXI_ERROR(error_3),
.M04_AXI_INIT_AXI_TXN(init_4),
.M04_AXI_TXN_DONE(done_4),
.M04_AXI_ERROR(error_4),
.M05_AXI_INIT_AXI_TXN(init_5),
.M05_AXI_TXN_DONE(done_5),
.M05_AXI_ERROR(error_5),
.M06_AXI_INIT_AXI_TXN(init_6),
.M06_AXI_TXN_DONE(done_6),
.M06_AXI_ERROR(error_6),
.M07_AXI_INIT_AXI_TXN(init_7),
.M07_AXI_TXN_DONE(done_7),
.M07_AXI_ERROR(error_7),
      .ACLK(clock) 
    ); 
  
initial begin
    slv_agent_0 = new("slave vip agent",DUT.`BD_INST_NAME.slave_0.inst.IF);
    slv_agent_0.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_0.set_agent_tag("Slave VIP");
    slv_agent_0.set_verbosity(slv_agent_verbosity);
    slv_agent_0.start_slave();
    slv_agent_1 = new("slave vip agent",DUT.`BD_INST_NAME.slave_1.inst.IF);
    slv_agent_1.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_1.set_agent_tag("Slave VIP");
    slv_agent_1.set_verbosity(slv_agent_verbosity);
    slv_agent_1.start_slave();
    slv_agent_2 = new("slave vip agent",DUT.`BD_INST_NAME.slave_2.inst.IF);
    slv_agent_2.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_2.set_agent_tag("Slave VIP");
    slv_agent_2.set_verbosity(slv_agent_verbosity);
    slv_agent_2.start_slave();
    slv_agent_3 = new("slave vip agent",DUT.`BD_INST_NAME.slave_3.inst.IF);
    slv_agent_3.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_3.set_agent_tag("Slave VIP");
    slv_agent_3.set_verbosity(slv_agent_verbosity);
    slv_agent_3.start_slave();
    slv_agent_4 = new("slave vip agent",DUT.`BD_INST_NAME.slave_4.inst.IF);
    slv_agent_4.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_4.set_agent_tag("Slave VIP");
    slv_agent_4.set_verbosity(slv_agent_verbosity);
    slv_agent_4.start_slave();
    slv_agent_5 = new("slave vip agent",DUT.`BD_INST_NAME.slave_5.inst.IF);
    slv_agent_5.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_5.set_agent_tag("Slave VIP");
    slv_agent_5.set_verbosity(slv_agent_verbosity);
    slv_agent_5.start_slave();
    slv_agent_6 = new("slave vip agent",DUT.`BD_INST_NAME.slave_6.inst.IF);
    slv_agent_6.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_6.set_agent_tag("Slave VIP");
    slv_agent_6.set_verbosity(slv_agent_verbosity);
    slv_agent_6.start_slave();
    slv_agent_7 = new("slave vip agent",DUT.`BD_INST_NAME.slave_7.inst.IF);
    slv_agent_7.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_7.set_agent_tag("Slave VIP");
    slv_agent_7.set_verbosity(slv_agent_verbosity);
    slv_agent_7.start_slave();
     mst_agent_0 = new("master vip agent",DUT.`BD_INST_NAME.master_0.inst.IF);//ms  
   mst_agent_0.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE); 
   mst_agent_0.set_agent_tag("Master VIP"); 
   mst_agent_0.set_verbosity(mst_agent_verbosity); 
   mst_agent_0.start_master(); 
     $timeformat (-12, 1, " ps", 1);
  end
  initial begin
    reset <= 1'b0;
    #100ns;
    reset <= 1'b1;
    repeat (5) @(negedge clock); 
  end
  always #5 clock <= ~clock;
  initial begin
      S_AXI_TEST ( );

    init_0 = 0;
    #200ns;
    init_0 =1'b1;
    #20ns;
    init_0 = 1'b0;
    $display("EXAMPLE TEST M00_AXI:");
      wait( done_0 == 1'b1);
      $display("M00_AXI: PTGEN_TEST_FINISHED!");
      if ( error_0 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
    init_1 = 0;
    #200ns;
    init_1 =1'b1;
    #20ns;
    init_1 = 1'b0;
    $display("EXAMPLE TEST M01_AXI:");
      wait( done_1 == 1'b1);
      $display("M01_AXI: PTGEN_TEST_FINISHED!");
      if ( error_1 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
    init_2 = 0;
    #200ns;
    init_2 =1'b1;
    #20ns;
    init_2 = 1'b0;
    $display("EXAMPLE TEST M02_AXI:");
      wait( done_2 == 1'b1);
      $display("M02_AXI: PTGEN_TEST_FINISHED!");
      if ( error_2 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
    init_3 = 0;
    #200ns;
    init_3 =1'b1;
    #20ns;
    init_3 = 1'b0;
    $display("EXAMPLE TEST M03_AXI:");
      wait( done_3 == 1'b1);
      $display("M03_AXI: PTGEN_TEST_FINISHED!");
      if ( error_3 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
    init_4 = 0;
    #200ns;
    init_4 =1'b1;
    #20ns;
    init_4 = 1'b0;
    $display("EXAMPLE TEST M04_AXI:");
      wait( done_4 == 1'b1);
      $display("M04_AXI: PTGEN_TEST_FINISHED!");
      if ( error_4 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
    init_5 = 0;
    #200ns;
    init_5 =1'b1;
    #20ns;
    init_5 = 1'b0;
    $display("EXAMPLE TEST M05_AXI:");
      wait( done_5 == 1'b1);
      $display("M05_AXI: PTGEN_TEST_FINISHED!");
      if ( error_5 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
    init_6 = 0;
    #200ns;
    init_6 =1'b1;
    #20ns;
    init_6 = 1'b0;
    $display("EXAMPLE TEST M06_AXI:");
      wait( done_6 == 1'b1);
      $display("M06_AXI: PTGEN_TEST_FINISHED!");
      if ( error_6 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
    init_7 = 0;
    #200ns;
    init_7 =1'b1;
    #20ns;
    init_7 = 1'b0;
    $display("EXAMPLE TEST M07_AXI:");
      wait( done_7 == 1'b1);
      $display("M07_AXI: PTGEN_TEST_FINISHED!");
      if ( error_7 ) begin
        $display("PTGEN_TEST: FAILED!");
      end else begin
        $display("PTGEN_TEST: PASSED!");
      end
      #1ns;
      $finish;
  end
  initial begin
  #1;
    forever begin
      slv_agent_0.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
  initial begin
  #1;
    forever begin
      slv_agent_1.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
  initial begin
  #1;
    forever begin
      slv_agent_2.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
  initial begin
  #1;
    forever begin
      slv_agent_3.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
  initial begin
  #1;
    forever begin
      slv_agent_4.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
  initial begin
  #1;
    forever begin
      slv_agent_5.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
  initial begin
  #1;
    forever begin
      slv_agent_6.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
  initial begin
  #1;
    forever begin
      slv_agent_7.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
task automatic S_AXI_TEST;  
begin   
#1; 
   $display("Sequential write transfers example similar to  AXI BFM WRITE_BURST method starts"); 
   mtestID = 0; 
   mtestADDR = 64'h00000000; 
   mtestBurstLength = 0; 
   mtestDataSize = xil_axi_size_t'(xil_clog2(32/8)); 
   mtestBurstType = XIL_AXI_BURST_TYPE_INCR;  
   mtestLOCK = XIL_AXI_ALOCK_NOLOCK;  
   mtestCacheType = 0;  
   mtestProtectionType = 0;  
   mtestRegion = 0; 
   mtestQOS = 0; 
   result_slave = 1; 
  mtestWDataL[31:0] = 32'h00000001; 
  for(int i = 0; i < 4;i++) begin 
  S00_AXI_test_data[i] <= mtestWDataL[31:0];   
  mst_agent_0.AXI4LITE_WRITE_BURST( 
  mtestADDR, 
  mtestProtectionType, 
  mtestWDataL, 
  mtestBresp 
  );   
  mtestWDataL[31:0] = mtestWDataL[31:0] + 1; 
  mtestADDR = mtestADDR + 64'h4; 
  end 
     $display("Sequential write transfers example similar to  AXI BFM WRITE_BURST method completes"); 
     $display("Sequential read transfers example similar to  AXI BFM READ_BURST method starts"); 
     mtestID = 0; 
     mtestADDR = 64'h00000000; 
     mtestBurstLength = 0; 
     mtestDataSize = xil_axi_size_t'(xil_clog2(32/8)); 
     mtestBurstType = XIL_AXI_BURST_TYPE_INCR;  
     mtestLOCK = XIL_AXI_ALOCK_NOLOCK;  
     mtestCacheType = 0;  
     mtestProtectionType = 0;  
     mtestRegion = 0; 
     mtestQOS = 0; 
 for(int i = 0; i < 4;i++) begin 
   mst_agent_0.AXI4LITE_READ_BURST( 
        mtestADDR, 
        mtestProtectionType, 
        mtestRDataL, 
        mtestRresp 
      ); 
   mtestADDR = mtestADDR + 64'h4; 
   COMPARE_DATA(S00_AXI_test_data[i],mtestRDataL); 
 end 
     $display("Sequential read transfers example similar to  AXI BFM READ_BURST method completes"); 
     $display("Sequential read transfers example similar to  AXI VIP READ_BURST method completes"); 
     $display("---------------------------------------------------------"); 
     $display("EXAMPLE TEST S00_AXI: PTGEN_TEST_FINISHED!"); 
     if ( result_slave ) begin                    
       $display("PTGEN_TEST: PASSED!");                  
     end    else begin                                       
       $display("PTGEN_TEST: FAILED!");                  
     end                                
     $display("---------------------------------------------------------"); 
  end 
endtask  

endmodule
