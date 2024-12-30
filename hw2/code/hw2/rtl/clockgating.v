module D_FF_gating #(parameter DATA_WIDTH = 16)
(
    output reg [DATA_WIDTH-1:0] q,
    input [DATA_WIDTH-1:0] d,
    input clk, reset, en
);
    wire gclk;
    assign gclk = clk & en;
    always @( posedge gclk or posedge reset ) begin
        if (reset) q <= 0;
        else q <= d;
    end
endmodule

module stage1_gating (input [7:0] a, b, c, input s, clk, reset, output [7:0] result);

    reg [7:0] temp;

    always @(*) begin
        if (s == 1) begin
            temp = a + b;
        end
        else begin
            temp = a - b;
        end
    end

    wire en;
    assign en = (c == 0) ? 0 : 1;
    D_FF_gating #(.DATA_WIDTH(8)) dff1 (result, temp, clk, reset, en);   // use 8-bit D_FF

endmodule

module stage2_gating (input [7:0] addsub, c, input clk, reset, output [15:0] result);

    wire [15:0] final;
    assign final = addsub * c;

    wire en;
    assign en = (c == 0) ? 0 : 1;
    D_FF_gating #(.DATA_WIDTH(16)) dff2 (result, final, clk, reset, en);   // use 16-bit D_FF
    
endmodule

module hw2_clockgating (input [7:0] a, b, c, input s, clk, reset, output [15:0] d);

    wire [7:0] addsub;

    stage1_gating s1 (a, b, c, s, clk, reset, addsub);
    stage2_gating s2 (addsub, c, clk, reset, d);

endmodule