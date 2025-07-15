Instructions:
* Below I have attached the pipeline layout and a table of the data shape and module i/o. 
* can you explain how this works and what else needs to be added for a functional cnn on a fpga

Pipeline layout:
------------------------
Camera Sensor
   ↓ MIPI-CSI-2 or parallel RAW
   → TLP (PCIe)                              
   → AXI-Stream → AXI-DMA → DDR3 Frame Buffer
   → HLS CNN Kernel (cnn_accel) via AXI-Master
       1) Preprocessing: 
          • Read 1 frame (H×W×C) from DDR
          • Shape→ local_img[H][W][C]
       2) Conv1 + ReLU:
          • DIN:  local_img [H][W][C₀]
          • W1:   [M₁][C₀][K][K]   (M₁ output filters, C₀ input chans)
          • B1:   [M₁]
          • DOUT: feat1 [H₁×W₁][M₁] → reshaped to [H₁][W₁][M₁]
       3) Pool1:
          • DIN/PIN: feat1 [H₁][W₁][M₁]
          • P=2 → H₂=H₁/2, W₂=W₁/2
          • DOUT: feat1_pooled [H₂][W₂][M₁]
       4) Conv2 + ReLU:
          • DIN:  feat1_pooled [H₂][W₂][M₁]
          • W2:   [M₂][M₁][K][K]
          • B2:   [M₂]
          • DOUT: feat2 [H₃][W₃][M₂]  (H₃=H₂–K+1, etc.)
       5) Pool2:
          • DIN:  feat2 [H₃][W₃][M₂]
          • P=2 → H₄=H₃/2, W₄=W₃/2
          • DOUT: feat2_pooled [H₄][W₄][M₂]
       6) Flatten → Vector of length M₂·H₄·W₄
       7) Fully connected 1 + Tanh (optional):
          • DIN: vec [N₁], weights [N₂][N₁], bias[N₂]
          • DOUT: vec2 [N₂]
       8) Fully connected 2 + Sigmoid:
          • DIN: vec2 [N₂], weights [1][N₂], bias[1]
          • DOUT: scalar p∈[0,1]
       9) Threshold → 1-byte flag
       10) Write back via AXI-Master → DDR → AXI-DMA → Host


### 1. Data Shaping & Module I/O (DIN/DOUT)
-------------------------------------------------------------------------
| Stage | Input Shape | Output Shape | Protocol / Buffers |
| --- | --- | --- | --- |
| **Video Feed** | Raw pixels H×W×3 | TLP Packets | MIPI-CSI-2 → PCIe TLPs |
| **DMA → DDR** | TLP → AXI-Stream | Writes to DDR offset | AXI-DMA (MM2S/S2MM) |
| **Preprocess** | DDR Frame [H×W×C₀] | local_img[H][W][C₀] | HLS loads via AXI-Master bursts |
| **Conv1** | [H][W][C₀] | [H₁][W₁][M₁] | On-chip buffers; streamed DSP chains |
| **Pool1** | [H₁][W₁][M₁] | [H₂][W₂][M₁] | LUT comparators; no change in channels |
| **Conv2** | [H₂][W₂][M₁] | [H₃][W₃][M₂] | As conv1 but C₀→M₁, M₁→M₂ |
| **Pool2** | [H₃][W₃][M₂] | [H₄][W₄][M₂] |  |
| **Fully connected 1** | [M₂·H₄·W₄] | [N₂] | DSP-based dot-products |
| **Tanh** | [N₂] | [N₂] | LUT lookup or piecewise linear |
| **Fully connected 2** | [N₂] | [1] |  |
| **Sigmoid** | [1] | [1] | LUT lookup |
| **Threshold** | [1] | [1-byte flag] | Compare → 0/1 |
| **Writeback** | flag | Host register | AXI-Master → DMA → PCIe |

# Linebuffers, Shift Registers, Piped

```java
   c→ 0   1   2   3   4   5   6
r
0     0   1   2   3   4   5   6
1    10  11  12  13  14  15  16
2    20  21  22  23  24  25  26
3    30  31  32  33  34  35  36
4    40  41  42  43  44  45  46
5    50  51  52  53  54  55  56
6    60  61  62  63  64  65  66

```

