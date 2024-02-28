/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:14:36 2023
/////////////////////////////////////////////////////////////


module Sbox_012345678ACEB9FD_3shares_3replications ( port_x0_0, port_x0_1, 
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
         maj_51_port_o, maj_52_port_o, maj_53_port_o, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n201, n202, n203, n204, n206, n207, n208,
         n209, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n228, n229, n230, n231, n233,
         n234, n235, n236, n238, n239, n240, n241, n242, n243, maj_27_n3,
         maj_27_n2, maj_27_n1, maj_28_n6, maj_28_n5, maj_28_n4, maj_29_n6,
         maj_29_n5, maj_29_n4, maj_30_n6, maj_30_n5, maj_30_n4, maj_31_n6,
         maj_31_n5, maj_31_n4, maj_32_n6, maj_32_n5, maj_32_n4, maj_33_n6,
         maj_33_n5, maj_33_n4, maj_34_n6, maj_34_n5, maj_34_n4, maj_35_n6,
         maj_35_n5, maj_35_n4, maj_36_n6, maj_36_n5, maj_36_n4, maj_37_n6,
         maj_37_n5, maj_37_n4, maj_38_n6, maj_38_n5, maj_38_n4, maj_39_n6,
         maj_39_n5, maj_39_n4, maj_40_n6, maj_40_n5, maj_40_n4, maj_41_n6,
         maj_41_n5, maj_41_n4, maj_42_n6, maj_42_n5, maj_42_n4, maj_43_n6,
         maj_43_n5, maj_43_n4, maj_44_n6, maj_44_n5, maj_44_n4, maj_45_n6,
         maj_45_n5, maj_45_n4, maj_46_n6, maj_46_n5, maj_46_n4, maj_47_n6,
         maj_47_n5, maj_47_n4, maj_48_n6, maj_48_n5, maj_48_n4, maj_49_n6,
         maj_49_n5, maj_49_n4, maj_50_n6, maj_50_n5, maj_50_n4, maj_51_n6,
         maj_51_n5, maj_51_n4, maj_52_n6, maj_52_n5, maj_52_n4, maj_53_n6,
         maj_53_n5, maj_53_n4;

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
  XOR2_X1 U267 ( .A(n25), .B(n26), .Z(t2_2_0) );
  XOR2_X1 U268 ( .A(n16), .B(n17), .Z(t2_2_1) );
  XOR2_X1 U269 ( .A(n52), .B(n53), .Z(t2_1_0) );
  XOR2_X1 U270 ( .A(n43), .B(n44), .Z(t2_1_1) );
  XOR2_X1 U271 ( .A(n79), .B(n80), .Z(t2_0_0) );
  XOR2_X1 U272 ( .A(n70), .B(n71), .Z(t2_0_1) );
  XOR2_X1 U273 ( .A(n112), .B(n113), .Z(t1_2_0) );
  XOR2_X1 U274 ( .A(n100), .B(n101), .Z(t1_2_1) );
  XOR2_X1 U275 ( .A(n148), .B(n149), .Z(t1_1_0) );
  XOR2_X1 U276 ( .A(n136), .B(n137), .Z(t1_1_1) );
  XOR2_X1 U277 ( .A(n184), .B(n185), .Z(t1_0_0) );
  XOR2_X1 U278 ( .A(n172), .B(n173), .Z(t1_0_1) );
  XOR2_X1 U279 ( .A(n206), .B(n207), .Z(t0_2_0) );
  XOR2_X1 U280 ( .A(n201), .B(n202), .Z(t0_2_1) );
  XOR2_X1 U281 ( .A(n219), .B(n220), .Z(t0_1_0) );
  XOR2_X1 U282 ( .A(n215), .B(n216), .Z(t0_1_1) );
  XOR2_X1 U283 ( .A(n233), .B(n234), .Z(t0_0_0) );
  XOR2_X1 U284 ( .A(n228), .B(n229), .Z(t0_0_1) );
  XOR2_X1 U285 ( .A(n120), .B(n32), .Z(n112) );
  XOR2_X1 U286 ( .A(n114), .B(n115), .Z(n113) );
  XOR2_X1 U287 ( .A(n29), .B(n123), .Z(n120) );
  XOR2_X1 U288 ( .A(n150), .B(n151), .Z(n148) );
  XOR2_X1 U289 ( .A(n157), .B(n59), .Z(n150) );
  XOR2_X1 U290 ( .A(n152), .B(n153), .Z(n151) );
  XOR2_X1 U291 ( .A(n192), .B(n86), .Z(n184) );
  XOR2_X1 U292 ( .A(n186), .B(n187), .Z(n185) );
  XOR2_X1 U293 ( .A(n83), .B(n195), .Z(n192) );
  XOR2_X1 U294 ( .A(n30), .B(n208), .Z(n206) );
  XOR2_X1 U295 ( .A(n27), .B(n117), .Z(n207) );
  XOR2_X1 U296 ( .A(n29), .B(n209), .Z(n208) );
  XOR2_X1 U297 ( .A(n84), .B(n235), .Z(n233) );
  XOR2_X1 U298 ( .A(n81), .B(n189), .Z(n234) );
  XOR2_X1 U299 ( .A(n83), .B(n236), .Z(n235) );
  XOR2_X1 U300 ( .A(n108), .B(n23), .Z(n100) );
  XOR2_X1 U301 ( .A(n102), .B(n103), .Z(n101) );
  XOR2_X1 U302 ( .A(n20), .B(n111), .Z(n108) );
  XOR2_X1 U303 ( .A(n138), .B(n139), .Z(n136) );
  XOR2_X1 U304 ( .A(n145), .B(n50), .Z(n138) );
  XOR2_X1 U305 ( .A(n140), .B(n141), .Z(n139) );
  XOR2_X1 U306 ( .A(n180), .B(n77), .Z(n172) );
  XOR2_X1 U307 ( .A(n174), .B(n175), .Z(n173) );
  XOR2_X1 U308 ( .A(n74), .B(n183), .Z(n180) );
  XOR2_X1 U309 ( .A(n21), .B(n203), .Z(n201) );
  XOR2_X1 U310 ( .A(n18), .B(n105), .Z(n202) );
  XOR2_X1 U311 ( .A(n20), .B(n204), .Z(n203) );
  XOR2_X1 U312 ( .A(n75), .B(n230), .Z(n228) );
  XOR2_X1 U313 ( .A(n72), .B(n177), .Z(n229) );
  XOR2_X1 U314 ( .A(n74), .B(n231), .Z(n230) );
  XOR2_X1 U315 ( .A(n57), .B(n54), .Z(n149) );
  XOR2_X1 U316 ( .A(n48), .B(n45), .Z(n137) );
  XOR2_X1 U317 ( .A(n39), .B(n36), .Z(n125) );
  XOR2_X1 U318 ( .A(n88), .B(n89), .Z(t1_2_2) );
  XOR2_X1 U319 ( .A(n96), .B(n14), .Z(n88) );
  XOR2_X1 U320 ( .A(n90), .B(n91), .Z(n89) );
  XOR2_X1 U321 ( .A(n11), .B(n99), .Z(n96) );
  XOR2_X1 U322 ( .A(n124), .B(n125), .Z(t1_1_2) );
  XOR2_X1 U323 ( .A(n126), .B(n127), .Z(n124) );
  XOR2_X1 U324 ( .A(n133), .B(n41), .Z(n126) );
  XOR2_X1 U325 ( .A(n128), .B(n129), .Z(n127) );
  XOR2_X1 U326 ( .A(n160), .B(n161), .Z(t1_0_2) );
  XOR2_X1 U327 ( .A(n168), .B(n68), .Z(n160) );
  XOR2_X1 U328 ( .A(n162), .B(n163), .Z(n161) );
  XOR2_X1 U329 ( .A(n65), .B(n171), .Z(n168) );
  XOR2_X1 U330 ( .A(n196), .B(n197), .Z(t0_2_2) );
  XOR2_X1 U331 ( .A(n12), .B(n198), .Z(n196) );
  XOR2_X1 U332 ( .A(n9), .B(n93), .Z(n197) );
  XOR2_X1 U333 ( .A(n11), .B(n199), .Z(n198) );
  XOR2_X1 U334 ( .A(n223), .B(n224), .Z(t0_0_2) );
  XOR2_X1 U335 ( .A(n66), .B(n225), .Z(n223) );
  XOR2_X1 U336 ( .A(n63), .B(n165), .Z(n224) );
  XOR2_X1 U337 ( .A(n65), .B(n226), .Z(n225) );
  XOR2_X1 U338 ( .A(n154), .B(n155), .Z(n153) );
  XOR2_X1 U339 ( .A(n142), .B(n143), .Z(n141) );
  XOR2_X1 U340 ( .A(n130), .B(n131), .Z(n129) );
  XOR2_X1 U341 ( .A(n156), .B(n154), .Z(n221) );
  XOR2_X1 U342 ( .A(n144), .B(n142), .Z(n217) );
  XOR2_X1 U343 ( .A(n132), .B(n130), .Z(n213) );
  XOR2_X1 U344 ( .A(n29), .B(n30), .Z(n28) );
  XOR2_X1 U345 ( .A(n20), .B(n21), .Z(n19) );
  XOR2_X1 U346 ( .A(n11), .B(n12), .Z(n10) );
  XOR2_X1 U347 ( .A(n56), .B(n57), .Z(n55) );
  XOR2_X1 U348 ( .A(n47), .B(n48), .Z(n46) );
  XOR2_X1 U349 ( .A(n38), .B(n39), .Z(n37) );
  XOR2_X1 U350 ( .A(n83), .B(n84), .Z(n82) );
  XOR2_X1 U351 ( .A(n74), .B(n75), .Z(n73) );
  XOR2_X1 U352 ( .A(n65), .B(n66), .Z(n64) );
  XOR2_X1 U353 ( .A(n56), .B(n156), .Z(n152) );
  XOR2_X1 U354 ( .A(n47), .B(n144), .Z(n140) );
  XOR2_X1 U355 ( .A(n38), .B(n132), .Z(n128) );
  XOR2_X1 U356 ( .A(n31), .B(n32), .Z(n25) );
  XOR2_X1 U357 ( .A(n27), .B(n28), .Z(n26) );
  XOR2_X1 U358 ( .A(n33), .B(port_x2_0[0]), .Z(n31) );
  XOR2_X1 U359 ( .A(n58), .B(n59), .Z(n52) );
  XOR2_X1 U360 ( .A(n54), .B(n55), .Z(n53) );
  XOR2_X1 U361 ( .A(n60), .B(port_x2_2[0]), .Z(n58) );
  XOR2_X1 U362 ( .A(n85), .B(n86), .Z(n79) );
  XOR2_X1 U363 ( .A(n81), .B(n82), .Z(n80) );
  XOR2_X1 U364 ( .A(n87), .B(port_x2_1[0]), .Z(n85) );
  XOR2_X1 U365 ( .A(n222), .B(n149), .Z(n219) );
  XOR2_X1 U366 ( .A(n155), .B(n221), .Z(n220) );
  XOR2_X1 U367 ( .A(n56), .B(port_x0_2[0]), .Z(n222) );
  XOR2_X1 U368 ( .A(n22), .B(n23), .Z(n16) );
  XOR2_X1 U369 ( .A(n18), .B(n19), .Z(n17) );
  XOR2_X1 U370 ( .A(n24), .B(port_x2_0[1]), .Z(n22) );
  XOR2_X1 U371 ( .A(n49), .B(n50), .Z(n43) );
  XOR2_X1 U372 ( .A(n45), .B(n46), .Z(n44) );
  XOR2_X1 U373 ( .A(n51), .B(port_x2_2[1]), .Z(n49) );
  XOR2_X1 U374 ( .A(n76), .B(n77), .Z(n70) );
  XOR2_X1 U375 ( .A(n72), .B(n73), .Z(n71) );
  XOR2_X1 U376 ( .A(n78), .B(port_x2_1[1]), .Z(n76) );
  XOR2_X1 U377 ( .A(n218), .B(n137), .Z(n215) );
  XOR2_X1 U378 ( .A(n143), .B(n217), .Z(n216) );
  XOR2_X1 U379 ( .A(n47), .B(port_x0_2[1]), .Z(n218) );
  XOR2_X1 U380 ( .A(n158), .B(n159), .Z(n59) );
  NAND2_X1 U381 ( .A1(port_x1_2[0]), .A2(port_x3_0[0]), .ZN(n158) );
  NAND2_X1 U382 ( .A1(port_x1_2[0]), .A2(port_x3_2[0]), .ZN(n159) );
  XOR2_X1 U383 ( .A(n146), .B(n147), .Z(n50) );
  NAND2_X1 U384 ( .A1(port_x1_2[1]), .A2(port_x3_0[1]), .ZN(n146) );
  NAND2_X1 U385 ( .A1(port_x1_2[1]), .A2(port_x3_2[1]), .ZN(n147) );
  XOR2_X1 U386 ( .A(n134), .B(n135), .Z(n41) );
  NAND2_X1 U387 ( .A1(port_x1_2[2]), .A2(port_x3_0[2]), .ZN(n134) );
  NAND2_X1 U388 ( .A1(port_x1_2[2]), .A2(port_x3_2[2]), .ZN(n135) );
  XOR2_X1 U389 ( .A(n121), .B(n122), .Z(n32) );
  NAND2_X1 U390 ( .A1(port_x3_1[0]), .A2(port_x1_0[0]), .ZN(n121) );
  NAND2_X1 U391 ( .A1(port_x1_1[0]), .A2(port_x3_0[0]), .ZN(n122) );
  XOR2_X1 U392 ( .A(n109), .B(n110), .Z(n23) );
  NAND2_X1 U393 ( .A1(port_x3_1[1]), .A2(port_x1_0[1]), .ZN(n109) );
  NAND2_X1 U394 ( .A1(port_x1_1[1]), .A2(port_x3_0[1]), .ZN(n110) );
  XOR2_X1 U395 ( .A(n97), .B(n98), .Z(n14) );
  NAND2_X1 U396 ( .A1(port_x3_1[2]), .A2(port_x1_0[2]), .ZN(n97) );
  NAND2_X1 U397 ( .A1(port_x1_1[2]), .A2(port_x3_0[2]), .ZN(n98) );
  XOR2_X1 U398 ( .A(n193), .B(n194), .Z(n86) );
  NAND2_X1 U399 ( .A1(port_x3_2[0]), .A2(port_x1_1[0]), .ZN(n193) );
  NAND2_X1 U400 ( .A1(port_x1_2[0]), .A2(port_x3_1[0]), .ZN(n194) );
  XOR2_X1 U401 ( .A(n181), .B(n182), .Z(n77) );
  NAND2_X1 U402 ( .A1(port_x3_2[1]), .A2(port_x1_1[1]), .ZN(n181) );
  NAND2_X1 U403 ( .A1(port_x1_2[1]), .A2(port_x3_1[1]), .ZN(n182) );
  XOR2_X1 U404 ( .A(n169), .B(n170), .Z(n68) );
  NAND2_X1 U405 ( .A1(port_x3_2[2]), .A2(port_x1_1[2]), .ZN(n169) );
  NAND2_X1 U406 ( .A1(port_x1_2[2]), .A2(port_x3_1[2]), .ZN(n170) );
  XOR2_X1 U407 ( .A(n7), .B(n8), .Z(t2_2_2) );
  XOR2_X1 U408 ( .A(n13), .B(n14), .Z(n7) );
  XOR2_X1 U409 ( .A(n9), .B(n10), .Z(n8) );
  XOR2_X1 U410 ( .A(n15), .B(port_x2_0[2]), .Z(n13) );
  XOR2_X1 U411 ( .A(n34), .B(n35), .Z(t2_1_2) );
  XOR2_X1 U412 ( .A(n40), .B(n41), .Z(n34) );
  XOR2_X1 U413 ( .A(n36), .B(n37), .Z(n35) );
  XOR2_X1 U414 ( .A(n42), .B(port_x2_2[2]), .Z(n40) );
  XOR2_X1 U415 ( .A(n61), .B(n62), .Z(t2_0_2) );
  XOR2_X1 U416 ( .A(n67), .B(n68), .Z(n61) );
  XOR2_X1 U417 ( .A(n63), .B(n64), .Z(n62) );
  XOR2_X1 U418 ( .A(n69), .B(port_x2_1[2]), .Z(n67) );
  XOR2_X1 U419 ( .A(n211), .B(n212), .Z(t0_1_2) );
  XOR2_X1 U420 ( .A(n214), .B(n125), .Z(n211) );
  XOR2_X1 U421 ( .A(n131), .B(n213), .Z(n212) );
  XOR2_X1 U422 ( .A(n38), .B(port_x0_2[2]), .Z(n214) );
  XOR2_X1 U423 ( .A(n116), .B(n117), .Z(n115) );
  NAND2_X1 U424 ( .A1(port_x0_0[0]), .A2(port_x3_1[0]), .ZN(n116) );
  XOR2_X1 U425 ( .A(n104), .B(n105), .Z(n103) );
  NAND2_X1 U426 ( .A1(port_x0_0[1]), .A2(port_x3_1[1]), .ZN(n104) );
  XOR2_X1 U427 ( .A(n92), .B(n93), .Z(n91) );
  NAND2_X1 U428 ( .A1(port_x0_0[2]), .A2(port_x3_1[2]), .ZN(n92) );
  XOR2_X1 U429 ( .A(n188), .B(n189), .Z(n187) );
  NAND2_X1 U430 ( .A1(port_x0_1[0]), .A2(port_x3_2[0]), .ZN(n188) );
  XOR2_X1 U431 ( .A(n176), .B(n177), .Z(n175) );
  NAND2_X1 U432 ( .A1(port_x0_1[1]), .A2(port_x3_2[1]), .ZN(n176) );
  XOR2_X1 U433 ( .A(n164), .B(n165), .Z(n163) );
  NAND2_X1 U434 ( .A1(port_x0_1[2]), .A2(port_x3_2[2]), .ZN(n164) );
  XOR2_X1 U435 ( .A(n118), .B(n119), .Z(n114) );
  NAND2_X1 U436 ( .A1(port_x1_0[0]), .A2(n33), .ZN(n118) );
  XOR2_X1 U437 ( .A(n30), .B(n27), .Z(n119) );
  XOR2_X1 U438 ( .A(n106), .B(n107), .Z(n102) );
  NAND2_X1 U439 ( .A1(port_x1_0[1]), .A2(n24), .ZN(n106) );
  XOR2_X1 U440 ( .A(n21), .B(n18), .Z(n107) );
  XOR2_X1 U441 ( .A(n94), .B(n95), .Z(n90) );
  NAND2_X1 U442 ( .A1(port_x1_0[2]), .A2(n15), .ZN(n94) );
  XOR2_X1 U443 ( .A(n12), .B(n9), .Z(n95) );
  XOR2_X1 U444 ( .A(n190), .B(n191), .Z(n186) );
  NAND2_X1 U445 ( .A1(port_x1_1[0]), .A2(n87), .ZN(n190) );
  XOR2_X1 U446 ( .A(n84), .B(n81), .Z(n191) );
  XOR2_X1 U447 ( .A(n178), .B(n179), .Z(n174) );
  NAND2_X1 U448 ( .A1(port_x1_1[1]), .A2(n78), .ZN(n178) );
  XOR2_X1 U449 ( .A(n75), .B(n72), .Z(n179) );
  XOR2_X1 U450 ( .A(n166), .B(n167), .Z(n162) );
  NAND2_X1 U451 ( .A1(port_x1_1[2]), .A2(n69), .ZN(n166) );
  XOR2_X1 U452 ( .A(n66), .B(n63), .Z(n167) );
  NAND2_X1 U453 ( .A1(port_x3_1[0]), .A2(port_x2_0[0]), .ZN(n30) );
  NAND2_X1 U454 ( .A1(port_x3_1[1]), .A2(port_x2_0[1]), .ZN(n21) );
  NAND2_X1 U455 ( .A1(port_x3_1[2]), .A2(port_x2_0[2]), .ZN(n12) );
  NAND2_X1 U456 ( .A1(port_x3_2[0]), .A2(port_x2_1[0]), .ZN(n84) );
  NAND2_X1 U457 ( .A1(port_x3_2[1]), .A2(port_x2_1[1]), .ZN(n75) );
  NAND2_X1 U458 ( .A1(port_x3_2[2]), .A2(port_x2_1[2]), .ZN(n66) );
  NAND2_X1 U459 ( .A1(port_x2_1[0]), .A2(port_x3_0[0]), .ZN(n27) );
  NAND2_X1 U460 ( .A1(port_x2_1[1]), .A2(port_x3_0[1]), .ZN(n18) );
  NAND2_X1 U461 ( .A1(port_x2_1[2]), .A2(port_x3_0[2]), .ZN(n9) );
  NAND2_X1 U462 ( .A1(port_x2_2[0]), .A2(port_x3_1[0]), .ZN(n81) );
  NAND2_X1 U463 ( .A1(port_x2_2[1]), .A2(port_x3_1[1]), .ZN(n72) );
  NAND2_X1 U464 ( .A1(port_x2_2[2]), .A2(port_x3_1[2]), .ZN(n63) );
  NAND2_X1 U465 ( .A1(port_x2_0[0]), .A2(port_x3_0[0]), .ZN(n29) );
  NAND2_X1 U466 ( .A1(port_x2_0[1]), .A2(port_x3_0[1]), .ZN(n20) );
  NAND2_X1 U467 ( .A1(port_x2_0[2]), .A2(port_x3_0[2]), .ZN(n11) );
  NAND2_X1 U468 ( .A1(port_x3_2[0]), .A2(port_x2_0[0]), .ZN(n56) );
  NAND2_X1 U469 ( .A1(port_x3_2[1]), .A2(port_x2_0[1]), .ZN(n47) );
  NAND2_X1 U470 ( .A1(port_x3_2[2]), .A2(port_x2_0[2]), .ZN(n38) );
  NAND2_X1 U471 ( .A1(port_x2_1[0]), .A2(port_x3_1[0]), .ZN(n83) );
  NAND2_X1 U472 ( .A1(port_x2_1[1]), .A2(port_x3_1[1]), .ZN(n74) );
  NAND2_X1 U473 ( .A1(port_x2_1[2]), .A2(port_x3_1[2]), .ZN(n65) );
  XNOR2_X1 U474 ( .A(port_x1_2[0]), .B(n60), .ZN(n157) );
  XNOR2_X1 U475 ( .A(port_x1_2[1]), .B(n51), .ZN(n145) );
  XNOR2_X1 U476 ( .A(port_x1_2[2]), .B(n42), .ZN(n133) );
  AND2_X1 U477 ( .A1(port_x0_0[0]), .A2(n238), .ZN(n209) );
  XNOR2_X1 U478 ( .A(port_x3_1[0]), .B(port_x3_0[0]), .ZN(n238) );
  AND2_X1 U479 ( .A1(port_x0_0[1]), .A2(n239), .ZN(n204) );
  XNOR2_X1 U480 ( .A(port_x3_1[1]), .B(port_x3_0[1]), .ZN(n239) );
  AND2_X1 U481 ( .A1(port_x0_0[2]), .A2(n240), .ZN(n199) );
  XNOR2_X1 U482 ( .A(port_x3_1[2]), .B(port_x3_0[2]), .ZN(n240) );
  AND2_X1 U483 ( .A1(port_x0_1[0]), .A2(n241), .ZN(n236) );
  XNOR2_X1 U484 ( .A(port_x3_2[0]), .B(port_x3_1[0]), .ZN(n241) );
  AND2_X1 U485 ( .A1(port_x0_1[1]), .A2(n242), .ZN(n231) );
  XNOR2_X1 U486 ( .A(port_x3_2[1]), .B(port_x3_1[1]), .ZN(n242) );
  AND2_X1 U487 ( .A1(port_x0_1[2]), .A2(n243), .ZN(n226) );
  XNOR2_X1 U488 ( .A(port_x3_2[2]), .B(port_x3_1[2]), .ZN(n243) );
  NAND2_X1 U489 ( .A1(port_x0_1[0]), .A2(port_x3_0[0]), .ZN(n117) );
  NAND2_X1 U490 ( .A1(port_x0_1[1]), .A2(port_x3_0[1]), .ZN(n105) );
  NAND2_X1 U491 ( .A1(port_x0_1[2]), .A2(port_x3_0[2]), .ZN(n93) );
  NAND2_X1 U492 ( .A1(port_x0_2[0]), .A2(port_x3_1[0]), .ZN(n189) );
  NAND2_X1 U493 ( .A1(port_x0_2[1]), .A2(port_x3_1[1]), .ZN(n177) );
  NAND2_X1 U494 ( .A1(port_x0_2[2]), .A2(port_x3_1[2]), .ZN(n165) );
  NAND2_X1 U495 ( .A1(port_x0_2[0]), .A2(port_x3_0[0]), .ZN(n154) );
  NAND2_X1 U496 ( .A1(port_x0_0[0]), .A2(port_x3_2[0]), .ZN(n156) );
  NAND2_X1 U497 ( .A1(port_x0_2[1]), .A2(port_x3_0[1]), .ZN(n142) );
  NAND2_X1 U498 ( .A1(port_x0_0[1]), .A2(port_x3_2[1]), .ZN(n144) );
  NAND2_X1 U499 ( .A1(port_x0_2[2]), .A2(port_x3_0[2]), .ZN(n130) );
  NAND2_X1 U500 ( .A1(port_x0_0[2]), .A2(port_x3_2[2]), .ZN(n132) );
  NAND2_X1 U501 ( .A1(port_x2_2[0]), .A2(port_x3_0[0]), .ZN(n57) );
  NAND2_X1 U502 ( .A1(port_x2_2[1]), .A2(port_x3_0[1]), .ZN(n48) );
  NAND2_X1 U503 ( .A1(port_x2_2[2]), .A2(port_x3_0[2]), .ZN(n39) );
  NAND2_X1 U504 ( .A1(port_x2_2[0]), .A2(port_x3_2[0]), .ZN(n54) );
  NAND2_X1 U505 ( .A1(port_x2_2[1]), .A2(port_x3_2[1]), .ZN(n45) );
  NAND2_X1 U506 ( .A1(port_x2_2[2]), .A2(port_x3_2[2]), .ZN(n36) );
  NAND2_X1 U507 ( .A1(port_x0_2[0]), .A2(port_x3_2[0]), .ZN(n155) );
  NAND2_X1 U508 ( .A1(port_x0_2[1]), .A2(port_x3_2[1]), .ZN(n143) );
  NAND2_X1 U509 ( .A1(port_x0_2[2]), .A2(port_x3_2[2]), .ZN(n131) );
  NAND2_X1 U510 ( .A1(port_x3_2[0]), .A2(port_x1_0[0]), .ZN(n60) );
  NAND2_X1 U511 ( .A1(port_x3_2[1]), .A2(port_x1_0[1]), .ZN(n51) );
  NAND2_X1 U512 ( .A1(port_x3_2[2]), .A2(port_x1_0[2]), .ZN(n42) );
  NAND2_X1 U513 ( .A1(port_x3_0[0]), .A2(port_x1_0[0]), .ZN(n33) );
  NAND2_X1 U514 ( .A1(port_x3_0[1]), .A2(port_x1_0[1]), .ZN(n24) );
  NAND2_X1 U515 ( .A1(port_x3_0[2]), .A2(port_x1_0[2]), .ZN(n15) );
  NAND2_X1 U516 ( .A1(port_x1_1[0]), .A2(port_x3_1[0]), .ZN(n87) );
  NAND2_X1 U517 ( .A1(port_x1_1[1]), .A2(port_x3_1[1]), .ZN(n78) );
  NAND2_X1 U518 ( .A1(port_x1_1[2]), .A2(port_x3_1[2]), .ZN(n69) );
  AND2_X1 U519 ( .A1(port_x3_0[0]), .A2(port_x0_0[0]), .ZN(n123) );
  AND2_X1 U520 ( .A1(port_x3_0[1]), .A2(port_x0_0[1]), .ZN(n111) );
  AND2_X1 U521 ( .A1(port_x3_0[2]), .A2(port_x0_0[2]), .ZN(n99) );
  AND2_X1 U522 ( .A1(port_x3_1[0]), .A2(port_x0_1[0]), .ZN(n195) );
  AND2_X1 U523 ( .A1(port_x3_1[1]), .A2(port_x0_1[1]), .ZN(n183) );
  AND2_X1 U524 ( .A1(port_x3_1[2]), .A2(port_x0_1[2]), .ZN(n171) );
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

