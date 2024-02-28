/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:12:53 2023
/////////////////////////////////////////////////////////////


module Sbox_0123456789CDEFBA_4shares ( port_x0_0, port_x0_1, port_x0_2, 
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
  wire   N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200;

  DFF_X1 y2_2_reg ( .D(N39), .CK(clk), .Q(port_y2_2), .QN() );
  DFF_X1 y1_2_reg ( .D(N35), .CK(clk), .Q(port_y1_2), .QN() );
  DFF_X1 y0_3_reg ( .D(N32), .CK(clk), .Q(port_y0_3), .QN() );
  DFF_X1 y3_3_reg ( .D(port_x3_0), .CK(clk), .Q(port_y3_3), .QN() );
  DFF_X1 y0_1_reg ( .D(N30), .CK(clk), .Q(port_y0_1), .QN() );
  DFF_X1 y1_1_reg ( .D(N34), .CK(clk), .Q(port_y1_1), .QN() );
  DFF_X1 y0_2_reg ( .D(N31), .CK(clk), .Q(port_y0_2), .QN() );
  DFF_X1 y2_3_reg ( .D(N40), .CK(clk), .Q(port_y2_3), .QN() );
  DFF_X1 y1_3_reg ( .D(N36), .CK(clk), .Q(port_y1_3), .QN() );
  DFF_X1 y2_1_reg ( .D(N38), .CK(clk), .Q(port_y2_1), .QN() );
  DFF_X1 y0_0_reg ( .D(N29), .CK(clk), .Q(port_y0_0), .QN() );
  DFF_X1 y3_0_reg ( .D(port_x3_1), .CK(clk), .Q(port_y3_0), .QN() );
  DFF_X1 y2_0_reg ( .D(N37), .CK(clk), .Q(port_y2_0), .QN() );
  DFF_X1 y3_1_reg ( .D(port_x3_2), .CK(clk), .Q(port_y3_1), .QN() );
  DFF_X1 y1_0_reg ( .D(N33), .CK(clk), .Q(port_y1_0), .QN() );
  DFF_X1 y3_2_reg ( .D(port_x3_3), .CK(clk), .Q(port_y3_2), .QN() );
  INV_X1 U215 ( .A(port_x2_2), .ZN(n6) );
  INV_X1 U216 ( .A(port_x2_1), .ZN(n5) );
  INV_X1 U217 ( .A(port_x2_0), .ZN(n4) );
  INV_X1 U218 ( .A(port_x2_3), .ZN(n7) );
  XOR2_X1 U219 ( .A(n77), .B(n78), .Z(N32) );
  XOR2_X1 U220 ( .A(n81), .B(n82), .Z(n77) );
  XOR2_X1 U221 ( .A(n79), .B(n80), .Z(n78) );
  XOR2_X1 U222 ( .A(n89), .B(n90), .Z(n81) );
  XOR2_X1 U223 ( .A(n38), .B(n39), .Z(n11) );
  XOR2_X1 U224 ( .A(n65), .B(n66), .Z(n25) );
  XOR2_X1 U225 ( .A(n67), .B(n68), .Z(n24) );
  XOR2_X1 U226 ( .A(n69), .B(n70), .Z(n27) );
  XOR2_X1 U227 ( .A(n17), .B(n18), .Z(n16) );
  XOR2_X1 U228 ( .A(n20), .B(n17), .Z(n51) );
  XOR2_X1 U229 ( .A(n18), .B(n15), .Z(n46) );
  XOR2_X1 U230 ( .A(n136), .B(n137), .Z(n135) );
  NOR2_X1 U231 ( .A1(n9), .A2(n5), .ZN(n136) );
  NOR2_X1 U232 ( .A1(n12), .A2(n5), .ZN(n137) );
  XOR2_X1 U233 ( .A(n105), .B(n106), .Z(n104) );
  NOR2_X1 U234 ( .A1(n21), .A2(n5), .ZN(n106) );
  NOR2_X1 U235 ( .A1(n4), .A2(n21), .ZN(n105) );
  XOR2_X1 U236 ( .A(n153), .B(n154), .Z(n152) );
  NOR2_X1 U237 ( .A1(n4), .A2(n15), .ZN(n153) );
  NOR2_X1 U238 ( .A1(n4), .A2(n66), .ZN(n154) );
  XOR2_X1 U239 ( .A(n91), .B(n92), .Z(n90) );
  NOR2_X1 U240 ( .A1(n17), .A2(n5), .ZN(n92) );
  NOR2_X1 U241 ( .A1(n4), .A2(n67), .ZN(n91) );
  XOR2_X1 U242 ( .A(n198), .B(n199), .Z(n197) );
  NOR2_X1 U243 ( .A1(n6), .A2(n70), .ZN(n198) );
  NOR2_X1 U244 ( .A1(n7), .A2(n69), .ZN(n199) );
  XOR2_X1 U245 ( .A(n167), .B(n168), .Z(n166) );
  NOR2_X1 U246 ( .A1(n6), .A2(n21), .ZN(n167) );
  NOR2_X1 U247 ( .A1(n6), .A2(n20), .ZN(n168) );
  XOR2_X1 U248 ( .A(n184), .B(n185), .Z(n183) );
  NOR2_X1 U249 ( .A1(n6), .A2(n65), .ZN(n184) );
  NOR2_X1 U250 ( .A1(n6), .A2(n66), .ZN(n185) );
  XOR2_X1 U251 ( .A(n122), .B(n123), .Z(n121) );
  NOR2_X1 U252 ( .A1(n7), .A2(n28), .ZN(n122) );
  NOR2_X1 U253 ( .A1(n4), .A2(n65), .ZN(n123) );
  XOR2_X1 U254 ( .A(n190), .B(n191), .Z(n189) );
  XOR2_X1 U255 ( .A(n194), .B(n195), .Z(n190) );
  XOR2_X1 U256 ( .A(n192), .B(n193), .Z(n191) );
  NOR2_X1 U257 ( .A1(n7), .A2(n70), .ZN(n194) );
  XOR2_X1 U258 ( .A(n128), .B(n129), .Z(n127) );
  XOR2_X1 U259 ( .A(n132), .B(n133), .Z(n128) );
  XOR2_X1 U260 ( .A(n130), .B(n131), .Z(n129) );
  NOR2_X1 U261 ( .A1(n20), .A2(n5), .ZN(n132) );
  XOR2_X1 U262 ( .A(n159), .B(n160), .Z(n158) );
  XOR2_X1 U263 ( .A(n163), .B(n164), .Z(n159) );
  XOR2_X1 U264 ( .A(n161), .B(n162), .Z(n160) );
  NOR2_X1 U265 ( .A1(n9), .A2(n7), .ZN(n163) );
  XOR2_X1 U266 ( .A(n97), .B(n98), .Z(n96) );
  XOR2_X1 U267 ( .A(n101), .B(n102), .Z(n97) );
  XOR2_X1 U268 ( .A(n99), .B(n100), .Z(n98) );
  NOR2_X1 U269 ( .A1(n9), .A2(n6), .ZN(n101) );
  XOR2_X1 U270 ( .A(n176), .B(n177), .Z(n175) );
  XOR2_X1 U271 ( .A(n180), .B(n181), .Z(n176) );
  XOR2_X1 U272 ( .A(n178), .B(n179), .Z(n177) );
  NOR2_X1 U273 ( .A1(n7), .A2(n18), .ZN(n180) );
  XOR2_X1 U274 ( .A(n114), .B(n115), .Z(n113) );
  XOR2_X1 U275 ( .A(n118), .B(n119), .Z(n114) );
  XOR2_X1 U276 ( .A(n116), .B(n117), .Z(n115) );
  NOR2_X1 U277 ( .A1(n38), .A2(n5), .ZN(n119) );
  XOR2_X1 U278 ( .A(n145), .B(n146), .Z(n144) );
  XOR2_X1 U279 ( .A(n149), .B(n150), .Z(n145) );
  XOR2_X1 U280 ( .A(n147), .B(n148), .Z(n146) );
  NOR2_X1 U281 ( .A1(n4), .A2(n68), .ZN(n149) );
  XOR2_X1 U282 ( .A(n83), .B(n84), .Z(n82) );
  XOR2_X1 U283 ( .A(n87), .B(n88), .Z(n83) );
  XOR2_X1 U284 ( .A(n85), .B(n86), .Z(n84) );
  NOR2_X1 U285 ( .A1(n38), .A2(n6), .ZN(n87) );
  NOR2_X1 U286 ( .A1(n7), .A2(n67), .ZN(n193) );
  NOR2_X1 U287 ( .A1(n7), .A2(n12), .ZN(n133) );
  NOR2_X1 U288 ( .A1(n7), .A2(n21), .ZN(n164) );
  NOR2_X1 U289 ( .A1(n7), .A2(n68), .ZN(n181) );
  NOR2_X1 U290 ( .A1(n7), .A2(n38), .ZN(n117) );
  NOR2_X1 U291 ( .A1(n7), .A2(n17), .ZN(n148) );
  NOR2_X1 U292 ( .A1(n7), .A2(n66), .ZN(n173) );
  NOR2_X1 U293 ( .A1(n7), .A2(n39), .ZN(n111) );
  NOR2_X1 U294 ( .A1(n5), .A2(n68), .ZN(n195) );
  NOR2_X1 U295 ( .A1(n5), .A2(n69), .ZN(n100) );
  NOR2_X1 U296 ( .A1(n6), .A2(n17), .ZN(n150) );
  NOR2_X1 U297 ( .A1(n6), .A2(n28), .ZN(n88) );
  NOR2_X1 U298 ( .A1(n6), .A2(n15), .ZN(n142) );
  NOR2_X1 U299 ( .A1(n6), .A2(n67), .ZN(n80) );
  NOR2_X1 U300 ( .A1(n8), .A2(n7), .ZN(n43) );
  NOR2_X1 U301 ( .A1(n4), .A2(n28), .ZN(n131) );
  NOR2_X1 U302 ( .A1(n4), .A2(n18), .ZN(n162) );
  NOR2_X1 U303 ( .A1(n4), .A2(n17), .ZN(n86) );
  XOR2_X1 U304 ( .A(n93), .B(n94), .Z(n89) );
  OR2_X1 U305 ( .A1(n67), .A2(n5), .ZN(n93) );
  XOR2_X1 U306 ( .A(n95), .B(n96), .Z(n94) );
  XOR2_X1 U307 ( .A(n103), .B(n104), .Z(n95) );
  XOR2_X1 U308 ( .A(n60), .B(n61), .Z(n56) );
  XOR2_X1 U309 ( .A(n27), .B(n24), .Z(n60) );
  XOR2_X1 U310 ( .A(n25), .B(n62), .Z(n61) );
  XOR2_X1 U311 ( .A(n63), .B(n64), .Z(n62) );
  NOR2_X1 U312 ( .A1(n12), .A2(n6), .ZN(n102) );
  NOR2_X1 U313 ( .A1(n8), .A2(n6), .ZN(n53) );
  NOR2_X1 U314 ( .A1(n7), .A2(n20), .ZN(n161) );
  NOR2_X1 U315 ( .A1(n5), .A2(n66), .ZN(n178) );
  NOR2_X1 U316 ( .A1(n5), .A2(n70), .ZN(n116) );
  NOR2_X1 U317 ( .A1(n6), .A2(n68), .ZN(n192) );
  NOR2_X1 U318 ( .A1(n6), .A2(n18), .ZN(n147) );
  NOR2_X1 U319 ( .A1(n6), .A2(n69), .ZN(n85) );
  NOR2_X1 U320 ( .A1(n4), .A2(n38), .ZN(n130) );
  NOR2_X1 U321 ( .A1(n4), .A2(n69), .ZN(n99) );
  NOR2_X1 U322 ( .A1(n4), .A2(n70), .ZN(n118) );
  NOR2_X1 U323 ( .A1(n39), .A2(n5), .ZN(n179) );
  XOR2_X1 U324 ( .A(n4), .B(n9), .Z(N40) );
  XOR2_X1 U325 ( .A(n10), .B(n11), .Z(N39) );
  XOR2_X1 U326 ( .A(n7), .B(n12), .Z(n10) );
  INV_X1 U327 ( .A(n15), .ZN(n1) );
  XOR2_X1 U328 ( .A(n22), .B(n23), .Z(N37) );
  XOR2_X1 U329 ( .A(n26), .B(n27), .Z(n22) );
  XOR2_X1 U330 ( .A(n24), .B(n25), .Z(n23) );
  XOR2_X1 U331 ( .A(n5), .B(n28), .Z(n26) );
  XOR2_X1 U332 ( .A(n54), .B(n55), .Z(N33) );
  XOR2_X1 U333 ( .A(n71), .B(n72), .Z(n54) );
  XOR2_X1 U334 ( .A(n56), .B(n57), .Z(n55) );
  XOR2_X1 U335 ( .A(n75), .B(n76), .Z(n71) );
  XOR2_X1 U336 ( .A(n170), .B(n171), .Z(N29) );
  XOR2_X1 U337 ( .A(n174), .B(n175), .Z(n170) );
  XOR2_X1 U338 ( .A(n172), .B(n173), .Z(n171) );
  XOR2_X1 U339 ( .A(n182), .B(n183), .Z(n174) );
  XOR2_X1 U340 ( .A(n108), .B(n109), .Z(N31) );
  XOR2_X1 U341 ( .A(n112), .B(n113), .Z(n108) );
  XOR2_X1 U342 ( .A(n110), .B(n111), .Z(n109) );
  XOR2_X1 U343 ( .A(n120), .B(n121), .Z(n112) );
  XOR2_X1 U344 ( .A(n139), .B(n140), .Z(N30) );
  XOR2_X1 U345 ( .A(n143), .B(n144), .Z(n139) );
  XOR2_X1 U346 ( .A(n141), .B(n142), .Z(n140) );
  XOR2_X1 U347 ( .A(n151), .B(n152), .Z(n143) );
  INV_X1 U348 ( .A(n39), .ZN(n3) );
  INV_X1 U349 ( .A(n65), .ZN(n2) );
  OR2_X1 U350 ( .A1(n5), .A2(n18), .ZN(n79) );
  NAND2_X1 U351 ( .A1(port_x1_2), .A2(port_x3_2), .ZN(n18) );
  NAND2_X1 U352 ( .A1(port_x3_1), .A2(port_x1_0), .ZN(n12) );
  NAND2_X1 U353 ( .A1(port_x1_2), .A2(port_x3_0), .ZN(n17) );
  NAND2_X1 U354 ( .A1(port_x3_3), .A2(port_x1_0), .ZN(n20) );
  NAND2_X1 U355 ( .A1(port_x3_2), .A2(port_x1_0), .ZN(n21) );
  NAND2_X1 U356 ( .A1(port_x3_0), .A2(port_x1_0), .ZN(n9) );
  NAND2_X1 U357 ( .A1(port_x1_1), .A2(port_x3_1), .ZN(n28) );
  NAND2_X1 U358 ( .A1(port_x1_3), .A2(port_x3_0), .ZN(n15) );
  NAND2_X1 U359 ( .A1(port_x3_3), .A2(port_x1_1), .ZN(n70) );
  NAND2_X1 U360 ( .A1(port_x1_2), .A2(port_x3_3), .ZN(n68) );
  NAND2_X1 U361 ( .A1(port_x3_2), .A2(port_x1_3), .ZN(n66) );
  NAND2_X1 U362 ( .A1(port_x1_2), .A2(port_x3_1), .ZN(n67) );
  NAND2_X1 U363 ( .A1(port_x1_1), .A2(port_x3_0), .ZN(n38) );
  NAND2_X1 U364 ( .A1(port_x3_2), .A2(port_x1_1), .ZN(n69) );
  NAND2_X1 U365 ( .A1(port_x3_3), .A2(port_x1_3), .ZN(n39) );
  NAND2_X1 U366 ( .A1(port_x1_3), .A2(port_x3_1), .ZN(n65) );
  XOR2_X1 U367 ( .A(n48), .B(n49), .Z(n47) );
  NAND2_X1 U368 ( .A1(port_x3_2), .A2(port_x2_0), .ZN(n48) );
  NAND2_X1 U369 ( .A1(port_x3_3), .A2(port_x2_0), .ZN(n49) );
  XOR2_X1 U370 ( .A(n58), .B(n59), .Z(n57) );
  NAND2_X1 U371 ( .A1(port_x2_2), .A2(port_x3_3), .ZN(n58) );
  NAND2_X1 U372 ( .A1(port_x2_3), .A2(port_x3_1), .ZN(n59) );
  XOR2_X1 U373 ( .A(n73), .B(n74), .Z(n72) );
  NAND2_X1 U374 ( .A1(port_x2_1), .A2(port_x3_3), .ZN(n73) );
  NAND2_X1 U375 ( .A1(port_x2_2), .A2(port_x3_1), .ZN(n74) );
  XOR2_X1 U376 ( .A(n35), .B(n36), .Z(n34) );
  NAND2_X1 U377 ( .A1(port_x3_1), .A2(port_x2_0), .ZN(n35) );
  NAND2_X1 U378 ( .A1(port_x2_1), .A2(port_x3_0), .ZN(n36) );
  XOR2_X1 U379 ( .A(n186), .B(n187), .Z(n182) );
  NAND2_X1 U380 ( .A1(port_x2_2), .A2(n3), .ZN(n186) );
  XOR2_X1 U381 ( .A(n188), .B(n189), .Z(n187) );
  XOR2_X1 U382 ( .A(n196), .B(n197), .Z(n188) );
  XOR2_X1 U383 ( .A(n124), .B(n125), .Z(n120) );
  NAND2_X1 U384 ( .A1(port_x2_1), .A2(n1), .ZN(n124) );
  XOR2_X1 U385 ( .A(n126), .B(n127), .Z(n125) );
  XOR2_X1 U386 ( .A(n134), .B(n135), .Z(n126) );
  XOR2_X1 U387 ( .A(n155), .B(n156), .Z(n151) );
  NAND2_X1 U388 ( .A1(n3), .A2(port_x2_0), .ZN(n155) );
  XOR2_X1 U389 ( .A(n157), .B(n158), .Z(n156) );
  XOR2_X1 U390 ( .A(n165), .B(n166), .Z(n157) );
  XOR2_X1 U391 ( .A(n44), .B(n45), .Z(n42) );
  XOR2_X1 U392 ( .A(n50), .B(n51), .Z(n44) );
  XOR2_X1 U393 ( .A(n46), .B(n47), .Z(n45) );
  XOR2_X1 U394 ( .A(n21), .B(port_x1_2), .Z(n50) );
  XOR2_X1 U395 ( .A(port_x0_1), .B(n200), .Z(n196) );
  NOR2_X1 U396 ( .A1(n5), .A2(n28), .ZN(n200) );
  XOR2_X1 U397 ( .A(port_x0_3), .B(n138), .Z(n134) );
  NOR2_X1 U398 ( .A1(n4), .A2(n12), .ZN(n138) );
  XOR2_X1 U399 ( .A(port_x0_2), .B(n169), .Z(n165) );
  NOR2_X1 U400 ( .A1(n4), .A2(n20), .ZN(n169) );
  XOR2_X1 U401 ( .A(port_x0_0), .B(n107), .Z(n103) );
  NOR2_X1 U402 ( .A1(n4), .A2(n9), .ZN(n107) );
  NAND2_X1 U403 ( .A1(port_x1_1), .A2(n28), .ZN(n64) );
  XOR2_X1 U404 ( .A(n13), .B(n14), .Z(N38) );
  XNOR2_X1 U405 ( .A(n19), .B(n20), .ZN(n13) );
  XOR2_X1 U406 ( .A(n15), .B(n16), .Z(n14) );
  XOR2_X1 U407 ( .A(n21), .B(port_x2_2), .Z(n19) );
  XOR2_X1 U408 ( .A(n40), .B(n41), .Z(N34) );
  XOR2_X1 U409 ( .A(n52), .B(n53), .Z(n40) );
  XOR2_X1 U410 ( .A(n42), .B(n43), .Z(n41) );
  NAND2_X1 U411 ( .A1(port_x2_2), .A2(port_x3_2), .ZN(n52) );
  XOR2_X1 U412 ( .A(n31), .B(n32), .Z(N35) );
  XOR2_X1 U413 ( .A(n37), .B(n11), .Z(n31) );
  XOR2_X1 U414 ( .A(n33), .B(n34), .Z(n32) );
  XOR2_X1 U415 ( .A(n12), .B(port_x1_3), .Z(n37) );
  INV_X1 U416 ( .A(port_x3_0), .ZN(n8) );
  NAND2_X1 U417 ( .A1(port_x2_1), .A2(port_x3_2), .ZN(n76) );
  NAND2_X1 U418 ( .A1(n1), .A2(port_x2_3), .ZN(n141) );
  NAND2_X1 U419 ( .A1(n2), .A2(port_x2_3), .ZN(n172) );
  NAND2_X1 U420 ( .A1(n2), .A2(port_x2_1), .ZN(n110) );
  NAND2_X1 U421 ( .A1(port_x3_2), .A2(port_x2_3), .ZN(n63) );
  NAND2_X1 U422 ( .A1(port_x2_1), .A2(port_x3_1), .ZN(n75) );
  NAND2_X1 U423 ( .A1(port_x3_3), .A2(port_x2_3), .ZN(n33) );
  NAND2_X1 U424 ( .A1(n29), .A2(n30), .ZN(N36) );
  NAND2_X1 U425 ( .A1(port_x2_0), .A2(port_x3_0), .ZN(n30) );
  NAND2_X1 U426 ( .A1(port_x1_0), .A2(n9), .ZN(n29) );
endmodule

