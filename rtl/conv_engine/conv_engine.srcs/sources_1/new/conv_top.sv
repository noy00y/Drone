`timescale 1ns / 1ps

module conv_engine #(
  parameter PIXEL_W    = 8,
  parameter IC         = 3,
  parameter OC         = 8,
  parameter K          = 3,
  parameter WEIGHT_W   = 16,
  parameter ACC_W      = 32,
  parameter PARALLEL   = 4,    // PEs per cycle
  parameter IMG_WIDTH  = 224
)(
  input  wire                      clk,
  input  wire                      rst_n,
  // Pixel stream in
  input  wire                      pixel_valid,
  output wire                      pixel_ready,
  input  wire [IC*PIXEL_W-1:0]     pixel_in,
  // Convolution stream out
  output wire                      conv_valid,
  input  wire                      conv_ready,
  output wire [PARALLEL*ACC_W-1:0] conv_data_out
);

  // back-pressure: always ready for simplicity
  assign pixel_ready = 1'b1;

  // State bit to select weight groups 0-3 vs 4-7
  reg state;
  always @(posedge clk) if (!rst_n) state <= 0; else if (pixel_valid) state <= ~state;

  // Instantiate 3× line_buffers + window_gens, one per channel
  wire [PIXEL_W-1:0] row0    [0:IC-1], row1    [0:IC-1], pixel   [0:IC-1];
  wire [IC-1:0]      win_valid;
  wire [PIXEL_W*9-1:0] window  [0:IC-1];

  genvar ch;
  generate
    for (ch = 0; ch < IC; ch = ch + 1) begin
      line_buffer #(.DEPTH(IMG_WIDTH), .DW(PIXEL_W))
        lb (
          .clk(clk), .rst_n(rst_n),
          .din(pixel_in[PIXEL_W*ch +: PIXEL_W]),
          .din_valid(pixel_valid),
          .row0(row0[ch]), .row1(row1[ch]), .pixel(pixel[ch])
        );

      window_gen #(.DW(PIXEL_W))
        wg (
          .clk(clk), .rst_n(rst_n),
          .row0(row0[ch]), .row1(row1[ch]), .pixel(pixel[ch]),
          .valid_in(pixel_valid),
          .window_out(window[ch]),
          .valid_out(win_valid[ch])
        );
    end
  endgenerate

  // Flatten all IC windows into one bus when all valid
  wire all_win_valid = &win_valid;
  wire [IC*9*PIXEL_W-1:0] flat_window = {
    window[0], window[1], window[2]
  };

  // Weight & bias ROM (hard-coded)
  //  weights_mem[channel][kernel_index] = 16-bit signed Q1.15
  localparam signed [WEIGHT_W-1:0] weights_mem [0:OC-1][0:IC*K*K-1] = '{
    // Channel 0
    '{ 16'h0001, 16'h0002, 16'h0003, 16'h0004, 16'h0005, 16'h0006, 16'h0007,
       16'h0008, 16'h0009, 16'h000A, 16'h000B, 16'h000C, 16'h000D, 16'h000E,
       16'h000F, 16'h0010, 16'h0011, 16'h0012, 16'h0013, 16'h0014, 16'h0015,
       16'h0016, 16'h0017, 16'h0018, 16'h0019, 16'h001A, 16'h001B },
    // Channel 1
    '{ 16'h0001, 16'h0002, 16'h0003, 16'h0004, 16'h0005, 16'h0006, 16'h0007,
       16'h0008, 16'h0009, 16'h000A, 16'h000B, 16'h000C, 16'h000D, 16'h000E,
       16'h000F, 16'h0010, 16'h0011, 16'h0012, 16'h0013, 16'h0014, 16'h0015,
       16'h0016, 16'h0017, 16'h0018, 16'h0019, 16'h001A, 16'h001B },
    // Channel 2
    '{ 16'h0001, 16'h0002, 16'h0003, 16'h0004, 16'h0005, 16'h0006, 16'h0007,
       16'h0008, 16'h0009, 16'h000A, 16'h000B, 16'h000C, 16'h000D, 16'h000E,
       16'h000F, 16'h0010, 16'h0011, 16'h0012, 16'h0013, 16'h0014, 16'h0015,
       16'h0016, 16'h0017, 16'h0018, 16'h0019, 16'h001A, 16'h001B },
    // Channel 3
    '{ 16'h0001, 16'h0002, 16'h0003, 16'h0004, 16'h0005, 16'h0006, 16'h0007,
       16'h0008, 16'h0009, 16'h000A, 16'h000B, 16'h000C, 16'h000D, 16'h000E,
       16'h000F, 16'h0010, 16'h0011, 16'h0012, 16'h0013, 16'h0014, 16'h0015,
       16'h0016, 16'h0017, 16'h0018, 16'h0019, 16'h001A, 16'h001B },
    // Channel 4
    '{ 16'h0001, 16'h0002, 16'h0003, 16'h0004, 16'h0005, 16'h0006, 16'h0007,
       16'h0008, 16'h0009, 16'h000A, 16'h000B, 16'h000C, 16'h000D, 16'h000E,
       16'h000F, 16'h0010, 16'h0011, 16'h0012, 16'h0013, 16'h0014, 16'h0015,
       16'h0016, 16'h0017, 16'h0018, 16'h0019, 16'h001A, 16'h001B },
    // Channel 5
    '{ 16'h0001, 16'h0002, 16'h0003, 16'h0004, 16'h0005, 16'h0006, 16'h0007,
       16'h0008, 16'h0009, 16'h000A, 16'h000B, 16'h000C, 16'h000D, 16'h000E,
       16'h000F, 16'h0010, 16'h0011, 16'h0012, 16'h0013, 16'h0014, 16'h0015,
       16'h0016, 16'h0017, 16'h0018, 16'h0019, 16'h001A, 16'h001B },
    // Channel 6
    '{ 16'h0001, 16'h0002, 16'h0003, 16'h0004, 16'h0005, 16'h0006, 16'h0007,
       16'h0008, 16'h0009, 16'h000A, 16'h000B, 16'h000C, 16'h000D, 16'h000E,
       16'h000F, 16'h0010, 16'h0011, 16'h0012, 16'h0013, 16'h0014, 16'h0015,
       16'h0016, 16'h0017, 16'h0018, 16'h0019, 16'h001A, 16'h001B },
    // Channel 7
    '{ 16'h0001, 16'h0002, 16'h0003, 16'h0004, 16'h0005, 16'h0006, 16'h0007,
       16'h0008, 16'h0009, 16'h000A, 16'h000B, 16'h000C, 16'h000D, 16'h000E,
       16'h000F, 16'h0010, 16'h0011, 16'h0012, 16'h0013, 16'h0014, 16'h0015,
       16'h0016, 16'h0017, 16'h0018, 16'h0019, 16'h001A, 16'h001B }
  };

  //  biases (one per output channel), signed Q1.15
  localparam signed [WEIGHT_W-1:0] bias_mem [0:OC-1] = '{
    16'h0001,  // bias  for channel 0
    16'h0002,  // bias  for channel 1
    16'h0003,  // bias  for channel 2
    16'h0004,  // bias  for channel 3
    16'h0005,  // bias  for channel 4
    16'h0006,  // bias  for channel 5
    16'h0007,  // bias  for channel 6
    16'h0008   // bias  for channel 7
  };

  // --------------------------------------------
  // 2) Select the 4 weights & biases for this cycle
  // --------------------------------------------
  wire [WEIGHT_W*IC*K*K-1:0]  pe_weight [0:PARALLEL-1];
  wire signed [WEIGHT_W-1:0]  pe_bias   [0:PARALLEL-1];

  genvar j;
  generate
    for (j = 0; j < PARALLEL; j = j + 1) begin
      // if state=0 → channels [0..3], if state=1 → channels [4..7]
      localparam integer base = (j + PARALLEL*0);
      localparam integer off  = (j + PARALLEL*1);
      assign pe_weight[j] = state 
                           ? { weights_mem[off][0],  weights_mem[off][1],  /*…*/ weights_mem[off][26] }
                           : { weights_mem[base][0], weights_mem[base][1], /*…*/ weights_mem[base][26] };
      assign pe_bias[j]   = state 
                           ? bias_mem[off]
                           : bias_mem[base];
    end
  endgenerate

  // Instantiate PARALLEL conv_PEs
  wire [PARALLEL-1:0] pe_valid;
  wire [PARALLEL-1:0] pe_ready;           // tied high inside conv_PE
  wire [PARALLEL*ACC_W-1:0] pe_data;

  genvar i;
  generate
    for (i = 0; i < PARALLEL; i = i + 1) begin
      conv_PE #(
        .K(K),
        .IC(IC),
        .PIXEL_W(PIXEL_W),
        .WEIGHT_W(WEIGHT_W),
        .ACC_W(ACC_W)
      ) pe (
        .clk(clk), .rst_n(rst_n),
        .valid_in(all_win_valid),
        .valid_out(pe_valid[i]),
        .window(flat_window),
        .weight(pe_weight[i]),  // select weight set
        .bias(pe_bias[i]),
        .data_out(pe_data[i*ACC_W +: ACC_W])
      );
    end
  endgenerate

  // Simple handshake & output packing
  reg conv_valid_r;
  always @(posedge clk) begin
    if (!rst_n) conv_valid_r <= 1'b0;
    else conv_valid_r <= &pe_valid;
  end

  assign conv_valid    = conv_valid_r;
  assign conv_data_out = pe_data;

endmodule
