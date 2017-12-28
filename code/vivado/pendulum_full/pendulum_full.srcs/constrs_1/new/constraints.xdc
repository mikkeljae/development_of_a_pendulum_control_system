set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN F16} [get_ports {emend}] 
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M19} [get_ports {A}] 
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M20} [get_ports {B}] 
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN K19} [get_ports {Z}] 

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U14} [get_ports {r_pwm}] 
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U15} [get_ports {g_pwm}] 
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN N18} [get_ports {b_pwm}]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P19} [get_ports {r_pwm_1}] 
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T20} [get_ports {g_pwm_1}] 
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U20} [get_ports {b_pwm_1}]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y18} [get_ports {r_pwm_2}] 
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y19} [get_ports {g_pwm_2}] 
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R16} [get_ports {b_pwm_2}] 

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN C20} [get_ports {pwm_a_l}] 
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN B20} [get_ports {pwm_b_l}] 

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN E19} [get_ports {gpio_rtl_tri_o[0]}] 
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN F19} [get_ports {gpio_rtl_tri_o[1]}] 
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN E17} [get_ports {gpio_rtl_tri_o[2]}] 
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN F20} [get_ports {gpio_rtl_tri_o[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN J15} [get_ports {gpio_rtl_tri_o[4]}] 