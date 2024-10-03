/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Oct  3 15:30:19 2024
/////////////////////////////////////////////////////////////


module FA_0 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1;

  MAOI222D4BWP16P90LVT U1 ( .A(a), .B(b), .C(c_in), .ZN(n1) );
  CKND2BWP16P90LVT U2 ( .I(n1), .ZN(c_out) );
  XOR3D1BWP16P90LVT U3 ( .A1(b), .A2(a), .A3(c_in), .Z(sum) );
endmodule


module D_FF_0 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module FA_1 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  ND2D1BWP16P90 U1 ( .A1(c_in), .A2(n5), .ZN(n1) );
  OAI21D1BWP16P90LVT U2 ( .A1(c_in), .A2(n5), .B(n1), .ZN(sum) );
  INVD1BWP16P90 U3 ( .I(c_in), .ZN(n4) );
  XOR2D1BWP16P90LVT U4 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n2) );
  OAI22D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(c_out) );
endmodule


module FA_2 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  INVD4BWP16P90LVT U1 ( .I(c_in), .ZN(n7) );
  INVD1BWP16P90 U2 ( .I(n7), .ZN(n1) );
  ND2D1BWP16P90 U3 ( .A1(n7), .A2(n2), .ZN(n4) );
  ND2D1BWP16P90 U4 ( .A1(n1), .A2(n8), .ZN(n3) );
  ND2D1BWP16P90LVT U5 ( .A1(n3), .A2(n4), .ZN(sum) );
  CKND1BWP16P90LVT U6 ( .I(n8), .ZN(n2) );
  OAI22D4BWP16P90LVT U7 ( .A1(n7), .A2(n8), .B1(n6), .B2(n5), .ZN(c_out) );
  XOR2D1BWP16P90LVT U8 ( .A1(n6), .A2(b), .Z(n8) );
  INVD1BWP16P90LVT U9 ( .I(a), .ZN(n6) );
  INVD1BWP16P90LVT U10 ( .I(b), .ZN(n5) );
endmodule


module FA_3 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  XNR2D2BWP16P90 U1 ( .A1(n4), .A2(c_in), .ZN(sum) );
  INVD4BWP16P90LVT U2 ( .I(c_in), .ZN(n3) );
  OAI22D4BWP16P90LVT U3 ( .A1(n3), .A2(n4), .B1(n2), .B2(n1), .ZN(c_out) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_4 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  XNR2D1BWP16P90 U1 ( .A1(n4), .A2(c_in), .ZN(sum) );
  INVD4BWP16P90LVT U2 ( .I(c_in), .ZN(n3) );
  OAI22D4BWP16P90LVT U3 ( .A1(n3), .A2(n4), .B1(n2), .B2(n1), .ZN(c_out) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_5 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n5), .A2(n1), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_6 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5, n6;

  XNR2D1BWP16P90LVT U1 ( .A1(n3), .A2(n6), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(n2), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n2) );
  OAI22D4BWP16P90LVT U4 ( .A1(n2), .A2(n6), .B1(n5), .B2(n4), .ZN(c_out) );
  INVD1BWP16P90 U5 ( .I(n1), .ZN(n3) );
  XOR2D1BWP16P90LVT U6 ( .A1(n5), .A2(b), .Z(n6) );
  INVD1BWP16P90LVT U7 ( .I(a), .ZN(n5) );
  INVD1BWP16P90LVT U8 ( .I(b), .ZN(n4) );
endmodule


