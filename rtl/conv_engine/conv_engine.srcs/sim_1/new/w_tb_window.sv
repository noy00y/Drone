`timescale 1ns/1ps

module w_tb_window;
    // Parameters
    localparam int K       = 3;
    localparam int PIXEL_W = 8;
    localparam int IMG_H   = 5;   
    localparam int IMG_W   = 5;

    // DUT signals
    logic clk, rst_n;
    logic valid_in;
    logic [PIXEL_W-1:0] pixel_in;
    logic valid_out;
    logic busy;
    logic [K*K*PIXEL_W-1:0] data_out;

    // Instantiate DUT
    window #(
        .K(K),
        .PIXEL_W(PIXEL_W),
        .IMG_H(IMG_H),
        .IMG_W(IMG_W)
    ) dut (
        .clk,
        .rst_n,
        .valid_in,
        .pixel_in,
        .valid_out,
        .busy,
        .data_out
    );

    // Clock gen
    initial clk = 0;
    always #5 clk = ~clk; // 100 MHz

    int row, col;

    // Stimulus
    initial begin
    // Dump waves
    $dumpfile("tb_window.vcd");
    $dumpvars(0, tb_window);

    // Reset
    rst_n = 0;
    valid_in = 0;
    pixel_in = 0;
    repeat (4) @(posedge clk);
    rst_n = 1;

    // Stream pixels
    for (row = 0; row < IMG_H; row++) begin
        for (col = 0; col < IMG_W; col++) begin
            @(posedge clk);
            valid_in <= 1;
            pixel_in <= row*10 + col; //
        end
    end

    @(posedge clk);
    valid_in <= 0;

    repeat (20) @(posedge clk);

    $finish;
    end

    always_ff @(posedge clk) begin
        if (rst_n) begin
            $display("T=%0t | vin=%0b pin=%0d | vout=%0b dout=%h | col=%0d row=%0d | bcurr=%0d b_p1_s0=%0d b_p2_s0=%0d",
            $time, valid_in, pixel_in, valid_out, data_out,
            dut.col_idx, dut.row_idx, dut.b_curr, dut.b_p1_s0, dut.b_p2_s0);
        end
    end

endmodule
