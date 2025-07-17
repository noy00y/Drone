// conv1_tb.cpp
#include <iostream>
#include <vector>
#include "conv_pool.cpp"

#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>

//------------------------------------------------------------
// Compile-time knobs (adapt to your design)
//------------------------------------------------------------
#define IMG_W        224        // full input width
#define IMG_H        224        // full input height
#define OUT_CH       8          // output feature maps
#define K            3          // kernel size
#define C_IN         3          // input channels
#define ENG_PAR      4          // conv engines running in parallel
#define PIX_PER_CLK  1          // pixel input per clock (keep =1 here)

//------------------------------------------------------------
// Fixed-point & stream typedefs
//------------------------------------------------------------
typedef ap_uint<48>      pixel48_t;                 // packed RGB
typedef ap_fixed<16,4>   pix_t;                     // R,G,B   & weights
typedef ap_fixed<16,4>   data_t;                    // var place holder
typedef ap_fixed<32,6>   acc_t;                     // accumulator
typedef hls::stream<pixel48_t>  pix_in_stream_t;
typedef hls::stream<pix_t>      fmap_out_stream_t;

//------------------------------------------------------------------------------
// A small helper to pack three pix_t into a 48-bit word
//------------------------------------------------------------------------------
static inline pixel48_t pack_pixel(int row, int col) {
    // simple ramp in each channel
    pix_t v = (pix_t)(row * IMG_W + col);
    ap_uint<48> tmp = 0;
    tmp.range(15,  0) = *(ap_uint<16>*)(&v);
    tmp.range(31, 16) = *(ap_uint<16>*)(&v);
    tmp.range(47, 32) = *(ap_uint<16>*)(&v);
    return tmp;
}

int main() {
    // 1) Streams
    pix_in_stream_t   pix_in;
    fmap_out_stream_t fmap_out0;
    fmap_out_stream_t fmap_out1;

    // 2) Weights & bias
    static pix_t weights[OUT_CH][C_IN][K][K];
    static pix_t bias   [OUT_CH];
    // init to all-ones / zero-bias
    for (int f = 0; f < OUT_CH; ++f) {
        bias[f] = 0;
        for (int c = 0; c < C_IN; ++c)
        for (int i = 0; i < K;    ++i)
        for (int j = 0; j < K;    ++j)
            weights[f][c][i][j] = 1;
    }

    // 3) Push input image (ramp pattern)
    for (int r = 0; r < IMG_H; ++r) {
      for (int c = 0; c < IMG_W; ++c) {
        pix_in.write(pack_pixel(r, c));
      }
    }

    // 4) Call the HLS kernel
    cnn_accel(pix_in, fmap_out0, fmap_out1, weights, bias);

    // 5) Drain outputs
    std::vector<pix_t> out0, out1;
    while (!fmap_out0.empty()) {
        out0.push_back(fmap_out0.read());
    }
    while (!fmap_out1.empty()) {
        out1.push_back(fmap_out1.read());
    }

    // 6) Report
    std::cout << "  fmap_out0 count: " << out0.size() << "\n";
    std::cout << "  fmap_out1 count: " << out1.size() << "\n\n";

    // Print first 10 from each
    for (size_t i = 0; i < out0.size() && i < 10; ++i) {
        std::cout << "out0[" << i << "] = " << out0[i] << "\n";
    }
    for (size_t i = 0; i < out1.size() && i < 10; ++i) {
        std::cout << "out1[" << i << "] = " << out1[i] << "\n";
    }

    return 0;
}
