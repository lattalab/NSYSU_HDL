`timescale 1ns / 1ns
`define period           10
`define img_max_size     224*224*3+54
`define padding_img_size 226*226
`define img_size         224*224
`define conv1_kernel_size 1728
`define conv2_kernel_size 36864

//---------------------------------------------------------------
//You need specify the path of image in/out
//---------------------------------------------------------------
`define path_img_in     "./cat224.bmp"
`define path_conv1_kernel     "./conv1_kernel_hex.txt"
`define path_conv1_bias     "./conv1_bias_hex.txt"
`define path_conv2_kernel     "./conv2_kernel_hex.txt"
`define path_conv2_bias     "./conv2_bias_hex.txt"

module HDL_HW5_TB;
    integer img_in;
    integer img_index;          // index of output image name
    integer file_handles[63:0]; // file handles to manage conv1 output files
    integer file_handles2[63:0]; // file handles to manage conv2 output files
    integer write_count = 0, write_w = 0, write_h =0;    // trace the index of writing pixel
    integer offset;
    integer img_h;
    integer img_w;
    integer idx, i, j, k, h, w;
    integer header;
    integer read_bytes;

    reg         clk;
    reg         rst;
    // memory
    reg  [7:0]  img_data [0:`img_max_size-1];
    reg  [8:0]  padding_img [2:0][0:`padding_img_size-1];
    reg  [7:0]  conv1_padding_img [3:0][0:`padding_img_size-1];
    reg signed [15:0] conv1_kernel_weight [0:`conv1_kernel_size-1];
    reg signed [15:0] conv1_bias_weight [0:63];
    reg signed [15:0] conv2_kernel_weight [0:`conv2_kernel_size-1];
    reg signed [15:0] conv2_bias_weight [0:63];
    // module ports
    reg signed [8:0]  in1, in2, in3, in4;
    reg  [15:0] w0, w1, w2, w3, w4, w5, w6, w7, w8;             //kernel set 1
    reg  [15:0] w9, w10, w11, w12, w13, w14, w15, w16, w17;     
    reg  [15:0] w18, w19, w20, w21, w22, w23, w24, w25, w26;    
    reg  [15:0] w27, w28, w29, w30, w31, w32, w33, w34, w35;   
    reg  [15:0] w36, w37, w38, w39, w40, w41, w42, w43, w44;     //kernel set 2
    reg  [15:0] w45, w46, w47, w48, w49, w50, w51, w52, w53;
    reg  [15:0] w54, w55, w56, w57, w58, w59, w60, w61, w62;
    reg  [15:0] w63, w64, w65, w66, w67, w68, w69, w70, w71;
    reg  [15:0] w72, w73, w74, w75, w76, w77, w78, w79, w80;    //kernel set 3
    reg  [15:0] w81, w82, w83, w84, w85, w86, w87, w88, w89; 
    reg  [15:0] w90, w91, w92, w93, w94, w95, w96, w97, w98;
    reg  [15:0] w99, w100, w101, w102, w103, w104, w105, w106, w107;
    reg  [15:0] w108, w109, w110, w111, w112, w113, w114, w115, w116; //kernel set 4
    reg  [15:0] w117, w118, w119, w120, w121, w122, w123, w124, w125;
    reg  [15:0] w126, w127, w128, w129, w130, w131, w132, w133, w134;
    reg  [15:0] w135, w136, w137, w138, w139, w140, w141, w142, w143;
    wire en1, en2, en3, en4;
    wire enable;
    wire signed [35:0] out1, out2, out3, out4;
    // other signals
    reg signed [35:0] sum1[0:15], sum2[0:15], sum3[0:15], sum4[0:15];
    reg signed [35:0] res1, res2, res3, res4;
    reg signed [35:0] relu_1, relu_2, relu_3, relu_4;
    // output filename
    reg  [8*40-1:0] filenames[0:63];
    reg  [8*40-1:0] conv2_filenames[0:63];

    //---------------------------------------------------------------
    //Insert your  verilog module at here

    PE PE1(
        .clk(clk), .rst(rst),
        .in1(in1), .in2(in2), .in3(in3), .in4(in4),
        .w0(w0), .w1(w1), .w2(w2), .w3(w3), .w4(w4), .w5(w5), .w6(w6), .w7(w7), .w8(w8),
        .w9(w9), .w10(w10), .w11(w11), .w12(w12), .w13(w13), .w14(w14), .w15(w15), .w16(w16), .w17(w17),
        .w18(w18), .w19(w19), .w20(w20), .w21(w21), .w22(w22), .w23(w23), .w24(w24), .w25(w25), .w26(w26),
        .w27(w27), .w28(w28), .w29(w29), .w30(w30), .w31(w31), .w32(w32), .w33(w33), .w34(w34), .w35(w35),
        .enable(en1),
        .pixel(out1)
    );
    PE PE2(
        .clk(clk), .rst(rst),
        .in1(in1), .in2(in2), .in3(in3), .in4(in4),
        .w0(w36), .w1(w37), .w2(w38), .w3(w39), .w4(w40), .w5(w41), .w6(w42), .w7(w43), .w8(w44),
        .w9(w45), .w10(w46), .w11(w47), .w12(w48), .w13(w49), .w14(w50), .w15(w51), .w16(w52), .w17(w53),
        .w18(w54), .w19(w55), .w20(w56), .w21(w57), .w22(w58), .w23(w59), .w24(w60), .w25(w61), .w26(w62),
        .w27(w63), .w28(w64), .w29(w65), .w30(w66), .w31(w67), .w32(w68), .w33(w69), .w34(w70), .w35(w71),
        .enable(en2),
        .pixel(out2)
    );
    PE PE3(
        .clk(clk), .rst(rst),
        .in1(in1), .in2(in2), .in3(in3), .in4(in4),
        .w0(w72), .w1(w73), .w2(w74), .w3(w75), .w4(w76), .w5(w77), .w6(w78), .w7(w79), .w8(w80),
        .w9(w81), .w10(w82), .w11(w83), .w12(w84), .w13(w85), .w14(w86), .w15(w87), .w16(w88), .w17(w89),
        .w18(w90), .w19(w91), .w20(w92), .w21(w93), .w22(w94), .w23(w95), .w24(w96), .w25(w97), .w26(w98),
        .w27(w99), .w28(w100), .w29(w101), .w30(w102), .w31(w103), .w32(w104), .w33(w105), .w34(w106), .w35(w107),
        .enable(en3),
        .pixel(out3)
    );
    PE PE4(
        .clk(clk), .rst(rst),
        .in1(in1), .in2(in2), .in3(in3), .in4(in4),
        .w0(w108), .w1(w109), .w2(w110), .w3(w111), .w4(w112), .w5(w113), .w6(w114), .w7(w115), .w8(w116),
        .w9(w117), .w10(w118), .w11(w119), .w12(w120), .w13(w121), .w14(w122), .w15(w123), .w16(w124), .w17(w125),
        .w18(w126), .w19(w127), .w20(w128), .w21(w129), .w22(w130), .w23(w131), .w24(w132), .w25(w133), .w26(w134),
        .w27(w135), .w28(w136), .w29(w137), .w30(w138), .w31(w139), .w32(w140), .w33(w141), .w34(w142), .w35(w143),
        .enable(en4),
        .pixel(out4)
    );
    //---------------------------------------------------------------------------------------Take out the color image(cat) of RGB----------------------------------------------
    assign enable = en1 & en2 & en3 & en4;
    //---------------------------------------------------------------------------------------Take out the color image(cat) of RGB----------------------------------------------
    //---------------------------------------------------------------
    //This initial block write the pixel 
    //---------------------------------------------------------------
    initial begin
        clk = 1'b1;

        // 1st layer
        for (i =0; i < 16; i=i+1) begin   // repeat for 64/4 times
            rst = 1'b1;
            #(2 * `period);
            rst = 1'b0;
            $display("Processing conv1 round %0d", i);
            // Open output files before writing header
            for (img_index = 0; img_index < 4; img_index = img_index + 1) begin
                file_handles[img_index + i*4] = $fopen(filenames[img_index + i*4], "wb"); // from previous initial block
                if (file_handles[img_index] == 0) begin
                    $display("Error opening file %0d", img_index);
                end

                // Write header of output bmp file 
                for(header = 0; header < 54; header = header + 1) begin
                    $fwrite(file_handles[img_index + i*4] , "%c", img_data[header]);
                end
            end
            #(`period);
            

            //loading after padding file to your module
            for(idx = 0; idx < `padding_img_size; idx = idx+1) begin

                // layer 1 only consist of 3 channels
                in4 <= $signed(8'd0); 
                in3 <= $signed(padding_img[2][idx]);
                in2 <= $signed(padding_img[1][idx]);
                in1 <= $signed(padding_img[0][idx]);

                // kernel weights
                {w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26} <= 
                {conv1_kernel_weight[0 + i * 108], conv1_kernel_weight[1 + i * 108], conv1_kernel_weight[2 + i * 108], conv1_kernel_weight[3 + i * 108], conv1_kernel_weight[4 + i * 108], conv1_kernel_weight[5 + i * 108], conv1_kernel_weight[6 + i * 108], conv1_kernel_weight[7 + i * 108], conv1_kernel_weight[8 + i * 108], 
                conv1_kernel_weight[9 + i * 108], conv1_kernel_weight[10 + i * 108], conv1_kernel_weight[11 + i * 108], conv1_kernel_weight[12 + i * 108], conv1_kernel_weight[13 + i * 108], conv1_kernel_weight[14 + i * 108], conv1_kernel_weight[15 + i * 108], conv1_kernel_weight[16 + i * 108], conv1_kernel_weight[17 + i * 108], 
                conv1_kernel_weight[18 + i * 108], conv1_kernel_weight[19 + i * 108], conv1_kernel_weight[20 + i * 108], conv1_kernel_weight[21 + i * 108], conv1_kernel_weight[22 + i * 108], conv1_kernel_weight[23 + i * 108], conv1_kernel_weight[24 + i * 108], conv1_kernel_weight[25 + i * 108], conv1_kernel_weight[26 + i * 108]};
                {w27, w28, w29, w30, w31, w32, w33, w34, w35} <= 
                {16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0};
                {w36, w37, w38, w39, w40, w41, w42, w43, w44, w45, w46, w47, w48, w49, w50, w51, w52, w53, w54, w55, w56, w57, w58, w59, w60, w61, w62} <= 
                {conv1_kernel_weight[27 + i * 108], conv1_kernel_weight[28 + i * 108], conv1_kernel_weight[29 + i * 108], conv1_kernel_weight[30 + i * 108], conv1_kernel_weight[31 + i * 108], conv1_kernel_weight[32 + i * 108], conv1_kernel_weight[33 + i * 108], conv1_kernel_weight[34 + i * 108], conv1_kernel_weight[35 + i * 108], 
                conv1_kernel_weight[36 + i * 108], conv1_kernel_weight[37 + i * 108], conv1_kernel_weight[38 + i * 108], conv1_kernel_weight[39 + i * 108], conv1_kernel_weight[40 + i * 108], conv1_kernel_weight[41 + i * 108], conv1_kernel_weight[42 + i * 108], conv1_kernel_weight[43 + i * 108], conv1_kernel_weight[44 + i * 108], 
                conv1_kernel_weight[45 + i * 108], conv1_kernel_weight[46 + i * 108], conv1_kernel_weight[47 + i * 108], conv1_kernel_weight[48 + i * 108], conv1_kernel_weight[49 + i * 108], conv1_kernel_weight[50 + i * 108], conv1_kernel_weight[51 + i * 108], conv1_kernel_weight[52 + i * 108], conv1_kernel_weight[53 + i * 108]};
                {w63, w64, w65, w66, w67, w68, w69, w70, w71} <= 
                {16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0};
                {w72, w73, w74, w75, w76, w77, w78, w79, w80, w81, w82, w83, w84, w85, w86, w87, w88, w89, w90, w91, w92, w93, w94, w95, w96, w97, w98} <= 
                {conv1_kernel_weight[54 + i * 108], conv1_kernel_weight[55 + i * 108], conv1_kernel_weight[56 + i * 108], conv1_kernel_weight[57 + i * 108], conv1_kernel_weight[58 + i * 108], conv1_kernel_weight[59 + i * 108], conv1_kernel_weight[60 + i * 108], conv1_kernel_weight[61 + i * 108], conv1_kernel_weight[62 + i * 108], 
                conv1_kernel_weight[63 + i * 108], conv1_kernel_weight[64 + i * 108], conv1_kernel_weight[65 + i * 108], conv1_kernel_weight[66 + i * 108], conv1_kernel_weight[67 + i * 108], conv1_kernel_weight[68 + i * 108], conv1_kernel_weight[69 + i * 108], conv1_kernel_weight[70 + i * 108], conv1_kernel_weight[71 + i * 108], 
                conv1_kernel_weight[72 + i * 108], conv1_kernel_weight[73 + i * 108], conv1_kernel_weight[74 + i * 108], conv1_kernel_weight[75 + i * 108], conv1_kernel_weight[76 + i * 108], conv1_kernel_weight[77 + i * 108], conv1_kernel_weight[78 + i * 108], conv1_kernel_weight[79 + i * 108], conv1_kernel_weight[80 + i * 108]};
                {w99, w100, w101, w102, w103, w104, w105, w106, w107} <= 
                {16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0};

                {w108, w109, w110, w111, w112, w113, w114, w115, w116, w117, w118, w119, w120, w121, w122, w123, w124, w125, w126, w127, w128, w129, w130, w131, w132, w133, w134} <= 
                {conv1_kernel_weight[81 + i * 108], conv1_kernel_weight[82 + i * 108], conv1_kernel_weight[83 + i * 108], conv1_kernel_weight[84 + i * 108], conv1_kernel_weight[85 + i * 108], conv1_kernel_weight[86 + i * 108], conv1_kernel_weight[87 + i * 108], conv1_kernel_weight[88 + i * 108], conv1_kernel_weight[89 + i * 108],
                conv1_kernel_weight[90 + i * 108], conv1_kernel_weight[91 + i * 108], conv1_kernel_weight[92 + i * 108], conv1_kernel_weight[93 + i * 108], conv1_kernel_weight[94 + i * 108], conv1_kernel_weight[95 + i * 108], conv1_kernel_weight[96 + i * 108], conv1_kernel_weight[97 + i * 108], conv1_kernel_weight[98 + i * 108], 
                conv1_kernel_weight[99 + i * 108], conv1_kernel_weight[100 + i * 108], conv1_kernel_weight[101 + i * 108], conv1_kernel_weight[102 + i * 108], conv1_kernel_weight[103 + i * 108], conv1_kernel_weight[104 + i * 108], conv1_kernel_weight[105 + i * 108], conv1_kernel_weight[106 + i * 108], conv1_kernel_weight[107 + i * 108]}; 
                {w135, w136, w137, w138, w139, w140, w141, w142, w143} <= 
                {16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0};

                #(`period);
            
                if (enable) begin
                    // doing bias addition and ReLU
                    res1 = out1 + conv1_bias_weight[0 + i*4]; relu_1 = (res1 > 0) ? res1 : 0;
                    res2 = out2 + conv1_bias_weight[1 + i*4]; relu_2 = (res2 > 0) ? res2 : 0;
                    res3 = out3 + conv1_bias_weight[2 + i*4]; relu_3 = (res3 > 0) ? res3 : 0;
                    res4 = out4 + conv1_bias_weight[3 + i*4]; relu_4 = (res4 > 0) ? res4 : 0;

                    // store the result to conv1_padding_img
                    conv1_padding_img[0][write_count+227] <= relu_1[11:4];
                    conv1_padding_img[1][write_count+227] <= relu_2[11:4];
                    conv1_padding_img[2][write_count+227] <= relu_3[11:4];
                    conv1_padding_img[3][write_count+227] <= relu_4[11:4];

                    write_count = write_count + 1;
                    if (write_count == 224) begin
                        write_count = write_count + 2;     // skip 2 pixels
                    end
                    
                    // $display("Processing conv1 round %0d, idx = %0d, h = %d, w = %d", i, idx, h , w);
                    // $display("out1 = %d, out2 = %d, out3 = %d, out4 = %d", out1[15:8], out2[15:8], out3[15:8], out4[15:8]);
                    // $display("conv1_padding_img = %d, %d, %d, %d", conv1_padding_img[0][h*226+w+227], conv1_padding_img[1][h*226+w+227], conv1_padding_img[2][h*226+w+227], conv1_padding_img[3][h*226+w+227]);
                    // $display("relu_1 = %d, relu_2 = %d, relu_3 = %d, relu_4 = %d", relu_1[15:8], relu_2[15:8], relu_3[15:8], relu_4[15:8]);
                    
                    //---------------------------------------------------------------
                    // write conv1 output to file
                    $fwrite(file_handles[0 + i*4], "%c%c%c", relu_1[11:4], relu_1[11:4], relu_1[11:4]); // 寫入 B, G, R
                    $fwrite(file_handles[1 + i*4], "%c%c%c", relu_2[11:4], relu_2[11:4], relu_2[11:4]); // 寫入 B, G, R
                    $fwrite(file_handles[2 + i*4], "%c%c%c", relu_3[11:4], relu_3[11:4], relu_3[11:4]); // 寫入 B, G, R
                    $fwrite(file_handles[3 + i*4], "%c%c%c", relu_4[11:4], relu_4[11:4], relu_4[11:4]); // 寫入 B, G, R
                end
                //---------------------------------------------------------------
            end     // generate 1st layer's 4 output map

            #(`period);
            // 2nd layer
            for (img_index = 0; img_index < 4; img_index = img_index + 1) begin
                $fclose(file_handles[img_index + i*4]); // finish write file
                // start to open output files for conv2
                file_handles2[img_index + i*4] = $fopen(conv2_filenames[img_index + i*4], "wb"); // from previous initial block
                if (file_handles2[img_index] == 0) begin
                    $display("Error opening file %0d", img_index);
                end

                // Write header of output bmp file 
                for(header = 0; header < 54; header = header + 1) begin
                    $fwrite(file_handles2[img_index + i*4] , "%c", img_data[header]);
                end
            end
            #(`period);

            $display("Processing conv2 round %0d", i);

            rst = 1'b1;
            #(2 * `period);
            rst = 1'b0;
            for (idx = 0; idx < `padding_img_size; idx = idx + 1) begin    // repeat for 64/4 times for travese every kernel
                for (j = 0; j < 16; j = j + 1) begin
                    // read from conv1_padding_img to calculate conv2 partial sum
                    in4 <= $signed({1'b0, conv1_padding_img[3][idx]});
                    in3 <= $signed({1'b0, conv1_padding_img[2][idx]});
                    in2 <= $signed({1'b0, conv1_padding_img[1][idx]});
                    in1 <= $signed({1'b0, conv1_padding_img[0][idx]});

                    // kernel weights
                    {w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35} <= 
                    {conv2_kernel_weight[0 + j*36], conv2_kernel_weight[1 + j*36], conv2_kernel_weight[2 + j*36], conv2_kernel_weight[3 + j*36], conv2_kernel_weight[4 + j*36], conv2_kernel_weight[5 + j*36], conv2_kernel_weight[6 + j*36], conv2_kernel_weight[7 + j*36], conv2_kernel_weight[8 + j*36], 
                    conv2_kernel_weight[9 + j*36], conv2_kernel_weight[10 + j*36], conv2_kernel_weight[11 + j*36], conv2_kernel_weight[12 + j*36], conv2_kernel_weight[13 + j*36], conv2_kernel_weight[14 + j*36], conv2_kernel_weight[15 + j*36], conv2_kernel_weight[16 + j*36], conv2_kernel_weight[17 + j*36], 
                    conv2_kernel_weight[18 + j*36], conv2_kernel_weight[19 + j*36], conv2_kernel_weight[20 + j*36], conv2_kernel_weight[21 + j*36], conv2_kernel_weight[22 + j*36], conv2_kernel_weight[23 + j*36], conv2_kernel_weight[24 + j*36], conv2_kernel_weight[25 + j*36], conv2_kernel_weight[26 + j*36], 
                    conv2_kernel_weight[27 + j*36], conv2_kernel_weight[28 + j*36], conv2_kernel_weight[29 + j*36], conv2_kernel_weight[30 + j*36], conv2_kernel_weight[31 + j*36], conv2_kernel_weight[32 + j*36], conv2_kernel_weight[33 + j*36], conv2_kernel_weight[34 + j*36], conv2_kernel_weight[35 + j*36]};
                    {w36, w37, w38, w39, w40, w41, w42, w43, w44, w45, w46, w47, w48, w49, w50, w51, w52, w53, w54, w55, w56, w57, w58, w59, w60, w61, w62, w63, w64, w65, w66, w67, w68, w69, w70, w71} <=
                    {conv2_kernel_weight[576 + j*36], conv2_kernel_weight[577 + j*36], conv2_kernel_weight[578 + j*36], conv2_kernel_weight[579 + j*36], conv2_kernel_weight[580 + j*36], conv2_kernel_weight[581 + j*36], conv2_kernel_weight[582 + j*36], conv2_kernel_weight[583 + j*36], conv2_kernel_weight[584 + j*36],
                    conv2_kernel_weight[585 + j*36], conv2_kernel_weight[586 + j*36], conv2_kernel_weight[587 + j*36], conv2_kernel_weight[588 + j*36], conv2_kernel_weight[589 + j*36], conv2_kernel_weight[590 + j*36], conv2_kernel_weight[591 + j*36], conv2_kernel_weight[592 + j*36], conv2_kernel_weight[593 + j*36],
                    conv2_kernel_weight[594 + j*36], conv2_kernel_weight[595 + j*36], conv2_kernel_weight[596 + j*36], conv2_kernel_weight[597 + j*36], conv2_kernel_weight[598 + j*36], conv2_kernel_weight[599 + j*36], conv2_kernel_weight[600 + j*36], conv2_kernel_weight[601 + j*36], conv2_kernel_weight[602 + j*36],
                    conv2_kernel_weight[603 + j*36], conv2_kernel_weight[604 + j*36], conv2_kernel_weight[605 + j*36], conv2_kernel_weight[606 + j*36], conv2_kernel_weight[607 + j*36], conv2_kernel_weight[608 + j*36], conv2_kernel_weight[609 + j*36], conv2_kernel_weight[610 + j*36], conv2_kernel_weight[611 + j*36]};
                    {w72, w73, w74, w75, w76, w77, w78, w79, w80, w81, w82, w83, w84, w85, w86, w87, w88, w89, w90, w91, w92, w93, w94, w95, w96, w97, w98, w99, w100, w101, w102, w103, w104, w105, w106, w107} <=
                    {conv2_kernel_weight[1152 + j*36], conv2_kernel_weight[1153 + j*36], conv2_kernel_weight[1154 + j*36], conv2_kernel_weight[1155 + j*36], conv2_kernel_weight[1156 + j*36], conv2_kernel_weight[1157 + j*36], conv2_kernel_weight[1158 + j*36], conv2_kernel_weight[1159 + j*36], conv2_kernel_weight[1160 + j*36],
                    conv2_kernel_weight[1161 + j*36], conv2_kernel_weight[1162 + j*36], conv2_kernel_weight[1163 + j*36], conv2_kernel_weight[1164 + j*36], conv2_kernel_weight[1165 + j*36], conv2_kernel_weight[1166 + j*36], conv2_kernel_weight[1167 + j*36], conv2_kernel_weight[1168 + j*36], conv2_kernel_weight[1169 + j*36],
                    conv2_kernel_weight[1170 + j*36], conv2_kernel_weight[1171 + j*36], conv2_kernel_weight[1172 + j*36], conv2_kernel_weight[1173 + j*36], conv2_kernel_weight[1174 + j*36], conv2_kernel_weight[1175 + j*36], conv2_kernel_weight[1176 + j*36], conv2_kernel_weight[1177 + j*36], conv2_kernel_weight[1178 + j*36],
                    conv2_kernel_weight[1179 + j*36], conv2_kernel_weight[1180 + j*36], conv2_kernel_weight[1181 + j*36], conv2_kernel_weight[1182 + j*36], conv2_kernel_weight[1183 + j*36], conv2_kernel_weight[1184 + j*36], conv2_kernel_weight[1185 + j*36], conv2_kernel_weight[1186 + j*36], conv2_kernel_weight[1187 + j*36]};
                    {w108, w109, w110, w111, w112, w113, w114, w115, w116, w117, w118, w119, w120, w121, w122, w123, w124, w125, w126, w127, w128, w129, w130, w131, w132, w133, w134, w135, w136, w137, w138, w139, w140, w141, w142, w143} <=
                    {conv2_kernel_weight[1728 + j*36], conv2_kernel_weight[1729 + j*36], conv2_kernel_weight[1730 + j*36], conv2_kernel_weight[1731 + j*36], conv2_kernel_weight[1732 + j*36], conv2_kernel_weight[1733 + j*36], conv2_kernel_weight[1734 + j*36], conv2_kernel_weight[1735 + j*36], conv2_kernel_weight[1736 + j*36],
                    conv2_kernel_weight[1737 + j*36], conv2_kernel_weight[1738 + j*36], conv2_kernel_weight[1739 + j*36], conv2_kernel_weight[1740 + j*36], conv2_kernel_weight[1741 + j*36], conv2_kernel_weight[1742 + j*36], conv2_kernel_weight[1743 + j*36], conv2_kernel_weight[1744 + j*36], conv2_kernel_weight[1745 + j*36],
                    conv2_kernel_weight[1746 + j*36], conv2_kernel_weight[1747 + j*36], conv2_kernel_weight[1748 + j*36], conv2_kernel_weight[1749 + j*36], conv2_kernel_weight[1750 + j*36], conv2_kernel_weight[1751 + j*36], conv2_kernel_weight[1752 + j*36], conv2_kernel_weight[1753 + j*36], conv2_kernel_weight[1754 + j*36],
                    conv2_kernel_weight[1755 + j*36], conv2_kernel_weight[1756 + j*36], conv2_kernel_weight[1757 + j*36], conv2_kernel_weight[1758 + j*36], conv2_kernel_weight[1759 + j*36], conv2_kernel_weight[1760 + j*36], conv2_kernel_weight[1761 + j*36], conv2_kernel_weight[1762 + j*36], conv2_kernel_weight[1763 + j*36]};

                    #(`period);

                    // $display("out1 = %d, out2 = %d, out3 = %d, out4 = %d", out1[15:8], out2[15:8], out3[15:8], out4[15:8]);

                    // partial sum
                    if (enable) begin
                        // avoid unknown
                        sum1[j] <= (out1 === 36'bx) ? $signed(36'd0) : out1;
                        sum2[j] <= (out2 === 36'bx) ? $signed(36'd0) : out2;
                        sum3[j] <= (out3 === 36'bx) ? $signed(36'd0) : out3;
                        sum4[j] <= (out4 === 36'bx) ? $signed(36'd0) : out4;
                        // $display("sum1 = %d, sum2 = %d, sum3 = %d, sum4 = %d", sum1[j], sum2[j], sum3[j], sum4[j]);
                    end
                end
                // deal with partial sum and bias
                res1 = sum1[0] + sum1[1] + sum1[2] + sum1[3] + sum1[4] + sum1[5] + sum1[6] + sum1[7] + sum1[8] + sum1[9] + sum1[10] + sum1[11] + sum1[12] + sum1[13] + sum1[14] + sum1[15] + conv2_bias_weight[0 + i*4];
                res2 = sum2[0] + sum2[1] + sum2[2] + sum2[3] + sum2[4] + sum2[5] + sum2[6] + sum2[7] + sum2[8] + sum2[9] + sum2[10] + sum2[11] + sum2[12] + sum2[13] + sum2[14] + sum2[15] + conv2_bias_weight[1 + i*4];
                res3 = sum3[0] + sum3[1] + sum3[2] + sum3[3] + sum3[4] + sum3[5] + sum3[6] + sum3[7] + sum3[8] + sum3[9] + sum3[10] + sum3[11] + sum3[12] + sum3[13] + sum3[14] + sum3[15] + conv2_bias_weight[2 + i*4];
                res4 = sum4[0] + sum4[1] + sum4[2] + sum4[3] + sum4[4] + sum4[5] + sum4[6] + sum4[7] + sum4[8] + sum4[9] + sum4[10] + sum4[11] + sum4[12] + sum4[13] + sum4[14] + sum4[15] + conv2_bias_weight[3 + i*4];
                // relu
                relu_1 = (res1 > 0) ? res1 : $signed(36'd0);
                relu_2 = (res2 > 0) ? res2 : $signed(36'd0);
                relu_3 = (res3 > 0) ? res3 : $signed(36'd0);
                relu_4 = (res4 > 0) ? res4 : $signed(36'd0);

                // $display("res1 = %d, res2 = %d, res3 = %d, res4 = %d", res1, res2, res3, res4);
                // $display("relu1 = %d, relu2 = %d, relu3 = %d, relu4 = %d", relu_1, relu_2, relu_3, relu_4);

                //---------------------------------------------------------------
                // write conv1 output to file
                $fwrite(file_handles2[0 + i*4], "%c%c%c", relu_1[14:7], relu_1[14:7], relu_1[14:7]); // 寫入 B, G, R
                $fwrite(file_handles2[1 + i*4], "%c%c%c", relu_2[14:7], relu_2[14:7], relu_2[14:7]); // 寫入 B, G, R
                $fwrite(file_handles2[2 + i*4], "%c%c%c", relu_3[14:7], relu_3[14:7], relu_3[14:7]); // 寫入 B, G, R
                $fwrite(file_handles2[3 + i*4], "%c%c%c", relu_4[14:7], relu_4[14:7], relu_4[14:7]); // 寫入 B, G, R

            end

            // close file
            for (img_index = 0; img_index < 4; img_index = img_index + 1) begin
                $fclose(file_handles2[img_index + i*4]); // finish write file
            end

        end


        #(`period)
        $fclose(img_in);
        $stop;
    end

    //---------------------------------------------------------------
    //This initial block assign the output file name 
    //---------------------------------------------------------------
    initial begin
    for (img_index = 0; img_index < 64; img_index = img_index + 1) begin
        filenames[img_index] = $sformatf("./layer1/conv1_output_image_%0d.bmp", img_index);
        conv2_filenames[img_index] = $sformatf("./layer2/conv2_output_image_%0d.bmp", img_index);
        end
        #(`period);
    end
    //---------------------------------------------------------------
    //This initial block read the pixel 
    //---------------------------------------------------------------
    initial begin
        //Open file
        img_in  = $fopen(`path_img_in, "rb");
        $readmemh(`path_conv1_kernel, conv1_kernel_weight); //Read kernel file
        $readmemh(`path_conv1_bias, conv1_bias_weight);
        $readmemh(`path_conv2_kernel, conv2_kernel_weight); //Read kernel file
        $readmemh(`path_conv2_bias, conv2_bias_weight); //Read bias file

        //Read input file
        read_bytes = $fread(img_data, img_in);

        //Read header information of input file
        img_w   = {img_data[21],img_data[20],img_data[19],img_data[18]};
        img_h   = {img_data[25],img_data[24],img_data[23],img_data[22]};
        offset  = {img_data[13],img_data[12],img_data[11],img_data[10]};

        //zero padding 
        for(idx=0; idx < `padding_img_size; idx=idx+1) begin
            // input image
            padding_img [2][idx] = 9'd0;
            padding_img [1][idx] = 9'd0;
            padding_img [0][idx] = 9'd0;
            // conv1 padding image
            conv1_padding_img [3][idx] = 9'd0;
            conv1_padding_img [2][idx] = 9'd0;
            conv1_padding_img [1][idx] = 9'd0;
            conv1_padding_img [0][idx] = 9'd0;
        end

        for(h = 0; h < img_h; h = h+1) begin
            for(w = 0; w < img_w; w = w+1) begin
                padding_img[2][h*226+w+227] = {1'd0, img_data[(h*224+w)*3 + offset + 2]};
                padding_img[1][h*226+w+227] = {1'd0, img_data[(h*224+w)*3 + offset + 1]};
                padding_img[0][h*226+w+227] = {1'd0, img_data[(h*224+w)*3 + offset + 0]};
            end
        end
    #(`period);
    end
    //---------------------------------------------------------------

    //------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    always begin
		#(`period/2.0) clk <= ~clk;
	end

    /*
    initial begin
		$sdf_annotate (`path_sdf, <your instance name>);
	end
    */
endmodule