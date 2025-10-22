# Conv Engine Overview

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
