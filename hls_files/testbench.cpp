// conv1_tb.cpp
#include <hls_stream.h>
#include "ap_int.h"
#include <cstdlib>
#include <iostream>

// Helper: pack an ap_fixed<16,4> into its 16-bit unsigned representation
static uint16_t pack_fixed16(pix_t v) {
    union { pix_t f; uint16_t u; } conv;
    conv.f = v;
    return conv.u;
}

int main() {
    // --- 1) Instantiate streams & weight/bias arrays
    pix_in_stream_t   pix_in("pix_in");
    fmap_out_stream_t fmap0("fmap0"), fmap1("fmap1");

    static pix_t weights[OUT_CH][C_IN][K][K];
    static pix_t bias   [OUT_CH];

    // Initialize all weights=1, bias=0
    for(int oc=0; oc<OUT_CH; ++oc) {
        bias[oc] = (pix_t)0;
        for(int ic=0; ic<C_IN; ++ic)
        for(int i=0; i<K; ++i)
        for(int j=0; j<K; ++j)
            weights[oc][ic][i][j] = (pix_t)1;
    }

    // --- 2) Stream in a constant but small RGB pattern
    pix_t r_val = (pix_t)0.1;
    pix_t g_val = (pix_t)0.2;
    pix_t b_val = (pix_t)0.3;
    uint16_t r_raw = pack_fixed16(r_val);
    uint16_t g_raw = pack_fixed16(g_val);
    uint16_t b_raw = pack_fixed16(b_val);

    for(int r=0; r<IMG_H; ++r) {
        for(int c=0; c<IMG_W; ++c) {
            pixel48_t pix =
                ((pixel48_t)b_raw << 32) |
                ((pixel48_t)g_raw << 16) |
                ( pixel48_t)r_raw;
            pix_in.write(pix);
        }
    }

    // --- 3) Run the hardware function
    cnn_accel(pix_in, fmap0, fmap1, weights, bias);

    // --- 4) Drain and print outputs
    std::cout << "=== fmap_out0 (channels 0–3) ===\n";
    while (!fmap0.empty()) {
        pix_t v = fmap0.read();
        std::cout << v.to_double() << "\n";
    }

    std::cout << "=== fmap_out1 (channels 4–7) ===\n";
    while (!fmap1.empty()) {
        pix_t v = fmap1.read();
        std::cout << v.to_double() << "\n";
    }

    return 0;
}
