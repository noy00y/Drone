#include "conv_pool.hpp"

// Helper: single 3×3 convolution + ReLU
static void conv3x3(
    uint8 in[IN_H][IN_W],
    uint8 w[C2_OUT][C1_OUT][K][K],
    uint8 b[C2_OUT],
    uint16 out[IN_H-2][IN_W-2])
{
    // tile loops for HLS PIPELINE
    for (int co = 0; co < C2_OUT; ++co) {
        for (int i = 0; i < IN_H-2; ++i) {
            #pragma HLS PIPELINE II=1
            for (int j = 0; j < IN_W-2; ++j) {
                uint16 acc = b[co];
                ConvK: for (int ci = 0; ci < C1_OUT; ++ci)
                for (int ki = 0; ki < K; ++ki)
                for (int kj = 0; kj < K; ++kj)
                    acc += in[i+ki][j+kj] * w[co][ci][ki][kj];
                // ReLU & saturate
                out[i][j] = (acc > 0 ? acc : 0);
            }
        }
    }
}

// Simple 2×2 max-pool
static void maxpool2(
    uint16 in[IN_H-2][IN_W-2],
    uint16 out[(IN_H-2)/POOL][(IN_W-2)/POOL])
{
    for (int i = 0; i < (IN_H-2); i += POOL) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < (IN_W-2); j += POOL) {
            uint16 m = 0;
            PoolK: for (int di = 0; di < POOL; ++di)
            for (int dj = 0; dj < POOL; ++dj) {
                uint16 v = in[i+di][j+dj];
                if (v > m) m = v;
            }
            out[i/POOL][j/POOL] = m;
        }
    }
}

void cnn_accel(
    volatile uint8  *in_img,
    volatile uint8  *w1, volatile uint8 *b1,
    volatile uint8  *w2, volatile uint8 *b2,
    volatile uint16 *fc_w, volatile uint16 *fc_b,
    volatile uint8  *out_flag)
{
#pragma HLS INTERFACE m_axi port=in_img  offset=slave bundle=DDR
#pragma HLS INTERFACE m_axi port=w1      offset=slave bundle=DDR
#pragma HLS INTERFACE m_axi port=b1      offset=slave bundle=DDR
#pragma HLS INTERFACE m_axi port=w2      offset=slave bundle=DDR
#pragma HLS INTERFACE m_axi port=b2      offset=slave bundle=DDR
#pragma HLS INTERFACE m_axi port=fc_w    offset=slave bundle=DDR
#pragma HLS INTERFACE m_axi port=fc_b    offset=slave bundle=DDR
#pragma HLS INTERFACE m_axi port=out_flag offset=slave bundle=DDR

#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

    // Local buffers
    static uint8  img_buf[IN_H][IN_W];
    static uint8  w1_buf[C1_OUT][1][K][K];
    static uint8  b1_buf[C1_OUT];
    static uint16 fm1[(IN_H-2)/POOL][(IN_W-2)/POOL];
    static uint8  w2_buf[C2_OUT][C1_OUT][K][K];
    static uint8  b2_buf[C2_OUT];
    static uint16 fm2[(IN_H-4)/POOL/POOL][(IN_W-4)/POOL/POOL];
    static uint16 fc_w_buf[C2_OUT * ((IN_H-4)/POOL/POOL * (IN_W-4)/POOL/POOL)];
    static uint16 fc_b_buf[1];

    // Burst-read everything from DDR into on-chip buffers
    // (Omitted: memcpy-like loops with #pragma HLS PIPELINE)

    // Layer 1: conv1 → pool1
    conv3x3(img_buf, w1_buf, b1_buf, /*out*/ fm1);
    maxpool2(fm1, /*out*/ fm1);

    // Layer 2: conv2 → pool2
    conv3x3((uint8(*)[IN_W])fm1, w2_buf, b2_buf, /*out*/ fm2);
    maxpool2(fm2, /*out*/ fm2);

    // FC: simple dot-product + bias
    uint32 acc = 0;
    int fm_size = ((IN_H-4)/POOL/POOL) * ((IN_W-4)/POOL/POOL);
    FC: for (int i = 0; i < fm_size; ++i) {
        #pragma HLS PIPELINE II=1
        acc += fm2[0][i] * fc_w_buf[i];
    }
    acc += fc_b_buf[0];
    *out_flag = (acc > THRESH) ? 1 : 0;
}
