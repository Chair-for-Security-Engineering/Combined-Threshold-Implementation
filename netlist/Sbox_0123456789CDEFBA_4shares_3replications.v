/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:12:40 2023
/////////////////////////////////////////////////////////////


module Sbox_0123456789CDEFBA_4shares_3replications ( port_x0_0, port_x0_1, 
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
  wire   t0_0_0, t0_0_1, t0_0_2, maj_36_port_o, t0_1_0, t0_1_1, t0_1_2,
         maj_37_port_o, t0_2_0, t0_2_1, t0_2_2, maj_38_port_o, t0_3_0, t0_3_1,
         t0_3_2, maj_39_port_o, maj_40_port_o, maj_41_port_o, maj_42_port_o,
         maj_43_port_o, maj_44_port_o, maj_45_port_o, maj_46_port_o,
         maj_47_port_o, t1_0_0, t1_0_1, t1_0_2, maj_48_port_o, t1_1_0, t1_1_1,
         t1_1_2, maj_49_port_o, t1_2_0, t1_2_1, t1_2_2, maj_50_port_o, t1_3_0,
         t1_3_1, t1_3_2, maj_51_port_o, maj_52_port_o, maj_53_port_o,
         maj_54_port_o, maj_55_port_o, maj_56_port_o, maj_57_port_o,
         maj_58_port_o, maj_59_port_o, t2_0_0, t2_0_1, t2_0_2, maj_60_port_o,
         t2_1_0, t2_1_1, t2_1_2, maj_61_port_o, t2_2_0, t2_2_1, t2_2_2,
         maj_62_port_o, t2_3_0, t2_3_1, t2_3_2, maj_63_port_o, maj_64_port_o,
         maj_65_port_o, maj_66_port_o, maj_67_port_o, maj_68_port_o,
         maj_69_port_o, maj_70_port_o, maj_71_port_o, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n241,
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
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, maj_36_n3, maj_36_n2, maj_36_n1, maj_37_n6, maj_37_n5,
         maj_37_n4, maj_38_n6, maj_38_n5, maj_38_n4, maj_39_n6, maj_39_n5,
         maj_39_n4, maj_40_n6, maj_40_n5, maj_40_n4, maj_41_n6, maj_41_n5,
         maj_41_n4, maj_42_n6, maj_42_n5, maj_42_n4, maj_43_n6, maj_43_n5,
         maj_43_n4, maj_44_n6, maj_44_n5, maj_44_n4, maj_45_n6, maj_45_n5,
         maj_45_n4, maj_46_n6, maj_46_n5, maj_46_n4, maj_47_n6, maj_47_n5,
         maj_47_n4, maj_48_n6, maj_48_n5, maj_48_n4, maj_49_n6, maj_49_n5,
         maj_49_n4, maj_50_n6, maj_50_n5, maj_50_n4, maj_51_n6, maj_51_n5,
         maj_51_n4, maj_52_n6, maj_52_n5, maj_52_n4, maj_53_n6, maj_53_n5,
         maj_53_n4, maj_54_n6, maj_54_n5, maj_54_n4, maj_55_n6, maj_55_n5,
         maj_55_n4, maj_56_n6, maj_56_n5, maj_56_n4, maj_57_n6, maj_57_n5,
         maj_57_n4, maj_58_n6, maj_58_n5, maj_58_n4, maj_59_n6, maj_59_n5,
         maj_59_n4, maj_60_n6, maj_60_n5, maj_60_n4, maj_61_n6, maj_61_n5,
         maj_61_n4, maj_62_n6, maj_62_n5, maj_62_n4, maj_63_n6, maj_63_n5,
         maj_63_n4, maj_64_n6, maj_64_n5, maj_64_n4, maj_65_n6, maj_65_n5,
         maj_65_n4, maj_66_n6, maj_66_n5, maj_66_n4, maj_67_n6, maj_67_n5,
         maj_67_n4, maj_68_n6, maj_68_n5, maj_68_n4, maj_69_n6, maj_69_n5,
         maj_69_n4, maj_70_n6, maj_70_n5, maj_70_n4, maj_71_n6, maj_71_n5,
         maj_71_n4;

  DFF_X1 reg_y0_0_reg_2_ ( .D(maj_44_port_o), .CK(clk), .Q(port_y0_0[2]), 
        .QN() );
  DFF_X1 reg_y0_0_reg_1_ ( .D(maj_40_port_o), .CK(clk), .Q(port_y0_0[1]), 
        .QN() );
  DFF_X1 reg_y0_0_reg_0_ ( .D(maj_36_port_o), .CK(clk), .Q(port_y0_0[0]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_2_ ( .D(maj_45_port_o), .CK(clk), .Q(port_y0_1[2]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_1_ ( .D(maj_41_port_o), .CK(clk), .Q(port_y0_1[1]), 
        .QN() );
  DFF_X1 reg_y0_1_reg_0_ ( .D(maj_37_port_o), .CK(clk), .Q(port_y0_1[0]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_2_ ( .D(maj_46_port_o), .CK(clk), .Q(port_y0_2[2]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_1_ ( .D(maj_42_port_o), .CK(clk), .Q(port_y0_2[1]), 
        .QN() );
  DFF_X1 reg_y0_2_reg_0_ ( .D(maj_38_port_o), .CK(clk), .Q(port_y0_2[0]), 
        .QN() );
  DFF_X1 reg_y0_3_reg_2_ ( .D(maj_47_port_o), .CK(clk), .Q(port_y0_3[2]), 
        .QN() );
  DFF_X1 reg_y0_3_reg_1_ ( .D(maj_43_port_o), .CK(clk), .Q(port_y0_3[1]), 
        .QN() );
  DFF_X1 reg_y0_3_reg_0_ ( .D(maj_39_port_o), .CK(clk), .Q(port_y0_3[0]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_2_ ( .D(maj_56_port_o), .CK(clk), .Q(port_y1_0[2]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_1_ ( .D(maj_52_port_o), .CK(clk), .Q(port_y1_0[1]), 
        .QN() );
  DFF_X1 reg_y1_0_reg_0_ ( .D(maj_48_port_o), .CK(clk), .Q(port_y1_0[0]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_2_ ( .D(maj_57_port_o), .CK(clk), .Q(port_y1_1[2]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_1_ ( .D(maj_53_port_o), .CK(clk), .Q(port_y1_1[1]), 
        .QN() );
  DFF_X1 reg_y1_1_reg_0_ ( .D(maj_49_port_o), .CK(clk), .Q(port_y1_1[0]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_2_ ( .D(maj_58_port_o), .CK(clk), .Q(port_y1_2[2]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_1_ ( .D(maj_54_port_o), .CK(clk), .Q(port_y1_2[1]), 
        .QN() );
  DFF_X1 reg_y1_2_reg_0_ ( .D(maj_50_port_o), .CK(clk), .Q(port_y1_2[0]), 
        .QN() );
  DFF_X1 reg_y1_3_reg_2_ ( .D(maj_59_port_o), .CK(clk), .Q(port_y1_3[2]), 
        .QN() );
  DFF_X1 reg_y1_3_reg_1_ ( .D(maj_55_port_o), .CK(clk), .Q(port_y1_3[1]), 
        .QN() );
  DFF_X1 reg_y1_3_reg_0_ ( .D(maj_51_port_o), .CK(clk), .Q(port_y1_3[0]), 
        .QN() );
  DFF_X1 reg_y2_0_reg_2_ ( .D(maj_68_port_o), .CK(clk), .Q(port_y2_0[2]), 
        .QN() );
  DFF_X1 reg_y2_0_reg_1_ ( .D(maj_64_port_o), .CK(clk), .Q(port_y2_0[1]), 
        .QN() );
  DFF_X1 reg_y2_0_reg_0_ ( .D(maj_60_port_o), .CK(clk), .Q(port_y2_0[0]), 
        .QN() );
  DFF_X1 reg_y2_1_reg_2_ ( .D(maj_69_port_o), .CK(clk), .Q(port_y2_1[2]), 
        .QN() );
  DFF_X1 reg_y2_1_reg_1_ ( .D(maj_65_port_o), .CK(clk), .Q(port_y2_1[1]), 
        .QN() );
  DFF_X1 reg_y2_1_reg_0_ ( .D(maj_61_port_o), .CK(clk), .Q(port_y2_1[0]), 
        .QN() );
  DFF_X1 reg_y2_2_reg_2_ ( .D(maj_70_port_o), .CK(clk), .Q(port_y2_2[2]), 
        .QN() );
  DFF_X1 reg_y2_2_reg_1_ ( .D(maj_66_port_o), .CK(clk), .Q(port_y2_2[1]), 
        .QN() );
  DFF_X1 reg_y2_2_reg_0_ ( .D(maj_62_port_o), .CK(clk), .Q(port_y2_2[0]), 
        .QN() );
  DFF_X1 reg_y2_3_reg_2_ ( .D(maj_71_port_o), .CK(clk), .Q(port_y2_3[2]), 
        .QN() );
  DFF_X1 reg_y2_3_reg_1_ ( .D(maj_67_port_o), .CK(clk), .Q(port_y2_3[1]), 
        .QN() );
  DFF_X1 reg_y2_3_reg_0_ ( .D(maj_63_port_o), .CK(clk), .Q(port_y2_3[0]), 
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
  INV_X1 U663 ( .A(port_x2_3[0]), .ZN(n27) );
  INV_X1 U664 ( .A(port_x2_3[1]), .ZN(n26) );
  INV_X1 U665 ( .A(port_x2_2[2]), .ZN(n22) );
  INV_X1 U666 ( .A(port_x2_3[2]), .ZN(n25) );
  INV_X1 U667 ( .A(port_x2_2[0]), .ZN(n24) );
  INV_X1 U668 ( .A(port_x2_2[1]), .ZN(n23) );
  XNOR2_X1 U669 ( .A(port_x2_0[0]), .B(n36), .ZN(t2_3_0) );
  XOR2_X1 U670 ( .A(n43), .B(n44), .Z(t2_2_0) );
  XOR2_X1 U671 ( .A(n62), .B(n63), .Z(t2_1_0) );
  XOR2_X1 U672 ( .A(n54), .B(n55), .Z(t2_1_1) );
  XOR2_X1 U673 ( .A(n92), .B(n93), .Z(t2_0_0) );
  XOR2_X1 U674 ( .A(n81), .B(n82), .Z(t2_0_1) );
  XOR2_X1 U675 ( .A(n125), .B(n126), .Z(t1_2_0) );
  XOR2_X1 U676 ( .A(n117), .B(n118), .Z(t1_2_1) );
  XOR2_X1 U677 ( .A(n161), .B(n162), .Z(t1_1_0) );
  XOR2_X1 U678 ( .A(n147), .B(n148), .Z(t1_1_1) );
  XOR2_X1 U679 ( .A(n219), .B(n220), .Z(t1_0_0) );
  XOR2_X1 U680 ( .A(n197), .B(n198), .Z(t1_0_1) );
  XOR2_X1 U681 ( .A(n305), .B(n306), .Z(t0_3_0) );
  XOR2_X1 U682 ( .A(n273), .B(n274), .Z(t0_3_1) );
  XOR2_X1 U683 ( .A(n403), .B(n404), .Z(t0_2_0) );
  XOR2_X1 U684 ( .A(n370), .B(n371), .Z(t0_2_1) );
  XOR2_X1 U685 ( .A(n500), .B(n501), .Z(t0_1_0) );
  XOR2_X1 U686 ( .A(n468), .B(n469), .Z(t0_1_1) );
  XOR2_X1 U687 ( .A(n594), .B(n595), .Z(t0_0_0) );
  XOR2_X1 U688 ( .A(n563), .B(n564), .Z(t0_0_1) );
  XNOR2_X1 U689 ( .A(n13), .B(n64), .ZN(n63) );
  XNOR2_X1 U690 ( .A(n67), .B(n68), .ZN(n62) );
  XOR2_X1 U691 ( .A(n65), .B(n66), .Z(n64) );
  XOR2_X1 U692 ( .A(n225), .B(n226), .Z(n219) );
  XOR2_X1 U693 ( .A(n221), .B(n222), .Z(n220) );
  XOR2_X1 U694 ( .A(n229), .B(n230), .Z(n225) );
  XOR2_X1 U695 ( .A(n309), .B(n310), .Z(n305) );
  XOR2_X1 U696 ( .A(n307), .B(n308), .Z(n306) );
  XOR2_X1 U697 ( .A(n317), .B(n318), .Z(n309) );
  XOR2_X1 U698 ( .A(n408), .B(n409), .Z(n403) );
  XOR2_X1 U699 ( .A(n405), .B(n406), .Z(n404) );
  XOR2_X1 U700 ( .A(n416), .B(n417), .Z(n408) );
  XOR2_X1 U701 ( .A(n505), .B(n506), .Z(n500) );
  XOR2_X1 U702 ( .A(n502), .B(n503), .Z(n501) );
  XOR2_X1 U703 ( .A(n513), .B(n514), .Z(n505) );
  XOR2_X1 U704 ( .A(n598), .B(n599), .Z(n594) );
  XOR2_X1 U705 ( .A(n596), .B(n597), .Z(n595) );
  XOR2_X1 U706 ( .A(n606), .B(n607), .Z(n598) );
  XNOR2_X1 U707 ( .A(n10), .B(n56), .ZN(n55) );
  XNOR2_X1 U708 ( .A(n59), .B(n60), .ZN(n54) );
  XOR2_X1 U709 ( .A(n57), .B(n58), .Z(n56) );
  XOR2_X1 U710 ( .A(n203), .B(n204), .Z(n197) );
  XOR2_X1 U711 ( .A(n199), .B(n200), .Z(n198) );
  XOR2_X1 U712 ( .A(n207), .B(n208), .Z(n203) );
  XOR2_X1 U713 ( .A(n277), .B(n278), .Z(n273) );
  XOR2_X1 U714 ( .A(n275), .B(n276), .Z(n274) );
  XOR2_X1 U715 ( .A(n285), .B(n286), .Z(n277) );
  XOR2_X1 U716 ( .A(n375), .B(n376), .Z(n370) );
  XOR2_X1 U717 ( .A(n372), .B(n373), .Z(n371) );
  XOR2_X1 U718 ( .A(n383), .B(n384), .Z(n375) );
  XOR2_X1 U719 ( .A(n473), .B(n474), .Z(n468) );
  XOR2_X1 U720 ( .A(n470), .B(n471), .Z(n469) );
  XOR2_X1 U721 ( .A(n481), .B(n482), .Z(n473) );
  XOR2_X1 U722 ( .A(n567), .B(n568), .Z(n563) );
  XOR2_X1 U723 ( .A(n565), .B(n566), .Z(n564) );
  XOR2_X1 U724 ( .A(n575), .B(n576), .Z(n567) );
  XOR2_X1 U725 ( .A(n46), .B(n47), .Z(t2_1_2) );
  XNOR2_X1 U726 ( .A(n7), .B(n48), .ZN(n47) );
  XNOR2_X1 U727 ( .A(n51), .B(n52), .ZN(n46) );
  XOR2_X1 U728 ( .A(n49), .B(n50), .Z(n48) );
  XOR2_X1 U729 ( .A(n175), .B(n176), .Z(t1_0_2) );
  XOR2_X1 U730 ( .A(n181), .B(n182), .Z(n175) );
  XOR2_X1 U731 ( .A(n177), .B(n178), .Z(n176) );
  XOR2_X1 U732 ( .A(n185), .B(n186), .Z(n181) );
  XOR2_X1 U733 ( .A(n241), .B(n242), .Z(t0_3_2) );
  XOR2_X1 U734 ( .A(n245), .B(n246), .Z(n241) );
  XOR2_X1 U735 ( .A(n243), .B(n244), .Z(n242) );
  XOR2_X1 U736 ( .A(n253), .B(n254), .Z(n245) );
  XOR2_X1 U737 ( .A(n337), .B(n338), .Z(t0_2_2) );
  XOR2_X1 U738 ( .A(n342), .B(n343), .Z(n337) );
  XOR2_X1 U739 ( .A(n339), .B(n340), .Z(n338) );
  XOR2_X1 U740 ( .A(n350), .B(n351), .Z(n342) );
  XOR2_X1 U741 ( .A(n436), .B(n437), .Z(t0_1_2) );
  XOR2_X1 U742 ( .A(n441), .B(n442), .Z(n436) );
  XOR2_X1 U743 ( .A(n438), .B(n439), .Z(n437) );
  XOR2_X1 U744 ( .A(n449), .B(n450), .Z(n441) );
  XOR2_X1 U745 ( .A(n532), .B(n533), .Z(t0_0_2) );
  XOR2_X1 U746 ( .A(n536), .B(n537), .Z(n532) );
  XOR2_X1 U747 ( .A(n534), .B(n535), .Z(n533) );
  XOR2_X1 U748 ( .A(n544), .B(n545), .Z(n536) );
  XNOR2_X1 U749 ( .A(n132), .B(n15), .ZN(n44) );
  XNOR2_X1 U750 ( .A(n124), .B(n12), .ZN(n41) );
  XNOR2_X1 U751 ( .A(n116), .B(n9), .ZN(n38) );
  XNOR2_X1 U752 ( .A(n69), .B(n24), .ZN(n67) );
  XNOR2_X1 U753 ( .A(n61), .B(n23), .ZN(n59) );
  XNOR2_X1 U754 ( .A(n53), .B(n22), .ZN(n51) );
  XOR2_X1 U755 ( .A(n100), .B(n101), .Z(n99) );
  XOR2_X1 U756 ( .A(n89), .B(n90), .Z(n88) );
  XOR2_X1 U757 ( .A(n78), .B(n79), .Z(n77) );
  XOR2_X1 U758 ( .A(n68), .B(n65), .Z(n172) );
  XOR2_X1 U759 ( .A(n60), .B(n57), .Z(n158) );
  XOR2_X1 U760 ( .A(n52), .B(n49), .Z(n144) );
  XOR2_X1 U761 ( .A(n433), .B(n434), .Z(n432) );
  NOR2_X1 U762 ( .A1(n36), .A2(n21), .ZN(n433) );
  NOR2_X1 U763 ( .A1(n45), .A2(n21), .ZN(n434) );
  XOR2_X1 U764 ( .A(n400), .B(n401), .Z(n399) );
  NOR2_X1 U765 ( .A1(n35), .A2(n20), .ZN(n400) );
  NOR2_X1 U766 ( .A1(n42), .A2(n20), .ZN(n401) );
  XOR2_X1 U767 ( .A(n367), .B(n368), .Z(n366) );
  NOR2_X1 U768 ( .A1(n34), .A2(n19), .ZN(n367) );
  NOR2_X1 U769 ( .A1(n39), .A2(n19), .ZN(n368) );
  XOR2_X1 U770 ( .A(n334), .B(n335), .Z(n333) );
  NOR2_X1 U771 ( .A1(n69), .A2(n21), .ZN(n335) );
  NOR2_X1 U772 ( .A1(n18), .A2(n69), .ZN(n334) );
  XOR2_X1 U773 ( .A(n302), .B(n303), .Z(n301) );
  NOR2_X1 U774 ( .A1(n61), .A2(n20), .ZN(n303) );
  NOR2_X1 U775 ( .A1(n17), .A2(n61), .ZN(n302) );
  XOR2_X1 U776 ( .A(n270), .B(n271), .Z(n269) );
  NOR2_X1 U777 ( .A1(n53), .A2(n19), .ZN(n271) );
  NOR2_X1 U778 ( .A1(n16), .A2(n53), .ZN(n270) );
  XOR2_X1 U779 ( .A(n319), .B(n320), .Z(n318) );
  NOR2_X1 U780 ( .A1(n65), .A2(n21), .ZN(n320) );
  NOR2_X1 U781 ( .A1(n18), .A2(n321), .ZN(n319) );
  XOR2_X1 U782 ( .A(n287), .B(n288), .Z(n286) );
  NOR2_X1 U783 ( .A1(n57), .A2(n20), .ZN(n288) );
  NOR2_X1 U784 ( .A1(n17), .A2(n289), .ZN(n287) );
  XOR2_X1 U785 ( .A(n255), .B(n256), .Z(n254) );
  NOR2_X1 U786 ( .A1(n49), .A2(n19), .ZN(n256) );
  NOR2_X1 U787 ( .A1(n16), .A2(n257), .ZN(n255) );
  XOR2_X1 U788 ( .A(n418), .B(n419), .Z(n417) );
  NOR2_X1 U789 ( .A1(n27), .A2(n102), .ZN(n418) );
  NOR2_X1 U790 ( .A1(n18), .A2(n420), .ZN(n419) );
  XOR2_X1 U791 ( .A(n385), .B(n386), .Z(n384) );
  NOR2_X1 U792 ( .A1(n26), .A2(n91), .ZN(n385) );
  NOR2_X1 U793 ( .A1(n17), .A2(n387), .ZN(n386) );
  XOR2_X1 U794 ( .A(n352), .B(n353), .Z(n351) );
  NOR2_X1 U795 ( .A1(n25), .A2(n80), .ZN(n352) );
  NOR2_X1 U796 ( .A1(n16), .A2(n354), .ZN(n353) );
  XOR2_X1 U797 ( .A(n515), .B(n516), .Z(n514) );
  NOR2_X1 U798 ( .A1(n18), .A2(n504), .ZN(n515) );
  NOR2_X1 U799 ( .A1(n18), .A2(n96), .ZN(n516) );
  XOR2_X1 U800 ( .A(n483), .B(n484), .Z(n482) );
  NOR2_X1 U801 ( .A1(n17), .A2(n472), .ZN(n483) );
  NOR2_X1 U802 ( .A1(n17), .A2(n85), .ZN(n484) );
  XOR2_X1 U803 ( .A(n451), .B(n452), .Z(n450) );
  NOR2_X1 U804 ( .A1(n16), .A2(n440), .ZN(n451) );
  NOR2_X1 U805 ( .A1(n16), .A2(n74), .ZN(n452) );
  XOR2_X1 U806 ( .A(n529), .B(n530), .Z(n528) );
  NOR2_X1 U807 ( .A1(n24), .A2(n69), .ZN(n529) );
  NOR2_X1 U808 ( .A1(n24), .A2(n68), .ZN(n530) );
  XOR2_X1 U809 ( .A(n497), .B(n498), .Z(n496) );
  NOR2_X1 U810 ( .A1(n23), .A2(n61), .ZN(n497) );
  NOR2_X1 U811 ( .A1(n23), .A2(n60), .ZN(n498) );
  XOR2_X1 U812 ( .A(n465), .B(n466), .Z(n464) );
  NOR2_X1 U813 ( .A1(n22), .A2(n53), .ZN(n465) );
  NOR2_X1 U814 ( .A1(n22), .A2(n52), .ZN(n466) );
  XOR2_X1 U815 ( .A(n622), .B(n623), .Z(n621) );
  NOR2_X1 U816 ( .A1(n27), .A2(n100), .ZN(n623) );
  NOR2_X1 U817 ( .A1(n24), .A2(n101), .ZN(n622) );
  XOR2_X1 U818 ( .A(n591), .B(n592), .Z(n590) );
  NOR2_X1 U819 ( .A1(n26), .A2(n89), .ZN(n592) );
  NOR2_X1 U820 ( .A1(n23), .A2(n90), .ZN(n591) );
  XOR2_X1 U821 ( .A(n560), .B(n561), .Z(n559) );
  NOR2_X1 U822 ( .A1(n25), .A2(n78), .ZN(n561) );
  NOR2_X1 U823 ( .A1(n22), .A2(n79), .ZN(n560) );
  XOR2_X1 U824 ( .A(n231), .B(n232), .Z(n230) );
  XNOR2_X1 U825 ( .A(n101), .B(n6), .ZN(n231) );
  XNOR2_X1 U826 ( .A(n97), .B(n14), .ZN(n232) );
  XOR2_X1 U827 ( .A(n209), .B(n210), .Z(n208) );
  XNOR2_X1 U828 ( .A(n90), .B(n5), .ZN(n209) );
  XNOR2_X1 U829 ( .A(n86), .B(n11), .ZN(n210) );
  XOR2_X1 U830 ( .A(n187), .B(n188), .Z(n186) );
  XNOR2_X1 U831 ( .A(n79), .B(n4), .ZN(n187) );
  XNOR2_X1 U832 ( .A(n75), .B(n8), .ZN(n188) );
  XOR2_X1 U833 ( .A(n608), .B(n609), .Z(n607) );
  NOR2_X1 U834 ( .A1(n24), .A2(n420), .ZN(n608) );
  NOR2_X1 U835 ( .A1(n24), .A2(n96), .ZN(n609) );
  XOR2_X1 U836 ( .A(n577), .B(n578), .Z(n576) );
  NOR2_X1 U837 ( .A1(n23), .A2(n387), .ZN(n577) );
  NOR2_X1 U838 ( .A1(n23), .A2(n85), .ZN(n578) );
  XOR2_X1 U839 ( .A(n546), .B(n547), .Z(n545) );
  NOR2_X1 U840 ( .A1(n22), .A2(n354), .ZN(n546) );
  NOR2_X1 U841 ( .A1(n22), .A2(n74), .ZN(n547) );
  XOR2_X1 U842 ( .A(n326), .B(n327), .Z(n325) );
  XOR2_X1 U843 ( .A(n330), .B(n331), .Z(n326) );
  XOR2_X1 U844 ( .A(n328), .B(n329), .Z(n327) );
  NOR2_X1 U845 ( .A1(n36), .A2(n24), .ZN(n330) );
  XOR2_X1 U846 ( .A(n294), .B(n295), .Z(n293) );
  XOR2_X1 U847 ( .A(n298), .B(n299), .Z(n294) );
  XOR2_X1 U848 ( .A(n296), .B(n297), .Z(n295) );
  NOR2_X1 U849 ( .A1(n35), .A2(n23), .ZN(n298) );
  XOR2_X1 U850 ( .A(n262), .B(n263), .Z(n261) );
  XOR2_X1 U851 ( .A(n266), .B(n267), .Z(n262) );
  XOR2_X1 U852 ( .A(n264), .B(n265), .Z(n263) );
  NOR2_X1 U853 ( .A1(n34), .A2(n22), .ZN(n266) );
  XOR2_X1 U854 ( .A(n425), .B(n426), .Z(n424) );
  XOR2_X1 U855 ( .A(n429), .B(n430), .Z(n425) );
  XOR2_X1 U856 ( .A(n427), .B(n428), .Z(n426) );
  NOR2_X1 U857 ( .A1(n68), .A2(n21), .ZN(n429) );
  XOR2_X1 U858 ( .A(n392), .B(n393), .Z(n391) );
  XOR2_X1 U859 ( .A(n396), .B(n397), .Z(n392) );
  XOR2_X1 U860 ( .A(n394), .B(n395), .Z(n393) );
  NOR2_X1 U861 ( .A1(n60), .A2(n20), .ZN(n396) );
  XOR2_X1 U862 ( .A(n359), .B(n360), .Z(n358) );
  XOR2_X1 U863 ( .A(n363), .B(n364), .Z(n359) );
  XOR2_X1 U864 ( .A(n361), .B(n362), .Z(n360) );
  NOR2_X1 U865 ( .A1(n52), .A2(n19), .ZN(n363) );
  XOR2_X1 U866 ( .A(n521), .B(n522), .Z(n520) );
  XOR2_X1 U867 ( .A(n525), .B(n526), .Z(n521) );
  XOR2_X1 U868 ( .A(n523), .B(n524), .Z(n522) );
  NOR2_X1 U869 ( .A1(n36), .A2(n27), .ZN(n525) );
  XOR2_X1 U870 ( .A(n489), .B(n490), .Z(n488) );
  XOR2_X1 U871 ( .A(n493), .B(n494), .Z(n489) );
  XOR2_X1 U872 ( .A(n491), .B(n492), .Z(n490) );
  NOR2_X1 U873 ( .A1(n35), .A2(n26), .ZN(n493) );
  XOR2_X1 U874 ( .A(n457), .B(n458), .Z(n456) );
  XOR2_X1 U875 ( .A(n461), .B(n462), .Z(n457) );
  XOR2_X1 U876 ( .A(n459), .B(n460), .Z(n458) );
  NOR2_X1 U877 ( .A1(n34), .A2(n25), .ZN(n461) );
  XOR2_X1 U878 ( .A(n614), .B(n615), .Z(n613) );
  XOR2_X1 U879 ( .A(n618), .B(n619), .Z(n614) );
  XOR2_X1 U880 ( .A(n616), .B(n617), .Z(n615) );
  NOR2_X1 U881 ( .A1(n27), .A2(n101), .ZN(n618) );
  XOR2_X1 U882 ( .A(n583), .B(n584), .Z(n582) );
  XOR2_X1 U883 ( .A(n587), .B(n588), .Z(n583) );
  XOR2_X1 U884 ( .A(n585), .B(n586), .Z(n584) );
  NOR2_X1 U885 ( .A1(n26), .A2(n90), .ZN(n587) );
  XOR2_X1 U886 ( .A(n552), .B(n553), .Z(n551) );
  XOR2_X1 U887 ( .A(n556), .B(n557), .Z(n552) );
  XOR2_X1 U888 ( .A(n554), .B(n555), .Z(n553) );
  NOR2_X1 U889 ( .A1(n25), .A2(n79), .ZN(n556) );
  XOR2_X1 U890 ( .A(n311), .B(n312), .Z(n310) );
  XOR2_X1 U891 ( .A(n315), .B(n316), .Z(n311) );
  XOR2_X1 U892 ( .A(n313), .B(n314), .Z(n312) );
  NOR2_X1 U893 ( .A1(n132), .A2(n24), .ZN(n315) );
  XOR2_X1 U894 ( .A(n279), .B(n280), .Z(n278) );
  XOR2_X1 U895 ( .A(n283), .B(n284), .Z(n279) );
  XOR2_X1 U896 ( .A(n281), .B(n282), .Z(n280) );
  NOR2_X1 U897 ( .A1(n124), .A2(n23), .ZN(n283) );
  XOR2_X1 U898 ( .A(n247), .B(n248), .Z(n246) );
  XOR2_X1 U899 ( .A(n251), .B(n252), .Z(n247) );
  XOR2_X1 U900 ( .A(n249), .B(n250), .Z(n248) );
  NOR2_X1 U901 ( .A1(n116), .A2(n22), .ZN(n251) );
  XOR2_X1 U902 ( .A(n410), .B(n411), .Z(n409) );
  XOR2_X1 U903 ( .A(n414), .B(n415), .Z(n410) );
  XOR2_X1 U904 ( .A(n412), .B(n413), .Z(n411) );
  NOR2_X1 U905 ( .A1(n132), .A2(n21), .ZN(n415) );
  XOR2_X1 U906 ( .A(n377), .B(n378), .Z(n376) );
  XOR2_X1 U907 ( .A(n381), .B(n382), .Z(n377) );
  XOR2_X1 U908 ( .A(n379), .B(n380), .Z(n378) );
  NOR2_X1 U909 ( .A1(n124), .A2(n20), .ZN(n382) );
  XOR2_X1 U910 ( .A(n344), .B(n345), .Z(n343) );
  XOR2_X1 U911 ( .A(n348), .B(n349), .Z(n344) );
  XOR2_X1 U912 ( .A(n346), .B(n347), .Z(n345) );
  NOR2_X1 U913 ( .A1(n116), .A2(n19), .ZN(n349) );
  XOR2_X1 U914 ( .A(n507), .B(n508), .Z(n506) );
  XOR2_X1 U915 ( .A(n511), .B(n512), .Z(n507) );
  XOR2_X1 U916 ( .A(n509), .B(n510), .Z(n508) );
  NOR2_X1 U917 ( .A1(n18), .A2(n97), .ZN(n511) );
  XOR2_X1 U918 ( .A(n475), .B(n476), .Z(n474) );
  XOR2_X1 U919 ( .A(n479), .B(n480), .Z(n475) );
  XOR2_X1 U920 ( .A(n477), .B(n478), .Z(n476) );
  NOR2_X1 U921 ( .A1(n17), .A2(n86), .ZN(n479) );
  XOR2_X1 U922 ( .A(n443), .B(n444), .Z(n442) );
  XOR2_X1 U923 ( .A(n447), .B(n448), .Z(n443) );
  XOR2_X1 U924 ( .A(n445), .B(n446), .Z(n444) );
  NOR2_X1 U925 ( .A1(n16), .A2(n75), .ZN(n447) );
  XOR2_X1 U926 ( .A(n600), .B(n601), .Z(n599) );
  XOR2_X1 U927 ( .A(n604), .B(n605), .Z(n600) );
  XOR2_X1 U928 ( .A(n602), .B(n603), .Z(n601) );
  NOR2_X1 U929 ( .A1(n27), .A2(n66), .ZN(n604) );
  XOR2_X1 U930 ( .A(n569), .B(n570), .Z(n568) );
  XOR2_X1 U931 ( .A(n573), .B(n574), .Z(n569) );
  XOR2_X1 U932 ( .A(n571), .B(n572), .Z(n570) );
  NOR2_X1 U933 ( .A1(n26), .A2(n58), .ZN(n573) );
  XOR2_X1 U934 ( .A(n538), .B(n539), .Z(n537) );
  XOR2_X1 U935 ( .A(n542), .B(n543), .Z(n538) );
  XOR2_X1 U936 ( .A(n540), .B(n541), .Z(n539) );
  NOR2_X1 U937 ( .A1(n25), .A2(n50), .ZN(n542) );
  NOR2_X1 U938 ( .A1(n24), .A2(n102), .ZN(n316) );
  NOR2_X1 U939 ( .A1(n23), .A2(n91), .ZN(n284) );
  NOR2_X1 U940 ( .A1(n22), .A2(n80), .ZN(n252) );
  NOR2_X1 U941 ( .A1(n24), .A2(n65), .ZN(n512) );
  NOR2_X1 U942 ( .A1(n23), .A2(n57), .ZN(n480) );
  NOR2_X1 U943 ( .A1(n22), .A2(n49), .ZN(n448) );
  NOR2_X1 U944 ( .A1(n24), .A2(n504), .ZN(n503) );
  NOR2_X1 U945 ( .A1(n23), .A2(n472), .ZN(n471) );
  NOR2_X1 U946 ( .A1(n22), .A2(n440), .ZN(n439) );
  NOR2_X1 U947 ( .A1(n45), .A2(n24), .ZN(n331) );
  NOR2_X1 U948 ( .A1(n42), .A2(n23), .ZN(n299) );
  NOR2_X1 U949 ( .A1(n39), .A2(n22), .ZN(n267) );
  NOR2_X1 U950 ( .A1(n30), .A2(n24), .ZN(n174) );
  NOR2_X1 U951 ( .A1(n29), .A2(n23), .ZN(n160) );
  NOR2_X1 U952 ( .A1(n28), .A2(n22), .ZN(n146) );
  XNOR2_X1 U953 ( .A(n14), .B(n96), .ZN(n95) );
  XNOR2_X1 U954 ( .A(n11), .B(n85), .ZN(n84) );
  XNOR2_X1 U955 ( .A(n8), .B(n74), .ZN(n73) );
  XOR2_X1 U956 ( .A(n233), .B(n234), .Z(n229) );
  XOR2_X1 U957 ( .A(n96), .B(n237), .Z(n233) );
  XOR2_X1 U958 ( .A(n235), .B(n236), .Z(n234) );
  NOR2_X1 U959 ( .A1(n238), .A2(n239), .ZN(n237) );
  XOR2_X1 U960 ( .A(n211), .B(n212), .Z(n207) );
  XOR2_X1 U961 ( .A(n85), .B(n215), .Z(n211) );
  XOR2_X1 U962 ( .A(n213), .B(n214), .Z(n212) );
  NOR2_X1 U963 ( .A1(n216), .A2(n217), .ZN(n215) );
  XOR2_X1 U964 ( .A(n189), .B(n190), .Z(n185) );
  XOR2_X1 U965 ( .A(n74), .B(n193), .Z(n189) );
  XOR2_X1 U966 ( .A(n191), .B(n192), .Z(n190) );
  NOR2_X1 U967 ( .A1(n194), .A2(n195), .ZN(n193) );
  INV_X1 U968 ( .A(n504), .ZN(n13) );
  INV_X1 U969 ( .A(n472), .ZN(n10) );
  INV_X1 U970 ( .A(n440), .ZN(n7) );
  XNOR2_X1 U971 ( .A(n66), .B(n13), .ZN(n167) );
  XNOR2_X1 U972 ( .A(n58), .B(n10), .ZN(n153) );
  XNOR2_X1 U973 ( .A(n50), .B(n7), .ZN(n139) );
  NOR2_X1 U974 ( .A1(n24), .A2(n97), .ZN(n616) );
  NOR2_X1 U975 ( .A1(n23), .A2(n86), .ZN(n585) );
  NOR2_X1 U976 ( .A1(n22), .A2(n75), .ZN(n554) );
  NOR2_X1 U977 ( .A1(n24), .A2(n100), .ZN(n313) );
  NOR2_X1 U978 ( .A1(n23), .A2(n89), .ZN(n281) );
  NOR2_X1 U979 ( .A1(n22), .A2(n78), .ZN(n249) );
  NOR2_X1 U980 ( .A1(n24), .A2(n66), .ZN(n509) );
  NOR2_X1 U981 ( .A1(n23), .A2(n58), .ZN(n477) );
  NOR2_X1 U982 ( .A1(n22), .A2(n50), .ZN(n445) );
  NOR2_X1 U983 ( .A1(n27), .A2(n45), .ZN(n430) );
  NOR2_X1 U984 ( .A1(n26), .A2(n42), .ZN(n397) );
  NOR2_X1 U985 ( .A1(n25), .A2(n39), .ZN(n364) );
  NOR2_X1 U986 ( .A1(n27), .A2(n69), .ZN(n526) );
  NOR2_X1 U987 ( .A1(n26), .A2(n61), .ZN(n494) );
  NOR2_X1 U988 ( .A1(n25), .A2(n53), .ZN(n462) );
  NOR2_X1 U989 ( .A1(n27), .A2(n321), .ZN(n617) );
  NOR2_X1 U990 ( .A1(n26), .A2(n289), .ZN(n586) );
  NOR2_X1 U991 ( .A1(n25), .A2(n257), .ZN(n555) );
  NOR2_X1 U992 ( .A1(n27), .A2(n132), .ZN(n413) );
  NOR2_X1 U993 ( .A1(n26), .A2(n124), .ZN(n380) );
  NOR2_X1 U994 ( .A1(n25), .A2(n116), .ZN(n347) );
  NOR2_X1 U995 ( .A1(n27), .A2(n65), .ZN(n510) );
  NOR2_X1 U996 ( .A1(n26), .A2(n57), .ZN(n478) );
  NOR2_X1 U997 ( .A1(n25), .A2(n49), .ZN(n446) );
  NOR2_X1 U998 ( .A1(n27), .A2(n97), .ZN(n605) );
  NOR2_X1 U999 ( .A1(n26), .A2(n86), .ZN(n574) );
  NOR2_X1 U1000 ( .A1(n25), .A2(n75), .ZN(n543) );
  NOR2_X1 U1001 ( .A1(n27), .A2(n407), .ZN(n406) );
  NOR2_X1 U1002 ( .A1(n26), .A2(n374), .ZN(n373) );
  NOR2_X1 U1003 ( .A1(n25), .A2(n341), .ZN(n340) );
  NOR2_X1 U1004 ( .A1(n27), .A2(n96), .ZN(n597) );
  NOR2_X1 U1005 ( .A1(n26), .A2(n85), .ZN(n566) );
  NOR2_X1 U1006 ( .A1(n25), .A2(n74), .ZN(n535) );
  INV_X1 U1007 ( .A(n321), .ZN(n6) );
  INV_X1 U1008 ( .A(n289), .ZN(n5) );
  INV_X1 U1009 ( .A(n257), .ZN(n4) );
  INV_X1 U1010 ( .A(n420), .ZN(n14) );
  INV_X1 U1011 ( .A(n387), .ZN(n11) );
  INV_X1 U1012 ( .A(n354), .ZN(n8) );
  NOR2_X1 U1013 ( .A1(n18), .A2(n102), .ZN(n428) );
  NOR2_X1 U1014 ( .A1(n17), .A2(n91), .ZN(n395) );
  NOR2_X1 U1015 ( .A1(n16), .A2(n80), .ZN(n362) );
  NOR2_X1 U1016 ( .A1(n18), .A2(n66), .ZN(n524) );
  NOR2_X1 U1017 ( .A1(n17), .A2(n58), .ZN(n492) );
  NOR2_X1 U1018 ( .A1(n16), .A2(n50), .ZN(n460) );
  NOR2_X1 U1019 ( .A1(n18), .A2(n65), .ZN(n314) );
  NOR2_X1 U1020 ( .A1(n17), .A2(n57), .ZN(n282) );
  NOR2_X1 U1021 ( .A1(n16), .A2(n49), .ZN(n250) );
  XNOR2_X1 U1022 ( .A(n6), .B(n97), .ZN(n94) );
  XNOR2_X1 U1023 ( .A(n5), .B(n86), .ZN(n83) );
  XNOR2_X1 U1024 ( .A(n4), .B(n75), .ZN(n72) );
  NOR2_X1 U1025 ( .A1(n21), .A2(n100), .ZN(n329) );
  NOR2_X1 U1026 ( .A1(n20), .A2(n89), .ZN(n297) );
  NOR2_X1 U1027 ( .A1(n19), .A2(n78), .ZN(n265) );
  NOR2_X1 U1028 ( .A1(n21), .A2(n97), .ZN(n619) );
  NOR2_X1 U1029 ( .A1(n20), .A2(n86), .ZN(n588) );
  NOR2_X1 U1030 ( .A1(n19), .A2(n75), .ZN(n557) );
  NOR2_X1 U1031 ( .A1(n30), .A2(n27), .ZN(n164) );
  NOR2_X1 U1032 ( .A1(n29), .A2(n26), .ZN(n150) );
  NOR2_X1 U1033 ( .A1(n28), .A2(n25), .ZN(n136) );
  NOR2_X1 U1034 ( .A1(n27), .A2(n68), .ZN(n523) );
  NOR2_X1 U1035 ( .A1(n26), .A2(n60), .ZN(n491) );
  NOR2_X1 U1036 ( .A1(n25), .A2(n52), .ZN(n459) );
  NOR2_X1 U1037 ( .A1(n18), .A2(n100), .ZN(n328) );
  NOR2_X1 U1038 ( .A1(n17), .A2(n89), .ZN(n296) );
  NOR2_X1 U1039 ( .A1(n16), .A2(n78), .ZN(n264) );
  NOR2_X1 U1040 ( .A1(n18), .A2(n132), .ZN(n427) );
  NOR2_X1 U1041 ( .A1(n17), .A2(n124), .ZN(n394) );
  NOR2_X1 U1042 ( .A1(n16), .A2(n116), .ZN(n361) );
  NOR2_X1 U1043 ( .A1(n18), .A2(n101), .ZN(n414) );
  NOR2_X1 U1044 ( .A1(n17), .A2(n90), .ZN(n381) );
  NOR2_X1 U1045 ( .A1(n16), .A2(n79), .ZN(n348) );
  NOR2_X1 U1046 ( .A1(n66), .A2(n21), .ZN(n308) );
  NOR2_X1 U1047 ( .A1(n58), .A2(n20), .ZN(n276) );
  NOR2_X1 U1048 ( .A1(n50), .A2(n19), .ZN(n244) );
  NOR2_X1 U1049 ( .A1(n21), .A2(n101), .ZN(n412) );
  NOR2_X1 U1050 ( .A1(n20), .A2(n90), .ZN(n379) );
  NOR2_X1 U1051 ( .A1(n19), .A2(n79), .ZN(n346) );
  NOR2_X1 U1052 ( .A1(n21), .A2(n96), .ZN(n602) );
  NOR2_X1 U1053 ( .A1(n20), .A2(n85), .ZN(n571) );
  NOR2_X1 U1054 ( .A1(n19), .A2(n74), .ZN(n540) );
  NOR2_X1 U1055 ( .A1(n407), .A2(n21), .ZN(n603) );
  NOR2_X1 U1056 ( .A1(n374), .A2(n20), .ZN(n572) );
  NOR2_X1 U1057 ( .A1(n341), .A2(n19), .ZN(n541) );
  INV_X1 U1058 ( .A(n407), .ZN(n15) );
  INV_X1 U1059 ( .A(n374), .ZN(n12) );
  INV_X1 U1060 ( .A(n341), .ZN(n9) );
  INV_X1 U1061 ( .A(port_x2_0[0]), .ZN(n18) );
  INV_X1 U1062 ( .A(port_x2_0[1]), .ZN(n17) );
  INV_X1 U1063 ( .A(port_x2_0[2]), .ZN(n16) );
  XNOR2_X1 U1064 ( .A(port_x2_3[0]), .B(n45), .ZN(n43) );
  XOR2_X1 U1065 ( .A(n98), .B(n99), .Z(n92) );
  XOR2_X1 U1066 ( .A(n94), .B(n95), .Z(n93) );
  XNOR2_X1 U1067 ( .A(port_x2_1[0]), .B(n102), .ZN(n98) );
  XOR2_X1 U1068 ( .A(n131), .B(n44), .Z(n125) );
  XOR2_X1 U1069 ( .A(n127), .B(n128), .Z(n126) );
  XOR2_X1 U1070 ( .A(n45), .B(port_x1_3[0]), .Z(n131) );
  XOR2_X1 U1071 ( .A(n173), .B(n174), .Z(n161) );
  XOR2_X1 U1072 ( .A(n163), .B(n164), .Z(n162) );
  NAND2_X1 U1073 ( .A1(port_x2_2[0]), .A2(port_x3_2[0]), .ZN(n173) );
  XNOR2_X1 U1074 ( .A(n625), .B(n41), .ZN(t2_2_1) );
  XOR2_X1 U1075 ( .A(port_x2_3[1]), .B(n42), .Z(n625) );
  XOR2_X1 U1076 ( .A(n87), .B(n88), .Z(n81) );
  XOR2_X1 U1077 ( .A(n83), .B(n84), .Z(n82) );
  XNOR2_X1 U1078 ( .A(port_x2_1[1]), .B(n91), .ZN(n87) );
  XOR2_X1 U1079 ( .A(n123), .B(n41), .Z(n117) );
  XOR2_X1 U1080 ( .A(n119), .B(n120), .Z(n118) );
  XOR2_X1 U1081 ( .A(n42), .B(port_x1_3[1]), .Z(n123) );
  XOR2_X1 U1082 ( .A(n159), .B(n160), .Z(n147) );
  XOR2_X1 U1083 ( .A(n149), .B(n150), .Z(n148) );
  NAND2_X1 U1084 ( .A1(port_x2_2[1]), .A2(port_x3_2[1]), .ZN(n159) );
  INV_X1 U1085 ( .A(port_x2_1[0]), .ZN(n21) );
  INV_X1 U1086 ( .A(port_x2_1[1]), .ZN(n20) );
  INV_X1 U1087 ( .A(port_x2_1[2]), .ZN(n19) );
  XNOR2_X1 U1088 ( .A(port_x2_0[1]), .B(n35), .ZN(t2_3_1) );
  XOR2_X1 U1089 ( .A(n37), .B(n38), .Z(t2_2_2) );
  XNOR2_X1 U1090 ( .A(port_x2_3[2]), .B(n39), .ZN(n37) );
  XOR2_X1 U1091 ( .A(n70), .B(n71), .Z(t2_0_2) );
  XOR2_X1 U1092 ( .A(n76), .B(n77), .Z(n70) );
  XOR2_X1 U1093 ( .A(n72), .B(n73), .Z(n71) );
  XNOR2_X1 U1094 ( .A(port_x2_1[2]), .B(n80), .ZN(n76) );
  XOR2_X1 U1095 ( .A(n109), .B(n110), .Z(t1_2_2) );
  XOR2_X1 U1096 ( .A(n115), .B(n38), .Z(n109) );
  XOR2_X1 U1097 ( .A(n111), .B(n112), .Z(n110) );
  XOR2_X1 U1098 ( .A(n39), .B(port_x1_3[2]), .Z(n115) );
  XOR2_X1 U1099 ( .A(n133), .B(n134), .Z(t1_1_2) );
  XOR2_X1 U1100 ( .A(n145), .B(n146), .Z(n133) );
  XOR2_X1 U1101 ( .A(n135), .B(n136), .Z(n134) );
  NAND2_X1 U1102 ( .A1(port_x2_2[2]), .A2(port_x3_2[2]), .ZN(n145) );
  NAND2_X1 U1103 ( .A1(port_x3_2[0]), .A2(port_x1_3[0]), .ZN(n96) );
  NAND2_X1 U1104 ( .A1(port_x3_2[1]), .A2(port_x1_3[1]), .ZN(n85) );
  NAND2_X1 U1105 ( .A1(port_x3_2[2]), .A2(port_x1_3[2]), .ZN(n74) );
  NAND2_X1 U1106 ( .A1(port_x1_2[0]), .A2(port_x3_0[0]), .ZN(n65) );
  NAND2_X1 U1107 ( .A1(port_x1_2[1]), .A2(port_x3_0[1]), .ZN(n57) );
  NAND2_X1 U1108 ( .A1(port_x1_2[2]), .A2(port_x3_0[2]), .ZN(n49) );
  NAND2_X1 U1109 ( .A1(port_x1_2[0]), .A2(port_x3_3[0]), .ZN(n97) );
  NAND2_X1 U1110 ( .A1(port_x1_2[1]), .A2(port_x3_3[1]), .ZN(n86) );
  NAND2_X1 U1111 ( .A1(port_x1_2[2]), .A2(port_x3_3[2]), .ZN(n75) );
  NAND2_X1 U1112 ( .A1(port_x1_2[0]), .A2(port_x3_2[0]), .ZN(n66) );
  NAND2_X1 U1113 ( .A1(port_x1_2[1]), .A2(port_x3_2[1]), .ZN(n58) );
  NAND2_X1 U1114 ( .A1(port_x1_2[2]), .A2(port_x3_2[2]), .ZN(n50) );
  NAND2_X1 U1115 ( .A1(port_x3_3[0]), .A2(port_x1_1[0]), .ZN(n101) );
  NAND2_X1 U1116 ( .A1(port_x3_3[1]), .A2(port_x1_1[1]), .ZN(n90) );
  NAND2_X1 U1117 ( .A1(port_x3_3[2]), .A2(port_x1_1[2]), .ZN(n79) );
  NAND2_X1 U1118 ( .A1(port_x3_1[0]), .A2(port_x1_0[0]), .ZN(n45) );
  NAND2_X1 U1119 ( .A1(port_x3_1[1]), .A2(port_x1_0[1]), .ZN(n42) );
  NAND2_X1 U1120 ( .A1(port_x3_1[2]), .A2(port_x1_0[2]), .ZN(n39) );
  NAND2_X1 U1121 ( .A1(port_x3_3[0]), .A2(port_x1_0[0]), .ZN(n68) );
  NAND2_X1 U1122 ( .A1(port_x3_3[1]), .A2(port_x1_0[1]), .ZN(n60) );
  NAND2_X1 U1123 ( .A1(port_x3_3[2]), .A2(port_x1_0[2]), .ZN(n52) );
  NAND2_X1 U1124 ( .A1(port_x3_2[0]), .A2(port_x1_0[0]), .ZN(n69) );
  NAND2_X1 U1125 ( .A1(port_x3_2[1]), .A2(port_x1_0[1]), .ZN(n61) );
  NAND2_X1 U1126 ( .A1(port_x3_2[2]), .A2(port_x1_0[2]), .ZN(n53) );
  NAND2_X1 U1127 ( .A1(port_x1_1[0]), .A2(port_x3_1[0]), .ZN(n102) );
  NAND2_X1 U1128 ( .A1(port_x1_1[1]), .A2(port_x3_1[1]), .ZN(n91) );
  NAND2_X1 U1129 ( .A1(port_x1_1[2]), .A2(port_x3_1[2]), .ZN(n80) );
  XNOR2_X1 U1130 ( .A(port_x2_0[2]), .B(n34), .ZN(t2_3_2) );
  NAND2_X1 U1131 ( .A1(n107), .A2(n108), .ZN(t1_3_0) );
  NAND2_X1 U1132 ( .A1(port_x2_0[0]), .A2(port_x3_0[0]), .ZN(n107) );
  NAND2_X1 U1133 ( .A1(port_x1_0[0]), .A2(n30), .ZN(n108) );
  NAND2_X1 U1134 ( .A1(n105), .A2(n106), .ZN(t1_3_1) );
  NAND2_X1 U1135 ( .A1(port_x2_0[1]), .A2(port_x3_0[1]), .ZN(n105) );
  NAND2_X1 U1136 ( .A1(port_x1_0[1]), .A2(n29), .ZN(n106) );
  NAND2_X1 U1137 ( .A1(port_x3_0[0]), .A2(port_x1_0[0]), .ZN(n36) );
  NAND2_X1 U1138 ( .A1(port_x3_0[1]), .A2(port_x1_0[1]), .ZN(n35) );
  NAND2_X1 U1139 ( .A1(port_x3_0[2]), .A2(port_x1_0[2]), .ZN(n34) );
  NAND2_X1 U1140 ( .A1(port_x3_2[0]), .A2(port_x1_1[0]), .ZN(n100) );
  NAND2_X1 U1141 ( .A1(port_x3_2[1]), .A2(port_x1_1[1]), .ZN(n89) );
  NAND2_X1 U1142 ( .A1(port_x3_2[2]), .A2(port_x1_1[2]), .ZN(n78) );
  NAND2_X1 U1143 ( .A1(port_x1_1[0]), .A2(port_x3_0[0]), .ZN(n132) );
  NAND2_X1 U1144 ( .A1(port_x1_1[1]), .A2(port_x3_0[1]), .ZN(n124) );
  NAND2_X1 U1145 ( .A1(port_x1_1[2]), .A2(port_x3_0[2]), .ZN(n116) );
  XOR2_X1 U1146 ( .A(n169), .B(n170), .Z(n168) );
  NAND2_X1 U1147 ( .A1(port_x3_2[0]), .A2(port_x2_0[0]), .ZN(n169) );
  NAND2_X1 U1148 ( .A1(port_x3_3[0]), .A2(port_x2_0[0]), .ZN(n170) );
  XOR2_X1 U1149 ( .A(n155), .B(n156), .Z(n154) );
  NAND2_X1 U1150 ( .A1(port_x3_2[1]), .A2(port_x2_0[1]), .ZN(n155) );
  NAND2_X1 U1151 ( .A1(port_x3_3[1]), .A2(port_x2_0[1]), .ZN(n156) );
  XOR2_X1 U1152 ( .A(n141), .B(n142), .Z(n140) );
  NAND2_X1 U1153 ( .A1(port_x3_2[2]), .A2(port_x2_0[2]), .ZN(n141) );
  NAND2_X1 U1154 ( .A1(port_x3_3[2]), .A2(port_x2_0[2]), .ZN(n142) );
  XOR2_X1 U1155 ( .A(n129), .B(n130), .Z(n128) );
  NAND2_X1 U1156 ( .A1(port_x3_1[0]), .A2(port_x2_0[0]), .ZN(n129) );
  NAND2_X1 U1157 ( .A1(port_x2_1[0]), .A2(port_x3_0[0]), .ZN(n130) );
  XOR2_X1 U1158 ( .A(n121), .B(n122), .Z(n120) );
  NAND2_X1 U1159 ( .A1(port_x3_1[1]), .A2(port_x2_0[1]), .ZN(n121) );
  NAND2_X1 U1160 ( .A1(port_x2_1[1]), .A2(port_x3_0[1]), .ZN(n122) );
  XOR2_X1 U1161 ( .A(n113), .B(n114), .Z(n112) );
  NAND2_X1 U1162 ( .A1(port_x3_1[2]), .A2(port_x2_0[2]), .ZN(n113) );
  NAND2_X1 U1163 ( .A1(port_x2_1[2]), .A2(port_x3_0[2]), .ZN(n114) );
  XOR2_X1 U1164 ( .A(n223), .B(n224), .Z(n222) );
  NAND2_X1 U1165 ( .A1(port_x2_1[0]), .A2(port_x3_3[0]), .ZN(n223) );
  NAND2_X1 U1166 ( .A1(port_x2_2[0]), .A2(port_x3_1[0]), .ZN(n224) );
  XOR2_X1 U1167 ( .A(n227), .B(n228), .Z(n226) );
  NAND2_X1 U1168 ( .A1(port_x2_3[0]), .A2(port_x3_1[0]), .ZN(n227) );
  NAND2_X1 U1169 ( .A1(port_x3_2[0]), .A2(port_x2_3[0]), .ZN(n228) );
  XOR2_X1 U1170 ( .A(n201), .B(n202), .Z(n200) );
  NAND2_X1 U1171 ( .A1(port_x2_1[1]), .A2(port_x3_3[1]), .ZN(n201) );
  NAND2_X1 U1172 ( .A1(port_x2_2[1]), .A2(port_x3_1[1]), .ZN(n202) );
  XOR2_X1 U1173 ( .A(n205), .B(n206), .Z(n204) );
  NAND2_X1 U1174 ( .A1(port_x2_3[1]), .A2(port_x3_1[1]), .ZN(n205) );
  NAND2_X1 U1175 ( .A1(port_x3_2[1]), .A2(port_x2_3[1]), .ZN(n206) );
  XOR2_X1 U1176 ( .A(n179), .B(n180), .Z(n178) );
  NAND2_X1 U1177 ( .A1(port_x2_1[2]), .A2(port_x3_3[2]), .ZN(n179) );
  NAND2_X1 U1178 ( .A1(port_x2_2[2]), .A2(port_x3_1[2]), .ZN(n180) );
  XOR2_X1 U1179 ( .A(n183), .B(n184), .Z(n182) );
  NAND2_X1 U1180 ( .A1(port_x2_3[2]), .A2(port_x3_1[2]), .ZN(n183) );
  NAND2_X1 U1181 ( .A1(port_x3_2[2]), .A2(port_x2_3[2]), .ZN(n184) );
  XOR2_X1 U1182 ( .A(n322), .B(n323), .Z(n317) );
  NAND2_X1 U1183 ( .A1(n6), .A2(port_x2_1[0]), .ZN(n322) );
  XOR2_X1 U1184 ( .A(n324), .B(n325), .Z(n323) );
  XOR2_X1 U1185 ( .A(n332), .B(n333), .Z(n324) );
  XOR2_X1 U1186 ( .A(n290), .B(n291), .Z(n285) );
  NAND2_X1 U1187 ( .A1(n5), .A2(port_x2_1[1]), .ZN(n290) );
  XOR2_X1 U1188 ( .A(n292), .B(n293), .Z(n291) );
  XOR2_X1 U1189 ( .A(n300), .B(n301), .Z(n292) );
  XOR2_X1 U1190 ( .A(n258), .B(n259), .Z(n253) );
  NAND2_X1 U1191 ( .A1(n4), .A2(port_x2_1[2]), .ZN(n258) );
  XOR2_X1 U1192 ( .A(n260), .B(n261), .Z(n259) );
  XOR2_X1 U1193 ( .A(n268), .B(n269), .Z(n260) );
  XOR2_X1 U1194 ( .A(n421), .B(n422), .Z(n416) );
  NAND2_X1 U1195 ( .A1(port_x2_1[0]), .A2(n13), .ZN(n421) );
  XOR2_X1 U1196 ( .A(n423), .B(n424), .Z(n422) );
  XOR2_X1 U1197 ( .A(n431), .B(n432), .Z(n423) );
  XOR2_X1 U1198 ( .A(n388), .B(n389), .Z(n383) );
  NAND2_X1 U1199 ( .A1(port_x2_1[1]), .A2(n10), .ZN(n388) );
  XOR2_X1 U1200 ( .A(n390), .B(n391), .Z(n389) );
  XOR2_X1 U1201 ( .A(n398), .B(n399), .Z(n390) );
  XOR2_X1 U1202 ( .A(n355), .B(n356), .Z(n350) );
  NAND2_X1 U1203 ( .A1(port_x2_1[2]), .A2(n7), .ZN(n355) );
  XOR2_X1 U1204 ( .A(n357), .B(n358), .Z(n356) );
  XOR2_X1 U1205 ( .A(n365), .B(n366), .Z(n357) );
  XOR2_X1 U1206 ( .A(n610), .B(n611), .Z(n606) );
  NAND2_X1 U1207 ( .A1(port_x2_2[0]), .A2(n15), .ZN(n610) );
  XOR2_X1 U1208 ( .A(n612), .B(n613), .Z(n611) );
  XOR2_X1 U1209 ( .A(n620), .B(n621), .Z(n612) );
  XOR2_X1 U1210 ( .A(n579), .B(n580), .Z(n575) );
  NAND2_X1 U1211 ( .A1(port_x2_2[1]), .A2(n12), .ZN(n579) );
  XOR2_X1 U1212 ( .A(n581), .B(n582), .Z(n580) );
  XOR2_X1 U1213 ( .A(n589), .B(n590), .Z(n581) );
  XOR2_X1 U1214 ( .A(n548), .B(n549), .Z(n544) );
  NAND2_X1 U1215 ( .A1(port_x2_2[2]), .A2(n9), .ZN(n548) );
  XOR2_X1 U1216 ( .A(n550), .B(n551), .Z(n549) );
  XOR2_X1 U1217 ( .A(n558), .B(n559), .Z(n550) );
  XOR2_X1 U1218 ( .A(n517), .B(n518), .Z(n513) );
  NAND2_X1 U1219 ( .A1(n15), .A2(port_x2_0[0]), .ZN(n517) );
  XOR2_X1 U1220 ( .A(n519), .B(n520), .Z(n518) );
  XOR2_X1 U1221 ( .A(n527), .B(n528), .Z(n519) );
  XOR2_X1 U1222 ( .A(n485), .B(n486), .Z(n481) );
  NAND2_X1 U1223 ( .A1(n12), .A2(port_x2_0[1]), .ZN(n485) );
  XOR2_X1 U1224 ( .A(n487), .B(n488), .Z(n486) );
  XOR2_X1 U1225 ( .A(n495), .B(n496), .Z(n487) );
  XOR2_X1 U1226 ( .A(n453), .B(n454), .Z(n449) );
  NAND2_X1 U1227 ( .A1(n9), .A2(port_x2_0[2]), .ZN(n453) );
  XOR2_X1 U1228 ( .A(n455), .B(n456), .Z(n454) );
  XOR2_X1 U1229 ( .A(n463), .B(n464), .Z(n455) );
  XOR2_X1 U1230 ( .A(n165), .B(n166), .Z(n163) );
  XOR2_X1 U1231 ( .A(n171), .B(n172), .Z(n165) );
  XOR2_X1 U1232 ( .A(n167), .B(n168), .Z(n166) );
  XOR2_X1 U1233 ( .A(n69), .B(port_x1_2[0]), .Z(n171) );
  XOR2_X1 U1234 ( .A(n151), .B(n152), .Z(n149) );
  XOR2_X1 U1235 ( .A(n157), .B(n158), .Z(n151) );
  XOR2_X1 U1236 ( .A(n153), .B(n154), .Z(n152) );
  XOR2_X1 U1237 ( .A(n61), .B(port_x1_2[1]), .Z(n157) );
  XOR2_X1 U1238 ( .A(n137), .B(n138), .Z(n135) );
  XOR2_X1 U1239 ( .A(n143), .B(n144), .Z(n137) );
  XOR2_X1 U1240 ( .A(n139), .B(n140), .Z(n138) );
  XOR2_X1 U1241 ( .A(n53), .B(port_x1_2[2]), .Z(n143) );
  XOR2_X1 U1242 ( .A(port_x0_0[0]), .B(n336), .Z(n332) );
  NOR2_X1 U1243 ( .A1(n18), .A2(n36), .ZN(n336) );
  XOR2_X1 U1244 ( .A(port_x0_0[1]), .B(n304), .Z(n300) );
  NOR2_X1 U1245 ( .A1(n17), .A2(n35), .ZN(n304) );
  XOR2_X1 U1246 ( .A(port_x0_0[2]), .B(n272), .Z(n268) );
  NOR2_X1 U1247 ( .A1(n16), .A2(n34), .ZN(n272) );
  XOR2_X1 U1248 ( .A(port_x0_3[0]), .B(n435), .Z(n431) );
  NOR2_X1 U1249 ( .A1(n18), .A2(n45), .ZN(n435) );
  XOR2_X1 U1250 ( .A(port_x0_3[1]), .B(n402), .Z(n398) );
  NOR2_X1 U1251 ( .A1(n17), .A2(n42), .ZN(n402) );
  XOR2_X1 U1252 ( .A(port_x0_3[2]), .B(n369), .Z(n365) );
  NOR2_X1 U1253 ( .A1(n16), .A2(n39), .ZN(n369) );
  XOR2_X1 U1254 ( .A(port_x0_2[0]), .B(n531), .Z(n527) );
  NOR2_X1 U1255 ( .A1(n18), .A2(n68), .ZN(n531) );
  XOR2_X1 U1256 ( .A(port_x0_2[1]), .B(n499), .Z(n495) );
  NOR2_X1 U1257 ( .A1(n17), .A2(n60), .ZN(n499) );
  XOR2_X1 U1258 ( .A(port_x0_2[2]), .B(n467), .Z(n463) );
  NOR2_X1 U1259 ( .A1(n16), .A2(n52), .ZN(n467) );
  XOR2_X1 U1260 ( .A(port_x0_1[0]), .B(n624), .Z(n620) );
  NOR2_X1 U1261 ( .A1(n21), .A2(n102), .ZN(n624) );
  XOR2_X1 U1262 ( .A(port_x0_1[1]), .B(n593), .Z(n589) );
  NOR2_X1 U1263 ( .A1(n20), .A2(n91), .ZN(n593) );
  XOR2_X1 U1264 ( .A(port_x0_1[2]), .B(n562), .Z(n558) );
  NOR2_X1 U1265 ( .A1(n19), .A2(n80), .ZN(n562) );
  NAND2_X1 U1266 ( .A1(port_x3_3[0]), .A2(port_x1_3[0]), .ZN(n407) );
  NAND2_X1 U1267 ( .A1(port_x3_3[1]), .A2(port_x1_3[1]), .ZN(n374) );
  NAND2_X1 U1268 ( .A1(port_x3_3[2]), .A2(port_x1_3[2]), .ZN(n341) );
  NAND2_X1 U1269 ( .A1(port_x1_2[0]), .A2(port_x3_1[0]), .ZN(n321) );
  NAND2_X1 U1270 ( .A1(port_x1_2[1]), .A2(port_x3_1[1]), .ZN(n289) );
  NAND2_X1 U1271 ( .A1(port_x1_2[2]), .A2(port_x3_1[2]), .ZN(n257) );
  NAND2_X1 U1272 ( .A1(port_x1_3[0]), .A2(port_x3_0[0]), .ZN(n504) );
  NAND2_X1 U1273 ( .A1(port_x1_3[1]), .A2(port_x3_0[1]), .ZN(n472) );
  NAND2_X1 U1274 ( .A1(port_x1_3[2]), .A2(port_x3_0[2]), .ZN(n440) );
  NAND2_X1 U1275 ( .A1(port_x1_3[0]), .A2(port_x3_1[0]), .ZN(n420) );
  NAND2_X1 U1276 ( .A1(port_x1_3[1]), .A2(port_x3_1[1]), .ZN(n387) );
  NAND2_X1 U1277 ( .A1(port_x1_3[2]), .A2(port_x3_1[2]), .ZN(n354) );
  NOR2_X1 U1278 ( .A1(n33), .A2(n102), .ZN(n239) );
  INV_X1 U1279 ( .A(port_x3_2[0]), .ZN(n33) );
  NOR2_X1 U1280 ( .A1(n32), .A2(n91), .ZN(n217) );
  INV_X1 U1281 ( .A(port_x3_2[1]), .ZN(n32) );
  NOR2_X1 U1282 ( .A1(n31), .A2(n80), .ZN(n195) );
  INV_X1 U1283 ( .A(port_x3_2[2]), .ZN(n31) );
  NAND2_X1 U1284 ( .A1(n103), .A2(n104), .ZN(t1_3_2) );
  NAND2_X1 U1285 ( .A1(port_x2_0[2]), .A2(port_x3_0[2]), .ZN(n103) );
  NAND2_X1 U1286 ( .A1(port_x1_0[2]), .A2(n28), .ZN(n104) );
  INV_X1 U1287 ( .A(port_x3_0[0]), .ZN(n30) );
  INV_X1 U1288 ( .A(port_x3_0[1]), .ZN(n29) );
  INV_X1 U1289 ( .A(port_x3_0[2]), .ZN(n28) );
  AND2_X1 U1290 ( .A1(port_x1_1[0]), .A2(n626), .ZN(n238) );
  NOR2_X1 U1291 ( .A1(port_x3_1[0]), .A2(port_x3_2[0]), .ZN(n626) );
  AND2_X1 U1292 ( .A1(port_x1_1[1]), .A2(n627), .ZN(n216) );
  NOR2_X1 U1293 ( .A1(port_x3_1[1]), .A2(port_x3_2[1]), .ZN(n627) );
  AND2_X1 U1294 ( .A1(port_x1_1[2]), .A2(n628), .ZN(n194) );
  NOR2_X1 U1295 ( .A1(port_x3_1[2]), .A2(port_x3_2[2]), .ZN(n628) );
  NAND2_X1 U1296 ( .A1(n13), .A2(port_x2_3[0]), .ZN(n502) );
  NAND2_X1 U1297 ( .A1(n10), .A2(port_x2_3[1]), .ZN(n470) );
  NAND2_X1 U1298 ( .A1(n7), .A2(port_x2_3[2]), .ZN(n438) );
  NAND2_X1 U1299 ( .A1(n6), .A2(port_x2_2[0]), .ZN(n307) );
  NAND2_X1 U1300 ( .A1(n5), .A2(port_x2_2[1]), .ZN(n275) );
  NAND2_X1 U1301 ( .A1(n4), .A2(port_x2_2[2]), .ZN(n243) );
  NAND2_X1 U1302 ( .A1(n14), .A2(port_x2_1[0]), .ZN(n405) );
  NAND2_X1 U1303 ( .A1(n11), .A2(port_x2_1[1]), .ZN(n372) );
  NAND2_X1 U1304 ( .A1(n8), .A2(port_x2_1[2]), .ZN(n339) );
  NAND2_X1 U1305 ( .A1(n14), .A2(port_x2_3[0]), .ZN(n596) );
  NAND2_X1 U1306 ( .A1(n11), .A2(port_x2_3[1]), .ZN(n565) );
  NAND2_X1 U1307 ( .A1(n8), .A2(port_x2_3[2]), .ZN(n534) );
  NAND2_X1 U1308 ( .A1(port_x2_1[0]), .A2(port_x3_2[0]), .ZN(n236) );
  NAND2_X1 U1309 ( .A1(port_x2_1[1]), .A2(port_x3_2[1]), .ZN(n214) );
  NAND2_X1 U1310 ( .A1(port_x2_1[2]), .A2(port_x3_2[2]), .ZN(n192) );
  NAND2_X1 U1311 ( .A1(port_x2_1[0]), .A2(port_x3_1[0]), .ZN(n235) );
  NAND2_X1 U1312 ( .A1(port_x2_1[1]), .A2(port_x3_1[1]), .ZN(n213) );
  NAND2_X1 U1313 ( .A1(port_x2_1[2]), .A2(port_x3_1[2]), .ZN(n191) );
  NAND2_X1 U1314 ( .A1(port_x3_3[0]), .A2(port_x2_3[0]), .ZN(n127) );
  NAND2_X1 U1315 ( .A1(port_x3_3[1]), .A2(port_x2_3[1]), .ZN(n119) );
  NAND2_X1 U1316 ( .A1(port_x3_3[2]), .A2(port_x2_3[2]), .ZN(n111) );
  AND2_X1 U1317 ( .A1(port_x3_3[0]), .A2(port_x2_2[0]), .ZN(n221) );
  AND2_X1 U1318 ( .A1(port_x3_3[1]), .A2(port_x2_2[1]), .ZN(n199) );
  AND2_X1 U1319 ( .A1(port_x3_3[2]), .A2(port_x2_2[2]), .ZN(n177) );
  OR2_X1 maj_36_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_36_n3) );
  NAND2_X1 maj_36_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_36_n1) );
  NAND2_X1 maj_36_U2 ( .A1(t0_0_2), .A2(maj_36_n3), .ZN(maj_36_n2) );
  NAND2_X1 maj_36_U1 ( .A1(maj_36_n1), .A2(maj_36_n2), .ZN(maj_36_port_o) );
  OR2_X1 maj_37_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_37_n4) );
  NAND2_X1 maj_37_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_37_n6) );
  NAND2_X1 maj_37_U2 ( .A1(t0_1_2), .A2(maj_37_n4), .ZN(maj_37_n5) );
  NAND2_X1 maj_37_U1 ( .A1(maj_37_n6), .A2(maj_37_n5), .ZN(maj_37_port_o) );
  OR2_X1 maj_38_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_38_n4) );
  NAND2_X1 maj_38_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_38_n6) );
  NAND2_X1 maj_38_U2 ( .A1(t0_2_2), .A2(maj_38_n4), .ZN(maj_38_n5) );
  NAND2_X1 maj_38_U1 ( .A1(maj_38_n6), .A2(maj_38_n5), .ZN(maj_38_port_o) );
  OR2_X1 maj_39_U4 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_39_n4) );
  NAND2_X1 maj_39_U3 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_39_n6) );
  NAND2_X1 maj_39_U2 ( .A1(t0_3_2), .A2(maj_39_n4), .ZN(maj_39_n5) );
  NAND2_X1 maj_39_U1 ( .A1(maj_39_n6), .A2(maj_39_n5), .ZN(maj_39_port_o) );
  OR2_X1 maj_40_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_40_n4) );
  NAND2_X1 maj_40_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_40_n6) );
  NAND2_X1 maj_40_U2 ( .A1(t0_0_2), .A2(maj_40_n4), .ZN(maj_40_n5) );
  NAND2_X1 maj_40_U1 ( .A1(maj_40_n6), .A2(maj_40_n5), .ZN(maj_40_port_o) );
  OR2_X1 maj_41_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_41_n4) );
  NAND2_X1 maj_41_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_41_n6) );
  NAND2_X1 maj_41_U2 ( .A1(t0_1_2), .A2(maj_41_n4), .ZN(maj_41_n5) );
  NAND2_X1 maj_41_U1 ( .A1(maj_41_n6), .A2(maj_41_n5), .ZN(maj_41_port_o) );
  OR2_X1 maj_42_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_42_n4) );
  NAND2_X1 maj_42_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_42_n6) );
  NAND2_X1 maj_42_U2 ( .A1(t0_2_2), .A2(maj_42_n4), .ZN(maj_42_n5) );
  NAND2_X1 maj_42_U1 ( .A1(maj_42_n6), .A2(maj_42_n5), .ZN(maj_42_port_o) );
  OR2_X1 maj_43_U4 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_43_n4) );
  NAND2_X1 maj_43_U3 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_43_n6) );
  NAND2_X1 maj_43_U2 ( .A1(t0_3_2), .A2(maj_43_n4), .ZN(maj_43_n5) );
  NAND2_X1 maj_43_U1 ( .A1(maj_43_n6), .A2(maj_43_n5), .ZN(maj_43_port_o) );
  OR2_X1 maj_44_U4 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_44_n4) );
  NAND2_X1 maj_44_U3 ( .A1(t0_0_1), .A2(t0_0_0), .ZN(maj_44_n6) );
  NAND2_X1 maj_44_U2 ( .A1(t0_0_2), .A2(maj_44_n4), .ZN(maj_44_n5) );
  NAND2_X1 maj_44_U1 ( .A1(maj_44_n6), .A2(maj_44_n5), .ZN(maj_44_port_o) );
  OR2_X1 maj_45_U4 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_45_n4) );
  NAND2_X1 maj_45_U3 ( .A1(t0_1_1), .A2(t0_1_0), .ZN(maj_45_n6) );
  NAND2_X1 maj_45_U2 ( .A1(t0_1_2), .A2(maj_45_n4), .ZN(maj_45_n5) );
  NAND2_X1 maj_45_U1 ( .A1(maj_45_n6), .A2(maj_45_n5), .ZN(maj_45_port_o) );
  OR2_X1 maj_46_U4 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_46_n4) );
  NAND2_X1 maj_46_U3 ( .A1(t0_2_1), .A2(t0_2_0), .ZN(maj_46_n6) );
  NAND2_X1 maj_46_U2 ( .A1(t0_2_2), .A2(maj_46_n4), .ZN(maj_46_n5) );
  NAND2_X1 maj_46_U1 ( .A1(maj_46_n6), .A2(maj_46_n5), .ZN(maj_46_port_o) );
  OR2_X1 maj_47_U4 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_47_n4) );
  NAND2_X1 maj_47_U3 ( .A1(t0_3_1), .A2(t0_3_0), .ZN(maj_47_n6) );
  NAND2_X1 maj_47_U2 ( .A1(t0_3_2), .A2(maj_47_n4), .ZN(maj_47_n5) );
  NAND2_X1 maj_47_U1 ( .A1(maj_47_n6), .A2(maj_47_n5), .ZN(maj_47_port_o) );
  OR2_X1 maj_48_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_48_n4) );
  NAND2_X1 maj_48_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_48_n6) );
  NAND2_X1 maj_48_U2 ( .A1(t1_0_2), .A2(maj_48_n4), .ZN(maj_48_n5) );
  NAND2_X1 maj_48_U1 ( .A1(maj_48_n6), .A2(maj_48_n5), .ZN(maj_48_port_o) );
  OR2_X1 maj_49_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_49_n4) );
  NAND2_X1 maj_49_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_49_n6) );
  NAND2_X1 maj_49_U2 ( .A1(t1_1_2), .A2(maj_49_n4), .ZN(maj_49_n5) );
  NAND2_X1 maj_49_U1 ( .A1(maj_49_n6), .A2(maj_49_n5), .ZN(maj_49_port_o) );
  OR2_X1 maj_50_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_50_n4) );
  NAND2_X1 maj_50_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_50_n6) );
  NAND2_X1 maj_50_U2 ( .A1(t1_2_2), .A2(maj_50_n4), .ZN(maj_50_n5) );
  NAND2_X1 maj_50_U1 ( .A1(maj_50_n6), .A2(maj_50_n5), .ZN(maj_50_port_o) );
  OR2_X1 maj_51_U4 ( .A1(t1_3_1), .A2(t1_3_0), .ZN(maj_51_n4) );
  NAND2_X1 maj_51_U3 ( .A1(t1_3_1), .A2(t1_3_0), .ZN(maj_51_n6) );
  NAND2_X1 maj_51_U2 ( .A1(t1_3_2), .A2(maj_51_n4), .ZN(maj_51_n5) );
  NAND2_X1 maj_51_U1 ( .A1(maj_51_n6), .A2(maj_51_n5), .ZN(maj_51_port_o) );
  OR2_X1 maj_52_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_52_n4) );
  NAND2_X1 maj_52_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_52_n6) );
  NAND2_X1 maj_52_U2 ( .A1(t1_0_2), .A2(maj_52_n4), .ZN(maj_52_n5) );
  NAND2_X1 maj_52_U1 ( .A1(maj_52_n6), .A2(maj_52_n5), .ZN(maj_52_port_o) );
  OR2_X1 maj_53_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_53_n4) );
  NAND2_X1 maj_53_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_53_n6) );
  NAND2_X1 maj_53_U2 ( .A1(t1_1_2), .A2(maj_53_n4), .ZN(maj_53_n5) );
  NAND2_X1 maj_53_U1 ( .A1(maj_53_n6), .A2(maj_53_n5), .ZN(maj_53_port_o) );
  OR2_X1 maj_54_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_54_n4) );
  NAND2_X1 maj_54_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_54_n6) );
  NAND2_X1 maj_54_U2 ( .A1(t1_2_2), .A2(maj_54_n4), .ZN(maj_54_n5) );
  NAND2_X1 maj_54_U1 ( .A1(maj_54_n6), .A2(maj_54_n5), .ZN(maj_54_port_o) );
  OR2_X1 maj_55_U4 ( .A1(t1_3_1), .A2(t1_3_0), .ZN(maj_55_n4) );
  NAND2_X1 maj_55_U3 ( .A1(t1_3_1), .A2(t1_3_0), .ZN(maj_55_n6) );
  NAND2_X1 maj_55_U2 ( .A1(t1_3_2), .A2(maj_55_n4), .ZN(maj_55_n5) );
  NAND2_X1 maj_55_U1 ( .A1(maj_55_n6), .A2(maj_55_n5), .ZN(maj_55_port_o) );
  OR2_X1 maj_56_U4 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_56_n4) );
  NAND2_X1 maj_56_U3 ( .A1(t1_0_1), .A2(t1_0_0), .ZN(maj_56_n6) );
  NAND2_X1 maj_56_U2 ( .A1(t1_0_2), .A2(maj_56_n4), .ZN(maj_56_n5) );
  NAND2_X1 maj_56_U1 ( .A1(maj_56_n6), .A2(maj_56_n5), .ZN(maj_56_port_o) );
  OR2_X1 maj_57_U4 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_57_n4) );
  NAND2_X1 maj_57_U3 ( .A1(t1_1_1), .A2(t1_1_0), .ZN(maj_57_n6) );
  NAND2_X1 maj_57_U2 ( .A1(t1_1_2), .A2(maj_57_n4), .ZN(maj_57_n5) );
  NAND2_X1 maj_57_U1 ( .A1(maj_57_n6), .A2(maj_57_n5), .ZN(maj_57_port_o) );
  OR2_X1 maj_58_U4 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_58_n4) );
  NAND2_X1 maj_58_U3 ( .A1(t1_2_1), .A2(t1_2_0), .ZN(maj_58_n6) );
  NAND2_X1 maj_58_U2 ( .A1(t1_2_2), .A2(maj_58_n4), .ZN(maj_58_n5) );
  NAND2_X1 maj_58_U1 ( .A1(maj_58_n6), .A2(maj_58_n5), .ZN(maj_58_port_o) );
  OR2_X1 maj_59_U4 ( .A1(t1_3_1), .A2(t1_3_0), .ZN(maj_59_n4) );
  NAND2_X1 maj_59_U3 ( .A1(t1_3_1), .A2(t1_3_0), .ZN(maj_59_n6) );
  NAND2_X1 maj_59_U2 ( .A1(t1_3_2), .A2(maj_59_n4), .ZN(maj_59_n5) );
  NAND2_X1 maj_59_U1 ( .A1(maj_59_n6), .A2(maj_59_n5), .ZN(maj_59_port_o) );
  OR2_X1 maj_60_U4 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_60_n4) );
  NAND2_X1 maj_60_U3 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_60_n6) );
  NAND2_X1 maj_60_U2 ( .A1(t2_0_2), .A2(maj_60_n4), .ZN(maj_60_n5) );
  NAND2_X1 maj_60_U1 ( .A1(maj_60_n6), .A2(maj_60_n5), .ZN(maj_60_port_o) );
  OR2_X1 maj_61_U4 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_61_n4) );
  NAND2_X1 maj_61_U3 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_61_n6) );
  NAND2_X1 maj_61_U2 ( .A1(t2_1_2), .A2(maj_61_n4), .ZN(maj_61_n5) );
  NAND2_X1 maj_61_U1 ( .A1(maj_61_n6), .A2(maj_61_n5), .ZN(maj_61_port_o) );
  OR2_X1 maj_62_U4 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_62_n4) );
  NAND2_X1 maj_62_U3 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_62_n6) );
  NAND2_X1 maj_62_U2 ( .A1(t2_2_2), .A2(maj_62_n4), .ZN(maj_62_n5) );
  NAND2_X1 maj_62_U1 ( .A1(maj_62_n6), .A2(maj_62_n5), .ZN(maj_62_port_o) );
  OR2_X1 maj_63_U4 ( .A1(t2_3_1), .A2(t2_3_0), .ZN(maj_63_n4) );
  NAND2_X1 maj_63_U3 ( .A1(t2_3_1), .A2(t2_3_0), .ZN(maj_63_n6) );
  NAND2_X1 maj_63_U2 ( .A1(t2_3_2), .A2(maj_63_n4), .ZN(maj_63_n5) );
  NAND2_X1 maj_63_U1 ( .A1(maj_63_n6), .A2(maj_63_n5), .ZN(maj_63_port_o) );
  OR2_X1 maj_64_U4 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_64_n4) );
  NAND2_X1 maj_64_U3 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_64_n6) );
  NAND2_X1 maj_64_U2 ( .A1(t2_0_2), .A2(maj_64_n4), .ZN(maj_64_n5) );
  NAND2_X1 maj_64_U1 ( .A1(maj_64_n6), .A2(maj_64_n5), .ZN(maj_64_port_o) );
  OR2_X1 maj_65_U4 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_65_n4) );
  NAND2_X1 maj_65_U3 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_65_n6) );
  NAND2_X1 maj_65_U2 ( .A1(t2_1_2), .A2(maj_65_n4), .ZN(maj_65_n5) );
  NAND2_X1 maj_65_U1 ( .A1(maj_65_n6), .A2(maj_65_n5), .ZN(maj_65_port_o) );
  OR2_X1 maj_66_U4 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_66_n4) );
  NAND2_X1 maj_66_U3 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_66_n6) );
  NAND2_X1 maj_66_U2 ( .A1(t2_2_2), .A2(maj_66_n4), .ZN(maj_66_n5) );
  NAND2_X1 maj_66_U1 ( .A1(maj_66_n6), .A2(maj_66_n5), .ZN(maj_66_port_o) );
  OR2_X1 maj_67_U4 ( .A1(t2_3_1), .A2(t2_3_0), .ZN(maj_67_n4) );
  NAND2_X1 maj_67_U3 ( .A1(t2_3_1), .A2(t2_3_0), .ZN(maj_67_n6) );
  NAND2_X1 maj_67_U2 ( .A1(t2_3_2), .A2(maj_67_n4), .ZN(maj_67_n5) );
  NAND2_X1 maj_67_U1 ( .A1(maj_67_n6), .A2(maj_67_n5), .ZN(maj_67_port_o) );
  OR2_X1 maj_68_U4 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_68_n4) );
  NAND2_X1 maj_68_U3 ( .A1(t2_0_1), .A2(t2_0_0), .ZN(maj_68_n6) );
  NAND2_X1 maj_68_U2 ( .A1(t2_0_2), .A2(maj_68_n4), .ZN(maj_68_n5) );
  NAND2_X1 maj_68_U1 ( .A1(maj_68_n6), .A2(maj_68_n5), .ZN(maj_68_port_o) );
  OR2_X1 maj_69_U4 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_69_n4) );
  NAND2_X1 maj_69_U3 ( .A1(t2_1_1), .A2(t2_1_0), .ZN(maj_69_n6) );
  NAND2_X1 maj_69_U2 ( .A1(t2_1_2), .A2(maj_69_n4), .ZN(maj_69_n5) );
  NAND2_X1 maj_69_U1 ( .A1(maj_69_n6), .A2(maj_69_n5), .ZN(maj_69_port_o) );
  OR2_X1 maj_70_U4 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_70_n4) );
  NAND2_X1 maj_70_U3 ( .A1(t2_2_1), .A2(t2_2_0), .ZN(maj_70_n6) );
  NAND2_X1 maj_70_U2 ( .A1(t2_2_2), .A2(maj_70_n4), .ZN(maj_70_n5) );
  NAND2_X1 maj_70_U1 ( .A1(maj_70_n6), .A2(maj_70_n5), .ZN(maj_70_port_o) );
  OR2_X1 maj_71_U4 ( .A1(t2_3_1), .A2(t2_3_0), .ZN(maj_71_n4) );
  NAND2_X1 maj_71_U3 ( .A1(t2_3_1), .A2(t2_3_0), .ZN(maj_71_n6) );
  NAND2_X1 maj_71_U2 ( .A1(t2_3_2), .A2(maj_71_n4), .ZN(maj_71_n5) );
  NAND2_X1 maj_71_U1 ( .A1(maj_71_n6), .A2(maj_71_n5), .ZN(maj_71_port_o) );
endmodule

