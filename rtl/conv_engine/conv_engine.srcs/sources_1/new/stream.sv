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
  input  logic                           rst_n,      // Active‑low asynchronous reset
  input  logic                           valid_in,   // High for a pixel
  input  logic [F_PIXEL_W-1:0]           pixel_in,

  output logic                           valid_out,  
  output logic                           busy,
);

// Unpacked Pixel Streams:
logic [PIXEL_W-1:0] pix_r, pix_g, pix_b;

// sequentially stream in pixels and send downstream to form each window 
always_ff @(posedge clk) begin
    if (!rst_n) begin
        // Reset signals
        pix_r <= '0;
        pix_b <= '0;
        pix_g <= '0;

        valid_out <= 1'b0;
        busy <= 1'b0;
        data_out <= '0;
    end else if (valid_in) begin
        pix_r <= pixel_in[23:16];
        pix_g <= pixel_in[15:8];
        pix_b <= pixel_in[7:0];
    end
end

// Window Module Instantiation for each single channel pixel:
// R channel
window #(

) i_win_r (

);

// G channel
window #(

) i_win_g (

);

// B channel
window #(

) i_win_b (

);

endmodule