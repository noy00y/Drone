`timescale 1ns / 1ps

// Two-line buffer for one channel (depth = image width)
module line_buffer #(
  parameter DEPTH = 224,
  parameter DW    = 8
)(
  input  wire           clk,
  input  wire           rst_n,
  input  wire [DW-1:0]  din,
  input  wire           din_valid,
  output wire [DW-1:0]  row0,      // oldest line
  output wire [DW-1:0]  row1,      // middle line
  output wire [DW-1:0]  pixel      // newest line
);
  // simple dual-RAM or shift-register structures go here
  
  
  // (For brevity, details omitted-standard FIFO-based line buffering.)
endmodule