module sobel_detecter(
    input wire clk,
    input wire rst,
    input wire [7:0] R,
    input wire [7:0] G,
    input wire [7:0] B,
    output [7:0] x,
    output [7:0] y,
    output wire enable
);
    wire [7:0] Y;
    intensity_converter intensity_converter(
        .R(R),
        .G(G),
        .B(B),
        .Y(Y)
    );
    wire [7:0] R0, R1, R2, R3, R4, R5, R6, R7, R8;
    LineBuffer LineBuffer(
        .clk(clk),
        .rst(rst),
        .Y(Y),
        .R0(R0),
        .R1(R1),
        .R2(R2),
        .R3(R3),
        .R4(R4),
        .R5(R5),
        .R6(R6),
        .R7(R7),
        .R8(R8),
        .enable(enable)
    );
    sobel_conv sobel_conv(
        .R0(R0),
        .R1(R1),
        .R2(R2),
        .R3(R3),
        .R4(R4),
        .R5(R5),
        .R6(R6),
        .R7(R7),
        .R8(R8),
        .x(x),
        .y(y)
    );

endmodule

module intensity_converter(
    input wire [7:0] R,
    input wire [7:0] G,
    input wire [7:0] B,
    output wire [7:0] Y
);
    wire [7:0] red_sum, green_sum, blue_sum;
    // shift-add and subtract to get the intensity
    assign red_sum = (R >> 2) + (R >> 5);
    assign green_sum = (G >> 1) + (G >> 4);
    assign blue_sum = (B >> 3) - (B >> 6);
    assign Y = red_sum + green_sum + blue_sum; 
endmodule

module LineBuffer (
    input wire clk,
    input wire rst,
    input wire [7:0] Y,
    output wire [7:0] R0, R1, R2, R3, R4, R5, R6, R7, R8,
    output wire enable
);
    reg [7:0] buffer [0:966]; // 2*482 + 3
    integer i; // use for loop
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin  // initialize the buffer
            for (i = 0; i < 967; i = i + 1) begin
                buffer[i] <= 0;
            end
        end else begin
            // push in the new pixel
            for (i = 0; i < 966; i = i + 1) begin
                buffer[i] <= buffer[i + 1]; // shift the buffer
            end
            buffer[966] <= Y;
        end
    end

    // Assign R0~R8
    assign R0 = buffer[0];
    assign R1 = buffer[1];
    assign R2 = buffer[2];
    assign R3 = buffer[482];
    assign R4 = buffer[483];
    assign R5 = buffer[484];
    assign R6 = buffer[964];
    assign R7 = buffer[965];
    assign R8 = buffer[966];

    // generate enable signal
    generate_enable gen_en(.clk(clk), .rst(rst), .enable(enable));

endmodule

module generate_enable (
    input wire clk,
    input wire rst,
    output reg enable
);
    // Counter Register
    reg [9:0] counter; // 0~482

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 0;
            enable <= 0;
        end else begin
            if (counter == 482) begin
                counter <= 0; // 重設計數器
            end else begin
                counter <= counter + 1;
            end

            // 停用的條件：481 或 482
            enable <= (counter != 481 && counter != 482);
        end
    end
endmodule

module sobel_conv(
    input [7:0] R0, R1, R2, R3, R4, R5, R6, R7, R8,
    output [7:0] x,
    output [7:0] y
);
    // compared the result with threshold
    // threshold = 100
    parameter signed [15:0] THRESHOLD = 100;

    // sobel mask
    reg signed [15:0] gx, gy;

    always @(*) begin
        // Sobel 運算 (水平和垂直方向的梯度)
        gx = R2 - R0 - 2*R3 + 2*R5 - R6 + R8;
        gy = R0 + 2*R1 + R2 - R6 - 2*R7 - R8;

        // 絕對值處理（避免負數影響門檻比較）
        if (gx < 0) gx = -gx;
        if (gy < 0) gy = -gy;
    end

    // 門檻比較，超過門檻值設為 255（白），否則為 0（黑）
    assign x = (gx > THRESHOLD) ? 8'd255 : 8'd0;
    assign y = (gy > THRESHOLD) ? 8'd255 : 8'd0;

endmodule