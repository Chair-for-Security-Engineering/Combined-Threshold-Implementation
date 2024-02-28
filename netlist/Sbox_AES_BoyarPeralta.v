/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Jan 19 13:37:24 2024
/////////////////////////////////////////////////////////////


module Sbox_AES_BoyarPeralta ( port_i_0_0, port_i_0_1, port_i_0_2, port_i_0_3, 
        port_i_0_4, port_i_0_5, port_i_0_6, port_i_0_7, port_o_0_0, port_o_0_1, 
        port_o_0_2, port_o_0_3, port_o_0_4, port_o_0_5, port_o_0_6, port_o_0_7
 );
  input [0:0] port_i_0_0;
  input [0:0] port_i_0_1;
  input [0:0] port_i_0_2;
  input [0:0] port_i_0_3;
  input [0:0] port_i_0_4;
  input [0:0] port_i_0_5;
  input [0:0] port_i_0_6;
  input [0:0] port_i_0_7;
  output [0:0] port_o_0_0;
  output [0:0] port_o_0_1;
  output [0:0] port_o_0_2;
  output [0:0] port_o_0_3;
  output [0:0] port_o_0_4;
  output [0:0] port_o_0_5;
  output [0:0] port_o_0_6;
  output [0:0] port_o_0_7;
  wire   t1_xor_port_y_0_0_, t2_xor_port_y_0_0_, t3_xor_port_y_0_0_,
         t4_xor_port_y_0_0_, t5_xor_port_y_0_0_, t6_xor_port_y_0_0_,
         t7_xor_port_y_0_0_, t8_xor_port_y_0_0_, t9_xor_port_y_0_0_,
         t10_xor_port_y_0_0_, t11_xor_port_y_0_0_, t12_xor_port_y_0_0_,
         t13_xor_port_y_0_0_, t14_xor_port_y_0_0_, t15_xor_port_y_0_0_,
         t16_xor_port_y_0_0_, t17_xor_port_y_0_0_, t18_xor_port_y_0_0_,
         t19_xor_port_y_0_0_, t20_xor_port_y_0_0_, t21_xor_port_y_0_0_,
         t22_xor_port_y_0_0_, t23_xor_port_y_0_0_, t24_xor_port_y_0_0_,
         t25_xor_port_y_0_0_, t26_xor_port_y_0_0_, t27_xor_port_y_0_0_,
         m1_port_y_0_0_, m2_port_y_0_0_, m4_port_y_0_0_, m6_port_y_0_0_,
         m7_port_y_0_0_, m9_port_y_0_0_, m11_port_y_0_0_, m12_port_y_0_0_,
         m14_port_y_0_0_, m3_xor_port_y_0_0_, m5_xor_port_y_0_0_,
         m8_xor_port_y_0_0_, m10_xor_port_y_0_0_, m13_xor_port_y_0_0_,
         m15_xor_port_y_0_0_, m16_xor_port_y_0_0_, m17_xor_port_y_0_0_,
         m18_xor_port_y_0_0_, m19_xor_port_y_0_0_, m20_xor_port_y_0_0_,
         m21_xor_port_y_0_0_, m22_xor_port_y_0_0_, m23_xor_port_y_0_0_,
         m24_xor_port_y_0_0_, m25_port_y_0_0_, m27_xor_port_y_0_0_,
         m31_port_y_0_0_, m34_port_y_0_0_, m26_xor_port_y_0_0_,
         m28_xor_port_y_0_0_, m29_port_y_0_0_, m30_port_y_0_0_,
         m32_port_y_0_0_, m33_xor_port_y_0_0_, m35_port_y_0_0_,
         m36_xor_port_y_0_0_, m37_xor_port_y_0_0_, m38_xor_port_y_0_0_,
         m39_xor_port_y_0_0_, m40_xor_port_y_0_0_, m41_xor_port_y_0_0_,
         m42_xor_port_y_0_0_, m43_xor_port_y_0_0_, m44_xor_port_y_0_0_,
         m45_xor_port_y_0_0_, m46_mul_port_y_0_0_, m47_mul_port_y_0_0_,
         m48_mul_port_y_0_0_, m49_mul_port_y_0_0_, m50_mul_port_y_0_0_,
         m51_mul_port_y_0_0_, m52_mul_port_y_0_0_, m53_mul_port_y_0_0_,
         m54_mul_port_y_0_0_, m55_mul_port_y_0_0_, m56_mul_port_y_0_0_,
         m57_mul_port_y_0_0_, m58_mul_port_y_0_0_, m59_mul_port_y_0_0_,
         m60_mul_port_y_0_0_, m61_mul_port_y_0_0_, m62_mul_port_y_0_0_,
         m63_mul_port_y_0_0_, l0_xor_port_y_0_0_, l1_xor_port_y_0_0_,
         l2_xor_port_y_0_0_, l3_xor_port_y_0_0_, l4_xor_port_y_0_0_,
         l5_xor_port_y_0_0_, l6_xor_port_y_0_0_, l7_xor_port_y_0_0_,
         l8_xor_port_y_0_0_, l9_xor_port_y_0_0_, l10_xor_port_y_0_0_,
         l11_xor_port_y_0_0_, l12_xor_port_y_0_0_, l13_xor_port_y_0_0_,
         l14_xor_port_y_0_0_, l15_xor_port_y_0_0_, l16_xor_port_y_0_0_,
         l17_xor_port_y_0_0_, l18_xor_port_y_0_0_, l19_xor_port_y_0_0_,
         l20_xor_port_y_0_0_, l21_xor_port_y_0_0_, l22_xor_port_y_0_0_,
         l23_xor_port_y_0_0_, l24_xor_port_y_0_0_, l25_xor_port_y_0_0_,
         l26_xor_port_y_0_0_, l27_xor_port_y_0_0_, l28_xor_port_y_0_0_,
         l29_xor_port_y_0_0_;

  XOR2_X1 t1_xor_U1 ( .A(port_i_0_4[0]), .B(port_i_0_7[0]), .Z(
        t1_xor_port_y_0_0_) );
  XOR2_X1 t2_xor_U1 ( .A(port_i_0_2[0]), .B(port_i_0_7[0]), .Z(
        t2_xor_port_y_0_0_) );
  XOR2_X1 t3_xor_U1 ( .A(port_i_0_1[0]), .B(port_i_0_7[0]), .Z(
        t3_xor_port_y_0_0_) );
  XOR2_X1 t4_xor_U1 ( .A(port_i_0_2[0]), .B(port_i_0_4[0]), .Z(
        t4_xor_port_y_0_0_) );
  XOR2_X1 t5_xor_U1 ( .A(port_i_0_1[0]), .B(port_i_0_3[0]), .Z(
        t5_xor_port_y_0_0_) );
  XOR2_X1 t6_xor_U1 ( .A(t5_xor_port_y_0_0_), .B(t1_xor_port_y_0_0_), .Z(
        t6_xor_port_y_0_0_) );
  XOR2_X1 t7_xor_U1 ( .A(port_i_0_5[0]), .B(port_i_0_6[0]), .Z(
        t7_xor_port_y_0_0_) );
  XOR2_X1 t8_xor_U1 ( .A(t6_xor_port_y_0_0_), .B(port_i_0_0[0]), .Z(
        t8_xor_port_y_0_0_) );
  XOR2_X1 t9_xor_U1 ( .A(t7_xor_port_y_0_0_), .B(port_i_0_0[0]), .Z(
        t9_xor_port_y_0_0_) );
  XOR2_X1 t10_xor_U1 ( .A(t7_xor_port_y_0_0_), .B(t6_xor_port_y_0_0_), .Z(
        t10_xor_port_y_0_0_) );
  XOR2_X1 t11_xor_U1 ( .A(port_i_0_2[0]), .B(port_i_0_6[0]), .Z(
        t11_xor_port_y_0_0_) );
  XOR2_X1 t12_xor_U1 ( .A(port_i_0_2[0]), .B(port_i_0_5[0]), .Z(
        t12_xor_port_y_0_0_) );
  XOR2_X1 t13_xor_U1 ( .A(t4_xor_port_y_0_0_), .B(t3_xor_port_y_0_0_), .Z(
        t13_xor_port_y_0_0_) );
  XOR2_X1 t14_xor_U1 ( .A(t11_xor_port_y_0_0_), .B(t6_xor_port_y_0_0_), .Z(
        t14_xor_port_y_0_0_) );
  XOR2_X1 t15_xor_U1 ( .A(t11_xor_port_y_0_0_), .B(t5_xor_port_y_0_0_), .Z(
        t15_xor_port_y_0_0_) );
  XOR2_X1 t16_xor_U1 ( .A(t12_xor_port_y_0_0_), .B(t5_xor_port_y_0_0_), .Z(
        t16_xor_port_y_0_0_) );
  XOR2_X1 t17_xor_U1 ( .A(t16_xor_port_y_0_0_), .B(t9_xor_port_y_0_0_), .Z(
        t17_xor_port_y_0_0_) );
  XOR2_X1 t18_xor_U1 ( .A(port_i_0_0[0]), .B(port_i_0_4[0]), .Z(
        t18_xor_port_y_0_0_) );
  XOR2_X1 t19_xor_U1 ( .A(t18_xor_port_y_0_0_), .B(t7_xor_port_y_0_0_), .Z(
        t19_xor_port_y_0_0_) );
  XOR2_X1 t20_xor_U1 ( .A(t19_xor_port_y_0_0_), .B(t1_xor_port_y_0_0_), .Z(
        t20_xor_port_y_0_0_) );
  XOR2_X1 t21_xor_U1 ( .A(port_i_0_0[0]), .B(port_i_0_1[0]), .Z(
        t21_xor_port_y_0_0_) );
  XOR2_X1 t22_xor_U1 ( .A(t21_xor_port_y_0_0_), .B(t7_xor_port_y_0_0_), .Z(
        t22_xor_port_y_0_0_) );
  XOR2_X1 t23_xor_U1 ( .A(t22_xor_port_y_0_0_), .B(t2_xor_port_y_0_0_), .Z(
        t23_xor_port_y_0_0_) );
  XOR2_X1 t24_xor_U1 ( .A(t10_xor_port_y_0_0_), .B(t2_xor_port_y_0_0_), .Z(
        t24_xor_port_y_0_0_) );
  XOR2_X1 t25_xor_U1 ( .A(t17_xor_port_y_0_0_), .B(t20_xor_port_y_0_0_), .Z(
        t25_xor_port_y_0_0_) );
  XOR2_X1 t26_xor_U1 ( .A(t16_xor_port_y_0_0_), .B(t3_xor_port_y_0_0_), .Z(
        t26_xor_port_y_0_0_) );
  XOR2_X1 t27_xor_U1 ( .A(t12_xor_port_y_0_0_), .B(t1_xor_port_y_0_0_), .Z(
        t27_xor_port_y_0_0_) );
  AND2_X1 m1_U1 ( .A1(t6_xor_port_y_0_0_), .A2(t13_xor_port_y_0_0_), .ZN(
        m1_port_y_0_0_) );
  AND2_X1 m2_U1 ( .A1(t8_xor_port_y_0_0_), .A2(t23_xor_port_y_0_0_), .ZN(
        m2_port_y_0_0_) );
  AND2_X1 m4_U1 ( .A1(port_i_0_0[0]), .A2(t19_xor_port_y_0_0_), .ZN(
        m4_port_y_0_0_) );
  AND2_X1 m6_U1 ( .A1(t16_xor_port_y_0_0_), .A2(t3_xor_port_y_0_0_), .ZN(
        m6_port_y_0_0_) );
  AND2_X1 m7_U1 ( .A1(t9_xor_port_y_0_0_), .A2(t22_xor_port_y_0_0_), .ZN(
        m7_port_y_0_0_) );
  AND2_X1 m9_U1 ( .A1(t17_xor_port_y_0_0_), .A2(t20_xor_port_y_0_0_), .ZN(
        m9_port_y_0_0_) );
  AND2_X1 m11_U1 ( .A1(t15_xor_port_y_0_0_), .A2(t1_xor_port_y_0_0_), .ZN(
        m11_port_y_0_0_) );
  AND2_X1 m12_U1 ( .A1(t27_xor_port_y_0_0_), .A2(t4_xor_port_y_0_0_), .ZN(
        m12_port_y_0_0_) );
  AND2_X1 m14_U1 ( .A1(t10_xor_port_y_0_0_), .A2(t2_xor_port_y_0_0_), .ZN(
        m14_port_y_0_0_) );
  XOR2_X1 m3_xor_U1 ( .A(m1_port_y_0_0_), .B(t14_xor_port_y_0_0_), .Z(
        m3_xor_port_y_0_0_) );
  XOR2_X1 m5_xor_U1 ( .A(m1_port_y_0_0_), .B(m4_port_y_0_0_), .Z(
        m5_xor_port_y_0_0_) );
  XOR2_X1 m8_xor_U1 ( .A(m6_port_y_0_0_), .B(t26_xor_port_y_0_0_), .Z(
        m8_xor_port_y_0_0_) );
  XOR2_X1 m10_xor_U1 ( .A(m6_port_y_0_0_), .B(m9_port_y_0_0_), .Z(
        m10_xor_port_y_0_0_) );
  XOR2_X1 m13_xor_U1 ( .A(m11_port_y_0_0_), .B(m12_port_y_0_0_), .Z(
        m13_xor_port_y_0_0_) );
  XOR2_X1 m15_xor_U1 ( .A(m11_port_y_0_0_), .B(m14_port_y_0_0_), .Z(
        m15_xor_port_y_0_0_) );
  XOR2_X1 m16_xor_U1 ( .A(m2_port_y_0_0_), .B(m3_xor_port_y_0_0_), .Z(
        m16_xor_port_y_0_0_) );
  XOR2_X1 m17_xor_U1 ( .A(t24_xor_port_y_0_0_), .B(m5_xor_port_y_0_0_), .Z(
        m17_xor_port_y_0_0_) );
  XOR2_X1 m18_xor_U1 ( .A(m7_port_y_0_0_), .B(m8_xor_port_y_0_0_), .Z(
        m18_xor_port_y_0_0_) );
  XOR2_X1 m19_xor_U1 ( .A(m15_xor_port_y_0_0_), .B(m10_xor_port_y_0_0_), .Z(
        m19_xor_port_y_0_0_) );
  XOR2_X1 m20_xor_U1 ( .A(m13_xor_port_y_0_0_), .B(m16_xor_port_y_0_0_), .Z(
        m20_xor_port_y_0_0_) );
  XOR2_X1 m21_xor_U1 ( .A(m15_xor_port_y_0_0_), .B(m17_xor_port_y_0_0_), .Z(
        m21_xor_port_y_0_0_) );
  XOR2_X1 m22_xor_U1 ( .A(m13_xor_port_y_0_0_), .B(m18_xor_port_y_0_0_), .Z(
        m22_xor_port_y_0_0_) );
  XOR2_X1 m23_xor_U1 ( .A(t25_xor_port_y_0_0_), .B(m19_xor_port_y_0_0_), .Z(
        m23_xor_port_y_0_0_) );
  XOR2_X1 m24_xor_U1 ( .A(m23_xor_port_y_0_0_), .B(m22_xor_port_y_0_0_), .Z(
        m24_xor_port_y_0_0_) );
  AND2_X1 m25_U1 ( .A1(m20_xor_port_y_0_0_), .A2(m22_xor_port_y_0_0_), .ZN(
        m25_port_y_0_0_) );
  XOR2_X1 m27_xor_U1 ( .A(m21_xor_port_y_0_0_), .B(m20_xor_port_y_0_0_), .Z(
        m27_xor_port_y_0_0_) );
  AND2_X1 m31_U1 ( .A1(m23_xor_port_y_0_0_), .A2(m20_xor_port_y_0_0_), .ZN(
        m31_port_y_0_0_) );
  AND2_X1 m34_U1 ( .A1(m22_xor_port_y_0_0_), .A2(m21_xor_port_y_0_0_), .ZN(
        m34_port_y_0_0_) );
  XOR2_X1 m26_xor_U1 ( .A(m25_port_y_0_0_), .B(m21_xor_port_y_0_0_), .Z(
        m26_xor_port_y_0_0_) );
  XOR2_X1 m28_xor_U1 ( .A(m25_port_y_0_0_), .B(m23_xor_port_y_0_0_), .Z(
        m28_xor_port_y_0_0_) );
  AND2_X1 m29_U1 ( .A1(m27_xor_port_y_0_0_), .A2(m28_xor_port_y_0_0_), .ZN(
        m29_port_y_0_0_) );
  AND2_X1 m30_U1 ( .A1(m24_xor_port_y_0_0_), .A2(m26_xor_port_y_0_0_), .ZN(
        m30_port_y_0_0_) );
  AND2_X1 m32_U1 ( .A1(m31_port_y_0_0_), .A2(m27_xor_port_y_0_0_), .ZN(
        m32_port_y_0_0_) );
  XOR2_X1 m33_xor_U1 ( .A(m25_port_y_0_0_), .B(m27_xor_port_y_0_0_), .Z(
        m33_xor_port_y_0_0_) );
  AND2_X1 m35_U1 ( .A1(m34_port_y_0_0_), .A2(m24_xor_port_y_0_0_), .ZN(
        m35_port_y_0_0_) );
  XOR2_X1 m36_xor_U1 ( .A(m25_port_y_0_0_), .B(m24_xor_port_y_0_0_), .Z(
        m36_xor_port_y_0_0_) );
  XOR2_X1 m37_xor_U1 ( .A(m29_port_y_0_0_), .B(m21_xor_port_y_0_0_), .Z(
        m37_xor_port_y_0_0_) );
  XOR2_X1 m38_xor_U1 ( .A(m33_xor_port_y_0_0_), .B(m32_port_y_0_0_), .Z(
        m38_xor_port_y_0_0_) );
  XOR2_X1 m39_xor_U1 ( .A(m30_port_y_0_0_), .B(m23_xor_port_y_0_0_), .Z(
        m39_xor_port_y_0_0_) );
  XOR2_X1 m40_xor_U1 ( .A(m36_xor_port_y_0_0_), .B(m35_port_y_0_0_), .Z(
        m40_xor_port_y_0_0_) );
  XOR2_X1 m41_xor_U1 ( .A(m40_xor_port_y_0_0_), .B(m38_xor_port_y_0_0_), .Z(
        m41_xor_port_y_0_0_) );
  XOR2_X1 m42_xor_U1 ( .A(m39_xor_port_y_0_0_), .B(m37_xor_port_y_0_0_), .Z(
        m42_xor_port_y_0_0_) );
  XOR2_X1 m43_xor_U1 ( .A(m38_xor_port_y_0_0_), .B(m37_xor_port_y_0_0_), .Z(
        m43_xor_port_y_0_0_) );
  XOR2_X1 m44_xor_U1 ( .A(m40_xor_port_y_0_0_), .B(m39_xor_port_y_0_0_), .Z(
        m44_xor_port_y_0_0_) );
  XOR2_X1 m45_xor_U1 ( .A(m41_xor_port_y_0_0_), .B(m42_xor_port_y_0_0_), .Z(
        m45_xor_port_y_0_0_) );
  AND2_X1 m46_mul_U1 ( .A1(t6_xor_port_y_0_0_), .A2(m44_xor_port_y_0_0_), .ZN(
        m46_mul_port_y_0_0_) );
  AND2_X1 m47_mul_U1 ( .A1(t8_xor_port_y_0_0_), .A2(m40_xor_port_y_0_0_), .ZN(
        m47_mul_port_y_0_0_) );
  AND2_X1 m48_mul_U1 ( .A1(port_i_0_0[0]), .A2(m39_xor_port_y_0_0_), .ZN(
        m48_mul_port_y_0_0_) );
  AND2_X1 m49_mul_U1 ( .A1(t16_xor_port_y_0_0_), .A2(m43_xor_port_y_0_0_), 
        .ZN(m49_mul_port_y_0_0_) );
  AND2_X1 m50_mul_U1 ( .A1(t9_xor_port_y_0_0_), .A2(m38_xor_port_y_0_0_), .ZN(
        m50_mul_port_y_0_0_) );
  AND2_X1 m51_mul_U1 ( .A1(t17_xor_port_y_0_0_), .A2(m37_xor_port_y_0_0_), 
        .ZN(m51_mul_port_y_0_0_) );
  AND2_X1 m52_mul_U1 ( .A1(t15_xor_port_y_0_0_), .A2(m42_xor_port_y_0_0_), 
        .ZN(m52_mul_port_y_0_0_) );
  AND2_X1 m53_mul_U1 ( .A1(t27_xor_port_y_0_0_), .A2(m45_xor_port_y_0_0_), 
        .ZN(m53_mul_port_y_0_0_) );
  AND2_X1 m54_mul_U1 ( .A1(t10_xor_port_y_0_0_), .A2(m41_xor_port_y_0_0_), 
        .ZN(m54_mul_port_y_0_0_) );
  AND2_X1 m55_mul_U1 ( .A1(t13_xor_port_y_0_0_), .A2(m44_xor_port_y_0_0_), 
        .ZN(m55_mul_port_y_0_0_) );
  AND2_X1 m56_mul_U1 ( .A1(t23_xor_port_y_0_0_), .A2(m40_xor_port_y_0_0_), 
        .ZN(m56_mul_port_y_0_0_) );
  AND2_X1 m57_mul_U1 ( .A1(t19_xor_port_y_0_0_), .A2(m39_xor_port_y_0_0_), 
        .ZN(m57_mul_port_y_0_0_) );
  AND2_X1 m58_mul_U1 ( .A1(t3_xor_port_y_0_0_), .A2(m43_xor_port_y_0_0_), .ZN(
        m58_mul_port_y_0_0_) );
  AND2_X1 m59_mul_U1 ( .A1(t22_xor_port_y_0_0_), .A2(m38_xor_port_y_0_0_), 
        .ZN(m59_mul_port_y_0_0_) );
  AND2_X1 m60_mul_U1 ( .A1(t20_xor_port_y_0_0_), .A2(m37_xor_port_y_0_0_), 
        .ZN(m60_mul_port_y_0_0_) );
  AND2_X1 m61_mul_U1 ( .A1(t1_xor_port_y_0_0_), .A2(m42_xor_port_y_0_0_), .ZN(
        m61_mul_port_y_0_0_) );
  AND2_X1 m62_mul_U1 ( .A1(t4_xor_port_y_0_0_), .A2(m45_xor_port_y_0_0_), .ZN(
        m62_mul_port_y_0_0_) );
  AND2_X1 m63_mul_U1 ( .A1(t2_xor_port_y_0_0_), .A2(m41_xor_port_y_0_0_), .ZN(
        m63_mul_port_y_0_0_) );
  XOR2_X1 l0_xor_U1 ( .A(m62_mul_port_y_0_0_), .B(m61_mul_port_y_0_0_), .Z(
        l0_xor_port_y_0_0_) );
  XOR2_X1 l1_xor_U1 ( .A(m56_mul_port_y_0_0_), .B(m50_mul_port_y_0_0_), .Z(
        l1_xor_port_y_0_0_) );
  XOR2_X1 l2_xor_U1 ( .A(m48_mul_port_y_0_0_), .B(m46_mul_port_y_0_0_), .Z(
        l2_xor_port_y_0_0_) );
  XOR2_X1 l3_xor_U1 ( .A(m55_mul_port_y_0_0_), .B(m47_mul_port_y_0_0_), .Z(
        l3_xor_port_y_0_0_) );
  XOR2_X1 l4_xor_U1 ( .A(m58_mul_port_y_0_0_), .B(m54_mul_port_y_0_0_), .Z(
        l4_xor_port_y_0_0_) );
  XOR2_X1 l5_xor_U1 ( .A(m61_mul_port_y_0_0_), .B(m49_mul_port_y_0_0_), .Z(
        l5_xor_port_y_0_0_) );
  XOR2_X1 l6_xor_U1 ( .A(l5_xor_port_y_0_0_), .B(m62_mul_port_y_0_0_), .Z(
        l6_xor_port_y_0_0_) );
  XOR2_X1 l7_xor_U1 ( .A(l3_xor_port_y_0_0_), .B(m46_mul_port_y_0_0_), .Z(
        l7_xor_port_y_0_0_) );
  XOR2_X1 l8_xor_U1 ( .A(m59_mul_port_y_0_0_), .B(m51_mul_port_y_0_0_), .Z(
        l8_xor_port_y_0_0_) );
  XOR2_X1 l9_xor_U1 ( .A(m53_mul_port_y_0_0_), .B(m52_mul_port_y_0_0_), .Z(
        l9_xor_port_y_0_0_) );
  XOR2_X1 l10_xor_U1 ( .A(l4_xor_port_y_0_0_), .B(m53_mul_port_y_0_0_), .Z(
        l10_xor_port_y_0_0_) );
  XOR2_X1 l11_xor_U1 ( .A(l2_xor_port_y_0_0_), .B(m60_mul_port_y_0_0_), .Z(
        l11_xor_port_y_0_0_) );
  XOR2_X1 l12_xor_U1 ( .A(m51_mul_port_y_0_0_), .B(m48_mul_port_y_0_0_), .Z(
        l12_xor_port_y_0_0_) );
  XOR2_X1 l13_xor_U1 ( .A(l0_xor_port_y_0_0_), .B(m50_mul_port_y_0_0_), .Z(
        l13_xor_port_y_0_0_) );
  XOR2_X1 l14_xor_U1 ( .A(m61_mul_port_y_0_0_), .B(m52_mul_port_y_0_0_), .Z(
        l14_xor_port_y_0_0_) );
  XOR2_X1 l15_xor_U1 ( .A(l1_xor_port_y_0_0_), .B(m55_mul_port_y_0_0_), .Z(
        l15_xor_port_y_0_0_) );
  XOR2_X1 l16_xor_U1 ( .A(l0_xor_port_y_0_0_), .B(m56_mul_port_y_0_0_), .Z(
        l16_xor_port_y_0_0_) );
  XOR2_X1 l17_xor_U1 ( .A(l1_xor_port_y_0_0_), .B(m57_mul_port_y_0_0_), .Z(
        l17_xor_port_y_0_0_) );
  XOR2_X1 l18_xor_U1 ( .A(l8_xor_port_y_0_0_), .B(m58_mul_port_y_0_0_), .Z(
        l18_xor_port_y_0_0_) );
  XOR2_X1 l19_xor_U1 ( .A(l4_xor_port_y_0_0_), .B(m63_mul_port_y_0_0_), .Z(
        l19_xor_port_y_0_0_) );
  XOR2_X1 l20_xor_U1 ( .A(l1_xor_port_y_0_0_), .B(l0_xor_port_y_0_0_), .Z(
        l20_xor_port_y_0_0_) );
  XOR2_X1 l21_xor_U1 ( .A(l7_xor_port_y_0_0_), .B(l1_xor_port_y_0_0_), .Z(
        l21_xor_port_y_0_0_) );
  XOR2_X1 l22_xor_U1 ( .A(l12_xor_port_y_0_0_), .B(l3_xor_port_y_0_0_), .Z(
        l22_xor_port_y_0_0_) );
  XOR2_X1 l23_xor_U1 ( .A(l2_xor_port_y_0_0_), .B(l18_xor_port_y_0_0_), .Z(
        l23_xor_port_y_0_0_) );
  XOR2_X1 l24_xor_U1 ( .A(l9_xor_port_y_0_0_), .B(l15_xor_port_y_0_0_), .Z(
        l24_xor_port_y_0_0_) );
  XOR2_X1 l25_xor_U1 ( .A(l10_xor_port_y_0_0_), .B(l6_xor_port_y_0_0_), .Z(
        l25_xor_port_y_0_0_) );
  XOR2_X1 l26_xor_U1 ( .A(l9_xor_port_y_0_0_), .B(l7_xor_port_y_0_0_), .Z(
        l26_xor_port_y_0_0_) );
  XOR2_X1 l27_xor_U1 ( .A(l10_xor_port_y_0_0_), .B(l8_xor_port_y_0_0_), .Z(
        l27_xor_port_y_0_0_) );
  XOR2_X1 l28_xor_U1 ( .A(l14_xor_port_y_0_0_), .B(l11_xor_port_y_0_0_), .Z(
        l28_xor_port_y_0_0_) );
  XOR2_X1 l29_xor_U1 ( .A(l17_xor_port_y_0_0_), .B(l11_xor_port_y_0_0_), .Z(
        l29_xor_port_y_0_0_) );
  XOR2_X1 s0_U1 ( .A(l24_xor_port_y_0_0_), .B(l6_xor_port_y_0_0_), .Z(
        port_o_0_7[0]) );
  XNOR2_X1 s1_U1 ( .A(l26_xor_port_y_0_0_), .B(l16_xor_port_y_0_0_), .ZN(
        port_o_0_6[0]) );
  XNOR2_X1 s2_U1 ( .A(l28_xor_port_y_0_0_), .B(l19_xor_port_y_0_0_), .ZN(
        port_o_0_5[0]) );
  XOR2_X1 s3_U1 ( .A(l21_xor_port_y_0_0_), .B(l6_xor_port_y_0_0_), .Z(
        port_o_0_4[0]) );
  XOR2_X1 s4_U1 ( .A(l22_xor_port_y_0_0_), .B(l20_xor_port_y_0_0_), .Z(
        port_o_0_3[0]) );
  XOR2_X1 s5_U1 ( .A(l29_xor_port_y_0_0_), .B(l25_xor_port_y_0_0_), .Z(
        port_o_0_2[0]) );
  XNOR2_X1 s6_U1 ( .A(l27_xor_port_y_0_0_), .B(l13_xor_port_y_0_0_), .ZN(
        port_o_0_1[0]) );
  XNOR2_X1 s7_U1 ( .A(l23_xor_port_y_0_0_), .B(l6_xor_port_y_0_0_), .ZN(
        port_o_0_0[0]) );
endmodule

