module adder_dataflow (s_dataflow, co_dataflow, a, b, ci);
parameter width = 32;
output [width-1:0] s_dataflow;
output co_dataflow;
input [width-1:0] a, b;
input ci;

assign {co_dataflow, s_dataflow} = a + b + ci;

endmodule