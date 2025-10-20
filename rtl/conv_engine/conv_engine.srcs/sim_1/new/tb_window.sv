module window_tb;

    // local test params
    localparam int K = 3;
    localparam int PIXEL_W = 8;
    localparam int IMG_H = 5;
    localparam int IMG_W = 5;

    // DUT I/O:
    logic                   clk = 0;
    logic                   rst_n = 0;
    always #5 clk = ~clk; // 100 mhz

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

    // Rst
    initial begin
        valid_in = 0;
        pixel_in = '0;
        repeat (3) @(posedge clk);
        rst_n = 1;
    end

    // Test img:
    logic [PIXEL_W-1:0] img [0:IMG_H-1][0:IMG_W-1];

    initial begin
        static int unsigned idx = 0;
        for (int r = 0; r < IMG_H; r++) begin
            for (int c = 0; c < IMG_W; c++) begin
            img[r][c] = idx[PIXEL_W-1:0]; // auto-truncates to PIXEL_W bits
            idx++;
            end
        end
    end

    // Feed piels into DUT:
    initial begin
        @(posedge rst_n);
        for (int r = 0; r < IMG_H; r++) begin
            for (int c = 0; c < IMG_W; c++) begin
                @(posedge clk);
                valid_in <= 1'b1;
                pixel_in <= img[r][c];
            end
        end

        @(posedge clk);
        pixel_in = '0;
        valid_in = 1'b0; 

        // Drain pipe:
        repeat (20) @(posedge clk);
        $finish;
    end

    // DUT output:
    always_ff @(posedge clk) begin
        if (valid_out) begin
            $display("[%0t] window produced: 0x%0d", $time, data_out);
        end
    end

endmodule