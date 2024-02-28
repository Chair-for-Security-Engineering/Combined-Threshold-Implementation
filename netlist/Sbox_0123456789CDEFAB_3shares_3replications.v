/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:12:00 2023
/////////////////////////////////////////////////////////////


module Sbox_0123456789CDEFAB_3shares_3replications ( port_x0_0, port_x0_1, 
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
  wire   t1_0_0, t1_0_1, t1_0_2, maj_18_port_o, t1_1_0, t1_1_1, t1_1_2,
         maj_19_port_o, t1_2_0, t1_2_1, t1_2_2, maj_20_port_o, maj_21_port_o,
         maj_22_port_o, maj_23_port_o, maj_24_port_o, maj_25_port_o,
         maj_26_port_o, t2_0_0, t2_0_1, t2_0_2, maj_27_port_o, t2_1_0, t2_1_1,
         t2_1_2, maj_28_port_o, t2_2_0, t2_2_1, t2_2_2, maj_29_port_o,
         maj_30_port_o, maj_31_port_o, maj_32_port_o, maj_33_port_o,
         maj_34_port_o, maj_35_port_o, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, maj_18_n3, maj_18_n2, maj_18_n1, maj_19_n6,
         maj_19_n5, maj_19_n4, maj_20_n6, maj_20_n5, maj_20_n4, maj_21_n6,
         maj_21_n5, maj_21_n4, maj_22_n6, maj_22_n5, maj_22_n4, maj_23_n6,
         maj_23_n5, maj_23_n4, maj_24_n6, maj_24_n5, maj_24_n4, maj_25_n6,
         maj_25_n5, maj_25_n4, maj_26_n6, maj_26_n5, maj_26_n4, maj_27_n6,
         maj_27_n5, maj_27_n4, maj_28_n6, maj_28_n5, maj_28_n4, maj_29_n6,
         maj_29_n5, maj_29_n4, maj_30_n6, maj_30_n5, maj_30_n4, maj_31_n6,
         maj_31_n5, maj_31_n4, maj_32_n6, maj_32_n5, maj_32_n4, maj_33_n6,
         maj_33_n5, maj_33_n4, maj_34_n6, maj_34_n5, maj_34_n4, maj_35_n6,
         maj_35_n5, maj_35_n4;

  DFF_X1 reg_y0_0_reg_2_ ( .D(port_x0_1[2]), .CK(clk), .Q(port_y0_0[2]), .QN()
         );
  DFF_X1 reg_y0_0_reg_1_ ( .D(port_x0_1[1]), .CK(clk), .Q(port_y0_0[1]), .QN()
         );
  DFF_X1 reg_y0_0_reg_0_ ( .D(port_x0_1[0]), .CK(clk), .Q(port_y0_0[0]), .QN()
         );
  DFF_X1 reg_y0_1_reg_2_ ( .D(port_x0_2[2]), .CK(clk), .Q(port_y0_1[2]), .QN()
         );
  DFF_X1 reg_y0_1_reg_1_ ( .D(port_x0_2[1]), .CK(clk), .Q(port_y0_1[1]), .QN()
         );
  DFF_X1 reg_y0_1_reg_0_ ( .D(port_x0_2[0]), .CK(clk), .Q(port_y0_1[0]), .QN()
         );
  DFF_X1 reg_y0_2_reg_2_ ( .D(port_x0_0[2]), .CK(clk), .Q(port_y0_2[2]), .QN()
         );
  DFF_X1 reg_y0_2_reg_1_ ( .D(port_x0_0[1]), .CK(clk), .Q(port_y0_2[1]), .QN()
         );
  DFF_X1 reg_y0_2_reg_0_ ( .D(port_x0_0[0]), .CK(clk), .Q(port_y0_2[0]), .QN()
         );
  DFF_X1 reg_y1_0_reg_2_ ( .D(maj_24_port_o), .CK(clk), .Q(port_y1_0[2]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_1_ ( .D(maj_21_port_o), .CK(clk), .Q(port_y1_0[1]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_0_ ( .D(maj_18_port_o), .CK(clk), .Q(port_y1_0[0]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_2_ ( .D(maj_25_port_o), .CK(clk), .Q(port_y1_1[2]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_1_ ( .D(maj_22_port_o), .CK(clk), .Q(port_y1_1[1]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_0_ ( .D(maj_19_port_o), .CK(clk), .Q(port_y1_1[0]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_2_ ( .D(maj_26_port_o), .CK(clk), .Q(port_y1_2[2]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_1_ ( .D(maj_23_port_o), .CK(clk), .Q(port_y1_2[1]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_0_ ( .D(maj_20_port_o), .CK(clk), .Q(port_y1_2[0]), 
        .QN() );
  DFF_X1 reg_y2_0_reg_2_ ( .D(maj_33_port_o), .CK(clk), .Q(port_y2_0[2]), 
        .QN() );
  DFF_X1 reg_y2_0_reg_1_ ( .D(maj_30_port_o), .CK(clk), .Q(port_y2_0[1]), 
        .QN() );
  DFF_X1 reg_y2_0_reg_0_ ( .D(maj_27_port_o), .CK(clk), .Q(port_y2_0[0]), 
        .QN() );
  DFF_X1 reg_y2_1_reg_2_ ( .D(maj_34_port_o), .CK(clk), .Q(port_y2_1[2]), 
        .QN() );
  DFF_X1 reg_y2_1_reg_1_ ( .D(maj_31_port_o), .CK(clk), .Q(port_y2_1[1]), 
        .QN() );
  DFF_X1 reg_y2_1_reg_0_ ( .D(maj_28_port_o), .CK(clk), .Q(port_y2_1[0]), 
        .QN() );
  DFF_X1 reg_y2_2_reg_2_ ( .D(maj_35_port_o), .CK(clk), .Q(port_y2_2[2]), 
        .QN() );
  DFF_X1 reg_y2_2_reg_1_ ( .D(maj_32_port_o), .CK(clk), .Q(port_y2_2[1]), 
        .QN() );
  DFF_X1 reg_y2_2_reg_0_ ( .D(maj_29_port_o), .CK(clk), .Q(port_y2_2[0]), 
        .QN() );
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
  XOR2_X1 U141 ( .A(n17), .B(n18), .Z(t2_2_0) );
  XOR2_X1 U142 ( .A(n12), .B(n13), .Z(t2_2_1) );
  XOR2_X1 U143 ( .A(n28), .B(n29), .Z(t2_1_0) );
  XOR2_X1 U144 ( .A(n41), .B(n42), .Z(t2_0_0) );
  XOR2_X1 U145 ( .A(n36), .B(n37), .Z(t2_0_1) );
  XOR2_X1 U146 ( .A(n62), .B(n63), .Z(t1_2_0) );
  XOR2_X1 U147 ( .A(n54), .B(n55), .Z(t1_2_1) );
  XOR2_X1 U148 ( .A(n88), .B(n89), .Z(t1_1_0) );
  XOR2_X1 U149 ( .A(n79), .B(n80), .Z(t1_1_1) );
  XOR2_X1 U150 ( .A(n113), .B(n114), .Z(t1_0_0) );
  XOR2_X1 U151 ( .A(n105), .B(n106), .Z(t1_0_1) );
  XNOR2_X1 U152 ( .A(port_x2_0[0]), .B(n21), .ZN(n17) );
  XOR2_X1 U153 ( .A(n19), .B(n20), .Z(n18) );
  NAND2_X1 U154 ( .A1(port_x3_0[0]), .A2(port_x1_0[0]), .ZN(n21) );
  XNOR2_X1 U155 ( .A(port_x2_2[0]), .B(n30), .ZN(n28) );
  XNOR2_X1 U156 ( .A(port_x2_1[0]), .B(n45), .ZN(n41) );
  XOR2_X1 U157 ( .A(n43), .B(n44), .Z(n42) );
  NAND2_X1 U158 ( .A1(port_x1_1[0]), .A2(port_x3_1[0]), .ZN(n45) );
  XOR2_X1 U159 ( .A(n66), .B(n67), .Z(n62) );
  XOR2_X1 U160 ( .A(n64), .B(n65), .Z(n63) );
  NAND2_X1 U161 ( .A1(port_x2_0[0]), .A2(port_x3_0[0]), .ZN(n66) );
  XOR2_X1 U162 ( .A(n94), .B(n29), .Z(n88) );
  XOR2_X1 U163 ( .A(n90), .B(n91), .Z(n89) );
  XOR2_X1 U164 ( .A(n30), .B(port_x1_2[0]), .Z(n94) );
  XOR2_X1 U165 ( .A(n117), .B(n118), .Z(n113) );
  XOR2_X1 U166 ( .A(n115), .B(n116), .Z(n114) );
  NAND2_X1 U167 ( .A1(port_x2_1[0]), .A2(port_x3_1[0]), .ZN(n117) );
  XNOR2_X1 U168 ( .A(port_x2_0[1]), .B(n16), .ZN(n12) );
  XOR2_X1 U169 ( .A(n14), .B(n15), .Z(n13) );
  NAND2_X1 U170 ( .A1(port_x3_0[1]), .A2(port_x1_0[1]), .ZN(n16) );
  XNOR2_X1 U171 ( .A(n121), .B(n26), .ZN(t2_1_1) );
  XOR2_X1 U172 ( .A(port_x2_2[1]), .B(n27), .Z(n121) );
  XNOR2_X1 U173 ( .A(port_x2_1[1]), .B(n40), .ZN(n36) );
  XOR2_X1 U174 ( .A(n38), .B(n39), .Z(n37) );
  NAND2_X1 U175 ( .A1(port_x1_1[1]), .A2(port_x3_1[1]), .ZN(n40) );
  XOR2_X1 U176 ( .A(n58), .B(n59), .Z(n54) );
  XOR2_X1 U177 ( .A(n56), .B(n57), .Z(n55) );
  NAND2_X1 U178 ( .A1(port_x2_0[1]), .A2(port_x3_0[1]), .ZN(n58) );
  XOR2_X1 U179 ( .A(n85), .B(n26), .Z(n79) );
  XOR2_X1 U180 ( .A(n81), .B(n82), .Z(n80) );
  XOR2_X1 U181 ( .A(n27), .B(port_x1_2[1]), .Z(n85) );
  XOR2_X1 U182 ( .A(n109), .B(n110), .Z(n105) );
  XOR2_X1 U183 ( .A(n107), .B(n108), .Z(n106) );
  NAND2_X1 U184 ( .A1(port_x2_1[1]), .A2(port_x3_1[1]), .ZN(n109) );
  XOR2_X1 U185 ( .A(n95), .B(n96), .Z(n29) );
  NAND2_X1 U186 ( .A1(port_x1_2[0]), .A2(port_x3_0[0]), .ZN(n95) );
  NAND2_X1 U187 ( .A1(port_x1_2[0]), .A2(port_x3_2[0]), .ZN(n96) );
  XOR2_X1 U188 ( .A(n86), .B(n87), .Z(n26) );
  NAND2_X1 U189 ( .A1(port_x1_2[1]), .A2(port_x3_0[1]), .ZN(n86) );
  NAND2_X1 U190 ( .A1(port_x1_2[1]), .A2(port_x3_2[1]), .ZN(n87) );
  XOR2_X1 U191 ( .A(n77), .B(n78), .Z(n23) );
  NAND2_X1 U192 ( .A1(port_x1_2[2]), .A2(port_x3_0[2]), .ZN(n77) );
  NAND2_X1 U193 ( .A1(port_x1_2[2]), .A2(port_x3_2[2]), .ZN(n78) );
  XOR2_X1 U194 ( .A(n7), .B(n8), .Z(t2_2_2) );
  XNOR2_X1 U195 ( .A(port_x2_0[2]), .B(n11), .ZN(n7) );
  XOR2_X1 U196 ( .A(n9), .B(n10), .Z(n8) );
  NAND2_X1 U197 ( .A1(port_x3_0[2]), .A2(port_x1_0[2]), .ZN(n11) );
  XOR2_X1 U198 ( .A(n22), .B(n23), .Z(t2_1_2) );
  XNOR2_X1 U199 ( .A(port_x2_2[2]), .B(n24), .ZN(n22) );
  XOR2_X1 U200 ( .A(n31), .B(n32), .Z(t2_0_2) );
  XNOR2_X1 U201 ( .A(port_x2_1[2]), .B(n35), .ZN(n31) );
  XOR2_X1 U202 ( .A(n33), .B(n34), .Z(n32) );
  NAND2_X1 U203 ( .A1(port_x1_1[2]), .A2(port_x3_1[2]), .ZN(n35) );
  XOR2_X1 U204 ( .A(n46), .B(n47), .Z(t1_2_2) );
  XOR2_X1 U205 ( .A(n50), .B(n51), .Z(n46) );
  XOR2_X1 U206 ( .A(n48), .B(n49), .Z(n47) );
  NAND2_X1 U207 ( .A1(port_x2_0[2]), .A2(port_x3_0[2]), .ZN(n50) );
  XOR2_X1 U208 ( .A(n70), .B(n71), .Z(t1_1_2) );
  XOR2_X1 U209 ( .A(n76), .B(n23), .Z(n70) );
  XOR2_X1 U210 ( .A(n72), .B(n73), .Z(n71) );
  XOR2_X1 U211 ( .A(n24), .B(port_x1_2[2]), .Z(n76) );
  XOR2_X1 U212 ( .A(n97), .B(n98), .Z(t1_0_2) );
  XOR2_X1 U213 ( .A(n101), .B(n102), .Z(n97) );
  XOR2_X1 U214 ( .A(n99), .B(n100), .Z(n98) );
  NAND2_X1 U215 ( .A1(port_x2_1[2]), .A2(port_x3_1[2]), .ZN(n101) );
  XOR2_X1 U216 ( .A(n20), .B(n68), .Z(n67) );
  NOR2_X1 U217 ( .A1(n3), .A2(n69), .ZN(n68) );
  INV_X1 U218 ( .A(port_x1_0[0]), .ZN(n3) );
  XOR2_X1 U219 ( .A(port_x3_1[0]), .B(port_x3_0[0]), .Z(n69) );
  XOR2_X1 U220 ( .A(n15), .B(n60), .Z(n59) );
  NOR2_X1 U221 ( .A1(n2), .A2(n61), .ZN(n60) );
  INV_X1 U222 ( .A(port_x1_0[1]), .ZN(n2) );
  XOR2_X1 U223 ( .A(port_x3_1[1]), .B(port_x3_0[1]), .Z(n61) );
  XOR2_X1 U224 ( .A(n10), .B(n52), .Z(n51) );
  NOR2_X1 U225 ( .A1(n1), .A2(n53), .ZN(n52) );
  INV_X1 U226 ( .A(port_x1_0[2]), .ZN(n1) );
  XOR2_X1 U227 ( .A(port_x3_1[2]), .B(port_x3_0[2]), .Z(n53) );
  XOR2_X1 U228 ( .A(n44), .B(n119), .Z(n118) );
  NOR2_X1 U229 ( .A1(n6), .A2(n120), .ZN(n119) );
  INV_X1 U230 ( .A(port_x1_1[0]), .ZN(n6) );
  XOR2_X1 U231 ( .A(port_x3_2[0]), .B(port_x3_1[0]), .Z(n120) );
  XOR2_X1 U232 ( .A(n39), .B(n111), .Z(n110) );
  NOR2_X1 U233 ( .A1(n5), .A2(n112), .ZN(n111) );
  INV_X1 U234 ( .A(port_x1_1[1]), .ZN(n5) );
  XOR2_X1 U235 ( .A(port_x3_2[1]), .B(port_x3_1[1]), .Z(n112) );
  XOR2_X1 U236 ( .A(n34), .B(n103), .Z(n102) );
  NOR2_X1 U237 ( .A1(n4), .A2(n104), .ZN(n103) );
  INV_X1 U238 ( .A(port_x1_1[2]), .ZN(n4) );
  XOR2_X1 U239 ( .A(port_x3_2[2]), .B(port_x3_1[2]), .Z(n104) );
  XOR2_X1 U240 ( .A(n92), .B(n93), .Z(n91) );
  NAND2_X1 U241 ( .A1(port_x3_2[0]), .A2(port_x2_0[0]), .ZN(n92) );
  NAND2_X1 U242 ( .A1(port_x2_2[0]), .A2(port_x3_0[0]), .ZN(n93) );
  XOR2_X1 U243 ( .A(n83), .B(n84), .Z(n82) );
  NAND2_X1 U244 ( .A1(port_x3_2[1]), .A2(port_x2_0[1]), .ZN(n83) );
  NAND2_X1 U245 ( .A1(port_x2_2[1]), .A2(port_x3_0[1]), .ZN(n84) );
  XOR2_X1 U246 ( .A(n74), .B(n75), .Z(n73) );
  NAND2_X1 U247 ( .A1(port_x3_2[2]), .A2(port_x2_0[2]), .ZN(n74) );
  NAND2_X1 U248 ( .A1(port_x2_2[2]), .A2(port_x3_0[2]), .ZN(n75) );
  NAND2_X1 U249 ( .A1(port_x1_1[0]), .A2(port_x3_0[0]), .ZN(n20) );
  NAND2_X1 U250 ( .A1(port_x1_1[1]), .A2(port_x3_0[1]), .ZN(n15) );
  NAND2_X1 U251 ( .A1(port_x1_1[2]), .A2(port_x3_0[2]), .ZN(n10) );
  NAND2_X1 U252 ( .A1(port_x1_2[0]), .A2(port_x3_1[0]), .ZN(n44) );
  NAND2_X1 U253 ( .A1(port_x1_2[1]), .A2(port_x3_1[1]), .ZN(n39) );
  NAND2_X1 U254 ( .A1(port_x1_2[2]), .A2(port_x3_1[2]), .ZN(n34) );
  NAND2_X1 U255 ( .A1(port_x3_2[0]), .A2(port_x1_0[0]), .ZN(n30) );
  NAND2_X1 U256 ( .A1(port_x3_2[1]), .A2(port_x1_0[1]), .ZN(n27) );
  NAND2_X1 U257 ( .A1(port_x3_2[2]), .A2(port_x1_0[2]), .ZN(n24) );
  NAND2_X1 U258 ( .A1(port_x2_1[0]), .A2(port_x3_0[0]), .ZN(n65) );
  NAND2_X1 U259 ( .A1(port_x2_1[1]), .A2(port_x3_0[1]), .ZN(n57) );
  NAND2_X1 U260 ( .A1(port_x2_1[2]), .A2(port_x3_0[2]), .ZN(n49) );
  NAND2_X1 U261 ( .A1(port_x2_2[0]), .A2(port_x3_1[0]), .ZN(n116) );
  NAND2_X1 U262 ( .A1(port_x2_2[1]), .A2(port_x3_1[1]), .ZN(n108) );
  NAND2_X1 U263 ( .A1(port_x2_2[2]), .A2(port_x3_1[2]), .ZN(n100) );
  NAND2_X1 U264 ( .A1(port_x3_1[0]), .A2(port_x1_0[0]), .ZN(n19) );
  NAND2_X1 U265 ( .A1(port_x3_1[1]), .A2(port_x1_0[1]), .ZN(n14) );
  NAND2_X1 U266 ( .A1(port_x3_1[2]), .A2(port_x1_0[2]), .ZN(n9) );
  NAND2_X1 U267 ( .A1(port_x3_2[0]), .A2(port_x1_1[0]), .ZN(n43) );
  NAND2_X1 U268 ( .A1(port_x3_2[1]), .A2(port_x1_1[1]), .ZN(n38) );
  NAND2_X1 U269 ( .A1(port_x3_2[2]), .A2(port_x1_1[2]), .ZN(n33) );
  NAND2_X1 U270 ( .A1(port_x3_1[0]), .A2(port_x2_0[0]), .ZN(n64) );
  NAND2_X1 U271 ( .A1(port_x3_1[1]), .A2(port_x2_0[1]), .ZN(n56) );
  NAND2_X1 U272 ( .A1(port_x3_1[2]), .A2(port_x2_0[2]), .ZN(n48) );
  NAND2_X1 U273 ( .A1(port_x2_2[0]), .A2(port_x3_2[0]), .ZN(n90) );
  NAND2_X1 U274 ( .A1(port_x2_2[1]), .A2(port_x3_2[1]), .ZN(n81) );
  NAND2_X1 U275 ( .A1(port_x2_2[2]), .A2(port_x3_2[2]), .ZN(n72) );
  NAND2_X1 U276 ( .A1(port_x2_1[0]), .A2(port_x3_2[0]), .ZN(n115) );
  NAND2_X1 U277 ( .A1(port_x2_1[1]), .A2(port_x3_2[1]), .ZN(n107) );
  NAND2_X1 U278 ( .A1(port_x2_1[2]), .A2(port_x3_2[2]), .ZN(n99) );
  OR2_X1 maj_18_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_18_n3) );
  NAND2_X1 maj_18_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_18_n1) );
  NAND2_X1 maj_18_U2 ( .A1(t1_0_2), .A2(maj_18_n3), .ZN(maj_18_n2) );
  NAND2_X1 maj_18_U1 ( .A1(maj_18_n1), .A2(maj_18_n2), .ZN(maj_18_port_o) );
  OR2_X1 maj_19_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_19_n4) );
  NAND2_X1 maj_19_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_19_n6) );
  NAND2_X1 maj_19_U2 ( .A1(t1_1_2), .A2(maj_19_n4), .ZN(maj_19_n5) );
  NAND2_X1 maj_19_U1 ( .A1(maj_19_n6), .A2(maj_19_n5), .ZN(maj_19_port_o) );
  OR2_X1 maj_20_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_20_n4) );
  NAND2_X1 maj_20_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_20_n6) );
  NAND2_X1 maj_20_U2 ( .A1(t1_2_2), .A2(maj_20_n4), .ZN(maj_20_n5) );
  NAND2_X1 maj_20_U1 ( .A1(maj_20_n6), .A2(maj_20_n5), .ZN(maj_20_port_o) );
  OR2_X1 maj_21_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_21_n4) );
  NAND2_X1 maj_21_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_21_n6) );
  NAND2_X1 maj_21_U2 ( .A1(t1_0_2), .A2(maj_21_n4), .ZN(maj_21_n5) );
  NAND2_X1 maj_21_U1 ( .A1(maj_21_n6), .A2(maj_21_n5), .ZN(maj_21_port_o) );
  OR2_X1 maj_22_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_22_n4) );
  NAND2_X1 maj_22_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_22_n6) );
  NAND2_X1 maj_22_U2 ( .A1(t1_1_2), .A2(maj_22_n4), .ZN(maj_22_n5) );
  NAND2_X1 maj_22_U1 ( .A1(maj_22_n6), .A2(maj_22_n5), .ZN(maj_22_port_o) );
  OR2_X1 maj_23_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_23_n4) );
  NAND2_X1 maj_23_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_23_n6) );
  NAND2_X1 maj_23_U2 ( .A1(t1_2_2), .A2(maj_23_n4), .ZN(maj_23_n5) );
  NAND2_X1 maj_23_U1 ( .A1(maj_23_n6), .A2(maj_23_n5), .ZN(maj_23_port_o) );
  OR2_X1 maj_24_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_24_n4) );
  NAND2_X1 maj_24_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_24_n6) );
  NAND2_X1 maj_24_U2 ( .A1(t1_0_2), .A2(maj_24_n4), .ZN(maj_24_n5) );
  NAND2_X1 maj_24_U1 ( .A1(maj_24_n6), .A2(maj_24_n5), .ZN(maj_24_port_o) );
  OR2_X1 maj_25_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_25_n4) );
  NAND2_X1 maj_25_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_25_n6) );
  NAND2_X1 maj_25_U2 ( .A1(t1_1_2), .A2(maj_25_n4), .ZN(maj_25_n5) );
  NAND2_X1 maj_25_U1 ( .A1(maj_25_n6), .A2(maj_25_n5), .ZN(maj_25_port_o) );
  OR2_X1 maj_26_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_26_n4) );
  NAND2_X1 maj_26_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_26_n6) );
  NAND2_X1 maj_26_U2 ( .A1(t1_2_2), .A2(maj_26_n4), .ZN(maj_26_n5) );
  NAND2_X1 maj_26_U1 ( .A1(maj_26_n6), .A2(maj_26_n5), .ZN(maj_26_port_o) );
  OR2_X1 maj_27_U4 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_27_n4) );
  NAND2_X1 maj_27_U3 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_27_n6) );
  NAND2_X1 maj_27_U2 ( .A1(t2_0_2), .A2(maj_27_n4), .ZN(maj_27_n5) );
  NAND2_X1 maj_27_U1 ( .A1(maj_27_n6), .A2(maj_27_n5), .ZN(maj_27_port_o) );
  OR2_X1 maj_28_U4 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_28_n4) );
  NAND2_X1 maj_28_U3 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_28_n6) );
  NAND2_X1 maj_28_U2 ( .A1(t2_1_2), .A2(maj_28_n4), .ZN(maj_28_n5) );
  NAND2_X1 maj_28_U1 ( .A1(maj_28_n6), .A2(maj_28_n5), .ZN(maj_28_port_o) );
  OR2_X1 maj_29_U4 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_29_n4) );
  NAND2_X1 maj_29_U3 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_29_n6) );
  NAND2_X1 maj_29_U2 ( .A1(t2_2_2), .A2(maj_29_n4), .ZN(maj_29_n5) );
  NAND2_X1 maj_29_U1 ( .A1(maj_29_n6), .A2(maj_29_n5), .ZN(maj_29_port_o) );
  OR2_X1 maj_30_U4 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_30_n4) );
  NAND2_X1 maj_30_U3 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_30_n6) );
  NAND2_X1 maj_30_U2 ( .A1(t2_0_2), .A2(maj_30_n4), .ZN(maj_30_n5) );
  NAND2_X1 maj_30_U1 ( .A1(maj_30_n6), .A2(maj_30_n5), .ZN(maj_30_port_o) );
  OR2_X1 maj_31_U4 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_31_n4) );
  NAND2_X1 maj_31_U3 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_31_n6) );
  NAND2_X1 maj_31_U2 ( .A1(t2_1_2), .A2(maj_31_n4), .ZN(maj_31_n5) );
  NAND2_X1 maj_31_U1 ( .A1(maj_31_n6), .A2(maj_31_n5), .ZN(maj_31_port_o) );
  OR2_X1 maj_32_U4 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_32_n4) );
  NAND2_X1 maj_32_U3 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_32_n6) );
  NAND2_X1 maj_32_U2 ( .A1(t2_2_2), .A2(maj_32_n4), .ZN(maj_32_n5) );
  NAND2_X1 maj_32_U1 ( .A1(maj_32_n6), .A2(maj_32_n5), .ZN(maj_32_port_o) );
  OR2_X1 maj_33_U4 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_33_n4) );
  NAND2_X1 maj_33_U3 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_33_n6) );
  NAND2_X1 maj_33_U2 ( .A1(t2_0_2), .A2(maj_33_n4), .ZN(maj_33_n5) );
  NAND2_X1 maj_33_U1 ( .A1(maj_33_n6), .A2(maj_33_n5), .ZN(maj_33_port_o) );
  OR2_X1 maj_34_U4 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_34_n4) );
  NAND2_X1 maj_34_U3 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_34_n6) );
  NAND2_X1 maj_34_U2 ( .A1(t2_1_2), .A2(maj_34_n4), .ZN(maj_34_n5) );
  NAND2_X1 maj_34_U1 ( .A1(maj_34_n6), .A2(maj_34_n5), .ZN(maj_34_port_o) );
  OR2_X1 maj_35_U4 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_35_n4) );
  NAND2_X1 maj_35_U3 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_35_n6) );
  NAND2_X1 maj_35_U2 ( .A1(t2_2_2), .A2(maj_35_n4), .ZN(maj_35_n5) );
  NAND2_X1 maj_35_U1 ( .A1(maj_35_n6), .A2(maj_35_n5), .ZN(maj_35_port_o) );
endmodule

