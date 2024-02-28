/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:15:15 2023
/////////////////////////////////////////////////////////////


module Sbox_01234589DC76BAFE_4shares_3replications ( port_x0_0, port_x0_1, 
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
  wire   t0_0_0, t0_0_1, t0_0_2, maj_48_port_o, t0_1_0, t0_1_1, t0_1_2,
         maj_49_port_o, t0_2_0, t0_2_1, t0_2_2, maj_50_port_o, t0_3_0, t0_3_1,
         t0_3_2, maj_51_port_o, maj_52_port_o, maj_53_port_o, maj_54_port_o,
         maj_55_port_o, maj_56_port_o, maj_57_port_o, maj_58_port_o,
         maj_59_port_o, t1_0_0, t1_0_1, t1_0_2, maj_60_port_o, t1_1_0, t1_1_1,
         t1_1_2, maj_61_port_o, t1_2_0, t1_2_1, t1_2_2, maj_62_port_o, t1_3_0,
         t1_3_1, t1_3_2, maj_63_port_o, maj_64_port_o, maj_65_port_o,
         maj_66_port_o, maj_67_port_o, maj_68_port_o, maj_69_port_o,
         maj_70_port_o, maj_71_port_o, t2_0_0, t2_0_1, t2_0_2, maj_72_port_o,
         t2_1_0, t2_1_1, t2_1_2, maj_73_port_o, t2_2_0, t2_2_1, t2_2_2,
         maj_74_port_o, t2_3_0, t2_3_1, t2_3_2, maj_75_port_o, maj_76_port_o,
         maj_77_port_o, maj_78_port_o, maj_79_port_o, maj_80_port_o,
         maj_81_port_o, maj_82_port_o, maj_83_port_o, t3_0_0, t3_0_1, t3_0_2,
         maj_84_port_o, t3_1_0, t3_1_1, t3_1_2, maj_85_port_o, t3_2_0, t3_2_1,
         t3_2_2, maj_86_port_o, t3_3_0, t3_3_1, t3_3_2, maj_87_port_o,
         maj_88_port_o, maj_89_port_o, maj_90_port_o, maj_91_port_o,
         maj_92_port_o, maj_93_port_o, maj_94_port_o, maj_95_port_o, n1, n2,
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
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, maj_48_n3,
         maj_48_n2, maj_48_n1, maj_49_n6, maj_49_n5, maj_49_n4, maj_50_n6,
         maj_50_n5, maj_50_n4, maj_51_n6, maj_51_n5, maj_51_n4, maj_52_n6,
         maj_52_n5, maj_52_n4, maj_53_n6, maj_53_n5, maj_53_n4, maj_54_n6,
         maj_54_n5, maj_54_n4, maj_55_n6, maj_55_n5, maj_55_n4, maj_56_n6,
         maj_56_n5, maj_56_n4, maj_57_n6, maj_57_n5, maj_57_n4, maj_58_n6,
         maj_58_n5, maj_58_n4, maj_59_n6, maj_59_n5, maj_59_n4, maj_60_n6,
         maj_60_n5, maj_60_n4, maj_61_n6, maj_61_n5, maj_61_n4, maj_62_n6,
         maj_62_n5, maj_62_n4, maj_63_n6, maj_63_n5, maj_63_n4, maj_64_n6,
         maj_64_n5, maj_64_n4, maj_65_n6, maj_65_n5, maj_65_n4, maj_66_n6,
         maj_66_n5, maj_66_n4, maj_67_n6, maj_67_n5, maj_67_n4, maj_68_n6,
         maj_68_n5, maj_68_n4, maj_69_n6, maj_69_n5, maj_69_n4, maj_70_n6,
         maj_70_n5, maj_70_n4, maj_71_n6, maj_71_n5, maj_71_n4, maj_72_n6,
         maj_72_n5, maj_72_n4, maj_73_n6, maj_73_n5, maj_73_n4, maj_74_n6,
         maj_74_n5, maj_74_n4, maj_75_n6, maj_75_n5, maj_75_n4, maj_76_n6,
         maj_76_n5, maj_76_n4, maj_77_n6, maj_77_n5, maj_77_n4, maj_78_n6,
         maj_78_n5, maj_78_n4, maj_79_n6, maj_79_n5, maj_79_n4, maj_80_n6,
         maj_80_n5, maj_80_n4, maj_81_n6, maj_81_n5, maj_81_n4, maj_82_n6,
         maj_82_n5, maj_82_n4, maj_83_n6, maj_83_n5, maj_83_n4, maj_84_n6,
         maj_84_n5, maj_84_n4, maj_85_n6, maj_85_n5, maj_85_n4, maj_86_n6,
         maj_86_n5, maj_86_n4, maj_87_n6, maj_87_n5, maj_87_n4, maj_88_n6,
         maj_88_n5, maj_88_n4, maj_89_n6, maj_89_n5, maj_89_n4, maj_90_n6,
         maj_90_n5, maj_90_n4, maj_91_n6, maj_91_n5, maj_91_n4, maj_92_n6,
         maj_92_n5, maj_92_n4, maj_93_n6, maj_93_n5, maj_93_n4, maj_94_n6,
         maj_94_n5, maj_94_n4, maj_95_n6, maj_95_n5, maj_95_n4;

  DFF_X1 reg_y0_0_reg_2_ ( .D(maj_56_port_o), .CK(clk), .Q(port_y0_0[2]), 
        .QN() );
  DFF_X1 reg_y0_0_reg_1_ ( .D(maj_52_port_o), .CK(clk), .Q(port_y0_0[1]), 
        .QN() );
  DFF_X1 reg_y0_0_reg_0_ ( .D(maj_48_port_o), .CK(clk), .Q(port_y0_0[0]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_2_ ( .D(maj_57_port_o), .CK(clk), .Q(port_y0_1[2]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_1_ ( .D(maj_53_port_o), .CK(clk), .Q(port_y0_1[1]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_0_ ( .D(maj_49_port_o), .CK(clk), .Q(port_y0_1[0]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_2_ ( .D(maj_58_port_o), .CK(clk), .Q(port_y0_2[2]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_1_ ( .D(maj_54_port_o), .CK(clk), .Q(port_y0_2[1]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_0_ ( .D(maj_50_port_o), .CK(clk), .Q(port_y0_2[0]), 
        .QN() );
  DFF_X1 reg_y0_3_reg_2_ ( .D(maj_59_port_o), .CK(clk), .Q(port_y0_3[2]), 
        .QN() );
  DFF_X1 reg_y0_3_reg_1_ ( .D(maj_55_port_o), .CK(clk), .Q(port_y0_3[1]), 
        .QN() );
  DFF_X1 reg_y0_3_reg_0_ ( .D(maj_51_port_o), .CK(clk), .Q(port_y0_3[0]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_2_ ( .D(maj_68_port_o), .CK(clk), .Q(port_y1_0[2]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_1_ ( .D(maj_64_port_o), .CK(clk), .Q(port_y1_0[1]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_0_ ( .D(maj_60_port_o), .CK(clk), .Q(port_y1_0[0]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_2_ ( .D(maj_69_port_o), .CK(clk), .Q(port_y1_1[2]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_1_ ( .D(maj_65_port_o), .CK(clk), .Q(port_y1_1[1]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_0_ ( .D(maj_61_port_o), .CK(clk), .Q(port_y1_1[0]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_2_ ( .D(maj_70_port_o), .CK(clk), .Q(port_y1_2[2]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_1_ ( .D(maj_66_port_o), .CK(clk), .Q(port_y1_2[1]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_0_ ( .D(maj_62_port_o), .CK(clk), .Q(port_y1_2[0]), 
        .QN() );
  DFF_X1 reg_y1_3_reg_2_ ( .D(maj_71_port_o), .CK(clk), .Q(port_y1_3[2]), 
        .QN() );
  DFF_X1 reg_y1_3_reg_1_ ( .D(maj_67_port_o), .CK(clk), .Q(port_y1_3[1]), 
        .QN() );
  DFF_X1 reg_y1_3_reg_0_ ( .D(maj_63_port_o), .CK(clk), .Q(port_y1_3[0]), 
        .QN() );
  DFF_X1 reg_y2_0_reg_2_ ( .D(maj_80_port_o), .CK(clk), .Q(port_y2_0[2]), 
        .QN() );
  DFF_X1 reg_y2_0_reg_1_ ( .D(maj_76_port_o), .CK(clk), .Q(port_y2_0[1]), 
        .QN() );
  DFF_X1 reg_y2_0_reg_0_ ( .D(maj_72_port_o), .CK(clk), .Q(port_y2_0[0]), 
        .QN() );
  DFF_X1 reg_y2_1_reg_2_ ( .D(maj_81_port_o), .CK(clk), .Q(port_y2_1[2]), 
        .QN() );
  DFF_X1 reg_y2_1_reg_1_ ( .D(maj_77_port_o), .CK(clk), .Q(port_y2_1[1]), 
        .QN() );
  DFF_X1 reg_y2_1_reg_0_ ( .D(maj_73_port_o), .CK(clk), .Q(port_y2_1[0]), 
        .QN() );
  DFF_X1 reg_y2_2_reg_2_ ( .D(maj_82_port_o), .CK(clk), .Q(port_y2_2[2]), 
        .QN() );
  DFF_X1 reg_y2_2_reg_1_ ( .D(maj_78_port_o), .CK(clk), .Q(port_y2_2[1]), 
        .QN() );
  DFF_X1 reg_y2_2_reg_0_ ( .D(maj_74_port_o), .CK(clk), .Q(port_y2_2[0]), 
        .QN() );
  DFF_X1 reg_y2_3_reg_2_ ( .D(maj_83_port_o), .CK(clk), .Q(port_y2_3[2]), 
        .QN() );
  DFF_X1 reg_y2_3_reg_1_ ( .D(maj_79_port_o), .CK(clk), .Q(port_y2_3[1]), 
        .QN() );
  DFF_X1 reg_y2_3_reg_0_ ( .D(maj_75_port_o), .CK(clk), .Q(port_y2_3[0]), 
        .QN() );
  DFF_X1 reg_y3_0_reg_2_ ( .D(maj_92_port_o), .CK(clk), .Q(port_y3_0[2]), 
        .QN() );
  DFF_X1 reg_y3_0_reg_1_ ( .D(maj_88_port_o), .CK(clk), .Q(port_y3_0[1]), 
        .QN() );
  DFF_X1 reg_y3_0_reg_0_ ( .D(maj_84_port_o), .CK(clk), .Q(port_y3_0[0]), 
        .QN() );
  DFF_X1 reg_y3_1_reg_2_ ( .D(maj_93_port_o), .CK(clk), .Q(port_y3_1[2]), 
        .QN() );
  DFF_X1 reg_y3_1_reg_1_ ( .D(maj_89_port_o), .CK(clk), .Q(port_y3_1[1]), 
        .QN() );
  DFF_X1 reg_y3_1_reg_0_ ( .D(maj_85_port_o), .CK(clk), .Q(port_y3_1[0]), 
        .QN() );
  DFF_X1 reg_y3_2_reg_2_ ( .D(maj_94_port_o), .CK(clk), .Q(port_y3_2[2]), 
        .QN() );
  DFF_X1 reg_y3_2_reg_1_ ( .D(maj_90_port_o), .CK(clk), .Q(port_y3_2[1]), 
        .QN() );
  DFF_X1 reg_y3_2_reg_0_ ( .D(maj_86_port_o), .CK(clk), .Q(port_y3_2[0]), 
        .QN() );
  DFF_X1 reg_y3_3_reg_2_ ( .D(maj_95_port_o), .CK(clk), .Q(port_y3_3[2]), 
        .QN() );
  DFF_X1 reg_y3_3_reg_1_ ( .D(maj_91_port_o), .CK(clk), .Q(port_y3_3[1]), 
        .QN() );
  DFF_X1 reg_y3_3_reg_0_ ( .D(maj_87_port_o), .CK(clk), .Q(port_y3_3[0]), 
        .QN() );
  XOR2_X1 U468 ( .A(n34), .B(n35), .Z(t3_3_0) );
  XOR2_X1 U469 ( .A(n31), .B(n32), .Z(t3_3_1) );
  XOR2_X1 U470 ( .A(n55), .B(n56), .Z(t3_2_0) );
  XOR2_X1 U471 ( .A(n46), .B(n47), .Z(t3_2_1) );
  XOR2_X1 U472 ( .A(n106), .B(n107), .Z(t3_1_0) );
  XOR2_X1 U473 ( .A(n85), .B(n86), .Z(t3_1_1) );
  XOR2_X1 U474 ( .A(n185), .B(n186), .Z(t3_0_0) );
  XOR2_X1 U475 ( .A(n156), .B(n157), .Z(t3_0_1) );
  XOR2_X1 U476 ( .A(port_x3_0[0]), .B(n216), .Z(t2_3_0) );
  XOR2_X1 U477 ( .A(n227), .B(n228), .Z(t2_2_0) );
  XOR2_X1 U478 ( .A(n222), .B(n223), .Z(t2_2_1) );
  XOR2_X1 U479 ( .A(n248), .B(n249), .Z(t2_1_0) );
  XOR2_X1 U480 ( .A(n240), .B(n241), .Z(t2_1_1) );
  XOR2_X1 U481 ( .A(n274), .B(n275), .Z(t2_0_0) );
  XOR2_X1 U482 ( .A(n265), .B(n266), .Z(t2_0_1) );
  XOR2_X1 U483 ( .A(n303), .B(n304), .Z(t1_2_0) );
  XOR2_X1 U484 ( .A(n296), .B(n297), .Z(t1_2_1) );
  XOR2_X1 U485 ( .A(n340), .B(n341), .Z(t1_1_0) );
  XOR2_X1 U486 ( .A(n325), .B(n326), .Z(t1_1_1) );
  XOR2_X1 U487 ( .A(n397), .B(n398), .Z(t1_0_0) );
  XOR2_X1 U488 ( .A(n376), .B(n377), .Z(t1_0_1) );
  XOR2_X1 U489 ( .A(port_x3_0[0]), .B(port_x0_0[0]), .Z(t0_3_0) );
  XOR2_X1 U490 ( .A(port_x3_0[1]), .B(port_x0_0[1]), .Z(t0_3_1) );
  XOR2_X1 U491 ( .A(port_x3_3[0]), .B(port_x0_3[0]), .Z(t0_2_0) );
  XOR2_X1 U492 ( .A(port_x3_3[1]), .B(port_x0_3[1]), .Z(t0_2_1) );
  XOR2_X1 U493 ( .A(port_x3_2[0]), .B(port_x0_2[0]), .Z(t0_1_0) );
  XOR2_X1 U494 ( .A(port_x3_2[1]), .B(port_x0_2[1]), .Z(t0_1_1) );
  XOR2_X1 U495 ( .A(port_x3_1[0]), .B(port_x0_1[0]), .Z(t0_0_0) );
  XOR2_X1 U496 ( .A(port_x3_1[1]), .B(port_x0_1[1]), .Z(t0_0_1) );
  XOR2_X1 U497 ( .A(n110), .B(n111), .Z(n106) );
  XOR2_X1 U498 ( .A(n108), .B(n109), .Z(n107) );
  XOR2_X1 U499 ( .A(n118), .B(n119), .Z(n110) );
  XOR2_X1 U500 ( .A(n193), .B(n194), .Z(n185) );
  XOR2_X1 U501 ( .A(n187), .B(n188), .Z(n186) );
  XOR2_X1 U502 ( .A(n197), .B(n198), .Z(n193) );
  XOR2_X1 U503 ( .A(n277), .B(n278), .Z(n274) );
  XOR2_X1 U504 ( .A(n203), .B(n276), .Z(n275) );
  NAND2_X1 U505 ( .A1(n279), .A2(n280), .ZN(n277) );
  XOR2_X1 U506 ( .A(n344), .B(n345), .Z(n340) );
  XOR2_X1 U507 ( .A(n342), .B(n343), .Z(n341) );
  XOR2_X1 U508 ( .A(n352), .B(n353), .Z(n344) );
  XOR2_X1 U509 ( .A(n89), .B(n90), .Z(n85) );
  XOR2_X1 U510 ( .A(n87), .B(n88), .Z(n86) );
  XOR2_X1 U511 ( .A(n97), .B(n98), .Z(n89) );
  XOR2_X1 U512 ( .A(n164), .B(n165), .Z(n156) );
  XOR2_X1 U513 ( .A(n158), .B(n159), .Z(n157) );
  XOR2_X1 U514 ( .A(n168), .B(n169), .Z(n164) );
  XOR2_X1 U515 ( .A(n268), .B(n269), .Z(n265) );
  XOR2_X1 U516 ( .A(n174), .B(n267), .Z(n266) );
  NAND2_X1 U517 ( .A1(n270), .A2(n271), .ZN(n268) );
  XOR2_X1 U518 ( .A(n329), .B(n330), .Z(n325) );
  XOR2_X1 U519 ( .A(n327), .B(n328), .Z(n326) );
  XOR2_X1 U520 ( .A(n337), .B(n338), .Z(n329) );
  XOR2_X1 U521 ( .A(n230), .B(n229), .Z(n62) );
  XOR2_X1 U522 ( .A(n225), .B(n224), .Z(n53) );
  XOR2_X1 U523 ( .A(n220), .B(n219), .Z(n44) );
  XOR2_X1 U524 ( .A(n64), .B(n65), .Z(t3_1_2) );
  XOR2_X1 U525 ( .A(n68), .B(n69), .Z(n64) );
  XOR2_X1 U526 ( .A(n66), .B(n67), .Z(n65) );
  XOR2_X1 U527 ( .A(n76), .B(n77), .Z(n68) );
  XOR2_X1 U528 ( .A(n127), .B(n128), .Z(t3_0_2) );
  XOR2_X1 U529 ( .A(n135), .B(n136), .Z(n127) );
  XOR2_X1 U530 ( .A(n129), .B(n130), .Z(n128) );
  XOR2_X1 U531 ( .A(n139), .B(n140), .Z(n135) );
  XOR2_X1 U532 ( .A(n256), .B(n257), .Z(t2_0_2) );
  XOR2_X1 U533 ( .A(n259), .B(n260), .Z(n256) );
  XOR2_X1 U534 ( .A(n145), .B(n258), .Z(n257) );
  NAND2_X1 U535 ( .A1(n261), .A2(n262), .ZN(n259) );
  XOR2_X1 U536 ( .A(n310), .B(n311), .Z(t1_1_2) );
  XOR2_X1 U537 ( .A(n314), .B(n315), .Z(n310) );
  XOR2_X1 U538 ( .A(n312), .B(n313), .Z(n311) );
  XOR2_X1 U539 ( .A(n322), .B(n323), .Z(n314) );
  XOR2_X1 U540 ( .A(n204), .B(n201), .Z(n278) );
  XOR2_X1 U541 ( .A(n175), .B(n172), .Z(n269) );
  XOR2_X1 U542 ( .A(n146), .B(n143), .Z(n260) );
  XOR2_X1 U543 ( .A(n207), .B(n208), .Z(n413) );
  XOR2_X1 U544 ( .A(n178), .B(n179), .Z(n392) );
  XOR2_X1 U545 ( .A(n149), .B(n150), .Z(n371) );
  XOR2_X1 U546 ( .A(n125), .B(n121), .Z(n352) );
  XOR2_X1 U547 ( .A(n104), .B(n100), .Z(n337) );
  XOR2_X1 U548 ( .A(n83), .B(n79), .Z(n322) );
  XOR2_X1 U549 ( .A(n205), .B(n206), .Z(n197) );
  XOR2_X1 U550 ( .A(n208), .B(n209), .Z(n205) );
  XOR2_X1 U551 ( .A(n27), .B(n207), .Z(n206) );
  NOR2_X1 U552 ( .A1(n210), .A2(n211), .ZN(n209) );
  XOR2_X1 U553 ( .A(n176), .B(n177), .Z(n168) );
  XOR2_X1 U554 ( .A(n179), .B(n180), .Z(n176) );
  XOR2_X1 U555 ( .A(n26), .B(n178), .Z(n177) );
  NOR2_X1 U556 ( .A1(n181), .A2(n182), .ZN(n180) );
  XOR2_X1 U557 ( .A(n147), .B(n148), .Z(n139) );
  XOR2_X1 U558 ( .A(n150), .B(n151), .Z(n147) );
  XOR2_X1 U559 ( .A(n25), .B(n149), .Z(n148) );
  NOR2_X1 U560 ( .A1(n152), .A2(n153), .ZN(n151) );
  XOR2_X1 U561 ( .A(n403), .B(n404), .Z(n399) );
  XOR2_X1 U562 ( .A(n412), .B(n413), .Z(n403) );
  XOR2_X1 U563 ( .A(n405), .B(n406), .Z(n404) );
  XNOR2_X1 U564 ( .A(n204), .B(n203), .ZN(n412) );
  XOR2_X1 U565 ( .A(n382), .B(n383), .Z(n378) );
  XOR2_X1 U566 ( .A(n391), .B(n392), .Z(n382) );
  XOR2_X1 U567 ( .A(n384), .B(n385), .Z(n383) );
  XNOR2_X1 U568 ( .A(n175), .B(n174), .ZN(n391) );
  XOR2_X1 U569 ( .A(n361), .B(n362), .Z(n357) );
  XOR2_X1 U570 ( .A(n370), .B(n371), .Z(n361) );
  XOR2_X1 U571 ( .A(n363), .B(n364), .Z(n362) );
  XNOR2_X1 U572 ( .A(n146), .B(n145), .ZN(n370) );
  NOR2_X1 U573 ( .A1(n120), .A2(n126), .ZN(n253) );
  NOR2_X1 U574 ( .A1(n99), .A2(n105), .ZN(n245) );
  NOR2_X1 U575 ( .A1(n78), .A2(n84), .ZN(n237) );
  NOR2_X1 U576 ( .A1(n18), .A2(n213), .ZN(n210) );
  NOR2_X1 U577 ( .A1(n17), .A2(n184), .ZN(n181) );
  NOR2_X1 U578 ( .A1(n16), .A2(n155), .ZN(n152) );
  NAND2_X1 U579 ( .A1(n9), .A2(n207), .ZN(n280) );
  NAND2_X1 U580 ( .A1(n7), .A2(n178), .ZN(n271) );
  NAND2_X1 U581 ( .A1(n5), .A2(n149), .ZN(n262) );
  INV_X1 U582 ( .A(n212), .ZN(n9) );
  INV_X1 U583 ( .A(n183), .ZN(n7) );
  INV_X1 U584 ( .A(n154), .ZN(n5) );
  NAND2_X1 U585 ( .A1(n251), .A2(n252), .ZN(n250) );
  NAND2_X1 U586 ( .A1(n3), .A2(n120), .ZN(n252) );
  NOR2_X1 U587 ( .A1(n253), .A2(n254), .ZN(n251) );
  INV_X1 U588 ( .A(n125), .ZN(n3) );
  NAND2_X1 U589 ( .A1(n243), .A2(n244), .ZN(n242) );
  NAND2_X1 U590 ( .A1(n2), .A2(n99), .ZN(n244) );
  NOR2_X1 U591 ( .A1(n245), .A2(n246), .ZN(n243) );
  INV_X1 U592 ( .A(n104), .ZN(n2) );
  NAND2_X1 U593 ( .A1(n235), .A2(n236), .ZN(n234) );
  NAND2_X1 U594 ( .A1(n1), .A2(n78), .ZN(n236) );
  NOR2_X1 U595 ( .A1(n237), .A2(n238), .ZN(n235) );
  INV_X1 U596 ( .A(n83), .ZN(n1) );
  INV_X1 U597 ( .A(n230), .ZN(n8) );
  INV_X1 U598 ( .A(n225), .ZN(n6) );
  INV_X1 U599 ( .A(n220), .ZN(n4) );
  NOR2_X1 U600 ( .A1(port_x1_0[0]), .A2(n15), .ZN(n216) );
  NAND2_X1 U601 ( .A1(port_x3_0[0]), .A2(port_x1_0[0]), .ZN(n34) );
  XOR2_X1 U602 ( .A(n36), .B(port_x3_0[0]), .Z(n35) );
  NAND2_X1 U603 ( .A1(port_x2_0[0]), .A2(port_x1_0[0]), .ZN(n36) );
  XOR2_X1 U604 ( .A(n61), .B(n62), .Z(n55) );
  XOR2_X1 U605 ( .A(n57), .B(n58), .Z(n56) );
  XOR2_X1 U606 ( .A(n63), .B(port_x3_3[0]), .Z(n61) );
  XOR2_X1 U607 ( .A(n63), .B(n231), .Z(n227) );
  XOR2_X1 U608 ( .A(n229), .B(n8), .Z(n228) );
  XOR2_X1 U609 ( .A(port_x3_3[0]), .B(port_x2_3[0]), .Z(n231) );
  XNOR2_X1 U610 ( .A(port_x3_2[0]), .B(n121), .ZN(n249) );
  XOR2_X1 U611 ( .A(n250), .B(n12), .Z(n248) );
  INV_X1 U612 ( .A(n116), .ZN(n12) );
  XOR2_X1 U613 ( .A(n309), .B(n62), .Z(n303) );
  XOR2_X1 U614 ( .A(n305), .B(n306), .Z(n304) );
  XOR2_X1 U615 ( .A(n63), .B(port_x1_3[0]), .Z(n309) );
  XOR2_X1 U616 ( .A(n414), .B(n415), .Z(n397) );
  XOR2_X1 U617 ( .A(n399), .B(n400), .Z(n398) );
  NAND2_X1 U618 ( .A1(port_x2_2[0]), .A2(port_x3_3[0]), .ZN(n414) );
  XNOR2_X1 U619 ( .A(port_x3_0[1]), .B(n418), .ZN(t2_3_1) );
  OR2_X1 U620 ( .A1(port_x1_0[1]), .A2(n14), .ZN(n418) );
  NAND2_X1 U621 ( .A1(port_x3_0[1]), .A2(port_x1_0[1]), .ZN(n31) );
  XOR2_X1 U622 ( .A(n33), .B(port_x3_0[1]), .Z(n32) );
  NAND2_X1 U623 ( .A1(port_x2_0[1]), .A2(port_x1_0[1]), .ZN(n33) );
  XOR2_X1 U624 ( .A(n52), .B(n53), .Z(n46) );
  XOR2_X1 U625 ( .A(n48), .B(n49), .Z(n47) );
  XOR2_X1 U626 ( .A(n54), .B(port_x3_3[1]), .Z(n52) );
  XOR2_X1 U627 ( .A(n54), .B(n226), .Z(n222) );
  XOR2_X1 U628 ( .A(n224), .B(n6), .Z(n223) );
  XOR2_X1 U629 ( .A(port_x3_3[1]), .B(port_x2_3[1]), .Z(n226) );
  XNOR2_X1 U630 ( .A(port_x3_2[1]), .B(n100), .ZN(n241) );
  XOR2_X1 U631 ( .A(n242), .B(n11), .Z(n240) );
  INV_X1 U632 ( .A(n95), .ZN(n11) );
  XOR2_X1 U633 ( .A(n302), .B(n53), .Z(n296) );
  XOR2_X1 U634 ( .A(n298), .B(n299), .Z(n297) );
  XOR2_X1 U635 ( .A(n54), .B(port_x1_3[1]), .Z(n302) );
  XOR2_X1 U636 ( .A(n393), .B(n394), .Z(n376) );
  XOR2_X1 U637 ( .A(n378), .B(n379), .Z(n377) );
  NAND2_X1 U638 ( .A1(port_x2_2[1]), .A2(port_x3_3[1]), .ZN(n393) );
  XOR2_X1 U639 ( .A(n28), .B(n29), .Z(t3_3_2) );
  NAND2_X1 U640 ( .A1(port_x3_0[2]), .A2(port_x1_0[2]), .ZN(n28) );
  XOR2_X1 U641 ( .A(n30), .B(port_x3_0[2]), .Z(n29) );
  NAND2_X1 U642 ( .A1(port_x2_0[2]), .A2(port_x1_0[2]), .ZN(n30) );
  XOR2_X1 U643 ( .A(n37), .B(n38), .Z(t3_2_2) );
  XOR2_X1 U644 ( .A(n43), .B(n44), .Z(n37) );
  XOR2_X1 U645 ( .A(n39), .B(n40), .Z(n38) );
  XOR2_X1 U646 ( .A(n45), .B(port_x3_3[2]), .Z(n43) );
  XOR2_X1 U647 ( .A(n217), .B(n218), .Z(t2_2_2) );
  XOR2_X1 U648 ( .A(n45), .B(n221), .Z(n217) );
  XOR2_X1 U649 ( .A(n219), .B(n4), .Z(n218) );
  XOR2_X1 U650 ( .A(port_x3_3[2]), .B(port_x2_3[2]), .Z(n221) );
  XOR2_X1 U651 ( .A(n232), .B(n233), .Z(t2_1_2) );
  XNOR2_X1 U652 ( .A(port_x3_2[2]), .B(n79), .ZN(n233) );
  XOR2_X1 U653 ( .A(n234), .B(n10), .Z(n232) );
  INV_X1 U654 ( .A(n74), .ZN(n10) );
  XOR2_X1 U655 ( .A(n289), .B(n290), .Z(t1_2_2) );
  XOR2_X1 U656 ( .A(n295), .B(n44), .Z(n289) );
  XOR2_X1 U657 ( .A(n291), .B(n292), .Z(n290) );
  XOR2_X1 U658 ( .A(n45), .B(port_x1_3[2]), .Z(n295) );
  XOR2_X1 U659 ( .A(n355), .B(n356), .Z(t1_0_2) );
  XOR2_X1 U660 ( .A(n372), .B(n373), .Z(n355) );
  XOR2_X1 U661 ( .A(n357), .B(n358), .Z(n356) );
  NAND2_X1 U662 ( .A1(port_x2_2[2]), .A2(port_x3_3[2]), .ZN(n372) );
  XOR2_X1 U663 ( .A(port_x3_0[2]), .B(n214), .Z(t2_3_2) );
  NOR2_X1 U664 ( .A1(port_x1_0[2]), .A2(n13), .ZN(n214) );
  XOR2_X1 U665 ( .A(port_x3_0[2]), .B(port_x0_0[2]), .Z(t0_3_2) );
  XOR2_X1 U666 ( .A(port_x3_3[2]), .B(port_x0_3[2]), .Z(t0_2_2) );
  XOR2_X1 U667 ( .A(port_x3_2[2]), .B(port_x0_2[2]), .Z(t0_1_2) );
  XOR2_X1 U668 ( .A(port_x3_1[2]), .B(port_x0_1[2]), .Z(t0_0_2) );
  NAND2_X1 U669 ( .A1(n287), .A2(n288), .ZN(t1_3_0) );
  NAND2_X1 U670 ( .A1(port_x2_0[0]), .A2(port_x3_0[0]), .ZN(n287) );
  NAND2_X1 U671 ( .A1(port_x1_0[0]), .A2(n15), .ZN(n288) );
  NAND2_X1 U672 ( .A1(n285), .A2(n286), .ZN(t1_3_1) );
  NAND2_X1 U673 ( .A1(port_x2_0[1]), .A2(port_x3_0[1]), .ZN(n285) );
  NAND2_X1 U674 ( .A1(port_x1_0[1]), .A2(n14), .ZN(n286) );
  NAND2_X1 U675 ( .A1(port_x1_2[0]), .A2(port_x2_0[0]), .ZN(n120) );
  NAND2_X1 U676 ( .A1(port_x1_2[1]), .A2(port_x2_0[1]), .ZN(n99) );
  NAND2_X1 U677 ( .A1(port_x1_2[2]), .A2(port_x2_0[2]), .ZN(n78) );
  NAND2_X1 U678 ( .A1(port_x2_3[0]), .A2(port_x1_1[0]), .ZN(n207) );
  NAND2_X1 U679 ( .A1(port_x2_3[1]), .A2(port_x1_1[1]), .ZN(n178) );
  NAND2_X1 U680 ( .A1(port_x2_3[2]), .A2(port_x1_1[2]), .ZN(n149) );
  XOR2_X1 U681 ( .A(n116), .B(n354), .Z(n353) );
  NAND2_X1 U682 ( .A1(port_x2_2[0]), .A2(port_x1_0[0]), .ZN(n354) );
  XOR2_X1 U683 ( .A(n95), .B(n339), .Z(n338) );
  NAND2_X1 U684 ( .A1(port_x2_2[1]), .A2(port_x1_0[1]), .ZN(n339) );
  XOR2_X1 U685 ( .A(n74), .B(n324), .Z(n323) );
  NAND2_X1 U686 ( .A1(port_x2_2[2]), .A2(port_x1_0[2]), .ZN(n324) );
  XOR2_X1 U687 ( .A(n59), .B(n60), .Z(n58) );
  NAND2_X1 U688 ( .A1(port_x3_1[0]), .A2(port_x1_0[0]), .ZN(n59) );
  NAND2_X1 U689 ( .A1(port_x1_1[0]), .A2(port_x3_0[0]), .ZN(n60) );
  XOR2_X1 U690 ( .A(n50), .B(n51), .Z(n49) );
  NAND2_X1 U691 ( .A1(port_x3_1[1]), .A2(port_x1_0[1]), .ZN(n50) );
  NAND2_X1 U692 ( .A1(port_x1_1[1]), .A2(port_x3_0[1]), .ZN(n51) );
  XOR2_X1 U693 ( .A(n41), .B(n42), .Z(n40) );
  NAND2_X1 U694 ( .A1(port_x3_1[2]), .A2(port_x1_0[2]), .ZN(n41) );
  NAND2_X1 U695 ( .A1(port_x1_1[2]), .A2(port_x3_0[2]), .ZN(n42) );
  XOR2_X1 U696 ( .A(n189), .B(n190), .Z(n188) );
  NAND2_X1 U697 ( .A1(port_x1_2[0]), .A2(port_x3_1[0]), .ZN(n189) );
  NAND2_X1 U698 ( .A1(port_x1_2[0]), .A2(port_x3_3[0]), .ZN(n190) );
  XOR2_X1 U699 ( .A(n195), .B(n196), .Z(n194) );
  NAND2_X1 U700 ( .A1(port_x3_1[0]), .A2(port_x1_3[0]), .ZN(n195) );
  NAND2_X1 U701 ( .A1(port_x3_2[0]), .A2(port_x1_3[0]), .ZN(n196) );
  XOR2_X1 U702 ( .A(n160), .B(n161), .Z(n159) );
  NAND2_X1 U703 ( .A1(port_x1_2[1]), .A2(port_x3_1[1]), .ZN(n160) );
  NAND2_X1 U704 ( .A1(port_x1_2[1]), .A2(port_x3_3[1]), .ZN(n161) );
  XOR2_X1 U705 ( .A(n166), .B(n167), .Z(n165) );
  NAND2_X1 U706 ( .A1(port_x3_1[1]), .A2(port_x1_3[1]), .ZN(n166) );
  NAND2_X1 U707 ( .A1(port_x3_2[1]), .A2(port_x1_3[1]), .ZN(n167) );
  XOR2_X1 U708 ( .A(n131), .B(n132), .Z(n130) );
  NAND2_X1 U709 ( .A1(port_x1_2[2]), .A2(port_x3_1[2]), .ZN(n131) );
  NAND2_X1 U710 ( .A1(port_x1_2[2]), .A2(port_x3_3[2]), .ZN(n132) );
  XOR2_X1 U711 ( .A(n137), .B(n138), .Z(n136) );
  NAND2_X1 U712 ( .A1(port_x3_1[2]), .A2(port_x1_3[2]), .ZN(n137) );
  NAND2_X1 U713 ( .A1(port_x3_2[2]), .A2(port_x1_3[2]), .ZN(n138) );
  XOR2_X1 U714 ( .A(n307), .B(n308), .Z(n306) );
  NAND2_X1 U715 ( .A1(port_x3_1[0]), .A2(port_x2_0[0]), .ZN(n307) );
  NAND2_X1 U716 ( .A1(port_x2_1[0]), .A2(port_x3_0[0]), .ZN(n308) );
  XOR2_X1 U717 ( .A(n300), .B(n301), .Z(n299) );
  NAND2_X1 U718 ( .A1(port_x3_1[1]), .A2(port_x2_0[1]), .ZN(n300) );
  NAND2_X1 U719 ( .A1(port_x2_1[1]), .A2(port_x3_0[1]), .ZN(n301) );
  XOR2_X1 U720 ( .A(n293), .B(n294), .Z(n292) );
  NAND2_X1 U721 ( .A1(port_x3_1[2]), .A2(port_x2_0[2]), .ZN(n293) );
  NAND2_X1 U722 ( .A1(port_x2_1[2]), .A2(port_x3_0[2]), .ZN(n294) );
  XOR2_X1 U723 ( .A(n401), .B(n402), .Z(n400) );
  NAND2_X1 U724 ( .A1(port_x3_1[0]), .A2(port_x2_3[0]), .ZN(n401) );
  NAND2_X1 U725 ( .A1(port_x3_2[0]), .A2(port_x2_3[0]), .ZN(n402) );
  XOR2_X1 U726 ( .A(n416), .B(n417), .Z(n415) );
  NAND2_X1 U727 ( .A1(port_x3_3[0]), .A2(port_x2_1[0]), .ZN(n416) );
  NAND2_X1 U728 ( .A1(port_x2_2[0]), .A2(port_x3_1[0]), .ZN(n417) );
  XOR2_X1 U729 ( .A(n380), .B(n381), .Z(n379) );
  NAND2_X1 U730 ( .A1(port_x3_1[1]), .A2(port_x2_3[1]), .ZN(n380) );
  NAND2_X1 U731 ( .A1(port_x3_2[1]), .A2(port_x2_3[1]), .ZN(n381) );
  XOR2_X1 U732 ( .A(n395), .B(n396), .Z(n394) );
  NAND2_X1 U733 ( .A1(port_x3_3[1]), .A2(port_x2_1[1]), .ZN(n395) );
  NAND2_X1 U734 ( .A1(port_x2_2[1]), .A2(port_x3_1[1]), .ZN(n396) );
  XOR2_X1 U735 ( .A(n359), .B(n360), .Z(n358) );
  NAND2_X1 U736 ( .A1(port_x3_1[2]), .A2(port_x2_3[2]), .ZN(n359) );
  NAND2_X1 U737 ( .A1(port_x3_2[2]), .A2(port_x2_3[2]), .ZN(n360) );
  XOR2_X1 U738 ( .A(n374), .B(n375), .Z(n373) );
  NAND2_X1 U739 ( .A1(port_x3_3[2]), .A2(port_x2_1[2]), .ZN(n374) );
  NAND2_X1 U740 ( .A1(port_x2_2[2]), .A2(port_x3_1[2]), .ZN(n375) );
  XOR2_X1 U741 ( .A(n201), .B(n407), .Z(n406) );
  NAND2_X1 U742 ( .A1(n408), .A2(n409), .ZN(n407) );
  OR2_X1 U743 ( .A1(n213), .A2(port_x2_1[0]), .ZN(n409) );
  NAND2_X1 U744 ( .A1(n9), .A2(port_x2_1[0]), .ZN(n408) );
  XOR2_X1 U745 ( .A(n172), .B(n386), .Z(n385) );
  NAND2_X1 U746 ( .A1(n387), .A2(n388), .ZN(n386) );
  OR2_X1 U747 ( .A1(n184), .A2(port_x2_1[1]), .ZN(n388) );
  NAND2_X1 U748 ( .A1(n7), .A2(port_x2_1[1]), .ZN(n387) );
  XOR2_X1 U749 ( .A(n143), .B(n365), .Z(n364) );
  NAND2_X1 U750 ( .A1(n366), .A2(n367), .ZN(n365) );
  OR2_X1 U751 ( .A1(n155), .A2(port_x2_1[2]), .ZN(n367) );
  NAND2_X1 U752 ( .A1(n5), .A2(port_x2_1[2]), .ZN(n366) );
  XOR2_X1 U753 ( .A(n208), .B(port_x3_1[0]), .Z(n276) );
  XOR2_X1 U754 ( .A(n179), .B(port_x3_1[1]), .Z(n267) );
  XOR2_X1 U755 ( .A(n150), .B(port_x3_1[2]), .Z(n258) );
  XOR2_X1 U756 ( .A(n199), .B(n200), .Z(n198) );
  XOR2_X1 U757 ( .A(n203), .B(n204), .Z(n199) );
  XOR2_X1 U758 ( .A(n201), .B(n202), .Z(n200) );
  NAND2_X1 U759 ( .A1(port_x3_1[0]), .A2(port_x1_1[0]), .ZN(n202) );
  XOR2_X1 U760 ( .A(n170), .B(n171), .Z(n169) );
  XOR2_X1 U761 ( .A(n174), .B(n175), .Z(n170) );
  XOR2_X1 U762 ( .A(n172), .B(n173), .Z(n171) );
  NAND2_X1 U763 ( .A1(port_x3_1[1]), .A2(port_x1_1[1]), .ZN(n173) );
  XOR2_X1 U764 ( .A(n141), .B(n142), .Z(n140) );
  XOR2_X1 U765 ( .A(n145), .B(n146), .Z(n141) );
  XOR2_X1 U766 ( .A(n143), .B(n144), .Z(n142) );
  NAND2_X1 U767 ( .A1(port_x3_1[2]), .A2(port_x1_1[2]), .ZN(n144) );
  XOR2_X1 U768 ( .A(n112), .B(n113), .Z(n111) );
  XOR2_X1 U769 ( .A(n116), .B(n117), .Z(n112) );
  XOR2_X1 U770 ( .A(n114), .B(n115), .Z(n113) );
  NAND2_X1 U771 ( .A1(port_x3_2[0]), .A2(port_x1_0[0]), .ZN(n117) );
  XOR2_X1 U772 ( .A(n91), .B(n92), .Z(n90) );
  XOR2_X1 U773 ( .A(n95), .B(n96), .Z(n91) );
  XOR2_X1 U774 ( .A(n93), .B(n94), .Z(n92) );
  NAND2_X1 U775 ( .A1(port_x3_2[1]), .A2(port_x1_0[1]), .ZN(n96) );
  XOR2_X1 U776 ( .A(n70), .B(n71), .Z(n69) );
  XOR2_X1 U777 ( .A(n74), .B(n75), .Z(n70) );
  XOR2_X1 U778 ( .A(n72), .B(n73), .Z(n71) );
  NAND2_X1 U779 ( .A1(port_x3_2[2]), .A2(port_x1_0[2]), .ZN(n75) );
  XOR2_X1 U780 ( .A(n346), .B(n347), .Z(n345) );
  XOR2_X1 U781 ( .A(n350), .B(n351), .Z(n346) );
  XOR2_X1 U782 ( .A(n348), .B(n349), .Z(n347) );
  NAND2_X1 U783 ( .A1(port_x3_2[0]), .A2(port_x2_0[0]), .ZN(n350) );
  XOR2_X1 U784 ( .A(n331), .B(n332), .Z(n330) );
  XOR2_X1 U785 ( .A(n335), .B(n336), .Z(n331) );
  XOR2_X1 U786 ( .A(n333), .B(n334), .Z(n332) );
  NAND2_X1 U787 ( .A1(port_x3_2[1]), .A2(port_x2_0[1]), .ZN(n335) );
  XOR2_X1 U788 ( .A(n316), .B(n317), .Z(n315) );
  XOR2_X1 U789 ( .A(n320), .B(n321), .Z(n316) );
  XOR2_X1 U790 ( .A(n318), .B(n319), .Z(n317) );
  NAND2_X1 U791 ( .A1(port_x3_2[2]), .A2(port_x2_0[2]), .ZN(n320) );
  NAND2_X1 U792 ( .A1(port_x2_2[0]), .A2(port_x1_2[0]), .ZN(n121) );
  NAND2_X1 U793 ( .A1(port_x2_2[1]), .A2(port_x1_2[1]), .ZN(n100) );
  NAND2_X1 U794 ( .A1(port_x2_2[2]), .A2(port_x1_2[2]), .ZN(n79) );
  XOR2_X1 U795 ( .A(n410), .B(n411), .Z(n405) );
  NAND2_X1 U796 ( .A1(port_x3_2[0]), .A2(port_x2_1[0]), .ZN(n410) );
  NOR2_X1 U797 ( .A1(n18), .A2(n27), .ZN(n411) );
  XOR2_X1 U798 ( .A(n389), .B(n390), .Z(n384) );
  NAND2_X1 U799 ( .A1(port_x3_2[1]), .A2(port_x2_1[1]), .ZN(n389) );
  NOR2_X1 U800 ( .A1(n17), .A2(n26), .ZN(n390) );
  XOR2_X1 U801 ( .A(n368), .B(n369), .Z(n363) );
  NAND2_X1 U802 ( .A1(port_x3_2[2]), .A2(port_x2_1[2]), .ZN(n368) );
  NOR2_X1 U803 ( .A1(n16), .A2(n25), .ZN(n369) );
  XOR2_X1 U804 ( .A(n191), .B(n192), .Z(n187) );
  NAND2_X1 U805 ( .A1(port_x3_2[0]), .A2(port_x1_1[0]), .ZN(n191) );
  NAND2_X1 U806 ( .A1(port_x1_1[0]), .A2(port_x3_3[0]), .ZN(n192) );
  XOR2_X1 U807 ( .A(n162), .B(n163), .Z(n158) );
  NAND2_X1 U808 ( .A1(port_x3_2[1]), .A2(port_x1_1[1]), .ZN(n162) );
  NAND2_X1 U809 ( .A1(port_x1_1[1]), .A2(port_x3_3[1]), .ZN(n163) );
  XOR2_X1 U810 ( .A(n133), .B(n134), .Z(n129) );
  NAND2_X1 U811 ( .A1(port_x3_2[2]), .A2(port_x1_1[2]), .ZN(n133) );
  NAND2_X1 U812 ( .A1(port_x1_1[2]), .A2(port_x3_3[2]), .ZN(n134) );
  XOR2_X1 U813 ( .A(n121), .B(n122), .Z(n118) );
  NOR2_X1 U814 ( .A1(n123), .A2(n124), .ZN(n122) );
  NOR2_X1 U815 ( .A1(n21), .A2(n126), .ZN(n123) );
  NOR2_X1 U816 ( .A1(port_x2_2[0]), .A2(n125), .ZN(n124) );
  XOR2_X1 U817 ( .A(n100), .B(n101), .Z(n97) );
  NOR2_X1 U818 ( .A1(n102), .A2(n103), .ZN(n101) );
  NOR2_X1 U819 ( .A1(n20), .A2(n105), .ZN(n102) );
  NOR2_X1 U820 ( .A1(port_x2_2[1]), .A2(n104), .ZN(n103) );
  XOR2_X1 U821 ( .A(n79), .B(n80), .Z(n76) );
  NOR2_X1 U822 ( .A1(n81), .A2(n82), .ZN(n80) );
  NOR2_X1 U823 ( .A1(n19), .A2(n84), .ZN(n81) );
  NOR2_X1 U824 ( .A1(port_x2_2[2]), .A2(n83), .ZN(n82) );
  NAND2_X1 U825 ( .A1(port_x2_2[0]), .A2(port_x1_3[0]), .ZN(n201) );
  NAND2_X1 U826 ( .A1(port_x1_2[0]), .A2(port_x2_1[0]), .ZN(n208) );
  NAND2_X1 U827 ( .A1(port_x2_2[1]), .A2(port_x1_3[1]), .ZN(n172) );
  NAND2_X1 U828 ( .A1(port_x1_2[1]), .A2(port_x2_1[1]), .ZN(n179) );
  NAND2_X1 U829 ( .A1(port_x2_2[2]), .A2(port_x1_3[2]), .ZN(n143) );
  NAND2_X1 U830 ( .A1(port_x1_2[2]), .A2(port_x2_1[2]), .ZN(n150) );
  NAND2_X1 U831 ( .A1(port_x1_3[0]), .A2(port_x2_1[0]), .ZN(n204) );
  NAND2_X1 U832 ( .A1(port_x1_3[1]), .A2(port_x2_1[1]), .ZN(n175) );
  NAND2_X1 U833 ( .A1(port_x1_3[2]), .A2(port_x2_1[2]), .ZN(n146) );
  NAND2_X1 U834 ( .A1(port_x1_2[0]), .A2(port_x2_3[0]), .ZN(n203) );
  NAND2_X1 U835 ( .A1(port_x1_2[1]), .A2(port_x2_3[1]), .ZN(n174) );
  NAND2_X1 U836 ( .A1(port_x1_2[2]), .A2(port_x2_3[2]), .ZN(n145) );
  XNOR2_X1 U837 ( .A(port_x3_2[0]), .B(n120), .ZN(n119) );
  XNOR2_X1 U838 ( .A(port_x3_2[1]), .B(n99), .ZN(n98) );
  XNOR2_X1 U839 ( .A(port_x3_2[2]), .B(n78), .ZN(n77) );
  NAND2_X1 U840 ( .A1(port_x2_1[0]), .A2(port_x1_0[0]), .ZN(n63) );
  NAND2_X1 U841 ( .A1(port_x2_1[1]), .A2(port_x1_0[1]), .ZN(n54) );
  NAND2_X1 U842 ( .A1(port_x2_1[2]), .A2(port_x1_0[2]), .ZN(n45) );
  NAND2_X1 U843 ( .A1(port_x1_3[0]), .A2(port_x2_0[0]), .ZN(n116) );
  NAND2_X1 U844 ( .A1(port_x1_3[1]), .A2(port_x2_0[1]), .ZN(n95) );
  NAND2_X1 U845 ( .A1(port_x1_3[2]), .A2(port_x2_0[2]), .ZN(n74) );
  NAND2_X1 U846 ( .A1(port_x2_3[0]), .A2(port_x1_0[0]), .ZN(n125) );
  NAND2_X1 U847 ( .A1(port_x2_3[1]), .A2(port_x1_0[1]), .ZN(n104) );
  NAND2_X1 U848 ( .A1(port_x2_3[2]), .A2(port_x1_0[2]), .ZN(n83) );
  NAND2_X1 U849 ( .A1(port_x1_1[0]), .A2(n21), .ZN(n213) );
  NAND2_X1 U850 ( .A1(port_x1_1[1]), .A2(n20), .ZN(n184) );
  NAND2_X1 U851 ( .A1(port_x1_1[2]), .A2(n19), .ZN(n155) );
  NAND2_X1 U852 ( .A1(n283), .A2(n284), .ZN(t1_3_2) );
  NAND2_X1 U853 ( .A1(port_x2_0[2]), .A2(port_x3_0[2]), .ZN(n283) );
  NAND2_X1 U854 ( .A1(port_x1_0[2]), .A2(n13), .ZN(n284) );
  NAND2_X1 U855 ( .A1(port_x2_3[0]), .A2(port_x1_3[0]), .ZN(n229) );
  NAND2_X1 U856 ( .A1(port_x2_3[1]), .A2(port_x1_3[1]), .ZN(n224) );
  NAND2_X1 U857 ( .A1(port_x2_3[2]), .A2(port_x1_3[2]), .ZN(n219) );
  INV_X1 U858 ( .A(port_x2_1[0]), .ZN(n18) );
  INV_X1 U859 ( .A(port_x2_1[1]), .ZN(n17) );
  INV_X1 U860 ( .A(port_x2_1[2]), .ZN(n16) );
  NAND2_X1 U861 ( .A1(port_x1_2[0]), .A2(n120), .ZN(n349) );
  NAND2_X1 U862 ( .A1(port_x1_2[1]), .A2(n99), .ZN(n334) );
  NAND2_X1 U863 ( .A1(port_x1_2[2]), .A2(n78), .ZN(n319) );
  NOR2_X1 U864 ( .A1(port_x1_0[0]), .A2(n255), .ZN(n254) );
  XOR2_X1 U865 ( .A(n120), .B(port_x2_2[0]), .Z(n255) );
  NOR2_X1 U866 ( .A1(port_x1_0[1]), .A2(n247), .ZN(n246) );
  XOR2_X1 U867 ( .A(n99), .B(port_x2_2[1]), .Z(n247) );
  NOR2_X1 U868 ( .A1(port_x1_0[2]), .A2(n239), .ZN(n238) );
  XOR2_X1 U869 ( .A(n78), .B(port_x2_2[2]), .Z(n239) );
  NOR2_X1 U870 ( .A1(port_x2_1[0]), .A2(n212), .ZN(n211) );
  NOR2_X1 U871 ( .A1(port_x2_1[1]), .A2(n183), .ZN(n182) );
  NOR2_X1 U872 ( .A1(port_x2_1[2]), .A2(n154), .ZN(n153) );
  NAND2_X1 U873 ( .A1(port_x1_1[0]), .A2(port_x2_0[0]), .ZN(n230) );
  NAND2_X1 U874 ( .A1(port_x1_1[1]), .A2(port_x2_0[1]), .ZN(n225) );
  NAND2_X1 U875 ( .A1(port_x1_1[2]), .A2(port_x2_0[2]), .ZN(n220) );
  NOR2_X1 U876 ( .A1(n281), .A2(n282), .ZN(n279) );
  NOR2_X1 U877 ( .A1(port_x1_1[0]), .A2(n18), .ZN(n281) );
  NOR2_X1 U878 ( .A1(n207), .A2(n213), .ZN(n282) );
  NOR2_X1 U879 ( .A1(n272), .A2(n273), .ZN(n270) );
  NOR2_X1 U880 ( .A1(port_x1_1[1]), .A2(n17), .ZN(n272) );
  NOR2_X1 U881 ( .A1(n178), .A2(n184), .ZN(n273) );
  NOR2_X1 U882 ( .A1(n263), .A2(n264), .ZN(n261) );
  NOR2_X1 U883 ( .A1(port_x1_1[2]), .A2(n16), .ZN(n263) );
  NOR2_X1 U884 ( .A1(n149), .A2(n155), .ZN(n264) );
  NAND2_X1 U885 ( .A1(port_x1_0[0]), .A2(n24), .ZN(n126) );
  INV_X1 U886 ( .A(port_x2_3[0]), .ZN(n24) );
  NAND2_X1 U887 ( .A1(port_x1_0[1]), .A2(n23), .ZN(n105) );
  INV_X1 U888 ( .A(port_x2_3[1]), .ZN(n23) );
  NAND2_X1 U889 ( .A1(port_x1_0[2]), .A2(n22), .ZN(n84) );
  INV_X1 U890 ( .A(port_x2_3[2]), .ZN(n22) );
  NAND2_X1 U891 ( .A1(port_x2_2[0]), .A2(port_x1_1[0]), .ZN(n212) );
  NAND2_X1 U892 ( .A1(port_x2_2[1]), .A2(port_x1_1[1]), .ZN(n183) );
  NAND2_X1 U893 ( .A1(port_x2_2[2]), .A2(port_x1_1[2]), .ZN(n154) );
  INV_X1 U894 ( .A(port_x3_1[0]), .ZN(n27) );
  INV_X1 U895 ( .A(port_x3_1[1]), .ZN(n26) );
  INV_X1 U896 ( .A(port_x3_1[2]), .ZN(n25) );
  INV_X1 U897 ( .A(port_x2_2[0]), .ZN(n21) );
  INV_X1 U898 ( .A(port_x2_2[1]), .ZN(n20) );
  INV_X1 U899 ( .A(port_x2_2[2]), .ZN(n19) );
  INV_X1 U900 ( .A(port_x2_0[0]), .ZN(n15) );
  INV_X1 U901 ( .A(port_x2_0[1]), .ZN(n14) );
  INV_X1 U902 ( .A(port_x2_0[2]), .ZN(n13) );
  NAND2_X1 U903 ( .A1(port_x1_2[0]), .A2(port_x3_0[0]), .ZN(n115) );
  NAND2_X1 U904 ( .A1(port_x1_2[1]), .A2(port_x3_0[1]), .ZN(n94) );
  NAND2_X1 U905 ( .A1(port_x1_2[2]), .A2(port_x3_0[2]), .ZN(n73) );
  NAND2_X1 U906 ( .A1(port_x3_3[0]), .A2(port_x2_0[0]), .ZN(n351) );
  NAND2_X1 U907 ( .A1(port_x3_3[1]), .A2(port_x2_0[1]), .ZN(n336) );
  NAND2_X1 U908 ( .A1(port_x3_3[2]), .A2(port_x2_0[2]), .ZN(n321) );
  NAND2_X1 U909 ( .A1(port_x1_3[0]), .A2(port_x3_0[0]), .ZN(n109) );
  NAND2_X1 U910 ( .A1(port_x1_3[1]), .A2(port_x3_0[1]), .ZN(n88) );
  NAND2_X1 U911 ( .A1(port_x1_3[2]), .A2(port_x3_0[2]), .ZN(n67) );
  NAND2_X1 U912 ( .A1(port_x2_2[0]), .A2(port_x3_2[0]), .ZN(n343) );
  NAND2_X1 U913 ( .A1(port_x2_2[1]), .A2(port_x3_2[1]), .ZN(n328) );
  NAND2_X1 U914 ( .A1(port_x2_2[2]), .A2(port_x3_2[2]), .ZN(n313) );
  NAND2_X1 U915 ( .A1(port_x3_3[0]), .A2(port_x1_0[0]), .ZN(n114) );
  NAND2_X1 U916 ( .A1(port_x3_3[1]), .A2(port_x1_0[1]), .ZN(n93) );
  NAND2_X1 U917 ( .A1(port_x3_3[2]), .A2(port_x1_0[2]), .ZN(n72) );
  NAND2_X1 U918 ( .A1(port_x2_3[0]), .A2(port_x3_0[0]), .ZN(n348) );
  NAND2_X1 U919 ( .A1(port_x2_3[1]), .A2(port_x3_0[1]), .ZN(n333) );
  NAND2_X1 U920 ( .A1(port_x2_3[2]), .A2(port_x3_0[2]), .ZN(n318) );
  NAND2_X1 U921 ( .A1(port_x1_3[0]), .A2(port_x3_3[0]), .ZN(n57) );
  NAND2_X1 U922 ( .A1(port_x1_3[1]), .A2(port_x3_3[1]), .ZN(n48) );
  NAND2_X1 U923 ( .A1(port_x1_3[2]), .A2(port_x3_3[2]), .ZN(n39) );
  NAND2_X1 U924 ( .A1(port_x3_2[0]), .A2(port_x1_2[0]), .ZN(n108) );
  NAND2_X1 U925 ( .A1(port_x3_2[1]), .A2(port_x1_2[1]), .ZN(n87) );
  NAND2_X1 U926 ( .A1(port_x3_2[2]), .A2(port_x1_2[2]), .ZN(n66) );
  NAND2_X1 U927 ( .A1(port_x2_3[0]), .A2(port_x3_3[0]), .ZN(n305) );
  NAND2_X1 U928 ( .A1(port_x2_3[1]), .A2(port_x3_3[1]), .ZN(n298) );
  NAND2_X1 U929 ( .A1(port_x2_3[2]), .A2(port_x3_3[2]), .ZN(n291) );
  NAND2_X1 U930 ( .A1(port_x2_2[0]), .A2(port_x3_0[0]), .ZN(n342) );
  NAND2_X1 U931 ( .A1(port_x2_2[1]), .A2(port_x3_0[1]), .ZN(n327) );
  NAND2_X1 U932 ( .A1(port_x2_2[2]), .A2(port_x3_0[2]), .ZN(n312) );
  OR2_X1 maj_48_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_48_n3) );
  NAND2_X1 maj_48_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_48_n1) );
  NAND2_X1 maj_48_U2 ( .A1(t0_0_2), .A2(maj_48_n3), .ZN(maj_48_n2) );
  NAND2_X1 maj_48_U1 ( .A1(maj_48_n1), .A2(maj_48_n2), .ZN(maj_48_port_o) );
  OR2_X1 maj_49_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_49_n4) );
  NAND2_X1 maj_49_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_49_n6) );
  NAND2_X1 maj_49_U2 ( .A1(t0_1_2), .A2(maj_49_n4), .ZN(maj_49_n5) );
  NAND2_X1 maj_49_U1 ( .A1(maj_49_n6), .A2(maj_49_n5), .ZN(maj_49_port_o) );
  OR2_X1 maj_50_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_50_n4) );
  NAND2_X1 maj_50_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_50_n6) );
  NAND2_X1 maj_50_U2 ( .A1(t0_2_2), .A2(maj_50_n4), .ZN(maj_50_n5) );
  NAND2_X1 maj_50_U1 ( .A1(maj_50_n6), .A2(maj_50_n5), .ZN(maj_50_port_o) );
  OR2_X1 maj_51_U4 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_51_n4) );
  NAND2_X1 maj_51_U3 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_51_n6) );
  NAND2_X1 maj_51_U2 ( .A1(t0_3_2), .A2(maj_51_n4), .ZN(maj_51_n5) );
  NAND2_X1 maj_51_U1 ( .A1(maj_51_n6), .A2(maj_51_n5), .ZN(maj_51_port_o) );
  OR2_X1 maj_52_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_52_n4) );
  NAND2_X1 maj_52_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_52_n6) );
  NAND2_X1 maj_52_U2 ( .A1(t0_0_2), .A2(maj_52_n4), .ZN(maj_52_n5) );
  NAND2_X1 maj_52_U1 ( .A1(maj_52_n6), .A2(maj_52_n5), .ZN(maj_52_port_o) );
  OR2_X1 maj_53_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_53_n4) );
  NAND2_X1 maj_53_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_53_n6) );
  NAND2_X1 maj_53_U2 ( .A1(t0_1_2), .A2(maj_53_n4), .ZN(maj_53_n5) );
  NAND2_X1 maj_53_U1 ( .A1(maj_53_n6), .A2(maj_53_n5), .ZN(maj_53_port_o) );
  OR2_X1 maj_54_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_54_n4) );
  NAND2_X1 maj_54_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_54_n6) );
  NAND2_X1 maj_54_U2 ( .A1(t0_2_2), .A2(maj_54_n4), .ZN(maj_54_n5) );
  NAND2_X1 maj_54_U1 ( .A1(maj_54_n6), .A2(maj_54_n5), .ZN(maj_54_port_o) );
  OR2_X1 maj_55_U4 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_55_n4) );
  NAND2_X1 maj_55_U3 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_55_n6) );
  NAND2_X1 maj_55_U2 ( .A1(t0_3_2), .A2(maj_55_n4), .ZN(maj_55_n5) );
  NAND2_X1 maj_55_U1 ( .A1(maj_55_n6), .A2(maj_55_n5), .ZN(maj_55_port_o) );
  OR2_X1 maj_56_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_56_n4) );
  NAND2_X1 maj_56_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_56_n6) );
  NAND2_X1 maj_56_U2 ( .A1(t0_0_2), .A2(maj_56_n4), .ZN(maj_56_n5) );
  NAND2_X1 maj_56_U1 ( .A1(maj_56_n6), .A2(maj_56_n5), .ZN(maj_56_port_o) );
  OR2_X1 maj_57_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_57_n4) );
  NAND2_X1 maj_57_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_57_n6) );
  NAND2_X1 maj_57_U2 ( .A1(t0_1_2), .A2(maj_57_n4), .ZN(maj_57_n5) );
  NAND2_X1 maj_57_U1 ( .A1(maj_57_n6), .A2(maj_57_n5), .ZN(maj_57_port_o) );
  OR2_X1 maj_58_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_58_n4) );
  NAND2_X1 maj_58_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_58_n6) );
  NAND2_X1 maj_58_U2 ( .A1(t0_2_2), .A2(maj_58_n4), .ZN(maj_58_n5) );
  NAND2_X1 maj_58_U1 ( .A1(maj_58_n6), .A2(maj_58_n5), .ZN(maj_58_port_o) );
  OR2_X1 maj_59_U4 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_59_n4) );
  NAND2_X1 maj_59_U3 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_59_n6) );
  NAND2_X1 maj_59_U2 ( .A1(t0_3_2), .A2(maj_59_n4), .ZN(maj_59_n5) );
  NAND2_X1 maj_59_U1 ( .A1(maj_59_n6), .A2(maj_59_n5), .ZN(maj_59_port_o) );
  OR2_X1 maj_60_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_60_n4) );
  NAND2_X1 maj_60_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_60_n6) );
  NAND2_X1 maj_60_U2 ( .A1(t1_0_2), .A2(maj_60_n4), .ZN(maj_60_n5) );
  NAND2_X1 maj_60_U1 ( .A1(maj_60_n6), .A2(maj_60_n5), .ZN(maj_60_port_o) );
  OR2_X1 maj_61_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_61_n4) );
  NAND2_X1 maj_61_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_61_n6) );
  NAND2_X1 maj_61_U2 ( .A1(t1_1_2), .A2(maj_61_n4), .ZN(maj_61_n5) );
  NAND2_X1 maj_61_U1 ( .A1(maj_61_n6), .A2(maj_61_n5), .ZN(maj_61_port_o) );
  OR2_X1 maj_62_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_62_n4) );
  NAND2_X1 maj_62_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_62_n6) );
  NAND2_X1 maj_62_U2 ( .A1(t1_2_2), .A2(maj_62_n4), .ZN(maj_62_n5) );
  NAND2_X1 maj_62_U1 ( .A1(maj_62_n6), .A2(maj_62_n5), .ZN(maj_62_port_o) );
  OR2_X1 maj_63_U4 ( .A1(t1_3_1), .A2(t1_3_0), .ZN(maj_63_n4) );
  NAND2_X1 maj_63_U3 ( .A1(t1_3_1), .A2(t1_3_0), .ZN(maj_63_n6) );
  NAND2_X1 maj_63_U2 ( .A1(t1_3_2), .A2(maj_63_n4), .ZN(maj_63_n5) );
  NAND2_X1 maj_63_U1 ( .A1(maj_63_n6), .A2(maj_63_n5), .ZN(maj_63_port_o) );
  OR2_X1 maj_64_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_64_n4) );
  NAND2_X1 maj_64_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_64_n6) );
  NAND2_X1 maj_64_U2 ( .A1(t1_0_2), .A2(maj_64_n4), .ZN(maj_64_n5) );
  NAND2_X1 maj_64_U1 ( .A1(maj_64_n6), .A2(maj_64_n5), .ZN(maj_64_port_o) );
  OR2_X1 maj_65_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_65_n4) );
  NAND2_X1 maj_65_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_65_n6) );
  NAND2_X1 maj_65_U2 ( .A1(t1_1_2), .A2(maj_65_n4), .ZN(maj_65_n5) );
  NAND2_X1 maj_65_U1 ( .A1(maj_65_n6), .A2(maj_65_n5), .ZN(maj_65_port_o) );
  OR2_X1 maj_66_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_66_n4) );
  NAND2_X1 maj_66_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_66_n6) );
  NAND2_X1 maj_66_U2 ( .A1(t1_2_2), .A2(maj_66_n4), .ZN(maj_66_n5) );
  NAND2_X1 maj_66_U1 ( .A1(maj_66_n6), .A2(maj_66_n5), .ZN(maj_66_port_o) );
  OR2_X1 maj_67_U4 ( .A1(t1_3_1), .A2(t1_3_0), .ZN(maj_67_n4) );
  NAND2_X1 maj_67_U3 ( .A1(t1_3_1), .A2(t1_3_0), .ZN(maj_67_n6) );
  NAND2_X1 maj_67_U2 ( .A1(t1_3_2), .A2(maj_67_n4), .ZN(maj_67_n5) );
  NAND2_X1 maj_67_U1 ( .A1(maj_67_n6), .A2(maj_67_n5), .ZN(maj_67_port_o) );
  OR2_X1 maj_68_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_68_n4) );
  NAND2_X1 maj_68_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_68_n6) );
  NAND2_X1 maj_68_U2 ( .A1(t1_0_2), .A2(maj_68_n4), .ZN(maj_68_n5) );
  NAND2_X1 maj_68_U1 ( .A1(maj_68_n6), .A2(maj_68_n5), .ZN(maj_68_port_o) );
  OR2_X1 maj_69_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_69_n4) );
  NAND2_X1 maj_69_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_69_n6) );
  NAND2_X1 maj_69_U2 ( .A1(t1_1_2), .A2(maj_69_n4), .ZN(maj_69_n5) );
  NAND2_X1 maj_69_U1 ( .A1(maj_69_n6), .A2(maj_69_n5), .ZN(maj_69_port_o) );
  OR2_X1 maj_70_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_70_n4) );
  NAND2_X1 maj_70_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_70_n6) );
  NAND2_X1 maj_70_U2 ( .A1(t1_2_2), .A2(maj_70_n4), .ZN(maj_70_n5) );
  NAND2_X1 maj_70_U1 ( .A1(maj_70_n6), .A2(maj_70_n5), .ZN(maj_70_port_o) );
  OR2_X1 maj_71_U4 ( .A1(t1_3_1), .A2(t1_3_0), .ZN(maj_71_n4) );
  NAND2_X1 maj_71_U3 ( .A1(t1_3_1), .A2(t1_3_0), .ZN(maj_71_n6) );
  NAND2_X1 maj_71_U2 ( .A1(t1_3_2), .A2(maj_71_n4), .ZN(maj_71_n5) );
  NAND2_X1 maj_71_U1 ( .A1(maj_71_n6), .A2(maj_71_n5), .ZN(maj_71_port_o) );
  OR2_X1 maj_72_U4 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_72_n4) );
  NAND2_X1 maj_72_U3 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_72_n6) );
  NAND2_X1 maj_72_U2 ( .A1(t2_0_2), .A2(maj_72_n4), .ZN(maj_72_n5) );
  NAND2_X1 maj_72_U1 ( .A1(maj_72_n6), .A2(maj_72_n5), .ZN(maj_72_port_o) );
  OR2_X1 maj_73_U4 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_73_n4) );
  NAND2_X1 maj_73_U3 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_73_n6) );
  NAND2_X1 maj_73_U2 ( .A1(t2_1_2), .A2(maj_73_n4), .ZN(maj_73_n5) );
  NAND2_X1 maj_73_U1 ( .A1(maj_73_n6), .A2(maj_73_n5), .ZN(maj_73_port_o) );
  OR2_X1 maj_74_U4 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_74_n4) );
  NAND2_X1 maj_74_U3 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_74_n6) );
  NAND2_X1 maj_74_U2 ( .A1(t2_2_2), .A2(maj_74_n4), .ZN(maj_74_n5) );
  NAND2_X1 maj_74_U1 ( .A1(maj_74_n6), .A2(maj_74_n5), .ZN(maj_74_port_o) );
  OR2_X1 maj_75_U4 ( .A1(t2_3_1), .A2(t2_3_0), .ZN(maj_75_n4) );
  NAND2_X1 maj_75_U3 ( .A1(t2_3_1), .A2(t2_3_0), .ZN(maj_75_n6) );
  NAND2_X1 maj_75_U2 ( .A1(t2_3_2), .A2(maj_75_n4), .ZN(maj_75_n5) );
  NAND2_X1 maj_75_U1 ( .A1(maj_75_n6), .A2(maj_75_n5), .ZN(maj_75_port_o) );
  OR2_X1 maj_76_U4 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_76_n4) );
  NAND2_X1 maj_76_U3 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_76_n6) );
  NAND2_X1 maj_76_U2 ( .A1(t2_0_2), .A2(maj_76_n4), .ZN(maj_76_n5) );
  NAND2_X1 maj_76_U1 ( .A1(maj_76_n6), .A2(maj_76_n5), .ZN(maj_76_port_o) );
  OR2_X1 maj_77_U4 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_77_n4) );
  NAND2_X1 maj_77_U3 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_77_n6) );
  NAND2_X1 maj_77_U2 ( .A1(t2_1_2), .A2(maj_77_n4), .ZN(maj_77_n5) );
  NAND2_X1 maj_77_U1 ( .A1(maj_77_n6), .A2(maj_77_n5), .ZN(maj_77_port_o) );
  OR2_X1 maj_78_U4 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_78_n4) );
  NAND2_X1 maj_78_U3 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_78_n6) );
  NAND2_X1 maj_78_U2 ( .A1(t2_2_2), .A2(maj_78_n4), .ZN(maj_78_n5) );
  NAND2_X1 maj_78_U1 ( .A1(maj_78_n6), .A2(maj_78_n5), .ZN(maj_78_port_o) );
  OR2_X1 maj_79_U4 ( .A1(t2_3_1), .A2(t2_3_0), .ZN(maj_79_n4) );
  NAND2_X1 maj_79_U3 ( .A1(t2_3_1), .A2(t2_3_0), .ZN(maj_79_n6) );
  NAND2_X1 maj_79_U2 ( .A1(t2_3_2), .A2(maj_79_n4), .ZN(maj_79_n5) );
  NAND2_X1 maj_79_U1 ( .A1(maj_79_n6), .A2(maj_79_n5), .ZN(maj_79_port_o) );
  OR2_X1 maj_80_U4 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_80_n4) );
  NAND2_X1 maj_80_U3 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_80_n6) );
  NAND2_X1 maj_80_U2 ( .A1(t2_0_2), .A2(maj_80_n4), .ZN(maj_80_n5) );
  NAND2_X1 maj_80_U1 ( .A1(maj_80_n6), .A2(maj_80_n5), .ZN(maj_80_port_o) );
  OR2_X1 maj_81_U4 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_81_n4) );
  NAND2_X1 maj_81_U3 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_81_n6) );
  NAND2_X1 maj_81_U2 ( .A1(t2_1_2), .A2(maj_81_n4), .ZN(maj_81_n5) );
  NAND2_X1 maj_81_U1 ( .A1(maj_81_n6), .A2(maj_81_n5), .ZN(maj_81_port_o) );
  OR2_X1 maj_82_U4 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_82_n4) );
  NAND2_X1 maj_82_U3 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_82_n6) );
  NAND2_X1 maj_82_U2 ( .A1(t2_2_2), .A2(maj_82_n4), .ZN(maj_82_n5) );
  NAND2_X1 maj_82_U1 ( .A1(maj_82_n6), .A2(maj_82_n5), .ZN(maj_82_port_o) );
  OR2_X1 maj_83_U4 ( .A1(t2_3_1), .A2(t2_3_0), .ZN(maj_83_n4) );
  NAND2_X1 maj_83_U3 ( .A1(t2_3_1), .A2(t2_3_0), .ZN(maj_83_n6) );
  NAND2_X1 maj_83_U2 ( .A1(t2_3_2), .A2(maj_83_n4), .ZN(maj_83_n5) );
  NAND2_X1 maj_83_U1 ( .A1(maj_83_n6), .A2(maj_83_n5), .ZN(maj_83_port_o) );
  OR2_X1 maj_84_U4 ( .A1(t3_0_1), .A2(t3_0_0), .ZN(maj_84_n4) );
  NAND2_X1 maj_84_U3 ( .A1(t3_0_1), .A2(t3_0_0), .ZN(maj_84_n6) );
  NAND2_X1 maj_84_U2 ( .A1(t3_0_2), .A2(maj_84_n4), .ZN(maj_84_n5) );
  NAND2_X1 maj_84_U1 ( .A1(maj_84_n6), .A2(maj_84_n5), .ZN(maj_84_port_o) );
  OR2_X1 maj_85_U4 ( .A1(t3_1_1), .A2(t3_1_0), .ZN(maj_85_n4) );
  NAND2_X1 maj_85_U3 ( .A1(t3_1_1), .A2(t3_1_0), .ZN(maj_85_n6) );
  NAND2_X1 maj_85_U2 ( .A1(t3_1_2), .A2(maj_85_n4), .ZN(maj_85_n5) );
  NAND2_X1 maj_85_U1 ( .A1(maj_85_n6), .A2(maj_85_n5), .ZN(maj_85_port_o) );
  OR2_X1 maj_86_U4 ( .A1(t3_2_1), .A2(t3_2_0), .ZN(maj_86_n4) );
  NAND2_X1 maj_86_U3 ( .A1(t3_2_1), .A2(t3_2_0), .ZN(maj_86_n6) );
  NAND2_X1 maj_86_U2 ( .A1(t3_2_2), .A2(maj_86_n4), .ZN(maj_86_n5) );
  NAND2_X1 maj_86_U1 ( .A1(maj_86_n6), .A2(maj_86_n5), .ZN(maj_86_port_o) );
  OR2_X1 maj_87_U4 ( .A1(t3_3_1), .A2(t3_3_0), .ZN(maj_87_n4) );
  NAND2_X1 maj_87_U3 ( .A1(t3_3_1), .A2(t3_3_0), .ZN(maj_87_n6) );
  NAND2_X1 maj_87_U2 ( .A1(t3_3_2), .A2(maj_87_n4), .ZN(maj_87_n5) );
  NAND2_X1 maj_87_U1 ( .A1(maj_87_n6), .A2(maj_87_n5), .ZN(maj_87_port_o) );
  OR2_X1 maj_88_U4 ( .A1(t3_0_1), .A2(t3_0_0), .ZN(maj_88_n4) );
  NAND2_X1 maj_88_U3 ( .A1(t3_0_1), .A2(t3_0_0), .ZN(maj_88_n6) );
  NAND2_X1 maj_88_U2 ( .A1(t3_0_2), .A2(maj_88_n4), .ZN(maj_88_n5) );
  NAND2_X1 maj_88_U1 ( .A1(maj_88_n6), .A2(maj_88_n5), .ZN(maj_88_port_o) );
  OR2_X1 maj_89_U4 ( .A1(t3_1_1), .A2(t3_1_0), .ZN(maj_89_n4) );
  NAND2_X1 maj_89_U3 ( .A1(t3_1_1), .A2(t3_1_0), .ZN(maj_89_n6) );
  NAND2_X1 maj_89_U2 ( .A1(t3_1_2), .A2(maj_89_n4), .ZN(maj_89_n5) );
  NAND2_X1 maj_89_U1 ( .A1(maj_89_n6), .A2(maj_89_n5), .ZN(maj_89_port_o) );
  OR2_X1 maj_90_U4 ( .A1(t3_2_1), .A2(t3_2_0), .ZN(maj_90_n4) );
  NAND2_X1 maj_90_U3 ( .A1(t3_2_1), .A2(t3_2_0), .ZN(maj_90_n6) );
  NAND2_X1 maj_90_U2 ( .A1(t3_2_2), .A2(maj_90_n4), .ZN(maj_90_n5) );
  NAND2_X1 maj_90_U1 ( .A1(maj_90_n6), .A2(maj_90_n5), .ZN(maj_90_port_o) );
  OR2_X1 maj_91_U4 ( .A1(t3_3_1), .A2(t3_3_0), .ZN(maj_91_n4) );
  NAND2_X1 maj_91_U3 ( .A1(t3_3_1), .A2(t3_3_0), .ZN(maj_91_n6) );
  NAND2_X1 maj_91_U2 ( .A1(t3_3_2), .A2(maj_91_n4), .ZN(maj_91_n5) );
  NAND2_X1 maj_91_U1 ( .A1(maj_91_n6), .A2(maj_91_n5), .ZN(maj_91_port_o) );
  OR2_X1 maj_92_U4 ( .A1(t3_0_1), .A2(t3_0_0), .ZN(maj_92_n4) );
  NAND2_X1 maj_92_U3 ( .A1(t3_0_1), .A2(t3_0_0), .ZN(maj_92_n6) );
  NAND2_X1 maj_92_U2 ( .A1(t3_0_2), .A2(maj_92_n4), .ZN(maj_92_n5) );
  NAND2_X1 maj_92_U1 ( .A1(maj_92_n6), .A2(maj_92_n5), .ZN(maj_92_port_o) );
  OR2_X1 maj_93_U4 ( .A1(t3_1_1), .A2(t3_1_0), .ZN(maj_93_n4) );
  NAND2_X1 maj_93_U3 ( .A1(t3_1_1), .A2(t3_1_0), .ZN(maj_93_n6) );
  NAND2_X1 maj_93_U2 ( .A1(t3_1_2), .A2(maj_93_n4), .ZN(maj_93_n5) );
  NAND2_X1 maj_93_U1 ( .A1(maj_93_n6), .A2(maj_93_n5), .ZN(maj_93_port_o) );
  OR2_X1 maj_94_U4 ( .A1(t3_2_1), .A2(t3_2_0), .ZN(maj_94_n4) );
  NAND2_X1 maj_94_U3 ( .A1(t3_2_1), .A2(t3_2_0), .ZN(maj_94_n6) );
  NAND2_X1 maj_94_U2 ( .A1(t3_2_2), .A2(maj_94_n4), .ZN(maj_94_n5) );
  NAND2_X1 maj_94_U1 ( .A1(maj_94_n6), .A2(maj_94_n5), .ZN(maj_94_port_o) );
  OR2_X1 maj_95_U4 ( .A1(t3_3_1), .A2(t3_3_0), .ZN(maj_95_n4) );
  NAND2_X1 maj_95_U3 ( .A1(t3_3_1), .A2(t3_3_0), .ZN(maj_95_n6) );
  NAND2_X1 maj_95_U2 ( .A1(t3_3_2), .A2(maj_95_n4), .ZN(maj_95_n5) );
  NAND2_X1 maj_95_U1 ( .A1(maj_95_n6), .A2(maj_95_n5), .ZN(maj_95_port_o) );
endmodule

