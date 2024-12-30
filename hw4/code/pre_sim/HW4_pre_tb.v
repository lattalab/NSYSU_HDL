`timescale 1ns / 1ns
`define period           10
`define img_max_size     480*360*3+54
`define padding_img_size 482*362
//---------------------------------------------------------------
//You need specify the path of image in/out
//---------------------------------------------------------------
`define path_img_in     "./cat.bmp"
`define path_img_gray    "./cat_gray.bmp"
`define path_img_out_x    "./cat_after_sobel_x.bmp"
`define path_img_out_y    "./cat_after_sobel_y.bmp"

module HDL_HW4_TB;
    integer img_in;
    integer row_padding;
    integer col_counter;
    integer img_out_gray;   // test gray level image
    integer img_out_x;
    integer img_out_y;
    integer offset;
    integer img_h;
    integer img_w;
    integer idx, h, w;
    integer header;
    integer read_bytes;

    reg         clk;
    reg         rst;
    reg  [7:0]  img_data [0:`img_max_size-1];
    reg  [7:0]  padding_img [2:0][0:`padding_img_size-1];
    reg  [7:0]  R;
    reg  [7:0]  G;
    reg  [7:0]  B;
    wire [7:0] Yuv;
    reg [7:0] gray; // gray level value
    reg  [7:0]  intensity_padding_img [0:`padding_img_size-1];  // RGB to YUV, and store in intensity_padding_img
    wire [7:0] X, Y;
    wire        enable;

    //---------------------------------------------------------------
    //Insert your  verilog module at here
    sobel_detecter sobel_detecter(
        .clk(clk),
        .rst(rst),
        .R(R),
        .G(G),
        .B(B),
        .x(X),
        .y(Y),
        .enable(enable)
    );
    intensity_converter intensity_converter(
        .R(R),
        .G(G),
        .B(B),
        .Y(Yuv)
    );
    //---------------------------------------------------------------

//---------------------------------------------------------------------------------------Take out the color image(cat) of RGB----------------------------------------------
    //---------------------------------------------------------------
    //This initial block write the pixel 
    //---------------------------------------------------------------
    initial begin
        clk = 1'b1;
        rst = 1'b1;
        #(`period)
        rst = 1'b0;

        // 每行填充位數計算（4 byte alignment）
        row_padding = (4 - (img_w * 3 % 4)) % 4; // 每行需要補的位元組數

        //loading after padding file to your module
        for(idx = 0; idx < `padding_img_size; idx = idx+1) begin
            R <= padding_img[2][idx];
            G <= padding_img[1][idx];
            B <= padding_img[0][idx];
            intensity_padding_img[idx] <= Yuv;
            #(`period);
            //---------------------------------------------------------------
            //Write output data to output file here
            if (enable) begin
                // write sobel x
                $fwrite(img_out_x, "%c%c%c", X, X, X); // 寫入 B, G, R
                // write sobel y
                $fwrite(img_out_y, "%c%c%c", Y, Y, Y); // 寫入 B, G, R
                // update col_counter
                col_counter = col_counter + 1;
                // add Padding Bytes
                if (col_counter == img_w) begin
                    for (idx = 0; idx < row_padding; idx = idx + 1) begin
                        $fwrite(img_out_x, "%c", 0);
                        $fwrite(img_out_y, "%c", 0);
                    end
                    col_counter = 0;    // reset col_counter
                end
            end
            //---------------------------------------------------------------
        end

        // Test to write the gray level image
        for (h = 0; h < img_h; h = h + 1) begin
            for (w = 0; w < img_w; w = w + 1) begin
                // 寫入灰階值
                gray = intensity_padding_img[h * 482 + w + 483];
                $fwrite(img_out_gray, "%c%c%c", gray, gray, gray); // 寫入 B, G, R
            end
            // add Padding Bytes
            for (idx = 0; idx < row_padding; idx = idx + 1) begin
                $fwrite(img_out_gray, "%c", 0);
            end
        end

        #(`period)
        $fclose(img_in);
        $fclose(img_out_gray);
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
        img_out_gray = $fopen(`path_img_gray, "wb");
        img_out_x = $fopen(`path_img_out_x, "wb");
        img_out_y = $fopen(`path_img_out_y, "wb");

        //Read input file
        read_bytes = $fread(img_data, img_in);

        //Read header information of input file
        img_w   = {img_data[21],img_data[20],img_data[19],img_data[18]};
        img_h   = {img_data[25],img_data[24],img_data[23],img_data[22]};
        offset  = {img_data[13],img_data[12],img_data[11],img_data[10]};

        //Write header of output bmp file 
        for(header = 0; header < 54; header = header + 1) begin
            $fwrite(img_out_gray, "%c", img_data[header]);
			$fwrite(img_out_x, "%c", img_data[header]);
			$fwrite(img_out_y, "%c", img_data[header]);
        end

        //zero padding 
        for(idx=0; idx < `padding_img_size; idx=idx+1) begin
            padding_img [2][idx] = 0;
            padding_img [1][idx] = 0;
            padding_img [0][idx] = 0;
        end

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