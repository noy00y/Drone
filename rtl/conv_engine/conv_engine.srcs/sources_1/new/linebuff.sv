`timescale 1ns / 1ps

// Two-line buffer for one channel (depth = image width)
module line_buffer #(
  parameter DEPTH = 224,
  parameter DW    = 8s,
  parameter IMG_WIDTH = 224
)(
  input  wire           clk,
  input  wire           rst_n,
  input  wire [DW-1:0]  din,
  input  wire           din_valid,
  output wire [DW-1:0]  row1,      // oldest line (r-2)
  output wire [DW-1:0]  row0,      // middle line (r-1)
  output wire [DW-1:0]  pixel      // newest line/pixel
);

  // Index 0 --> Img Width - 1 
  localparam PTR_W = $clog2(IMG_WIDTH);
  reg [PTR_W-1:0] wr_ptr;

  // 2 line memories
  reg [DW-1:0]    line1_mem [0:IMG_WIDTH-1];
  reg [DW-1:0]    line2_mem [0:IMG_WIDTH-1];

  // taps from memory
  reg [DW-1:0] tap1, tap2;

  // On each valid pixel
  // - Read old data from both mems at wr_ptr
  // - write current pixel into line1_mem
  // - write prev line1 tap into line2_mem
  // - advance ptr (wrap around img_width)

  always @(posedge clk) begin
    if (!rst_n) begin
      wr_ptr <= 0;
      tap1 <= 0;
      tap2 <= 0;
    end else if (din_valid) begin
      // Capture the current pixels at row 1 and 2 (given the wr_ptr index)
      tap1 <= line1_mem[wr_ptr];
      tap2 <= line2_mem[wr_ptr];

      line1_mem[wr_ptr] <= din; // write the current newest pixel into the first buffer
      line2_mem[wr_ptr] <= tap1; // propagate old line1 tap into second buffer
      
      // advance the ptr address (mod img width)
      if (wr_ptr == IMG_WIDTH-1)
        wr_ptr <= 0;
      else
        wr_ptr <= wr_ptr + 1;

    end
  end

  // Outputs --> current cycle taps + current pixel
  // use these 3 pixels to build 1 col in window
  assign row1 = tap2;
  assign row0 = tap1;
  assign pixel = din;

endmodule