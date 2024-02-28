/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:23:33 2023
/////////////////////////////////////////////////////////////


module Sbox_Present_3shares ( port_x0_0, port_x0_1, port_x0_2, port_x1_0, 
        port_x1_1, port_x1_2, port_x2_0, port_x2_1, port_x2_2, port_x3_0, 
        port_x3_1, port_x3_2, port_y0_0, port_y0_1, port_y0_2, port_y1_0, 
        port_y1_1, port_y1_2, port_y2_0, port_y2_1, port_y2_2, port_y3_0, 
        port_y3_1, port_y3_2, clk, reset );
  input port_x0_0, port_x0_1, port_x0_2, port_x1_0, port_x1_1, port_x1_2,
         port_x2_0, port_x2_1, port_x2_2, port_x3_0, port_x3_1, port_x3_2, clk,
         reset;
  output port_y0_0, port_y0_1, port_y0_2, port_y1_0, port_y1_1, port_y1_2,
         port_y2_0, port_y2_1, port_y2_2, port_y3_0, port_y3_1, port_y3_2;
  wire   A_port_y3_0, A_port_y3_1, A_port_y3_2, Q12_0_port_y0_0,
         Q12_0_port_y0_1, Q12_0_port_y0_2, Q12_0_port_y1_0, Q12_0_port_y1_1,
         Q12_0_port_y1_2, Q12_0_port_y2_0, Q12_0_port_y2_1, Q12_0_port_y2_2,
         Q12_0_port_y3_0, Q12_0_port_y3_1, Q12_0_port_y3_2, Q12_1_port_y1_0,
         Q12_1_port_y1_1, Q12_1_port_y1_2, Q12_1_port_y3_0, Q12_1_port_y3_1,
         Q12_1_port_y3_2, Q12_0_n36, Q12_0_n35, Q12_0_n34, Q12_0_n33,
         Q12_0_n32, Q12_0_n31, Q12_0_n30, Q12_0_n29, Q12_0_n28, Q12_0_n27,
         Q12_0_n26, Q12_0_n25, Q12_0_n24, Q12_0_n23, Q12_0_n22, Q12_0_n21,
         Q12_0_n20, Q12_0_n19, Q12_0_n18, Q12_0_n17, Q12_0_n16, Q12_0_n15,
         Q12_0_n14, Q12_0_n13, Q12_0_n12, Q12_0_n11, Q12_0_n10, Q12_0_n9,
         Q12_0_n8, Q12_0_n7, Q12_0_n6, Q12_0_n5, Q12_0_n4, Q12_0_n3, Q12_0_n2,
         Q12_0_n1, Q12_0_N14, Q12_0_N13, Q12_0_N12, Q12_0_N11, Q12_0_N10,
         Q12_0_N9, A_prime_n3, A_prime_n2, A_prime_n1, A_prime_port_y3_2,
         A_prime_port_y3_1, A_prime_port_y3_0, A_prime_port_y0_2,
         A_prime_port_y0_1, A_prime_port_y0_0, Q12_1_n72, Q12_1_n71, Q12_1_n70,
         Q12_1_n69, Q12_1_n68, Q12_1_n67, Q12_1_n66, Q12_1_n65, Q12_1_n64,
         Q12_1_n63, Q12_1_n62, Q12_1_n61, Q12_1_n60, Q12_1_n59, Q12_1_n58,
         Q12_1_n57, Q12_1_n56, Q12_1_n55, Q12_1_n54, Q12_1_n53, Q12_1_n52,
         Q12_1_n51, Q12_1_n50, Q12_1_n49, Q12_1_n48, Q12_1_n47, Q12_1_n46,
         Q12_1_n45, Q12_1_n44, Q12_1_n43, Q12_1_n42, Q12_1_n41, Q12_1_n40,
         Q12_1_n39, Q12_1_n38, Q12_1_n37, Q12_1_N14, Q12_1_N13, Q12_1_N12,
         Q12_1_N11, Q12_1_N10, Q12_1_N9, A_out_n3, A_out_n2, A_out_n1;

  XOR2_X1 A_U3 ( .A(port_x1_1), .B(port_x2_1), .Z(A_port_y3_0) );
  XOR2_X1 A_U2 ( .A(port_x1_0), .B(port_x2_0), .Z(A_port_y3_2) );
  XOR2_X1 A_U1 ( .A(port_x1_2), .B(port_x2_2), .Z(A_port_y3_1) );
  NAND2_X1 Q12_0_U44 ( .A1(port_x1_1), .A2(Q12_0_n12), .ZN(Q12_0_n21) );
  NAND2_X1 Q12_0_U43 ( .A1(port_x1_2), .A2(Q12_0_n7), .ZN(Q12_0_n3) );
  NAND2_X1 Q12_0_U42 ( .A1(port_x3_1), .A2(A_port_y3_0), .ZN(Q12_0_n25) );
  XOR2_X1 Q12_0_U41 ( .A(Q12_0_n21), .B(Q12_0_n22), .Z(Q12_0_n20) );
  XOR2_X1 Q12_0_U40 ( .A(Q12_0_n25), .B(Q12_0_n11), .Z(Q12_0_n19) );
  XOR2_X1 Q12_0_U39 ( .A(Q12_0_n19), .B(Q12_0_n20), .Z(Q12_0_N11) );
  NAND2_X1 Q12_0_U38 ( .A1(port_x3_2), .A2(A_port_y3_1), .ZN(Q12_0_n8) );
  XOR2_X1 Q12_0_U37 ( .A(Q12_0_n3), .B(Q12_0_n4), .Z(Q12_0_n2) );
  XOR2_X1 Q12_0_U36 ( .A(Q12_0_n8), .B(Q12_0_n9), .Z(Q12_0_n1) );
  XOR2_X1 Q12_0_U35 ( .A(Q12_0_n1), .B(Q12_0_n2), .Z(Q12_0_N9) );
  XOR2_X1 Q12_0_U34 ( .A(Q12_0_n15), .B(port_x1_0), .Z(Q12_0_n34) );
  XOR2_X1 Q12_0_U33 ( .A(Q12_0_n30), .B(Q12_0_n31), .Z(Q12_0_n29) );
  XOR2_X1 Q12_0_U32 ( .A(Q12_0_n34), .B(Q12_0_n14), .Z(Q12_0_n28) );
  XOR2_X1 Q12_0_U31 ( .A(Q12_0_n28), .B(Q12_0_n29), .Z(Q12_0_N10) );
  XNOR2_X1 Q12_0_U30 ( .A(port_x3_1), .B(Q12_0_n12), .ZN(Q12_0_n10) );
  XOR2_X1 Q12_0_U29 ( .A(Q12_0_n10), .B(Q12_0_n11), .Z(Q12_0_N14) );
  XNOR2_X1 Q12_0_U28 ( .A(port_x3_2), .B(Q12_0_n7), .ZN(Q12_0_n16) );
  XOR2_X1 Q12_0_U27 ( .A(Q12_0_n16), .B(Q12_0_n9), .Z(Q12_0_N12) );
  XNOR2_X1 Q12_0_U26 ( .A(port_x3_0), .B(Q12_0_n15), .ZN(Q12_0_n13) );
  XOR2_X1 Q12_0_U25 ( .A(Q12_0_n13), .B(Q12_0_n14), .Z(Q12_0_N13) );
  NAND2_X1 Q12_0_U24 ( .A1(port_x3_0), .A2(A_port_y3_2), .ZN(Q12_0_n30) );
  NAND2_X1 Q12_0_U23 ( .A1(port_x1_1), .A2(A_port_y3_2), .ZN(Q12_0_n15) );
  NAND2_X1 Q12_0_U22 ( .A1(A_port_y3_0), .A2(port_x3_2), .ZN(Q12_0_n24) );
  NAND2_X1 Q12_0_U21 ( .A1(port_x3_1), .A2(A_port_y3_1), .ZN(Q12_0_n23) );
  XOR2_X1 Q12_0_U20 ( .A(Q12_0_n23), .B(Q12_0_n24), .Z(Q12_0_n22) );
  NAND2_X1 Q12_0_U19 ( .A1(A_port_y3_0), .A2(port_x3_0), .ZN(Q12_0_n33) );
  NAND2_X1 Q12_0_U18 ( .A1(port_x3_1), .A2(A_port_y3_2), .ZN(Q12_0_n32) );
  XOR2_X1 Q12_0_U17 ( .A(Q12_0_n32), .B(Q12_0_n33), .Z(Q12_0_n31) );
  NAND2_X1 Q12_0_U16 ( .A1(port_x3_0), .A2(A_port_y3_1), .ZN(Q12_0_n6) );
  NAND2_X1 Q12_0_U15 ( .A1(port_x3_2), .A2(A_port_y3_2), .ZN(Q12_0_n5) );
  XOR2_X1 Q12_0_U14 ( .A(Q12_0_n5), .B(Q12_0_n6), .Z(Q12_0_n4) );
  NAND2_X1 Q12_0_U13 ( .A1(A_port_y3_0), .A2(port_x1_1), .ZN(Q12_0_n12) );
  NAND2_X1 Q12_0_U12 ( .A1(A_port_y3_1), .A2(port_x1_2), .ZN(Q12_0_n7) );
  NAND2_X1 Q12_0_U11 ( .A1(A_port_y3_0), .A2(port_x1_0), .ZN(Q12_0_n35) );
  NAND2_X1 Q12_0_U10 ( .A1(port_x1_0), .A2(A_port_y3_2), .ZN(Q12_0_n36) );
  XOR2_X1 Q12_0_U9 ( .A(Q12_0_n35), .B(Q12_0_n36), .Z(Q12_0_n14) );
  NAND2_X1 Q12_0_U8 ( .A1(A_port_y3_0), .A2(port_x1_2), .ZN(Q12_0_n27) );
  NAND2_X1 Q12_0_U7 ( .A1(port_x1_1), .A2(A_port_y3_1), .ZN(Q12_0_n26) );
  XOR2_X1 Q12_0_U6 ( .A(Q12_0_n26), .B(Q12_0_n27), .Z(Q12_0_n11) );
  NAND2_X1 Q12_0_U5 ( .A1(A_port_y3_2), .A2(port_x1_2), .ZN(Q12_0_n17) );
  NAND2_X1 Q12_0_U4 ( .A1(port_x1_0), .A2(A_port_y3_1), .ZN(Q12_0_n18) );
  XOR2_X1 Q12_0_U3 ( .A(Q12_0_n17), .B(Q12_0_n18), .Z(Q12_0_n9) );
  DFF_X1 Q12_0_y1_0_reg ( .D(Q12_0_N9), .CK(clk), .Q(Q12_0_port_y1_0), .QN()
         );
  DFF_X1 Q12_0_y0_2_reg ( .D(port_x0_1), .CK(clk), .Q(Q12_0_port_y0_2), .QN()
         );
  DFF_X1 Q12_0_y3_0_reg ( .D(A_port_y3_1), .CK(clk), .Q(Q12_0_port_y3_0), 
        .QN() );
  DFF_X1 Q12_0_y0_1_reg ( .D(port_x0_0), .CK(clk), .Q(Q12_0_port_y0_1), .QN()
         );
  DFF_X1 Q12_0_y2_2_reg ( .D(Q12_0_N14), .CK(clk), .Q(Q12_0_port_y2_2), .QN()
         );
  DFF_X1 Q12_0_y2_1_reg ( .D(Q12_0_N13), .CK(clk), .Q(Q12_0_port_y2_1), .QN()
         );
  DFF_X1 Q12_0_y3_1_reg ( .D(A_port_y3_2), .CK(clk), .Q(Q12_0_port_y3_1), 
        .QN() );
  DFF_X1 Q12_0_y2_0_reg ( .D(Q12_0_N12), .CK(clk), .Q(Q12_0_port_y2_0), .QN()
         );
  DFF_X1 Q12_0_y1_1_reg ( .D(Q12_0_N10), .CK(clk), .Q(Q12_0_port_y1_1), .QN()
         );
  DFF_X1 Q12_0_y1_2_reg ( .D(Q12_0_N11), .CK(clk), .Q(Q12_0_port_y1_2), .QN()
         );
  DFF_X1 Q12_0_y0_0_reg ( .D(port_x0_2), .CK(clk), .Q(Q12_0_port_y0_0), .QN()
         );
  DFF_X1 Q12_0_y3_2_reg ( .D(A_port_y3_0), .CK(clk), .Q(Q12_0_port_y3_2), 
        .QN() );
  XOR2_X1 A_prime_U9 ( .A(Q12_0_port_y2_0), .B(Q12_0_port_y0_0), .Z(A_prime_n1) );
  XOR2_X1 A_prime_U8 ( .A(Q12_0_port_y2_2), .B(Q12_0_port_y0_2), .Z(A_prime_n2) );
  XOR2_X1 A_prime_U7 ( .A(Q12_0_port_y2_1), .B(Q12_0_port_y0_1), .Z(A_prime_n3) );
  XOR2_X1 A_prime_U6 ( .A(Q12_0_port_y3_0), .B(A_prime_n1), .Z(
        A_prime_port_y0_2) );
  XOR2_X1 A_prime_U5 ( .A(Q12_0_port_y3_2), .B(A_prime_n2), .Z(
        A_prime_port_y0_1) );
  XOR2_X1 A_prime_U4 ( .A(Q12_0_port_y3_1), .B(A_prime_n3), .Z(
        A_prime_port_y0_0) );
  XOR2_X1 A_prime_U3 ( .A(Q12_0_port_y0_1), .B(Q12_0_port_y1_1), .Z(
        A_prime_port_y3_0) );
  XOR2_X1 A_prime_U2 ( .A(Q12_0_port_y0_0), .B(Q12_0_port_y1_0), .Z(
        A_prime_port_y3_2) );
  XOR2_X1 A_prime_U1 ( .A(Q12_0_port_y0_2), .B(Q12_0_port_y1_2), .Z(
        A_prime_port_y3_1) );
  NAND2_X1 Q12_1_U44 ( .A1(Q12_0_port_y2_0), .A2(Q12_0_port_y3_0), .ZN(
        Q12_1_n48) );
  NAND2_X1 Q12_1_U43 ( .A1(Q12_0_port_y2_1), .A2(Q12_0_port_y3_1), .ZN(
        Q12_1_n65) );
  XNOR2_X1 Q12_1_U42 ( .A(Q12_0_port_y2_0), .B(Q12_1_n61), .ZN(Q12_1_n63) );
  XOR2_X1 Q12_1_U41 ( .A(Q12_1_n63), .B(Q12_1_n62), .Z(Q12_1_N14) );
  XNOR2_X1 Q12_1_U40 ( .A(Q12_0_port_y2_1), .B(Q12_1_n66), .ZN(Q12_1_n57) );
  XOR2_X1 Q12_1_U39 ( .A(Q12_1_n57), .B(Q12_1_n64), .Z(Q12_1_N12) );
  XNOR2_X1 Q12_1_U38 ( .A(Q12_0_port_y2_2), .B(Q12_1_n58), .ZN(Q12_1_n60) );
  XOR2_X1 Q12_1_U37 ( .A(Q12_1_n60), .B(Q12_1_n59), .Z(Q12_1_N13) );
  NAND2_X1 Q12_1_U36 ( .A1(Q12_0_port_y3_0), .A2(Q12_0_port_y1_0), .ZN(
        Q12_1_n61) );
  NAND2_X1 Q12_1_U35 ( .A1(Q12_0_port_y3_1), .A2(Q12_0_port_y1_1), .ZN(
        Q12_1_n66) );
  NAND2_X1 Q12_1_U34 ( .A1(Q12_0_port_y3_0), .A2(Q12_0_port_y2_1), .ZN(
        Q12_1_n49) );
  NAND2_X1 Q12_1_U33 ( .A1(Q12_0_port_y2_0), .A2(Q12_0_port_y3_1), .ZN(
        Q12_1_n50) );
  XOR2_X1 Q12_1_U32 ( .A(Q12_1_n50), .B(Q12_1_n49), .Z(Q12_1_n51) );
  NAND2_X1 Q12_1_U31 ( .A1(Q12_0_port_y3_0), .A2(Q12_0_port_y2_2), .ZN(
        Q12_1_n40) );
  NAND2_X1 Q12_1_U30 ( .A1(Q12_0_port_y2_0), .A2(Q12_0_port_y3_2), .ZN(
        Q12_1_n41) );
  XOR2_X1 Q12_1_U29 ( .A(Q12_1_n41), .B(Q12_1_n40), .Z(Q12_1_n42) );
  NAND2_X1 Q12_1_U28 ( .A1(Q12_0_port_y2_2), .A2(Q12_0_port_y3_1), .ZN(
        Q12_1_n67) );
  NAND2_X1 Q12_1_U27 ( .A1(Q12_0_port_y2_1), .A2(Q12_0_port_y3_2), .ZN(
        Q12_1_n68) );
  XOR2_X1 Q12_1_U26 ( .A(Q12_1_n68), .B(Q12_1_n67), .Z(Q12_1_n69) );
  NAND2_X1 Q12_1_U25 ( .A1(Q12_0_port_y1_0), .A2(Q12_0_port_y3_2), .ZN(
        Q12_1_n58) );
  XOR2_X1 Q12_1_U24 ( .A(Q12_1_n58), .B(Q12_0_port_y1_2), .Z(Q12_1_n39) );
  NAND2_X1 Q12_1_U23 ( .A1(Q12_0_port_y1_0), .A2(Q12_1_n61), .ZN(Q12_1_n52) );
  XOR2_X1 Q12_1_U22 ( .A(Q12_1_n48), .B(Q12_1_n62), .Z(Q12_1_n54) );
  XOR2_X1 Q12_1_U21 ( .A(Q12_1_n52), .B(Q12_1_n51), .Z(Q12_1_n53) );
  XOR2_X1 Q12_1_U20 ( .A(Q12_1_n54), .B(Q12_1_n53), .Z(Q12_1_N11) );
  NAND2_X1 Q12_1_U19 ( .A1(Q12_0_port_y3_0), .A2(Q12_0_port_y1_1), .ZN(
        Q12_1_n46) );
  NAND2_X1 Q12_1_U18 ( .A1(Q12_0_port_y1_0), .A2(Q12_0_port_y3_1), .ZN(
        Q12_1_n47) );
  XOR2_X1 Q12_1_U17 ( .A(Q12_1_n47), .B(Q12_1_n46), .Z(Q12_1_n62) );
  NAND2_X1 Q12_1_U16 ( .A1(Q12_0_port_y2_2), .A2(Q12_0_port_y3_2), .ZN(
        Q12_1_n43) );
  XOR2_X1 Q12_1_U15 ( .A(Q12_1_n39), .B(Q12_1_n59), .Z(Q12_1_n45) );
  XOR2_X1 Q12_1_U14 ( .A(Q12_1_n43), .B(Q12_1_n42), .Z(Q12_1_n44) );
  XOR2_X1 Q12_1_U13 ( .A(Q12_1_n45), .B(Q12_1_n44), .Z(Q12_1_N10) );
  NAND2_X1 Q12_1_U12 ( .A1(Q12_0_port_y1_1), .A2(Q12_1_n66), .ZN(Q12_1_n70) );
  XOR2_X1 Q12_1_U11 ( .A(Q12_1_n65), .B(Q12_1_n64), .Z(Q12_1_n72) );
  XOR2_X1 Q12_1_U10 ( .A(Q12_1_n70), .B(Q12_1_n69), .Z(Q12_1_n71) );
  XOR2_X1 Q12_1_U9 ( .A(Q12_1_n72), .B(Q12_1_n71), .Z(Q12_1_N9) );
  NAND2_X1 Q12_1_U8 ( .A1(Q12_0_port_y1_2), .A2(Q12_0_port_y3_2), .ZN(
        Q12_1_n37) );
  NAND2_X1 Q12_1_U7 ( .A1(Q12_0_port_y3_0), .A2(Q12_0_port_y1_2), .ZN(
        Q12_1_n38) );
  XOR2_X1 Q12_1_U6 ( .A(Q12_1_n38), .B(Q12_1_n37), .Z(Q12_1_n59) );
  NAND2_X1 Q12_1_U5 ( .A1(Q12_0_port_y1_2), .A2(Q12_0_port_y3_1), .ZN(
        Q12_1_n55) );
  NAND2_X1 Q12_1_U4 ( .A1(Q12_0_port_y3_2), .A2(Q12_0_port_y1_1), .ZN(
        Q12_1_n56) );
  XOR2_X1 Q12_1_U3 ( .A(Q12_1_n56), .B(Q12_1_n55), .Z(Q12_1_n64) );
  DFF_X1 Q12_1_y1_0_reg ( .D(Q12_1_N9), .CK(clk), .Q(Q12_1_port_y1_0), .QN()
         );
  DFF_X1 Q12_1_y0_2_reg ( .D(Q12_0_port_y0_0), .CK(clk), .Q(port_y0_1), .QN()
         );
  DFF_X1 Q12_1_y3_0_reg ( .D(Q12_0_port_y3_1), .CK(clk), .Q(Q12_1_port_y3_0), 
        .QN() );
  DFF_X1 Q12_1_y0_1_reg ( .D(Q12_0_port_y0_2), .CK(clk), .Q(port_y0_0), .QN()
         );
  DFF_X1 Q12_1_y2_2_reg ( .D(Q12_1_N14), .CK(clk), .Q(port_y3_1), .QN() );
  DFF_X1 Q12_1_y2_1_reg ( .D(Q12_1_N13), .CK(clk), .Q(port_y3_0), .QN() );
  DFF_X1 Q12_1_y3_1_reg ( .D(Q12_0_port_y3_2), .CK(clk), .Q(Q12_1_port_y3_1), 
        .QN() );
  DFF_X1 Q12_1_y2_0_reg ( .D(Q12_1_N12), .CK(clk), .Q(port_y3_2), .QN() );
  DFF_X1 Q12_1_y1_1_reg ( .D(Q12_1_N10), .CK(clk), .Q(Q12_1_port_y1_1), .QN()
         );
  DFF_X1 Q12_1_y1_2_reg ( .D(Q12_1_N11), .CK(clk), .Q(Q12_1_port_y1_2), .QN()
         );
  DFF_X1 Q12_1_y0_0_reg ( .D(Q12_0_port_y0_1), .CK(clk), .Q(port_y0_2), .QN()
         );
  DFF_X1 Q12_1_y3_2_reg ( .D(Q12_0_port_y3_0), .CK(clk), .Q(Q12_1_port_y3_2), 
        .QN() );
  XOR2_X1 A_out_U9 ( .A(port_y0_0), .B(Q12_1_port_y3_1), .Z(A_out_n3) );
  XOR2_X1 A_out_U8 ( .A(Q12_1_port_y1_1), .B(A_out_n3), .Z(port_y2_0) );
  XOR2_X1 A_out_U7 ( .A(port_y0_1), .B(Q12_1_port_y3_2), .Z(A_out_n2) );
  XOR2_X1 A_out_U6 ( .A(Q12_1_port_y1_2), .B(A_out_n2), .Z(port_y2_1) );
  XOR2_X1 A_out_U5 ( .A(port_y0_2), .B(Q12_1_port_y3_0), .Z(A_out_n1) );
  XOR2_X1 A_out_U4 ( .A(Q12_1_port_y1_0), .B(A_out_n1), .Z(port_y2_2) );
  XOR2_X1 A_out_U3 ( .A(port_y3_0), .B(Q12_1_port_y3_1), .Z(port_y1_0) );
  XOR2_X1 A_out_U2 ( .A(port_y3_1), .B(Q12_1_port_y3_2), .Z(port_y1_1) );
  XOR2_X1 A_out_U1 ( .A(port_y3_2), .B(Q12_1_port_y3_0), .Z(port_y1_2) );
endmodule

