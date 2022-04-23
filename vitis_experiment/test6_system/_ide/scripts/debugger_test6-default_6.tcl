# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\vreys\OneDrive\school\spec\vitis_experiment\test6_system\_ide\scripts\debugger_test6-default_6.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\vreys\OneDrive\school\spec\vitis_experiment\test6_system\_ide\scripts\debugger_test6-default_6.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx TUL 1234-tulA" && level==0 && jtag_device_ctx=="jsn-TUL-1234-tulA-23727093-0"}
fpga -file C:/Users/vreys/OneDrive/school/spec/vitis_experiment/test6/_ide/bitstream/experiment5.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/vreys/OneDrive/school/spec/vitis_experiment/experiment5/export/experiment5/hw/experiment5.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/vreys/OneDrive/school/spec/vitis_experiment/test6/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/vreys/OneDrive/school/spec/vitis_experiment/test6/Debug/test6.elf
configparams force-mem-access 0
bpadd -addr &main
