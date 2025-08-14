`timescale 1ns / 1ps
// -----------------------------------------------------------------------------
// Module : conv_PE
// Purpose: Compute one output feature value for a 3×3×3 convolution window
//          (single output channel) in two pipeline stages.
//
// Author : Ozair Khan
// -----------------------------------------------------------------------------

module conv_PE #(
  // ---------------------------------------------------------------------------
  // Parameter definitions
  // ---------------------------------------------------------------------------
  parameter int K        = 3,   // Kernel height/width (3×3)
  parameter int IC       = 3,   // Number of input channels (RGB)
  parameter int PIXEL_W  = 8,   // Q8.0  unsigned
  parameter int WEIGHT_W = 16,  // Q1.15 signed
  parameter int ACC_W    = 32   // Q14.15 accumulator
)(
  // ---------------------------------------------------------------------------
  // Port definitions
  // ---------------------------------------------------------------------------
  input  logic                           clk,
  input  logic                           rst_n,      // Active‑low asynchronous reset

  input  logic                           valid_in,   // High for a *single* window
  input  logic  [IC*K*K*PIXEL_W-1:0]     window,     // Flattened (K×K×IC) pixel window
  input  logic  [IC*K*K*WEIGHT_W-1:0]    weight,     // Flattened weights for *one* filter
  input  logic  [WEIGHT_W-1:0]           bias,       // Per‑filter bias (Q1.15)

  output logic                           valid_out,  // Asserted one cycle after valid_in
  output logic                           busy,       // High while the PE holds data
  output logic signed [ACC_W-1:0]        data_out    // Convolution result (Q14.15)
);

  // ---------------------------------------------------------------------------
  // Local constants & typedefs
  // ---------------------------------------------------------------------------
  localparam int N = IC*K*K;                     // Total MAC operations (27)
  localparam int MUL_W = 1 + PIXEL_W + WEIGHT_W;     // Result width of each multiplication 
                                                 // note: pixel is 0 extended

  // ---------------------------------------------------------------------------
  // Stage‑0 : combinational multiply‑accumulate (27 MACs + adder tree)
  // ---------------------------------------------------------------------------
  // Split flattened buses into arrays for readability
  logic [PIXEL_W-1:0]   pixel    [N-1:0];
  logic signed [WEIGHT_W-1:0]  weight_s [N-1:0];
  logic signed [MUL_W-1:0]     prod     [N-1:0];

  // Unpack pixels & weights ----------------------------------------------------
  genvar g;
  generate
    for (g = 0; g < N; g = g + 1) begin : UNPACK
      assign pixel   [g] = window [g*PIXEL_W   +: PIXEL_W ];
      assign weight_s[g] = $signed(weight [g*WEIGHT_W +: WEIGHT_W]);
      // (* use_dsp = "yes" *) assign prod[g] = pixel[g] * weight_s[g];
      (* use_dsp = "yes" *) assign prod[g] = $signed({1'b0, pixel[g]}) * weight_s[g];
    end
  endgenerate

  // Tree‑add all partial products (combinational)
  logic signed [ACC_W-1:0] mac_sum;
  always_comb begin : MAC_REDUCE
    mac_sum = '0;
    for (int i = 0; i < N; i++) begin
      mac_sum += prod[i];
    end
  end

  // Sign‑extend bias to accumulator width
  logic signed [ACC_W-1:0] bias_ext;
  assign bias_ext = {{(ACC_W-WEIGHT_W){bias[WEIGHT_W-1]}}, bias};

  // ---------------------------------------------------------------------------
  // Stage‑1 : register result + handshake logic
  // ---------------------------------------------------------------------------
  logic        vld_s0;        // pipeline valid flag (stage‑0) - we have a fresh final conv sum
  logic signed [ACC_W-1:0] acc_s0; // stage‑0 MAC+bias result

  // Capture MAC result when a new window is accepted --------------------------
  always_ff @(posedge clk) begin
    if (!rst_n) begin
      vld_s0  <= 1'b0;
      acc_s0  <= '0;
    end else begin
      vld_s0  <= valid_in;
      if (valid_in)
        acc_s0 <= mac_sum + bias_ext;  // Add bias once per window
    end
  end

  // Output stage: one‑cycle latency after vld_s0 ------------------------------
  always_ff @(posedge clk) begin
    if (!rst_n) begin
      valid_out <= 1'b0;
      data_out  <= '0;
    end else begin
      valid_out <= vld_s0;
      if (vld_s0)
        data_out <= acc_s0;
    end
  end

  // ---------------------------------------------------------------------------
  // Busy flag – asserted while any stage of the pipeline is active
  // ---------------------------------------------------------------------------
  assign busy = valid_in | vld_s0 | valid_out;

endmodule
