`timescale 1ns / 1ps
// conv_PE: computes one output channel for a single 3×3×3 window
module conv_PE #(
  parameter K             = 3,
  parameter IC            = 3,
  parameter PIXEL_W       = 8,    // Q8.0 pixel
  parameter WEIGHT_W      = 16,   // Q1.15 weight
  parameter ACC_W         = 32    // Q14.15 accumulator
)(
  input  wire                          clk,
  input  wire                          rst_n,
  input  wire                          valid_in,
  output reg                           valid_out,
  // flat buses for window pixels & weights
  input  wire [IC*K*K*PIXEL_W-1:0]     window,    // 27×8 = 216 bits
  input  wire [IC*K*K*WEIGHT_W-1:0]    weight,    // 27×16 = 432 bits
  input  wire [WEIGHT_W-1:0]           bias,      // 16 bits
  output reg signed [ACC_W-1:0]        data_out   // 32 bits Q14.15
);

  //---- Stage 1 registers: unpack & multiply ----
  // Use generate to unpack and multiply each of the 27 products
  reg signed [PIXEL_W-1:0]    pix   [0:IC*K*K-1];
  reg signed [WEIGHT_W-1:0]   wght  [0:IC*K*K-1];
  reg signed [PIXEL_W+WEIGHT_W-1:0] prod [0:IC*K*K-1];

  integer i;
  always @(posedge clk) begin
    if (!rst_n) begin
      valid_out <= 1'b0;
    end else begin
      if (valid_in) begin
        // unpack pixels & weights
        for (i = 0; i < IC*K*K; i = i + 1) begin
          pix[i]  <= window[PIXEL_W*i +: PIXEL_W];
          wght[i] <= weight[WEIGHT_W*i +: WEIGHT_W];
          prod[i] <= $signed(pix[i]) * $signed(wght[i]);
        end
      end
    end
  end

  //---- Stage 2: balanced adder-tree ----
  // We'll do a two-level tree: sum pairs, then sum results
  reg signed [ACC_W-1:0] sum_lvl1 [0:(IC*K*K)/2-1];
  reg signed [ACC_W-1:0] sum_lvl2;
  always @(posedge clk) begin
    if (!rst_n) begin
      sum_lvl2    <= 0;
      sum_lvl1[0] <= 0;
    end else if (valid_in) begin
      // level-1: sum pairs of prod[]
      for (i = 0; i < (IC*K*K)/2; i = i + 1) begin
        sum_lvl1[i] <= prod[2*i] + prod[2*i+1];
      end
      // level-2: sum all sum_lvl1[]
      sum_lvl2 = 0;
      for (i = 0; i < (IC*K*K)/2; i = i + 1) begin
        sum_lvl2 = sum_lvl2 + sum_lvl1[i];
      end
    end
  end

  //---- Stage 3: add bias & ReLU, register output ----
  always @(posedge clk) begin
    if (!rst_n) begin
      valid_out <= 1'b0;
      data_out  <= 0;
    end else begin
      if (valid_in) begin
        // bias is Q1.15; extend to Q14.15
        // sum_lvl2 is Q9.15+log₂27→Q14.15
        // so can just add
        data_out  <= (sum_lvl2 + $signed({{(ACC_W-WEIGHT_W){bias[WEIGHT_W-1]}}, bias})) < 0
                     ? 0
                     : sum_lvl2 + $signed({{(ACC_W-WEIGHT_W){bias[WEIGHT_W-1]}}, bias});
        valid_out <= 1'b1;
      end else begin
        valid_out <= 1'b0;
      end
    end
  end

endmodule

