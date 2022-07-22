create_pblock pblock_smartconnect_0
add_cells_to_pblock [get_pblocks pblock_smartconnect_0] [get_cells -quiet [list design_1_i/smartconnect_0]]
resize_pblock [get_pblocks pblock_smartconnect_0] -add {SLICE_X31Y690:SLICE_X79Y869}
resize_pblock [get_pblocks pblock_smartconnect_0] -add {DSP48E2_X4Y276:DSP48E2_X8Y347}
resize_pblock [get_pblocks pblock_smartconnect_0] -add {LAGUNA_X4Y600:LAGUNA_X11Y659}
resize_pblock [get_pblocks pblock_smartconnect_0] -add {RAMB18_X3Y276:RAMB18_X4Y347}
resize_pblock [get_pblocks pblock_smartconnect_0] -add {RAMB36_X3Y138:RAMB36_X4Y173}
resize_pblock [get_pblocks pblock_smartconnect_0] -add {URAM288_X0Y184:URAM288_X1Y231}
create_pblock pblock_axi_smc
add_cells_to_pblock [get_pblocks pblock_axi_smc] [get_cells -quiet [list design_1_i/axi_smc]]
resize_pblock [get_pblocks pblock_axi_smc] -add {SLICE_X81Y663:SLICE_X129Y899}
resize_pblock [get_pblocks pblock_axi_smc] -add {DSP48E2_X9Y266:DSP48E2_X14Y359}
resize_pblock [get_pblocks pblock_axi_smc] -add {LAGUNA_X12Y600:LAGUNA_X17Y719}
resize_pblock [get_pblocks pblock_axi_smc] -add {RAMB18_X5Y266:RAMB18_X8Y359}
resize_pblock [get_pblocks pblock_axi_smc] -add {RAMB36_X5Y133:RAMB36_X8Y179}
resize_pblock [get_pblocks pblock_axi_smc] -add {URAM288_X2Y180:URAM288_X3Y239}









add_cells_to_pblock [get_pblocks pblock_axi_register_slice_0] [get_cells -quiet [list design_1_i/axi_register_slice_0]]
add_cells_to_pblock [get_pblocks pblock_axi_register_slice_1] [get_cells -quiet [list design_1_i/axi_register_slice_1]]



set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
