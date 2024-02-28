/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Wed Sep 27 08:41:15 2023
/////////////////////////////////////////////////////////////


module Sbox_AES_BoyarPeralta_3replications ( port_x0_0, port_x1_0, port_x2_0, 
        port_x3_0, port_x4_0, port_x5_0, port_x6_0, port_x7_0, port_y0_0, 
        port_y1_0, port_y2_0, port_y3_0, port_y4_0, port_y5_0, port_y6_0, 
        port_y7_0 );
  input [2:0] port_x0_0;
  input [2:0] port_x1_0;
  input [2:0] port_x2_0;
  input [2:0] port_x3_0;
  input [2:0] port_x4_0;
  input [2:0] port_x5_0;
  input [2:0] port_x6_0;
  input [2:0] port_x7_0;
  output [2:0] port_y0_0;
  output [2:0] port_y1_0;
  output [2:0] port_y2_0;
  output [2:0] port_y3_0;
  output [2:0] port_y4_0;
  output [2:0] port_y5_0;
  output [2:0] port_y6_0;
  output [2:0] port_y7_0;

  wire   [2:0] t1_xor_port_y_0;
  wire   [2:0] t2_xor_port_y_0;
  wire   [2:0] t3_xor_port_y_0;
  wire   [2:0] t4_xor_port_y_0;
  wire   [2:0] t5_xor_port_y_0;
  wire   [2:0] t6_xor_port_y_0;
  wire   [2:0] t7_xor_port_y_0;
  wire   [2:0] t8_xor_port_y_0;
  wire   [2:0] t9_xor_port_y_0;
  wire   [2:0] t10_xor_port_y_0;
  wire   [2:0] t11_xor_port_y_0;
  wire   [2:0] t12_xor_port_y_0;
  wire   [2:0] t13_xor_port_y_0;
  wire   [2:0] t14_xor_port_y_0;
  wire   [2:0] t15_xor_port_y_0;
  wire   [2:0] t16_xor_port_y_0;
  wire   [2:0] t17_xor_port_y_0;
  wire   [2:0] t18_xor_port_y_0;
  wire   [2:0] t19_xor_port_y_0;
  wire   [2:0] t20_xor_port_y_0;
  wire   [2:0] t21_xor_port_y_0;
  wire   [2:0] t22_xor_port_y_0;
  wire   [2:0] t23_xor_port_y_0;
  wire   [2:0] t24_xor_port_y_0;
  wire   [2:0] t25_xor_port_y_0;
  wire   [2:0] t26_xor_port_y_0;
  wire   [2:0] t27_xor_port_y_0;
  wire   [2:0] m1_port_y_0;
  wire   [2:0] m2_port_y_0;
  wire   [2:0] m4_port_y_0;
  wire   [2:0] m6_port_y_0;
  wire   [2:0] m7_port_y_0;
  wire   [2:0] m9_port_y_0;
  wire   [2:0] m11_port_y_0;
  wire   [2:0] m12_port_y_0;
  wire   [2:0] m14_port_y_0;
  wire   [2:0] m3_xor_port_y_0;
  wire   [2:0] m5_xor_port_y_0;
  wire   [2:0] m8_xor_port_y_0;
  wire   [2:0] m10_xor_port_y_0;
  wire   [2:0] m13_xor_port_y_0;
  wire   [2:0] m15_xor_port_y_0;
  wire   [2:0] m16_xor_port_y_0;
  wire   [2:0] m17_xor_port_y_0;
  wire   [2:0] m18_xor_port_y_0;
  wire   [2:0] m19_xor_port_y_0;
  wire   [2:0] m20_xor_port_y_0;
  wire   [2:0] m21_xor_port_y_0;
  wire   [2:0] m22_xor_port_y_0;
  wire   [2:0] m23_xor_port_y_0;
  wire   [2:0] m24_xor_port_y_0;
  wire   [2:0] m25_port_y_0;
  wire   [2:0] m27_xor_port_y_0;
  wire   [2:0] m31_port_y_0;
  wire   [2:0] m34_port_y_0;
  wire   [2:0] m26_xor_port_y_0;
  wire   [2:0] m28_xor_port_y_0;
  wire   [2:0] m29_port_y_0;
  wire   [2:0] m30_port_y_0;
  wire   [2:0] m32_port_y_0;
  wire   [2:0] m33_xor_port_y_0;
  wire   [2:0] m35_port_y_0;
  wire   [2:0] m36_xor_port_y_0;
  wire   [2:0] m37_xor_port_y_0;
  wire   [2:0] m38_xor_port_y_0;
  wire   [2:0] m39_xor_port_y_0;
  wire   [2:0] m40_xor_port_y_0;
  wire   [2:0] m41_xor_port_y_0;
  wire   [2:0] m42_xor_port_y_0;
  wire   [2:0] m43_xor_port_y_0;
  wire   [2:0] m44_xor_port_y_0;
  wire   [2:0] m45_xor_port_y_0;
  wire   [2:0] m46_mul_port_y_0;
  wire   [2:0] m47_mul_port_y_0;
  wire   [2:0] m48_mul_port_y_0;
  wire   [2:0] m49_mul_port_y_0;
  wire   [2:0] m50_mul_port_y_0;
  wire   [2:0] m51_mul_port_y_0;
  wire   [2:0] m52_mul_port_y_0;
  wire   [2:0] m53_mul_port_y_0;
  wire   [2:0] m54_mul_port_y_0;
  wire   [2:0] m55_mul_port_y_0;
  wire   [2:0] m56_mul_port_y_0;
  wire   [2:0] m57_mul_port_y_0;
  wire   [2:0] m58_mul_port_y_0;
  wire   [2:0] m59_mul_port_y_0;
  wire   [2:0] m60_mul_port_y_0;
  wire   [2:0] m61_mul_port_y_0;
  wire   [2:0] m62_mul_port_y_0;
  wire   [2:0] m63_mul_port_y_0;
  wire   [2:0] l0_xor_port_y_0;
  wire   [2:0] l1_xor_port_y_0;
  wire   [2:0] l2_xor_port_y_0;
  wire   [2:0] l3_xor_port_y_0;
  wire   [2:0] l4_xor_port_y_0;
  wire   [2:0] l5_xor_port_y_0;
  wire   [2:0] l6_xor_port_y_0;
  wire   [2:0] l7_xor_port_y_0;
  wire   [2:0] l8_xor_port_y_0;
  wire   [2:0] l9_xor_port_y_0;
  wire   [2:0] l10_xor_port_y_0;
  wire   [2:0] l11_xor_port_y_0;
  wire   [2:0] l12_xor_port_y_0;
  wire   [2:0] l13_xor_port_y_0;
  wire   [2:0] l14_xor_port_y_0;
  wire   [2:0] l15_xor_port_y_0;
  wire   [2:0] l16_xor_port_y_0;
  wire   [2:0] l17_xor_port_y_0;
  wire   [2:0] l18_xor_port_y_0;
  wire   [2:0] l19_xor_port_y_0;
  wire   [2:0] l20_xor_port_y_0;
  wire   [2:0] l21_xor_port_y_0;
  wire   [2:0] l22_xor_port_y_0;
  wire   [2:0] l23_xor_port_y_0;
  wire   [2:0] l24_xor_port_y_0;
  wire   [2:0] l25_xor_port_y_0;
  wire   [2:0] l26_xor_port_y_0;
  wire   [2:0] l27_xor_port_y_0;
  wire   [2:0] l28_xor_port_y_0;
  wire   [2:0] l29_xor_port_y_0;

  XNOR2_X1 t1_xor_U3 ( .A(port_x3_0[0]), .B(port_x0_0[0]), .ZN(
        t1_xor_port_y_0[0]) );
  XNOR2_X1 t1_xor_U2 ( .A(port_x3_0[1]), .B(port_x0_0[1]), .ZN(
        t1_xor_port_y_0[1]) );
  XNOR2_X1 t1_xor_U1 ( .A(port_x3_0[2]), .B(port_x0_0[2]), .ZN(
        t1_xor_port_y_0[2]) );
  XNOR2_X1 t2_xor_U3 ( .A(port_x5_0[0]), .B(port_x0_0[0]), .ZN(
        t2_xor_port_y_0[0]) );
  XNOR2_X1 t2_xor_U2 ( .A(port_x5_0[1]), .B(port_x0_0[1]), .ZN(
        t2_xor_port_y_0[1]) );
  XNOR2_X1 t2_xor_U1 ( .A(port_x5_0[2]), .B(port_x0_0[2]), .ZN(
        t2_xor_port_y_0[2]) );
  XNOR2_X1 t3_xor_U3 ( .A(port_x6_0[0]), .B(port_x0_0[0]), .ZN(
        t3_xor_port_y_0[0]) );
  XNOR2_X1 t3_xor_U2 ( .A(port_x6_0[1]), .B(port_x0_0[1]), .ZN(
        t3_xor_port_y_0[1]) );
  XNOR2_X1 t3_xor_U1 ( .A(port_x6_0[2]), .B(port_x0_0[2]), .ZN(
        t3_xor_port_y_0[2]) );
  XNOR2_X1 t4_xor_U3 ( .A(port_x5_0[0]), .B(port_x3_0[0]), .ZN(
        t4_xor_port_y_0[0]) );
  XNOR2_X1 t4_xor_U2 ( .A(port_x5_0[1]), .B(port_x3_0[1]), .ZN(
        t4_xor_port_y_0[1]) );
  XNOR2_X1 t4_xor_U1 ( .A(port_x5_0[2]), .B(port_x3_0[2]), .ZN(
        t4_xor_port_y_0[2]) );
  XNOR2_X1 t5_xor_U3 ( .A(port_x6_0[0]), .B(port_x4_0[0]), .ZN(
        t5_xor_port_y_0[0]) );
  XNOR2_X1 t5_xor_U2 ( .A(port_x6_0[1]), .B(port_x4_0[1]), .ZN(
        t5_xor_port_y_0[1]) );
  XNOR2_X1 t5_xor_U1 ( .A(port_x6_0[2]), .B(port_x4_0[2]), .ZN(
        t5_xor_port_y_0[2]) );
  XNOR2_X1 t6_xor_U3 ( .A(t5_xor_port_y_0[0]), .B(t1_xor_port_y_0[0]), .ZN(
        t6_xor_port_y_0[0]) );
  XNOR2_X1 t6_xor_U2 ( .A(t5_xor_port_y_0[1]), .B(t1_xor_port_y_0[1]), .ZN(
        t6_xor_port_y_0[1]) );
  XNOR2_X1 t6_xor_U1 ( .A(t5_xor_port_y_0[2]), .B(t1_xor_port_y_0[2]), .ZN(
        t6_xor_port_y_0[2]) );
  XNOR2_X1 t7_xor_U3 ( .A(port_x2_0[0]), .B(port_x1_0[0]), .ZN(
        t7_xor_port_y_0[0]) );
  XNOR2_X1 t7_xor_U2 ( .A(port_x2_0[1]), .B(port_x1_0[1]), .ZN(
        t7_xor_port_y_0[1]) );
  XNOR2_X1 t7_xor_U1 ( .A(port_x2_0[2]), .B(port_x1_0[2]), .ZN(
        t7_xor_port_y_0[2]) );
  XNOR2_X1 t8_xor_U3 ( .A(t6_xor_port_y_0[0]), .B(port_x7_0[0]), .ZN(
        t8_xor_port_y_0[0]) );
  XNOR2_X1 t8_xor_U2 ( .A(t6_xor_port_y_0[1]), .B(port_x7_0[1]), .ZN(
        t8_xor_port_y_0[1]) );
  XNOR2_X1 t8_xor_U1 ( .A(t6_xor_port_y_0[2]), .B(port_x7_0[2]), .ZN(
        t8_xor_port_y_0[2]) );
  XNOR2_X1 t9_xor_U3 ( .A(t7_xor_port_y_0[0]), .B(port_x7_0[0]), .ZN(
        t9_xor_port_y_0[0]) );
  XNOR2_X1 t9_xor_U2 ( .A(t7_xor_port_y_0[1]), .B(port_x7_0[1]), .ZN(
        t9_xor_port_y_0[1]) );
  XNOR2_X1 t9_xor_U1 ( .A(t7_xor_port_y_0[2]), .B(port_x7_0[2]), .ZN(
        t9_xor_port_y_0[2]) );
  XNOR2_X1 t10_xor_U3 ( .A(t7_xor_port_y_0[0]), .B(t6_xor_port_y_0[0]), .ZN(
        t10_xor_port_y_0[0]) );
  XNOR2_X1 t10_xor_U2 ( .A(t7_xor_port_y_0[1]), .B(t6_xor_port_y_0[1]), .ZN(
        t10_xor_port_y_0[1]) );
  XNOR2_X1 t10_xor_U1 ( .A(t7_xor_port_y_0[2]), .B(t6_xor_port_y_0[2]), .ZN(
        t10_xor_port_y_0[2]) );
  XNOR2_X1 t11_xor_U3 ( .A(port_x5_0[0]), .B(port_x1_0[0]), .ZN(
        t11_xor_port_y_0[0]) );
  XNOR2_X1 t11_xor_U2 ( .A(port_x5_0[1]), .B(port_x1_0[1]), .ZN(
        t11_xor_port_y_0[1]) );
  XNOR2_X1 t11_xor_U1 ( .A(port_x5_0[2]), .B(port_x1_0[2]), .ZN(
        t11_xor_port_y_0[2]) );
  XNOR2_X1 t12_xor_U3 ( .A(port_x5_0[0]), .B(port_x2_0[0]), .ZN(
        t12_xor_port_y_0[0]) );
  XNOR2_X1 t12_xor_U2 ( .A(port_x5_0[1]), .B(port_x2_0[1]), .ZN(
        t12_xor_port_y_0[1]) );
  XNOR2_X1 t12_xor_U1 ( .A(port_x5_0[2]), .B(port_x2_0[2]), .ZN(
        t12_xor_port_y_0[2]) );
  XNOR2_X1 t13_xor_U3 ( .A(t4_xor_port_y_0[0]), .B(t3_xor_port_y_0[0]), .ZN(
        t13_xor_port_y_0[0]) );
  XNOR2_X1 t13_xor_U2 ( .A(t4_xor_port_y_0[1]), .B(t3_xor_port_y_0[1]), .ZN(
        t13_xor_port_y_0[1]) );
  XNOR2_X1 t13_xor_U1 ( .A(t4_xor_port_y_0[2]), .B(t3_xor_port_y_0[2]), .ZN(
        t13_xor_port_y_0[2]) );
  XNOR2_X1 t14_xor_U3 ( .A(t11_xor_port_y_0[0]), .B(t6_xor_port_y_0[0]), .ZN(
        t14_xor_port_y_0[0]) );
  XNOR2_X1 t14_xor_U2 ( .A(t11_xor_port_y_0[1]), .B(t6_xor_port_y_0[1]), .ZN(
        t14_xor_port_y_0[1]) );
  XNOR2_X1 t14_xor_U1 ( .A(t11_xor_port_y_0[2]), .B(t6_xor_port_y_0[2]), .ZN(
        t14_xor_port_y_0[2]) );
  XNOR2_X1 t15_xor_U3 ( .A(t11_xor_port_y_0[0]), .B(t5_xor_port_y_0[0]), .ZN(
        t15_xor_port_y_0[0]) );
  XNOR2_X1 t15_xor_U2 ( .A(t11_xor_port_y_0[1]), .B(t5_xor_port_y_0[1]), .ZN(
        t15_xor_port_y_0[1]) );
  XNOR2_X1 t15_xor_U1 ( .A(t11_xor_port_y_0[2]), .B(t5_xor_port_y_0[2]), .ZN(
        t15_xor_port_y_0[2]) );
  XNOR2_X1 t16_xor_U3 ( .A(t12_xor_port_y_0[0]), .B(t5_xor_port_y_0[0]), .ZN(
        t16_xor_port_y_0[0]) );
  XNOR2_X1 t16_xor_U2 ( .A(t12_xor_port_y_0[1]), .B(t5_xor_port_y_0[1]), .ZN(
        t16_xor_port_y_0[1]) );
  XNOR2_X1 t16_xor_U1 ( .A(t12_xor_port_y_0[2]), .B(t5_xor_port_y_0[2]), .ZN(
        t16_xor_port_y_0[2]) );
  XNOR2_X1 t17_xor_U3 ( .A(t16_xor_port_y_0[0]), .B(t9_xor_port_y_0[0]), .ZN(
        t17_xor_port_y_0[0]) );
  XNOR2_X1 t17_xor_U2 ( .A(t16_xor_port_y_0[1]), .B(t9_xor_port_y_0[1]), .ZN(
        t17_xor_port_y_0[1]) );
  XNOR2_X1 t17_xor_U1 ( .A(t16_xor_port_y_0[2]), .B(t9_xor_port_y_0[2]), .ZN(
        t17_xor_port_y_0[2]) );
  XNOR2_X1 t18_xor_U3 ( .A(port_x7_0[0]), .B(port_x3_0[0]), .ZN(
        t18_xor_port_y_0[0]) );
  XNOR2_X1 t18_xor_U2 ( .A(port_x7_0[1]), .B(port_x3_0[1]), .ZN(
        t18_xor_port_y_0[1]) );
  XNOR2_X1 t18_xor_U1 ( .A(port_x7_0[2]), .B(port_x3_0[2]), .ZN(
        t18_xor_port_y_0[2]) );
  XNOR2_X1 t19_xor_U3 ( .A(t18_xor_port_y_0[0]), .B(t7_xor_port_y_0[0]), .ZN(
        t19_xor_port_y_0[0]) );
  XNOR2_X1 t19_xor_U2 ( .A(t18_xor_port_y_0[1]), .B(t7_xor_port_y_0[1]), .ZN(
        t19_xor_port_y_0[1]) );
  XNOR2_X1 t19_xor_U1 ( .A(t18_xor_port_y_0[2]), .B(t7_xor_port_y_0[2]), .ZN(
        t19_xor_port_y_0[2]) );
  XNOR2_X1 t20_xor_U3 ( .A(t19_xor_port_y_0[0]), .B(t1_xor_port_y_0[0]), .ZN(
        t20_xor_port_y_0[0]) );
  XNOR2_X1 t20_xor_U2 ( .A(t19_xor_port_y_0[1]), .B(t1_xor_port_y_0[1]), .ZN(
        t20_xor_port_y_0[1]) );
  XNOR2_X1 t20_xor_U1 ( .A(t19_xor_port_y_0[2]), .B(t1_xor_port_y_0[2]), .ZN(
        t20_xor_port_y_0[2]) );
  XNOR2_X1 t21_xor_U3 ( .A(port_x7_0[0]), .B(port_x6_0[0]), .ZN(
        t21_xor_port_y_0[0]) );
  XNOR2_X1 t21_xor_U2 ( .A(port_x7_0[1]), .B(port_x6_0[1]), .ZN(
        t21_xor_port_y_0[1]) );
  XNOR2_X1 t21_xor_U1 ( .A(port_x7_0[2]), .B(port_x6_0[2]), .ZN(
        t21_xor_port_y_0[2]) );
  XNOR2_X1 t22_xor_U3 ( .A(t21_xor_port_y_0[0]), .B(t7_xor_port_y_0[0]), .ZN(
        t22_xor_port_y_0[0]) );
  XNOR2_X1 t22_xor_U2 ( .A(t21_xor_port_y_0[1]), .B(t7_xor_port_y_0[1]), .ZN(
        t22_xor_port_y_0[1]) );
  XNOR2_X1 t22_xor_U1 ( .A(t21_xor_port_y_0[2]), .B(t7_xor_port_y_0[2]), .ZN(
        t22_xor_port_y_0[2]) );
  XNOR2_X1 t23_xor_U3 ( .A(t22_xor_port_y_0[0]), .B(t2_xor_port_y_0[0]), .ZN(
        t23_xor_port_y_0[0]) );
  XNOR2_X1 t23_xor_U2 ( .A(t22_xor_port_y_0[1]), .B(t2_xor_port_y_0[1]), .ZN(
        t23_xor_port_y_0[1]) );
  XNOR2_X1 t23_xor_U1 ( .A(t22_xor_port_y_0[2]), .B(t2_xor_port_y_0[2]), .ZN(
        t23_xor_port_y_0[2]) );
  XNOR2_X1 t24_xor_U3 ( .A(t10_xor_port_y_0[0]), .B(t2_xor_port_y_0[0]), .ZN(
        t24_xor_port_y_0[0]) );
  XNOR2_X1 t24_xor_U2 ( .A(t10_xor_port_y_0[1]), .B(t2_xor_port_y_0[1]), .ZN(
        t24_xor_port_y_0[1]) );
  XNOR2_X1 t24_xor_U1 ( .A(t10_xor_port_y_0[2]), .B(t2_xor_port_y_0[2]), .ZN(
        t24_xor_port_y_0[2]) );
  XNOR2_X1 t25_xor_U3 ( .A(t17_xor_port_y_0[0]), .B(t20_xor_port_y_0[0]), .ZN(
        t25_xor_port_y_0[0]) );
  XNOR2_X1 t25_xor_U2 ( .A(t17_xor_port_y_0[1]), .B(t20_xor_port_y_0[1]), .ZN(
        t25_xor_port_y_0[1]) );
  XNOR2_X1 t25_xor_U1 ( .A(t17_xor_port_y_0[2]), .B(t20_xor_port_y_0[2]), .ZN(
        t25_xor_port_y_0[2]) );
  XNOR2_X1 t26_xor_U3 ( .A(t16_xor_port_y_0[0]), .B(t3_xor_port_y_0[0]), .ZN(
        t26_xor_port_y_0[0]) );
  XNOR2_X1 t26_xor_U2 ( .A(t16_xor_port_y_0[1]), .B(t3_xor_port_y_0[1]), .ZN(
        t26_xor_port_y_0[1]) );
  XNOR2_X1 t26_xor_U1 ( .A(t16_xor_port_y_0[2]), .B(t3_xor_port_y_0[2]), .ZN(
        t26_xor_port_y_0[2]) );
  XNOR2_X1 t27_xor_U3 ( .A(t12_xor_port_y_0[0]), .B(t1_xor_port_y_0[0]), .ZN(
        t27_xor_port_y_0[0]) );
  XNOR2_X1 t27_xor_U2 ( .A(t12_xor_port_y_0[1]), .B(t1_xor_port_y_0[1]), .ZN(
        t27_xor_port_y_0[1]) );
  XNOR2_X1 t27_xor_U1 ( .A(t12_xor_port_y_0[2]), .B(t1_xor_port_y_0[2]), .ZN(
        t27_xor_port_y_0[2]) );
  AND2_X1 m1_U3 ( .A1(t6_xor_port_y_0[0]), .A2(t13_xor_port_y_0[0]), .ZN(
        m1_port_y_0[0]) );
  AND2_X1 m1_U2 ( .A1(t6_xor_port_y_0[1]), .A2(t13_xor_port_y_0[1]), .ZN(
        m1_port_y_0[1]) );
  AND2_X1 m1_U1 ( .A1(t6_xor_port_y_0[2]), .A2(t13_xor_port_y_0[2]), .ZN(
        m1_port_y_0[2]) );
  AND2_X1 m2_U3 ( .A1(t8_xor_port_y_0[0]), .A2(t23_xor_port_y_0[0]), .ZN(
        m2_port_y_0[0]) );
  AND2_X1 m2_U2 ( .A1(t8_xor_port_y_0[1]), .A2(t23_xor_port_y_0[1]), .ZN(
        m2_port_y_0[1]) );
  AND2_X1 m2_U1 ( .A1(t8_xor_port_y_0[2]), .A2(t23_xor_port_y_0[2]), .ZN(
        m2_port_y_0[2]) );
  AND2_X1 m4_U3 ( .A1(port_x7_0[0]), .A2(t19_xor_port_y_0[0]), .ZN(
        m4_port_y_0[0]) );
  AND2_X1 m4_U2 ( .A1(port_x7_0[1]), .A2(t19_xor_port_y_0[1]), .ZN(
        m4_port_y_0[1]) );
  AND2_X1 m4_U1 ( .A1(port_x7_0[2]), .A2(t19_xor_port_y_0[2]), .ZN(
        m4_port_y_0[2]) );
  AND2_X1 m6_U3 ( .A1(t16_xor_port_y_0[0]), .A2(t3_xor_port_y_0[0]), .ZN(
        m6_port_y_0[0]) );
  AND2_X1 m6_U2 ( .A1(t16_xor_port_y_0[1]), .A2(t3_xor_port_y_0[1]), .ZN(
        m6_port_y_0[1]) );
  AND2_X1 m6_U1 ( .A1(t16_xor_port_y_0[2]), .A2(t3_xor_port_y_0[2]), .ZN(
        m6_port_y_0[2]) );
  AND2_X1 m7_U3 ( .A1(t9_xor_port_y_0[0]), .A2(t22_xor_port_y_0[0]), .ZN(
        m7_port_y_0[0]) );
  AND2_X1 m7_U2 ( .A1(t9_xor_port_y_0[1]), .A2(t22_xor_port_y_0[1]), .ZN(
        m7_port_y_0[1]) );
  AND2_X1 m7_U1 ( .A1(t9_xor_port_y_0[2]), .A2(t22_xor_port_y_0[2]), .ZN(
        m7_port_y_0[2]) );
  AND2_X1 m9_U3 ( .A1(t17_xor_port_y_0[0]), .A2(t20_xor_port_y_0[0]), .ZN(
        m9_port_y_0[0]) );
  AND2_X1 m9_U2 ( .A1(t17_xor_port_y_0[1]), .A2(t20_xor_port_y_0[1]), .ZN(
        m9_port_y_0[1]) );
  AND2_X1 m9_U1 ( .A1(t17_xor_port_y_0[2]), .A2(t20_xor_port_y_0[2]), .ZN(
        m9_port_y_0[2]) );
  AND2_X1 m11_U3 ( .A1(t15_xor_port_y_0[0]), .A2(t1_xor_port_y_0[0]), .ZN(
        m11_port_y_0[0]) );
  AND2_X1 m11_U2 ( .A1(t15_xor_port_y_0[1]), .A2(t1_xor_port_y_0[1]), .ZN(
        m11_port_y_0[1]) );
  AND2_X1 m11_U1 ( .A1(t15_xor_port_y_0[2]), .A2(t1_xor_port_y_0[2]), .ZN(
        m11_port_y_0[2]) );
  AND2_X1 m12_U3 ( .A1(t27_xor_port_y_0[0]), .A2(t4_xor_port_y_0[0]), .ZN(
        m12_port_y_0[0]) );
  AND2_X1 m12_U2 ( .A1(t27_xor_port_y_0[1]), .A2(t4_xor_port_y_0[1]), .ZN(
        m12_port_y_0[1]) );
  AND2_X1 m12_U1 ( .A1(t27_xor_port_y_0[2]), .A2(t4_xor_port_y_0[2]), .ZN(
        m12_port_y_0[2]) );
  AND2_X1 m14_U3 ( .A1(t10_xor_port_y_0[0]), .A2(t2_xor_port_y_0[0]), .ZN(
        m14_port_y_0[0]) );
  AND2_X1 m14_U2 ( .A1(t10_xor_port_y_0[1]), .A2(t2_xor_port_y_0[1]), .ZN(
        m14_port_y_0[1]) );
  AND2_X1 m14_U1 ( .A1(t10_xor_port_y_0[2]), .A2(t2_xor_port_y_0[2]), .ZN(
        m14_port_y_0[2]) );
  XNOR2_X1 m3_xor_U3 ( .A(m1_port_y_0[0]), .B(t14_xor_port_y_0[0]), .ZN(
        m3_xor_port_y_0[0]) );
  XNOR2_X1 m3_xor_U2 ( .A(m1_port_y_0[1]), .B(t14_xor_port_y_0[1]), .ZN(
        m3_xor_port_y_0[1]) );
  XNOR2_X1 m3_xor_U1 ( .A(m1_port_y_0[2]), .B(t14_xor_port_y_0[2]), .ZN(
        m3_xor_port_y_0[2]) );
  XNOR2_X1 m5_xor_U3 ( .A(m1_port_y_0[0]), .B(m4_port_y_0[0]), .ZN(
        m5_xor_port_y_0[0]) );
  XNOR2_X1 m5_xor_U2 ( .A(m1_port_y_0[1]), .B(m4_port_y_0[1]), .ZN(
        m5_xor_port_y_0[1]) );
  XNOR2_X1 m5_xor_U1 ( .A(m1_port_y_0[2]), .B(m4_port_y_0[2]), .ZN(
        m5_xor_port_y_0[2]) );
  XNOR2_X1 m8_xor_U3 ( .A(m6_port_y_0[0]), .B(t26_xor_port_y_0[0]), .ZN(
        m8_xor_port_y_0[0]) );
  XNOR2_X1 m8_xor_U2 ( .A(m6_port_y_0[1]), .B(t26_xor_port_y_0[1]), .ZN(
        m8_xor_port_y_0[1]) );
  XNOR2_X1 m8_xor_U1 ( .A(m6_port_y_0[2]), .B(t26_xor_port_y_0[2]), .ZN(
        m8_xor_port_y_0[2]) );
  XNOR2_X1 m10_xor_U3 ( .A(m6_port_y_0[0]), .B(m9_port_y_0[0]), .ZN(
        m10_xor_port_y_0[0]) );
  XNOR2_X1 m10_xor_U2 ( .A(m6_port_y_0[1]), .B(m9_port_y_0[1]), .ZN(
        m10_xor_port_y_0[1]) );
  XNOR2_X1 m10_xor_U1 ( .A(m6_port_y_0[2]), .B(m9_port_y_0[2]), .ZN(
        m10_xor_port_y_0[2]) );
  XNOR2_X1 m13_xor_U3 ( .A(m11_port_y_0[0]), .B(m12_port_y_0[0]), .ZN(
        m13_xor_port_y_0[0]) );
  XNOR2_X1 m13_xor_U2 ( .A(m11_port_y_0[1]), .B(m12_port_y_0[1]), .ZN(
        m13_xor_port_y_0[1]) );
  XNOR2_X1 m13_xor_U1 ( .A(m11_port_y_0[2]), .B(m12_port_y_0[2]), .ZN(
        m13_xor_port_y_0[2]) );
  XNOR2_X1 m15_xor_U3 ( .A(m11_port_y_0[0]), .B(m14_port_y_0[0]), .ZN(
        m15_xor_port_y_0[0]) );
  XNOR2_X1 m15_xor_U2 ( .A(m11_port_y_0[1]), .B(m14_port_y_0[1]), .ZN(
        m15_xor_port_y_0[1]) );
  XNOR2_X1 m15_xor_U1 ( .A(m11_port_y_0[2]), .B(m14_port_y_0[2]), .ZN(
        m15_xor_port_y_0[2]) );
  XNOR2_X1 m16_xor_U3 ( .A(m2_port_y_0[0]), .B(m3_xor_port_y_0[0]), .ZN(
        m16_xor_port_y_0[0]) );
  XNOR2_X1 m16_xor_U2 ( .A(m2_port_y_0[1]), .B(m3_xor_port_y_0[1]), .ZN(
        m16_xor_port_y_0[1]) );
  XNOR2_X1 m16_xor_U1 ( .A(m2_port_y_0[2]), .B(m3_xor_port_y_0[2]), .ZN(
        m16_xor_port_y_0[2]) );
  XNOR2_X1 m17_xor_U3 ( .A(t24_xor_port_y_0[0]), .B(m5_xor_port_y_0[0]), .ZN(
        m17_xor_port_y_0[0]) );
  XNOR2_X1 m17_xor_U2 ( .A(t24_xor_port_y_0[1]), .B(m5_xor_port_y_0[1]), .ZN(
        m17_xor_port_y_0[1]) );
  XNOR2_X1 m17_xor_U1 ( .A(t24_xor_port_y_0[2]), .B(m5_xor_port_y_0[2]), .ZN(
        m17_xor_port_y_0[2]) );
  XNOR2_X1 m18_xor_U3 ( .A(m7_port_y_0[0]), .B(m8_xor_port_y_0[0]), .ZN(
        m18_xor_port_y_0[0]) );
  XNOR2_X1 m18_xor_U2 ( .A(m7_port_y_0[1]), .B(m8_xor_port_y_0[1]), .ZN(
        m18_xor_port_y_0[1]) );
  XNOR2_X1 m18_xor_U1 ( .A(m7_port_y_0[2]), .B(m8_xor_port_y_0[2]), .ZN(
        m18_xor_port_y_0[2]) );
  XNOR2_X1 m19_xor_U3 ( .A(m15_xor_port_y_0[0]), .B(m10_xor_port_y_0[0]), .ZN(
        m19_xor_port_y_0[0]) );
  XNOR2_X1 m19_xor_U2 ( .A(m15_xor_port_y_0[1]), .B(m10_xor_port_y_0[1]), .ZN(
        m19_xor_port_y_0[1]) );
  XNOR2_X1 m19_xor_U1 ( .A(m15_xor_port_y_0[2]), .B(m10_xor_port_y_0[2]), .ZN(
        m19_xor_port_y_0[2]) );
  XNOR2_X1 m20_xor_U3 ( .A(m13_xor_port_y_0[0]), .B(m16_xor_port_y_0[0]), .ZN(
        m20_xor_port_y_0[0]) );
  XNOR2_X1 m20_xor_U2 ( .A(m13_xor_port_y_0[1]), .B(m16_xor_port_y_0[1]), .ZN(
        m20_xor_port_y_0[1]) );
  XNOR2_X1 m20_xor_U1 ( .A(m13_xor_port_y_0[2]), .B(m16_xor_port_y_0[2]), .ZN(
        m20_xor_port_y_0[2]) );
  XNOR2_X1 m21_xor_U3 ( .A(m15_xor_port_y_0[0]), .B(m17_xor_port_y_0[0]), .ZN(
        m21_xor_port_y_0[0]) );
  XNOR2_X1 m21_xor_U2 ( .A(m15_xor_port_y_0[1]), .B(m17_xor_port_y_0[1]), .ZN(
        m21_xor_port_y_0[1]) );
  XNOR2_X1 m21_xor_U1 ( .A(m15_xor_port_y_0[2]), .B(m17_xor_port_y_0[2]), .ZN(
        m21_xor_port_y_0[2]) );
  XNOR2_X1 m22_xor_U3 ( .A(m13_xor_port_y_0[0]), .B(m18_xor_port_y_0[0]), .ZN(
        m22_xor_port_y_0[0]) );
  XNOR2_X1 m22_xor_U2 ( .A(m13_xor_port_y_0[1]), .B(m18_xor_port_y_0[1]), .ZN(
        m22_xor_port_y_0[1]) );
  XNOR2_X1 m22_xor_U1 ( .A(m13_xor_port_y_0[2]), .B(m18_xor_port_y_0[2]), .ZN(
        m22_xor_port_y_0[2]) );
  XNOR2_X1 m23_xor_U3 ( .A(t25_xor_port_y_0[0]), .B(m19_xor_port_y_0[0]), .ZN(
        m23_xor_port_y_0[0]) );
  XNOR2_X1 m23_xor_U2 ( .A(t25_xor_port_y_0[1]), .B(m19_xor_port_y_0[1]), .ZN(
        m23_xor_port_y_0[1]) );
  XNOR2_X1 m23_xor_U1 ( .A(t25_xor_port_y_0[2]), .B(m19_xor_port_y_0[2]), .ZN(
        m23_xor_port_y_0[2]) );
  XNOR2_X1 m24_xor_U3 ( .A(m23_xor_port_y_0[0]), .B(m22_xor_port_y_0[0]), .ZN(
        m24_xor_port_y_0[0]) );
  XNOR2_X1 m24_xor_U2 ( .A(m23_xor_port_y_0[1]), .B(m22_xor_port_y_0[1]), .ZN(
        m24_xor_port_y_0[1]) );
  XNOR2_X1 m24_xor_U1 ( .A(m23_xor_port_y_0[2]), .B(m22_xor_port_y_0[2]), .ZN(
        m24_xor_port_y_0[2]) );
  AND2_X1 m25_U3 ( .A1(m20_xor_port_y_0[0]), .A2(m22_xor_port_y_0[0]), .ZN(
        m25_port_y_0[0]) );
  AND2_X1 m25_U2 ( .A1(m20_xor_port_y_0[1]), .A2(m22_xor_port_y_0[1]), .ZN(
        m25_port_y_0[1]) );
  AND2_X1 m25_U1 ( .A1(m20_xor_port_y_0[2]), .A2(m22_xor_port_y_0[2]), .ZN(
        m25_port_y_0[2]) );
  XNOR2_X1 m27_xor_U3 ( .A(m21_xor_port_y_0[0]), .B(m20_xor_port_y_0[0]), .ZN(
        m27_xor_port_y_0[0]) );
  XNOR2_X1 m27_xor_U2 ( .A(m21_xor_port_y_0[1]), .B(m20_xor_port_y_0[1]), .ZN(
        m27_xor_port_y_0[1]) );
  XNOR2_X1 m27_xor_U1 ( .A(m21_xor_port_y_0[2]), .B(m20_xor_port_y_0[2]), .ZN(
        m27_xor_port_y_0[2]) );
  AND2_X1 m31_U3 ( .A1(m23_xor_port_y_0[0]), .A2(m20_xor_port_y_0[0]), .ZN(
        m31_port_y_0[0]) );
  AND2_X1 m31_U2 ( .A1(m23_xor_port_y_0[1]), .A2(m20_xor_port_y_0[1]), .ZN(
        m31_port_y_0[1]) );
  AND2_X1 m31_U1 ( .A1(m23_xor_port_y_0[2]), .A2(m20_xor_port_y_0[2]), .ZN(
        m31_port_y_0[2]) );
  AND2_X1 m34_U3 ( .A1(m22_xor_port_y_0[0]), .A2(m21_xor_port_y_0[0]), .ZN(
        m34_port_y_0[0]) );
  AND2_X1 m34_U2 ( .A1(m22_xor_port_y_0[1]), .A2(m21_xor_port_y_0[1]), .ZN(
        m34_port_y_0[1]) );
  AND2_X1 m34_U1 ( .A1(m22_xor_port_y_0[2]), .A2(m21_xor_port_y_0[2]), .ZN(
        m34_port_y_0[2]) );
  XNOR2_X1 m26_xor_U3 ( .A(m25_port_y_0[0]), .B(m21_xor_port_y_0[0]), .ZN(
        m26_xor_port_y_0[0]) );
  XNOR2_X1 m26_xor_U2 ( .A(m25_port_y_0[1]), .B(m21_xor_port_y_0[1]), .ZN(
        m26_xor_port_y_0[1]) );
  XNOR2_X1 m26_xor_U1 ( .A(m25_port_y_0[2]), .B(m21_xor_port_y_0[2]), .ZN(
        m26_xor_port_y_0[2]) );
  XNOR2_X1 m28_xor_U3 ( .A(m25_port_y_0[0]), .B(m23_xor_port_y_0[0]), .ZN(
        m28_xor_port_y_0[0]) );
  XNOR2_X1 m28_xor_U2 ( .A(m25_port_y_0[1]), .B(m23_xor_port_y_0[1]), .ZN(
        m28_xor_port_y_0[1]) );
  XNOR2_X1 m28_xor_U1 ( .A(m25_port_y_0[2]), .B(m23_xor_port_y_0[2]), .ZN(
        m28_xor_port_y_0[2]) );
  AND2_X1 m29_U3 ( .A1(m27_xor_port_y_0[0]), .A2(m28_xor_port_y_0[0]), .ZN(
        m29_port_y_0[0]) );
  AND2_X1 m29_U2 ( .A1(m27_xor_port_y_0[1]), .A2(m28_xor_port_y_0[1]), .ZN(
        m29_port_y_0[1]) );
  AND2_X1 m29_U1 ( .A1(m27_xor_port_y_0[2]), .A2(m28_xor_port_y_0[2]), .ZN(
        m29_port_y_0[2]) );
  AND2_X1 m30_U3 ( .A1(m24_xor_port_y_0[0]), .A2(m26_xor_port_y_0[0]), .ZN(
        m30_port_y_0[0]) );
  AND2_X1 m30_U2 ( .A1(m24_xor_port_y_0[1]), .A2(m26_xor_port_y_0[1]), .ZN(
        m30_port_y_0[1]) );
  AND2_X1 m30_U1 ( .A1(m24_xor_port_y_0[2]), .A2(m26_xor_port_y_0[2]), .ZN(
        m30_port_y_0[2]) );
  AND2_X1 m32_U3 ( .A1(m31_port_y_0[0]), .A2(m27_xor_port_y_0[0]), .ZN(
        m32_port_y_0[0]) );
  AND2_X1 m32_U2 ( .A1(m31_port_y_0[1]), .A2(m27_xor_port_y_0[1]), .ZN(
        m32_port_y_0[1]) );
  AND2_X1 m32_U1 ( .A1(m31_port_y_0[2]), .A2(m27_xor_port_y_0[2]), .ZN(
        m32_port_y_0[2]) );
  XNOR2_X1 m33_xor_U3 ( .A(m25_port_y_0[0]), .B(m27_xor_port_y_0[0]), .ZN(
        m33_xor_port_y_0[0]) );
  XNOR2_X1 m33_xor_U2 ( .A(m25_port_y_0[1]), .B(m27_xor_port_y_0[1]), .ZN(
        m33_xor_port_y_0[1]) );
  XNOR2_X1 m33_xor_U1 ( .A(m25_port_y_0[2]), .B(m27_xor_port_y_0[2]), .ZN(
        m33_xor_port_y_0[2]) );
  AND2_X1 m35_U3 ( .A1(m34_port_y_0[0]), .A2(m24_xor_port_y_0[0]), .ZN(
        m35_port_y_0[0]) );
  AND2_X1 m35_U2 ( .A1(m34_port_y_0[1]), .A2(m24_xor_port_y_0[1]), .ZN(
        m35_port_y_0[1]) );
  AND2_X1 m35_U1 ( .A1(m34_port_y_0[2]), .A2(m24_xor_port_y_0[2]), .ZN(
        m35_port_y_0[2]) );
  XNOR2_X1 m36_xor_U3 ( .A(m25_port_y_0[0]), .B(m24_xor_port_y_0[0]), .ZN(
        m36_xor_port_y_0[0]) );
  XNOR2_X1 m36_xor_U2 ( .A(m25_port_y_0[1]), .B(m24_xor_port_y_0[1]), .ZN(
        m36_xor_port_y_0[1]) );
  XNOR2_X1 m36_xor_U1 ( .A(m25_port_y_0[2]), .B(m24_xor_port_y_0[2]), .ZN(
        m36_xor_port_y_0[2]) );
  XNOR2_X1 m37_xor_U3 ( .A(m29_port_y_0[0]), .B(m21_xor_port_y_0[0]), .ZN(
        m37_xor_port_y_0[0]) );
  XNOR2_X1 m37_xor_U2 ( .A(m29_port_y_0[1]), .B(m21_xor_port_y_0[1]), .ZN(
        m37_xor_port_y_0[1]) );
  XNOR2_X1 m37_xor_U1 ( .A(m29_port_y_0[2]), .B(m21_xor_port_y_0[2]), .ZN(
        m37_xor_port_y_0[2]) );
  XNOR2_X1 m38_xor_U3 ( .A(m33_xor_port_y_0[0]), .B(m32_port_y_0[0]), .ZN(
        m38_xor_port_y_0[0]) );
  XNOR2_X1 m38_xor_U2 ( .A(m33_xor_port_y_0[1]), .B(m32_port_y_0[1]), .ZN(
        m38_xor_port_y_0[1]) );
  XNOR2_X1 m38_xor_U1 ( .A(m33_xor_port_y_0[2]), .B(m32_port_y_0[2]), .ZN(
        m38_xor_port_y_0[2]) );
  XNOR2_X1 m39_xor_U3 ( .A(m30_port_y_0[0]), .B(m23_xor_port_y_0[0]), .ZN(
        m39_xor_port_y_0[0]) );
  XNOR2_X1 m39_xor_U2 ( .A(m30_port_y_0[1]), .B(m23_xor_port_y_0[1]), .ZN(
        m39_xor_port_y_0[1]) );
  XNOR2_X1 m39_xor_U1 ( .A(m30_port_y_0[2]), .B(m23_xor_port_y_0[2]), .ZN(
        m39_xor_port_y_0[2]) );
  XNOR2_X1 m40_xor_U3 ( .A(m36_xor_port_y_0[0]), .B(m35_port_y_0[0]), .ZN(
        m40_xor_port_y_0[0]) );
  XNOR2_X1 m40_xor_U2 ( .A(m36_xor_port_y_0[1]), .B(m35_port_y_0[1]), .ZN(
        m40_xor_port_y_0[1]) );
  XNOR2_X1 m40_xor_U1 ( .A(m36_xor_port_y_0[2]), .B(m35_port_y_0[2]), .ZN(
        m40_xor_port_y_0[2]) );
  XNOR2_X1 m41_xor_U3 ( .A(m40_xor_port_y_0[0]), .B(m38_xor_port_y_0[0]), .ZN(
        m41_xor_port_y_0[0]) );
  XNOR2_X1 m41_xor_U2 ( .A(m40_xor_port_y_0[1]), .B(m38_xor_port_y_0[1]), .ZN(
        m41_xor_port_y_0[1]) );
  XNOR2_X1 m41_xor_U1 ( .A(m40_xor_port_y_0[2]), .B(m38_xor_port_y_0[2]), .ZN(
        m41_xor_port_y_0[2]) );
  XNOR2_X1 m42_xor_U3 ( .A(m39_xor_port_y_0[0]), .B(m37_xor_port_y_0[0]), .ZN(
        m42_xor_port_y_0[0]) );
  XNOR2_X1 m42_xor_U2 ( .A(m39_xor_port_y_0[1]), .B(m37_xor_port_y_0[1]), .ZN(
        m42_xor_port_y_0[1]) );
  XNOR2_X1 m42_xor_U1 ( .A(m39_xor_port_y_0[2]), .B(m37_xor_port_y_0[2]), .ZN(
        m42_xor_port_y_0[2]) );
  XNOR2_X1 m43_xor_U3 ( .A(m38_xor_port_y_0[0]), .B(m37_xor_port_y_0[0]), .ZN(
        m43_xor_port_y_0[0]) );
  XNOR2_X1 m43_xor_U2 ( .A(m38_xor_port_y_0[1]), .B(m37_xor_port_y_0[1]), .ZN(
        m43_xor_port_y_0[1]) );
  XNOR2_X1 m43_xor_U1 ( .A(m38_xor_port_y_0[2]), .B(m37_xor_port_y_0[2]), .ZN(
        m43_xor_port_y_0[2]) );
  XNOR2_X1 m44_xor_U3 ( .A(m40_xor_port_y_0[0]), .B(m39_xor_port_y_0[0]), .ZN(
        m44_xor_port_y_0[0]) );
  XNOR2_X1 m44_xor_U2 ( .A(m40_xor_port_y_0[1]), .B(m39_xor_port_y_0[1]), .ZN(
        m44_xor_port_y_0[1]) );
  XNOR2_X1 m44_xor_U1 ( .A(m40_xor_port_y_0[2]), .B(m39_xor_port_y_0[2]), .ZN(
        m44_xor_port_y_0[2]) );
  XNOR2_X1 m45_xor_U3 ( .A(m41_xor_port_y_0[0]), .B(m42_xor_port_y_0[0]), .ZN(
        m45_xor_port_y_0[0]) );
  XNOR2_X1 m45_xor_U2 ( .A(m41_xor_port_y_0[1]), .B(m42_xor_port_y_0[1]), .ZN(
        m45_xor_port_y_0[1]) );
  XNOR2_X1 m45_xor_U1 ( .A(m41_xor_port_y_0[2]), .B(m42_xor_port_y_0[2]), .ZN(
        m45_xor_port_y_0[2]) );
  AND2_X1 m46_mul_U3 ( .A1(t6_xor_port_y_0[0]), .A2(m44_xor_port_y_0[0]), .ZN(
        m46_mul_port_y_0[0]) );
  AND2_X1 m46_mul_U2 ( .A1(t6_xor_port_y_0[1]), .A2(m44_xor_port_y_0[1]), .ZN(
        m46_mul_port_y_0[1]) );
  AND2_X1 m46_mul_U1 ( .A1(t6_xor_port_y_0[2]), .A2(m44_xor_port_y_0[2]), .ZN(
        m46_mul_port_y_0[2]) );
  AND2_X1 m47_mul_U3 ( .A1(t8_xor_port_y_0[0]), .A2(m40_xor_port_y_0[0]), .ZN(
        m47_mul_port_y_0[0]) );
  AND2_X1 m47_mul_U2 ( .A1(t8_xor_port_y_0[1]), .A2(m40_xor_port_y_0[1]), .ZN(
        m47_mul_port_y_0[1]) );
  AND2_X1 m47_mul_U1 ( .A1(t8_xor_port_y_0[2]), .A2(m40_xor_port_y_0[2]), .ZN(
        m47_mul_port_y_0[2]) );
  AND2_X1 m48_mul_U3 ( .A1(port_x7_0[0]), .A2(m39_xor_port_y_0[0]), .ZN(
        m48_mul_port_y_0[0]) );
  AND2_X1 m48_mul_U2 ( .A1(port_x7_0[1]), .A2(m39_xor_port_y_0[1]), .ZN(
        m48_mul_port_y_0[1]) );
  AND2_X1 m48_mul_U1 ( .A1(port_x7_0[2]), .A2(m39_xor_port_y_0[2]), .ZN(
        m48_mul_port_y_0[2]) );
  AND2_X1 m49_mul_U3 ( .A1(t16_xor_port_y_0[0]), .A2(m43_xor_port_y_0[0]), 
        .ZN(m49_mul_port_y_0[0]) );
  AND2_X1 m49_mul_U2 ( .A1(t16_xor_port_y_0[1]), .A2(m43_xor_port_y_0[1]), 
        .ZN(m49_mul_port_y_0[1]) );
  AND2_X1 m49_mul_U1 ( .A1(t16_xor_port_y_0[2]), .A2(m43_xor_port_y_0[2]), 
        .ZN(m49_mul_port_y_0[2]) );
  AND2_X1 m50_mul_U3 ( .A1(t9_xor_port_y_0[0]), .A2(m38_xor_port_y_0[0]), .ZN(
        m50_mul_port_y_0[0]) );
  AND2_X1 m50_mul_U2 ( .A1(t9_xor_port_y_0[1]), .A2(m38_xor_port_y_0[1]), .ZN(
        m50_mul_port_y_0[1]) );
  AND2_X1 m50_mul_U1 ( .A1(t9_xor_port_y_0[2]), .A2(m38_xor_port_y_0[2]), .ZN(
        m50_mul_port_y_0[2]) );
  AND2_X1 m51_mul_U3 ( .A1(t17_xor_port_y_0[0]), .A2(m37_xor_port_y_0[0]), 
        .ZN(m51_mul_port_y_0[0]) );
  AND2_X1 m51_mul_U2 ( .A1(t17_xor_port_y_0[1]), .A2(m37_xor_port_y_0[1]), 
        .ZN(m51_mul_port_y_0[1]) );
  AND2_X1 m51_mul_U1 ( .A1(t17_xor_port_y_0[2]), .A2(m37_xor_port_y_0[2]), 
        .ZN(m51_mul_port_y_0[2]) );
  AND2_X1 m52_mul_U3 ( .A1(t15_xor_port_y_0[0]), .A2(m42_xor_port_y_0[0]), 
        .ZN(m52_mul_port_y_0[0]) );
  AND2_X1 m52_mul_U2 ( .A1(t15_xor_port_y_0[1]), .A2(m42_xor_port_y_0[1]), 
        .ZN(m52_mul_port_y_0[1]) );
  AND2_X1 m52_mul_U1 ( .A1(t15_xor_port_y_0[2]), .A2(m42_xor_port_y_0[2]), 
        .ZN(m52_mul_port_y_0[2]) );
  AND2_X1 m53_mul_U3 ( .A1(t27_xor_port_y_0[0]), .A2(m45_xor_port_y_0[0]), 
        .ZN(m53_mul_port_y_0[0]) );
  AND2_X1 m53_mul_U2 ( .A1(t27_xor_port_y_0[1]), .A2(m45_xor_port_y_0[1]), 
        .ZN(m53_mul_port_y_0[1]) );
  AND2_X1 m53_mul_U1 ( .A1(t27_xor_port_y_0[2]), .A2(m45_xor_port_y_0[2]), 
        .ZN(m53_mul_port_y_0[2]) );
  AND2_X1 m54_mul_U3 ( .A1(t10_xor_port_y_0[0]), .A2(m41_xor_port_y_0[0]), 
        .ZN(m54_mul_port_y_0[0]) );
  AND2_X1 m54_mul_U2 ( .A1(t10_xor_port_y_0[1]), .A2(m41_xor_port_y_0[1]), 
        .ZN(m54_mul_port_y_0[1]) );
  AND2_X1 m54_mul_U1 ( .A1(t10_xor_port_y_0[2]), .A2(m41_xor_port_y_0[2]), 
        .ZN(m54_mul_port_y_0[2]) );
  AND2_X1 m55_mul_U3 ( .A1(t13_xor_port_y_0[0]), .A2(m44_xor_port_y_0[0]), 
        .ZN(m55_mul_port_y_0[0]) );
  AND2_X1 m55_mul_U2 ( .A1(t13_xor_port_y_0[1]), .A2(m44_xor_port_y_0[1]), 
        .ZN(m55_mul_port_y_0[1]) );
  AND2_X1 m55_mul_U1 ( .A1(t13_xor_port_y_0[2]), .A2(m44_xor_port_y_0[2]), 
        .ZN(m55_mul_port_y_0[2]) );
  AND2_X1 m56_mul_U3 ( .A1(t23_xor_port_y_0[0]), .A2(m40_xor_port_y_0[0]), 
        .ZN(m56_mul_port_y_0[0]) );
  AND2_X1 m56_mul_U2 ( .A1(t23_xor_port_y_0[1]), .A2(m40_xor_port_y_0[1]), 
        .ZN(m56_mul_port_y_0[1]) );
  AND2_X1 m56_mul_U1 ( .A1(t23_xor_port_y_0[2]), .A2(m40_xor_port_y_0[2]), 
        .ZN(m56_mul_port_y_0[2]) );
  AND2_X1 m57_mul_U3 ( .A1(t19_xor_port_y_0[0]), .A2(m39_xor_port_y_0[0]), 
        .ZN(m57_mul_port_y_0[0]) );
  AND2_X1 m57_mul_U2 ( .A1(t19_xor_port_y_0[1]), .A2(m39_xor_port_y_0[1]), 
        .ZN(m57_mul_port_y_0[1]) );
  AND2_X1 m57_mul_U1 ( .A1(t19_xor_port_y_0[2]), .A2(m39_xor_port_y_0[2]), 
        .ZN(m57_mul_port_y_0[2]) );
  AND2_X1 m58_mul_U3 ( .A1(t3_xor_port_y_0[0]), .A2(m43_xor_port_y_0[0]), .ZN(
        m58_mul_port_y_0[0]) );
  AND2_X1 m58_mul_U2 ( .A1(t3_xor_port_y_0[1]), .A2(m43_xor_port_y_0[1]), .ZN(
        m58_mul_port_y_0[1]) );
  AND2_X1 m58_mul_U1 ( .A1(t3_xor_port_y_0[2]), .A2(m43_xor_port_y_0[2]), .ZN(
        m58_mul_port_y_0[2]) );
  AND2_X1 m59_mul_U3 ( .A1(t22_xor_port_y_0[0]), .A2(m38_xor_port_y_0[0]), 
        .ZN(m59_mul_port_y_0[0]) );
  AND2_X1 m59_mul_U2 ( .A1(t22_xor_port_y_0[1]), .A2(m38_xor_port_y_0[1]), 
        .ZN(m59_mul_port_y_0[1]) );
  AND2_X1 m59_mul_U1 ( .A1(t22_xor_port_y_0[2]), .A2(m38_xor_port_y_0[2]), 
        .ZN(m59_mul_port_y_0[2]) );
  AND2_X1 m60_mul_U3 ( .A1(t20_xor_port_y_0[0]), .A2(m37_xor_port_y_0[0]), 
        .ZN(m60_mul_port_y_0[0]) );
  AND2_X1 m60_mul_U2 ( .A1(t20_xor_port_y_0[1]), .A2(m37_xor_port_y_0[1]), 
        .ZN(m60_mul_port_y_0[1]) );
  AND2_X1 m60_mul_U1 ( .A1(t20_xor_port_y_0[2]), .A2(m37_xor_port_y_0[2]), 
        .ZN(m60_mul_port_y_0[2]) );
  AND2_X1 m61_mul_U3 ( .A1(t1_xor_port_y_0[0]), .A2(m42_xor_port_y_0[0]), .ZN(
        m61_mul_port_y_0[0]) );
  AND2_X1 m61_mul_U2 ( .A1(t1_xor_port_y_0[1]), .A2(m42_xor_port_y_0[1]), .ZN(
        m61_mul_port_y_0[1]) );
  AND2_X1 m61_mul_U1 ( .A1(t1_xor_port_y_0[2]), .A2(m42_xor_port_y_0[2]), .ZN(
        m61_mul_port_y_0[2]) );
  AND2_X1 m62_mul_U3 ( .A1(t4_xor_port_y_0[0]), .A2(m45_xor_port_y_0[0]), .ZN(
        m62_mul_port_y_0[0]) );
  AND2_X1 m62_mul_U2 ( .A1(t4_xor_port_y_0[1]), .A2(m45_xor_port_y_0[1]), .ZN(
        m62_mul_port_y_0[1]) );
  AND2_X1 m62_mul_U1 ( .A1(t4_xor_port_y_0[2]), .A2(m45_xor_port_y_0[2]), .ZN(
        m62_mul_port_y_0[2]) );
  AND2_X1 m63_mul_U3 ( .A1(t2_xor_port_y_0[0]), .A2(m41_xor_port_y_0[0]), .ZN(
        m63_mul_port_y_0[0]) );
  AND2_X1 m63_mul_U2 ( .A1(t2_xor_port_y_0[1]), .A2(m41_xor_port_y_0[1]), .ZN(
        m63_mul_port_y_0[1]) );
  AND2_X1 m63_mul_U1 ( .A1(t2_xor_port_y_0[2]), .A2(m41_xor_port_y_0[2]), .ZN(
        m63_mul_port_y_0[2]) );
  XNOR2_X1 l0_xor_U3 ( .A(m62_mul_port_y_0[0]), .B(m61_mul_port_y_0[0]), .ZN(
        l0_xor_port_y_0[0]) );
  XNOR2_X1 l0_xor_U2 ( .A(m62_mul_port_y_0[1]), .B(m61_mul_port_y_0[1]), .ZN(
        l0_xor_port_y_0[1]) );
  XNOR2_X1 l0_xor_U1 ( .A(m62_mul_port_y_0[2]), .B(m61_mul_port_y_0[2]), .ZN(
        l0_xor_port_y_0[2]) );
  XNOR2_X1 l1_xor_U3 ( .A(m56_mul_port_y_0[0]), .B(m50_mul_port_y_0[0]), .ZN(
        l1_xor_port_y_0[0]) );
  XNOR2_X1 l1_xor_U2 ( .A(m56_mul_port_y_0[1]), .B(m50_mul_port_y_0[1]), .ZN(
        l1_xor_port_y_0[1]) );
  XNOR2_X1 l1_xor_U1 ( .A(m56_mul_port_y_0[2]), .B(m50_mul_port_y_0[2]), .ZN(
        l1_xor_port_y_0[2]) );
  XNOR2_X1 l2_xor_U3 ( .A(m48_mul_port_y_0[0]), .B(m46_mul_port_y_0[0]), .ZN(
        l2_xor_port_y_0[0]) );
  XNOR2_X1 l2_xor_U2 ( .A(m48_mul_port_y_0[1]), .B(m46_mul_port_y_0[1]), .ZN(
        l2_xor_port_y_0[1]) );
  XNOR2_X1 l2_xor_U1 ( .A(m48_mul_port_y_0[2]), .B(m46_mul_port_y_0[2]), .ZN(
        l2_xor_port_y_0[2]) );
  XNOR2_X1 l3_xor_U3 ( .A(m55_mul_port_y_0[0]), .B(m47_mul_port_y_0[0]), .ZN(
        l3_xor_port_y_0[0]) );
  XNOR2_X1 l3_xor_U2 ( .A(m55_mul_port_y_0[1]), .B(m47_mul_port_y_0[1]), .ZN(
        l3_xor_port_y_0[1]) );
  XNOR2_X1 l3_xor_U1 ( .A(m55_mul_port_y_0[2]), .B(m47_mul_port_y_0[2]), .ZN(
        l3_xor_port_y_0[2]) );
  XNOR2_X1 l4_xor_U3 ( .A(m58_mul_port_y_0[0]), .B(m54_mul_port_y_0[0]), .ZN(
        l4_xor_port_y_0[0]) );
  XNOR2_X1 l4_xor_U2 ( .A(m58_mul_port_y_0[1]), .B(m54_mul_port_y_0[1]), .ZN(
        l4_xor_port_y_0[1]) );
  XNOR2_X1 l4_xor_U1 ( .A(m58_mul_port_y_0[2]), .B(m54_mul_port_y_0[2]), .ZN(
        l4_xor_port_y_0[2]) );
  XNOR2_X1 l5_xor_U3 ( .A(m61_mul_port_y_0[0]), .B(m49_mul_port_y_0[0]), .ZN(
        l5_xor_port_y_0[0]) );
  XNOR2_X1 l5_xor_U2 ( .A(m61_mul_port_y_0[1]), .B(m49_mul_port_y_0[1]), .ZN(
        l5_xor_port_y_0[1]) );
  XNOR2_X1 l5_xor_U1 ( .A(m61_mul_port_y_0[2]), .B(m49_mul_port_y_0[2]), .ZN(
        l5_xor_port_y_0[2]) );
  XNOR2_X1 l6_xor_U3 ( .A(l5_xor_port_y_0[0]), .B(m62_mul_port_y_0[0]), .ZN(
        l6_xor_port_y_0[0]) );
  XNOR2_X1 l6_xor_U2 ( .A(l5_xor_port_y_0[1]), .B(m62_mul_port_y_0[1]), .ZN(
        l6_xor_port_y_0[1]) );
  XNOR2_X1 l6_xor_U1 ( .A(l5_xor_port_y_0[2]), .B(m62_mul_port_y_0[2]), .ZN(
        l6_xor_port_y_0[2]) );
  XNOR2_X1 l7_xor_U3 ( .A(l3_xor_port_y_0[0]), .B(m46_mul_port_y_0[0]), .ZN(
        l7_xor_port_y_0[0]) );
  XNOR2_X1 l7_xor_U2 ( .A(l3_xor_port_y_0[1]), .B(m46_mul_port_y_0[1]), .ZN(
        l7_xor_port_y_0[1]) );
  XNOR2_X1 l7_xor_U1 ( .A(l3_xor_port_y_0[2]), .B(m46_mul_port_y_0[2]), .ZN(
        l7_xor_port_y_0[2]) );
  XNOR2_X1 l8_xor_U3 ( .A(m59_mul_port_y_0[0]), .B(m51_mul_port_y_0[0]), .ZN(
        l8_xor_port_y_0[0]) );
  XNOR2_X1 l8_xor_U2 ( .A(m59_mul_port_y_0[1]), .B(m51_mul_port_y_0[1]), .ZN(
        l8_xor_port_y_0[1]) );
  XNOR2_X1 l8_xor_U1 ( .A(m59_mul_port_y_0[2]), .B(m51_mul_port_y_0[2]), .ZN(
        l8_xor_port_y_0[2]) );
  XNOR2_X1 l9_xor_U3 ( .A(m53_mul_port_y_0[0]), .B(m52_mul_port_y_0[0]), .ZN(
        l9_xor_port_y_0[0]) );
  XNOR2_X1 l9_xor_U2 ( .A(m53_mul_port_y_0[1]), .B(m52_mul_port_y_0[1]), .ZN(
        l9_xor_port_y_0[1]) );
  XNOR2_X1 l9_xor_U1 ( .A(m53_mul_port_y_0[2]), .B(m52_mul_port_y_0[2]), .ZN(
        l9_xor_port_y_0[2]) );
  XNOR2_X1 l10_xor_U3 ( .A(l4_xor_port_y_0[0]), .B(m53_mul_port_y_0[0]), .ZN(
        l10_xor_port_y_0[0]) );
  XNOR2_X1 l10_xor_U2 ( .A(l4_xor_port_y_0[1]), .B(m53_mul_port_y_0[1]), .ZN(
        l10_xor_port_y_0[1]) );
  XNOR2_X1 l10_xor_U1 ( .A(l4_xor_port_y_0[2]), .B(m53_mul_port_y_0[2]), .ZN(
        l10_xor_port_y_0[2]) );
  XNOR2_X1 l11_xor_U3 ( .A(l2_xor_port_y_0[0]), .B(m60_mul_port_y_0[0]), .ZN(
        l11_xor_port_y_0[0]) );
  XNOR2_X1 l11_xor_U2 ( .A(l2_xor_port_y_0[1]), .B(m60_mul_port_y_0[1]), .ZN(
        l11_xor_port_y_0[1]) );
  XNOR2_X1 l11_xor_U1 ( .A(l2_xor_port_y_0[2]), .B(m60_mul_port_y_0[2]), .ZN(
        l11_xor_port_y_0[2]) );
  XNOR2_X1 l12_xor_U3 ( .A(m51_mul_port_y_0[0]), .B(m48_mul_port_y_0[0]), .ZN(
        l12_xor_port_y_0[0]) );
  XNOR2_X1 l12_xor_U2 ( .A(m51_mul_port_y_0[1]), .B(m48_mul_port_y_0[1]), .ZN(
        l12_xor_port_y_0[1]) );
  XNOR2_X1 l12_xor_U1 ( .A(m51_mul_port_y_0[2]), .B(m48_mul_port_y_0[2]), .ZN(
        l12_xor_port_y_0[2]) );
  XNOR2_X1 l13_xor_U3 ( .A(l0_xor_port_y_0[0]), .B(m50_mul_port_y_0[0]), .ZN(
        l13_xor_port_y_0[0]) );
  XNOR2_X1 l13_xor_U2 ( .A(l0_xor_port_y_0[1]), .B(m50_mul_port_y_0[1]), .ZN(
        l13_xor_port_y_0[1]) );
  XNOR2_X1 l13_xor_U1 ( .A(l0_xor_port_y_0[2]), .B(m50_mul_port_y_0[2]), .ZN(
        l13_xor_port_y_0[2]) );
  XNOR2_X1 l14_xor_U3 ( .A(m61_mul_port_y_0[0]), .B(m52_mul_port_y_0[0]), .ZN(
        l14_xor_port_y_0[0]) );
  XNOR2_X1 l14_xor_U2 ( .A(m61_mul_port_y_0[1]), .B(m52_mul_port_y_0[1]), .ZN(
        l14_xor_port_y_0[1]) );
  XNOR2_X1 l14_xor_U1 ( .A(m61_mul_port_y_0[2]), .B(m52_mul_port_y_0[2]), .ZN(
        l14_xor_port_y_0[2]) );
  XNOR2_X1 l15_xor_U3 ( .A(l1_xor_port_y_0[0]), .B(m55_mul_port_y_0[0]), .ZN(
        l15_xor_port_y_0[0]) );
  XNOR2_X1 l15_xor_U2 ( .A(l1_xor_port_y_0[1]), .B(m55_mul_port_y_0[1]), .ZN(
        l15_xor_port_y_0[1]) );
  XNOR2_X1 l15_xor_U1 ( .A(l1_xor_port_y_0[2]), .B(m55_mul_port_y_0[2]), .ZN(
        l15_xor_port_y_0[2]) );
  XNOR2_X1 l16_xor_U3 ( .A(l0_xor_port_y_0[0]), .B(m56_mul_port_y_0[0]), .ZN(
        l16_xor_port_y_0[0]) );
  XNOR2_X1 l16_xor_U2 ( .A(l0_xor_port_y_0[1]), .B(m56_mul_port_y_0[1]), .ZN(
        l16_xor_port_y_0[1]) );
  XNOR2_X1 l16_xor_U1 ( .A(l0_xor_port_y_0[2]), .B(m56_mul_port_y_0[2]), .ZN(
        l16_xor_port_y_0[2]) );
  XNOR2_X1 l17_xor_U3 ( .A(l1_xor_port_y_0[0]), .B(m57_mul_port_y_0[0]), .ZN(
        l17_xor_port_y_0[0]) );
  XNOR2_X1 l17_xor_U2 ( .A(l1_xor_port_y_0[1]), .B(m57_mul_port_y_0[1]), .ZN(
        l17_xor_port_y_0[1]) );
  XNOR2_X1 l17_xor_U1 ( .A(l1_xor_port_y_0[2]), .B(m57_mul_port_y_0[2]), .ZN(
        l17_xor_port_y_0[2]) );
  XNOR2_X1 l18_xor_U3 ( .A(l8_xor_port_y_0[0]), .B(m58_mul_port_y_0[0]), .ZN(
        l18_xor_port_y_0[0]) );
  XNOR2_X1 l18_xor_U2 ( .A(l8_xor_port_y_0[1]), .B(m58_mul_port_y_0[1]), .ZN(
        l18_xor_port_y_0[1]) );
  XNOR2_X1 l18_xor_U1 ( .A(l8_xor_port_y_0[2]), .B(m58_mul_port_y_0[2]), .ZN(
        l18_xor_port_y_0[2]) );
  XNOR2_X1 l19_xor_U3 ( .A(l4_xor_port_y_0[0]), .B(m63_mul_port_y_0[0]), .ZN(
        l19_xor_port_y_0[0]) );
  XNOR2_X1 l19_xor_U2 ( .A(l4_xor_port_y_0[1]), .B(m63_mul_port_y_0[1]), .ZN(
        l19_xor_port_y_0[1]) );
  XNOR2_X1 l19_xor_U1 ( .A(l4_xor_port_y_0[2]), .B(m63_mul_port_y_0[2]), .ZN(
        l19_xor_port_y_0[2]) );
  XNOR2_X1 l20_xor_U3 ( .A(l1_xor_port_y_0[0]), .B(l0_xor_port_y_0[0]), .ZN(
        l20_xor_port_y_0[0]) );
  XNOR2_X1 l20_xor_U2 ( .A(l1_xor_port_y_0[1]), .B(l0_xor_port_y_0[1]), .ZN(
        l20_xor_port_y_0[1]) );
  XNOR2_X1 l20_xor_U1 ( .A(l1_xor_port_y_0[2]), .B(l0_xor_port_y_0[2]), .ZN(
        l20_xor_port_y_0[2]) );
  XNOR2_X1 l21_xor_U3 ( .A(l7_xor_port_y_0[0]), .B(l1_xor_port_y_0[0]), .ZN(
        l21_xor_port_y_0[0]) );
  XNOR2_X1 l21_xor_U2 ( .A(l7_xor_port_y_0[1]), .B(l1_xor_port_y_0[1]), .ZN(
        l21_xor_port_y_0[1]) );
  XNOR2_X1 l21_xor_U1 ( .A(l7_xor_port_y_0[2]), .B(l1_xor_port_y_0[2]), .ZN(
        l21_xor_port_y_0[2]) );
  XNOR2_X1 l22_xor_U3 ( .A(l12_xor_port_y_0[0]), .B(l3_xor_port_y_0[0]), .ZN(
        l22_xor_port_y_0[0]) );
  XNOR2_X1 l22_xor_U2 ( .A(l12_xor_port_y_0[1]), .B(l3_xor_port_y_0[1]), .ZN(
        l22_xor_port_y_0[1]) );
  XNOR2_X1 l22_xor_U1 ( .A(l12_xor_port_y_0[2]), .B(l3_xor_port_y_0[2]), .ZN(
        l22_xor_port_y_0[2]) );
  XNOR2_X1 l23_xor_U3 ( .A(l2_xor_port_y_0[0]), .B(l18_xor_port_y_0[0]), .ZN(
        l23_xor_port_y_0[0]) );
  XNOR2_X1 l23_xor_U2 ( .A(l2_xor_port_y_0[1]), .B(l18_xor_port_y_0[1]), .ZN(
        l23_xor_port_y_0[1]) );
  XNOR2_X1 l23_xor_U1 ( .A(l2_xor_port_y_0[2]), .B(l18_xor_port_y_0[2]), .ZN(
        l23_xor_port_y_0[2]) );
  XNOR2_X1 l24_xor_U3 ( .A(l9_xor_port_y_0[0]), .B(l15_xor_port_y_0[0]), .ZN(
        l24_xor_port_y_0[0]) );
  XNOR2_X1 l24_xor_U2 ( .A(l9_xor_port_y_0[1]), .B(l15_xor_port_y_0[1]), .ZN(
        l24_xor_port_y_0[1]) );
  XNOR2_X1 l24_xor_U1 ( .A(l9_xor_port_y_0[2]), .B(l15_xor_port_y_0[2]), .ZN(
        l24_xor_port_y_0[2]) );
  XNOR2_X1 l25_xor_U3 ( .A(l10_xor_port_y_0[0]), .B(l6_xor_port_y_0[0]), .ZN(
        l25_xor_port_y_0[0]) );
  XNOR2_X1 l25_xor_U2 ( .A(l10_xor_port_y_0[1]), .B(l6_xor_port_y_0[1]), .ZN(
        l25_xor_port_y_0[1]) );
  XNOR2_X1 l25_xor_U1 ( .A(l10_xor_port_y_0[2]), .B(l6_xor_port_y_0[2]), .ZN(
        l25_xor_port_y_0[2]) );
  XNOR2_X1 l26_xor_U3 ( .A(l9_xor_port_y_0[0]), .B(l7_xor_port_y_0[0]), .ZN(
        l26_xor_port_y_0[0]) );
  XNOR2_X1 l26_xor_U2 ( .A(l9_xor_port_y_0[1]), .B(l7_xor_port_y_0[1]), .ZN(
        l26_xor_port_y_0[1]) );
  XNOR2_X1 l26_xor_U1 ( .A(l9_xor_port_y_0[2]), .B(l7_xor_port_y_0[2]), .ZN(
        l26_xor_port_y_0[2]) );
  XNOR2_X1 l27_xor_U3 ( .A(l10_xor_port_y_0[0]), .B(l8_xor_port_y_0[0]), .ZN(
        l27_xor_port_y_0[0]) );
  XNOR2_X1 l27_xor_U2 ( .A(l10_xor_port_y_0[1]), .B(l8_xor_port_y_0[1]), .ZN(
        l27_xor_port_y_0[1]) );
  XNOR2_X1 l27_xor_U1 ( .A(l10_xor_port_y_0[2]), .B(l8_xor_port_y_0[2]), .ZN(
        l27_xor_port_y_0[2]) );
  XNOR2_X1 l28_xor_U3 ( .A(l14_xor_port_y_0[0]), .B(l11_xor_port_y_0[0]), .ZN(
        l28_xor_port_y_0[0]) );
  XNOR2_X1 l28_xor_U2 ( .A(l14_xor_port_y_0[1]), .B(l11_xor_port_y_0[1]), .ZN(
        l28_xor_port_y_0[1]) );
  XNOR2_X1 l28_xor_U1 ( .A(l14_xor_port_y_0[2]), .B(l11_xor_port_y_0[2]), .ZN(
        l28_xor_port_y_0[2]) );
  XNOR2_X1 l29_xor_U3 ( .A(l17_xor_port_y_0[0]), .B(l11_xor_port_y_0[0]), .ZN(
        l29_xor_port_y_0[0]) );
  XNOR2_X1 l29_xor_U2 ( .A(l17_xor_port_y_0[1]), .B(l11_xor_port_y_0[1]), .ZN(
        l29_xor_port_y_0[1]) );
  XNOR2_X1 l29_xor_U1 ( .A(l17_xor_port_y_0[2]), .B(l11_xor_port_y_0[2]), .ZN(
        l29_xor_port_y_0[2]) );
  XNOR2_X1 s0_U3 ( .A(l24_xor_port_y_0[0]), .B(l6_xor_port_y_0[0]), .ZN(
        port_y0_0[0]) );
  XNOR2_X1 s0_U2 ( .A(l24_xor_port_y_0[1]), .B(l6_xor_port_y_0[1]), .ZN(
        port_y0_0[1]) );
  XNOR2_X1 s0_U1 ( .A(l24_xor_port_y_0[2]), .B(l6_xor_port_y_0[2]), .ZN(
        port_y0_0[2]) );
  XNOR2_X1 s1_U3 ( .A(l26_xor_port_y_0[0]), .B(l16_xor_port_y_0[0]), .ZN(
        port_y1_0[0]) );
  XNOR2_X1 s1_U2 ( .A(l26_xor_port_y_0[1]), .B(l16_xor_port_y_0[1]), .ZN(
        port_y1_0[1]) );
  XNOR2_X1 s1_U1 ( .A(l26_xor_port_y_0[2]), .B(l16_xor_port_y_0[2]), .ZN(
        port_y1_0[2]) );
  XNOR2_X1 s2_U3 ( .A(l28_xor_port_y_0[0]), .B(l19_xor_port_y_0[0]), .ZN(
        port_y2_0[0]) );
  XNOR2_X1 s2_U2 ( .A(l28_xor_port_y_0[1]), .B(l19_xor_port_y_0[1]), .ZN(
        port_y2_0[1]) );
  XNOR2_X1 s2_U1 ( .A(l28_xor_port_y_0[2]), .B(l19_xor_port_y_0[2]), .ZN(
        port_y2_0[2]) );
  XNOR2_X1 s3_U3 ( .A(l21_xor_port_y_0[0]), .B(l6_xor_port_y_0[0]), .ZN(
        port_y3_0[0]) );
  XNOR2_X1 s3_U2 ( .A(l21_xor_port_y_0[1]), .B(l6_xor_port_y_0[1]), .ZN(
        port_y3_0[1]) );
  XNOR2_X1 s3_U1 ( .A(l21_xor_port_y_0[2]), .B(l6_xor_port_y_0[2]), .ZN(
        port_y3_0[2]) );
  XNOR2_X1 s4_U3 ( .A(l22_xor_port_y_0[0]), .B(l20_xor_port_y_0[0]), .ZN(
        port_y4_0[0]) );
  XNOR2_X1 s4_U2 ( .A(l22_xor_port_y_0[1]), .B(l20_xor_port_y_0[1]), .ZN(
        port_y4_0[1]) );
  XNOR2_X1 s4_U1 ( .A(l22_xor_port_y_0[2]), .B(l20_xor_port_y_0[2]), .ZN(
        port_y4_0[2]) );
  XNOR2_X1 s5_U3 ( .A(l29_xor_port_y_0[0]), .B(l25_xor_port_y_0[0]), .ZN(
        port_y5_0[0]) );
  XNOR2_X1 s5_U2 ( .A(l29_xor_port_y_0[1]), .B(l25_xor_port_y_0[1]), .ZN(
        port_y5_0[1]) );
  XNOR2_X1 s5_U1 ( .A(l29_xor_port_y_0[2]), .B(l25_xor_port_y_0[2]), .ZN(
        port_y5_0[2]) );
  XNOR2_X1 s6_U3 ( .A(l27_xor_port_y_0[0]), .B(l13_xor_port_y_0[0]), .ZN(
        port_y6_0[0]) );
  XNOR2_X1 s6_U2 ( .A(l27_xor_port_y_0[1]), .B(l13_xor_port_y_0[1]), .ZN(
        port_y6_0[1]) );
  XNOR2_X1 s6_U1 ( .A(l27_xor_port_y_0[2]), .B(l13_xor_port_y_0[2]), .ZN(
        port_y6_0[2]) );
  XNOR2_X1 s7_U3 ( .A(l23_xor_port_y_0[0]), .B(l6_xor_port_y_0[0]), .ZN(
        port_y7_0[0]) );
  XNOR2_X1 s7_U2 ( .A(l23_xor_port_y_0[1]), .B(l6_xor_port_y_0[1]), .ZN(
        port_y7_0[1]) );
  XNOR2_X1 s7_U1 ( .A(l23_xor_port_y_0[2]), .B(l6_xor_port_y_0[2]), .ZN(
        port_y7_0[2]) );
endmodule

