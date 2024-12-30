module PE(
    input  clk,
    input  rst,
    input signed [8:0] in1, in2, in3, in4,    // 4 respective inputs
    input signed [15:0] w0, w1, w2, w3, w4, w5, w6, w7, w8,    //kernel 1 weights
    input signed [15:0] w9, w10, w11, w12, w13, w14, w15, w16, w17,     //kernel 2 weights
    input signed [15:0] w18, w19, w20, w21, w22, w23, w24, w25, w26,    //kernel 3 weights
    input signed [15:0] w27, w28, w29, w30, w31, w32, w33, w34, w35,    //kernel 4 weights
    output enable,    // enable signal for valid convolution
    output signed [35:0] pixel    // output pixel value
);
    // add Linebuffer
    wire signed [8:0] R0, R1, R2, R3, R4, R5, R6, R7, R8;
    wire signed [8:0] R9, R10, R11, R12, R13, R14, R15, R16, R17;
    wire signed [8:0] R18, R19, R20, R21, R22, R23, R24, R25, R26;
    wire signed [8:0] R27, R28, R29, R30, R31, R32, R33, R34, R35;
    wire en1, en2, en3, en4;
    LineBuffer LineBuffer1(
        .clk(clk),
        .rst(rst),
        .Y(in1),
        .R0(R0),
        .R1(R1),
        .R2(R2),
        .R3(R3),
        .R4(R4),
        .R5(R5),
        .R6(R6),
        .R7(R7),
        .R8(R8),
        .enable(en1)
    );
    LineBuffer LineBuffer2(
        .clk(clk),
        .rst(rst),
        .Y(in2),
        .R0(R9),
        .R1(R10),
        .R2(R11),
        .R3(R12),
        .R4(R13),
        .R5(R14),
        .R6(R15),
        .R7(R16),
        .R8(R17),
        .enable(en2)
    );
    LineBuffer LineBuffer3(
        .clk(clk),
        .rst(rst),
        .Y(in3),
        .R0(R18),
        .R1(R19),
        .R2(R20),
        .R3(R21),
        .R4(R22),
        .R5(R23),
        .R6(R24),
        .R7(R25),
        .R8(R26),
        .enable(en3)
    );
    LineBuffer LineBuffer4(
        .clk(clk),
        .rst(rst),
        .Y(in4),
        .R0(R27),
        .R1(R28),
        .R2(R29),
        .R3(R30),
        .R4(R31),
        .R5(R32),
        .R6(R33),
        .R7(R34),
        .R8(R35),
        .enable(en4)
    );

    // doing convolution
    wire [35:0] gx1, gx2, gx3, gx4;
    convolution convolution1(
        .clk(clk), .rst(rst),
        .R0(R0), .R1(R1), .R2(R2), .R3(R3), .R4(R4), .R5(R5), .R6(R6), .R7(R7), .R8(R8),
        .w0(w0), .w1(w1), .w2(w2), .w3(w3), .w4(w4), .w5(w5), .w6(w6), .w7(w7), .w8(w8),
        .gx(gx1)
    );
    convolution convolution2(
        .clk(clk), .rst(rst),
        .R0(R9), .R1(R10), .R2(R11), .R3(R12), .R4(R13), .R5(R14), .R6(R15), .R7(R16), .R8(R17),
        .w0(w9), .w1(w10), .w2(w11), .w3(w12), .w4(w13), .w5(w14), .w6(w15), .w7(w16), .w8(w17),
        .gx(gx2)
    );
    convolution convolution3(
        .clk(clk), .rst(rst),
        .R0(R18), .R1(R19), .R2(R20), .R3(R21), .R4(R22), .R5(R23), .R6(R24), .R7(R25), .R8(R26),
        .w0(w18), .w1(w19), .w2(w20), .w3(w21), .w4(w22), .w5(w23), .w6(w24), .w7(w25), .w8(w26),
        .gx(gx3)
    );
    convolution convolution4(
        .clk(clk), .rst(rst),
        .R0(R27), .R1(R28), .R2(R29), .R3(R30), .R4(R31), .R5(R32), .R6(R33), .R7(R34), .R8(R35),
        .w0(w27), .w1(w28), .w2(w29), .w3(w30), .w4(w31), .w5(w32), .w6(w33), .w7(w34), .w8(w35),
        .gx(gx4)
    );

    // MAT
    MAT MAT1(
        .clk(clk), .rst(rst),
        .gx1(gx1),
        .gx2(gx2),
        .gx3(gx3),
        .gx4(gx4),
        .sum(pixel)
    );
    assign enable = en1 & en2 & en3 & en4;

