`timescale 1ns / 1ps

module testbench;
    //----------------------------------------------------------------------------
    // Parameters (must match your conv_engine)
    //----------------------------------------------------------------------------
    localparam PIXEL_W   = 8;
    localparam IC        = 3;
    localparam OC        = 8;
    localparam K         = 3;
    localparam WEIGHT_W  = 16;
    localparam ACC_W     = 32;
    localparam PARALLEL  = 4;
    localparam IMG_WIDTH = 8;   // full-size image

    //----------------------------------------------------------------------------
    // DUT I/Os
    //----------------------------------------------------------------------------
    reg                          clk;
    reg                          rst_n;
    reg                          pixel_valid;
    wire                         pixel_ready;
    reg  [IC*PIXEL_W-1:0]        pixel_in;
    wire                         conv_valid;
    reg                          conv_ready;
    wire [PARALLEL*ACC_W-1:0]    conv_data_out;

    //----------------------------------------------------------------------------
    // Instantiate DUT
    //----------------------------------------------------------------------------
    conv_engine #(
        .PIXEL_W  (PIXEL_W),
        .IC       (IC),
        .OC       (OC),
        .K        (K),
        .WEIGHT_W (WEIGHT_W),
        .ACC_W    (ACC_W),
        .PARALLEL (PARALLEL),
        .IMG_WIDTH(IMG_WIDTH)
    ) dut (
        .clk          (clk),
        .rst_n        (rst_n),

        .pixel_valid  (pixel_valid),
        .pixel_ready  (pixel_ready),
        .pixel_in     (pixel_in),

        .conv_valid   (conv_valid),
        .conv_ready   (conv_ready),
        .conv_data_out(conv_data_out)
    );

    integer r, c;

    //----------------------------------------------------------------------------
    // Clock gen: 100 MHz → 10 ns period
    //----------------------------------------------------------------------------
    initial begin
        rst_n = 0;
        #20;                // two full clock cycles
        rst_n = 1;
        repeat (2) @(posedge clk); 
        // now start stimulus
    end

    //----------------------------------------------------------------------------
    // Stimulus: reset, then stream a 224×224 image with dummy pixels
    //----------------------------------------------------------------------------
    initial begin
        rst_n       = 0;
        pixel_valid = 0;
        pixel_in    = 0;
        conv_ready  = 1;
        #20;
        rst_n = 1;

        // stream each of the 224×224 pixels
        for (r = 0; r < IMG_WIDTH; r = r + 1) begin
            for (c = 0; c < IMG_WIDTH; c = c + 1) begin
                @(posedge clk);
                // dummy RGB triple; you can replace with any pattern
                pixel_in    = {8'd1, 8'd2, 8'd3};
                pixel_valid = 1;
            end
        end

        // deassert valid, wait a bit, then finish
        @(posedge clk);
        pixel_valid = 0;
        #100;
        $finish;
    end
endmodule
