`timescale 1ns / 1ps

// 3×3 window generator for one channel
module window_gen #(
  parameter DW = 8
)(
  input  wire        clk,
  input  wire        rst_n,
  input  wire [DW-1:0] row0, row1, pixel,
  input  wire        valid_in,
  output reg [DW*9-1:0] window_out, // {p00,p01,p02, p10,...,p22}
  output reg        valid_out
);
  // build a 3×3 window from the three line buffers + current pixel
  // (Implementation uses small shift-register taps-omitted for brevity)
endmodule