/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Mon Oct 21 02:00:31 2024
/////////////////////////////////////////////////////////////


module D_FF_DATA_WIDTH8 ( q, d, clk, reset );
  output [7:0] q;
  input [7:0] d;
  input clk, reset;
  wire   n1;

  DFCNQD2BWP16P90LVT q_reg_6_ ( .D(d[6]), .CP(clk), .CDN(n1), .Q(q[6]) );
  DFCNQD2BWP16P90LVT q_reg_4_ ( .D(d[4]), .CP(clk), .CDN(n1), .Q(q[4]) );
  DFCNQD2BWP16P90LVT q_reg_1_ ( .D(d[1]), .CP(clk), .CDN(n1), .Q(q[1]) );
  DFCNQD2BWP16P90LVT q_reg_0_ ( .D(d[0]), .CP(clk), .CDN(n1), .Q(q[0]) );
  DFCNQD2BWP16P90LVT q_reg_7_ ( .D(d[7]), .CP(clk), .CDN(n1), .Q(q[7]) );
  DFCNQD2BWP16P90LVT q_reg_5_ ( .D(d[5]), .CP(clk), .CDN(n1), .Q(q[5]) );
  DFCNQD2BWP16P90LVT q_reg_3_ ( .D(d[3]), .CP(clk), .CDN(n1), .Q(q[3]) );
  DFCNQD2BWP16P90LVT q_reg_2_ ( .D(d[2]), .CP(clk), .CDN(n1), .Q(q[2]) );
  INVD1BWP16P90LVT U3 ( .I(reset), .ZN(n1) );
endmodule


module stage1_DW01_sub_0 ( A, B, DIFF );
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


module stage1_DW01_add_0 ( A, B, SUM );
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


module stage1 ( a, b, s, clk, reset, result );
  input [7:0] a;
  input [7:0] b;
  output [7:0] result;
  input s, clk, reset;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n1, n2;
  wire   [7:0] temp;

  AO22D1BWP16P90LVT U5 ( .A1(N18), .A2(n2), .B1(s), .B2(N10), .Z(temp[7]) );
  AO22D1BWP16P90LVT U6 ( .A1(N9), .A2(s), .B1(N17), .B2(n2), .Z(temp[6]) );
  AO22D1BWP16P90LVT U7 ( .A1(N8), .A2(s), .B1(N16), .B2(n2), .Z(temp[5]) );
  AO22D1BWP16P90LVT U8 ( .A1(N7), .A2(s), .B1(N15), .B2(n2), .Z(temp[4]) );
  AO22D1BWP16P90LVT U9 ( .A1(N6), .A2(s), .B1(N14), .B2(n2), .Z(temp[3]) );
  AO22D1BWP16P90LVT U10 ( .A1(N5), .A2(s), .B1(N13), .B2(n2), .Z(temp[2]) );
  AO22D1BWP16P90LVT U11 ( .A1(N4), .A2(s), .B1(N12), .B2(n2), .Z(temp[1]) );
  AO22D1BWP16P90LVT U12 ( .A1(N3), .A2(s), .B1(N11), .B2(n2), .Z(temp[0]) );
  D_FF_DATA_WIDTH8 dff1 ( .q(result), .d(temp), .clk(clk), .reset(reset) );
  stage1_DW01_sub_0 sub_22 ( .A(a), .B(b), .DIFF({N18, N17, N16, N15, N14, N13, 
        N12, N11}) );
  stage1_DW01_add_0 add_19 ( .A(a), .B(b), .SUM({N10, N9, N8, N7, N6, N5, N4, 
        N3}) );
  TIELBWP20P90LVT U1 ( .ZN(n1) );
  CKND1BWP16P90LVT U2 ( .I(s), .ZN(n2) );
endmodule


module D_FF_DATA_WIDTH16 ( q, d, clk, reset );
  output [15:0] q;
  input [15:0] d;
  input clk, reset;
  wire   n1;

  DFCNQD2BWP16P90LVT q_reg_15_ ( .D(d[15]), .CP(clk), .CDN(n1), .Q(q[15]) );
  DFCNQD2BWP16P90LVT q_reg_14_ ( .D(d[14]), .CP(clk), .CDN(n1), .Q(q[14]) );
  DFCNQD2BWP16P90LVT q_reg_13_ ( .D(d[13]), .CP(clk), .CDN(n1), .Q(q[13]) );
  DFCNQD2BWP16P90LVT q_reg_12_ ( .D(d[12]), .CP(clk), .CDN(n1), .Q(q[12]) );
  DFCNQD2BWP16P90LVT q_reg_11_ ( .D(d[11]), .CP(clk), .CDN(n1), .Q(q[11]) );
  DFCNQD2BWP16P90LVT q_reg_10_ ( .D(d[10]), .CP(clk), .CDN(n1), .Q(q[10]) );
  DFCNQD2BWP16P90LVT q_reg_9_ ( .D(d[9]), .CP(clk), .CDN(n1), .Q(q[9]) );
  DFCNQD2BWP16P90LVT q_reg_8_ ( .D(d[8]), .CP(clk), .CDN(n1), .Q(q[8]) );
  DFCNQD2BWP16P90LVT q_reg_7_ ( .D(d[7]), .CP(clk), .CDN(n1), .Q(q[7]) );
  DFCNQD2BWP16P90LVT q_reg_6_ ( .D(d[6]), .CP(clk), .CDN(n1), .Q(q[6]) );
  DFCNQD2BWP16P90LVT q_reg_5_ ( .D(d[5]), .CP(clk), .CDN(n1), .Q(q[5]) );
  DFCNQD2BWP16P90LVT q_reg_4_ ( .D(d[4]), .CP(clk), .CDN(n1), .Q(q[4]) );
  DFCNQD2BWP16P90LVT q_reg_3_ ( .D(d[3]), .CP(clk), .CDN(n1), .Q(q[3]) );
  DFCNQD2BWP16P90LVT q_reg_2_ ( .D(d[2]), .CP(clk), .CDN(n1), .Q(q[2]) );
  DFCNQD2BWP16P90LVT q_reg_1_ ( .D(d[1]), .CP(clk), .CDN(n1), .Q(q[1]) );
  DFCNQD2BWP16P90LVT q_reg_0_ ( .D(d[0]), .CP(clk), .CDN(n1), .Q(q[0]) );
  CKND1BWP16P90LVT U3 ( .I(reset), .ZN(n1) );
