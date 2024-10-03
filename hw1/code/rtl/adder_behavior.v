module adder_behavior (s_behavior, co_behavior, a, b, ci);
parameter width = 32;
output [width-1:0] s_behavior;
output co_behavior;
input [width-1:0] a, b;
input ci;
reg [width-1:0] s_behavior;
reg co_behavior;

always @ (*)
begin
    {co_behavior, s_behavior[width-1:0]} = a + b + ci;
end

endmodule