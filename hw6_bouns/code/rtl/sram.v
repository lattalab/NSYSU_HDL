module SRAM
#(
    parameter DATASIZE = 32,    // data width
    parameter ADDRSIZE = 10,    // address width in bits
    parameter DEPTH = 1024     // depth of SRAM
) 
(
    input clk,
    input WEN,
    input CEN,  // active low
    input [DATASIZE-1:0] WDATA,
    input WVALID,
    input [ADDRSIZE-1:0] ADDR,
    output reg [DATASIZE-1:0] RDATA,
    output wire out_valid
);
    parameter HIGH_Z = 2'b00, STANDBY = 2'b01, READ = 2'b10, WRITE = 2'b11;
    reg [1:0] c_state, n_state;
    reg [DATASIZE-1:0] mem [0:DEPTH-1]; // SRAM memory

    always @(posedge clk) begin
        c_state <= n_state;
    end

    // op_code_sram
    wire [1:0] op_code_sram;
    assign op_code_sram = {CEN, WEN};

    always @(*) begin
        case (op_code_sram)
            2'b1x: n_state = STANDBY;
            2'b01: n_state = READ;
            2'b00: n_state = WRITE;
            default: n_state = STANDBY;
        endcase
    end

    // w_data -> SRAM[Address]
    always @(*) begin
        if (c_state == WRITE && WVALID) begin
            mem[ADDR] <= WDATA;
        end
    end

    // SRAM[Address] -> out_data
    always @(*) begin
        case(c_state)
            READ: RDATA = (out_valid) ? mem[ADDR] : 32'd0;
            default: RDATA = 32'd0;
        endcase
    end

    assign out_valid = (c_state == READ);

endmodule