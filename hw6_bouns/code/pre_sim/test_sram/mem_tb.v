`timescale 1ns/1ps
`define period          10

module mem_tb();

    reg clk;
    reg CEN;
    reg WEN;
    reg [11:0] A;
    reg [15:0] D;
    wire [15:0] Q;

    // instantiate the TOP module
    TOP top(
        .clk(clk),
        .CEN(CEN),
        .WEN(WEN),
        .A(A),
        .D(D),
        .Q(Q)
    );

    initial begin
        clk = 0;
        CEN = 0;
        #(`period);
        // Write test
        WEN = 0;
        A = 12'b0;
        D = 16'b0;
        #(`period);
        A = 12'b1;
        D = 16'b1;
        #(`period);
        A = 12'b10;
        D = 16'b10;
        #(`period);
        // READ test
        WEN = 1;
        A = 12'b0;
        #(`period);
        A = 12'b1;
        #(`period);
        A = 12'b10;
        #(`period);

        $finish;
    end

    always begin    // Clock generator
		#(`period/2.0) clk <= ~clk;
	end

endmodule