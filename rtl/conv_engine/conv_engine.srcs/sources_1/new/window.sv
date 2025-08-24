`timescale 1ns / 1ps
// -----------------------------------------------------------------------------
// Module : window
// Purpose: Stream input pixels and output 3x3x3 output windows (27 pixels)
//
// Author : Ozair Khan
// -----------------------------------------------------------------------------

module window #(
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
  input  logic [PIXEL_W-1:0]             pixel_in,   // 8-bit single channel pixel

  output logic                           valid_out,  
  output logic                           busy,       // High while module is processing??
  output logic [IC*K*K*PIXEL_W-1:0]      data_out    // Flattened (K×K×IC) pixel window
);

// Line Buffers:
// Current pixel: P(r, c)
logic [PIXEL_W-1:0] LB0 [IC-1:0][IMG_W-1:0]; // LB0 - 1 row above P(r-1, _)
logic [PIXEL_W-1:0] LB1 [IC-1:0][IMG_W-1:0]; // LB1 - 2 rows above P(r-2, _)

// Shift Regs:
// Current pixel: P(r, c)
logic [PIXEL_W-1:0] SRA [K-1:0][IC-1:0]; // SRB - 1 col to left P(_, c-1)// SRA - 2 col to left P(_, c-2)
logic [PIXEL_W-1:0] SRB [K-1:0][IC-1:0]; // SRB - 1 col to left P(_, c-1)
logic [PIXEL_W-1:0] SRC [K-1:0][IC-1:0]; // SRC - current col P(_, c)

// Unpacked Pixel Streams:
logic [PIXEL_W-1:0] pix_r, pix_g, pix_b;

// Sequentially populating the line buffers and shift registers:
always_ff @(posedge clk) begin
    if (!rst_n) begin
        // Zero out shift regs:
        SRA <= '{default: '0};
        SRB <= '{default: '0};
        SRC <= '{default: '0};

        // Reset signals
        valid_out <= 1'b0;
        busy <= 1'b0;
        data_out <= '0;

    end else begin
        // on each valid pixel P(r,c)
        // unpack the pixel into seperate r, g, b
        // LB0[0] <= P(r, c), LB0[1] <= LB0[0], ..., LB0[n] <= LB0[n-1]
        // LB1[0] <= LB0[n], LB1[1] <= LB1[0], ..., LB1[n] <= LB1[n-1]
        if (valid_in)
            assign pix_r = pixel_in[23:16];
            assign pix_g = pixel_in[15:8];
            assign pix_b = pixel_in[7:0];
    end
end
endmodule