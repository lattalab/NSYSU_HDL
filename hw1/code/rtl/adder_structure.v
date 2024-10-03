module FA(output sum, output c_out,
          input a, input b, input c_in);

wire s1, c1, s2;
xor xor1(s1, a, b);
xor xor2(sum, s1, c_in);
and and1(c1, a, b);
and and2(s2, s1, c_in);
or or1(c_out, c1, s2);

endmodule

module adder_structure (s_structure, co_structure, a, b, ci);
parameter width = 32;
output [width-1:0] s_structure;
output co_structure;
input [width-1:0] a, b;
input ci;

wire [width:0] c;
assign c[0] = ci;

genvar i;
generate
    for (i =0; i < 32; i =i+1)
    begin : generate_block
        FA fa(.sum(s_structure[i]), .c_out(c[i+1]), .a(a[i]), .b(b[i]), .c_in(c[i]));
    end
endgenerate
assign co_structure = c[width];

endmodule