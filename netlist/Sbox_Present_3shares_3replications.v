/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:23:20 2023
/////////////////////////////////////////////////////////////


module Sbox_Present_3shares_3replications ( port_x0_0, port_x0_1, port_x0_2, 
        port_x1_0, port_x1_1, port_x1_2, port_x2_0, port_x2_1, port_x2_2, 
        port_x3_0, port_x3_1, port_x3_2, port_y0_0, port_y0_1, port_y0_2, 
        port_y1_0, port_y1_1, port_y1_2, port_y2_0, port_y2_1, port_y2_2, 
        port_y3_0, port_y3_1, port_y3_2, clk, reset );
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
  wire   Q12_0_n25, Q12_0_n120, Q12_0_n119, Q12_0_n118, Q12_0_n117, Q12_0_n116,
         Q12_0_n115, Q12_0_n114, Q12_0_n113, Q12_0_n112, Q12_0_n111,
         Q12_0_n110, Q12_0_n109, Q12_0_n108, Q12_0_n107, Q12_0_n106,
         Q12_0_n105, Q12_0_n104, Q12_0_n103, Q12_0_n102, Q12_0_n101,
         Q12_0_n100, Q12_0_n99, Q12_0_n98, Q12_0_n97, Q12_0_n96, Q12_0_n95,
         Q12_0_n94, Q12_0_n93, Q12_0_n92, Q12_0_n91, Q12_0_n90, Q12_0_n89,
         Q12_0_n88, Q12_0_n87, Q12_0_n86, Q12_0_n85, Q12_0_n84, Q12_0_n83,
         Q12_0_n82, Q12_0_n81, Q12_0_n80, Q12_0_n79, Q12_0_n78, Q12_0_n77,
         Q12_0_n76, Q12_0_n75, Q12_0_n74, Q12_0_n73, Q12_0_n72, Q12_0_n71,
         Q12_0_n70, Q12_0_n69, Q12_0_n68, Q12_0_n67, Q12_0_n66, Q12_0_n65,
         Q12_0_n64, Q12_0_n63, Q12_0_n62, Q12_0_n61, Q12_0_n60, Q12_0_n59,
         Q12_0_n58, Q12_0_n57, Q12_0_n56, Q12_0_n55, Q12_0_n54, Q12_0_n53,
         Q12_0_n52, Q12_0_n51, Q12_0_n50, Q12_0_n49, Q12_0_n48, Q12_0_n47,
         Q12_0_n46, Q12_0_n45, Q12_0_n44, Q12_0_n43, Q12_0_n42, Q12_0_n41,
         Q12_0_n40, Q12_0_n39, Q12_0_n38, Q12_0_n37, Q12_0_n36, Q12_0_n35,
         Q12_0_n34, Q12_0_n33, Q12_0_n32, Q12_0_n31, Q12_0_n30, Q12_0_n29,
         Q12_0_n28, Q12_0_n27, Q12_0_n26, Q12_0_n24, Q12_0_n23, Q12_0_n22,
         Q12_0_n21, Q12_0_n20, Q12_0_n19, Q12_0_n18, Q12_0_n17, Q12_0_n16,
         Q12_0_n15, Q12_0_n14, Q12_0_n13, Q12_0_n12, Q12_0_n11, Q12_0_n10,
         Q12_0_n9, Q12_0_n8, Q12_0_n7, Q12_0_n6, Q12_0_n5, Q12_0_n4, Q12_0_n3,
         Q12_0_n2, Q12_0_n1, Q12_0_maj_53_port_o, Q12_0_maj_52_port_o,
         Q12_0_maj_51_port_o, Q12_0_maj_50_port_o, Q12_0_maj_49_port_o,
         Q12_0_maj_48_port_o, Q12_0_maj_47_port_o, Q12_0_t2_2_2, Q12_0_t2_2_1,
         Q12_0_t2_2_0, Q12_0_maj_46_port_o, Q12_0_t2_1_2, Q12_0_t2_1_1,
         Q12_0_t2_1_0, Q12_0_maj_45_port_o, Q12_0_t2_0_2, Q12_0_t2_0_1,
         Q12_0_t2_0_0, Q12_0_maj_44_port_o, Q12_0_maj_43_port_o,
         Q12_0_maj_42_port_o, Q12_0_maj_41_port_o, Q12_0_maj_40_port_o,
         Q12_0_maj_39_port_o, Q12_0_maj_38_port_o, Q12_0_t1_2_2, Q12_0_t1_2_1,
         Q12_0_t1_2_0, Q12_0_maj_37_port_o, Q12_0_t1_1_2, Q12_0_t1_1_1,
         Q12_0_t1_1_0, Q12_0_maj_36_port_o, Q12_0_t1_0_2, Q12_0_t1_0_1,
         Q12_0_t1_0_0, Q12_0_maj_36_n3, Q12_0_maj_36_n2, Q12_0_maj_36_n1,
         Q12_0_maj_37_n6, Q12_0_maj_37_n5, Q12_0_maj_37_n4, Q12_0_maj_38_n6,
         Q12_0_maj_38_n5, Q12_0_maj_38_n4, Q12_0_maj_39_n6, Q12_0_maj_39_n5,
         Q12_0_maj_39_n4, Q12_0_maj_40_n6, Q12_0_maj_40_n5, Q12_0_maj_40_n4,
         Q12_0_maj_41_n6, Q12_0_maj_41_n5, Q12_0_maj_41_n4, Q12_0_maj_42_n6,
         Q12_0_maj_42_n5, Q12_0_maj_42_n4, Q12_0_maj_43_n6, Q12_0_maj_43_n5,
         Q12_0_maj_43_n4, Q12_0_maj_44_n6, Q12_0_maj_44_n5, Q12_0_maj_44_n4,
         Q12_0_maj_45_n6, Q12_0_maj_45_n5, Q12_0_maj_45_n4, Q12_0_maj_46_n6,
         Q12_0_maj_46_n5, Q12_0_maj_46_n4, Q12_0_maj_47_n6, Q12_0_maj_47_n5,
         Q12_0_maj_47_n4, Q12_0_maj_48_n6, Q12_0_maj_48_n5, Q12_0_maj_48_n4,
         Q12_0_maj_49_n6, Q12_0_maj_49_n5, Q12_0_maj_49_n4, Q12_0_maj_50_n6,
         Q12_0_maj_50_n5, Q12_0_maj_50_n4, Q12_0_maj_51_n6, Q12_0_maj_51_n5,
         Q12_0_maj_51_n4, Q12_0_maj_52_n6, Q12_0_maj_52_n5, Q12_0_maj_52_n4,
         Q12_0_maj_53_n6, Q12_0_maj_53_n5, Q12_0_maj_53_n4, A_prime_n9,
         A_prime_n8, A_prime_n7, A_prime_n6, A_prime_n5, A_prime_n4,
         A_prime_n3, A_prime_n2, A_prime_n1, A_prime_port_y3_2_0_,
         A_prime_port_y3_2_1_, A_prime_port_y3_2_2_, A_prime_port_y3_1_0_,
         A_prime_port_y3_1_1_, A_prime_port_y3_1_2_, A_prime_port_y3_0_0_,
         A_prime_port_y3_0_1_, A_prime_port_y3_0_2_, A_prime_port_y0_2_0_,
         A_prime_port_y0_2_1_, A_prime_port_y0_2_2_, A_prime_port_y0_1_0_,
         A_prime_port_y0_1_1_, A_prime_port_y0_1_2_, A_prime_port_y0_0_0_,
         A_prime_port_y0_0_1_, A_prime_port_y0_0_2_, Q12_1_n239, Q12_1_n238,
         Q12_1_n237, Q12_1_n236, Q12_1_n235, Q12_1_n234, Q12_1_n233,
         Q12_1_n232, Q12_1_n231, Q12_1_n230, Q12_1_n229, Q12_1_n228,
         Q12_1_n227, Q12_1_n226, Q12_1_n225, Q12_1_n224, Q12_1_n223,
         Q12_1_n222, Q12_1_n221, Q12_1_n220, Q12_1_n219, Q12_1_n218,
         Q12_1_n217, Q12_1_n216, Q12_1_n215, Q12_1_n214, Q12_1_n213,
         Q12_1_n212, Q12_1_n211, Q12_1_n210, Q12_1_n209, Q12_1_n208,
         Q12_1_n207, Q12_1_n206, Q12_1_n205, Q12_1_n204, Q12_1_n203,
         Q12_1_n202, Q12_1_n201, Q12_1_n200, Q12_1_n199, Q12_1_n198,
         Q12_1_n197, Q12_1_n196, Q12_1_n195, Q12_1_n194, Q12_1_n193,
         Q12_1_n192, Q12_1_n191, Q12_1_n190, Q12_1_n189, Q12_1_n188,
         Q12_1_n187, Q12_1_n186, Q12_1_n185, Q12_1_n184, Q12_1_n183,
         Q12_1_n182, Q12_1_n181, Q12_1_n180, Q12_1_n179, Q12_1_n178,
         Q12_1_n177, Q12_1_n176, Q12_1_n175, Q12_1_n174, Q12_1_n173,
         Q12_1_n172, Q12_1_n171, Q12_1_n170, Q12_1_n169, Q12_1_n168,
         Q12_1_n167, Q12_1_n166, Q12_1_n165, Q12_1_n164, Q12_1_n163,
         Q12_1_n162, Q12_1_n161, Q12_1_n160, Q12_1_n159, Q12_1_n158,
         Q12_1_n157, Q12_1_n156, Q12_1_n155, Q12_1_n154, Q12_1_n153,
         Q12_1_n152, Q12_1_n151, Q12_1_n150, Q12_1_n149, Q12_1_n148,
         Q12_1_n147, Q12_1_n146, Q12_1_n145, Q12_1_n144, Q12_1_n143,
         Q12_1_n142, Q12_1_n141, Q12_1_n140, Q12_1_n139, Q12_1_n138,
         Q12_1_n137, Q12_1_n136, Q12_1_n135, Q12_1_n134, Q12_1_n133,
         Q12_1_n132, Q12_1_n131, Q12_1_n130, Q12_1_n129, Q12_1_n128,
         Q12_1_n127, Q12_1_n126, Q12_1_n125, Q12_1_n124, Q12_1_n123,
         Q12_1_n122, Q12_1_n121, Q12_1_n25, Q12_1_maj_53_port_o,
         Q12_1_maj_52_port_o, Q12_1_maj_51_port_o, Q12_1_maj_50_port_o,
         Q12_1_maj_49_port_o, Q12_1_maj_48_port_o, Q12_1_maj_47_port_o,
         Q12_1_t2_2_2, Q12_1_t2_2_1, Q12_1_t2_2_0, Q12_1_maj_46_port_o,
         Q12_1_t2_1_2, Q12_1_t2_1_1, Q12_1_t2_1_0, Q12_1_maj_45_port_o,
         Q12_1_t2_0_2, Q12_1_t2_0_1, Q12_1_t2_0_0, Q12_1_maj_44_port_o,
         Q12_1_maj_43_port_o, Q12_1_maj_42_port_o, Q12_1_maj_41_port_o,
         Q12_1_maj_40_port_o, Q12_1_maj_39_port_o, Q12_1_maj_38_port_o,
         Q12_1_t1_2_2, Q12_1_t1_2_1, Q12_1_t1_2_0, Q12_1_maj_37_port_o,
         Q12_1_t1_1_2, Q12_1_t1_1_1, Q12_1_t1_1_0, Q12_1_maj_36_port_o,
         Q12_1_t1_0_2, Q12_1_t1_0_1, Q12_1_t1_0_0, Q12_1_maj_36_n6,
         Q12_1_maj_36_n5, Q12_1_maj_36_n4, Q12_1_maj_37_n6, Q12_1_maj_37_n5,
         Q12_1_maj_37_n4, Q12_1_maj_38_n6, Q12_1_maj_38_n5, Q12_1_maj_38_n4,
         Q12_1_maj_39_n6, Q12_1_maj_39_n5, Q12_1_maj_39_n4, Q12_1_maj_40_n6,
         Q12_1_maj_40_n5, Q12_1_maj_40_n4, Q12_1_maj_41_n6, Q12_1_maj_41_n5,
         Q12_1_maj_41_n4, Q12_1_maj_42_n6, Q12_1_maj_42_n5, Q12_1_maj_42_n4,
         Q12_1_maj_43_n6, Q12_1_maj_43_n5, Q12_1_maj_43_n4, Q12_1_maj_44_n6,
         Q12_1_maj_44_n5, Q12_1_maj_44_n4, Q12_1_maj_45_n6, Q12_1_maj_45_n5,
         Q12_1_maj_45_n4, Q12_1_maj_46_n6, Q12_1_maj_46_n5, Q12_1_maj_46_n4,
         Q12_1_maj_47_n6, Q12_1_maj_47_n5, Q12_1_maj_47_n4, Q12_1_maj_48_n6,
         Q12_1_maj_48_n5, Q12_1_maj_48_n4, Q12_1_maj_49_n6, Q12_1_maj_49_n5,
         Q12_1_maj_49_n4, Q12_1_maj_50_n6, Q12_1_maj_50_n5, Q12_1_maj_50_n4,
         Q12_1_maj_51_n6, Q12_1_maj_51_n5, Q12_1_maj_51_n4, Q12_1_maj_52_n6,
         Q12_1_maj_52_n5, Q12_1_maj_52_n4, Q12_1_maj_53_n6, Q12_1_maj_53_n5,
         Q12_1_maj_53_n4, A_out_n9, A_out_n8, A_out_n7, A_out_n6, A_out_n5,
         A_out_n4, A_out_n3, A_out_n2, A_out_n1;
  wire   [2:0] A_port_y3_0;
  wire   [2:0] A_port_y3_1;
  wire   [2:0] A_port_y3_2;
  wire   [2:0] Q12_0_port_y0_0;
  wire   [2:0] Q12_0_port_y0_1;
  wire   [2:0] Q12_0_port_y0_2;
  wire   [2:0] Q12_0_port_y1_0;
  wire   [2:0] Q12_0_port_y1_1;
  wire   [2:0] Q12_0_port_y1_2;
  wire   [2:0] Q12_0_port_y2_0;
  wire   [2:0] Q12_0_port_y2_1;
  wire   [2:0] Q12_0_port_y2_2;
  wire   [2:0] Q12_0_port_y3_0;
  wire   [2:0] Q12_0_port_y3_1;
  wire   [2:0] Q12_0_port_y3_2;
  wire   [2:0] Q12_1_port_y1_0;
  wire   [2:0] Q12_1_port_y1_1;
  wire   [2:0] Q12_1_port_y1_2;
  wire   [2:0] Q12_1_port_y3_0;
  wire   [2:0] Q12_1_port_y3_1;
  wire   [2:0] Q12_1_port_y3_2;

  XOR2_X1 A_U9 ( .A(port_x1_0[2]), .B(port_x2_0[2]), .Z(A_port_y3_2[2]) );
  XOR2_X1 A_U8 ( .A(port_x1_0[1]), .B(port_x2_0[1]), .Z(A_port_y3_2[1]) );
  XOR2_X1 A_U7 ( .A(port_x1_0[0]), .B(port_x2_0[0]), .Z(A_port_y3_2[0]) );
  XOR2_X1 A_U6 ( .A(port_x1_1[2]), .B(port_x2_1[2]), .Z(A_port_y3_0[2]) );
  XOR2_X1 A_U5 ( .A(port_x1_1[1]), .B(port_x2_1[1]), .Z(A_port_y3_0[1]) );
  XOR2_X1 A_U4 ( .A(port_x1_1[0]), .B(port_x2_1[0]), .Z(A_port_y3_0[0]) );
  XOR2_X1 A_U3 ( .A(port_x1_2[2]), .B(port_x2_2[2]), .Z(A_port_y3_1[2]) );
  XOR2_X1 A_U2 ( .A(port_x1_2[1]), .B(port_x2_2[1]), .Z(A_port_y3_1[1]) );
  XOR2_X1 A_U1 ( .A(port_x1_2[0]), .B(port_x2_2[0]), .Z(A_port_y3_1[0]) );
  NAND2_X1 Q12_0_U140 ( .A1(port_x3_2[2]), .A2(A_port_y3_2[2]), .ZN(Q12_0_n99)
         );
  NAND2_X1 Q12_0_U139 ( .A1(port_x3_2[1]), .A2(A_port_y3_2[1]), .ZN(Q12_0_n107) );
  NAND2_X1 Q12_0_U138 ( .A1(port_x3_2[0]), .A2(A_port_y3_2[0]), .ZN(Q12_0_n115) );
  NAND2_X1 Q12_0_U137 ( .A1(port_x3_0[2]), .A2(A_port_y3_2[2]), .ZN(Q12_0_n72)
         );
  NAND2_X1 Q12_0_U136 ( .A1(port_x3_0[1]), .A2(A_port_y3_2[1]), .ZN(Q12_0_n81)
         );
  NAND2_X1 Q12_0_U135 ( .A1(port_x3_0[0]), .A2(A_port_y3_2[0]), .ZN(Q12_0_n90)
         );
  NAND2_X1 Q12_0_U134 ( .A1(port_x3_2[2]), .A2(A_port_y3_0[2]), .ZN(Q12_0_n49)
         );
  NAND2_X1 Q12_0_U133 ( .A1(port_x3_2[1]), .A2(A_port_y3_0[1]), .ZN(Q12_0_n57)
         );
  NAND2_X1 Q12_0_U132 ( .A1(port_x3_2[0]), .A2(A_port_y3_0[0]), .ZN(Q12_0_n65)
         );
  NAND2_X1 Q12_0_U131 ( .A1(port_x3_0[2]), .A2(A_port_y3_1[2]), .ZN(Q12_0_n100) );
  NAND2_X1 Q12_0_U130 ( .A1(port_x3_0[1]), .A2(A_port_y3_1[1]), .ZN(Q12_0_n108) );
  NAND2_X1 Q12_0_U129 ( .A1(port_x3_0[0]), .A2(A_port_y3_1[0]), .ZN(Q12_0_n116) );
  XOR2_X1 Q12_0_U128 ( .A(A_port_y3_2[2]), .B(A_port_y3_1[2]), .Z(Q12_0_n104)
         );
  INV_X1 Q12_0_U127 ( .A(port_x1_2[2]), .ZN(Q12_0_n4) );
  NOR2_X1 Q12_0_U126 ( .A1(Q12_0_n4), .A2(Q12_0_n104), .ZN(Q12_0_n103) );
  XOR2_X1 Q12_0_U125 ( .A(Q12_0_n34), .B(Q12_0_n103), .Z(Q12_0_n102) );
  XOR2_X1 Q12_0_U124 ( .A(A_port_y3_2[1]), .B(A_port_y3_1[1]), .Z(Q12_0_n112)
         );
  INV_X1 Q12_0_U123 ( .A(port_x1_2[1]), .ZN(Q12_0_n5) );
  NOR2_X1 Q12_0_U122 ( .A1(Q12_0_n5), .A2(Q12_0_n112), .ZN(Q12_0_n111) );
  XOR2_X1 Q12_0_U121 ( .A(Q12_0_n39), .B(Q12_0_n111), .Z(Q12_0_n110) );
  XOR2_X1 Q12_0_U120 ( .A(A_port_y3_2[0]), .B(A_port_y3_1[0]), .Z(Q12_0_n120)
         );
  INV_X1 Q12_0_U119 ( .A(port_x1_2[0]), .ZN(Q12_0_n6) );
  NOR2_X1 Q12_0_U118 ( .A1(Q12_0_n6), .A2(Q12_0_n120), .ZN(Q12_0_n119) );
  XOR2_X1 Q12_0_U117 ( .A(Q12_0_n44), .B(Q12_0_n119), .Z(Q12_0_n118) );
  XOR2_X1 Q12_0_U116 ( .A(A_port_y3_1[2]), .B(A_port_y3_0[2]), .Z(Q12_0_n53)
         );
  INV_X1 Q12_0_U115 ( .A(port_x1_1[2]), .ZN(Q12_0_n1) );
  NOR2_X1 Q12_0_U114 ( .A1(Q12_0_n1), .A2(Q12_0_n53), .ZN(Q12_0_n52) );
  XOR2_X1 Q12_0_U113 ( .A(Q12_0_n10), .B(Q12_0_n52), .Z(Q12_0_n51) );
  XOR2_X1 Q12_0_U112 ( .A(A_port_y3_1[1]), .B(A_port_y3_0[1]), .Z(Q12_0_n61)
         );
  INV_X1 Q12_0_U111 ( .A(port_x1_1[1]), .ZN(Q12_0_n2) );
  NOR2_X1 Q12_0_U110 ( .A1(Q12_0_n2), .A2(Q12_0_n61), .ZN(Q12_0_n60) );
  XOR2_X1 Q12_0_U109 ( .A(Q12_0_n15), .B(Q12_0_n60), .Z(Q12_0_n59) );
  XOR2_X1 Q12_0_U108 ( .A(A_port_y3_1[0]), .B(A_port_y3_0[0]), .Z(Q12_0_n69)
         );
  INV_X1 Q12_0_U107 ( .A(port_x1_1[0]), .ZN(Q12_0_n3) );
  NOR2_X1 Q12_0_U106 ( .A1(Q12_0_n3), .A2(Q12_0_n69), .ZN(Q12_0_n68) );
  XOR2_X1 Q12_0_U105 ( .A(Q12_0_n20), .B(Q12_0_n68), .Z(Q12_0_n67) );
  NAND2_X1 Q12_0_U104 ( .A1(A_port_y3_2[2]), .A2(port_x1_2[2]), .ZN(Q12_0_n33)
         );
  NAND2_X1 Q12_0_U103 ( .A1(A_port_y3_2[1]), .A2(port_x1_2[1]), .ZN(Q12_0_n38)
         );
  NAND2_X1 Q12_0_U102 ( .A1(A_port_y3_2[0]), .A2(port_x1_2[0]), .ZN(Q12_0_n43)
         );
  NAND2_X1 Q12_0_U101 ( .A1(A_port_y3_2[2]), .A2(port_x3_1[2]), .ZN(Q12_0_n74)
         );
  NAND2_X1 Q12_0_U100 ( .A1(port_x3_0[2]), .A2(A_port_y3_0[2]), .ZN(Q12_0_n75)
         );
  XOR2_X1 Q12_0_U99 ( .A(Q12_0_n74), .B(Q12_0_n75), .Z(Q12_0_n73) );
  NAND2_X1 Q12_0_U98 ( .A1(A_port_y3_2[1]), .A2(port_x3_1[1]), .ZN(Q12_0_n83)
         );
  NAND2_X1 Q12_0_U97 ( .A1(port_x3_0[1]), .A2(A_port_y3_0[1]), .ZN(Q12_0_n84)
         );
  XOR2_X1 Q12_0_U96 ( .A(Q12_0_n83), .B(Q12_0_n84), .Z(Q12_0_n82) );
  NAND2_X1 Q12_0_U95 ( .A1(A_port_y3_2[0]), .A2(port_x3_1[0]), .ZN(Q12_0_n92)
         );
  NAND2_X1 Q12_0_U94 ( .A1(port_x3_0[0]), .A2(A_port_y3_0[0]), .ZN(Q12_0_n93)
         );
  XOR2_X1 Q12_0_U93 ( .A(Q12_0_n92), .B(Q12_0_n93), .Z(Q12_0_n91) );
  NAND2_X1 Q12_0_U92 ( .A1(port_x1_2[2]), .A2(A_port_y3_0[2]), .ZN(Q12_0_n10)
         );
  NAND2_X1 Q12_0_U91 ( .A1(port_x1_2[1]), .A2(A_port_y3_0[1]), .ZN(Q12_0_n15)
         );
  NAND2_X1 Q12_0_U90 ( .A1(port_x1_2[0]), .A2(A_port_y3_0[0]), .ZN(Q12_0_n20)
         );
  NAND2_X1 Q12_0_U89 ( .A1(A_port_y3_1[2]), .A2(port_x3_1[2]), .ZN(Q12_0_n48)
         );
  NAND2_X1 Q12_0_U88 ( .A1(A_port_y3_1[1]), .A2(port_x3_1[1]), .ZN(Q12_0_n56)
         );
  NAND2_X1 Q12_0_U87 ( .A1(A_port_y3_1[0]), .A2(port_x3_1[0]), .ZN(Q12_0_n64)
         );
  NAND2_X1 Q12_0_U86 ( .A1(A_port_y3_1[2]), .A2(port_x1_1[2]), .ZN(Q12_0_n9)
         );
  NAND2_X1 Q12_0_U85 ( .A1(A_port_y3_1[1]), .A2(port_x1_1[1]), .ZN(Q12_0_n14)
         );
  NAND2_X1 Q12_0_U84 ( .A1(A_port_y3_1[0]), .A2(port_x1_1[0]), .ZN(Q12_0_n19)
         );
  NAND2_X1 Q12_0_U83 ( .A1(port_x1_0[2]), .A2(A_port_y3_1[2]), .ZN(Q12_0_n34)
         );
  NAND2_X1 Q12_0_U82 ( .A1(port_x1_0[1]), .A2(A_port_y3_1[1]), .ZN(Q12_0_n39)
         );
  NAND2_X1 Q12_0_U81 ( .A1(port_x1_0[0]), .A2(A_port_y3_1[0]), .ZN(Q12_0_n44)
         );
  NAND2_X1 Q12_0_U80 ( .A1(A_port_y3_2[2]), .A2(port_x1_1[2]), .ZN(Q12_0_n24)
         );
  NAND2_X1 Q12_0_U79 ( .A1(A_port_y3_2[1]), .A2(port_x1_1[1]), .ZN(Q12_0_n27)
         );
  NAND2_X1 Q12_0_U78 ( .A1(A_port_y3_2[0]), .A2(port_x1_1[0]), .ZN(Q12_0_n30)
         );
  NAND2_X1 Q12_0_U77 ( .A1(port_x3_2[2]), .A2(A_port_y3_1[2]), .ZN(Q12_0_n101)
         );
  XOR2_X1 Q12_0_U76 ( .A(Q12_0_n99), .B(Q12_0_n100), .Z(Q12_0_n98) );
  XOR2_X1 Q12_0_U75 ( .A(Q12_0_n101), .B(Q12_0_n102), .Z(Q12_0_n97) );
  XOR2_X1 Q12_0_U74 ( .A(Q12_0_n97), .B(Q12_0_n98), .Z(Q12_0_t1_0_2) );
  XOR2_X1 Q12_0_U73 ( .A(Q12_0_n24), .B(port_x1_0[2]), .Z(Q12_0_n76) );
  XOR2_X1 Q12_0_U72 ( .A(Q12_0_n72), .B(Q12_0_n73), .Z(Q12_0_n71) );
  XOR2_X1 Q12_0_U71 ( .A(Q12_0_n76), .B(Q12_0_n23), .Z(Q12_0_n70) );
  XOR2_X1 Q12_0_U70 ( .A(Q12_0_n70), .B(Q12_0_n71), .Z(Q12_0_t1_1_2) );
  NAND2_X1 Q12_0_U69 ( .A1(port_x3_1[2]), .A2(A_port_y3_0[2]), .ZN(Q12_0_n50)
         );
  XOR2_X1 Q12_0_U68 ( .A(Q12_0_n48), .B(Q12_0_n49), .Z(Q12_0_n47) );
  XOR2_X1 Q12_0_U67 ( .A(Q12_0_n50), .B(Q12_0_n51), .Z(Q12_0_n46) );
  XOR2_X1 Q12_0_U66 ( .A(Q12_0_n46), .B(Q12_0_n47), .Z(Q12_0_t1_2_2) );
  XNOR2_X1 Q12_0_U65 ( .A(port_x3_0[2]), .B(Q12_0_n24), .ZN(Q12_0_n22) );
  XOR2_X1 Q12_0_U64 ( .A(Q12_0_n22), .B(Q12_0_n23), .Z(Q12_0_t2_1_2) );
  NAND2_X1 Q12_0_U63 ( .A1(port_x1_2[2]), .A2(A_port_y3_1[2]), .ZN(Q12_0_n35)
         );
  XOR2_X1 Q12_0_U62 ( .A(Q12_0_n33), .B(Q12_0_n34), .Z(Q12_0_n32) );
  XNOR2_X1 Q12_0_U61 ( .A(port_x3_2[2]), .B(Q12_0_n35), .ZN(Q12_0_n31) );
  XOR2_X1 Q12_0_U60 ( .A(Q12_0_n31), .B(Q12_0_n32), .Z(Q12_0_t2_0_2) );
  NAND2_X1 Q12_0_U59 ( .A1(A_port_y3_0[2]), .A2(port_x1_1[2]), .ZN(Q12_0_n11)
         );
  XOR2_X1 Q12_0_U58 ( .A(Q12_0_n9), .B(Q12_0_n10), .Z(Q12_0_n8) );
  XNOR2_X1 Q12_0_U57 ( .A(port_x3_1[2]), .B(Q12_0_n11), .ZN(Q12_0_n7) );
  XOR2_X1 Q12_0_U56 ( .A(Q12_0_n7), .B(Q12_0_n8), .Z(Q12_0_t2_2_2) );
  NAND2_X1 Q12_0_U55 ( .A1(port_x1_0[2]), .A2(A_port_y3_0[2]), .ZN(Q12_0_n77)
         );
  NAND2_X1 Q12_0_U54 ( .A1(port_x1_0[2]), .A2(A_port_y3_2[2]), .ZN(Q12_0_n78)
         );
  XOR2_X1 Q12_0_U53 ( .A(Q12_0_n77), .B(Q12_0_n78), .Z(Q12_0_n23) );
  NAND2_X1 Q12_0_U52 ( .A1(port_x1_0[1]), .A2(A_port_y3_0[1]), .ZN(Q12_0_n86)
         );
  NAND2_X1 Q12_0_U51 ( .A1(port_x1_0[1]), .A2(A_port_y3_2[1]), .ZN(Q12_0_n87)
         );
  XOR2_X1 Q12_0_U50 ( .A(Q12_0_n86), .B(Q12_0_n87), .Z(Q12_0_n26) );
  NAND2_X1 Q12_0_U49 ( .A1(port_x1_0[0]), .A2(A_port_y3_0[0]), .ZN(Q12_0_n95)
         );
  NAND2_X1 Q12_0_U48 ( .A1(port_x1_0[0]), .A2(A_port_y3_2[0]), .ZN(Q12_0_n96)
         );
  XOR2_X1 Q12_0_U47 ( .A(Q12_0_n95), .B(Q12_0_n96), .Z(Q12_0_n29) );
  NAND2_X1 Q12_0_U46 ( .A1(port_x3_2[1]), .A2(A_port_y3_1[1]), .ZN(Q12_0_n109)
         );
  XOR2_X1 Q12_0_U45 ( .A(Q12_0_n107), .B(Q12_0_n108), .Z(Q12_0_n106) );
  XOR2_X1 Q12_0_U44 ( .A(Q12_0_n109), .B(Q12_0_n110), .Z(Q12_0_n105) );
  XOR2_X1 Q12_0_U43 ( .A(Q12_0_n27), .B(port_x1_0[1]), .Z(Q12_0_n85) );
  XOR2_X1 Q12_0_U42 ( .A(Q12_0_n81), .B(Q12_0_n82), .Z(Q12_0_n80) );
  XOR2_X1 Q12_0_U41 ( .A(Q12_0_n85), .B(Q12_0_n26), .Z(Q12_0_n79) );
  NAND2_X1 Q12_0_U40 ( .A1(port_x3_1[1]), .A2(A_port_y3_0[1]), .ZN(Q12_0_n58)
         );
  XOR2_X1 Q12_0_U39 ( .A(Q12_0_n56), .B(Q12_0_n57), .Z(Q12_0_n55) );
  XOR2_X1 Q12_0_U38 ( .A(Q12_0_n58), .B(Q12_0_n59), .Z(Q12_0_n54) );
  XOR2_X1 Q12_0_U37 ( .A(port_x3_0[1]), .B(Q12_0_n27), .Z(Q12_0_n25) );
  XNOR2_X1 Q12_0_U36 ( .A(Q12_0_n25), .B(Q12_0_n26), .ZN(Q12_0_t2_1_1) );
  NAND2_X1 Q12_0_U35 ( .A1(A_port_y3_0[1]), .A2(port_x1_1[1]), .ZN(Q12_0_n16)
         );
  XOR2_X1 Q12_0_U34 ( .A(Q12_0_n14), .B(Q12_0_n15), .Z(Q12_0_n13) );
  XNOR2_X1 Q12_0_U33 ( .A(port_x3_1[1]), .B(Q12_0_n16), .ZN(Q12_0_n12) );
  NAND2_X1 Q12_0_U32 ( .A1(port_x1_2[1]), .A2(A_port_y3_1[1]), .ZN(Q12_0_n40)
         );
  XOR2_X1 Q12_0_U31 ( .A(Q12_0_n38), .B(Q12_0_n39), .Z(Q12_0_n37) );
  XNOR2_X1 Q12_0_U30 ( .A(port_x3_2[1]), .B(Q12_0_n40), .ZN(Q12_0_n36) );
  NAND2_X1 Q12_0_U29 ( .A1(port_x3_2[0]), .A2(A_port_y3_1[0]), .ZN(Q12_0_n117)
         );
  XOR2_X1 Q12_0_U28 ( .A(Q12_0_n115), .B(Q12_0_n116), .Z(Q12_0_n114) );
  XOR2_X1 Q12_0_U27 ( .A(Q12_0_n117), .B(Q12_0_n118), .Z(Q12_0_n113) );
  XOR2_X1 Q12_0_U26 ( .A(Q12_0_n30), .B(port_x1_0[0]), .Z(Q12_0_n94) );
  XOR2_X1 Q12_0_U25 ( .A(Q12_0_n90), .B(Q12_0_n91), .Z(Q12_0_n89) );
  XOR2_X1 Q12_0_U24 ( .A(Q12_0_n94), .B(Q12_0_n29), .Z(Q12_0_n88) );
  NAND2_X1 Q12_0_U23 ( .A1(port_x3_1[0]), .A2(A_port_y3_0[0]), .ZN(Q12_0_n66)
         );
  XOR2_X1 Q12_0_U22 ( .A(Q12_0_n64), .B(Q12_0_n65), .Z(Q12_0_n63) );
  XOR2_X1 Q12_0_U21 ( .A(Q12_0_n66), .B(Q12_0_n67), .Z(Q12_0_n62) );
  XNOR2_X1 Q12_0_U20 ( .A(port_x3_0[0]), .B(Q12_0_n30), .ZN(Q12_0_n28) );
  NAND2_X1 Q12_0_U19 ( .A1(port_x1_2[0]), .A2(A_port_y3_1[0]), .ZN(Q12_0_n45)
         );
  XOR2_X1 Q12_0_U18 ( .A(Q12_0_n43), .B(Q12_0_n44), .Z(Q12_0_n42) );
  XNOR2_X1 Q12_0_U17 ( .A(port_x3_2[0]), .B(Q12_0_n45), .ZN(Q12_0_n41) );
  NAND2_X1 Q12_0_U16 ( .A1(A_port_y3_0[0]), .A2(port_x1_1[0]), .ZN(Q12_0_n21)
         );
  XOR2_X1 Q12_0_U15 ( .A(Q12_0_n19), .B(Q12_0_n20), .Z(Q12_0_n18) );
  XNOR2_X1 Q12_0_U14 ( .A(port_x3_1[0]), .B(Q12_0_n21), .ZN(Q12_0_n17) );
  XOR2_X1 Q12_0_U13 ( .A(Q12_0_n105), .B(Q12_0_n106), .Z(Q12_0_t1_0_1) );
  XOR2_X1 Q12_0_U12 ( .A(Q12_0_n113), .B(Q12_0_n114), .Z(Q12_0_t1_0_0) );
  XOR2_X1 Q12_0_U11 ( .A(Q12_0_n79), .B(Q12_0_n80), .Z(Q12_0_t1_1_1) );
  XOR2_X1 Q12_0_U10 ( .A(Q12_0_n88), .B(Q12_0_n89), .Z(Q12_0_t1_1_0) );
  XOR2_X1 Q12_0_U9 ( .A(Q12_0_n54), .B(Q12_0_n55), .Z(Q12_0_t1_2_1) );
  XOR2_X1 Q12_0_U8 ( .A(Q12_0_n62), .B(Q12_0_n63), .Z(Q12_0_t1_2_0) );
  XOR2_X1 Q12_0_U7 ( .A(Q12_0_n36), .B(Q12_0_n37), .Z(Q12_0_t2_0_1) );
  XOR2_X1 Q12_0_U6 ( .A(Q12_0_n41), .B(Q12_0_n42), .Z(Q12_0_t2_0_0) );
  XOR2_X1 Q12_0_U5 ( .A(Q12_0_n28), .B(Q12_0_n29), .Z(Q12_0_t2_1_0) );
  XOR2_X1 Q12_0_U4 ( .A(Q12_0_n12), .B(Q12_0_n13), .Z(Q12_0_t2_2_1) );
  XOR2_X1 Q12_0_U3 ( .A(Q12_0_n17), .B(Q12_0_n18), .Z(Q12_0_t2_2_0) );
  DFF_X1 Q12_0_reg_y3_2_reg_0_ ( .D(A_port_y3_0[0]), .CK(clk), .Q(
        Q12_0_port_y3_2[0]), .QN() );
  DFF_X1 Q12_0_reg_y3_2_reg_1_ ( .D(A_port_y3_0[1]), .CK(clk), .Q(
        Q12_0_port_y3_2[1]), .QN() );
  DFF_X1 Q12_0_reg_y3_2_reg_2_ ( .D(A_port_y3_0[2]), .CK(clk), .Q(
        Q12_0_port_y3_2[2]), .QN() );
  DFF_X1 Q12_0_reg_y3_1_reg_0_ ( .D(A_port_y3_2[0]), .CK(clk), .Q(
        Q12_0_port_y3_1[0]), .QN() );
  DFF_X1 Q12_0_reg_y3_1_reg_1_ ( .D(A_port_y3_2[1]), .CK(clk), .Q(
        Q12_0_port_y3_1[1]), .QN() );
  DFF_X1 Q12_0_reg_y3_1_reg_2_ ( .D(A_port_y3_2[2]), .CK(clk), .Q(
        Q12_0_port_y3_1[2]), .QN() );
  DFF_X1 Q12_0_reg_y3_0_reg_0_ ( .D(A_port_y3_1[0]), .CK(clk), .Q(
        Q12_0_port_y3_0[0]), .QN() );
  DFF_X1 Q12_0_reg_y3_0_reg_1_ ( .D(A_port_y3_1[1]), .CK(clk), .Q(
        Q12_0_port_y3_0[1]), .QN() );
  DFF_X1 Q12_0_reg_y3_0_reg_2_ ( .D(A_port_y3_1[2]), .CK(clk), .Q(
        Q12_0_port_y3_0[2]), .QN() );
  DFF_X1 Q12_0_reg_y2_2_reg_0_ ( .D(Q12_0_maj_47_port_o), .CK(clk), .Q(
        Q12_0_port_y2_2[0]), .QN() );
  DFF_X1 Q12_0_reg_y2_2_reg_1_ ( .D(Q12_0_maj_50_port_o), .CK(clk), .Q(
        Q12_0_port_y2_2[1]), .QN() );
  DFF_X1 Q12_0_reg_y2_2_reg_2_ ( .D(Q12_0_maj_53_port_o), .CK(clk), .Q(
        Q12_0_port_y2_2[2]), .QN() );
  DFF_X1 Q12_0_reg_y2_1_reg_0_ ( .D(Q12_0_maj_46_port_o), .CK(clk), .Q(
        Q12_0_port_y2_1[0]), .QN() );
  DFF_X1 Q12_0_reg_y2_1_reg_1_ ( .D(Q12_0_maj_49_port_o), .CK(clk), .Q(
        Q12_0_port_y2_1[1]), .QN() );
  DFF_X1 Q12_0_reg_y2_1_reg_2_ ( .D(Q12_0_maj_52_port_o), .CK(clk), .Q(
        Q12_0_port_y2_1[2]), .QN() );
  DFF_X1 Q12_0_reg_y2_0_reg_0_ ( .D(Q12_0_maj_45_port_o), .CK(clk), .Q(
        Q12_0_port_y2_0[0]), .QN() );
  DFF_X1 Q12_0_reg_y2_0_reg_1_ ( .D(Q12_0_maj_48_port_o), .CK(clk), .Q(
        Q12_0_port_y2_0[1]), .QN() );
  DFF_X1 Q12_0_reg_y2_0_reg_2_ ( .D(Q12_0_maj_51_port_o), .CK(clk), .Q(
        Q12_0_port_y2_0[2]), .QN() );
  DFF_X1 Q12_0_reg_y1_2_reg_0_ ( .D(Q12_0_maj_38_port_o), .CK(clk), .Q(
        Q12_0_port_y1_2[0]), .QN() );
  DFF_X1 Q12_0_reg_y1_2_reg_1_ ( .D(Q12_0_maj_41_port_o), .CK(clk), .Q(
        Q12_0_port_y1_2[1]), .QN() );
  DFF_X1 Q12_0_reg_y1_2_reg_2_ ( .D(Q12_0_maj_44_port_o), .CK(clk), .Q(
        Q12_0_port_y1_2[2]), .QN() );
  DFF_X1 Q12_0_reg_y1_1_reg_0_ ( .D(Q12_0_maj_37_port_o), .CK(clk), .Q(
        Q12_0_port_y1_1[0]), .QN() );
  DFF_X1 Q12_0_reg_y1_1_reg_1_ ( .D(Q12_0_maj_40_port_o), .CK(clk), .Q(
        Q12_0_port_y1_1[1]), .QN() );
  DFF_X1 Q12_0_reg_y1_1_reg_2_ ( .D(Q12_0_maj_43_port_o), .CK(clk), .Q(
        Q12_0_port_y1_1[2]), .QN() );
  DFF_X1 Q12_0_reg_y1_0_reg_0_ ( .D(Q12_0_maj_36_port_o), .CK(clk), .Q(
        Q12_0_port_y1_0[0]), .QN() );
  DFF_X1 Q12_0_reg_y1_0_reg_1_ ( .D(Q12_0_maj_39_port_o), .CK(clk), .Q(
        Q12_0_port_y1_0[1]), .QN() );
  DFF_X1 Q12_0_reg_y1_0_reg_2_ ( .D(Q12_0_maj_42_port_o), .CK(clk), .Q(
        Q12_0_port_y1_0[2]), .QN() );
  DFF_X1 Q12_0_reg_y0_2_reg_0_ ( .D(port_x0_1[0]), .CK(clk), .Q(
        Q12_0_port_y0_2[0]), .QN() );
  DFF_X1 Q12_0_reg_y0_2_reg_1_ ( .D(port_x0_1[1]), .CK(clk), .Q(
        Q12_0_port_y0_2[1]), .QN() );
  DFF_X1 Q12_0_reg_y0_2_reg_2_ ( .D(port_x0_1[2]), .CK(clk), .Q(
        Q12_0_port_y0_2[2]), .QN() );
  DFF_X1 Q12_0_reg_y0_1_reg_0_ ( .D(port_x0_0[0]), .CK(clk), .Q(
        Q12_0_port_y0_1[0]), .QN() );
  DFF_X1 Q12_0_reg_y0_1_reg_1_ ( .D(port_x0_0[1]), .CK(clk), .Q(
        Q12_0_port_y0_1[1]), .QN() );
  DFF_X1 Q12_0_reg_y0_1_reg_2_ ( .D(port_x0_0[2]), .CK(clk), .Q(
        Q12_0_port_y0_1[2]), .QN() );
  DFF_X1 Q12_0_reg_y0_0_reg_0_ ( .D(port_x0_2[0]), .CK(clk), .Q(
        Q12_0_port_y0_0[0]), .QN() );
  DFF_X1 Q12_0_reg_y0_0_reg_1_ ( .D(port_x0_2[1]), .CK(clk), .Q(
        Q12_0_port_y0_0[1]), .QN() );
  DFF_X1 Q12_0_reg_y0_0_reg_2_ ( .D(port_x0_2[2]), .CK(clk), .Q(
        Q12_0_port_y0_0[2]), .QN() );
  OR2_X1 Q12_0_maj_36_U4 ( .A1(Q12_0_t1_0_1), .A2(Q12_0_t1_0_0), .ZN(
        Q12_0_maj_36_n3) );
  NAND2_X1 Q12_0_maj_36_U3 ( .A1(Q12_0_t1_0_1), .A2(Q12_0_t1_0_0), .ZN(
        Q12_0_maj_36_n1) );
  NAND2_X1 Q12_0_maj_36_U2 ( .A1(Q12_0_t1_0_2), .A2(Q12_0_maj_36_n3), .ZN(
        Q12_0_maj_36_n2) );
  NAND2_X1 Q12_0_maj_36_U1 ( .A1(Q12_0_maj_36_n1), .A2(Q12_0_maj_36_n2), .ZN(
        Q12_0_maj_36_port_o) );
  OR2_X1 Q12_0_maj_37_U4 ( .A1(Q12_0_t1_1_1), .A2(Q12_0_t1_1_0), .ZN(
        Q12_0_maj_37_n4) );
  NAND2_X1 Q12_0_maj_37_U3 ( .A1(Q12_0_t1_1_1), .A2(Q12_0_t1_1_0), .ZN(
        Q12_0_maj_37_n6) );
  NAND2_X1 Q12_0_maj_37_U2 ( .A1(Q12_0_t1_1_2), .A2(Q12_0_maj_37_n4), .ZN(
        Q12_0_maj_37_n5) );
  NAND2_X1 Q12_0_maj_37_U1 ( .A1(Q12_0_maj_37_n6), .A2(Q12_0_maj_37_n5), .ZN(
        Q12_0_maj_37_port_o) );
  OR2_X1 Q12_0_maj_38_U4 ( .A1(Q12_0_t1_2_1), .A2(Q12_0_t1_2_0), .ZN(
        Q12_0_maj_38_n4) );
  NAND2_X1 Q12_0_maj_38_U3 ( .A1(Q12_0_t1_2_1), .A2(Q12_0_t1_2_0), .ZN(
        Q12_0_maj_38_n6) );
  NAND2_X1 Q12_0_maj_38_U2 ( .A1(Q12_0_t1_2_2), .A2(Q12_0_maj_38_n4), .ZN(
        Q12_0_maj_38_n5) );
  NAND2_X1 Q12_0_maj_38_U1 ( .A1(Q12_0_maj_38_n6), .A2(Q12_0_maj_38_n5), .ZN(
        Q12_0_maj_38_port_o) );
  OR2_X1 Q12_0_maj_39_U4 ( .A1(Q12_0_t1_0_1), .A2(Q12_0_t1_0_0), .ZN(
        Q12_0_maj_39_n4) );
  NAND2_X1 Q12_0_maj_39_U3 ( .A1(Q12_0_t1_0_1), .A2(Q12_0_t1_0_0), .ZN(
        Q12_0_maj_39_n6) );
  NAND2_X1 Q12_0_maj_39_U2 ( .A1(Q12_0_t1_0_2), .A2(Q12_0_maj_39_n4), .ZN(
        Q12_0_maj_39_n5) );
  NAND2_X1 Q12_0_maj_39_U1 ( .A1(Q12_0_maj_39_n6), .A2(Q12_0_maj_39_n5), .ZN(
        Q12_0_maj_39_port_o) );
  OR2_X1 Q12_0_maj_40_U4 ( .A1(Q12_0_t1_1_1), .A2(Q12_0_t1_1_0), .ZN(
        Q12_0_maj_40_n4) );
  NAND2_X1 Q12_0_maj_40_U3 ( .A1(Q12_0_t1_1_1), .A2(Q12_0_t1_1_0), .ZN(
        Q12_0_maj_40_n6) );
  NAND2_X1 Q12_0_maj_40_U2 ( .A1(Q12_0_t1_1_2), .A2(Q12_0_maj_40_n4), .ZN(
        Q12_0_maj_40_n5) );
  NAND2_X1 Q12_0_maj_40_U1 ( .A1(Q12_0_maj_40_n6), .A2(Q12_0_maj_40_n5), .ZN(
        Q12_0_maj_40_port_o) );
  OR2_X1 Q12_0_maj_41_U4 ( .A1(Q12_0_t1_2_1), .A2(Q12_0_t1_2_0), .ZN(
        Q12_0_maj_41_n4) );
  NAND2_X1 Q12_0_maj_41_U3 ( .A1(Q12_0_t1_2_1), .A2(Q12_0_t1_2_0), .ZN(
        Q12_0_maj_41_n6) );
  NAND2_X1 Q12_0_maj_41_U2 ( .A1(Q12_0_t1_2_2), .A2(Q12_0_maj_41_n4), .ZN(
        Q12_0_maj_41_n5) );
  NAND2_X1 Q12_0_maj_41_U1 ( .A1(Q12_0_maj_41_n6), .A2(Q12_0_maj_41_n5), .ZN(
        Q12_0_maj_41_port_o) );
  OR2_X1 Q12_0_maj_42_U4 ( .A1(Q12_0_t1_0_1), .A2(Q12_0_t1_0_0), .ZN(
        Q12_0_maj_42_n4) );
  NAND2_X1 Q12_0_maj_42_U3 ( .A1(Q12_0_t1_0_1), .A2(Q12_0_t1_0_0), .ZN(
        Q12_0_maj_42_n6) );
  NAND2_X1 Q12_0_maj_42_U2 ( .A1(Q12_0_t1_0_2), .A2(Q12_0_maj_42_n4), .ZN(
        Q12_0_maj_42_n5) );
  NAND2_X1 Q12_0_maj_42_U1 ( .A1(Q12_0_maj_42_n6), .A2(Q12_0_maj_42_n5), .ZN(
        Q12_0_maj_42_port_o) );
  OR2_X1 Q12_0_maj_43_U4 ( .A1(Q12_0_t1_1_1), .A2(Q12_0_t1_1_0), .ZN(
        Q12_0_maj_43_n4) );
  NAND2_X1 Q12_0_maj_43_U3 ( .A1(Q12_0_t1_1_1), .A2(Q12_0_t1_1_0), .ZN(
        Q12_0_maj_43_n6) );
  NAND2_X1 Q12_0_maj_43_U2 ( .A1(Q12_0_t1_1_2), .A2(Q12_0_maj_43_n4), .ZN(
        Q12_0_maj_43_n5) );
  NAND2_X1 Q12_0_maj_43_U1 ( .A1(Q12_0_maj_43_n6), .A2(Q12_0_maj_43_n5), .ZN(
        Q12_0_maj_43_port_o) );
  OR2_X1 Q12_0_maj_44_U4 ( .A1(Q12_0_t1_2_1), .A2(Q12_0_t1_2_0), .ZN(
        Q12_0_maj_44_n4) );
  NAND2_X1 Q12_0_maj_44_U3 ( .A1(Q12_0_t1_2_1), .A2(Q12_0_t1_2_0), .ZN(
        Q12_0_maj_44_n6) );
  NAND2_X1 Q12_0_maj_44_U2 ( .A1(Q12_0_t1_2_2), .A2(Q12_0_maj_44_n4), .ZN(
        Q12_0_maj_44_n5) );
  NAND2_X1 Q12_0_maj_44_U1 ( .A1(Q12_0_maj_44_n6), .A2(Q12_0_maj_44_n5), .ZN(
        Q12_0_maj_44_port_o) );
  OR2_X1 Q12_0_maj_45_U4 ( .A1(Q12_0_t2_0_1), .A2(Q12_0_t2_0_0), .ZN(
        Q12_0_maj_45_n4) );
  NAND2_X1 Q12_0_maj_45_U3 ( .A1(Q12_0_t2_0_1), .A2(Q12_0_t2_0_0), .ZN(
        Q12_0_maj_45_n6) );
  NAND2_X1 Q12_0_maj_45_U2 ( .A1(Q12_0_t2_0_2), .A2(Q12_0_maj_45_n4), .ZN(
        Q12_0_maj_45_n5) );
  NAND2_X1 Q12_0_maj_45_U1 ( .A1(Q12_0_maj_45_n6), .A2(Q12_0_maj_45_n5), .ZN(
        Q12_0_maj_45_port_o) );
  OR2_X1 Q12_0_maj_46_U4 ( .A1(Q12_0_t2_1_1), .A2(Q12_0_t2_1_0), .ZN(
        Q12_0_maj_46_n4) );
  NAND2_X1 Q12_0_maj_46_U3 ( .A1(Q12_0_t2_1_1), .A2(Q12_0_t2_1_0), .ZN(
        Q12_0_maj_46_n6) );
  NAND2_X1 Q12_0_maj_46_U2 ( .A1(Q12_0_t2_1_2), .A2(Q12_0_maj_46_n4), .ZN(
        Q12_0_maj_46_n5) );
  NAND2_X1 Q12_0_maj_46_U1 ( .A1(Q12_0_maj_46_n6), .A2(Q12_0_maj_46_n5), .ZN(
        Q12_0_maj_46_port_o) );
  OR2_X1 Q12_0_maj_47_U4 ( .A1(Q12_0_t2_2_1), .A2(Q12_0_t2_2_0), .ZN(
        Q12_0_maj_47_n4) );
  NAND2_X1 Q12_0_maj_47_U3 ( .A1(Q12_0_t2_2_1), .A2(Q12_0_t2_2_0), .ZN(
        Q12_0_maj_47_n6) );
  NAND2_X1 Q12_0_maj_47_U2 ( .A1(Q12_0_t2_2_2), .A2(Q12_0_maj_47_n4), .ZN(
        Q12_0_maj_47_n5) );
  NAND2_X1 Q12_0_maj_47_U1 ( .A1(Q12_0_maj_47_n6), .A2(Q12_0_maj_47_n5), .ZN(
        Q12_0_maj_47_port_o) );
  OR2_X1 Q12_0_maj_48_U4 ( .A1(Q12_0_t2_0_1), .A2(Q12_0_t2_0_0), .ZN(
        Q12_0_maj_48_n4) );
  NAND2_X1 Q12_0_maj_48_U3 ( .A1(Q12_0_t2_0_1), .A2(Q12_0_t2_0_0), .ZN(
        Q12_0_maj_48_n6) );
  NAND2_X1 Q12_0_maj_48_U2 ( .A1(Q12_0_t2_0_2), .A2(Q12_0_maj_48_n4), .ZN(
        Q12_0_maj_48_n5) );
  NAND2_X1 Q12_0_maj_48_U1 ( .A1(Q12_0_maj_48_n6), .A2(Q12_0_maj_48_n5), .ZN(
        Q12_0_maj_48_port_o) );
  OR2_X1 Q12_0_maj_49_U4 ( .A1(Q12_0_t2_1_1), .A2(Q12_0_t2_1_0), .ZN(
        Q12_0_maj_49_n4) );
  NAND2_X1 Q12_0_maj_49_U3 ( .A1(Q12_0_t2_1_1), .A2(Q12_0_t2_1_0), .ZN(
        Q12_0_maj_49_n6) );
  NAND2_X1 Q12_0_maj_49_U2 ( .A1(Q12_0_t2_1_2), .A2(Q12_0_maj_49_n4), .ZN(
        Q12_0_maj_49_n5) );
  NAND2_X1 Q12_0_maj_49_U1 ( .A1(Q12_0_maj_49_n6), .A2(Q12_0_maj_49_n5), .ZN(
        Q12_0_maj_49_port_o) );
  OR2_X1 Q12_0_maj_50_U4 ( .A1(Q12_0_t2_2_1), .A2(Q12_0_t2_2_0), .ZN(
        Q12_0_maj_50_n4) );
  NAND2_X1 Q12_0_maj_50_U3 ( .A1(Q12_0_t2_2_1), .A2(Q12_0_t2_2_0), .ZN(
        Q12_0_maj_50_n6) );
  NAND2_X1 Q12_0_maj_50_U2 ( .A1(Q12_0_t2_2_2), .A2(Q12_0_maj_50_n4), .ZN(
        Q12_0_maj_50_n5) );
  NAND2_X1 Q12_0_maj_50_U1 ( .A1(Q12_0_maj_50_n6), .A2(Q12_0_maj_50_n5), .ZN(
        Q12_0_maj_50_port_o) );
  OR2_X1 Q12_0_maj_51_U4 ( .A1(Q12_0_t2_0_1), .A2(Q12_0_t2_0_0), .ZN(
        Q12_0_maj_51_n4) );
  NAND2_X1 Q12_0_maj_51_U3 ( .A1(Q12_0_t2_0_1), .A2(Q12_0_t2_0_0), .ZN(
        Q12_0_maj_51_n6) );
  NAND2_X1 Q12_0_maj_51_U2 ( .A1(Q12_0_t2_0_2), .A2(Q12_0_maj_51_n4), .ZN(
        Q12_0_maj_51_n5) );
  NAND2_X1 Q12_0_maj_51_U1 ( .A1(Q12_0_maj_51_n6), .A2(Q12_0_maj_51_n5), .ZN(
        Q12_0_maj_51_port_o) );
  OR2_X1 Q12_0_maj_52_U4 ( .A1(Q12_0_t2_1_1), .A2(Q12_0_t2_1_0), .ZN(
        Q12_0_maj_52_n4) );
  NAND2_X1 Q12_0_maj_52_U3 ( .A1(Q12_0_t2_1_1), .A2(Q12_0_t2_1_0), .ZN(
        Q12_0_maj_52_n6) );
  NAND2_X1 Q12_0_maj_52_U2 ( .A1(Q12_0_t2_1_2), .A2(Q12_0_maj_52_n4), .ZN(
        Q12_0_maj_52_n5) );
  NAND2_X1 Q12_0_maj_52_U1 ( .A1(Q12_0_maj_52_n6), .A2(Q12_0_maj_52_n5), .ZN(
        Q12_0_maj_52_port_o) );
  OR2_X1 Q12_0_maj_53_U4 ( .A1(Q12_0_t2_2_1), .A2(Q12_0_t2_2_0), .ZN(
        Q12_0_maj_53_n4) );
  NAND2_X1 Q12_0_maj_53_U3 ( .A1(Q12_0_t2_2_1), .A2(Q12_0_t2_2_0), .ZN(
        Q12_0_maj_53_n6) );
  NAND2_X1 Q12_0_maj_53_U2 ( .A1(Q12_0_t2_2_2), .A2(Q12_0_maj_53_n4), .ZN(
        Q12_0_maj_53_n5) );
  NAND2_X1 Q12_0_maj_53_U1 ( .A1(Q12_0_maj_53_n6), .A2(Q12_0_maj_53_n5), .ZN(
        Q12_0_maj_53_port_o) );
  XOR2_X1 A_prime_U27 ( .A(Q12_0_port_y2_2[2]), .B(Q12_0_port_y0_2[2]), .Z(
        A_prime_n4) );
  XOR2_X1 A_prime_U26 ( .A(Q12_0_port_y2_2[1]), .B(Q12_0_port_y0_2[1]), .Z(
        A_prime_n5) );
  XOR2_X1 A_prime_U25 ( .A(Q12_0_port_y2_2[0]), .B(Q12_0_port_y0_2[0]), .Z(
        A_prime_n6) );
  XOR2_X1 A_prime_U24 ( .A(Q12_0_port_y2_1[2]), .B(Q12_0_port_y0_1[2]), .Z(
        A_prime_n7) );
  XOR2_X1 A_prime_U23 ( .A(Q12_0_port_y2_1[1]), .B(Q12_0_port_y0_1[1]), .Z(
        A_prime_n8) );
  XOR2_X1 A_prime_U22 ( .A(Q12_0_port_y2_1[0]), .B(Q12_0_port_y0_1[0]), .Z(
        A_prime_n9) );
  XOR2_X1 A_prime_U21 ( .A(Q12_0_port_y2_0[2]), .B(Q12_0_port_y0_0[2]), .Z(
        A_prime_n1) );
  XOR2_X1 A_prime_U20 ( .A(Q12_0_port_y2_0[1]), .B(Q12_0_port_y0_0[1]), .Z(
        A_prime_n2) );
  XOR2_X1 A_prime_U19 ( .A(Q12_0_port_y2_0[0]), .B(Q12_0_port_y0_0[0]), .Z(
        A_prime_n3) );
  XOR2_X1 A_prime_U18 ( .A(Q12_0_port_y3_2[2]), .B(A_prime_n4), .Z(
        A_prime_port_y0_1_2_) );
  XOR2_X1 A_prime_U17 ( .A(Q12_0_port_y3_2[1]), .B(A_prime_n5), .Z(
        A_prime_port_y0_1_1_) );
  XOR2_X1 A_prime_U16 ( .A(Q12_0_port_y3_2[0]), .B(A_prime_n6), .Z(
        A_prime_port_y0_1_0_) );
  XOR2_X1 A_prime_U15 ( .A(Q12_0_port_y3_0[2]), .B(A_prime_n1), .Z(
        A_prime_port_y0_2_2_) );
  XOR2_X1 A_prime_U14 ( .A(Q12_0_port_y3_0[1]), .B(A_prime_n2), .Z(
        A_prime_port_y0_2_1_) );
  XOR2_X1 A_prime_U13 ( .A(Q12_0_port_y3_0[0]), .B(A_prime_n3), .Z(
        A_prime_port_y0_2_0_) );
  XOR2_X1 A_prime_U12 ( .A(Q12_0_port_y3_1[2]), .B(A_prime_n7), .Z(
        A_prime_port_y0_0_2_) );
  XOR2_X1 A_prime_U11 ( .A(Q12_0_port_y3_1[1]), .B(A_prime_n8), .Z(
        A_prime_port_y0_0_1_) );
  XOR2_X1 A_prime_U10 ( .A(Q12_0_port_y3_1[0]), .B(A_prime_n9), .Z(
        A_prime_port_y0_0_0_) );
  XOR2_X1 A_prime_U9 ( .A(Q12_0_port_y0_0[2]), .B(Q12_0_port_y1_0[2]), .Z(
        A_prime_port_y3_2_2_) );
  XOR2_X1 A_prime_U8 ( .A(Q12_0_port_y0_0[1]), .B(Q12_0_port_y1_0[1]), .Z(
        A_prime_port_y3_2_1_) );
  XOR2_X1 A_prime_U7 ( .A(Q12_0_port_y0_0[0]), .B(Q12_0_port_y1_0[0]), .Z(
        A_prime_port_y3_2_0_) );
  XOR2_X1 A_prime_U6 ( .A(Q12_0_port_y0_1[2]), .B(Q12_0_port_y1_1[2]), .Z(
        A_prime_port_y3_0_2_) );
  XOR2_X1 A_prime_U5 ( .A(Q12_0_port_y0_1[1]), .B(Q12_0_port_y1_1[1]), .Z(
        A_prime_port_y3_0_1_) );
  XOR2_X1 A_prime_U4 ( .A(Q12_0_port_y0_1[0]), .B(Q12_0_port_y1_1[0]), .Z(
        A_prime_port_y3_0_0_) );
  XOR2_X1 A_prime_U3 ( .A(Q12_0_port_y0_2[2]), .B(Q12_0_port_y1_2[2]), .Z(
        A_prime_port_y3_1_2_) );
  XOR2_X1 A_prime_U2 ( .A(Q12_0_port_y0_2[1]), .B(Q12_0_port_y1_2[1]), .Z(
        A_prime_port_y3_1_1_) );
  XOR2_X1 A_prime_U1 ( .A(Q12_0_port_y0_2[0]), .B(Q12_0_port_y1_2[0]), .Z(
        A_prime_port_y3_1_0_) );
  NAND2_X1 Q12_1_U140 ( .A1(Q12_0_port_y2_0[2]), .A2(Q12_0_port_y3_0[2]), .ZN(
        Q12_1_n191) );
  NAND2_X1 Q12_1_U139 ( .A1(Q12_0_port_y3_2[2]), .A2(Q12_0_port_y1_1[2]), .ZN(
        Q12_1_n208) );
  NAND2_X1 Q12_1_U138 ( .A1(Q12_0_port_y2_1[2]), .A2(Q12_0_port_y3_1[2]), .ZN(
        Q12_1_n140) );
  NAND2_X1 Q12_1_U137 ( .A1(Q12_0_port_y3_1[2]), .A2(Q12_0_port_y2_0[2]), .ZN(
        Q12_1_n193) );
  NAND2_X1 Q12_1_U136 ( .A1(Q12_0_port_y3_1[2]), .A2(Q12_0_port_y1_0[2]), .ZN(
        Q12_1_n231) );
  NAND2_X1 Q12_1_U135 ( .A1(Q12_0_port_y2_2[2]), .A2(Q12_0_port_y3_1[2]), .ZN(
        Q12_1_n141) );
  NAND2_X1 Q12_1_U134 ( .A1(Q12_0_port_y3_0[2]), .A2(Q12_0_port_y1_0[2]), .ZN(
        Q12_1_n229) );
  XOR2_X1 Q12_1_U133 ( .A(Q12_1_n231), .B(Q12_1_n230), .Z(Q12_1_n232) );
  XNOR2_X1 Q12_1_U132 ( .A(Q12_0_port_y2_0[2]), .B(Q12_1_n229), .ZN(Q12_1_n233) );
  XOR2_X1 Q12_1_U131 ( .A(Q12_1_n233), .B(Q12_1_n232), .Z(Q12_1_t2_2_2) );
  NAND2_X1 Q12_1_U130 ( .A1(Q12_0_port_y1_1[2]), .A2(Q12_0_port_y3_1[2]), .ZN(
        Q12_1_n206) );
  XOR2_X1 Q12_1_U129 ( .A(Q12_1_n208), .B(Q12_1_n207), .Z(Q12_1_n209) );
  XNOR2_X1 Q12_1_U128 ( .A(Q12_0_port_y2_1[2]), .B(Q12_1_n206), .ZN(Q12_1_n210) );
  XOR2_X1 Q12_1_U127 ( .A(Q12_1_n210), .B(Q12_1_n209), .Z(Q12_1_t2_0_2) );
  XNOR2_X1 Q12_1_U126 ( .A(Q12_0_port_y2_2[2]), .B(Q12_1_n216), .ZN(Q12_1_n218) );
  XOR2_X1 Q12_1_U125 ( .A(Q12_1_n218), .B(Q12_1_n217), .Z(Q12_1_t2_1_2) );
  NAND2_X1 Q12_1_U124 ( .A1(Q12_0_port_y2_0[1]), .A2(Q12_0_port_y3_0[1]), .ZN(
        Q12_1_n183) );
  NAND2_X1 Q12_1_U123 ( .A1(Q12_0_port_y3_2[1]), .A2(Q12_0_port_y1_1[1]), .ZN(
        Q12_1_n203) );
  NAND2_X1 Q12_1_U122 ( .A1(Q12_0_port_y2_0[0]), .A2(Q12_0_port_y3_0[0]), .ZN(
        Q12_1_n175) );
  NAND2_X1 Q12_1_U121 ( .A1(Q12_0_port_y2_1[1]), .A2(Q12_0_port_y3_1[1]), .ZN(
        Q12_1_n132) );
  XOR2_X1 Q12_1_U120 ( .A(Q12_1_n216), .B(Q12_0_port_y1_2[2]), .Z(Q12_1_n165)
         );
  NAND2_X1 Q12_1_U119 ( .A1(Q12_0_port_y3_2[0]), .A2(Q12_0_port_y1_1[0]), .ZN(
        Q12_1_n198) );
  NAND2_X1 Q12_1_U118 ( .A1(Q12_0_port_y3_1[1]), .A2(Q12_0_port_y1_0[1]), .ZN(
        Q12_1_n226) );
  NAND2_X1 Q12_1_U117 ( .A1(Q12_0_port_y2_2[2]), .A2(Q12_0_port_y3_0[2]), .ZN(
        Q12_1_n166) );
  NAND2_X1 Q12_1_U116 ( .A1(Q12_0_port_y3_2[2]), .A2(Q12_0_port_y2_0[2]), .ZN(
        Q12_1_n167) );
  XOR2_X1 Q12_1_U115 ( .A(Q12_1_n167), .B(Q12_1_n166), .Z(Q12_1_n168) );
  NAND2_X1 Q12_1_U114 ( .A1(Q12_0_port_y2_1[1]), .A2(Q12_0_port_y3_0[1]), .ZN(
        Q12_1_n184) );
  NAND2_X1 Q12_1_U113 ( .A1(Q12_0_port_y2_1[0]), .A2(Q12_0_port_y3_1[0]), .ZN(
        Q12_1_n124) );
  NAND2_X1 Q12_1_U112 ( .A1(Q12_0_port_y3_2[2]), .A2(Q12_0_port_y1_0[2]), .ZN(
        Q12_1_n216) );
  NAND2_X1 Q12_1_U111 ( .A1(Q12_0_port_y3_1[0]), .A2(Q12_0_port_y1_0[0]), .ZN(
        Q12_1_n221) );
  NAND2_X1 Q12_1_U110 ( .A1(Q12_0_port_y2_1[0]), .A2(Q12_0_port_y3_0[0]), .ZN(
        Q12_1_n176) );
  NAND2_X1 Q12_1_U109 ( .A1(Q12_0_port_y2_2[1]), .A2(Q12_0_port_y3_1[1]), .ZN(
        Q12_1_n133) );
  NAND2_X1 Q12_1_U108 ( .A1(Q12_0_port_y2_2[0]), .A2(Q12_0_port_y3_1[0]), .ZN(
        Q12_1_n125) );
  NAND2_X1 Q12_1_U107 ( .A1(Q12_0_port_y1_1[2]), .A2(Q12_0_port_y3_0[2]), .ZN(
        Q12_1_n230) );
  NAND2_X1 Q12_1_U106 ( .A1(Q12_0_port_y1_2[2]), .A2(Q12_0_port_y3_1[2]), .ZN(
        Q12_1_n207) );
  NAND2_X1 Q12_1_U105 ( .A1(Q12_0_port_y1_2[2]), .A2(Q12_0_port_y3_2[2]), .ZN(
        Q12_1_n163) );
  NAND2_X1 Q12_1_U104 ( .A1(Q12_0_port_y1_2[2]), .A2(Q12_0_port_y3_0[2]), .ZN(
        Q12_1_n164) );
  XOR2_X1 Q12_1_U103 ( .A(Q12_1_n164), .B(Q12_1_n163), .Z(Q12_1_n217) );
  NAND2_X1 Q12_1_U102 ( .A1(Q12_0_port_y3_0[1]), .A2(Q12_0_port_y1_0[1]), .ZN(
        Q12_1_n224) );
  XOR2_X1 Q12_1_U101 ( .A(Q12_1_n226), .B(Q12_1_n225), .Z(Q12_1_n227) );
  XNOR2_X1 Q12_1_U100 ( .A(Q12_0_port_y2_0[1]), .B(Q12_1_n224), .ZN(Q12_1_n228) );
  NAND2_X1 Q12_1_U99 ( .A1(Q12_0_port_y2_2[2]), .A2(Q12_0_port_y3_2[2]), .ZN(
        Q12_1_n169) );
  XOR2_X1 Q12_1_U98 ( .A(Q12_1_n165), .B(Q12_1_n217), .Z(Q12_1_n171) );
  XOR2_X1 Q12_1_U97 ( .A(Q12_1_n169), .B(Q12_1_n168), .Z(Q12_1_n170) );
  XOR2_X1 Q12_1_U96 ( .A(Q12_1_n171), .B(Q12_1_n170), .Z(Q12_1_t1_1_2) );
  NAND2_X1 Q12_1_U95 ( .A1(Q12_0_port_y3_0[0]), .A2(Q12_0_port_y1_0[0]), .ZN(
        Q12_1_n219) );
  XOR2_X1 Q12_1_U94 ( .A(Q12_1_n221), .B(Q12_1_n220), .Z(Q12_1_n222) );
  XNOR2_X1 Q12_1_U93 ( .A(Q12_0_port_y2_0[0]), .B(Q12_1_n219), .ZN(Q12_1_n223)
         );
  NAND2_X1 Q12_1_U92 ( .A1(Q12_0_port_y1_1[1]), .A2(Q12_0_port_y3_1[1]), .ZN(
        Q12_1_n201) );
  XOR2_X1 Q12_1_U91 ( .A(Q12_1_n203), .B(Q12_1_n202), .Z(Q12_1_n204) );
  XNOR2_X1 Q12_1_U90 ( .A(Q12_0_port_y2_1[1]), .B(Q12_1_n201), .ZN(Q12_1_n205)
         );
  XOR2_X1 Q12_1_U89 ( .A(Q12_0_port_y2_2[1]), .B(Q12_1_n214), .Z(Q12_1_n25) );
  XNOR2_X1 Q12_1_U88 ( .A(Q12_1_n25), .B(Q12_1_n215), .ZN(Q12_1_t2_1_1) );
  NAND2_X1 Q12_1_U87 ( .A1(Q12_0_port_y1_1[0]), .A2(Q12_0_port_y3_1[0]), .ZN(
        Q12_1_n196) );
  XOR2_X1 Q12_1_U86 ( .A(Q12_1_n198), .B(Q12_1_n197), .Z(Q12_1_n199) );
  XNOR2_X1 Q12_1_U85 ( .A(Q12_0_port_y2_1[0]), .B(Q12_1_n196), .ZN(Q12_1_n200)
         );
  XNOR2_X1 Q12_1_U84 ( .A(Q12_0_port_y2_2[0]), .B(Q12_1_n211), .ZN(Q12_1_n213)
         );
  XOR2_X1 Q12_1_U83 ( .A(Q12_1_n214), .B(Q12_0_port_y1_2[1]), .Z(Q12_1_n156)
         );
  NAND2_X1 Q12_1_U82 ( .A1(Q12_0_port_y3_2[1]), .A2(Q12_0_port_y1_0[1]), .ZN(
        Q12_1_n214) );
  NAND2_X1 Q12_1_U81 ( .A1(Q12_0_port_y2_2[1]), .A2(Q12_0_port_y3_0[1]), .ZN(
        Q12_1_n157) );
  NAND2_X1 Q12_1_U80 ( .A1(Q12_0_port_y3_2[1]), .A2(Q12_0_port_y2_0[1]), .ZN(
        Q12_1_n158) );
  XOR2_X1 Q12_1_U79 ( .A(Q12_1_n158), .B(Q12_1_n157), .Z(Q12_1_n159) );
  XOR2_X1 Q12_1_U78 ( .A(Q12_1_n211), .B(Q12_0_port_y1_2[0]), .Z(Q12_1_n147)
         );
  NAND2_X1 Q12_1_U77 ( .A1(Q12_0_port_y3_2[0]), .A2(Q12_0_port_y1_0[0]), .ZN(
        Q12_1_n211) );
  NAND2_X1 Q12_1_U76 ( .A1(Q12_0_port_y2_2[0]), .A2(Q12_0_port_y3_0[0]), .ZN(
        Q12_1_n148) );
  NAND2_X1 Q12_1_U75 ( .A1(Q12_0_port_y3_2[0]), .A2(Q12_0_port_y2_0[0]), .ZN(
        Q12_1_n149) );
  XOR2_X1 Q12_1_U74 ( .A(Q12_1_n149), .B(Q12_1_n148), .Z(Q12_1_n150) );
  NAND2_X1 Q12_1_U73 ( .A1(Q12_0_port_y1_1[1]), .A2(Q12_0_port_y3_0[1]), .ZN(
        Q12_1_n225) );
  NAND2_X1 Q12_1_U72 ( .A1(Q12_0_port_y2_1[2]), .A2(Q12_0_port_y3_0[2]), .ZN(
        Q12_1_n192) );
  XOR2_X1 Q12_1_U71 ( .A(Q12_1_n191), .B(Q12_1_n190), .Z(Q12_1_n195) );
  XOR2_X1 Q12_1_U70 ( .A(Q12_1_n193), .B(Q12_1_n192), .Z(Q12_1_n194) );
  XOR2_X1 Q12_1_U69 ( .A(Q12_1_n195), .B(Q12_1_n194), .Z(Q12_1_t1_2_2) );
  XOR2_X1 Q12_1_U68 ( .A(Q12_0_port_y3_2[2]), .B(Q12_0_port_y3_1[2]), .Z(
        Q12_1_n137) );
  INV_X1 Q12_1_U67 ( .A(Q12_0_port_y1_1[2]), .ZN(Q12_1_n236) );
  NOR2_X1 Q12_1_U66 ( .A1(Q12_1_n236), .A2(Q12_1_n137), .ZN(Q12_1_n138) );
  XOR2_X1 Q12_1_U65 ( .A(Q12_1_n207), .B(Q12_1_n138), .Z(Q12_1_n139) );
  XOR2_X1 Q12_1_U64 ( .A(Q12_0_port_y3_1[2]), .B(Q12_0_port_y3_0[2]), .Z(
        Q12_1_n188) );
  INV_X1 Q12_1_U63 ( .A(Q12_0_port_y1_0[2]), .ZN(Q12_1_n239) );
  NOR2_X1 Q12_1_U62 ( .A1(Q12_1_n239), .A2(Q12_1_n188), .ZN(Q12_1_n189) );
  XOR2_X1 Q12_1_U61 ( .A(Q12_1_n230), .B(Q12_1_n189), .Z(Q12_1_n190) );
  NAND2_X1 Q12_1_U60 ( .A1(Q12_0_port_y1_1[0]), .A2(Q12_0_port_y3_0[0]), .ZN(
        Q12_1_n220) );
  NAND2_X1 Q12_1_U59 ( .A1(Q12_0_port_y1_2[1]), .A2(Q12_0_port_y3_1[1]), .ZN(
        Q12_1_n202) );
  NAND2_X1 Q12_1_U58 ( .A1(Q12_0_port_y2_1[2]), .A2(Q12_0_port_y3_2[2]), .ZN(
        Q12_1_n142) );
  XOR2_X1 Q12_1_U57 ( .A(Q12_1_n140), .B(Q12_1_n139), .Z(Q12_1_n144) );
  XOR2_X1 Q12_1_U56 ( .A(Q12_1_n142), .B(Q12_1_n141), .Z(Q12_1_n143) );
  XOR2_X1 Q12_1_U55 ( .A(Q12_1_n144), .B(Q12_1_n143), .Z(Q12_1_t1_0_2) );
  NAND2_X1 Q12_1_U54 ( .A1(Q12_0_port_y2_2[1]), .A2(Q12_0_port_y3_2[1]), .ZN(
        Q12_1_n160) );
  XOR2_X1 Q12_1_U53 ( .A(Q12_1_n156), .B(Q12_1_n215), .Z(Q12_1_n162) );
  XOR2_X1 Q12_1_U52 ( .A(Q12_1_n160), .B(Q12_1_n159), .Z(Q12_1_n161) );
  NAND2_X1 Q12_1_U51 ( .A1(Q12_0_port_y1_2[1]), .A2(Q12_0_port_y3_2[1]), .ZN(
        Q12_1_n154) );
  NAND2_X1 Q12_1_U50 ( .A1(Q12_0_port_y1_2[1]), .A2(Q12_0_port_y3_0[1]), .ZN(
        Q12_1_n155) );
  XOR2_X1 Q12_1_U49 ( .A(Q12_1_n155), .B(Q12_1_n154), .Z(Q12_1_n215) );
  NAND2_X1 Q12_1_U48 ( .A1(Q12_0_port_y1_2[0]), .A2(Q12_0_port_y3_1[0]), .ZN(
        Q12_1_n197) );
  NAND2_X1 Q12_1_U47 ( .A1(Q12_0_port_y2_2[0]), .A2(Q12_0_port_y3_2[0]), .ZN(
        Q12_1_n151) );
  XOR2_X1 Q12_1_U46 ( .A(Q12_1_n147), .B(Q12_1_n212), .Z(Q12_1_n153) );
  XOR2_X1 Q12_1_U45 ( .A(Q12_1_n151), .B(Q12_1_n150), .Z(Q12_1_n152) );
  NAND2_X1 Q12_1_U44 ( .A1(Q12_0_port_y1_2[0]), .A2(Q12_0_port_y3_2[0]), .ZN(
        Q12_1_n145) );
  NAND2_X1 Q12_1_U43 ( .A1(Q12_0_port_y1_2[0]), .A2(Q12_0_port_y3_0[0]), .ZN(
        Q12_1_n146) );
  XOR2_X1 Q12_1_U42 ( .A(Q12_1_n146), .B(Q12_1_n145), .Z(Q12_1_n212) );
  XOR2_X1 Q12_1_U41 ( .A(Q12_0_port_y3_2[1]), .B(Q12_0_port_y3_1[1]), .Z(
        Q12_1_n129) );
  INV_X1 Q12_1_U40 ( .A(Q12_0_port_y1_1[1]), .ZN(Q12_1_n235) );
  NOR2_X1 Q12_1_U39 ( .A1(Q12_1_n235), .A2(Q12_1_n129), .ZN(Q12_1_n130) );
  XOR2_X1 Q12_1_U38 ( .A(Q12_1_n202), .B(Q12_1_n130), .Z(Q12_1_n131) );
  NAND2_X1 Q12_1_U37 ( .A1(Q12_0_port_y2_1[1]), .A2(Q12_0_port_y3_2[1]), .ZN(
        Q12_1_n134) );
  XOR2_X1 Q12_1_U36 ( .A(Q12_1_n132), .B(Q12_1_n131), .Z(Q12_1_n136) );
  XOR2_X1 Q12_1_U35 ( .A(Q12_1_n134), .B(Q12_1_n133), .Z(Q12_1_n135) );
  NAND2_X1 Q12_1_U34 ( .A1(Q12_0_port_y3_1[1]), .A2(Q12_0_port_y2_0[1]), .ZN(
        Q12_1_n185) );
  XOR2_X1 Q12_1_U33 ( .A(Q12_1_n183), .B(Q12_1_n182), .Z(Q12_1_n187) );
  XOR2_X1 Q12_1_U32 ( .A(Q12_1_n185), .B(Q12_1_n184), .Z(Q12_1_n186) );
  XOR2_X1 Q12_1_U31 ( .A(Q12_0_port_y3_1[1]), .B(Q12_0_port_y3_0[1]), .Z(
        Q12_1_n180) );
  INV_X1 Q12_1_U30 ( .A(Q12_0_port_y1_0[1]), .ZN(Q12_1_n238) );
  NOR2_X1 Q12_1_U29 ( .A1(Q12_1_n238), .A2(Q12_1_n180), .ZN(Q12_1_n181) );
  XOR2_X1 Q12_1_U28 ( .A(Q12_1_n225), .B(Q12_1_n181), .Z(Q12_1_n182) );
  XOR2_X1 Q12_1_U27 ( .A(Q12_0_port_y3_2[0]), .B(Q12_0_port_y3_1[0]), .Z(
        Q12_1_n121) );
  INV_X1 Q12_1_U26 ( .A(Q12_0_port_y1_1[0]), .ZN(Q12_1_n234) );
  NOR2_X1 Q12_1_U25 ( .A1(Q12_1_n234), .A2(Q12_1_n121), .ZN(Q12_1_n122) );
  XOR2_X1 Q12_1_U24 ( .A(Q12_1_n197), .B(Q12_1_n122), .Z(Q12_1_n123) );
  NAND2_X1 Q12_1_U23 ( .A1(Q12_0_port_y2_1[0]), .A2(Q12_0_port_y3_2[0]), .ZN(
        Q12_1_n126) );
  XOR2_X1 Q12_1_U22 ( .A(Q12_1_n124), .B(Q12_1_n123), .Z(Q12_1_n128) );
  XOR2_X1 Q12_1_U21 ( .A(Q12_1_n126), .B(Q12_1_n125), .Z(Q12_1_n127) );
  NAND2_X1 Q12_1_U20 ( .A1(Q12_0_port_y3_1[0]), .A2(Q12_0_port_y2_0[0]), .ZN(
        Q12_1_n177) );
  XOR2_X1 Q12_1_U19 ( .A(Q12_1_n175), .B(Q12_1_n174), .Z(Q12_1_n179) );
  XOR2_X1 Q12_1_U18 ( .A(Q12_1_n177), .B(Q12_1_n176), .Z(Q12_1_n178) );
  XOR2_X1 Q12_1_U17 ( .A(Q12_0_port_y3_1[0]), .B(Q12_0_port_y3_0[0]), .Z(
        Q12_1_n172) );
  INV_X1 Q12_1_U16 ( .A(Q12_0_port_y1_0[0]), .ZN(Q12_1_n237) );
  NOR2_X1 Q12_1_U15 ( .A1(Q12_1_n237), .A2(Q12_1_n172), .ZN(Q12_1_n173) );
  XOR2_X1 Q12_1_U14 ( .A(Q12_1_n220), .B(Q12_1_n173), .Z(Q12_1_n174) );
  XOR2_X1 Q12_1_U13 ( .A(Q12_1_n136), .B(Q12_1_n135), .Z(Q12_1_t1_0_1) );
  XOR2_X1 Q12_1_U12 ( .A(Q12_1_n128), .B(Q12_1_n127), .Z(Q12_1_t1_0_0) );
  XOR2_X1 Q12_1_U11 ( .A(Q12_1_n162), .B(Q12_1_n161), .Z(Q12_1_t1_1_1) );
  XOR2_X1 Q12_1_U10 ( .A(Q12_1_n153), .B(Q12_1_n152), .Z(Q12_1_t1_1_0) );
  XOR2_X1 Q12_1_U9 ( .A(Q12_1_n187), .B(Q12_1_n186), .Z(Q12_1_t1_2_1) );
  XOR2_X1 Q12_1_U8 ( .A(Q12_1_n179), .B(Q12_1_n178), .Z(Q12_1_t1_2_0) );
  XOR2_X1 Q12_1_U7 ( .A(Q12_1_n205), .B(Q12_1_n204), .Z(Q12_1_t2_0_1) );
  XOR2_X1 Q12_1_U6 ( .A(Q12_1_n200), .B(Q12_1_n199), .Z(Q12_1_t2_0_0) );
  XOR2_X1 Q12_1_U5 ( .A(Q12_1_n213), .B(Q12_1_n212), .Z(Q12_1_t2_1_0) );
  XOR2_X1 Q12_1_U4 ( .A(Q12_1_n228), .B(Q12_1_n227), .Z(Q12_1_t2_2_1) );
  XOR2_X1 Q12_1_U3 ( .A(Q12_1_n223), .B(Q12_1_n222), .Z(Q12_1_t2_2_0) );
  DFF_X1 Q12_1_reg_y3_2_reg_0_ ( .D(Q12_0_port_y3_0[0]), .CK(clk), .Q(
        Q12_1_port_y3_2[0]), .QN() );
  DFF_X1 Q12_1_reg_y3_2_reg_1_ ( .D(Q12_0_port_y3_0[1]), .CK(clk), .Q(
        Q12_1_port_y3_2[1]), .QN() );
  DFF_X1 Q12_1_reg_y3_2_reg_2_ ( .D(Q12_0_port_y3_0[2]), .CK(clk), .Q(
        Q12_1_port_y3_2[2]), .QN() );
  DFF_X1 Q12_1_reg_y3_1_reg_0_ ( .D(Q12_0_port_y3_2[0]), .CK(clk), .Q(
        Q12_1_port_y3_1[0]), .QN() );
  DFF_X1 Q12_1_reg_y3_1_reg_1_ ( .D(Q12_0_port_y3_2[1]), .CK(clk), .Q(
        Q12_1_port_y3_1[1]), .QN() );
  DFF_X1 Q12_1_reg_y3_1_reg_2_ ( .D(Q12_0_port_y3_2[2]), .CK(clk), .Q(
        Q12_1_port_y3_1[2]), .QN() );
  DFF_X1 Q12_1_reg_y3_0_reg_0_ ( .D(Q12_0_port_y3_1[0]), .CK(clk), .Q(
        Q12_1_port_y3_0[0]), .QN() );
  DFF_X1 Q12_1_reg_y3_0_reg_1_ ( .D(Q12_0_port_y3_1[1]), .CK(clk), .Q(
        Q12_1_port_y3_0[1]), .QN() );
  DFF_X1 Q12_1_reg_y3_0_reg_2_ ( .D(Q12_0_port_y3_1[2]), .CK(clk), .Q(
        Q12_1_port_y3_0[2]), .QN() );
  DFF_X1 Q12_1_reg_y2_2_reg_0_ ( .D(Q12_1_maj_47_port_o), .CK(clk), .Q(
        port_y3_1[0]), .QN() );
  DFF_X1 Q12_1_reg_y2_2_reg_1_ ( .D(Q12_1_maj_50_port_o), .CK(clk), .Q(
        port_y3_1[1]), .QN() );
  DFF_X1 Q12_1_reg_y2_2_reg_2_ ( .D(Q12_1_maj_53_port_o), .CK(clk), .Q(
        port_y3_1[2]), .QN() );
  DFF_X1 Q12_1_reg_y2_1_reg_0_ ( .D(Q12_1_maj_46_port_o), .CK(clk), .Q(
        port_y3_0[0]), .QN() );
  DFF_X1 Q12_1_reg_y2_1_reg_1_ ( .D(Q12_1_maj_49_port_o), .CK(clk), .Q(
        port_y3_0[1]), .QN() );
  DFF_X1 Q12_1_reg_y2_1_reg_2_ ( .D(Q12_1_maj_52_port_o), .CK(clk), .Q(
        port_y3_0[2]), .QN() );
  DFF_X1 Q12_1_reg_y2_0_reg_0_ ( .D(Q12_1_maj_45_port_o), .CK(clk), .Q(
        port_y3_2[0]), .QN() );
  DFF_X1 Q12_1_reg_y2_0_reg_1_ ( .D(Q12_1_maj_48_port_o), .CK(clk), .Q(
        port_y3_2[1]), .QN() );
  DFF_X1 Q12_1_reg_y2_0_reg_2_ ( .D(Q12_1_maj_51_port_o), .CK(clk), .Q(
        port_y3_2[2]), .QN() );
  DFF_X1 Q12_1_reg_y1_2_reg_0_ ( .D(Q12_1_maj_38_port_o), .CK(clk), .Q(
        Q12_1_port_y1_2[0]), .QN() );
  DFF_X1 Q12_1_reg_y1_2_reg_1_ ( .D(Q12_1_maj_41_port_o), .CK(clk), .Q(
        Q12_1_port_y1_2[1]), .QN() );
  DFF_X1 Q12_1_reg_y1_2_reg_2_ ( .D(Q12_1_maj_44_port_o), .CK(clk), .Q(
        Q12_1_port_y1_2[2]), .QN() );
  DFF_X1 Q12_1_reg_y1_1_reg_0_ ( .D(Q12_1_maj_37_port_o), .CK(clk), .Q(
        Q12_1_port_y1_1[0]), .QN() );
  DFF_X1 Q12_1_reg_y1_1_reg_1_ ( .D(Q12_1_maj_40_port_o), .CK(clk), .Q(
        Q12_1_port_y1_1[1]), .QN() );
  DFF_X1 Q12_1_reg_y1_1_reg_2_ ( .D(Q12_1_maj_43_port_o), .CK(clk), .Q(
        Q12_1_port_y1_1[2]), .QN() );
  DFF_X1 Q12_1_reg_y1_0_reg_0_ ( .D(Q12_1_maj_36_port_o), .CK(clk), .Q(
        Q12_1_port_y1_0[0]), .QN() );
  DFF_X1 Q12_1_reg_y1_0_reg_1_ ( .D(Q12_1_maj_39_port_o), .CK(clk), .Q(
        Q12_1_port_y1_0[1]), .QN() );
  DFF_X1 Q12_1_reg_y1_0_reg_2_ ( .D(Q12_1_maj_42_port_o), .CK(clk), .Q(
        Q12_1_port_y1_0[2]), .QN() );
  DFF_X1 Q12_1_reg_y0_2_reg_0_ ( .D(Q12_0_port_y0_0[0]), .CK(clk), .Q(
        port_y0_1[0]), .QN() );
  DFF_X1 Q12_1_reg_y0_2_reg_1_ ( .D(Q12_0_port_y0_0[1]), .CK(clk), .Q(
        port_y0_1[1]), .QN() );
  DFF_X1 Q12_1_reg_y0_2_reg_2_ ( .D(Q12_0_port_y0_0[2]), .CK(clk), .Q(
        port_y0_1[2]), .QN() );
  DFF_X1 Q12_1_reg_y0_1_reg_0_ ( .D(Q12_0_port_y0_2[0]), .CK(clk), .Q(
        port_y0_0[0]), .QN() );
  DFF_X1 Q12_1_reg_y0_1_reg_1_ ( .D(Q12_0_port_y0_2[1]), .CK(clk), .Q(
        port_y0_0[1]), .QN() );
  DFF_X1 Q12_1_reg_y0_1_reg_2_ ( .D(Q12_0_port_y0_2[2]), .CK(clk), .Q(
        port_y0_0[2]), .QN() );
  DFF_X1 Q12_1_reg_y0_0_reg_0_ ( .D(Q12_0_port_y0_1[0]), .CK(clk), .Q(
        port_y0_2[0]), .QN() );
  DFF_X1 Q12_1_reg_y0_0_reg_1_ ( .D(Q12_0_port_y0_1[1]), .CK(clk), .Q(
        port_y0_2[1]), .QN() );
  DFF_X1 Q12_1_reg_y0_0_reg_2_ ( .D(Q12_0_port_y0_1[2]), .CK(clk), .Q(
        port_y0_2[2]), .QN() );
  OR2_X1 Q12_1_maj_36_U4 ( .A1(Q12_1_t1_0_1), .A2(Q12_1_t1_0_0), .ZN(
        Q12_1_maj_36_n4) );
  NAND2_X1 Q12_1_maj_36_U3 ( .A1(Q12_1_t1_0_2), .A2(Q12_1_maj_36_n4), .ZN(
        Q12_1_maj_36_n5) );
  NAND2_X1 Q12_1_maj_36_U2 ( .A1(Q12_1_t1_0_1), .A2(Q12_1_t1_0_0), .ZN(
        Q12_1_maj_36_n6) );
  NAND2_X1 Q12_1_maj_36_U1 ( .A1(Q12_1_maj_36_n6), .A2(Q12_1_maj_36_n5), .ZN(
        Q12_1_maj_36_port_o) );
  OR2_X1 Q12_1_maj_37_U4 ( .A1(Q12_1_t1_1_1), .A2(Q12_1_t1_1_0), .ZN(
        Q12_1_maj_37_n4) );
  NAND2_X1 Q12_1_maj_37_U3 ( .A1(Q12_1_t1_1_2), .A2(Q12_1_maj_37_n4), .ZN(
        Q12_1_maj_37_n5) );
  NAND2_X1 Q12_1_maj_37_U2 ( .A1(Q12_1_t1_1_1), .A2(Q12_1_t1_1_0), .ZN(
        Q12_1_maj_37_n6) );
  NAND2_X1 Q12_1_maj_37_U1 ( .A1(Q12_1_maj_37_n6), .A2(Q12_1_maj_37_n5), .ZN(
        Q12_1_maj_37_port_o) );
  OR2_X1 Q12_1_maj_38_U4 ( .A1(Q12_1_t1_2_1), .A2(Q12_1_t1_2_0), .ZN(
        Q12_1_maj_38_n4) );
  NAND2_X1 Q12_1_maj_38_U3 ( .A1(Q12_1_t1_2_2), .A2(Q12_1_maj_38_n4), .ZN(
        Q12_1_maj_38_n5) );
  NAND2_X1 Q12_1_maj_38_U2 ( .A1(Q12_1_t1_2_1), .A2(Q12_1_t1_2_0), .ZN(
        Q12_1_maj_38_n6) );
  NAND2_X1 Q12_1_maj_38_U1 ( .A1(Q12_1_maj_38_n6), .A2(Q12_1_maj_38_n5), .ZN(
        Q12_1_maj_38_port_o) );
  OR2_X1 Q12_1_maj_39_U4 ( .A1(Q12_1_t1_0_1), .A2(Q12_1_t1_0_0), .ZN(
        Q12_1_maj_39_n4) );
  NAND2_X1 Q12_1_maj_39_U3 ( .A1(Q12_1_t1_0_2), .A2(Q12_1_maj_39_n4), .ZN(
        Q12_1_maj_39_n5) );
  NAND2_X1 Q12_1_maj_39_U2 ( .A1(Q12_1_t1_0_1), .A2(Q12_1_t1_0_0), .ZN(
        Q12_1_maj_39_n6) );
  NAND2_X1 Q12_1_maj_39_U1 ( .A1(Q12_1_maj_39_n6), .A2(Q12_1_maj_39_n5), .ZN(
        Q12_1_maj_39_port_o) );
  OR2_X1 Q12_1_maj_40_U4 ( .A1(Q12_1_t1_1_1), .A2(Q12_1_t1_1_0), .ZN(
        Q12_1_maj_40_n4) );
  NAND2_X1 Q12_1_maj_40_U3 ( .A1(Q12_1_t1_1_2), .A2(Q12_1_maj_40_n4), .ZN(
        Q12_1_maj_40_n5) );
  NAND2_X1 Q12_1_maj_40_U2 ( .A1(Q12_1_t1_1_1), .A2(Q12_1_t1_1_0), .ZN(
        Q12_1_maj_40_n6) );
  NAND2_X1 Q12_1_maj_40_U1 ( .A1(Q12_1_maj_40_n6), .A2(Q12_1_maj_40_n5), .ZN(
        Q12_1_maj_40_port_o) );
  OR2_X1 Q12_1_maj_41_U4 ( .A1(Q12_1_t1_2_1), .A2(Q12_1_t1_2_0), .ZN(
        Q12_1_maj_41_n4) );
  NAND2_X1 Q12_1_maj_41_U3 ( .A1(Q12_1_t1_2_2), .A2(Q12_1_maj_41_n4), .ZN(
        Q12_1_maj_41_n5) );
  NAND2_X1 Q12_1_maj_41_U2 ( .A1(Q12_1_t1_2_1), .A2(Q12_1_t1_2_0), .ZN(
        Q12_1_maj_41_n6) );
  NAND2_X1 Q12_1_maj_41_U1 ( .A1(Q12_1_maj_41_n6), .A2(Q12_1_maj_41_n5), .ZN(
        Q12_1_maj_41_port_o) );
  OR2_X1 Q12_1_maj_42_U4 ( .A1(Q12_1_t1_0_1), .A2(Q12_1_t1_0_0), .ZN(
        Q12_1_maj_42_n4) );
  NAND2_X1 Q12_1_maj_42_U3 ( .A1(Q12_1_t1_0_2), .A2(Q12_1_maj_42_n4), .ZN(
        Q12_1_maj_42_n5) );
  NAND2_X1 Q12_1_maj_42_U2 ( .A1(Q12_1_t1_0_1), .A2(Q12_1_t1_0_0), .ZN(
        Q12_1_maj_42_n6) );
  NAND2_X1 Q12_1_maj_42_U1 ( .A1(Q12_1_maj_42_n6), .A2(Q12_1_maj_42_n5), .ZN(
        Q12_1_maj_42_port_o) );
  OR2_X1 Q12_1_maj_43_U4 ( .A1(Q12_1_t1_1_1), .A2(Q12_1_t1_1_0), .ZN(
        Q12_1_maj_43_n4) );
  NAND2_X1 Q12_1_maj_43_U3 ( .A1(Q12_1_t1_1_2), .A2(Q12_1_maj_43_n4), .ZN(
        Q12_1_maj_43_n5) );
  NAND2_X1 Q12_1_maj_43_U2 ( .A1(Q12_1_t1_1_1), .A2(Q12_1_t1_1_0), .ZN(
        Q12_1_maj_43_n6) );
  NAND2_X1 Q12_1_maj_43_U1 ( .A1(Q12_1_maj_43_n6), .A2(Q12_1_maj_43_n5), .ZN(
        Q12_1_maj_43_port_o) );
  OR2_X1 Q12_1_maj_44_U4 ( .A1(Q12_1_t1_2_1), .A2(Q12_1_t1_2_0), .ZN(
        Q12_1_maj_44_n4) );
  NAND2_X1 Q12_1_maj_44_U3 ( .A1(Q12_1_t1_2_2), .A2(Q12_1_maj_44_n4), .ZN(
        Q12_1_maj_44_n5) );
  NAND2_X1 Q12_1_maj_44_U2 ( .A1(Q12_1_t1_2_1), .A2(Q12_1_t1_2_0), .ZN(
        Q12_1_maj_44_n6) );
  NAND2_X1 Q12_1_maj_44_U1 ( .A1(Q12_1_maj_44_n6), .A2(Q12_1_maj_44_n5), .ZN(
        Q12_1_maj_44_port_o) );
  OR2_X1 Q12_1_maj_45_U4 ( .A1(Q12_1_t2_0_1), .A2(Q12_1_t2_0_0), .ZN(
        Q12_1_maj_45_n4) );
  NAND2_X1 Q12_1_maj_45_U3 ( .A1(Q12_1_t2_0_2), .A2(Q12_1_maj_45_n4), .ZN(
        Q12_1_maj_45_n5) );
  NAND2_X1 Q12_1_maj_45_U2 ( .A1(Q12_1_t2_0_1), .A2(Q12_1_t2_0_0), .ZN(
        Q12_1_maj_45_n6) );
  NAND2_X1 Q12_1_maj_45_U1 ( .A1(Q12_1_maj_45_n6), .A2(Q12_1_maj_45_n5), .ZN(
        Q12_1_maj_45_port_o) );
  OR2_X1 Q12_1_maj_46_U4 ( .A1(Q12_1_t2_1_1), .A2(Q12_1_t2_1_0), .ZN(
        Q12_1_maj_46_n4) );
  NAND2_X1 Q12_1_maj_46_U3 ( .A1(Q12_1_t2_1_2), .A2(Q12_1_maj_46_n4), .ZN(
        Q12_1_maj_46_n5) );
  NAND2_X1 Q12_1_maj_46_U2 ( .A1(Q12_1_t2_1_1), .A2(Q12_1_t2_1_0), .ZN(
        Q12_1_maj_46_n6) );
  NAND2_X1 Q12_1_maj_46_U1 ( .A1(Q12_1_maj_46_n6), .A2(Q12_1_maj_46_n5), .ZN(
        Q12_1_maj_46_port_o) );
  OR2_X1 Q12_1_maj_47_U4 ( .A1(Q12_1_t2_2_1), .A2(Q12_1_t2_2_0), .ZN(
        Q12_1_maj_47_n4) );
  NAND2_X1 Q12_1_maj_47_U3 ( .A1(Q12_1_t2_2_2), .A2(Q12_1_maj_47_n4), .ZN(
        Q12_1_maj_47_n5) );
  NAND2_X1 Q12_1_maj_47_U2 ( .A1(Q12_1_t2_2_1), .A2(Q12_1_t2_2_0), .ZN(
        Q12_1_maj_47_n6) );
  NAND2_X1 Q12_1_maj_47_U1 ( .A1(Q12_1_maj_47_n6), .A2(Q12_1_maj_47_n5), .ZN(
        Q12_1_maj_47_port_o) );
  OR2_X1 Q12_1_maj_48_U4 ( .A1(Q12_1_t2_0_1), .A2(Q12_1_t2_0_0), .ZN(
        Q12_1_maj_48_n4) );
  NAND2_X1 Q12_1_maj_48_U3 ( .A1(Q12_1_t2_0_2), .A2(Q12_1_maj_48_n4), .ZN(
        Q12_1_maj_48_n5) );
  NAND2_X1 Q12_1_maj_48_U2 ( .A1(Q12_1_t2_0_1), .A2(Q12_1_t2_0_0), .ZN(
        Q12_1_maj_48_n6) );
  NAND2_X1 Q12_1_maj_48_U1 ( .A1(Q12_1_maj_48_n6), .A2(Q12_1_maj_48_n5), .ZN(
        Q12_1_maj_48_port_o) );
  OR2_X1 Q12_1_maj_49_U4 ( .A1(Q12_1_t2_1_1), .A2(Q12_1_t2_1_0), .ZN(
        Q12_1_maj_49_n4) );
  NAND2_X1 Q12_1_maj_49_U3 ( .A1(Q12_1_t2_1_2), .A2(Q12_1_maj_49_n4), .ZN(
        Q12_1_maj_49_n5) );
  NAND2_X1 Q12_1_maj_49_U2 ( .A1(Q12_1_t2_1_1), .A2(Q12_1_t2_1_0), .ZN(
        Q12_1_maj_49_n6) );
  NAND2_X1 Q12_1_maj_49_U1 ( .A1(Q12_1_maj_49_n6), .A2(Q12_1_maj_49_n5), .ZN(
        Q12_1_maj_49_port_o) );
  OR2_X1 Q12_1_maj_50_U4 ( .A1(Q12_1_t2_2_1), .A2(Q12_1_t2_2_0), .ZN(
        Q12_1_maj_50_n4) );
  NAND2_X1 Q12_1_maj_50_U3 ( .A1(Q12_1_t2_2_2), .A2(Q12_1_maj_50_n4), .ZN(
        Q12_1_maj_50_n5) );
  NAND2_X1 Q12_1_maj_50_U2 ( .A1(Q12_1_t2_2_1), .A2(Q12_1_t2_2_0), .ZN(
        Q12_1_maj_50_n6) );
  NAND2_X1 Q12_1_maj_50_U1 ( .A1(Q12_1_maj_50_n6), .A2(Q12_1_maj_50_n5), .ZN(
        Q12_1_maj_50_port_o) );
  OR2_X1 Q12_1_maj_51_U4 ( .A1(Q12_1_t2_0_1), .A2(Q12_1_t2_0_0), .ZN(
        Q12_1_maj_51_n4) );
  NAND2_X1 Q12_1_maj_51_U3 ( .A1(Q12_1_t2_0_2), .A2(Q12_1_maj_51_n4), .ZN(
        Q12_1_maj_51_n5) );
  NAND2_X1 Q12_1_maj_51_U2 ( .A1(Q12_1_t2_0_1), .A2(Q12_1_t2_0_0), .ZN(
        Q12_1_maj_51_n6) );
  NAND2_X1 Q12_1_maj_51_U1 ( .A1(Q12_1_maj_51_n6), .A2(Q12_1_maj_51_n5), .ZN(
        Q12_1_maj_51_port_o) );
  OR2_X1 Q12_1_maj_52_U4 ( .A1(Q12_1_t2_1_1), .A2(Q12_1_t2_1_0), .ZN(
        Q12_1_maj_52_n4) );
  NAND2_X1 Q12_1_maj_52_U3 ( .A1(Q12_1_t2_1_2), .A2(Q12_1_maj_52_n4), .ZN(
        Q12_1_maj_52_n5) );
  NAND2_X1 Q12_1_maj_52_U2 ( .A1(Q12_1_t2_1_1), .A2(Q12_1_t2_1_0), .ZN(
        Q12_1_maj_52_n6) );
  NAND2_X1 Q12_1_maj_52_U1 ( .A1(Q12_1_maj_52_n6), .A2(Q12_1_maj_52_n5), .ZN(
        Q12_1_maj_52_port_o) );
  OR2_X1 Q12_1_maj_53_U4 ( .A1(Q12_1_t2_2_1), .A2(Q12_1_t2_2_0), .ZN(
        Q12_1_maj_53_n4) );
  NAND2_X1 Q12_1_maj_53_U3 ( .A1(Q12_1_t2_2_2), .A2(Q12_1_maj_53_n4), .ZN(
        Q12_1_maj_53_n5) );
  NAND2_X1 Q12_1_maj_53_U2 ( .A1(Q12_1_t2_2_1), .A2(Q12_1_t2_2_0), .ZN(
        Q12_1_maj_53_n6) );
  NAND2_X1 Q12_1_maj_53_U1 ( .A1(Q12_1_maj_53_n6), .A2(Q12_1_maj_53_n5), .ZN(
        Q12_1_maj_53_port_o) );
  XOR2_X1 A_out_U27 ( .A(port_y0_0[2]), .B(Q12_1_port_y3_1[2]), .Z(A_out_n7)
         );
  XOR2_X1 A_out_U26 ( .A(Q12_1_port_y1_1[2]), .B(A_out_n7), .Z(port_y2_0[2])
         );
  XOR2_X1 A_out_U25 ( .A(port_y0_0[1]), .B(Q12_1_port_y3_1[1]), .Z(A_out_n8)
         );
  XOR2_X1 A_out_U24 ( .A(Q12_1_port_y1_1[1]), .B(A_out_n8), .Z(port_y2_0[1])
         );
  XOR2_X1 A_out_U23 ( .A(port_y0_0[0]), .B(Q12_1_port_y3_1[0]), .Z(A_out_n9)
         );
  XOR2_X1 A_out_U22 ( .A(Q12_1_port_y1_1[0]), .B(A_out_n9), .Z(port_y2_0[0])
         );
  XOR2_X1 A_out_U21 ( .A(port_y0_1[2]), .B(Q12_1_port_y3_2[2]), .Z(A_out_n4)
         );
  XOR2_X1 A_out_U20 ( .A(Q12_1_port_y1_2[2]), .B(A_out_n4), .Z(port_y2_1[2])
         );
  XOR2_X1 A_out_U19 ( .A(port_y0_1[1]), .B(Q12_1_port_y3_2[1]), .Z(A_out_n5)
         );
  XOR2_X1 A_out_U18 ( .A(Q12_1_port_y1_2[1]), .B(A_out_n5), .Z(port_y2_1[1])
         );
  XOR2_X1 A_out_U17 ( .A(port_y0_1[0]), .B(Q12_1_port_y3_2[0]), .Z(A_out_n6)
         );
  XOR2_X1 A_out_U16 ( .A(Q12_1_port_y1_2[0]), .B(A_out_n6), .Z(port_y2_1[0])
         );
  XOR2_X1 A_out_U15 ( .A(port_y0_2[2]), .B(Q12_1_port_y3_0[2]), .Z(A_out_n1)
         );
  XOR2_X1 A_out_U14 ( .A(Q12_1_port_y1_0[2]), .B(A_out_n1), .Z(port_y2_2[2])
         );
  XOR2_X1 A_out_U13 ( .A(port_y0_2[1]), .B(Q12_1_port_y3_0[1]), .Z(A_out_n2)
         );
  XOR2_X1 A_out_U12 ( .A(Q12_1_port_y1_0[1]), .B(A_out_n2), .Z(port_y2_2[1])
         );
  XOR2_X1 A_out_U11 ( .A(port_y0_2[0]), .B(Q12_1_port_y3_0[0]), .Z(A_out_n3)
         );
  XOR2_X1 A_out_U10 ( .A(Q12_1_port_y1_0[0]), .B(A_out_n3), .Z(port_y2_2[0])
         );
  XOR2_X1 A_out_U9 ( .A(port_y3_0[2]), .B(Q12_1_port_y3_1[2]), .Z(port_y1_0[2]) );
  XOR2_X1 A_out_U8 ( .A(port_y3_0[1]), .B(Q12_1_port_y3_1[1]), .Z(port_y1_0[1]) );
  XOR2_X1 A_out_U7 ( .A(port_y3_0[0]), .B(Q12_1_port_y3_1[0]), .Z(port_y1_0[0]) );
  XOR2_X1 A_out_U6 ( .A(port_y3_1[2]), .B(Q12_1_port_y3_2[2]), .Z(port_y1_1[2]) );
  XOR2_X1 A_out_U5 ( .A(port_y3_1[1]), .B(Q12_1_port_y3_2[1]), .Z(port_y1_1[1]) );
  XOR2_X1 A_out_U4 ( .A(port_y3_1[0]), .B(Q12_1_port_y3_2[0]), .Z(port_y1_1[0]) );
  XOR2_X1 A_out_U3 ( .A(port_y3_2[2]), .B(Q12_1_port_y3_0[2]), .Z(port_y1_2[2]) );
  XOR2_X1 A_out_U2 ( .A(port_y3_2[1]), .B(Q12_1_port_y3_0[1]), .Z(port_y1_2[1]) );
  XOR2_X1 A_out_U1 ( .A(port_y3_2[0]), .B(Q12_1_port_y3_0[0]), .Z(port_y1_2[0]) );
endmodule

