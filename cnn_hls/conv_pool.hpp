#pragma once
#include <ap_int.h>

#define IN_H 240
#define IN_W 320
#define C1_OUT 8
#define C2_OUT 16
#define K     3
#define POOL  2

typedef ap_uint<8>  uint8;
typedef ap_uint<16> uint16;

// Top-level interface
void cnn_accel(
    volatile uint8  *in_img,        // DDR base address for input
    volatile uint8  *w1,            // DDR base for conv1 weights
    volatile uint8  *b1,            // DDR base for conv1 biases
    volatile uint8  *w2, volatile uint8 *b2,
    volatile uint16 *fc_w, volatile uint16 *fc_b,
    volatile uint8  *out_flag);     // 1 byte result
