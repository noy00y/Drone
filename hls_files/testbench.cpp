// conv1_tb.cpp
#include <hls_stream.h>
#include "ap_int.h"
#include <cstdlib>
#include <iostream>
#include "conv_pool.cpp"
#include <ap_fixed.h>
#include <iostream>
#include <cmath>

//------------------------------------------------------------
// Compile-time knobs (adapt to your design)
//------------------------------------------------------------
#define IMG_W    5
#define IMG_H    5
#define OUT_CH 8      // output feature maps
#define K 3           // kernel size
#define C_IN 3        // input channels
#define ENG_PAR 4     // conv engines running in parallel
#define PIX_PER_CLK 1 // pixel input per clock (keep =1 here)

//------------------------------------------------------------
// Fixed-point & stream typedefs
//------------------------------------------------------------
typedef ap_uint<48> pixel48_t;  // packed RGB
typedef ap_fixed<16, 4> pix_t;  // R,G,B   & weights
typedef ap_fixed<16, 4> data_t; // var place holder
typedef ap_fixed<32, 6> acc_t;  // accumulator
typedef hls::stream<pixel48_t> pix_in_stream_t;
typedef hls::stream<pix_t> fmap_out_stream_t;


typedef ap_uint<48>       pixel48_t;    // packed R/G/B
typedef ap_fixed<16,4>    pix_t;        // pixel & weight type
typedef hls::stream<pixel48_t> pix_in_t;
typedef hls::stream<pix_t>     fmap_out_t;

// Prototype of your HLS block (must match exactly)
extern "C" void cnn_accel(
    pix_in_t   &pix_in,
    fmap_out_t &fmap_out0,
    fmap_out_t &fmap_out1,
    const pix_t weights[OUT_CH][C_IN][K][K],
    const pix_t bias   [OUT_CH]
);

int main() {
    // --- Streams
    pix_in_t   pix_in;
    fmap_out_t fmap_out0;
    fmap_out_t fmap_out1;

    // --- Weight & bias arrays
    pix_t weights[OUT_CH][C_IN][K][K];
    pix_t bias   [OUT_CH];

    // Initialize weights=1, bias=0
    for (int oc = 0; oc < OUT_CH; ++oc) {
        bias[oc] = 0;
        for (int ic = 0; ic < C_IN; ++ic)
        for (int i  = 0; i  < K;    ++i)
        for (int j  = 0; j  < K;    ++j) {
            weights[oc][ic][i][j] = (pix_t)1;
        }
    }

    // --- Fill input stream with constant 0.125 pixels
    //    3 channels all the same = 0.125
    pix_t  pval = (pix_t)0.125;
    ap_uint<16> ru = *reinterpret_cast<ap_uint<16>*>(&pval);
    ap_uint<16> gu = ru;
    ap_uint<16> bu = ru;
    for (int r = 0; r < IMG_H; ++r) {
        for (int c = 0; c < IMG_W; ++c) {
            pixel48_t packed = 
                ((pixel48_t)bu << 32) |
                ((pixel48_t)gu << 16) |
                (pixel48_t)ru;
            pix_in.write(packed);
        }
    }

    // --- Invoke the HLS block
    cnn_accel(pix_in, fmap_out0, fmap_out1, weights, bias);

    // --- Check outputs
    // Number of valid windows = (IMG_H-2)*(IMG_W-2)
    int windows = (IMG_H - 2) * (IMG_W - 2);
    // Each window produces ENG_PAR outputs on *one* of the two streams
    int expected_vals = windows * ENG_PAR;
    int read_vals = 0;

    const double expected = double(27) * 0.125;  // 27 pixels * 0.125

    std::cout << "Stream0 values:\n";
    while (!fmap_out0.empty()) {
        pix_t v = fmap_out0.read();
        double dv = double(v);
        std::cout << dv << "  ";
        if (std::fabs(dv - expected) > 1e-6) {
            std::cerr << "\nERROR: got " << dv 
                      << " expected " << expected << "\n";
            return 1;
        }
        ++read_vals;
    }

    std::cout << "\nStream1 values:\n";
    while (!fmap_out1.empty()) {
        pix_t v = fmap_out1.read();
        double dv = double(v);
        std::cout << dv << "  ";
        if (std::fabs(dv - expected) > 1e-6) {
            std::cerr << "\nERROR: got " << dv 
                      << " expected " << expected << "\n";
            return 1;
        }
        ++read_vals;
    }

    std::cout << "\n\nTotal outputs read: " << read_vals 
              << "  (expected " << expected_vals << ")\n";

    if (read_vals != expected_vals) {
        std::cerr << "ERROR: unexpected output count\n";
        return 1;
    }

    std::cout << ">>> TEST PASSED!  All outputs = " 
              << expected << "\n";
    return 0;
}
