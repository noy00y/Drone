`timescale 1ns / 1ps
// -----------------------------------------------------------------------------
// Module : window
// Purpose: Stream input pixels and output 3x3 output windows (9 pixels)
//
// Author : Ozair Khan
// -----------------------------------------------------------------------------

module window #(
  // ---------------------------------------------------------------------------
  // Parameter definitions
  // ---------------------------------------------------------------------------
  parameter int K         = 3,   // Kernel height/width (3×3)
  parameter int IC        = 3,   // Number of input channels (RGB)
  parameter int F_PIXEL_W = 24,  // Fully packed pixel (24 bit containing rgb)
  parameter int PIXEL_W   = 8,   // Q8.0  unsigned
  parameter int IMG_H     = 224,
  parameter int IMG_W     = 224
)(
  // ---------------------------------------------------------------------------
  // Port definitions
  // ---------------------------------------------------------------------------
  input  logic                           clk,
  input  logic                           rst_n,      // Active‑low sync reset
  input  logic                           valid_in,   // High for a pixel
  input  logic [PIXEL_W-1:0]             pixel_in,   // 8-bit single channel pixel

  output logic                           valid_out,  
  output logic                           busy,       
  output logic [K*K*PIXEL_W-1:0]         data_out    // Flattened (K×K) pixel window
);

  // Line Buffers:
  // Current pixel: P(r, c)
  logic [PIXEL_W-1:0] LB0 [IMG_W-1:0]; // LB0 - current row P(r, _)
  logic [PIXEL_W-1:0] LB1 [IMG_W-1:0]; // LB1 - 1 row above P(r-1, _)
  logic [PIXEL_W-1:0] LB2 [IMG_W-1:0]; // LB2 - 2 rows above P(r-2, _)

  // Shift Regs:
  // Current pixel: P(r, c)
  logic [PIXEL_W-1:0] SRA [K-1:0]; // SRB - 1 col to left P(_, c-1)// SRA - 2 col to left P(_, c-2)
  logic [PIXEL_W-1:0] SRB [K-1:0]; // SRB - 1 col to left P(_, c-1)
  logic [PIXEL_W-1:0] SRC [K-1:0]; // SRC - current col P(_, c)

  // Counters:
  logic [$clog2(IMG_W):0] col_cnt; 
  logic [$clog2(IMG_W):0] row_cnt;

  // Reset Signals and Regs
  always_ff @(posedge clk) begin
    if (!rst_n) begin
      SRA <= '{default: '0};
      SRB <= '{default: '0};
      SRC <= '{default: '0};

      col_cnt <= 0;
      row_cnt <= 0;

      valid_out <= 1'b0;
      busy <= 1'b0;
      data_out <= '0;
    end 
    
    // Update Counters
    else if (valid_in) begin
      if (col_cnt == IMG_W-1) begin
        col_cnt <= 0;
        row_cnt <= row_cnt + 1;
      end else begin
        col_cnt <= col_cnt + 1;
      end
    end
  end

/* 
on each valid pixel P(r,c) we update our linebufs and shift regs as follows
Line Buffers:
  - LB0[0] <= P(r, c), LB0[1] <= LB0[0], ..., LB0[n] <= LB0[n-1]
  - LB1[0] <= LB0[n], LB1[1] <= LB1[0], ..., LB1[n] <= LB1[n-1] 
Shift Regs:
  - SRC[0] <= P(r, c), SRC[1] <= LB0[n], SRC[2] <= LB1[n]
  - SRB[0] <= SRC[0], SRB[1] <= SRC[1], SRB[2] <= SRC[2]
  - SRA[0] <= SRB[0], SRA[1] <= SRB[1], SRA[2] <= SRB[2]
  - * old SRA gets dumped I think *
*/
  // Line Buffering
  always_ff @(posedge clk) begin
    if (valid_in) begin
      // Write curr pixel into line buf 0 and update curr col of shift regs
      LB0[col_cnt] <= pixel_in; 
      SRC[0] <= pixel_in;
      SRC[1] <= LB
    end
  end

endmodule