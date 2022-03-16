# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\vreys\OneDrive\school\SystemOnChip\Spectroscopy\Xilinx\isrIntertialDelay_2\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\vreys\OneDrive\school\SystemOnChip\Spectroscopy\Xilinx\isrIntertialDelay_2\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {isrIntertialDelay_2}\
-hw {C:\Users\vreys\OneDrive\school\SystemOnChip\Spectroscopy\project_1\isrIntertialDelay.xsa}\
-out {C:/Users/vreys/OneDrive/school/SystemOnChip/Spectroscopy/Xilinx}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {isrIntertialDelay_2}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate
