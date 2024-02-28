/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:16:08 2023
/////////////////////////////////////////////////////////////


module Sbox_01234589DC76ABFE_4shares ( port_x0_0, port_x0_1, port_x0_2, 
        port_x0_3, port_x1_0, port_x1_1, port_x1_2, port_x1_3, port_x2_0, 
        port_x2_1, port_x2_2, port_x2_3, port_x3_0, port_x3_1, port_x3_2, 
        port_x3_3, port_y0_0, port_y0_1, port_y0_2, port_y0_3, port_y1_0, 
        port_y1_1, port_y1_2, port_y1_3, port_y2_0, port_y2_1, port_y2_2, 
        port_y2_3, port_y3_0, port_y3_1, port_y3_2, port_y3_3, clk, reset );
  input port_x0_0, port_x0_1, port_x0_2, port_x0_3, port_x1_0, port_x1_1,
         port_x1_2, port_x1_3, port_x2_0, port_x2_1, port_x2_2, port_x2_3,
         port_x3_0, port_x3_1, port_x3_2, port_x3_3, clk, reset;
  output port_y0_0, port_y0_1, port_y0_2, port_y0_3, port_y1_0, port_y1_1,
         port_y1_2, port_y1_3, port_y2_0, port_y2_1, port_y2_2, port_y2_3,
         port_y3_0, port_y3_1, port_y3_2, port_y3_3;
  wire   N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257;

  DFF_X1 y2_2_reg ( .D(N26), .CK(clk), .Q(port_y2_2), .QN() );
  DFF_X1 y0_2_reg ( .D(N18), .CK(clk), .Q(port_y0_2), .QN() );
  DFF_X1 y3_2_reg ( .D(N30), .CK(clk), .Q(port_y3_2), .QN() );
  DFF_X1 y1_1_reg ( .D(N21), .CK(clk), .Q(port_y1_1), .QN() );
  DFF_X1 y2_3_reg ( .D(N27), .CK(clk), .Q(port_y2_3), .QN() );
  DFF_X1 y1_0_reg ( .D(N20), .CK(clk), .Q(port_y1_0), .QN() );
  DFF_X1 y3_1_reg ( .D(N29), .CK(clk), .Q(port_y3_1), .QN() );
  DFF_X1 y2_1_reg ( .D(N25), .CK(clk), .Q(port_y2_1), .QN() );
  DFF_X1 y0_1_reg ( .D(N17), .CK(clk), .Q(port_y0_1), .QN() );
  DFF_X1 y1_2_reg ( .D(N22), .CK(clk), .Q(port_y1_2), .QN() );
  DFF_X1 y2_0_reg ( .D(N24), .CK(clk), .Q(port_y2_0), .QN() );
  DFF_X1 y3_0_reg ( .D(N28), .CK(clk), .Q(port_y3_0), .QN() );
  DFF_X1 y0_0_reg ( .D(N16), .CK(clk), .Q(port_y0_0), .QN() );
  DFF_X1 y0_3_reg ( .D(N19), .CK(clk), .Q(port_y0_3), .QN() );
  DFF_X1 y1_3_reg ( .D(N23), .CK(clk), .Q(port_y1_3), .QN() );
  DFF_X1 y3_3_reg ( .D(N31), .CK(clk), .Q(port_y3_3), .QN() );
  INV_X1 U276 ( .A(port_x3_3), .ZN(n9) );
  INV_X1 U277 ( .A(port_x3_1), .ZN(n7) );
  INV_X1 U278 ( .A(port_x3_2), .ZN(n8) );
  INV_X1 U279 ( .A(port_x3_0), .ZN(n6) );
  XOR2_X1 U280 ( .A(n116), .B(n117), .Z(n114) );
  XOR2_X1 U281 ( .A(n124), .B(n125), .Z(n116) );
  XOR2_X1 U282 ( .A(n118), .B(n119), .Z(n117) );
  XOR2_X1 U283 ( .A(n128), .B(n129), .Z(n124) );
  XOR2_X1 U284 ( .A(n221), .B(n222), .Z(n219) );
  XOR2_X1 U285 ( .A(n229), .B(n230), .Z(n221) );
  XOR2_X1 U286 ( .A(n223), .B(n224), .Z(n222) );
  XOR2_X1 U287 ( .A(n233), .B(n234), .Z(n229) );
  XOR2_X1 U288 ( .A(n150), .B(n151), .Z(n146) );
  XOR2_X1 U289 ( .A(n158), .B(n159), .Z(n150) );
  XOR2_X1 U290 ( .A(n152), .B(n153), .Z(n151) );
  XOR2_X1 U291 ( .A(n162), .B(n163), .Z(n158) );
  XOR2_X1 U292 ( .A(n99), .B(n100), .Z(n46) );
  XOR2_X1 U293 ( .A(n103), .B(n104), .Z(n99) );
  XOR2_X1 U294 ( .A(n101), .B(n102), .Z(n100) );
  XOR2_X1 U295 ( .A(n106), .B(n107), .Z(n48) );
  XOR2_X1 U296 ( .A(n80), .B(n81), .Z(n20) );
  XOR2_X1 U297 ( .A(n67), .B(n63), .Z(n33) );
  XOR2_X1 U298 ( .A(n64), .B(n61), .Z(n28) );
  NOR2_X1 U299 ( .A1(n8), .A2(n5), .ZN(n97) );
  NOR2_X1 U300 ( .A1(n80), .A2(n8), .ZN(n141) );
  NOR2_X1 U301 ( .A1(n21), .A2(n8), .ZN(n220) );
  NOR2_X1 U302 ( .A1(n12), .A2(n8), .ZN(n140) );
  XOR2_X1 U303 ( .A(n63), .B(n64), .Z(n62) );
  NOR2_X1 U304 ( .A1(n8), .A2(n34), .ZN(n200) );
  NOR2_X1 U305 ( .A1(n8), .A2(n106), .ZN(n234) );
  NOR2_X1 U306 ( .A1(n8), .A2(n61), .ZN(n188) );
  NOR2_X1 U307 ( .A1(n8), .A2(n101), .ZN(n115) );
  NOR2_X1 U308 ( .A1(n8), .A2(n64), .ZN(n201) );
  XOR2_X1 U309 ( .A(n239), .B(n240), .Z(n238) );
  NOR2_X1 U310 ( .A1(n9), .A2(n104), .ZN(n239) );
  NOR2_X1 U311 ( .A1(n8), .A2(n107), .ZN(n240) );
  XOR2_X1 U312 ( .A(n205), .B(n206), .Z(n204) );
  NOR2_X1 U313 ( .A1(n9), .A2(n34), .ZN(n205) );
  NOR2_X1 U314 ( .A1(n8), .A2(n67), .ZN(n206) );
  XOR2_X1 U315 ( .A(n225), .B(n226), .Z(n224) );
  NOR2_X1 U316 ( .A1(n9), .A2(n49), .ZN(n225) );
  NOR2_X1 U317 ( .A1(n8), .A2(n103), .ZN(n226) );
  XOR2_X1 U318 ( .A(n91), .B(n90), .Z(n215) );
  XOR2_X1 U319 ( .A(n77), .B(n78), .Z(n76) );
  XOR2_X1 U320 ( .A(n79), .B(n77), .Z(n167) );
  XOR2_X1 U321 ( .A(n244), .B(n245), .Z(n243) );
  NOR2_X1 U322 ( .A1(n9), .A2(n107), .ZN(n244) );
  NOR2_X1 U323 ( .A1(n9), .A2(n101), .ZN(n245) );
  XOR2_X1 U324 ( .A(n231), .B(n232), .Z(n230) );
  NOR2_X1 U325 ( .A1(n9), .A2(n103), .ZN(n231) );
  NOR2_X1 U326 ( .A1(n7), .A2(n106), .ZN(n232) );
  XOR2_X1 U327 ( .A(n160), .B(n161), .Z(n159) );
  NOR2_X1 U328 ( .A1(n9), .A2(n81), .ZN(n160) );
  NOR2_X1 U329 ( .A1(n6), .A2(n102), .ZN(n161) );
  XOR2_X1 U330 ( .A(n134), .B(n135), .Z(n133) );
  NOR2_X1 U331 ( .A1(n1), .A2(n72), .ZN(n135) );
  NOR2_X1 U332 ( .A1(n7), .A2(n67), .ZN(n134) );
  INV_X1 U333 ( .A(n12), .ZN(n1) );
  XOR2_X1 U334 ( .A(n175), .B(n176), .Z(n174) );
  NOR2_X1 U335 ( .A1(n7), .A2(n63), .ZN(n175) );
  NOR2_X1 U336 ( .A1(n6), .A2(n103), .ZN(n176) );
  XOR2_X1 U337 ( .A(n197), .B(n198), .Z(n196) );
  XOR2_X1 U338 ( .A(n201), .B(n202), .Z(n197) );
  XOR2_X1 U339 ( .A(n199), .B(n200), .Z(n198) );
  NOR2_X1 U340 ( .A1(n9), .A2(n64), .ZN(n202) );
  XOR2_X1 U341 ( .A(n170), .B(n171), .Z(n169) );
  NOR2_X1 U342 ( .A1(n80), .A2(n7), .ZN(n171) );
  NOR2_X1 U343 ( .A1(n6), .A2(n80), .ZN(n170) );
  XOR2_X1 U344 ( .A(n120), .B(n121), .Z(n119) );
  NOR2_X1 U345 ( .A1(n7), .A2(n104), .ZN(n121) );
  NOR2_X1 U346 ( .A1(n6), .A2(n104), .ZN(n120) );
  XOR2_X1 U347 ( .A(n154), .B(n155), .Z(n153) );
  NOR2_X1 U348 ( .A1(n81), .A2(n7), .ZN(n155) );
  NOR2_X1 U349 ( .A1(n6), .A2(n81), .ZN(n154) );
  XOR2_X1 U350 ( .A(n183), .B(n184), .Z(n182) );
  XOR2_X1 U351 ( .A(n187), .B(n188), .Z(n183) );
  XOR2_X1 U352 ( .A(n185), .B(n186), .Z(n184) );
  NOR2_X1 U353 ( .A1(n6), .A2(n61), .ZN(n187) );
  XOR2_X1 U354 ( .A(n126), .B(n127), .Z(n125) );
  NOR2_X1 U355 ( .A1(n6), .A2(n67), .ZN(n127) );
  NOR2_X1 U356 ( .A1(n8), .A2(n104), .ZN(n126) );
  XOR2_X1 U357 ( .A(n191), .B(n192), .Z(n190) );
  NOR2_X1 U358 ( .A1(n9), .A2(n63), .ZN(n192) );
  NOR2_X1 U359 ( .A1(n8), .A2(n63), .ZN(n191) );
  NOR2_X1 U360 ( .A1(n6), .A2(n63), .ZN(n186) );
  NOR2_X1 U361 ( .A1(n6), .A2(n101), .ZN(n143) );
  NOR2_X1 U362 ( .A1(n6), .A2(n2), .ZN(n25) );
  XOR2_X1 U363 ( .A(n43), .B(n44), .Z(n39) );
  XOR2_X1 U364 ( .A(n45), .B(n46), .Z(n43) );
  NOR2_X1 U365 ( .A1(n2), .A2(n8), .ZN(n44) );
  XOR2_X1 U366 ( .A(n47), .B(n48), .Z(n45) );
  XOR2_X1 U367 ( .A(n122), .B(n123), .Z(n118) );
  NOR2_X1 U368 ( .A1(n8), .A2(n102), .ZN(n123) );
  NOR2_X1 U369 ( .A1(n81), .A2(n8), .ZN(n122) );
  XOR2_X1 U370 ( .A(n227), .B(n228), .Z(n223) );
  NOR2_X1 U371 ( .A1(n7), .A2(n49), .ZN(n227) );
  NOR2_X1 U372 ( .A1(n8), .A2(n49), .ZN(n228) );
  XOR2_X1 U373 ( .A(n111), .B(n110), .Z(n250) );
  XOR2_X1 U374 ( .A(n85), .B(n216), .Z(n214) );
  NOR2_X1 U375 ( .A1(n12), .A2(n9), .ZN(n216) );
  XOR2_X1 U376 ( .A(n156), .B(n157), .Z(n152) );
  NOR2_X1 U377 ( .A1(n9), .A2(n80), .ZN(n156) );
  NOR2_X1 U378 ( .A1(n7), .A2(n34), .ZN(n157) );
  XOR2_X1 U379 ( .A(n193), .B(n194), .Z(n189) );
  XOR2_X1 U380 ( .A(n195), .B(n196), .Z(n193) );
  NOR2_X1 U381 ( .A1(n6), .A2(n106), .ZN(n194) );
  XOR2_X1 U382 ( .A(n203), .B(n204), .Z(n195) );
  NOR2_X1 U383 ( .A1(n6), .A2(n34), .ZN(n199) );
  NOR2_X1 U384 ( .A1(n6), .A2(n49), .ZN(n185) );
  NOR2_X1 U385 ( .A1(n6), .A2(n107), .ZN(n177) );
  XOR2_X1 U386 ( .A(n130), .B(n131), .Z(n128) );
  XOR2_X1 U387 ( .A(n138), .B(n139), .Z(n130) );
  XOR2_X1 U388 ( .A(n132), .B(n133), .Z(n131) );
  XOR2_X1 U389 ( .A(n140), .B(n141), .Z(n139) );
  XOR2_X1 U390 ( .A(n136), .B(n137), .Z(n132) );
  NOR2_X1 U391 ( .A1(n7), .A2(n64), .ZN(n137) );
  NOR2_X1 U392 ( .A1(n6), .A2(n64), .ZN(n136) );
  XOR2_X1 U393 ( .A(n207), .B(n208), .Z(n203) );
  NOR2_X1 U394 ( .A1(n9), .A2(n67), .ZN(n208) );
  XOR2_X1 U395 ( .A(n209), .B(n210), .Z(n207) );
  XOR2_X1 U396 ( .A(n214), .B(n215), .Z(n209) );
  XOR2_X1 U397 ( .A(n235), .B(n236), .Z(n233) );
  XOR2_X1 U398 ( .A(n242), .B(n243), .Z(n235) );
  XOR2_X1 U399 ( .A(n237), .B(n238), .Z(n236) );
  XOR2_X1 U400 ( .A(n246), .B(n247), .Z(n242) );
  XOR2_X1 U401 ( .A(n164), .B(n165), .Z(n162) );
  XOR2_X1 U402 ( .A(n168), .B(n169), .Z(n164) );
  XOR2_X1 U403 ( .A(n166), .B(n167), .Z(n165) );
  XOR2_X1 U404 ( .A(n78), .B(n172), .Z(n168) );
  NOR2_X1 U405 ( .A1(n7), .A2(n61), .ZN(n129) );
  NOR2_X1 U406 ( .A1(n7), .A2(n107), .ZN(n178) );
  XOR2_X1 U407 ( .A(n97), .B(n241), .Z(n237) );
  NOR2_X1 U408 ( .A1(n7), .A2(n102), .ZN(n241) );
  NOR2_X1 U409 ( .A1(n9), .A2(n102), .ZN(n163) );
  NOR2_X1 U410 ( .A1(n9), .A2(n106), .ZN(n257) );
  NOR2_X1 U411 ( .A1(n12), .A2(n7), .ZN(n172) );
  INV_X1 U412 ( .A(n21), .ZN(n3) );
  XOR2_X1 U413 ( .A(n82), .B(n83), .Z(N21) );
  XNOR2_X1 U414 ( .A(n90), .B(n91), .ZN(n82) );
  XOR2_X1 U415 ( .A(n84), .B(n4), .Z(n83) );
  INV_X1 U416 ( .A(n85), .ZN(n4) );
  XOR2_X1 U417 ( .A(n59), .B(n60), .Z(N25) );
  XOR2_X1 U418 ( .A(n65), .B(n66), .Z(n59) );
  XOR2_X1 U419 ( .A(n61), .B(n62), .Z(n60) );
  XOR2_X1 U420 ( .A(n34), .B(n67), .Z(n66) );
  XOR2_X1 U421 ( .A(n112), .B(n113), .Z(N19) );
  XOR2_X1 U422 ( .A(n142), .B(n143), .Z(n112) );
  XOR2_X1 U423 ( .A(n114), .B(n115), .Z(n113) );
  OR2_X1 U424 ( .A1(n101), .A2(n7), .ZN(n142) );
  XOR2_X1 U425 ( .A(n37), .B(n38), .Z(N28) );
  XOR2_X1 U426 ( .A(n50), .B(n51), .Z(n37) );
  XOR2_X1 U427 ( .A(n39), .B(n40), .Z(n38) );
  XOR2_X1 U428 ( .A(n54), .B(n55), .Z(n50) );
  XOR2_X1 U429 ( .A(n144), .B(n145), .Z(N18) );
  XOR2_X1 U430 ( .A(n173), .B(n174), .Z(n144) );
  XOR2_X1 U431 ( .A(n146), .B(n147), .Z(n145) );
  XOR2_X1 U432 ( .A(n177), .B(n178), .Z(n173) );
  XOR2_X1 U433 ( .A(n92), .B(n93), .Z(N20) );
  XOR2_X1 U434 ( .A(n108), .B(n109), .Z(n92) );
  XOR2_X1 U435 ( .A(n94), .B(n95), .Z(n93) );
  XNOR2_X1 U436 ( .A(n110), .B(n111), .ZN(n108) );
  OR2_X1 U437 ( .A1(n61), .A2(n9), .ZN(n246) );
  NAND2_X1 U438 ( .A1(port_x1_2), .A2(port_x2_3), .ZN(n49) );
  NAND2_X1 U439 ( .A1(port_x2_3), .A2(port_x1_0), .ZN(n34) );
  NAND2_X1 U440 ( .A1(port_x2_0), .A2(port_x1_0), .ZN(n12) );
  XOR2_X1 U441 ( .A(n212), .B(n213), .Z(n88) );
  NAND2_X1 U442 ( .A1(port_x3_2), .A2(port_x2_0), .ZN(n212) );
  NAND2_X1 U443 ( .A1(port_x3_3), .A2(port_x2_0), .ZN(n213) );
  XOR2_X1 U444 ( .A(n251), .B(n252), .Z(n95) );
  NAND2_X1 U445 ( .A1(port_x2_2), .A2(port_x3_3), .ZN(n251) );
  NAND2_X1 U446 ( .A1(port_x3_1), .A2(port_x2_3), .ZN(n252) );
  XOR2_X1 U447 ( .A(n254), .B(n255), .Z(n109) );
  NAND2_X1 U448 ( .A1(port_x3_1), .A2(port_x2_1), .ZN(n254) );
  NAND2_X1 U449 ( .A1(port_x3_2), .A2(port_x2_1), .ZN(n255) );
  NAND2_X1 U450 ( .A1(port_x2_2), .A2(port_x1_2), .ZN(n61) );
  NAND2_X1 U451 ( .A1(port_x2_2), .A2(port_x1_0), .ZN(n64) );
  NAND2_X1 U452 ( .A1(port_x1_3), .A2(port_x2_0), .ZN(n63) );
  NAND2_X1 U453 ( .A1(port_x1_2), .A2(port_x2_0), .ZN(n67) );
  NAND2_X1 U454 ( .A1(port_x2_3), .A2(port_x1_3), .ZN(n21) );
  NAND2_X1 U455 ( .A1(port_x1_1), .A2(port_x2_0), .ZN(n81) );
  NAND2_X1 U456 ( .A1(port_x2_2), .A2(port_x1_1), .ZN(n104) );
  NAND2_X1 U457 ( .A1(port_x1_1), .A2(port_x2_1), .ZN(n102) );
  NAND2_X1 U458 ( .A1(port_x1_1), .A2(port_x2_3), .ZN(n107) );
  NAND2_X1 U459 ( .A1(port_x1_2), .A2(port_x2_1), .ZN(n101) );
  NAND2_X1 U460 ( .A1(port_x2_1), .A2(port_x1_0), .ZN(n80) );
  NAND2_X1 U461 ( .A1(port_x2_1), .A2(port_x1_3), .ZN(n103) );
  NAND2_X1 U462 ( .A1(port_x2_2), .A2(port_x1_3), .ZN(n106) );
  XOR2_X1 U463 ( .A(port_x2_2), .B(n8), .Z(n65) );
  XOR2_X1 U464 ( .A(n6), .B(port_x0_0), .Z(n138) );
  XOR2_X1 U465 ( .A(n49), .B(port_x3_1), .Z(n47) );
  XOR2_X1 U466 ( .A(n148), .B(n149), .Z(n147) );
  NAND2_X1 U467 ( .A1(n3), .A2(port_x3_3), .ZN(n148) );
  NOR2_X1 U468 ( .A1(n7), .A2(n103), .ZN(n149) );
  XOR2_X1 U469 ( .A(n30), .B(n31), .Z(n29) );
  NAND2_X1 U470 ( .A1(port_x3_2), .A2(port_x1_0), .ZN(n30) );
  NAND2_X1 U471 ( .A1(port_x3_3), .A2(port_x1_0), .ZN(n31) );
  XOR2_X1 U472 ( .A(n41), .B(n42), .Z(n40) );
  NAND2_X1 U473 ( .A1(port_x1_2), .A2(port_x3_3), .ZN(n41) );
  NAND2_X1 U474 ( .A1(port_x3_1), .A2(port_x1_3), .ZN(n42) );
  XOR2_X1 U475 ( .A(n52), .B(n53), .Z(n51) );
  NAND2_X1 U476 ( .A1(port_x3_1), .A2(port_x1_1), .ZN(n52) );
  NAND2_X1 U477 ( .A1(port_x3_2), .A2(port_x1_1), .ZN(n53) );
  XOR2_X1 U478 ( .A(n17), .B(n18), .Z(n16) );
  NAND2_X1 U479 ( .A1(port_x3_1), .A2(port_x1_0), .ZN(n17) );
  NAND2_X1 U480 ( .A1(port_x1_1), .A2(port_x3_0), .ZN(n18) );
  XOR2_X1 U481 ( .A(n211), .B(n88), .Z(n210) );
  XOR2_X1 U482 ( .A(port_x3_2), .B(port_x0_2), .Z(n211) );
  XOR2_X1 U483 ( .A(n96), .B(n97), .Z(n94) );
  XOR2_X1 U484 ( .A(n98), .B(n46), .Z(n96) );
  XOR2_X1 U485 ( .A(n105), .B(n48), .Z(n98) );
  XOR2_X1 U486 ( .A(n49), .B(port_x1_1), .Z(n105) );
  XOR2_X1 U487 ( .A(n248), .B(n249), .Z(n247) );
  XOR2_X1 U488 ( .A(n253), .B(n109), .Z(n248) );
  XOR2_X1 U489 ( .A(n250), .B(n95), .Z(n249) );
  XOR2_X1 U490 ( .A(port_x3_1), .B(port_x0_1), .Z(n253) );
  XOR2_X1 U491 ( .A(n26), .B(n27), .Z(n24) );
  XOR2_X1 U492 ( .A(n32), .B(n33), .Z(n26) );
  XOR2_X1 U493 ( .A(n28), .B(n29), .Z(n27) );
  XOR2_X1 U494 ( .A(n34), .B(port_x3_2), .Z(n32) );
  XOR2_X1 U495 ( .A(n86), .B(n87), .Z(n84) );
  XOR2_X1 U496 ( .A(n89), .B(n33), .Z(n86) );
  XOR2_X1 U497 ( .A(n28), .B(n88), .Z(n87) );
  XOR2_X1 U498 ( .A(n34), .B(port_x1_2), .Z(n89) );
  XOR2_X1 U499 ( .A(port_x3_3), .B(port_x0_3), .Z(n166) );
  NAND2_X1 U500 ( .A1(port_x2_1), .A2(port_x3_0), .ZN(n77) );
  NAND2_X1 U501 ( .A1(port_x3_3), .A2(port_x2_3), .ZN(n78) );
  XOR2_X1 U502 ( .A(n12), .B(n56), .Z(N27) );
  XOR2_X1 U503 ( .A(port_x2_0), .B(n6), .Z(n56) );
  NAND2_X1 U504 ( .A1(port_x2_2), .A2(port_x3_2), .ZN(n90) );
  NAND2_X1 U505 ( .A1(port_x2_2), .A2(port_x3_1), .ZN(n110) );
  NAND2_X1 U506 ( .A1(port_x2_2), .A2(port_x3_0), .ZN(n91) );
  NAND2_X1 U507 ( .A1(port_x2_1), .A2(port_x3_3), .ZN(n111) );
  NAND2_X1 U508 ( .A1(port_x3_1), .A2(port_x2_0), .ZN(n79) );
  XOR2_X1 U509 ( .A(n57), .B(n20), .Z(N26) );
  XOR2_X1 U510 ( .A(n21), .B(n58), .Z(n57) );
  XOR2_X1 U511 ( .A(n5), .B(port_x3_3), .Z(n58) );
  XOR2_X1 U512 ( .A(n10), .B(n11), .Z(N31) );
  NAND2_X1 U513 ( .A1(port_x3_0), .A2(port_x1_0), .ZN(n10) );
  XOR2_X1 U514 ( .A(n12), .B(port_x3_0), .Z(n11) );
  XOR2_X1 U515 ( .A(n179), .B(n180), .Z(N17) );
  NAND2_X1 U516 ( .A1(n3), .A2(port_x3_0), .ZN(n179) );
  XOR2_X1 U517 ( .A(n181), .B(n182), .Z(n180) );
  XOR2_X1 U518 ( .A(n189), .B(n190), .Z(n181) );
  XOR2_X1 U519 ( .A(port_x3_1), .B(n68), .Z(N24) );
  XOR2_X1 U520 ( .A(n69), .B(n46), .Z(n68) );
  XOR2_X1 U521 ( .A(n70), .B(n48), .Z(n69) );
  XNOR2_X1 U522 ( .A(port_x2_1), .B(n49), .ZN(n70) );
  XOR2_X1 U523 ( .A(n217), .B(n218), .Z(N16) );
  XOR2_X1 U524 ( .A(n256), .B(n257), .Z(n217) );
  XOR2_X1 U525 ( .A(n219), .B(n220), .Z(n218) );
  NAND2_X1 U526 ( .A1(port_x3_1), .A2(n3), .ZN(n256) );
  XOR2_X1 U527 ( .A(n22), .B(n23), .Z(N29) );
  XOR2_X1 U528 ( .A(n35), .B(n36), .Z(n22) );
  XOR2_X1 U529 ( .A(n24), .B(n25), .Z(n23) );
  AND2_X1 U530 ( .A1(port_x3_0), .A2(port_x1_2), .ZN(n36) );
  XOR2_X1 U531 ( .A(n73), .B(n74), .Z(N22) );
  XOR2_X1 U532 ( .A(n79), .B(n20), .Z(n73) );
  XOR2_X1 U533 ( .A(n75), .B(n76), .Z(n74) );
  NAND2_X1 U534 ( .A1(port_x1_3), .A2(n21), .ZN(n75) );
  XOR2_X1 U535 ( .A(n13), .B(n14), .Z(N30) );
  XOR2_X1 U536 ( .A(n19), .B(n20), .Z(n13) );
  XOR2_X1 U537 ( .A(n15), .B(n16), .Z(n14) );
  XOR2_X1 U538 ( .A(n21), .B(port_x3_3), .Z(n19) );
  NAND2_X1 U539 ( .A1(port_x2_3), .A2(port_x3_0), .ZN(n85) );
  NAND2_X1 U540 ( .A1(port_x2_0), .A2(port_x3_0), .ZN(n72) );
  INV_X1 U541 ( .A(port_x2_3), .ZN(n5) );
  INV_X1 U542 ( .A(port_x1_3), .ZN(n2) );
  NAND2_X1 U543 ( .A1(port_x1_2), .A2(port_x3_1), .ZN(n54) );
  NAND2_X1 U544 ( .A1(port_x3_2), .A2(port_x1_2), .ZN(n35) );
  NAND2_X1 U545 ( .A1(port_x3_3), .A2(port_x1_3), .ZN(n15) );
  NAND2_X1 U546 ( .A1(n71), .A2(n72), .ZN(N23) );
  NAND2_X1 U547 ( .A1(port_x1_0), .A2(n12), .ZN(n71) );
  AND2_X1 U548 ( .A1(port_x3_3), .A2(port_x1_1), .ZN(n55) );
endmodule

