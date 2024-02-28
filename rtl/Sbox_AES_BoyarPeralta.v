// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : Sbox_AES_BoyarPeralta
// Git hash  : db593c14fe8e83f0a4a5d43cf13325e631d65148

`timescale 1ns/1ps

module Sbox_AES_BoyarPeralta (
  input      [0:0]    port_i_0_0,
  input      [0:0]    port_i_0_1,
  input      [0:0]    port_i_0_2,
  input      [0:0]    port_i_0_3,
  input      [0:0]    port_i_0_4,
  input      [0:0]    port_i_0_5,
  input      [0:0]    port_i_0_6,
  input      [0:0]    port_i_0_7,
  output     [0:0]    port_o_0_0,
  output     [0:0]    port_o_0_1,
  output     [0:0]    port_o_0_2,
  output     [0:0]    port_o_0_3,
  output     [0:0]    port_o_0_4,
  output     [0:0]    port_o_0_5,
  output     [0:0]    port_o_0_6,
  output     [0:0]    port_o_0_7
);

  wire       [0:0]    t1_xor_port_y_0;
  wire       [0:0]    t2_xor_port_y_0;
  wire       [0:0]    t3_xor_port_y_0;
  wire       [0:0]    t4_xor_port_y_0;
  wire       [0:0]    t5_xor_port_y_0;
  wire       [0:0]    t6_xor_port_y_0;
  wire       [0:0]    t7_xor_port_y_0;
  wire       [0:0]    t8_xor_port_y_0;
  wire       [0:0]    t9_xor_port_y_0;
  wire       [0:0]    t10_xor_port_y_0;
  wire       [0:0]    t11_xor_port_y_0;
  wire       [0:0]    t12_xor_port_y_0;
  wire       [0:0]    t13_xor_port_y_0;
  wire       [0:0]    t14_xor_port_y_0;
  wire       [0:0]    t15_xor_port_y_0;
  wire       [0:0]    t16_xor_port_y_0;
  wire       [0:0]    t17_xor_port_y_0;
  wire       [0:0]    t18_xor_port_y_0;
  wire       [0:0]    t19_xor_port_y_0;
  wire       [0:0]    t20_xor_port_y_0;
  wire       [0:0]    t21_xor_port_y_0;
  wire       [0:0]    t22_xor_port_y_0;
  wire       [0:0]    t23_xor_port_y_0;
  wire       [0:0]    t24_xor_port_y_0;
  wire       [0:0]    t25_xor_port_y_0;
  wire       [0:0]    t26_xor_port_y_0;
  wire       [0:0]    t27_xor_port_y_0;
  wire       [0:0]    m1_port_y_0;
  wire       [0:0]    m2_port_y_0;
  wire       [0:0]    m4_port_y_0;
  wire       [0:0]    m6_port_y_0;
  wire       [0:0]    m7_port_y_0;
  wire       [0:0]    m9_port_y_0;
  wire       [0:0]    m11_port_y_0;
  wire       [0:0]    m12_port_y_0;
  wire       [0:0]    m14_port_y_0;
  wire       [0:0]    m3_xor_port_y_0;
  wire       [0:0]    m5_xor_port_y_0;
  wire       [0:0]    m8_xor_port_y_0;
  wire       [0:0]    m10_xor_port_y_0;
  wire       [0:0]    m13_xor_port_y_0;
  wire       [0:0]    m15_xor_port_y_0;
  wire       [0:0]    m16_xor_port_y_0;
  wire       [0:0]    m17_xor_port_y_0;
  wire       [0:0]    m18_xor_port_y_0;
  wire       [0:0]    m19_xor_port_y_0;
  wire       [0:0]    m20_xor_port_y_0;
  wire       [0:0]    m21_xor_port_y_0;
  wire       [0:0]    m22_xor_port_y_0;
  wire       [0:0]    m23_xor_port_y_0;
  wire       [0:0]    m24_xor_port_y_0;
  wire       [0:0]    m25_port_y_0;
  wire       [0:0]    m27_xor_port_y_0;
  wire       [0:0]    m31_port_y_0;
  wire       [0:0]    m34_port_y_0;
  wire       [0:0]    m26_xor_port_y_0;
  wire       [0:0]    m28_xor_port_y_0;
  wire       [0:0]    m29_port_y_0;
  wire       [0:0]    m30_port_y_0;
  wire       [0:0]    m32_port_y_0;
  wire       [0:0]    m33_xor_port_y_0;
  wire       [0:0]    m35_port_y_0;
  wire       [0:0]    m36_xor_port_y_0;
  wire       [0:0]    m37_xor_port_y_0;
  wire       [0:0]    m38_xor_port_y_0;
  wire       [0:0]    m39_xor_port_y_0;
  wire       [0:0]    m40_xor_port_y_0;
  wire       [0:0]    m41_xor_port_y_0;
  wire       [0:0]    m42_xor_port_y_0;
  wire       [0:0]    m43_xor_port_y_0;
  wire       [0:0]    m44_xor_port_y_0;
  wire       [0:0]    m45_xor_port_y_0;
  wire       [0:0]    m46_mul_port_y_0;
  wire       [0:0]    m47_mul_port_y_0;
  wire       [0:0]    m48_mul_port_y_0;
  wire       [0:0]    m49_mul_port_y_0;
  wire       [0:0]    m50_mul_port_y_0;
  wire       [0:0]    m51_mul_port_y_0;
  wire       [0:0]    m52_mul_port_y_0;
  wire       [0:0]    m53_mul_port_y_0;
  wire       [0:0]    m54_mul_port_y_0;
  wire       [0:0]    m55_mul_port_y_0;
  wire       [0:0]    m56_mul_port_y_0;
  wire       [0:0]    m57_mul_port_y_0;
  wire       [0:0]    m58_mul_port_y_0;
  wire       [0:0]    m59_mul_port_y_0;
  wire       [0:0]    m60_mul_port_y_0;
  wire       [0:0]    m61_mul_port_y_0;
  wire       [0:0]    m62_mul_port_y_0;
  wire       [0:0]    m63_mul_port_y_0;
  wire       [0:0]    l0_xor_port_y_0;
  wire       [0:0]    l1_xor_port_y_0;
  wire       [0:0]    l2_xor_port_y_0;
  wire       [0:0]    l3_xor_port_y_0;
  wire       [0:0]    l4_xor_port_y_0;
  wire       [0:0]    l5_xor_port_y_0;
  wire       [0:0]    l6_xor_port_y_0;
  wire       [0:0]    l7_xor_port_y_0;
  wire       [0:0]    l8_xor_port_y_0;
  wire       [0:0]    l9_xor_port_y_0;
  wire       [0:0]    l10_xor_port_y_0;
  wire       [0:0]    l11_xor_port_y_0;
  wire       [0:0]    l12_xor_port_y_0;
  wire       [0:0]    l13_xor_port_y_0;
  wire       [0:0]    l14_xor_port_y_0;
  wire       [0:0]    l15_xor_port_y_0;
  wire       [0:0]    l16_xor_port_y_0;
  wire       [0:0]    l17_xor_port_y_0;
  wire       [0:0]    l18_xor_port_y_0;
  wire       [0:0]    l19_xor_port_y_0;
  wire       [0:0]    l20_xor_port_y_0;
  wire       [0:0]    l21_xor_port_y_0;
  wire       [0:0]    l22_xor_port_y_0;
  wire       [0:0]    l23_xor_port_y_0;
  wire       [0:0]    l24_xor_port_y_0;
  wire       [0:0]    l25_xor_port_y_0;
  wire       [0:0]    l26_xor_port_y_0;
  wire       [0:0]    l27_xor_port_y_0;
  wire       [0:0]    l28_xor_port_y_0;
  wire       [0:0]    l29_xor_port_y_0;
  wire       [0:0]    s0_port_y_0;
  wire       [0:0]    s1_port_y_0;
  wire       [0:0]    s2_port_y_0;
  wire       [0:0]    s3_port_y_0;
  wire       [0:0]    s4_port_y_0;
  wire       [0:0]    s5_port_y_0;
  wire       [0:0]    s6_port_y_0;
  wire       [0:0]    s7_port_y_0;
  wire       [0:0]    in_x0_0;
  wire       [0:0]    in_x1_0;
  wire       [0:0]    in_x2_0;
  wire       [0:0]    in_x3_0;
  wire       [0:0]    in_x4_0;
  wire       [0:0]    in_x5_0;
  wire       [0:0]    in_x6_0;
  wire       [0:0]    in_x7_0;
  wire       [0:0]    out_y0_0;
  wire       [0:0]    out_y1_0;
  wire       [0:0]    out_y2_0;
  wire       [0:0]    out_y3_0;
  wire       [0:0]    out_y4_0;
  wire       [0:0]    out_y5_0;
  wire       [0:0]    out_y6_0;
  wire       [0:0]    out_y7_0;
  wire       [0:0]    x7_0;
  wire       [0:0]    t1_0;
  wire       [0:0]    t2_0;
  wire       [0:0]    t3_0;
  wire       [0:0]    t4_0;
  wire       [0:0]    t6_0;
  wire       [0:0]    t7_0;
  wire       [0:0]    t8_0;
  wire       [0:0]    t9_0;
  wire       [0:0]    t10_0;
  wire       [0:0]    t13_0;
  wire       [0:0]    t14_0;
  wire       [0:0]    t15_0;
  wire       [0:0]    t16_0;
  wire       [0:0]    t17_0;
  wire       [0:0]    t19_0;
  wire       [0:0]    t20_0;
  wire       [0:0]    t22_0;
  wire       [0:0]    t23_0;
  wire       [0:0]    t24_0;
  wire       [0:0]    t25_0;
  wire       [0:0]    t26_0;
  wire       [0:0]    t27_0;
  wire       [0:0]    x7_1_0;
  wire       [0:0]    t1_1_0;
  wire       [0:0]    t2_1_0;
  wire       [0:0]    t3_1_0;
  wire       [0:0]    t4_1_0;
  wire       [0:0]    t6_1_0;
  wire       [0:0]    t8_1_0;
  wire       [0:0]    t9_1_0;
  wire       [0:0]    t10_1_0;
  wire       [0:0]    t13_1_0;
  wire       [0:0]    t15_1_0;
  wire       [0:0]    t16_1_0;
  wire       [0:0]    t17_1_0;
  wire       [0:0]    t19_1_0;
  wire       [0:0]    t20_1_0;
  wire       [0:0]    t22_1_0;
  wire       [0:0]    t23_1_0;
  wire       [0:0]    t27_1_0;
  wire       [0:0]    m21_0;
  wire       [0:0]    m23_0;
  wire       [0:0]    m24_0;
  wire       [0:0]    m27_0;
  wire       [0:0]    x7_2_0;
  wire       [0:0]    t1_2_0;
  wire       [0:0]    t2_2_0;
  wire       [0:0]    t3_2_0;
  wire       [0:0]    t4_2_0;
  wire       [0:0]    t6_2_0;
  wire       [0:0]    t8_2_0;
  wire       [0:0]    t9_2_0;
  wire       [0:0]    t10_2_0;
  wire       [0:0]    t13_2_0;
  wire       [0:0]    t15_2_0;
  wire       [0:0]    t16_2_0;
  wire       [0:0]    t17_2_0;
  wire       [0:0]    t19_2_0;
  wire       [0:0]    t20_2_0;
  wire       [0:0]    t22_2_0;
  wire       [0:0]    t23_2_0;
  wire       [0:0]    t27_2_0;
  wire       [0:0]    m21_1_0;
  wire       [0:0]    m23_1_0;
  wire       [0:0]    m33_0;
  wire       [0:0]    m36_0;

  Addition_TI t1_xor (
    .port_x0_0 (in_x0_0        ), //i
    .port_x1_0 (in_x3_0        ), //i
    .port_y_0  (t1_xor_port_y_0)  //o
  );
  Addition_TI t2_xor (
    .port_x0_0 (in_x0_0        ), //i
    .port_x1_0 (in_x5_0        ), //i
    .port_y_0  (t2_xor_port_y_0)  //o
  );
  Addition_TI t3_xor (
    .port_x0_0 (in_x0_0        ), //i
    .port_x1_0 (in_x6_0        ), //i
    .port_y_0  (t3_xor_port_y_0)  //o
  );
  Addition_TI t4_xor (
    .port_x0_0 (in_x3_0        ), //i
    .port_x1_0 (in_x5_0        ), //i
    .port_y_0  (t4_xor_port_y_0)  //o
  );
  Addition_TI t5_xor (
    .port_x0_0 (in_x4_0        ), //i
    .port_x1_0 (in_x6_0        ), //i
    .port_y_0  (t5_xor_port_y_0)  //o
  );
  Addition_TI t6_xor (
    .port_x0_0 (t1_xor_port_y_0), //i
    .port_x1_0 (t5_xor_port_y_0), //i
    .port_y_0  (t6_xor_port_y_0)  //o
  );
  Addition_TI t7_xor (
    .port_x0_0 (in_x1_0        ), //i
    .port_x1_0 (in_x2_0        ), //i
    .port_y_0  (t7_xor_port_y_0)  //o
  );
  Addition_TI t8_xor (
    .port_x0_0 (in_x7_0        ), //i
    .port_x1_0 (t6_xor_port_y_0), //i
    .port_y_0  (t8_xor_port_y_0)  //o
  );
  Addition_TI t9_xor (
    .port_x0_0 (in_x7_0        ), //i
    .port_x1_0 (t7_xor_port_y_0), //i
    .port_y_0  (t9_xor_port_y_0)  //o
  );
  Addition_TI t10_xor (
    .port_x0_0 (t6_xor_port_y_0 ), //i
    .port_x1_0 (t7_xor_port_y_0 ), //i
    .port_y_0  (t10_xor_port_y_0)  //o
  );
  Addition_TI t11_xor (
    .port_x0_0 (in_x1_0         ), //i
    .port_x1_0 (in_x5_0         ), //i
    .port_y_0  (t11_xor_port_y_0)  //o
  );
  Addition_TI t12_xor (
    .port_x0_0 (in_x2_0         ), //i
    .port_x1_0 (in_x5_0         ), //i
    .port_y_0  (t12_xor_port_y_0)  //o
  );
  Addition_TI t13_xor (
    .port_x0_0 (t3_xor_port_y_0 ), //i
    .port_x1_0 (t4_xor_port_y_0 ), //i
    .port_y_0  (t13_xor_port_y_0)  //o
  );
  Addition_TI t14_xor (
    .port_x0_0 (t6_xor_port_y_0 ), //i
    .port_x1_0 (t11_xor_port_y_0), //i
    .port_y_0  (t14_xor_port_y_0)  //o
  );
  Addition_TI t15_xor (
    .port_x0_0 (t5_xor_port_y_0 ), //i
    .port_x1_0 (t11_xor_port_y_0), //i
    .port_y_0  (t15_xor_port_y_0)  //o
  );
  Addition_TI t16_xor (
    .port_x0_0 (t5_xor_port_y_0 ), //i
    .port_x1_0 (t12_xor_port_y_0), //i
    .port_y_0  (t16_xor_port_y_0)  //o
  );
  Addition_TI t17_xor (
    .port_x0_0 (t9_xor_port_y_0 ), //i
    .port_x1_0 (t16_xor_port_y_0), //i
    .port_y_0  (t17_xor_port_y_0)  //o
  );
  Addition_TI t18_xor (
    .port_x0_0 (in_x3_0         ), //i
    .port_x1_0 (in_x7_0         ), //i
    .port_y_0  (t18_xor_port_y_0)  //o
  );
  Addition_TI t19_xor (
    .port_x0_0 (t7_xor_port_y_0 ), //i
    .port_x1_0 (t18_xor_port_y_0), //i
    .port_y_0  (t19_xor_port_y_0)  //o
  );
  Addition_TI t20_xor (
    .port_x0_0 (t1_xor_port_y_0 ), //i
    .port_x1_0 (t19_xor_port_y_0), //i
    .port_y_0  (t20_xor_port_y_0)  //o
  );
  Addition_TI t21_xor (
    .port_x0_0 (in_x6_0         ), //i
    .port_x1_0 (in_x7_0         ), //i
    .port_y_0  (t21_xor_port_y_0)  //o
  );
  Addition_TI t22_xor (
    .port_x0_0 (t7_xor_port_y_0 ), //i
    .port_x1_0 (t21_xor_port_y_0), //i
    .port_y_0  (t22_xor_port_y_0)  //o
  );
  Addition_TI t23_xor (
    .port_x0_0 (t2_xor_port_y_0 ), //i
    .port_x1_0 (t22_xor_port_y_0), //i
    .port_y_0  (t23_xor_port_y_0)  //o
  );
  Addition_TI t24_xor (
    .port_x0_0 (t2_xor_port_y_0 ), //i
    .port_x1_0 (t10_xor_port_y_0), //i
    .port_y_0  (t24_xor_port_y_0)  //o
  );
  Addition_TI t25_xor (
    .port_x0_0 (t20_xor_port_y_0), //i
    .port_x1_0 (t17_xor_port_y_0), //i
    .port_y_0  (t25_xor_port_y_0)  //o
  );
  Addition_TI t26_xor (
    .port_x0_0 (t3_xor_port_y_0 ), //i
    .port_x1_0 (t16_xor_port_y_0), //i
    .port_y_0  (t26_xor_port_y_0)  //o
  );
  Addition_TI t27_xor (
    .port_x0_0 (t1_xor_port_y_0 ), //i
    .port_x1_0 (t12_xor_port_y_0), //i
    .port_y_0  (t27_xor_port_y_0)  //o
  );
  Multiplication_TI m1 (
    .port_x0_0 (t13_xor_port_y_0), //i
    .port_x1_0 (t6_xor_port_y_0 ), //i
    .port_y_0  (m1_port_y_0     )  //o
  );
  Multiplication_TI m2 (
    .port_x0_0 (t23_xor_port_y_0), //i
    .port_x1_0 (t8_xor_port_y_0 ), //i
    .port_y_0  (m2_port_y_0     )  //o
  );
  Multiplication_TI m4 (
    .port_x0_0 (t19_xor_port_y_0), //i
    .port_x1_0 (in_x7_0         ), //i
    .port_y_0  (m4_port_y_0     )  //o
  );
  Multiplication_TI m6 (
    .port_x0_0 (t3_xor_port_y_0 ), //i
    .port_x1_0 (t16_xor_port_y_0), //i
    .port_y_0  (m6_port_y_0     )  //o
  );
  Multiplication_TI m7 (
    .port_x0_0 (t22_xor_port_y_0), //i
    .port_x1_0 (t9_xor_port_y_0 ), //i
    .port_y_0  (m7_port_y_0     )  //o
  );
  Multiplication_TI m9 (
    .port_x0_0 (t20_xor_port_y_0), //i
    .port_x1_0 (t17_xor_port_y_0), //i
    .port_y_0  (m9_port_y_0     )  //o
  );
  Multiplication_TI m11 (
    .port_x0_0 (t1_xor_port_y_0 ), //i
    .port_x1_0 (t15_xor_port_y_0), //i
    .port_y_0  (m11_port_y_0    )  //o
  );
  Multiplication_TI m12 (
    .port_x0_0 (t4_xor_port_y_0 ), //i
    .port_x1_0 (t27_xor_port_y_0), //i
    .port_y_0  (m12_port_y_0    )  //o
  );
  Multiplication_TI m14 (
    .port_x0_0 (t2_xor_port_y_0 ), //i
    .port_x1_0 (t10_xor_port_y_0), //i
    .port_y_0  (m14_port_y_0    )  //o
  );
  Addition_TI m3_xor (
    .port_x0_0 (t14_0          ), //i
    .port_x1_0 (m1_port_y_0    ), //i
    .port_y_0  (m3_xor_port_y_0)  //o
  );
  Addition_TI m5_xor (
    .port_x0_0 (m4_port_y_0    ), //i
    .port_x1_0 (m1_port_y_0    ), //i
    .port_y_0  (m5_xor_port_y_0)  //o
  );
  Addition_TI m8_xor (
    .port_x0_0 (t26_0          ), //i
    .port_x1_0 (m6_port_y_0    ), //i
    .port_y_0  (m8_xor_port_y_0)  //o
  );
  Addition_TI m10_xor (
    .port_x0_0 (m9_port_y_0     ), //i
    .port_x1_0 (m6_port_y_0     ), //i
    .port_y_0  (m10_xor_port_y_0)  //o
  );
  Addition_TI m13_xor (
    .port_x0_0 (m12_port_y_0    ), //i
    .port_x1_0 (m11_port_y_0    ), //i
    .port_y_0  (m13_xor_port_y_0)  //o
  );
  Addition_TI m15_xor (
    .port_x0_0 (m14_port_y_0    ), //i
    .port_x1_0 (m11_port_y_0    ), //i
    .port_y_0  (m15_xor_port_y_0)  //o
  );
  Addition_TI m16_xor (
    .port_x0_0 (m3_xor_port_y_0 ), //i
    .port_x1_0 (m2_port_y_0     ), //i
    .port_y_0  (m16_xor_port_y_0)  //o
  );
  Addition_TI m17_xor (
    .port_x0_0 (m5_xor_port_y_0 ), //i
    .port_x1_0 (t24_0           ), //i
    .port_y_0  (m17_xor_port_y_0)  //o
  );
  Addition_TI m18_xor (
    .port_x0_0 (m8_xor_port_y_0 ), //i
    .port_x1_0 (m7_port_y_0     ), //i
    .port_y_0  (m18_xor_port_y_0)  //o
  );
  Addition_TI m19_xor (
    .port_x0_0 (m10_xor_port_y_0), //i
    .port_x1_0 (m15_xor_port_y_0), //i
    .port_y_0  (m19_xor_port_y_0)  //o
  );
  Addition_TI m20_xor (
    .port_x0_0 (m16_xor_port_y_0), //i
    .port_x1_0 (m13_xor_port_y_0), //i
    .port_y_0  (m20_xor_port_y_0)  //o
  );
  Addition_TI m21_xor (
    .port_x0_0 (m17_xor_port_y_0), //i
    .port_x1_0 (m15_xor_port_y_0), //i
    .port_y_0  (m21_xor_port_y_0)  //o
  );
  Addition_TI m22_xor (
    .port_x0_0 (m18_xor_port_y_0), //i
    .port_x1_0 (m13_xor_port_y_0), //i
    .port_y_0  (m22_xor_port_y_0)  //o
  );
  Addition_TI m23_xor (
    .port_x0_0 (m19_xor_port_y_0), //i
    .port_x1_0 (t25_0           ), //i
    .port_y_0  (m23_xor_port_y_0)  //o
  );
  Addition_TI m24_xor (
    .port_x0_0 (m22_xor_port_y_0), //i
    .port_x1_0 (m23_xor_port_y_0), //i
    .port_y_0  (m24_xor_port_y_0)  //o
  );
  Multiplication_TI m25 (
    .port_x0_0 (m22_xor_port_y_0), //i
    .port_x1_0 (m20_xor_port_y_0), //i
    .port_y_0  (m25_port_y_0    )  //o
  );
  Addition_TI m27_xor (
    .port_x0_0 (m20_xor_port_y_0), //i
    .port_x1_0 (m21_xor_port_y_0), //i
    .port_y_0  (m27_xor_port_y_0)  //o
  );
  Multiplication_TI m31 (
    .port_x0_0 (m20_xor_port_y_0), //i
    .port_x1_0 (m23_xor_port_y_0), //i
    .port_y_0  (m31_port_y_0    )  //o
  );
  Multiplication_TI m34 (
    .port_x0_0 (m21_xor_port_y_0), //i
    .port_x1_0 (m22_xor_port_y_0), //i
    .port_y_0  (m34_port_y_0    )  //o
  );
  Addition_TI m26_xor (
    .port_x0_0 (m21_0           ), //i
    .port_x1_0 (m25_port_y_0    ), //i
    .port_y_0  (m26_xor_port_y_0)  //o
  );
  Addition_TI m28_xor (
    .port_x0_0 (m23_0           ), //i
    .port_x1_0 (m25_port_y_0    ), //i
    .port_y_0  (m28_xor_port_y_0)  //o
  );
  Multiplication_TI m29 (
    .port_x0_0 (m28_xor_port_y_0), //i
    .port_x1_0 (m27_0           ), //i
    .port_y_0  (m29_port_y_0    )  //o
  );
  Multiplication_TI m30 (
    .port_x0_0 (m26_xor_port_y_0), //i
    .port_x1_0 (m24_0           ), //i
    .port_y_0  (m30_port_y_0    )  //o
  );
  Multiplication_TI m32 (
    .port_x0_0 (m27_0       ), //i
    .port_x1_0 (m31_port_y_0), //i
    .port_y_0  (m32_port_y_0)  //o
  );
  Addition_TI m33_xor (
    .port_x0_0 (m27_0           ), //i
    .port_x1_0 (m25_port_y_0    ), //i
    .port_y_0  (m33_xor_port_y_0)  //o
  );
  Multiplication_TI m35 (
    .port_x0_0 (m24_0       ), //i
    .port_x1_0 (m34_port_y_0), //i
    .port_y_0  (m35_port_y_0)  //o
  );
  Addition_TI m36_xor (
    .port_x0_0 (m24_0           ), //i
    .port_x1_0 (m25_port_y_0    ), //i
    .port_y_0  (m36_xor_port_y_0)  //o
  );
  Addition_TI m37_xor (
    .port_x0_0 (m21_1_0         ), //i
    .port_x1_0 (m29_port_y_0    ), //i
    .port_y_0  (m37_xor_port_y_0)  //o
  );
  Addition_TI m38_xor (
    .port_x0_0 (m32_port_y_0    ), //i
    .port_x1_0 (m33_0           ), //i
    .port_y_0  (m38_xor_port_y_0)  //o
  );
  Addition_TI m39_xor (
    .port_x0_0 (m23_1_0         ), //i
    .port_x1_0 (m30_port_y_0    ), //i
    .port_y_0  (m39_xor_port_y_0)  //o
  );
  Addition_TI m40_xor (
    .port_x0_0 (m35_port_y_0    ), //i
    .port_x1_0 (m36_0           ), //i
    .port_y_0  (m40_xor_port_y_0)  //o
  );
  Addition_TI m41_xor (
    .port_x0_0 (m38_xor_port_y_0), //i
    .port_x1_0 (m40_xor_port_y_0), //i
    .port_y_0  (m41_xor_port_y_0)  //o
  );
  Addition_TI m42_xor (
    .port_x0_0 (m37_xor_port_y_0), //i
    .port_x1_0 (m39_xor_port_y_0), //i
    .port_y_0  (m42_xor_port_y_0)  //o
  );
  Addition_TI m43_xor (
    .port_x0_0 (m37_xor_port_y_0), //i
    .port_x1_0 (m38_xor_port_y_0), //i
    .port_y_0  (m43_xor_port_y_0)  //o
  );
  Addition_TI m44_xor (
    .port_x0_0 (m39_xor_port_y_0), //i
    .port_x1_0 (m40_xor_port_y_0), //i
    .port_y_0  (m44_xor_port_y_0)  //o
  );
  Addition_TI m45_xor (
    .port_x0_0 (m42_xor_port_y_0), //i
    .port_x1_0 (m41_xor_port_y_0), //i
    .port_y_0  (m45_xor_port_y_0)  //o
  );
  Multiplication_TI m46_mul (
    .port_x0_0 (m44_xor_port_y_0), //i
    .port_x1_0 (t6_2_0          ), //i
    .port_y_0  (m46_mul_port_y_0)  //o
  );
  Multiplication_TI m47_mul (
    .port_x0_0 (m40_xor_port_y_0), //i
    .port_x1_0 (t8_2_0          ), //i
    .port_y_0  (m47_mul_port_y_0)  //o
  );
  Multiplication_TI m48_mul (
    .port_x0_0 (m39_xor_port_y_0), //i
    .port_x1_0 (x7_2_0          ), //i
    .port_y_0  (m48_mul_port_y_0)  //o
  );
  Multiplication_TI m49_mul (
    .port_x0_0 (m43_xor_port_y_0), //i
    .port_x1_0 (t16_1_0         ), //i
    .port_y_0  (m49_mul_port_y_0)  //o
  );
  Multiplication_TI m50_mul (
    .port_x0_0 (m38_xor_port_y_0), //i
    .port_x1_0 (t9_2_0          ), //i
    .port_y_0  (m50_mul_port_y_0)  //o
  );
  Multiplication_TI m51_mul (
    .port_x0_0 (m37_xor_port_y_0), //i
    .port_x1_0 (t17_2_0         ), //i
    .port_y_0  (m51_mul_port_y_0)  //o
  );
  Multiplication_TI m52_mul (
    .port_x0_0 (m42_xor_port_y_0), //i
    .port_x1_0 (t15_2_0         ), //i
    .port_y_0  (m52_mul_port_y_0)  //o
  );
  Multiplication_TI m53_mul (
    .port_x0_0 (m45_xor_port_y_0), //i
    .port_x1_0 (t27_2_0         ), //i
    .port_y_0  (m53_mul_port_y_0)  //o
  );
  Multiplication_TI m54_mul (
    .port_x0_0 (m41_xor_port_y_0), //i
    .port_x1_0 (t10_2_0         ), //i
    .port_y_0  (m54_mul_port_y_0)  //o
  );
  Multiplication_TI m55_mul (
    .port_x0_0 (m44_xor_port_y_0), //i
    .port_x1_0 (t13_2_0         ), //i
    .port_y_0  (m55_mul_port_y_0)  //o
  );
  Multiplication_TI m56_mul (
    .port_x0_0 (m40_xor_port_y_0), //i
    .port_x1_0 (t23_2_0         ), //i
    .port_y_0  (m56_mul_port_y_0)  //o
  );
  Multiplication_TI m57_mul (
    .port_x0_0 (m39_xor_port_y_0), //i
    .port_x1_0 (t19_2_0         ), //i
    .port_y_0  (m57_mul_port_y_0)  //o
  );
  Multiplication_TI m58_mul (
    .port_x0_0 (m43_xor_port_y_0), //i
    .port_x1_0 (t3_2_0          ), //i
    .port_y_0  (m58_mul_port_y_0)  //o
  );
  Multiplication_TI m59_mul (
    .port_x0_0 (m38_xor_port_y_0), //i
    .port_x1_0 (t22_2_0         ), //i
    .port_y_0  (m59_mul_port_y_0)  //o
  );
  Multiplication_TI m60_mul (
    .port_x0_0 (m37_xor_port_y_0), //i
    .port_x1_0 (t20_2_0         ), //i
    .port_y_0  (m60_mul_port_y_0)  //o
  );
  Multiplication_TI m61_mul (
    .port_x0_0 (m42_xor_port_y_0), //i
    .port_x1_0 (t1_2_0          ), //i
    .port_y_0  (m61_mul_port_y_0)  //o
  );
  Multiplication_TI m62_mul (
    .port_x0_0 (m45_xor_port_y_0), //i
    .port_x1_0 (t4_2_0          ), //i
    .port_y_0  (m62_mul_port_y_0)  //o
  );
  Multiplication_TI m63_mul (
    .port_x0_0 (m41_xor_port_y_0), //i
    .port_x1_0 (t2_2_0          ), //i
    .port_y_0  (m63_mul_port_y_0)  //o
  );
  Addition_TI l0_xor (
    .port_x0_0 (m61_mul_port_y_0), //i
    .port_x1_0 (m62_mul_port_y_0), //i
    .port_y_0  (l0_xor_port_y_0 )  //o
  );
  Addition_TI l1_xor (
    .port_x0_0 (m50_mul_port_y_0), //i
    .port_x1_0 (m56_mul_port_y_0), //i
    .port_y_0  (l1_xor_port_y_0 )  //o
  );
  Addition_TI l2_xor (
    .port_x0_0 (m46_mul_port_y_0), //i
    .port_x1_0 (m48_mul_port_y_0), //i
    .port_y_0  (l2_xor_port_y_0 )  //o
  );
  Addition_TI l3_xor (
    .port_x0_0 (m47_mul_port_y_0), //i
    .port_x1_0 (m55_mul_port_y_0), //i
    .port_y_0  (l3_xor_port_y_0 )  //o
  );
  Addition_TI l4_xor (
    .port_x0_0 (m54_mul_port_y_0), //i
    .port_x1_0 (m58_mul_port_y_0), //i
    .port_y_0  (l4_xor_port_y_0 )  //o
  );
  Addition_TI l5_xor (
    .port_x0_0 (m49_mul_port_y_0), //i
    .port_x1_0 (m61_mul_port_y_0), //i
    .port_y_0  (l5_xor_port_y_0 )  //o
  );
  Addition_TI l6_xor (
    .port_x0_0 (m62_mul_port_y_0), //i
    .port_x1_0 (l5_xor_port_y_0 ), //i
    .port_y_0  (l6_xor_port_y_0 )  //o
  );
  Addition_TI l7_xor (
    .port_x0_0 (m46_mul_port_y_0), //i
    .port_x1_0 (l3_xor_port_y_0 ), //i
    .port_y_0  (l7_xor_port_y_0 )  //o
  );
  Addition_TI l8_xor (
    .port_x0_0 (m51_mul_port_y_0), //i
    .port_x1_0 (m59_mul_port_y_0), //i
    .port_y_0  (l8_xor_port_y_0 )  //o
  );
  Addition_TI l9_xor (
    .port_x0_0 (m52_mul_port_y_0), //i
    .port_x1_0 (m53_mul_port_y_0), //i
    .port_y_0  (l9_xor_port_y_0 )  //o
  );
  Addition_TI l10_xor (
    .port_x0_0 (m53_mul_port_y_0), //i
    .port_x1_0 (l4_xor_port_y_0 ), //i
    .port_y_0  (l10_xor_port_y_0)  //o
  );
  Addition_TI l11_xor (
    .port_x0_0 (m60_mul_port_y_0), //i
    .port_x1_0 (l2_xor_port_y_0 ), //i
    .port_y_0  (l11_xor_port_y_0)  //o
  );
  Addition_TI l12_xor (
    .port_x0_0 (m48_mul_port_y_0), //i
    .port_x1_0 (m51_mul_port_y_0), //i
    .port_y_0  (l12_xor_port_y_0)  //o
  );
  Addition_TI l13_xor (
    .port_x0_0 (m50_mul_port_y_0), //i
    .port_x1_0 (l0_xor_port_y_0 ), //i
    .port_y_0  (l13_xor_port_y_0)  //o
  );
  Addition_TI l14_xor (
    .port_x0_0 (m52_mul_port_y_0), //i
    .port_x1_0 (m61_mul_port_y_0), //i
    .port_y_0  (l14_xor_port_y_0)  //o
  );
  Addition_TI l15_xor (
    .port_x0_0 (m55_mul_port_y_0), //i
    .port_x1_0 (l1_xor_port_y_0 ), //i
    .port_y_0  (l15_xor_port_y_0)  //o
  );
  Addition_TI l16_xor (
    .port_x0_0 (m56_mul_port_y_0), //i
    .port_x1_0 (l0_xor_port_y_0 ), //i
    .port_y_0  (l16_xor_port_y_0)  //o
  );
  Addition_TI l17_xor (
    .port_x0_0 (m57_mul_port_y_0), //i
    .port_x1_0 (l1_xor_port_y_0 ), //i
    .port_y_0  (l17_xor_port_y_0)  //o
  );
  Addition_TI l18_xor (
    .port_x0_0 (m58_mul_port_y_0), //i
    .port_x1_0 (l8_xor_port_y_0 ), //i
    .port_y_0  (l18_xor_port_y_0)  //o
  );
  Addition_TI l19_xor (
    .port_x0_0 (m63_mul_port_y_0), //i
    .port_x1_0 (l4_xor_port_y_0 ), //i
    .port_y_0  (l19_xor_port_y_0)  //o
  );
  Addition_TI l20_xor (
    .port_x0_0 (l0_xor_port_y_0 ), //i
    .port_x1_0 (l1_xor_port_y_0 ), //i
    .port_y_0  (l20_xor_port_y_0)  //o
  );
  Addition_TI l21_xor (
    .port_x0_0 (l1_xor_port_y_0 ), //i
    .port_x1_0 (l7_xor_port_y_0 ), //i
    .port_y_0  (l21_xor_port_y_0)  //o
  );
  Addition_TI l22_xor (
    .port_x0_0 (l3_xor_port_y_0 ), //i
    .port_x1_0 (l12_xor_port_y_0), //i
    .port_y_0  (l22_xor_port_y_0)  //o
  );
  Addition_TI l23_xor (
    .port_x0_0 (l18_xor_port_y_0), //i
    .port_x1_0 (l2_xor_port_y_0 ), //i
    .port_y_0  (l23_xor_port_y_0)  //o
  );
  Addition_TI l24_xor (
    .port_x0_0 (l15_xor_port_y_0), //i
    .port_x1_0 (l9_xor_port_y_0 ), //i
    .port_y_0  (l24_xor_port_y_0)  //o
  );
  Addition_TI l25_xor (
    .port_x0_0 (l6_xor_port_y_0 ), //i
    .port_x1_0 (l10_xor_port_y_0), //i
    .port_y_0  (l25_xor_port_y_0)  //o
  );
  Addition_TI l26_xor (
    .port_x0_0 (l7_xor_port_y_0 ), //i
    .port_x1_0 (l9_xor_port_y_0 ), //i
    .port_y_0  (l26_xor_port_y_0)  //o
  );
  Addition_TI l27_xor (
    .port_x0_0 (l8_xor_port_y_0 ), //i
    .port_x1_0 (l10_xor_port_y_0), //i
    .port_y_0  (l27_xor_port_y_0)  //o
  );
  Addition_TI l28_xor (
    .port_x0_0 (l11_xor_port_y_0), //i
    .port_x1_0 (l14_xor_port_y_0), //i
    .port_y_0  (l28_xor_port_y_0)  //o
  );
  Addition_TI l29_xor (
    .port_x0_0 (l11_xor_port_y_0), //i
    .port_x1_0 (l17_xor_port_y_0), //i
    .port_y_0  (l29_xor_port_y_0)  //o
  );
  Addition_TI s0 (
    .port_x0_0 (l6_xor_port_y_0 ), //i
    .port_x1_0 (l24_xor_port_y_0), //i
    .port_y_0  (s0_port_y_0     )  //o
  );
  Addition_Inv_TI s1 (
    .port_x0_0 (l16_xor_port_y_0), //i
    .port_x1_0 (l26_xor_port_y_0), //i
    .port_y_0  (s1_port_y_0     )  //o
  );
  Addition_Inv_TI s2 (
    .port_x0_0 (l19_xor_port_y_0), //i
    .port_x1_0 (l28_xor_port_y_0), //i
    .port_y_0  (s2_port_y_0     )  //o
  );
  Addition_TI s3 (
    .port_x0_0 (l6_xor_port_y_0 ), //i
    .port_x1_0 (l21_xor_port_y_0), //i
    .port_y_0  (s3_port_y_0     )  //o
  );
  Addition_TI s4 (
    .port_x0_0 (l20_xor_port_y_0), //i
    .port_x1_0 (l22_xor_port_y_0), //i
    .port_y_0  (s4_port_y_0     )  //o
  );
  Addition_TI s5 (
    .port_x0_0 (l25_xor_port_y_0), //i
    .port_x1_0 (l29_xor_port_y_0), //i
    .port_y_0  (s5_port_y_0     )  //o
  );
  Addition_Inv_TI s6 (
    .port_x0_0 (l13_xor_port_y_0), //i
    .port_x1_0 (l27_xor_port_y_0), //i
    .port_y_0  (s6_port_y_0     )  //o
  );
  Addition_Inv_TI s7 (
    .port_x0_0 (l6_xor_port_y_0 ), //i
    .port_x1_0 (l23_xor_port_y_0), //i
    .port_y_0  (s7_port_y_0     )  //o
  );
  assign in_x0_0 = port_i_0_7;
  assign in_x1_0 = port_i_0_6;
  assign in_x2_0 = port_i_0_5;
  assign in_x3_0 = port_i_0_4;
  assign in_x4_0 = port_i_0_3;
  assign in_x5_0 = port_i_0_2;
  assign in_x6_0 = port_i_0_1;
  assign in_x7_0 = port_i_0_0;
  assign x7_0 = in_x7_0;
  assign t1_0 = t1_xor_port_y_0;
  assign t2_0 = t2_xor_port_y_0;
  assign t3_0 = t3_xor_port_y_0;
  assign t4_0 = t4_xor_port_y_0;
  assign t6_0 = t6_xor_port_y_0;
  assign t7_0 = t7_xor_port_y_0;
  assign t8_0 = t8_xor_port_y_0;
  assign t9_0 = t9_xor_port_y_0;
  assign t10_0 = t10_xor_port_y_0;
  assign t13_0 = t13_xor_port_y_0;
  assign t14_0 = t14_xor_port_y_0;
  assign t15_0 = t15_xor_port_y_0;
  assign t16_0 = t16_xor_port_y_0;
  assign t17_0 = t17_xor_port_y_0;
  assign t19_0 = t19_xor_port_y_0;
  assign t20_0 = t20_xor_port_y_0;
  assign t22_0 = t22_xor_port_y_0;
  assign t23_0 = t23_xor_port_y_0;
  assign t24_0 = t24_xor_port_y_0;
  assign t25_0 = t25_xor_port_y_0;
  assign t26_0 = t26_xor_port_y_0;
  assign t27_0 = t27_xor_port_y_0;
  assign x7_1_0 = x7_0;
  assign t1_1_0 = t1_0;
  assign t2_1_0 = t2_0;
  assign t3_1_0 = t3_0;
  assign t4_1_0 = t4_0;
  assign t6_1_0 = t6_0;
  assign t8_1_0 = t8_0;
  assign t9_1_0 = t9_0;
  assign t10_1_0 = t10_0;
  assign t13_1_0 = t13_0;
  assign t15_1_0 = t15_0;
  assign t16_1_0 = t16_0;
  assign t17_1_0 = t17_0;
  assign t19_1_0 = t19_0;
  assign t20_1_0 = t20_0;
  assign t22_1_0 = t22_0;
  assign t23_1_0 = t23_0;
  assign t27_1_0 = t27_0;
  assign m21_0 = m21_xor_port_y_0;
  assign m23_0 = m23_xor_port_y_0;
  assign m24_0 = m24_xor_port_y_0;
  assign m27_0 = m27_xor_port_y_0;
  assign x7_2_0 = x7_1_0;
  assign t1_2_0 = t1_1_0;
  assign t2_2_0 = t2_1_0;
  assign t3_2_0 = t3_1_0;
  assign t4_2_0 = t4_1_0;
  assign t6_2_0 = t6_1_0;
  assign t8_2_0 = t8_1_0;
  assign t9_2_0 = t9_1_0;
  assign t10_2_0 = t10_1_0;
  assign t13_2_0 = t13_1_0;
  assign t15_2_0 = t15_1_0;
  assign t16_2_0 = t16_1_0;
  assign t17_2_0 = t17_1_0;
  assign t19_2_0 = t19_1_0;
  assign t20_2_0 = t20_1_0;
  assign t22_2_0 = t22_1_0;
  assign t23_2_0 = t23_1_0;
  assign t27_2_0 = t27_1_0;
  assign m21_1_0 = m21_0;
  assign m23_1_0 = m23_0;
  assign m33_0 = m33_xor_port_y_0;
  assign m36_0 = m36_xor_port_y_0;
  assign out_y0_0 = s0_port_y_0;
  assign out_y1_0 = s1_port_y_0;
  assign out_y2_0 = s2_port_y_0;
  assign out_y3_0 = s3_port_y_0;
  assign out_y4_0 = s4_port_y_0;
  assign out_y5_0 = s5_port_y_0;
  assign out_y6_0 = s6_port_y_0;
  assign out_y7_0 = s7_port_y_0;
  assign port_o_0_7 = out_y0_0;
  assign port_o_0_6 = out_y1_0;
  assign port_o_0_5 = out_y2_0;
  assign port_o_0_4 = out_y3_0;
  assign port_o_0_3 = out_y4_0;
  assign port_o_0_2 = out_y5_0;
  assign port_o_0_1 = out_y6_0;
  assign port_o_0_0 = out_y7_0;

endmodule

//Addition_Inv_TI replaced by Addition_Inv_TI

//Addition_Inv_TI replaced by Addition_Inv_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_Inv_TI replaced by Addition_Inv_TI

module Addition_Inv_TI (
  input      [0:0]    port_x0_0,
  input      [0:0]    port_x1_0,
  output     [0:0]    port_y_0
);


  assign port_y_0[0] = (! (port_x0_0[0] ^ port_x1_0[0]));

endmodule

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Multiplication_TI replaced by Multiplication_TI

//Addition_TI replaced by Addition_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Addition_TI replaced by Addition_TI

//Multiplication_TI replaced by Multiplication_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

//Multiplication_TI replaced by Multiplication_TI

module Multiplication_TI (
  input      [0:0]    port_x0_0,
  input      [0:0]    port_x1_0,
  output     [0:0]    port_y_0
);


  assign port_y_0[0] = (port_x0_0[0] && port_x1_0[0]);

endmodule

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

module Addition_TI (
  input      [0:0]    port_x0_0,
  input      [0:0]    port_x1_0,
  output     [0:0]    port_y_0
);


  assign port_y_0[0] = (port_x0_0[0] ^ port_x1_0[0]);

endmodule