module FA_7 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_8 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_9 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_10 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_11 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XOR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .Z(sum) );
  DEL025D1BWP16P90 U2 ( .I(n4), .Z(n1) );
  OAI22D4BWP16P90LVT U3 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  CKND2BWP16P90LVT U4 ( .I(c_in), .ZN(n4) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_12 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XOR2D1BWP20P90 U1 ( .A1(n2), .A2(n5), .Z(sum) );
  MOAI22D2BWP16P90LVT U2 ( .A1(n4), .A2(n5), .B1(a), .B2(b), .ZN(c_out) );
  DEL025D1BWP16P90 U3 ( .I(c_in), .Z(n1) );
  CKND2BWP16P90LVT U4 ( .I(c_in), .ZN(n4) );
  INVD1BWP16P90 U5 ( .I(n1), .ZN(n2) );
  XOR2D1BWP16P90LVT U6 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U7 ( .I(a), .ZN(n3) );
endmodule


module FA_13 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  XOR2D1BWP16P90 U1 ( .A1(n4), .A2(n3), .Z(sum) );
  INVD4BWP16P90LVT U2 ( .I(c_in), .ZN(n3) );
  OAI22D4BWP16P90LVT U3 ( .A1(n3), .A2(n4), .B1(n2), .B2(n1), .ZN(c_out) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_14 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_15 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5, n6;

  DEL025D1BWP16P90 U1 ( .I(n5), .Z(n1) );
  XNR2D1BWP16P90LVT U2 ( .A1(n2), .A2(n6), .ZN(sum) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n5) );
  OAI22D4BWP16P90LVT U4 ( .A1(n5), .A2(n6), .B1(n4), .B2(n3), .ZN(c_out) );
  INVD1BWP16P90 U5 ( .I(n1), .ZN(n2) );
  XOR2D1BWP16P90LVT U6 ( .A1(n4), .A2(b), .Z(n6) );
  INVD1BWP16P90LVT U7 ( .I(a), .ZN(n4) );
  INVD1BWP16P90LVT U8 ( .I(b), .ZN(n3) );
endmodule


module FA_16 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_17 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_18 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  INVD1BWP16P90 U2 ( .I(n4), .ZN(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_19 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  INVD4BWP16P90LVT U1 ( .I(c_in), .ZN(n3) );
  XNR2D1BWP16P90LVT U2 ( .A1(n1), .A2(n4), .ZN(sum) );
  INVD1BWP16P90 U3 ( .I(n3), .ZN(n1) );
  MOAI22D4BWP16P90LVT U4 ( .A1(n3), .A2(n4), .B1(a), .B2(b), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n2) );
endmodule


module FA_20 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  ND2D1BWP16P90LVT U1 ( .A1(a), .A2(b), .ZN(n3) );
  XNR2D1BWP16P90LVT U2 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U3 ( .I(c_in), .Z(n1) );
  IND2D4BWP16P90LVT U4 ( .A1(n5), .B1(c_in), .ZN(n2) );
  CKND2D4BWP16P90LVT U5 ( .A1(n2), .A2(n3), .ZN(c_out) );
  XOR2D1BWP16P90LVT U6 ( .A1(n4), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U7 ( .I(a), .ZN(n4) );
endmodule


module FA_21 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5, n6;

  DEL025D1BWP16P90 U1 ( .I(n5), .Z(n1) );
  XNR2D1BWP16P90LVT U2 ( .A1(n2), .A2(n6), .ZN(sum) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n5) );
  OAI22D4BWP16P90LVT U4 ( .A1(n5), .A2(n6), .B1(n4), .B2(n3), .ZN(c_out) );
  INVD1BWP16P90 U5 ( .I(n1), .ZN(n2) );
  XOR2D1BWP16P90LVT U6 ( .A1(n4), .A2(b), .Z(n6) );
  INVD1BWP16P90LVT U7 ( .I(a), .ZN(n4) );
  INVD1BWP16P90LVT U8 ( .I(b), .ZN(n3) );
endmodule


module FA_22 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_23 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_24 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_25 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_26 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_27 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_28 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  DEL025D1BWP16P90 U2 ( .I(c_in), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(c_in), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_29 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(sum) );
  INVD1BWP16P90 U2 ( .I(n4), .ZN(n1) );
  OAI22D4BWP16P90LVT U3 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(c_out) );
  CKND2BWP16P90LVT U4 ( .I(c_in), .ZN(n4) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_30 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3, n4;

  CKND1BWP16P90LVT U1 ( .I(a), .ZN(n2) );
  XNR2D1BWP16P90LVT U2 ( .A1(n1), .A2(n4), .ZN(sum) );
  MOAI22D2BWP16P90LVT U3 ( .A1(n3), .A2(n4), .B1(a), .B2(b), .ZN(c_out) );
  DEL025D1BWP16P90 U4 ( .I(c_in), .Z(n1) );
  CKND2BWP16P90LVT U5 ( .I(c_in), .ZN(n3) );
  XOR2D1BWP16P90LVT U6 ( .A1(n2), .A2(b), .Z(n4) );
endmodule


module FA_31 ( sum, c_out, a, b, c_in );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2, n3;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n3), .ZN(sum) );
  INVD2BWP16P90LVT U2 ( .I(c_in), .ZN(n2) );
  XNR2D8BWP16P90LVT U3 ( .A1(a), .A2(b), .ZN(n3) );
  MOAI22D4BWP16P90LVT U4 ( .A1(n2), .A2(n3), .B1(a), .B2(b), .ZN(c_out) );
  INVD1BWP16P90 U5 ( .I(n2), .ZN(n1) );
