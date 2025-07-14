#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_math.h"
#include "hls_stream.h"

// Network Params:
#define H 240
#define W 320
#define M0 3 // input channels
#define K 3 // kernel dimensions
#define M1 8 // output channels in conv1
#define M2 16 // output channels in conv2
#define H1 (H - K + 1)
#define W1 (W - K + 1)
#define H2 (H1 / 2)
#define W2 (W1 / 2)
#define H3 (H2 - K + 1)
#define W3 (W2 - K + 1)
#define H4 (H3 / 2)
#define W4 (W3 / 2)
#define N2 32 // flat vector

typedef ap_fixed<16, 4> data_t;
typedef unsigned char flag_t;

