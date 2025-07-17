#include <iostream>
#include <cmath>
#include <hls_stream.h>
#include <ap_fixed.h>
#include "conv_pool.cpp"

// must match your conv.cpp settings:
#define IMG_W   224
#define IMG_H   224
#define OUT_CH  8
#define K       3
#define C_IN    3
#define ENG_PAR 4

typedef ap_uint<48>         pixel48_t;
typedef ap_fixed<16,4>      pix_t;
typedef hls::stream<pixel48_t> pix_in_stream_t;
typedef hls::stream<pix_t>     fmap_out_stream_t;

// ------------------------------------------------------------------
// Prototype of your HLS top-level (from conv.cpp):
// ------------------------------------------------------------------
extern "C" void cnn_accel(
    pix_in_stream_t   &pix_in,
    fmap_out_stream_t &fmap_out0,
    fmap_out_stream_t &fmap_out1,
    const pix_t        weights[OUT_CH][C_IN][K][K],
    const pix_t        bias   [OUT_CH]);

int main() {
    // Streams
    pix_in_stream_t   pix_in;
    fmap_out_stream_t fmap_out0;
    fmap_out_stream_t fmap_out1;

    // --- 1) Initialize weights & biases ---
    static pix_t weights[OUT_CH][C_IN][K][K];
    static pix_t bias   [OUT_CH];
    for (int oc = 0; oc < OUT_CH; ++oc) {
        bias[oc] = (pix_t)0.0;
        for (int ic = 0; ic < C_IN; ++ic)
        for (int i  = 0; i < K;    ++i)
        for (int j  = 0; j < K;    ++j) {
            weights[oc][ic][i][j] = (pix_t)1.0;
        }
    }

    // --- 2) Push a test image into pix_in ---
    // constant 0.1,0.2,0.3 pattern, fits well under 7.875 when summed
    pixel48_t pix_val;
    pix_t vr = (pix_t)0.1, vg = (pix_t)0.2, vb = (pix_t)0.3;
    for (int r = 0; r < IMG_H; ++r) {
        for (int c = 0; c < IMG_W; ++c) {
            pix_val.range(15,  0) = vr;
            pix_val.range(31, 16) = vg;
            pix_val.range(47, 32) = vb;
            pix_in.write(pix_val);
        }
    }

    // --- 3) Run your accelerator ---
    cnn_accel(pix_in, fmap_out0, fmap_out1, weights, bias);

    // --- 4) Read & print/check the first few outputs ---
    const int NPRINT = 4;
    double expected = 9.0 * (0.1 + 0.2 + 0.3); // = 5.4

    std::cout << "=== First " << NPRINT << " results from fmap_out0 & fmap_out1 ===\n";
    for (int i = 0; i < NPRINT; ++i) {
        if (!fmap_out0.empty()) {
            double out0 = (double)fmap_out0.read();
            std::cout << "fmap0[" << i << "]=" << out0
                      << ((std::fabs(out0 - expected) < 1e-3) ? "  PASS\n" : "  FAIL\n");
        }
        if (!fmap_out1.empty()) {
            double out1 = (double)fmap_out1.read();
            std::cout << "fmap1[" << i << "]=" << out1
                      << ((std::fabs(out1 - expected) < 1e-3) ? "  PASS\n" : "  FAIL\n");
        }
    }

    return 0;
}
