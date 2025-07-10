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
// Declarations for new split functions
// -----------------------------------------------------------------------------
extern "C" {
void load_weights(
    const data_t *weights1, const data_t *bias1,
    const data_t *weights2, const data_t *bias2,
    const data_t *FC1_W,    const data_t *FC1_B,
    const data_t *FC2_W,    const data_t *FC2_B);
void compute_cnn(
    const data_t *img_in,
    flag_t *flag_out);
}

// -----------------------------------------------------------------------------
// Stage 0: Stream input frame into an HLS stream (pixel by pixel)
// -----------------------------------------------------------------------------
void stream_img(
    hls::stream<data_t> &img_strm,
    const data_t *img_in)
{
#pragma HLS INLINE off
  for (int idx = 0; idx < H*W*C0; idx++) {
  #pragma HLS PIPELINE II=1
    img_strm.write(img_in[idx]);
  }
}

// -----------------------------------------------------------------------------
// Stage 1: Conv1 + ReLU (3×3 kernel, M1 outputs), using a 2-line sliding buffer
// -----------------------------------------------------------------------------
void conv1_stream(
    hls::stream<data_t> &img_strm,
    const data_t w1_local[M1*C0*K*K],
    const data_t b1_local[M1],
    hls::stream<data_t> &feat1_strm)
{
#pragma HLS INLINE off
  static data_t linebuf[K-1][W][C0];
  data_t window[K][K][C0];

  ROW_LOOP: for (int i = 0; i < H; i++) {
    COL_LOOP: for (int j = 0; j < W; j++) {
      PIX_CH: for (int c = 0; c < C0; c++) {
      #pragma HLS PIPELINE II=4
        for (int m = 0; m < K-2; m++)
          linebuf[m][j][c] = linebuf[m+1][j][c];

        data_t px = img_strm.read();
        linebuf[K-2][j][c] = px;

        for (int m = 0; m < K; m++) {
          for (int n = 0; n < K; n++) {
            if (i + m < K-1 || j + n < K-1) {
              window[m][n][c] = 0;
            } else {
              window[m][n][c] = (m < K-1)
                ? linebuf[m][j + n - (K-1)]
                : px;
            }
          }
        }
      }

      if (i >= K-1 && j >= K-1) {
        for (int m = 0; m < M1; m++) {
        #pragma HLS PIPELINE II=4
          data_t acc = b1_local[m];
          CONV1_MAC: for (int p = 0; p < K; p++)
           for (int q = 0; q < K; q++)
            for (int c = 0; c < C0; c++) {
              int widx = ((m*C0 + c)*K + p)*K + q;
              acc += window[p][q][c] * w1_local[widx];
            }
          feat1_strm.write(acc > 0 ? acc : (data_t)0);
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
#pragma HLS INLINE off
  static data_t buf[2][2][M1];
  for (int r = 0; r < H1; r++) {
    for (int c = 0; c < W1; c++) {
      for (int m = 0; m < M1; m++) {
      #pragma HLS PIPELINE II=4
        data_t v = feat1_strm.read();
        buf[r%2][c%2][m] = v;
        if ((r%2)==1 && (c%2)==1) {
          data_t m0 = buf[0][0][m], m1 = buf[0][1][m];
          data_t m2 = buf[1][0][m], m3 = buf[1][1][m];
          data_t mx = m0>m1?m0:m1, my = m2>m3?m2:m3;
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
    const data_t w2_local[M2*M1*K*K],
    const data_t b2_local[M2],
    hls::stream<data_t> &feat2_strm)
{
#pragma HLS INLINE off
  static data_t linebuf[K-1][W2][M1];
  data_t window[K][K][M1];

  ROW2: for (int i = 0; i < H2; i++) {
    COL2: for (int j = 0; j < W2; j++) {
      CH2: for (int c = 0; c < M1; c++) {
      #pragma HLS PIPELINE II=4
        for (int m = 0; m < K-2; m++)
          linebuf[m][j][c] = linebuf[m+1][j][c];

        data_t px = feat1_p_strm.read();
        linebuf[K-2][j][c] = px;

        for (int m = 0; m < K; m++)
          for (int n = 0; n < K; n++)
            window[m][n][c] = (i+m < K-1 || j+n < K-1)
              ? (data_t)0
              : ((m < K-1)
                 ? linebuf[m][j + n - (K-1)]
                 : px);
      }

      if (i >= K-1 && j >= K-1) {
        for (int m = 0; m < M2; m++) {
        #pragma HLS PIPELINE II=4
          data_t acc = b2_local[m];
          CONV2_MAC: for (int p = 0; p < K; p++)
           for (int q = 0; q < K; q++)
             for (int c = 0; c < M1; c++) {
               int widx = ((m*M1 + c)*K + p)*K + q;
               acc += window[p][q][c] * w2_local[widx];
             }
          feat2_strm.write(acc > 0 ? acc : (data_t)0);
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
#pragma HLS INLINE off
  static data_t buf[2][2][M2];
  for (int r = 0; r < H3; r++) {
    for (int c = 0; c < W3; c++) {
      for (int m = 0; m < M2; m++) {
      #pragma HLS PIPELINE II=4
        data_t v = feat2_strm.read();
        buf[r%2][c%2][m] = v;
        if ((r%2)==1 && (c%2)==1) {
          data_t m0 = buf[0][0][m], m1 = buf[0][1][m];
          data_t m2 = buf[1][0][m], m3 = buf[1][1][m];
          data_t mx = m0>m1?m0:m1, my = m2>m3?m2:m3;
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
#pragma HLS INLINE off
  cnt = 0;
  const int TOTAL = M2 * H4 * W4;
  for (int i = 0; i < TOTAL; i++) {
  #pragma HLS PIPELINE II=4
    vec1[cnt++] = feat2_p_strm.read();
  }
}

// -----------------------------------------------------------------------------
// Stage 6: FC1 + Tanh
// -----------------------------------------------------------------------------
void fc1(
    const data_t vec1[M2*H4*W4], int cnt,
    const data_t *FC1_W, const data_t *FC1_B,
    data_t vec2[N2])
{
#pragma HLS INLINE off
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
#pragma HLS INLINE off
  data_t acc = FC2_B[0];
  for (int i = 0; i < N2; i++) {
  #pragma HLS PIPELINE II=4
    acc += vec2[i] * FC2_W[i];
  }
  data_t p = (data_t)1.0 / ((data_t)1.0 + hls::exp(-acc));
  *flag_out = (p > (data_t)0.5) ? (flag_t)1 : (flag_t)0;
}

// -----------------------------------------------------------------------------
// Weight loading into BRAM
// -----------------------------------------------------------------------------
void load_weights(
    const data_t *weights1, const data_t *bias1,
    const data_t *weights2, const data_t *bias2,
    const data_t *FC1_W,    const data_t *FC1_B,
    const data_t *FC2_W,    const data_t *FC2_B)
{
#pragma HLS INLINE off
  // Local BRAM buffers
  static data_t w1_local[M1*C0*K*K];
  static data_t b1_local[M1];
  static data_t w2_local[M2*M1*K*K];
  static data_t b2_local[M2];
  static data_t fc1_w_local[N2*(M2*H4*W4)];
  static data_t fc1_b_local[N2];
  static data_t fc2_w_local[N2];
  static data_t fc2_b_local[1];

  // Load weights1 and bias1
  for (int i = 0; i < M1*C0*K*K; i++) {
  #pragma HLS PIPELINE II=1
    w1_local[i] = weights1[i];
  }
  for (int i = 0; i < M1; i++) {
  #pragma HLS PIPELINE II=1
    b1_local[i] = bias1[i];
  }
  // Load weights2 and bias2
  for (int i = 0; i < M2*M1*K*K; i++) {
  #pragma HLS PIPELINE II=1
    w2_local[i] = weights2[i];
  }
  for (int i = 0; i < M2; i++) {
  #pragma HLS PIPELINE II=1
    b2_local[i] = bias2[i];
  }
  // Load FC1
  int fc1_size = N2*(M2*H4*W4);
  for (int i = 0; i < fc1_size; i++) {
  #pragma HLS PIPELINE II=1
    fc1_w_local[i] = FC1_W[i];
  }
  for (int i = 0; i < N2; i++) {
  #pragma HLS PIPELINE II=1
    fc1_b_local[i] = FC1_B[i];
  }
  // Load FC2
  for (int i = 0; i < N2; i++) {
  #pragma HLS PIPELINE II=1
    fc2_w_local[i] = FC2_W[i];
  }
  #pragma HLS PIPELINE II=1
  fc2_b_local[0] = FC2_B[0];
}

// -----------------------------------------------------------------------------
// Compute function: full dataflow CNN
// -----------------------------------------------------------------------------
void compute_cnn(
    const data_t *img_in,
    flag_t *flag_out)
{
  // Streams for dataflow
  hls::stream<data_t> img_strm("img_strm");
  hls::stream<data_t> feat1_strm("feat1_strm");
  hls::stream<data_t> feat1_p_strm("feat1_p_strm");
  hls::stream<data_t> feat2_strm("feat2_strm");
  hls::stream<data_t> feat2_p_strm("feat2_p_strm");

  // Local copies of weights/biases
  extern data_t w1_local[M1*C0*K*K];
  extern data_t b1_local[M1];
  extern data_t w2_local[M2*M1*K*K];
  extern data_t b2_local[M2];
  extern data_t fc1_w_local[N2*(M2*H4*W4)];
  extern data_t fc1_b_local[N2];
  extern data_t fc2_w_local[N2];
  extern data_t fc2_b_local[1];

  // Buffer for flatten
  static data_t vec1_local[M2*H4*W4];
  int cnt;

#pragma HLS DATAFLOW
  stream_img       (img_strm,      img_in);
  conv1_stream     (img_strm,      w1_local,  b1_local,  feat1_strm);
  pool1_stream     (feat1_strm,    feat1_p_strm);
  conv2_stream     (feat1_p_strm,  w2_local,  b2_local,  feat2_strm);
  pool2_stream     (feat2_strm,    feat2_p_strm);
  flatten_stream   (feat2_p_strm,  vec1_local, cnt);
  fc1              (vec1_local,    cnt,       fc1_w_local, fc1_b_local, vec1_local);
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
    // Load weights into on-chip BRAM
    load_weights(weights1, bias1,
                 weights2, bias2,
                 FC1_W,    FC1_B,
                 FC2_W,    FC2_B);
  } else {
    // Run the CNN dataflow pipeline
    compute_cnn(img_in, flag_out);
  }
}
} // extern "C"
