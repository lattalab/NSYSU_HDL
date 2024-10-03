`timescale 1ns/10ps
`define CYCLE 50.0
`define DATA_NUM 100
`define FILE_A "./a.txt"
`define FILE_B "./b.txt"
`define FILE_D "./d.txt"
module testbench();
    integer file_a, file_b, file_d;

    reg CLK = 0;
    reg RST = 0;
    reg [31:0] data_a [0:`DATA_NUM - 1];
    reg [31:0] data_b [0:`DATA_NUM - 1];
    reg signed [31:0] input_a;
    reg signed [31:0] input_b;
    wire signed [32:0] outcome;
    reg signed [32:0] answer;

    FXP_adder test_module( .a(input_a), .b(input_b), .d(outcome));

    //Post_sim 使用，在nc_post_syn.f 中define SDF_FILE與SDF_FILE路徑
    `ifdef SDF_FILE
        initial $sdf_annotate(`SDF_FILE, test_module);
    `endif
    // 設定clock訊號
    always begin #(`CYCLE/2) CLK = ~CLK; end

    integer i, flag=0, error=0, garbage;

    //將file_a與file_b中資料存入data_a與data_b陣列中
    initial begin
        file_a = $fopen(    `FILE_A , "r");
        file_b = $fopen(    `FILE_B , "r");
        file_d = $fopen(    `FILE_D , "w");
        for (i = 0; i < `DATA_NUM; i=i+1)
        begin
            garbage = $fscanf(file_a, "%X", data_a[i]);
            garbage = $fscanf(file_b, "%X", data_b[i]);
        end
    end

    initial begin
        //File approach
        $display("----------------------------------------\n");
        $display("-          FXP_ADDER_USE_FILE          -\n");
        $display("----------------------------------------\n");

        CLK = 0;
        RST = 1;
        #(`CYCLE*2);
        RST = 0;
        for(i=0; i<`DATA_NUM; i=i+1)
        begin
            input_a = data_a[i];
            input_b = data_b[i];
            answer = $signed(input_a) + $signed(input_b);
            #(`CYCLE);
            $fwrite(file_d, "%X\n", outcome);
            if(answer !== outcome)
            begin
                error = error+1;
                if(1 || flag==0)
                begin
                    $display("----------------------------------------\n");
                    $display("Output error at #%d\n", i+1);
                    $display("The input A is    : %X\n", input_a);
                    $display("The input B is    : %X\n", input_b);
                    $display("The answer is     : %X\n", answer);
                    $display("Your module output: %X\n", outcome);
                    $display("----------------------------------------\n");
                    flag = 1;
                end //if flag
            end //if
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

        //random approach
        $display("----------------------------------------\n");
        $display("-         FXP_ADDER_USE_RANDOM         -\n");
        $display("----------------------------------------\n");

        flag=0;
        error=0;
        CLK = 0;
        RST = 1;
        #(`CYCLE*2);
        RST = 0;
        for(i=0; i<`DATA_NUM; i=i+1)
        begin
            input_a = $random%(2**31);
            input_b = $random%(2**31);
            answer = $signed(input_a) + $signed(input_b);
            #(`CYCLE);
            if(answer !== outcome)
            begin
                error = error+1;
                if(1 || flag==0)
                begin
                        $display("----------------------------------------\n");
                        $display("Output error at #%d\n", i+1);
                        $display("The input A is    : %X\n", input_a);
                        $display("The input B is    : %X\n", input_b);
                        $display("The answer is     : %X\n", answer);
                        $display("Your module output: %X\n", outcome);
                        $display("----------------------------------------\n");
                        flag = 1;
                end //if flag
            end //if
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
    
    $fclose(file_a);
    $fclose(file_b);
    $fclose(file_d);    
    $finish;
    end

endmodule