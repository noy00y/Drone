`timescale 1ns / 1ps
// -----------------------------------------------------------------------------
// Module : window
// Purpose: Stream 8 bit pixels and output 3x3 output windows
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
  // ---------------------------------------------------------------------------
  // Signals, Registers and Logic
  // ---------------------------------------------------------------------------
  // Line Buffers (BRAM):
  // Current pixel: P(r, c)
  (* ram_style="block"*) logic [PIXEL_W-1:0] LB0 [IMG_W-1:0]; // LB0 - current row P(r, _)
  (* ram_style="block"*) logic [PIXEL_W-1:0] LB1 [IMG_W-1:0]; // LB1 - 1 row above P(r-1, _)
  (* ram_style="block"*) logic [PIXEL_W-1:0] LB2 [IMG_W-1:0]; // LB2 - 2 rows above P(r-2, _)

  // Shift Regs:
  // Current pixel: P(r, c)
  logic [PIXEL_W-1:0] SRA [K-1:0]; // SRB - 1 col to left P(_, c-1)// SRA - 2 col to left P(_, c-2)
  logic [PIXEL_W-1:0] SRB [K-1:0]; // SRB - 1 col to left P(_, c-1)
  logic [PIXEL_W-1:0] SRC [K-1:0]; // SRC - current col P(_, c)

  // Current Banks 
    // b_curr - write (r)
    // b_p1 - read (r-1)
    // b_p2 - read (r-2)
  logic [1:0] b_curr, b_p1, b_p2;

  // Counters:
  // $clog2(224) = 8 bit wide signal width for counter
  logic [$clog2(IMG_W)-1:0] col_idx; 
  logic [$clog2(IMG_H)-1:0] row_idx;

  // Declarations for Sync BRAM Reads:
  logic [$clog2(IMG_W)-1:0] raddr;
  logic [PIXEL_W-1:0] LB0_q, LB1_q, LB2_q; // registered data outputs (1 cycle after raddr)
  // Control for data
  logic [1:0] b_p1_d, b_p2_d;
  logic eol, eol_d;
  logic [PIXEL_W-1:0] pixel_in_d;

  // Combinationally Assemble Window:
  logic [K*K*PIXEL_W-1:0] curr_window;
  logic [PIXEL_W-1:0] pix_r1, pix_r2;
  logic first_window, first_window_d; // First window ready 

  always_comb begin
    // Generating the two prev row pixels from the registered bram reads
    unique case (b_p1_d)
      2'd0: pix_r1 = LB0_q;
      2'd1: pix_r1 = LB1_q;
      default: pix_r1 = LB2_q;
    endcase

    unique case (b_p2_d)
      2'd0: pix_r2 = LB0_q;
      2'd1: pix_r2 = LB1_q;
      default: pix_r2 = LB2_q;
    endcase

    curr_window = {
      SRA[2], SRB[2], SRC[2],
      SRA[1], SRB[1], SRC[1],
      SRA[0], SRB[0], SRC[0]
    };
  end

  // Compute flags for current cycle:
  assign first_window = (row_idx >= 2) && (col_idx >= 2); 
  assign eol = valid_in && (col_idx == IMG_W-1);

  // Main Sequential Block
  always_ff @(posedge clk) begin
    // Reset Signals and Regs
    if (!rst_n) begin
      raddr <= '0;
      LB0_q <= '0; LB1_q <= '0; LB2_q <= '0;
      b_p1_d <= '0; b_p2_d <= '0;
      pixel_in_d <= '0;
      first_window_d <= 1'b0;
      eol_d <= 1'b0;

      SRA <= '{default: '0};
      SRB <= '{default: '0};
      SRC <= '{default: '0};

      col_idx <= '0;
      row_idx <= '0;
      b_curr <= 2'd0;
      b_p1 <= 2'd1;
      b_p2 <= 2'd2;

      valid_out <= 1'b0;
      data_out <= '0;

    end else begin
      valid_out <= 1'b0; // default: no output
      if (valid_in) begin
        // Stage 1 - Issue addresses and write (current row)
        raddr <= col_idx;                 // address for read next cycle 
        unique case(b_curr)               // sync write to current bank
          2'd0: LB0[col_idx] <= pixel_in;
          2'd1: LB1[col_idx] <= pixel_in;
          2'd2: LB2[col_idx] <= pixel_in;
        endcase

        // Stage 2 - Sync reads and registering the outputs
        LB0_q <= LB0[raddr];
        LB1_q <= LB1[raddr];
        LB2_q <= LB2[raddr];

        // Control Alignment
        pixel_in_d <= pixel_in;
        b_p1_d <= b_p1;
        b_p2_d <= b_p2;
        first_window_d <= first_window; 
        eol_d <= eol;

        // Shift Cols:
        SRA[2] <= SRB[2]; SRB[2] <= SRC[2]; SRC[2] <= pix_r2;
        SRA[1] <= SRB[1]; SRB[1] <= SRC[1]; SRC[1] <= pix_r1;
        SRA[0] <= SRB[0]; SRB[0] <= SRC[0]; SRC[0] <= pixel_in_d;

        // Produce output once ≥2 rows/cols
        if (first_window_d) begin
          data_out <= curr_window;
          valid_out <= 1'b1;
        end

        // If EOL -> reset col else keep incrementing
        if (eol) begin
          col_idx <= '0;
        end else begin
          col_idx <= col_idx + 1;
        end

        // Rotate banks when last col of data has emerged (1 cycle later)
        if (eol_d) begin
          {b_curr, b_p1, b_p2} <= {b_p2, b_curr, b_p1};
          if (row_idx != IMG_H-1) row_idx <= row_idx + 1;
        end
      end
    end
  end

  // Busy while valid_in and still generating the first window
  assign busy = valid_in && !first_window_d;
endmodule