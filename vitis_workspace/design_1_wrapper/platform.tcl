# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Uni\RL\sha256d_zedboard\vitis_workspace\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Uni\RL\sha256d_zedboard\vitis_workspace\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {D:\Uni\RL\sha256d_zedboard\design_1_wrapper.xsa}\
-no-boot-bsp -fsbl-target {psu_cortexa53_0} -out {D:/Uni/RL/sha256d_zedboard/vitis_workspace}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {design_1_wrapper}
platform generate -quick
platform generate
platform generate -domains standalone_ps7_cortexa9_0 