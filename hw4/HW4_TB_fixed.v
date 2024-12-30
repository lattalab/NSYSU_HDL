`timescale 1ns / 1ns
`define period           10
`define img_max_size     480*360*3+54
`define padding_img_size 482*362
//---------------------------------------------------------------
//You need specify the path of image in/out
//---------------------------------------------------------------
`define path_img_in     "./cat.bmp"
`define path_img_out    "./cat_after_sobel_x.bmp"
`define path_img_out    "./cat_after_sobel_y.bmp"

module HDL_HW4_TB;
    integer img_in;
    integer img_out_x;
    integer img_out_y;
    integer offset;
    integer img_h;
    integer img_w;
    integer idx, h, w;
    integer header;

    reg         clk;
    reg  [7:0]  img_data [0:`img_max_size-1];
    reg  [7:0]  padding_img [2:0][0:`padding_img_size-1];
    reg  [7:0]  R;
    reg  [7:0]  G;
    reg  [7:0]  B;
    wire [19:0] Y;

    //---------------------------------------------------------------
    //Insert your  verilog module at here
    //
    // ...
    //
    //---------------------------------------------------------------

//---------------------------------------------------------------------------------------Take out the color image(cat) of RGB----------------------------------------------
    //---------------------------------------------------------------
    //This initial block write the pixel 
    //---------------------------------------------------------------
    initial begin
        clk = 1'b1;
        #(`period)
        //loading after padding file to your module
        for(idx = 0; idx < padding_img_size; idx = idx+1) begin
            R <= padding_img[2][idx];
            G <= padding_img[1][idx];
            B <= padding_img[0][idx];
            #(`period);
            //---------------------------------------------------------------
            //Write output data to output file here
            //---------------------------------------------------------------
        end
        #(`period)
        $fclose(img_in);
        $fclose(img_out_x);
        $fclose(img_out_y);
        $stop;
    end

    //---------------------------------------------------------------
    //This initial block read the pixel 
    //---------------------------------------------------------------
    initial begin
        //Open file
        img_in  = $fopen(`path_img_in, "rb");
        img_out_x = $fopen(`path_img_out_x, "wb");
        img_out_y = $fopen(`path_img_out_y, "wb");

        //Read input file
        $fread(img_data, img_in);

        //Read header information of input file
        img_w   = {img_data[21],img_data[20],img_data[19],img_data[18]};
        img_h   = {img_data[25],img_data[24],img_data[23],img_data[22]};
        offset  = {img_data[13],img_data[12],img_data[11],img_data[10]};

        //Write header of output bmp file 
        for(header = 0; header < 54; header = header + 1) begin
			$fwrite(img_out_x, "%c", img_data[header]);
			$fwrite(img_out_y, "%c", img_data[header]);
        end

        //zero padding 
        for(idx=0; idx<padding_img_size; idx=idx+1)
            padding_img[idx] = 0;

        for(h = 0; h < img_h; h = h+1) begin
            for(w = 0; w < img_w; w = w+1) begin
                padding_img[2][h*482+w+483] = img_data[(h*480+w)*3 + offset + 2];
                padding_img[1][h*482+w+483] = img_data[(h*480+w)*3 + offset + 1];
                padding_img[0][h*482+w+483] = img_data[(h*480+w)*3 + offset + 0];
            end
        end

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