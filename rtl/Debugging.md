Pipeline Stages `always_ff @(posedge) begin`:

- Stage 0 `if (valid_in) begin`: 
    - write pixel to current bank at col_idx
    - perform bank rotation if needed using the eol
    - important: propagate the current col_idx to the later stages since we wanna make sure we working on the same indexes (eg. col_idx_s0, row_idx_s0, eol_s0, first_window_s0, b_p1_s0, etc...)

- Stage 1 `if (v1) begin`: Issue Reads
    - raddr <= col_idx_s0
    - register which banks we would like to read into (for next stage) `b_p1_s1 <= b_p1_s0`
   
- Stage 2 `if (v2) begin`: Capture the BRAM outputs
    - reg the line buffer reads `LB#_q <= LB#[raddr]`
    - Our combinational mux will recieve the now **correct** regs in the next posedge cc}

- Stage 3 `if (v3) begin`: Produce pixels + shift
    - In this stage we will be updating our shift regs using pix_r1/r2 + pixel_in as well as shifting the regs themselves
    - this is done in this stage since it takes 1 cc to register the LB#_q. Cuz despite the combinational mux always spitting out pix_r1/r2's, its only the cc after where its a legit value
    - The update to the shift regs will be registered next cycle

- Stage 4: `if (v4) begin`: Window output
    - at this stage our incomplete/complete window is registered
    - if col and row idx are >= 2 we can start sending them downstream