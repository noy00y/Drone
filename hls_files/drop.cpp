#include "ap_int.h"
#include "hls_stream.h"
#include "ap_fixed.h"
#include "hls_math.h"

// -----------------------------------------------------------------------------
// Network parameters
// -----------------------------------------------------------------------------
#define H    240
#define W    320
#define C0     3
#define K      3
#define M1     8
#define M2    16
#define H1  (H-K+1)
#define W1  (W-K+1)
#define H2  (H1/2)
#define W2  (W1/2)
#define H3  (H2-K+1)
#define W3  (W2-K+1)
#define H4  (H3/2)
#define W4  (W3/2)
#define N2    32

typedef ap_fixed<16, 4> data_t;
typedef unsigned char flag_t;

// -----------------------------------------------------------------------------
// BRAM-resident weight & bias buffers (loaded at init, reused each run)
// -----------------------------------------------------------------------------
static data_t w1_local[M1*C0*K*K];
static data_t b1_local[M1];
static data_t w2_local[M2*M1*K*K];
static data_t b2_local[M2];
static data_t fc1_w_local[N2*(M2*H4*W4)];
static data_t fc1_b_local[N2];
static data_t fc2_w_local[N2];
static data_t fc2_b_local[1];

// -----------------------------------------------------------------------------
// Stage 0: Stream input frame into an HLS stream (pixel by pixel)
// -----------------------------------------------------------------------------
void stream_img(
    const data_t *img_in,
    hls::stream<data_t> &img_strm)
{
  for (int idx = 0; idx < H*W*C0; idx++) {
  #pragma HLS PIPELINE II=4
    img_strm.write(img_in[idx]);
  }
}

// -----------------------------------------------------------------------------
// Stage 1: Conv1 + ReLU (3×3 kernel, M1 outputs), using a 2-line sliding buffer
// -----------------------------------------------------------------------------
void conv1_stream(
    hls::stream<data_t> &img_strm,
    const data_t *w1, const data_t *b1,
    hls::stream<data_t> &feat1_strm)
{
  static data_t linebuf[K-1][W][C0];
  data_t window[K][K][C0];

  ROW_LOOP: for (int i = 0; i < H; i++) {
    COL_LOOP: for (int j = 0; j < W; j++) {
      PIX_CH: for (int c = 0; c < C0; c++) {
      #pragma HLS PIPELINE II=4
        // shift older lines up
        for (int m = 0; m < K-2; m++) {
          linebuf[m][j][c] = linebuf[m+1][j][c];
        }
        // read new pixel
        data_t px = img_strm.read();
        linebuf[K-2][j][c] = px;

        // construct 3×3 window
        for (int m = 0; m < K; m++) {
          for (int n = 0; n < K; n++) {
            if (i + m < K-1 || j + n < K-1) {
              window[m][n][c] = 0.0f;
            } else {
              window[m][n][c] = ((data_t)m < K-1)
                ? linebuf[m][j + n - (K-1)]
                : px;
            }
          }
        }
      }

      // once full window is available, emit M1 outputs
      if (i >= K-1 && j >= K-1) {
        for (int m = 0; m < M1; m++) {
        #pragma HLS PIPELINE II=4
          // ensure this multiply-accumulate uses DSPs
        #pragma HLS RESOURCE variable=window core=Ram_2P_BRAM
        #pragma HLS RESOURCE variable=w1 core=Ram_2P_BRAM
        #pragma HLS ALLOCATION operation instances=__mul64 limit=16
          data_t acc = b1[m];
          for (int p = 0; p < K; p++)
            for (int q = 0; q < K; q++)
              for (int c = 0; c < C0; c++) {
                int widx = ((m*C0 + c)*K + p)*K + q;
                acc += window[p][q][c] * w1[widx];
              }
          // ReLU
          feat1_strm.write(acc > (data_t)0.0 ? acc : (data_t)0.0);
        }
      }
    }
  }
}

// -----------------------------------------------------------------------------
// Stage 2: 2×2 Max-Pooling on stream of feat1
// -----------------------------------------------------------------------------
void pool1_stream(
    hls::stream<data_t> &feat1_strm,
    hls::stream<data_t> &feat1_p_strm)
{
  static data_t buf[2][2][M1];
  for (int r = 0; r < H1; r++) {
    for (int c = 0; c < W1; c++) {
      for (int m = 0; m < M1; m++) {
      #pragma HLS PIPELINE II=2
        data_t v = feat1_strm.read();
        buf[r%2][c%2][m] = v;
        if ((r%2==1) && (c%2==1)) {
          data_t m0 = buf[0][0][m], m1 = buf[0][1][m];
          data_t m2 = buf[1][0][m], m3 = buf[1][1][m];
          data_t mx = (m0>m1?m0:m1), my = (m2>m3?m2:m3);
          feat1_p_strm.write(mx>my?mx:my);
        }
      }
    }
  }
}

