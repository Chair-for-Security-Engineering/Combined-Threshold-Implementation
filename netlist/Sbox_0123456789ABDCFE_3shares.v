/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:11:34 2023
/////////////////////////////////////////////////////////////


module Sbox_0123456789ABDCFE_3shares ( port_x0_0, port_x0_1, port_x0_2, 
        port_x1_0, port_x1_1, port_x1_2, port_x2_0, port_x2_1, port_x2_2, 
        port_x3_0, port_x3_1, port_x3_2, port_y0_0, port_y0_1, port_y0_2, 
        port_y1_0, port_y1_1, port_y1_2, port_y2_0, port_y2_1, port_y2_2, 
        port_y3_0, port_y3_1, port_y3_2, clk, reset );
  input port_x0_0, port_x0_1, port_x0_2, port_x1_0, port_x1_1, port_x1_2,
         port_x2_0, port_x2_1, port_x2_2, port_x3_0, port_x3_1, port_x3_2, clk,
         reset;
  output port_y0_0, port_y0_1, port_y0_2, port_y1_0, port_y1_1, port_y1_2,
         port_y2_0, port_y2_1, port_y2_2, port_y3_0, port_y3_1, port_y3_2;
  wire   N0, N1, N2, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15;

  DFF_X1 y3_2_reg ( .D(port_x3_0), .CK(clk), .Q(port_y3_2), .QN() );
  DFF_X1 y2_2_reg ( .D(port_x2_0), .CK(clk), .Q(port_y2_2), .QN() );
  DFF_X1 y2_1_reg ( .D(port_x2_2), .CK(clk), .Q(port_y2_1), .QN() );
  DFF_X1 y3_1_reg ( .D(port_x3_2), .CK(clk), .Q(port_y3_1), .QN() );
  DFF_X1 y3_0_reg ( .D(port_x3_1), .CK(clk), .Q(port_y3_0), .QN() );
  DFF_X1 y2_0_reg ( .D(port_x2_1), .CK(clk), .Q(port_y2_0), .QN() );
  DFF_X1 y0_0_reg ( .D(N0), .CK(clk), .Q(port_y0_0), .QN() );
  DFF_X1 y0_1_reg ( .D(N1), .CK(clk), .Q(port_y0_1), .QN() );
  DFF_X1 y0_2_reg ( .D(N2), .CK(clk), .Q(port_y0_2), .QN() );
  DFF_X1 y1_0_reg ( .D(port_x1_1), .CK(clk), .Q(port_y1_0), .QN() );
  DFF_X1 y1_1_reg ( .D(port_x1_2), .CK(clk), .Q(port_y1_1), .QN() );
  DFF_X1 y1_2_reg ( .D(port_x1_0), .CK(clk), .Q(port_y1_2), .QN() );
  XOR2_X1 U21 ( .A(n1), .B(n2), .Z(N2) );
  XOR2_X1 U22 ( .A(n5), .B(port_x0_0), .Z(n1) );
  XOR2_X1 U23 ( .A(n3), .B(n4), .Z(n2) );
  NAND2_X1 U24 ( .A1(port_x3_0), .A2(port_x2_0), .ZN(n5) );
  XOR2_X1 U25 ( .A(n6), .B(n7), .Z(N1) );
  XOR2_X1 U26 ( .A(n10), .B(port_x0_2), .Z(n6) );
  XOR2_X1 U27 ( .A(n8), .B(n9), .Z(n7) );
  NAND2_X1 U28 ( .A1(port_x3_2), .A2(port_x2_0), .ZN(n10) );
  XOR2_X1 U29 ( .A(n11), .B(n12), .Z(N0) );
  XOR2_X1 U30 ( .A(n15), .B(port_x0_1), .Z(n11) );
  XOR2_X1 U31 ( .A(n13), .B(n14), .Z(n12) );
  NAND2_X1 U32 ( .A1(port_x2_1), .A2(port_x3_1), .ZN(n15) );
  NAND2_X1 U33 ( .A1(port_x2_1), .A2(port_x3_0), .ZN(n3) );
  NAND2_X1 U34 ( .A1(port_x2_2), .A2(port_x3_2), .ZN(n8) );
  NAND2_X1 U35 ( .A1(port_x2_2), .A2(port_x3_1), .ZN(n13) );
  AND2_X1 U36 ( .A1(port_x2_0), .A2(port_x3_1), .ZN(n4) );
  AND2_X1 U37 ( .A1(port_x3_0), .A2(port_x2_2), .ZN(n9) );
  AND2_X1 U38 ( .A1(port_x2_1), .A2(port_x3_2), .ZN(n14) );
endmodule

