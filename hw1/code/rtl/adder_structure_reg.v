module D_FF (q, d, clk);
output q;
input d, clk;
reg q;
always @( posedge clk)
    q <= d;
endmodule

module adder_structure_reg (s_structure_reg, co_structure_reg, a, b, ci, clk);
parameter width = 32;
output [width-1:0] s_structure_reg;
output co_structure_reg;
input [width-1:0] a, b;
input ci;
input clk;

wire [width:0] c;
assign c[0] = ci;
wire co_temp;
wire [width-1:0] s_temp;

genvar i;
generate
    for (i =0; i < 32; i =i+1)
    begin : generate_block
        FA fa(.sum(s_temp[i]), .c_out(c[i+1]), .a(a[i]), .b(b[i]), .c_in(c[i]));
    end
endgenerate
assign co_temp = c[width];

genvar i;
generate
for (i = 0; i < width; i = i + 1) begin : generate_block2
    D_FF ff_sum(.q(s_structure_reg[i]), .d(s_temp[i]), .clk(clk));  // 檢查這裡的 s 和 s_temp 是向量且正確索引
end
endgenerate
D_FF ff_co(.q(co_structure_reg), .d(co_temp), .clk(clk));

endmodule