`timescale 1ns / 1ns
`define period          10
`define img_max_size    480*360*3+54
`define cat56_size    	56*56
`define padding_img_size 58*58
`define conv1_kernel_size 1728
//---------------------------------------------------------------
//You need specify the path of image in/out
//---------------------------------------------------------------
`define path_img_in     "C:/Users/vlva8/OneDrive/Desktop/HDL/hw6_bouns/vivado/HDL_HW6_B103040045/HDL_HW6_B103040045.sim/sim_1/behav/xsim/cat224.bmp"
`define path_img_out    "C:/Users/vlva8/OneDrive/Desktop/HDL/hw6_bouns/vivado/HDL_HW6_B103040045/HDL_HW6_B103040045.sim/sim_1/behav/xsim/cat56.bmp"
`define path_conv1_kernel     "C:/Users/vlva8/OneDrive/Desktop/HDL/hw6_bouns/vivado/HDL_HW6_B103040045/HDL_HW6_B103040045.sim/sim_1/behav/xsim//conv1_kernel_hex.txt"
`define path_conv1_bias     "C:/Users/vlva8/OneDrive/Desktop/HDL/hw6_bouns/vivado/HDL_HW6_B103040045/HDL_HW6_B103040045.sim/sim_1/behav/xsim//conv1_bias_hex.txt"

module HDL_HW6_TB;
    // predefined parameters in testbench
    integer img_in;
    integer img_out;
    integer read_bytes;
    integer offset;
    integer img_h, h;
    integer img_w, w;
    integer img_index;
    integer idx;
	integer jdx;
	integer kdx;
    integer header;
	integer i;
    reg         clk;
    reg  [7:0]  img_data [0:`img_max_size-1];
    reg  [7:0]  R;
    reg  [7:0]  G;
    reg  [7:0]  B;

    reg  [11:0]  R_resize;
    reg  [11:0]  G_resize;
    reg  [11:0]  B_resize;	
    reg  [7:0]  R_56x56;
    reg  [7:0]  G_56x56;
    reg  [7:0]  B_56x56;

    // self-created parameters
    reg signed [8:0] padding_img_56x56 [0:2][0:`padding_img_size-1];
    reg signed [35:0] conv_img_56x56 [0:63][0:`cat56_size-1];
    reg signed [36:0] output_feature_map [0:63][0:`cat56_size-1];
    reg signed [15:0] conv1_kernel_weight [0:`conv1_kernel_size-1];
    reg signed [15:0] conv1_bias_weight [0:63];
    integer counter_weight = 0, conv_counter =0;
    integer file_handles[63:0]; // file handles to manage conv1 output files
    reg  [8*100-1:0] filenames[0:63];    // output filenames
    reg rst;
    reg signed [8:0] img_pixel;
    reg [11:0] img_addr;
    reg signed [15:0] w1, w2, w3, w4;
    reg [11:0] w_addr;
    reg signed [15:0] b1, b2, b3, b4;
    reg [11:0] b_addr;
    reg [11:0] conv_addr;
    reg img_enable;
    reg w_enable;
    reg b_enable;
    reg conv_write_en;
    wire enable;
    wire signed [35:0] conv1, conv2, conv3, conv4;
    wire signed [35:0] bias1, bias2, bias3, bias4;

    //---------------------------------------------------------------
    //Insert your  verilog module at here
    PE PE0(
        .clk(clk), .rst(rst),
        .img_data(img_pixel),
        .img_addr(img_addr),
        .weight1(w1), .weight2(w2), .weight3(w3), .weight4(w4),
        .weight_addr(w_addr),
        .bias1(b1), .bias2(b2), .bias3(b3), .bias4(b4),
        .bias_addr(b_addr),
        .write_enable(img_enable),
        .write_en_w(w_enable),
        .write_en_b(b_enable),
        .conv_write_en(conv_write_en),
        .conv_idx(conv_addr),
        .enable(enable),
        .conv_rdata1(conv1), .conv_rdata2(conv2), .conv_rdata3(conv3), .conv_rdata4(conv4),
        .Bias1(bias1), .Bias2(bias2), .Bias3(bias3), .Bias4(bias4)
    );
    //---------------------------------------------------------------

    //---------------------------------------------------------------
    //This initial block assign the output file name 
    //---------------------------------------------------------------
    reg [15:0] img_number_str;    // 纗计场だ才﹃
    
    initial begin
        for (img_index = 0; img_index < 64; img_index = img_index + 1) begin
            // 盢 img_index 计锣传才﹃
            img_number_str = convert_to_string(img_index);
    
            // 钡才﹃
            filenames[img_index] = {"C:/Users/vlva8/OneDrive/Desktop/HDL/hw6_bouns/vivado/layer1/conv1_output_image_", img_number_str, ".bmp"};
        end
        #(`period);
    end

    // 计锣才﹃ㄧ计 (家览ㄏノ龟瞷虏虫秈锣才﹃)
    function [15:0] convert_to_string;
        input integer num;
        reg [15:0] str;
        integer digit;
        integer index;
        begin
            index = 0;
            str = ""; // ﹍て才﹃
            while (num != 0) begin
                digit = num % 10;              // 矗程计
                str[index*8 +: 8] = "0" + digit; // 盢计锣才 ('0'  ASCII 琌 48)
                num = num / 10;                // 奔程
                index = index + 1;
            end
    
            // 盢才﹃は锣
            convert_to_string = reverse_string(str, index);
        end
    endfunction
    
    // 才﹃は锣ㄧ计
    function [15:0] reverse_string;
        input [15:0] str;
        input integer length;
        reg [15:0] reversed;
        integer i;
        begin
            reversed = "";
            for (i = 0; i < length; i = i + 1) begin
                reversed[i*8 +: 8] = str[(length-i-1)*8 +: 8];
            end
            reverse_string = reversed;
        end
    endfunction

    //---------------------------------------------------------------

