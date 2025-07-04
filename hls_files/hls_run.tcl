part=xc7a100tfgg484-2L

[hls]
syn.file=./conv_pool.cpp
syn.top=cnn_accel
tb.file=./testbench.cpp
flow_target=vivado
clock=30ns
package.output.format=ip_catalog
csim.setup=0
csim.code_analyzer=1
csim.clean=0
sim.O=0