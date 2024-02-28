/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:12:13 2023
/////////////////////////////////////////////////////////////


module Sbox_0123456789CDEFAB_3shares ( port_x0_0, port_x0_1, port_x0_2, 
        port_x1_0, port_x1_1, port_x1_2, port_x2_0, port_x2_1, port_x2_2, 
        port_x3_0, port_x3_1, port_x3_2, port_y0_0, port_y0_1, port_y0_2, 
        port_y1_0, port_y1_1, port_y1_2, port_y2_0, port_y2_1, port_y2_2, 
        port_y3_0, port_y3_1, port_y3_2, clk, reset );
  input port_x0_0, port_x0_1, port_x0_2, port_x1_0, port_x1_1, port_x1_2,
         port_x2_0, port_x2_1, port_x2_2, port_x3_0, port_x3_1, port_x3_2, clk,
         reset;
  output port_y0_0, port_y0_1, port_y0_2, port_y1_0, port_y1_1, port_y1_2,
         port_y2_0, port_y2_1, port_y2_2, port_y3_0, port_y3_1, port_y3_2;
  wire   N9, N10, N11, N12, N13, N14, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36;

  DFF_X1 y3_2_reg ( .D(port_x3_0), .CK(clk), .Q(port_y3_2), .QN() );
  DFF_X1 y0_0_reg ( .D(port_x0_1), .CK(clk), .Q(port_y0_0), .QN() );
  DFF_X1 y1_2_reg ( .D(N11), .CK(clk), .Q(port_y1_2), .QN() );
  DFF_X1 y1_1_reg ( .D(N10), .CK(clk), .Q(port_y1_1), .QN() );
  DFF_X1 y2_0_reg ( .D(N12), .CK(clk), .Q(port_y2_0), .QN() );
  DFF_X1 y3_1_reg ( .D(port_x3_2), .CK(clk), .Q(port_y3_1), .QN() );
  DFF_X1 y2_1_reg ( .D(N13), .CK(clk), .Q(port_y2_1), .QN() );
  DFF_X1 y2_2_reg ( .D(N14), .CK(clk), .Q(port_y2_2), .QN() );
  DFF_X1 y0_1_reg ( .D(port_x0_2), .CK(clk), .Q(port_y0_1), .QN() );
  DFF_X1 y3_0_reg ( .D(port_x3_1), .CK(clk), .Q(port_y3_0), .QN() );
  DFF_X1 y0_2_reg ( .D(port_x0_0), .CK(clk), .Q(port_y0_2), .QN() );
  DFF_X1 y1_0_reg ( .D(N9), .CK(clk), .Q(port_y1_0), .QN() );
  XOR2_X1 U45 ( .A(n17), .B(n18), .Z(n9) );
  NAND2_X1 U46 ( .A1(port_x3_2), .A2(port_x1_1), .ZN(n17) );
  NAND2_X1 U47 ( .A1(port_x1_2), .A2(port_x3_1), .ZN(n18) );
  XOR2_X1 U48 ( .A(n26), .B(n27), .Z(n11) );
  NAND2_X1 U49 ( .A1(port_x1_0), .A2(port_x3_1), .ZN(n26) );
  NAND2_X1 U50 ( .A1(port_x3_0), .A2(port_x1_1), .ZN(n27) );
  XOR2_X1 U51 ( .A(n35), .B(n36), .Z(n14) );
  NAND2_X1 U52 ( .A1(port_x3_0), .A2(port_x1_2), .ZN(n35) );
  NAND2_X1 U53 ( .A1(port_x1_2), .A2(port_x3_2), .ZN(n36) );
  XOR2_X1 U54 ( .A(n5), .B(n6), .Z(n4) );
  NAND2_X1 U55 ( .A1(port_x2_1), .A2(port_x3_2), .ZN(n5) );
  NAND2_X1 U56 ( .A1(port_x2_2), .A2(port_x3_1), .ZN(n6) );
  XOR2_X1 U57 ( .A(n32), .B(n33), .Z(n31) );
  NAND2_X1 U58 ( .A1(port_x2_0), .A2(port_x3_2), .ZN(n32) );
  NAND2_X1 U59 ( .A1(port_x3_0), .A2(port_x2_2), .ZN(n33) );
  XOR2_X1 U60 ( .A(n23), .B(n24), .Z(n22) );
  NAND2_X1 U61 ( .A1(port_x2_0), .A2(port_x3_1), .ZN(n23) );
  NAND2_X1 U62 ( .A1(port_x3_0), .A2(port_x2_1), .ZN(n24) );
  NAND2_X1 U63 ( .A1(port_x1_0), .A2(port_x3_2), .ZN(n15) );
  NAND2_X1 U64 ( .A1(port_x3_1), .A2(port_x1_1), .ZN(n7) );
  NAND2_X1 U65 ( .A1(port_x3_0), .A2(port_x1_0), .ZN(n12) );
  XOR2_X1 U66 ( .A(n10), .B(n11), .Z(N14) );
  XNOR2_X1 U67 ( .A(port_x2_0), .B(n12), .ZN(n10) );
  XOR2_X1 U68 ( .A(n13), .B(n14), .Z(N13) );
  XNOR2_X1 U69 ( .A(port_x2_2), .B(n15), .ZN(n13) );
  XOR2_X1 U70 ( .A(n16), .B(n9), .Z(N12) );
  XNOR2_X1 U71 ( .A(port_x2_1), .B(n7), .ZN(n16) );
  XOR2_X1 U72 ( .A(n1), .B(n2), .Z(N9) );
  XOR2_X1 U73 ( .A(n8), .B(n9), .Z(n1) );
  XOR2_X1 U74 ( .A(n3), .B(n4), .Z(n2) );
  NAND2_X1 U75 ( .A1(port_x2_1), .A2(port_x3_1), .ZN(n8) );
  XOR2_X1 U76 ( .A(n28), .B(n29), .Z(N10) );
  XOR2_X1 U77 ( .A(n34), .B(n14), .Z(n28) );
  XOR2_X1 U78 ( .A(n30), .B(n31), .Z(n29) );
  XOR2_X1 U79 ( .A(n15), .B(port_x1_2), .Z(n34) );
  XOR2_X1 U80 ( .A(n19), .B(n20), .Z(N11) );
  XOR2_X1 U81 ( .A(n25), .B(n11), .Z(n19) );
  XOR2_X1 U82 ( .A(n21), .B(n22), .Z(n20) );
  NAND2_X1 U83 ( .A1(port_x2_0), .A2(port_x3_0), .ZN(n25) );
  NAND2_X1 U84 ( .A1(port_x1_1), .A2(n7), .ZN(n3) );
  NAND2_X1 U85 ( .A1(port_x1_0), .A2(n12), .ZN(n21) );
  NAND2_X1 U86 ( .A1(port_x2_2), .A2(port_x3_2), .ZN(n30) );
endmodule

