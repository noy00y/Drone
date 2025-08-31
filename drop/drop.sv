`timescale 1ns/1ps

module window #(
  parameter int K         = 3,
  parameter int IC        = 3,     // unused here (single-channel)
  parameter int F_PIXEL_W = 24,    // unused here (single-channel)
  parameter int PIXEL_W   = 8,
  parameter int IMG_H     = 224,
  parameter int IMG_W     = 224
)(
  input  logic                       clk,
  input  logic                       rst_n,
  input  logic                       valid_in,
  input  logic [PIXEL_W-1:0]         pixel_in,

  output logic                       valid_out,
  output logic                       busy,
  output logic [K*K*PIXEL_W-1:0]     data_out
);

  // Address widths
  localparam int CW = (IMG_W <= 1) ? 1 : $clog2(IMG_W);
  localparam int RH = (IMG_H <= 1) ? 1 : $clog2(IMG_H);

  // Three physical line buffers (depth = IMG_W)
  // Hint: add (* ram_style="block" *) if you want to push toward BRAM.
  logic [PIXEL_W-1:0] lb0 [0:IMG_W-1];
  logic [PIXEL_W-1:0] lb1 [0:IMG_W-1];
  logic [PIXEL_W-1:0] lb2 [0:IMG_W-1];

  // Which bank is current row (write), prev1 (r-1), prev2 (r-2)
  logic [1:0] b_cur, b_p1, b_p2;

  // Horizontal shift registers for the three rows (c-2, c-1, c)
  // index 0 = current row r, 1 = r-1, 2 = r-2
  logic [PIXEL_W-1:0] SRA [0:2];  // column c-2 across the 3 rows
  logic [PIXEL_W-1:0] SRB [0:2];  // column c-1
  logic [PIXEL_W-1:0] SRC [0:2];  // column c

  // Counters
  logic [CW-1:0] col_idx;
  logic [RH-1:0] row_idx;

  // Convenience function: read from a selected bank at address
  function automatic logic [PIXEL_W-1:0] lb_read(input logic [1:0] bank, input logic [CW-1:0] addr);
    case (bank)
      2'd0: lb_read = lb0[addr];
      2'd1: lb_read = lb1[addr];
      2'd2: lb_read = lb2[addr];
      default: lb_read = '0;
    endcase
  endfunction

  // Write into the current bank
  task automatic lb_write(input logic [1:0] bank, input logic [CW-1:0] addr, input logic [PIXEL_W-1:0] din);
    begin
      case (bank)
        2'd0: lb0[addr] <= din;
        2'd1: lb1[addr] <= din;
        2'd2: lb2[addr] <= din;
        default: /* no-op */;
      endcase
    end
  endtask

  // Pipeline: assemble window then register it for clean timing
  logic [K*K*PIXEL_W-1:0] window_next;

  // Combinational assembly (top row is r-2, then r-1, then r)
  always_comb begin
    window_next = {
      SRA[2], SRB[2], SRC[2],   // r-2, (c-2,c-1,c)
      SRA[1], SRB[1], SRC[1],   // r-1
      SRA[0], SRB[0], SRC[0]    // r
    };
  end

  // Main sequential block
  always_ff @(posedge clk) begin
    if (!rst_n) begin
      col_idx    <= '0;
      row_idx    <= '0;
      b_cur      <= 2'd0;
      b_p1       <= 2'd1;
      b_p2       <= 2'd2;

      SRA        <= '{default:'0};
      SRB        <= '{default:'0};
      SRC        <= '{default:'0};

      valid_out  <= 1'b0;
      data_out   <= '0;
    end else begin
      // Default: no output unless we say so
      valid_out <= 1'b0;

      if (valid_in) begin
        // Read prev rows at this column
        logic [PIXEL_W-1:0] pix_p1, pix_p2;
        pix_p1 = lb_read(b_p1, col_idx); // r-1 at col
        pix_p2 = lb_read(b_p2, col_idx); // r-2 at col

        // Write current row pixel to current bank
        lb_write(b_cur, col_idx, pixel_in);

        // If we're at the first column of a row, clear SRs (border handling).
        if (col_idx == '0) begin
          SRA <= '{default:'0};
          SRB <= '{default:'0};
          SRC <= '{default:'0};
        end

        // Horizontal shift (columns): (c-2) <= (c-1) <= (c)
        SRA[0] <= SRB[0];  SRB[0] <= SRC[0];  SRC[0] <= pixel_in; // r
        SRA[1] <= SRB[1];  SRB[1] <= SRC[1];  SRC[1] <= pix_p1;   // r-1
        SRA[2] <= SRB[2];  SRB[2] <= SRC[2];  SRC[2] <= pix_p2;   // r-2

        // Produce output once we are primed (≥2 rows/cols)
        if ((row_idx >= 2) && (col_idx >= 2)) begin
          data_out  <= window_next;      // one-cycle registered
          valid_out <= 1'b1;
        end

        // Advance column / row and rotate banks at end-of-row
        if (col_idx == IMG_W-1) begin
          col_idx <= '0;

          // Next row
          if (row_idx != IMG_H-1)
            row_idx <= row_idx + 1;

          // Rotate banks: new write bank = old prev2 (free), prev1' = old cur, prev2' = old prev1
          {b_cur, b_p1, b_p2} <= {b_p2, b_cur, b_p1};
        end else begin
          col_idx <= col_idx + 1;
        end
      end
    end
  end

  // Busy while we haven't primed a full 3x3
  assign busy = (row_idx < 2) || (col_idx < 2);

endmodule
