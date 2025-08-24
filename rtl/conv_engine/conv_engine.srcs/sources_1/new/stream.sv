`timescale 1ns / 1ps
// -----------------------------------------------------------------------------
// Module : stream
// Purpose: Stream input pixels and output 3x3x3 output windows (27 pixels)
//
// Author : Ozair Khan
// -----------------------------------------------------------------------------

module stream #(
  // ---------------------------------------------------------------------------
  // Parameter definitions
  // ---------------------------------------------------------------------------
  parameter int K        = 3,   // Kernel height/width (3×3)
  parameter int IC       = 3,   // Number of input channels (RGB)
  parameter int F_PIXEL_W = 24,  // Fully packed pixel (24 bit containing rgb)
  parameter int PIXEL_W  = 8,   // Q8.0  unsigned
  parameter int IMG_H    = 224,
  parameter int IMG_W    = 224
)(
  // ---------------------------------------------------------------------------
  // Port definitions
  // ---------------------------------------------------------------------------
  input  logic                           clk,
  input  logic                           rst_n,      // Active‑low asynchronous reset
  input  logic                           valid_in,   // High for a pixel
  input  logic [F_PIXEL_W-1:0]           pixel_in,

  output logic                           valid_out,  
  output logic                           busy,       // High while module is processing??
);


endmodule