//---------------------------------------------------------------------------------------Take out the color image(cat) of RGB----------------------------------------------
    //---------------------------------------------------------------
    //This initial block write the pixel 
    //---------------------------------------------------------------
    initial begin
        clk <= 1'b0;
		R_resize<=0;
		G_resize<=0;
		B_resize<=0;

		
		i<=0;
		#(`period);
		//---------------------------------------------------------------
		//Resize  the 224x224 to 56x56
	    for(idx = 0; idx <`cat56_size; idx = idx+1) begin						
			for(jdx = (0+4*(idx/56)); jdx <(4+4*(idx/56)); jdx = jdx+1) begin
				for(kdx = (0+4*i); kdx <(4+4*i); kdx = kdx+1) begin
					R_resize <= R_resize + img_data[(kdx+(jdx*224))*3 + offset + 2];
					G_resize <= G_resize + img_data[(kdx+(jdx*224))*3 + offset + 1];
					B_resize <= B_resize + img_data[(kdx+(jdx*224))*3 + offset + 0];
					#(`period);		
				end		
			end
	
			R_56x56 <=R_resize/16;	//Take  R_56x56 as input 
			G_56x56 <=G_resize/16;	//Take  G_56x56 as input 
			B_56x56 <=B_resize/16;	//Take  B_56x56 as input 
			#(`period);
			
			//write cat56.bmp
			$fwrite(img_out, "%c%c%c",B_56x56[7:0] , G_56x56[7:0], R_56x56[7:0]);
			if(i==55)  i<=0;
			else i<=i+1;
			#(`period/2);
			R_resize <=0;
			G_resize <=0;
			B_resize <=0;
			#(`period/2);
        end	
		//---------------------------------------------------------------
        $fclose(img_in);
        $fclose(img_out);
        //$finish;

        //This initial block open the new image file
        img_in  = $fopen(`path_img_out, "rb");
        read_bytes = $fread(img_data, img_in);

        img_w   = {img_data[21],img_data[20],img_data[19],img_data[18]};
        img_h   = {img_data[25],img_data[24],img_data[23],img_data[22]};
        offset  = {img_data[13],img_data[12],img_data[11],img_data[10]};

        // padding
        for (i = 0; i < `padding_img_size; i = i+1) begin
            padding_img_56x56[0][i] = 9'd0;
            padding_img_56x56[1][i] = 9'd0;
            padding_img_56x56[2][i] = 9'd0;
        end

        for(h = 0; h < img_h; h = h + 1) begin
            for(w = 0; w < img_w; w = w + 1) begin
                padding_img_56x56[2][h*58+w+59] = {1'b0, img_data[(w+(h*img_w))*3 + offset + 2]};
                padding_img_56x56[1][h*58+w+59] = {1'b0, img_data[(w+(h*img_w))*3 + offset + 1]};
                padding_img_56x56[0][h*58+w+59] = {1'b0, img_data[(w+(h*img_w))*3 + offset + 0]};
            end
        end
        #(`period);
        $fclose(img_in);

        // ---------------------------------------------------------------
        // Start convolution

        // set up SRAM
        for (kdx =0; kdx < 16; kdx = kdx + 1) begin     // 16 times for 64 output feature maps
            // reset
            rst <= 1'b1;
            #(`period);
            rst <= 1'b0;
            counter_weight <= 0;
            $display("Processing conv1 round %0d", kdx);
        
            #(`period);
            
            for (jdx = 0; jdx < 3; jdx = jdx + 1) begin
                // ready for img data
                for (idx = 0; idx < `padding_img_size; idx = idx + 1) begin
                    img_pixel <= padding_img_56x56[jdx][idx];
                    img_addr <= idx;
                    img_enable <= 1'b0;
                    // store 4 channel weights
                    // w1 <= conv1_kernel_weight[0 + counter_weight + jdx*9 + kdx*108];
                    // w2 <= conv1_kernel_weight[27 + counter_weight + jdx*9 + kdx*108];
                    // w3 <= conv1_kernel_weight[54 + counter_weight + jdx*9 + kdx*108];
                    // w4 <= conv1_kernel_weight[81 + counter_weight + jdx*9 + kdx*108];
                    w_addr <= 0;
                    w_enable <= 1'b1;
                    b_enable <= 1'b1;
                    // b1 <= conv1_bias_weight[0 + kdx*4];
                    // b2 <= conv1_bias_weight[1 + kdx*4];
                    // b3 <= conv1_bias_weight[2 + kdx*4];
                    // b4 <= conv1_bias_weight[3 + kdx*4];
                    b_addr <= 0;
                    conv_write_en <= 1'b1;  // read
                    #(`period);
                end

                // ready for kernel
                for (idx =0; idx < 9 ;idx = idx + 1) begin
                    w1 <= conv1_kernel_weight[0 + idx + kdx*108];
                    w2 <= conv1_kernel_weight[27 + idx + kdx*108];
                    w3 <= conv1_kernel_weight[54 + idx + kdx*108];
                    w4 <= conv1_kernel_weight[81 + idx + kdx*108];
                    w_addr <= idx;
                    w_enable <= 1'b0;
                    #(`period);
                end

                // ready for bias
                for (idx = 0; idx < 4; idx = idx + 1) begin
                    b1 <= conv1_bias_weight[idx + kdx*4];
                    b2 <= conv1_bias_weight[idx + 1 + kdx*4];
                    b3 <= conv1_bias_weight[idx + 2 + kdx*4];
                    b4 <= conv1_bias_weight[idx + 3 + kdx*4];
                    b_addr <= 0;
                    b_enable <= 1'b0;
                    #(`period);
                end

                // read kernel in module before convolution
                for (idx = 0; idx < 9; idx = idx + 1) begin
                    w_addr <= idx;
                    w_enable <= 1'b1;
                    #(`period);
                end

                for (idx = 0; idx < `padding_img_size; idx = idx + 1) begin
                    img_enable <= 1'b1;   // start calculation
                    img_addr <= idx;
                    conv_write_en <= 1'b0;  // write convolution result

                    if (enable) begin   // valid convolution result
                        conv_addr <= conv_counter;
                        conv_counter <= conv_counter + 1;
                    end
                    
                    #(`period);
                end
                
                #(`period);

                conv_write_en <= 1'b1;  // read convolution result
                conv_counter <= 0;
                for (idx =0; idx < `cat56_size; idx = idx + 1) begin
                    conv_addr <= idx;
                    #(`period);
                    // accumlate the partial sum
                    conv_img_56x56[0 + 4*jdx][idx] <= conv1;
                    conv_img_56x56[1 + 4*jdx][idx] <= conv2;
                    conv_img_56x56[2 + 4*jdx][idx] <= conv3;
                    conv_img_56x56[3 + 4*jdx][idx] <= conv4;
                    // $display(conv1, conv2, conv3, conv4);
                    #(`period);
                end
                // $stop;
            end // end of 3 input channels

            // add bias and relu
            for (idx = 0; idx < `cat56_size; idx = idx + 1) begin
                b_enable <= 1'b1; // read bias
                output_feature_map[0][idx] <= conv_img_56x56[0][idx] + conv_img_56x56[4][idx] + conv_img_56x56[8][idx] + bias1;
                output_feature_map[1][idx] <= conv_img_56x56[1][idx] + conv_img_56x56[5][idx] + conv_img_56x56[9][idx] + bias2;
                output_feature_map[2][idx] <= conv_img_56x56[2][idx] + conv_img_56x56[6][idx] + conv_img_56x56[10][idx] + bias3;
                output_feature_map[3][idx] <= conv_img_56x56[3][idx] + conv_img_56x56[7][idx] + conv_img_56x56[11][idx] + bias4;
                #(`period);
                // ReLU
                if (output_feature_map[0][idx] < 0) begin
                    output_feature_map[0][idx] <= 0;
                end
                if (output_feature_map[1][idx] < 0) begin
                    output_feature_map[1][idx] <= 0;
                end
                if (output_feature_map[2][idx] < 0) begin
                    output_feature_map[2][idx] <= 0;
                end
                if (output_feature_map[3][idx] < 0) begin
                    output_feature_map[3][idx] <= 0;
                end
            end
            #(`period);

            // write back to file
            for (img_index = 0; img_index < 4; img_index = img_index + 1) begin
                for (idx = 0; idx < `cat56_size; idx = idx + 1) begin
                    // $display("output_feature_map[%0d][%0d] = %0d", img_index, idx, output_feature_map[img_index][idx][10:4]);
                    if (output_feature_map[img_index][idx] === 35'bx) begin
                        $fwrite(file_handles[img_index + kdx*4], "%c%c%c", 0, 0, 0);
                    end else begin
                        $fwrite(file_handles[img_index + kdx*4], "%c%c%c", output_feature_map[img_index][idx][13:6], output_feature_map[img_index][idx][13:6], output_feature_map[img_index][idx][13:6]);
                    end
                end
            end
            #(`period);
            $fclose(file_handles[0 + kdx*4]);
            $fclose(file_handles[1 + kdx*4]);
            $fclose(file_handles[2 + kdx*4]);
            $fclose(file_handles[3 + kdx*4]);
        // $stop;
        end
        $stop;
    end

    //---------------------------------------------------------------
    //This initial block read the pixel 
    //---------------------------------------------------------------
    initial begin
        img_in  = $fopen(`path_img_in, "rb");
        img_out = $fopen(`path_img_out, "wb");
        $readmemh(`path_conv1_kernel, conv1_kernel_weight); //Read kernel file
        $readmemh(`path_conv1_bias, conv1_bias_weight); //Read bias file

        read_bytes = $fread(img_data, img_in);

        img_w   = {img_data[21],img_data[20],img_data[19],img_data[18]};
        img_h   = {img_data[25],img_data[24],img_data[23],img_data[22]};
        offset  = {img_data[13],img_data[12],img_data[11],img_data[10]};
		
        for(header = 0; header < 54; header = header + 1) begin	//output header -> 56x56
			if(header==18 || header==22) 
				$fwrite(img_out, "%c", 8'd56);
			else 
				$fwrite(img_out, "%c", img_data[header]);
        end

        // Open output files before writing header
        for (img_index = 0; img_index < 64; img_index = img_index + 1) begin
            file_handles[img_index] = $fopen(filenames[img_index], "wb"); // from previous initial block
            if (file_handles[img_index] == 0) begin
                $display("Error opening file %0d", img_index);
            end

            // Write header of output bmp file 
            for(header = 0; header < 54; header = header + 1) begin
                if(header==18 || header==22) 
				    $fwrite(file_handles[img_index], "%c", 8'd56);
			    else 
				    $fwrite(file_handles[img_index], "%c", img_data[header]);
            end
        end
        #(`period);
    end
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