| Cycle | (r,c) | Pixel In | LB0_out | LB1_out | C.SR0 | C.SR1 | C.SR2 | B.SR0 | B.SR1 | B.SR2 | A.SR0 | A.SR1 | A.SR2 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | (0,0) | 0 | – | – | 0 | – | – | – | – | – | – | – | – |
| 2 | (0,1) | 1 | – | – | 1 | – | – | 0 | – | – | – | – | – |
| 3 | (0,2) | 2 | – | – | 2 | – | – | 1 | – | – | 0 | – | – |
| 8 | (1,0) | 10 | 0 | – | 10 | 0 | – | 2 | – | – | 1 | – | – |
| 9 | (1,1) | 11 | 1 | – | 11 | 1 | – | 10 | 0 | – | 2 | – | – |
| 10 | (1,2) | 12 | 2 | – | 12 | 2 | – | 11 | 1 | – | 10 | 0 | – |
| 15 | (2,0) | 20 | 10 | 0 | 20 | 10 | 0 | 12 | 2 | – | 11 | 1 | – |
| 16 | (2,1) | 21 | 11 | 1 | 21 | 11 | 1 | 20 | 10 | 0 | 12 | 2 | – |
| 17 (first valid frame) | (2,2) | 22 | 12 | 2 | 22 | 12 | 2 | 21 | 11 | 1 | 20 | 10 | 0 |
| 18 | (2,3) | 23 | 13 | 3 | 23 | 13 | 3 | 22 | 12 | 2 | 21 | 11 | 1 |
| 19 | (2,4) | 24 | 14 | 4 | 24 | 14 | 4 | 23 | 13 | 3 | 22 | 12 | 2 |
| 20 | (2,5) | 25 | 15 | 5 | 25 | 15 | 5 | 24 | 14 | 4 | 23 | 13 | 3 |

Some Explanations from my head

- ok so [C.](http://C.SR)SR represents the col we indexing in the current clk cycle
- SR0 - represents the current row indexed in the clk cycle
- As following:
    - B = c - 1
    - A = c - 2
    - SR1 = 1 row above in the chain
    - SR2 = 2 rows above in the chain
- Linebuf0 - 1 row above
- Linebuf1 - 2 lines above

so everytime we read a P(r, c) —> the P(r - 2, c) gets emitted from linebuf1 and the next SR in our chain our chain gets updated

- P(r, c) —> C.SR0
- linebuf0 (P(r - 1, c)) —> C.SR1
- linebuf1 (P(r-2, c)) —> C.SR2

now for each new pixel we get in we have a full window for MAC ops since our old C chain gets moved into B chain and B chain into A chain and etc…

and our line buffers continously get updated as well so we still have our rows

ok now moving on into the mac operations

- we get full windows starting at cycle 17 and thus begin MAC ops
    - stage 1 (MULT) - 9 DSPs each do 1 pixel * weight → 9 partial products
    - stage 2 (Acc) - adder tree sums those 9 products into 1
    - stage 3 (acc) - add the per filter bias term
    - stage 4 (register) - register the result so reLU can see it
- all of this is piped as well so while our first window does its MAC op
    - cycle 18 - first window goes to stage 1 for 9 parallel multiplies
    - cycle 19 - first window goes into adder tree while the next window goes to stage 1 in a pipelined fasion
- so we get a full convolution result every cycle once the pipe fills up

- Floor planning for balanced partial parallism
    - 4 conv engines x 27 DSP = 108 DSP total consumed
    - since we are splitting the work in 2 cycles and 108 dsp used
    - run a mac op in parallel for c_out[0:3]
    - then a full mac op in parallel for c_out[4:7]

- FSM - for processing group 0 and then group 1
    - state 0
        - Each engine is loaded w/ weights w[0:3]
        - we will get outputs for Y[0:3] once per clk once the pipeline is full
    - state 1
        - now we feed in the same pixels but with w/ weights w[4:7] and we will get outputs for Y[4:7]

MAC Operation High Level Clock Cycle

| Clock | FSM State | Window In | Stage 1 Work | Stage 2 | Stage 3 | Stage 4 (Output) |
| --- | --- | --- | --- | --- | --- | --- |
| N | 0 | Win(r,c) | Engines 0–3 use W0–W3 → mult | — | — | — |
| N+1 | 0 | Win(r,c+1) | Engines 0–3 → accumulate | Engines 0–3 mult | — | — |
| N+2 | 0 | Win(r,c+2) | Engines 0–3 → add_bias | Engines 0–3 acc | Engines 0–3 mult | — |
| N+3 | 0 | Win(r,c+3) | Engines 0–3 → reg_output0–3 | Engines 0–3 add | Engines 0–3 acc | Engines 0–3 mult |
| N+4 | **1** | Win(r,c) | Engines 0–3 use W4–W7 → mult | Engines 0–3 add | Engines 0–3 acc | Engines 0–3 add_bias |
| N+5 | 1 | Win(r,c+1) | Engines 0–3 → accumulate | Engines 0–3 mult | Engines 0–3 add | Engines 0–3 acc |
| N+6 | 1 | Win(r,c+2) | Engines 0–3 → add_bias | Engines 0–3 acc | Engines 0–3 mult | Engines 0–3 add_bias |
| N+7 | 1 | Win(r,c+3) | Engines 0–3 → reg_output4–7 | Engines 0–3 add | Engines 0–3 acc | Engines 0–3 mult |