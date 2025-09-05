`timescale 1ns / 1ps
// -----------------------------------------------------------------------------
// Module : bus
// Purpose: bus for transporting weights and biases given current stage
//
// Author : Ozair Khan
// -----------------------------------------------------------------------------

module bus #(
  // ---------------------------------------------------------------------------
  // Parameter definitions
  // ---------------------------------------------------------------------------
  parameter int K         = 3,   // Kernel height/width (3×3)
  parameter int IC        = 3,   // Number of input channels (RGB)
  parameter int F_PIXEL_W = 24,  // Fully packed pixel (24 bit containing rgb)
  parameter int PIXEL_W   = 8,   // Q8.0  unsigned
  parameter int IMG_H     = 224,
  parameter int IMG_W     = 224
  parameter int ACC_W     = 32   // Q14.15 accumulator
)(
  // ---------------------------------------------------------------------------
  // Port definitions
  // ---------------------------------------------------------------------------
  input  logic                           clk,
  input  logic                           rst_n,      // Active‑low sync reset
  input  logic                           valid_in,   // High for a 24 bit pixel
  input  logic [F_PIXEL_W-1:0]           pixel_in,

  output logic                           busy,
  output logic                           valid_out
);

// ---------------------------------------------------------------------------
// 
// ---------------------------------------------------------------------------


// ---------------------------------------------------------------------------
// Main Sequential Block
// ---------------------------------------------------------------------------
always_ff @(posedge clk) begin
    if (!rst_n) begin
        // Reset signals

    end else begin

    end 
end

endmodule