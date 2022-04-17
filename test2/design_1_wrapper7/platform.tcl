# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\vreys\OneDrive\school\spec\test\design_1_wrapper7\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\vreys\OneDrive\school\spec\test\design_1_wrapper7\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper7}\
-hw {C:\Users\vreys\OneDrive\school\spec\VincentHDMI\HDMI_test\design_1_wrapper7.xsa}\
-out {C:/Users/vreys/OneDrive/school/spec/test}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {design_1_wrapper7}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
domain active {zynq_fsbl}
bsp reload
bsp reload
platform config -updatehw {C:/Users/vreys/OneDrive/school/spec/VincentHDMI/HDMI_test/design_1_wrapper8.xsa}
platform generate -domains 
platform active {design_1_wrapper7}
platform config -updatehw {C:/Users/vreys/OneDrive/school/spec/test2/design_1_wrapper9.xsa}
platform config -updatehw {C:/Users/vreys/OneDrive/school/spec/VincentHDMI/HDMI_test/design_1_wrapper7.xsa}
platform config -updatehw {C:/Users/vreys/OneDrive/school/spec/test2/design_1_wrapper9.xsa}
platform config -updatehw {C:/Users/vreys/OneDrive/school/spec/VincentHDMI/HDMI_test/design_1_wrapper7.xsa}
platform clean
platform write
