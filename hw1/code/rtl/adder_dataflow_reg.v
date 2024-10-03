module adder_dataflow_reg (s_dataflow_reg, co_dataflow_reg, a, b, ci, clk);
parameter width = 32;
output [width-1:0] s_dataflow_reg;
output co_dataflow_reg;
input [width-1:0] a, b;
input ci;
input clk;

wire co_temp;
wire [width-1:0] s_temp;

assign {co_temp, s_temp[width-1:0]} = a + b + ci;

genvar i;
generate
for (i = 0; i < width; i = i + 1) begin : generate_block
    D_FF ff_sum(.q(s_dataflow_reg[i]), .d(s_temp[i]), .clk(clk));  // 檢查這裡的 s 和 s_temp 是向量且正確索引
end
endgenerate

D_FF ff_co(.q(co_dataflow_reg), .d(co_temp), .clk(clk));

endmodule