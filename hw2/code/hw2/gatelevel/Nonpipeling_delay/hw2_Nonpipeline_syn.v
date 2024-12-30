/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Oct 20 20:43:14 2024
/////////////////////////////////////////////////////////////


module hw2_nonpipe_DW01_add_2 ( SUM, \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , 
        \A[2] , \A[1] , \A[0] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , 
        \B[1] , \B[0]  );
  output [8:0] SUM;
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[7] ,
         \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n35, n36, n37, n38, n39, n40, n41, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105;
  wire   [7:0] B;
  wire   [7:0] A;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;
  assign A[0] = \A[0] ;

  ND2D1BWP16P90LVT U9 ( .A1(n48), .A2(n16), .ZN(n2) );
  ND2D1BWP16P90LVT U12 ( .A1(A[7]), .A2(B[7]), .ZN(n16) );
  OAI21D1BWP16P90LVT U14 ( .A1(n1), .A2(n18), .B(n19), .ZN(n17) );
  OAI21D1BWP16P90LVT U24 ( .A1(n1), .A2(n25), .B(n26), .ZN(n24) );
  ND2D1BWP16P90LVT U29 ( .A1(n50), .A2(n30), .ZN(n4) );
  ND2D1BWP16P90LVT U43 ( .A1(n52), .A2(n38), .ZN(n6) );
  ND2D12BWP16P90LVT U68 ( .A1(A[1]), .A2(B[1]), .ZN(n45) );
  NR2D12BWP16P90LVT U69 ( .A1(A[1]), .A2(B[1]), .ZN(n105) );
  INVD4BWP16P90LVT U70 ( .I(n105), .ZN(n54) );
  NR2D12BWP16P90LVT U71 ( .A1(A[0]), .A2(B[0]), .ZN(n46) );
  ND2D4BWP16P90LVT U72 ( .A1(A[0]), .A2(B[0]), .ZN(n47) );
  ND2D2BWP16P90LVT U73 ( .A1(A[0]), .A2(B[0]), .ZN(n94) );
  NR2D4BWP16P90LVT U74 ( .A1(A[3]), .A2(B[3]), .ZN(n91) );
  OAI21D8BWP16P90LVT U75 ( .A1(n37), .A2(n41), .B(n38), .ZN(n36) );
  OAI21D2BWP16P90LVT U76 ( .A1(n1), .A2(n32), .B(n33), .ZN(n31) );
  ND2D4BWP16P90LVT U77 ( .A1(n53), .A2(n97), .ZN(n7) );
  ND2D2BWP16P90LVT U78 ( .A1(A[6]), .A2(B[6]), .ZN(n23) );
  OAI21D1BWP16P90LVT U79 ( .A1(n15), .A2(n23), .B(n16), .ZN(n14) );
  ND2D1BWP16P90 U80 ( .A1(n49), .A2(n23), .ZN(n3) );
  CKND2BWP16P90LVT U81 ( .I(n12), .ZN(n104) );
  XOR2D8BWP16P90LVT U82 ( .A1(n96), .A2(n7), .Z(SUM[2]) );
  ND2D2BWP16P90LVT U83 ( .A1(A[5]), .A2(B[5]), .ZN(n30) );
  NR2D2BWP16P90LVT U84 ( .A1(n40), .A2(n91), .ZN(n90) );
  NR2D2BWP16P90LVT U85 ( .A1(n40), .A2(n91), .ZN(n35) );
  NR2D16BWP16P90LVT U86 ( .A1(A[2]), .A2(B[2]), .ZN(n40) );
  CKNR2D8BWP16P90LVT U87 ( .A1(A[3]), .A2(B[3]), .ZN(n37) );
  OAI21D4BWP16P90LVT U88 ( .A1(n44), .A2(n95), .B(n45), .ZN(n92) );
  OAI21D4BWP16P90LVT U89 ( .A1(n44), .A2(n95), .B(n45), .ZN(n43) );
  ND2D8BWP16P90LVT U90 ( .A1(A[2]), .A2(B[2]), .ZN(n41) );
  AOI21D4BWP16P90LVT U91 ( .A1(n90), .A2(n92), .B(n36), .ZN(n93) );
  INVD2BWP16P90LVT U92 ( .I(n22), .ZN(n49) );
  ND2D1BWP16P90LVT U93 ( .A1(n27), .A2(n49), .ZN(n18) );
  INVD1BWP16P90 U94 ( .I(n91), .ZN(n52) );
  ND2D1BWP16P90LVT U95 ( .A1(n51), .A2(n33), .ZN(n5) );
  CKND1BWP16P90LVT U96 ( .I(n32), .ZN(n51) );
  ND2D4BWP16P90LVT U97 ( .A1(A[3]), .A2(B[3]), .ZN(n38) );
  ND2D12BWP16P90LVT U98 ( .A1(A[4]), .A2(B[4]), .ZN(n33) );
  NR2D4BWP16P90LVT U99 ( .A1(A[4]), .A2(B[4]), .ZN(n32) );
  NR2D2BWP16P90LVT U100 ( .A1(n32), .A2(n29), .ZN(n27) );
  NR2D16BWP16P90LVT U101 ( .A1(A[1]), .A2(B[1]), .ZN(n44) );
  INVD1BWP16P90LVT U102 ( .I(n93), .ZN(n98) );
  NR2D4BWP16P90LVT U103 ( .A1(A[7]), .A2(B[7]), .ZN(n15) );
  XNR2D8BWP16P90LVT U104 ( .A1(n39), .A2(n6), .ZN(SUM[3]) );
  OAI21D4BWP16P90LVT U105 ( .A1(n102), .A2(n40), .B(n41), .ZN(n39) );
  OA21D2BWP16P90LVT U106 ( .A1(n44), .A2(n47), .B(n45), .Z(n102) );
  INVD4BWP16P90LVT U107 ( .I(n46), .ZN(n55) );
  XOR2D8BWP16P90LVT U108 ( .A1(n8), .A2(n94), .Z(SUM[1]) );
  ND2D4BWP16P90LVT U109 ( .A1(n54), .A2(n45), .ZN(n8) );
  ND2D2BWP16P90LVT U110 ( .A1(n55), .A2(n95), .ZN(n9) );
  ND2D16BWP16P90LVT U111 ( .A1(A[0]), .A2(B[0]), .ZN(n95) );
  OA21D2BWP16P90LVT U112 ( .A1(n44), .A2(n47), .B(n45), .Z(n96) );
  NR2D2BWP16P90LVT U113 ( .A1(A[6]), .A2(B[6]), .ZN(n22) );
  ND2D1BWP16P90LVT U114 ( .A1(n27), .A2(n13), .ZN(n11) );
  INVD1BWP16P90LVT U115 ( .I(n27), .ZN(n25) );
  AOI21D4BWP16P90LVT U116 ( .A1(n35), .A2(n43), .B(n36), .ZN(n1) );
  CKND2BWP16P90LVT U117 ( .I(n9), .ZN(SUM[0]) );
  XNR2D4BWP16P90LVT U118 ( .A1(n3), .A2(n24), .ZN(SUM[6]) );
  OAI21D2BWP16P90LVT U119 ( .A1(n29), .A2(n33), .B(n30), .ZN(n28) );
  INVD1BWP16P90LVT U120 ( .I(n5), .ZN(n99) );
  CKND2BWP16P90LVT U121 ( .I(n40), .ZN(n53) );
  XNR2D4BWP16P90LVT U122 ( .A1(n2), .A2(n17), .ZN(SUM[7]) );
  CKNR2D8BWP16P90LVT U123 ( .A1(A[5]), .A2(B[5]), .ZN(n29) );
  ND2D1BWP16P90LVT U124 ( .A1(A[2]), .A2(B[2]), .ZN(n97) );
  ND2D1BWP16P90LVT U125 ( .A1(n93), .A2(n99), .ZN(n100) );
  ND2D2BWP16P90LVT U126 ( .A1(n98), .A2(n5), .ZN(n101) );
  ND2D4BWP16P90LVT U127 ( .A1(n100), .A2(n101), .ZN(SUM[4]) );
  XNR2D4BWP16P90LVT U128 ( .A1(n4), .A2(n31), .ZN(SUM[5]) );
  NR2D1BWP16P90LVT U129 ( .A1(n11), .A2(n93), .ZN(n103) );
  OR2D4BWP16P90LVT U130 ( .A1(n103), .A2(n104), .Z(SUM[8]) );
  INVD1BWP16P90 U131 ( .I(n29), .ZN(n50) );
  INVD1BWP16P90 U132 ( .I(n15), .ZN(n48) );
  INVD1BWP16P90 U133 ( .I(n28), .ZN(n26) );
  INVD1BWP16P90LVT U134 ( .I(n23), .ZN(n21) );
  AOI21D1BWP16P90LVT U135 ( .A1(n13), .A2(n28), .B(n14), .ZN(n12) );
  NR2D1BWP16P90LVT U136 ( .A1(n22), .A2(n15), .ZN(n13) );
  AOI21D1BWP16P90LVT U137 ( .A1(n28), .A2(n49), .B(n21), .ZN(n19) );
endmodule


