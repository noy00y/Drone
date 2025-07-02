// cnn_accel_tb.cpp
#include <iostream>
#include <cstdlib>
#include "ap_int.h"

// -----------------------------------------------------------------------------
// Must match cnn_accel.cpp
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

typedef float data_t;
typedef unsigned char flag_t;

// Kernel prototype
extern "C" void cnn_accel(
    const data_t *img_in,
    const data_t *W1, const data_t *B1,
    const data_t *W2, const data_t *B2,
    const data_t *FC1_W, const data_t *FC1_B,
    const data_t *FC2_W, const data_t *FC2_B,
    flag_t *flag_out,
    int ctrl);

int main() {
    // Allocate and initialize all arrays with deterministic test data
    static data_t img_in[H*W*C0];
    static data_t W1[M1*C0*K*K], B1[M1];
    static data_t W2[M2*M1*K*K], B2[M2];
    static data_t FC1_W[N2*(M2*H4*W4)], FC1_B[N2];
    static data_t FC2_W[N2], FC2_B[1];
    static flag_t flag_out[1];

    // Simple pattern fill (e.g. all ones)
    for (int i = 0; i < H*W*C0;      i++) img_in[i]    = 1.0f;
    for (int i = 0; i < M1*C0*K*K;   i++) W1[i]       = 0.1f;
    for (int i = 0; i < M1;          i++) B1[i]       = 0.0f;
    for (int i = 0; i < M2*M1*K*K;   i++) W2[i]       = 0.1f;
    for (int i = 0; i < M2;          i++) B2[i]       = 0.0f;
    for (int i = 0; i < N2*(M2*H4*W4); i++) FC1_W[i]  = 0.01f;
    for (int i = 0; i < N2;          i++) FC1_B[i]    = 0.0f;
    for (int i = 0; i < N2;          i++) FC2_W[i]    = 0.01f;
    FC2_B[0] = 0.0f;

    // Call HLS kernel
    cnn_accel(img_in, W1, B1, W2, B2, FC1_W, FC1_B, FC2_W, FC2_B, flag_out, 0);

    // Print result
    std::cout << "Detection flag = " << int(flag_out[0]) << std::endl;
    return 0;
}