// -----------------------------------------------------------------------------
// Stage 3: Conv2 + ReLU (3×3 kernel, M2 outputs) on stream of feat1_p
// -----------------------------------------------------------------------------
void conv2_stream(
    hls::stream<data_t> &feat1_p_strm,
    const data_t *w2, const data_t *b2,
    hls::stream<data_t> &feat2_strm)
{
  static data_t linebuf[K-1][W2][M1];
  data_t window[K][K][M1];

  ROW2: for (int i = 0; i < H2; i++) {
    COL2: for (int j = 0; j < W2; j++) {
      CH2: for (int c = 0; c < M1; c++) {
      #pragma HLS PIPELINE II=4
        // shift lines
        for (int m = 0; m < K-2; m++) {
          linebuf[m][j][c] = linebuf[m+1][j][c];
        }
        data_t px = feat1_p_strm.read();
        linebuf[K-2][j][c] = px;

        // build window
        for (int m = 0; m < K; m++)
          for (int n = 0; n < K; n++)
            window[m][n][c] = (i+m < K-1 || j+n < K-1)
              ? (data_t)0.0
              : ((m < K-1)
                 ? linebuf[m][j + n - (K-1)]
                 : px);
      }

      if (i >= K-1 && j >= K-1) {
        for (int m = 0; m < M2; m++) {
        #pragma HLS PIPELINE II=4
          data_t acc = b2[m];
          for (int p = 0; p < K; p++)
            for (int q = 0; q < K; q++)
              for (int c = 0; c < M1; c++) {
                int widx = ((m*M1 + c)*K + p)*K + q;
                acc += window[p][q][c] * w2[widx];
              }
          feat2_strm.write(acc > (data_t)0.0 ? acc : (data_t)0.0);
        }
      }
    }
  }
}

// -----------------------------------------------------------------------------
// Stage 4: Pool2 (2×2 max) on stream of feat2
// -----------------------------------------------------------------------------
void pool2_stream(
    hls::stream<data_t> &feat2_strm,
    hls::stream<data_t> &feat2_p_strm)
{
  static data_t buf[2][2][M2];
  for (int r = 0; r < H3; r++) {
    for (int c = 0; c < W3; c++) {
      for (int m = 0; m < M2; m++) {
      #pragma HLS PIPELINE II=2
        data_t v = feat2_strm.read();
        buf[r%2][c%2][m] = v;
        if ((r%2==1) && (c%2==1)) {
          data_t m0 = buf[0][0][m], m1 = buf[0][1][m];
          data_t m2 = buf[1][0][m], m3 = buf[1][1][m];
          data_t mx = (m0>m1?m0:m1), my = (m2>m3?m2:m3);
          feat2_p_strm.write(mx>my?mx:my);
        }
      }
    }
  }
}

// -----------------------------------------------------------------------------
// Stage 5: Flatten pooled features into a vector (static BRAM buffer)
// -----------------------------------------------------------------------------
void flatten_stream(
    hls::stream<data_t> &feat2_p_strm,
    data_t vec1[M2*H4*W4],
    int &cnt)
{
  cnt = 0;
  const int TOTAL = M2 * H4 * W4;
  for (int i = 0; i < TOTAL; i++) {
  #pragma HLS PIPELINE II=4
    vec1[cnt++] = feat2_p_strm.read();
  }
}

// -----------------------------------------------------------------------------
// Stage 6: FC1 + Tanh (unchanged)
// -----------------------------------------------------------------------------
void fc1(
    const data_t vec1[M2*H4*W4], int cnt,
    const data_t *FC1_W, const data_t *FC1_B,
    data_t vec2[N2])
{
  for (int o = 0; o < N2; o++) {
  #pragma HLS PIPELINE II=4
    data_t acc = FC1_B[o];
    for (int i = 0; i < cnt; i++) {
      acc += vec1[i] * FC1_W[o * cnt + i];
    }
    vec2[o] = hls::tanh(acc);
  }
}

// -----------------------------------------------------------------------------
// Stage 7: FC2 + Sigmoid + Threshold
// -----------------------------------------------------------------------------
void fc2(
    const data_t vec2[N2],
    const data_t *FC2_W, const data_t *FC2_B,
    flag_t *flag_out)
{
  data_t acc = FC2_B[0];
  for (int i = 0; i < N2; i++) {
  #pragma HLS PIPELINE II=4
    acc += vec2[i] * FC2_W[i];
  }
  data_t p = (data_t)1.0 / ((data_t)1.0 + hls::exp(-acc));
  *flag_out = (p > (data_t)0.5) ? (data_t)1 : (data_t)0;
}

