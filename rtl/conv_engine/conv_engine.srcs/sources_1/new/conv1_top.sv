`timescale 1ns / 1ps
// -----------------------------------------------------------------------------
// Module : Conv1 processing block top module
// Purpose: Top module for conv1
//
// Author : Ozair Khan
// -----------------------------------------------------------------------------

module conv1_top #(
  // ---------------------------------------------------------------------------
  // Parameter definitions
  // ---------------------------------------------------------------------------
  parameter int K        = 3,   // Kernel height/width (3×3)
  parameter int IC       = 3,   // Number of input channels (RGB)
  parameter int F_PIXEL_W = 24,  // Fully packed pixel (24 bit containing rgb)
  parameter int PIXEL_W  = 8,   // Q8.0  unsigned
  parameter int IMG_H    = 224,
  parameter int IMG_W    = 224
  parameter int ACC_W    = 32   // Q14.15 accumulator
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
// Window Handling: Instanstiation & Handshaking
// ---------------------------------------------------------------------------
typedef logic [K*K*PIXEL_W-1:0] win_t; // single channel 3x3 window type
win_t win_r, win_g, win_b; // data_out from window.sv

logic [PIXEL_W-1:0] pix_r, pix_g, pix_b; // register pixels while waiting
logic valid_ch_pix; // lets packer know pixels ready on upstream side

// send pixels to windows only when all packers ready
logic busy_r, busy_g, busy_b // !busy_ = ready for more pixels
logic ready_rgb; 
assign ready_rgb = !busy_r & !busy_g & !busy_b;

// Packed Windows sent back to TOP
logic valid_r, valid_g, valid_b, valid_rgb; // valid_out from window packer
assign valid_rgb = valid_r & valid_g & valid_g // 3x3x3 window ready for conv_sum

// ---------------------------------------------------------------------------
// CONV Handling: Instanstiation & Handshaking
// ---------------------------------------------------------------------------
typedef logic signed [ACC_W-1:0] sum_t; // data_out from convPE
sum_t sum_PE1, sum_PE2, sum_PE3, sum_PE4; // 4 x conv_PE engines = 108 DSPs
logic valid_window; // let PE know window x 3 ready on upstream side

logic busy_PE1, busy_PE2, busy_PE3, busy_PE4; // !busy_ = PE ready for more windows
logic ready_PE;
assign ready_PE = !busy_PE1 && !busy_PE2 && !busy_PE3 && !busy_PE4;
logic stage_PE; // 0 - channels[0-3], channels[4-7]

logic valid_PE1, valid_PE2, valid_PE3, valid_PE4; // valid_out from the PEs

// ---------------------------------------------------------------------------
// Main Sequential Block
// ---------------------------------------------------------------------------
always_ff @(posedge clk) begin
    if (!rst_n) begin
        // Reset signals
        busy <= 1'b0;
        valid_ch_pix <= 1'b0;
        pix_r <= '0;
        pix_b <= '0;
        pix_g <= '0;
    end else begin
        valid_ch_pix <= 1'b0; // default: not ready to send
        // Ready to send pixel to packer only when not busy
        if (valid_in && ready_rgb) begin
            valid_ch_pix <= 1'b1;
            pix_r <= pixel_in[23:16];
            pix_g <= pixel_in[15:8];
            pix_b <= pixel_in[7:0];
        end

        // Ready to send 3x3x3 window for conv sum
        if (valid_rgb) begin
            
        end
    end 
end

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
    .valid_in (valid_ch_pix),
    .pixel_in (pix_r),
    .valid_out (valid_r),
    .busy (busy_r),
    .data_out (win_r)
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
    .valid_in (valid_ch_pix),
    .pixel_in (pix_g),
    .valid_out (valid_g),
    .busy (busy_g),
    .data_out (win_g)
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
    .valid_in (valid_ch_pix),
    .pixel_in (pix_b),
    .valid_out (valid_b),
    .busy (busy_b),
    .data_out (win_b)
);

endmodule