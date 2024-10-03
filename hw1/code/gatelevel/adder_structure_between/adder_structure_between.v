/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Oct  3 15:05:49 2024
/////////////////////////////////////////////////////////////


module FA_0 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  CKND1BWP16P90LVT U1 ( .I(c_in), .ZN(n7) );
  OR2D1BWP16P90LVT U2 ( .A1(n11), .A2(n10), .Z(n6) );
  ND2D1BWP16P90LVT U3 ( .A1(n4), .A2(n5), .ZN(n9) );
  OR2D1BWP16P90LVT U4 ( .A1(a), .A2(n7), .Z(n1) );
  ND2D1BWP16P90LVT U5 ( .A1(c_in), .A2(n10), .ZN(n8) );
  ND2D1BWP16P90LVT U6 ( .A1(n3), .A2(n2), .ZN(n5) );
  CKND1BWP16P90LVT U7 ( .I(n8), .ZN(n3) );
  NR2D1BWP16P90LVT U8 ( .A1(a), .A2(n7), .ZN(n2) );
  INVD2BWP16P90LVT U9 ( .I(b), .ZN(n10) );
  ND2D1BWP16P90LVT U10 ( .A1(n8), .A2(n1), .ZN(n4) );
  ND2D2BWP16P90LVT U11 ( .A1(n9), .A2(n6), .ZN(c_out) );
  INVD1BWP16P90LVT U12 ( .I(a), .ZN(n11) );
  XOR3D1BWP16P90LVT U13 ( .A1(b), .A2(a), .A3(c_in), .Z(sum) );
endmodule


module FA_1 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  XNR2D1BWP16P90LVT U1 ( .A1(c_in), .A2(n4), .ZN(sum) );
  XOR2D1BWP16P90LVT U2 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U3 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U4 ( .I(c_in), .ZN(n3) );
  INVD1BWP16P90LVT U5 ( .I(b), .ZN(n1) );
  OAI22D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
endmodule


module FA_2 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  OAI22D4BWP16P90LVT U1 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  CKND1BWP16P90LVT U2 ( .I(c_in), .ZN(n3) );
  XNR2D1BWP16P90LVT U3 ( .A1(c_in), .A2(n4), .ZN(sum) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_3 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  CKND1BWP16P90LVT U1 ( .I(n4), .ZN(n1) );
  MOAI22D2BWP16P90LVT U2 ( .A1(n3), .A2(n2), .B1(n1), .B2(c_in), .ZN(c_out) );
  XNR2D1BWP16P90LVT U3 ( .A1(c_in), .A2(n4), .ZN(sum) );
  XOR2D1BWP16P90LVT U4 ( .A1(n3), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n2) );
endmodule


module FA_4 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(n4), .ZN(n1) );
  XNR2D1BWP16P90LVT U2 ( .A1(n1), .A2(n5), .ZN(sum) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_5 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(n4), .ZN(n1) );
  OAI22D4BWP16P90LVT U2 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(c_out) );
  CKND2BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  XNR2D1BWP16P90 U4 ( .A1(n1), .A2(n5), .ZN(sum) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_6 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  OAI22D1BWP16P90LVT U1 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  CKND2BWP16P90LVT U2 ( .I(c_in), .ZN(n3) );
  XNR2D1BWP16P90 U3 ( .A1(c_in), .A2(n4), .ZN(sum) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_7 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  OAI22D4BWP16P90LVT U1 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  CKND2BWP16P90LVT U2 ( .I(c_in), .ZN(n3) );
  XNR2D1BWP16P90 U3 ( .A1(c_in), .A2(n4), .ZN(sum) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_8 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  OAI22D4BWP16P90LVT U1 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  CKND2BWP16P90LVT U2 ( .I(c_in), .ZN(n3) );
  XOR2D1BWP16P90LVT U3 ( .A1(n3), .A2(n4), .Z(sum) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_9 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(n4), .ZN(n1) );
  XNR2D1BWP16P90 U2 ( .A1(n1), .A2(n5), .ZN(sum) );
  XOR2D1BWP16P90LVT U3 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U4 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U5 ( .I(c_in), .ZN(n4) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n2) );
  OAI22D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(c_out) );
endmodule


module FA_10 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(n4), .ZN(n1) );
  XNR2D1BWP16P90 U2 ( .A1(n1), .A2(n5), .ZN(sum) );
  OAI22D1BWP16P90LVT U3 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(c_out) );
  INVD1BWP16P90LVT U4 ( .I(c_in), .ZN(n4) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_11 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  CKND1BWP16P90LVT U1 ( .I(c_in), .ZN(n4) );
  OAI22D1BWP16P90LVT U2 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(c_out) );
  INVD1BWP16P90 U3 ( .I(n4), .ZN(n1) );
  XNR2D1BWP16P90LVT U4 ( .A1(n1), .A2(n5), .ZN(sum) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_12 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  OAI22D1BWP16P90LVT U1 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  CKND1BWP16P90LVT U2 ( .I(c_in), .ZN(n3) );
  XOR2D1BWP16P90LVT U3 ( .A1(n3), .A2(n4), .Z(sum) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_13 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  INVD1BWP16P90LVT U1 ( .I(c_in), .ZN(n3) );
  XOR2D1BWP16P90LVT U2 ( .A1(n3), .A2(n4), .Z(sum) );
  OAI22D1BWP16P90LVT U3 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_14 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(n4), .ZN(n1) );
  INVD1BWP16P90LVT U2 ( .I(c_in), .ZN(n4) );
  XNR2D1BWP16P90LVT U3 ( .A1(n1), .A2(n5), .ZN(sum) );
  XOR2D1BWP16P90LVT U4 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n2) );
  OAI22D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(c_out) );
