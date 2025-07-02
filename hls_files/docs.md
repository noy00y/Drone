# HLS Synthesis:
```bash
source /tools/Xilinx/2025.1/Vitis/settings64.sh
source /tools/Xilinx/2025.1/Vivado/settings64.sh

# 2) Compile your HLS files
g++ -I${XILINX_VITIS}/hls/include \
    -I${XILINX_VIVADO}/hls/include \
    -std=c++17 -c conv_pool.cpp -o conv_pool.o

# Then Run
vitis_hls -f hls_run.tcl
# vivado_hls -f hls_run.tcl
```

# Syntax Check
```bash
g++ -I$XILINX_VIVADO/include -I$XILINX_VIVADO/hls/include \
    -c conv_pool.cpp
echo $XILINX_VIVADO
# should be /tools/Xilinx/2025.1/Vivado
```