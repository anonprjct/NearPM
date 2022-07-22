create_clock -period 10.000 -name pcie_ref_clk [get_ports pcie_refclk_clk_p]

set_false_path -from [get_ports pcie_perstn]
set_property PULLUP true [get_ports pcie_perstn]
set_property IOSTANDARD LVCMOS18 [get_ports pcie_perstn]

set_false_path -to [get_ports {NAME=~led_*}]


