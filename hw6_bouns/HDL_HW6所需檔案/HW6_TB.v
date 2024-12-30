`timescale 1ns / 1ns
`define period          10
`define img_max_size    480*360*3+54
`define cat56_size    	56*56
`define cat56_img_szie  56*56*3+54
//---------------------------------------------------------------
//You need specify the path of image in/out
//---------------------------------------------------------------
`define path_img_in     "./cat224.bmp"
`define path_img_out    "./cat56.bmp"

module HDL_HW4_TB;
    // predefined parameters in testbench
    integer img_in;
    integer img_out;
    integer offset;
    integer img_h;
    integer img_w;
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
    reg [8:0] img_56x56 [0:`cat56_img_szie-1];

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
        clk <= 1'b1;
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
        $finish;
    end

    //---------------------------------------------------------------
    //This initial block read the pixel 
    //---------------------------------------------------------------
    initial begin
        img_in  = $fopen(`path_img_in, "rb");
        img_out = $fopen(`path_img_out, "wb");

        $fread(img_data, img_in);

        img_w   = {img_data[21],img_data[20],img_data[19],img_data[18]};
        img_h   = {img_data[25],img_data[24],img_data[23],img_data[22]};
        offset  = {img_data[13],img_data[12],img_data[11],img_data[10]};
		
        for(header = 0; header < 54; header = header + 1) begin	//output header -> 56x56
			if(header==18 || header==22) 
				$fwrite(img_out, "%c", 8'd56);
			else 
				$fwrite(img_out, "%c", img_data[header]);
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
