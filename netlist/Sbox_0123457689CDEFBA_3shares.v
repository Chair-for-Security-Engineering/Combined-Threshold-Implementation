/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:13:32 2023
/////////////////////////////////////////////////////////////


module Sbox_0123457689CDEFBA_3shares ( port_x0_0, port_x0_1, port_x0_2, 
        port_x1_0, port_x1_1, port_x1_2, port_x2_0, port_x2_1, port_x2_2, 
        port_x3_0, port_x3_1, port_x3_2, port_y0_0, port_y0_1, port_y0_2, 
        port_y1_0, port_y1_1, port_y1_2, port_y2_0, port_y2_1, port_y2_2, 
        port_y3_0, port_y3_1, port_y3_2, clk, reset );
  input port_x0_0, port_x0_1, port_x0_2, port_x1_0, port_x1_1, port_x1_2,
         port_x2_0, port_x2_1, port_x2_2, port_x3_0, port_x3_1, port_x3_2, clk,
         reset;
  output port_y0_0, port_y0_1, port_y0_2, port_y1_0, port_y1_1, port_y1_2,
         port_y2_0, port_y2_1, port_y2_2, port_y3_0, port_y3_1, port_y3_2;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N17, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51;

  DFF_X1 y3_2_reg ( .D(port_x3_0), .CK(clk), .Q(port_y3_2), .QN() );
  DFF_X1 y1_2_reg ( .D(N14), .CK(clk), .Q(port_y1_2), .QN() );
  DFF_X1 y0_1_reg ( .D(N10), .CK(clk), .Q(port_y0_1), .QN() );
  DFF_X1 y3_1_reg ( .D(port_x3_2), .CK(clk), .Q(port_y3_1), .QN() );
  DFF_X1 y3_0_reg ( .D(port_x3_1), .CK(clk), .Q(port_y3_0), .QN() );
  DFF_X1 y0_0_reg ( .D(N9), .CK(clk), .Q(port_y0_0), .QN() );
  DFF_X1 y1_1_reg ( .D(N13), .CK(clk), .Q(port_y1_1), .QN() );
  DFF_X1 y2_0_reg ( .D(N15), .CK(clk), .Q(port_y2_0), .QN() );
  DFF_X1 y1_0_reg ( .D(N12), .CK(clk), .Q(port_y1_0), .QN() );
  DFF_X1 y2_1_reg ( .D(N16), .CK(clk), .Q(port_y2_1), .QN() );
  DFF_X1 y2_2_reg ( .D(N17), .CK(clk), .Q(port_y2_2), .QN() );
  DFF_X1 y0_2_reg ( .D(N11), .CK(clk), .Q(port_y0_2), .QN() );
  XOR2_X1 U63 ( .A(n40), .B(n41), .Z(n13) );
  NAND2_X1 U64 ( .A1(port_x3_2), .A2(port_x1_1), .ZN(n40) );
  NAND2_X1 U65 ( .A1(port_x3_1), .A2(port_x1_2), .ZN(n41) );
  XOR2_X1 U66 ( .A(n22), .B(n23), .Z(n7) );
  NAND2_X1 U67 ( .A1(port_x3_1), .A2(port_x1_0), .ZN(n22) );
  NAND2_X1 U68 ( .A1(port_x3_0), .A2(port_x1_1), .ZN(n23) );
  XOR2_X1 U69 ( .A(n31), .B(n32), .Z(n10) );
  NAND2_X1 U70 ( .A1(port_x3_0), .A2(port_x1_2), .ZN(n31) );
  NAND2_X1 U71 ( .A1(port_x3_2), .A2(port_x1_2), .ZN(n32) );
  XOR2_X1 U72 ( .A(n37), .B(n38), .Z(n36) );
  NAND2_X1 U73 ( .A1(port_x3_2), .A2(port_x2_1), .ZN(n37) );
  NAND2_X1 U74 ( .A1(port_x3_1), .A2(port_x2_2), .ZN(n38) );
  XOR2_X1 U75 ( .A(n28), .B(n29), .Z(n27) );
  NAND2_X1 U76 ( .A1(port_x3_2), .A2(port_x2_0), .ZN(n28) );
  NAND2_X1 U77 ( .A1(port_x3_0), .A2(port_x2_2), .ZN(n29) );
  XOR2_X1 U78 ( .A(n19), .B(n20), .Z(n18) );
  NAND2_X1 U79 ( .A1(port_x3_1), .A2(port_x2_0), .ZN(n19) );
  NAND2_X1 U80 ( .A1(port_x3_0), .A2(port_x2_1), .ZN(n20) );
  NAND2_X1 U81 ( .A1(port_x3_2), .A2(port_x1_0), .ZN(n11) );
  NAND2_X1 U82 ( .A1(port_x3_1), .A2(port_x1_1), .ZN(n14) );
  NAND2_X1 U83 ( .A1(port_x3_0), .A2(port_x1_0), .ZN(n8) );
  XOR2_X1 U84 ( .A(n6), .B(n7), .Z(N17) );
  XNOR2_X1 U85 ( .A(port_x2_0), .B(n8), .ZN(n6) );
  XOR2_X1 U86 ( .A(n9), .B(n10), .Z(N16) );
  XNOR2_X1 U87 ( .A(port_x2_2), .B(n11), .ZN(n9) );
  XOR2_X1 U88 ( .A(n12), .B(n13), .Z(N15) );
  XNOR2_X1 U89 ( .A(port_x2_1), .B(n14), .ZN(n12) );
  XOR2_X1 U90 ( .A(n42), .B(n43), .Z(N11) );
  XOR2_X1 U91 ( .A(n46), .B(port_x0_0), .Z(n42) );
  XOR2_X1 U92 ( .A(n44), .B(n45), .Z(n43) );
  NAND2_X1 U93 ( .A1(port_x2_0), .A2(port_x1_0), .ZN(n46) );
  XOR2_X1 U94 ( .A(n33), .B(n34), .Z(N12) );
  XOR2_X1 U95 ( .A(n39), .B(n13), .Z(n33) );
  XOR2_X1 U96 ( .A(n35), .B(n36), .Z(n34) );
  NAND2_X1 U97 ( .A1(port_x3_1), .A2(port_x2_1), .ZN(n39) );
  XOR2_X1 U98 ( .A(n24), .B(n25), .Z(N13) );
  XOR2_X1 U99 ( .A(n30), .B(n10), .Z(n24) );
  XOR2_X1 U100 ( .A(n26), .B(n27), .Z(n25) );
  XOR2_X1 U101 ( .A(n11), .B(port_x1_2), .Z(n30) );
  XOR2_X1 U102 ( .A(n1), .B(n2), .Z(N9) );
  XOR2_X1 U103 ( .A(n5), .B(port_x0_1), .Z(n1) );
  XOR2_X1 U104 ( .A(n3), .B(n4), .Z(n2) );
  NAND2_X1 U105 ( .A1(port_x2_1), .A2(port_x1_1), .ZN(n5) );
  XOR2_X1 U106 ( .A(n47), .B(n48), .Z(N10) );
  XOR2_X1 U107 ( .A(n51), .B(port_x0_2), .Z(n47) );
  XOR2_X1 U108 ( .A(n49), .B(n50), .Z(n48) );
  NAND2_X1 U109 ( .A1(port_x1_0), .A2(port_x2_2), .ZN(n51) );
  XOR2_X1 U110 ( .A(n15), .B(n16), .Z(N14) );
  XOR2_X1 U111 ( .A(n21), .B(n7), .Z(n15) );
  XOR2_X1 U112 ( .A(n17), .B(n18), .Z(n16) );
  NAND2_X1 U113 ( .A1(port_x2_0), .A2(port_x3_0), .ZN(n21) );
  NAND2_X1 U114 ( .A1(port_x1_1), .A2(n14), .ZN(n35) );
  NAND2_X1 U115 ( .A1(port_x1_0), .A2(n8), .ZN(n17) );
  NAND2_X1 U116 ( .A1(port_x2_0), .A2(port_x1_1), .ZN(n44) );
  NAND2_X1 U117 ( .A1(port_x3_2), .A2(port_x2_2), .ZN(n26) );
  NAND2_X1 U118 ( .A1(port_x1_2), .A2(port_x2_1), .ZN(n3) );
  NAND2_X1 U119 ( .A1(port_x1_2), .A2(port_x2_2), .ZN(n49) );
  AND2_X1 U120 ( .A1(port_x2_1), .A2(port_x1_0), .ZN(n45) );
  AND2_X1 U121 ( .A1(port_x1_1), .A2(port_x2_2), .ZN(n4) );
  AND2_X1 U122 ( .A1(port_x1_2), .A2(port_x2_0), .ZN(n50) );
endmodule

