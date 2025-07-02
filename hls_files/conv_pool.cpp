// cnn_accel.cpp
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "hls_math.h"

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

typedef float data_t;
typedef unsigned char flag_t;

// Top-level kernel
extern "C" {
void cnn_accel(
    // DDR interfaces
    const data_t *img_in,     // H*W*C0
    const data_t *weights1,         // M1*C0*K*K
    const data_t *bias1,         // M1
    const data_t *weights2,         // M2*M1*K*K
    const data_t *bias2,         // M2
    const data_t *FC1_W,      // N2*(M2*H4*W4)
    const data_t *FC1_B,      // N2
    const data_t *FC2_W,      // 1*N2
    const data_t *FC2_B,      // 1
    flag_t       *flag_out,   // 1
    // Control interface
    int ctrl) 
{
#pragma HLS INTERFACE m_axi port=img_in  offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=weights1      offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=bias1      offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=weights2      offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=bias2      offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=FC1_W   offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=FC1_B   offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=FC2_W   offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=FC2_B   offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=flag_out offset=slave bundle=gmem

#pragma HLS INTERFACE s_axilite port=img_in  bundle=control
#pragma HLS INTERFACE s_axilite port=weights1      bundle=control
#pragma HLS INTERFACE s_axilite port=bias1      bundle=control
#pragma HLS INTERFACE s_axilite port=weights2      bundle=control
#pragma HLS INTERFACE s_axilite port=bias2      bundle=control
#pragma HLS INTERFACE s_axilite port=FC1_W   bundle=control
#pragma HLS INTERFACE s_axilite port=FC1_B   bundle=control
#pragma HLS INTERFACE s_axilite port=FC2_W   bundle=control
#pragma HLS INTERFACE s_axilite port=FC2_B   bundle=control
#pragma HLS INTERFACE s_axilite port=flag_out bundle=control
#pragma HLS INTERFACE s_axilite port=ctrl     bundle=control
#pragma HLS INTERFACE s_axilite port=return   bundle=control

    // Local buffers in BRAM/LUTRAM
    static data_t local_img[H][W][C0];
    static data_t feat1   [H1][W1][M1];
    static data_t feat1_p [H2][W2][M1];
    static data_t feat2   [H3][W3][M2];
    static data_t feat2_p [H4][W4][M2];
    static data_t vec1    [M2*H4*W4];
    static data_t vec2    [N2];

#pragma HLS ARRAY_PARTITION variable=local_img complete dim=3
#pragma HLS ARRAY_PARTITION variable=feat1     complete dim=3
#pragma HLS ARRAY_PARTITION variable=feat1_p   complete dim=3
#pragma HLS ARRAY_PARTITION variable=feat2     complete dim=3
#pragma HLS ARRAY_PARTITION variable=feat2_p   complete dim=3

    // 1) Load image from DDR
    LOAD_IMG_ROWS:
    for(int i=0;i<H;i++){
      LOAD_IMG_COLS:
      for(int j=0;j<W;j++){
        LOAD_IMG_CH:
        for(int c=0;c<C0;c++){
#pragma HLS PIPELINE II=1
          int idx = (i*W + j)*C0 + c;
          local_img[i][j][c] = img_in[idx];
        }
      }
    }

    // 2) Conv1 + ReLU
    CONV1_ROW:
    for(int i=0;i<H1;i++){
      CONV1_COL:
      for(int j=0;j<W1;j++){
        CONV1_FIL:
        for(int m=0;m<M1;m++){
#pragma HLS PIPELINE II=1
          data_t acc = bias1[m];
          CONV1_KR:
          for(int p=0;p<K;p++){
            CONV1_KC:
            for(int q=0;q<K;q++){
              CONV1_CH:
              for(int c=0;c<C0;c++){
                int widx = ((m*C0 + c)*K + p)*K + q;
                acc += local_img[i+p][j+q][c] * weights1[widx];
              }
            }
          }
          feat1[i][j][m] = (acc>0)?acc:0;
        }
      }
    }

    // 3) Pool1 (2×2 max)
    POOL1_ROW:
    for(int i=0;i<H2;i++){
      POOL1_COL:
      for(int j=0;j<W2;j++){
        POOL1_CH:
        for(int m=0;m<M1;m++){
#pragma HLS PIPELINE II=1
          data_t m0 = feat1[2*i   ][2*j   ][m];
          data_t m1 = feat1[2*i+1 ][2*j   ][m];
          data_t m2 = feat1[2*i   ][2*j+1 ][m];
          data_t m3 = feat1[2*i+1 ][2*j+1 ][m];
          data_t mx = (m0>m1?m0:m1);
          data_t my = (m2>m3?m2:m3);
          feat1_p[i][j][m] = (mx>my?mx:my);
        }
      }
    }

    // 4) Conv2 + ReLU
    CONV2_ROW:
    for(int i=0;i<H3;i++){
      CONV2_COL:
      for(int j=0;j<W3;j++){
        CONV2_FIL:
        for(int m=0;m<M2;m++){
#pragma HLS PIPELINE II=1
          data_t acc = bias2[m];
          CONV2_KR:
          for(int p=0;p<K;p++){
            CONV2_KC:
            for(int q=0;q<K;q++){
              CONV2_CH:
              for(int c=0;c<M1;c++){
                int widx = ((m*M1 + c)*K + p)*K + q;
                acc += feat1_p[i+p][j+q][c] * weights2[widx];
              }
            }
          }
          feat2[i][j][m] = (acc>0)?acc:0;
        }
      }
    }

    // 5) Pool2
    POOL2_ROW:
    for(int i=0;i<H4;i++){
      POOL2_COL:
      for(int j=0;j<W4;j++){
        POOL2_CH:
        for(int m=0;m<M2;m++){
#pragma HLS PIPELINE II=1
          data_t m0 = feat2[2*i   ][2*j   ][m];
          data_t m1 = feat2[2*i+1 ][2*j   ][m];
          data_t m2 = feat2[2*i   ][2*j+1 ][m];
          data_t m3 = feat2[2*i+1 ][2*j+1 ][m];
          data_t mx = (m0>m1?m0:m1);
          data_t my = (m2>m3?m2:m3);
          feat2_p[i][j][m] = (mx>my?mx:my);
        }
      }
    }

    // 6) Flatten
    int cnt=0;
    FLATTEN:
    for(int i=0;i<H4;i++){
      for(int j=0;j<W4;j++){
        for(int m=0;m<M2;m++){
#pragma HLS PIPELINE II=1
          vec1[cnt++] = feat2_p[i][j][m];
        }
      }
    }

    // 7) FC1 + Tanh
    FC1_OUT:
    for(int o=0;o<N2;o++){
#pragma HLS PIPELINE II=1
      data_t acc = FC1_B[o];
      for(int i=0;i<cnt;i++){
        acc += vec1[i] * FC1_W[o*cnt + i];
      }
      // piecewise tanh or hls::tanh()
      vec2[o] = hls::tanh(acc);
    }

    // 8) FC2 + Sigmoid
    data_t acc2 = FC2_B[0];
    FC2_LOOP:
    for(int i=0;i<N2;i++){
#pragma HLS PIPELINE II=1
      acc2 += vec2[i] * FC2_W[i];
    }
    data_t prob = 1.0f / (1.0f + hls::exp(-acc2));

    // 9) Threshold → flag
    flag_t flag = (prob > 0.5f) ? 1 : 0;

    // 10) Write out
    flag_out[0] = flag;
}
}
