/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Mon Oct 21 02:18:08 2024
/////////////////////////////////////////////////////////////


module SNPS_CLOCK_GATE_HIGH_D_FF_gating_DATA_WIDTH8 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP20P90 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module D_FF_gating_DATA_WIDTH8 ( q, d, clk, reset, en );
  output [7:0] q;
  input [7:0] d;
  input clk, reset, en;
  wire   gclk, net47, n1;

  DFCNQD2BWP16P90LVT q_reg_6_ ( .D(d[6]), .CP(gclk), .CDN(n1), .Q(q[6]) );
  DFCNQD2BWP16P90LVT q_reg_4_ ( .D(d[4]), .CP(gclk), .CDN(n1), .Q(q[4]) );
  DFCNQD2BWP16P90LVT q_reg_1_ ( .D(d[1]), .CP(gclk), .CDN(n1), .Q(q[1]) );
  DFCNQD2BWP16P90LVT q_reg_0_ ( .D(d[0]), .CP(gclk), .CDN(n1), .Q(q[0]) );
  SNPS_CLOCK_GATE_HIGH_D_FF_gating_DATA_WIDTH8 clk_gate_C29 ( .CLK(clk), .EN(
        en), .ENCLK(gclk), .TE(net47) );
  DFCNQD2BWP16P90LVT q_reg_7_ ( .D(d[7]), .CP(gclk), .CDN(n1), .Q(q[7]) );
  DFCNQD2BWP16P90LVT q_reg_5_ ( .D(d[5]), .CP(gclk), .CDN(n1), .Q(q[5]) );
  DFCNQD2BWP16P90LVT q_reg_3_ ( .D(d[3]), .CP(gclk), .CDN(n1), .Q(q[3]) );
  DFCNQD2BWP16P90LVT q_reg_2_ ( .D(d[2]), .CP(gclk), .CDN(n1), .Q(q[2]) );
  TIELBWP20P90LVT U3 ( .ZN(net47) );
  INVD1BWP16P90LVT U4 ( .I(reset), .ZN(n1) );
endmodule


module stage1_gating_DW01_sub_0 ( A, B, DIFF );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [7:2] carry;

  FA1D1BWP16P90LVT U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(
        DIFF[6]) );
  FA1D1BWP16P90LVT U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(
        DIFF[5]) );
  FA1D1BWP16P90LVT U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(
        DIFF[4]) );
  FA1D1BWP16P90LVT U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(
        DIFF[3]) );
  FA1D1BWP16P90LVT U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(
        DIFF[2]) );
  FA1D1BWP16P90LVT U2_1 ( .A(A[1]), .B(n8), .CI(n1), .CO(carry[2]), .S(DIFF[1]) );
  XOR3D2BWP16P90LVT U2_7 ( .A1(A[7]), .A2(n2), .A3(carry[7]), .Z(DIFF[7]) );
  CKND1BWP16P90LVT U1 ( .I(B[0]), .ZN(n9) );
  CKND1BWP16P90LVT U2 ( .I(B[1]), .ZN(n8) );
  CKND1BWP16P90LVT U3 ( .I(B[2]), .ZN(n7) );
  CKND1BWP16P90LVT U4 ( .I(B[6]), .ZN(n3) );
  CKND1BWP16P90LVT U5 ( .I(B[5]), .ZN(n4) );
  CKND1BWP16P90LVT U6 ( .I(B[4]), .ZN(n5) );
  CKND1BWP16P90LVT U7 ( .I(B[3]), .ZN(n6) );
  OR2D1BWP16P90LVT U8 ( .A1(A[0]), .A2(n9), .Z(n1) );
  CKND1BWP16P90LVT U9 ( .I(B[7]), .ZN(n2) );
  XNR2D1BWP16P90LVT U10 ( .A1(n9), .A2(A[0]), .ZN(DIFF[0]) );
endmodule


module stage1_gating_DW01_add_0 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  FA1D1BWP16P90LVT U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  FA1D1BWP16P90LVT U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  FA1D1BWP16P90LVT U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  FA1D1BWP16P90LVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  FA1D1BWP16P90LVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  FA1D1BWP16P90LVT U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(
        SUM[1]) );
  XOR3D2BWP16P90LVT U1_7 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .Z(SUM[7]) );
  AN2D1BWP16P90LVT U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  XOR2D1BWP16P90LVT U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module stage1_gating ( a, b, c, s, clk, reset, result );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [7:0] result;
  input s, clk, reset;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, en, n80, n90, n1, n2;
  wire   [7:0] temp;

  AO22D1BWP16P90LVT U5 ( .A1(N18), .A2(n2), .B1(s), .B2(N10), .Z(temp[7]) );
  AO22D1BWP16P90LVT U6 ( .A1(N9), .A2(s), .B1(N17), .B2(n2), .Z(temp[6]) );
  AO22D1BWP16P90LVT U7 ( .A1(N8), .A2(s), .B1(N16), .B2(n2), .Z(temp[5]) );
  AO22D1BWP16P90LVT U8 ( .A1(N7), .A2(s), .B1(N15), .B2(n2), .Z(temp[4]) );
  AO22D1BWP16P90LVT U9 ( .A1(N6), .A2(s), .B1(N14), .B2(n2), .Z(temp[3]) );
  AO22D1BWP16P90LVT U10 ( .A1(N5), .A2(s), .B1(N13), .B2(n2), .Z(temp[2]) );
  AO22D1BWP16P90LVT U11 ( .A1(N4), .A2(s), .B1(N12), .B2(n2), .Z(temp[1]) );
  AO22D1BWP16P90LVT U12 ( .A1(N3), .A2(s), .B1(N11), .B2(n2), .Z(temp[0]) );
  D_FF_gating_DATA_WIDTH8 dff1 ( .q(result), .d(temp), .clk(clk), .reset(reset), .en(en) );
  stage1_gating_DW01_sub_0 sub_24 ( .A(a), .B(b), .DIFF({N18, N17, N16, N15, 
        N14, N13, N12, N11}) );
  stage1_gating_DW01_add_0 add_21 ( .A(a), .B(b), .SUM({N10, N9, N8, N7, N6, 
        N5, N4, N3}) );
  TIELBWP20P90LVT U1 ( .ZN(n1) );
  ND2D1BWP16P90LVT U2 ( .A1(n80), .A2(n90), .ZN(en) );
  NR4D1BWP16P90LVT U3 ( .A1(c[3]), .A2(c[2]), .A3(c[1]), .A4(c[0]), .ZN(n80)
         );
  NR4D1BWP16P90LVT U4 ( .A1(c[7]), .A2(c[6]), .A3(c[5]), .A4(c[4]), .ZN(n90)
         );
  CKND1BWP16P90LVT U13 ( .I(s), .ZN(n2) );
