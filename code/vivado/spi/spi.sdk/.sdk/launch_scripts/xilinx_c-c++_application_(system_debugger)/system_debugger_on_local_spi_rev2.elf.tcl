connect -url tcp:127.0.0.1:3121
source /home/mikkel/git/master/code/vivado/spi_test/spi_test.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Platform Cable USB 00001097e3fd01"} -index 0
loadhw /home/mikkel/git/master/code/vivado/spi_test/spi_test.sdk/design_1_wrapper_hw_platform_0/system.hdf
targets -set -filter {name =~"APU" && jtag_cable_name =~ "Platform Cable USB 00001097e3fd01"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00001097e3fd01"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00001097e3fd01"} -index 0
dow /home/mikkel/git/master/code/vivado/spi_test/spi_test.sdk/spi_rev2/Debug/spi_rev2.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00001097e3fd01"} -index 0
con
