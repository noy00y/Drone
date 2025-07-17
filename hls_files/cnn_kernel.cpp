/********************************************************************
 * conv1.hpp  –  3-channel 3×3 convolution, 8 output channels
 *              First engine for your CNN.  Vitis HLS template.
 *******************************************************************/
#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>

#ifndef CONV1_HPP
#define CONV1_HPP

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

//------------------------------------------------------------
// 3×3×3 window container
//------------------------------------------------------------
struct window3d_t {
    pix_t dat[C_IN][K][K];
};

//------------------------------------------------------------
// Four-filter conv engine  (MULT → ACC → BIAS → RELU)
//------------------------------------------------------------
static void conv4_engine(
        const window3d_t               &win,
        const pix_t                    w[ENG_PAR][C_IN][K][K],
        const pix_t                    b[ENG_PAR],
        pix_t                          out[ENG_PAR])
{
    #pragma HLS INLINE
    acc_t partial[ENG_PAR] = {0};
    #pragma HLS ARRAY_PARTITION variable=w complete dim=1
    #pragma HLS ARRAY_PARTITION variable=partial complete dim=1
    #pragma HLS ALLOCATION instances=mul limit=108 operation

// MULT + ACC tree (fully unrolled inside each engine)
    Engine_Loop:
    for (int f=0; f<ENG_PAR; ++f) {
    #pragma HLS UNROLL
        acc_t sum = 0;
        for (int c=0; c<C_IN; ++c)
        for (int i=0; i<K;    ++i)
        for (int j=0; j<K;    ++j) {
#pragma HLS UNROLL
            data_t prod = win.dat[c][i][j] * w[f][c][i][j];
            #pragma HLS BIND_OP variable=prod op=mul impl=dsp latency=-1 // binding MAC ops to DSP
            sum += prod;
        }
        partial[f] = sum;
    }

// Bias + ReLU + Register (stage 3 & 4)
    for (int f=0; f<ENG_PAR; ++f) {
#pragma HLS UNROLL
        acc_t tmp  = partial[f] + b[f];
        out[f]     = (tmp < 0) ? 0 : (pix_t)tmp;  // ReLU
    }
}

