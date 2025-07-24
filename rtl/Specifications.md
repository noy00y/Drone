# Overview

- Simple bare bones convolution engine: first layer of a CNN, performing a 3×3 convolution over a 224×224 RGB image, producing 8 output feature maps.

# Specifications

## Functional Specifications

- **Convolution Formula**

![image.png](image.png)

- Yoc(r,c)=boc+ic=0∑2i=0∑2j=0∑2Woc,ic,i,j⋅Xic(r+i,c+j)
- OC (Output Channels) = 8
- IC (Input Channels) = 3 (R, G, B)
- B (Bias) per output channel
- W (Weights) per output channel, input channel, kernel position

- **Data Flow**
    1. **Input Pixel Streaming**
        - Interface: AXI4-Stream or custom handshake at 8 bits per channel
        - Pixel arrives one per clock, packaged as a 24-bit word (3 × 8-bit channels)
    2. **Channel Demultiplexing**
        - Split the 24-bit pixel into three parallel streams: R, G, B
        - Each channel stream feeds its own pixel pipeline
    3. **Line Buffers & Sliding Window**
        - Maintain K–1 = 2 line buffers per channel to store previous rows
        - Implemented using Block RAM (BRAM_18K) as dual-port FIFOs, depth = 224 pixels
        - For each channel, generate a 3×3 window of registers by shifting through LSB-first registers
    4. **MAC Array & Accumulation**
        - For each valid window, compute 9 multiplications per channel × 3 channels = 27 multipliers
        - Use DSP slices (Xilinx DSP48E cells) for each multiplier for high-speed fixed-point ops
        - Partial sums across window positions and channels accumulated via pipelined adder tree
    5. **Bias Addition & Output Streaming**
        - After accumulation, add per-channel bias (stored in BRAM or distributed registers)
        - Output 8 parallel results (one per output channel) serialized into a single stream via round-robin or time-multiplexing

## Data Structures

- **Weights & Biases Storage**
    - Stored in on-chip BRAM_18K blocks:
        - Depth = 3×3 (9 weights) × 3 input channels = 27 addresses per output channel
        - Width = data precision (e.g., 16-bit fixed-point)
    - Use one BRAM per output channel (total 8 BRAMs), each dual-ported for concurrent read/write
    - Address generator yields W_{oc,ic,i,j} indexed by ic,i,j; weights loaded at init via AXI-Lite or JTAG
- **Input Pixel FIFO**
    - Input pixel stream buffered in small FIFO (depth ≥ 4) implemented via distributed RAM or BRAM
    - Provides clock domain crossing if input camera pixel clock ≠ processing clock
- **Line Buffers (Per Channel)**
    - Implemented as depth-224 dual-port FIFOs in BRAM_18K
    - Two line buffers per channel to store last two rows of pixels
- **K×K Sliding Window Registers**
    - For each channel, cascade 3 shift-registers per row buffer to form a 3×3 window
    - Implemented via flip-flops (FFs) and LUTs, fully pipelined to supply one window per cycle
- **Channel Output FIFOs**
    - Each of the 8 output channels has an output buffer implemented via distributed RAM or BRAM
    - Buffers depth = to cover downstream handshake stalls, e.g., depth=16

## Technical Specifications

### Performance Parameters

- **Target Clock Frequency**: 100 MHz
- **Throughput**: One output pixel per cycle after pipeline fill
    - 100 million pixels/sec → For 224×224 frame (50 176 pixels), max ≈ 1 993 frames/sec
    - If valid padding (222×222 output), 49 284 pixels → ≈ 2 029 fps
- **Pipeline Latency**:
    - Line buffer fill latency = 2 rows = 2×224 = 448 cycles
    - Window register pipeline = ~2 cycles
    - MAC adder-tree depth = log₂(27) ≈ 5 pipeline stages
    - Total latency ≈ 448+2+5 ≈ 455 cycles before first valid output
- **Resource Utilization (Est.)**:
    - DSP48E: 27 (multipliers) + 8 (accumulate/bias) = 35 total
    - BRAM_18K: 8 (weights) + 3×2 (line buffers) + 8 (output FIFOs) = 22 blocks
    - LUT/FF: Sliding windows ~3×3×3 channels × 224 regs; additional logic

### Constraints

- **FPGA Resources**:
    - Xilinx Artix‑7 XC7A100T: 240 DSPs, 270 BRAM_18K, 63 400 LUTs, 126 800 FFs
    - Must keep DSP usage ≤ 80% (≤ 192 DSPs) for margin
    - BRAM usage ≤ 75% (≤ 202 blocks)
- **Timing**:
    - Meet setup/hold at 100 MHz across DSP and BRAM interfaces
    - Provide <10 ns hold margin for interconnect
- **Data Precision**:
    - Fixed-point Q2.14 (16-bit) to balance dynamic range vs resource usage
- **Power/Area**:
    - Estimated dynamic power ≤ 2 W for MAC unit at 100 MHz
- **Interface Protocols**:
    - Input: AXI4-Stream (TVALID/TREADY handshake)
    - Control: AXI-Lite for register configuration (weights, biases, frame size)
- **Scalability**:
    - Design must support parameterizable kernel size (K), channels, and feature map counts via generics