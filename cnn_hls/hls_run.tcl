open_project cnn_hls
set_top cnn_accel
add_files conv_pool.cpp testbench.cpp
open_solution "sol1" -reset
set_part   xc7a100tfgg484-2L
create_clock -period 10 -name default
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format Vivado
exit