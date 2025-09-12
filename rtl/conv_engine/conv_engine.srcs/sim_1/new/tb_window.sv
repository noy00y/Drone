module window_tb;

    // local test params
    localparam int K = 3;
    localparam int PIXEL_W = 8;
    localparam int IMG_H = 5;
    localparam int IMG_W = 6;

    // DUT I/O:
    logic                   clk = 0;
    logic                   rst_n = 0;
    always #5 clk = ~clk // 100 mhz

    logic                   valid_in;
    logic [PIXEL_W-1:0]     pixel_in;
    logic                   valid_out;
    logic                   busy;
    logic [K*K*PIXEL_W-1:0] data_out;

    // Init DUT
    window #(
        .K (K),
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


endmodule