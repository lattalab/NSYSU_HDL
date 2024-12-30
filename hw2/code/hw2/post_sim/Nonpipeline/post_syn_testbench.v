`timescale 1ns/10ps
`define CYCLE 50.0
`define DATA_NUM 200
`define DATA_WIDTH 8

module testbench();

    // define module ports
    reg CLK = 0;
    reg input_s;
    reg [`DATA_WIDTH-1:0] input_a;
    reg [`DATA_WIDTH-1:0] input_b;
    reg [`DATA_WIDTH-1:0] input_c;
    wire [2*`DATA_WIDTH-1:0] output_d;

    // store data
    reg [2*`DATA_WIDTH-1:0] answer;
    // 設定clock訊號
    always begin #(`CYCLE/2) CLK = ~CLK; end

    // create 6 instances
    hw2_nonpipe nonpipe(
        .a(input_a),
        .b(input_b),
        .c(input_c),
        .s(input_s),
        .d(output_d)
    );

    // generate sdf file
    initial $sdf_annotate("/home/B103040045_HDL/hw2/gatelevel/Nonpipeling_delay/hw2_Nonpipeline_syn.sdf", nonpipe);

    integer i, flag=0, error=0, temp, seed;

    initial begin
        //random approach
        $display("-----------------------------------------------\n");
        $display("-            Non_pipeline_USE_RANDOM          -\n");
        $display("-----------------------------------------------\n");

        flag=0;
        error=0;
        CLK = 0;
        #(`CYCLE*2);
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

            input_s = $random(seed)%2;
            answer = (input_s==1) ? (input_a + input_b) * input_c : (input_a - input_b) * input_c;

            $display("Testdata #%d: a=%d, b=%d, c=%d, s=%d, answer=%d", i+1, input_a, input_b, input_c, input_s, output_d);
            #(`CYCLE);

            case(1'b1)
                (answer !== output_d) : begin
                $display("Nonpipeline model output error at #%d", i+1);
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