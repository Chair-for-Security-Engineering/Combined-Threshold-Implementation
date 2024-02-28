/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:14:48 2023
/////////////////////////////////////////////////////////////


module Sbox_012345678ACEB9FD_3shares ( port_x0_0, port_x0_1, port_x0_2, 
        port_x1_0, port_x1_1, port_x1_2, port_x2_0, port_x2_1, port_x2_2, 
        port_x3_0, port_x3_1, port_x3_2, port_y0_0, port_y0_1, port_y0_2, 
        port_y1_0, port_y1_1, port_y1_2, port_y2_0, port_y2_1, port_y2_2, 
        port_y3_0, port_y3_1, port_y3_2, clk, reset );
  input port_x0_0, port_x0_1, port_x0_2, port_x1_0, port_x1_1, port_x1_2,
         port_x2_0, port_x2_1, port_x2_2, port_x3_0, port_x3_1, port_x3_2, clk,
         reset;
  output port_y0_0, port_y0_1, port_y0_2, port_y1_0, port_y1_1, port_y1_2,
         port_y2_0, port_y2_1, port_y2_2, port_y3_0, port_y3_1, port_y3_2;
  wire   N25, N26, N27, N28, N29, N30, N31, N32, N33, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81;

  DFF_X1 y3_2_reg ( .D(port_x3_0), .CK(clk), .Q(port_y3_2), .QN() );
  DFF_X1 y1_0_reg ( .D(N28), .CK(clk), .Q(port_y1_0), .QN() );
  DFF_X1 y0_2_reg ( .D(N27), .CK(clk), .Q(port_y0_2), .QN() );
  DFF_X1 y2_0_reg ( .D(N31), .CK(clk), .Q(port_y2_0), .QN() );
  DFF_X1 y3_1_reg ( .D(port_x3_2), .CK(clk), .Q(port_y3_1), .QN() );
  DFF_X1 y2_1_reg ( .D(N32), .CK(clk), .Q(port_y2_1), .QN() );
  DFF_X1 y0_0_reg ( .D(N25), .CK(clk), .Q(port_y0_0), .QN() );
  DFF_X1 y0_1_reg ( .D(N26), .CK(clk), .Q(port_y0_1), .QN() );
  DFF_X1 y1_2_reg ( .D(N30), .CK(clk), .Q(port_y1_2), .QN() );
  DFF_X1 y1_1_reg ( .D(N29), .CK(clk), .Q(port_y1_1), .QN() );
  DFF_X1 y2_2_reg ( .D(N33), .CK(clk), .Q(port_y2_2), .QN() );
  DFF_X1 y3_0_reg ( .D(port_x3_1), .CK(clk), .Q(port_y3_0), .QN() );
  XOR2_X1 U93 ( .A(n46), .B(n47), .Z(n21) );
  XOR2_X1 U94 ( .A(n58), .B(n57), .Z(n31) );
  XOR2_X1 U95 ( .A(n34), .B(n35), .Z(n13) );
  XOR2_X1 U96 ( .A(n19), .B(n16), .Z(n51) );
  XOR2_X1 U97 ( .A(n43), .B(n11), .Z(n42) );
  XOR2_X1 U98 ( .A(n66), .B(n29), .Z(n65) );
  XOR2_X1 U99 ( .A(n9), .B(n10), .Z(n8) );
  XOR2_X1 U100 ( .A(n18), .B(n19), .Z(n17) );
  XOR2_X1 U101 ( .A(n27), .B(n28), .Z(n26) );
  XOR2_X1 U102 ( .A(n22), .B(n46), .Z(n74) );
  XOR2_X1 U103 ( .A(n22), .B(n18), .Z(n50) );
  XOR2_X1 U104 ( .A(n45), .B(n21), .Z(N29) );
  XOR2_X1 U105 ( .A(n48), .B(n49), .Z(n45) );
  XOR2_X1 U106 ( .A(n52), .B(n53), .Z(n48) );
  XOR2_X1 U107 ( .A(n50), .B(n51), .Z(n49) );
  XOR2_X1 U108 ( .A(n32), .B(n33), .Z(N30) );
  XNOR2_X1 U109 ( .A(n34), .B(n35), .ZN(n33) );
  XOR2_X1 U110 ( .A(n36), .B(n37), .Z(n32) );
  XOR2_X1 U111 ( .A(n41), .B(n42), .Z(n36) );
  XOR2_X1 U112 ( .A(n78), .B(n79), .Z(N25) );
  XOR2_X1 U113 ( .A(n29), .B(n81), .Z(n78) );
  XOR2_X1 U114 ( .A(n80), .B(n31), .Z(n79) );
  XOR2_X1 U115 ( .A(n67), .B(n66), .Z(n81) );
  XOR2_X1 U116 ( .A(n68), .B(n69), .Z(N27) );
  XOR2_X1 U117 ( .A(n11), .B(n71), .Z(n68) );
  XOR2_X1 U118 ( .A(n70), .B(n13), .Z(n69) );
  XOR2_X1 U119 ( .A(n44), .B(n43), .Z(n71) );
  XOR2_X1 U120 ( .A(n55), .B(n56), .Z(N28) );
  XNOR2_X1 U121 ( .A(n57), .B(n58), .ZN(n56) );
  XOR2_X1 U122 ( .A(n59), .B(n60), .Z(n55) );
  XOR2_X1 U123 ( .A(n64), .B(n65), .Z(n59) );
  XOR2_X1 U124 ( .A(n76), .B(n77), .Z(n53) );
  NAND2_X1 U125 ( .A1(port_x0_2), .A2(port_x3_0), .ZN(n76) );
  NAND2_X1 U126 ( .A1(port_x0_2), .A2(port_x3_2), .ZN(n77) );
  XOR2_X1 U127 ( .A(n38), .B(n39), .Z(n37) );
  XOR2_X1 U128 ( .A(n12), .B(n9), .Z(n38) );
  XOR2_X1 U129 ( .A(n10), .B(n40), .Z(n39) );
  NAND2_X1 U130 ( .A1(port_x0_0), .A2(port_x3_0), .ZN(n40) );
  XOR2_X1 U131 ( .A(n61), .B(n62), .Z(n60) );
  XOR2_X1 U132 ( .A(n30), .B(n27), .Z(n61) );
  XOR2_X1 U133 ( .A(n28), .B(n63), .Z(n62) );
  NAND2_X1 U134 ( .A1(port_x0_1), .A2(port_x3_1), .ZN(n63) );
  XOR2_X1 U135 ( .A(n44), .B(port_x1_0), .Z(n41) );
  XOR2_X1 U136 ( .A(n67), .B(port_x1_1), .Z(n64) );
  NAND2_X1 U137 ( .A1(port_x3_2), .A2(port_x2_0), .ZN(n22) );
  NAND2_X1 U138 ( .A1(port_x3_0), .A2(port_x2_0), .ZN(n11) );
  NAND2_X1 U139 ( .A1(port_x2_1), .A2(port_x3_1), .ZN(n29) );
  XNOR2_X1 U140 ( .A(port_x1_2), .B(n54), .ZN(n52) );
  NAND2_X1 U141 ( .A1(port_x1_2), .A2(port_x3_0), .ZN(n19) );
  NAND2_X1 U142 ( .A1(port_x3_2), .A2(port_x1_0), .ZN(n18) );
  NAND2_X1 U143 ( .A1(port_x1_1), .A2(port_x3_0), .ZN(n10) );
  NAND2_X1 U144 ( .A1(port_x1_0), .A2(port_x3_1), .ZN(n9) );
  NAND2_X1 U145 ( .A1(port_x2_2), .A2(port_x3_0), .ZN(n46) );
  NAND2_X1 U146 ( .A1(port_x0_2), .A2(port_x3_1), .ZN(n66) );
  NAND2_X1 U147 ( .A1(port_x1_2), .A2(port_x3_1), .ZN(n28) );
  NAND2_X1 U148 ( .A1(port_x3_2), .A2(port_x1_1), .ZN(n27) );
  NAND2_X1 U149 ( .A1(port_x0_1), .A2(port_x3_0), .ZN(n43) );
  NAND2_X1 U150 ( .A1(port_x2_2), .A2(port_x3_2), .ZN(n47) );
  NAND2_X1 U151 ( .A1(port_x1_2), .A2(port_x3_2), .ZN(n16) );
  NAND2_X1 U152 ( .A1(port_x0_0), .A2(port_x3_2), .ZN(n54) );
  NAND2_X1 U153 ( .A1(port_x2_2), .A2(port_x3_1), .ZN(n57) );
  NAND2_X1 U154 ( .A1(port_x1_0), .A2(port_x3_0), .ZN(n12) );
  NAND2_X1 U155 ( .A1(port_x1_1), .A2(port_x3_1), .ZN(n30) );
  NAND2_X1 U156 ( .A1(port_x0_1), .A2(port_x3_2), .ZN(n67) );
  NAND2_X1 U157 ( .A1(port_x0_0), .A2(port_x3_1), .ZN(n44) );
  NAND2_X1 U158 ( .A1(port_x3_1), .A2(port_x2_0), .ZN(n34) );
  NAND2_X1 U159 ( .A1(port_x3_2), .A2(port_x2_1), .ZN(n58) );
  NAND2_X1 U160 ( .A1(port_x2_1), .A2(port_x3_0), .ZN(n35) );
  XOR2_X1 U161 ( .A(n72), .B(n73), .Z(N26) );
  XOR2_X1 U162 ( .A(n75), .B(n53), .Z(n72) );
  XOR2_X1 U163 ( .A(n47), .B(n74), .Z(n73) );
  XOR2_X1 U164 ( .A(n54), .B(port_x0_2), .Z(n75) );
  XOR2_X1 U165 ( .A(n14), .B(n15), .Z(N32) );
  XOR2_X1 U166 ( .A(n20), .B(n21), .Z(n14) );
  XOR2_X1 U167 ( .A(n16), .B(n17), .Z(n15) );
  XOR2_X1 U168 ( .A(n22), .B(port_x2_2), .Z(n20) );
  XOR2_X1 U169 ( .A(n5), .B(n6), .Z(N33) );
  XOR2_X1 U170 ( .A(n12), .B(n13), .Z(n5) );
  XOR2_X1 U171 ( .A(n7), .B(n8), .Z(n6) );
  NAND2_X1 U172 ( .A1(port_x2_0), .A2(n11), .ZN(n7) );
  XOR2_X1 U173 ( .A(n23), .B(n24), .Z(N31) );
  XOR2_X1 U174 ( .A(n30), .B(n31), .Z(n23) );
  XOR2_X1 U175 ( .A(n25), .B(n26), .Z(n24) );
  NAND2_X1 U176 ( .A1(port_x2_1), .A2(n29), .ZN(n25) );
  NAND2_X1 U177 ( .A1(port_x0_1), .A2(n4), .ZN(n80) );
  INV_X1 U178 ( .A(port_x3_1), .ZN(n4) );
  NAND2_X1 U179 ( .A1(port_x0_0), .A2(n3), .ZN(n70) );
  INV_X1 U180 ( .A(port_x3_0), .ZN(n3) );
endmodule

