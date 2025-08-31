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
    // b_curr - write
    // b_p1 - (r-1)
    // b_p2 - (r-2)
  logic [1:0] b_curr, b_p1, b_p2;

  // Counters:
  logic [$clog2(IMG_W):0] col_idx; 
  logic [$clog2(IMG_W):0] row_idx;

  // Reading and Writing to Banks
  // - cheaper to this then to copy whole BRAM rows
  function automatic logic [PIXEL_W-1:0] lb_read(input logic [1:0] bank, input logic [IMG_W-1:0] addr);
    case (bank)
      2'd0: lb_read = lb0[addr];
      2'd1: lb_read = lb1[addr];
      2'd2: lb_read = lb2[addr];
      default: lb_read = '0;
    endcase
  endfunction

  task automatic lb_write(input logic [1:0] bank, input logic [IMG_W-1:0] addr, input logic [PIXEL_W-1:0] din);
    begin
      case (bank)
        2'd0: lb0[addr] <= din;
        2'd1: lb1[addr] <= din;
        2'd2: lb2[addr] <= din;
        default:; // no op
      endcase
    end 
  endtask

  // Combinationally Assemble Window:
  logic [K*K*PIXEL_W-1:0] curr_window;
  always_comb begin
    curr_window = {
      SRA[2], SRB[2], SRC[2],
      SRA[1], SRB[1], SRC[1],
      SRA[0], SRB[0], SRC[0],
    };
  end

  // Main Sequential Block
  always_ff @(posedge clk) begin
    // Reset Signals and Regs
    if (!rst_n) begin
      SRA <= '{default: '0};
      SRB <= '{default: '0};
      SRC <= '{default: '0};

      col_idx <= 0;
      row_idx <= 0;
      b_cur <= 2'd0;
      b_p1 <= 2'd1;
      b_p2 <= 2'd2;

      valid_out <= 1'b0;
      busy <= 1'b0;
      data_out <= '0;
    end

  end else begin
    valid_out <= 1'b1; // default: no output
    if (valid_in) begin
      // Read from rows and write to bank
      logic [PIXEL_W-1:0] pix_r1, pix_r2; // P(r-1, c), P(r-2, c)
      pix_r1 = lb_read(b_p1, col_idx);
      pix_r2 = lb_read(b_p2, col_idx);
      lb_write(b_curr, col_idx, pixel_in);

      // Shift Cols:
      SRA[2] <= SRB[2]; SRB[2] <= SRC[2]; SRC[2] <= pix_p2;
      SRA[1] <= SRB[1]; SRB[1] <= SRC[1]; SRC[1] <= pix_p1;
      SRA[0] <= SRB[0]; SRB[0] <= SRC[0]; SRC[0] <= pixel_in;

      // Produce output once ≥2 rows/cols
      if ((row_idx >= 2) && (col_idx >= 2)) begin
        data_out <= curr_window;
        valid_out <= 1'b1;
      end

      // If EOL -> rotate linebufs and increment rows
      if (col_idx == IMG_W-1) begin
        col_idx <= '0;
        {b_curr, b_p1, b_p1} <= {b_p2, b_curr, b_p1};

        if (row_idx != IMG_H-1) begin
          row_idx <= row_idx + 1;
        end
      end else begin
        col_idx <= col_idx + 1;
      end
    end
  end
  // Busy while valid_in and no data_out
  assign busy = valid_in && !data_out
endmodule