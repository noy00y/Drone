`timescale 1ns / 1ps
// -----------------------------------------------------------------------------
// Module : stream
// Purpose: stream rgb pixel in, unpack it and send single channel pixels downstream
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
  input  logic                           rst_n,      // Active‑low sync reset
  input  logic                           valid_in,   // High for a 24 bit pixel
  input  logic [F_PIXEL_W-1:0]           pixel_in,

  output logic                           busy
);

// Unpacked Pixel Streams and sync signals:
logic [PIXEL_W-1:0] pix_r, pix_g, pix_b;
logic valid_ch;

// sequentially stream in pixels and send downstream to form each window 
always_ff @(posedge clk) begin
    if (!rst_n) begin
        // Reset signals
        busy <= 1'b0;
        valid_ch <= 1'b0;

        pix_r <= '0;
        pix_b <= '0;
        pix_g <= '0;
    end else if (valid_in) begin
        pix_r <= pixel_in[23:16];
        pix_g <= pixel_in[15:8];
        pix_b <= pixel_in[7:0];
    end
    valid_ch <= valid_in;
end

// Window Module Instantiation for each single channel pixel:
// R channel
window #(
    .K (K),
    .IC (IC),
    .F_PIXEL_W (F_PIXEL_W),
    .PIXEL_W (PIXEL_W),
    .IMG_H (IMG_H),
    .IMG_W (IMG_W)
) i_win_r (
    .clk (clk),
    .rst_n (rst_n),
    .valid_in (valid_ch),
    .pixel_in (pix_r)
);

// G channel
window #(
    .K (K),
    .IC (IC),
    .F_PIXEL_W (F_PIXEL_W),
    .PIXEL_W (PIXEL_W),
    .IMG_H (IMG_H),
    .IMG_W (IMG_W)
) i_win_g (
    .clk (clk),
    .rst_n (rst_n),
    .valid_in (valid_ch),
    .pixel_in (pix_g)
);

// B channel
window #(
    .K (K),
    .IC (IC),
    .F_PIXEL_W (F_PIXEL_W),
    .PIXEL_W (PIXEL_W),
    .IMG_H (IMG_H),
    .IMG_W (IMG_W)
) i_win_b (
    .clk (clk),
    .rst_n (rst_n),
    .valid_in (valid_ch),
    .pixel_in (pix_b)
);
endmodule