module hw2_nonpipe_DW01_sub_2 ( DIFF, \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , 
        \A[2] , \A[1] , \A[0] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , 
        \B[1] , \B[0]  );
  output [8:0] DIFF;
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[7] ,
         \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n10, n12, n13, n14, n15, n16, n17,
         n18, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n34, n35, n36, n37, n38, n39, n40, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n134, n135;
  wire   [7:0] B;
  wire   [7:0] A;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;
  assign A[0] = \A[0] ;

  ND2D1BWP16P90LVT U5 ( .A1(n26), .A2(n12), .ZN(n10) );
  OAI21D1BWP16P90LVT U8 ( .A1(n14), .A2(n22), .B(n15), .ZN(n13) );
  ND2D1BWP16P90LVT U12 ( .A1(n53), .A2(A[7]), .ZN(n15) );
  ND2D1BWP16P90LVT U15 ( .A1(n26), .A2(n47), .ZN(n17) );
  ND2D1BWP16P90LVT U43 ( .A1(n50), .A2(n37), .ZN(n6) );
  CKND16BWP16P90LVT U73 ( .I(B[1]), .ZN(n103) );
  CKND8BWP16P90LVT U74 ( .I(B[1]), .ZN(n121) );
  CKND12BWP16P90LVT U75 ( .I(B[1]), .ZN(n122) );
  CKND12BWP16P90LVT U76 ( .I(B[1]), .ZN(n96) );
  CKND12BWP16P90LVT U77 ( .I(B[3]), .ZN(n110) );
  XNR2D4BWP16P90LVT U78 ( .A1(n112), .A2(n7), .ZN(DIFF[2]) );
  OR2D4BWP16P90LVT U79 ( .A1(n106), .A2(A[2]), .Z(n123) );
  CKND16BWP16P90LVT U80 ( .I(B[0]), .ZN(n95) );
  CKND8BWP16P90LVT U81 ( .I(B[0]), .ZN(n60) );
  ND2D12BWP16P90LVT U82 ( .A1(n103), .A2(A[1]), .ZN(n44) );
  NR2D4BWP16P90LVT U83 ( .A1(n122), .A2(A[1]), .ZN(n97) );
  NR2D4BWP16P90LVT U84 ( .A1(n121), .A2(A[1]), .ZN(n129) );
  NR2D4BWP16P90LVT U85 ( .A1(n60), .A2(A[0]), .ZN(n98) );
  NR2D8BWP16P90LVT U86 ( .A1(n95), .A2(A[0]), .ZN(n45) );
  NR2D2BWP16P90LVT U87 ( .A1(n39), .A2(n36), .ZN(n108) );
  NR2D8BWP16P90LVT U88 ( .A1(n39), .A2(n36), .ZN(n34) );
  CKND8BWP16P90LVT U89 ( .I(B[3]), .ZN(n109) );
  INVD2BWP16P90LVT U90 ( .I(n16), .ZN(n115) );
  CKND4BWP16P90LVT U91 ( .I(n43), .ZN(n52) );
  NR2D8BWP16P90LVT U92 ( .A1(n96), .A2(A[1]), .ZN(n43) );
  OAI21D4BWP16P90LVT U93 ( .A1(n135), .A2(n97), .B(n102), .ZN(n99) );
  OAI21D4BWP16P90LVT U94 ( .A1(n135), .A2(n129), .B(n102), .ZN(n112) );
  INVD1BWP16P90LVT U95 ( .I(n30), .ZN(n124) );
  OR2D4BWP16P90LVT U96 ( .A1(n1), .A2(n24), .Z(n128) );
  ND2D1BWP16P90LVT U97 ( .A1(B[0]), .A2(n130), .ZN(n132) );
  OAI21D2BWP16P90LVT U98 ( .A1(n105), .A2(n98), .B(n44), .ZN(n100) );
  OAI21D4BWP16P90LVT U99 ( .A1(n105), .A2(n45), .B(n44), .ZN(n42) );
  OAI21D2BWP16P90LVT U100 ( .A1(n40), .A2(n113), .B(n37), .ZN(n101) );
  OAI21D4BWP16P90LVT U101 ( .A1(n40), .A2(n113), .B(n37), .ZN(n35) );
  CKNR2D8BWP16P90LVT U102 ( .A1(n57), .A2(A[3]), .ZN(n113) );
  CKND2D8BWP16P90LVT U103 ( .A1(n121), .A2(A[1]), .ZN(n102) );
  ND2D2BWP16P90LVT U104 ( .A1(n123), .A2(n40), .ZN(n7) );
  ND2D12BWP16P90LVT U105 ( .A1(n107), .A2(A[2]), .ZN(n40) );
  ND2D1BWP16P90 U106 ( .A1(n47), .A2(n22), .ZN(n3) );
  CKND2BWP16P90LVT U107 ( .I(n21), .ZN(n47) );
  ND2D4BWP16P90LVT U108 ( .A1(n128), .A2(n25), .ZN(n23) );
  ND2D1BWP16P90 U109 ( .A1(n46), .A2(n15), .ZN(n2) );
  NR2D2BWP16P90LVT U110 ( .A1(n54), .A2(A[6]), .ZN(n21) );
  CKND1BWP16P90LVT U111 ( .I(B[0]), .ZN(n119) );
  CKND16BWP16P90LVT U112 ( .I(B[0]), .ZN(n120) );
  NR2D12BWP16P90LVT U113 ( .A1(n120), .A2(A[0]), .ZN(n135) );
  AOI21D2BWP16P90LVT U114 ( .A1(n27), .A2(n47), .B(n20), .ZN(n18) );
  INVD1BWP16P90 U115 ( .I(n27), .ZN(n25) );
  CKND2D4BWP16P90LVT U116 ( .A1(n52), .A2(n44), .ZN(n8) );
  ND2D4BWP16P90LVT U117 ( .A1(n109), .A2(A[3]), .ZN(n37) );
  NR2D12BWP16P90LVT U118 ( .A1(n110), .A2(A[3]), .ZN(n36) );
  NR2D12BWP16P90LVT U119 ( .A1(n58), .A2(A[2]), .ZN(n39) );
  CKND2BWP16P90LVT U120 ( .I(n99), .ZN(n104) );
  CKNR2D4BWP16P90LVT U121 ( .A1(n31), .A2(n28), .ZN(n26) );
  NR2D4BWP16P90LVT U122 ( .A1(n56), .A2(A[4]), .ZN(n31) );
  XOR2D4BWP16P90LVT U123 ( .A1(n111), .A2(n5), .Z(DIFF[4]) );
  ND2D1BWP16P90LVT U124 ( .A1(n49), .A2(n32), .ZN(n5) );
  NR2D8BWP16P90LVT U125 ( .A1(n59), .A2(A[1]), .ZN(n105) );
  CKND12BWP16P90LVT U126 ( .I(B[2]), .ZN(n106) );
  CKND16BWP16P90LVT U127 ( .I(B[2]), .ZN(n107) );
  AOI21D4BWP16P90LVT U128 ( .A1(n100), .A2(n108), .B(n101), .ZN(n111) );
  CKNR2D2BWP16P90LVT U129 ( .A1(n21), .A2(n14), .ZN(n12) );
  OAI21D4BWP16P90LVT U130 ( .A1(n28), .A2(n32), .B(n29), .ZN(n27) );
  ND2D2BWP16P90LVT U131 ( .A1(n55), .A2(A[5]), .ZN(n29) );
  NR2D1BWP16P90 U132 ( .A1(n109), .A2(A[3]), .ZN(n114) );
  ND2D1BWP16P90LVT U133 ( .A1(n16), .A2(n2), .ZN(n117) );
  ND2D4BWP16P90LVT U134 ( .A1(n115), .A2(n116), .ZN(n118) );
  ND2D4BWP16P90LVT U135 ( .A1(n117), .A2(n118), .ZN(DIFF[7]) );
  INVD2BWP16P90 U136 ( .I(n2), .ZN(n116) );
  CKND2D8BWP16P90LVT U137 ( .A1(n56), .A2(A[4]), .ZN(n32) );
  CKND16BWP16P90LVT U138 ( .I(B[4]), .ZN(n56) );
  OAI21D1BWP16P90LVT U139 ( .A1(n1), .A2(n17), .B(n18), .ZN(n16) );
  INVD2BWP16P90LVT U140 ( .I(A[0]), .ZN(n130) );
  ND2D4BWP16P90LVT U141 ( .A1(n54), .A2(A[6]), .ZN(n22) );
  CKND16BWP16P90LVT U142 ( .I(B[6]), .ZN(n54) );
  XNR2D8BWP16P90LVT U143 ( .A1(n23), .A2(n3), .ZN(DIFF[6]) );
  XOR2D8BWP16P90LVT U144 ( .A1(n8), .A2(n135), .Z(DIFF[1]) );
  NR2D8BWP16P90LVT U145 ( .A1(n55), .A2(A[5]), .ZN(n28) );
  CKND16BWP16P90LVT U146 ( .I(B[5]), .ZN(n55) );
  AO21D2BWP16P90LVT U147 ( .A1(n12), .A2(n27), .B(n13), .Z(n134) );
  CKNR2D4BWP16P90LVT U148 ( .A1(n53), .A2(A[7]), .ZN(n14) );
  CKND16BWP16P90LVT U149 ( .I(B[7]), .ZN(n53) );
  CKND16BWP16P90LVT U150 ( .I(B[1]), .ZN(n59) );
  CKND16BWP16P90LVT U151 ( .I(B[3]), .ZN(n57) );
  OAI21D2BWP16P90LVT U152 ( .A1(n104), .A2(n39), .B(n40), .ZN(n38) );
  IAO21D4BWP16P90LVT U153 ( .A1(n10), .A2(n111), .B(n134), .ZN(DIFF[8]) );
  ND2D4BWP16P90LVT U154 ( .A1(n126), .A2(n127), .ZN(DIFF[5]) );
  ND2D2BWP16P90LVT U155 ( .A1(n124), .A2(n125), .ZN(n127) );
  INVD1BWP16P90LVT U156 ( .I(n31), .ZN(n49) );
  OAI21D1BWP16P90LVT U157 ( .A1(n1), .A2(n31), .B(n32), .ZN(n30) );
  CKND16BWP16P90LVT U158 ( .I(B[2]), .ZN(n58) );
  ND2D1BWP16P90 U159 ( .A1(n48), .A2(n29), .ZN(n4) );
  CKND1BWP16P90LVT U160 ( .I(n4), .ZN(n125) );
  ND2D1BWP16P90LVT U161 ( .A1(n30), .A2(n4), .ZN(n126) );
  INVD1BWP16P90LVT U162 ( .I(n114), .ZN(n50) );
  INVD1BWP16P90LVT U163 ( .I(n26), .ZN(n24) );
  ND2D1BWP16P90LVT U164 ( .A1(n119), .A2(A[0]), .ZN(n131) );
  ND2D4BWP16P90LVT U165 ( .A1(n131), .A2(n132), .ZN(DIFF[0]) );
  INVD1BWP16P90 U166 ( .I(n14), .ZN(n46) );
  INVD1BWP16P90 U167 ( .I(n22), .ZN(n20) );
  INVD1BWP16P90 U168 ( .I(n28), .ZN(n48) );
  XNR2D4BWP16P90LVT U169 ( .A1(n38), .A2(n6), .ZN(DIFF[3]) );
  AOI21D4BWP16P90LVT U170 ( .A1(n42), .A2(n34), .B(n35), .ZN(n1) );
endmodule


