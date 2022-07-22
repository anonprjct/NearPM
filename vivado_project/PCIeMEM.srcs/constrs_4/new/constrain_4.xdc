create_pblock pblock_smartconnect_0
add_cells_to_pblock [get_pblocks pblock_smartconnect_0] [get_cells -quiet [list design_1_i/smartconnect_0]]
resize_pblock [get_pblocks pblock_smartconnect_0] -add {SLICE_X32Y660:SLICE_X87Y839}
resize_pblock [get_pblocks pblock_smartconnect_0] -add {DSP48E2_X5Y264:DSP48E2_X9Y335}
resize_pblock [get_pblocks pblock_smartconnect_0] -add {RAMB18_X3Y264:RAMB18_X6Y335}
resize_pblock [get_pblocks pblock_smartconnect_0] -add {RAMB36_X3Y132:RAMB36_X6Y167}
resize_pblock [get_pblocks pblock_smartconnect_0] -add {URAM288_X0Y176:URAM288_X1Y223}
create_pblock pblock_axi_smc
add_cells_to_pblock [get_pblocks pblock_axi_smc] [get_cells -quiet [list design_1_i/axi_smc]]
resize_pblock [get_pblocks pblock_axi_smc] -add {SLICE_X88Y630:SLICE_X141Y869}
resize_pblock [get_pblocks pblock_axi_smc] -add {DSP48E2_X11Y252:DSP48E2_X16Y347}
resize_pblock [get_pblocks pblock_axi_smc] -add {LAGUNA_X12Y540:LAGUNA_X19Y659}
resize_pblock [get_pblocks pblock_axi_smc] -add {RAMB18_X7Y252:RAMB18_X9Y347}
resize_pblock [get_pblocks pblock_axi_smc] -add {RAMB36_X7Y126:RAMB36_X9Y173}
resize_pblock [get_pblocks pblock_axi_smc] -add {URAM288_X2Y168:URAM288_X3Y231}

create_pblock pblock_addrmonitor_0
add_cells_to_pblock [get_pblocks pblock_addrmonitor_0] [get_cells -quiet [list design_1_i/addrmonitor_0]]
resize_pblock [get_pblocks pblock_addrmonitor_0] -add {CLOCKREGION_X4Y8:CLOCKREGION_X4Y8}
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
