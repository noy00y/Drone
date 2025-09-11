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
  parameter int WEIGHT_W  = 16,   // Q2.14
  parameter int PE_CNT    = 4
)(
  // ---------------------------------------------------------------------------
  // Port definitions
  // ---------------------------------------------------------------------------
  input  logic                           clk,
  input  logic                           rst_n,      // Active‑low sync reset
  input  logic                           stage_PE,
  input  logic                           load_en,    
  input  logic [IC*K*K*WEIGHT_W-1:0]     w_in    [PE_CNT],
  input  logic [WEIGHT_W-1:0]            b_in    [PE_CNT],

  output logic [$clog2(OC)-1:0]          bus_idx [PE_CNT], 
  output logic [IC*K*K*WEIGHT_W-1:0]     w_out   [PE_CNT],
  output logic [WEIGHT_W-1:0]            b_out   [PE_CNT]
);

// ---------------------------------------------------------------------------
// Compute OC Index for current stage
// ---------------------------------------------------------------------------
localparam int OC_W = $clog2(OC);
typedef logic [OC_W-1:0] oc_idx_t;

oc_idx_t base;

always_comb begin
  // stage_PE = 0 --> base = 0
  //          = 1 --> base = 4
  base = stage_PE ? oc_idx_t'(PE_CNT) : '0;
  for (int i = 0; i < PE_CNT; i++) begin
    bus_idx[i] = base + oc_idx_t'(i);
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