endmodule


module stage2_DW_mult_uns_2 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n35,
         n36, n37, n38, n41, n42, n44, n47, n48, n51, n52, n53, n54, n55, n56,
         n58, n60, n61, n62, n63, n64, n65, n66, n68, n69, n71, n73, n79, n80,
         n81, n82, n85, n86, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n103, n104, n105, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n263, n265, n266, n267, n268, n269, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435;

  OAI21D1BWP16P90LVT U4 ( .A1(n376), .A2(n17), .B(n18), .ZN(product[15]) );
  ND2D1BWP16P90LVT U5 ( .A1(n417), .A2(n19), .ZN(n17) );
  OAI21D1BWP16P90LVT U12 ( .A1(n35), .A2(n25), .B(n26), .ZN(n24) );
  ND2D1BWP16P90LVT U13 ( .A1(n93), .A2(n26), .ZN(n2) );
  ND2D1BWP16P90LVT U16 ( .A1(n107), .A2(n191), .ZN(n26) );
  ND2D1BWP16P90LVT U19 ( .A1(n417), .A2(n30), .ZN(n28) );
  OAI21D1BWP16P90LVT U22 ( .A1(n42), .A2(n32), .B(n35), .ZN(n31) );
  ND2D1BWP16P90LVT U25 ( .A1(n94), .A2(n35), .ZN(n3) );
  ND2D1BWP16P90LVT U28 ( .A1(n109), .A2(n108), .ZN(n35) );
  ND2D1BWP16P90LVT U31 ( .A1(n417), .A2(n95), .ZN(n37) );
  ND2D1BWP16P90LVT U49 ( .A1(n96), .A2(n53), .ZN(n5) );
  ND2D1BWP16P90LVT U66 ( .A1(n128), .A2(n137), .ZN(n61) );
  ND2D1BWP16P90LVT U69 ( .A1(n99), .A2(n64), .ZN(n8) );
  ND2D1BWP16P90LVT U76 ( .A1(n333), .A2(n68), .ZN(n9) );
  ND2D1BWP16P90LVT U99 ( .A1(n103), .A2(n82), .ZN(n12) );
  ND2D1BWP16P90LVT U102 ( .A1(n328), .A2(n182), .ZN(n82) );
  ND2D1BWP16P90LVT U106 ( .A1(n104), .A2(n86), .ZN(n13) );
  ND2D1BWP16P90LVT U109 ( .A1(n186), .A2(n188), .ZN(n86) );
  ND2D1BWP16P90LVT U113 ( .A1(n105), .A2(n90), .ZN(n14) );
  ND2D1BWP16P90LVT U116 ( .A1(n190), .A2(n245), .ZN(n90) );
  ND2D1BWP16P90LVT U121 ( .A1(n246), .A2(n253), .ZN(n92) );
  FA1D1BWP16P90LVT U122 ( .A(n199), .B(n192), .CI(n111), .CO(n107), .S(n108)
         );
  FA1D1BWP16P90LVT U123 ( .A(n117), .B(n115), .CI(n112), .CO(n109), .S(n110)
         );
  FA1D1BWP16P90LVT U130 ( .A(n223), .B(n209), .CI(n135), .CO(n123), .S(n124)
         );
  FA1D1BWP16P90LVT U136 ( .A(n231), .B(n203), .CI(n217), .CO(n135), .S(n136)
         );
  HA1D2BWP16P90LVT U153 ( .A(n220), .B(n234), .CO(n169), .S(n170) );
  FA1D1BWP16P90LVT U159 ( .A(n250), .B(n243), .CI(n229), .CO(n181), .S(n182)
         );
  HA1D2BWP16P90LVT U160 ( .A(n222), .B(n236), .CO(n183), .S(n184) );
  HA1D2BWP16P90LVT U162 ( .A(n251), .B(n237), .CO(n187), .S(n188) );
  HA1D2BWP16P90LVT U163 ( .A(n252), .B(n238), .CO(n189), .S(n190) );
  XOR2D1BWP16P90LVT U246 ( .A1(n249), .A2(n228), .Z(n306) );
  XOR2D2BWP16P90LVT U247 ( .A1(n306), .A2(n242), .Z(n176) );
  ND2D1BWP16P90 U248 ( .A1(n242), .A2(n228), .ZN(n307) );
  ND2D1BWP16P90 U249 ( .A1(n242), .A2(n249), .ZN(n308) );
  ND2D1BWP16P90 U250 ( .A1(n228), .A2(n249), .ZN(n309) );
  ND3D2BWP16P90LVT U251 ( .A1(n307), .A2(n308), .A3(n309), .ZN(n175) );
  NR2D2BWP16P90LVT U252 ( .A1(n266), .A2(n259), .ZN(n228) );
  NR2D1BWP20P90LVT U253 ( .A1(n268), .A2(n257), .ZN(n242) );
  XOR2D1BWP16P90LVT U254 ( .A1(n175), .A2(n170), .Z(n320) );
  CKNR2D2BWP16P90LVT U255 ( .A1(n265), .A2(n261), .ZN(n222) );
  NR2D2BWP16P90 U256 ( .A1(n265), .A2(n257), .ZN(n218) );
  ND2D1BWP16P90LVT U257 ( .A1(n140), .A2(n151), .ZN(n433) );
  CKNR2D4BWP16P90LVT U258 ( .A1(n268), .A2(n255), .ZN(n240) );
  NR2D2BWP16P90LVT U259 ( .A1(n267), .A2(n256), .ZN(n233) );
  IND2D1BWP16P90LVT U260 ( .A1(n351), .B1(n114), .ZN(n53) );
  XOR2D4BWP16P90LVT U261 ( .A1(n338), .A2(n121), .Z(n114) );
  XOR2D1BWP16P90LVT U262 ( .A1(n193), .A2(n207), .Z(n310) );
  XOR2D1BWP16P90LVT U263 ( .A1(n310), .A2(n200), .Z(n112) );
  ND2D1BWP16P90LVT U264 ( .A1(n200), .A2(n207), .ZN(n311) );
  ND2D1BWP16P90LVT U265 ( .A1(n200), .A2(n193), .ZN(n312) );
  ND2D1BWP16P90LVT U266 ( .A1(n207), .A2(n193), .ZN(n313) );
  ND3D1BWP16P90LVT U267 ( .A1(n311), .A2(n312), .A3(n313), .ZN(n111) );
  NR2D1BWP16P90LVT U268 ( .A1(n364), .A2(n255), .ZN(n200) );
  INVD1BWP16P90LVT U269 ( .I(n44), .ZN(n314) );
  INVD2BWP16P90LVT U270 ( .I(n42), .ZN(n44) );
  XOR3D4BWP16P90LVT U271 ( .A1(n197), .A2(n211), .A3(n218), .Z(n146) );
  ND2D1BWP16P90LVT U272 ( .A1(n211), .A2(n218), .ZN(n315) );
  ND2D1BWP16P90LVT U273 ( .A1(n211), .A2(n197), .ZN(n316) );
  ND2D1BWP16P90LVT U274 ( .A1(n218), .A2(n197), .ZN(n317) );
  ND3D2BWP16P90LVT U275 ( .A1(n315), .A2(n316), .A3(n317), .ZN(n145) );
  NR2D2BWP16P90LVT U276 ( .A1(n370), .A2(n260), .ZN(n197) );
  ND2D1BWP16P90 U277 ( .A1(n145), .A2(n147), .ZN(n375) );
  CKNR2D1BWP16P90LVT U278 ( .A1(n263), .A2(n260), .ZN(n205) );
  OR2D2BWP16P90LVT U279 ( .A1(n172), .A2(n179), .Z(n425) );
  NR2D2BWP16P90LVT U280 ( .A1(n180), .A2(n182), .ZN(n81) );
  INVD4BWP16P90LVT U281 ( .I(a[0]), .ZN(n269) );
  NR2D1BWP16P90LVT U282 ( .A1(n113), .A2(n110), .ZN(n318) );
  NR2D1BWP16P90LVT U283 ( .A1(n113), .A2(n110), .ZN(n41) );
  CKND1BWP16P90LVT U284 ( .I(n71), .ZN(n319) );
  XOR2D2BWP16P90LVT U285 ( .A1(n320), .A2(n168), .Z(n164) );
  ND2D1BWP16P90LVT U286 ( .A1(n168), .A2(n170), .ZN(n321) );
  ND2D1BWP16P90LVT U287 ( .A1(n168), .A2(n175), .ZN(n322) );
  ND2D1BWP16P90LVT U288 ( .A1(n170), .A2(n175), .ZN(n323) );
  ND3D1BWP16P90LVT U289 ( .A1(n321), .A2(n322), .A3(n323), .ZN(n163) );
  XOR2D2BWP16P90LVT U290 ( .A1(n391), .A2(n206), .Z(n168) );
  AN3D4BWP16P90LVT U291 ( .A1(n366), .A2(n367), .A3(n368), .Z(n351) );
  NR2D2BWP16P90LVT U292 ( .A1(n370), .A2(n258), .ZN(n195) );
  INVD4BWP16P90LVT U293 ( .I(a[7]), .ZN(n370) );
  NR2D2BWP16P90LVT U294 ( .A1(n265), .A2(n260), .ZN(n221) );
  FA1D1BWP16P90LVT U295 ( .A(n241), .B(n227), .CI(n353), .CO(n165), .S(n166)
         );
  ND2D1BWP16P90 U296 ( .A1(n131), .A2(n126), .ZN(n414) );
  NR2D2BWP16P90LVT U297 ( .A1(n371), .A2(n258), .ZN(n235) );
  INVD4BWP16P90LVT U298 ( .I(a[2]), .ZN(n371) );
  NR2D2BWP16P90LVT U299 ( .A1(n371), .A2(n261), .ZN(n238) );
  INVD2BWP16P90LVT U300 ( .I(n318), .ZN(n95) );
  XOR2D4BWP16P90LVT U301 ( .A1(n132), .A2(n139), .Z(n324) );
  XOR2D4BWP16P90LVT U302 ( .A1(n324), .A2(n130), .Z(n128) );
  ND2D1BWP16P90 U303 ( .A1(n130), .A2(n132), .ZN(n325) );
  ND2D1BWP16P90 U304 ( .A1(n130), .A2(n139), .ZN(n326) );
  ND2D1BWP16P90 U305 ( .A1(n132), .A2(n139), .ZN(n327) );
  ND3D1BWP16P90LVT U306 ( .A1(n325), .A2(n326), .A3(n327), .ZN(n127) );
  CKNR2D4BWP16P90LVT U307 ( .A1(n128), .A2(n137), .ZN(n60) );
  XOR2D2BWP16P90LVT U308 ( .A1(n124), .A2(n129), .Z(n365) );
  ND2D1BWP16P90LVT U309 ( .A1(n120), .A2(n127), .ZN(n56) );
  ND3D2BWP16P90LVT U310 ( .A1(n335), .A2(n336), .A3(n337), .ZN(n143) );
  AN2D2BWP16P90LVT U311 ( .A1(n221), .A2(n235), .Z(n353) );
  ND2D1BWP16P90 U312 ( .A1(n399), .A2(n221), .ZN(n402) );
  FA1D1BWP16P90LVT U313 ( .A(n187), .B(n184), .CI(n185), .S(n328) );
  INVD1BWP16P90LVT U314 ( .I(a[5]), .ZN(n329) );
  NR2D2BWP16P90LVT U315 ( .A1(n263), .A2(n258), .ZN(n203) );
  XOR2D2BWP16P90LVT U316 ( .A1(n365), .A2(n122), .Z(n120) );
  AOI21D4BWP16P90LVT U317 ( .A1(n424), .A2(n423), .B(n71), .ZN(n69) );
  XOR2D2BWP16P90 U318 ( .A1(n9), .A2(n69), .Z(product[7]) );
  IOA21D2BWP16P90LVT U319 ( .A1(n425), .A2(n80), .B(n79), .ZN(n423) );
  XOR3D1BWP16P90LVT U320 ( .A1(n165), .A2(n158), .A3(n156), .Z(n390) );
  XNR2D4BWP16P90LVT U321 ( .A1(n142), .A2(n151), .ZN(n427) );
  XOR2D4BWP16P90LVT U322 ( .A1(n147), .A2(n145), .Z(n372) );
  INVD1BWP16P90LVT U323 ( .I(n174), .ZN(n330) );
  CKND1BWP16P90LVT U324 ( .I(n330), .ZN(n331) );
  XNR2D2BWP16P90 U325 ( .A1(n11), .A2(n80), .ZN(product[5]) );
  BUFFD2BWP16P90LVT U326 ( .I(n224), .Z(n332) );
  NR2D1BWP16P90LVT U327 ( .A1(n265), .A2(n259), .ZN(n220) );
  FA1D2BWP16P90LVT U328 ( .A(n169), .B(n160), .CI(n167), .CO(n153), .S(n154)
         );
  INVD1BWP16P90 U329 ( .I(n63), .ZN(n99) );
  ND2D1BWP16P90 U330 ( .A1(n95), .A2(n23), .ZN(n21) );
  ND2D1BWP16P90 U331 ( .A1(n95), .A2(n314), .ZN(n4) );
  ND2D1BWP16P90LVT U332 ( .A1(n113), .A2(n110), .ZN(n42) );
  CKOR2D2BWP16P90 U333 ( .A1(n150), .A2(n161), .Z(n333) );
  NR2D2BWP16P90LVT U334 ( .A1(n150), .A2(n161), .ZN(n386) );
  OAI21D2BWP16P90LVT U335 ( .A1(n81), .A2(n426), .B(n82), .ZN(n80) );
  AOI21D2BWP16P90LVT U336 ( .A1(n58), .A2(n66), .B(n381), .ZN(n1) );
  OAI21D2BWP16P90LVT U337 ( .A1(n60), .A2(n64), .B(n61), .ZN(n381) );
  NR2D2BWP16P90LVT U338 ( .A1(n55), .A2(n52), .ZN(n417) );
  XOR2D4BWP16P90LVT U339 ( .A1(n239), .A2(n225), .Z(n334) );
  XOR2D4BWP16P90LVT U340 ( .A1(n334), .A2(n159), .Z(n144) );
  ND2D1BWP16P90 U341 ( .A1(n159), .A2(n225), .ZN(n335) );
  ND2D1BWP16P90LVT U342 ( .A1(n159), .A2(n239), .ZN(n336) );
  ND2D1BWP16P90 U343 ( .A1(n225), .A2(n239), .ZN(n337) );
  NR2D1BWP16P90LVT U344 ( .A1(n266), .A2(n256), .ZN(n225) );
  AN2D4BWP16P90LVT U345 ( .A1(a[0]), .A2(b[6]), .Z(n248) );
  XOR2D4BWP16P90LVT U346 ( .A1(n123), .A2(n116), .Z(n338) );
  ND2D1BWP16P90LVT U347 ( .A1(n121), .A2(n116), .ZN(n339) );
  ND2D1BWP16P90LVT U348 ( .A1(n121), .A2(n123), .ZN(n340) );
  ND2D1BWP16P90LVT U349 ( .A1(n116), .A2(n123), .ZN(n341) );
  ND3D1BWP16P90LVT U350 ( .A1(n339), .A2(n340), .A3(n341), .ZN(n113) );
  XOR2D2BWP16P90LVT U351 ( .A1(n347), .A2(n118), .Z(n116) );
  ND3D1BWP16P90LVT U352 ( .A1(n414), .A2(n415), .A3(n416), .ZN(n121) );
  ND2D1BWP16P90 U353 ( .A1(a[4]), .A2(b[7]), .ZN(n357) );
  IOA22D1BWP16P90LVT U354 ( .B1(n55), .B2(n1), .A1(n120), .A2(n127), .ZN(n54)
         );
  NR2D1BWP16P90LVT U355 ( .A1(n268), .A2(n254), .ZN(n239) );
  XOR2D4BWP16P90LVT U356 ( .A1(n232), .A2(n204), .Z(n148) );
  CKND1BWP16P90LVT U357 ( .I(n342), .ZN(n147) );
  ND2D1BWP16P90LVT U358 ( .A1(n232), .A2(n204), .ZN(n342) );
  CKNR2D2BWP16P90LVT U359 ( .A1(n267), .A2(n255), .ZN(n232) );
  ND2D1BWP16P90 U360 ( .A1(n196), .A2(n332), .ZN(n345) );
  ND2D1BWP16P90LVT U361 ( .A1(n195), .A2(n216), .ZN(n385) );
  ND3D4BWP16P90LVT U362 ( .A1(n392), .A2(n393), .A3(n394), .ZN(n167) );
  NR2D1BWP16P90LVT U363 ( .A1(n263), .A2(n256), .ZN(n201) );
  FA1D1BWP16P90LVT U364 ( .A(n201), .B(n215), .CI(n194), .CO(n117), .S(n118)
         );
  NR2D1BWP16P90LVT U365 ( .A1(n371), .A2(n257), .ZN(n234) );
  XOR2D4BWP16P90LVT U366 ( .A1(n224), .A2(n210), .Z(n343) );
  XOR2D4BWP16P90LVT U367 ( .A1(n343), .A2(n196), .Z(n134) );
  ND2D1BWP16P90LVT U368 ( .A1(n196), .A2(n210), .ZN(n344) );
  ND2D1BWP16P90 U369 ( .A1(n210), .A2(n332), .ZN(n346) );
  ND3D1BWP16P90LVT U370 ( .A1(n344), .A2(n345), .A3(n346), .ZN(n133) );
  NR2D1BWP16P90 U371 ( .A1(n369), .A2(n259), .ZN(n196) );
  XOR2D4BWP16P90LVT U372 ( .A1(n208), .A2(n125), .Z(n347) );
  ND2D1BWP16P90 U373 ( .A1(n118), .A2(n125), .ZN(n348) );
  ND2D1BWP16P90 U374 ( .A1(n118), .A2(n208), .ZN(n349) );
  ND2D1BWP16P90 U375 ( .A1(n125), .A2(n208), .ZN(n350) );
  ND3D1BWP16P90LVT U376 ( .A1(n348), .A2(n349), .A3(n350), .ZN(n115) );
  NR2D1BWP16P90LVT U377 ( .A1(n380), .A2(n255), .ZN(n208) );
  ND3D2BWP16P90LVT U378 ( .A1(n383), .A2(n384), .A3(n385), .ZN(n125) );
  IND3D2BWP16P90LVT U379 ( .A1(n329), .B1(b[1]), .B2(n206), .ZN(n392) );
  NR2D2BWP16P90LVT U380 ( .A1(n263), .A2(n261), .ZN(n206) );
  INVD4BWP16P90LVT U381 ( .I(a[6]), .ZN(n263) );
  ND2D1BWP16P90LVT U382 ( .A1(n401), .A2(n402), .ZN(n178) );
  CKND1BWP16P90LVT U383 ( .I(n379), .ZN(n380) );
  CKND1BWP16P90LVT U384 ( .I(b[5]), .ZN(n256) );
  CKND1BWP16P90LVT U385 ( .I(b[3]), .ZN(n258) );
  ND2D1BWP16P90LVT U386 ( .A1(n136), .A2(n147), .ZN(n374) );
  NR2D1BWP16P90LVT U387 ( .A1(n120), .A2(n127), .ZN(n55) );
  CKND1BWP16P90LVT U388 ( .I(n15), .ZN(product[1]) );
  AN2D1BWP16P90LVT U389 ( .A1(n389), .A2(n388), .Z(n352) );
  XNR2D1BWP16P90LVT U390 ( .A1(n10), .A2(n407), .ZN(product[6]) );
  OAI21D2BWP16P90LVT U391 ( .A1(n69), .A2(n386), .B(n68), .ZN(n408) );
  INVD1BWP16P90 U392 ( .I(n176), .ZN(n354) );
  CKND1BWP16P90LVT U393 ( .I(n354), .ZN(n355) );
  XOR2D4BWP16P90LVT U394 ( .A1(n247), .A2(n219), .Z(n160) );
  XOR3D2BWP16P90LVT U395 ( .A1(n240), .A2(n212), .A3(n226), .Z(n156) );
  NR2D2BWP16P90LVT U396 ( .A1(n430), .A2(n259), .ZN(n212) );
  NR2D1BWP16P90LVT U397 ( .A1(n430), .A2(n258), .ZN(n211) );
  ND2D1BWP16P90LVT U398 ( .A1(n136), .A2(n145), .ZN(n373) );
  CKND2BWP16P90LVT U399 ( .I(n357), .ZN(n215) );
  INVD1BWP16P90LVT U400 ( .I(n408), .ZN(n65) );
  OAI21D1BWP16P90LVT U401 ( .A1(n422), .A2(n28), .B(n29), .ZN(n27) );
  OA21D2BWP16P90LVT U402 ( .A1(n56), .A2(n52), .B(n53), .Z(n356) );
  AN2D2BWP16P90LVT U403 ( .A1(a[6]), .A2(b[2]), .Z(n204) );
  ND2D2BWP16P90LVT U404 ( .A1(n247), .A2(n219), .ZN(n358) );
  CKND2BWP16P90LVT U405 ( .I(n358), .ZN(n159) );
  NR2D2BWP16P90LVT U406 ( .A1(n266), .A2(n255), .ZN(n224) );
  INR2D4BWP16P90LVT U407 ( .A1(n351), .B1(n114), .ZN(n52) );
  AOAI211D4BWP16P90LVT U408 ( .A1(n359), .A2(n360), .B(n361), .C(n378), .ZN(
        n149) );
  INVD1BWP16P90 U409 ( .I(n154), .ZN(n359) );
  INVD1BWP16P90 U410 ( .I(n163), .ZN(n360) );
  CKND2BWP16P90LVT U411 ( .I(n390), .ZN(n361) );
  CKND1BWP16P90LVT U412 ( .I(b[0]), .ZN(n261) );
  MAOI222D2BWP16P90LVT U413 ( .A(n148), .B(n155), .C(n157), .ZN(n362) );
  CKND2BWP16P90LVT U414 ( .I(n362), .ZN(n141) );
  NR2D4BWP16P90LVT U415 ( .A1(n265), .A2(n258), .ZN(n219) );
  INVD1BWP16P90LVT U416 ( .I(n356), .ZN(n363) );
  NR2D2BWP16P90LVT U417 ( .A1(n371), .A2(n254), .ZN(n231) );
  NR2D2BWP16P90LVT U418 ( .A1(n430), .A2(n257), .ZN(n210) );
  AN2D2BWP16P90LVT U419 ( .A1(a[0]), .A2(b[7]), .Z(n247) );
  ND2D2BWP16P90LVT U420 ( .A1(n212), .A2(n240), .ZN(n410) );
  NR2D2BWP16P90LVT U421 ( .A1(n369), .A2(n261), .ZN(n198) );
  INVD1BWP16P90LVT U422 ( .I(n221), .ZN(n400) );
  DEL025D1BWP16P90 U423 ( .I(n263), .Z(n364) );
  ND2D1BWP16P90LVT U424 ( .A1(n140), .A2(n142), .ZN(n434) );
  XOR2D2BWP16P90LVT U425 ( .A1(n412), .A2(n155), .Z(n142) );
  ND2D1BWP16P90LVT U426 ( .A1(n213), .A2(n248), .ZN(n394) );
  CKND2BWP16P90LVT U427 ( .I(n73), .ZN(n71) );
  OAI21D2BWP16P90LVT U428 ( .A1(n52), .A2(n56), .B(n53), .ZN(n51) );
  NR2D1BWP16P90LVT U429 ( .A1(n370), .A2(n257), .ZN(n194) );
  ND2D1BWP16P90LVT U430 ( .A1(n122), .A2(n129), .ZN(n366) );
  ND2D1BWP16P90LVT U431 ( .A1(n122), .A2(n124), .ZN(n367) );
  ND2D1BWP16P90 U432 ( .A1(n129), .A2(n124), .ZN(n368) );
  XOR2D2BWP16P90LVT U433 ( .A1(n148), .A2(n157), .Z(n412) );
  INVD1BWP16P90 U434 ( .I(n178), .ZN(n404) );
  CKND2D1BWP16P90LVT U435 ( .A1(n403), .A2(n178), .ZN(n406) );
  XOR2D4BWP16P90LVT U436 ( .A1(n395), .A2(n174), .Z(n172) );
  CKND2BWP16P90LVT U437 ( .I(a[7]), .ZN(n369) );
  ND2D1BWP16P90 U438 ( .A1(n183), .A2(n214), .ZN(n421) );
  NR2D2BWP16P90LVT U439 ( .A1(n380), .A2(n261), .ZN(n214) );
  XNR2D1BWP16P90LVT U440 ( .A1(n54), .A2(n5), .ZN(product[11]) );
  INVD1BWP16P90 U441 ( .I(n60), .ZN(n98) );
  ND2D1BWP16P90LVT U442 ( .A1(n235), .A2(n400), .ZN(n401) );
  NR2D1BWP16P90LVT U443 ( .A1(n371), .A2(n259), .ZN(n236) );
  ND2D2BWP16P90LVT U444 ( .A1(n212), .A2(n226), .ZN(n409) );
  NR2D2BWP16P90LVT U445 ( .A1(n266), .A2(n257), .ZN(n226) );
  FA1D4BWP16P90LVT U446 ( .A(n244), .B(n230), .CI(n189), .CO(n185), .S(n186)
         );
  CKNR2D2BWP16P90LVT U447 ( .A1(n138), .A2(n149), .ZN(n63) );
  XNR2D2BWP16P90LVT U448 ( .A1(n427), .A2(n140), .ZN(n138) );
  CKND2BWP16P90LVT U449 ( .I(a[2]), .ZN(n267) );
  INVD4BWP16P90LVT U450 ( .I(a[3]), .ZN(n266) );
  INVD4BWP16P90LVT U451 ( .I(a[5]), .ZN(n430) );
  ND2D2BWP16P90LVT U452 ( .A1(n352), .A2(n387), .ZN(n161) );
  ND2D1BWP16P90 U453 ( .A1(n164), .A2(n173), .ZN(n389) );
  ND2D2BWP16P90LVT U454 ( .A1(n431), .A2(n161), .ZN(n68) );
  XOR2D2BWP16P90LVT U455 ( .A1(n372), .A2(n136), .Z(n132) );
  ND3D2BWP16P90LVT U456 ( .A1(n373), .A2(n374), .A3(n375), .ZN(n131) );
  ND2D1BWP16P90LVT U457 ( .A1(n131), .A2(n133), .ZN(n415) );
  AOI21D2BWP16P90LVT U458 ( .A1(n408), .A2(n58), .B(n381), .ZN(n422) );
  DEL025D1BWP16P90 U459 ( .I(n423), .Z(n407) );
  ND2D1BWP16P90LVT U460 ( .A1(n178), .A2(n214), .ZN(n420) );
  ND3D4BWP16P90LVT U461 ( .A1(n411), .A2(n409), .A3(n410), .ZN(n155) );
  BUFFD2BWP16P90LVT U462 ( .I(n422), .Z(n376) );
  XOR2D2BWP16P90LVT U463 ( .A1(n163), .A2(n154), .Z(n377) );
  XOR2D4BWP16P90LVT U464 ( .A1(n377), .A2(n390), .Z(n150) );
  ND2D1BWP16P90 U465 ( .A1(n154), .A2(n163), .ZN(n378) );
  INVD1BWP16P90 U466 ( .I(n329), .ZN(n379) );
  INVD4BWP16P90LVT U467 ( .I(a[1]), .ZN(n268) );
  ND2D2BWP16P90LVT U468 ( .A1(n138), .A2(n149), .ZN(n64) );
  XOR2D2BWP16P90LVT U469 ( .A1(n216), .A2(n195), .Z(n382) );
  XOR2D2BWP16P90LVT U470 ( .A1(n382), .A2(n202), .Z(n126) );
  ND2D1BWP16P90 U471 ( .A1(n202), .A2(n195), .ZN(n383) );
  ND2D1BWP16P90 U472 ( .A1(n216), .A2(n202), .ZN(n384) );
  NR2D1BWP16P90LVT U473 ( .A1(n265), .A2(n255), .ZN(n216) );
  INVD4BWP16P90LVT U474 ( .I(a[4]), .ZN(n265) );
  INVD1BWP16P90LVT U475 ( .I(n235), .ZN(n399) );
  ND2D2BWP16P90LVT U476 ( .A1(n405), .A2(n406), .ZN(n174) );
  INVD2BWP16P90LVT U477 ( .I(n418), .ZN(n403) );
  XOR3D4BWP16P90LVT U478 ( .A1(n173), .A2(n166), .A3(n164), .Z(n162) );
  ND2D1BWP16P90 U479 ( .A1(n164), .A2(n166), .ZN(n387) );
  ND2D1BWP16P90 U480 ( .A1(n166), .A2(n173), .ZN(n388) );
  ND3D2BWP16P90LVT U481 ( .A1(n419), .A2(n420), .A3(n421), .ZN(n173) );
  OAI21D2BWP16P90LVT U482 ( .A1(n69), .A2(n386), .B(n68), .ZN(n66) );
  FA1D2BWP16P90LVT U483 ( .A(n165), .B(n158), .CI(n156), .CO(n151), .S(n152)
         );
  XOR2D4BWP16P90LVT U484 ( .A1(n213), .A2(n248), .Z(n391) );
  ND2D1BWP16P90LVT U485 ( .A1(n206), .A2(n248), .ZN(n393) );
  NR2D2BWP16P90LVT U486 ( .A1(n430), .A2(n260), .ZN(n213) );
  NR2D2BWP16P90LVT U487 ( .A1(n63), .A2(n60), .ZN(n58) );
  OR2D1BWP16P90LVT U488 ( .A1(n162), .A2(n171), .Z(n424) );
  ND2D1BWP16P90LVT U489 ( .A1(n162), .A2(n171), .ZN(n73) );
  XOR2D4BWP16P90LVT U490 ( .A1(n181), .A2(n176), .Z(n395) );
  ND2D1BWP16P90 U491 ( .A1(n355), .A2(n181), .ZN(n398) );
  FA1D1BWP16P90LVT U492 ( .A(n134), .B(n143), .CI(n141), .CO(n129), .S(n130)
         );
  ND2D1BWP16P90 U493 ( .A1(n331), .A2(n355), .ZN(n396) );
  ND2D1BWP16P90 U494 ( .A1(n331), .A2(n181), .ZN(n397) );
  ND3D1BWP16P90LVT U495 ( .A1(n396), .A2(n397), .A3(n398), .ZN(n171) );
  ND2D1BWP16P90 U496 ( .A1(n418), .A2(n404), .ZN(n405) );
  ND2D1BWP16P90 U497 ( .A1(n183), .A2(n178), .ZN(n419) );
  INVD1BWP16P90 U498 ( .I(n52), .ZN(n96) );
  INVD1BWP16P90LVT U499 ( .I(n417), .ZN(n48) );
  ND2D1BWP16P90LVT U500 ( .A1(n226), .A2(n240), .ZN(n411) );
  XOR2D2BWP16P90LVT U501 ( .A1(n413), .A2(n131), .Z(n122) );
  XOR2D1BWP16P90 U502 ( .A1(n8), .A2(n65), .Z(product[8]) );
  OAI21D1BWP16P90LVT U503 ( .A1(n1), .A2(n37), .B(n38), .ZN(n36) );
  CKND1BWP16P90LVT U504 ( .I(b[7]), .ZN(n254) );
  CKND1BWP16P90LVT U505 ( .I(b[1]), .ZN(n260) );
  CKND1BWP16P90LVT U506 ( .I(b[2]), .ZN(n259) );
  XOR2D4BWP16P90LVT U507 ( .A1(n133), .A2(n126), .Z(n413) );
  ND2D1BWP16P90 U508 ( .A1(n126), .A2(n133), .ZN(n416) );
  ND2D1BWP16P90 U509 ( .A1(n172), .A2(n179), .ZN(n79) );
  INVD1BWP16P90 U510 ( .I(n81), .ZN(n103) );
  INVD1BWP16P90 U511 ( .I(n85), .ZN(n104) );
  XOR2D1BWP16P90 U512 ( .A1(n13), .A2(n428), .Z(product[3]) );
  NR2D1BWP16P90 U513 ( .A1(n268), .A2(n256), .ZN(n241) );
  NR2D1BWP16P90 U514 ( .A1(n266), .A2(n258), .ZN(n227) );
  NR2D1BWP16P90 U515 ( .A1(n380), .A2(n256), .ZN(n209) );
  NR2D1BWP16P90 U516 ( .A1(n266), .A2(n254), .ZN(n223) );
  NR2D1BWP16P90 U517 ( .A1(n269), .A2(n257), .ZN(n250) );
  NR2D1BWP16P90 U518 ( .A1(n266), .A2(n260), .ZN(n229) );
  NR2D1BWP16P90 U519 ( .A1(n269), .A2(n260), .ZN(n253) );
  NR2D1BWP16P90 U520 ( .A1(n268), .A2(n261), .ZN(n246) );
  NR2D1BWP16P90 U521 ( .A1(n268), .A2(n260), .ZN(n245) );
  NR2D1BWP16P90 U522 ( .A1(n369), .A2(n256), .ZN(n193) );
  NR2D1BWP16P90 U523 ( .A1(n380), .A2(n254), .ZN(n207) );
  NR2D1BWP16P90 U524 ( .A1(n370), .A2(n255), .ZN(n192) );
  NR2D1BWP16P90 U525 ( .A1(n370), .A2(n254), .ZN(n191) );
  NR2D1BWP16P90 U526 ( .A1(n269), .A2(n261), .ZN(product[0]) );
  XOR2D4BWP16P90LVT U527 ( .A1(n214), .A2(n183), .Z(n418) );
  OAI21D1BWP16P90LVT U528 ( .A1(n1), .A2(n48), .B(n356), .ZN(n47) );
  XNR2D1BWP16P90LVT U529 ( .A1(n62), .A2(n7), .ZN(product[9]) );
  ND2D1BWP16P90 U530 ( .A1(n98), .A2(n61), .ZN(n7) );
  OAI21D1BWP16P90LVT U531 ( .A1(n65), .A2(n432), .B(n64), .ZN(n62) );
  CKND1BWP16P90LVT U532 ( .I(n21), .ZN(n19) );
  CKND1BWP16P90LVT U533 ( .I(n25), .ZN(n93) );
  CKND1BWP16P90LVT U534 ( .I(n32), .ZN(n94) );
  OA21D1BWP16P90LVT U535 ( .A1(n85), .A2(n428), .B(n86), .Z(n426) );
  ND3D1BWP16P90LVT U536 ( .A1(n433), .A2(n434), .A3(n435), .ZN(n137) );
  OA21D1BWP16P90LVT U537 ( .A1(n89), .A2(n92), .B(n90), .Z(n428) );
  NR2D1BWP16P90LVT U538 ( .A1(n41), .A2(n32), .ZN(n30) );
  AO21D1BWP16P90LVT U539 ( .A1(n44), .A2(n23), .B(n24), .Z(n429) );
  NR2D1BWP16P90LVT U540 ( .A1(n32), .A2(n25), .ZN(n23) );
  XOR2D1BWP16P90 U541 ( .A1(n12), .A2(n426), .Z(product[4]) );
  XOR2D1BWP16P90LVT U542 ( .A1(n14), .A2(n92), .Z(product[2]) );
  CKND1BWP16P90LVT U543 ( .I(n89), .ZN(n105) );
  NR2D1BWP16P90LVT U544 ( .A1(n186), .A2(n188), .ZN(n85) );
  FA1D1BWP16P90LVT U545 ( .A(n187), .B(n184), .CI(n185), .CO(n179), .S(n180)
         );
  NR2D1BWP16P90LVT U546 ( .A1(n190), .A2(n245), .ZN(n89) );
  NR2D1BWP16P90LVT U547 ( .A1(n109), .A2(n108), .ZN(n32) );
  NR2D1BWP16P90LVT U548 ( .A1(n107), .A2(n191), .ZN(n25) );
  IND2D1BWP16P90LVT U549 ( .A1(n91), .B1(n92), .ZN(n15) );
  NR2D1BWP16P90LVT U550 ( .A1(n246), .A2(n253), .ZN(n91) );
  NR2D1BWP16P90LVT U551 ( .A1(n265), .A2(n256), .ZN(n217) );
  NR2D1BWP16P90LVT U552 ( .A1(n266), .A2(n261), .ZN(n230) );
  NR2D1BWP16P90LVT U553 ( .A1(n269), .A2(n259), .ZN(n252) );
  NR2D1BWP16P90LVT U554 ( .A1(n269), .A2(n256), .ZN(n249) );
  NR2D1BWP16P90LVT U555 ( .A1(n269), .A2(n258), .ZN(n251) );
  CKND1BWP16P90LVT U556 ( .I(b[4]), .ZN(n257) );
  CKND1BWP16P90LVT U557 ( .I(b[6]), .ZN(n255) );
  NR2D1BWP16P90 U558 ( .A1(n371), .A2(n260), .ZN(n237) );
  AOI21D1BWP16P90LVT U559 ( .A1(n51), .A2(n30), .B(n31), .ZN(n29) );
  AOI21D1BWP16P90 U560 ( .A1(n363), .A2(n19), .B(n429), .ZN(n18) );
  ND2D1BWP16P90 U561 ( .A1(n97), .A2(n56), .ZN(n6) );
  XOR2D1BWP16P90LVT U562 ( .A1(n376), .A2(n6), .Z(product[10]) );
  FA1D1BWP16P90LVT U563 ( .A(n144), .B(n146), .CI(n153), .CO(n139), .S(n140)
         );
  AOI21D1BWP16P90LVT U564 ( .A1(n51), .A2(n95), .B(n44), .ZN(n38) );
  XNR2D1BWP16P90LVT U565 ( .A1(n27), .A2(n2), .ZN(product[14]) );
  XNR2D1BWP16P90LVT U566 ( .A1(n47), .A2(n4), .ZN(product[12]) );
  ND2D1BWP16P90 U567 ( .A1(n425), .A2(n79), .ZN(n11) );
  NR2D1BWP16P90 U568 ( .A1(n364), .A2(n254), .ZN(n199) );
  NR2D1BWP16P90 U569 ( .A1(n263), .A2(n257), .ZN(n202) );
  XOR3D2BWP16P90LVT U570 ( .A1(n163), .A2(n154), .A3(n152), .Z(n431) );
  ND2D1BWP16P90 U571 ( .A1(n424), .A2(n319), .ZN(n10) );
  INVD1BWP16P90LVT U572 ( .I(n99), .ZN(n432) );
  ND2D1BWP16P90LVT U573 ( .A1(n151), .A2(n142), .ZN(n435) );
  INVD1BWP16P90LVT U574 ( .I(n55), .ZN(n97) );
  NR2D1BWP16P90LVT U575 ( .A1(n268), .A2(n259), .ZN(n244) );
  NR2D1BWP16P90LVT U576 ( .A1(n268), .A2(n258), .ZN(n243) );
  FA1D2BWP16P90LVT U577 ( .A(n198), .B(n233), .CI(n205), .CO(n157), .S(n158)
         );
  XNR2D1BWP16P90LVT U578 ( .A1(n36), .A2(n3), .ZN(product[13]) );
endmodule


module stage2 ( addsub, c, clk, reset, result );
  input [7:0] addsub;
  input [7:0] c;
  output [15:0] result;
  input clk, reset;

  wire   [15:0] final;

  D_FF_DATA_WIDTH16 dff2 ( .q(result), .d(final), .clk(clk), .reset(reset) );
  stage2_DW_mult_uns_2 mult_33 ( .a(addsub), .b(c), .product(final) );
endmodule


module hw2_pipe ( a, b, c, s, clk, reset, d );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [15:0] d;
  input s, clk, reset;

  wire   [7:0] addsub;

  stage1 s1 ( .a(a), .b(b), .s(s), .clk(clk), .reset(reset), .result(addsub)
         );
  stage2 s2 ( .addsub(addsub), .c(c), .clk(clk), .reset(reset), .result(d) );
endmodule

