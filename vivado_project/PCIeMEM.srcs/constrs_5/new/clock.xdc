set_clock_groups -name Group1 -asynchronous -group [get_clocks {design_1_i/xdma_0/inst/pcie4_ip_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/gt_wizard.gtwizard_top_i/design_1_xdma_0_0_pcie4_ip_gt_i/inst/gen_gtwizard_gtye4_top.design_1_xdma_0_0_pcie4_ip_gt_gtwizard_gtye4_inst/gen_gtwizard_gtye4.gen_channel_container[32].gen_enabled_channel.gtye4_channel_wrapper_inst/channel_inst/gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST/TXOUTCLK}] -group [get_clocks -of_objects [get_pins design_1_i/ddr4_0/inst/u_ddr4_infrastructure/gen_mmcme4.u_mmcme_adv_inst/CLKOUT1]]
set_clock_groups -name Group2 -asynchronous -group [get_clocks -of_objects [get_pins design_1_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]] -group [get_clocks -of_objects [get_pins design_1_i/ddr4_0/inst/u_ddr4_infrastructure/gen_mmcme4.u_mmcme_adv_inst/CLKOUT1]]
set_clock_groups -name Group3 -asynchronous -group [get_clocks -of_objects [get_pins design_1_i/ddr4_0/inst/u_ddr4_infrastructure/gen_mmcme4.u_mmcme_adv_inst/CLKOUT1]] -group [get_clocks -of_objects [get_pins design_1_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]]
set_clock_groups -name Group4 -asynchronous -group [get_clocks -of_objects [get_pins design_1_i/ddr4_0/inst/u_ddr4_infrastructure/gen_mmcme4.u_mmcme_adv_inst/CLKOUT1]] -group [get_clocks -of_objects [get_pins design_1_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT1]]