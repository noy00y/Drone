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
  output logic                           busy,       // !busy - ready to consume another pixel from upstream
  output logic [K*K*PIXEL_W-1:0]         data_out    // Flattened (K×K) pixel window
);
  // ---------------------------------------------------------------------------
  // Signals, Registers and Logic
  // ---------------------------------------------------------------------------
  // Line Buffers (BRAM):                                     // Current pixel: P(r, c)
  (* ram_style="block"*) logic [PIXEL_W-1:0] LB0 [IMG_W-1:0]; // LB0 - current row P(r, _)
  (* ram_style="block"*) logic [PIXEL_W-1:0] LB1 [IMG_W-1:0]; // LB1 - 1 row above P(r-1, _)
  (* ram_style="block"*) logic [PIXEL_W-1:0] LB2 [IMG_W-1:0]; // LB2 - 2 rows above P(r-2, _)

  // Sync BRAM Reads (2 cc)
  logic [$clog2(IMG_W)-1:0] raddr; 
  logic [PIXEL_W-1:0] LB0_q, LB1_q, LB2_q; // registered data outputs (1 cycle after raddr)

  // Shift Regs:
  //                                  Current pixel: P(r, c)
  logic [PIXEL_W-1:0] SRA [K-1:0]; // SRA - 2 col to left P(_, c-2)
  logic [PIXEL_W-1:0] SRB [K-1:0]; // SRB - 1 col to left P(_, c-1)
  logic [PIXEL_W-1:0] SRC [K-1:0]; // SRC - current col P(_, c)

  // Controls for choosing which LB# banks to read from and write too
    // b_curr - write (curr row)
    // b_p1 - read (curr row - 1)
    // b_p2 - read (curr row - 2)
  logic [1:0] b_curr;
  logic [1:0] b_p1_s0, b_p2_s0; // stage 0
  logic [1:0] b_p1_s1, b_p2_s1; // stage 1

  // Counters:
  // $clog2(224) = 8 bit wide signal width for counter
  logic [$clog2(IMG_W)-1:0] col_idx; 
  logic [$clog2(IMG_H)-1:0] row_idx;
  
  // Additional Sync Controls:
  logic eol_s0, eol_s1;
  logic [PIXEL_W-1:0] pixel_in_s1;
  logic first_window_s0, first_window_s1; // First window ready 
  logic v0, v1; // valid pipeline stages

  // Combinationally Assemble Window:
  logic [K*K*PIXEL_W-1:0] curr_window;
  logic [PIXEL_W-1:0] pix_r1, pix_r2; // holds the prev row reads from the line bufs

  // ---------------------------------------------------------------------------
  // Combinational Block - Window Gen:
  // - LUT logic takes ~0 cc
  // - 3 to 1 Mux for P(r-1,_) and P(r-2,_)
  // ---------------------------------------------------------------------------
  always_comb begin
    unique case (b_p1_s1)
      2'd0: pix_r1 = LB0_q;
      2'd1: pix_r1 = LB1_q;
      default: pix_r1 = LB2_q;
    endcase

    unique case (b_p2_s1)
      2'd0: pix_r2 = LB0_q;
      2'd1: pix_r2 = LB1_q;
      default: pix_r2 = LB2_q;
    endcase

    // Current Window
    curr_window = {
      SRA[2], SRB[2], SRC[2],
      SRA[1], SRB[1], SRC[1],
      SRA[0], SRB[0], SRC[0]
    };
  end

  // Compute flags for current cycle:
  assign first_window_s0 = (row_idx >= 2) && (col_idx >= 2); 
  assign eol_s0 = valid_in && (col_idx == IMG_W-1);

  // Main Sequential Block
  // - RHS read and LHS register updated at the next posedge of clock (1cc exe)
  always_ff @(posedge clk) begin
    // Reset Signals and Regs
    if (!rst_n) begin
      raddr <= '0;
      LB0_q <= '0; LB1_q <= '0; LB2_q <= '0;
      b_curr <= 2'd0;
      b_p1_s0 <= 2'd1; b_p2_s0 <= 2'd2;
      b_p1_s1 <= '0; b_p2_s1 <= '0;

      SRA <= '{default: '0};
      SRB <= '{default: '0};
      SRC <= '{default: '0};

      col_idx <= '0;
      row_idx <= '0;

      pixel_in_s1 <= '0;
      first_window_s1 <= 1'b0;
      eol_s1 <= 1'b0;
      valid_out <= 1'b0;
      data_out <= '0;

    end else begin
      // Default assignments:
      // valid_out <= 1'b0; // default: no output
      v0 <= valid_in;
      v1 <= v0;

      // Incoming Pixel from upstream
      if (valid_in) begin
        // Advance regs
        pixel_in_s1 <= pixel_in; 
        first_window_s1 <= first_window_s0;
        b_p1_s1 <= b_p1_s0; b_p2_s1 <= b_p2_s0; 
        eol_s1 <= eol_s0;

        raddr <= col_idx; // Stage 1 - Issue addresses

        // 3 to 1 Mux: Write to current row bank
        unique case(b_curr)               
          2'd0: LB0[col_idx] <= pixel_in;
          2'd1: LB1[col_idx] <= pixel_in;
          2'd2: LB2[col_idx] <= pixel_in;
        endcase
      end
    
      // V0 - read data from line buffers since raddr is now registered
      if (v0) begin
        // Stage 2 - Sync reads and registering the linebuffer data
        // (1cc) raddr <= col_idx // register addy
        // (1cc) LB#_q <= LB#[raddr] // read data at addy
        LB0_q <= LB0[raddr];
        LB1_q <= LB1[raddr];
        LB2_q <= LB2[raddr];
      end 

      // V1 - Advance Shift Regs forward since LB#_q is now registered
      if (v1) begin
        // Shift Cols:
        SRA[2] <= SRB[2]; SRB[2] <= SRC[2]; SRC[2] <= pix_r2;
        SRA[1] <= SRB[1]; SRB[1] <= SRC[1]; SRC[1] <= pix_r1;
        SRA[0] <= SRB[0]; SRB[0] <= SRC[0]; SRC[0] <= pixel_in_s1; //pixel_in_d;

        // If EOL -> reset col else keep incrementing
        if (eol_s1) begin
          col_idx <= '0;
          {b_curr, b_p1_s0, b_p2_s0} <= {b_p2_s0, b_curr, b_p1_s0};
          if (row_idx != IMG_H-1) row_idx <= row_idx + 1;          
        end else begin
          col_idx <= col_idx + 1;
        end

        // Produce output once ≥2 rows/cols      
        if (first_window_s1) begin
          data_out <= curr_window;
          valid_out <= 1'b1;
        end
      end
    end
  end

  // Busy while valid_in (ie processing a pixel)
  assign busy = valid_in;// && !first_window_s1;
endmodule 