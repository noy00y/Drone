// conv1_tb.cpp
#include <hls_stream.h>
#include "ap_int.h"
#include <cstdlib>
#include <iostream>
#include "conv_pool.cpp"
#include <ap_fixed.h>
#include <iostream>
#include <cmath>
#include <cassert>


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
// tb_conv1.cpp


int main() {
    // Streams
    pix_in_stream_t    pix_in;
    fmap_out_stream_t  fmap_out0;
    fmap_out_stream_t  fmap_out1;

    // Weight & bias arrays
    static pix_t weights[OUT_CH][C_IN][K][K];
    static pix_t bias   [OUT_CH];

    // 1) Initialize weights & biases
    for (int f = 0; f < OUT_CH; ++f) {
        for (int c = 0; c < C_IN; ++c)
        for (int i = 0; i < K;    ++i)
        for (int j = 0; j < K;    ++j) {
            if (f < ENG_PAR)        weights[f][c][i][j] = (pix_t)1.0;  // make group0 = 1
            else                    weights[f][c][i][j] = (pix_t)0.0;  // group1 = 0
        }
        bias[f] = (pix_t)0.0;
    }

    // 2) Fill input stream with a 5×5 ramp:
    //    pix_r = row+1, pix_g=1, pix_b=2
    for (int r = 0; r < IMG_H; ++r) {
      for (int c = 0; c < IMG_W; ++c) {
        pix_t pr = (pix_t)(r + 1);
        pix_t pg = (pix_t)1;
        pix_t pb = (pix_t)2;
        ap_uint<48> packed =  ( (ap_uint<48>)pb << 32 )
                            | ( (ap_uint<48>)pg << 16 )
                            | ( (ap_uint<48>)pr       );
        pix_in.write(packed);
      }
    }

    // 3) Run the kernel
    cnn_accel(pix_in, fmap_out0, fmap_out1, weights, bias);

    // 4) Check outputs
    bool all_ok = true;
    bool toggle_tb = false;   // must mirror the static toggle in your RTL
    for (int r = 2; r < IMG_H; ++r) {
      for (int c = 2; c < IMG_W; ++c) {
        toggle_tb = !toggle_tb;

        // compute golden:  sum_r = 9*r ; sum_g = 9*1 ; sum_b = 9*2
        // so golden = 9*r + 9 + 18 = 9*r + 27
        pix_t golden = (pix_t)(9 * r + 27);

        if (!toggle_tb) {
          // group0 outputs come on fmap_out0
          for (int f = 0; f < ENG_PAR; ++f) {
            pix_t got = fmap_out0.read();
            if (got != golden) {
              std::cout << "ERROR @ window("<<r<<","<<c<<") filter "<<f
                        <<": got "<< got.to_string() 
                        <<" expected "<< golden.to_string() << "\n";
              all_ok = false;
            }
          }
        } else {
          // group1 outputs on fmap_out1 should all be zero
          for (int f = 0; f < ENG_PAR; ++f) {
            pix_t got = fmap_out1.read();
            if (got != (pix_t)0) {
              std::cout << "ERROR @ window("<<r<<","<<c<<") filter "<<(f+ENG_PAR)
                        <<": got "<< got.to_string() <<" expected 0\n";
              all_ok = false;
            }
          }
        }
      }
    }

    if (all_ok) {
      std::cout << "=== TEST PASSED ===\n";
      return 0;
    } else {
      std::cout << "=== TEST FAILED ===\n";
      return 1;
    }
}