module hw2_nonpipe_DW_mult_uns_7 ( a, b, \product[15] , \product[14] , 
        \product[13] , \product[12] , \product[11] , \product[10] , 
        \product[9] , \product[8] , \product[7] , \product[6] , \product[5] , 
        \product[4] , \product[3] , \product[2] , \product[1] , \product[0] 
 );
  input [8:0] a;
  input [7:0] b;
  output \product[15] , \product[14] , \product[13] , \product[12] ,
         \product[11] , \product[10] , \product[9] , \product[8] ,
         \product[7] , \product[6] , \product[5] , \product[4] , \product[3] ,
         \product[2] , \product[1] , \product[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n24, n29, n30, n31, n32, n36, n38, n39, n40,
         n42, n43, n44, n45, n46, n47, n48, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n63, n65, n66, n67, n68, n71, n72, n73, n83,
         n84, n85, n86, n87, n88, n93, n94, n96, n98, n102, n104, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n275,
         n276, n277, n278, n279, n280, n281, n282, n284, n285, n286, n304,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438;
  wire   [15:0] product;
  assign \product[15]  = product[15];
  assign \product[14]  = product[14];
  assign \product[13]  = product[13];
  assign \product[12]  = product[12];
  assign \product[11]  = product[11];
  assign \product[10]  = product[10];
  assign \product[9]  = product[9];
  assign \product[8]  = product[8];
  assign \product[7]  = product[7];
  assign \product[6]  = product[6];
  assign \product[5]  = product[5];
  assign \product[4]  = product[4];
  assign \product[3]  = product[3];
  assign \product[2]  = product[2];
  assign \product[1]  = product[1];
  assign \product[0]  = product[0];

  ND2D1BWP16P90LVT U3 ( .A1(n425), .A2(n18), .ZN(n2) );
  ND2D1BWP16P90LVT U6 ( .A1(n106), .A2(n104), .ZN(n18) );
  ND2D1BWP16P90LVT U9 ( .A1(n42), .A2(n22), .ZN(n20) );
  ND2D1BWP16P90LVT U17 ( .A1(n424), .A2(n29), .ZN(n3) );
  ND2D1BWP16P90LVT U20 ( .A1(n107), .A2(n110), .ZN(n29) );
  OAI21D1BWP16P90LVT U22 ( .A1(n347), .A2(n31), .B(n32), .ZN(n30) );
  ND2D1BWP16P90LVT U23 ( .A1(n42), .A2(n422), .ZN(n31) );
  ND2D1BWP16P90LVT U29 ( .A1(n422), .A2(n38), .ZN(n4) );
  ND2D1BWP16P90LVT U32 ( .A1(n111), .A2(n116), .ZN(n38) );
  OAI21D1BWP16P90LVT U44 ( .A1(n414), .A2(n47), .B(n351), .ZN(n46) );
  ND2D1BWP16P90LVT U53 ( .A1(n94), .A2(n53), .ZN(n7) );
  ND2D1BWP16P90LVT U56 ( .A1(n131), .A2(n137), .ZN(n53) );
  OAI21D1BWP16P90LVT U58 ( .A1(n57), .A2(n55), .B(n426), .ZN(n54) );
  ND2D1BWP16P90LVT U80 ( .A1(n98), .A2(n68), .ZN(n11) );
  ND2D1BWP16P90LVT U90 ( .A1(n160), .A2(n163), .ZN(n72) );
  ND2D1BWP16P90LVT U104 ( .A1(n423), .A2(n83), .ZN(n14) );
  ND2D1BWP16P90LVT U107 ( .A1(n216), .A2(n166), .ZN(n83) );
  OAI21D1BWP16P90LVT U109 ( .A1(n85), .A2(n88), .B(n86), .ZN(n84) );
  ND2D1BWP16P90LVT U110 ( .A1(n102), .A2(n86), .ZN(n15) );
  ND2D1BWP16P90LVT U113 ( .A1(n217), .A2(n209), .ZN(n86) );
  FA1D1BWP16P90LVT U121 ( .A(n179), .B(n112), .CI(n109), .CO(n106), .S(n107)
         );
  FA1D1BWP16P90LVT U122 ( .A(n188), .B(n114), .CI(n172), .CO(n108), .S(n109)
         );
  FA1D1BWP16P90LVT U126 ( .A(n126), .B(n124), .CI(n119), .CO(n116), .S(n117)
         );
  FA1D1BWP16P90LVT U127 ( .A(n190), .B(n181), .CI(n121), .CO(n118), .S(n119)
         );
  FA1D1BWP16P90LVT U131 ( .A(n136), .B(n174), .CI(n200), .CO(n126), .S(n127)
         );
  FA1D1BWP16P90LVT U147 ( .A(n187), .B(n196), .CI(n161), .CO(n157), .S(n158)
         );
  FA1D1BWP16P90LVT U148 ( .A(n162), .B(n206), .CI(n214), .CO(n159), .S(n160)
         );
  FA1D1BWP16P90LVT U150 ( .A(n198), .B(n207), .CI(n165), .CO(n163), .S(n164)
         );
  OAI22D1BWP16P90LVT U167 ( .A1(n235), .A2(n284), .B1(n279), .B2(n438), .ZN(
        n167) );
  OAI22D1BWP16P90LVT U169 ( .A1(n227), .A2(n416), .B1(n226), .B2(n284), .ZN(
        n179) );
  OAI22D1BWP16P90LVT U170 ( .A1(n228), .A2(n407), .B1(n227), .B2(n284), .ZN(
        n180) );
  OAI22D1BWP16P90LVT U171 ( .A1(n229), .A2(n407), .B1(n228), .B2(n284), .ZN(
        n181) );
  OAI22D1BWP16P90LVT U191 ( .A1(n237), .A2(n280), .B1(n236), .B2(n285), .ZN(
        n190) );
  OAI22D1BWP16P90LVT U212 ( .A1(n246), .A2(n355), .B1(n286), .B2(n436), .ZN(
        n200) );
  OAI22D1BWP16P90LVT U218 ( .A1(n251), .A2(n286), .B1(n252), .B2(n355), .ZN(
        n206) );
  OAI22D1BWP16P90LVT U219 ( .A1(n252), .A2(n286), .B1(n253), .B2(n355), .ZN(
        n207) );
  OAI22D1BWP16P90LVT U232 ( .A1(n265), .A2(n304), .B1(n282), .B2(n435), .ZN(
        n170) );
  OAI22D1BWP16P90LVT U236 ( .A1(n258), .A2(n282), .B1(n257), .B2(n304), .ZN(
        n212) );
  OAI22D1BWP16P90LVT U237 ( .A1(n259), .A2(n282), .B1(n258), .B2(n304), .ZN(
        n213) );
  OAI22D1BWP16P90LVT U239 ( .A1(n261), .A2(n282), .B1(n260), .B2(n304), .ZN(
        n215) );
  OAI22D1BWP16P90LVT U240 ( .A1(n261), .A2(n304), .B1(n262), .B2(n282), .ZN(
        n216) );
  OAI22D1BWP16P90LVT U241 ( .A1(n262), .A2(n304), .B1(n263), .B2(n282), .ZN(
        n217) );
  OAI22D1BWP16P90LVT U242 ( .A1(n263), .A2(n304), .B1(n264), .B2(n282), .ZN(
        n218) );
  OAI21D2BWP16P90LVT U294 ( .A1(n406), .A2(n59), .B(n60), .ZN(n409) );
  CKND2D2BWP16P90LVT U295 ( .A1(n275), .A2(n284), .ZN(n416) );
  HA1D2BWP16P90LVT U296 ( .A(n169), .B(n208), .CO(n165), .S(n166) );
  XOR2D2BWP16P90 U297 ( .A1(n12), .A2(n73), .Z(product[5]) );
  INVD2BWP16P90LVT U298 ( .I(n409), .ZN(n57) );
  XNR2D4BWP16P90LVT U299 ( .A1(a[7]), .A2(b[5]), .ZN(n237) );
  XOR2D2BWP16P90LVT U300 ( .A1(n343), .A2(n153), .Z(n148) );
  XOR2D2BWP16P90LVT U301 ( .A1(n380), .A2(n146), .Z(n144) );
  OAI22D1BWP16P90LVT U302 ( .A1(n238), .A2(n280), .B1(n237), .B2(n285), .ZN(
        n342) );
  OAI22D1BWP16P90LVT U303 ( .A1(n238), .A2(n280), .B1(n237), .B2(n285), .ZN(
        n191) );
  XNR2D2BWP16P90LVT U304 ( .A1(a[6]), .A2(b[5]), .ZN(n238) );
  OAI22D1BWP16P90LVT U305 ( .A1(n255), .A2(n286), .B1(n281), .B2(n436), .ZN(
        n169) );
  IND2D2BWP16P90LVT U306 ( .A1(n434), .B1(b[3]), .ZN(n255) );
  ND2D2BWP16P90LVT U307 ( .A1(n277), .A2(n286), .ZN(n281) );
  AO21D1BWP16P90LVT U308 ( .A1(n281), .A2(n286), .B(n436), .Z(n199) );
  AOI21D1BWP16P90LVT U309 ( .A1(n43), .A2(n22), .B(n419), .ZN(n21) );
  XOR2D4BWP16P90LVT U310 ( .A1(n177), .A2(n185), .Z(n343) );
  ND2D1BWP16P90LVT U311 ( .A1(n153), .A2(n185), .ZN(n344) );
  ND2D2BWP16P90LVT U312 ( .A1(n153), .A2(n177), .ZN(n345) );
  ND2D2BWP16P90LVT U313 ( .A1(n185), .A2(n177), .ZN(n346) );
  ND3D4BWP16P90LVT U314 ( .A1(n344), .A2(n345), .A3(n346), .ZN(n147) );
  AOI21D1BWP16P90LVT U315 ( .A1(n58), .A2(n50), .B(n51), .ZN(n347) );
  INR2D2BWP16P90 U316 ( .A1(n434), .B1(n438), .ZN(n177) );
  ND2D1BWP16P90LVT U317 ( .A1(n193), .A2(n202), .ZN(n362) );
  AOI21D2BWP16P90LVT U318 ( .A1(n421), .A2(n418), .B(n349), .ZN(n73) );
  XOR2D4BWP16P90LVT U319 ( .A1(n145), .A2(n142), .Z(n361) );
  ND3D4BWP16P90LVT U320 ( .A1(n381), .A2(n382), .A3(n383), .ZN(n145) );
  INVD1BWP16P90LVT U321 ( .I(n224), .ZN(n348) );
  INVD1BWP16P90LVT U322 ( .I(a[2]), .ZN(n224) );
  AN2D2BWP16P90LVT U323 ( .A1(n164), .A2(n215), .Z(n349) );
  XOR2D4BWP16P90LVT U324 ( .A1(n376), .A2(n173), .Z(n121) );
  AO21D2BWP16P90LVT U325 ( .A1(n282), .A2(n304), .B(n435), .Z(n128) );
  XOR2D2BWP16P90 U326 ( .A1(n11), .A2(n417), .Z(product[6]) );
  OAI22D2BWP16P90LVT U327 ( .A1(n241), .A2(n285), .B1(n242), .B2(n280), .ZN(
        n195) );
  XNR2D1BWP16P90LVT U328 ( .A1(a[5]), .A2(b[7]), .ZN(n229) );
  CKND1BWP16P90LVT U329 ( .I(n219), .ZN(n350) );
  BUFFD2BWP16P90LVT U330 ( .I(n48), .Z(n351) );
  NR2D4BWP16P90LVT U331 ( .A1(n131), .A2(n137), .ZN(n52) );
  XNR2D2BWP16P90LVT U332 ( .A1(n434), .A2(b[7]), .ZN(n234) );
  OR2D2BWP16P90LVT U333 ( .A1(n164), .A2(n215), .Z(n421) );
  XNR2D8BWP16P90LVT U334 ( .A1(a[1]), .A2(b[3]), .ZN(n253) );
  XNR2D2BWP16P90LVT U335 ( .A1(n434), .A2(b[3]), .ZN(n254) );
  XNR2D1BWP16P90LVT U336 ( .A1(a[2]), .A2(b[7]), .ZN(n387) );
  XNR2D2BWP16P90LVT U337 ( .A1(b[1]), .A2(n348), .ZN(n262) );
  XNR2D2BWP16P90LVT U338 ( .A1(b[1]), .A2(a[6]), .ZN(n258) );
  OAI21D4BWP16P90LVT U339 ( .A1(n48), .A2(n44), .B(n45), .ZN(n43) );
  INVD1BWP16P90 U340 ( .I(n349), .ZN(n352) );
  NR2D2BWP16P90LVT U341 ( .A1(n123), .A2(n130), .ZN(n47) );
  ND2D1BWP16P90LVT U342 ( .A1(n117), .A2(n122), .ZN(n353) );
  XNR2D2BWP16P90 U343 ( .A1(n10), .A2(n66), .ZN(product[7]) );
  ND2D1BWP16P90 U344 ( .A1(n421), .A2(n352), .ZN(n13) );
  XNR2D2BWP16P90LVT U345 ( .A1(b[7]), .A2(a[2]), .ZN(n232) );
  XOR2D2BWP16P90LVT U346 ( .A1(n357), .A2(n158), .Z(n156) );
  XNR2D2BWP16P90LVT U347 ( .A1(n434), .A2(b[5]), .ZN(n244) );
  CKND2BWP16P90LVT U348 ( .I(n114), .ZN(n115) );
  XOR2D2BWP16P90LVT U349 ( .A1(n372), .A2(n134), .Z(n125) );
  CKBD1BWP16P90LVT U350 ( .I(n408), .Z(n354) );
  BUFFD2BWP16P90LVT U351 ( .I(n408), .Z(n355) );
  XNR2D1BWP16P90LVT U352 ( .A1(a[6]), .A2(b[7]), .ZN(n228) );
  INR2D2BWP16P90 U353 ( .A1(a[6]), .B1(n438), .ZN(n172) );
  OAI22D2BWP16P90LVT U354 ( .A1(n231), .A2(n284), .B1(n232), .B2(n407), .ZN(
        n184) );
  ND2D2BWP16P90LVT U355 ( .A1(n138), .A2(n143), .ZN(n56) );
  AOI21D2BWP16P90LVT U356 ( .A1(n43), .A2(n422), .B(n36), .ZN(n32) );
  OAI22D2BWP16P90LVT U357 ( .A1(n256), .A2(n282), .B1(n435), .B2(n304), .ZN(
        n210) );
  XNR2D4BWP16P90LVT U358 ( .A1(a[8]), .A2(b[1]), .ZN(n256) );
  ND2D1BWP16P90 U359 ( .A1(n342), .A2(n182), .ZN(n375) );
  OAI22D2BWP16P90LVT U360 ( .A1(n229), .A2(n284), .B1(n230), .B2(n416), .ZN(
        n182) );
  OAI22D2BWP16P90LVT U361 ( .A1(n239), .A2(n285), .B1(n240), .B2(n280), .ZN(
        n193) );
  ND2D1BWP16P90LVT U362 ( .A1(n193), .A2(n147), .ZN(n363) );
  ND2D1BWP16P90LVT U363 ( .A1(n202), .A2(n147), .ZN(n364) );
  XOR2D2BWP16P90LVT U364 ( .A1(n182), .A2(n191), .Z(n372) );
  INVD2BWP16P90LVT U365 ( .I(b[0]), .ZN(n304) );
  XOR2D1BWP16P90LVT U366 ( .A1(b[2]), .A2(b[3]), .Z(n277) );
  ND2D1BWP16P90LVT U367 ( .A1(b[2]), .A2(b[1]), .ZN(n412) );
  ND2D2BWP16P90LVT U368 ( .A1(n277), .A2(n286), .ZN(n408) );
  NR2D1BWP16P90LVT U369 ( .A1(n224), .A2(n438), .ZN(n175) );
  ND2D4BWP16P90LVT U370 ( .A1(n276), .A2(n285), .ZN(n280) );
  XNR2D4BWP16P90LVT U371 ( .A1(b[4]), .A2(b[3]), .ZN(n285) );
  OAI21D2BWP16P90LVT U372 ( .A1(n56), .A2(n52), .B(n53), .ZN(n51) );
  BUFFD8BWP16P90LVT U373 ( .I(a[0]), .Z(n434) );
  XOR2D1BWP16P90LVT U374 ( .A1(n212), .A2(n157), .Z(n368) );
  ND2D1BWP16P90LVT U375 ( .A1(n391), .A2(n155), .ZN(n65) );
  CKND2D1BWP16P90LVT U376 ( .A1(n144), .A2(n149), .ZN(n60) );
  OAI22D1BWP16P90LVT U377 ( .A1(n248), .A2(n355), .B1(n247), .B2(n286), .ZN(
        n202) );
  ND2D1BWP16P90LVT U378 ( .A1(n397), .A2(n437), .ZN(n399) );
  XOR2D1BWP16P90LVT U379 ( .A1(b[6]), .A2(b[7]), .Z(n275) );
  ND3D1BWP16P90LVT U380 ( .A1(n384), .A2(n385), .A3(n386), .ZN(n143) );
  ND2D1BWP16P90LVT U381 ( .A1(n148), .A2(n146), .ZN(n385) );
  ND2D1BWP16P90LVT U382 ( .A1(n211), .A2(n203), .ZN(n383) );
  INR2D1BWP16P90LVT U383 ( .A1(n390), .B1(n438), .ZN(n174) );
  ND2D1BWP16P90LVT U384 ( .A1(b[6]), .A2(b[5]), .ZN(n404) );
  ND3D1BWP16P90LVT U385 ( .A1(n431), .A2(n432), .A3(n433), .ZN(n130) );
  ND2D2BWP16P90LVT U386 ( .A1(n123), .A2(n130), .ZN(n48) );
  AN2D1BWP16P90LVT U387 ( .A1(n400), .A2(n401), .Z(n415) );
  IND2D1BWP16P90LVT U388 ( .A1(n55), .B1(n426), .ZN(n8) );
  CKND1BWP16P90LVT U389 ( .I(b[3]), .ZN(n436) );
  CKND1BWP16P90LVT U390 ( .I(b[7]), .ZN(n438) );
  XNR2D8BWP16P90LVT U391 ( .A1(a[3]), .A2(b[7]), .ZN(n231) );
  ND2D1BWP16P90LVT U392 ( .A1(n151), .A2(n146), .ZN(n386) );
  XOR2D4BWP16P90LVT U393 ( .A1(n148), .A2(n151), .Z(n380) );
  ND2D2BWP16P90LVT U394 ( .A1(n422), .A2(n424), .ZN(n24) );
  ND2D1BWP16P90 U395 ( .A1(n93), .A2(n351), .ZN(n6) );
  XOR3D4BWP16P90LVT U396 ( .A1(n154), .A2(n195), .A3(n204), .Z(n356) );
  ND2D2BWP16P90LVT U397 ( .A1(n117), .A2(n122), .ZN(n45) );
  ND2D1BWP16P90LVT U398 ( .A1(n194), .A2(n203), .ZN(n382) );
  OAI22D2BWP16P90LVT U399 ( .A1(n241), .A2(n280), .B1(n240), .B2(n285), .ZN(
        n194) );
  CKND2BWP16P90LVT U400 ( .I(n24), .ZN(n22) );
  XOR3D2BWP16P90LVT U401 ( .A1(n126), .A2(n124), .A3(n119), .Z(n388) );
  NR2D4BWP16P90LVT U402 ( .A1(n388), .A2(n122), .ZN(n44) );
  INR2D2BWP16P90LVT U403 ( .A1(a[4]), .B1(n438), .ZN(n173) );
  XOR2D4BWP16P90LVT U404 ( .A1(n427), .A2(n133), .Z(n131) );
  XOR2D4BWP16P90LVT U405 ( .A1(n135), .A2(n139), .Z(n427) );
  XNR2D4BWP16P90LVT U406 ( .A1(a[4]), .A2(b[7]), .ZN(n230) );
  XOR3D4BWP16P90LVT U407 ( .A1(n212), .A2(n157), .A3(n356), .Z(n391) );
  XNR2D2BWP16P90LVT U408 ( .A1(a[5]), .A2(b[3]), .ZN(n249) );
  NR2D2BWP16P90LVT U409 ( .A1(n47), .A2(n44), .ZN(n42) );
  XOR2D1BWP16P90LVT U410 ( .A1(n205), .A2(n213), .Z(n357) );
  ND2D1BWP16P90LVT U411 ( .A1(n158), .A2(n213), .ZN(n358) );
  ND2D1BWP16P90LVT U412 ( .A1(n158), .A2(n205), .ZN(n359) );
  ND2D1BWP16P90LVT U413 ( .A1(n213), .A2(n205), .ZN(n360) );
  ND3D1BWP16P90LVT U414 ( .A1(n358), .A2(n359), .A3(n360), .ZN(n155) );
  OAI22D1BWP16P90 U415 ( .A1(n251), .A2(n355), .B1(n250), .B2(n286), .ZN(n205)
         );
  HA1D2BWP16P90LVT U416 ( .A(n197), .B(n168), .CO(n161), .S(n162) );
  XOR3D4BWP16P90LVT U417 ( .A1(n193), .A2(n202), .A3(n147), .Z(n140) );
  XOR2D2BWP16P90LVT U418 ( .A1(n361), .A2(n140), .Z(n138) );
  ND3D2BWP16P90LVT U419 ( .A1(n362), .A2(n363), .A3(n364), .ZN(n139) );
  ND2D1BWP16P90 U420 ( .A1(n145), .A2(n142), .ZN(n365) );
  ND2D1BWP16P90LVT U421 ( .A1(n145), .A2(n140), .ZN(n366) );
  ND2D1BWP16P90LVT U422 ( .A1(n142), .A2(n140), .ZN(n367) );
  ND3D2BWP16P90LVT U423 ( .A1(n365), .A2(n366), .A3(n367), .ZN(n137) );
  INVD1BWP16P90LVT U424 ( .I(n51), .ZN(n401) );
  FA1D1BWP16P90LVT U425 ( .A(n154), .B(n195), .CI(n204), .CO(n151), .S(n152)
         );
  XNR2D2BWP16P90LVT U426 ( .A1(a[2]), .A2(b[3]), .ZN(n252) );
  XOR3D4BWP16P90LVT U427 ( .A1(n201), .A2(n192), .A3(n141), .Z(n133) );
  OAI22D1BWP16P90LVT U428 ( .A1(n247), .A2(n355), .B1(n246), .B2(n286), .ZN(
        n201) );
  XOR2D1BWP16P90LVT U429 ( .A1(n368), .A2(n152), .Z(n150) );
  ND2D1BWP16P90 U430 ( .A1(n356), .A2(n157), .ZN(n369) );
  ND2D1BWP16P90 U431 ( .A1(n356), .A2(n212), .ZN(n370) );
  ND2D1BWP16P90 U432 ( .A1(n157), .A2(n212), .ZN(n371) );
  ND3D1BWP16P90LVT U433 ( .A1(n369), .A2(n370), .A3(n371), .ZN(n149) );
  INVD1BWP16P90 U434 ( .I(a[5]), .ZN(n397) );
  XNR2D2BWP16P90LVT U435 ( .A1(a[5]), .A2(b[1]), .ZN(n259) );
  IND2D2BWP16P90LVT U436 ( .A1(n434), .B1(b[5]), .ZN(n245) );
  ND2D1BWP16P90LVT U437 ( .A1(n134), .A2(n342), .ZN(n373) );
  ND2D1BWP16P90LVT U438 ( .A1(n134), .A2(n182), .ZN(n374) );
  ND3D4BWP16P90LVT U439 ( .A1(n373), .A2(n374), .A3(n375), .ZN(n124) );
  FA1D2BWP16P90LVT U440 ( .A(n136), .B(n175), .CI(n183), .CO(n134), .S(n135)
         );
  FA1D2BWP16P90LVT U441 ( .A(n132), .B(n127), .CI(n125), .CO(n122), .S(n123)
         );
  XOR2D2BWP16P90LVT U442 ( .A1(n57), .A2(n8), .Z(product[9]) );
  OAI22D4BWP16P90LVT U443 ( .A1(n245), .A2(n285), .B1(n280), .B2(n437), .ZN(
        n168) );
  OAI22D2BWP16P90LVT U444 ( .A1(n249), .A2(n286), .B1(n250), .B2(n355), .ZN(
        n204) );
  NR2D2BWP16P90LVT U445 ( .A1(n138), .A2(n143), .ZN(n55) );
  XOR2D4BWP16P90LVT U446 ( .A1(n128), .A2(n199), .Z(n376) );
  ND2D1BWP16P90LVT U447 ( .A1(n173), .A2(n199), .ZN(n377) );
  ND2D2BWP16P90LVT U448 ( .A1(n173), .A2(n128), .ZN(n378) );
  ND2D1BWP16P90 U449 ( .A1(n199), .A2(n128), .ZN(n379) );
  ND3D2BWP16P90LVT U450 ( .A1(n377), .A2(n378), .A3(n379), .ZN(n120) );
  XNR2D2BWP16P90LVT U451 ( .A1(a[4]), .A2(b[1]), .ZN(n260) );
  XNR2D2BWP16P90LVT U452 ( .A1(b[5]), .A2(a[4]), .ZN(n240) );
  XOR3D4BWP16P90LVT U453 ( .A1(n194), .A2(n211), .A3(n203), .Z(n146) );
  ND2D1BWP16P90LVT U454 ( .A1(n194), .A2(n211), .ZN(n381) );
  ND2D1BWP16P90 U455 ( .A1(n148), .A2(n151), .ZN(n384) );
  XNR2D2BWP16P90LVT U456 ( .A1(a[3]), .A2(b[3]), .ZN(n251) );
  INVD1BWP16P90LVT U457 ( .I(a[3]), .ZN(n389) );
  XNR2D2BWP16P90LVT U458 ( .A1(a[3]), .A2(b[5]), .ZN(n241) );
  NR2D2BWP16P90LVT U459 ( .A1(n55), .A2(n52), .ZN(n50) );
  ND2D4BWP16P90LVT U460 ( .A1(n412), .A2(n413), .ZN(n286) );
  OAI22D4BWP16P90LVT U461 ( .A1(n243), .A2(n285), .B1(n244), .B2(n280), .ZN(
        n197) );
  OAI22D4BWP16P90LVT U462 ( .A1(n233), .A2(n284), .B1(n234), .B2(n279), .ZN(
        n186) );
  OR2D2BWP16P90LVT U463 ( .A1(n111), .A2(n116), .Z(n422) );
  INR2D2BWP16P90LVT U464 ( .A1(a[5]), .B1(n438), .ZN(n114) );
  OAI22D4BWP16P90LVT U465 ( .A1(n231), .A2(n416), .B1(n230), .B2(n284), .ZN(
        n183) );
  OR2D1BWP16P90LVT U466 ( .A1(n257), .A2(n282), .Z(n394) );
  ND2D1BWP16P90 U467 ( .A1(n96), .A2(n60), .ZN(n9) );
  NR2D2BWP16P90LVT U468 ( .A1(n144), .A2(n149), .ZN(n59) );
  ND2D4BWP16P90LVT U469 ( .A1(n275), .A2(n284), .ZN(n279) );
  ND2D4BWP16P90LVT U470 ( .A1(n404), .A2(n405), .ZN(n284) );
  OR2D2BWP16P90LVT U471 ( .A1(n416), .A2(n233), .Z(n393) );
  XNR2D2BWP16P90LVT U472 ( .A1(a[7]), .A2(b[3]), .ZN(n247) );
  HA1D2BWP16P90LVT U473 ( .A(n167), .B(n186), .CO(n153), .S(n154) );
  CKND2D4BWP16P90LVT U474 ( .A1(n392), .A2(n393), .ZN(n185) );
  INVD1BWP16P90LVT U475 ( .I(n389), .ZN(n390) );
  IND2D1BWP16P90LVT U476 ( .A1(n434), .B1(b[7]), .ZN(n235) );
  BUFFD2BWP16P90 U477 ( .I(n56), .Z(n426) );
  INVD1BWP16P90LVT U478 ( .I(n47), .ZN(n93) );
  XNR2D2BWP16P90 U479 ( .A1(a[3]), .A2(b[1]), .ZN(n261) );
  AOI21D2BWP16P90LVT U480 ( .A1(n66), .A2(n420), .B(n63), .ZN(n406) );
  XNR2D2BWP16P90 U481 ( .A1(n350), .A2(b[7]), .ZN(n227) );
  ND2D2BWP16P90LVT U482 ( .A1(n394), .A2(n395), .ZN(n211) );
  OAI21D2BWP16P90LVT U483 ( .A1(n61), .A2(n59), .B(n60), .ZN(n58) );
  OAI21D4BWP16P90LVT U484 ( .A1(n67), .A2(n417), .B(n68), .ZN(n66) );
  OA21D2BWP16P90LVT U485 ( .A1(n71), .A2(n73), .B(n72), .Z(n417) );
  OAI22D1BWP16P90LVT U486 ( .A1(n239), .A2(n280), .B1(n238), .B2(n285), .ZN(
        n192) );
  INVD1BWP16P90LVT U487 ( .I(n59), .ZN(n96) );
  XNR2D2BWP16P90LVT U488 ( .A1(a[1]), .A2(b[5]), .ZN(n243) );
  XNR2D2BWP16P90 U489 ( .A1(b[1]), .A2(a[1]), .ZN(n263) );
  OAI22D1BWP16P90LVT U490 ( .A1(n249), .A2(n355), .B1(n248), .B2(n286), .ZN(
        n203) );
  AOI21D2BWP16P90LVT U491 ( .A1(n420), .A2(n66), .B(n63), .ZN(n61) );
  OR2D2BWP16P90LVT U492 ( .A1(n150), .A2(n155), .Z(n420) );
  OAI22D1BWP16P90LVT U493 ( .A1(n242), .A2(n285), .B1(n243), .B2(n280), .ZN(
        n196) );
  XNR2D2BWP16P90LVT U494 ( .A1(a[2]), .A2(b[5]), .ZN(n242) );
  CKND1BWP16P90LVT U495 ( .I(b[1]), .ZN(n435) );
  XNR2D2BWP16P90LVT U496 ( .A1(a[4]), .A2(b[3]), .ZN(n250) );
  XNR2D2BWP16P90 U497 ( .A1(n434), .A2(b[1]), .ZN(n264) );
  XOR2D2BWP16P90LVT U498 ( .A1(b[0]), .A2(b[1]), .Z(n278) );
  XNR2D2BWP16P90LVT U499 ( .A1(a[6]), .A2(b[3]), .ZN(n248) );
  OR2D2BWP16P90LVT U500 ( .A1(n387), .A2(n284), .Z(n392) );
  XNR2D2BWP16P90LVT U501 ( .A1(a[1]), .A2(b[7]), .ZN(n233) );
  CKOR2D2BWP16P90 U502 ( .A1(n256), .A2(n304), .Z(n395) );
  XNR2D2BWP16P90LVT U503 ( .A1(a[7]), .A2(b[1]), .ZN(n257) );
  ND2D4BWP16P90LVT U504 ( .A1(n278), .A2(n304), .ZN(n282) );
  NR2D2BWP16P90LVT U505 ( .A1(n156), .A2(n159), .ZN(n67) );
  OA21D2BWP16P90LVT U506 ( .A1(n44), .A2(n48), .B(n353), .Z(n396) );
  ND2D1BWP16P90 U507 ( .A1(a[5]), .A2(b[5]), .ZN(n398) );
  ND2D2BWP16P90LVT U508 ( .A1(n398), .A2(n399), .ZN(n239) );
  ND2D1BWP16P90LVT U509 ( .A1(n50), .A2(n409), .ZN(n400) );
  ND3D2BWP16P90LVT U510 ( .A1(n428), .A2(n429), .A3(n430), .ZN(n132) );
  ND2D1BWP16P90LVT U511 ( .A1(n201), .A2(n141), .ZN(n429) );
  XNR2D2BWP16P90LVT U512 ( .A1(a[8]), .A2(b[3]), .ZN(n246) );
  XNR2D2BWP16P90 U513 ( .A1(a[8]), .A2(b[7]), .ZN(n226) );
  AO21D1BWP16P90 U514 ( .A1(n280), .A2(n285), .B(n437), .Z(n188) );
  INVD1BWP16P90LVT U515 ( .I(b[1]), .ZN(n411) );
  CKND1BWP16P90LVT U516 ( .I(b[5]), .ZN(n437) );
  OAI22D1BWP16P90LVT U517 ( .A1(n236), .A2(n280), .B1(n285), .B2(n437), .ZN(
        n189) );
  ND2D1BWP16P90LVT U518 ( .A1(n402), .A2(n403), .ZN(n405) );
  CKND1BWP16P90LVT U519 ( .I(b[6]), .ZN(n402) );
  CKND1BWP16P90LVT U520 ( .I(b[5]), .ZN(n403) );
  OAI22D1BWP16P90 U521 ( .A1(n226), .A2(n407), .B1(n284), .B2(n438), .ZN(n178)
         );
  INR2D1BWP16P90LVT U522 ( .A1(n434), .B1(n284), .ZN(n187) );
  ND2D1BWP16P90 U523 ( .A1(n275), .A2(n284), .ZN(n407) );
  INVD1BWP16P90LVT U524 ( .I(b[2]), .ZN(n410) );
  INR2D1BWP16P90 U525 ( .A1(n434), .B1(n286), .ZN(n209) );
  ND2D1BWP16P90LVT U526 ( .A1(n410), .A2(n411), .ZN(n413) );
  OAI22D1BWP16P90LVT U527 ( .A1(n253), .A2(n286), .B1(n254), .B2(n354), .ZN(
        n208) );
  ND2D1BWP16P90LVT U528 ( .A1(n192), .A2(n141), .ZN(n430) );
  INVD1BWP16P90LVT U529 ( .I(n42), .ZN(n40) );
  INVD1BWP16P90 U530 ( .I(n67), .ZN(n98) );
  INVD1BWP16P90 U531 ( .I(n85), .ZN(n102) );
  INVD1BWP16P90LVT U532 ( .I(n128), .ZN(n136) );
  ND2D1BWP16P90 U533 ( .A1(n139), .A2(n133), .ZN(n433) );
  INVD1BWP16P90 U534 ( .I(a[1]), .ZN(n225) );
  NR2D1BWP16P90 U535 ( .A1(n225), .A2(n438), .ZN(n176) );
  NR2D1BWP16P90 U536 ( .A1(n219), .A2(n438), .ZN(n171) );
  XOR2D1BWP16P90LVT U537 ( .A1(n415), .A2(n6), .Z(product[11]) );
  XOR2D1BWP16P90LVT U538 ( .A1(b[4]), .A2(b[5]), .Z(n276) );
  ND2D1BWP16P90 U539 ( .A1(n420), .A2(n65), .ZN(n10) );
  AOI21D1BWP16P90LVT U540 ( .A1(n58), .A2(n50), .B(n51), .ZN(n414) );
  AOI21D1BWP16P90LVT U541 ( .A1(n58), .A2(n50), .B(n51), .ZN(n1) );
  IND2D1BWP16P90 U542 ( .A1(n44), .B1(n353), .ZN(n5) );
  INVD1BWP16P90LVT U543 ( .I(n65), .ZN(n63) );
  IOA21D1BWP16P90LVT U544 ( .A1(n423), .A2(n84), .B(n83), .ZN(n418) );
  INVD1BWP16P90LVT U545 ( .I(n38), .ZN(n36) );
  IOA21D1BWP16P90LVT U546 ( .A1(n36), .A2(n424), .B(n29), .ZN(n419) );
  IND2D1BWP16P90 U547 ( .A1(n71), .B1(n72), .ZN(n12) );
  ND2D1BWP16P90LVT U548 ( .A1(n218), .A2(n170), .ZN(n88) );
  NR2D1BWP16P90LVT U549 ( .A1(n160), .A2(n163), .ZN(n71) );
  NR2D1BWP16P90LVT U550 ( .A1(n217), .A2(n209), .ZN(n85) );
  OR2D1BWP16P90LVT U551 ( .A1(n216), .A2(n166), .Z(n423) );
  XNR2D1BWP16P90LVT U552 ( .A1(a[8]), .A2(b[5]), .ZN(n236) );
  OR2D1BWP16P90LVT U553 ( .A1(n107), .A2(n110), .Z(n424) );
  OR2D1BWP16P90LVT U554 ( .A1(n106), .A2(n104), .Z(n425) );
  IND2D1BWP16P90 U555 ( .A1(n87), .B1(n88), .ZN(n16) );
  NR2D1BWP16P90 U556 ( .A1(n218), .A2(n170), .ZN(n87) );
  INR2D1BWP16P90 U557 ( .A1(n434), .B1(n285), .ZN(n198) );
  FA1D1BWP16P90LVT U558 ( .A(n180), .B(n113), .CI(n118), .CO(n110), .S(n111)
         );
  FA1D1BWP16P90LVT U559 ( .A(n189), .B(n115), .CI(n120), .CO(n112), .S(n113)
         );
  IND2D1BWP16P90 U560 ( .A1(n434), .B1(b[1]), .ZN(n265) );
  XNR3D2BWP16P90LVT U561 ( .A1(n178), .A2(n171), .A3(n108), .ZN(n104) );
  XNR2D1BWP16P90 U562 ( .A1(n13), .A2(n418), .ZN(product[4]) );
  XNR2D1BWP16P90 U563 ( .A1(n14), .A2(n84), .ZN(product[3]) );
  XOR2D1BWP16P90 U564 ( .A1(n15), .A2(n88), .Z(product[2]) );
  CKND1BWP16P90LVT U565 ( .I(n16), .ZN(product[1]) );
  INR2D1BWP16P90 U566 ( .A1(n434), .B1(n304), .ZN(product[0]) );
  XNR2D1BWP16P90LVT U567 ( .A1(n54), .A2(n7), .ZN(product[10]) );
  OAI21D1BWP16P90LVT U568 ( .A1(n1), .A2(n40), .B(n396), .ZN(n39) );
  XNR2D1BWP16P90LVT U569 ( .A1(n46), .A2(n5), .ZN(product[12]) );
  XNR2D1BWP16P90LVT U570 ( .A1(n19), .A2(n2), .ZN(product[15]) );
  OAI21D1BWP16P90LVT U571 ( .A1(n414), .A2(n20), .B(n21), .ZN(n19) );
  XNR2D1BWP16P90LVT U572 ( .A1(n30), .A2(n3), .ZN(product[14]) );
  XNR2D1BWP16P90LVT U573 ( .A1(n39), .A2(n4), .ZN(product[13]) );
  INVD1BWP16P90 U574 ( .I(a[7]), .ZN(n219) );
  XOR2D1BWP16P90 U575 ( .A1(n9), .A2(n406), .Z(product[8]) );
  ND2D1BWP16P90LVT U576 ( .A1(n201), .A2(n192), .ZN(n428) );
  ND2D1BWP16P90 U577 ( .A1(n135), .A2(n139), .ZN(n431) );
  ND2D1BWP16P90LVT U578 ( .A1(n135), .A2(n133), .ZN(n432) );
  FA1D2BWP16P90LVT U579 ( .A(n176), .B(n210), .CI(n184), .CO(n141), .S(n142)
         );
  ND2D2BWP16P90LVT U580 ( .A1(n156), .A2(n159), .ZN(n68) );
  INVD1BWP16P90 U581 ( .I(n52), .ZN(n94) );
  OAI22D2BWP16P90LVT U582 ( .A1(n259), .A2(n304), .B1(n260), .B2(n282), .ZN(
        n214) );
endmodule


module hw2_nonpipe_DW_mult_uns_6 ( b, \a[8] , \a[7] , \a[6] , \a[5] , \a[4] , 
        \a[3] , \a[2] , \a[1] , \a[0] , \product[15] , \product[14] , 
        \product[13] , \product[12] , \product[11] , \product[10] , 
        \product[9] , \product[8] , \product[7] , \product[6] , \product[5] , 
        \product[4] , \product[3] , \product[2] , \product[1] , \product[0] 
 );
  input [7:0] b;
  input \a[8] , \a[7] , \a[6] , \a[5] , \a[4] , \a[3] , \a[2] , \a[1] , \a[0] ;
  output \product[15] , \product[14] , \product[13] , \product[12] ,
         \product[11] , \product[10] , \product[9] , \product[8] ,
         \product[7] , \product[6] , \product[5] , \product[4] , \product[3] ,
         \product[2] , \product[1] , \product[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n25, n26, n27, n28, n29, n30, n32, n34, n36,
         n37, n38, n39, n43, n45, n46, n47, n48, n50, n54, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n67, n69, n70, n71, n72, n75, n76, n77,
         n87, n88, n89, n90, n92, n97, n98, n99, n102, n103, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n173, n174, n175, n176, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n221, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n272, n273, n274, n276, n277, n278, n279, n281, n282, n283, n301,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484;
  wire   [8:0] a;
  wire   [15:0] product;
  assign a[8] = \a[8] ;
  assign a[7] = \a[7] ;
  assign a[6] = \a[6] ;
  assign a[5] = \a[5] ;
  assign a[4] = \a[4] ;
  assign a[3] = \a[3] ;
  assign a[2] = \a[2] ;
  assign a[1] = \a[1] ;
  assign a[0] = \a[0] ;
  assign \product[15]  = product[15];
  assign \product[14]  = product[14];
  assign \product[13]  = product[13];
  assign \product[12]  = product[12];
  assign \product[11]  = product[11];
  assign \product[10]  = product[10];
  assign \product[9]  = product[9];
  assign \product[8]  = product[8];
  assign \product[7]  = product[7];
  assign \product[6]  = product[6];
  assign \product[5]  = product[5];
  assign \product[4]  = product[4];
  assign \product[3]  = product[3];
  assign \product[2]  = product[2];
  assign \product[1]  = product[1];
  assign \product[0]  = product[0];

  ND2D1BWP16P90LVT U6 ( .A1(n109), .A2(n108), .ZN(n18) );
  ND2D1BWP16P90LVT U9 ( .A1(n29), .A2(n476), .ZN(n20) );
  ND2D1BWP16P90LVT U13 ( .A1(n476), .A2(n25), .ZN(n3) );
  ND2D1BWP16P90LVT U16 ( .A1(n110), .A2(n113), .ZN(n25) );
  OAI21D1BWP16P90LVT U18 ( .A1(n1), .A2(n27), .B(n28), .ZN(n26) );
  ND2D1BWP16P90LVT U30 ( .A1(n114), .A2(n117), .ZN(n36) );
  ND2D1BWP16P90LVT U33 ( .A1(n97), .A2(n435), .ZN(n38) );
  ND2D1BWP16P90LVT U63 ( .A1(n99), .A2(n60), .ZN(n8) );
  ND2D1BWP16P90LVT U94 ( .A1(n161), .A2(n164), .ZN(n76) );
  ND2D1BWP16P90LVT U108 ( .A1(n474), .A2(n87), .ZN(n14) );
  ND2D1BWP16P90LVT U111 ( .A1(n213), .A2(n167), .ZN(n87) );
  ND2D1BWP16P90LVT U117 ( .A1(n214), .A2(n206), .ZN(n90) );
  FA1D1BWP16P90LVT U124 ( .A(n112), .B(n178), .CI(n115), .CO(n109), .S(n110)
         );
  FA1D1BWP16P90LVT U126 ( .A(n179), .B(n116), .CI(n119), .CO(n113), .S(n114)
         );
  FA1D1BWP16P90LVT U132 ( .A(n181), .B(n189), .CI(n133), .CO(n125), .S(n126)
         );
  FA1D1BWP16P90LVT U142 ( .A(n355), .B(n149), .CI(n147), .CO(n144), .S(n145)
         );
  FA1D1BWP16P90LVT U152 ( .A(n196), .B(n204), .CI(n166), .CO(n164), .S(n165)
         );
  OAI22D1BWP16P90LVT U174 ( .A1(n226), .A2(n281), .B1(n227), .B2(n276), .ZN(
        n181) );
  OAI22D1BWP16P90LVT U177 ( .A1(n229), .A2(n281), .B1(n230), .B2(n276), .ZN(
        n184) );
  OAI22D1BWP16P90LVT U193 ( .A1(n235), .A2(n277), .B1(n436), .B2(n282), .ZN(
        n189) );
  OAI22D1BWP16P90LVT U213 ( .A1(n244), .A2(n278), .B1(n243), .B2(n283), .ZN(
        n198) );
  OAI22D1BWP16P90LVT U232 ( .A1(n262), .A2(n301), .B1(n279), .B2(n483), .ZN(
        n171) );
  OAI22D1BWP16P90LVT U235 ( .A1(n255), .A2(n279), .B1(n254), .B2(n301), .ZN(
        n209) );
  OAI22D1BWP16P90LVT U239 ( .A1(n258), .A2(n301), .B1(n259), .B2(n279), .ZN(
        n213) );
  OAI22D1BWP16P90LVT U240 ( .A1(n259), .A2(n301), .B1(n260), .B2(n279), .ZN(
        n214) );
  ND2D1BWP16P90 U293 ( .A1(n449), .A2(n450), .ZN(n346) );
  ND2D2BWP16P90LVT U294 ( .A1(n449), .A2(n450), .ZN(n194) );
  OAI22D2BWP16P90LVT U295 ( .A1(n232), .A2(n281), .B1(n276), .B2(n458), .ZN(
        n168) );
  CKND2D8BWP16P90LVT U296 ( .A1(n273), .A2(n282), .ZN(n277) );
  CKNR2D4BWP16P90LVT U297 ( .A1(n277), .A2(n394), .ZN(n448) );
  CKND2D1BWP16P90LVT U298 ( .A1(n183), .A2(n143), .ZN(n362) );
  OAI22D4BWP16P90LVT U299 ( .A1(n228), .A2(n281), .B1(n229), .B2(n276), .ZN(
        n183) );
  XOR2D1BWP16P90LVT U300 ( .A1(n418), .A2(n132), .Z(n130) );
  BUFFD1BWP16P90LVT U301 ( .I(n192), .Z(n347) );
  ND3D1BWP16P90LVT U302 ( .A1(n379), .A2(n380), .A3(n381), .ZN(n146) );
  ND2D1BWP16P90LVT U303 ( .A1(n192), .A2(n208), .ZN(n381) );
  CKND2BWP16P90LVT U304 ( .I(n188), .ZN(n428) );
  BUFFD1BWP16P90LVT U305 ( .I(n210), .Z(n348) );
  AN2D2BWP16P90LVT U306 ( .A1(n165), .A2(n212), .Z(n349) );
  XNR2D2BWP16P90 U307 ( .A1(n13), .A2(n471), .ZN(product[4]) );
  XOR2D2BWP16P90 U308 ( .A1(n12), .A2(n77), .Z(product[5]) );
  ND2D1BWP16P90LVT U309 ( .A1(n352), .A2(n36), .ZN(n4) );
  CKND2D1BWP16P90 U310 ( .A1(n191), .A2(n199), .ZN(n412) );
  ND2D2BWP16P90LVT U311 ( .A1(n382), .A2(n191), .ZN(n385) );
  CKND2D2BWP16P90LVT U312 ( .A1(n429), .A2(n430), .ZN(n451) );
  ND2D4BWP16P90LVT U313 ( .A1(n461), .A2(n462), .ZN(n464) );
  INVD2BWP16P90LVT U314 ( .I(b[6]), .ZN(n461) );
  INVD1BWP16P90 U315 ( .I(n148), .ZN(n372) );
  XOR2D4BWP16P90LVT U316 ( .A1(n394), .A2(a[7]), .Z(n436) );
  OAI22D2BWP16P90LVT U317 ( .A1(n236), .A2(n277), .B1(n235), .B2(n282), .ZN(
        n190) );
  IND2D2BWP16P90LVT U318 ( .A1(n121), .B1(n428), .ZN(n429) );
  HA1D4BWP16P90LVT U319 ( .A(n168), .B(n185), .CO(n154), .S(n155) );
  XNR2D2BWP16P90 U320 ( .A1(b[1]), .A2(a[1]), .ZN(n260) );
  DEL025D1BWP16P90 U321 ( .I(n72), .Z(n350) );
  XOR2D4BWP16P90LVT U322 ( .A1(n134), .A2(n139), .Z(n418) );
  ND2D1BWP16P90LVT U323 ( .A1(n469), .A2(n475), .ZN(n351) );
  ND2D2BWP16P90LVT U324 ( .A1(n180), .A2(n122), .ZN(n453) );
  OAI22D1BWP16P90 U325 ( .A1(n224), .A2(n276), .B1(n223), .B2(n281), .ZN(n178)
         );
  OAI22D1BWP16P90LVT U326 ( .A1(n256), .A2(n279), .B1(n255), .B2(n301), .ZN(
        n210) );
  DEL025D1BWP16P90LVT U327 ( .I(n475), .Z(n352) );
  CKND2D4BWP16P90LVT U328 ( .A1(n145), .A2(n150), .ZN(n64) );
  XOR2D4BWP16P90LVT U329 ( .A1(n202), .A2(n210), .Z(n375) );
  INVD1BWP16P90LVT U330 ( .I(n233), .ZN(n353) );
  INVD2BWP16P90LVT U331 ( .I(n353), .ZN(n354) );
  XNR2D2BWP16P90LVT U332 ( .A1(a[8]), .A2(b[5]), .ZN(n233) );
  OR2D2BWP16P90LVT U333 ( .A1(n165), .A2(n212), .Z(n473) );
  INVD1BWP16P90LVT U334 ( .I(n59), .ZN(n99) );
  OR2D4BWP16P90LVT U335 ( .A1(n225), .A2(n281), .Z(n466) );
  ND2D1BWP16P90LVT U336 ( .A1(n200), .A2(n208), .ZN(n380) );
  ND2D1BWP16P90LVT U337 ( .A1(n125), .A2(n120), .ZN(n387) );
  ND3D2BWP16P90LVT U338 ( .A1(n399), .A2(n400), .A3(n401), .ZN(n133) );
  AO21D2BWP16P90LVT U339 ( .A1(n277), .A2(n282), .B(n233), .Z(n187) );
  OR2D4BWP16P90LVT U340 ( .A1(n442), .A2(n123), .Z(n469) );
  BUFFD2BWP16P90LVT U341 ( .I(n152), .Z(n355) );
  ND3D1BWP16P90LVT U342 ( .A1(n405), .A2(n406), .A3(n407), .ZN(n152) );
  CKNR2D2BWP16P90LVT U343 ( .A1(n59), .A2(n56), .ZN(n364) );
  OAI22D4BWP16P90LVT U344 ( .A1(n236), .A2(n282), .B1(n237), .B2(n277), .ZN(
        n191) );
  BUFFD2BWP16P90LVT U345 ( .I(n253), .Z(n356) );
  ND2D1BWP16P90LVT U346 ( .A1(n125), .A2(n127), .ZN(n388) );
  ND2D1BWP16P90 U347 ( .A1(n132), .A2(n139), .ZN(n419) );
  AOI21D2BWP16P90LVT U348 ( .A1(n473), .A2(n471), .B(n349), .ZN(n77) );
  ND2D4BWP16P90LVT U349 ( .A1(n207), .A2(n143), .ZN(n363) );
  XNR2D2BWP16P90LVT U350 ( .A1(a[8]), .A2(b[1]), .ZN(n253) );
  ND2D1BWP16P90LVT U351 ( .A1(a[5]), .A2(n358), .ZN(n359) );
  ND2D2BWP16P90LVT U352 ( .A1(n357), .A2(n484), .ZN(n360) );
  ND2D4BWP16P90LVT U353 ( .A1(n359), .A2(n360), .ZN(n246) );
  INVD1BWP16P90LVT U354 ( .I(a[5]), .ZN(n357) );
  INVD1BWP16P90 U355 ( .I(n484), .ZN(n358) );
  CKND16BWP16P90LVT U356 ( .I(b[3]), .ZN(n484) );
  XOR2D2BWP16P90LVT U357 ( .A1(n209), .A2(n158), .Z(n431) );
  ND3D2BWP16P90LVT U358 ( .A1(n413), .A2(n414), .A3(n415), .ZN(n158) );
  XNR2D8BWP16P90LVT U359 ( .A1(b[4]), .A2(b[3]), .ZN(n282) );
  XOR3D4BWP16P90LVT U360 ( .A1(n143), .A2(n183), .A3(n207), .Z(n142) );
  ND2D2BWP16P90LVT U361 ( .A1(n183), .A2(n207), .ZN(n361) );
  ND3D4BWP16P90LVT U362 ( .A1(n361), .A2(n362), .A3(n363), .ZN(n141) );
  INVD2BWP16P90LVT U363 ( .I(n135), .ZN(n143) );
  AO21D2BWP16P90LVT U364 ( .A1(n279), .A2(n301), .B(n253), .Z(n207) );
  FA1D1BWP16P90LVT U365 ( .A(n121), .B(n173), .CI(n187), .CO(n115), .S(n116)
         );
  NR2D1BWP16P90LVT U366 ( .A1(n59), .A2(n56), .ZN(n54) );
  CKND2BWP16P90LVT U367 ( .I(n409), .ZN(n371) );
  OAI22D1BWP16P90LVT U368 ( .A1(n248), .A2(n283), .B1(n249), .B2(n278), .ZN(
        n203) );
  XNR2D2BWP16P90LVT U369 ( .A1(a[3]), .A2(b[3]), .ZN(n248) );
  INVD1BWP16P90 U370 ( .I(n349), .ZN(n365) );
  BUFFD2BWP16P90LVT U371 ( .I(n159), .Z(n366) );
  ND2D1BWP16P90 U372 ( .A1(n102), .A2(n350), .ZN(n11) );
  ND2D2BWP16P90LVT U373 ( .A1(n118), .A2(n123), .ZN(n45) );
  XOR2D2BWP16P90LVT U374 ( .A1(n386), .A2(n125), .Z(n118) );
  CKND2BWP16P90LVT U375 ( .I(a[6]), .ZN(n457) );
  CKND2BWP16P90LVT U376 ( .I(n199), .ZN(n382) );
  OAI22D2BWP16P90LVT U377 ( .A1(n238), .A2(n277), .B1(n237), .B2(n282), .ZN(
        n192) );
  NR2D2BWP16P90LVT U378 ( .A1(n438), .A2(n129), .ZN(n47) );
  DEL025D1BWP16P90 U379 ( .I(n70), .Z(n416) );
  CKND2BWP16P90LVT U380 ( .I(n191), .ZN(n383) );
  XOR2D2BWP16P90 U381 ( .A1(n61), .A2(n8), .Z(product[9]) );
  OAI22D2BWP16P90LVT U382 ( .A1(n246), .A2(n283), .B1(n247), .B2(n278), .ZN(
        n201) );
  XOR3D4BWP16P90LVT U383 ( .A1(n127), .A2(n120), .A3(n125), .Z(n442) );
  XOR2D2BWP16P90LVT U384 ( .A1(a[6]), .A2(n394), .Z(n235) );
  ND2D1BWP16P90LVT U385 ( .A1(n193), .A2(n155), .ZN(n407) );
  OAI22D2BWP16P90LVT U386 ( .A1(n238), .A2(n282), .B1(n393), .B2(n277), .ZN(
        n193) );
  INVD1BWP16P90LVT U387 ( .I(n30), .ZN(n28) );
  AOI21D2BWP16P90LVT U388 ( .A1(n30), .A2(n476), .B(n23), .ZN(n21) );
  OAI22D2BWP16P90LVT U389 ( .A1(n256), .A2(n301), .B1(n257), .B2(n279), .ZN(
        n211) );
  IND2D2BWP16P90LVT U390 ( .A1(n480), .B1(n301), .ZN(n279) );
  XOR2D8BWP16P90LVT U391 ( .A1(a[6]), .A2(n484), .Z(n245) );
  ND2D1BWP16P90LVT U392 ( .A1(n126), .A2(n131), .ZN(n368) );
  ND2D1BWP16P90LVT U393 ( .A1(n126), .A2(n128), .ZN(n369) );
  OAI22D2BWP16P90LVT U394 ( .A1(n240), .A2(n282), .B1(n241), .B2(n277), .ZN(
        n195) );
  OR2D1BWP16P90LVT U395 ( .A1(n447), .A2(n448), .Z(n169) );
  CKND2D4BWP16P90LVT U396 ( .A1(n274), .A2(n283), .ZN(n278) );
  ND2D2BWP16P90LVT U397 ( .A1(n373), .A2(n374), .ZN(n140) );
  XNR2D1BWP16P90LVT U398 ( .A1(a[0]), .A2(b[7]), .ZN(n231) );
  ND2D1BWP16P90LVT U399 ( .A1(n175), .A2(n143), .ZN(n401) );
  XNR2D1BWP16P90 U400 ( .A1(a[4]), .A2(b[1]), .ZN(n257) );
  OAI22D1BWP16P90LVT U401 ( .A1(n252), .A2(n283), .B1(n278), .B2(n484), .ZN(
        n170) );
  IND2D1BWP16P90LVT U402 ( .A1(a[0]), .B1(b[3]), .ZN(n252) );
  XOR2D2BWP16P90LVT U403 ( .A1(b[6]), .A2(b[7]), .Z(n272) );
  XNR2D1BWP16P90LVT U404 ( .A1(a[0]), .A2(b[1]), .ZN(n261) );
  XOR2D1BWP16P90LVT U405 ( .A1(n375), .A2(n366), .Z(n157) );
  INVD1BWP16P90 U406 ( .I(n50), .ZN(n424) );
  OAI21D1BWP16P90LVT U407 ( .A1(n61), .A2(n446), .B(n60), .ZN(n58) );
  INR2D1BWP16P90LVT U408 ( .A1(a[0]), .B1(n301), .ZN(product[0]) );
  XNR2D1BWP16P90LVT U409 ( .A1(n10), .A2(n416), .ZN(product[7]) );
  XOR2D2BWP16P90LVT U410 ( .A1(n128), .A2(n131), .Z(n367) );
  XOR2D2BWP16P90LVT U411 ( .A1(n367), .A2(n126), .Z(n124) );
  ND2D1BWP16P90 U412 ( .A1(n131), .A2(n128), .ZN(n370) );
  ND3D2BWP16P90LVT U413 ( .A1(n368), .A2(n369), .A3(n370), .ZN(n123) );
  ND2D1BWP16P90LVT U414 ( .A1(n409), .A2(n372), .ZN(n373) );
  ND2D2BWP16P90LVT U415 ( .A1(n371), .A2(n148), .ZN(n374) );
  ND2D1BWP16P90 U416 ( .A1(n366), .A2(n348), .ZN(n376) );
  ND2D1BWP16P90 U417 ( .A1(n366), .A2(n202), .ZN(n377) );
  ND2D1BWP16P90 U418 ( .A1(n348), .A2(n202), .ZN(n378) );
  ND3D1BWP16P90LVT U419 ( .A1(n376), .A2(n377), .A3(n378), .ZN(n156) );
  OAI22D2BWP16P90LVT U420 ( .A1(n248), .A2(n278), .B1(n247), .B2(n283), .ZN(
        n202) );
  XOR3D4BWP16P90LVT U421 ( .A1(n208), .A2(n200), .A3(n347), .Z(n147) );
  ND2D1BWP16P90LVT U422 ( .A1(n200), .A2(n192), .ZN(n379) );
  ND2D1BWP16P90LVT U423 ( .A1(n199), .A2(n383), .ZN(n384) );
  ND2D2BWP16P90LVT U424 ( .A1(n384), .A2(n385), .ZN(n409) );
  XOR2D4BWP16P90LVT U425 ( .A1(n127), .A2(n120), .Z(n386) );
  ND2D1BWP16P90 U426 ( .A1(n120), .A2(n127), .ZN(n389) );
  ND3D1BWP16P90LVT U427 ( .A1(n387), .A2(n388), .A3(n389), .ZN(n117) );
  XNR2D2BWP16P90 U428 ( .A1(b[1]), .A2(a[3]), .ZN(n258) );
  CKND1BWP16P90LVT U429 ( .I(b[5]), .ZN(n394) );
  CKND1BWP16P90LVT U430 ( .I(b[1]), .ZN(n483) );
  CKND1BWP16P90LVT U431 ( .I(n121), .ZN(n122) );
  AN2D1BWP16P90LVT U432 ( .A1(n477), .A2(n92), .Z(product[1]) );
  ND2D1BWP16P90LVT U433 ( .A1(n97), .A2(n424), .ZN(n6) );
  CKNR2D4BWP16P90LVT U434 ( .A1(n441), .A2(n137), .ZN(n56) );
  XNR2D1BWP16P90LVT U435 ( .A1(a[0]), .A2(b[3]), .ZN(n251) );
  IND2D1BWP16P90LVT U436 ( .A1(a[0]), .B1(b[7]), .ZN(n232) );
  IND2D1BWP16P90LVT U437 ( .A1(a[0]), .B1(b[5]), .ZN(n242) );
  XNR2D1BWP16P90LVT U438 ( .A1(a[0]), .A2(b[5]), .ZN(n241) );
  OAI22D4BWP16P90LVT U439 ( .A1(n250), .A2(n283), .B1(n251), .B2(n278), .ZN(
        n205) );
  AO21D2BWP16P90 U440 ( .A1(n278), .A2(n283), .B(n243), .Z(n197) );
  CKNR2D2BWP16P90LVT U441 ( .A1(n439), .A2(n150), .ZN(n391) );
  ND3D2BWP16P90LVT U442 ( .A1(n432), .A2(n433), .A3(n434), .ZN(n150) );
  CKNR2D2BWP16P90LVT U443 ( .A1(n439), .A2(n150), .ZN(n63) );
  INVD1BWP16P90 U444 ( .I(n239), .ZN(n392) );
  INVD1BWP16P90LVT U445 ( .I(n392), .ZN(n393) );
  XOR2D4BWP16P90LVT U446 ( .A1(a[2]), .A2(n394), .Z(n239) );
  HA1D4BWP16P90LVT U447 ( .A(n170), .B(n205), .CO(n166), .S(n167) );
  XOR3D1BWP16P90LVT U448 ( .A1(n152), .A2(n149), .A3(n147), .Z(n439) );
  ND2D2BWP16P90LVT U449 ( .A1(n437), .A2(n144), .ZN(n60) );
  OR2D2BWP16P90LVT U450 ( .A1(n240), .A2(n277), .Z(n450) );
  OAI22D4BWP16P90LVT U451 ( .A1(n254), .A2(n279), .B1(n356), .B2(n301), .ZN(
        n208) );
  ND2D2BWP16P90LVT U452 ( .A1(n130), .A2(n137), .ZN(n57) );
  NR2D2BWP16P90LVT U453 ( .A1(n221), .A2(n458), .ZN(n175) );
  FA1D2BWP16P90LVT U454 ( .A(n198), .B(n190), .CI(n141), .CO(n131), .S(n132)
         );
  AOI21D1BWP16P90 U455 ( .A1(n455), .A2(n364), .B(n402), .ZN(n468) );
  XNR2D4BWP16P90LVT U456 ( .A1(a[1]), .A2(b[3]), .ZN(n250) );
  ND3D2BWP16P90LVT U457 ( .A1(n419), .A2(n420), .A3(n421), .ZN(n129) );
  ND2D1BWP16P90LVT U458 ( .A1(n132), .A2(n134), .ZN(n420) );
  XOR3D1BWP16P90LVT U459 ( .A1(n202), .A2(n159), .A3(n348), .Z(n395) );
  XNR2D4BWP16P90LVT U460 ( .A1(a[1]), .A2(b[7]), .ZN(n230) );
  INVD1BWP16P90LVT U461 ( .I(n97), .ZN(n396) );
  XNR2D2BWP16P90LVT U462 ( .A1(n423), .A2(b[1]), .ZN(n259) );
  IND2D2BWP16P90LVT U463 ( .A1(n135), .B1(n182), .ZN(n400) );
  XNR2D2BWP16P90LVT U464 ( .A1(a[4]), .A2(b[7]), .ZN(n227) );
  ND2D1BWP16P90 U465 ( .A1(n473), .A2(n365), .ZN(n13) );
  OAI22D2BWP16P90LVT U466 ( .A1(n249), .A2(n283), .B1(n250), .B2(n278), .ZN(
        n204) );
  IND2D4BWP16P90LVT U467 ( .A1(n239), .B1(n397), .ZN(n449) );
  CKND16BWP16P90LVT U468 ( .I(n282), .ZN(n397) );
  BUFFD2BWP16P90 U469 ( .I(a[2]), .Z(n423) );
  XNR2D8BWP16P90LVT U470 ( .A1(a[1]), .A2(b[5]), .ZN(n240) );
  XOR2D2BWP16P90LVT U471 ( .A1(n143), .A2(n175), .Z(n398) );
  XOR2D2BWP16P90LVT U472 ( .A1(n398), .A2(n182), .Z(n134) );
  ND2D2BWP16P90LVT U473 ( .A1(n175), .A2(n182), .ZN(n399) );
  ND2D1BWP16P90LVT U474 ( .A1(a[6]), .A2(b[7]), .ZN(n459) );
  OAI21D2BWP16P90LVT U475 ( .A1(n56), .A2(n60), .B(n57), .ZN(n402) );
  ND2D2BWP16P90LVT U476 ( .A1(n469), .A2(n475), .ZN(n403) );
  ND2D1BWP16P90LVT U477 ( .A1(n408), .A2(n122), .ZN(n454) );
  INR2D2BWP16P90LVT U478 ( .A1(a[4]), .B1(n458), .ZN(n121) );
  FA1D1BWP16P90LVT U479 ( .A(n163), .B(n203), .CI(n211), .CO(n160), .S(n161)
         );
  DEL025D1BWP16P90LVT U480 ( .I(a[7]), .Z(n425) );
  ND2D1BWP16P90LVT U481 ( .A1(n46), .A2(n5), .ZN(n481) );
  XOR3D4BWP16P90LVT U482 ( .A1(n134), .A2(n139), .A3(n132), .Z(n441) );
  ND2D2BWP16P90LVT U483 ( .A1(n457), .A2(n458), .ZN(n460) );
  OAI22D1BWP16P90LVT U484 ( .A1(n276), .A2(n225), .B1(n224), .B2(n281), .ZN(
        n179) );
  ND2D2BWP16P90LVT U485 ( .A1(n459), .A2(n460), .ZN(n225) );
  OAI22D4BWP16P90LVT U486 ( .A1(n246), .A2(n278), .B1(n245), .B2(n283), .ZN(
        n200) );
  XOR2D4BWP16P90LVT U487 ( .A1(n155), .A2(n193), .Z(n404) );
  XOR2D4BWP16P90LVT U488 ( .A1(n404), .A2(n201), .Z(n153) );
  ND2D1BWP16P90LVT U489 ( .A1(n193), .A2(n201), .ZN(n405) );
  ND2D1BWP16P90LVT U490 ( .A1(n201), .A2(n155), .ZN(n406) );
  ND2D2BWP16P90LVT U491 ( .A1(n180), .A2(n408), .ZN(n452) );
  OAI22D1BWP16P90LVT U492 ( .A1(n436), .A2(n277), .B1(n354), .B2(n282), .ZN(
        n408) );
  ND2D1BWP16P90LVT U493 ( .A1(n148), .A2(n191), .ZN(n410) );
  ND2D1BWP16P90LVT U494 ( .A1(n148), .A2(n199), .ZN(n411) );
  ND3D4BWP16P90LVT U495 ( .A1(n410), .A2(n411), .A3(n412), .ZN(n139) );
  XOR3D4BWP16P90LVT U496 ( .A1(n186), .A2(n194), .A3(n162), .Z(n159) );
  ND2D1BWP16P90 U497 ( .A1(n346), .A2(n162), .ZN(n413) );
  ND2D1BWP16P90 U498 ( .A1(n346), .A2(n186), .ZN(n414) );
  ND2D1BWP16P90LVT U499 ( .A1(n162), .A2(n186), .ZN(n415) );
  XNR2D2BWP16P90LVT U500 ( .A1(a[2]), .A2(b[7]), .ZN(n229) );
  INR2D1BWP16P90 U501 ( .A1(a[0]), .B1(n281), .ZN(n186) );
  HA1D2BWP16P90LVT U502 ( .A(n169), .B(n195), .CO(n162), .S(n163) );
  CKND2BWP16P90LVT U503 ( .I(n45), .ZN(n417) );
  INVD1BWP16P90 U504 ( .I(n45), .ZN(n43) );
  XNR2D4BWP16P90LVT U505 ( .A1(b[5]), .A2(a[5]), .ZN(n236) );
  XNR2D2BWP16P90LVT U506 ( .A1(n425), .A2(b[7]), .ZN(n224) );
  ND2D1BWP16P90 U507 ( .A1(n139), .A2(n134), .ZN(n421) );
  OR2D1BWP16P90LVT U508 ( .A1(n443), .A2(n156), .Z(n426) );
  OR2D1BWP16P90LVT U509 ( .A1(n443), .A2(n156), .Z(n472) );
  XOR3D4BWP16P90LVT U510 ( .A1(n209), .A2(n158), .A3(n153), .Z(n443) );
  XNR2D2BWP16P90LVT U511 ( .A1(a[5]), .A2(b[1]), .ZN(n256) );
  INVD1BWP16P90 U512 ( .I(n457), .ZN(n422) );
  XNR2D2BWP16P90LVT U513 ( .A1(a[8]), .A2(b[3]), .ZN(n243) );
  INVD1BWP16P90LVT U514 ( .I(n48), .ZN(n50) );
  ND2D2BWP16P90LVT U515 ( .A1(n124), .A2(n129), .ZN(n48) );
  NR2D2BWP16P90LVT U516 ( .A1(n138), .A2(n144), .ZN(n59) );
  ND2D1BWP16P90LVT U517 ( .A1(n188), .A2(n121), .ZN(n430) );
  INVD1BWP16P90 U518 ( .I(n43), .ZN(n427) );
  XOR2D4BWP16P90LVT U519 ( .A1(n451), .A2(n180), .Z(n120) );
  INR2D2BWP16P90LVT U520 ( .A1(a[1]), .B1(n458), .ZN(n135) );
  OAI22D4BWP16P90LVT U521 ( .A1(n436), .A2(n277), .B1(n354), .B2(n282), .ZN(
        n188) );
  XNR2D4BWP16P90LVT U522 ( .A1(b[7]), .A2(a[5]), .ZN(n226) );
  OA21D2BWP16P90LVT U523 ( .A1(n77), .A2(n75), .B(n76), .Z(n470) );
  XOR2D2BWP16P90LVT U524 ( .A1(n431), .A2(n153), .Z(n151) );
  ND2D1BWP16P90 U525 ( .A1(n153), .A2(n158), .ZN(n432) );
  ND2D1BWP16P90 U526 ( .A1(n153), .A2(n209), .ZN(n433) );
  ND2D1BWP16P90 U527 ( .A1(n158), .A2(n209), .ZN(n434) );
  INR2D2BWP16P90LVT U528 ( .A1(a[5]), .B1(n458), .ZN(n173) );
  ND3D4BWP16P90LVT U529 ( .A1(n452), .A2(n453), .A3(n454), .ZN(n119) );
  OAI22D2BWP16P90LVT U530 ( .A1(n245), .A2(n278), .B1(n244), .B2(n283), .ZN(
        n199) );
  AOI21D2BWP16P90LVT U531 ( .A1(n417), .A2(n475), .B(n34), .ZN(n32) );
  BUFFD2BWP16P90LVT U532 ( .I(n469), .Z(n435) );
  AOI21D2BWP16P90LVT U533 ( .A1(n70), .A2(n426), .B(n67), .ZN(n65) );
  OAI21D4BWP16P90LVT U534 ( .A1(n470), .A2(n71), .B(n72), .ZN(n70) );
  XOR2D2BWP16P90 U535 ( .A1(n9), .A2(n65), .Z(product[8]) );
  XNR2D2BWP16P90LVT U536 ( .A1(b[5]), .A2(a[4]), .ZN(n237) );
  OR2D1BWP16P90LVT U537 ( .A1(n46), .A2(n5), .Z(n482) );
  INR2D1BWP16P90 U538 ( .A1(n422), .B1(n458), .ZN(n111) );
  CKOR2D1BWP16P90LVT U539 ( .A1(n226), .A2(n276), .Z(n465) );
  ND2D1BWP16P90 U540 ( .A1(n57), .A2(n98), .ZN(n7) );
  XNR2D2BWP16P90LVT U541 ( .A1(a[7]), .A2(b[1]), .ZN(n254) );
  AOI21D1BWP16P90LVT U542 ( .A1(n435), .A2(n50), .B(n43), .ZN(n39) );
  ND2D1BWP16P90 U543 ( .A1(n427), .A2(n435), .ZN(n5) );
  ND2D8BWP16P90LVT U544 ( .A1(n272), .A2(n281), .ZN(n276) );
  CKNR2D2BWP16P90LVT U545 ( .A1(n351), .A2(n47), .ZN(n29) );
  OAI22D4BWP16P90LVT U546 ( .A1(n228), .A2(n276), .B1(n227), .B2(n281), .ZN(
        n182) );
  XOR3D1BWP16P90LVT U547 ( .A1(n131), .A2(n128), .A3(n126), .Z(n438) );
  XNR2D2BWP16P90LVT U548 ( .A1(b[1]), .A2(a[6]), .ZN(n255) );
  NR2D1BWP16P90LVT U549 ( .A1(n242), .A2(n282), .ZN(n447) );
  ND2D4BWP16P90LVT U550 ( .A1(n465), .A2(n466), .ZN(n180) );
  XOR3D1BWP16P90LVT U551 ( .A1(n146), .A2(n142), .A3(n140), .Z(n437) );
  ND2D2BWP16P90LVT U552 ( .A1(n151), .A2(n156), .ZN(n69) );
  INVD1BWP16P90LVT U553 ( .I(n455), .ZN(n61) );
  DEL025D1BWP16P90 U554 ( .I(a[8]), .Z(n440) );
  ND2D2BWP16P90LVT U555 ( .A1(n395), .A2(n160), .ZN(n72) );
  DEL025D1BWP16P90 U556 ( .I(n425), .Z(n444) );
  OR2D2BWP16P90LVT U557 ( .A1(n114), .A2(n117), .Z(n475) );
  XOR2D1BWP16P90LVT U558 ( .A1(n11), .A2(n470), .Z(product[6]) );
  OAI21D1BWP16P90LVT U559 ( .A1(n65), .A2(n391), .B(n64), .ZN(n445) );
  OAI22D4BWP16P90LVT U560 ( .A1(n230), .A2(n281), .B1(n231), .B2(n276), .ZN(
        n185) );
  XNR2D4BWP16P90LVT U561 ( .A1(a[3]), .A2(b[7]), .ZN(n228) );
  OAI21D2BWP16P90LVT U562 ( .A1(n403), .A2(n48), .B(n32), .ZN(n30) );
  FA1D2BWP16P90LVT U563 ( .A(n135), .B(n174), .CI(n197), .CO(n127), .S(n128)
         );
  INR2D2BWP16P90 U564 ( .A1(a[3]), .B1(n458), .ZN(n174) );
  INVD1BWP16P90 U565 ( .I(n56), .ZN(n98) );
  ND2D1BWP16P90 U566 ( .A1(n69), .A2(n426), .ZN(n10) );
  CKND2BWP16P90LVT U567 ( .I(n69), .ZN(n67) );
  XNR2D2BWP16P90LVT U568 ( .A1(b[3]), .A2(a[2]), .ZN(n249) );
  XNR2D2BWP16P90LVT U569 ( .A1(a[7]), .A2(b[3]), .ZN(n244) );
  XNR2D8BWP16P90LVT U570 ( .A1(b[2]), .A2(b[1]), .ZN(n283) );
  XNR2D2BWP16P90LVT U571 ( .A1(b[3]), .A2(a[4]), .ZN(n247) );
  XNR2D2BWP16P90LVT U572 ( .A1(b[5]), .A2(a[3]), .ZN(n238) );
  AOI21D2BWP16P90LVT U573 ( .A1(n70), .A2(n472), .B(n67), .ZN(n456) );
  INVD1BWP16P90LVT U574 ( .I(n99), .ZN(n446) );
  NR2D2BWP16P90LVT U575 ( .A1(n157), .A2(n160), .ZN(n71) );
  OAI21D1BWP16P90LVT U576 ( .A1(n456), .A2(n63), .B(n64), .ZN(n455) );
  OAI21D1BWP16P90LVT U577 ( .A1(n456), .A2(n63), .B(n64), .ZN(n62) );
  INVD1BWP16P90 U578 ( .I(b[7]), .ZN(n458) );
  OAI21D1BWP16P90LVT U579 ( .A1(n467), .A2(n20), .B(n21), .ZN(n19) );
  INVD1BWP16P90LVT U580 ( .I(n25), .ZN(n23) );
  FA1D1BWP16P90LVT U581 ( .A(n146), .B(n142), .CI(n140), .CO(n137), .S(n138)
         );
  ND2D1BWP16P90LVT U582 ( .A1(b[6]), .A2(b[5]), .ZN(n463) );
  ND2D4BWP16P90LVT U583 ( .A1(n463), .A2(n464), .ZN(n281) );
  CKND2BWP16P90LVT U584 ( .I(b[5]), .ZN(n462) );
  FA1D2BWP16P90LVT U585 ( .A(n176), .B(n184), .CI(n154), .CO(n148), .S(n149)
         );
  OAI22D1BWP16P90LVT U586 ( .A1(n260), .A2(n301), .B1(n261), .B2(n279), .ZN(
        n215) );
  INR2D1BWP16P90 U587 ( .A1(a[0]), .B1(n458), .ZN(n176) );
  XOR2D1BWP16P90LVT U588 ( .A1(n6), .A2(n468), .Z(product[11]) );
  AOI21D1BWP16P90LVT U589 ( .A1(n364), .A2(n62), .B(n402), .ZN(n467) );
  AOI21D1BWP16P90LVT U590 ( .A1(n54), .A2(n445), .B(n402), .ZN(n1) );
  INVD1BWP16P90LVT U591 ( .I(n47), .ZN(n97) );
  INVD1BWP16P90 U592 ( .I(n71), .ZN(n102) );
  INVD1BWP16P90 U593 ( .I(n75), .ZN(n103) );
  OR2D1BWP16P90 U594 ( .A1(n215), .A2(n171), .Z(n477) );
  INR2D1BWP16P90 U595 ( .A1(a[0]), .B1(n282), .ZN(n196) );
  IND2D1BWP16P90 U596 ( .A1(a[0]), .B1(b[1]), .ZN(n262) );
  INR2D1BWP16P90 U597 ( .A1(a[0]), .B1(n283), .ZN(n206) );
  ND2D1BWP16P90 U598 ( .A1(n103), .A2(n76), .ZN(n12) );
  XOR2D1BWP16P90 U599 ( .A1(n15), .A2(n92), .Z(product[2]) );
  INVD1BWP16P90LVT U600 ( .I(n36), .ZN(n34) );
  IOA21D1BWP16P90LVT U601 ( .A1(n474), .A2(n88), .B(n87), .ZN(n471) );
  OAI21D1BWP16P90LVT U602 ( .A1(n89), .A2(n92), .B(n90), .ZN(n88) );
  IND2D1BWP16P90 U603 ( .A1(n391), .B1(n64), .ZN(n9) );
  IND2D1BWP16P90 U604 ( .A1(n89), .B1(n90), .ZN(n15) );
  NR2D1BWP16P90LVT U605 ( .A1(n161), .A2(n164), .ZN(n75) );
  OR2D1BWP16P90LVT U606 ( .A1(n213), .A2(n167), .Z(n474) );
  NR2D1BWP16P90LVT U607 ( .A1(n214), .A2(n206), .ZN(n89) );
  ND2D1BWP16P90LVT U608 ( .A1(n215), .A2(n171), .ZN(n92) );
  OR2D1BWP16P90LVT U609 ( .A1(n110), .A2(n113), .Z(n476) );
  XNR2D1BWP16P90 U610 ( .A1(n440), .A2(b[7]), .ZN(n223) );
  IND2D1BWP16P90LVT U611 ( .A1(n17), .B1(n18), .ZN(n2) );
  NR2D1BWP16P90LVT U612 ( .A1(n109), .A2(n108), .ZN(n17) );
  ND2D1BWP16P90LVT U613 ( .A1(n482), .A2(n481), .ZN(product[12]) );
  INVD1BWP16P90 U614 ( .I(n423), .ZN(n221) );
  CKND1BWP16P90LVT U615 ( .I(n111), .ZN(n112) );
  XOR3D2BWP16P90LVT U616 ( .A1(n111), .A2(n478), .A3(n479), .Z(n108) );
  OR2D1BWP16P90LVT U617 ( .A1(n216), .A2(n458), .Z(n478) );
  AOI21D1BWP16P90 U618 ( .A1(n276), .A2(n281), .B(n223), .ZN(n479) );
  XOR2D1BWP16P90LVT U619 ( .A1(b[4]), .A2(b[5]), .Z(n273) );
  XOR2D1BWP16P90LVT U620 ( .A1(b[2]), .A2(b[3]), .Z(n274) );
  XNR2D1BWP16P90LVT U621 ( .A1(b[0]), .A2(b[1]), .ZN(n480) );
  CKND1BWP16P90LVT U622 ( .I(b[0]), .ZN(n301) );
  XNR2D1BWP16P90 U623 ( .A1(n14), .A2(n88), .ZN(product[3]) );
  INVD1BWP16P90LVT U624 ( .I(n29), .ZN(n27) );
  OAI21D1BWP16P90LVT U625 ( .A1(n1), .A2(n38), .B(n39), .ZN(n37) );
  OAI21D1BWP16P90LVT U626 ( .A1(n467), .A2(n396), .B(n424), .ZN(n46) );
  OAI22D1BWP16P90 U627 ( .A1(n258), .A2(n279), .B1(n257), .B2(n301), .ZN(n212)
         );
  INVD1BWP16P90 U628 ( .I(n444), .ZN(n216) );
  XNR2D1BWP16P90LVT U629 ( .A1(n58), .A2(n7), .ZN(product[10]) );
  XNR2D1BWP16P90LVT U630 ( .A1(n37), .A2(n4), .ZN(product[13]) );
  XNR2D1BWP16P90LVT U631 ( .A1(n26), .A2(n3), .ZN(product[14]) );
  XNR2D1BWP16P90LVT U632 ( .A1(n19), .A2(n2), .ZN(product[15]) );
endmodule


module hw2_nonpipe ( a, b, c, s, d );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [15:0] d;
  input s;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48,
         N49, N50, N51, N52, N36, N35, N34, N33, N32, N31, N30, N29, N28, N9,
         N8, N7, N6, N5, N4, N3, N11, N10, n410, n53, n60, n70, n80,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9;

  hw2_nonpipe_DW01_add_2 add_2 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3}), 
        .\A[7] (a[7]), .\A[6] (a[6]), .\A[5] (a[5]), .\A[4] (a[4]), .\A[3] (
        a[3]), .\A[2] (a[2]), .\A[1] (a[1]), .\A[0] (a[0]), .\B[7] (b[7]), 
        .\B[6] (b[6]), .\B[5] (b[5]), .\B[4] (b[4]), .\B[3] (b[3]), .\B[2] (
        b[2]), .\B[1] (b[1]), .\B[0] (b[0]) );
  hw2_nonpipe_DW01_sub_2 sub_2 ( .DIFF({N36, N35, N34, N33, N32, N31, N30, N29, 
        N28}), .\A[7] (a[7]), .\A[6] (a[6]), .\A[5] (a[5]), .\A[4] (a[4]), 
        .\A[3] (a[3]), .\A[2] (a[2]), .\A[1] (a[1]), .\A[0] (a[0]), .\B[7] (
        b[7]), .\B[6] (b[6]), .\B[5] (b[5]), .\B[4] (b[4]), .\B[3] (b[3]), 
        .\B[2] (b[2]), .\B[1] (b[1]), .\B[0] (b[0]) );
  hw2_nonpipe_DW_mult_uns_7 mult_2 ( .a({N11, N10, N9, N8, N7, N6, N5, N4, N3}), .b(c), .\product[15] (N27), .\product[14] (N26), .\product[13] (N25), 
        .\product[12] (N24), .\product[11] (N23), .\product[10] (N22), 
        .\product[9] (N21), .\product[8] (N20), .\product[7] (N19), 
        .\product[6] (N18), .\product[5] (N17), .\product[4] (N16), 
        .\product[3] (N15), .\product[2] (N14), .\product[1] (N13), 
        .\product[0] (N12) );
  hw2_nonpipe_DW_mult_uns_6 mult_2_2 ( .b(c), .\a[8] (N36), .\a[7] (N35), 
        .\a[6] (N34), .\a[5] (N33), .\a[4] (N32), .\a[3] (N31), .\a[2] (N30), 
        .\a[1] (N29), .\a[0] (N28), .\product[15] (N52), .\product[14] (N51), 
        .\product[13] (N50), .\product[12] (N49), .\product[11] (N48), 
        .\product[10] (N47), .\product[9] (N46), .\product[8] (N45), 
        .\product[7] (N44), .\product[6] (N43), .\product[5] (N42), 
        .\product[4] (N41), .\product[3] (N40), .\product[2] (N39), 
        .\product[1] (N38), .\product[0] (N37) );
  TIELBWP20P90LVT U18 ( .ZN(n410) );
  CKND1BWP16P90LVT U19 ( .I(s), .ZN(n80) );
  ND2D1BWP16P90LVT U20 ( .A1(N52), .A2(n80), .ZN(n53) );
  ND2D1BWP16P90LVT U21 ( .A1(N27), .A2(s), .ZN(n60) );
  ND2D1BWP16P90LVT U22 ( .A1(n60), .A2(n53), .ZN(d[15]) );
  CKMUX2D1BWP16P90LVT U23 ( .I0(N47), .I1(N22), .S(s), .Z(d[10]) );
  INVD1BWP16P90LVT U24 ( .I(N24), .ZN(n70) );
  MOAI22D1BWP16P90LVT U25 ( .A1(n70), .A2(n80), .B1(N49), .B2(n80), .ZN(d[12])
         );
  MUX2D1BWP16P90LVT U26 ( .I0(N37), .I1(N12), .S(s), .Z(d[0]) );
  MUX2D1BWP16P90LVT U27 ( .I0(N38), .I1(N13), .S(s), .Z(d[1]) );
  MUX2D1BWP16P90LVT U28 ( .I0(N39), .I1(N14), .S(s), .Z(d[2]) );
  MUX2D1BWP16P90LVT U29 ( .I0(N40), .I1(N15), .S(s), .Z(d[3]) );
  MUX2D1BWP16P90LVT U30 ( .I0(N41), .I1(N16), .S(s), .Z(d[4]) );
  MUX2D1BWP16P90LVT U31 ( .I0(N42), .I1(N17), .S(s), .Z(d[5]) );
  MUX2D1BWP16P90LVT U32 ( .I0(N43), .I1(N18), .S(s), .Z(d[6]) );
  MUX2D1BWP16P90LVT U33 ( .I0(N44), .I1(N19), .S(s), .Z(d[7]) );
  MUX2D1BWP16P90LVT U34 ( .I0(N45), .I1(N20), .S(s), .Z(d[8]) );
  MUX2D1BWP16P90LVT U35 ( .I0(N46), .I1(N21), .S(s), .Z(d[9]) );
  AO22D1BWP16P90LVT U36 ( .A1(N23), .A2(s), .B1(N48), .B2(n80), .Z(d[11]) );
  AO22D1BWP16P90LVT U37 ( .A1(N50), .A2(n80), .B1(N25), .B2(s), .Z(d[13]) );
  AO22D1BWP16P90LVT U38 ( .A1(N51), .A2(n80), .B1(N26), .B2(s), .Z(d[14]) );
endmodule

