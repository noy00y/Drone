#include "conv_pool.hpp"
#include <iostream>
#include <fstream>
int main() {
    // load img.bin (320×240), w1.bin, b1.bin, etc.
    uint8  *img = new uint8[IN_H*IN_W];
    // ... load from file
    uint8  *w1  = new uint8[C1_OUT*K*K];
    // ...
    uint8  flag = 0;
    cnn_accel(img, w1, b1, w2, b2, fc_w, fc_b, &flag);
    std::cout << "Detection flag: " << int(flag) << "\n";
    return 0;
}
