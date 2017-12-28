connect -url tcp:127.0.0.1:3121
source /home/thomas/Documents/school/master/semester_4/master/code/cart_counter_zed/cart_counter_zed.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00001097e3fd01"} -index 0
loadhw -hw /home/thomas/Documents/school/master/semester_4/master/code/cart_counter_zed/cart_counter_zed.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00001097e3fd01"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00001097e3fd01"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00001097e3fd01"} -index 0
dow /home/thomas/Documents/school/master/semester_4/master/code/cart_counter_zed/cart_counter_zed.sdk/hello/Debug/hello.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00001097e3fd01"} -index 0
con
