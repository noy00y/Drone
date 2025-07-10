#include "ap_int.h"
#include "ap_fixed.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "hls_math.h"
#include "hls_stream.h"
#include <cstring>  // for memcpy

// -----------------------------------------------------------------------------
// Network parameters (tweak as needed)
#define H    240
#define W    320
#define C0     3   // input channels
#define K      3   // kernel size
#define M1     8   // conv1 filters
#define M2    16   // conv2 filters
#define H1  (H-K+1)
#define W1  (W-K+1)
#define H2  (H1/2)
#define W2  (W1/2)
#define H3  (H2-K+1)
#define W3  (W2-K+1)
#define H4  (H3/2)  
#define W4  (W3/2)
#define N2    32   // FC1 outputs

typedef ap_fixed<16, 4> data_t;
typedef unsigned char flag_t;

// ============================================================================
// Function Prototypes for each stage
void load_img(const data_t *img_in, data_t local_img[H][W][C0]);
void conv1(const data_t local_img[H][W][C0],
           const data_t *w1_local, const data_t *b1_local,
           data_t feat1[H1][W1][M1]);
void pool1(const data_t feat1[H1][W1][M1],
           data_t feat1_p[H2][W2][M1]);
void conv2(const data_t feat1_p[H2][W2][M1],
           const data_t *w2_local, const data_t *b2_local,
           data_t feat2[H3][W3][M2]);
void pool2(const data_t feat2[H3][W3][M2],
           data_t feat2_p[H4][W4][M2]);
void flatten(const data_t feat2_p[H4][W4][M2],
             data_t vec1[M2 * H4 * W4], int &cnt);
void fc1(const data_t vec1[M2 * H4 * W4], int cnt,
         const data_t *fc1_w_local, const data_t *fc1_b_local,
         data_t vec2[N2]);
void fc2(const data_t vec2[N2],
         const data_t *fc2_w_local, const data_t *fc2_b_local,
         flag_t *flag_out);

