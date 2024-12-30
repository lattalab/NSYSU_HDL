module TOP (clk, CEN, WEN, A, D, Q);
input clk;
input CEN;
input WEN;
input [11:0] A;
input [35:0] D;
output [35:0] Q;

    sram_img_r mem(
        .douta(Q),
        .clka(clk),
        .ena(~CEN),
        .wea(~WEN),
        .addra(A),
        .dina(D)
        );

endmodule