endmodule


module SNPS_CLOCK_GATE_HIGH_D_FF_gating_DATA_WIDTH16 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP20P90 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module D_FF_gating_DATA_WIDTH16 ( q, d, clk, reset, en );
  output [15:0] q;
  input [15:0] d;
  input clk, reset, en;
  wire   gclk, net29, n1;

  DFCNQD2BWP16P90LVT q_reg_15_ ( .D(d[15]), .CP(gclk), .CDN(n1), .Q(q[15]) );
  DFCNQD2BWP16P90LVT q_reg_14_ ( .D(d[14]), .CP(gclk), .CDN(n1), .Q(q[14]) );
  DFCNQD2BWP16P90LVT q_reg_13_ ( .D(d[13]), .CP(gclk), .CDN(n1), .Q(q[13]) );
  DFCNQD2BWP16P90LVT q_reg_12_ ( .D(d[12]), .CP(gclk), .CDN(n1), .Q(q[12]) );
  DFCNQD2BWP16P90LVT q_reg_11_ ( .D(d[11]), .CP(gclk), .CDN(n1), .Q(q[11]) );
  DFCNQD2BWP16P90LVT q_reg_10_ ( .D(d[10]), .CP(gclk), .CDN(n1), .Q(q[10]) );
  DFCNQD2BWP16P90LVT q_reg_9_ ( .D(d[9]), .CP(gclk), .CDN(n1), .Q(q[9]) );
  DFCNQD2BWP16P90LVT q_reg_8_ ( .D(d[8]), .CP(gclk), .CDN(n1), .Q(q[8]) );
  DFCNQD2BWP16P90LVT q_reg_7_ ( .D(d[7]), .CP(gclk), .CDN(n1), .Q(q[7]) );
  DFCNQD2BWP16P90LVT q_reg_6_ ( .D(d[6]), .CP(gclk), .CDN(n1), .Q(q[6]) );
  DFCNQD2BWP16P90LVT q_reg_5_ ( .D(d[5]), .CP(gclk), .CDN(n1), .Q(q[5]) );
  DFCNQD2BWP16P90LVT q_reg_4_ ( .D(d[4]), .CP(gclk), .CDN(n1), .Q(q[4]) );
  DFCNQD2BWP16P90LVT q_reg_3_ ( .D(d[3]), .CP(gclk), .CDN(n1), .Q(q[3]) );
  DFCNQD2BWP16P90LVT q_reg_2_ ( .D(d[2]), .CP(gclk), .CDN(n1), .Q(q[2]) );
  DFCNQD2BWP16P90LVT q_reg_1_ ( .D(d[1]), .CP(gclk), .CDN(n1), .Q(q[1]) );
  DFCNQD2BWP16P90LVT q_reg_0_ ( .D(d[0]), .CP(gclk), .CDN(n1), .Q(q[0]) );
  SNPS_CLOCK_GATE_HIGH_D_FF_gating_DATA_WIDTH16 clk_gate_C45 ( .CLK(clk), .EN(
        en), .ENCLK(gclk), .TE(net29) );
  TIELBWP20P90LVT U3 ( .ZN(net29) );
  CKND1BWP16P90LVT U4 ( .I(reset), .ZN(n1) );
endmodule


