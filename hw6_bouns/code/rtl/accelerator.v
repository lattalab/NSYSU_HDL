`include "/home/B103040045_HDL/hw6/code/rtl/sram.v"

module PE
#(
    parameter PIXELSIZE = 9,    // pixel width
    parameter KERNELSIZE = 9,    // kernel size
    parameter DATASIZE = 16,    // weight and bias width
    parameter ADDRSIZE = 12,    // address width in bits
    parameter DEPTH = 4096     // depth of SRAM
)
(
    input wire clk, rst,
    input signed [8:0] img_data,  // 56*56 with each 9bits image data
    input [ADDRSIZE-1:0] img_addr,
    input signed [15:0] weight1, weight2, weight3, weight4,
    input [ADDRSIZE-1:0] weight_addr,
    input signed [15:0] bias1, bias2, bias3, bias4,
    input [ADDRSIZE-1:0] bias_addr,
    input write_enable,  // enable = 0 when writing data, 1 when reading data
    input write_en_w_and_b,  // enable = 0 when writing weight and bias, 1 when reading weight and bias
    input conv_write_en,  // enable = 0 when writing partial sum, 1 when reading partial sum
    input [ADDRSIZE-1:0] conv_idx,
    output signed [35:0] conv_rdata1, conv_rdata2, conv_rdata3, conv_rdata4,  // partial sum
    output signed [15:0] Bias1, Bias2, Bias3, Bias4,  // bias
    output enable   // denote valid convolution result
);
    wire WEN_img, WEN_W, WEN_BIAS;
    assign WEN_img = write_enable;
    assign WEN_W = write_en_w_and_b;
    assign WEN_BIAS = write_en_w_and_b;
    // store data in SRAM
    wire [PIXELSIZE-1:0] rdata;
    wire out_valid;

    SRAM #(
        .DATASIZE(PIXELSIZE),
        .ADDRSIZE(ADDRSIZE),
        .DEPTH(DEPTH)
    ) sram_img_r (
        .clk(clk),
        .WEN(WEN_img),
        .CEN(1'b0),
        .WDATA(img_data),
        .WVALID(1'b1),
        .ADDR(img_addr),
        .RDATA(rdata),
        .out_valid(out_valid)
    );

    // store weight and bias in SRAM
    wire [DATASIZE-1:0] rdata_w1, rdata_w2, rdata_w3, rdata_w4, rdata_b1, rdata_b2, rdata_b3, rdata_b4;
    wire out_valid_w1, out_valid_w2, out_valid_w3, out_valid_w4, out_valid_b1, out_valid_b2, out_valid_b3, out_valid_b4;
    SRAM #(
        .DATASIZE(DATASIZE),
        .ADDRSIZE(ADDRSIZE),
        .DEPTH(DEPTH)
    ) sram_weight1 (
        .clk(clk),
        .WEN(WEN_W),
        .CEN(1'b0),
        .WDATA(weight1),
        .WVALID(1'b1),
        .ADDR(weight_addr),
        .RDATA(rdata_w1),
        .out_valid(out_valid_w1)
    );
    SRAM #(
        .DATASIZE(DATASIZE),
        .ADDRSIZE(ADDRSIZE),
        .DEPTH(DEPTH)
    ) sram_weight2 (
        .clk(clk),
        .WEN(WEN_W),
        .CEN(1'b0),
        .WDATA(weight2),
        .WVALID(1'b1),
        .ADDR(weight_addr),
        .RDATA(rdata_w2),
        .out_valid(out_valid_w2)
    );
    SRAM #(
        .DATASIZE(DATASIZE),
        .ADDRSIZE(ADDRSIZE),
        .DEPTH(DEPTH)
    ) sram_weight3 (
        .clk(clk),
        .WEN(WEN_W),
        .CEN(1'b0),
        .WDATA(weight3),
        .WVALID(1'b1),
        .ADDR(weight_addr),
        .RDATA(rdata_w3),
        .out_valid(out_valid_w3)
    );
    SRAM #(
        .DATASIZE(DATASIZE),
        .ADDRSIZE(ADDRSIZE),
        .DEPTH(DEPTH)
    ) sram_weight4 (
        .clk(clk),
        .WEN(WEN_W),
        .CEN(1'b0),
        .WDATA(weight4),
        .WVALID(1'b1),
        .ADDR(weight_addr),
        .RDATA(rdata_w4),
        .out_valid(out_valid_w4)
    );
    SRAM #(
        .DATASIZE(DATASIZE),
        .ADDRSIZE(ADDRSIZE),
        .DEPTH(DEPTH)
    ) sram_bias1 (
        .clk(clk),
        .WEN(WEN_BIAS),
        .CEN(1'b0),
        .WDATA(bias1),
        .WVALID(1'b1),
        .ADDR(bias_addr),
        .RDATA(Bias1),
        .out_valid(out_valid_b1)
    );
    SRAM #(
        .DATASIZE(DATASIZE),
        .ADDRSIZE(ADDRSIZE),
        .DEPTH(DEPTH)
    ) sram_bias2 (
        .clk(clk),
        .WEN(WEN_BIAS),
        .CEN(1'b0),
        .WDATA(bias2),
        .WVALID(1'b1),
        .ADDR(bias_addr),
        .RDATA(Bias2),
        .out_valid(out_valid_b2)
    );
    SRAM #(
        .DATASIZE(DATASIZE),
        .ADDRSIZE(ADDRSIZE),
        .DEPTH(DEPTH)
    ) sram_bias3 (
        .clk(clk),
        .WEN(WEN_BIAS),
        .CEN(1'b0),
        .WDATA(bias3),
        .WVALID(1'b1),
        .ADDR(bias_addr),
        .RDATA(Bias3),
        .out_valid(out_valid_b3)
    );
    SRAM #(
        .DATASIZE(DATASIZE),
        .ADDRSIZE(ADDRSIZE),
        .DEPTH(DEPTH)
    ) sram_bias4 (
        .clk(clk),
        .WEN(WEN_BIAS),
        .CEN(1'b0),
        .WDATA(bias4),
        .WVALID(1'b1),
        .ADDR(bias_addr),
        .RDATA(Bias4),
        .out_valid(out_valid_b4)
    );

    // store weight and bias in register
    reg signed [15:0] kernel1 [0:KERNELSIZE-1];
    reg signed [15:0] kernel2 [0:KERNELSIZE-1];
    reg signed [15:0] kernel3 [0:KERNELSIZE-1];
    reg signed [15:0] kernel4 [0:KERNELSIZE-1];
    integer i, counter;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < KERNELSIZE; i = i + 1) begin
                kernel1[i] <= 0;
                kernel2[i] <= 0;
                kernel3[i] <= 0;
                kernel4[i] <= 0;
            end
            counter <= 0;
        end else begin
            case ({out_valid_w1, out_valid_w2, out_valid_w3, out_valid_w4})
                4'b1111: begin
                    kernel1[counter] <= rdata_w1;
                    kernel2[counter] <= rdata_w2;
                    kernel3[counter] <= rdata_w3;
                    kernel4[counter] <= rdata_w4;
                    counter <= counter + 1;

                    if (counter == 8) begin
                        counter <= 0;
                    end
                end
                default: begin
                    counter <= 0;
                end
            endcase
        end
    end

    // Linebuffer
    wire signed [8:0] R0, R1, R2, R3, R4, R5, R6, R7, R8;
    wire lb_enable;
    LineBuffer lb (
        .clk(clk),
        .rst(rst),
        .Y(rdata),
        .in_valid(out_valid),
        .R0(R0), .R1(R1), .R2(R2),
        .R3(R3), .R4(R4), .R5(R5),
        .R6(R6), .R7(R7), .R8(R8),
        .enable(lb_enable)
    );
    assign enable = lb_enable;

    // Convolution
    wire signed [35:0]  gx1, gx2, gx3, gx4;
    convolution conv1 (
        .clk(clk),
        .rst(rst),
        .R0(R0), .R1(R1), .R2(R2),
        .R3(R3), .R4(R4), .R5(R5),
        .R6(R6), .R7(R7), .R8(R8),
        .w0(kernel1[0]), .w1(kernel1[1]), .w2(kernel1[2]),
        .w3(kernel1[3]), .w4(kernel1[4]), .w5(kernel1[5]),
        .w6(kernel1[6]), .w7(kernel1[7]), .w8(kernel1[8]),
        .gx(gx1)
    );
    convolution conv2 (
        .clk(clk),
        .rst(rst),
        .R0(R0), .R1(R1), .R2(R2),
        .R3(R3), .R4(R4), .R5(R5),
        .R6(R6), .R7(R7), .R8(R8),
        .w0(kernel2[0]), .w1(kernel2[1]), .w2(kernel2[2]),
        .w3(kernel2[3]), .w4(kernel2[4]), .w5(kernel2[5]),
        .w6(kernel2[6]), .w7(kernel2[7]), .w8(kernel2[8]),
        .gx(gx2)
    );
    convolution conv3 (
        .clk(clk),
        .rst(rst),
        .R0(R0), .R1(R1), .R2(R2),
        .R3(R3), .R4(R4), .R5(R5),
        .R6(R6), .R7(R7), .R8(R8),
        .w0(kernel3[0]), .w1(kernel3[1]), .w2(kernel3[2]),
        .w3(kernel3[3]), .w4(kernel3[4]), .w5(kernel3[5]),
        .w6(kernel3[6]), .w7(kernel3[7]), .w8(kernel3[8]),
        .gx(gx3)
    );
    convolution conv4 (
        .clk(clk),
        .rst(rst),
        .R0(R0), .R1(R1), .R2(R2),
        .R3(R3), .R4(R4), .R5(R5),
        .R6(R6), .R7(R7), .R8(R8),
        .w0(kernel4[0]), .w1(kernel4[1]), .w2(kernel4[2]),
        .w3(kernel4[3]), .w4(kernel4[4]), .w5(kernel4[5]),
        .w6(kernel4[6]), .w7(kernel4[7]), .w8(kernel4[8]),
        .gx(gx4)
    );

    // store conv_result in the SRAM (partial sum calculation)
    // wire [35:0] conv_rdata1, conv_rdata2, conv_rdata3, conv_rdata4;
    wire conv_out_valid1, conv_out_valid2, conv_out_valid3, conv_out_valid4;
    reg wvalid;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            wvalid <= 0;
        end else if (lb_enable) begin
            wvalid <= 1;
        end
    end

    SRAM #(
        .DATASIZE(36),
        .ADDRSIZE(ADDRSIZE),
        .DEPTH(DEPTH)
    ) sram_conv1 (
        .clk(clk),
        .WEN(conv_write_en),
        .CEN(1'b0),
        .WDATA(gx1),
        .WVALID(wvalid),
        .ADDR(conv_idx),
        .RDATA(conv_rdata1),
        .out_valid(conv_out_valid1)
    );
    SRAM #(
        .DATASIZE(36),
        .ADDRSIZE(ADDRSIZE),
        .DEPTH(DEPTH)
    ) sram_conv2 (
        .clk(clk),
        .WEN(conv_write_en),
        .CEN(1'b0),
        .WDATA(gx2),
        .WVALID(wvalid),
        .ADDR(conv_idx),
        .RDATA(conv_rdata2),
        .out_valid(conv_out_valid2)
    );
    SRAM #(
        .DATASIZE(36),
        .ADDRSIZE(ADDRSIZE),
        .DEPTH(DEPTH)
    ) sram_conv3 (
        .clk(clk),
        .WEN(conv_write_en),
        .CEN(1'b0),
        .WDATA(gx3),
        .WVALID(wvalid),
        .ADDR(conv_idx),
        .RDATA(conv_rdata3),
        .out_valid(conv_out_valid3)
    );
    SRAM #(
        .DATASIZE(36),
        .ADDRSIZE(ADDRSIZE),
        .DEPTH(DEPTH)
    ) sram_conv4 (
        .clk(clk),
        .WEN(conv_write_en),
        .CEN(1'b0),
        .WDATA(gx4),
        .WVALID(wvalid),
        .ADDR(conv_idx),
        .RDATA(conv_rdata4),
        .out_valid(conv_out_valid4)
    );

endmodule

module LineBuffer (
    input wire clk,
    input wire rst,
    input signed [8:0] Y, // new pixel
    input in_valid, // valid pixel
    output reg signed [8:0] R0, R1, R2, // First row output
    output reg signed [8:0] R3, R4, R5, // Second row output
    output reg signed [8:0] R6, R7, R8, // Third row output
    output reg enable           // Whether convolution is valid
);

    // Define buffer size
    reg signed [8:0] buffer [0:118]; // 58*2 + 3


    integer i, count=0;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 119; i = i + 1) begin
                buffer[i] <= 0;
            end
            count <= 0;
        end else if (in_valid) begin
            for (i = 0; i < 118; i = i + 1) begin
                buffer[i] <= buffer[i + 1];
            end
            buffer[118] <= Y;

            if (count >= 117) begin
                if (((count % 58) == 0) | (((count-1) % 58) == 0)) begin
                    enable <= 0;
                end else begin
                    enable <= 1;
                end 
            end
            count <= count + 1;
        end
    end

    // Output convolution window
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            R0 <= 0; R1 <= 0; R2 <= 0;
            R3 <= 0; R4 <= 0; R5 <= 0;
            R6 <= 0; R7 <= 0; R8 <= 0;
        end else begin
            R0 <= $signed(buffer[0]);
            R1 <= $signed(buffer[1]);
            R2 <= $signed(buffer[2]);
            R3 <= $signed(buffer[58]);
            R4 <= $signed(buffer[59]);
            R5 <= $signed(buffer[60]);
            R6 <= $signed(buffer[116]);
            R7 <= $signed(buffer[117]);
            R8 <= $signed(buffer[118]);
        end
    end

    // Convolution enable signal
    // assign enable = (count >= 57 || count == 0) ? 0 : 1; // skip two cycles

endmodule

module convolution (
    input clk, rst,
    input signed [8:0] R0, R1, R2, R3, R4, R5, R6, R7, R8,     // 3x3 pixel values
    input signed [15:0] w0, w1, w2, w3, w4, w5, w6, w7, w8,    // convolution kernel weights
    output reg signed [35:0] gx                                // convolution result
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            gx <= $signed(36'b0);
        end else begin
            gx <= $signed(R0 * w0) + $signed(R1 * w1) + $signed(R2 * w2) +
                  $signed(R3 * w3) + $signed(R4 * w4) + $signed(R5 * w5) +
                  $signed(R6 * w6) + $signed(R7 * w7) + $signed(R8 * w8);
        end
    end
endmodule