/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:14:10 2023
/////////////////////////////////////////////////////////////


module Sbox_0123456789BAEFDC_3shares ( port_x0_0, port_x0_1, port_x0_2, 
        port_x1_0, port_x1_1, port_x1_2, port_x2_0, port_x2_1, port_x2_2, 
        port_x3_0, port_x3_1, port_x3_2, port_y0_0, port_y0_1, port_y0_2, 
        port_y1_0, port_y1_1, port_y1_2, port_y2_0, port_y2_1, port_y2_2, 
        port_y3_0, port_y3_1, port_y3_2, clk, reset );
  input port_x0_0, port_x0_1, port_x0_2, port_x1_0, port_x1_1, port_x1_2,
         port_x2_0, port_x2_1, port_x2_2, port_x3_0, port_x3_1, port_x3_2, clk,
         reset;
  output port_y0_0, port_y0_1, port_y0_2, port_y1_0, port_y1_1, port_y1_2,
         port_y2_0, port_y2_1, port_y2_2, port_y3_0, port_y3_1, port_y3_2;
  wire   N0, N1, N2, N3, N4, N5, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30;

  DFF_X1 y3_2_reg ( .D(port_x3_0), .CK(clk), .Q(port_y3_2), .QN() );
  DFF_X1 y1_2_reg ( .D(N5), .CK(clk), .Q(port_y1_2), .QN() );
  DFF_X1 y1_1_reg ( .D(N4), .CK(clk), .Q(port_y1_1), .QN() );
  DFF_X1 y3_1_reg ( .D(port_x3_2), .CK(clk), .Q(port_y3_1), .QN() );
  DFF_X1 y3_0_reg ( .D(port_x3_1), .CK(clk), .Q(port_y3_0), .QN() );
  DFF_X1 y1_0_reg ( .D(N3), .CK(clk), .Q(port_y1_0), .QN() );
  DFF_X1 y2_2_reg ( .D(port_x2_0), .CK(clk), .Q(port_y2_2), .QN() );
  DFF_X1 y2_1_reg ( .D(port_x2_2), .CK(clk), .Q(port_y2_1), .QN() );
  DFF_X1 y2_0_reg ( .D(port_x2_1), .CK(clk), .Q(port_y2_0), .QN() );
  DFF_X1 y0_0_reg ( .D(N0), .CK(clk), .Q(port_y0_0), .QN() );
  DFF_X1 y0_1_reg ( .D(N1), .CK(clk), .Q(port_y0_1), .QN() );
  DFF_X1 y0_2_reg ( .D(N2), .CK(clk), .Q(port_y0_2), .QN() );
  XOR2_X1 U39 ( .A(n11), .B(n12), .Z(N3) );
  XNOR2_X1 U40 ( .A(port_x1_1), .B(n15), .ZN(n11) );
  XOR2_X1 U41 ( .A(n13), .B(n14), .Z(n12) );
  NAND2_X1 U42 ( .A1(port_x2_1), .A2(port_x3_1), .ZN(n15) );
  XOR2_X1 U43 ( .A(n6), .B(n7), .Z(N4) );
  XNOR2_X1 U44 ( .A(port_x1_2), .B(n10), .ZN(n6) );
  XOR2_X1 U45 ( .A(n8), .B(n9), .Z(n7) );
  NAND2_X1 U46 ( .A1(port_x3_2), .A2(port_x2_0), .ZN(n10) );
  XOR2_X1 U47 ( .A(n1), .B(n2), .Z(N5) );
  XNOR2_X1 U48 ( .A(port_x1_0), .B(n5), .ZN(n1) );
  XOR2_X1 U49 ( .A(n3), .B(n4), .Z(n2) );
  NAND2_X1 U50 ( .A1(port_x3_0), .A2(port_x2_0), .ZN(n5) );
  XOR2_X1 U51 ( .A(n16), .B(n17), .Z(N2) );
  XOR2_X1 U52 ( .A(n20), .B(port_x0_0), .Z(n16) );
  XOR2_X1 U53 ( .A(n18), .B(n19), .Z(n17) );
  NAND2_X1 U54 ( .A1(port_x1_0), .A2(port_x3_0), .ZN(n20) );
  XOR2_X1 U55 ( .A(n21), .B(n22), .Z(N1) );
  XOR2_X1 U56 ( .A(n25), .B(port_x0_2), .Z(n21) );
  XOR2_X1 U57 ( .A(n23), .B(n24), .Z(n22) );
  NAND2_X1 U58 ( .A1(port_x3_2), .A2(port_x1_0), .ZN(n25) );
  XOR2_X1 U59 ( .A(n26), .B(n27), .Z(N0) );
  XOR2_X1 U60 ( .A(n30), .B(port_x0_1), .Z(n26) );
  XOR2_X1 U61 ( .A(n28), .B(n29), .Z(n27) );
  NAND2_X1 U62 ( .A1(port_x1_1), .A2(port_x3_1), .ZN(n30) );
  NAND2_X1 U63 ( .A1(port_x2_2), .A2(port_x3_1), .ZN(n14) );
  NAND2_X1 U64 ( .A1(port_x2_2), .A2(port_x3_2), .ZN(n9) );
  NAND2_X1 U65 ( .A1(port_x2_1), .A2(port_x3_0), .ZN(n4) );
  NAND2_X1 U66 ( .A1(port_x3_1), .A2(port_x1_0), .ZN(n18) );
  NAND2_X1 U67 ( .A1(port_x1_2), .A2(port_x3_2), .ZN(n23) );
  NAND2_X1 U68 ( .A1(port_x1_2), .A2(port_x3_1), .ZN(n28) );
  NAND2_X1 U69 ( .A1(port_x3_2), .A2(port_x2_1), .ZN(n13) );
  NAND2_X1 U70 ( .A1(port_x2_2), .A2(port_x3_0), .ZN(n8) );
  NAND2_X1 U71 ( .A1(port_x3_1), .A2(port_x2_0), .ZN(n3) );
  AND2_X1 U72 ( .A1(port_x3_0), .A2(port_x1_1), .ZN(n19) );
  AND2_X1 U73 ( .A1(port_x3_0), .A2(port_x1_2), .ZN(n24) );
  AND2_X1 U74 ( .A1(port_x3_2), .A2(port_x1_1), .ZN(n29) );
endmodule

