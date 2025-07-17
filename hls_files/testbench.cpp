// conv1_tb.cpp
#include <hls_stream.h>
#include "ap_int.h"
#include <cstdlib>
#include <iostream>
#include "conv_pool.cpp"

//------------------------------------------------------------
// Compile-time knobs (adapt to your design)
//------------------------------------------------------------
#define IMG_W 224     // full input width
#define IMG_H 224     // full input height
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

// tb_cnn_accel.cpp
#include <iostream>
#include "conv.cpp"   // pull in your cnn_accel and all typedefs/macros

int main() {
    // Streams to drive and capture your kernel
    pix_in_stream_t  pix_in;
    fmap_out_stream_t fmap_out0, fmap_out1;

    // 1) Initialize weights and bias
    pix_t weights[OUT_CH][C_IN][K][K];
    pix_t bias   [OUT_CH];
    for (int f = 0; f < OUT_CH; ++f) {
        bias[f] = (pix_t)0;
        for (int c = 0; c < C_IN; ++c)
        for (int i = 0;   i < K;    ++i)
        for (int j = 0;   j < K;    ++j) {
            weights[f][c][i][j] = (pix_t)1;
        }
    }

    // 2) Stream in an image of all-ones pixels (R=1,G=1,B=1)
    for (int r = 0; r < IMG_H; ++r) {
        for (int c = 0; c < IMG_W; ++c) {
            pixel48_t pix = 0;
            pix.range(15,  0) = 1;  // R
            pix.range(31, 16) = 1;  // G
            pix.range(47, 32) = 1;  // B
            pix_in.write(pix);
        }
    }

    // 3) Invoke the HLS kernel
    cnn_accel(pix_in, fmap_out0, fmap_out1, weights, bias);

    // 4) Compute expected output counts
    const int total_windows   = (IMG_H - 2) * (IMG_W - 2);
    // because you alternate group0/group1 each window:
    const int exp_windows_per_group = total_windows / 2;
    const int exp_values_per_group  = exp_windows_per_group * ENG_PAR;

    // 5) Drain and verify fmap_out0
    int   count0 = 0, count1 = 0, errors = 0;
    while (!fmap_out0.empty()) {
        pix_t v = fmap_out0.read();
        if ((float)v != 27.0f) {
            std::cerr << "ERROR fmap_out0[" << count0
                      << "] = " << (float)v << " (expected 27)\n";
            ++errors;
        }
        ++count0;
    }
    // 6) Drain and verify fmap_out1
    while (!fmap_out1.empty()) {
        pix_t v = fmap_out1.read();
        if ((float)v != 27.0f) {
            std::cerr << "ERROR fmap_out1[" << count1
                      << "] = " << (float)v << " (expected 27)\n";
            ++errors;
        }
        ++count1;
    }

    // 7) Check you got exactly the number of values you expected
    if (count0 != exp_values_per_group) {
        std::cerr << "ERROR: fmap_out0 count = " << count0
                  << ", expected " << exp_values_per_group << "\n";
        ++errors;
    }
    if (count1 != exp_values_per_group) {
        std::cerr << "ERROR: fmap_out1 count = " << count1
                  << ", expected " << exp_values_per_group << "\n";
        ++errors;
    }

    // 8) Final verdict
    if (errors == 0) {
        std::cout << "=== TEST PASSED: "
                  << (count0 + count1) << " outputs all == 27 ===\n";
        return 0;
    } else {
        std::cerr << "=== TEST FAILED with " << errors << " errors ===\n";
        return 1;
    }
}
