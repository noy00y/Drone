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
  parameter int OC        = 8,
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
  input  logic                           stage_PE,
  input  logic                           load_en,    
  input  logic [$clog2(OC)-1:0]          oc_req [PE_CNT],
  input  logic [IC*K*K*WEIGHT_W-1:0]     w_in   [PE_CNT],
  input  logic [WEIGHT_W-1:0]            b_in   [PE_CNT],

  output logic [IC*K*K*WEIGHT_W-1:0]     w_out  [PE_CNT],
  output logic [WEIGHT_W-1:0]            b_out  [PE_CNT]
);

// ---------------------------------------------------------------------------
// Compute OC Index for current stage
// ---------------------------------------------------------------------------
logic [$clog2(OC)-1:0] base;
always_comb begin
  // stage_PE = 0 --> base = 0
  //          = 1 --> base = 4
  base = stage_PE ? PE_CNT[$clog2(OC)-1:0] : '0;
  for (int i = 0; i < PE_CNT; i++) begin
    oc_req[i] = base + i[$clog2(OC)-1:0];
  end
end

// ---------------------------------------------------------------------------
// Main Sequential Block
// ---------------------------------------------------------------------------
always_ff @(posedge clk) begin
  if (!rst_n) begin
    for (int i = 0; i < PE_CNT; i++) begin
      w_out[i] <= '0;
      b_out[i] <= '0;
    end    
  end else if (load_en) begin
    for (int i = 0; i < PE_CNT; i++) begin
      w_out[i] <= w_in[i];
      b_out[i] <= b_in[i];
    end
  end 
end

endmodule