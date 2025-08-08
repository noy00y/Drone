// -----------------------------------------------------------------------------
// Testbench : conv_PE_tb
// Three basic functional tests with display of results.
// -----------------------------------------------------------------------------
module conv_PE_tb;

  // === Parameters (match DUT defaults) ===
  localparam int K        = 3;
  localparam int IC       = 3;
  localparam int PIXEL_W  = 8;
  localparam int WEIGHT_W = 16;
  localparam int ACC_W    = 32;
  localparam int N        = IC*K*K; // 27 pixels

  // === Clock / reset generation ===
  logic clk = 0;
  logic rst_n = 0;
  always #5 clk = ~clk;              // 100 MHz clock (10 ns period)

  // === Stimulus & DUT connections ===
  logic                           valid_in;
  logic [N*PIXEL_W -1:0]          window;
  logic [N*WEIGHT_W-1:0]          weight;
  logic [WEIGHT_W-1:0]            bias;

  logic                           valid_out;
  logic                           busy;
  logic signed [ACC_W-1:0]        data_out;

  // Instantiate the DUT
  conv_PE #(
    .K(K), .IC(IC), .PIXEL_W(PIXEL_W),
    .WEIGHT_W(WEIGHT_W), .ACC_W(ACC_W)
  ) dut (
    .clk       (clk),
    .rst_n     (rst_n),
    .valid_in  (valid_in),
    .window    (window),
    .weight    (weight),
    .bias      (bias),
    .valid_out (valid_out),
    .busy      (busy),
    .data_out  (data_out)
  );

  // === Helper task to apply one test vector ===
  task automatic run_test (
    input string                    name,
    input logic [N*PIXEL_W -1:0]    win,
    input logic [N*WEIGHT_W-1:0]    wgt,
    input logic [WEIGHT_W-1:0]      b
  );
    begin
      @(posedge clk);
      window   <= win;
      weight   <= wgt;
      bias     <= b;
      valid_in <= 1'b1;
      @(posedge clk);
      valid_in <= 1'b0;
      // Wait for output
      wait (valid_out);
      $display("[%0t] %-12s : result = %0d (0x%0h)", $time, name, data_out, data_out);
      // Wait one more cycle to clear pipeline
      @(posedge clk);
    end
  endtask


  // === Initial sequence ===
  initial begin
    // Initial values
    valid_in = 0;
    window   = '0;
    weight   = '0;
    bias     = '0;

    // Hold reset for two cycles
    repeat (2) @(posedge clk);
    rst_n = 1;

    // ---------------------------------------------------------
    // TEST-1: All ones (pixel=1, weight=1, bias=0)
    // Expect output = 27×1×1 = 27
    // ---------------------------------------------------------
    run_test("ALL_ONES",
             {N{8'd1}},                // 27×1 pixels
             {N{16'sd1}},              // 27×1 weights
             16'sd0                    // bias 0
    );

    // ---------------------------------------------------------
    // TEST-2: Incrementing pixel window, weights=1, bias=0
    // Simple coverage of different pixel values.
    // ---------------------------------------------------------
    run_test("RAMP_PIXELS",
             {
               8'd27,8'd26,8'd25,8'd24,8'd23,8'd22,8'd21,8'd20,8'd19,
               8'd18,8'd17,8'd16,8'd15,8'd14,8'd13,8'd12,8'd11,8'd10,
               8'd9 ,8'd8 ,8'd7 ,8'd6 ,8'd5 ,8'd4 ,8'd3 ,8'd2 ,8'd1
             },
             {N{16'sd1}},
             16'sd0
    );

    // ---------------------------------------------------------
    // TEST-3: Zero pixels/weights, non-zero bias only
    // Bias chosen as 0.5 in Q1.15 (0x4000)
    // Expect output = bias
    // ---------------------------------------------------------
    run_test("BIAS_ONLY",
             {N{8'd0}},
             {N{16'sd0}},
             16'sh4000               // 0.5
    );


    // Finish simulation
    #50;
    $display("[%0t] All tests completed.", $time);
    $finish;
  end

endmodule
