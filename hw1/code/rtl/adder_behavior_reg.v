module adder_behavior_reg (s_behavior_reg, co_behavior_reg, a, b, ci, clk);
parameter width = 32;
output [width-1:0] s_behavior_reg;
output co_behavior_reg;
input [width-1:0] a, b;
input ci;
input clk;

reg co_temp;
reg [width-1:0] s_temp;

always @ (*)
begin
    {co_temp, s_temp[width-1:0]} = a + b + ci;
end

genvar i;
generate
for (i = 0; i < width; i = i + 1) begin : ff_loop
    D_FF ff_sum(.q(s_behavior_reg[i]), .d(s_temp[i]), .clk(clk));  // 檢查這裡的 s 和 s_temp 是向量且正確索引
end
endgenerate


D_FF ff_co(.q(co_behavior_reg), .d(co_temp), .clk(clk));

endmodule