endmodule

module LineBuffer (
    input wire clk,
    input wire rst,
    input wire [8:0] Y, // new pixel
    output reg signed [8:0] R0, R1, R2, // First row output
    output reg signed [8:0] R3, R4, R5, // Second row output
    output reg signed [8:0] R6, R7, R8, // Third row output
    output enable           // Whether convolution is valid
);

    // Define two FIFOs (depth 226) and a register (for current row)
    reg [8:0] fifo_row1 [0:225];
    reg [8:0] fifo_row2 [0:225];
    reg [8:0] current_row [0:225];

    // Row counter and column counter
    reg [8:0] col_counter; // 0~225
    reg [8:0] row_counter; // 0~225

    integer i, count;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset all registers and FIFOs
            col_counter <= 0;
            row_counter <= 0;
            for (i = 0; i < 226; i = i + 1) begin
                fifo_row1[i] <= 0;
                fifo_row2[i] <= 0;
                current_row[i] <= 0;
            end
        end else begin
            // Update current row pixel
            current_row[col_counter] <= Y;

            // After the last column of each row is completed, perform FIFO shift
            if (col_counter == 225) begin
                // Transfer pixels of the current row to the second row FIFO
                for (i = 0; i < 226; i = i + 1) begin
                    fifo_row2[i] <= current_row[i];
                end
                // Transfer second row FIFO to first row FIFO
                for (i = 0; i < 226; i = i + 1) begin
                    fifo_row1[i] <= fifo_row2[i];
                end
                // Update row counter
                row_counter <= row_counter + 1;
                col_counter <= 0;
            end else begin
                col_counter <= col_counter + 1;
            end
        end
    end

    // Output convolution window
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            R0 <= 0; R1 <= 0; R2 <= 0;
            R3 <= 0; R4 <= 0; R5 <= 0;
            R6 <= 0; R7 <= 0; R8 <= 0;
            count <= 0;
        end else if ((row_counter >= 2 && col_counter >= 2)) begin
            R0 <= $signed(fifo_row1[col_counter - 2]);
            R1 <= $signed(fifo_row1[col_counter - 1]);
            R2 <= $signed(fifo_row1[col_counter]);
            R3 <= $signed(fifo_row2[col_counter - 2]);
            R4 <= $signed(fifo_row2[col_counter - 1]);
            R5 <= $signed(fifo_row2[col_counter]);
            R6 <= $signed(current_row[col_counter - 2]);
            R7 <= $signed(current_row[col_counter - 1]);
            R8 <= $signed(current_row[col_counter]);
            if (count >= 225) begin
                count <= 0;
            end else begin
                count <= count + 1;
            end
        end else begin
            count <= 0;
        end
    end

    // Convolution enable signal
    assign enable = (count >= 225 || count == 0) ? 0 : 1; // skip two cycles

endmodule

// module generate_enable (
//     input wire clk,
//     input wire rst,
//     output enable
// );
//     // Counter Register
//     reg [9:0] counter; // 0~226

//     always @(posedge clk or posedge rst) begin
//         if (rst) begin
//             counter <= 0;
//             enable <= 0;
//         end else begin
//             if (counter == 226) begin
//                 counter <= 0; // 重設計數器
//             end else begin
//                 counter <= counter + 1;
//             end

//             // 停用的條件：225 或 226
//             enable <= (counter != 225 && counter != 226);
//         end
//     end
// endmodule

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


module MAT (
    input clk, rst,
    input [35:0] gx1, gx2, gx3, gx4,  // four sets of convolution results
    output reg signed [35:0] sum             // accumulated result
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            sum <= $signed(36'b0);
        end else begin
            sum <= $signed(gx1) + $signed(gx2) + $signed(gx3) + $signed(gx4);
        end
    end
endmodule
