#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN D18} [get_ports {A}]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN E18} [get_ports {B}]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN E19} [get_ports {Z}]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN L19} [get_ports {emend}]

#P30JX2
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN F16} [get_ports {emend}]
#P32JX2
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M19} [get_ports {A}]
#P36JX2
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M20} [get_ports {B}]

#Below are IO ports, no function
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V15} [get_ports {Z}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T19} [get_ports {led[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T12} [get_ports {led[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U12} [get_ports {led[2]}]                                                                        
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V12} [get_ports {led[3]}]