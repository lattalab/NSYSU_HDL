`timescale 1ns/10ps
`define CYCLE 50.0
`define DATA_NUM 10

module testbench();

    // define module ports
    reg CLK = 0;
    reg ci;
    reg signed [31:0] input_a;
    reg signed [31:0] input_b;
    wire signed [31:0] outcome_structure;
    wire signed [31:0] outcome_dataflow;
    wire signed [31:0] outcome_behavior;
    wire signed [31:0] outcome_structure_reg;
    wire signed [31:0] outcome_dataflow_reg;
    wire signed [31:0] outcome_behavior_reg;
    wire co_structure, co_dataflow, co_behavior, co_structure_reg, co_dataflow_reg, co_behavior_reg;
    // store data
    reg signed [31:0] answer;

    // 設定clock訊號
    always begin #(`CYCLE/2) CLK = ~CLK; end

    // create 6 instances
    adder_structure structure(.s_structure(outcome_structure), .co_structure(co_structure), .a(input_a), .b(input_b), .ci(ci));
    adder_dataflow dataflow(.s_dataflow(outcome_dataflow), .co_dataflow(co_dataflow), .a(input_a), .b(input_b), .ci(ci));
    adder_behavior behavior(.s_behavior(outcome_behavior), .co_behavior(co_behavior), .a(input_a), .b(input_b), .ci(ci));
    adder_structure_reg structure_reg(.s_structure_reg(outcome_structure_reg), .co_structure_reg(co_structure_reg), .a(input_a), .b(input_b), .ci(ci), .clk(CLK));
    adder_dataflow_reg dataflow_reg(.s_dataflow_reg(outcome_dataflow_reg), .co_dataflow_reg(co_dataflow_reg), .a(input_a), .b(input_b), .ci(ci), .clk(CLK));
    adder_behavior_reg behavior_reg(.s_behavior_reg(outcome_behavior_reg), .co_behavior_reg(co_behavior_reg), .a(input_a), .b(input_b), .ci(ci), .clk(CLK));

    // adder_behavior
    initial $sdf_annotate("/home/B103040045_HDL/hw1/code/gatelevel/adder_behavior_delay/adder_behavior_delay.sdf", behavior);
    // adder_dataflow
    initial $sdf_annotate("/home/B103040045_HDL/hw1/code/gatelevel/adder_dataflow_delay/adder_dataflow_delay.sdf", dataflow);
    // adder_structure
    initial $sdf_annotate("/home/B103040045_HDL/hw1/code/gatelevel/adder_structure_delay/adder_structure_delay.sdf", structure);
    // adder_behavior_reg
    initial $sdf_annotate("/home/B103040045_HDL/hw1/code/gatelevel/adder_behavior_reg_delay/adder_behavior_reg_delay.sdf", behavior_reg);
    // adder_dataflow_reg
    initial $sdf_annotate("/home/B103040045_HDL/hw1/code/gatelevel/adder_dataflow_reg_delay/adder_dataflow_reg_delay.sdf", dataflow_reg);
    // adder_structure_reg
    initial $sdf_annotate("/home/B103040045_HDL/hw1/code/gatelevel/adder_structure_reg_delay/adder_structure_reg_delay.sdf", structure_reg);


    integer i, flag=0, error=0, garbage;

    initial begin
        //random approach
        $display("----------------------------------------\n");
        $display("-            ADDER_USE_RANDOM          -\n");
        $display("----------------------------------------\n");

        flag=0;
        error=0;
        CLK = 0;
        #(`CYCLE*2);
        for(i=0; i<`DATA_NUM; i=i+1)
        begin
            // 強調32bit signed
            input_a = ($random)%(2**31);
            input_b = $random%(2**31);
            ci = $random%2;
            answer = $signed(input_a) + $signed(input_b) + ci;
            #(`CYCLE);
            case(1'b1)
                (answer !== outcome_behavior) : begin
                $display("Behavioral model output error at #%d", i+1);
                $display("Expected: %X, Got: %X\n", answer, outcome_behavior);
                error = error + 1;
                end
                (answer !== outcome_dataflow) : begin
                $display("Dataflow model output error at #%d", i+1);
                $display("Expected: %X, Got: %X\n", answer, outcome_dataflow);
                error = error + 1;
                end
                (answer !== outcome_structure) : begin
                    $display("Structural model output error at #%d", i+1);
                    $display("Expected: %X, Got: %X\n", answer, outcome_structure);
                    error = error + 1;
                end
                
                (answer !== outcome_behavior_reg) : begin
                    $display("Behavioral with reg model output error at #%d", i+1);
                    $display("Expected: %X, Got: %X\n", answer, outcome_behavior_reg);
                    error = error + 1;
                end
                
                (answer !== outcome_dataflow_reg) : begin
                    $display("Dataflow with reg model output error at #%d", i+1);
                    $display("Expected: %X, Got: %X\n", answer, outcome_dataflow_reg);
                    error = error + 1;
                end
                
                (answer !== outcome_structure_reg) : begin
                    $display("Structural with reg model output error at #%d", i+1);
                    $display("Expected: %X, Got: %X\n", answer, outcome_structure_reg);
                    error = error + 1;
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