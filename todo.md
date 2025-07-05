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