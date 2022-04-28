# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\vreys\OneDrive\school\spec\vitis_experiment\test9_system\_ide\scripts\debugger_test9-default_5.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\vreys\OneDrive\school\spec\vitis_experiment\test9_system\_ide\scripts\debugger_test9-default_5.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx TUL 1234-tulA" && level==0 && jtag_device_ctx=="jsn-TUL-1234-tulA-23727093-0"}
fpga -file C:/Users/vreys/OneDrive/school/spec/vitis_experiment/test9/_ide/bitstream/design_1_wrapper9.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/vreys/OneDrive/school/spec/vitis_experiment/design_1_wrapper9/export/design_1_wrapper9/hw/design_1_wrapper9.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/vreys/OneDrive/school/spec/vitis_experiment/test9/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/vreys/OneDrive/school/spec/vitis_experiment/test9/Debug/test9.elf
configparams force-mem-access 0
bpadd -addr &main
