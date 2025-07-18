
#include <common.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>

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

//------------------------------------------------------------
// 3×3×3 window container
//------------------------------------------------------------
struct window3d_t
{
  pix_t dat[C_IN][K][K];
};


void ReadFromMem()
{

}


void WriteToMem()
{
    
}

void Window2D()
{

}

void Filter2D()
{

}


extern "C" {

void cnn_kernel(
    pix_in_stream_t &pix_in,      //  RGB pixel stream
    fmap_out_stream_t &fmap_out0, // 8-channel output (0…3)
    fmap_out_stream_t &fmap_out1, //                    (4…7)
    const pix_t weights[OUT_CH][C_IN][K][K],
    const pix_t bias[OUT_CH])
{
            
#pragma HLS DATAFLOW
	// Read image data from global memory over AXI4 MM, and stream pixels out
    ReadFromMem();

    // Read incoming pixels and form valid HxV windows
    Window2D();

	// Process incoming stream of pixels, and stream pixels out
	Filter2D();

	// Write incoming stream of pixels and write them to global memory over AXI4 MM
	WriteToMem();
}
}