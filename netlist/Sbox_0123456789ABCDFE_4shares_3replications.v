/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:10:03 2023
/////////////////////////////////////////////////////////////


module Sbox_0123456789ABCDFE_4shares_3replications ( port_x0_0, port_x0_1, 
        port_x0_2, port_x0_3, port_x1_0, port_x1_1, port_x1_2, port_x1_3, 
        port_x2_0, port_x2_1, port_x2_2, port_x2_3, port_x3_0, port_x3_1, 
        port_x3_2, port_x3_3, port_y0_0, port_y0_1, port_y0_2, port_y0_3, 
        port_y1_0, port_y1_1, port_y1_2, port_y1_3, port_y2_0, port_y2_1, 
        port_y2_2, port_y2_3, port_y3_0, port_y3_1, port_y3_2, port_y3_3, clk, 
        reset );
  input [2:0] port_x0_0;
  input [2:0] port_x0_1;
  input [2:0] port_x0_2;
  input [2:0] port_x0_3;
  input [2:0] port_x1_0;
  input [2:0] port_x1_1;
  input [2:0] port_x1_2;
  input [2:0] port_x1_3;
  input [2:0] port_x2_0;
  input [2:0] port_x2_1;
  input [2:0] port_x2_2;
  input [2:0] port_x2_3;
  input [2:0] port_x3_0;
  input [2:0] port_x3_1;
  input [2:0] port_x3_2;
  input [2:0] port_x3_3;
  output [2:0] port_y0_0;
  output [2:0] port_y0_1;
  output [2:0] port_y0_2;
  output [2:0] port_y0_3;
  output [2:0] port_y1_0;
  output [2:0] port_y1_1;
  output [2:0] port_y1_2;
  output [2:0] port_y1_3;
  output [2:0] port_y2_0;
  output [2:0] port_y2_1;
  output [2:0] port_y2_2;
  output [2:0] port_y2_3;
  output [2:0] port_y3_0;
  output [2:0] port_y3_1;
  output [2:0] port_y3_2;
  output [2:0] port_y3_3;
  input clk, reset;
  wire   t0_0_0, t0_0_1, t0_0_2, maj_12_port_o, t0_1_0, t0_1_1, t0_1_2,
         maj_13_port_o, t0_2_0, t0_2_1, t0_2_2, maj_14_port_o, t0_3_0, t0_3_1,
         t0_3_2, maj_15_port_o, maj_16_port_o, maj_17_port_o, maj_18_port_o,
         maj_19_port_o, maj_20_port_o, maj_21_port_o, maj_22_port_o,
         maj_23_port_o, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, maj_12_n3, maj_12_n2,
         maj_12_n1, maj_13_n6, maj_13_n5, maj_13_n4, maj_14_n6, maj_14_n5,
         maj_14_n4, maj_15_n6, maj_15_n5, maj_15_n4, maj_16_n6, maj_16_n5,
         maj_16_n4, maj_17_n6, maj_17_n5, maj_17_n4, maj_18_n6, maj_18_n5,
         maj_18_n4, maj_19_n6, maj_19_n5, maj_19_n4, maj_20_n6, maj_20_n5,
         maj_20_n4, maj_21_n6, maj_21_n5, maj_21_n4, maj_22_n6, maj_22_n5,
         maj_22_n4, maj_23_n6, maj_23_n5, maj_23_n4;

  DFF_X1 reg_y0_0_reg_2_ ( .D(maj_20_port_o), .CK(clk), .Q(port_y0_0[2]), 
        .QN() );
  DFF_X1 reg_y0_0_reg_1_ ( .D(maj_16_port_o), .CK(clk), .Q(port_y0_0[1]), 
        .QN() );
  DFF_X1 reg_y0_0_reg_0_ ( .D(maj_12_port_o), .CK(clk), .Q(port_y0_0[0]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_2_ ( .D(maj_21_port_o), .CK(clk), .Q(port_y0_1[2]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_1_ ( .D(maj_17_port_o), .CK(clk), .Q(port_y0_1[1]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_0_ ( .D(maj_13_port_o), .CK(clk), .Q(port_y0_1[0]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_2_ ( .D(maj_22_port_o), .CK(clk), .Q(port_y0_2[2]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_1_ ( .D(maj_18_port_o), .CK(clk), .Q(port_y0_2[1]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_0_ ( .D(maj_14_port_o), .CK(clk), .Q(port_y0_2[0]), 
        .QN() );
  DFF_X1 reg_y0_3_reg_2_ ( .D(maj_23_port_o), .CK(clk), .Q(port_y0_3[2]), 
        .QN() );
  DFF_X1 reg_y0_3_reg_1_ ( .D(maj_19_port_o), .CK(clk), .Q(port_y0_3[1]), 
        .QN() );
  DFF_X1 reg_y0_3_reg_0_ ( .D(maj_15_port_o), .CK(clk), .Q(port_y0_3[0]), 
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
  DFF_X1 reg_y1_2_reg_2_ ( .D(port_x1_3[2]), .CK(clk), .Q(port_y1_2[2]), .QN()
         );
  DFF_X1 reg_y1_2_reg_1_ ( .D(port_x1_3[1]), .CK(clk), .Q(port_y1_2[1]), .QN()
         );
  DFF_X1 reg_y1_2_reg_0_ ( .D(port_x1_3[0]), .CK(clk), .Q(port_y1_2[0]), .QN()
         );
  DFF_X1 reg_y1_3_reg_2_ ( .D(port_x1_0[2]), .CK(clk), .Q(port_y1_3[2]), .QN()
         );
  DFF_X1 reg_y1_3_reg_1_ ( .D(port_x1_0[1]), .CK(clk), .Q(port_y1_3[1]), .QN()
         );
  DFF_X1 reg_y1_3_reg_0_ ( .D(port_x1_0[0]), .CK(clk), .Q(port_y1_3[0]), .QN()
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
  DFF_X1 reg_y2_2_reg_2_ ( .D(port_x2_3[2]), .CK(clk), .Q(port_y2_2[2]), .QN()
         );
  DFF_X1 reg_y2_2_reg_1_ ( .D(port_x2_3[1]), .CK(clk), .Q(port_y2_2[1]), .QN()
         );
  DFF_X1 reg_y2_2_reg_0_ ( .D(port_x2_3[0]), .CK(clk), .Q(port_y2_2[0]), .QN()
         );
  DFF_X1 reg_y2_3_reg_2_ ( .D(port_x2_0[2]), .CK(clk), .Q(port_y2_3[2]), .QN()
         );
  DFF_X1 reg_y2_3_reg_1_ ( .D(port_x2_0[1]), .CK(clk), .Q(port_y2_3[1]), .QN()
         );
  DFF_X1 reg_y2_3_reg_0_ ( .D(port_x2_0[0]), .CK(clk), .Q(port_y2_3[0]), .QN()
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
  DFF_X1 reg_y3_2_reg_2_ ( .D(port_x3_3[2]), .CK(clk), .Q(port_y3_2[2]), .QN()
         );
  DFF_X1 reg_y3_2_reg_1_ ( .D(port_x3_3[1]), .CK(clk), .Q(port_y3_2[1]), .QN()
         );
  DFF_X1 reg_y3_2_reg_0_ ( .D(port_x3_3[0]), .CK(clk), .Q(port_y3_2[0]), .QN()
         );
  DFF_X1 reg_y3_3_reg_2_ ( .D(port_x3_0[2]), .CK(clk), .Q(port_y3_3[2]), .QN()
         );
  DFF_X1 reg_y3_3_reg_1_ ( .D(port_x3_0[1]), .CK(clk), .Q(port_y3_3[1]), .QN()
         );
  DFF_X1 reg_y3_3_reg_0_ ( .D(port_x3_0[0]), .CK(clk), .Q(port_y3_3[0]), .QN()
         );
  INV_X1 U450 ( .A(port_x1_0[0]), .ZN(n3) );
  INV_X1 U451 ( .A(port_x1_0[1]), .ZN(n2) );
  INV_X1 U452 ( .A(port_x1_0[2]), .ZN(n1) );
  INV_X1 U453 ( .A(port_x1_1[0]), .ZN(n6) );
  INV_X1 U454 ( .A(port_x1_1[1]), .ZN(n5) );
  INV_X1 U455 ( .A(port_x1_1[2]), .ZN(n4) );
  INV_X1 U456 ( .A(port_x1_3[0]), .ZN(n12) );
  INV_X1 U457 ( .A(port_x1_2[0]), .ZN(n9) );
  INV_X1 U458 ( .A(port_x1_3[1]), .ZN(n11) );
  INV_X1 U459 ( .A(port_x1_2[1]), .ZN(n8) );
  INV_X1 U460 ( .A(port_x1_3[2]), .ZN(n10) );
  INV_X1 U461 ( .A(port_x1_2[2]), .ZN(n7) );
  XOR2_X1 U462 ( .A(n94), .B(n95), .Z(t0_3_0) );
  XOR2_X1 U463 ( .A(n55), .B(n56), .Z(t0_3_1) );
  XOR2_X1 U464 ( .A(n207), .B(n208), .Z(t0_2_0) );
  XOR2_X1 U465 ( .A(n170), .B(n171), .Z(t0_2_1) );
  XOR2_X1 U466 ( .A(n310), .B(n311), .Z(t0_1_0) );
  XOR2_X1 U467 ( .A(n277), .B(n278), .Z(t0_1_1) );
  XOR2_X1 U468 ( .A(n405), .B(n406), .Z(t0_0_0) );
  XOR2_X1 U469 ( .A(n374), .B(n375), .Z(t0_0_1) );
  XOR2_X1 U470 ( .A(n314), .B(n315), .Z(n310) );
  XOR2_X1 U471 ( .A(n312), .B(n313), .Z(n311) );
  XOR2_X1 U472 ( .A(n322), .B(n323), .Z(n314) );
  XOR2_X1 U473 ( .A(n409), .B(n410), .Z(n405) );
  XOR2_X1 U474 ( .A(n407), .B(n408), .Z(n406) );
  XOR2_X1 U475 ( .A(n417), .B(n418), .Z(n409) );
  XOR2_X1 U476 ( .A(n281), .B(n282), .Z(n277) );
  XOR2_X1 U477 ( .A(n279), .B(n280), .Z(n278) );
  XOR2_X1 U478 ( .A(n289), .B(n290), .Z(n281) );
  XOR2_X1 U479 ( .A(n378), .B(n379), .Z(n374) );
  XOR2_X1 U480 ( .A(n376), .B(n377), .Z(n375) );
  XOR2_X1 U481 ( .A(n386), .B(n387), .Z(n378) );
  XOR2_X1 U482 ( .A(n244), .B(n245), .Z(t0_1_2) );
  XOR2_X1 U483 ( .A(n248), .B(n249), .Z(n244) );
  XOR2_X1 U484 ( .A(n246), .B(n247), .Z(n245) );
  XOR2_X1 U485 ( .A(n256), .B(n257), .Z(n248) );
  XOR2_X1 U486 ( .A(n343), .B(n344), .Z(t0_0_2) );
  XOR2_X1 U487 ( .A(n347), .B(n348), .Z(n343) );
  XOR2_X1 U488 ( .A(n345), .B(n346), .Z(n344) );
  XOR2_X1 U489 ( .A(n355), .B(n356), .Z(n347) );
  XOR2_X1 U490 ( .A(n100), .B(n101), .Z(n94) );
  XOR2_X1 U491 ( .A(n96), .B(n97), .Z(n95) );
  XOR2_X1 U492 ( .A(n111), .B(n112), .Z(n100) );
  XOR2_X1 U493 ( .A(n213), .B(n214), .Z(n207) );
  XOR2_X1 U494 ( .A(n209), .B(n210), .Z(n208) );
  XOR2_X1 U495 ( .A(n224), .B(n225), .Z(n213) );
  XOR2_X1 U496 ( .A(n61), .B(n62), .Z(n55) );
  XOR2_X1 U497 ( .A(n57), .B(n58), .Z(n56) );
  XOR2_X1 U498 ( .A(n72), .B(n73), .Z(n61) );
  XOR2_X1 U499 ( .A(n176), .B(n177), .Z(n170) );
  XOR2_X1 U500 ( .A(n172), .B(n173), .Z(n171) );
  XOR2_X1 U501 ( .A(n187), .B(n188), .Z(n176) );
  XOR2_X1 U502 ( .A(n16), .B(n17), .Z(t0_3_2) );
  XOR2_X1 U503 ( .A(n22), .B(n23), .Z(n16) );
  XOR2_X1 U504 ( .A(n18), .B(n19), .Z(n17) );
  XOR2_X1 U505 ( .A(n33), .B(n34), .Z(n22) );
  XOR2_X1 U506 ( .A(n133), .B(n134), .Z(t0_2_2) );
  XOR2_X1 U507 ( .A(n139), .B(n140), .Z(n133) );
  XOR2_X1 U508 ( .A(n135), .B(n136), .Z(n134) );
  XOR2_X1 U509 ( .A(n150), .B(n151), .Z(n139) );
  XOR2_X1 U510 ( .A(n324), .B(n325), .Z(n323) );
  NOR2_X1 U511 ( .A1(n106), .A2(n12), .ZN(n324) );
  NOR2_X1 U512 ( .A1(n125), .A2(n12), .ZN(n325) );
  XOR2_X1 U513 ( .A(n291), .B(n292), .Z(n290) );
  NOR2_X1 U514 ( .A1(n67), .A2(n11), .ZN(n291) );
  NOR2_X1 U515 ( .A1(n86), .A2(n11), .ZN(n292) );
  XOR2_X1 U516 ( .A(n258), .B(n259), .Z(n257) );
  NOR2_X1 U517 ( .A1(n28), .A2(n10), .ZN(n258) );
  NOR2_X1 U518 ( .A1(n47), .A2(n10), .ZN(n259) );
  XOR2_X1 U519 ( .A(n419), .B(n420), .Z(n418) );
  NOR2_X1 U520 ( .A1(n99), .A2(n12), .ZN(n419) );
  NOR2_X1 U521 ( .A1(n107), .A2(n12), .ZN(n420) );
  XOR2_X1 U522 ( .A(n388), .B(n389), .Z(n387) );
  NOR2_X1 U523 ( .A1(n60), .A2(n11), .ZN(n388) );
  NOR2_X1 U524 ( .A1(n68), .A2(n11), .ZN(n389) );
  XOR2_X1 U525 ( .A(n357), .B(n358), .Z(n356) );
  NOR2_X1 U526 ( .A1(n21), .A2(n10), .ZN(n357) );
  NOR2_X1 U527 ( .A1(n29), .A2(n10), .ZN(n358) );
  XOR2_X1 U528 ( .A(n241), .B(n242), .Z(n240) );
  NOR2_X1 U529 ( .A1(n115), .A2(n3), .ZN(n241) );
  NOR2_X1 U530 ( .A1(n212), .A2(n3), .ZN(n242) );
  XOR2_X1 U531 ( .A(n204), .B(n205), .Z(n203) );
  NOR2_X1 U532 ( .A1(n76), .A2(n2), .ZN(n204) );
  NOR2_X1 U533 ( .A1(n175), .A2(n2), .ZN(n205) );
  XOR2_X1 U534 ( .A(n167), .B(n168), .Z(n166) );
  NOR2_X1 U535 ( .A1(n37), .A2(n1), .ZN(n167) );
  NOR2_X1 U536 ( .A1(n138), .A2(n1), .ZN(n168) );
  XOR2_X1 U537 ( .A(n339), .B(n340), .Z(n338) );
  NOR2_X1 U538 ( .A1(n107), .A2(n3), .ZN(n339) );
  NOR2_X1 U539 ( .A1(n3), .A2(n341), .ZN(n340) );
  XOR2_X1 U540 ( .A(n306), .B(n307), .Z(n305) );
  NOR2_X1 U541 ( .A1(n68), .A2(n2), .ZN(n306) );
  NOR2_X1 U542 ( .A1(n2), .A2(n308), .ZN(n307) );
  XOR2_X1 U543 ( .A(n273), .B(n274), .Z(n272) );
  NOR2_X1 U544 ( .A1(n29), .A2(n1), .ZN(n273) );
  NOR2_X1 U545 ( .A1(n1), .A2(n275), .ZN(n274) );
  XOR2_X1 U546 ( .A(n113), .B(n114), .Z(n112) );
  NOR2_X1 U547 ( .A1(n9), .A2(n116), .ZN(n113) );
  NOR2_X1 U548 ( .A1(n9), .A2(n115), .ZN(n114) );
  XOR2_X1 U549 ( .A(n74), .B(n75), .Z(n73) );
  NOR2_X1 U550 ( .A1(n8), .A2(n77), .ZN(n74) );
  NOR2_X1 U551 ( .A1(n8), .A2(n76), .ZN(n75) );
  XOR2_X1 U552 ( .A(n35), .B(n36), .Z(n34) );
  NOR2_X1 U553 ( .A1(n7), .A2(n38), .ZN(n35) );
  NOR2_X1 U554 ( .A1(n7), .A2(n37), .ZN(n36) );
  XOR2_X1 U555 ( .A(n433), .B(n434), .Z(n432) );
  NOR2_X1 U556 ( .A1(n6), .A2(n341), .ZN(n433) );
  NOR2_X1 U557 ( .A1(n6), .A2(n336), .ZN(n434) );
  XOR2_X1 U558 ( .A(n402), .B(n403), .Z(n401) );
  NOR2_X1 U559 ( .A1(n5), .A2(n308), .ZN(n402) );
  NOR2_X1 U560 ( .A1(n5), .A2(n303), .ZN(n403) );
  XOR2_X1 U561 ( .A(n371), .B(n372), .Z(n370) );
  NOR2_X1 U562 ( .A1(n4), .A2(n275), .ZN(n371) );
  NOR2_X1 U563 ( .A1(n4), .A2(n270), .ZN(n372) );
  XOR2_X1 U564 ( .A(n226), .B(n227), .Z(n225) );
  NOR2_X1 U565 ( .A1(n116), .A2(n12), .ZN(n227) );
  NOR2_X1 U566 ( .A1(n6), .A2(n228), .ZN(n226) );
  XOR2_X1 U567 ( .A(n189), .B(n190), .Z(n188) );
  NOR2_X1 U568 ( .A1(n77), .A2(n11), .ZN(n190) );
  NOR2_X1 U569 ( .A1(n5), .A2(n191), .ZN(n189) );
  XOR2_X1 U570 ( .A(n152), .B(n153), .Z(n151) );
  NOR2_X1 U571 ( .A1(n38), .A2(n10), .ZN(n153) );
  NOR2_X1 U572 ( .A1(n4), .A2(n154), .ZN(n152) );
  XOR2_X1 U573 ( .A(n130), .B(n131), .Z(n129) );
  NOR2_X1 U574 ( .A1(n3), .A2(n125), .ZN(n130) );
  NOR2_X1 U575 ( .A1(n3), .A2(n98), .ZN(n131) );
  XOR2_X1 U576 ( .A(n91), .B(n92), .Z(n90) );
  NOR2_X1 U577 ( .A1(n2), .A2(n86), .ZN(n91) );
  NOR2_X1 U578 ( .A1(n2), .A2(n59), .ZN(n92) );
  XOR2_X1 U579 ( .A(n52), .B(n53), .Z(n51) );
  NOR2_X1 U580 ( .A1(n1), .A2(n47), .ZN(n52) );
  NOR2_X1 U581 ( .A1(n1), .A2(n20), .ZN(n53) );
  XOR2_X1 U582 ( .A(n121), .B(n122), .Z(n120) );
  XOR2_X1 U583 ( .A(n126), .B(n127), .Z(n121) );
  XOR2_X1 U584 ( .A(n123), .B(n124), .Z(n122) );
  NOR2_X1 U585 ( .A1(n110), .A2(n3), .ZN(n126) );
  XOR2_X1 U586 ( .A(n82), .B(n83), .Z(n81) );
  XOR2_X1 U587 ( .A(n87), .B(n88), .Z(n82) );
  XOR2_X1 U588 ( .A(n84), .B(n85), .Z(n83) );
  NOR2_X1 U589 ( .A1(n71), .A2(n2), .ZN(n87) );
  XOR2_X1 U590 ( .A(n43), .B(n44), .Z(n42) );
  XOR2_X1 U591 ( .A(n48), .B(n49), .Z(n43) );
  XOR2_X1 U592 ( .A(n45), .B(n46), .Z(n44) );
  NOR2_X1 U593 ( .A1(n32), .A2(n1), .ZN(n48) );
  XOR2_X1 U594 ( .A(n233), .B(n234), .Z(n232) );
  XOR2_X1 U595 ( .A(n237), .B(n238), .Z(n233) );
  XOR2_X1 U596 ( .A(n235), .B(n236), .Z(n234) );
  NOR2_X1 U597 ( .A1(n3), .A2(n220), .ZN(n237) );
  XOR2_X1 U598 ( .A(n196), .B(n197), .Z(n195) );
  XOR2_X1 U599 ( .A(n200), .B(n201), .Z(n196) );
  XOR2_X1 U600 ( .A(n198), .B(n199), .Z(n197) );
  NOR2_X1 U601 ( .A1(n2), .A2(n183), .ZN(n200) );
  XOR2_X1 U602 ( .A(n159), .B(n160), .Z(n158) );
  XOR2_X1 U603 ( .A(n163), .B(n164), .Z(n159) );
  XOR2_X1 U604 ( .A(n161), .B(n162), .Z(n160) );
  NOR2_X1 U605 ( .A1(n1), .A2(n146), .ZN(n163) );
  XOR2_X1 U606 ( .A(n330), .B(n331), .Z(n329) );
  XOR2_X1 U607 ( .A(n334), .B(n335), .Z(n330) );
  XOR2_X1 U608 ( .A(n332), .B(n333), .Z(n331) );
  NOR2_X1 U609 ( .A1(n3), .A2(n219), .ZN(n334) );
  XOR2_X1 U610 ( .A(n297), .B(n298), .Z(n296) );
  XOR2_X1 U611 ( .A(n301), .B(n302), .Z(n297) );
  XOR2_X1 U612 ( .A(n299), .B(n300), .Z(n298) );
  NOR2_X1 U613 ( .A1(n2), .A2(n182), .ZN(n301) );
  XOR2_X1 U614 ( .A(n264), .B(n265), .Z(n263) );
  XOR2_X1 U615 ( .A(n268), .B(n269), .Z(n264) );
  XOR2_X1 U616 ( .A(n266), .B(n267), .Z(n265) );
  NOR2_X1 U617 ( .A1(n1), .A2(n145), .ZN(n268) );
  XOR2_X1 U618 ( .A(n425), .B(n426), .Z(n424) );
  XOR2_X1 U619 ( .A(n429), .B(n430), .Z(n425) );
  XOR2_X1 U620 ( .A(n427), .B(n428), .Z(n426) );
  NOR2_X1 U621 ( .A1(n6), .A2(n211), .ZN(n429) );
  XOR2_X1 U622 ( .A(n394), .B(n395), .Z(n393) );
  XOR2_X1 U623 ( .A(n398), .B(n399), .Z(n394) );
  XOR2_X1 U624 ( .A(n396), .B(n397), .Z(n395) );
  NOR2_X1 U625 ( .A1(n5), .A2(n174), .ZN(n398) );
  XOR2_X1 U626 ( .A(n363), .B(n364), .Z(n362) );
  XOR2_X1 U627 ( .A(n367), .B(n368), .Z(n363) );
  XOR2_X1 U628 ( .A(n365), .B(n366), .Z(n364) );
  NOR2_X1 U629 ( .A1(n4), .A2(n137), .ZN(n367) );
  XOR2_X1 U630 ( .A(n102), .B(n103), .Z(n101) );
  XOR2_X1 U631 ( .A(n108), .B(n109), .Z(n102) );
  XOR2_X1 U632 ( .A(n104), .B(n105), .Z(n103) );
  NOR2_X1 U633 ( .A1(n110), .A2(n6), .ZN(n108) );
  XOR2_X1 U634 ( .A(n63), .B(n64), .Z(n62) );
  XOR2_X1 U635 ( .A(n69), .B(n70), .Z(n63) );
  XOR2_X1 U636 ( .A(n65), .B(n66), .Z(n64) );
  NOR2_X1 U637 ( .A1(n71), .A2(n5), .ZN(n69) );
  XOR2_X1 U638 ( .A(n24), .B(n25), .Z(n23) );
  XOR2_X1 U639 ( .A(n30), .B(n31), .Z(n24) );
  XOR2_X1 U640 ( .A(n26), .B(n27), .Z(n25) );
  NOR2_X1 U641 ( .A1(n32), .A2(n4), .ZN(n30) );
  XOR2_X1 U642 ( .A(n215), .B(n216), .Z(n214) );
  XOR2_X1 U643 ( .A(n221), .B(n222), .Z(n215) );
  XOR2_X1 U644 ( .A(n217), .B(n218), .Z(n216) );
  NOR2_X1 U645 ( .A1(n6), .A2(n223), .ZN(n221) );
  XOR2_X1 U646 ( .A(n178), .B(n179), .Z(n177) );
  XOR2_X1 U647 ( .A(n184), .B(n185), .Z(n178) );
  XOR2_X1 U648 ( .A(n180), .B(n181), .Z(n179) );
  NOR2_X1 U649 ( .A1(n5), .A2(n186), .ZN(n184) );
  XOR2_X1 U650 ( .A(n141), .B(n142), .Z(n140) );
  XOR2_X1 U651 ( .A(n147), .B(n148), .Z(n141) );
  XOR2_X1 U652 ( .A(n143), .B(n144), .Z(n142) );
  NOR2_X1 U653 ( .A1(n4), .A2(n149), .ZN(n147) );
  XOR2_X1 U654 ( .A(n316), .B(n317), .Z(n315) );
  XOR2_X1 U655 ( .A(n320), .B(n321), .Z(n316) );
  XOR2_X1 U656 ( .A(n318), .B(n319), .Z(n317) );
  NOR2_X1 U657 ( .A1(n9), .A2(n223), .ZN(n320) );
  XOR2_X1 U658 ( .A(n283), .B(n284), .Z(n282) );
  XOR2_X1 U659 ( .A(n287), .B(n288), .Z(n283) );
  XOR2_X1 U660 ( .A(n285), .B(n286), .Z(n284) );
  NOR2_X1 U661 ( .A1(n8), .A2(n186), .ZN(n287) );
  XOR2_X1 U662 ( .A(n250), .B(n251), .Z(n249) );
  XOR2_X1 U663 ( .A(n254), .B(n255), .Z(n250) );
  XOR2_X1 U664 ( .A(n252), .B(n253), .Z(n251) );
  NOR2_X1 U665 ( .A1(n7), .A2(n149), .ZN(n254) );
  XOR2_X1 U666 ( .A(n411), .B(n412), .Z(n410) );
  XOR2_X1 U667 ( .A(n415), .B(n416), .Z(n411) );
  XOR2_X1 U668 ( .A(n413), .B(n414), .Z(n412) );
  NOR2_X1 U669 ( .A1(n9), .A2(n336), .ZN(n415) );
  XOR2_X1 U670 ( .A(n380), .B(n381), .Z(n379) );
  XOR2_X1 U671 ( .A(n384), .B(n385), .Z(n380) );
  XOR2_X1 U672 ( .A(n382), .B(n383), .Z(n381) );
  NOR2_X1 U673 ( .A1(n8), .A2(n303), .ZN(n384) );
  XOR2_X1 U674 ( .A(n349), .B(n350), .Z(n348) );
  XOR2_X1 U675 ( .A(n353), .B(n354), .Z(n349) );
  XOR2_X1 U676 ( .A(n351), .B(n352), .Z(n350) );
  NOR2_X1 U677 ( .A1(n7), .A2(n270), .ZN(n353) );
  NOR2_X1 U678 ( .A1(n3), .A2(n228), .ZN(n238) );
  NOR2_X1 U679 ( .A1(n2), .A2(n191), .ZN(n201) );
  NOR2_X1 U680 ( .A1(n1), .A2(n154), .ZN(n164) );
  NOR2_X1 U681 ( .A1(n3), .A2(n336), .ZN(n335) );
  NOR2_X1 U682 ( .A1(n2), .A2(n303), .ZN(n302) );
  NOR2_X1 U683 ( .A1(n1), .A2(n270), .ZN(n269) );
  NOR2_X1 U684 ( .A1(n12), .A2(n211), .ZN(n210) );
  NOR2_X1 U685 ( .A1(n11), .A2(n174), .ZN(n173) );
  NOR2_X1 U686 ( .A1(n10), .A2(n137), .ZN(n136) );
  NOR2_X1 U687 ( .A1(n12), .A2(n336), .ZN(n408) );
  NOR2_X1 U688 ( .A1(n11), .A2(n303), .ZN(n377) );
  NOR2_X1 U689 ( .A1(n10), .A2(n270), .ZN(n346) );
  XOR2_X1 U690 ( .A(n229), .B(n230), .Z(n224) );
  OR2_X1 U691 ( .A1(n12), .A2(n115), .ZN(n229) );
  XOR2_X1 U692 ( .A(n231), .B(n232), .Z(n230) );
  XOR2_X1 U693 ( .A(n239), .B(n240), .Z(n231) );
  XOR2_X1 U694 ( .A(n192), .B(n193), .Z(n187) );
  OR2_X1 U695 ( .A1(n11), .A2(n76), .ZN(n192) );
  XOR2_X1 U696 ( .A(n194), .B(n195), .Z(n193) );
  XOR2_X1 U697 ( .A(n202), .B(n203), .Z(n194) );
  XOR2_X1 U698 ( .A(n155), .B(n156), .Z(n150) );
  OR2_X1 U699 ( .A1(n10), .A2(n37), .ZN(n155) );
  XOR2_X1 U700 ( .A(n157), .B(n158), .Z(n156) );
  XOR2_X1 U701 ( .A(n165), .B(n166), .Z(n157) );
  XOR2_X1 U702 ( .A(n326), .B(n327), .Z(n322) );
  OR2_X1 U703 ( .A1(n12), .A2(n223), .ZN(n326) );
  XOR2_X1 U704 ( .A(n328), .B(n329), .Z(n327) );
  XOR2_X1 U705 ( .A(n337), .B(n338), .Z(n328) );
  XOR2_X1 U706 ( .A(n293), .B(n294), .Z(n289) );
  OR2_X1 U707 ( .A1(n11), .A2(n186), .ZN(n293) );
  XOR2_X1 U708 ( .A(n295), .B(n296), .Z(n294) );
  XOR2_X1 U709 ( .A(n304), .B(n305), .Z(n295) );
  XOR2_X1 U710 ( .A(n260), .B(n261), .Z(n256) );
  OR2_X1 U711 ( .A1(n10), .A2(n149), .ZN(n260) );
  XOR2_X1 U712 ( .A(n262), .B(n263), .Z(n261) );
  XOR2_X1 U713 ( .A(n271), .B(n272), .Z(n262) );
  XOR2_X1 U714 ( .A(n421), .B(n422), .Z(n417) );
  OR2_X1 U715 ( .A1(n341), .A2(n12), .ZN(n421) );
  XOR2_X1 U716 ( .A(n423), .B(n424), .Z(n422) );
  XOR2_X1 U717 ( .A(n431), .B(n432), .Z(n423) );
  XOR2_X1 U718 ( .A(n390), .B(n391), .Z(n386) );
  OR2_X1 U719 ( .A1(n308), .A2(n11), .ZN(n390) );
  XOR2_X1 U720 ( .A(n392), .B(n393), .Z(n391) );
  XOR2_X1 U721 ( .A(n400), .B(n401), .Z(n392) );
  XOR2_X1 U722 ( .A(n359), .B(n360), .Z(n355) );
  OR2_X1 U723 ( .A1(n275), .A2(n10), .ZN(n359) );
  XOR2_X1 U724 ( .A(n361), .B(n362), .Z(n360) );
  XOR2_X1 U725 ( .A(n369), .B(n370), .Z(n361) );
  NOR2_X1 U726 ( .A1(n6), .A2(n98), .ZN(n124) );
  NOR2_X1 U727 ( .A1(n5), .A2(n59), .ZN(n85) );
  NOR2_X1 U728 ( .A1(n4), .A2(n20), .ZN(n46) );
  NOR2_X1 U729 ( .A1(n6), .A2(n116), .ZN(n236) );
  NOR2_X1 U730 ( .A1(n5), .A2(n77), .ZN(n199) );
  NOR2_X1 U731 ( .A1(n4), .A2(n38), .ZN(n162) );
  NOR2_X1 U732 ( .A1(n6), .A2(n99), .ZN(n109) );
  NOR2_X1 U733 ( .A1(n5), .A2(n60), .ZN(n70) );
  NOR2_X1 U734 ( .A1(n4), .A2(n21), .ZN(n31) );
  NOR2_X1 U735 ( .A1(n6), .A2(n219), .ZN(n218) );
  NOR2_X1 U736 ( .A1(n6), .A2(n115), .ZN(n222) );
  NOR2_X1 U737 ( .A1(n5), .A2(n182), .ZN(n181) );
  NOR2_X1 U738 ( .A1(n5), .A2(n76), .ZN(n185) );
  NOR2_X1 U739 ( .A1(n4), .A2(n145), .ZN(n144) );
  NOR2_X1 U740 ( .A1(n4), .A2(n37), .ZN(n148) );
  NOR2_X1 U741 ( .A1(n99), .A2(n3), .ZN(n127) );
  NOR2_X1 U742 ( .A1(n60), .A2(n2), .ZN(n88) );
  NOR2_X1 U743 ( .A1(n21), .A2(n1), .ZN(n49) );
  NOR2_X1 U744 ( .A1(n3), .A2(n211), .ZN(n332) );
  NOR2_X1 U745 ( .A1(n2), .A2(n174), .ZN(n299) );
  NOR2_X1 U746 ( .A1(n1), .A2(n137), .ZN(n266) );
  NOR2_X1 U747 ( .A1(n9), .A2(n125), .ZN(n333) );
  NOR2_X1 U748 ( .A1(n8), .A2(n86), .ZN(n300) );
  NOR2_X1 U749 ( .A1(n7), .A2(n47), .ZN(n267) );
  NOR2_X1 U750 ( .A1(n9), .A2(n228), .ZN(n428) );
  NOR2_X1 U751 ( .A1(n9), .A2(n220), .ZN(n430) );
  NOR2_X1 U752 ( .A1(n8), .A2(n191), .ZN(n397) );
  NOR2_X1 U753 ( .A1(n8), .A2(n183), .ZN(n399) );
  NOR2_X1 U754 ( .A1(n7), .A2(n154), .ZN(n366) );
  NOR2_X1 U755 ( .A1(n7), .A2(n146), .ZN(n368) );
  NOR2_X1 U756 ( .A1(n9), .A2(n219), .ZN(n319) );
  NOR2_X1 U757 ( .A1(n8), .A2(n182), .ZN(n286) );
  NOR2_X1 U758 ( .A1(n7), .A2(n145), .ZN(n253) );
  NOR2_X1 U759 ( .A1(n9), .A2(n211), .ZN(n416) );
  NOR2_X1 U760 ( .A1(n8), .A2(n174), .ZN(n385) );
  NOR2_X1 U761 ( .A1(n7), .A2(n137), .ZN(n354) );
  NOR2_X1 U762 ( .A1(n9), .A2(n98), .ZN(n97) );
  NOR2_X1 U763 ( .A1(n8), .A2(n59), .ZN(n58) );
  NOR2_X1 U764 ( .A1(n7), .A2(n20), .ZN(n19) );
  NOR2_X1 U765 ( .A1(n6), .A2(n125), .ZN(n123) );
  NOR2_X1 U766 ( .A1(n5), .A2(n86), .ZN(n84) );
  NOR2_X1 U767 ( .A1(n4), .A2(n47), .ZN(n45) );
  NOR2_X1 U768 ( .A1(n6), .A2(n106), .ZN(n235) );
  NOR2_X1 U769 ( .A1(n5), .A2(n67), .ZN(n198) );
  NOR2_X1 U770 ( .A1(n4), .A2(n28), .ZN(n161) );
  NOR2_X1 U771 ( .A1(n6), .A2(n107), .ZN(n104) );
  NOR2_X1 U772 ( .A1(n5), .A2(n68), .ZN(n65) );
  NOR2_X1 U773 ( .A1(n4), .A2(n29), .ZN(n26) );
  NOR2_X1 U774 ( .A1(n6), .A2(n220), .ZN(n217) );
  NOR2_X1 U775 ( .A1(n5), .A2(n183), .ZN(n180) );
  NOR2_X1 U776 ( .A1(n4), .A2(n146), .ZN(n143) );
  NOR2_X1 U777 ( .A1(n220), .A2(n12), .ZN(n414) );
  NOR2_X1 U778 ( .A1(n183), .A2(n11), .ZN(n383) );
  NOR2_X1 U779 ( .A1(n146), .A2(n10), .ZN(n352) );
  NOR2_X1 U780 ( .A1(n110), .A2(n12), .ZN(n313) );
  NOR2_X1 U781 ( .A1(n71), .A2(n11), .ZN(n280) );
  NOR2_X1 U782 ( .A1(n32), .A2(n10), .ZN(n247) );
  NOR2_X1 U783 ( .A1(n106), .A2(n9), .ZN(n105) );
  NOR2_X1 U784 ( .A1(n67), .A2(n8), .ZN(n66) );
  NOR2_X1 U785 ( .A1(n28), .A2(n7), .ZN(n27) );
  NOR2_X1 U786 ( .A1(n110), .A2(n9), .ZN(n321) );
  NOR2_X1 U787 ( .A1(n71), .A2(n8), .ZN(n288) );
  NOR2_X1 U788 ( .A1(n32), .A2(n7), .ZN(n255) );
  NOR2_X1 U789 ( .A1(n98), .A2(n12), .ZN(n413) );
  NOR2_X1 U790 ( .A1(n59), .A2(n11), .ZN(n382) );
  NOR2_X1 U791 ( .A1(n20), .A2(n10), .ZN(n351) );
  NOR2_X1 U792 ( .A1(n9), .A2(n341), .ZN(n427) );
  NOR2_X1 U793 ( .A1(n8), .A2(n308), .ZN(n396) );
  NOR2_X1 U794 ( .A1(n7), .A2(n275), .ZN(n365) );
  NOR2_X1 U795 ( .A1(n107), .A2(n9), .ZN(n318) );
  NOR2_X1 U796 ( .A1(n68), .A2(n8), .ZN(n285) );
  NOR2_X1 U797 ( .A1(n29), .A2(n7), .ZN(n252) );
  INV_X1 U798 ( .A(n212), .ZN(n15) );
  INV_X1 U799 ( .A(n175), .ZN(n14) );
  INV_X1 U800 ( .A(n138), .ZN(n13) );
  OR2_X1 U801 ( .A1(n9), .A2(n99), .ZN(n96) );
  OR2_X1 U802 ( .A1(n8), .A2(n60), .ZN(n57) );
  OR2_X1 U803 ( .A1(n7), .A2(n21), .ZN(n18) );
  OR2_X1 U804 ( .A1(n12), .A2(n219), .ZN(n312) );
  OR2_X1 U805 ( .A1(n11), .A2(n182), .ZN(n279) );
  OR2_X1 U806 ( .A1(n10), .A2(n145), .ZN(n246) );
  OR2_X1 U807 ( .A1(n12), .A2(n228), .ZN(n407) );
  OR2_X1 U808 ( .A1(n11), .A2(n191), .ZN(n376) );
  OR2_X1 U809 ( .A1(n10), .A2(n154), .ZN(n345) );
  NAND2_X1 U810 ( .A1(port_x3_1[0]), .A2(port_x2_2[0]), .ZN(n99) );
  NAND2_X1 U811 ( .A1(port_x3_1[1]), .A2(port_x2_2[1]), .ZN(n60) );
  NAND2_X1 U812 ( .A1(port_x3_1[2]), .A2(port_x2_2[2]), .ZN(n21) );
  XOR2_X1 U813 ( .A(n117), .B(n118), .Z(n111) );
  NAND2_X1 U814 ( .A1(n15), .A2(port_x1_2[0]), .ZN(n117) );
  XOR2_X1 U815 ( .A(n119), .B(n120), .Z(n118) );
  XOR2_X1 U816 ( .A(n128), .B(n129), .Z(n119) );
  XOR2_X1 U817 ( .A(n78), .B(n79), .Z(n72) );
  NAND2_X1 U818 ( .A1(n14), .A2(port_x1_2[1]), .ZN(n78) );
  XOR2_X1 U819 ( .A(n80), .B(n81), .Z(n79) );
  XOR2_X1 U820 ( .A(n89), .B(n90), .Z(n80) );
  XOR2_X1 U821 ( .A(n39), .B(n40), .Z(n33) );
  NAND2_X1 U822 ( .A1(n13), .A2(port_x1_2[2]), .ZN(n39) );
  XOR2_X1 U823 ( .A(n41), .B(n42), .Z(n40) );
  XOR2_X1 U824 ( .A(n50), .B(n51), .Z(n41) );
  NAND2_X1 U825 ( .A1(port_x3_0[0]), .A2(port_x2_2[0]), .ZN(n110) );
  NAND2_X1 U826 ( .A1(port_x3_0[1]), .A2(port_x2_2[1]), .ZN(n71) );
  NAND2_X1 U827 ( .A1(port_x3_0[2]), .A2(port_x2_2[2]), .ZN(n32) );
  NAND2_X1 U828 ( .A1(port_x2_1[0]), .A2(port_x3_0[0]), .ZN(n115) );
  NAND2_X1 U829 ( .A1(port_x2_1[1]), .A2(port_x3_0[1]), .ZN(n76) );
  NAND2_X1 U830 ( .A1(port_x2_1[2]), .A2(port_x3_0[2]), .ZN(n37) );
  NAND2_X1 U831 ( .A1(port_x3_3[0]), .A2(port_x2_2[0]), .ZN(n341) );
  NAND2_X1 U832 ( .A1(port_x3_3[1]), .A2(port_x2_2[1]), .ZN(n308) );
  NAND2_X1 U833 ( .A1(port_x3_3[2]), .A2(port_x2_2[2]), .ZN(n275) );
  NAND2_X1 U834 ( .A1(port_x2_0[0]), .A2(port_x3_0[0]), .ZN(n106) );
  NAND2_X1 U835 ( .A1(port_x2_0[1]), .A2(port_x3_0[1]), .ZN(n67) );
  NAND2_X1 U836 ( .A1(port_x2_0[2]), .A2(port_x3_0[2]), .ZN(n28) );
  NAND2_X1 U837 ( .A1(port_x3_2[0]), .A2(port_x2_2[0]), .ZN(n107) );
  NAND2_X1 U838 ( .A1(port_x3_2[1]), .A2(port_x2_2[1]), .ZN(n68) );
  NAND2_X1 U839 ( .A1(port_x3_2[2]), .A2(port_x2_2[2]), .ZN(n29) );
  XOR2_X1 U840 ( .A(port_x0_0[0]), .B(n132), .Z(n128) );
  NOR2_X1 U841 ( .A1(n106), .A2(n3), .ZN(n132) );
  XOR2_X1 U842 ( .A(port_x0_0[1]), .B(n93), .Z(n89) );
  NOR2_X1 U843 ( .A1(n67), .A2(n2), .ZN(n93) );
  XOR2_X1 U844 ( .A(port_x0_0[2]), .B(n54), .Z(n50) );
  NOR2_X1 U845 ( .A1(n28), .A2(n1), .ZN(n54) );
  XOR2_X1 U846 ( .A(port_x0_3[0]), .B(n243), .Z(n239) );
  NOR2_X1 U847 ( .A1(n116), .A2(n3), .ZN(n243) );
  XOR2_X1 U848 ( .A(port_x0_3[1]), .B(n206), .Z(n202) );
  NOR2_X1 U849 ( .A1(n77), .A2(n2), .ZN(n206) );
  XOR2_X1 U850 ( .A(port_x0_3[2]), .B(n169), .Z(n165) );
  NOR2_X1 U851 ( .A1(n38), .A2(n1), .ZN(n169) );
  NAND2_X1 U852 ( .A1(port_x2_3[0]), .A2(port_x3_0[0]), .ZN(n219) );
  NAND2_X1 U853 ( .A1(port_x2_3[1]), .A2(port_x3_0[1]), .ZN(n182) );
  NAND2_X1 U854 ( .A1(port_x2_3[2]), .A2(port_x3_0[2]), .ZN(n145) );
  NAND2_X1 U855 ( .A1(port_x2_3[0]), .A2(port_x3_1[0]), .ZN(n228) );
  NAND2_X1 U856 ( .A1(port_x2_3[1]), .A2(port_x3_1[1]), .ZN(n191) );
  NAND2_X1 U857 ( .A1(port_x2_3[2]), .A2(port_x3_1[2]), .ZN(n154) );
  NAND2_X1 U858 ( .A1(port_x3_3[0]), .A2(port_x2_0[0]), .ZN(n223) );
  NAND2_X1 U859 ( .A1(port_x3_3[1]), .A2(port_x2_0[1]), .ZN(n186) );
  NAND2_X1 U860 ( .A1(port_x3_3[2]), .A2(port_x2_0[2]), .ZN(n149) );
  XOR2_X1 U861 ( .A(port_x0_2[0]), .B(n342), .Z(n337) );
  NOR2_X1 U862 ( .A1(n3), .A2(n223), .ZN(n342) );
  XOR2_X1 U863 ( .A(port_x0_2[1]), .B(n309), .Z(n304) );
  NOR2_X1 U864 ( .A1(n2), .A2(n186), .ZN(n309) );
  XOR2_X1 U865 ( .A(port_x0_2[2]), .B(n276), .Z(n271) );
  NOR2_X1 U866 ( .A1(n1), .A2(n149), .ZN(n276) );
  XOR2_X1 U867 ( .A(port_x0_1[0]), .B(n435), .Z(n431) );
  NOR2_X1 U868 ( .A1(n6), .A2(n212), .ZN(n435) );
  XOR2_X1 U869 ( .A(port_x0_1[1]), .B(n404), .Z(n400) );
  NOR2_X1 U870 ( .A1(n5), .A2(n175), .ZN(n404) );
  XOR2_X1 U871 ( .A(port_x0_1[2]), .B(n373), .Z(n369) );
  NOR2_X1 U872 ( .A1(n4), .A2(n138), .ZN(n373) );
  NAND2_X1 U873 ( .A1(port_x2_0[0]), .A2(port_x3_1[0]), .ZN(n116) );
  NAND2_X1 U874 ( .A1(port_x2_0[1]), .A2(port_x3_1[1]), .ZN(n77) );
  NAND2_X1 U875 ( .A1(port_x2_0[2]), .A2(port_x3_1[2]), .ZN(n38) );
  NAND2_X1 U876 ( .A1(port_x2_1[0]), .A2(port_x3_2[0]), .ZN(n98) );
  NAND2_X1 U877 ( .A1(port_x2_1[1]), .A2(port_x3_2[1]), .ZN(n59) );
  NAND2_X1 U878 ( .A1(port_x2_1[2]), .A2(port_x3_2[2]), .ZN(n20) );
  NAND2_X1 U879 ( .A1(port_x2_0[0]), .A2(port_x3_2[0]), .ZN(n125) );
  NAND2_X1 U880 ( .A1(port_x2_0[1]), .A2(port_x3_2[1]), .ZN(n86) );
  NAND2_X1 U881 ( .A1(port_x2_0[2]), .A2(port_x3_2[2]), .ZN(n47) );
  NAND2_X1 U882 ( .A1(port_x3_3[0]), .A2(port_x2_1[0]), .ZN(n220) );
  NAND2_X1 U883 ( .A1(port_x3_3[1]), .A2(port_x2_1[1]), .ZN(n183) );
  NAND2_X1 U884 ( .A1(port_x3_3[2]), .A2(port_x2_1[2]), .ZN(n146) );
  NAND2_X1 U885 ( .A1(port_x2_3[0]), .A2(port_x3_3[0]), .ZN(n211) );
  NAND2_X1 U886 ( .A1(port_x2_3[1]), .A2(port_x3_3[1]), .ZN(n174) );
  NAND2_X1 U887 ( .A1(port_x2_3[2]), .A2(port_x3_3[2]), .ZN(n137) );
  NAND2_X1 U888 ( .A1(port_x2_3[0]), .A2(port_x3_2[0]), .ZN(n336) );
  NAND2_X1 U889 ( .A1(port_x2_3[1]), .A2(port_x3_2[1]), .ZN(n303) );
  NAND2_X1 U890 ( .A1(port_x2_3[2]), .A2(port_x3_2[2]), .ZN(n270) );
  NAND2_X1 U891 ( .A1(port_x2_1[0]), .A2(port_x3_1[0]), .ZN(n212) );
  NAND2_X1 U892 ( .A1(port_x2_1[1]), .A2(port_x3_1[1]), .ZN(n175) );
  NAND2_X1 U893 ( .A1(port_x2_1[2]), .A2(port_x3_1[2]), .ZN(n138) );
  NAND2_X1 U894 ( .A1(port_x1_3[0]), .A2(n15), .ZN(n209) );
  NAND2_X1 U895 ( .A1(port_x1_3[1]), .A2(n14), .ZN(n172) );
  NAND2_X1 U896 ( .A1(port_x1_3[2]), .A2(n13), .ZN(n135) );
  OR2_X1 maj_12_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_12_n3) );
  NAND2_X1 maj_12_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_12_n1) );
  NAND2_X1 maj_12_U2 ( .A1(t0_0_2), .A2(maj_12_n3), .ZN(maj_12_n2) );
  NAND2_X1 maj_12_U1 ( .A1(maj_12_n1), .A2(maj_12_n2), .ZN(maj_12_port_o) );
  OR2_X1 maj_13_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_13_n4) );
  NAND2_X1 maj_13_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_13_n6) );
  NAND2_X1 maj_13_U2 ( .A1(t0_1_2), .A2(maj_13_n4), .ZN(maj_13_n5) );
  NAND2_X1 maj_13_U1 ( .A1(maj_13_n6), .A2(maj_13_n5), .ZN(maj_13_port_o) );
  OR2_X1 maj_14_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_14_n4) );
  NAND2_X1 maj_14_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_14_n6) );
  NAND2_X1 maj_14_U2 ( .A1(t0_2_2), .A2(maj_14_n4), .ZN(maj_14_n5) );
  NAND2_X1 maj_14_U1 ( .A1(maj_14_n6), .A2(maj_14_n5), .ZN(maj_14_port_o) );
  OR2_X1 maj_15_U4 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_15_n4) );
  NAND2_X1 maj_15_U3 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_15_n6) );
  NAND2_X1 maj_15_U2 ( .A1(t0_3_2), .A2(maj_15_n4), .ZN(maj_15_n5) );
  NAND2_X1 maj_15_U1 ( .A1(maj_15_n6), .A2(maj_15_n5), .ZN(maj_15_port_o) );
  OR2_X1 maj_16_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_16_n4) );
  NAND2_X1 maj_16_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_16_n6) );
  NAND2_X1 maj_16_U2 ( .A1(t0_0_2), .A2(maj_16_n4), .ZN(maj_16_n5) );
  NAND2_X1 maj_16_U1 ( .A1(maj_16_n6), .A2(maj_16_n5), .ZN(maj_16_port_o) );
  OR2_X1 maj_17_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_17_n4) );
  NAND2_X1 maj_17_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_17_n6) );
  NAND2_X1 maj_17_U2 ( .A1(t0_1_2), .A2(maj_17_n4), .ZN(maj_17_n5) );
  NAND2_X1 maj_17_U1 ( .A1(maj_17_n6), .A2(maj_17_n5), .ZN(maj_17_port_o) );
  OR2_X1 maj_18_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_18_n4) );
  NAND2_X1 maj_18_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_18_n6) );
  NAND2_X1 maj_18_U2 ( .A1(t0_2_2), .A2(maj_18_n4), .ZN(maj_18_n5) );
  NAND2_X1 maj_18_U1 ( .A1(maj_18_n6), .A2(maj_18_n5), .ZN(maj_18_port_o) );
  OR2_X1 maj_19_U4 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_19_n4) );
  NAND2_X1 maj_19_U3 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_19_n6) );
  NAND2_X1 maj_19_U2 ( .A1(t0_3_2), .A2(maj_19_n4), .ZN(maj_19_n5) );
  NAND2_X1 maj_19_U1 ( .A1(maj_19_n6), .A2(maj_19_n5), .ZN(maj_19_port_o) );
  OR2_X1 maj_20_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_20_n4) );
  NAND2_X1 maj_20_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_20_n6) );
  NAND2_X1 maj_20_U2 ( .A1(t0_0_2), .A2(maj_20_n4), .ZN(maj_20_n5) );
  NAND2_X1 maj_20_U1 ( .A1(maj_20_n6), .A2(maj_20_n5), .ZN(maj_20_port_o) );
  OR2_X1 maj_21_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_21_n4) );
  NAND2_X1 maj_21_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_21_n6) );
  NAND2_X1 maj_21_U2 ( .A1(t0_1_2), .A2(maj_21_n4), .ZN(maj_21_n5) );
  NAND2_X1 maj_21_U1 ( .A1(maj_21_n6), .A2(maj_21_n5), .ZN(maj_21_port_o) );
  OR2_X1 maj_22_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_22_n4) );
  NAND2_X1 maj_22_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_22_n6) );
  NAND2_X1 maj_22_U2 ( .A1(t0_2_2), .A2(maj_22_n4), .ZN(maj_22_n5) );
  NAND2_X1 maj_22_U1 ( .A1(maj_22_n6), .A2(maj_22_n5), .ZN(maj_22_port_o) );
  OR2_X1 maj_23_U4 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_23_n4) );
  NAND2_X1 maj_23_U3 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_23_n6) );
  NAND2_X1 maj_23_U2 ( .A1(t0_3_2), .A2(maj_23_n4), .ZN(maj_23_n5) );
  NAND2_X1 maj_23_U1 ( .A1(maj_23_n6), .A2(maj_23_n5), .ZN(maj_23_port_o) );
endmodule