// ============================================================================
// Top-level kernel with DATAFLOW optimization
extern "C" {
void cnn_accel(
    // DDR interfaces
    const data_t *img_in,   // H*W*C0
    const data_t *weights1, // M1*C0*K*K
    const data_t *bias1,    // M1
    const data_t *weights2, // M2*M1*K*K
    const data_t *bias2,    // M2
    const data_t *FC1_W,    // N2*(M2*H4*W4)
    const data_t *FC1_B,    // N2
    const data_t *FC2_W,    // 1*N2
    const data_t *FC2_B,    // 1
    flag_t *flag_out,       // 1
    // Control interface
    int ctrl)
{
#pragma HLS INTERFACE m_axi port=img_in    offset=slave bundle=IMGmem   depth=H*W*C0
#pragma HLS INTERFACE m_axi port=weights1 offset=slave bundle=W1mem    depth=M1*C0*K*K
#pragma HLS INTERFACE m_axi port=bias1    offset=slave bundle=B1mem    depth=M1
#pragma HLS INTERFACE m_axi port=weights2 offset=slave bundle=W2mem    depth=M2*M1*K*K
#pragma HLS INTERFACE m_axi port=bias2    offset=slave bundle=B2mem    depth=M2
#pragma HLS INTERFACE m_axi port=FC1_W    offset=slave bundle=W3mem    depth=N2*(M2*H4*W4)
#pragma HLS INTERFACE m_axi port=FC1_B    offset=slave bundle=B3mem    depth=N2
#pragma HLS INTERFACE m_axi port=FC2_W    offset=slave bundle=W4mem    depth=N2
#pragma HLS INTERFACE m_axi port=FC2_B    offset=slave bundle=B4mem    depth=1
#pragma HLS INTERFACE m_axi port=flag_out offset=slave bundle=Foutmem depth=1

#pragma HLS INTERFACE s_axilite port=img_in    bundle=control
#pragma HLS INTERFACE s_axilite port=weights1  bundle=control
#pragma HLS INTERFACE s_axilite port=bias1     bundle=control
#pragma HLS INTERFACE s_axilite port=weights2  bundle=control
#pragma HLS INTERFACE s_axilite port=bias2     bundle=control
#pragma HLS INTERFACE s_axilite port=FC1_W     bundle=control
#pragma HLS INTERFACE s_axilite port=FC1_B     bundle=control
#pragma HLS INTERFACE s_axilite port=FC2_W     bundle=control
#pragma HLS INTERFACE s_axilite port=FC2_B     bundle=control
#pragma HLS INTERFACE s_axilite port=flag_out  bundle=control
#pragma HLS INTERFACE s_axilite port=ctrl      bundle=control
#pragma HLS INTERFACE s_axilite port=return    bundle=control

    // Local on-chip feature buffers
    static data_t local_img[H][W][C0];
    static data_t feat1   [H1][W1][M1];
    static data_t feat1_p [H2][W2][M1];
    static data_t feat2   [H3][W3][M2];
    static data_t feat2_p [H4][W4][M2];
    static data_t vec1    [M2*H4*W4];
    static data_t vec2    [N2];
    int cnt;

    // Weight/bias BRAM buffers
    static data_t w1_local[M1*C0*K*K];
    static data_t b1_local[M1];
    static data_t w2_local[M2*M1*K*K];
    static data_t b2_local[M2];
    static data_t fc1_w_local[N2*(M2*H4*W4)];
    static data_t fc1_b_local[N2];
    static data_t fc2_w_local[N2];
    static data_t fc2_b_local[1];

    // Partition small BRAM arrays for parallel access
// #pragma HLS ARRAY_PARTITION variable=w1_local complete dim=1
// #pragma HLS ARRAY_PARTITION variable=b1_local complete dim=1
// #pragma HLS ARRAY_PARTITION variable=w2_local complete dim=1
// #pragma HLS ARRAY_PARTITION variable=b2_local complete dim=1
// #pragma HLS ARRAY_PARTITION variable=fc1_w_local cyclic factor=8 dim=1
// #pragma HLS ARRAY_PARTITION variable=fc1_b_local complete dim=1
// #pragma HLS ARRAY_PARTITION variable=fc2_w_local complete dim=1
// #pragma HLS ARRAY_PARTITION variable=fc2_b_local complete dim=1
#pragma HLS ARRAY_PARTITION variable=vec2   cyclic factor=8 dim=1

    // Prefetch weights/biases into on-chip BRAM once (pipelined)
    if (ctrl == 1) {
      LOAD_W1:   for (int i = 0; i < M1*C0*K*K; i++) {  
          #pragma HLS PIPELINE II=3
              w1_local[i]  = weights1[i];
          }
      LOAD_B1:   for (int i = 0; i < M1; i++) {  
      #pragma HLS PIPELINE II=3
          b1_local[i]  = bias1[i];
      }
      LOAD_W2:   for (int i = 0; i < M2*M1*K*K; i++) {
      #pragma HLS PIPELINE II=3
          w2_local[i]  = weights2[i];
      }
      LOAD_B2:   for (int i = 0; i < M2; i++) {
      #pragma HLS PIPELINE II=3
          b2_local[i]  = bias2[i];
      }
      LOAD_FC1W: for (int i = 0; i < N2*(M2*H4*W4); i++) {
      #pragma HLS PIPELINE II=3
          fc1_w_local[i] = FC1_W[i];
      }
      LOAD_FC1B: for (int i = 0; i < N2; i++) {
      #pragma HLS PIPELINE II=3
          fc1_b_local[i] = FC1_B[i];
      }
      LOAD_FC2W: for (int i = 0; i < N2; i++) {
      #pragma HLS PIPELINE II=3
          fc2_w_local[i] = FC2_W[i];
      }
      LOAD_FC2B: for (int i = 0; i < 1; i++) {
      #pragma HLS PIPELINE II=3
          fc2_b_local[i] = FC2_B[i];
      }
      return;
    }

// #pragma HLS ARRAY_PARTITION variable=local_img block factor=2 dim=3
// #pragma HLS ARRAY_PARTITION variable=feat1     block factor=4 dim=3
// #pragma HLS ARRAY_PARTITION variable=feat1_p   block factor=4 dim=3
// #pragma HLS ARRAY_PARTITION variable=feat2     block factor=4 dim=3
// #pragma HLS ARRAY_PARTITION variable=feat2_p   block factor=4 dim=3
#pragma HLS ARRAY_PARTITION variable=FC2_W cyclic factor=8 dim=1

#pragma HLS DATAFLOW

    // Stage 1: Load image
    load_img(img_in, local_img);

    // Stage 2: Convolution 1 + ReLU (use w1_local, b1_local)
    conv1(local_img, w1_local, b1_local, feat1);

    // Stage 3: Pooling 1
    pool1(feat1, feat1_p);

    // Stage 4: Convolution 2 + ReLU (use w2_local, b2_local)
    conv2(feat1_p, w2_local, b2_local, feat2);

    // Stage 5: Pooling 2
    pool2(feat2, feat2_p);

    // Stage 6: Flatten feature map
    flatten(feat2_p, vec1, cnt);

    // Stage 7: FC1 + Tanh (use fc1_w_local, fc1_b_local)
    fc1(vec1, cnt, fc1_w_local, fc1_b_local, vec2);

    // Stage 8: FC2 + Sigmoid + Threshold (use fc2_w_local, fc2_b_local)
    fc2(vec2, fc2_w_local, fc2_b_local, flag_out);
}
}