//------------------------------------------------------------
// Top-level kernel  (pixel stream in → fmap stream out)
//------------------------------------------------------------
void conv1(
        pix_in_stream_t    &pix_in,               //  RGB pixel stream
        fmap_out_stream_t  &fmap_out0,            // 8-channel output (0…3)
        fmap_out_stream_t  &fmap_out1,            //                    (4…7)
        const pix_t        weights[OUT_CH][C_IN][K][K],
        const pix_t        bias   [OUT_CH])
{
#pragma HLS INTERFACE axis       port=pix_in
#pragma HLS INTERFACE axis       port=fmap_out0
#pragma HLS INTERFACE axis       port=fmap_out1
#pragma HLS INTERFACE s_axilite  port=weights  bundle=CTRL offset=slave
#pragma HLS INTERFACE s_axilite  port=bias     bundle=CTRL offset=slave
#pragma HLS INTERFACE s_axilite  port=return   bundle=CTRL
#pragma HLS DATAFLOW

//--------------------------------------------------------
// Local line-buffers  (two rows per input channel)
//--------------------------------------------------------
    static pix_t LB0[C_IN][IMG_W];
    static pix_t LB1[C_IN][IMG_W];
#pragma HLS bind_storage variable=LB0 type=RAM_2P impl=BRAM latency=-1
#pragma HLS bind_storage variable=LB1 type=RAM_2P impl=BRAM latency=-1
// #pragma HLS ARRAY_PARTITION variable=LB0 complete dim=1
// #pragma HLS ARRAY_PARTITION variable=LB1 complete dim=1

//--------------------------------------------------------
// Shift registers for current column (A,B,C chains)
// Each chain = 3 rows deep
//--------------------------------------------------------
    pix_t A[C_IN][K];   // col-2
    pix_t B[C_IN][K];   // col-1
    pix_t C[C_IN][K];   // col
#pragma HLS ARRAY_PARTITION variable=A complete dim=0
#pragma HLS ARRAY_PARTITION variable=B complete dim=0
#pragma HLS ARRAY_PARTITION variable=C complete dim=0

//--------------------------------------------------------
// Main raster-scan loops  (II = 1)
//--------------------------------------------------------
    RowLoop:
    for (int r=0; r<IMG_H; ++r) {
        ColLoop:
        for (int c=0; c<IMG_W; ++c) {
#pragma HLS PIPELINE II=1

// ---------------------------------------------------
// 1.  Unpack incoming RGB pixel ---------------------
// ---------------------------------------------------
            pixel48_t p_in = pix_in.read();
            pix_t pix_r    = (pix_t)p_in.range(15,  0);
            pix_t pix_g    = (pix_t)p_in.range(31, 16);
            pix_t pix_b    = (pix_t)p_in.range(47, 32);

            //------------------------------------------------
            // 2. Update line-buffers  (write new row, read old)
            //------------------------------------------------
            pix_t lb_out[C_IN];
#pragma HLS ARRAY_PARTITION complete variable=lb_out
            for (int ch=0; ch<C_IN; ++ch) {
#pragma HLS UNROLL
                // Channel selector
                pix_t new_pix =
                        (ch==0) ? pix_r :
                        (ch==1) ? pix_g :
                                  pix_b;

                // read current entry (LB0 -> lb_out)
                pix_t tmp0    = LB0[ch][c];
                pix_t tmp1    = LB1[ch][c];

                LB1[ch][c] = tmp0;   // shift down
                LB0[ch][c] = new_pix;

                lb_out[ch]  = tmp1;  // P(r-2,c)
            }

            //------------------------------------------------
            // 3. Shift-register chains  (A ← B ← C ← new col)
            //------------------------------------------------
            for (int ch=0; ch<C_IN; ++ch) {
#pragma HLS UNROLL
                // move chains left
                for (int k=K-1; k>0; --k) {
#pragma HLS UNROLL
                    A[ch][k] = A[ch][k-1];
                    B[ch][k] = B[ch][k-1];
                    C[ch][k] = C[ch][k-1];
                }
                // insert new head
                A[ch][0] = B[ch][0];
                B[ch][0] = C[ch][0];
                C[ch][0] = pix_t();  // filled below

                // fill current column chain from new pixel + LB
                C[ch][0] = (ch==0) ? pix_r :
                           (ch==1) ? pix_g :
                                     pix_b;
                C[ch][1] = LB0[ch][c]; // P(r-1,c)
                C[ch][2] = LB1[ch][c]; // P(r-2,c)
            }

            //------------------------------------------------
            // 4. Once r≥2 & c≥2 we have a valid 3×3 window
            //------------------------------------------------
            if (r >= 2 && c >= 2) {
                // Build window object
                window3d_t win;
#pragma HLS ARRAY_PARTITION variable=win.dat complete dim=0
                for (int ch=0; ch<C_IN; ++ch)
                for (int i=0;  i<K;   ++i) {
#pragma HLS UNROLL
                    win.dat[ch][2][i] = A[ch][i];
                    win.dat[ch][1][i] = B[ch][i];
                    win.dat[ch][0][i] = C[ch][i];
                }

                //------------------------------------------------
                // 5.  Time-multiplex weights: group 0 vs group 1
                //------------------------------------------------
                static bool toggle = false;
                toggle ^= 1;

                pix_t out_grp[ENG_PAR];
#pragma HLS ARRAY_PARTITION complete variable=out_grp

                if (!toggle) {
                    conv4_engine(win,
                                 (const pix_t (*)[C_IN][K][K])&(weights[0]),
                                 &(bias[0]),
                                 out_grp);
                    for (int f=0; f<ENG_PAR; ++f) {
#pragma HLS UNROLL
                        fmap_out0.write(out_grp[f]);   // channels 0-3
                    }
                } else {
                    conv4_engine(win,
                                 (const pix_t (*)[C_IN][K][K])&(weights[ENG_PAR]),
                                 &(bias[ENG_PAR]),
                                 out_grp);
                    for (int f=0; f<ENG_PAR; ++f) {
#pragma HLS UNROLL
                        fmap_out1.write(out_grp[f]);   // channels 4-7
                    }
                }
            } // valid window
        } // col
    } // row
}

#endif
