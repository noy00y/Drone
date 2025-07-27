`timescale 1ns / 1ps

// 3×3 window generator for one channel
module window_gen #(
  parameter DW = 8,
  parameter IMG_WIDTH=8
)(
  input  wire        clk,
  input  wire        rst_n,
  input  wire [DW-1:0] row2, row1, row0,
  input  wire        valid_in,
  output reg [DW*9-1:0] window_out, // {p00,p01,p02, p10,...,p22}
  output reg        valid_out
);

  // Define Constant IMG Width
  localparam PTR_W = $clog2(IMG_WIDTH);

  // Horizontal Shift Regs Window (3x3)
  // row2
  // row1
  // row0
  reg [DW-1:0] shift_r2 [0:2], shift_r1 [0:2], shift_r0 [0:2];

  // window tracking counter:
  reg [PTR_W-1:0] col_count;
  reg [PTR_W-1:0] row_count;

  integer i;
  always @(posedge clk) begin
    if (!rst_n) begin
      col_count <= 0;
      row_count <= 0;
      valid_out <= 1'b0;

      // clear the shift reg window
      for (int i = 0; i < 3; i = i + 1) begin
        shift_r2[i] <= 0;
        shift_r1[i] <= 0;
        shift_r0[i] <= 0;
      end

    // Consume upstream pixels
    end else if (valid_in) begin
      // Move the window right by shifting the registers to the left
      shift_r2[0] <= shift_r2[1];
      shift_r2[1] <= shift_r2[0];
      shift_r2[2] <= row2; // upstream pixel from row2 new col

      shift_r1[0] <= shift_r1[1];
      shift_r1[1] <= shift_r1[2];
      shift_r1[2] <= row1;

      shift_r0[0] <= shift_r0[1];
      shift_r0[1] <= shift_r0[2];
      shift_r0[2] <= row0;    

      // Update Cols and Row Counters:
      if (col_count == IMG_WIDTH-1) begin
        col_count <= 0;
        row_count <= row_count + 1; // move down 1 row
      end else begin
        col_count <= col_count + 1;
      end

      // Only send window downstream once valid
      if (row_count >=2 && col_count >= 0) begin
        valid_out <= 1'b1;
        // 3x3 window in row-col
        window_out <= {
          shift_r2[0], shift_r2[1], shift_r2[2],   // top row: p00,p01,p02
          shift_r1[0], shift_r1[1], shift_r1[2],   // mid row: p10,p11,p12
          shift_r0[0], shift_r0[1], shift_r0[2]    // bot row: p20,p21,p22
        };
      end else begin
        valid_out <= 1'b0;
      end
    // no new pixel so no valid window
    end else begin
      valid_out <= 1'b0;
    end
  end
endmodule