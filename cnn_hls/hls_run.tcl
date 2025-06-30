open_project cnn_hls
set_top cnn_accel
add_files conv_pool.cpp conv_pool.hpp
open_solution "sol1"
set_part   xc7a100tfgg484-2L
config_export_synth_design -directives Default
csynth_design
export_design -rtl verilog -format Vivado
exit