endmodule


module FA_15 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  OAI22D1BWP16P90LVT U1 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  INVD2BWP16P90LVT U2 ( .I(c_in), .ZN(n3) );
  XNR2D1BWP16P90LVT U3 ( .A1(c_in), .A2(n4), .ZN(sum) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_16 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(n4), .ZN(n1) );
  XNR2D1BWP16P90LVT U2 ( .A1(n1), .A2(n5), .ZN(sum) );
  OAI22D4BWP16P90LVT U3 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(c_out) );
  CKND2BWP16P90LVT U4 ( .I(c_in), .ZN(n4) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_17 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  INVD1BWP16P90LVT U1 ( .I(c_in), .ZN(n3) );
  OAI22D2BWP16P90LVT U2 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  XOR2D1BWP16P90LVT U3 ( .A1(n3), .A2(n4), .Z(sum) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_18 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  INVD1BWP16P90LVT U1 ( .I(c_in), .ZN(n3) );
  XOR2D1BWP16P90LVT U2 ( .A1(n3), .A2(n4), .Z(sum) );
  OAI22D1BWP16P90LVT U3 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_19 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  XOR2D1BWP16P90LVT U1 ( .A1(n3), .A2(n4), .Z(sum) );
  XOR2D1BWP16P90LVT U2 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U3 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U4 ( .I(c_in), .ZN(n3) );
  INVD1BWP16P90LVT U5 ( .I(b), .ZN(n1) );
  OAI22D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
endmodule


module FA_20 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  XOR2D1BWP16P90 U1 ( .A1(n3), .A2(n4), .Z(sum) );
  XOR2D1BWP16P90LVT U2 ( .A1(n2), .A2(b), .Z(n4) );
  OAI22D1BWP16P90LVT U3 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  INVD1BWP16P90LVT U4 ( .I(c_in), .ZN(n3) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_21 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5, n6;

  INVD1BWP16P90LVT U1 ( .I(n5), .ZN(n1) );
  BUFFD1BWP16P90LVT U2 ( .I(n1), .Z(n2) );
  XNR2D1BWP16P90 U3 ( .A1(n2), .A2(n6), .ZN(sum) );
  XOR2D1BWP16P90LVT U4 ( .A1(n4), .A2(b), .Z(n6) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n4) );
  INVD1BWP16P90LVT U6 ( .I(c_in), .ZN(n5) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n3) );
  OAI22D1BWP16P90LVT U8 ( .A1(n6), .A2(n5), .B1(n4), .B2(n3), .ZN(c_out) );
endmodule


module FA_22 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  OAI22D2BWP16P90LVT U1 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  CKND2BWP16P90LVT U2 ( .I(c_in), .ZN(n3) );
  XOR2D1BWP16P90 U3 ( .A1(n3), .A2(n4), .Z(sum) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_23 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  INVD1BWP16P90LVT U1 ( .I(c_in), .ZN(n3) );
  XOR2D1BWP16P90LVT U2 ( .A1(n3), .A2(n4), .Z(sum) );
  OAI22D1BWP16P90LVT U3 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_24 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  XOR2D1BWP16P90LVT U1 ( .A1(n3), .A2(n4), .Z(sum) );
  XOR2D1BWP16P90LVT U2 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U3 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U4 ( .I(c_in), .ZN(n3) );
  INVD1BWP16P90LVT U5 ( .I(b), .ZN(n1) );
  OAI22D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
endmodule


module FA_25 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  XOR2D1BWP16P90 U1 ( .A1(n3), .A2(n4), .Z(sum) );
  XOR2D1BWP16P90LVT U2 ( .A1(n2), .A2(b), .Z(n4) );
  OAI22D1BWP16P90LVT U3 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  INVD1BWP16P90LVT U4 ( .I(c_in), .ZN(n3) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_26 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(n4), .ZN(n1) );
  XNR2D1BWP16P90 U2 ( .A1(n1), .A2(n5), .ZN(sum) );
  XOR2D1BWP16P90LVT U3 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U4 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U5 ( .I(c_in), .ZN(n4) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n2) );
  OAI22D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(c_out) );