endmodule


module D_FF_1 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_2 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_3 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_4 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_5 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_6 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_7 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_8 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_9 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_10 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_11 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_12 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_13 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_14 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_15 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_16 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_17 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_18 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_19 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_20 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_21 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_22 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_23 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_24 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_25 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_26 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_27 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_28 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_29 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_30 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_31 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module D_FF_32 ( q, d, clk );
  input d, clk;
  output q;


  DFQD2BWP16P90LVT q_reg ( .D(d), .CP(clk), .Q(q) );
endmodule


module adder_structure_reg ( s_structure_reg, co_structure_reg, a, b, ci, clk
 );
  output [31:0] s_structure_reg;
  input [31:0] a;
  input [31:0] b;
  input ci, clk;
  output co_structure_reg;

  wire   [32:1] c;
  wire   [31:0] s_temp;

  FA_0 generate_block_0__fa ( .sum(s_temp[0]), .c_out(c[1]), .a(a[0]), .b(b[0]), .c_in(ci) );
  FA_31 generate_block_1__fa ( .sum(s_temp[1]), .c_out(c[2]), .a(a[1]), .b(
        b[1]), .c_in(c[1]) );
  FA_30 generate_block_2__fa ( .sum(s_temp[2]), .c_out(c[3]), .a(a[2]), .b(
        b[2]), .c_in(c[2]) );
  FA_29 generate_block_3__fa ( .sum(s_temp[3]), .c_out(c[4]), .a(a[3]), .b(
        b[3]), .c_in(c[3]) );
  FA_28 generate_block_4__fa ( .sum(s_temp[4]), .c_out(c[5]), .a(a[4]), .b(
        b[4]), .c_in(c[4]) );
  FA_27 generate_block_5__fa ( .sum(s_temp[5]), .c_out(c[6]), .a(a[5]), .b(
        b[5]), .c_in(c[5]) );
  FA_26 generate_block_6__fa ( .sum(s_temp[6]), .c_out(c[7]), .a(a[6]), .b(
        b[6]), .c_in(c[6]) );
  FA_25 generate_block_7__fa ( .sum(s_temp[7]), .c_out(c[8]), .a(a[7]), .b(
        b[7]), .c_in(c[7]) );
  FA_24 generate_block_8__fa ( .sum(s_temp[8]), .c_out(c[9]), .a(a[8]), .b(
        b[8]), .c_in(c[8]) );
  FA_23 generate_block_9__fa ( .sum(s_temp[9]), .c_out(c[10]), .a(a[9]), .b(
        b[9]), .c_in(c[9]) );
  FA_22 generate_block_10__fa ( .sum(s_temp[10]), .c_out(c[11]), .a(a[10]), 
        .b(b[10]), .c_in(c[10]) );
  FA_21 generate_block_11__fa ( .sum(s_temp[11]), .c_out(c[12]), .a(a[11]), 
        .b(b[11]), .c_in(c[11]) );
  FA_20 generate_block_12__fa ( .sum(s_temp[12]), .c_out(c[13]), .a(a[12]), 
        .b(b[12]), .c_in(c[12]) );
  FA_19 generate_block_13__fa ( .sum(s_temp[13]), .c_out(c[14]), .a(a[13]), 
        .b(b[13]), .c_in(c[13]) );
  FA_18 generate_block_14__fa ( .sum(s_temp[14]), .c_out(c[15]), .a(a[14]), 
        .b(b[14]), .c_in(c[14]) );
  FA_17 generate_block_15__fa ( .sum(s_temp[15]), .c_out(c[16]), .a(a[15]), 
        .b(b[15]), .c_in(c[15]) );
  FA_16 generate_block_16__fa ( .sum(s_temp[16]), .c_out(c[17]), .a(a[16]), 
        .b(b[16]), .c_in(c[16]) );
  FA_15 generate_block_17__fa ( .sum(s_temp[17]), .c_out(c[18]), .a(a[17]), 
        .b(b[17]), .c_in(c[17]) );
  FA_14 generate_block_18__fa ( .sum(s_temp[18]), .c_out(c[19]), .a(a[18]), 
        .b(b[18]), .c_in(c[18]) );
  FA_13 generate_block_19__fa ( .sum(s_temp[19]), .c_out(c[20]), .a(a[19]), 
        .b(b[19]), .c_in(c[19]) );
  FA_12 generate_block_20__fa ( .sum(s_temp[20]), .c_out(c[21]), .a(a[20]), 
        .b(b[20]), .c_in(c[20]) );
  FA_11 generate_block_21__fa ( .sum(s_temp[21]), .c_out(c[22]), .a(a[21]), 
        .b(b[21]), .c_in(c[21]) );
  FA_10 generate_block_22__fa ( .sum(s_temp[22]), .c_out(c[23]), .a(a[22]), 
        .b(b[22]), .c_in(c[22]) );
  FA_9 generate_block_23__fa ( .sum(s_temp[23]), .c_out(c[24]), .a(a[23]), .b(
        b[23]), .c_in(c[23]) );
  FA_8 generate_block_24__fa ( .sum(s_temp[24]), .c_out(c[25]), .a(a[24]), .b(
        b[24]), .c_in(c[24]) );
  FA_7 generate_block_25__fa ( .sum(s_temp[25]), .c_out(c[26]), .a(a[25]), .b(
        b[25]), .c_in(c[25]) );
  FA_6 generate_block_26__fa ( .sum(s_temp[26]), .c_out(c[27]), .a(a[26]), .b(
        b[26]), .c_in(c[26]) );
  FA_5 generate_block_27__fa ( .sum(s_temp[27]), .c_out(c[28]), .a(a[27]), .b(
        b[27]), .c_in(c[27]) );
  FA_4 generate_block_28__fa ( .sum(s_temp[28]), .c_out(c[29]), .a(a[28]), .b(
        b[28]), .c_in(c[28]) );
  FA_3 generate_block_29__fa ( .sum(s_temp[29]), .c_out(c[30]), .a(a[29]), .b(
        b[29]), .c_in(c[29]) );
  FA_2 generate_block_30__fa ( .sum(s_temp[30]), .c_out(c[31]), .a(a[30]), .b(
        b[30]), .c_in(c[30]) );
  FA_1 generate_block_31__fa ( .sum(s_temp[31]), .c_out(c[32]), .a(a[31]), .b(
        b[31]), .c_in(c[31]) );
  D_FF_0 generate_block2_0__ff_sum ( .q(s_structure_reg[0]), .d(s_temp[0]), 
        .clk(clk) );
  D_FF_32 generate_block2_1__ff_sum ( .q(s_structure_reg[1]), .d(s_temp[1]), 
        .clk(clk) );
  D_FF_31 generate_block2_2__ff_sum ( .q(s_structure_reg[2]), .d(s_temp[2]), 
        .clk(clk) );
  D_FF_30 generate_block2_3__ff_sum ( .q(s_structure_reg[3]), .d(s_temp[3]), 
        .clk(clk) );
  D_FF_29 generate_block2_4__ff_sum ( .q(s_structure_reg[4]), .d(s_temp[4]), 
        .clk(clk) );
  D_FF_28 generate_block2_5__ff_sum ( .q(s_structure_reg[5]), .d(s_temp[5]), 
        .clk(clk) );
  D_FF_27 generate_block2_6__ff_sum ( .q(s_structure_reg[6]), .d(s_temp[6]), 
        .clk(clk) );
  D_FF_26 generate_block2_7__ff_sum ( .q(s_structure_reg[7]), .d(s_temp[7]), 
        .clk(clk) );
  D_FF_25 generate_block2_8__ff_sum ( .q(s_structure_reg[8]), .d(s_temp[8]), 
        .clk(clk) );
  D_FF_24 generate_block2_9__ff_sum ( .q(s_structure_reg[9]), .d(s_temp[9]), 
        .clk(clk) );
  D_FF_23 generate_block2_10__ff_sum ( .q(s_structure_reg[10]), .d(s_temp[10]), 
        .clk(clk) );
  D_FF_22 generate_block2_11__ff_sum ( .q(s_structure_reg[11]), .d(s_temp[11]), 
        .clk(clk) );
  D_FF_21 generate_block2_12__ff_sum ( .q(s_structure_reg[12]), .d(s_temp[12]), 
        .clk(clk) );
  D_FF_20 generate_block2_13__ff_sum ( .q(s_structure_reg[13]), .d(s_temp[13]), 
        .clk(clk) );
  D_FF_19 generate_block2_14__ff_sum ( .q(s_structure_reg[14]), .d(s_temp[14]), 
        .clk(clk) );
  D_FF_18 generate_block2_15__ff_sum ( .q(s_structure_reg[15]), .d(s_temp[15]), 
        .clk(clk) );
  D_FF_17 generate_block2_16__ff_sum ( .q(s_structure_reg[16]), .d(s_temp[16]), 
        .clk(clk) );
  D_FF_16 generate_block2_17__ff_sum ( .q(s_structure_reg[17]), .d(s_temp[17]), 
        .clk(clk) );
  D_FF_15 generate_block2_18__ff_sum ( .q(s_structure_reg[18]), .d(s_temp[18]), 
        .clk(clk) );
  D_FF_14 generate_block2_19__ff_sum ( .q(s_structure_reg[19]), .d(s_temp[19]), 
        .clk(clk) );
  D_FF_13 generate_block2_20__ff_sum ( .q(s_structure_reg[20]), .d(s_temp[20]), 
        .clk(clk) );
  D_FF_12 generate_block2_21__ff_sum ( .q(s_structure_reg[21]), .d(s_temp[21]), 
        .clk(clk) );
  D_FF_11 generate_block2_22__ff_sum ( .q(s_structure_reg[22]), .d(s_temp[22]), 
        .clk(clk) );
  D_FF_10 generate_block2_23__ff_sum ( .q(s_structure_reg[23]), .d(s_temp[23]), 
        .clk(clk) );
  D_FF_9 generate_block2_24__ff_sum ( .q(s_structure_reg[24]), .d(s_temp[24]), 
        .clk(clk) );
  D_FF_8 generate_block2_25__ff_sum ( .q(s_structure_reg[25]), .d(s_temp[25]), 
        .clk(clk) );
  D_FF_7 generate_block2_26__ff_sum ( .q(s_structure_reg[26]), .d(s_temp[26]), 
        .clk(clk) );
  D_FF_6 generate_block2_27__ff_sum ( .q(s_structure_reg[27]), .d(s_temp[27]), 
        .clk(clk) );
  D_FF_5 generate_block2_28__ff_sum ( .q(s_structure_reg[28]), .d(s_temp[28]), 
        .clk(clk) );
  D_FF_4 generate_block2_29__ff_sum ( .q(s_structure_reg[29]), .d(s_temp[29]), 
        .clk(clk) );
  D_FF_3 generate_block2_30__ff_sum ( .q(s_structure_reg[30]), .d(s_temp[30]), 
        .clk(clk) );
  D_FF_2 generate_block2_31__ff_sum ( .q(s_structure_reg[31]), .d(s_temp[31]), 
        .clk(clk) );
  D_FF_1 ff_co ( .q(co_structure_reg), .d(c[32]), .clk(clk) );
endmodule