// -----------------------------------------------------------------------------
// Load weights & biases into on-chip BRAM buffers
// -----------------------------------------------------------------------------
void load_weights(
    const data_t *weights1, const data_t *bias1,
    const data_t *weights2, const data_t *bias2,
    const data_t *FC1_W,    const data_t *FC1_B,
    const data_t *FC2_W,    const data_t *FC2_B)
{
#pragma HLS INLINE off
  // Weight loading loops (copy from DDR arrays into BRAM-resident buffers)
  LOAD_W1: for (int i = 0; i < M1*C0*K*K; i++) {
  #pragma HLS PIPELINE II=4
    w1_local[i] = weights1[i];
  }
  LOAD_B1: for (int i = 0; i < M1; i++) {
  #pragma HLS PIPELINE II=4
    b1_local[i] = bias1[i];
  }
  LOAD_W2: for (int i = 0; i < M2*M1*K*K; i++) {
  #pragma HLS PIPELINE II=4
    w2_local[i] = weights2[i];
  }
  LOAD_B2: for (int i = 0; i < M2; i++) {
  #pragma HLS PIPELINE II=4
    b2_local[i] = bias2[i];
  }
  LOAD_FC1_W: for (int i = 0; i < N2*(M2*H4*W4); i++) {
  #pragma HLS PIPELINE II=4
    fc1_w_local[i] = FC1_W[i];
  }
  LOAD_FC1_B: for (int i = 0; i < N2; i++) {
  #pragma HLS PIPELINE II=4
    fc1_b_local[i] = FC1_B[i];
  }
  LOAD_FC2_W: for (int i = 0; i < N2; i++) {
  #pragma HLS PIPELINE II=4
    fc2_w_local[i] = FC2_W[i];
  }
  LOAD_FC2_B: for (int i = 0; i < 1; i++) {
  #pragma HLS PIPELINE II=4
    fc2_b_local[i] = FC2_B[i];
  }
}

// -----------------------------------------------------------------------------
// Compute pipeline: dataflow of entire CNN inference
// -----------------------------------------------------------------------------
void compute_cnn(
    const data_t *img_in,
    flag_t *flag_out)
{
#pragma HLS DATAFLOW

  // --- streams ---
  hls::stream<data_t> img_strm("img_strm");
  hls::stream<data_t> feat1_strm("feat1_strm");
  hls::stream<data_t> feat1_p_strm("feat1_p_strm");
  hls::stream<data_t> feat2_strm("feat2_strm");
  hls::stream<data_t> feat2_p_strm("feat2_p_strm");

  // --- intermediate buffer for FC1 input ---
  static data_t vec1_local[M2*H4*W4];
  int cnt;

  // --- pipeline stages ---
  stream_img       (img_in,        img_strm);
  conv1_stream     (img_strm,      w1_local,  b1_local,  feat1_strm);
  pool1_stream     (feat1_strm,    feat1_p_strm);
  conv2_stream     (feat1_p_strm,  w2_local,  b2_local,  feat2_strm);
  pool2_stream     (feat2_strm,    feat2_p_strm);
  flatten_stream   (feat2_p_strm,  vec1_local, cnt);
  fc1              (vec1_local,    cnt,        fc1_w_local, fc1_b_local, vec1_local); // reuse vec1_local for vec2
  fc2              (vec1_local,    fc2_w_local, fc2_b_local, flag_out);
}

// -----------------------------------------------------------------------------
// Top-Level Kernel
// -----------------------------------------------------------------------------
extern "C" {
void cnn_accel(
    const data_t *img_in,
    const data_t *weights1, const data_t *bias1,
    const data_t *weights2, const data_t *bias2,
    const data_t *FC1_W,    const data_t *FC1_B,
    const data_t *FC2_W,    const data_t *FC2_B,
    flag_t *flag_out,
    int ctrl)
{
#pragma HLS INTERFACE m_axi port=img_in     bundle=IMGmem   depth=H*W*C0
#pragma HLS INTERFACE m_axi port=weights1   bundle=W1mem    depth=M1*C0*K*K
#pragma HLS INTERFACE m_axi port=bias1      bundle=B1mem    depth=M1
#pragma HLS INTERFACE m_axi port=weights2   bundle=W2mem    depth=M2*M1*K*K
#pragma HLS INTERFACE m_axi port=bias2      bundle=B2mem    depth=M2
#pragma HLS INTERFACE m_axi port=FC1_W      bundle=W3mem    depth=N2*(M2*H4*W4)
#pragma HLS INTERFACE m_axi port=FC1_B      bundle=B3mem    depth=N2
#pragma HLS INTERFACE m_axi port=FC2_W      bundle=W4mem    depth=N2
#pragma HLS INTERFACE m_axi port=FC2_B      bundle=B4mem    depth=1
#pragma HLS INTERFACE m_axi port=flag_out   bundle=Foutmem  depth=1

#pragma HLS INTERFACE s_axilite port=ctrl   bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

  if (ctrl == 1) {
    load_weights(weights1, bias1,
                 weights2, bias2,
                 FC1_W,    FC1_B,
                 FC2_W,    FC2_B);
  } else {
    compute_cnn(img_in, flag_out);
  }
}
} // extern "C"