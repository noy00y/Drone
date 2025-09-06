`timescale 1ns / 1ps
// -----------------------------------------------------------------------------
// Module : bram
// Purpose: statically inferred storage for weights and biases. stored during config
//
// Author : Ozair Khan
// -----------------------------------------------------------------------------

module bram #(
  // ---------------------------------------------------------------------------
  // Parameter definitions
  // ---------------------------------------------------------------------------
  parameter int K         = 3,   // Kernel height/width (3×3)
  parameter int IC        = 3,   // Number of input channels (RGB)
  parameter int OC        = 8,
  parameter int F_PIXEL_W = 24,  // Fully packed pixel (24 bit containing rgb)
  parameter int PIXEL_W   = 8,   // Q8.0  unsigned
  parameter int WEIGHT_W  = 16   // Q2.14
  parameter int PE_CNT    = 4,
  parameter string W_INIT_FILE = "conv1_w.memh",
  parameter string B_INIT_FILE = "conv1_b.memh"
)(
  // ---------------------------------------------------------------------------
  // Port definitions
  // ---------------------------------------------------------------------------
  input logic                              clk,
  input logic [$clog2(OC)-1:0] oc_idx [PE_CNT],

  // Arrays for the 4 output channels of size 27
  output logic [IC*K*K*WEIGHT_W-1:0] w_arr [PE_CNT], 
  output logic [WEIGHT_W-1:0]        b_arr [PE_CNT] 
);

// ---------------------------------------------------------------------------
// Statically Inferred ROM
// ---------------------------------------------------------------------------
(* rom_style = "block" *) logic [IC*K*K*WEIGHT_W-1:0] w_rom [OC];
(* rom_style = "block" *) logic [WEIGHT_W-1:0]        b_rom [OC];

// read at config time
initial begin
  $readmemh(W_INIT_FILE, w_rom);
  $readmemh(B_INIT_FILE, b_rom);
end

// Combinationally pass to PEs
always_comb begin
  for (int i = 0; i < PE_CNT; i++) begin
    w_arr[i] = w_rom[oc_idx[i]];
    b_arr[i] = b_rom[oc_idx[i]];
  end
end
endmodule