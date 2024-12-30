`timescale 1ns/10ps
`define CYCLE 50.0
`define DATA_NUM 200
`define DATA_WIDTH 8

module testbench();

    // define module ports
    reg CLK = 0;
    reg input_reset;
    reg input_s;
    reg [`DATA_WIDTH-1:0] input_a;
    reg [`DATA_WIDTH-1:0] input_b;
    reg [`DATA_WIDTH-1:0] input_c;
    wire [2*`DATA_WIDTH-1:0] output_d;

    // store data
    reg [7:0] addsub;
    reg [2*`DATA_WIDTH-1:0] answer;

    // 設定clock訊號
    always begin #(`CYCLE/2) CLK = ~CLK; end

    // create 6 instances
    hw2_clockgating pipe(
        .a(input_a),
        .b(input_b),
        .c(input_c),
        .s(input_s),
        .reset(input_reset),
        .clk(CLK),
        .d(output_d)
    );

    integer i, flag=0, error=0, temp, seed;

    initial begin
        //random approach
        $display("-----------------------------------------------\n");
        $display("-              pipeline_USE_RANDOM            -\n");
        $display("-----------------------------------------------\n");

        flag=0;
        error=0;
        CLK = 0;
        #(`CYCLE);
        seed = $get_initial_random_seed();

        for(i=0; i<`DATA_NUM; i=i+1)
        begin
            // 強調8bit signed
            input_a = $random(seed)% 256 - 128;
            input_b = $random(seed)% 256 - 128;
            // Swap values if input_a is less than input_b
            if (input_a < input_b) begin
                temp = input_a;
                input_a = input_b;
                input_b = temp;
            end

            // Set input_c to 0 for half data
            if (i < `DATA_NUM/2) begin
                input_c = 0;
            end
            else begin
                input_c = $random(seed)% 256 - 128;
            end

            // Set input_reset when every 20 cycles
            input_reset = (i%20 == 0) ? 1 : 0;

            input_s = $random(seed)%2;

            // Calculate the answer
            addsub = (input_s==1) ? (input_a + input_b) : (input_a - input_b);
            answer = addsub * input_c;
            
            #(`CYCLE*2);
            $display("Testdata #%d: a=%d, b=%d, c=%d, reset=%d, s=%d, answer=%d", i+1, input_a, input_b, input_c, input_reset, input_s, output_d);
            case(1'b1)
                (input_reset == 1'b1) : begin
                    if (output_d !== 0) begin
                        $display("Pipeline model output error at #%d", i+1);
                        $display("(Reset) Expected: 0, Got: %d\n", output_d);
                        error = error + 1;
                        flag=1;
                    end
                end

                (answer !== output_d) : begin
                $display("Pipeline model output error at #%d", i+1);
                $display("Expected: %d, Got: %d\n", answer, output_d);
                error = error + 1;
                flag=1;
                end
                
                default: begin
                    // 一切正常，沒有錯誤
                end
            endcase //if
        end //for
        if(flag==1)//if wrong
        begin
            $display("Total %4d error in %4d testdata.\n", error, i);
            $display("----------------------------------------\n");
        end//if
        else
        begin//if right
            $display("----------------------------------------\n");
            $display("All testdata correct!\n");
            $display("----------------------------------------\n");
        end//else
    
    $finish;
    end

endmodule