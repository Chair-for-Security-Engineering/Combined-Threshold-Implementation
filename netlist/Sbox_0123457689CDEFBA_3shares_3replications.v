/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:13:19 2023
/////////////////////////////////////////////////////////////


module Sbox_0123457689CDEFBA_3shares_3replications ( port_x0_0, port_x0_1, 
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
  wire   t0_0_0, t0_0_1, t0_0_2, maj_27_port_o, t0_1_0, t0_1_1, t0_1_2,
         maj_28_port_o, t0_2_0, t0_2_1, t0_2_2, maj_29_port_o, maj_30_port_o,
         maj_31_port_o, maj_32_port_o, maj_33_port_o, maj_34_port_o,
         maj_35_port_o, t1_0_0, t1_0_1, t1_0_2, maj_36_port_o, t1_1_0, t1_1_1,
         t1_1_2, maj_37_port_o, t1_2_0, t1_2_1, t1_2_2, maj_38_port_o,
         maj_39_port_o, maj_40_port_o, maj_41_port_o, maj_42_port_o,
         maj_43_port_o, maj_44_port_o, t2_0_0, t2_0_1, t2_0_2, maj_45_port_o,
         t2_1_0, t2_1_1, t2_1_2, maj_46_port_o, t2_2_0, t2_2_1, t2_2_2,
         maj_47_port_o, maj_48_port_o, maj_49_port_o, maj_50_port_o,
         maj_51_port_o, maj_52_port_o, maj_53_port_o, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, maj_27_n3, maj_27_n2,
         maj_27_n1, maj_28_n6, maj_28_n5, maj_28_n4, maj_29_n6, maj_29_n5,
         maj_29_n4, maj_30_n6, maj_30_n5, maj_30_n4, maj_31_n6, maj_31_n5,
         maj_31_n4, maj_32_n6, maj_32_n5, maj_32_n4, maj_33_n6, maj_33_n5,
         maj_33_n4, maj_34_n6, maj_34_n5, maj_34_n4, maj_35_n6, maj_35_n5,
         maj_35_n4, maj_36_n6, maj_36_n5, maj_36_n4, maj_37_n6, maj_37_n5,
         maj_37_n4, maj_38_n6, maj_38_n5, maj_38_n4, maj_39_n6, maj_39_n5,
         maj_39_n4, maj_40_n6, maj_40_n5, maj_40_n4, maj_41_n6, maj_41_n5,
         maj_41_n4, maj_42_n6, maj_42_n5, maj_42_n4, maj_43_n6, maj_43_n5,
         maj_43_n4, maj_44_n6, maj_44_n5, maj_44_n4, maj_45_n6, maj_45_n5,
         maj_45_n4, maj_46_n6, maj_46_n5, maj_46_n4, maj_47_n6, maj_47_n5,
         maj_47_n4, maj_48_n6, maj_48_n5, maj_48_n4, maj_49_n6, maj_49_n5,
         maj_49_n4, maj_50_n6, maj_50_n5, maj_50_n4, maj_51_n6, maj_51_n5,
         maj_51_n4, maj_52_n6, maj_52_n5, maj_52_n4, maj_53_n6, maj_53_n5,
         maj_53_n4;

  DFF_X1 reg_y0_0_reg_2_ ( .D(maj_33_port_o), .CK(clk), .Q(port_y0_0[2]), 
        .QN() );
  DFF_X1 reg_y0_0_reg_1_ ( .D(maj_30_port_o), .CK(clk), .Q(port_y0_0[1]), 
        .QN() );
  DFF_X1 reg_y0_0_reg_0_ ( .D(maj_27_port_o), .CK(clk), .Q(port_y0_0[0]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_2_ ( .D(maj_34_port_o), .CK(clk), .Q(port_y0_1[2]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_1_ ( .D(maj_31_port_o), .CK(clk), .Q(port_y0_1[1]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_0_ ( .D(maj_28_port_o), .CK(clk), .Q(port_y0_1[0]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_2_ ( .D(maj_35_port_o), .CK(clk), .Q(port_y0_2[2]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_1_ ( .D(maj_32_port_o), .CK(clk), .Q(port_y0_2[1]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_0_ ( .D(maj_29_port_o), .CK(clk), .Q(port_y0_2[0]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_2_ ( .D(maj_42_port_o), .CK(clk), .Q(port_y1_0[2]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_1_ ( .D(maj_39_port_o), .CK(clk), .Q(port_y1_0[1]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_0_ ( .D(maj_36_port_o), .CK(clk), .Q(port_y1_0[0]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_2_ ( .D(maj_43_port_o), .CK(clk), .Q(port_y1_1[2]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_1_ ( .D(maj_40_port_o), .CK(clk), .Q(port_y1_1[1]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_0_ ( .D(maj_37_port_o), .CK(clk), .Q(port_y1_1[0]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_2_ ( .D(maj_44_port_o), .CK(clk), .Q(port_y1_2[2]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_1_ ( .D(maj_41_port_o), .CK(clk), .Q(port_y1_2[1]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_0_ ( .D(maj_38_port_o), .CK(clk), .Q(port_y1_2[0]), 
        .QN() );
  DFF_X1 reg_y2_0_reg_2_ ( .D(maj_51_port_o), .CK(clk), .Q(port_y2_0[2]), 
        .QN() );
  DFF_X1 reg_y2_0_reg_1_ ( .D(maj_48_port_o), .CK(clk), .Q(port_y2_0[1]), 
        .QN() );
  DFF_X1 reg_y2_0_reg_0_ ( .D(maj_45_port_o), .CK(clk), .Q(port_y2_0[0]), 
        .QN() );
  DFF_X1 reg_y2_1_reg_2_ ( .D(maj_52_port_o), .CK(clk), .Q(port_y2_1[2]), 
        .QN() );
  DFF_X1 reg_y2_1_reg_1_ ( .D(maj_49_port_o), .CK(clk), .Q(port_y2_1[1]), 
        .QN() );
  DFF_X1 reg_y2_1_reg_0_ ( .D(maj_46_port_o), .CK(clk), .Q(port_y2_1[0]), 
        .QN() );
  DFF_X1 reg_y2_2_reg_2_ ( .D(maj_53_port_o), .CK(clk), .Q(port_y2_2[2]), 
        .QN() );
  DFF_X1 reg_y2_2_reg_1_ ( .D(maj_50_port_o), .CK(clk), .Q(port_y2_2[1]), 
        .QN() );
  DFF_X1 reg_y2_2_reg_0_ ( .D(maj_47_port_o), .CK(clk), .Q(port_y2_2[0]), 
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
  XOR2_X1 U195 ( .A(n17), .B(n18), .Z(t2_2_0) );
  XOR2_X1 U196 ( .A(n12), .B(n13), .Z(t2_2_1) );
  XOR2_X1 U197 ( .A(n28), .B(n29), .Z(t2_1_0) );
  XOR2_X1 U198 ( .A(n41), .B(n42), .Z(t2_0_0) );
  XOR2_X1 U199 ( .A(n36), .B(n37), .Z(t2_0_1) );
  XOR2_X1 U200 ( .A(n62), .B(n63), .Z(t1_2_0) );
  XOR2_X1 U201 ( .A(n54), .B(n55), .Z(t1_2_1) );
  XOR2_X1 U202 ( .A(n88), .B(n89), .Z(t1_1_0) );
  XOR2_X1 U203 ( .A(n79), .B(n80), .Z(t1_1_1) );
  XOR2_X1 U204 ( .A(n113), .B(n114), .Z(t1_0_0) );
  XOR2_X1 U205 ( .A(n105), .B(n106), .Z(t1_0_1) );
  XOR2_X1 U206 ( .A(n131), .B(n132), .Z(t0_2_0) );
  XOR2_X1 U207 ( .A(n126), .B(n127), .Z(t0_2_1) );
  XOR2_X1 U208 ( .A(n146), .B(n147), .Z(t0_1_0) );
  XOR2_X1 U209 ( .A(n141), .B(n142), .Z(t0_1_1) );
  XOR2_X1 U210 ( .A(n161), .B(n162), .Z(t0_0_0) );
  XOR2_X1 U211 ( .A(n156), .B(n157), .Z(t0_0_1) );
  XNOR2_X1 U212 ( .A(port_x2_0[0]), .B(n21), .ZN(n17) );
  XOR2_X1 U213 ( .A(n19), .B(n20), .Z(n18) );
  NAND2_X1 U214 ( .A1(port_x3_0[0]), .A2(port_x1_0[0]), .ZN(n21) );
  XNOR2_X1 U215 ( .A(port_x2_2[0]), .B(n30), .ZN(n28) );
  XNOR2_X1 U216 ( .A(port_x2_1[0]), .B(n45), .ZN(n41) );
  XOR2_X1 U217 ( .A(n43), .B(n44), .Z(n42) );
  NAND2_X1 U218 ( .A1(port_x1_1[0]), .A2(port_x3_1[0]), .ZN(n45) );
  XOR2_X1 U219 ( .A(n66), .B(n67), .Z(n62) );
  XOR2_X1 U220 ( .A(n64), .B(n65), .Z(n63) );
  NAND2_X1 U221 ( .A1(port_x2_0[0]), .A2(port_x3_0[0]), .ZN(n66) );
  XOR2_X1 U222 ( .A(n94), .B(n29), .Z(n88) );
  XOR2_X1 U223 ( .A(n90), .B(n91), .Z(n89) );
  XOR2_X1 U224 ( .A(n30), .B(port_x1_2[0]), .Z(n94) );
  XOR2_X1 U225 ( .A(n117), .B(n118), .Z(n113) );
  XOR2_X1 U226 ( .A(n115), .B(n116), .Z(n114) );
  NAND2_X1 U227 ( .A1(port_x2_1[0]), .A2(port_x3_1[0]), .ZN(n117) );
  XOR2_X1 U228 ( .A(n135), .B(port_x0_0[0]), .Z(n131) );
  XOR2_X1 U229 ( .A(n133), .B(n134), .Z(n132) );
  NAND2_X1 U230 ( .A1(port_x2_0[0]), .A2(port_x1_0[0]), .ZN(n135) );
  XOR2_X1 U231 ( .A(n150), .B(port_x0_2[0]), .Z(n146) );
  XOR2_X1 U232 ( .A(n148), .B(n149), .Z(n147) );
  NAND2_X1 U233 ( .A1(port_x2_2[0]), .A2(port_x1_0[0]), .ZN(n150) );
  XOR2_X1 U234 ( .A(n165), .B(port_x0_1[0]), .Z(n161) );
  XOR2_X1 U235 ( .A(n163), .B(n164), .Z(n162) );
  NAND2_X1 U236 ( .A1(port_x2_1[0]), .A2(port_x1_1[0]), .ZN(n165) );
  XNOR2_X1 U237 ( .A(port_x2_0[1]), .B(n16), .ZN(n12) );
  XOR2_X1 U238 ( .A(n14), .B(n15), .Z(n13) );
  NAND2_X1 U239 ( .A1(port_x3_0[1]), .A2(port_x1_0[1]), .ZN(n16) );
  XNOR2_X1 U240 ( .A(n166), .B(n26), .ZN(t2_1_1) );
  XOR2_X1 U241 ( .A(port_x2_2[1]), .B(n27), .Z(n166) );
  XNOR2_X1 U242 ( .A(port_x2_1[1]), .B(n40), .ZN(n36) );
  XOR2_X1 U243 ( .A(n38), .B(n39), .Z(n37) );
  NAND2_X1 U244 ( .A1(port_x1_1[1]), .A2(port_x3_1[1]), .ZN(n40) );
  XOR2_X1 U245 ( .A(n58), .B(n59), .Z(n54) );
  XOR2_X1 U246 ( .A(n56), .B(n57), .Z(n55) );
  NAND2_X1 U247 ( .A1(port_x2_0[1]), .A2(port_x3_0[1]), .ZN(n58) );
  XOR2_X1 U248 ( .A(n85), .B(n26), .Z(n79) );
  XOR2_X1 U249 ( .A(n81), .B(n82), .Z(n80) );
  XOR2_X1 U250 ( .A(n27), .B(port_x1_2[1]), .Z(n85) );
  XOR2_X1 U251 ( .A(n109), .B(n110), .Z(n105) );
  XOR2_X1 U252 ( .A(n107), .B(n108), .Z(n106) );
  NAND2_X1 U253 ( .A1(port_x2_1[1]), .A2(port_x3_1[1]), .ZN(n109) );
  XOR2_X1 U254 ( .A(n130), .B(port_x0_0[1]), .Z(n126) );
  XOR2_X1 U255 ( .A(n128), .B(n129), .Z(n127) );
  NAND2_X1 U256 ( .A1(port_x2_0[1]), .A2(port_x1_0[1]), .ZN(n130) );
  XOR2_X1 U257 ( .A(n145), .B(port_x0_2[1]), .Z(n141) );
  XOR2_X1 U258 ( .A(n143), .B(n144), .Z(n142) );
  NAND2_X1 U259 ( .A1(port_x2_2[1]), .A2(port_x1_0[1]), .ZN(n145) );
  XOR2_X1 U260 ( .A(n160), .B(port_x0_1[1]), .Z(n156) );
  XOR2_X1 U261 ( .A(n158), .B(n159), .Z(n157) );
  NAND2_X1 U262 ( .A1(port_x2_1[1]), .A2(port_x1_1[1]), .ZN(n160) );
  XOR2_X1 U263 ( .A(n95), .B(n96), .Z(n29) );
  NAND2_X1 U264 ( .A1(port_x1_2[0]), .A2(port_x3_0[0]), .ZN(n95) );
  NAND2_X1 U265 ( .A1(port_x1_2[0]), .A2(port_x3_2[0]), .ZN(n96) );
  XOR2_X1 U266 ( .A(n86), .B(n87), .Z(n26) );
  NAND2_X1 U267 ( .A1(port_x1_2[1]), .A2(port_x3_0[1]), .ZN(n86) );
  NAND2_X1 U268 ( .A1(port_x1_2[1]), .A2(port_x3_2[1]), .ZN(n87) );
  XOR2_X1 U269 ( .A(n77), .B(n78), .Z(n23) );
  NAND2_X1 U270 ( .A1(port_x1_2[2]), .A2(port_x3_0[2]), .ZN(n77) );
  NAND2_X1 U271 ( .A1(port_x1_2[2]), .A2(port_x3_2[2]), .ZN(n78) );
  XOR2_X1 U272 ( .A(n7), .B(n8), .Z(t2_2_2) );
  XNOR2_X1 U273 ( .A(port_x2_0[2]), .B(n11), .ZN(n7) );
  XOR2_X1 U274 ( .A(n9), .B(n10), .Z(n8) );
  NAND2_X1 U275 ( .A1(port_x3_0[2]), .A2(port_x1_0[2]), .ZN(n11) );
  XOR2_X1 U276 ( .A(n22), .B(n23), .Z(t2_1_2) );
  XNOR2_X1 U277 ( .A(port_x2_2[2]), .B(n24), .ZN(n22) );
  XOR2_X1 U278 ( .A(n31), .B(n32), .Z(t2_0_2) );
  XNOR2_X1 U279 ( .A(port_x2_1[2]), .B(n35), .ZN(n31) );
  XOR2_X1 U280 ( .A(n33), .B(n34), .Z(n32) );
  NAND2_X1 U281 ( .A1(port_x1_1[2]), .A2(port_x3_1[2]), .ZN(n35) );
  XOR2_X1 U282 ( .A(n46), .B(n47), .Z(t1_2_2) );
  XOR2_X1 U283 ( .A(n50), .B(n51), .Z(n46) );
  XOR2_X1 U284 ( .A(n48), .B(n49), .Z(n47) );
  NAND2_X1 U285 ( .A1(port_x2_0[2]), .A2(port_x3_0[2]), .ZN(n50) );
  XOR2_X1 U286 ( .A(n70), .B(n71), .Z(t1_1_2) );
  XOR2_X1 U287 ( .A(n76), .B(n23), .Z(n70) );
  XOR2_X1 U288 ( .A(n72), .B(n73), .Z(n71) );
  XOR2_X1 U289 ( .A(n24), .B(port_x1_2[2]), .Z(n76) );
  XOR2_X1 U290 ( .A(n97), .B(n98), .Z(t1_0_2) );
  XOR2_X1 U291 ( .A(n101), .B(n102), .Z(n97) );
  XOR2_X1 U292 ( .A(n99), .B(n100), .Z(n98) );
  NAND2_X1 U293 ( .A1(port_x2_1[2]), .A2(port_x3_1[2]), .ZN(n101) );
  XOR2_X1 U294 ( .A(n121), .B(n122), .Z(t0_2_2) );
  XOR2_X1 U295 ( .A(n125), .B(port_x0_0[2]), .Z(n121) );
  XOR2_X1 U296 ( .A(n123), .B(n124), .Z(n122) );
  NAND2_X1 U297 ( .A1(port_x2_0[2]), .A2(port_x1_0[2]), .ZN(n125) );
  XOR2_X1 U298 ( .A(n136), .B(n137), .Z(t0_1_2) );
  XOR2_X1 U299 ( .A(n140), .B(port_x0_2[2]), .Z(n136) );
  XOR2_X1 U300 ( .A(n138), .B(n139), .Z(n137) );
  NAND2_X1 U301 ( .A1(port_x2_2[2]), .A2(port_x1_0[2]), .ZN(n140) );
  XOR2_X1 U302 ( .A(n151), .B(n152), .Z(t0_0_2) );
  XOR2_X1 U303 ( .A(n155), .B(port_x0_1[2]), .Z(n151) );
  XOR2_X1 U304 ( .A(n153), .B(n154), .Z(n152) );
  NAND2_X1 U305 ( .A1(port_x2_1[2]), .A2(port_x1_1[2]), .ZN(n155) );
  XOR2_X1 U306 ( .A(n20), .B(n68), .Z(n67) );
  NOR2_X1 U307 ( .A1(n3), .A2(n69), .ZN(n68) );
  INV_X1 U308 ( .A(port_x1_0[0]), .ZN(n3) );
  XOR2_X1 U309 ( .A(port_x3_1[0]), .B(port_x3_0[0]), .Z(n69) );
  XOR2_X1 U310 ( .A(n15), .B(n60), .Z(n59) );
  NOR2_X1 U311 ( .A1(n2), .A2(n61), .ZN(n60) );
  INV_X1 U312 ( .A(port_x1_0[1]), .ZN(n2) );
  XOR2_X1 U313 ( .A(port_x3_1[1]), .B(port_x3_0[1]), .Z(n61) );
  XOR2_X1 U314 ( .A(n10), .B(n52), .Z(n51) );
  NOR2_X1 U315 ( .A1(n1), .A2(n53), .ZN(n52) );
  INV_X1 U316 ( .A(port_x1_0[2]), .ZN(n1) );
  XOR2_X1 U317 ( .A(port_x3_1[2]), .B(port_x3_0[2]), .Z(n53) );
  XOR2_X1 U318 ( .A(n44), .B(n119), .Z(n118) );
  NOR2_X1 U319 ( .A1(n6), .A2(n120), .ZN(n119) );
  INV_X1 U320 ( .A(port_x1_1[0]), .ZN(n6) );
  XOR2_X1 U321 ( .A(port_x3_2[0]), .B(port_x3_1[0]), .Z(n120) );
  XOR2_X1 U322 ( .A(n39), .B(n111), .Z(n110) );
  NOR2_X1 U323 ( .A1(n5), .A2(n112), .ZN(n111) );
  INV_X1 U324 ( .A(port_x1_1[1]), .ZN(n5) );
  XOR2_X1 U325 ( .A(port_x3_2[1]), .B(port_x3_1[1]), .Z(n112) );
  XOR2_X1 U326 ( .A(n34), .B(n103), .Z(n102) );
  NOR2_X1 U327 ( .A1(n4), .A2(n104), .ZN(n103) );
  INV_X1 U328 ( .A(port_x1_1[2]), .ZN(n4) );
  XOR2_X1 U329 ( .A(port_x3_2[2]), .B(port_x3_1[2]), .Z(n104) );
  XOR2_X1 U330 ( .A(n92), .B(n93), .Z(n91) );
  NAND2_X1 U331 ( .A1(port_x3_2[0]), .A2(port_x2_0[0]), .ZN(n92) );
  NAND2_X1 U332 ( .A1(port_x2_2[0]), .A2(port_x3_0[0]), .ZN(n93) );
  XOR2_X1 U333 ( .A(n83), .B(n84), .Z(n82) );
  NAND2_X1 U334 ( .A1(port_x3_2[1]), .A2(port_x2_0[1]), .ZN(n83) );
  NAND2_X1 U335 ( .A1(port_x2_2[1]), .A2(port_x3_0[1]), .ZN(n84) );
  XOR2_X1 U336 ( .A(n74), .B(n75), .Z(n73) );
  NAND2_X1 U337 ( .A1(port_x3_2[2]), .A2(port_x2_0[2]), .ZN(n74) );
  NAND2_X1 U338 ( .A1(port_x2_2[2]), .A2(port_x3_0[2]), .ZN(n75) );
  NAND2_X1 U339 ( .A1(port_x1_1[0]), .A2(port_x3_0[0]), .ZN(n20) );
  NAND2_X1 U340 ( .A1(port_x1_1[1]), .A2(port_x3_0[1]), .ZN(n15) );
  NAND2_X1 U341 ( .A1(port_x1_1[2]), .A2(port_x3_0[2]), .ZN(n10) );
  NAND2_X1 U342 ( .A1(port_x1_2[0]), .A2(port_x3_1[0]), .ZN(n44) );
  NAND2_X1 U343 ( .A1(port_x1_2[1]), .A2(port_x3_1[1]), .ZN(n39) );
  NAND2_X1 U344 ( .A1(port_x1_2[2]), .A2(port_x3_1[2]), .ZN(n34) );
  NAND2_X1 U345 ( .A1(port_x3_2[0]), .A2(port_x1_0[0]), .ZN(n30) );
  NAND2_X1 U346 ( .A1(port_x3_2[1]), .A2(port_x1_0[1]), .ZN(n27) );
  NAND2_X1 U347 ( .A1(port_x3_2[2]), .A2(port_x1_0[2]), .ZN(n24) );
  NAND2_X1 U348 ( .A1(port_x2_1[0]), .A2(port_x3_0[0]), .ZN(n65) );
  NAND2_X1 U349 ( .A1(port_x2_1[1]), .A2(port_x3_0[1]), .ZN(n57) );
  NAND2_X1 U350 ( .A1(port_x2_1[2]), .A2(port_x3_0[2]), .ZN(n49) );
  NAND2_X1 U351 ( .A1(port_x2_2[0]), .A2(port_x3_1[0]), .ZN(n116) );
  NAND2_X1 U352 ( .A1(port_x2_2[1]), .A2(port_x3_1[1]), .ZN(n108) );
  NAND2_X1 U353 ( .A1(port_x2_2[2]), .A2(port_x3_1[2]), .ZN(n100) );
  NAND2_X1 U354 ( .A1(port_x3_1[0]), .A2(port_x1_0[0]), .ZN(n19) );
  NAND2_X1 U355 ( .A1(port_x3_1[1]), .A2(port_x1_0[1]), .ZN(n14) );
  NAND2_X1 U356 ( .A1(port_x3_1[2]), .A2(port_x1_0[2]), .ZN(n9) );
  NAND2_X1 U357 ( .A1(port_x3_2[0]), .A2(port_x1_1[0]), .ZN(n43) );
  NAND2_X1 U358 ( .A1(port_x3_2[1]), .A2(port_x1_1[1]), .ZN(n38) );
  NAND2_X1 U359 ( .A1(port_x3_2[2]), .A2(port_x1_1[2]), .ZN(n33) );
  NAND2_X1 U360 ( .A1(port_x3_1[0]), .A2(port_x2_0[0]), .ZN(n64) );
  NAND2_X1 U361 ( .A1(port_x3_1[1]), .A2(port_x2_0[1]), .ZN(n56) );
  NAND2_X1 U362 ( .A1(port_x3_1[2]), .A2(port_x2_0[2]), .ZN(n48) );
  NAND2_X1 U363 ( .A1(port_x2_2[0]), .A2(port_x3_2[0]), .ZN(n90) );
  NAND2_X1 U364 ( .A1(port_x2_2[1]), .A2(port_x3_2[1]), .ZN(n81) );
  NAND2_X1 U365 ( .A1(port_x2_2[2]), .A2(port_x3_2[2]), .ZN(n72) );
  NAND2_X1 U366 ( .A1(port_x2_1[0]), .A2(port_x3_2[0]), .ZN(n115) );
  NAND2_X1 U367 ( .A1(port_x2_1[1]), .A2(port_x3_2[1]), .ZN(n107) );
  NAND2_X1 U368 ( .A1(port_x2_1[2]), .A2(port_x3_2[2]), .ZN(n99) );
  NAND2_X1 U369 ( .A1(port_x1_1[0]), .A2(port_x2_0[0]), .ZN(n133) );
  NAND2_X1 U370 ( .A1(port_x1_1[1]), .A2(port_x2_0[1]), .ZN(n128) );
  NAND2_X1 U371 ( .A1(port_x1_1[2]), .A2(port_x2_0[2]), .ZN(n123) );
  NAND2_X1 U372 ( .A1(port_x1_2[0]), .A2(port_x2_2[0]), .ZN(n148) );
  NAND2_X1 U373 ( .A1(port_x1_2[1]), .A2(port_x2_2[1]), .ZN(n143) );
  NAND2_X1 U374 ( .A1(port_x1_2[2]), .A2(port_x2_2[2]), .ZN(n138) );
  NAND2_X1 U375 ( .A1(port_x2_1[0]), .A2(port_x1_2[0]), .ZN(n163) );
  NAND2_X1 U376 ( .A1(port_x2_1[1]), .A2(port_x1_2[1]), .ZN(n158) );
  NAND2_X1 U377 ( .A1(port_x2_1[2]), .A2(port_x1_2[2]), .ZN(n153) );
  AND2_X1 U378 ( .A1(port_x1_0[0]), .A2(port_x2_1[0]), .ZN(n134) );
  AND2_X1 U379 ( .A1(port_x1_0[1]), .A2(port_x2_1[1]), .ZN(n129) );
  AND2_X1 U380 ( .A1(port_x1_0[2]), .A2(port_x2_1[2]), .ZN(n124) );
  AND2_X1 U381 ( .A1(port_x2_0[0]), .A2(port_x1_2[0]), .ZN(n149) );
  AND2_X1 U382 ( .A1(port_x2_0[1]), .A2(port_x1_2[1]), .ZN(n144) );
  AND2_X1 U383 ( .A1(port_x2_0[2]), .A2(port_x1_2[2]), .ZN(n139) );
  AND2_X1 U384 ( .A1(port_x1_1[0]), .A2(port_x2_2[0]), .ZN(n164) );
  AND2_X1 U385 ( .A1(port_x1_1[1]), .A2(port_x2_2[1]), .ZN(n159) );
  AND2_X1 U386 ( .A1(port_x1_1[2]), .A2(port_x2_2[2]), .ZN(n154) );
  OR2_X1 maj_27_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_27_n3) );
  NAND2_X1 maj_27_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_27_n1) );
  NAND2_X1 maj_27_U2 ( .A1(t0_0_2), .A2(maj_27_n3), .ZN(maj_27_n2) );
  NAND2_X1 maj_27_U1 ( .A1(maj_27_n1), .A2(maj_27_n2), .ZN(maj_27_port_o) );
  OR2_X1 maj_28_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_28_n4) );
  NAND2_X1 maj_28_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_28_n6) );
  NAND2_X1 maj_28_U2 ( .A1(t0_1_2), .A2(maj_28_n4), .ZN(maj_28_n5) );
  NAND2_X1 maj_28_U1 ( .A1(maj_28_n6), .A2(maj_28_n5), .ZN(maj_28_port_o) );
  OR2_X1 maj_29_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_29_n4) );
  NAND2_X1 maj_29_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_29_n6) );
  NAND2_X1 maj_29_U2 ( .A1(t0_2_2), .A2(maj_29_n4), .ZN(maj_29_n5) );
  NAND2_X1 maj_29_U1 ( .A1(maj_29_n6), .A2(maj_29_n5), .ZN(maj_29_port_o) );
  OR2_X1 maj_30_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_30_n4) );
  NAND2_X1 maj_30_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_30_n6) );
  NAND2_X1 maj_30_U2 ( .A1(t0_0_2), .A2(maj_30_n4), .ZN(maj_30_n5) );
  NAND2_X1 maj_30_U1 ( .A1(maj_30_n6), .A2(maj_30_n5), .ZN(maj_30_port_o) );
  OR2_X1 maj_31_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_31_n4) );
  NAND2_X1 maj_31_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_31_n6) );
  NAND2_X1 maj_31_U2 ( .A1(t0_1_2), .A2(maj_31_n4), .ZN(maj_31_n5) );
  NAND2_X1 maj_31_U1 ( .A1(maj_31_n6), .A2(maj_31_n5), .ZN(maj_31_port_o) );
  OR2_X1 maj_32_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_32_n4) );
  NAND2_X1 maj_32_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_32_n6) );
  NAND2_X1 maj_32_U2 ( .A1(t0_2_2), .A2(maj_32_n4), .ZN(maj_32_n5) );
  NAND2_X1 maj_32_U1 ( .A1(maj_32_n6), .A2(maj_32_n5), .ZN(maj_32_port_o) );
  OR2_X1 maj_33_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_33_n4) );
  NAND2_X1 maj_33_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_33_n6) );
  NAND2_X1 maj_33_U2 ( .A1(t0_0_2), .A2(maj_33_n4), .ZN(maj_33_n5) );
  NAND2_X1 maj_33_U1 ( .A1(maj_33_n6), .A2(maj_33_n5), .ZN(maj_33_port_o) );
  OR2_X1 maj_34_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_34_n4) );
  NAND2_X1 maj_34_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_34_n6) );
  NAND2_X1 maj_34_U2 ( .A1(t0_1_2), .A2(maj_34_n4), .ZN(maj_34_n5) );
  NAND2_X1 maj_34_U1 ( .A1(maj_34_n6), .A2(maj_34_n5), .ZN(maj_34_port_o) );
  OR2_X1 maj_35_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_35_n4) );
  NAND2_X1 maj_35_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_35_n6) );
  NAND2_X1 maj_35_U2 ( .A1(t0_2_2), .A2(maj_35_n4), .ZN(maj_35_n5) );
  NAND2_X1 maj_35_U1 ( .A1(maj_35_n6), .A2(maj_35_n5), .ZN(maj_35_port_o) );
  OR2_X1 maj_36_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_36_n4) );
  NAND2_X1 maj_36_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_36_n6) );
  NAND2_X1 maj_36_U2 ( .A1(t1_0_2), .A2(maj_36_n4), .ZN(maj_36_n5) );
  NAND2_X1 maj_36_U1 ( .A1(maj_36_n6), .A2(maj_36_n5), .ZN(maj_36_port_o) );
  OR2_X1 maj_37_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_37_n4) );
  NAND2_X1 maj_37_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_37_n6) );
  NAND2_X1 maj_37_U2 ( .A1(t1_1_2), .A2(maj_37_n4), .ZN(maj_37_n5) );
  NAND2_X1 maj_37_U1 ( .A1(maj_37_n6), .A2(maj_37_n5), .ZN(maj_37_port_o) );
  OR2_X1 maj_38_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_38_n4) );
  NAND2_X1 maj_38_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_38_n6) );
  NAND2_X1 maj_38_U2 ( .A1(t1_2_2), .A2(maj_38_n4), .ZN(maj_38_n5) );
  NAND2_X1 maj_38_U1 ( .A1(maj_38_n6), .A2(maj_38_n5), .ZN(maj_38_port_o) );
  OR2_X1 maj_39_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_39_n4) );
  NAND2_X1 maj_39_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_39_n6) );
  NAND2_X1 maj_39_U2 ( .A1(t1_0_2), .A2(maj_39_n4), .ZN(maj_39_n5) );
  NAND2_X1 maj_39_U1 ( .A1(maj_39_n6), .A2(maj_39_n5), .ZN(maj_39_port_o) );
  OR2_X1 maj_40_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_40_n4) );
  NAND2_X1 maj_40_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_40_n6) );
  NAND2_X1 maj_40_U2 ( .A1(t1_1_2), .A2(maj_40_n4), .ZN(maj_40_n5) );
  NAND2_X1 maj_40_U1 ( .A1(maj_40_n6), .A2(maj_40_n5), .ZN(maj_40_port_o) );
  OR2_X1 maj_41_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_41_n4) );
  NAND2_X1 maj_41_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_41_n6) );
  NAND2_X1 maj_41_U2 ( .A1(t1_2_2), .A2(maj_41_n4), .ZN(maj_41_n5) );
  NAND2_X1 maj_41_U1 ( .A1(maj_41_n6), .A2(maj_41_n5), .ZN(maj_41_port_o) );
  OR2_X1 maj_42_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_42_n4) );
  NAND2_X1 maj_42_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_42_n6) );
  NAND2_X1 maj_42_U2 ( .A1(t1_0_2), .A2(maj_42_n4), .ZN(maj_42_n5) );
  NAND2_X1 maj_42_U1 ( .A1(maj_42_n6), .A2(maj_42_n5), .ZN(maj_42_port_o) );
  OR2_X1 maj_43_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_43_n4) );
  NAND2_X1 maj_43_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_43_n6) );
  NAND2_X1 maj_43_U2 ( .A1(t1_1_2), .A2(maj_43_n4), .ZN(maj_43_n5) );
  NAND2_X1 maj_43_U1 ( .A1(maj_43_n6), .A2(maj_43_n5), .ZN(maj_43_port_o) );
  OR2_X1 maj_44_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_44_n4) );
  NAND2_X1 maj_44_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_44_n6) );
  NAND2_X1 maj_44_U2 ( .A1(t1_2_2), .A2(maj_44_n4), .ZN(maj_44_n5) );
  NAND2_X1 maj_44_U1 ( .A1(maj_44_n6), .A2(maj_44_n5), .ZN(maj_44_port_o) );
  OR2_X1 maj_45_U4 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_45_n4) );
  NAND2_X1 maj_45_U3 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_45_n6) );
  NAND2_X1 maj_45_U2 ( .A1(t2_0_2), .A2(maj_45_n4), .ZN(maj_45_n5) );
  NAND2_X1 maj_45_U1 ( .A1(maj_45_n6), .A2(maj_45_n5), .ZN(maj_45_port_o) );
  OR2_X1 maj_46_U4 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_46_n4) );
  NAND2_X1 maj_46_U3 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_46_n6) );
  NAND2_X1 maj_46_U2 ( .A1(t2_1_2), .A2(maj_46_n4), .ZN(maj_46_n5) );
  NAND2_X1 maj_46_U1 ( .A1(maj_46_n6), .A2(maj_46_n5), .ZN(maj_46_port_o) );
  OR2_X1 maj_47_U4 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_47_n4) );
  NAND2_X1 maj_47_U3 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_47_n6) );
  NAND2_X1 maj_47_U2 ( .A1(t2_2_2), .A2(maj_47_n4), .ZN(maj_47_n5) );
  NAND2_X1 maj_47_U1 ( .A1(maj_47_n6), .A2(maj_47_n5), .ZN(maj_47_port_o) );
  OR2_X1 maj_48_U4 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_48_n4) );
  NAND2_X1 maj_48_U3 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_48_n6) );
  NAND2_X1 maj_48_U2 ( .A1(t2_0_2), .A2(maj_48_n4), .ZN(maj_48_n5) );
  NAND2_X1 maj_48_U1 ( .A1(maj_48_n6), .A2(maj_48_n5), .ZN(maj_48_port_o) );
  OR2_X1 maj_49_U4 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_49_n4) );
  NAND2_X1 maj_49_U3 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_49_n6) );
  NAND2_X1 maj_49_U2 ( .A1(t2_1_2), .A2(maj_49_n4), .ZN(maj_49_n5) );
  NAND2_X1 maj_49_U1 ( .A1(maj_49_n6), .A2(maj_49_n5), .ZN(maj_49_port_o) );
  OR2_X1 maj_50_U4 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_50_n4) );
  NAND2_X1 maj_50_U3 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_50_n6) );
  NAND2_X1 maj_50_U2 ( .A1(t2_2_2), .A2(maj_50_n4), .ZN(maj_50_n5) );
  NAND2_X1 maj_50_U1 ( .A1(maj_50_n6), .A2(maj_50_n5), .ZN(maj_50_port_o) );
  OR2_X1 maj_51_U4 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_51_n4) );
  NAND2_X1 maj_51_U3 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_51_n6) );
  NAND2_X1 maj_51_U2 ( .A1(t2_0_2), .A2(maj_51_n4), .ZN(maj_51_n5) );
  NAND2_X1 maj_51_U1 ( .A1(maj_51_n6), .A2(maj_51_n5), .ZN(maj_51_port_o) );
  OR2_X1 maj_52_U4 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_52_n4) );
  NAND2_X1 maj_52_U3 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_52_n6) );
  NAND2_X1 maj_52_U2 ( .A1(t2_1_2), .A2(maj_52_n4), .ZN(maj_52_n5) );
  NAND2_X1 maj_52_U1 ( .A1(maj_52_n6), .A2(maj_52_n5), .ZN(maj_52_port_o) );
  OR2_X1 maj_53_U4 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_53_n4) );
  NAND2_X1 maj_53_U3 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_53_n6) );
  NAND2_X1 maj_53_U2 ( .A1(t2_2_2), .A2(maj_53_n4), .ZN(maj_53_n5) );
  NAND2_X1 maj_53_U1 ( .A1(maj_53_n6), .A2(maj_53_n5), .ZN(maj_53_port_o) );
endmodule

