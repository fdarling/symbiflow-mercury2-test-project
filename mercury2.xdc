set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

# Clock pin
set_property PACKAGE_PIN N14 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]

# LEDs
set_property PACKAGE_PIN M1 [get_ports {led[0]}]
set_property PACKAGE_PIN A14 [get_ports {led[1]}]
set_property PACKAGE_PIN A13 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

# Clock constraints
create_clock -period 20.0 [get_ports {clk}]
