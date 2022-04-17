# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\vreys\OneDrive\school\spec\test\HDMI\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\vreys\OneDrive\school\spec\test\HDMI\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {HDMI}\
-hw {C:\Users\vreys\OneDrive\school\spec\VincentHDMI\HDMI_test\HDMI_test.xsa}\
-out {C:/Users/vreys/OneDrive/school/spec/test}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {HDMI}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform config -updatehw {C:/Users/vreys/OneDrive/school/spec/VincentHDMI/HDMI_test/design_1_wrapper.xsa}
platform generate -domains 
platform write
platform active {HDMI}
domain active {zynq_fsbl}
bsp reload
bsp reload
platform write