module stage2_gating_DW_mult_uns_2 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n35, n41, n42,
         n44, n47, n48, n49, n51, n52, n53, n54, n56, n58, n59, n60, n61, n62,
         n63, n64, n65, n67, n68, n69, n71, n73, n79, n80, n81, n82, n85, n86,
         n89, n90, n91, n92, n93, n95, n96, n97, n98, n99, n100, n103, n104,
         n105, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n121, n123, n124, n125, n126, n128, n129, n130,
         n132, n133, n134, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, net1167, net1170, net1222, net1221, net1229, net1241, net1262,
         net1273, net1277, net1276, net1275, net1282, net1320, net1322,
         net1323, net1328, net1327, net1331, net1334, n94, n38, n37, n36, n3,
         n55, n50, n127, n120, net1264, net1263, net1168, n122, n231, n217,
         n203, n136, n135, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399;

  OAI21D1BWP16P90LVT U4 ( .A1(n17), .A2(n341), .B(n18), .ZN(product[15]) );
  ND2D1BWP16P90LVT U5 ( .A1(net1167), .A2(n308), .ZN(n17) );
  OAI21D1BWP16P90LVT U12 ( .A1(n35), .A2(n25), .B(n26), .ZN(n24) );
  ND2D1BWP16P90LVT U13 ( .A1(n93), .A2(n26), .ZN(n2) );
  ND2D1BWP16P90LVT U16 ( .A1(n107), .A2(n191), .ZN(n26) );
  OAI21D1BWP16P90LVT U22 ( .A1(n42), .A2(n32), .B(n35), .ZN(n31) );
  ND2D1BWP16P90LVT U39 ( .A1(n95), .A2(n42), .ZN(n4) );
  ND2D1BWP16P90LVT U42 ( .A1(n113), .A2(n110), .ZN(n42) );
  ND2D1BWP16P90LVT U76 ( .A1(n100), .A2(n68), .ZN(n9) );
  ND2D1BWP16P90LVT U99 ( .A1(n103), .A2(n82), .ZN(n12) );
  ND2D1BWP16P90LVT U102 ( .A1(n180), .A2(n182), .ZN(n82) );
  ND2D1BWP16P90LVT U106 ( .A1(n104), .A2(n86), .ZN(n13) );
  ND2D1BWP16P90LVT U109 ( .A1(n186), .A2(n188), .ZN(n86) );
  ND2D1BWP16P90LVT U113 ( .A1(n105), .A2(n90), .ZN(n14) );
  ND2D1BWP16P90LVT U116 ( .A1(n190), .A2(n245), .ZN(n90) );
  ND2D1BWP16P90LVT U121 ( .A1(n246), .A2(n253), .ZN(n92) );
  FA1D1BWP16P90LVT U122 ( .A(n199), .B(n192), .CI(n111), .CO(n107), .S(n108)
         );
  FA1D1BWP16P90LVT U123 ( .A(n117), .B(n112), .CI(n115), .CO(n109), .S(n110)
         );
  FA1D1BWP16P90LVT U124 ( .A(n200), .B(n193), .CI(n207), .CO(n111), .S(n112)
         );
  FA1D1BWP16P90LVT U127 ( .A(n194), .B(n201), .CI(n215), .CO(n117), .S(n118)
         );
  HA1D2BWP16P90LVT U163 ( .A(n252), .B(n238), .CO(n189), .S(n190) );
  ND2D1BWP16P90LVT U28 ( .A1(n109), .A2(n108), .ZN(n35) );
  ND2D1BWP16P90LVT U25 ( .A1(n94), .A2(n35), .ZN(n3) );
  ND2D1BWP16P90LVT U19 ( .A1(n50), .A2(n30), .ZN(n28) );
  ND2D1BWP16P90LVT U31 ( .A1(n50), .A2(n95), .ZN(n37) );
  HA1D2BWP16P90LVT U142 ( .A(n204), .B(n232), .CO(n147), .S(n148) );
  FA1D1BWP16P90LVT U135 ( .A(n196), .B(n210), .CI(n224), .CO(n133), .S(n134)
         );
  FA1D1BWP16P90LVT U130 ( .A(n223), .B(n209), .CI(n135), .CO(n123), .S(n124)
         );
  FA1D1BWP16P90LVT U136 ( .A(n231), .B(n203), .CI(n217), .CO(n135), .S(n136)
         );
  OR2D2BWP16P90LVT U246 ( .A1(n162), .A2(n171), .Z(n386) );
  ND3D2BWP16P90LVT U247 ( .A1(net1263), .A2(net1264), .A3(n306), .ZN(net1320)
         );
  OAI21D2BWP16P90LVT U248 ( .A1(n394), .A2(n67), .B(n68), .ZN(net1331) );
  CKNR2D1BWP16P90LVT U249 ( .A1(n263), .A2(n259), .ZN(n204) );
  NR2D1BWP16P90LVT U250 ( .A1(n392), .A2(n257), .ZN(n210) );
  XOR2D1BWP16P90 U251 ( .A1(n9), .A2(n394), .Z(product[7]) );
  NR2D4BWP16P90LVT U252 ( .A1(n268), .A2(n255), .ZN(n240) );
  OAI21D2BWP16P90LVT U253 ( .A1(n69), .A2(n349), .B(n68), .ZN(n370) );
  ND2D1BWP16P90LVT U254 ( .A1(n249), .A2(n228), .ZN(n327) );
  INVD1BWP16P90 U255 ( .I(n178), .ZN(n367) );
  XNR2D4BWP16P90LVT U256 ( .A1(n389), .A2(n140), .ZN(n138) );
  INVD1BWP16P90LVT U257 ( .I(n235), .ZN(n362) );
  NR2D1BWP16P90LVT U258 ( .A1(n150), .A2(n161), .ZN(n67) );
  NR2D1BWP16P90LVT U259 ( .A1(n150), .A2(n161), .ZN(n349) );
  ND3D2BWP16P90LVT U260 ( .A1(n355), .A2(n356), .A3(n357), .ZN(n167) );
  INVD4BWP16P90LVT U261 ( .I(a[0]), .ZN(n269) );
  XOR2D2BWP16P90LVT U262 ( .A1(n358), .A2(n174), .Z(n172) );
  ND2D1BWP16P90LVT U263 ( .A1(n213), .A2(n248), .ZN(n357) );
  ND2D1BWP16P90LVT U264 ( .A1(n202), .A2(n195), .ZN(n346) );
  NR2D2BWP16P90LVT U265 ( .A1(n262), .A2(n258), .ZN(n195) );
  ND2D2BWP16P90LVT U266 ( .A1(n313), .A2(n363), .ZN(n364) );
  XOR2D2BWP16P90LVT U267 ( .A1(n247), .A2(n219), .Z(n160) );
  ND2D1BWP16P90LVT U268 ( .A1(n206), .A2(n213), .ZN(n355) );
  BUFFD2BWP16P90LVT U269 ( .I(n267), .Z(net1273) );
  OR2D2BWP16P90LVT U270 ( .A1(n172), .A2(n179), .Z(n387) );
  FA1D2BWP16P90LVT U271 ( .A(n229), .B(n243), .CI(n250), .CO(n181), .S(n182)
         );
  CKND2D2BWP16P90LVT U272 ( .A1(n364), .A2(n365), .ZN(n178) );
  NR2D1BWP16P90LVT U273 ( .A1(n268), .A2(n257), .ZN(n242) );
  XOR2D4BWP16P90LVT U274 ( .A1(n324), .A2(n242), .Z(n176) );
  CKND2BWP16P90LVT U275 ( .I(n343), .ZN(n344) );
  HA1D2BWP16P90LVT U276 ( .A(n220), .B(n234), .CO(n169), .S(n170) );
  NR2D1BWP16P90LVT U277 ( .A1(net1282), .A2(n259), .ZN(n220) );
  NR2D1BWP16P90LVT U278 ( .A1(n267), .A2(n258), .ZN(n235) );
  CKND2BWP16P90LVT U279 ( .I(a[5]), .ZN(n392) );
  CKND1BWP16P90LVT U280 ( .I(b[3]), .ZN(n258) );
  XOR2D2BWP16P90LVT U281 ( .A1(n342), .A2(n353), .Z(n150) );
  CKND1BWP16P90LVT U282 ( .I(b[0]), .ZN(n261) );
  ND2D2BWP16P90LVT U283 ( .A1(n393), .A2(n161), .ZN(n68) );
  ND2D1BWP16P90LVT U284 ( .A1(n247), .A2(n219), .ZN(n339) );
  CKND1BWP16P90LVT U285 ( .I(n339), .ZN(n159) );
  NR2D2BWP16P90LVT U286 ( .A1(n269), .A2(n256), .ZN(n249) );
  ND3D1BWP16P90LVT U287 ( .A1(n371), .A2(n373), .A3(n372), .ZN(n155) );
  ND2D1BWP16P90LVT U288 ( .A1(n148), .A2(n155), .ZN(n376) );
  ND3D2BWP16P90LVT U289 ( .A1(n346), .A2(n347), .A3(n348), .ZN(n125) );
  CKND1BWP16P90LVT U290 ( .I(b[5]), .ZN(n256) );
  XOR2D1BWP16P90LVT U291 ( .A1(n226), .A2(n212), .Z(n318) );
  HA1D2BWP16P90LVT U292 ( .A(n251), .B(n237), .CO(n187), .S(n188) );
  FA1D1BWP16P90LVT U293 ( .A(n169), .B(n160), .CI(n167), .CO(n153), .S(n154)
         );
  ND3D1BWP16P90LVT U294 ( .A1(net1275), .A2(net1276), .A3(net1277), .ZN(n127)
         );
  ND2D1BWP16P90LVT U295 ( .A1(n129), .A2(n124), .ZN(n316) );
  BUFFD1BWP16P90LVT U296 ( .I(n384), .Z(n341) );
  CKND1BWP16P90LVT U297 ( .I(n15), .ZN(product[1]) );
  NR2D2BWP16P90LVT U298 ( .A1(n267), .A2(n254), .ZN(n231) );
  INVD4BWP16P90LVT U299 ( .I(a[2]), .ZN(n267) );
  CKND1BWP16P90LVT U300 ( .I(b[7]), .ZN(n254) );
  NR2D2BWP16P90LVT U301 ( .A1(n263), .A2(n258), .ZN(n203) );
  INVD4BWP16P90LVT U302 ( .I(a[6]), .ZN(n263) );
  NR2D1BWP16P90LVT U303 ( .A1(n265), .A2(n256), .ZN(n217) );
  CKND2BWP16P90LVT U304 ( .I(a[4]), .ZN(n265) );
  ND2D1BWP16P90LVT U305 ( .A1(n136), .A2(n145), .ZN(net1263) );
  ND2D1BWP16P90LVT U306 ( .A1(n136), .A2(n147), .ZN(net1264) );
  XOR2D2BWP16P90LVT U307 ( .A1(net1262), .A2(n136), .Z(n132) );
  XOR2D4BWP16P90LVT U308 ( .A1(net1168), .A2(net1320), .Z(n122) );
  XOR2D4BWP16P90LVT U309 ( .A1(n126), .A2(n133), .Z(net1168) );
  XOR2D4BWP16P90LVT U310 ( .A1(net1241), .A2(n202), .Z(n126) );
  ND2D1BWP16P90 U311 ( .A1(n122), .A2(n124), .ZN(net1328) );
  XOR3D4BWP16P90LVT U312 ( .A1(n124), .A2(n122), .A3(n129), .Z(n120) );
  ND2D1BWP16P90LVT U313 ( .A1(n122), .A2(n129), .ZN(net1327) );
  ND2D1BWP16P90LVT U314 ( .A1(n145), .A2(n147), .ZN(n306) );
  ND2D1BWP16P90LVT U315 ( .A1(net1320), .A2(n133), .ZN(net1170) );
  NR2D1BWP16P90LVT U316 ( .A1(net1322), .A2(n55), .ZN(n50) );
  NR2D2BWP16P90LVT U317 ( .A1(n114), .A2(n119), .ZN(net1322) );
  NR2D2BWP16P90LVT U318 ( .A1(n120), .A2(n127), .ZN(n55) );
  INVD1BWP16P90 U319 ( .I(n55), .ZN(n97) );
  NR2D1BWP16P90LVT U320 ( .A1(n55), .A2(net1322), .ZN(net1167) );
  NR2D1BWP16P90LVT U321 ( .A1(n1), .A2(n55), .ZN(net1221) );
  FA1D1BWP16P90LVT U322 ( .A(n143), .B(n134), .CI(n141), .CO(n129), .S(n130)
         );
  ND2D2BWP16P90LVT U323 ( .A1(n120), .A2(n127), .ZN(n56) );
  XNR2D1BWP16P90LVT U324 ( .A1(n36), .A2(n3), .ZN(product[13]) );
  OAI21D1BWP16P90LVT U325 ( .A1(net1229), .A2(n37), .B(n38), .ZN(n36) );
  AOI21D1BWP16P90LVT U326 ( .A1(net1331), .A2(n58), .B(net1323), .ZN(net1229)
         );
  CKND1BWP16P90LVT U327 ( .I(n41), .ZN(n95) );
  AOI21D2BWP16P90LVT U328 ( .A1(n51), .A2(n95), .B(n44), .ZN(n38) );
  OAI21D4BWP16P90LVT U329 ( .A1(n56), .A2(n52), .B(n53), .ZN(n51) );
  CKND1BWP16P90LVT U330 ( .I(n42), .ZN(n44) );
  CKND1BWP16P90LVT U331 ( .I(n32), .ZN(n94) );
  NR2D1BWP16P90LVT U332 ( .A1(n109), .A2(n108), .ZN(n32) );
  CKND1BWP16P90LVT U333 ( .I(n221), .ZN(n363) );
  AN2D1BWP16P90LVT U334 ( .A1(n352), .A2(n351), .Z(n307) );
  AN2D1BWP16P90LVT U335 ( .A1(n95), .A2(n23), .Z(n308) );
  MAOI222D1BWP16P90LVT U336 ( .A(n144), .B(n146), .C(n153), .ZN(n309) );
  CKND1BWP16P90LVT U337 ( .I(n309), .ZN(n139) );
  MAOI222D1BWP16P90LVT U338 ( .A(n353), .B(n163), .C(n154), .ZN(n310) );
  CKND1BWP16P90LVT U339 ( .I(n310), .ZN(n149) );
  ND2D1BWP16P90LVT U340 ( .A1(n159), .A2(n239), .ZN(n321) );
  NR2D1BWP16P90LVT U341 ( .A1(net1282), .A2(n257), .ZN(n218) );
  IOA21D1BWP16P90LVT U342 ( .A1(n387), .A2(n80), .B(n79), .ZN(n311) );
  IOA21D1BWP16P90LVT U343 ( .A1(n387), .A2(n80), .B(n79), .ZN(n385) );
  BUFFD1BWP16P90LVT U344 ( .I(n156), .Z(n312) );
  CKND2BWP16P90LVT U345 ( .I(n362), .ZN(n313) );
  CKND1BWP16P90LVT U346 ( .I(n49), .ZN(net1334) );
  XNR2D4BWP16P90LVT U347 ( .A1(n319), .A2(n339), .ZN(n144) );
  AN2D1BWP16P90LVT U348 ( .A1(a[7]), .A2(b[1]), .Z(n197) );
  XOR3D1BWP16P90LVT U349 ( .A1(n244), .A2(n230), .A3(n189), .Z(n314) );
  CKNR2D2BWP16P90LVT U350 ( .A1(n392), .A2(n258), .ZN(n211) );
  ND3D2BWP16P90LVT U351 ( .A1(n375), .A2(n376), .A3(n377), .ZN(n141) );
  NR2D2BWP16P90LVT U352 ( .A1(n262), .A2(n261), .ZN(n198) );
  XOR3D2BWP16P90LVT U353 ( .A1(n208), .A2(n125), .A3(n118), .Z(n315) );
  ND3D2BWP16P90LVT U354 ( .A1(net1327), .A2(net1328), .A3(n316), .ZN(n119) );
  XNR2D1BWP16P90LVT U355 ( .A1(n54), .A2(n5), .ZN(product[11]) );
  CKND2BWP16P90LVT U356 ( .I(n73), .ZN(n71) );
  OAI21D2BWP16P90LVT U357 ( .A1(n317), .A2(n64), .B(n61), .ZN(net1323) );
  CKNR2D4BWP16P90LVT U358 ( .A1(n114), .A2(n119), .ZN(n52) );
  ND2D1BWP16P90 U359 ( .A1(n53), .A2(n96), .ZN(n5) );
  HA1D2BWP16P90LVT U360 ( .A(n222), .B(n236), .CO(n183), .S(n184) );
  CKNR2D2BWP16P90LVT U361 ( .A1(n265), .A2(n261), .ZN(n222) );
  INVD1BWP16P90LVT U362 ( .I(n51), .ZN(n49) );
  CKNR2D4BWP16P90LVT U363 ( .A1(n128), .A2(n137), .ZN(n317) );
  NR2D2BWP16P90LVT U364 ( .A1(n128), .A2(n137), .ZN(n60) );
  XNR2D4BWP16P90LVT U365 ( .A1(n142), .A2(n151), .ZN(n389) );
  ND2D2BWP16P90LVT U366 ( .A1(n114), .A2(n119), .ZN(n53) );
  XOR2D2BWP16P90LVT U367 ( .A1(n318), .A2(n240), .Z(n156) );
  NR2D2BWP16P90LVT U368 ( .A1(n392), .A2(n259), .ZN(n212) );
  NR2D2BWP16P90LVT U369 ( .A1(n266), .A2(n257), .ZN(n226) );
  XOR2D4BWP16P90LVT U370 ( .A1(n181), .A2(n176), .Z(n358) );
  XOR2D2BWP16P90LVT U371 ( .A1(n239), .A2(n225), .Z(n319) );
  ND2D1BWP16P90 U372 ( .A1(n159), .A2(n225), .ZN(n320) );
  ND2D1BWP16P90 U373 ( .A1(n225), .A2(n239), .ZN(n322) );
  ND3D1BWP16P90LVT U374 ( .A1(n320), .A2(n321), .A3(n322), .ZN(n143) );
  XOR2D4BWP16P90LVT U375 ( .A1(n144), .A2(n146), .Z(n323) );
  XOR2D2BWP16P90LVT U376 ( .A1(n323), .A2(n153), .Z(n140) );
  NR2D1BWP16P90LVT U377 ( .A1(n266), .A2(n256), .ZN(n225) );
  ND2D1BWP16P90LVT U378 ( .A1(n130), .A2(n139), .ZN(net1275) );
  INVD1BWP16P90 U379 ( .I(n317), .ZN(n98) );
  XOR2D4BWP16P90LVT U380 ( .A1(n228), .A2(n249), .Z(n324) );
  ND2D1BWP16P90LVT U381 ( .A1(n242), .A2(n249), .ZN(n325) );
  ND2D1BWP16P90LVT U382 ( .A1(n242), .A2(n228), .ZN(n326) );
  ND3D2BWP16P90LVT U383 ( .A1(n325), .A2(n326), .A3(n327), .ZN(n175) );
  NR2D2BWP16P90LVT U384 ( .A1(n266), .A2(n259), .ZN(n228) );
  ND2D1BWP16P90 U385 ( .A1(n170), .A2(n175), .ZN(n338) );
  ND2D1BWP16P90LVT U386 ( .A1(n168), .A2(n175), .ZN(n337) );
  ND2D2BWP16P90LVT U387 ( .A1(n366), .A2(n178), .ZN(n369) );
  INVD1BWP16P90 U388 ( .I(n63), .ZN(n99) );
  OAI21D2BWP16P90LVT U389 ( .A1(n81), .A2(n388), .B(n82), .ZN(n80) );
  OA21D2BWP16P90LVT U390 ( .A1(n85), .A2(n390), .B(n86), .Z(n388) );
  NR2D2BWP16P90LVT U391 ( .A1(n262), .A2(n257), .ZN(n194) );
  ND2D2BWP16P90LVT U392 ( .A1(n128), .A2(n137), .ZN(n61) );
  ND3D4BWP16P90LVT U393 ( .A1(n397), .A2(n398), .A3(n399), .ZN(n137) );
  XOR3D4BWP16P90LVT U394 ( .A1(n163), .A2(n154), .A3(n152), .Z(n393) );
  ND3D4BWP16P90LVT U395 ( .A1(n336), .A2(n337), .A3(n338), .ZN(n163) );
  CKND2BWP16P90LVT U396 ( .I(n395), .ZN(n177) );
  NR2D2BWP16P90LVT U397 ( .A1(net1282), .A2(n260), .ZN(n221) );
  ND2D1BWP16P90 U398 ( .A1(n99), .A2(n64), .ZN(n8) );
  ND2D1BWP16P90 U399 ( .A1(net1320), .A2(n126), .ZN(n378) );
  ND2D1BWP16P90LVT U400 ( .A1(n140), .A2(n151), .ZN(n397) );
  NR2D1BWP16P90LVT U401 ( .A1(net1273), .A2(n260), .ZN(n237) );
  ND3D4BWP16P90LVT U402 ( .A1(n381), .A2(n382), .A3(n383), .ZN(n173) );
  ND2D1BWP16P90LVT U403 ( .A1(n183), .A2(n178), .ZN(n381) );
  XNR2D1BWP16P90LVT U404 ( .A1(n10), .A2(n311), .ZN(product[6]) );
  XOR2D4BWP16P90LVT U405 ( .A1(n184), .A2(n187), .Z(n328) );
  XOR2D2BWP16P90LVT U406 ( .A1(n328), .A2(n185), .Z(n180) );
  ND2D1BWP16P90 U407 ( .A1(n185), .A2(n187), .ZN(n329) );
  ND2D1BWP16P90 U408 ( .A1(n185), .A2(n184), .ZN(n330) );
  ND2D1BWP16P90 U409 ( .A1(n187), .A2(n184), .ZN(n331) );
  ND3D1BWP16P90LVT U410 ( .A1(n329), .A2(n330), .A3(n331), .ZN(n179) );
  FA1D1BWP16P90LVT U411 ( .A(n244), .B(n230), .CI(n189), .CO(n185), .S(n186)
         );
  NR2D1BWP16P90LVT U412 ( .A1(n268), .A2(n254), .ZN(n239) );
  ND2D1BWP16P90LVT U413 ( .A1(n178), .A2(n214), .ZN(n382) );
  NR2D1BWP16P90LVT U414 ( .A1(n267), .A2(n261), .ZN(n238) );
  XOR3D4BWP16P90LVT U415 ( .A1(n123), .A2(n116), .A3(n121), .Z(n114) );
  ND2D1BWP16P90 U416 ( .A1(n315), .A2(n121), .ZN(n332) );
  ND2D1BWP16P90 U417 ( .A1(n315), .A2(n123), .ZN(n333) );
  ND2D1BWP16P90LVT U418 ( .A1(n121), .A2(n123), .ZN(n334) );
  ND3D1BWP16P90LVT U419 ( .A1(n332), .A2(n333), .A3(n334), .ZN(n113) );
  ND3D4BWP16P90LVT U420 ( .A1(n378), .A2(net1170), .A3(n379), .ZN(n121) );
  CKND2BWP16P90LVT U421 ( .I(n380), .ZN(n366) );
  XOR2D4BWP16P90LVT U422 ( .A1(n214), .A2(n183), .Z(n380) );
  NR2D2BWP16P90LVT U423 ( .A1(n344), .A2(n261), .ZN(n214) );
  XOR2D4BWP16P90LVT U424 ( .A1(n175), .A2(n170), .Z(n335) );
  XOR2D4BWP16P90LVT U425 ( .A1(n335), .A2(n168), .Z(n164) );
  ND2D1BWP16P90 U426 ( .A1(n168), .A2(n170), .ZN(n336) );
  XOR2D4BWP16P90LVT U427 ( .A1(n163), .A2(n154), .Z(n342) );
  ND2D1BWP16P90LVT U428 ( .A1(n216), .A2(n202), .ZN(n347) );
  XOR2D4BWP16P90LVT U429 ( .A1(n216), .A2(n195), .Z(net1241) );
  NR2D2BWP16P90LVT U430 ( .A1(net1282), .A2(n255), .ZN(n216) );
  CKND2BWP16P90LVT U431 ( .I(a[4]), .ZN(net1282) );
  ND2D1BWP16P90 U432 ( .A1(n183), .A2(n214), .ZN(n383) );
  NR2D2BWP16P90LVT U433 ( .A1(n267), .A2(n259), .ZN(n236) );
  ND2D1BWP16P90LVT U434 ( .A1(n140), .A2(n142), .ZN(n398) );
  NR2D2BWP16P90LVT U435 ( .A1(n267), .A2(n256), .ZN(n233) );
  NR2D2BWP16P90LVT U436 ( .A1(n138), .A2(n149), .ZN(n63) );
  CKND2D4BWP16P90LVT U437 ( .A1(n138), .A2(n149), .ZN(n64) );
  XOR3D4BWP16P90LVT U438 ( .A1(n165), .A2(n158), .A3(n312), .Z(n353) );
  FA1D2BWP16P90LVT U439 ( .A(n241), .B(n227), .CI(n177), .CO(n165), .S(n166)
         );
  ND2D1BWP16P90LVT U440 ( .A1(n157), .A2(n155), .ZN(n377) );
  XOR2D2BWP16P90LVT U441 ( .A1(n374), .A2(n155), .Z(n142) );
  OAI21D2BWP16P90LVT U442 ( .A1(n28), .A2(n384), .B(n29), .ZN(n27) );
  NR2D1BWP16P90LVT U443 ( .A1(net1282), .A2(n254), .ZN(n215) );
  ND2D1BWP16P90LVT U444 ( .A1(n235), .A2(n221), .ZN(n395) );
  NR2D2BWP16P90LVT U445 ( .A1(net1273), .A2(n257), .ZN(n234) );
  ND2D1BWP16P90LVT U446 ( .A1(n380), .A2(n367), .ZN(n368) );
  AOI21D2BWP16P90LVT U447 ( .A1(n386), .A2(n385), .B(n71), .ZN(n394) );
  AN2D2BWP16P90LVT U448 ( .A1(a[0]), .A2(b[7]), .Z(n247) );
  XOR3D4BWP16P90LVT U449 ( .A1(n132), .A2(n139), .A3(n130), .Z(n128) );
  ND2D1BWP16P90 U450 ( .A1(n139), .A2(n132), .ZN(net1276) );
  ND2D1BWP16P90LVT U451 ( .A1(n130), .A2(n132), .ZN(net1277) );
  FA1D1BWP16P90LVT U452 ( .A(n208), .B(n125), .CI(n118), .CO(n115), .S(n116)
         );
  NR2D1BWP16P90LVT U453 ( .A1(n263), .A2(n256), .ZN(n201) );
  NR2D2BWP16P90LVT U454 ( .A1(n263), .A2(n260), .ZN(n205) );
  XOR2D2BWP16P90LVT U455 ( .A1(n148), .A2(n157), .Z(n374) );
  INVD4BWP16P90LVT U456 ( .I(a[3]), .ZN(n266) );
  OR2D2BWP16P90LVT U457 ( .A1(net1221), .A2(net1222), .Z(n54) );
  ND2D2BWP16P90LVT U458 ( .A1(n307), .A2(n350), .ZN(n161) );
  ND2D1BWP16P90 U459 ( .A1(n164), .A2(n173), .ZN(n352) );
  DEL025D1BWP16P90 U460 ( .I(n80), .Z(n340) );
  XOR2D4BWP16P90LVT U461 ( .A1(n147), .A2(n145), .Z(net1262) );
  FA1D2BWP16P90LVT U462 ( .A(n211), .B(n197), .CI(n218), .CO(n145), .S(n146)
         );
  AOI21D2BWP16P90LVT U463 ( .A1(n58), .A2(n370), .B(n345), .ZN(n384) );
  INVD1BWP16P90 U464 ( .I(n392), .ZN(n343) );
  INVD4BWP16P90LVT U465 ( .I(a[1]), .ZN(n268) );
  OAI21D1BWP16P90LVT U466 ( .A1(n317), .A2(n64), .B(n61), .ZN(n345) );
  ND2D1BWP16P90 U467 ( .A1(n195), .A2(n216), .ZN(n348) );
  NR2D1BWP16P90LVT U468 ( .A1(n262), .A2(n259), .ZN(n196) );
  INVD4BWP16P90LVT U469 ( .I(a[7]), .ZN(n262) );
  ND2D2BWP16P90LVT U470 ( .A1(n368), .A2(n369), .ZN(n174) );
  XOR3D4BWP16P90LVT U471 ( .A1(n173), .A2(n166), .A3(n164), .Z(n162) );
  ND2D1BWP16P90 U472 ( .A1(n166), .A2(n164), .ZN(n350) );
  ND2D1BWP16P90 U473 ( .A1(n166), .A2(n173), .ZN(n351) );
  FA1D2BWP16P90LVT U474 ( .A(n156), .B(n165), .CI(n158), .CO(n151), .S(n152)
         );
  NR2D1BWP16P90LVT U475 ( .A1(n267), .A2(n255), .ZN(n232) );
  XOR2D4BWP16P90LVT U476 ( .A1(n248), .A2(n213), .Z(n354) );
  XOR2D2BWP16P90LVT U477 ( .A1(n354), .A2(n206), .Z(n168) );
  ND2D1BWP16P90LVT U478 ( .A1(n206), .A2(n248), .ZN(n356) );
  NR2D1BWP16P90LVT U479 ( .A1(n263), .A2(n261), .ZN(n206) );
  NR2D2BWP16P90LVT U480 ( .A1(n264), .A2(n260), .ZN(n213) );
  NR2D2BWP16P90LVT U481 ( .A1(n63), .A2(n60), .ZN(n58) );
  INVD1BWP16P90 U482 ( .I(n56), .ZN(net1222) );
  ND2D1BWP16P90LVT U483 ( .A1(n162), .A2(n171), .ZN(n73) );
  ND2D1BWP16P90 U484 ( .A1(n176), .A2(n181), .ZN(n361) );
  ND2D1BWP16P90 U485 ( .A1(n174), .A2(n176), .ZN(n359) );
  ND2D1BWP16P90 U486 ( .A1(n174), .A2(n181), .ZN(n360) );
  ND3D1BWP16P90LVT U487 ( .A1(n359), .A2(n360), .A3(n361), .ZN(n171) );
  AOI21D2BWP16P90LVT U488 ( .A1(n58), .A2(net1331), .B(n59), .ZN(n1) );
  OAI21D2BWP16P90LVT U489 ( .A1(n317), .A2(n64), .B(n61), .ZN(n59) );
  NR2D1BWP16P90LVT U490 ( .A1(n265), .A2(n258), .ZN(n219) );
  ND2D1BWP16P90LVT U491 ( .A1(n362), .A2(n221), .ZN(n365) );
  AOI21D1BWP16P90LVT U492 ( .A1(n386), .A2(n311), .B(n71), .ZN(n69) );
  INVD1BWP16P90 U493 ( .I(net1322), .ZN(n96) );
  INVD1BWP16P90LVT U494 ( .I(net1167), .ZN(n48) );
  INVD1BWP16P90LVT U495 ( .I(a[5]), .ZN(n264) );
  ND2D1BWP16P90LVT U496 ( .A1(n212), .A2(n226), .ZN(n371) );
  ND2D1BWP16P90LVT U497 ( .A1(n212), .A2(n240), .ZN(n372) );
  ND2D1BWP16P90LVT U498 ( .A1(n226), .A2(n240), .ZN(n373) );
  ND2D1BWP16P90LVT U499 ( .A1(n148), .A2(n157), .ZN(n375) );
  XOR2D1BWP16P90 U500 ( .A1(n8), .A2(n65), .Z(product[8]) );
  INVD1BWP16P90 U501 ( .I(n349), .ZN(n100) );
  CKND1BWP16P90LVT U502 ( .I(b[1]), .ZN(n260) );
  CKND1BWP16P90LVT U503 ( .I(b[2]), .ZN(n259) );
  ND2D1BWP16P90 U504 ( .A1(n126), .A2(n133), .ZN(n379) );
  ND2D1BWP16P90 U505 ( .A1(n172), .A2(n179), .ZN(n79) );
  INVD1BWP16P90 U506 ( .I(n81), .ZN(n103) );
  INVD1BWP16P90 U507 ( .I(n85), .ZN(n104) );
  XOR2D1BWP16P90 U508 ( .A1(n13), .A2(n390), .Z(product[3]) );
  NR2D1BWP16P90 U509 ( .A1(n268), .A2(n256), .ZN(n241) );
  NR2D1BWP16P90 U510 ( .A1(n266), .A2(n258), .ZN(n227) );
  NR2D1BWP16P90 U511 ( .A1(n266), .A2(n255), .ZN(n224) );
  NR2D1BWP16P90 U512 ( .A1(n344), .A2(n255), .ZN(n208) );
  NR2D1BWP16P90 U513 ( .A1(n344), .A2(n256), .ZN(n209) );
  NR2D1BWP16P90 U514 ( .A1(n266), .A2(n254), .ZN(n223) );
  NR2D1BWP16P90 U515 ( .A1(n269), .A2(n257), .ZN(n250) );
  NR2D1BWP16P90 U516 ( .A1(n266), .A2(n260), .ZN(n229) );
  NR2D1BWP16P90 U517 ( .A1(n269), .A2(n260), .ZN(n253) );
  NR2D1BWP16P90 U518 ( .A1(n268), .A2(n261), .ZN(n246) );
  NR2D1BWP16P90 U519 ( .A1(n268), .A2(n260), .ZN(n245) );
  NR2D1BWP16P90 U520 ( .A1(n262), .A2(n256), .ZN(n193) );
  NR2D1BWP16P90 U521 ( .A1(n344), .A2(n254), .ZN(n207) );
  NR2D1BWP16P90 U522 ( .A1(n262), .A2(n255), .ZN(n192) );
  NR2D1BWP16P90 U523 ( .A1(n262), .A2(n254), .ZN(n191) );
  NR2D1BWP16P90 U524 ( .A1(n269), .A2(n261), .ZN(product[0]) );
  OAI21D1BWP16P90LVT U525 ( .A1(net1229), .A2(n48), .B(n49), .ZN(n47) );
  XNR2D1BWP16P90LVT U526 ( .A1(n62), .A2(n7), .ZN(product[9]) );
  ND2D1BWP16P90 U527 ( .A1(n98), .A2(n61), .ZN(n7) );
  OAI21D1BWP16P90LVT U528 ( .A1(n65), .A2(n396), .B(n64), .ZN(n62) );
  CKND1BWP16P90LVT U529 ( .I(n370), .ZN(n65) );
  CKND1BWP16P90LVT U530 ( .I(n25), .ZN(n93) );
  OA21D1BWP16P90LVT U531 ( .A1(n89), .A2(n92), .B(n90), .Z(n390) );
  NR2D1BWP16P90LVT U532 ( .A1(n113), .A2(n110), .ZN(n41) );
  NR2D1BWP16P90LVT U533 ( .A1(n41), .A2(n32), .ZN(n30) );
  AO21D1BWP16P90LVT U534 ( .A1(n44), .A2(n23), .B(n24), .Z(n391) );
  NR2D1BWP16P90LVT U535 ( .A1(n32), .A2(n25), .ZN(n23) );
  XOR2D1BWP16P90 U536 ( .A1(n12), .A2(n388), .Z(product[4]) );
  XOR2D1BWP16P90LVT U537 ( .A1(n14), .A2(n92), .Z(product[2]) );
  CKND1BWP16P90LVT U538 ( .I(n89), .ZN(n105) );
  NR2D1BWP16P90LVT U539 ( .A1(n314), .A2(n188), .ZN(n85) );
  NR2D1BWP16P90LVT U540 ( .A1(n180), .A2(n182), .ZN(n81) );
  NR2D1BWP16P90LVT U541 ( .A1(n190), .A2(n245), .ZN(n89) );
  NR2D1BWP16P90LVT U542 ( .A1(n107), .A2(n191), .ZN(n25) );
  IND2D1BWP16P90LVT U543 ( .A1(n91), .B1(n92), .ZN(n15) );
  NR2D1BWP16P90LVT U544 ( .A1(n246), .A2(n253), .ZN(n91) );
  NR2D1BWP16P90LVT U545 ( .A1(n266), .A2(n261), .ZN(n230) );
  NR2D1BWP16P90LVT U546 ( .A1(n269), .A2(n259), .ZN(n252) );
  NR2D1BWP16P90LVT U547 ( .A1(n269), .A2(n258), .ZN(n251) );
  CKND1BWP16P90LVT U548 ( .I(b[4]), .ZN(n257) );
  CKND1BWP16P90LVT U549 ( .I(b[6]), .ZN(n255) );
  AOI21D1BWP16P90LVT U550 ( .A1(n51), .A2(n30), .B(n31), .ZN(n29) );
  AOI21D1BWP16P90 U551 ( .A1(net1334), .A2(n308), .B(n391), .ZN(n18) );
  ND2D1BWP16P90 U552 ( .A1(n97), .A2(n56), .ZN(n6) );
  XOR2D1BWP16P90LVT U553 ( .A1(n341), .A2(n6), .Z(product[10]) );
  XNR2D1BWP16P90LVT U554 ( .A1(n27), .A2(n2), .ZN(product[14]) );
  XNR2D1BWP16P90LVT U555 ( .A1(n47), .A2(n4), .ZN(product[12]) );
  AN2D2BWP16P90LVT U556 ( .A1(a[0]), .A2(b[6]), .Z(n248) );
  ND2D1BWP16P90 U557 ( .A1(n387), .A2(n79), .ZN(n11) );
  XNR2D1BWP20P90LVT U558 ( .A1(n11), .A2(n340), .ZN(product[5]) );
  NR2D1BWP16P90 U559 ( .A1(n263), .A2(n255), .ZN(n200) );
  NR2D1BWP16P90 U560 ( .A1(n263), .A2(n254), .ZN(n199) );
  NR2D1BWP16P90 U561 ( .A1(n263), .A2(n257), .ZN(n202) );
  ND2D1BWP16P90 U562 ( .A1(n386), .A2(n73), .ZN(n10) );
  INVD1BWP16P90LVT U563 ( .I(n99), .ZN(n396) );
  ND2D1BWP16P90LVT U564 ( .A1(n151), .A2(n142), .ZN(n399) );
  NR2D1BWP16P90LVT U565 ( .A1(n268), .A2(n259), .ZN(n244) );
  NR2D1BWP16P90LVT U566 ( .A1(n268), .A2(n258), .ZN(n243) );
  FA1D2BWP16P90LVT U567 ( .A(n205), .B(n233), .CI(n198), .CO(n157), .S(n158)
         );
