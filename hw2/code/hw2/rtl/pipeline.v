`timescale 1ns/10ps
module D_FF #(parameter DATA_WIDTH = 16)
(
    output reg [DATA_WIDTH-1:0] q,
    input [DATA_WIDTH-1:0] d,
    input clk, reset
);
    always @( posedge clk or posedge reset ) begin
        if (reset) q <= 0;
        else q <= d;
    end
endmodule

module stage1 (input [7:0] a, b, input s, clk, reset, output [7:0] result);

    reg [7:0] temp;

    always @(*) begin
        if (s == 1) begin
            temp = a + b;
        end
        else begin
            temp = a - b;
        end
    end

    D_FF #(.DATA_WIDTH(8)) dff1 (result, temp, clk, reset);   // use 8-bit D_FF

endmodule

module stage2(input [7:0] addsub, c, input clk, reset, output [15:0] result);

    wire [15:0] final;
    assign final = addsub * c;

    D_FF #(.DATA_WIDTH(16)) dff2 (result, final, clk, reset);   // use 16-bit D_FF

endmodule

module hw2_pipe (input [7:0] a, b, c, input s, clk, reset, output [15:0] d);

    wire [7:0] addsub;

    stage1 s1 (
        .a(a),
        .b(b),
        .s(s),
        .clk(clk),
        .reset(reset),
        .result(addsub)
    );

    stage2 s2 (
        .addsub(addsub),
        .c(c),
        .clk(clk),
        .reset(reset),
        .result(d)
    );

endmodule