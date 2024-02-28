/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:11:22 2023
/////////////////////////////////////////////////////////////


module Sbox_0123456789ABDCFE_3shares_3replications ( port_x0_0, port_x0_1, 
        port_x0_2, port_x1_0, port_x1_1, port_x1_2, port_x2_0, port_x2_1, 
        port_x2_2, port_x3_0, port_x3_1, port_x3_2, port_y0_0, port_y0_1, 
        port_y0_2, port_y1_0, port_y1_1, port_y1_2, port_y2_0, port_y2_1, 
        port_y2_2, port_y3_0, port_y3_1, port_y3_2, clk, reset );
  input [2:0] port_x0_0;
  input [2:0] port_x0_1;
  input [2:0] port_x0_2;
  input [2:0] port_x1_0;
  input [2:0] port_x1_1;
  input [2:0] port_x1_2;
  input [2:0] port_x2_0;
  input [2:0] port_x2_1;
  input [2:0] port_x2_2;
  input [2:0] port_x3_0;
  input [2:0] port_x3_1;
  input [2:0] port_x3_2;
  output [2:0] port_y0_0;
  output [2:0] port_y0_1;
  output [2:0] port_y0_2;
  output [2:0] port_y1_0;
  output [2:0] port_y1_1;
  output [2:0] port_y1_2;
  output [2:0] port_y2_0;
  output [2:0] port_y2_1;
  output [2:0] port_y2_2;
  output [2:0] port_y3_0;
  output [2:0] port_y3_1;
  output [2:0] port_y3_2;
  input clk, reset;
  wire   t0_0_0, t0_0_1, t0_0_2, maj_9_port_o, t0_1_0, t0_1_1, t0_1_2,
         maj_10_port_o, t0_2_0, t0_2_1, t0_2_2, maj_11_port_o, maj_12_port_o,
         maj_13_port_o, maj_14_port_o, maj_15_port_o, maj_16_port_o,
         maj_17_port_o, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, maj_9_n3, maj_9_n2, maj_9_n1, maj_10_n6,
         maj_10_n5, maj_10_n4, maj_11_n6, maj_11_n5, maj_11_n4, maj_12_n6,
         maj_12_n5, maj_12_n4, maj_13_n6, maj_13_n5, maj_13_n4, maj_14_n6,
         maj_14_n5, maj_14_n4, maj_15_n6, maj_15_n5, maj_15_n4, maj_16_n6,
         maj_16_n5, maj_16_n4, maj_17_n6, maj_17_n5, maj_17_n4;

  DFF_X1 reg_y0_0_reg_2_ ( .D(maj_15_port_o), .CK(clk), .Q(port_y0_0[2]), 
        .QN() );
  DFF_X1 reg_y0_0_reg_1_ ( .D(maj_12_port_o), .CK(clk), .Q(port_y0_0[1]), 
        .QN() );
  DFF_X1 reg_y0_0_reg_0_ ( .D(maj_9_port_o), .CK(clk), .Q(port_y0_0[0]), .QN()
         );
  DFF_X1 reg_y0_1_reg_2_ ( .D(maj_16_port_o), .CK(clk), .Q(port_y0_1[2]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_1_ ( .D(maj_13_port_o), .CK(clk), .Q(port_y0_1[1]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_0_ ( .D(maj_10_port_o), .CK(clk), .Q(port_y0_1[0]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_2_ ( .D(maj_17_port_o), .CK(clk), .Q(port_y0_2[2]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_1_ ( .D(maj_14_port_o), .CK(clk), .Q(port_y0_2[1]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_0_ ( .D(maj_11_port_o), .CK(clk), .Q(port_y0_2[0]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_2_ ( .D(port_x1_1[2]), .CK(clk), .Q(port_y1_0[2]), .QN()
         );
  DFF_X1 reg_y1_0_reg_1_ ( .D(port_x1_1[1]), .CK(clk), .Q(port_y1_0[1]), .QN()
         );
  DFF_X1 reg_y1_0_reg_0_ ( .D(port_x1_1[0]), .CK(clk), .Q(port_y1_0[0]), .QN()
         );
  DFF_X1 reg_y1_1_reg_2_ ( .D(port_x1_2[2]), .CK(clk), .Q(port_y1_1[2]), .QN()
         );
  DFF_X1 reg_y1_1_reg_1_ ( .D(port_x1_2[1]), .CK(clk), .Q(port_y1_1[1]), .QN()
         );
  DFF_X1 reg_y1_1_reg_0_ ( .D(port_x1_2[0]), .CK(clk), .Q(port_y1_1[0]), .QN()
         );
  DFF_X1 reg_y1_2_reg_2_ ( .D(port_x1_0[2]), .CK(clk), .Q(port_y1_2[2]), .QN()
         );
  DFF_X1 reg_y1_2_reg_1_ ( .D(port_x1_0[1]), .CK(clk), .Q(port_y1_2[1]), .QN()
         );
  DFF_X1 reg_y1_2_reg_0_ ( .D(port_x1_0[0]), .CK(clk), .Q(port_y1_2[0]), .QN()
         );
  DFF_X1 reg_y2_0_reg_2_ ( .D(port_x2_1[2]), .CK(clk), .Q(port_y2_0[2]), .QN()
         );
  DFF_X1 reg_y2_0_reg_1_ ( .D(port_x2_1[1]), .CK(clk), .Q(port_y2_0[1]), .QN()
         );
  DFF_X1 reg_y2_0_reg_0_ ( .D(port_x2_1[0]), .CK(clk), .Q(port_y2_0[0]), .QN()
         );
  DFF_X1 reg_y2_1_reg_2_ ( .D(port_x2_2[2]), .CK(clk), .Q(port_y2_1[2]), .QN()
         );
  DFF_X1 reg_y2_1_reg_1_ ( .D(port_x2_2[1]), .CK(clk), .Q(port_y2_1[1]), .QN()
         );
  DFF_X1 reg_y2_1_reg_0_ ( .D(port_x2_2[0]), .CK(clk), .Q(port_y2_1[0]), .QN()
         );
  DFF_X1 reg_y2_2_reg_2_ ( .D(port_x2_0[2]), .CK(clk), .Q(port_y2_2[2]), .QN()
         );
  DFF_X1 reg_y2_2_reg_1_ ( .D(port_x2_0[1]), .CK(clk), .Q(port_y2_2[1]), .QN()
         );
  DFF_X1 reg_y2_2_reg_0_ ( .D(port_x2_0[0]), .CK(clk), .Q(port_y2_2[0]), .QN()
         );
  DFF_X1 reg_y3_0_reg_2_ ( .D(port_x3_1[2]), .CK(clk), .Q(port_y3_0[2]), .QN()
         );
  DFF_X1 reg_y3_0_reg_1_ ( .D(port_x3_1[1]), .CK(clk), .Q(port_y3_0[1]), .QN()
         );
  DFF_X1 reg_y3_0_reg_0_ ( .D(port_x3_1[0]), .CK(clk), .Q(port_y3_0[0]), .QN()
         );
  DFF_X1 reg_y3_1_reg_2_ ( .D(port_x3_2[2]), .CK(clk), .Q(port_y3_1[2]), .QN()
         );
  DFF_X1 reg_y3_1_reg_1_ ( .D(port_x3_2[1]), .CK(clk), .Q(port_y3_1[1]), .QN()
         );
  DFF_X1 reg_y3_1_reg_0_ ( .D(port_x3_2[0]), .CK(clk), .Q(port_y3_1[0]), .QN()
         );
  DFF_X1 reg_y3_2_reg_2_ ( .D(port_x3_0[2]), .CK(clk), .Q(port_y3_2[2]), .QN()
         );
  DFF_X1 reg_y3_2_reg_1_ ( .D(port_x3_0[1]), .CK(clk), .Q(port_y3_2[1]), .QN()
         );
  DFF_X1 reg_y3_2_reg_0_ ( .D(port_x3_0[0]), .CK(clk), .Q(port_y3_2[0]), .QN()
         );
  XOR2_X1 U57 ( .A(n11), .B(n12), .Z(t0_2_0) );
  XOR2_X1 U58 ( .A(n6), .B(n7), .Z(t0_2_1) );
  XOR2_X1 U59 ( .A(n26), .B(n27), .Z(t0_1_0) );
  XOR2_X1 U60 ( .A(n21), .B(n22), .Z(t0_1_1) );
  XOR2_X1 U61 ( .A(n41), .B(n42), .Z(t0_0_0) );
  XOR2_X1 U62 ( .A(n36), .B(n37), .Z(t0_0_1) );
  XOR2_X1 U63 ( .A(n15), .B(port_x0_0[0]), .Z(n11) );
  XOR2_X1 U64 ( .A(n13), .B(n14), .Z(n12) );
  NAND2_X1 U65 ( .A1(port_x3_0[0]), .A2(port_x2_0[0]), .ZN(n15) );
  XOR2_X1 U66 ( .A(n30), .B(port_x0_2[0]), .Z(n26) );
  XOR2_X1 U67 ( .A(n28), .B(n29), .Z(n27) );
  NAND2_X1 U68 ( .A1(port_x3_2[0]), .A2(port_x2_0[0]), .ZN(n30) );
  XOR2_X1 U69 ( .A(n45), .B(port_x0_1[0]), .Z(n41) );
  XOR2_X1 U70 ( .A(n43), .B(n44), .Z(n42) );
  NAND2_X1 U71 ( .A1(port_x2_1[0]), .A2(port_x3_1[0]), .ZN(n45) );
  XOR2_X1 U72 ( .A(n10), .B(port_x0_0[1]), .Z(n6) );
  XOR2_X1 U73 ( .A(n8), .B(n9), .Z(n7) );
  NAND2_X1 U74 ( .A1(port_x3_0[1]), .A2(port_x2_0[1]), .ZN(n10) );
  XOR2_X1 U75 ( .A(n25), .B(port_x0_2[1]), .Z(n21) );
  XOR2_X1 U76 ( .A(n23), .B(n24), .Z(n22) );
  NAND2_X1 U77 ( .A1(port_x3_2[1]), .A2(port_x2_0[1]), .ZN(n25) );
  XOR2_X1 U78 ( .A(n40), .B(port_x0_1[1]), .Z(n36) );
  XOR2_X1 U79 ( .A(n38), .B(n39), .Z(n37) );
  NAND2_X1 U80 ( .A1(port_x2_1[1]), .A2(port_x3_1[1]), .ZN(n40) );
  XOR2_X1 U81 ( .A(n1), .B(n2), .Z(t0_2_2) );
  XOR2_X1 U82 ( .A(n5), .B(port_x0_0[2]), .Z(n1) );
  XOR2_X1 U83 ( .A(n3), .B(n4), .Z(n2) );
  NAND2_X1 U84 ( .A1(port_x3_0[2]), .A2(port_x2_0[2]), .ZN(n5) );
  XOR2_X1 U85 ( .A(n16), .B(n17), .Z(t0_1_2) );
  XOR2_X1 U86 ( .A(n20), .B(port_x0_2[2]), .Z(n16) );
  XOR2_X1 U87 ( .A(n18), .B(n19), .Z(n17) );
  NAND2_X1 U88 ( .A1(port_x3_2[2]), .A2(port_x2_0[2]), .ZN(n20) );
  XOR2_X1 U89 ( .A(n31), .B(n32), .Z(t0_0_2) );
  XOR2_X1 U90 ( .A(n35), .B(port_x0_1[2]), .Z(n31) );
  XOR2_X1 U91 ( .A(n33), .B(n34), .Z(n32) );
  NAND2_X1 U92 ( .A1(port_x2_1[2]), .A2(port_x3_1[2]), .ZN(n35) );
  NAND2_X1 U93 ( .A1(port_x2_1[0]), .A2(port_x3_0[0]), .ZN(n13) );
  NAND2_X1 U94 ( .A1(port_x2_1[1]), .A2(port_x3_0[1]), .ZN(n8) );
  NAND2_X1 U95 ( .A1(port_x2_1[2]), .A2(port_x3_0[2]), .ZN(n3) );
  NAND2_X1 U96 ( .A1(port_x2_2[0]), .A2(port_x3_2[0]), .ZN(n28) );
  NAND2_X1 U97 ( .A1(port_x2_2[1]), .A2(port_x3_2[1]), .ZN(n23) );
  NAND2_X1 U98 ( .A1(port_x2_2[2]), .A2(port_x3_2[2]), .ZN(n18) );
  NAND2_X1 U99 ( .A1(port_x2_2[0]), .A2(port_x3_1[0]), .ZN(n43) );
  NAND2_X1 U100 ( .A1(port_x2_2[1]), .A2(port_x3_1[1]), .ZN(n38) );
  NAND2_X1 U101 ( .A1(port_x2_2[2]), .A2(port_x3_1[2]), .ZN(n33) );
  AND2_X1 U102 ( .A1(port_x2_0[0]), .A2(port_x3_1[0]), .ZN(n14) );
  AND2_X1 U103 ( .A1(port_x2_0[1]), .A2(port_x3_1[1]), .ZN(n9) );
  AND2_X1 U104 ( .A1(port_x2_0[2]), .A2(port_x3_1[2]), .ZN(n4) );
  AND2_X1 U105 ( .A1(port_x3_0[0]), .A2(port_x2_2[0]), .ZN(n29) );
  AND2_X1 U106 ( .A1(port_x3_0[1]), .A2(port_x2_2[1]), .ZN(n24) );
  AND2_X1 U107 ( .A1(port_x3_0[2]), .A2(port_x2_2[2]), .ZN(n19) );
  AND2_X1 U108 ( .A1(port_x2_1[0]), .A2(port_x3_2[0]), .ZN(n44) );
  AND2_X1 U109 ( .A1(port_x2_1[1]), .A2(port_x3_2[1]), .ZN(n39) );
  AND2_X1 U110 ( .A1(port_x2_1[2]), .A2(port_x3_2[2]), .ZN(n34) );
  OR2_X1 maj_9_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_9_n3) );
  NAND2_X1 maj_9_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_9_n1) );
  NAND2_X1 maj_9_U2 ( .A1(t0_0_2), .A2(maj_9_n3), .ZN(maj_9_n2) );
  NAND2_X1 maj_9_U1 ( .A1(maj_9_n1), .A2(maj_9_n2), .ZN(maj_9_port_o) );
  OR2_X1 maj_10_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_10_n4) );
  NAND2_X1 maj_10_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_10_n6) );
  NAND2_X1 maj_10_U2 ( .A1(t0_1_2), .A2(maj_10_n4), .ZN(maj_10_n5) );
  NAND2_X1 maj_10_U1 ( .A1(maj_10_n6), .A2(maj_10_n5), .ZN(maj_10_port_o) );
  OR2_X1 maj_11_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_11_n4) );
  NAND2_X1 maj_11_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_11_n6) );
  NAND2_X1 maj_11_U2 ( .A1(t0_2_2), .A2(maj_11_n4), .ZN(maj_11_n5) );
  NAND2_X1 maj_11_U1 ( .A1(maj_11_n6), .A2(maj_11_n5), .ZN(maj_11_port_o) );
  OR2_X1 maj_12_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_12_n4) );
  NAND2_X1 maj_12_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_12_n6) );
  NAND2_X1 maj_12_U2 ( .A1(t0_0_2), .A2(maj_12_n4), .ZN(maj_12_n5) );
  NAND2_X1 maj_12_U1 ( .A1(maj_12_n6), .A2(maj_12_n5), .ZN(maj_12_port_o) );
  OR2_X1 maj_13_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_13_n4) );
  NAND2_X1 maj_13_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_13_n6) );
  NAND2_X1 maj_13_U2 ( .A1(t0_1_2), .A2(maj_13_n4), .ZN(maj_13_n5) );
  NAND2_X1 maj_13_U1 ( .A1(maj_13_n6), .A2(maj_13_n5), .ZN(maj_13_port_o) );
  OR2_X1 maj_14_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_14_n4) );
  NAND2_X1 maj_14_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_14_n6) );
  NAND2_X1 maj_14_U2 ( .A1(t0_2_2), .A2(maj_14_n4), .ZN(maj_14_n5) );
  NAND2_X1 maj_14_U1 ( .A1(maj_14_n6), .A2(maj_14_n5), .ZN(maj_14_port_o) );
  OR2_X1 maj_15_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_15_n4) );
  NAND2_X1 maj_15_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_15_n6) );
  NAND2_X1 maj_15_U2 ( .A1(t0_0_2), .A2(maj_15_n4), .ZN(maj_15_n5) );
  NAND2_X1 maj_15_U1 ( .A1(maj_15_n6), .A2(maj_15_n5), .ZN(maj_15_port_o) );
  OR2_X1 maj_16_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_16_n4) );
  NAND2_X1 maj_16_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_16_n6) );
  NAND2_X1 maj_16_U2 ( .A1(t0_1_2), .A2(maj_16_n4), .ZN(maj_16_n5) );
  NAND2_X1 maj_16_U1 ( .A1(maj_16_n6), .A2(maj_16_n5), .ZN(maj_16_port_o) );
  OR2_X1 maj_17_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_17_n4) );
  NAND2_X1 maj_17_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_17_n6) );
  NAND2_X1 maj_17_U2 ( .A1(t0_2_2), .A2(maj_17_n4), .ZN(maj_17_n5) );
  NAND2_X1 maj_17_U1 ( .A1(maj_17_n6), .A2(maj_17_n5), .ZN(maj_17_port_o) );
endmodule