endmodule


module stage2_gating ( addsub, c, clk, reset, result );
  input [7:0] addsub;
  input [7:0] c;
  output [15:0] result;
  input clk, reset;
  wire   N6, n1, n2;
  wire   [15:0] final;

  D_FF_gating_DATA_WIDTH16 dff2 ( .q(result), .d(final), .clk(clk), .reset(
        reset), .en(N6) );
  stage2_gating_DW_mult_uns_2 mult_37 ( .a(addsub), .b(c), .product(final) );
  ND2D1BWP16P90LVT U1 ( .A1(n1), .A2(n2), .ZN(N6) );
  NR4D1BWP16P90LVT U2 ( .A1(c[3]), .A2(c[2]), .A3(c[1]), .A4(c[0]), .ZN(n1) );
  NR4D1BWP16P90LVT U3 ( .A1(c[7]), .A2(c[6]), .A3(c[5]), .A4(c[4]), .ZN(n2) );
endmodule


module hw2_clockgating ( a, b, c, s, clk, reset, d );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [15:0] d;
  input s, clk, reset;

  wire   [7:0] addsub;

  stage1_gating s1 ( .a(a), .b(b), .c(c), .s(s), .clk(clk), .reset(reset), 
        .result(addsub) );
  stage2_gating s2 ( .addsub(addsub), .c(c), .clk(clk), .reset(reset), 
        .result(d) );
endmodule