// ============================================================================
// Stage 1: Load Image (simulate a line-buffer approach)
void load_img(const data_t *img_in, data_t local_img[H][W][C0]) {
    LOAD_IMG_ROWS: for(int i = 0; i < H; i++){
        LOAD_IMG_COLS: for(int j = 0; j < W; j++){
            LOAD_IMG_CH: for(int c = 0; c < C0; c++){
#pragma HLS PIPELINE II=3
                int idx = (i*W + j)*C0 + c;
                local_img[i][j][c] = img_in[idx];
            }
        }
    }
}

// ============================================================================
// Stage 2: Conv1 + ReLU
void conv1(const data_t local_img[H][W][C0],
           const data_t *weights1, const data_t *bias1,
           data_t feat1[H1][W1][M1])
{
    CONV1_ROW: for(int i = 0; i < H1; i++){
        CONV1_COL: for(int j = 0; j < W1; j++){
            CONV1_FIL: for(int m = 0; m < M1; m++){
#pragma HLS PIPELINE II=3
                data_t acc = bias1[m];
                CONV1_KR: for(int p = 0; p < K; p++){
                    CONV1_KC: for(int q = 0; q < K; q++){
                        CONV1_CH: for(int c = 0; c < C0; c++){
// #pragma HLS UNROLL factor=2
                            int widx = ((m * C0 + c)*K + p)*K + q;
                            acc += local_img[i+p][j+q][c] * weights1[widx];
                        }
                    }
                }
                // Apply ReLU activation
                feat1[i][j][m] = (acc > (data_t)0) ? acc :  (data_t)0;
            }
        }
    }
}

// ============================================================================
// Stage 3: Pool1 - 2x2 Max-Pool
void pool1(const data_t feat1[H1][W1][M1],
           data_t feat1_p[H2][W2][M1])
{
    POOL1_ROW: for(int i = 0; i < H2; i++){
        POOL1_COL: for(int j = 0; j < W2; j++){
            POOL1_CH: for(int m = 0; m < M1; m++){
#pragma HLS PIPELINE II=3
                data_t m0 = feat1[2*i][2*j][m];
                data_t m1 = feat1[2*i+1][2*j][m];
                data_t m2 = feat1[2*i][2*j+1][m];
                data_t m3 = feat1[2*i+1][2*j+1][m];
                data_t mx = (m0 > m1) ? m0 : m1;
                data_t my = (m2 > m3) ? m2 : m3;
                feat1_p[i][j][m] = (mx > my) ? mx : my;
            }
        }
    }
}

