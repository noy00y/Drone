
#include <common.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>
#include <iostream>

// Compile-time knobs
#define IMG_W 224     // full input width
#define IMG_H 224     // full input height
#define OUT_CH 8      // output feature maps
#define K 3           // kernel size
#define C_IN 3        // input channels
#define ENG_PAR 4     // conv engines running in parallel
#define PIX_PER_CLK 1 // pixel input per clock (keep =1 here)

// Fixed-point & stream typedefs
typedef ap_uint<48> pixel48_t;  // packed RGB
typedef ap_fixed<16, 4> pix16_t;  // R,G,B   & weights
typedef hls::stream<pixel48_t> pix48_in_strm_t; // input strm
typedef hls::stream<pix16_t> pix16_out_strm_t; // output strms 

// 2x2 window container
struct win_t {
  pix16_t pix[K][K];
};

// Main Function
extern "C" {
void cnn_kernel(
  pix48_in_strm_t &pix_in,      //  RGB pixel stream
  pix16_out_strm_t C_OUT[OUT_CH] // Output Feature Maps:
  const pix16_t weights[OUT_CH][C_IN][K][K], // 3 input channels x 8 output channels x (3x3) kernel
  const pix16_t bias[OUT_CH]) // 8 biases
{
// Read weights and biases in parallel
#pragma HLS ARRAY_PARTITION variable=weights complete dim=0
#pragma HLS ARRAY_PARTITION variable=bias    complete


// Pipeline
#pragma HLS DATAFLOW
// 1 - Split 48 bit input pix into R/G/B
fmap_out_stream_t red_strm, green_strm, blue_strm;
PixelUnpack(red_strm, green_strm, blue_strm);

// 2 - Build Windows
WindowGen(...);
ConvEngines(...);

}
}