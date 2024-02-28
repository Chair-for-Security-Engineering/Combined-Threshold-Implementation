/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:13:57 2023
/////////////////////////////////////////////////////////////


module Sbox_0123456789BAEFDC_3shares_3replications ( port_x0_0, port_x0_1, 
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
  wire   t0_0_0, t0_0_1, t0_0_2, maj_18_port_o, t0_1_0, t0_1_1, t0_1_2,
         maj_19_port_o, t0_2_0, t0_2_1, t0_2_2, maj_20_port_o, maj_21_port_o,
         maj_22_port_o, maj_23_port_o, maj_24_port_o, maj_25_port_o,
         maj_26_port_o, t1_0_0, t1_0_1, t1_0_2, maj_27_port_o, t1_1_0, t1_1_1,
         t1_1_2, maj_28_port_o, t1_2_0, t1_2_1, t1_2_2, maj_29_port_o,
         maj_30_port_o, maj_31_port_o, maj_32_port_o, maj_33_port_o,
         maj_34_port_o, maj_35_port_o, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, maj_18_n3,
         maj_18_n2, maj_18_n1, maj_19_n6, maj_19_n5, maj_19_n4, maj_20_n6,
         maj_20_n5, maj_20_n4, maj_21_n6, maj_21_n5, maj_21_n4, maj_22_n6,
         maj_22_n5, maj_22_n4, maj_23_n6, maj_23_n5, maj_23_n4, maj_24_n6,
         maj_24_n5, maj_24_n4, maj_25_n6, maj_25_n5, maj_25_n4, maj_26_n6,
         maj_26_n5, maj_26_n4, maj_27_n6, maj_27_n5, maj_27_n4, maj_28_n6,
         maj_28_n5, maj_28_n4, maj_29_n6, maj_29_n5, maj_29_n4, maj_30_n6,
         maj_30_n5, maj_30_n4, maj_31_n6, maj_31_n5, maj_31_n4, maj_32_n6,
         maj_32_n5, maj_32_n4, maj_33_n6, maj_33_n5, maj_33_n4, maj_34_n6,
         maj_34_n5, maj_34_n4, maj_35_n6, maj_35_n5, maj_35_n4;

  DFF_X1 reg_y0_0_reg_2_ ( .D(maj_24_port_o), .CK(clk), .Q(port_y0_0[2]), 
        .QN() );
  DFF_X1 reg_y0_0_reg_1_ ( .D(maj_21_port_o), .CK(clk), .Q(port_y0_0[1]), 
        .QN() );
  DFF_X1 reg_y0_0_reg_0_ ( .D(maj_18_port_o), .CK(clk), .Q(port_y0_0[0]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_2_ ( .D(maj_25_port_o), .CK(clk), .Q(port_y0_1[2]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_1_ ( .D(maj_22_port_o), .CK(clk), .Q(port_y0_1[1]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_0_ ( .D(maj_19_port_o), .CK(clk), .Q(port_y0_1[0]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_2_ ( .D(maj_26_port_o), .CK(clk), .Q(port_y0_2[2]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_1_ ( .D(maj_23_port_o), .CK(clk), .Q(port_y0_2[1]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_0_ ( .D(maj_20_port_o), .CK(clk), .Q(port_y0_2[0]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_2_ ( .D(maj_33_port_o), .CK(clk), .Q(port_y1_0[2]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_1_ ( .D(maj_30_port_o), .CK(clk), .Q(port_y1_0[1]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_0_ ( .D(maj_27_port_o), .CK(clk), .Q(port_y1_0[0]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_2_ ( .D(maj_34_port_o), .CK(clk), .Q(port_y1_1[2]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_1_ ( .D(maj_31_port_o), .CK(clk), .Q(port_y1_1[1]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_0_ ( .D(maj_28_port_o), .CK(clk), .Q(port_y1_1[0]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_2_ ( .D(maj_35_port_o), .CK(clk), .Q(port_y1_2[2]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_1_ ( .D(maj_32_port_o), .CK(clk), .Q(port_y1_2[1]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_0_ ( .D(maj_29_port_o), .CK(clk), .Q(port_y1_2[0]), 
        .QN() );
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
  XOR2_X1 U111 ( .A(n11), .B(n12), .Z(t1_2_0) );
  XOR2_X1 U112 ( .A(n6), .B(n7), .Z(t1_2_1) );
  XOR2_X1 U113 ( .A(n26), .B(n27), .Z(t1_1_0) );
  XOR2_X1 U114 ( .A(n21), .B(n22), .Z(t1_1_1) );
  XOR2_X1 U115 ( .A(n41), .B(n42), .Z(t1_0_0) );
  XOR2_X1 U116 ( .A(n36), .B(n37), .Z(t1_0_1) );
  XOR2_X1 U117 ( .A(n56), .B(n57), .Z(t0_2_0) );
  XOR2_X1 U118 ( .A(n51), .B(n52), .Z(t0_2_1) );
  XOR2_X1 U119 ( .A(n71), .B(n72), .Z(t0_1_0) );
  XOR2_X1 U120 ( .A(n66), .B(n67), .Z(t0_1_1) );
  XOR2_X1 U121 ( .A(n86), .B(n87), .Z(t0_0_0) );
  XOR2_X1 U122 ( .A(n81), .B(n82), .Z(t0_0_1) );
  XNOR2_X1 U123 ( .A(port_x1_0[0]), .B(n15), .ZN(n11) );
  XOR2_X1 U124 ( .A(n13), .B(n14), .Z(n12) );
  NAND2_X1 U125 ( .A1(port_x3_0[0]), .A2(port_x2_0[0]), .ZN(n15) );
  XNOR2_X1 U126 ( .A(port_x1_2[0]), .B(n30), .ZN(n26) );
  XOR2_X1 U127 ( .A(n28), .B(n29), .Z(n27) );
  NAND2_X1 U128 ( .A1(port_x3_2[0]), .A2(port_x2_0[0]), .ZN(n30) );
  XNOR2_X1 U129 ( .A(port_x1_1[0]), .B(n45), .ZN(n41) );
  XOR2_X1 U130 ( .A(n43), .B(n44), .Z(n42) );
  NAND2_X1 U131 ( .A1(port_x2_1[0]), .A2(port_x3_1[0]), .ZN(n45) );
  XOR2_X1 U132 ( .A(n60), .B(port_x0_0[0]), .Z(n56) );
  XOR2_X1 U133 ( .A(n58), .B(n59), .Z(n57) );
  NAND2_X1 U134 ( .A1(port_x1_0[0]), .A2(port_x3_0[0]), .ZN(n60) );
  XOR2_X1 U135 ( .A(n75), .B(port_x0_2[0]), .Z(n71) );
  XOR2_X1 U136 ( .A(n73), .B(n74), .Z(n72) );
  NAND2_X1 U137 ( .A1(port_x3_2[0]), .A2(port_x1_0[0]), .ZN(n75) );
  XOR2_X1 U138 ( .A(n90), .B(port_x0_1[0]), .Z(n86) );
  XOR2_X1 U139 ( .A(n88), .B(n89), .Z(n87) );
  NAND2_X1 U140 ( .A1(port_x1_1[0]), .A2(port_x3_1[0]), .ZN(n90) );
  XNOR2_X1 U141 ( .A(port_x1_0[1]), .B(n10), .ZN(n6) );
  XOR2_X1 U142 ( .A(n8), .B(n9), .Z(n7) );
  NAND2_X1 U143 ( .A1(port_x3_0[1]), .A2(port_x2_0[1]), .ZN(n10) );
  XNOR2_X1 U144 ( .A(port_x1_2[1]), .B(n25), .ZN(n21) );
  XOR2_X1 U145 ( .A(n23), .B(n24), .Z(n22) );
  NAND2_X1 U146 ( .A1(port_x3_2[1]), .A2(port_x2_0[1]), .ZN(n25) );
  XNOR2_X1 U147 ( .A(port_x1_1[1]), .B(n40), .ZN(n36) );
  XOR2_X1 U148 ( .A(n38), .B(n39), .Z(n37) );
  NAND2_X1 U149 ( .A1(port_x2_1[1]), .A2(port_x3_1[1]), .ZN(n40) );
  XOR2_X1 U150 ( .A(n55), .B(port_x0_0[1]), .Z(n51) );
  XOR2_X1 U151 ( .A(n53), .B(n54), .Z(n52) );
  NAND2_X1 U152 ( .A1(port_x1_0[1]), .A2(port_x3_0[1]), .ZN(n55) );
  XOR2_X1 U153 ( .A(n70), .B(port_x0_2[1]), .Z(n66) );
  XOR2_X1 U154 ( .A(n68), .B(n69), .Z(n67) );
  NAND2_X1 U155 ( .A1(port_x3_2[1]), .A2(port_x1_0[1]), .ZN(n70) );
  XOR2_X1 U156 ( .A(n85), .B(port_x0_1[1]), .Z(n81) );
  XOR2_X1 U157 ( .A(n83), .B(n84), .Z(n82) );
  NAND2_X1 U158 ( .A1(port_x1_1[1]), .A2(port_x3_1[1]), .ZN(n85) );
  XOR2_X1 U159 ( .A(n1), .B(n2), .Z(t1_2_2) );
  XNOR2_X1 U160 ( .A(port_x1_0[2]), .B(n5), .ZN(n1) );
  XOR2_X1 U161 ( .A(n3), .B(n4), .Z(n2) );
  NAND2_X1 U162 ( .A1(port_x3_0[2]), .A2(port_x2_0[2]), .ZN(n5) );
  XOR2_X1 U163 ( .A(n16), .B(n17), .Z(t1_1_2) );
  XNOR2_X1 U164 ( .A(port_x1_2[2]), .B(n20), .ZN(n16) );
  XOR2_X1 U165 ( .A(n18), .B(n19), .Z(n17) );
  NAND2_X1 U166 ( .A1(port_x3_2[2]), .A2(port_x2_0[2]), .ZN(n20) );
  XOR2_X1 U167 ( .A(n31), .B(n32), .Z(t1_0_2) );
  XNOR2_X1 U168 ( .A(port_x1_1[2]), .B(n35), .ZN(n31) );
  XOR2_X1 U169 ( .A(n33), .B(n34), .Z(n32) );
  NAND2_X1 U170 ( .A1(port_x2_1[2]), .A2(port_x3_1[2]), .ZN(n35) );
  XOR2_X1 U171 ( .A(n46), .B(n47), .Z(t0_2_2) );
  XOR2_X1 U172 ( .A(n50), .B(port_x0_0[2]), .Z(n46) );
  XOR2_X1 U173 ( .A(n48), .B(n49), .Z(n47) );
  NAND2_X1 U174 ( .A1(port_x1_0[2]), .A2(port_x3_0[2]), .ZN(n50) );
  XOR2_X1 U175 ( .A(n61), .B(n62), .Z(t0_1_2) );
  XOR2_X1 U176 ( .A(n65), .B(port_x0_2[2]), .Z(n61) );
  XOR2_X1 U177 ( .A(n63), .B(n64), .Z(n62) );
  NAND2_X1 U178 ( .A1(port_x3_2[2]), .A2(port_x1_0[2]), .ZN(n65) );
  XOR2_X1 U179 ( .A(n76), .B(n77), .Z(t0_0_2) );
  XOR2_X1 U180 ( .A(n80), .B(port_x0_1[2]), .Z(n76) );
  XOR2_X1 U181 ( .A(n78), .B(n79), .Z(n77) );
  NAND2_X1 U182 ( .A1(port_x1_1[2]), .A2(port_x3_1[2]), .ZN(n80) );
  NAND2_X1 U183 ( .A1(port_x2_1[0]), .A2(port_x3_0[0]), .ZN(n14) );
  NAND2_X1 U184 ( .A1(port_x2_1[1]), .A2(port_x3_0[1]), .ZN(n9) );
  NAND2_X1 U185 ( .A1(port_x2_1[2]), .A2(port_x3_0[2]), .ZN(n4) );
  NAND2_X1 U186 ( .A1(port_x2_2[0]), .A2(port_x3_2[0]), .ZN(n29) );
  NAND2_X1 U187 ( .A1(port_x2_2[1]), .A2(port_x3_2[1]), .ZN(n24) );
  NAND2_X1 U188 ( .A1(port_x2_2[2]), .A2(port_x3_2[2]), .ZN(n19) );
  NAND2_X1 U189 ( .A1(port_x2_2[0]), .A2(port_x3_1[0]), .ZN(n44) );
  NAND2_X1 U190 ( .A1(port_x2_2[1]), .A2(port_x3_1[1]), .ZN(n39) );
  NAND2_X1 U191 ( .A1(port_x2_2[2]), .A2(port_x3_1[2]), .ZN(n34) );
  NAND2_X1 U192 ( .A1(port_x3_1[0]), .A2(port_x2_0[0]), .ZN(n13) );
  NAND2_X1 U193 ( .A1(port_x3_1[1]), .A2(port_x2_0[1]), .ZN(n8) );
  NAND2_X1 U194 ( .A1(port_x3_1[2]), .A2(port_x2_0[2]), .ZN(n3) );
  NAND2_X1 U195 ( .A1(port_x2_2[0]), .A2(port_x3_0[0]), .ZN(n28) );
  NAND2_X1 U196 ( .A1(port_x2_2[1]), .A2(port_x3_0[1]), .ZN(n23) );
  NAND2_X1 U197 ( .A1(port_x2_2[2]), .A2(port_x3_0[2]), .ZN(n18) );
  NAND2_X1 U198 ( .A1(port_x3_2[0]), .A2(port_x2_1[0]), .ZN(n43) );
  NAND2_X1 U199 ( .A1(port_x3_2[1]), .A2(port_x2_1[1]), .ZN(n38) );
  NAND2_X1 U200 ( .A1(port_x3_2[2]), .A2(port_x2_1[2]), .ZN(n33) );
  NAND2_X1 U201 ( .A1(port_x3_1[0]), .A2(port_x1_0[0]), .ZN(n58) );
  NAND2_X1 U202 ( .A1(port_x3_1[1]), .A2(port_x1_0[1]), .ZN(n53) );
  NAND2_X1 U203 ( .A1(port_x3_1[2]), .A2(port_x1_0[2]), .ZN(n48) );
  NAND2_X1 U204 ( .A1(port_x1_2[0]), .A2(port_x3_2[0]), .ZN(n73) );
  NAND2_X1 U205 ( .A1(port_x1_2[1]), .A2(port_x3_2[1]), .ZN(n68) );
  NAND2_X1 U206 ( .A1(port_x1_2[2]), .A2(port_x3_2[2]), .ZN(n63) );
  NAND2_X1 U207 ( .A1(port_x1_2[0]), .A2(port_x3_1[0]), .ZN(n88) );
  NAND2_X1 U208 ( .A1(port_x1_2[1]), .A2(port_x3_1[1]), .ZN(n83) );
  NAND2_X1 U209 ( .A1(port_x1_2[2]), .A2(port_x3_1[2]), .ZN(n78) );
  AND2_X1 U210 ( .A1(port_x3_0[0]), .A2(port_x1_1[0]), .ZN(n59) );
  AND2_X1 U211 ( .A1(port_x3_0[1]), .A2(port_x1_1[1]), .ZN(n54) );
  AND2_X1 U212 ( .A1(port_x3_0[2]), .A2(port_x1_1[2]), .ZN(n49) );
  AND2_X1 U213 ( .A1(port_x3_0[0]), .A2(port_x1_2[0]), .ZN(n74) );
  AND2_X1 U214 ( .A1(port_x3_0[1]), .A2(port_x1_2[1]), .ZN(n69) );
  AND2_X1 U215 ( .A1(port_x3_0[2]), .A2(port_x1_2[2]), .ZN(n64) );
  AND2_X1 U216 ( .A1(port_x3_2[0]), .A2(port_x1_1[0]), .ZN(n89) );
  AND2_X1 U217 ( .A1(port_x3_2[1]), .A2(port_x1_1[1]), .ZN(n84) );
  AND2_X1 U218 ( .A1(port_x3_2[2]), .A2(port_x1_1[2]), .ZN(n79) );
  OR2_X1 maj_18_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_18_n3) );
  NAND2_X1 maj_18_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_18_n1) );
  NAND2_X1 maj_18_U2 ( .A1(t0_0_2), .A2(maj_18_n3), .ZN(maj_18_n2) );
  NAND2_X1 maj_18_U1 ( .A1(maj_18_n1), .A2(maj_18_n2), .ZN(maj_18_port_o) );
  OR2_X1 maj_19_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_19_n4) );
  NAND2_X1 maj_19_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_19_n6) );
  NAND2_X1 maj_19_U2 ( .A1(t0_1_2), .A2(maj_19_n4), .ZN(maj_19_n5) );
  NAND2_X1 maj_19_U1 ( .A1(maj_19_n6), .A2(maj_19_n5), .ZN(maj_19_port_o) );
  OR2_X1 maj_20_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_20_n4) );
  NAND2_X1 maj_20_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_20_n6) );
  NAND2_X1 maj_20_U2 ( .A1(t0_2_2), .A2(maj_20_n4), .ZN(maj_20_n5) );
  NAND2_X1 maj_20_U1 ( .A1(maj_20_n6), .A2(maj_20_n5), .ZN(maj_20_port_o) );
  OR2_X1 maj_21_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_21_n4) );
  NAND2_X1 maj_21_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_21_n6) );
  NAND2_X1 maj_21_U2 ( .A1(t0_0_2), .A2(maj_21_n4), .ZN(maj_21_n5) );
  NAND2_X1 maj_21_U1 ( .A1(maj_21_n6), .A2(maj_21_n5), .ZN(maj_21_port_o) );
  OR2_X1 maj_22_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_22_n4) );
  NAND2_X1 maj_22_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_22_n6) );
  NAND2_X1 maj_22_U2 ( .A1(t0_1_2), .A2(maj_22_n4), .ZN(maj_22_n5) );
  NAND2_X1 maj_22_U1 ( .A1(maj_22_n6), .A2(maj_22_n5), .ZN(maj_22_port_o) );
  OR2_X1 maj_23_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_23_n4) );
  NAND2_X1 maj_23_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_23_n6) );
  NAND2_X1 maj_23_U2 ( .A1(t0_2_2), .A2(maj_23_n4), .ZN(maj_23_n5) );
  NAND2_X1 maj_23_U1 ( .A1(maj_23_n6), .A2(maj_23_n5), .ZN(maj_23_port_o) );
  OR2_X1 maj_24_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_24_n4) );
  NAND2_X1 maj_24_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_24_n6) );
  NAND2_X1 maj_24_U2 ( .A1(t0_0_2), .A2(maj_24_n4), .ZN(maj_24_n5) );
  NAND2_X1 maj_24_U1 ( .A1(maj_24_n6), .A2(maj_24_n5), .ZN(maj_24_port_o) );
  OR2_X1 maj_25_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_25_n4) );
  NAND2_X1 maj_25_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_25_n6) );
  NAND2_X1 maj_25_U2 ( .A1(t0_1_2), .A2(maj_25_n4), .ZN(maj_25_n5) );
  NAND2_X1 maj_25_U1 ( .A1(maj_25_n6), .A2(maj_25_n5), .ZN(maj_25_port_o) );
  OR2_X1 maj_26_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_26_n4) );
  NAND2_X1 maj_26_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_26_n6) );
  NAND2_X1 maj_26_U2 ( .A1(t0_2_2), .A2(maj_26_n4), .ZN(maj_26_n5) );
  NAND2_X1 maj_26_U1 ( .A1(maj_26_n6), .A2(maj_26_n5), .ZN(maj_26_port_o) );
  OR2_X1 maj_27_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_27_n4) );
  NAND2_X1 maj_27_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_27_n6) );
  NAND2_X1 maj_27_U2 ( .A1(t1_0_2), .A2(maj_27_n4), .ZN(maj_27_n5) );
  NAND2_X1 maj_27_U1 ( .A1(maj_27_n6), .A2(maj_27_n5), .ZN(maj_27_port_o) );
  OR2_X1 maj_28_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_28_n4) );
  NAND2_X1 maj_28_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_28_n6) );
  NAND2_X1 maj_28_U2 ( .A1(t1_1_2), .A2(maj_28_n4), .ZN(maj_28_n5) );
  NAND2_X1 maj_28_U1 ( .A1(maj_28_n6), .A2(maj_28_n5), .ZN(maj_28_port_o) );
  OR2_X1 maj_29_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_29_n4) );
  NAND2_X1 maj_29_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_29_n6) );
  NAND2_X1 maj_29_U2 ( .A1(t1_2_2), .A2(maj_29_n4), .ZN(maj_29_n5) );
  NAND2_X1 maj_29_U1 ( .A1(maj_29_n6), .A2(maj_29_n5), .ZN(maj_29_port_o) );
  OR2_X1 maj_30_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_30_n4) );
  NAND2_X1 maj_30_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_30_n6) );
  NAND2_X1 maj_30_U2 ( .A1(t1_0_2), .A2(maj_30_n4), .ZN(maj_30_n5) );
  NAND2_X1 maj_30_U1 ( .A1(maj_30_n6), .A2(maj_30_n5), .ZN(maj_30_port_o) );
  OR2_X1 maj_31_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_31_n4) );
  NAND2_X1 maj_31_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_31_n6) );
  NAND2_X1 maj_31_U2 ( .A1(t1_1_2), .A2(maj_31_n4), .ZN(maj_31_n5) );
  NAND2_X1 maj_31_U1 ( .A1(maj_31_n6), .A2(maj_31_n5), .ZN(maj_31_port_o) );
  OR2_X1 maj_32_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_32_n4) );
  NAND2_X1 maj_32_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_32_n6) );
  NAND2_X1 maj_32_U2 ( .A1(t1_2_2), .A2(maj_32_n4), .ZN(maj_32_n5) );
  NAND2_X1 maj_32_U1 ( .A1(maj_32_n6), .A2(maj_32_n5), .ZN(maj_32_port_o) );
  OR2_X1 maj_33_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_33_n4) );
  NAND2_X1 maj_33_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_33_n6) );
  NAND2_X1 maj_33_U2 ( .A1(t1_0_2), .A2(maj_33_n4), .ZN(maj_33_n5) );
  NAND2_X1 maj_33_U1 ( .A1(maj_33_n6), .A2(maj_33_n5), .ZN(maj_33_port_o) );
  OR2_X1 maj_34_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_34_n4) );
  NAND2_X1 maj_34_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_34_n6) );
  NAND2_X1 maj_34_U2 ( .A1(t1_1_2), .A2(maj_34_n4), .ZN(maj_34_n5) );
  NAND2_X1 maj_34_U1 ( .A1(maj_34_n6), .A2(maj_34_n5), .ZN(maj_34_port_o) );
  OR2_X1 maj_35_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_35_n4) );
  NAND2_X1 maj_35_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_35_n6) );
  NAND2_X1 maj_35_U2 ( .A1(t1_2_2), .A2(maj_35_n4), .ZN(maj_35_n5) );
  NAND2_X1 maj_35_U1 ( .A1(maj_35_n6), .A2(maj_35_n5), .ZN(maj_35_port_o) );
endmodule