// ============================================================================
// Stage 4: Conv2 + ReLU
void conv2(const data_t feat1_p[H2][W2][M1],
           const data_t *weights2, const data_t *bias2,
           data_t feat2[H3][W3][M2])
{
    CONV2_ROW: for(int i = 0; i < H3; i++){
        CONV2_COL: for(int j = 0; j < W3; j++){
            CONV2_FIL: for(int m = 0; m < M2; m++){
#pragma HLS PIPELINE II=3
                data_t acc = bias2[m];
                CONV2_KR: for(int p = 0; p < K; p++){
                    CONV2_KC: for(int q = 0; q < K; q++){
                        CONV2_CH: for(int c = 0; c < M1; c++){
// #pragma HLS UNROLL factor=2
                            int widx = ((m * M1 + c)*K + p)*K + q;
                            acc += feat1_p[i+p][j+q][c] * weights2[widx];
                        }
                    }
                }
                feat2[i][j][m] = (acc > (data_t)0) ? acc : (data_t)0;
            }
        }
    }
}

// ============================================================================
// Stage 5: Pool2 - 2x2 Max-Pool
void pool2(const data_t feat2[H3][W3][M2],
           data_t feat2_p[H4][W4][M2])
{
    POOL2_ROW: for(int i = 0; i < H4; i++){
        POOL2_COL: for(int j = 0; j < W4; j++){
            POOL2_CH: for(int m = 0; m < M2; m++){
#pragma HLS PIPELINE II=3
                data_t m0 = feat2[2*i][2*j][m];
                data_t m1 = feat2[2*i+1][2*j][m];
                data_t m2 = feat2[2*i][2*j+1][m];
                data_t m3 = feat2[2*i+1][2*j+1][m];
                data_t mx = (m0 > m1) ? m0 : m1;
                data_t my = (m2 > m3) ? m2 : m3;
                feat2_p[i][j][m] = (mx > my) ? mx : my;
            }
        }
    }
}

// ============================================================================
// Stage 6: Flatten feature map into a vector
void flatten(const data_t feat2_p[H4][W4][M2],
             data_t vec1[M2 * H4 * W4], int &cnt)
{
    cnt = 0;
    FLATTEN: for(int i = 0; i < H4; i++){
        for(int j = 0; j < W4; j++){
            for(int m = 0; m < M2; m++){
#pragma HLS PIPELINE II=3
                vec1[cnt++] = feat2_p[i][j][m];
            }
        }
    }
}

// ============================================================================
// Stage 7: FC1 + Tanh Activation
void fc1(const data_t vec1[M2 * H4 * W4], int cnt,
         const data_t *FC1_W, const data_t *FC1_B,
         data_t vec2[N2])
{
    FC1_OUT: for(int o = 0; o < N2; o++){
#pragma HLS PIPELINE II=3
        data_t acc = FC1_B[o];
        for(int i = 0; i < cnt; i++){
#pragma HLS UNROLL factor=2
            acc += vec1[i] * FC1_W[o * cnt + i];
        }
        // Using hls::tanh() for activation
        vec2[o] = hls::tanh(acc);
    }
}

// ============================================================================
// Stage 8: FC2 + Sigmoid Activation, then Threshold to generate flag
void fc2(const data_t vec2[N2],
         const data_t *FC2_W, const data_t *FC2_B,
         flag_t *flag_out)
{
    data_t acc2 = FC2_B[0];
    FC2_LOOP: for(int i = 0; i < N2; i++){
#pragma HLS PIPELINE II=3
        acc2 += vec2[i] * FC2_W[i];
    }
    data_t prob = (data_t)1.0 / ((data_t)1.0 + hls::exp(-acc2));
    flag_t flag = (prob > (data_t)0.5) ? (data_t)1 : (data_t)0;
    flag_out[0] = flag;
}