endmodule


module FA_27 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  XOR2D1BWP16P90 U1 ( .A1(n3), .A2(n4), .Z(sum) );
  OAI22D1BWP16P90LVT U2 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  INVD1BWP16P90LVT U3 ( .I(c_in), .ZN(n3) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_28 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  XNR2D1BWP16P90 U1 ( .A1(c_in), .A2(n4), .ZN(sum) );
  INVD1BWP16P90LVT U2 ( .I(c_in), .ZN(n3) );
  OAI22D1BWP16P90LVT U3 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_29 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  OAI22D2BWP16P90LVT U1 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  XOR2D1BWP16P90 U2 ( .A1(n3), .A2(n4), .Z(sum) );
  INVD1BWP16P90LVT U3 ( .I(c_in), .ZN(n3) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_30 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XOR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .Z(sum) );
  CKND1BWP16P90LVT U2 ( .I(c_in), .ZN(n1) );
  CKND2BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  XOR2D1BWP16P90LVT U4 ( .A1(n3), .A2(b), .Z(n5) );
  OAI22D1BWP16P90LVT U5 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(c_out) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_31 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  OAI22D2BWP16P90LVT U1 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(c_out) );
  XNR2D1BWP16P90LVT U2 ( .A1(c_in), .A2(n4), .ZN(sum) );
  CKND2BWP16P90LVT U3 ( .I(c_in), .ZN(n3) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module adder_structure ( s_structure, co_structure, a, b, ci );
  output [31:0] s_structure;
  input [31:0] a;
  input [31:0] b;
  input ci;
  output co_structure;

  wire   [31:1] c;

  FA_0 generate_block_0__fa ( .sum(s_structure[0]), .c_out(c[1]), .a(a[0]), 
        .b(b[0]), .c_in(ci) );
  FA_31 generate_block_1__fa ( .sum(s_structure[1]), .c_out(c[2]), .a(a[1]), 
        .b(b[1]), .c_in(c[1]) );
  FA_30 generate_block_2__fa ( .sum(s_structure[2]), .c_out(c[3]), .a(a[2]), 
        .b(b[2]), .c_in(c[2]) );
  FA_29 generate_block_3__fa ( .sum(s_structure[3]), .c_out(c[4]), .a(a[3]), 
        .b(b[3]), .c_in(c[3]) );
  FA_28 generate_block_4__fa ( .sum(s_structure[4]), .c_out(c[5]), .a(a[4]), 
        .b(b[4]), .c_in(c[4]) );
  FA_27 generate_block_5__fa ( .sum(s_structure[5]), .c_out(c[6]), .a(a[5]), 
        .b(b[5]), .c_in(c[5]) );
  FA_26 generate_block_6__fa ( .sum(s_structure[6]), .c_out(c[7]), .a(a[6]), 
        .b(b[6]), .c_in(c[6]) );
  FA_25 generate_block_7__fa ( .sum(s_structure[7]), .c_out(c[8]), .a(a[7]), 
        .b(b[7]), .c_in(c[7]) );
  FA_24 generate_block_8__fa ( .sum(s_structure[8]), .c_out(c[9]), .a(a[8]), 
        .b(b[8]), .c_in(c[8]) );
  FA_23 generate_block_9__fa ( .sum(s_structure[9]), .c_out(c[10]), .a(a[9]), 
        .b(b[9]), .c_in(c[9]) );
  FA_22 generate_block_10__fa ( .sum(s_structure[10]), .c_out(c[11]), .a(a[10]), .b(b[10]), .c_in(c[10]) );
  FA_21 generate_block_11__fa ( .sum(s_structure[11]), .c_out(c[12]), .a(a[11]), .b(b[11]), .c_in(c[11]) );
  FA_20 generate_block_12__fa ( .sum(s_structure[12]), .c_out(c[13]), .a(a[12]), .b(b[12]), .c_in(c[12]) );
  FA_19 generate_block_13__fa ( .sum(s_structure[13]), .c_out(c[14]), .a(a[13]), .b(b[13]), .c_in(c[13]) );
  FA_18 generate_block_14__fa ( .sum(s_structure[14]), .c_out(c[15]), .a(a[14]), .b(b[14]), .c_in(c[14]) );
  FA_17 generate_block_15__fa ( .sum(s_structure[15]), .c_out(c[16]), .a(a[15]), .b(b[15]), .c_in(c[15]) );
  FA_16 generate_block_16__fa ( .sum(s_structure[16]), .c_out(c[17]), .a(a[16]), .b(b[16]), .c_in(c[16]) );
  FA_15 generate_block_17__fa ( .sum(s_structure[17]), .c_out(c[18]), .a(a[17]), .b(b[17]), .c_in(c[17]) );
  FA_14 generate_block_18__fa ( .sum(s_structure[18]), .c_out(c[19]), .a(a[18]), .b(b[18]), .c_in(c[18]) );
  FA_13 generate_block_19__fa ( .sum(s_structure[19]), .c_out(c[20]), .a(a[19]), .b(b[19]), .c_in(c[19]) );
  FA_12 generate_block_20__fa ( .sum(s_structure[20]), .c_out(c[21]), .a(a[20]), .b(b[20]), .c_in(c[20]) );
  FA_11 generate_block_21__fa ( .sum(s_structure[21]), .c_out(c[22]), .a(a[21]), .b(b[21]), .c_in(c[21]) );
  FA_10 generate_block_22__fa ( .sum(s_structure[22]), .c_out(c[23]), .a(a[22]), .b(b[22]), .c_in(c[22]) );
  FA_9 generate_block_23__fa ( .sum(s_structure[23]), .c_out(c[24]), .a(a[23]), 
        .b(b[23]), .c_in(c[23]) );
  FA_8 generate_block_24__fa ( .sum(s_structure[24]), .c_out(c[25]), .a(a[24]), 
        .b(b[24]), .c_in(c[24]) );
  FA_7 generate_block_25__fa ( .sum(s_structure[25]), .c_out(c[26]), .a(a[25]), 
        .b(b[25]), .c_in(c[25]) );
  FA_6 generate_block_26__fa ( .sum(s_structure[26]), .c_out(c[27]), .a(a[26]), 
        .b(b[26]), .c_in(c[26]) );
  FA_5 generate_block_27__fa ( .sum(s_structure[27]), .c_out(c[28]), .a(a[27]), 
        .b(b[27]), .c_in(c[27]) );
  FA_4 generate_block_28__fa ( .sum(s_structure[28]), .c_out(c[29]), .a(a[28]), 
        .b(b[28]), .c_in(c[28]) );
  FA_3 generate_block_29__fa ( .sum(s_structure[29]), .c_out(c[30]), .a(a[29]), 
        .b(b[29]), .c_in(c[29]) );
  FA_2 generate_block_30__fa ( .sum(s_structure[30]), .c_out(c[31]), .a(a[30]), 
        .b(b[30]), .c_in(c[30]) );
  FA_1 generate_block_31__fa ( .sum(s_structure[31]), .c_out(co_structure), 
        .a(a[31]), .b(b[31]), .c_in(c[31]) );
endmodule

