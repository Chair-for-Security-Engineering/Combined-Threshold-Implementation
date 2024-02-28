// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : Sbox_AES_BoyarPeralta
// Git hash  : db593c14fe8e83f0a4a5d43cf13325e631d65148

`timescale 1ns/1ps

module Sbox_AES_BoyarPeralta_d1_k1 (
  input      [2:0]    port_i_0_0,
  input      [2:0]    port_i_0_1,
  input      [2:0]    port_i_0_2,
  input      [2:0]    port_i_0_3,
  input      [2:0]    port_i_0_4,
  input      [2:0]    port_i_0_5,
  input      [2:0]    port_i_0_6,
  input      [2:0]    port_i_0_7,
  input      [2:0]    port_i_1_0,
  input      [2:0]    port_i_1_1,
  input      [2:0]    port_i_1_2,
  input      [2:0]    port_i_1_3,
  input      [2:0]    port_i_1_4,
  input      [2:0]    port_i_1_5,
  input      [2:0]    port_i_1_6,
  input      [2:0]    port_i_1_7,
  input      [2:0]    port_i_2_0,
  input      [2:0]    port_i_2_1,
  input      [2:0]    port_i_2_2,
  input      [2:0]    port_i_2_3,
  input      [2:0]    port_i_2_4,
  input      [2:0]    port_i_2_5,
  input      [2:0]    port_i_2_6,
  input      [2:0]    port_i_2_7,
  input      [2:0]    port_i_3_0,
  input      [2:0]    port_i_3_1,
  input      [2:0]    port_i_3_2,
  input      [2:0]    port_i_3_3,
  input      [2:0]    port_i_3_4,
  input      [2:0]    port_i_3_5,
  input      [2:0]    port_i_3_6,
  input      [2:0]    port_i_3_7,
  output     [2:0]    port_o_0_0,
  output     [2:0]    port_o_0_1,
  output     [2:0]    port_o_0_2,
  output     [2:0]    port_o_0_3,
  output     [2:0]    port_o_0_4,
  output     [2:0]    port_o_0_5,
  output     [2:0]    port_o_0_6,
  output     [2:0]    port_o_0_7,
  output     [2:0]    port_o_1_0,
  output     [2:0]    port_o_1_1,
  output     [2:0]    port_o_1_2,
  output     [2:0]    port_o_1_3,
  output     [2:0]    port_o_1_4,
  output     [2:0]    port_o_1_5,
  output     [2:0]    port_o_1_6,
  output     [2:0]    port_o_1_7,
  output     [2:0]    port_o_2_0,
  output     [2:0]    port_o_2_1,
  output     [2:0]    port_o_2_2,
  output     [2:0]    port_o_2_3,
  output     [2:0]    port_o_2_4,
  output     [2:0]    port_o_2_5,
  output     [2:0]    port_o_2_6,
  output     [2:0]    port_o_2_7,
  output     [2:0]    port_o_3_0,
  output     [2:0]    port_o_3_1,
  output     [2:0]    port_o_3_2,
  output     [2:0]    port_o_3_3,
  output     [2:0]    port_o_3_4,
  output     [2:0]    port_o_3_5,
  output     [2:0]    port_o_3_6,
  output     [2:0]    port_o_3_7,
  input               clk,
  input               reset
);

  wire       [2:0]    t1_xor_port_y_0;
  wire       [2:0]    t1_xor_port_y_1;
  wire       [2:0]    t1_xor_port_y_2;
  wire       [2:0]    t1_xor_port_y_3;
  wire       [2:0]    t2_xor_port_y_0;
  wire       [2:0]    t2_xor_port_y_1;
  wire       [2:0]    t2_xor_port_y_2;
  wire       [2:0]    t2_xor_port_y_3;
  wire       [2:0]    t3_xor_port_y_0;
  wire       [2:0]    t3_xor_port_y_1;
  wire       [2:0]    t3_xor_port_y_2;
  wire       [2:0]    t3_xor_port_y_3;
  wire       [2:0]    t4_xor_port_y_0;
  wire       [2:0]    t4_xor_port_y_1;
  wire       [2:0]    t4_xor_port_y_2;
  wire       [2:0]    t4_xor_port_y_3;
  wire       [2:0]    t5_xor_port_y_0;
  wire       [2:0]    t5_xor_port_y_1;
  wire       [2:0]    t5_xor_port_y_2;
  wire       [2:0]    t5_xor_port_y_3;
  wire       [2:0]    t6_xor_port_y_0;
  wire       [2:0]    t6_xor_port_y_1;
  wire       [2:0]    t6_xor_port_y_2;
  wire       [2:0]    t6_xor_port_y_3;
  wire       [2:0]    t7_xor_port_y_0;
  wire       [2:0]    t7_xor_port_y_1;
  wire       [2:0]    t7_xor_port_y_2;
  wire       [2:0]    t7_xor_port_y_3;
  wire       [2:0]    t8_xor_port_y_0;
  wire       [2:0]    t8_xor_port_y_1;
  wire       [2:0]    t8_xor_port_y_2;
  wire       [2:0]    t8_xor_port_y_3;
  wire       [2:0]    t9_xor_port_y_0;
  wire       [2:0]    t9_xor_port_y_1;
  wire       [2:0]    t9_xor_port_y_2;
  wire       [2:0]    t9_xor_port_y_3;
  wire       [2:0]    t10_xor_port_y_0;
  wire       [2:0]    t10_xor_port_y_1;
  wire       [2:0]    t10_xor_port_y_2;
  wire       [2:0]    t10_xor_port_y_3;
  wire       [2:0]    t11_xor_port_y_0;
  wire       [2:0]    t11_xor_port_y_1;
  wire       [2:0]    t11_xor_port_y_2;
  wire       [2:0]    t11_xor_port_y_3;
  wire       [2:0]    t12_xor_port_y_0;
  wire       [2:0]    t12_xor_port_y_1;
  wire       [2:0]    t12_xor_port_y_2;
  wire       [2:0]    t12_xor_port_y_3;
  wire       [2:0]    t13_xor_port_y_0;
  wire       [2:0]    t13_xor_port_y_1;
  wire       [2:0]    t13_xor_port_y_2;
  wire       [2:0]    t13_xor_port_y_3;
  wire       [2:0]    t14_xor_port_y_0;
  wire       [2:0]    t14_xor_port_y_1;
  wire       [2:0]    t14_xor_port_y_2;
  wire       [2:0]    t14_xor_port_y_3;
  wire       [2:0]    t15_xor_port_y_0;
  wire       [2:0]    t15_xor_port_y_1;
  wire       [2:0]    t15_xor_port_y_2;
  wire       [2:0]    t15_xor_port_y_3;
  wire       [2:0]    t16_xor_port_y_0;
  wire       [2:0]    t16_xor_port_y_1;
  wire       [2:0]    t16_xor_port_y_2;
  wire       [2:0]    t16_xor_port_y_3;
  wire       [2:0]    t17_xor_port_y_0;
  wire       [2:0]    t17_xor_port_y_1;
  wire       [2:0]    t17_xor_port_y_2;
  wire       [2:0]    t17_xor_port_y_3;
  wire       [2:0]    t18_xor_port_y_0;
  wire       [2:0]    t18_xor_port_y_1;
  wire       [2:0]    t18_xor_port_y_2;
  wire       [2:0]    t18_xor_port_y_3;
  wire       [2:0]    t19_xor_port_y_0;
  wire       [2:0]    t19_xor_port_y_1;
  wire       [2:0]    t19_xor_port_y_2;
  wire       [2:0]    t19_xor_port_y_3;
  wire       [2:0]    t20_xor_port_y_0;
  wire       [2:0]    t20_xor_port_y_1;
  wire       [2:0]    t20_xor_port_y_2;
  wire       [2:0]    t20_xor_port_y_3;
  wire       [2:0]    t21_xor_port_y_0;
  wire       [2:0]    t21_xor_port_y_1;
  wire       [2:0]    t21_xor_port_y_2;
  wire       [2:0]    t21_xor_port_y_3;
  wire       [2:0]    t22_xor_port_y_0;
  wire       [2:0]    t22_xor_port_y_1;
  wire       [2:0]    t22_xor_port_y_2;
  wire       [2:0]    t22_xor_port_y_3;
  wire       [2:0]    t23_xor_port_y_0;
  wire       [2:0]    t23_xor_port_y_1;
  wire       [2:0]    t23_xor_port_y_2;
  wire       [2:0]    t23_xor_port_y_3;
  wire       [2:0]    t24_xor_port_y_0;
  wire       [2:0]    t24_xor_port_y_1;
  wire       [2:0]    t24_xor_port_y_2;
  wire       [2:0]    t24_xor_port_y_3;
  wire       [2:0]    t25_xor_port_y_0;
  wire       [2:0]    t25_xor_port_y_1;
  wire       [2:0]    t25_xor_port_y_2;
  wire       [2:0]    t25_xor_port_y_3;
  wire       [2:0]    t26_xor_port_y_0;
  wire       [2:0]    t26_xor_port_y_1;
  wire       [2:0]    t26_xor_port_y_2;
  wire       [2:0]    t26_xor_port_y_3;
  wire       [2:0]    t27_xor_port_y_0;
  wire       [2:0]    t27_xor_port_y_1;
  wire       [2:0]    t27_xor_port_y_2;
  wire       [2:0]    t27_xor_port_y_3;
  wire       [2:0]    m1_port_y_0;
  wire       [2:0]    m1_port_y_1;
  wire       [2:0]    m1_port_y_2;
  wire       [2:0]    m1_port_y_3;
  wire       [2:0]    m2_port_y_0;
  wire       [2:0]    m2_port_y_1;
  wire       [2:0]    m2_port_y_2;
  wire       [2:0]    m2_port_y_3;
  wire       [2:0]    m4_port_y_0;
  wire       [2:0]    m4_port_y_1;
  wire       [2:0]    m4_port_y_2;
  wire       [2:0]    m4_port_y_3;
  wire       [2:0]    m6_port_y_0;
  wire       [2:0]    m6_port_y_1;
  wire       [2:0]    m6_port_y_2;
  wire       [2:0]    m6_port_y_3;
  wire       [2:0]    m7_port_y_0;
  wire       [2:0]    m7_port_y_1;
  wire       [2:0]    m7_port_y_2;
  wire       [2:0]    m7_port_y_3;
  wire       [2:0]    m9_port_y_0;
  wire       [2:0]    m9_port_y_1;
  wire       [2:0]    m9_port_y_2;
  wire       [2:0]    m9_port_y_3;
  wire       [2:0]    m11_port_y_0;
  wire       [2:0]    m11_port_y_1;
  wire       [2:0]    m11_port_y_2;
  wire       [2:0]    m11_port_y_3;
  wire       [2:0]    m12_port_y_0;
  wire       [2:0]    m12_port_y_1;
  wire       [2:0]    m12_port_y_2;
  wire       [2:0]    m12_port_y_3;
  wire       [2:0]    m14_port_y_0;
  wire       [2:0]    m14_port_y_1;
  wire       [2:0]    m14_port_y_2;
  wire       [2:0]    m14_port_y_3;
  wire       [2:0]    m3_xor_port_y_0;
  wire       [2:0]    m3_xor_port_y_1;
  wire       [2:0]    m3_xor_port_y_2;
  wire       [2:0]    m3_xor_port_y_3;
  wire       [2:0]    m5_xor_port_y_0;
  wire       [2:0]    m5_xor_port_y_1;
  wire       [2:0]    m5_xor_port_y_2;
  wire       [2:0]    m5_xor_port_y_3;
  wire       [2:0]    m8_xor_port_y_0;
  wire       [2:0]    m8_xor_port_y_1;
  wire       [2:0]    m8_xor_port_y_2;
  wire       [2:0]    m8_xor_port_y_3;
  wire       [2:0]    m10_xor_port_y_0;
  wire       [2:0]    m10_xor_port_y_1;
  wire       [2:0]    m10_xor_port_y_2;
  wire       [2:0]    m10_xor_port_y_3;
  wire       [2:0]    m13_xor_port_y_0;
  wire       [2:0]    m13_xor_port_y_1;
  wire       [2:0]    m13_xor_port_y_2;
  wire       [2:0]    m13_xor_port_y_3;
  wire       [2:0]    m15_xor_port_y_0;
  wire       [2:0]    m15_xor_port_y_1;
  wire       [2:0]    m15_xor_port_y_2;
  wire       [2:0]    m15_xor_port_y_3;
  wire       [2:0]    m16_xor_port_y_0;
  wire       [2:0]    m16_xor_port_y_1;
  wire       [2:0]    m16_xor_port_y_2;
  wire       [2:0]    m16_xor_port_y_3;
  wire       [2:0]    m17_xor_port_y_0;
  wire       [2:0]    m17_xor_port_y_1;
  wire       [2:0]    m17_xor_port_y_2;
  wire       [2:0]    m17_xor_port_y_3;
  wire       [2:0]    m18_xor_port_y_0;
  wire       [2:0]    m18_xor_port_y_1;
  wire       [2:0]    m18_xor_port_y_2;
  wire       [2:0]    m18_xor_port_y_3;
  wire       [2:0]    m19_xor_port_y_0;
  wire       [2:0]    m19_xor_port_y_1;
  wire       [2:0]    m19_xor_port_y_2;
  wire       [2:0]    m19_xor_port_y_3;
  wire       [2:0]    m20_xor_port_y_0;
  wire       [2:0]    m20_xor_port_y_1;
  wire       [2:0]    m20_xor_port_y_2;
  wire       [2:0]    m20_xor_port_y_3;
  wire       [2:0]    m21_xor_port_y_0;
  wire       [2:0]    m21_xor_port_y_1;
  wire       [2:0]    m21_xor_port_y_2;
  wire       [2:0]    m21_xor_port_y_3;
  wire       [2:0]    m22_xor_port_y_0;
  wire       [2:0]    m22_xor_port_y_1;
  wire       [2:0]    m22_xor_port_y_2;
  wire       [2:0]    m22_xor_port_y_3;
  wire       [2:0]    m23_xor_port_y_0;
  wire       [2:0]    m23_xor_port_y_1;
  wire       [2:0]    m23_xor_port_y_2;
  wire       [2:0]    m23_xor_port_y_3;
  wire       [2:0]    m24_xor_port_y_0;
  wire       [2:0]    m24_xor_port_y_1;
  wire       [2:0]    m24_xor_port_y_2;
  wire       [2:0]    m24_xor_port_y_3;
  wire       [2:0]    m25_port_y_0;
  wire       [2:0]    m25_port_y_1;
  wire       [2:0]    m25_port_y_2;
  wire       [2:0]    m25_port_y_3;
  wire       [2:0]    m27_xor_port_y_0;
  wire       [2:0]    m27_xor_port_y_1;
  wire       [2:0]    m27_xor_port_y_2;
  wire       [2:0]    m27_xor_port_y_3;
  wire       [2:0]    m31_port_y_0;
  wire       [2:0]    m31_port_y_1;
  wire       [2:0]    m31_port_y_2;
  wire       [2:0]    m31_port_y_3;
  wire       [2:0]    m34_port_y_0;
  wire       [2:0]    m34_port_y_1;
  wire       [2:0]    m34_port_y_2;
  wire       [2:0]    m34_port_y_3;
  wire       [2:0]    m26_xor_port_y_0;
  wire       [2:0]    m26_xor_port_y_1;
  wire       [2:0]    m26_xor_port_y_2;
  wire       [2:0]    m26_xor_port_y_3;
  wire       [2:0]    m28_xor_port_y_0;
  wire       [2:0]    m28_xor_port_y_1;
  wire       [2:0]    m28_xor_port_y_2;
  wire       [2:0]    m28_xor_port_y_3;
  wire       [2:0]    m29_port_y_0;
  wire       [2:0]    m29_port_y_1;
  wire       [2:0]    m29_port_y_2;
  wire       [2:0]    m29_port_y_3;
  wire       [2:0]    m30_port_y_0;
  wire       [2:0]    m30_port_y_1;
  wire       [2:0]    m30_port_y_2;
  wire       [2:0]    m30_port_y_3;
  wire       [2:0]    m32_port_y_0;
  wire       [2:0]    m32_port_y_1;
  wire       [2:0]    m32_port_y_2;
  wire       [2:0]    m32_port_y_3;
  wire       [2:0]    m33_xor_port_y_0;
  wire       [2:0]    m33_xor_port_y_1;
  wire       [2:0]    m33_xor_port_y_2;
  wire       [2:0]    m33_xor_port_y_3;
  wire       [2:0]    m35_port_y_0;
  wire       [2:0]    m35_port_y_1;
  wire       [2:0]    m35_port_y_2;
  wire       [2:0]    m35_port_y_3;
  wire       [2:0]    m36_xor_port_y_0;
  wire       [2:0]    m36_xor_port_y_1;
  wire       [2:0]    m36_xor_port_y_2;
  wire       [2:0]    m36_xor_port_y_3;
  wire       [2:0]    m37_xor_port_y_0;
  wire       [2:0]    m37_xor_port_y_1;
  wire       [2:0]    m37_xor_port_y_2;
  wire       [2:0]    m37_xor_port_y_3;
  wire       [2:0]    m38_xor_port_y_0;
  wire       [2:0]    m38_xor_port_y_1;
  wire       [2:0]    m38_xor_port_y_2;
  wire       [2:0]    m38_xor_port_y_3;
  wire       [2:0]    m39_xor_port_y_0;
  wire       [2:0]    m39_xor_port_y_1;
  wire       [2:0]    m39_xor_port_y_2;
  wire       [2:0]    m39_xor_port_y_3;
  wire       [2:0]    m40_xor_port_y_0;
  wire       [2:0]    m40_xor_port_y_1;
  wire       [2:0]    m40_xor_port_y_2;
  wire       [2:0]    m40_xor_port_y_3;
  wire       [2:0]    m41_xor_port_y_0;
  wire       [2:0]    m41_xor_port_y_1;
  wire       [2:0]    m41_xor_port_y_2;
  wire       [2:0]    m41_xor_port_y_3;
  wire       [2:0]    m42_xor_port_y_0;
  wire       [2:0]    m42_xor_port_y_1;
  wire       [2:0]    m42_xor_port_y_2;
  wire       [2:0]    m42_xor_port_y_3;
  wire       [2:0]    m43_xor_port_y_0;
  wire       [2:0]    m43_xor_port_y_1;
  wire       [2:0]    m43_xor_port_y_2;
  wire       [2:0]    m43_xor_port_y_3;
  wire       [2:0]    m44_xor_port_y_0;
  wire       [2:0]    m44_xor_port_y_1;
  wire       [2:0]    m44_xor_port_y_2;
  wire       [2:0]    m44_xor_port_y_3;
  wire       [2:0]    m45_xor_port_y_0;
  wire       [2:0]    m45_xor_port_y_1;
  wire       [2:0]    m45_xor_port_y_2;
  wire       [2:0]    m45_xor_port_y_3;
  wire       [2:0]    m46_mul_port_y_0;
  wire       [2:0]    m46_mul_port_y_1;
  wire       [2:0]    m46_mul_port_y_2;
  wire       [2:0]    m46_mul_port_y_3;
  wire       [2:0]    m47_mul_port_y_0;
  wire       [2:0]    m47_mul_port_y_1;
  wire       [2:0]    m47_mul_port_y_2;
  wire       [2:0]    m47_mul_port_y_3;
  wire       [2:0]    m48_mul_port_y_0;
  wire       [2:0]    m48_mul_port_y_1;
  wire       [2:0]    m48_mul_port_y_2;
  wire       [2:0]    m48_mul_port_y_3;
  wire       [2:0]    m49_mul_port_y_0;
  wire       [2:0]    m49_mul_port_y_1;
  wire       [2:0]    m49_mul_port_y_2;
  wire       [2:0]    m49_mul_port_y_3;
  wire       [2:0]    m50_mul_port_y_0;
  wire       [2:0]    m50_mul_port_y_1;
  wire       [2:0]    m50_mul_port_y_2;
  wire       [2:0]    m50_mul_port_y_3;
  wire       [2:0]    m51_mul_port_y_0;
  wire       [2:0]    m51_mul_port_y_1;
  wire       [2:0]    m51_mul_port_y_2;
  wire       [2:0]    m51_mul_port_y_3;
  wire       [2:0]    m52_mul_port_y_0;
  wire       [2:0]    m52_mul_port_y_1;
  wire       [2:0]    m52_mul_port_y_2;
  wire       [2:0]    m52_mul_port_y_3;
  wire       [2:0]    m53_mul_port_y_0;
  wire       [2:0]    m53_mul_port_y_1;
  wire       [2:0]    m53_mul_port_y_2;
  wire       [2:0]    m53_mul_port_y_3;
  wire       [2:0]    m54_mul_port_y_0;
  wire       [2:0]    m54_mul_port_y_1;
  wire       [2:0]    m54_mul_port_y_2;
  wire       [2:0]    m54_mul_port_y_3;
  wire       [2:0]    m55_mul_port_y_0;
  wire       [2:0]    m55_mul_port_y_1;
  wire       [2:0]    m55_mul_port_y_2;
  wire       [2:0]    m55_mul_port_y_3;
  wire       [2:0]    m56_mul_port_y_0;
  wire       [2:0]    m56_mul_port_y_1;
  wire       [2:0]    m56_mul_port_y_2;
  wire       [2:0]    m56_mul_port_y_3;
  wire       [2:0]    m57_mul_port_y_0;
  wire       [2:0]    m57_mul_port_y_1;
  wire       [2:0]    m57_mul_port_y_2;
  wire       [2:0]    m57_mul_port_y_3;
  wire       [2:0]    m58_mul_port_y_0;
  wire       [2:0]    m58_mul_port_y_1;
  wire       [2:0]    m58_mul_port_y_2;
  wire       [2:0]    m58_mul_port_y_3;
  wire       [2:0]    m59_mul_port_y_0;
  wire       [2:0]    m59_mul_port_y_1;
  wire       [2:0]    m59_mul_port_y_2;
  wire       [2:0]    m59_mul_port_y_3;
  wire       [2:0]    m60_mul_port_y_0;
  wire       [2:0]    m60_mul_port_y_1;
  wire       [2:0]    m60_mul_port_y_2;
  wire       [2:0]    m60_mul_port_y_3;
  wire       [2:0]    m61_mul_port_y_0;
  wire       [2:0]    m61_mul_port_y_1;
  wire       [2:0]    m61_mul_port_y_2;
  wire       [2:0]    m61_mul_port_y_3;
  wire       [2:0]    m62_mul_port_y_0;
  wire       [2:0]    m62_mul_port_y_1;
  wire       [2:0]    m62_mul_port_y_2;
  wire       [2:0]    m62_mul_port_y_3;
  wire       [2:0]    m63_mul_port_y_0;
  wire       [2:0]    m63_mul_port_y_1;
  wire       [2:0]    m63_mul_port_y_2;
  wire       [2:0]    m63_mul_port_y_3;
  wire       [2:0]    l0_xor_port_y_0;
  wire       [2:0]    l0_xor_port_y_1;
  wire       [2:0]    l0_xor_port_y_2;
  wire       [2:0]    l0_xor_port_y_3;
  wire       [2:0]    l1_xor_port_y_0;
  wire       [2:0]    l1_xor_port_y_1;
  wire       [2:0]    l1_xor_port_y_2;
  wire       [2:0]    l1_xor_port_y_3;
  wire       [2:0]    l2_xor_port_y_0;
  wire       [2:0]    l2_xor_port_y_1;
  wire       [2:0]    l2_xor_port_y_2;
  wire       [2:0]    l2_xor_port_y_3;
  wire       [2:0]    l3_xor_port_y_0;
  wire       [2:0]    l3_xor_port_y_1;
  wire       [2:0]    l3_xor_port_y_2;
  wire       [2:0]    l3_xor_port_y_3;
  wire       [2:0]    l4_xor_port_y_0;
  wire       [2:0]    l4_xor_port_y_1;
  wire       [2:0]    l4_xor_port_y_2;
  wire       [2:0]    l4_xor_port_y_3;
  wire       [2:0]    l5_xor_port_y_0;
  wire       [2:0]    l5_xor_port_y_1;
  wire       [2:0]    l5_xor_port_y_2;
  wire       [2:0]    l5_xor_port_y_3;
  wire       [2:0]    l6_xor_port_y_0;
  wire       [2:0]    l6_xor_port_y_1;
  wire       [2:0]    l6_xor_port_y_2;
  wire       [2:0]    l6_xor_port_y_3;
  wire       [2:0]    l7_xor_port_y_0;
  wire       [2:0]    l7_xor_port_y_1;
  wire       [2:0]    l7_xor_port_y_2;
  wire       [2:0]    l7_xor_port_y_3;
  wire       [2:0]    l8_xor_port_y_0;
  wire       [2:0]    l8_xor_port_y_1;
  wire       [2:0]    l8_xor_port_y_2;
  wire       [2:0]    l8_xor_port_y_3;
  wire       [2:0]    l9_xor_port_y_0;
  wire       [2:0]    l9_xor_port_y_1;
  wire       [2:0]    l9_xor_port_y_2;
  wire       [2:0]    l9_xor_port_y_3;
  wire       [2:0]    l10_xor_port_y_0;
  wire       [2:0]    l10_xor_port_y_1;
  wire       [2:0]    l10_xor_port_y_2;
  wire       [2:0]    l10_xor_port_y_3;
  wire       [2:0]    l11_xor_port_y_0;
  wire       [2:0]    l11_xor_port_y_1;
  wire       [2:0]    l11_xor_port_y_2;
  wire       [2:0]    l11_xor_port_y_3;
  wire       [2:0]    l12_xor_port_y_0;
  wire       [2:0]    l12_xor_port_y_1;
  wire       [2:0]    l12_xor_port_y_2;
  wire       [2:0]    l12_xor_port_y_3;
  wire       [2:0]    l13_xor_port_y_0;
  wire       [2:0]    l13_xor_port_y_1;
  wire       [2:0]    l13_xor_port_y_2;
  wire       [2:0]    l13_xor_port_y_3;
  wire       [2:0]    l14_xor_port_y_0;
  wire       [2:0]    l14_xor_port_y_1;
  wire       [2:0]    l14_xor_port_y_2;
  wire       [2:0]    l14_xor_port_y_3;
  wire       [2:0]    l15_xor_port_y_0;
  wire       [2:0]    l15_xor_port_y_1;
  wire       [2:0]    l15_xor_port_y_2;
  wire       [2:0]    l15_xor_port_y_3;
  wire       [2:0]    l16_xor_port_y_0;
  wire       [2:0]    l16_xor_port_y_1;
  wire       [2:0]    l16_xor_port_y_2;
  wire       [2:0]    l16_xor_port_y_3;
  wire       [2:0]    l17_xor_port_y_0;
  wire       [2:0]    l17_xor_port_y_1;
  wire       [2:0]    l17_xor_port_y_2;
  wire       [2:0]    l17_xor_port_y_3;
  wire       [2:0]    l18_xor_port_y_0;
  wire       [2:0]    l18_xor_port_y_1;
  wire       [2:0]    l18_xor_port_y_2;
  wire       [2:0]    l18_xor_port_y_3;
  wire       [2:0]    l19_xor_port_y_0;
  wire       [2:0]    l19_xor_port_y_1;
  wire       [2:0]    l19_xor_port_y_2;
  wire       [2:0]    l19_xor_port_y_3;
  wire       [2:0]    l20_xor_port_y_0;
  wire       [2:0]    l20_xor_port_y_1;
  wire       [2:0]    l20_xor_port_y_2;
  wire       [2:0]    l20_xor_port_y_3;
  wire       [2:0]    l21_xor_port_y_0;
  wire       [2:0]    l21_xor_port_y_1;
  wire       [2:0]    l21_xor_port_y_2;
  wire       [2:0]    l21_xor_port_y_3;
  wire       [2:0]    l22_xor_port_y_0;
  wire       [2:0]    l22_xor_port_y_1;
  wire       [2:0]    l22_xor_port_y_2;
  wire       [2:0]    l22_xor_port_y_3;
  wire       [2:0]    l23_xor_port_y_0;
  wire       [2:0]    l23_xor_port_y_1;
  wire       [2:0]    l23_xor_port_y_2;
  wire       [2:0]    l23_xor_port_y_3;
  wire       [2:0]    l24_xor_port_y_0;
  wire       [2:0]    l24_xor_port_y_1;
  wire       [2:0]    l24_xor_port_y_2;
  wire       [2:0]    l24_xor_port_y_3;
  wire       [2:0]    l25_xor_port_y_0;
  wire       [2:0]    l25_xor_port_y_1;
  wire       [2:0]    l25_xor_port_y_2;
  wire       [2:0]    l25_xor_port_y_3;
  wire       [2:0]    l26_xor_port_y_0;
  wire       [2:0]    l26_xor_port_y_1;
  wire       [2:0]    l26_xor_port_y_2;
  wire       [2:0]    l26_xor_port_y_3;
  wire       [2:0]    l27_xor_port_y_0;
  wire       [2:0]    l27_xor_port_y_1;
  wire       [2:0]    l27_xor_port_y_2;
  wire       [2:0]    l27_xor_port_y_3;
  wire       [2:0]    l28_xor_port_y_0;
  wire       [2:0]    l28_xor_port_y_1;
  wire       [2:0]    l28_xor_port_y_2;
  wire       [2:0]    l28_xor_port_y_3;
  wire       [2:0]    l29_xor_port_y_0;
  wire       [2:0]    l29_xor_port_y_1;
  wire       [2:0]    l29_xor_port_y_2;
  wire       [2:0]    l29_xor_port_y_3;
  wire       [2:0]    s0_port_y_0;
  wire       [2:0]    s0_port_y_1;
  wire       [2:0]    s0_port_y_2;
  wire       [2:0]    s0_port_y_3;
  wire       [2:0]    s1_port_y_0;
  wire       [2:0]    s1_port_y_1;
  wire       [2:0]    s1_port_y_2;
  wire       [2:0]    s1_port_y_3;
  wire       [2:0]    s2_port_y_0;
  wire       [2:0]    s2_port_y_1;
  wire       [2:0]    s2_port_y_2;
  wire       [2:0]    s2_port_y_3;
  wire       [2:0]    s3_port_y_0;
  wire       [2:0]    s3_port_y_1;
  wire       [2:0]    s3_port_y_2;
  wire       [2:0]    s3_port_y_3;
  wire       [2:0]    s4_port_y_0;
  wire       [2:0]    s4_port_y_1;
  wire       [2:0]    s4_port_y_2;
  wire       [2:0]    s4_port_y_3;
  wire       [2:0]    s5_port_y_0;
  wire       [2:0]    s5_port_y_1;
  wire       [2:0]    s5_port_y_2;
  wire       [2:0]    s5_port_y_3;
  wire       [2:0]    s6_port_y_0;
  wire       [2:0]    s6_port_y_1;
  wire       [2:0]    s6_port_y_2;
  wire       [2:0]    s6_port_y_3;
  wire       [2:0]    s7_port_y_0;
  wire       [2:0]    s7_port_y_1;
  wire       [2:0]    s7_port_y_2;
  wire       [2:0]    s7_port_y_3;
  wire       [2:0]    in_x0_0;
  wire       [2:0]    in_x0_1;
  wire       [2:0]    in_x0_2;
  wire       [2:0]    in_x0_3;
  wire       [2:0]    in_x1_0;
  wire       [2:0]    in_x1_1;
  wire       [2:0]    in_x1_2;
  wire       [2:0]    in_x1_3;
  wire       [2:0]    in_x2_0;
  wire       [2:0]    in_x2_1;
  wire       [2:0]    in_x2_2;
  wire       [2:0]    in_x2_3;
  wire       [2:0]    in_x3_0;
  wire       [2:0]    in_x3_1;
  wire       [2:0]    in_x3_2;
  wire       [2:0]    in_x3_3;
  wire       [2:0]    in_x4_0;
  wire       [2:0]    in_x4_1;
  wire       [2:0]    in_x4_2;
  wire       [2:0]    in_x4_3;
  wire       [2:0]    in_x5_0;
  wire       [2:0]    in_x5_1;
  wire       [2:0]    in_x5_2;
  wire       [2:0]    in_x5_3;
  wire       [2:0]    in_x6_0;
  wire       [2:0]    in_x6_1;
  wire       [2:0]    in_x6_2;
  wire       [2:0]    in_x6_3;
  wire       [2:0]    in_x7_0;
  wire       [2:0]    in_x7_1;
  wire       [2:0]    in_x7_2;
  wire       [2:0]    in_x7_3;
  wire       [2:0]    out_y0_0;
  wire       [2:0]    out_y0_1;
  wire       [2:0]    out_y0_2;
  wire       [2:0]    out_y0_3;
  wire       [2:0]    out_y1_0;
  wire       [2:0]    out_y1_1;
  wire       [2:0]    out_y1_2;
  wire       [2:0]    out_y1_3;
  wire       [2:0]    out_y2_0;
  wire       [2:0]    out_y2_1;
  wire       [2:0]    out_y2_2;
  wire       [2:0]    out_y2_3;
  wire       [2:0]    out_y3_0;
  wire       [2:0]    out_y3_1;
  wire       [2:0]    out_y3_2;
  wire       [2:0]    out_y3_3;
  wire       [2:0]    out_y4_0;
  wire       [2:0]    out_y4_1;
  wire       [2:0]    out_y4_2;
  wire       [2:0]    out_y4_3;
  wire       [2:0]    out_y5_0;
  wire       [2:0]    out_y5_1;
  wire       [2:0]    out_y5_2;
  wire       [2:0]    out_y5_3;
  wire       [2:0]    out_y6_0;
  wire       [2:0]    out_y6_1;
  wire       [2:0]    out_y6_2;
  wire       [2:0]    out_y6_3;
  wire       [2:0]    out_y7_0;
  wire       [2:0]    out_y7_1;
  wire       [2:0]    out_y7_2;
  wire       [2:0]    out_y7_3;
  reg        [2:0]    x7_0;
  reg        [2:0]    x7_1;
  reg        [2:0]    x7_2;
  reg        [2:0]    x7_3;
  reg        [2:0]    t1_0;
  reg        [2:0]    t1_1;
  reg        [2:0]    t1_2;
  reg        [2:0]    t1_3;
  reg        [2:0]    t2_0;
  reg        [2:0]    t2_1;
  reg        [2:0]    t2_2;
  reg        [2:0]    t2_3;
  reg        [2:0]    t3_0;
  reg        [2:0]    t3_1;
  reg        [2:0]    t3_2;
  reg        [2:0]    t3_3;
  reg        [2:0]    t4_0;
  reg        [2:0]    t4_1;
  reg        [2:0]    t4_2;
  reg        [2:0]    t4_3;
  reg        [2:0]    t6_0;
  reg        [2:0]    t6_1;
  reg        [2:0]    t6_2;
  reg        [2:0]    t6_3;
  reg        [2:0]    t7_0;
  reg        [2:0]    t7_1;
  reg        [2:0]    t7_2;
  reg        [2:0]    t7_3;
  reg        [2:0]    t8_0;
  reg        [2:0]    t8_1;
  reg        [2:0]    t8_2;
  reg        [2:0]    t8_3;
  reg        [2:0]    t9_0;
  reg        [2:0]    t9_1;
  reg        [2:0]    t9_2;
  reg        [2:0]    t9_3;
  reg        [2:0]    t10_0;
  reg        [2:0]    t10_1;
  reg        [2:0]    t10_2;
  reg        [2:0]    t10_3;
  reg        [2:0]    t13_0;
  reg        [2:0]    t13_1;
  reg        [2:0]    t13_2;
  reg        [2:0]    t13_3;
  reg        [2:0]    t14_0;
  reg        [2:0]    t14_1;
  reg        [2:0]    t14_2;
  reg        [2:0]    t14_3;
  reg        [2:0]    t15_0;
  reg        [2:0]    t15_1;
  reg        [2:0]    t15_2;
  reg        [2:0]    t15_3;
  reg        [2:0]    t16_0;
  reg        [2:0]    t16_1;
  reg        [2:0]    t16_2;
  reg        [2:0]    t16_3;
  reg        [2:0]    t17_0;
  reg        [2:0]    t17_1;
  reg        [2:0]    t17_2;
  reg        [2:0]    t17_3;
  reg        [2:0]    t19_0;
  reg        [2:0]    t19_1;
  reg        [2:0]    t19_2;
  reg        [2:0]    t19_3;
  reg        [2:0]    t20_0;
  reg        [2:0]    t20_1;
  reg        [2:0]    t20_2;
  reg        [2:0]    t20_3;
  reg        [2:0]    t22_0;
  reg        [2:0]    t22_1;
  reg        [2:0]    t22_2;
  reg        [2:0]    t22_3;
  reg        [2:0]    t23_0;
  reg        [2:0]    t23_1;
  reg        [2:0]    t23_2;
  reg        [2:0]    t23_3;
  reg        [2:0]    t24_0;
  reg        [2:0]    t24_1;
  reg        [2:0]    t24_2;
  reg        [2:0]    t24_3;
  reg        [2:0]    t25_0;
  reg        [2:0]    t25_1;
  reg        [2:0]    t25_2;
  reg        [2:0]    t25_3;
  reg        [2:0]    t26_0;
  reg        [2:0]    t26_1;
  reg        [2:0]    t26_2;
  reg        [2:0]    t26_3;
  reg        [2:0]    t27_0;
  reg        [2:0]    t27_1;
  reg        [2:0]    t27_2;
  reg        [2:0]    t27_3;
  reg        [2:0]    x7_1_0;
  reg        [2:0]    x7_1_1;
  reg        [2:0]    x7_1_2;
  reg        [2:0]    x7_1_3;
  reg        [2:0]    t1_1_0;
  reg        [2:0]    t1_1_1;
  reg        [2:0]    t1_1_2;
  reg        [2:0]    t1_1_3;
  reg        [2:0]    t2_1_0;
  reg        [2:0]    t2_1_1;
  reg        [2:0]    t2_1_2;
  reg        [2:0]    t2_1_3;
  reg        [2:0]    t3_1_0;
  reg        [2:0]    t3_1_1;
  reg        [2:0]    t3_1_2;
  reg        [2:0]    t3_1_3;
  reg        [2:0]    t4_1_0;
  reg        [2:0]    t4_1_1;
  reg        [2:0]    t4_1_2;
  reg        [2:0]    t4_1_3;
  reg        [2:0]    t6_1_0;
  reg        [2:0]    t6_1_1;
  reg        [2:0]    t6_1_2;
  reg        [2:0]    t6_1_3;
  reg        [2:0]    t8_1_0;
  reg        [2:0]    t8_1_1;
  reg        [2:0]    t8_1_2;
  reg        [2:0]    t8_1_3;
  reg        [2:0]    t9_1_0;
  reg        [2:0]    t9_1_1;
  reg        [2:0]    t9_1_2;
  reg        [2:0]    t9_1_3;
  reg        [2:0]    t10_1_0;
  reg        [2:0]    t10_1_1;
  reg        [2:0]    t10_1_2;
  reg        [2:0]    t10_1_3;
  reg        [2:0]    t13_1_0;
  reg        [2:0]    t13_1_1;
  reg        [2:0]    t13_1_2;
  reg        [2:0]    t13_1_3;
  reg        [2:0]    t15_1_0;
  reg        [2:0]    t15_1_1;
  reg        [2:0]    t15_1_2;
  reg        [2:0]    t15_1_3;
  reg        [2:0]    t16_1_0;
  reg        [2:0]    t16_1_1;
  reg        [2:0]    t16_1_2;
  reg        [2:0]    t16_1_3;
  reg        [2:0]    t17_1_0;
  reg        [2:0]    t17_1_1;
  reg        [2:0]    t17_1_2;
  reg        [2:0]    t17_1_3;
  reg        [2:0]    t19_1_0;
  reg        [2:0]    t19_1_1;
  reg        [2:0]    t19_1_2;
  reg        [2:0]    t19_1_3;
  reg        [2:0]    t20_1_0;
  reg        [2:0]    t20_1_1;
  reg        [2:0]    t20_1_2;
  reg        [2:0]    t20_1_3;
  reg        [2:0]    t22_1_0;
  reg        [2:0]    t22_1_1;
  reg        [2:0]    t22_1_2;
  reg        [2:0]    t22_1_3;
  reg        [2:0]    t23_1_0;
  reg        [2:0]    t23_1_1;
  reg        [2:0]    t23_1_2;
  reg        [2:0]    t23_1_3;
  reg        [2:0]    t27_1_0;
  reg        [2:0]    t27_1_1;
  reg        [2:0]    t27_1_2;
  reg        [2:0]    t27_1_3;
  reg        [2:0]    m21_0;
  reg        [2:0]    m21_1;
  reg        [2:0]    m21_2;
  reg        [2:0]    m21_3;
  reg        [2:0]    m23_0;
  reg        [2:0]    m23_1;
  reg        [2:0]    m23_2;
  reg        [2:0]    m23_3;
  reg        [2:0]    m24_0;
  reg        [2:0]    m24_1;
  reg        [2:0]    m24_2;
  reg        [2:0]    m24_3;
  reg        [2:0]    m27_0;
  reg        [2:0]    m27_1;
  reg        [2:0]    m27_2;
  reg        [2:0]    m27_3;
  reg        [2:0]    x7_2_0;
  reg        [2:0]    x7_2_1;
  reg        [2:0]    x7_2_2;
  reg        [2:0]    x7_2_3;
  reg        [2:0]    t1_2_0;
  reg        [2:0]    t1_2_1;
  reg        [2:0]    t1_2_2;
  reg        [2:0]    t1_2_3;
  reg        [2:0]    t2_2_0;
  reg        [2:0]    t2_2_1;
  reg        [2:0]    t2_2_2;
  reg        [2:0]    t2_2_3;
  reg        [2:0]    t3_2_0;
  reg        [2:0]    t3_2_1;
  reg        [2:0]    t3_2_2;
  reg        [2:0]    t3_2_3;
  reg        [2:0]    t4_2_0;
  reg        [2:0]    t4_2_1;
  reg        [2:0]    t4_2_2;
  reg        [2:0]    t4_2_3;
  reg        [2:0]    t6_2_0;
  reg        [2:0]    t6_2_1;
  reg        [2:0]    t6_2_2;
  reg        [2:0]    t6_2_3;
  reg        [2:0]    t8_2_0;
  reg        [2:0]    t8_2_1;
  reg        [2:0]    t8_2_2;
  reg        [2:0]    t8_2_3;
  reg        [2:0]    t9_2_0;
  reg        [2:0]    t9_2_1;
  reg        [2:0]    t9_2_2;
  reg        [2:0]    t9_2_3;
  reg        [2:0]    t10_2_0;
  reg        [2:0]    t10_2_1;
  reg        [2:0]    t10_2_2;
  reg        [2:0]    t10_2_3;
  reg        [2:0]    t13_2_0;
  reg        [2:0]    t13_2_1;
  reg        [2:0]    t13_2_2;
  reg        [2:0]    t13_2_3;
  reg        [2:0]    t15_2_0;
  reg        [2:0]    t15_2_1;
  reg        [2:0]    t15_2_2;
  reg        [2:0]    t15_2_3;
  reg        [2:0]    t16_2_0;
  reg        [2:0]    t16_2_1;
  reg        [2:0]    t16_2_2;
  reg        [2:0]    t16_2_3;
  reg        [2:0]    t17_2_0;
  reg        [2:0]    t17_2_1;
  reg        [2:0]    t17_2_2;
  reg        [2:0]    t17_2_3;
  reg        [2:0]    t19_2_0;
  reg        [2:0]    t19_2_1;
  reg        [2:0]    t19_2_2;
  reg        [2:0]    t19_2_3;
  reg        [2:0]    t20_2_0;
  reg        [2:0]    t20_2_1;
  reg        [2:0]    t20_2_2;
  reg        [2:0]    t20_2_3;
  reg        [2:0]    t22_2_0;
  reg        [2:0]    t22_2_1;
  reg        [2:0]    t22_2_2;
  reg        [2:0]    t22_2_3;
  reg        [2:0]    t23_2_0;
  reg        [2:0]    t23_2_1;
  reg        [2:0]    t23_2_2;
  reg        [2:0]    t23_2_3;
  reg        [2:0]    t27_2_0;
  reg        [2:0]    t27_2_1;
  reg        [2:0]    t27_2_2;
  reg        [2:0]    t27_2_3;
  reg        [2:0]    m21_1_0;
  reg        [2:0]    m21_1_1;
  reg        [2:0]    m21_1_2;
  reg        [2:0]    m21_1_3;
  reg        [2:0]    m23_1_0;
  reg        [2:0]    m23_1_1;
  reg        [2:0]    m23_1_2;
  reg        [2:0]    m23_1_3;
  reg        [2:0]    m33_0;
  reg        [2:0]    m33_1;
  reg        [2:0]    m33_2;
  reg        [2:0]    m33_3;
  reg        [2:0]    m36_0;
  reg        [2:0]    m36_1;
  reg        [2:0]    m36_2;
  reg        [2:0]    m36_3;

  Addition_TI t1_xor (
    .port_x0_0 (in_x0_0[2:0]        ), //i
    .port_x0_1 (in_x0_1[2:0]        ), //i
    .port_x0_2 (in_x0_2[2:0]        ), //i
    .port_x0_3 (in_x0_3[2:0]        ), //i
    .port_x1_0 (in_x3_0[2:0]        ), //i
    .port_x1_1 (in_x3_1[2:0]        ), //i
    .port_x1_2 (in_x3_2[2:0]        ), //i
    .port_x1_3 (in_x3_3[2:0]        ), //i
    .port_y_0  (t1_xor_port_y_0[2:0]), //o
    .port_y_1  (t1_xor_port_y_1[2:0]), //o
    .port_y_2  (t1_xor_port_y_2[2:0]), //o
    .port_y_3  (t1_xor_port_y_3[2:0])  //o
  );
  Addition_TI t2_xor (
    .port_x0_0 (in_x0_0[2:0]        ), //i
    .port_x0_1 (in_x0_1[2:0]        ), //i
    .port_x0_2 (in_x0_2[2:0]        ), //i
    .port_x0_3 (in_x0_3[2:0]        ), //i
    .port_x1_0 (in_x5_0[2:0]        ), //i
    .port_x1_1 (in_x5_1[2:0]        ), //i
    .port_x1_2 (in_x5_2[2:0]        ), //i
    .port_x1_3 (in_x5_3[2:0]        ), //i
    .port_y_0  (t2_xor_port_y_0[2:0]), //o
    .port_y_1  (t2_xor_port_y_1[2:0]), //o
    .port_y_2  (t2_xor_port_y_2[2:0]), //o
    .port_y_3  (t2_xor_port_y_3[2:0])  //o
  );
  Addition_TI t3_xor (
    .port_x0_0 (in_x0_0[2:0]        ), //i
    .port_x0_1 (in_x0_1[2:0]        ), //i
    .port_x0_2 (in_x0_2[2:0]        ), //i
    .port_x0_3 (in_x0_3[2:0]        ), //i
    .port_x1_0 (in_x6_0[2:0]        ), //i
    .port_x1_1 (in_x6_1[2:0]        ), //i
    .port_x1_2 (in_x6_2[2:0]        ), //i
    .port_x1_3 (in_x6_3[2:0]        ), //i
    .port_y_0  (t3_xor_port_y_0[2:0]), //o
    .port_y_1  (t3_xor_port_y_1[2:0]), //o
    .port_y_2  (t3_xor_port_y_2[2:0]), //o
    .port_y_3  (t3_xor_port_y_3[2:0])  //o
  );
  Addition_TI t4_xor (
    .port_x0_0 (in_x3_0[2:0]        ), //i
    .port_x0_1 (in_x3_1[2:0]        ), //i
    .port_x0_2 (in_x3_2[2:0]        ), //i
    .port_x0_3 (in_x3_3[2:0]        ), //i
    .port_x1_0 (in_x5_0[2:0]        ), //i
    .port_x1_1 (in_x5_1[2:0]        ), //i
    .port_x1_2 (in_x5_2[2:0]        ), //i
    .port_x1_3 (in_x5_3[2:0]        ), //i
    .port_y_0  (t4_xor_port_y_0[2:0]), //o
    .port_y_1  (t4_xor_port_y_1[2:0]), //o
    .port_y_2  (t4_xor_port_y_2[2:0]), //o
    .port_y_3  (t4_xor_port_y_3[2:0])  //o
  );
  Addition_TI t5_xor (
    .port_x0_0 (in_x4_0[2:0]        ), //i
    .port_x0_1 (in_x4_1[2:0]        ), //i
    .port_x0_2 (in_x4_2[2:0]        ), //i
    .port_x0_3 (in_x4_3[2:0]        ), //i
    .port_x1_0 (in_x6_0[2:0]        ), //i
    .port_x1_1 (in_x6_1[2:0]        ), //i
    .port_x1_2 (in_x6_2[2:0]        ), //i
    .port_x1_3 (in_x6_3[2:0]        ), //i
    .port_y_0  (t5_xor_port_y_0[2:0]), //o
    .port_y_1  (t5_xor_port_y_1[2:0]), //o
    .port_y_2  (t5_xor_port_y_2[2:0]), //o
    .port_y_3  (t5_xor_port_y_3[2:0])  //o
  );
  Addition_TI t6_xor (
    .port_x0_0 (t1_xor_port_y_0[2:0]), //i
    .port_x0_1 (t1_xor_port_y_1[2:0]), //i
    .port_x0_2 (t1_xor_port_y_2[2:0]), //i
    .port_x0_3 (t1_xor_port_y_3[2:0]), //i
    .port_x1_0 (t5_xor_port_y_0[2:0]), //i
    .port_x1_1 (t5_xor_port_y_1[2:0]), //i
    .port_x1_2 (t5_xor_port_y_2[2:0]), //i
    .port_x1_3 (t5_xor_port_y_3[2:0]), //i
    .port_y_0  (t6_xor_port_y_0[2:0]), //o
    .port_y_1  (t6_xor_port_y_1[2:0]), //o
    .port_y_2  (t6_xor_port_y_2[2:0]), //o
    .port_y_3  (t6_xor_port_y_3[2:0])  //o
  );
  Addition_TI t7_xor (
    .port_x0_0 (in_x1_0[2:0]        ), //i
    .port_x0_1 (in_x1_1[2:0]        ), //i
    .port_x0_2 (in_x1_2[2:0]        ), //i
    .port_x0_3 (in_x1_3[2:0]        ), //i
    .port_x1_0 (in_x2_0[2:0]        ), //i
    .port_x1_1 (in_x2_1[2:0]        ), //i
    .port_x1_2 (in_x2_2[2:0]        ), //i
    .port_x1_3 (in_x2_3[2:0]        ), //i
    .port_y_0  (t7_xor_port_y_0[2:0]), //o
    .port_y_1  (t7_xor_port_y_1[2:0]), //o
    .port_y_2  (t7_xor_port_y_2[2:0]), //o
    .port_y_3  (t7_xor_port_y_3[2:0])  //o
  );
  Addition_TI t8_xor (
    .port_x0_0 (in_x7_0[2:0]        ), //i
    .port_x0_1 (in_x7_1[2:0]        ), //i
    .port_x0_2 (in_x7_2[2:0]        ), //i
    .port_x0_3 (in_x7_3[2:0]        ), //i
    .port_x1_0 (t6_xor_port_y_0[2:0]), //i
    .port_x1_1 (t6_xor_port_y_1[2:0]), //i
    .port_x1_2 (t6_xor_port_y_2[2:0]), //i
    .port_x1_3 (t6_xor_port_y_3[2:0]), //i
    .port_y_0  (t8_xor_port_y_0[2:0]), //o
    .port_y_1  (t8_xor_port_y_1[2:0]), //o
    .port_y_2  (t8_xor_port_y_2[2:0]), //o
    .port_y_3  (t8_xor_port_y_3[2:0])  //o
  );
  Addition_TI t9_xor (
    .port_x0_0 (in_x7_0[2:0]        ), //i
    .port_x0_1 (in_x7_1[2:0]        ), //i
    .port_x0_2 (in_x7_2[2:0]        ), //i
    .port_x0_3 (in_x7_3[2:0]        ), //i
    .port_x1_0 (t7_xor_port_y_0[2:0]), //i
    .port_x1_1 (t7_xor_port_y_1[2:0]), //i
    .port_x1_2 (t7_xor_port_y_2[2:0]), //i
    .port_x1_3 (t7_xor_port_y_3[2:0]), //i
    .port_y_0  (t9_xor_port_y_0[2:0]), //o
    .port_y_1  (t9_xor_port_y_1[2:0]), //o
    .port_y_2  (t9_xor_port_y_2[2:0]), //o
    .port_y_3  (t9_xor_port_y_3[2:0])  //o
  );
  Addition_TI t10_xor (
    .port_x0_0 (t6_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t6_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t6_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t6_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t7_xor_port_y_0[2:0] ), //i
    .port_x1_1 (t7_xor_port_y_1[2:0] ), //i
    .port_x1_2 (t7_xor_port_y_2[2:0] ), //i
    .port_x1_3 (t7_xor_port_y_3[2:0] ), //i
    .port_y_0  (t10_xor_port_y_0[2:0]), //o
    .port_y_1  (t10_xor_port_y_1[2:0]), //o
    .port_y_2  (t10_xor_port_y_2[2:0]), //o
    .port_y_3  (t10_xor_port_y_3[2:0])  //o
  );
  Addition_TI t11_xor (
    .port_x0_0 (in_x1_0[2:0]         ), //i
    .port_x0_1 (in_x1_1[2:0]         ), //i
    .port_x0_2 (in_x1_2[2:0]         ), //i
    .port_x0_3 (in_x1_3[2:0]         ), //i
    .port_x1_0 (in_x5_0[2:0]         ), //i
    .port_x1_1 (in_x5_1[2:0]         ), //i
    .port_x1_2 (in_x5_2[2:0]         ), //i
    .port_x1_3 (in_x5_3[2:0]         ), //i
    .port_y_0  (t11_xor_port_y_0[2:0]), //o
    .port_y_1  (t11_xor_port_y_1[2:0]), //o
    .port_y_2  (t11_xor_port_y_2[2:0]), //o
    .port_y_3  (t11_xor_port_y_3[2:0])  //o
  );
  Addition_TI t12_xor (
    .port_x0_0 (in_x2_0[2:0]         ), //i
    .port_x0_1 (in_x2_1[2:0]         ), //i
    .port_x0_2 (in_x2_2[2:0]         ), //i
    .port_x0_3 (in_x2_3[2:0]         ), //i
    .port_x1_0 (in_x5_0[2:0]         ), //i
    .port_x1_1 (in_x5_1[2:0]         ), //i
    .port_x1_2 (in_x5_2[2:0]         ), //i
    .port_x1_3 (in_x5_3[2:0]         ), //i
    .port_y_0  (t12_xor_port_y_0[2:0]), //o
    .port_y_1  (t12_xor_port_y_1[2:0]), //o
    .port_y_2  (t12_xor_port_y_2[2:0]), //o
    .port_y_3  (t12_xor_port_y_3[2:0])  //o
  );
  Addition_TI t13_xor (
    .port_x0_0 (t3_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t3_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t3_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t3_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t4_xor_port_y_0[2:0] ), //i
    .port_x1_1 (t4_xor_port_y_1[2:0] ), //i
    .port_x1_2 (t4_xor_port_y_2[2:0] ), //i
    .port_x1_3 (t4_xor_port_y_3[2:0] ), //i
    .port_y_0  (t13_xor_port_y_0[2:0]), //o
    .port_y_1  (t13_xor_port_y_1[2:0]), //o
    .port_y_2  (t13_xor_port_y_2[2:0]), //o
    .port_y_3  (t13_xor_port_y_3[2:0])  //o
  );
  Addition_TI t14_xor (
    .port_x0_0 (t6_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t6_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t6_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t6_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t11_xor_port_y_0[2:0]), //i
    .port_x1_1 (t11_xor_port_y_1[2:0]), //i
    .port_x1_2 (t11_xor_port_y_2[2:0]), //i
    .port_x1_3 (t11_xor_port_y_3[2:0]), //i
    .port_y_0  (t14_xor_port_y_0[2:0]), //o
    .port_y_1  (t14_xor_port_y_1[2:0]), //o
    .port_y_2  (t14_xor_port_y_2[2:0]), //o
    .port_y_3  (t14_xor_port_y_3[2:0])  //o
  );
  Addition_TI t15_xor (
    .port_x0_0 (t5_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t5_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t5_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t5_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t11_xor_port_y_0[2:0]), //i
    .port_x1_1 (t11_xor_port_y_1[2:0]), //i
    .port_x1_2 (t11_xor_port_y_2[2:0]), //i
    .port_x1_3 (t11_xor_port_y_3[2:0]), //i
    .port_y_0  (t15_xor_port_y_0[2:0]), //o
    .port_y_1  (t15_xor_port_y_1[2:0]), //o
    .port_y_2  (t15_xor_port_y_2[2:0]), //o
    .port_y_3  (t15_xor_port_y_3[2:0])  //o
  );
  Addition_TI t16_xor (
    .port_x0_0 (t5_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t5_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t5_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t5_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t12_xor_port_y_0[2:0]), //i
    .port_x1_1 (t12_xor_port_y_1[2:0]), //i
    .port_x1_2 (t12_xor_port_y_2[2:0]), //i
    .port_x1_3 (t12_xor_port_y_3[2:0]), //i
    .port_y_0  (t16_xor_port_y_0[2:0]), //o
    .port_y_1  (t16_xor_port_y_1[2:0]), //o
    .port_y_2  (t16_xor_port_y_2[2:0]), //o
    .port_y_3  (t16_xor_port_y_3[2:0])  //o
  );
  Addition_TI t17_xor (
    .port_x0_0 (t9_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t9_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t9_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t9_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t16_xor_port_y_0[2:0]), //i
    .port_x1_1 (t16_xor_port_y_1[2:0]), //i
    .port_x1_2 (t16_xor_port_y_2[2:0]), //i
    .port_x1_3 (t16_xor_port_y_3[2:0]), //i
    .port_y_0  (t17_xor_port_y_0[2:0]), //o
    .port_y_1  (t17_xor_port_y_1[2:0]), //o
    .port_y_2  (t17_xor_port_y_2[2:0]), //o
    .port_y_3  (t17_xor_port_y_3[2:0])  //o
  );
  Addition_TI t18_xor (
    .port_x0_0 (in_x3_0[2:0]         ), //i
    .port_x0_1 (in_x3_1[2:0]         ), //i
    .port_x0_2 (in_x3_2[2:0]         ), //i
    .port_x0_3 (in_x3_3[2:0]         ), //i
    .port_x1_0 (in_x7_0[2:0]         ), //i
    .port_x1_1 (in_x7_1[2:0]         ), //i
    .port_x1_2 (in_x7_2[2:0]         ), //i
    .port_x1_3 (in_x7_3[2:0]         ), //i
    .port_y_0  (t18_xor_port_y_0[2:0]), //o
    .port_y_1  (t18_xor_port_y_1[2:0]), //o
    .port_y_2  (t18_xor_port_y_2[2:0]), //o
    .port_y_3  (t18_xor_port_y_3[2:0])  //o
  );
  Addition_TI t19_xor (
    .port_x0_0 (t7_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t7_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t7_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t7_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t18_xor_port_y_0[2:0]), //i
    .port_x1_1 (t18_xor_port_y_1[2:0]), //i
    .port_x1_2 (t18_xor_port_y_2[2:0]), //i
    .port_x1_3 (t18_xor_port_y_3[2:0]), //i
    .port_y_0  (t19_xor_port_y_0[2:0]), //o
    .port_y_1  (t19_xor_port_y_1[2:0]), //o
    .port_y_2  (t19_xor_port_y_2[2:0]), //o
    .port_y_3  (t19_xor_port_y_3[2:0])  //o
  );
  Addition_TI t20_xor (
    .port_x0_0 (t1_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t1_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t1_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t1_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t19_xor_port_y_0[2:0]), //i
    .port_x1_1 (t19_xor_port_y_1[2:0]), //i
    .port_x1_2 (t19_xor_port_y_2[2:0]), //i
    .port_x1_3 (t19_xor_port_y_3[2:0]), //i
    .port_y_0  (t20_xor_port_y_0[2:0]), //o
    .port_y_1  (t20_xor_port_y_1[2:0]), //o
    .port_y_2  (t20_xor_port_y_2[2:0]), //o
    .port_y_3  (t20_xor_port_y_3[2:0])  //o
  );
  Addition_TI t21_xor (
    .port_x0_0 (in_x6_0[2:0]         ), //i
    .port_x0_1 (in_x6_1[2:0]         ), //i
    .port_x0_2 (in_x6_2[2:0]         ), //i
    .port_x0_3 (in_x6_3[2:0]         ), //i
    .port_x1_0 (in_x7_0[2:0]         ), //i
    .port_x1_1 (in_x7_1[2:0]         ), //i
    .port_x1_2 (in_x7_2[2:0]         ), //i
    .port_x1_3 (in_x7_3[2:0]         ), //i
    .port_y_0  (t21_xor_port_y_0[2:0]), //o
    .port_y_1  (t21_xor_port_y_1[2:0]), //o
    .port_y_2  (t21_xor_port_y_2[2:0]), //o
    .port_y_3  (t21_xor_port_y_3[2:0])  //o
  );
  Addition_TI t22_xor (
    .port_x0_0 (t7_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t7_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t7_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t7_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t21_xor_port_y_0[2:0]), //i
    .port_x1_1 (t21_xor_port_y_1[2:0]), //i
    .port_x1_2 (t21_xor_port_y_2[2:0]), //i
    .port_x1_3 (t21_xor_port_y_3[2:0]), //i
    .port_y_0  (t22_xor_port_y_0[2:0]), //o
    .port_y_1  (t22_xor_port_y_1[2:0]), //o
    .port_y_2  (t22_xor_port_y_2[2:0]), //o
    .port_y_3  (t22_xor_port_y_3[2:0])  //o
  );
  Addition_TI t23_xor (
    .port_x0_0 (t2_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t2_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t2_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t2_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t22_xor_port_y_0[2:0]), //i
    .port_x1_1 (t22_xor_port_y_1[2:0]), //i
    .port_x1_2 (t22_xor_port_y_2[2:0]), //i
    .port_x1_3 (t22_xor_port_y_3[2:0]), //i
    .port_y_0  (t23_xor_port_y_0[2:0]), //o
    .port_y_1  (t23_xor_port_y_1[2:0]), //o
    .port_y_2  (t23_xor_port_y_2[2:0]), //o
    .port_y_3  (t23_xor_port_y_3[2:0])  //o
  );
  Addition_TI t24_xor (
    .port_x0_0 (t2_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t2_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t2_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t2_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t10_xor_port_y_0[2:0]), //i
    .port_x1_1 (t10_xor_port_y_1[2:0]), //i
    .port_x1_2 (t10_xor_port_y_2[2:0]), //i
    .port_x1_3 (t10_xor_port_y_3[2:0]), //i
    .port_y_0  (t24_xor_port_y_0[2:0]), //o
    .port_y_1  (t24_xor_port_y_1[2:0]), //o
    .port_y_2  (t24_xor_port_y_2[2:0]), //o
    .port_y_3  (t24_xor_port_y_3[2:0])  //o
  );
  Addition_TI t25_xor (
    .port_x0_0 (t20_xor_port_y_0[2:0]), //i
    .port_x0_1 (t20_xor_port_y_1[2:0]), //i
    .port_x0_2 (t20_xor_port_y_2[2:0]), //i
    .port_x0_3 (t20_xor_port_y_3[2:0]), //i
    .port_x1_0 (t17_xor_port_y_0[2:0]), //i
    .port_x1_1 (t17_xor_port_y_1[2:0]), //i
    .port_x1_2 (t17_xor_port_y_2[2:0]), //i
    .port_x1_3 (t17_xor_port_y_3[2:0]), //i
    .port_y_0  (t25_xor_port_y_0[2:0]), //o
    .port_y_1  (t25_xor_port_y_1[2:0]), //o
    .port_y_2  (t25_xor_port_y_2[2:0]), //o
    .port_y_3  (t25_xor_port_y_3[2:0])  //o
  );
  Addition_TI t26_xor (
    .port_x0_0 (t3_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t3_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t3_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t3_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t16_xor_port_y_0[2:0]), //i
    .port_x1_1 (t16_xor_port_y_1[2:0]), //i
    .port_x1_2 (t16_xor_port_y_2[2:0]), //i
    .port_x1_3 (t16_xor_port_y_3[2:0]), //i
    .port_y_0  (t26_xor_port_y_0[2:0]), //o
    .port_y_1  (t26_xor_port_y_1[2:0]), //o
    .port_y_2  (t26_xor_port_y_2[2:0]), //o
    .port_y_3  (t26_xor_port_y_3[2:0])  //o
  );
  Addition_TI t27_xor (
    .port_x0_0 (t1_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t1_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t1_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t1_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t12_xor_port_y_0[2:0]), //i
    .port_x1_1 (t12_xor_port_y_1[2:0]), //i
    .port_x1_2 (t12_xor_port_y_2[2:0]), //i
    .port_x1_3 (t12_xor_port_y_3[2:0]), //i
    .port_y_0  (t27_xor_port_y_0[2:0]), //o
    .port_y_1  (t27_xor_port_y_1[2:0]), //o
    .port_y_2  (t27_xor_port_y_2[2:0]), //o
    .port_y_3  (t27_xor_port_y_3[2:0])  //o
  );
  Multiplication_TI m1 (
    .port_x0_0 (t13_xor_port_y_0[2:0]), //i
    .port_x0_1 (t13_xor_port_y_1[2:0]), //i
    .port_x0_2 (t13_xor_port_y_2[2:0]), //i
    .port_x0_3 (t13_xor_port_y_3[2:0]), //i
    .port_x1_0 (t6_xor_port_y_0[2:0] ), //i
    .port_x1_1 (t6_xor_port_y_1[2:0] ), //i
    .port_x1_2 (t6_xor_port_y_2[2:0] ), //i
    .port_x1_3 (t6_xor_port_y_3[2:0] ), //i
    .port_y_0  (m1_port_y_0[2:0]     ), //o
    .port_y_1  (m1_port_y_1[2:0]     ), //o
    .port_y_2  (m1_port_y_2[2:0]     ), //o
    .port_y_3  (m1_port_y_3[2:0]     ), //o
    .clk       (clk                  ), //i
    .reset     (reset                )  //i
  );
  Multiplication_TI m2 (
    .port_x0_0 (t23_xor_port_y_0[2:0]), //i
    .port_x0_1 (t23_xor_port_y_1[2:0]), //i
    .port_x0_2 (t23_xor_port_y_2[2:0]), //i
    .port_x0_3 (t23_xor_port_y_3[2:0]), //i
    .port_x1_0 (t8_xor_port_y_0[2:0] ), //i
    .port_x1_1 (t8_xor_port_y_1[2:0] ), //i
    .port_x1_2 (t8_xor_port_y_2[2:0] ), //i
    .port_x1_3 (t8_xor_port_y_3[2:0] ), //i
    .port_y_0  (m2_port_y_0[2:0]     ), //o
    .port_y_1  (m2_port_y_1[2:0]     ), //o
    .port_y_2  (m2_port_y_2[2:0]     ), //o
    .port_y_3  (m2_port_y_3[2:0]     ), //o
    .clk       (clk                  ), //i
    .reset     (reset                )  //i
  );
  Multiplication_TI m4 (
    .port_x0_0 (t19_xor_port_y_0[2:0]), //i
    .port_x0_1 (t19_xor_port_y_1[2:0]), //i
    .port_x0_2 (t19_xor_port_y_2[2:0]), //i
    .port_x0_3 (t19_xor_port_y_3[2:0]), //i
    .port_x1_0 (in_x7_0[2:0]         ), //i
    .port_x1_1 (in_x7_1[2:0]         ), //i
    .port_x1_2 (in_x7_2[2:0]         ), //i
    .port_x1_3 (in_x7_3[2:0]         ), //i
    .port_y_0  (m4_port_y_0[2:0]     ), //o
    .port_y_1  (m4_port_y_1[2:0]     ), //o
    .port_y_2  (m4_port_y_2[2:0]     ), //o
    .port_y_3  (m4_port_y_3[2:0]     ), //o
    .clk       (clk                  ), //i
    .reset     (reset                )  //i
  );
  Multiplication_TI m6 (
    .port_x0_0 (t3_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t3_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t3_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t3_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t16_xor_port_y_0[2:0]), //i
    .port_x1_1 (t16_xor_port_y_1[2:0]), //i
    .port_x1_2 (t16_xor_port_y_2[2:0]), //i
    .port_x1_3 (t16_xor_port_y_3[2:0]), //i
    .port_y_0  (m6_port_y_0[2:0]     ), //o
    .port_y_1  (m6_port_y_1[2:0]     ), //o
    .port_y_2  (m6_port_y_2[2:0]     ), //o
    .port_y_3  (m6_port_y_3[2:0]     ), //o
    .clk       (clk                  ), //i
    .reset     (reset                )  //i
  );
  Multiplication_TI m7 (
    .port_x0_0 (t22_xor_port_y_0[2:0]), //i
    .port_x0_1 (t22_xor_port_y_1[2:0]), //i
    .port_x0_2 (t22_xor_port_y_2[2:0]), //i
    .port_x0_3 (t22_xor_port_y_3[2:0]), //i
    .port_x1_0 (t9_xor_port_y_0[2:0] ), //i
    .port_x1_1 (t9_xor_port_y_1[2:0] ), //i
    .port_x1_2 (t9_xor_port_y_2[2:0] ), //i
    .port_x1_3 (t9_xor_port_y_3[2:0] ), //i
    .port_y_0  (m7_port_y_0[2:0]     ), //o
    .port_y_1  (m7_port_y_1[2:0]     ), //o
    .port_y_2  (m7_port_y_2[2:0]     ), //o
    .port_y_3  (m7_port_y_3[2:0]     ), //o
    .clk       (clk                  ), //i
    .reset     (reset                )  //i
  );
  Multiplication_TI m9 (
    .port_x0_0 (t20_xor_port_y_0[2:0]), //i
    .port_x0_1 (t20_xor_port_y_1[2:0]), //i
    .port_x0_2 (t20_xor_port_y_2[2:0]), //i
    .port_x0_3 (t20_xor_port_y_3[2:0]), //i
    .port_x1_0 (t17_xor_port_y_0[2:0]), //i
    .port_x1_1 (t17_xor_port_y_1[2:0]), //i
    .port_x1_2 (t17_xor_port_y_2[2:0]), //i
    .port_x1_3 (t17_xor_port_y_3[2:0]), //i
    .port_y_0  (m9_port_y_0[2:0]     ), //o
    .port_y_1  (m9_port_y_1[2:0]     ), //o
    .port_y_2  (m9_port_y_2[2:0]     ), //o
    .port_y_3  (m9_port_y_3[2:0]     ), //o
    .clk       (clk                  ), //i
    .reset     (reset                )  //i
  );
  Multiplication_TI m11 (
    .port_x0_0 (t1_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t1_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t1_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t1_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t15_xor_port_y_0[2:0]), //i
    .port_x1_1 (t15_xor_port_y_1[2:0]), //i
    .port_x1_2 (t15_xor_port_y_2[2:0]), //i
    .port_x1_3 (t15_xor_port_y_3[2:0]), //i
    .port_y_0  (m11_port_y_0[2:0]    ), //o
    .port_y_1  (m11_port_y_1[2:0]    ), //o
    .port_y_2  (m11_port_y_2[2:0]    ), //o
    .port_y_3  (m11_port_y_3[2:0]    ), //o
    .clk       (clk                  ), //i
    .reset     (reset                )  //i
  );
  Multiplication_TI m12 (
    .port_x0_0 (t4_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t4_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t4_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t4_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t27_xor_port_y_0[2:0]), //i
    .port_x1_1 (t27_xor_port_y_1[2:0]), //i
    .port_x1_2 (t27_xor_port_y_2[2:0]), //i
    .port_x1_3 (t27_xor_port_y_3[2:0]), //i
    .port_y_0  (m12_port_y_0[2:0]    ), //o
    .port_y_1  (m12_port_y_1[2:0]    ), //o
    .port_y_2  (m12_port_y_2[2:0]    ), //o
    .port_y_3  (m12_port_y_3[2:0]    ), //o
    .clk       (clk                  ), //i
    .reset     (reset                )  //i
  );
  Multiplication_TI m14 (
    .port_x0_0 (t2_xor_port_y_0[2:0] ), //i
    .port_x0_1 (t2_xor_port_y_1[2:0] ), //i
    .port_x0_2 (t2_xor_port_y_2[2:0] ), //i
    .port_x0_3 (t2_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t10_xor_port_y_0[2:0]), //i
    .port_x1_1 (t10_xor_port_y_1[2:0]), //i
    .port_x1_2 (t10_xor_port_y_2[2:0]), //i
    .port_x1_3 (t10_xor_port_y_3[2:0]), //i
    .port_y_0  (m14_port_y_0[2:0]    ), //o
    .port_y_1  (m14_port_y_1[2:0]    ), //o
    .port_y_2  (m14_port_y_2[2:0]    ), //o
    .port_y_3  (m14_port_y_3[2:0]    ), //o
    .clk       (clk                  ), //i
    .reset     (reset                )  //i
  );
  Addition_TI m3_xor (
    .port_x0_0 (t14_0[2:0]          ), //i
    .port_x0_1 (t14_1[2:0]          ), //i
    .port_x0_2 (t14_2[2:0]          ), //i
    .port_x0_3 (t14_3[2:0]          ), //i
    .port_x1_0 (m1_port_y_0[2:0]    ), //i
    .port_x1_1 (m1_port_y_1[2:0]    ), //i
    .port_x1_2 (m1_port_y_2[2:0]    ), //i
    .port_x1_3 (m1_port_y_3[2:0]    ), //i
    .port_y_0  (m3_xor_port_y_0[2:0]), //o
    .port_y_1  (m3_xor_port_y_1[2:0]), //o
    .port_y_2  (m3_xor_port_y_2[2:0]), //o
    .port_y_3  (m3_xor_port_y_3[2:0])  //o
  );
  Addition_TI m5_xor (
    .port_x0_0 (m4_port_y_0[2:0]    ), //i
    .port_x0_1 (m4_port_y_1[2:0]    ), //i
    .port_x0_2 (m4_port_y_2[2:0]    ), //i
    .port_x0_3 (m4_port_y_3[2:0]    ), //i
    .port_x1_0 (m1_port_y_0[2:0]    ), //i
    .port_x1_1 (m1_port_y_1[2:0]    ), //i
    .port_x1_2 (m1_port_y_2[2:0]    ), //i
    .port_x1_3 (m1_port_y_3[2:0]    ), //i
    .port_y_0  (m5_xor_port_y_0[2:0]), //o
    .port_y_1  (m5_xor_port_y_1[2:0]), //o
    .port_y_2  (m5_xor_port_y_2[2:0]), //o
    .port_y_3  (m5_xor_port_y_3[2:0])  //o
  );
  Addition_TI m8_xor (
    .port_x0_0 (t26_0[2:0]          ), //i
    .port_x0_1 (t26_1[2:0]          ), //i
    .port_x0_2 (t26_2[2:0]          ), //i
    .port_x0_3 (t26_3[2:0]          ), //i
    .port_x1_0 (m6_port_y_0[2:0]    ), //i
    .port_x1_1 (m6_port_y_1[2:0]    ), //i
    .port_x1_2 (m6_port_y_2[2:0]    ), //i
    .port_x1_3 (m6_port_y_3[2:0]    ), //i
    .port_y_0  (m8_xor_port_y_0[2:0]), //o
    .port_y_1  (m8_xor_port_y_1[2:0]), //o
    .port_y_2  (m8_xor_port_y_2[2:0]), //o
    .port_y_3  (m8_xor_port_y_3[2:0])  //o
  );
  Addition_TI m10_xor (
    .port_x0_0 (m9_port_y_0[2:0]     ), //i
    .port_x0_1 (m9_port_y_1[2:0]     ), //i
    .port_x0_2 (m9_port_y_2[2:0]     ), //i
    .port_x0_3 (m9_port_y_3[2:0]     ), //i
    .port_x1_0 (m6_port_y_0[2:0]     ), //i
    .port_x1_1 (m6_port_y_1[2:0]     ), //i
    .port_x1_2 (m6_port_y_2[2:0]     ), //i
    .port_x1_3 (m6_port_y_3[2:0]     ), //i
    .port_y_0  (m10_xor_port_y_0[2:0]), //o
    .port_y_1  (m10_xor_port_y_1[2:0]), //o
    .port_y_2  (m10_xor_port_y_2[2:0]), //o
    .port_y_3  (m10_xor_port_y_3[2:0])  //o
  );
  Addition_TI m13_xor (
    .port_x0_0 (m12_port_y_0[2:0]    ), //i
    .port_x0_1 (m12_port_y_1[2:0]    ), //i
    .port_x0_2 (m12_port_y_2[2:0]    ), //i
    .port_x0_3 (m12_port_y_3[2:0]    ), //i
    .port_x1_0 (m11_port_y_0[2:0]    ), //i
    .port_x1_1 (m11_port_y_1[2:0]    ), //i
    .port_x1_2 (m11_port_y_2[2:0]    ), //i
    .port_x1_3 (m11_port_y_3[2:0]    ), //i
    .port_y_0  (m13_xor_port_y_0[2:0]), //o
    .port_y_1  (m13_xor_port_y_1[2:0]), //o
    .port_y_2  (m13_xor_port_y_2[2:0]), //o
    .port_y_3  (m13_xor_port_y_3[2:0])  //o
  );
  Addition_TI m15_xor (
    .port_x0_0 (m14_port_y_0[2:0]    ), //i
    .port_x0_1 (m14_port_y_1[2:0]    ), //i
    .port_x0_2 (m14_port_y_2[2:0]    ), //i
    .port_x0_3 (m14_port_y_3[2:0]    ), //i
    .port_x1_0 (m11_port_y_0[2:0]    ), //i
    .port_x1_1 (m11_port_y_1[2:0]    ), //i
    .port_x1_2 (m11_port_y_2[2:0]    ), //i
    .port_x1_3 (m11_port_y_3[2:0]    ), //i
    .port_y_0  (m15_xor_port_y_0[2:0]), //o
    .port_y_1  (m15_xor_port_y_1[2:0]), //o
    .port_y_2  (m15_xor_port_y_2[2:0]), //o
    .port_y_3  (m15_xor_port_y_3[2:0])  //o
  );
  Addition_TI m16_xor (
    .port_x0_0 (m3_xor_port_y_0[2:0] ), //i
    .port_x0_1 (m3_xor_port_y_1[2:0] ), //i
    .port_x0_2 (m3_xor_port_y_2[2:0] ), //i
    .port_x0_3 (m3_xor_port_y_3[2:0] ), //i
    .port_x1_0 (m2_port_y_0[2:0]     ), //i
    .port_x1_1 (m2_port_y_1[2:0]     ), //i
    .port_x1_2 (m2_port_y_2[2:0]     ), //i
    .port_x1_3 (m2_port_y_3[2:0]     ), //i
    .port_y_0  (m16_xor_port_y_0[2:0]), //o
    .port_y_1  (m16_xor_port_y_1[2:0]), //o
    .port_y_2  (m16_xor_port_y_2[2:0]), //o
    .port_y_3  (m16_xor_port_y_3[2:0])  //o
  );
  Addition_TI m17_xor (
    .port_x0_0 (m5_xor_port_y_0[2:0] ), //i
    .port_x0_1 (m5_xor_port_y_1[2:0] ), //i
    .port_x0_2 (m5_xor_port_y_2[2:0] ), //i
    .port_x0_3 (m5_xor_port_y_3[2:0] ), //i
    .port_x1_0 (t24_0[2:0]           ), //i
    .port_x1_1 (t24_1[2:0]           ), //i
    .port_x1_2 (t24_2[2:0]           ), //i
    .port_x1_3 (t24_3[2:0]           ), //i
    .port_y_0  (m17_xor_port_y_0[2:0]), //o
    .port_y_1  (m17_xor_port_y_1[2:0]), //o
    .port_y_2  (m17_xor_port_y_2[2:0]), //o
    .port_y_3  (m17_xor_port_y_3[2:0])  //o
  );
  Addition_TI m18_xor (
    .port_x0_0 (m8_xor_port_y_0[2:0] ), //i
    .port_x0_1 (m8_xor_port_y_1[2:0] ), //i
    .port_x0_2 (m8_xor_port_y_2[2:0] ), //i
    .port_x0_3 (m8_xor_port_y_3[2:0] ), //i
    .port_x1_0 (m7_port_y_0[2:0]     ), //i
    .port_x1_1 (m7_port_y_1[2:0]     ), //i
    .port_x1_2 (m7_port_y_2[2:0]     ), //i
    .port_x1_3 (m7_port_y_3[2:0]     ), //i
    .port_y_0  (m18_xor_port_y_0[2:0]), //o
    .port_y_1  (m18_xor_port_y_1[2:0]), //o
    .port_y_2  (m18_xor_port_y_2[2:0]), //o
    .port_y_3  (m18_xor_port_y_3[2:0])  //o
  );
  Addition_TI m19_xor (
    .port_x0_0 (m10_xor_port_y_0[2:0]), //i
    .port_x0_1 (m10_xor_port_y_1[2:0]), //i
    .port_x0_2 (m10_xor_port_y_2[2:0]), //i
    .port_x0_3 (m10_xor_port_y_3[2:0]), //i
    .port_x1_0 (m15_xor_port_y_0[2:0]), //i
    .port_x1_1 (m15_xor_port_y_1[2:0]), //i
    .port_x1_2 (m15_xor_port_y_2[2:0]), //i
    .port_x1_3 (m15_xor_port_y_3[2:0]), //i
    .port_y_0  (m19_xor_port_y_0[2:0]), //o
    .port_y_1  (m19_xor_port_y_1[2:0]), //o
    .port_y_2  (m19_xor_port_y_2[2:0]), //o
    .port_y_3  (m19_xor_port_y_3[2:0])  //o
  );
  Addition_TI m20_xor (
    .port_x0_0 (m16_xor_port_y_0[2:0]), //i
    .port_x0_1 (m16_xor_port_y_1[2:0]), //i
    .port_x0_2 (m16_xor_port_y_2[2:0]), //i
    .port_x0_3 (m16_xor_port_y_3[2:0]), //i
    .port_x1_0 (m13_xor_port_y_0[2:0]), //i
    .port_x1_1 (m13_xor_port_y_1[2:0]), //i
    .port_x1_2 (m13_xor_port_y_2[2:0]), //i
    .port_x1_3 (m13_xor_port_y_3[2:0]), //i
    .port_y_0  (m20_xor_port_y_0[2:0]), //o
    .port_y_1  (m20_xor_port_y_1[2:0]), //o
    .port_y_2  (m20_xor_port_y_2[2:0]), //o
    .port_y_3  (m20_xor_port_y_3[2:0])  //o
  );
  Addition_TI m21_xor (
    .port_x0_0 (m17_xor_port_y_0[2:0]), //i
    .port_x0_1 (m17_xor_port_y_1[2:0]), //i
    .port_x0_2 (m17_xor_port_y_2[2:0]), //i
    .port_x0_3 (m17_xor_port_y_3[2:0]), //i
    .port_x1_0 (m15_xor_port_y_0[2:0]), //i
    .port_x1_1 (m15_xor_port_y_1[2:0]), //i
    .port_x1_2 (m15_xor_port_y_2[2:0]), //i
    .port_x1_3 (m15_xor_port_y_3[2:0]), //i
    .port_y_0  (m21_xor_port_y_0[2:0]), //o
    .port_y_1  (m21_xor_port_y_1[2:0]), //o
    .port_y_2  (m21_xor_port_y_2[2:0]), //o
    .port_y_3  (m21_xor_port_y_3[2:0])  //o
  );
  Addition_TI m22_xor (
    .port_x0_0 (m18_xor_port_y_0[2:0]), //i
    .port_x0_1 (m18_xor_port_y_1[2:0]), //i
    .port_x0_2 (m18_xor_port_y_2[2:0]), //i
    .port_x0_3 (m18_xor_port_y_3[2:0]), //i
    .port_x1_0 (m13_xor_port_y_0[2:0]), //i
    .port_x1_1 (m13_xor_port_y_1[2:0]), //i
    .port_x1_2 (m13_xor_port_y_2[2:0]), //i
    .port_x1_3 (m13_xor_port_y_3[2:0]), //i
    .port_y_0  (m22_xor_port_y_0[2:0]), //o
    .port_y_1  (m22_xor_port_y_1[2:0]), //o
    .port_y_2  (m22_xor_port_y_2[2:0]), //o
    .port_y_3  (m22_xor_port_y_3[2:0])  //o
  );
  Addition_TI m23_xor (
    .port_x0_0 (m19_xor_port_y_0[2:0]), //i
    .port_x0_1 (m19_xor_port_y_1[2:0]), //i
    .port_x0_2 (m19_xor_port_y_2[2:0]), //i
    .port_x0_3 (m19_xor_port_y_3[2:0]), //i
    .port_x1_0 (t25_0[2:0]           ), //i
    .port_x1_1 (t25_1[2:0]           ), //i
    .port_x1_2 (t25_2[2:0]           ), //i
    .port_x1_3 (t25_3[2:0]           ), //i
    .port_y_0  (m23_xor_port_y_0[2:0]), //o
    .port_y_1  (m23_xor_port_y_1[2:0]), //o
    .port_y_2  (m23_xor_port_y_2[2:0]), //o
    .port_y_3  (m23_xor_port_y_3[2:0])  //o
  );
  Addition_TI m24_xor (
    .port_x0_0 (m22_xor_port_y_0[2:0]), //i
    .port_x0_1 (m22_xor_port_y_1[2:0]), //i
    .port_x0_2 (m22_xor_port_y_2[2:0]), //i
    .port_x0_3 (m22_xor_port_y_3[2:0]), //i
    .port_x1_0 (m23_xor_port_y_0[2:0]), //i
    .port_x1_1 (m23_xor_port_y_1[2:0]), //i
    .port_x1_2 (m23_xor_port_y_2[2:0]), //i
    .port_x1_3 (m23_xor_port_y_3[2:0]), //i
    .port_y_0  (m24_xor_port_y_0[2:0]), //o
    .port_y_1  (m24_xor_port_y_1[2:0]), //o
    .port_y_2  (m24_xor_port_y_2[2:0]), //o
    .port_y_3  (m24_xor_port_y_3[2:0])  //o
  );
  Multiplication_TI m25 (
    .port_x0_0 (m22_xor_port_y_0[2:0]), //i
    .port_x0_1 (m22_xor_port_y_1[2:0]), //i
    .port_x0_2 (m22_xor_port_y_2[2:0]), //i
    .port_x0_3 (m22_xor_port_y_3[2:0]), //i
    .port_x1_0 (m20_xor_port_y_0[2:0]), //i
    .port_x1_1 (m20_xor_port_y_1[2:0]), //i
    .port_x1_2 (m20_xor_port_y_2[2:0]), //i
    .port_x1_3 (m20_xor_port_y_3[2:0]), //i
    .port_y_0  (m25_port_y_0[2:0]    ), //o
    .port_y_1  (m25_port_y_1[2:0]    ), //o
    .port_y_2  (m25_port_y_2[2:0]    ), //o
    .port_y_3  (m25_port_y_3[2:0]    ), //o
    .clk       (clk                  ), //i
    .reset     (reset                )  //i
  );
  Addition_TI m27_xor (
    .port_x0_0 (m20_xor_port_y_0[2:0]), //i
    .port_x0_1 (m20_xor_port_y_1[2:0]), //i
    .port_x0_2 (m20_xor_port_y_2[2:0]), //i
    .port_x0_3 (m20_xor_port_y_3[2:0]), //i
    .port_x1_0 (m21_xor_port_y_0[2:0]), //i
    .port_x1_1 (m21_xor_port_y_1[2:0]), //i
    .port_x1_2 (m21_xor_port_y_2[2:0]), //i
    .port_x1_3 (m21_xor_port_y_3[2:0]), //i
    .port_y_0  (m27_xor_port_y_0[2:0]), //o
    .port_y_1  (m27_xor_port_y_1[2:0]), //o
    .port_y_2  (m27_xor_port_y_2[2:0]), //o
    .port_y_3  (m27_xor_port_y_3[2:0])  //o
  );
  Multiplication_TI m31 (
    .port_x0_0 (m20_xor_port_y_0[2:0]), //i
    .port_x0_1 (m20_xor_port_y_1[2:0]), //i
    .port_x0_2 (m20_xor_port_y_2[2:0]), //i
    .port_x0_3 (m20_xor_port_y_3[2:0]), //i
    .port_x1_0 (m23_xor_port_y_0[2:0]), //i
    .port_x1_1 (m23_xor_port_y_1[2:0]), //i
    .port_x1_2 (m23_xor_port_y_2[2:0]), //i
    .port_x1_3 (m23_xor_port_y_3[2:0]), //i
    .port_y_0  (m31_port_y_0[2:0]    ), //o
    .port_y_1  (m31_port_y_1[2:0]    ), //o
    .port_y_2  (m31_port_y_2[2:0]    ), //o
    .port_y_3  (m31_port_y_3[2:0]    ), //o
    .clk       (clk                  ), //i
    .reset     (reset                )  //i
  );
  Multiplication_TI m34 (
    .port_x0_0 (m21_xor_port_y_0[2:0]), //i
    .port_x0_1 (m21_xor_port_y_1[2:0]), //i
    .port_x0_2 (m21_xor_port_y_2[2:0]), //i
    .port_x0_3 (m21_xor_port_y_3[2:0]), //i
    .port_x1_0 (m22_xor_port_y_0[2:0]), //i
    .port_x1_1 (m22_xor_port_y_1[2:0]), //i
    .port_x1_2 (m22_xor_port_y_2[2:0]), //i
    .port_x1_3 (m22_xor_port_y_3[2:0]), //i
    .port_y_0  (m34_port_y_0[2:0]    ), //o
    .port_y_1  (m34_port_y_1[2:0]    ), //o
    .port_y_2  (m34_port_y_2[2:0]    ), //o
    .port_y_3  (m34_port_y_3[2:0]    ), //o
    .clk       (clk                  ), //i
    .reset     (reset                )  //i
  );
  Addition_TI m26_xor (
    .port_x0_0 (m21_0[2:0]           ), //i
    .port_x0_1 (m21_1[2:0]           ), //i
    .port_x0_2 (m21_2[2:0]           ), //i
    .port_x0_3 (m21_3[2:0]           ), //i
    .port_x1_0 (m25_port_y_0[2:0]    ), //i
    .port_x1_1 (m25_port_y_1[2:0]    ), //i
    .port_x1_2 (m25_port_y_2[2:0]    ), //i
    .port_x1_3 (m25_port_y_3[2:0]    ), //i
    .port_y_0  (m26_xor_port_y_0[2:0]), //o
    .port_y_1  (m26_xor_port_y_1[2:0]), //o
    .port_y_2  (m26_xor_port_y_2[2:0]), //o
    .port_y_3  (m26_xor_port_y_3[2:0])  //o
  );
  Addition_TI m28_xor (
    .port_x0_0 (m23_0[2:0]           ), //i
    .port_x0_1 (m23_1[2:0]           ), //i
    .port_x0_2 (m23_2[2:0]           ), //i
    .port_x0_3 (m23_3[2:0]           ), //i
    .port_x1_0 (m25_port_y_0[2:0]    ), //i
    .port_x1_1 (m25_port_y_1[2:0]    ), //i
    .port_x1_2 (m25_port_y_2[2:0]    ), //i
    .port_x1_3 (m25_port_y_3[2:0]    ), //i
    .port_y_0  (m28_xor_port_y_0[2:0]), //o
    .port_y_1  (m28_xor_port_y_1[2:0]), //o
    .port_y_2  (m28_xor_port_y_2[2:0]), //o
    .port_y_3  (m28_xor_port_y_3[2:0])  //o
  );
  Multiplication_TI m29 (
    .port_x0_0 (m28_xor_port_y_0[2:0]), //i
    .port_x0_1 (m28_xor_port_y_1[2:0]), //i
    .port_x0_2 (m28_xor_port_y_2[2:0]), //i
    .port_x0_3 (m28_xor_port_y_3[2:0]), //i
    .port_x1_0 (m27_0[2:0]           ), //i
    .port_x1_1 (m27_1[2:0]           ), //i
    .port_x1_2 (m27_2[2:0]           ), //i
    .port_x1_3 (m27_3[2:0]           ), //i
    .port_y_0  (m29_port_y_0[2:0]    ), //o
    .port_y_1  (m29_port_y_1[2:0]    ), //o
    .port_y_2  (m29_port_y_2[2:0]    ), //o
    .port_y_3  (m29_port_y_3[2:0]    ), //o
    .clk       (clk                  ), //i
    .reset     (reset                )  //i
  );
  Multiplication_TI m30 (
    .port_x0_0 (m26_xor_port_y_0[2:0]), //i
    .port_x0_1 (m26_xor_port_y_1[2:0]), //i
    .port_x0_2 (m26_xor_port_y_2[2:0]), //i
    .port_x0_3 (m26_xor_port_y_3[2:0]), //i
    .port_x1_0 (m24_0[2:0]           ), //i
    .port_x1_1 (m24_1[2:0]           ), //i
    .port_x1_2 (m24_2[2:0]           ), //i
    .port_x1_3 (m24_3[2:0]           ), //i
    .port_y_0  (m30_port_y_0[2:0]    ), //o
    .port_y_1  (m30_port_y_1[2:0]    ), //o
    .port_y_2  (m30_port_y_2[2:0]    ), //o
    .port_y_3  (m30_port_y_3[2:0]    ), //o
    .clk       (clk                  ), //i
    .reset     (reset                )  //i
  );
  Multiplication_TI m32 (
    .port_x0_0 (m27_0[2:0]       ), //i
    .port_x0_1 (m27_1[2:0]       ), //i
    .port_x0_2 (m27_2[2:0]       ), //i
    .port_x0_3 (m27_3[2:0]       ), //i
    .port_x1_0 (m31_port_y_0[2:0]), //i
    .port_x1_1 (m31_port_y_1[2:0]), //i
    .port_x1_2 (m31_port_y_2[2:0]), //i
    .port_x1_3 (m31_port_y_3[2:0]), //i
    .port_y_0  (m32_port_y_0[2:0]), //o
    .port_y_1  (m32_port_y_1[2:0]), //o
    .port_y_2  (m32_port_y_2[2:0]), //o
    .port_y_3  (m32_port_y_3[2:0]), //o
    .clk       (clk              ), //i
    .reset     (reset            )  //i
  );
  Addition_TI m33_xor (
    .port_x0_0 (m27_0[2:0]           ), //i
    .port_x0_1 (m27_1[2:0]           ), //i
    .port_x0_2 (m27_2[2:0]           ), //i
    .port_x0_3 (m27_3[2:0]           ), //i
    .port_x1_0 (m25_port_y_0[2:0]    ), //i
    .port_x1_1 (m25_port_y_1[2:0]    ), //i
    .port_x1_2 (m25_port_y_2[2:0]    ), //i
    .port_x1_3 (m25_port_y_3[2:0]    ), //i
    .port_y_0  (m33_xor_port_y_0[2:0]), //o
    .port_y_1  (m33_xor_port_y_1[2:0]), //o
    .port_y_2  (m33_xor_port_y_2[2:0]), //o
    .port_y_3  (m33_xor_port_y_3[2:0])  //o
  );
  Multiplication_TI m35 (
    .port_x0_0 (m24_0[2:0]       ), //i
    .port_x0_1 (m24_1[2:0]       ), //i
    .port_x0_2 (m24_2[2:0]       ), //i
    .port_x0_3 (m24_3[2:0]       ), //i
    .port_x1_0 (m34_port_y_0[2:0]), //i
    .port_x1_1 (m34_port_y_1[2:0]), //i
    .port_x1_2 (m34_port_y_2[2:0]), //i
    .port_x1_3 (m34_port_y_3[2:0]), //i
    .port_y_0  (m35_port_y_0[2:0]), //o
    .port_y_1  (m35_port_y_1[2:0]), //o
    .port_y_2  (m35_port_y_2[2:0]), //o
    .port_y_3  (m35_port_y_3[2:0]), //o
    .clk       (clk              ), //i
    .reset     (reset            )  //i
  );
  Addition_TI m36_xor (
    .port_x0_0 (m24_0[2:0]           ), //i
    .port_x0_1 (m24_1[2:0]           ), //i
    .port_x0_2 (m24_2[2:0]           ), //i
    .port_x0_3 (m24_3[2:0]           ), //i
    .port_x1_0 (m25_port_y_0[2:0]    ), //i
    .port_x1_1 (m25_port_y_1[2:0]    ), //i
    .port_x1_2 (m25_port_y_2[2:0]    ), //i
    .port_x1_3 (m25_port_y_3[2:0]    ), //i
    .port_y_0  (m36_xor_port_y_0[2:0]), //o
    .port_y_1  (m36_xor_port_y_1[2:0]), //o
    .port_y_2  (m36_xor_port_y_2[2:0]), //o
    .port_y_3  (m36_xor_port_y_3[2:0])  //o
  );
  Addition_TI m37_xor (
    .port_x0_0 (m21_1_0[2:0]         ), //i
    .port_x0_1 (m21_1_1[2:0]         ), //i
    .port_x0_2 (m21_1_2[2:0]         ), //i
    .port_x0_3 (m21_1_3[2:0]         ), //i
    .port_x1_0 (m29_port_y_0[2:0]    ), //i
    .port_x1_1 (m29_port_y_1[2:0]    ), //i
    .port_x1_2 (m29_port_y_2[2:0]    ), //i
    .port_x1_3 (m29_port_y_3[2:0]    ), //i
    .port_y_0  (m37_xor_port_y_0[2:0]), //o
    .port_y_1  (m37_xor_port_y_1[2:0]), //o
    .port_y_2  (m37_xor_port_y_2[2:0]), //o
    .port_y_3  (m37_xor_port_y_3[2:0])  //o
  );
  Addition_TI m38_xor (
    .port_x0_0 (m32_port_y_0[2:0]    ), //i
    .port_x0_1 (m32_port_y_1[2:0]    ), //i
    .port_x0_2 (m32_port_y_2[2:0]    ), //i
    .port_x0_3 (m32_port_y_3[2:0]    ), //i
    .port_x1_0 (m33_0[2:0]           ), //i
    .port_x1_1 (m33_1[2:0]           ), //i
    .port_x1_2 (m33_2[2:0]           ), //i
    .port_x1_3 (m33_3[2:0]           ), //i
    .port_y_0  (m38_xor_port_y_0[2:0]), //o
    .port_y_1  (m38_xor_port_y_1[2:0]), //o
    .port_y_2  (m38_xor_port_y_2[2:0]), //o
    .port_y_3  (m38_xor_port_y_3[2:0])  //o
  );
  Addition_TI m39_xor (
    .port_x0_0 (m23_1_0[2:0]         ), //i
    .port_x0_1 (m23_1_1[2:0]         ), //i
    .port_x0_2 (m23_1_2[2:0]         ), //i
    .port_x0_3 (m23_1_3[2:0]         ), //i
    .port_x1_0 (m30_port_y_0[2:0]    ), //i
    .port_x1_1 (m30_port_y_1[2:0]    ), //i
    .port_x1_2 (m30_port_y_2[2:0]    ), //i
    .port_x1_3 (m30_port_y_3[2:0]    ), //i
    .port_y_0  (m39_xor_port_y_0[2:0]), //o
    .port_y_1  (m39_xor_port_y_1[2:0]), //o
    .port_y_2  (m39_xor_port_y_2[2:0]), //o
    .port_y_3  (m39_xor_port_y_3[2:0])  //o
  );
  Addition_TI m40_xor (
    .port_x0_0 (m35_port_y_0[2:0]    ), //i
    .port_x0_1 (m35_port_y_1[2:0]    ), //i
    .port_x0_2 (m35_port_y_2[2:0]    ), //i
    .port_x0_3 (m35_port_y_3[2:0]    ), //i
    .port_x1_0 (m36_0[2:0]           ), //i
    .port_x1_1 (m36_1[2:0]           ), //i
    .port_x1_2 (m36_2[2:0]           ), //i
    .port_x1_3 (m36_3[2:0]           ), //i
    .port_y_0  (m40_xor_port_y_0[2:0]), //o
    .port_y_1  (m40_xor_port_y_1[2:0]), //o
    .port_y_2  (m40_xor_port_y_2[2:0]), //o
    .port_y_3  (m40_xor_port_y_3[2:0])  //o
  );
  Addition_TI m41_xor (
    .port_x0_0 (m38_xor_port_y_0[2:0]), //i
    .port_x0_1 (m38_xor_port_y_1[2:0]), //i
    .port_x0_2 (m38_xor_port_y_2[2:0]), //i
    .port_x0_3 (m38_xor_port_y_3[2:0]), //i
    .port_x1_0 (m40_xor_port_y_0[2:0]), //i
    .port_x1_1 (m40_xor_port_y_1[2:0]), //i
    .port_x1_2 (m40_xor_port_y_2[2:0]), //i
    .port_x1_3 (m40_xor_port_y_3[2:0]), //i
    .port_y_0  (m41_xor_port_y_0[2:0]), //o
    .port_y_1  (m41_xor_port_y_1[2:0]), //o
    .port_y_2  (m41_xor_port_y_2[2:0]), //o
    .port_y_3  (m41_xor_port_y_3[2:0])  //o
  );
  Addition_TI m42_xor (
    .port_x0_0 (m37_xor_port_y_0[2:0]), //i
    .port_x0_1 (m37_xor_port_y_1[2:0]), //i
    .port_x0_2 (m37_xor_port_y_2[2:0]), //i
    .port_x0_3 (m37_xor_port_y_3[2:0]), //i
    .port_x1_0 (m39_xor_port_y_0[2:0]), //i
    .port_x1_1 (m39_xor_port_y_1[2:0]), //i
    .port_x1_2 (m39_xor_port_y_2[2:0]), //i
    .port_x1_3 (m39_xor_port_y_3[2:0]), //i
    .port_y_0  (m42_xor_port_y_0[2:0]), //o
    .port_y_1  (m42_xor_port_y_1[2:0]), //o
    .port_y_2  (m42_xor_port_y_2[2:0]), //o
    .port_y_3  (m42_xor_port_y_3[2:0])  //o
  );
  Addition_TI m43_xor (
    .port_x0_0 (m37_xor_port_y_0[2:0]), //i
    .port_x0_1 (m37_xor_port_y_1[2:0]), //i
    .port_x0_2 (m37_xor_port_y_2[2:0]), //i
    .port_x0_3 (m37_xor_port_y_3[2:0]), //i
    .port_x1_0 (m38_xor_port_y_0[2:0]), //i
    .port_x1_1 (m38_xor_port_y_1[2:0]), //i
    .port_x1_2 (m38_xor_port_y_2[2:0]), //i
    .port_x1_3 (m38_xor_port_y_3[2:0]), //i
    .port_y_0  (m43_xor_port_y_0[2:0]), //o
    .port_y_1  (m43_xor_port_y_1[2:0]), //o
    .port_y_2  (m43_xor_port_y_2[2:0]), //o
    .port_y_3  (m43_xor_port_y_3[2:0])  //o
  );
  Addition_TI m44_xor (
    .port_x0_0 (m39_xor_port_y_0[2:0]), //i
    .port_x0_1 (m39_xor_port_y_1[2:0]), //i
    .port_x0_2 (m39_xor_port_y_2[2:0]), //i
    .port_x0_3 (m39_xor_port_y_3[2:0]), //i
    .port_x1_0 (m40_xor_port_y_0[2:0]), //i
    .port_x1_1 (m40_xor_port_y_1[2:0]), //i
    .port_x1_2 (m40_xor_port_y_2[2:0]), //i
    .port_x1_3 (m40_xor_port_y_3[2:0]), //i
    .port_y_0  (m44_xor_port_y_0[2:0]), //o
    .port_y_1  (m44_xor_port_y_1[2:0]), //o
    .port_y_2  (m44_xor_port_y_2[2:0]), //o
    .port_y_3  (m44_xor_port_y_3[2:0])  //o
  );
  Addition_TI m45_xor (
    .port_x0_0 (m42_xor_port_y_0[2:0]), //i
    .port_x0_1 (m42_xor_port_y_1[2:0]), //i
    .port_x0_2 (m42_xor_port_y_2[2:0]), //i
    .port_x0_3 (m42_xor_port_y_3[2:0]), //i
    .port_x1_0 (m41_xor_port_y_0[2:0]), //i
    .port_x1_1 (m41_xor_port_y_1[2:0]), //i
    .port_x1_2 (m41_xor_port_y_2[2:0]), //i
    .port_x1_3 (m41_xor_port_y_3[2:0]), //i
    .port_y_0  (m45_xor_port_y_0[2:0]), //o
    .port_y_1  (m45_xor_port_y_1[2:0]), //o
    .port_y_2  (m45_xor_port_y_2[2:0]), //o
    .port_y_3  (m45_xor_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m46_mul (
    .port_x0_0 (m44_xor_port_y_0[2:0]), //i
    .port_x0_1 (m44_xor_port_y_1[2:0]), //i
    .port_x0_2 (m44_xor_port_y_2[2:0]), //i
    .port_x0_3 (m44_xor_port_y_3[2:0]), //i
    .port_x1_0 (t6_2_0[2:0]          ), //i
    .port_x1_1 (t6_2_1[2:0]          ), //i
    .port_x1_2 (t6_2_2[2:0]          ), //i
    .port_x1_3 (t6_2_3[2:0]          ), //i
    .port_y_0  (m46_mul_port_y_0[2:0]), //o
    .port_y_1  (m46_mul_port_y_1[2:0]), //o
    .port_y_2  (m46_mul_port_y_2[2:0]), //o
    .port_y_3  (m46_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m47_mul (
    .port_x0_0 (m40_xor_port_y_0[2:0]), //i
    .port_x0_1 (m40_xor_port_y_1[2:0]), //i
    .port_x0_2 (m40_xor_port_y_2[2:0]), //i
    .port_x0_3 (m40_xor_port_y_3[2:0]), //i
    .port_x1_0 (t8_2_0[2:0]          ), //i
    .port_x1_1 (t8_2_1[2:0]          ), //i
    .port_x1_2 (t8_2_2[2:0]          ), //i
    .port_x1_3 (t8_2_3[2:0]          ), //i
    .port_y_0  (m47_mul_port_y_0[2:0]), //o
    .port_y_1  (m47_mul_port_y_1[2:0]), //o
    .port_y_2  (m47_mul_port_y_2[2:0]), //o
    .port_y_3  (m47_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m48_mul (
    .port_x0_0 (m39_xor_port_y_0[2:0]), //i
    .port_x0_1 (m39_xor_port_y_1[2:0]), //i
    .port_x0_2 (m39_xor_port_y_2[2:0]), //i
    .port_x0_3 (m39_xor_port_y_3[2:0]), //i
    .port_x1_0 (x7_2_0[2:0]          ), //i
    .port_x1_1 (x7_2_1[2:0]          ), //i
    .port_x1_2 (x7_2_2[2:0]          ), //i
    .port_x1_3 (x7_2_3[2:0]          ), //i
    .port_y_0  (m48_mul_port_y_0[2:0]), //o
    .port_y_1  (m48_mul_port_y_1[2:0]), //o
    .port_y_2  (m48_mul_port_y_2[2:0]), //o
    .port_y_3  (m48_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m49_mul (
    .port_x0_0 (m43_xor_port_y_0[2:0]), //i
    .port_x0_1 (m43_xor_port_y_1[2:0]), //i
    .port_x0_2 (m43_xor_port_y_2[2:0]), //i
    .port_x0_3 (m43_xor_port_y_3[2:0]), //i
    .port_x1_0 (t16_1_0[2:0]         ), //i
    .port_x1_1 (t16_1_1[2:0]         ), //i
    .port_x1_2 (t16_1_2[2:0]         ), //i
    .port_x1_3 (t16_1_3[2:0]         ), //i
    .port_y_0  (m49_mul_port_y_0[2:0]), //o
    .port_y_1  (m49_mul_port_y_1[2:0]), //o
    .port_y_2  (m49_mul_port_y_2[2:0]), //o
    .port_y_3  (m49_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m50_mul (
    .port_x0_0 (m38_xor_port_y_0[2:0]), //i
    .port_x0_1 (m38_xor_port_y_1[2:0]), //i
    .port_x0_2 (m38_xor_port_y_2[2:0]), //i
    .port_x0_3 (m38_xor_port_y_3[2:0]), //i
    .port_x1_0 (t9_2_0[2:0]          ), //i
    .port_x1_1 (t9_2_1[2:0]          ), //i
    .port_x1_2 (t9_2_2[2:0]          ), //i
    .port_x1_3 (t9_2_3[2:0]          ), //i
    .port_y_0  (m50_mul_port_y_0[2:0]), //o
    .port_y_1  (m50_mul_port_y_1[2:0]), //o
    .port_y_2  (m50_mul_port_y_2[2:0]), //o
    .port_y_3  (m50_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m51_mul (
    .port_x0_0 (m37_xor_port_y_0[2:0]), //i
    .port_x0_1 (m37_xor_port_y_1[2:0]), //i
    .port_x0_2 (m37_xor_port_y_2[2:0]), //i
    .port_x0_3 (m37_xor_port_y_3[2:0]), //i
    .port_x1_0 (t17_2_0[2:0]         ), //i
    .port_x1_1 (t17_2_1[2:0]         ), //i
    .port_x1_2 (t17_2_2[2:0]         ), //i
    .port_x1_3 (t17_2_3[2:0]         ), //i
    .port_y_0  (m51_mul_port_y_0[2:0]), //o
    .port_y_1  (m51_mul_port_y_1[2:0]), //o
    .port_y_2  (m51_mul_port_y_2[2:0]), //o
    .port_y_3  (m51_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m52_mul (
    .port_x0_0 (m42_xor_port_y_0[2:0]), //i
    .port_x0_1 (m42_xor_port_y_1[2:0]), //i
    .port_x0_2 (m42_xor_port_y_2[2:0]), //i
    .port_x0_3 (m42_xor_port_y_3[2:0]), //i
    .port_x1_0 (t15_2_0[2:0]         ), //i
    .port_x1_1 (t15_2_1[2:0]         ), //i
    .port_x1_2 (t15_2_2[2:0]         ), //i
    .port_x1_3 (t15_2_3[2:0]         ), //i
    .port_y_0  (m52_mul_port_y_0[2:0]), //o
    .port_y_1  (m52_mul_port_y_1[2:0]), //o
    .port_y_2  (m52_mul_port_y_2[2:0]), //o
    .port_y_3  (m52_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m53_mul (
    .port_x0_0 (m45_xor_port_y_0[2:0]), //i
    .port_x0_1 (m45_xor_port_y_1[2:0]), //i
    .port_x0_2 (m45_xor_port_y_2[2:0]), //i
    .port_x0_3 (m45_xor_port_y_3[2:0]), //i
    .port_x1_0 (t27_2_0[2:0]         ), //i
    .port_x1_1 (t27_2_1[2:0]         ), //i
    .port_x1_2 (t27_2_2[2:0]         ), //i
    .port_x1_3 (t27_2_3[2:0]         ), //i
    .port_y_0  (m53_mul_port_y_0[2:0]), //o
    .port_y_1  (m53_mul_port_y_1[2:0]), //o
    .port_y_2  (m53_mul_port_y_2[2:0]), //o
    .port_y_3  (m53_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m54_mul (
    .port_x0_0 (m41_xor_port_y_0[2:0]), //i
    .port_x0_1 (m41_xor_port_y_1[2:0]), //i
    .port_x0_2 (m41_xor_port_y_2[2:0]), //i
    .port_x0_3 (m41_xor_port_y_3[2:0]), //i
    .port_x1_0 (t10_2_0[2:0]         ), //i
    .port_x1_1 (t10_2_1[2:0]         ), //i
    .port_x1_2 (t10_2_2[2:0]         ), //i
    .port_x1_3 (t10_2_3[2:0]         ), //i
    .port_y_0  (m54_mul_port_y_0[2:0]), //o
    .port_y_1  (m54_mul_port_y_1[2:0]), //o
    .port_y_2  (m54_mul_port_y_2[2:0]), //o
    .port_y_3  (m54_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m55_mul (
    .port_x0_0 (m44_xor_port_y_0[2:0]), //i
    .port_x0_1 (m44_xor_port_y_1[2:0]), //i
    .port_x0_2 (m44_xor_port_y_2[2:0]), //i
    .port_x0_3 (m44_xor_port_y_3[2:0]), //i
    .port_x1_0 (t13_2_0[2:0]         ), //i
    .port_x1_1 (t13_2_1[2:0]         ), //i
    .port_x1_2 (t13_2_2[2:0]         ), //i
    .port_x1_3 (t13_2_3[2:0]         ), //i
    .port_y_0  (m55_mul_port_y_0[2:0]), //o
    .port_y_1  (m55_mul_port_y_1[2:0]), //o
    .port_y_2  (m55_mul_port_y_2[2:0]), //o
    .port_y_3  (m55_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m56_mul (
    .port_x0_0 (m40_xor_port_y_0[2:0]), //i
    .port_x0_1 (m40_xor_port_y_1[2:0]), //i
    .port_x0_2 (m40_xor_port_y_2[2:0]), //i
    .port_x0_3 (m40_xor_port_y_3[2:0]), //i
    .port_x1_0 (t23_2_0[2:0]         ), //i
    .port_x1_1 (t23_2_1[2:0]         ), //i
    .port_x1_2 (t23_2_2[2:0]         ), //i
    .port_x1_3 (t23_2_3[2:0]         ), //i
    .port_y_0  (m56_mul_port_y_0[2:0]), //o
    .port_y_1  (m56_mul_port_y_1[2:0]), //o
    .port_y_2  (m56_mul_port_y_2[2:0]), //o
    .port_y_3  (m56_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m57_mul (
    .port_x0_0 (m39_xor_port_y_0[2:0]), //i
    .port_x0_1 (m39_xor_port_y_1[2:0]), //i
    .port_x0_2 (m39_xor_port_y_2[2:0]), //i
    .port_x0_3 (m39_xor_port_y_3[2:0]), //i
    .port_x1_0 (t19_2_0[2:0]         ), //i
    .port_x1_1 (t19_2_1[2:0]         ), //i
    .port_x1_2 (t19_2_2[2:0]         ), //i
    .port_x1_3 (t19_2_3[2:0]         ), //i
    .port_y_0  (m57_mul_port_y_0[2:0]), //o
    .port_y_1  (m57_mul_port_y_1[2:0]), //o
    .port_y_2  (m57_mul_port_y_2[2:0]), //o
    .port_y_3  (m57_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m58_mul (
    .port_x0_0 (m43_xor_port_y_0[2:0]), //i
    .port_x0_1 (m43_xor_port_y_1[2:0]), //i
    .port_x0_2 (m43_xor_port_y_2[2:0]), //i
    .port_x0_3 (m43_xor_port_y_3[2:0]), //i
    .port_x1_0 (t3_2_0[2:0]          ), //i
    .port_x1_1 (t3_2_1[2:0]          ), //i
    .port_x1_2 (t3_2_2[2:0]          ), //i
    .port_x1_3 (t3_2_3[2:0]          ), //i
    .port_y_0  (m58_mul_port_y_0[2:0]), //o
    .port_y_1  (m58_mul_port_y_1[2:0]), //o
    .port_y_2  (m58_mul_port_y_2[2:0]), //o
    .port_y_3  (m58_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m59_mul (
    .port_x0_0 (m38_xor_port_y_0[2:0]), //i
    .port_x0_1 (m38_xor_port_y_1[2:0]), //i
    .port_x0_2 (m38_xor_port_y_2[2:0]), //i
    .port_x0_3 (m38_xor_port_y_3[2:0]), //i
    .port_x1_0 (t22_2_0[2:0]         ), //i
    .port_x1_1 (t22_2_1[2:0]         ), //i
    .port_x1_2 (t22_2_2[2:0]         ), //i
    .port_x1_3 (t22_2_3[2:0]         ), //i
    .port_y_0  (m59_mul_port_y_0[2:0]), //o
    .port_y_1  (m59_mul_port_y_1[2:0]), //o
    .port_y_2  (m59_mul_port_y_2[2:0]), //o
    .port_y_3  (m59_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m60_mul (
    .port_x0_0 (m37_xor_port_y_0[2:0]), //i
    .port_x0_1 (m37_xor_port_y_1[2:0]), //i
    .port_x0_2 (m37_xor_port_y_2[2:0]), //i
    .port_x0_3 (m37_xor_port_y_3[2:0]), //i
    .port_x1_0 (t20_2_0[2:0]         ), //i
    .port_x1_1 (t20_2_1[2:0]         ), //i
    .port_x1_2 (t20_2_2[2:0]         ), //i
    .port_x1_3 (t20_2_3[2:0]         ), //i
    .port_y_0  (m60_mul_port_y_0[2:0]), //o
    .port_y_1  (m60_mul_port_y_1[2:0]), //o
    .port_y_2  (m60_mul_port_y_2[2:0]), //o
    .port_y_3  (m60_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m61_mul (
    .port_x0_0 (m42_xor_port_y_0[2:0]), //i
    .port_x0_1 (m42_xor_port_y_1[2:0]), //i
    .port_x0_2 (m42_xor_port_y_2[2:0]), //i
    .port_x0_3 (m42_xor_port_y_3[2:0]), //i
    .port_x1_0 (t1_2_0[2:0]          ), //i
    .port_x1_1 (t1_2_1[2:0]          ), //i
    .port_x1_2 (t1_2_2[2:0]          ), //i
    .port_x1_3 (t1_2_3[2:0]          ), //i
    .port_y_0  (m61_mul_port_y_0[2:0]), //o
    .port_y_1  (m61_mul_port_y_1[2:0]), //o
    .port_y_2  (m61_mul_port_y_2[2:0]), //o
    .port_y_3  (m61_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m62_mul (
    .port_x0_0 (m45_xor_port_y_0[2:0]), //i
    .port_x0_1 (m45_xor_port_y_1[2:0]), //i
    .port_x0_2 (m45_xor_port_y_2[2:0]), //i
    .port_x0_3 (m45_xor_port_y_3[2:0]), //i
    .port_x1_0 (t4_2_0[2:0]          ), //i
    .port_x1_1 (t4_2_1[2:0]          ), //i
    .port_x1_2 (t4_2_2[2:0]          ), //i
    .port_x1_3 (t4_2_3[2:0]          ), //i
    .port_y_0  (m62_mul_port_y_0[2:0]), //o
    .port_y_1  (m62_mul_port_y_1[2:0]), //o
    .port_y_2  (m62_mul_port_y_2[2:0]), //o
    .port_y_3  (m62_mul_port_y_3[2:0])  //o
  );
  Multiplication_TI_noReg m63_mul (
    .port_x0_0 (m41_xor_port_y_0[2:0]), //i
    .port_x0_1 (m41_xor_port_y_1[2:0]), //i
    .port_x0_2 (m41_xor_port_y_2[2:0]), //i
    .port_x0_3 (m41_xor_port_y_3[2:0]), //i
    .port_x1_0 (t2_2_0[2:0]          ), //i
    .port_x1_1 (t2_2_1[2:0]          ), //i
    .port_x1_2 (t2_2_2[2:0]          ), //i
    .port_x1_3 (t2_2_3[2:0]          ), //i
    .port_y_0  (m63_mul_port_y_0[2:0]), //o
    .port_y_1  (m63_mul_port_y_1[2:0]), //o
    .port_y_2  (m63_mul_port_y_2[2:0]), //o
    .port_y_3  (m63_mul_port_y_3[2:0])  //o
  );
  Addition_TI l0_xor (
    .port_x0_0 (m61_mul_port_y_0[2:0]), //i
    .port_x0_1 (m61_mul_port_y_1[2:0]), //i
    .port_x0_2 (m61_mul_port_y_2[2:0]), //i
    .port_x0_3 (m61_mul_port_y_3[2:0]), //i
    .port_x1_0 (m62_mul_port_y_0[2:0]), //i
    .port_x1_1 (m62_mul_port_y_1[2:0]), //i
    .port_x1_2 (m62_mul_port_y_2[2:0]), //i
    .port_x1_3 (m62_mul_port_y_3[2:0]), //i
    .port_y_0  (l0_xor_port_y_0[2:0] ), //o
    .port_y_1  (l0_xor_port_y_1[2:0] ), //o
    .port_y_2  (l0_xor_port_y_2[2:0] ), //o
    .port_y_3  (l0_xor_port_y_3[2:0] )  //o
  );
  Addition_TI l1_xor (
    .port_x0_0 (m50_mul_port_y_0[2:0]), //i
    .port_x0_1 (m50_mul_port_y_1[2:0]), //i
    .port_x0_2 (m50_mul_port_y_2[2:0]), //i
    .port_x0_3 (m50_mul_port_y_3[2:0]), //i
    .port_x1_0 (m56_mul_port_y_0[2:0]), //i
    .port_x1_1 (m56_mul_port_y_1[2:0]), //i
    .port_x1_2 (m56_mul_port_y_2[2:0]), //i
    .port_x1_3 (m56_mul_port_y_3[2:0]), //i
    .port_y_0  (l1_xor_port_y_0[2:0] ), //o
    .port_y_1  (l1_xor_port_y_1[2:0] ), //o
    .port_y_2  (l1_xor_port_y_2[2:0] ), //o
    .port_y_3  (l1_xor_port_y_3[2:0] )  //o
  );
  Addition_TI l2_xor (
    .port_x0_0 (m46_mul_port_y_0[2:0]), //i
    .port_x0_1 (m46_mul_port_y_1[2:0]), //i
    .port_x0_2 (m46_mul_port_y_2[2:0]), //i
    .port_x0_3 (m46_mul_port_y_3[2:0]), //i
    .port_x1_0 (m48_mul_port_y_0[2:0]), //i
    .port_x1_1 (m48_mul_port_y_1[2:0]), //i
    .port_x1_2 (m48_mul_port_y_2[2:0]), //i
    .port_x1_3 (m48_mul_port_y_3[2:0]), //i
    .port_y_0  (l2_xor_port_y_0[2:0] ), //o
    .port_y_1  (l2_xor_port_y_1[2:0] ), //o
    .port_y_2  (l2_xor_port_y_2[2:0] ), //o
    .port_y_3  (l2_xor_port_y_3[2:0] )  //o
  );
  Addition_TI l3_xor (
    .port_x0_0 (m47_mul_port_y_0[2:0]), //i
    .port_x0_1 (m47_mul_port_y_1[2:0]), //i
    .port_x0_2 (m47_mul_port_y_2[2:0]), //i
    .port_x0_3 (m47_mul_port_y_3[2:0]), //i
    .port_x1_0 (m55_mul_port_y_0[2:0]), //i
    .port_x1_1 (m55_mul_port_y_1[2:0]), //i
    .port_x1_2 (m55_mul_port_y_2[2:0]), //i
    .port_x1_3 (m55_mul_port_y_3[2:0]), //i
    .port_y_0  (l3_xor_port_y_0[2:0] ), //o
    .port_y_1  (l3_xor_port_y_1[2:0] ), //o
    .port_y_2  (l3_xor_port_y_2[2:0] ), //o
    .port_y_3  (l3_xor_port_y_3[2:0] )  //o
  );
  Addition_TI l4_xor (
    .port_x0_0 (m54_mul_port_y_0[2:0]), //i
    .port_x0_1 (m54_mul_port_y_1[2:0]), //i
    .port_x0_2 (m54_mul_port_y_2[2:0]), //i
    .port_x0_3 (m54_mul_port_y_3[2:0]), //i
    .port_x1_0 (m58_mul_port_y_0[2:0]), //i
    .port_x1_1 (m58_mul_port_y_1[2:0]), //i
    .port_x1_2 (m58_mul_port_y_2[2:0]), //i
    .port_x1_3 (m58_mul_port_y_3[2:0]), //i
    .port_y_0  (l4_xor_port_y_0[2:0] ), //o
    .port_y_1  (l4_xor_port_y_1[2:0] ), //o
    .port_y_2  (l4_xor_port_y_2[2:0] ), //o
    .port_y_3  (l4_xor_port_y_3[2:0] )  //o
  );
  Addition_TI l5_xor (
    .port_x0_0 (m49_mul_port_y_0[2:0]), //i
    .port_x0_1 (m49_mul_port_y_1[2:0]), //i
    .port_x0_2 (m49_mul_port_y_2[2:0]), //i
    .port_x0_3 (m49_mul_port_y_3[2:0]), //i
    .port_x1_0 (m61_mul_port_y_0[2:0]), //i
    .port_x1_1 (m61_mul_port_y_1[2:0]), //i
    .port_x1_2 (m61_mul_port_y_2[2:0]), //i
    .port_x1_3 (m61_mul_port_y_3[2:0]), //i
    .port_y_0  (l5_xor_port_y_0[2:0] ), //o
    .port_y_1  (l5_xor_port_y_1[2:0] ), //o
    .port_y_2  (l5_xor_port_y_2[2:0] ), //o
    .port_y_3  (l5_xor_port_y_3[2:0] )  //o
  );
  Addition_TI l6_xor (
    .port_x0_0 (m62_mul_port_y_0[2:0]), //i
    .port_x0_1 (m62_mul_port_y_1[2:0]), //i
    .port_x0_2 (m62_mul_port_y_2[2:0]), //i
    .port_x0_3 (m62_mul_port_y_3[2:0]), //i
    .port_x1_0 (l5_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l5_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l5_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l5_xor_port_y_3[2:0] ), //i
    .port_y_0  (l6_xor_port_y_0[2:0] ), //o
    .port_y_1  (l6_xor_port_y_1[2:0] ), //o
    .port_y_2  (l6_xor_port_y_2[2:0] ), //o
    .port_y_3  (l6_xor_port_y_3[2:0] )  //o
  );
  Addition_TI l7_xor (
    .port_x0_0 (m46_mul_port_y_0[2:0]), //i
    .port_x0_1 (m46_mul_port_y_1[2:0]), //i
    .port_x0_2 (m46_mul_port_y_2[2:0]), //i
    .port_x0_3 (m46_mul_port_y_3[2:0]), //i
    .port_x1_0 (l3_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l3_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l3_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l3_xor_port_y_3[2:0] ), //i
    .port_y_0  (l7_xor_port_y_0[2:0] ), //o
    .port_y_1  (l7_xor_port_y_1[2:0] ), //o
    .port_y_2  (l7_xor_port_y_2[2:0] ), //o
    .port_y_3  (l7_xor_port_y_3[2:0] )  //o
  );
  Addition_TI l8_xor (
    .port_x0_0 (m51_mul_port_y_0[2:0]), //i
    .port_x0_1 (m51_mul_port_y_1[2:0]), //i
    .port_x0_2 (m51_mul_port_y_2[2:0]), //i
    .port_x0_3 (m51_mul_port_y_3[2:0]), //i
    .port_x1_0 (m59_mul_port_y_0[2:0]), //i
    .port_x1_1 (m59_mul_port_y_1[2:0]), //i
    .port_x1_2 (m59_mul_port_y_2[2:0]), //i
    .port_x1_3 (m59_mul_port_y_3[2:0]), //i
    .port_y_0  (l8_xor_port_y_0[2:0] ), //o
    .port_y_1  (l8_xor_port_y_1[2:0] ), //o
    .port_y_2  (l8_xor_port_y_2[2:0] ), //o
    .port_y_3  (l8_xor_port_y_3[2:0] )  //o
  );
  Addition_TI l9_xor (
    .port_x0_0 (m52_mul_port_y_0[2:0]), //i
    .port_x0_1 (m52_mul_port_y_1[2:0]), //i
    .port_x0_2 (m52_mul_port_y_2[2:0]), //i
    .port_x0_3 (m52_mul_port_y_3[2:0]), //i
    .port_x1_0 (m53_mul_port_y_0[2:0]), //i
    .port_x1_1 (m53_mul_port_y_1[2:0]), //i
    .port_x1_2 (m53_mul_port_y_2[2:0]), //i
    .port_x1_3 (m53_mul_port_y_3[2:0]), //i
    .port_y_0  (l9_xor_port_y_0[2:0] ), //o
    .port_y_1  (l9_xor_port_y_1[2:0] ), //o
    .port_y_2  (l9_xor_port_y_2[2:0] ), //o
    .port_y_3  (l9_xor_port_y_3[2:0] )  //o
  );
  Addition_TI l10_xor (
    .port_x0_0 (m53_mul_port_y_0[2:0]), //i
    .port_x0_1 (m53_mul_port_y_1[2:0]), //i
    .port_x0_2 (m53_mul_port_y_2[2:0]), //i
    .port_x0_3 (m53_mul_port_y_3[2:0]), //i
    .port_x1_0 (l4_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l4_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l4_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l4_xor_port_y_3[2:0] ), //i
    .port_y_0  (l10_xor_port_y_0[2:0]), //o
    .port_y_1  (l10_xor_port_y_1[2:0]), //o
    .port_y_2  (l10_xor_port_y_2[2:0]), //o
    .port_y_3  (l10_xor_port_y_3[2:0])  //o
  );
  Addition_TI l11_xor (
    .port_x0_0 (m60_mul_port_y_0[2:0]), //i
    .port_x0_1 (m60_mul_port_y_1[2:0]), //i
    .port_x0_2 (m60_mul_port_y_2[2:0]), //i
    .port_x0_3 (m60_mul_port_y_3[2:0]), //i
    .port_x1_0 (l2_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l2_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l2_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l2_xor_port_y_3[2:0] ), //i
    .port_y_0  (l11_xor_port_y_0[2:0]), //o
    .port_y_1  (l11_xor_port_y_1[2:0]), //o
    .port_y_2  (l11_xor_port_y_2[2:0]), //o
    .port_y_3  (l11_xor_port_y_3[2:0])  //o
  );
  Addition_TI l12_xor (
    .port_x0_0 (m48_mul_port_y_0[2:0]), //i
    .port_x0_1 (m48_mul_port_y_1[2:0]), //i
    .port_x0_2 (m48_mul_port_y_2[2:0]), //i
    .port_x0_3 (m48_mul_port_y_3[2:0]), //i
    .port_x1_0 (m51_mul_port_y_0[2:0]), //i
    .port_x1_1 (m51_mul_port_y_1[2:0]), //i
    .port_x1_2 (m51_mul_port_y_2[2:0]), //i
    .port_x1_3 (m51_mul_port_y_3[2:0]), //i
    .port_y_0  (l12_xor_port_y_0[2:0]), //o
    .port_y_1  (l12_xor_port_y_1[2:0]), //o
    .port_y_2  (l12_xor_port_y_2[2:0]), //o
    .port_y_3  (l12_xor_port_y_3[2:0])  //o
  );
  Addition_TI l13_xor (
    .port_x0_0 (m50_mul_port_y_0[2:0]), //i
    .port_x0_1 (m50_mul_port_y_1[2:0]), //i
    .port_x0_2 (m50_mul_port_y_2[2:0]), //i
    .port_x0_3 (m50_mul_port_y_3[2:0]), //i
    .port_x1_0 (l0_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l0_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l0_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l0_xor_port_y_3[2:0] ), //i
    .port_y_0  (l13_xor_port_y_0[2:0]), //o
    .port_y_1  (l13_xor_port_y_1[2:0]), //o
    .port_y_2  (l13_xor_port_y_2[2:0]), //o
    .port_y_3  (l13_xor_port_y_3[2:0])  //o
  );
  Addition_TI l14_xor (
    .port_x0_0 (m52_mul_port_y_0[2:0]), //i
    .port_x0_1 (m52_mul_port_y_1[2:0]), //i
    .port_x0_2 (m52_mul_port_y_2[2:0]), //i
    .port_x0_3 (m52_mul_port_y_3[2:0]), //i
    .port_x1_0 (m61_mul_port_y_0[2:0]), //i
    .port_x1_1 (m61_mul_port_y_1[2:0]), //i
    .port_x1_2 (m61_mul_port_y_2[2:0]), //i
    .port_x1_3 (m61_mul_port_y_3[2:0]), //i
    .port_y_0  (l14_xor_port_y_0[2:0]), //o
    .port_y_1  (l14_xor_port_y_1[2:0]), //o
    .port_y_2  (l14_xor_port_y_2[2:0]), //o
    .port_y_3  (l14_xor_port_y_3[2:0])  //o
  );
  Addition_TI l15_xor (
    .port_x0_0 (m55_mul_port_y_0[2:0]), //i
    .port_x0_1 (m55_mul_port_y_1[2:0]), //i
    .port_x0_2 (m55_mul_port_y_2[2:0]), //i
    .port_x0_3 (m55_mul_port_y_3[2:0]), //i
    .port_x1_0 (l1_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l1_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l1_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l1_xor_port_y_3[2:0] ), //i
    .port_y_0  (l15_xor_port_y_0[2:0]), //o
    .port_y_1  (l15_xor_port_y_1[2:0]), //o
    .port_y_2  (l15_xor_port_y_2[2:0]), //o
    .port_y_3  (l15_xor_port_y_3[2:0])  //o
  );
  Addition_TI l16_xor (
    .port_x0_0 (m56_mul_port_y_0[2:0]), //i
    .port_x0_1 (m56_mul_port_y_1[2:0]), //i
    .port_x0_2 (m56_mul_port_y_2[2:0]), //i
    .port_x0_3 (m56_mul_port_y_3[2:0]), //i
    .port_x1_0 (l0_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l0_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l0_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l0_xor_port_y_3[2:0] ), //i
    .port_y_0  (l16_xor_port_y_0[2:0]), //o
    .port_y_1  (l16_xor_port_y_1[2:0]), //o
    .port_y_2  (l16_xor_port_y_2[2:0]), //o
    .port_y_3  (l16_xor_port_y_3[2:0])  //o
  );
  Addition_TI l17_xor (
    .port_x0_0 (m57_mul_port_y_0[2:0]), //i
    .port_x0_1 (m57_mul_port_y_1[2:0]), //i
    .port_x0_2 (m57_mul_port_y_2[2:0]), //i
    .port_x0_3 (m57_mul_port_y_3[2:0]), //i
    .port_x1_0 (l1_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l1_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l1_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l1_xor_port_y_3[2:0] ), //i
    .port_y_0  (l17_xor_port_y_0[2:0]), //o
    .port_y_1  (l17_xor_port_y_1[2:0]), //o
    .port_y_2  (l17_xor_port_y_2[2:0]), //o
    .port_y_3  (l17_xor_port_y_3[2:0])  //o
  );
  Addition_TI l18_xor (
    .port_x0_0 (m58_mul_port_y_0[2:0]), //i
    .port_x0_1 (m58_mul_port_y_1[2:0]), //i
    .port_x0_2 (m58_mul_port_y_2[2:0]), //i
    .port_x0_3 (m58_mul_port_y_3[2:0]), //i
    .port_x1_0 (l8_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l8_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l8_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l8_xor_port_y_3[2:0] ), //i
    .port_y_0  (l18_xor_port_y_0[2:0]), //o
    .port_y_1  (l18_xor_port_y_1[2:0]), //o
    .port_y_2  (l18_xor_port_y_2[2:0]), //o
    .port_y_3  (l18_xor_port_y_3[2:0])  //o
  );
  Addition_TI l19_xor (
    .port_x0_0 (m63_mul_port_y_0[2:0]), //i
    .port_x0_1 (m63_mul_port_y_1[2:0]), //i
    .port_x0_2 (m63_mul_port_y_2[2:0]), //i
    .port_x0_3 (m63_mul_port_y_3[2:0]), //i
    .port_x1_0 (l4_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l4_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l4_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l4_xor_port_y_3[2:0] ), //i
    .port_y_0  (l19_xor_port_y_0[2:0]), //o
    .port_y_1  (l19_xor_port_y_1[2:0]), //o
    .port_y_2  (l19_xor_port_y_2[2:0]), //o
    .port_y_3  (l19_xor_port_y_3[2:0])  //o
  );
  Addition_TI l20_xor (
    .port_x0_0 (l0_xor_port_y_0[2:0] ), //i
    .port_x0_1 (l0_xor_port_y_1[2:0] ), //i
    .port_x0_2 (l0_xor_port_y_2[2:0] ), //i
    .port_x0_3 (l0_xor_port_y_3[2:0] ), //i
    .port_x1_0 (l1_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l1_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l1_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l1_xor_port_y_3[2:0] ), //i
    .port_y_0  (l20_xor_port_y_0[2:0]), //o
    .port_y_1  (l20_xor_port_y_1[2:0]), //o
    .port_y_2  (l20_xor_port_y_2[2:0]), //o
    .port_y_3  (l20_xor_port_y_3[2:0])  //o
  );
  Addition_TI l21_xor (
    .port_x0_0 (l1_xor_port_y_0[2:0] ), //i
    .port_x0_1 (l1_xor_port_y_1[2:0] ), //i
    .port_x0_2 (l1_xor_port_y_2[2:0] ), //i
    .port_x0_3 (l1_xor_port_y_3[2:0] ), //i
    .port_x1_0 (l7_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l7_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l7_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l7_xor_port_y_3[2:0] ), //i
    .port_y_0  (l21_xor_port_y_0[2:0]), //o
    .port_y_1  (l21_xor_port_y_1[2:0]), //o
    .port_y_2  (l21_xor_port_y_2[2:0]), //o
    .port_y_3  (l21_xor_port_y_3[2:0])  //o
  );
  Addition_TI l22_xor (
    .port_x0_0 (l3_xor_port_y_0[2:0] ), //i
    .port_x0_1 (l3_xor_port_y_1[2:0] ), //i
    .port_x0_2 (l3_xor_port_y_2[2:0] ), //i
    .port_x0_3 (l3_xor_port_y_3[2:0] ), //i
    .port_x1_0 (l12_xor_port_y_0[2:0]), //i
    .port_x1_1 (l12_xor_port_y_1[2:0]), //i
    .port_x1_2 (l12_xor_port_y_2[2:0]), //i
    .port_x1_3 (l12_xor_port_y_3[2:0]), //i
    .port_y_0  (l22_xor_port_y_0[2:0]), //o
    .port_y_1  (l22_xor_port_y_1[2:0]), //o
    .port_y_2  (l22_xor_port_y_2[2:0]), //o
    .port_y_3  (l22_xor_port_y_3[2:0])  //o
  );
  Addition_TI l23_xor (
    .port_x0_0 (l18_xor_port_y_0[2:0]), //i
    .port_x0_1 (l18_xor_port_y_1[2:0]), //i
    .port_x0_2 (l18_xor_port_y_2[2:0]), //i
    .port_x0_3 (l18_xor_port_y_3[2:0]), //i
    .port_x1_0 (l2_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l2_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l2_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l2_xor_port_y_3[2:0] ), //i
    .port_y_0  (l23_xor_port_y_0[2:0]), //o
    .port_y_1  (l23_xor_port_y_1[2:0]), //o
    .port_y_2  (l23_xor_port_y_2[2:0]), //o
    .port_y_3  (l23_xor_port_y_3[2:0])  //o
  );
  Addition_TI l24_xor (
    .port_x0_0 (l15_xor_port_y_0[2:0]), //i
    .port_x0_1 (l15_xor_port_y_1[2:0]), //i
    .port_x0_2 (l15_xor_port_y_2[2:0]), //i
    .port_x0_3 (l15_xor_port_y_3[2:0]), //i
    .port_x1_0 (l9_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l9_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l9_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l9_xor_port_y_3[2:0] ), //i
    .port_y_0  (l24_xor_port_y_0[2:0]), //o
    .port_y_1  (l24_xor_port_y_1[2:0]), //o
    .port_y_2  (l24_xor_port_y_2[2:0]), //o
    .port_y_3  (l24_xor_port_y_3[2:0])  //o
  );
  Addition_TI l25_xor (
    .port_x0_0 (l6_xor_port_y_0[2:0] ), //i
    .port_x0_1 (l6_xor_port_y_1[2:0] ), //i
    .port_x0_2 (l6_xor_port_y_2[2:0] ), //i
    .port_x0_3 (l6_xor_port_y_3[2:0] ), //i
    .port_x1_0 (l10_xor_port_y_0[2:0]), //i
    .port_x1_1 (l10_xor_port_y_1[2:0]), //i
    .port_x1_2 (l10_xor_port_y_2[2:0]), //i
    .port_x1_3 (l10_xor_port_y_3[2:0]), //i
    .port_y_0  (l25_xor_port_y_0[2:0]), //o
    .port_y_1  (l25_xor_port_y_1[2:0]), //o
    .port_y_2  (l25_xor_port_y_2[2:0]), //o
    .port_y_3  (l25_xor_port_y_3[2:0])  //o
  );
  Addition_TI l26_xor (
    .port_x0_0 (l7_xor_port_y_0[2:0] ), //i
    .port_x0_1 (l7_xor_port_y_1[2:0] ), //i
    .port_x0_2 (l7_xor_port_y_2[2:0] ), //i
    .port_x0_3 (l7_xor_port_y_3[2:0] ), //i
    .port_x1_0 (l9_xor_port_y_0[2:0] ), //i
    .port_x1_1 (l9_xor_port_y_1[2:0] ), //i
    .port_x1_2 (l9_xor_port_y_2[2:0] ), //i
    .port_x1_3 (l9_xor_port_y_3[2:0] ), //i
    .port_y_0  (l26_xor_port_y_0[2:0]), //o
    .port_y_1  (l26_xor_port_y_1[2:0]), //o
    .port_y_2  (l26_xor_port_y_2[2:0]), //o
    .port_y_3  (l26_xor_port_y_3[2:0])  //o
  );
  Addition_TI l27_xor (
    .port_x0_0 (l8_xor_port_y_0[2:0] ), //i
    .port_x0_1 (l8_xor_port_y_1[2:0] ), //i
    .port_x0_2 (l8_xor_port_y_2[2:0] ), //i
    .port_x0_3 (l8_xor_port_y_3[2:0] ), //i
    .port_x1_0 (l10_xor_port_y_0[2:0]), //i
    .port_x1_1 (l10_xor_port_y_1[2:0]), //i
    .port_x1_2 (l10_xor_port_y_2[2:0]), //i
    .port_x1_3 (l10_xor_port_y_3[2:0]), //i
    .port_y_0  (l27_xor_port_y_0[2:0]), //o
    .port_y_1  (l27_xor_port_y_1[2:0]), //o
    .port_y_2  (l27_xor_port_y_2[2:0]), //o
    .port_y_3  (l27_xor_port_y_3[2:0])  //o
  );
  Addition_TI l28_xor (
    .port_x0_0 (l11_xor_port_y_0[2:0]), //i
    .port_x0_1 (l11_xor_port_y_1[2:0]), //i
    .port_x0_2 (l11_xor_port_y_2[2:0]), //i
    .port_x0_3 (l11_xor_port_y_3[2:0]), //i
    .port_x1_0 (l14_xor_port_y_0[2:0]), //i
    .port_x1_1 (l14_xor_port_y_1[2:0]), //i
    .port_x1_2 (l14_xor_port_y_2[2:0]), //i
    .port_x1_3 (l14_xor_port_y_3[2:0]), //i
    .port_y_0  (l28_xor_port_y_0[2:0]), //o
    .port_y_1  (l28_xor_port_y_1[2:0]), //o
    .port_y_2  (l28_xor_port_y_2[2:0]), //o
    .port_y_3  (l28_xor_port_y_3[2:0])  //o
  );
  Addition_TI l29_xor (
    .port_x0_0 (l11_xor_port_y_0[2:0]), //i
    .port_x0_1 (l11_xor_port_y_1[2:0]), //i
    .port_x0_2 (l11_xor_port_y_2[2:0]), //i
    .port_x0_3 (l11_xor_port_y_3[2:0]), //i
    .port_x1_0 (l17_xor_port_y_0[2:0]), //i
    .port_x1_1 (l17_xor_port_y_1[2:0]), //i
    .port_x1_2 (l17_xor_port_y_2[2:0]), //i
    .port_x1_3 (l17_xor_port_y_3[2:0]), //i
    .port_y_0  (l29_xor_port_y_0[2:0]), //o
    .port_y_1  (l29_xor_port_y_1[2:0]), //o
    .port_y_2  (l29_xor_port_y_2[2:0]), //o
    .port_y_3  (l29_xor_port_y_3[2:0])  //o
  );
  Addition_TI s0 (
    .port_x0_0 (l6_xor_port_y_0[2:0] ), //i
    .port_x0_1 (l6_xor_port_y_1[2:0] ), //i
    .port_x0_2 (l6_xor_port_y_2[2:0] ), //i
    .port_x0_3 (l6_xor_port_y_3[2:0] ), //i
    .port_x1_0 (l24_xor_port_y_0[2:0]), //i
    .port_x1_1 (l24_xor_port_y_1[2:0]), //i
    .port_x1_2 (l24_xor_port_y_2[2:0]), //i
    .port_x1_3 (l24_xor_port_y_3[2:0]), //i
    .port_y_0  (s0_port_y_0[2:0]     ), //o
    .port_y_1  (s0_port_y_1[2:0]     ), //o
    .port_y_2  (s0_port_y_2[2:0]     ), //o
    .port_y_3  (s0_port_y_3[2:0]     )  //o
  );
  Addition_Inv_TI s1 (
    .port_x0_0 (l16_xor_port_y_0[2:0]), //i
    .port_x0_1 (l16_xor_port_y_1[2:0]), //i
    .port_x0_2 (l16_xor_port_y_2[2:0]), //i
    .port_x0_3 (l16_xor_port_y_3[2:0]), //i
    .port_x1_0 (l26_xor_port_y_0[2:0]), //i
    .port_x1_1 (l26_xor_port_y_1[2:0]), //i
    .port_x1_2 (l26_xor_port_y_2[2:0]), //i
    .port_x1_3 (l26_xor_port_y_3[2:0]), //i
    .port_y_0  (s1_port_y_0[2:0]     ), //o
    .port_y_1  (s1_port_y_1[2:0]     ), //o
    .port_y_2  (s1_port_y_2[2:0]     ), //o
    .port_y_3  (s1_port_y_3[2:0]     )  //o
  );
  Addition_Inv_TI s2 (
    .port_x0_0 (l19_xor_port_y_0[2:0]), //i
    .port_x0_1 (l19_xor_port_y_1[2:0]), //i
    .port_x0_2 (l19_xor_port_y_2[2:0]), //i
    .port_x0_3 (l19_xor_port_y_3[2:0]), //i
    .port_x1_0 (l28_xor_port_y_0[2:0]), //i
    .port_x1_1 (l28_xor_port_y_1[2:0]), //i
    .port_x1_2 (l28_xor_port_y_2[2:0]), //i
    .port_x1_3 (l28_xor_port_y_3[2:0]), //i
    .port_y_0  (s2_port_y_0[2:0]     ), //o
    .port_y_1  (s2_port_y_1[2:0]     ), //o
    .port_y_2  (s2_port_y_2[2:0]     ), //o
    .port_y_3  (s2_port_y_3[2:0]     )  //o
  );
  Addition_TI s3 (
    .port_x0_0 (l6_xor_port_y_0[2:0] ), //i
    .port_x0_1 (l6_xor_port_y_1[2:0] ), //i
    .port_x0_2 (l6_xor_port_y_2[2:0] ), //i
    .port_x0_3 (l6_xor_port_y_3[2:0] ), //i
    .port_x1_0 (l21_xor_port_y_0[2:0]), //i
    .port_x1_1 (l21_xor_port_y_1[2:0]), //i
    .port_x1_2 (l21_xor_port_y_2[2:0]), //i
    .port_x1_3 (l21_xor_port_y_3[2:0]), //i
    .port_y_0  (s3_port_y_0[2:0]     ), //o
    .port_y_1  (s3_port_y_1[2:0]     ), //o
    .port_y_2  (s3_port_y_2[2:0]     ), //o
    .port_y_3  (s3_port_y_3[2:0]     )  //o
  );
  Addition_TI s4 (
    .port_x0_0 (l20_xor_port_y_0[2:0]), //i
    .port_x0_1 (l20_xor_port_y_1[2:0]), //i
    .port_x0_2 (l20_xor_port_y_2[2:0]), //i
    .port_x0_3 (l20_xor_port_y_3[2:0]), //i
    .port_x1_0 (l22_xor_port_y_0[2:0]), //i
    .port_x1_1 (l22_xor_port_y_1[2:0]), //i
    .port_x1_2 (l22_xor_port_y_2[2:0]), //i
    .port_x1_3 (l22_xor_port_y_3[2:0]), //i
    .port_y_0  (s4_port_y_0[2:0]     ), //o
    .port_y_1  (s4_port_y_1[2:0]     ), //o
    .port_y_2  (s4_port_y_2[2:0]     ), //o
    .port_y_3  (s4_port_y_3[2:0]     )  //o
  );
  Addition_TI s5 (
    .port_x0_0 (l25_xor_port_y_0[2:0]), //i
    .port_x0_1 (l25_xor_port_y_1[2:0]), //i
    .port_x0_2 (l25_xor_port_y_2[2:0]), //i
    .port_x0_3 (l25_xor_port_y_3[2:0]), //i
    .port_x1_0 (l29_xor_port_y_0[2:0]), //i
    .port_x1_1 (l29_xor_port_y_1[2:0]), //i
    .port_x1_2 (l29_xor_port_y_2[2:0]), //i
    .port_x1_3 (l29_xor_port_y_3[2:0]), //i
    .port_y_0  (s5_port_y_0[2:0]     ), //o
    .port_y_1  (s5_port_y_1[2:0]     ), //o
    .port_y_2  (s5_port_y_2[2:0]     ), //o
    .port_y_3  (s5_port_y_3[2:0]     )  //o
  );
  Addition_Inv_TI s6 (
    .port_x0_0 (l13_xor_port_y_0[2:0]), //i
    .port_x0_1 (l13_xor_port_y_1[2:0]), //i
    .port_x0_2 (l13_xor_port_y_2[2:0]), //i
    .port_x0_3 (l13_xor_port_y_3[2:0]), //i
    .port_x1_0 (l27_xor_port_y_0[2:0]), //i
    .port_x1_1 (l27_xor_port_y_1[2:0]), //i
    .port_x1_2 (l27_xor_port_y_2[2:0]), //i
    .port_x1_3 (l27_xor_port_y_3[2:0]), //i
    .port_y_0  (s6_port_y_0[2:0]     ), //o
    .port_y_1  (s6_port_y_1[2:0]     ), //o
    .port_y_2  (s6_port_y_2[2:0]     ), //o
    .port_y_3  (s6_port_y_3[2:0]     )  //o
  );
  Addition_Inv_TI s7 (
    .port_x0_0 (l6_xor_port_y_0[2:0] ), //i
    .port_x0_1 (l6_xor_port_y_1[2:0] ), //i
    .port_x0_2 (l6_xor_port_y_2[2:0] ), //i
    .port_x0_3 (l6_xor_port_y_3[2:0] ), //i
    .port_x1_0 (l23_xor_port_y_0[2:0]), //i
    .port_x1_1 (l23_xor_port_y_1[2:0]), //i
    .port_x1_2 (l23_xor_port_y_2[2:0]), //i
    .port_x1_3 (l23_xor_port_y_3[2:0]), //i
    .port_y_0  (s7_port_y_0[2:0]     ), //o
    .port_y_1  (s7_port_y_1[2:0]     ), //o
    .port_y_2  (s7_port_y_2[2:0]     ), //o
    .port_y_3  (s7_port_y_3[2:0]     )  //o
  );
  assign in_x0_0 = port_i_0_7;
  assign in_x1_0 = port_i_0_6;
  assign in_x2_0 = port_i_0_5;
  assign in_x3_0 = port_i_0_4;
  assign in_x4_0 = port_i_0_3;
  assign in_x5_0 = port_i_0_2;
  assign in_x6_0 = port_i_0_1;
  assign in_x7_0 = port_i_0_0;
  assign in_x0_1 = port_i_1_7;
  assign in_x1_1 = port_i_1_6;
  assign in_x2_1 = port_i_1_5;
  assign in_x3_1 = port_i_1_4;
  assign in_x4_1 = port_i_1_3;
  assign in_x5_1 = port_i_1_2;
  assign in_x6_1 = port_i_1_1;
  assign in_x7_1 = port_i_1_0;
  assign in_x0_2 = port_i_2_7;
  assign in_x1_2 = port_i_2_6;
  assign in_x2_2 = port_i_2_5;
  assign in_x3_2 = port_i_2_4;
  assign in_x4_2 = port_i_2_3;
  assign in_x5_2 = port_i_2_2;
  assign in_x6_2 = port_i_2_1;
  assign in_x7_2 = port_i_2_0;
  assign in_x0_3 = port_i_3_7;
  assign in_x1_3 = port_i_3_6;
  assign in_x2_3 = port_i_3_5;
  assign in_x3_3 = port_i_3_4;
  assign in_x4_3 = port_i_3_3;
  assign in_x5_3 = port_i_3_2;
  assign in_x6_3 = port_i_3_1;
  assign in_x7_3 = port_i_3_0;
  assign out_y0_0 = s0_port_y_0;
  assign out_y0_1 = s0_port_y_1;
  assign out_y0_2 = s0_port_y_2;
  assign out_y0_3 = s0_port_y_3;
  assign out_y1_0 = s1_port_y_0;
  assign out_y1_1 = s1_port_y_1;
  assign out_y1_2 = s1_port_y_2;
  assign out_y1_3 = s1_port_y_3;
  assign out_y2_0 = s2_port_y_0;
  assign out_y2_1 = s2_port_y_1;
  assign out_y2_2 = s2_port_y_2;
  assign out_y2_3 = s2_port_y_3;
  assign out_y3_0 = s3_port_y_0;
  assign out_y3_1 = s3_port_y_1;
  assign out_y3_2 = s3_port_y_2;
  assign out_y3_3 = s3_port_y_3;
  assign out_y4_0 = s4_port_y_0;
  assign out_y4_1 = s4_port_y_1;
  assign out_y4_2 = s4_port_y_2;
  assign out_y4_3 = s4_port_y_3;
  assign out_y5_0 = s5_port_y_0;
  assign out_y5_1 = s5_port_y_1;
  assign out_y5_2 = s5_port_y_2;
  assign out_y5_3 = s5_port_y_3;
  assign out_y6_0 = s6_port_y_0;
  assign out_y6_1 = s6_port_y_1;
  assign out_y6_2 = s6_port_y_2;
  assign out_y6_3 = s6_port_y_3;
  assign out_y7_0 = s7_port_y_0;
  assign out_y7_1 = s7_port_y_1;
  assign out_y7_2 = s7_port_y_2;
  assign out_y7_3 = s7_port_y_3;
  assign port_o_0_7 = out_y0_0;
  assign port_o_0_6 = out_y1_0;
  assign port_o_0_5 = out_y2_0;
  assign port_o_0_4 = out_y3_0;
  assign port_o_0_3 = out_y4_0;
  assign port_o_0_2 = out_y5_0;
  assign port_o_0_1 = out_y6_0;
  assign port_o_0_0 = out_y7_0;
  assign port_o_1_7 = out_y0_1;
  assign port_o_1_6 = out_y1_1;
  assign port_o_1_5 = out_y2_1;
  assign port_o_1_4 = out_y3_1;
  assign port_o_1_3 = out_y4_1;
  assign port_o_1_2 = out_y5_1;
  assign port_o_1_1 = out_y6_1;
  assign port_o_1_0 = out_y7_1;
  assign port_o_2_7 = out_y0_2;
  assign port_o_2_6 = out_y1_2;
  assign port_o_2_5 = out_y2_2;
  assign port_o_2_4 = out_y3_2;
  assign port_o_2_3 = out_y4_2;
  assign port_o_2_2 = out_y5_2;
  assign port_o_2_1 = out_y6_2;
  assign port_o_2_0 = out_y7_2;
  assign port_o_3_7 = out_y0_3;
  assign port_o_3_6 = out_y1_3;
  assign port_o_3_5 = out_y2_3;
  assign port_o_3_4 = out_y3_3;
  assign port_o_3_3 = out_y4_3;
  assign port_o_3_2 = out_y5_3;
  assign port_o_3_1 = out_y6_3;
  assign port_o_3_0 = out_y7_3;
  always @(posedge clk) begin
    x7_0 <= in_x7_0;
    x7_1 <= in_x7_1;
    x7_2 <= in_x7_2;
    x7_3 <= in_x7_3;
    t1_0 <= t1_xor_port_y_0;
    t1_1 <= t1_xor_port_y_1;
    t1_2 <= t1_xor_port_y_2;
    t1_3 <= t1_xor_port_y_3;
    t2_0 <= t2_xor_port_y_0;
    t2_1 <= t2_xor_port_y_1;
    t2_2 <= t2_xor_port_y_2;
    t2_3 <= t2_xor_port_y_3;
    t3_0 <= t3_xor_port_y_0;
    t3_1 <= t3_xor_port_y_1;
    t3_2 <= t3_xor_port_y_2;
    t3_3 <= t3_xor_port_y_3;
    t4_0 <= t4_xor_port_y_0;
    t4_1 <= t4_xor_port_y_1;
    t4_2 <= t4_xor_port_y_2;
    t4_3 <= t4_xor_port_y_3;
    t6_0 <= t6_xor_port_y_0;
    t6_1 <= t6_xor_port_y_1;
    t6_2 <= t6_xor_port_y_2;
    t6_3 <= t6_xor_port_y_3;
    t7_0 <= t7_xor_port_y_0;
    t7_1 <= t7_xor_port_y_1;
    t7_2 <= t7_xor_port_y_2;
    t7_3 <= t7_xor_port_y_3;
    t8_0 <= t8_xor_port_y_0;
    t8_1 <= t8_xor_port_y_1;
    t8_2 <= t8_xor_port_y_2;
    t8_3 <= t8_xor_port_y_3;
    t9_0 <= t9_xor_port_y_0;
    t9_1 <= t9_xor_port_y_1;
    t9_2 <= t9_xor_port_y_2;
    t9_3 <= t9_xor_port_y_3;
    t10_0 <= t10_xor_port_y_0;
    t10_1 <= t10_xor_port_y_1;
    t10_2 <= t10_xor_port_y_2;
    t10_3 <= t10_xor_port_y_3;
    t13_0 <= t13_xor_port_y_0;
    t13_1 <= t13_xor_port_y_1;
    t13_2 <= t13_xor_port_y_2;
    t13_3 <= t13_xor_port_y_3;
    t14_0 <= t14_xor_port_y_0;
    t14_1 <= t14_xor_port_y_1;
    t14_2 <= t14_xor_port_y_2;
    t14_3 <= t14_xor_port_y_3;
    t15_0 <= t15_xor_port_y_0;
    t15_1 <= t15_xor_port_y_1;
    t15_2 <= t15_xor_port_y_2;
    t15_3 <= t15_xor_port_y_3;
    t16_0 <= t16_xor_port_y_0;
    t16_1 <= t16_xor_port_y_1;
    t16_2 <= t16_xor_port_y_2;
    t16_3 <= t16_xor_port_y_3;
    t17_0 <= t17_xor_port_y_0;
    t17_1 <= t17_xor_port_y_1;
    t17_2 <= t17_xor_port_y_2;
    t17_3 <= t17_xor_port_y_3;
    t19_0 <= t19_xor_port_y_0;
    t19_1 <= t19_xor_port_y_1;
    t19_2 <= t19_xor_port_y_2;
    t19_3 <= t19_xor_port_y_3;
    t20_0 <= t20_xor_port_y_0;
    t20_1 <= t20_xor_port_y_1;
    t20_2 <= t20_xor_port_y_2;
    t20_3 <= t20_xor_port_y_3;
    t22_0 <= t22_xor_port_y_0;
    t22_1 <= t22_xor_port_y_1;
    t22_2 <= t22_xor_port_y_2;
    t22_3 <= t22_xor_port_y_3;
    t23_0 <= t23_xor_port_y_0;
    t23_1 <= t23_xor_port_y_1;
    t23_2 <= t23_xor_port_y_2;
    t23_3 <= t23_xor_port_y_3;
    t24_0 <= t24_xor_port_y_0;
    t24_1 <= t24_xor_port_y_1;
    t24_2 <= t24_xor_port_y_2;
    t24_3 <= t24_xor_port_y_3;
    t25_0 <= t25_xor_port_y_0;
    t25_1 <= t25_xor_port_y_1;
    t25_2 <= t25_xor_port_y_2;
    t25_3 <= t25_xor_port_y_3;
    t26_0 <= t26_xor_port_y_0;
    t26_1 <= t26_xor_port_y_1;
    t26_2 <= t26_xor_port_y_2;
    t26_3 <= t26_xor_port_y_3;
    t27_0 <= t27_xor_port_y_0;
    t27_1 <= t27_xor_port_y_1;
    t27_2 <= t27_xor_port_y_2;
    t27_3 <= t27_xor_port_y_3;
    x7_1_0 <= x7_0;
    x7_1_1 <= x7_1;
    x7_1_2 <= x7_2;
    x7_1_3 <= x7_3;
    t1_1_0 <= t1_0;
    t1_1_1 <= t1_1;
    t1_1_2 <= t1_2;
    t1_1_3 <= t1_3;
    t2_1_0 <= t2_0;
    t2_1_1 <= t2_1;
    t2_1_2 <= t2_2;
    t2_1_3 <= t2_3;
    t3_1_0 <= t3_0;
    t3_1_1 <= t3_1;
    t3_1_2 <= t3_2;
    t3_1_3 <= t3_3;
    t4_1_0 <= t4_0;
    t4_1_1 <= t4_1;
    t4_1_2 <= t4_2;
    t4_1_3 <= t4_3;
    t6_1_0 <= t6_0;
    t6_1_1 <= t6_1;
    t6_1_2 <= t6_2;
    t6_1_3 <= t6_3;
    t8_1_0 <= t8_0;
    t8_1_1 <= t8_1;
    t8_1_2 <= t8_2;
    t8_1_3 <= t8_3;
    t9_1_0 <= t9_0;
    t9_1_1 <= t9_1;
    t9_1_2 <= t9_2;
    t9_1_3 <= t9_3;
    t10_1_0 <= t10_0;
    t10_1_1 <= t10_1;
    t10_1_2 <= t10_2;
    t10_1_3 <= t10_3;
    t13_1_0 <= t13_0;
    t13_1_1 <= t13_1;
    t13_1_2 <= t13_2;
    t13_1_3 <= t13_3;
    t15_1_0 <= t15_0;
    t15_1_1 <= t15_1;
    t15_1_2 <= t15_2;
    t15_1_3 <= t15_3;
    t16_1_0 <= t16_0;
    t16_1_1 <= t16_1;
    t16_1_2 <= t16_2;
    t16_1_3 <= t16_3;
    t17_1_0 <= t17_0;
    t17_1_1 <= t17_1;
    t17_1_2 <= t17_2;
    t17_1_3 <= t17_3;
    t19_1_0 <= t19_0;
    t19_1_1 <= t19_1;
    t19_1_2 <= t19_2;
    t19_1_3 <= t19_3;
    t20_1_0 <= t20_0;
    t20_1_1 <= t20_1;
    t20_1_2 <= t20_2;
    t20_1_3 <= t20_3;
    t22_1_0 <= t22_0;
    t22_1_1 <= t22_1;
    t22_1_2 <= t22_2;
    t22_1_3 <= t22_3;
    t23_1_0 <= t23_0;
    t23_1_1 <= t23_1;
    t23_1_2 <= t23_2;
    t23_1_3 <= t23_3;
    t27_1_0 <= t27_0;
    t27_1_1 <= t27_1;
    t27_1_2 <= t27_2;
    t27_1_3 <= t27_3;
    m21_0 <= m21_xor_port_y_0;
    m21_1 <= m21_xor_port_y_1;
    m21_2 <= m21_xor_port_y_2;
    m21_3 <= m21_xor_port_y_3;
    m23_0 <= m23_xor_port_y_0;
    m23_1 <= m23_xor_port_y_1;
    m23_2 <= m23_xor_port_y_2;
    m23_3 <= m23_xor_port_y_3;
    m24_0 <= m24_xor_port_y_0;
    m24_1 <= m24_xor_port_y_1;
    m24_2 <= m24_xor_port_y_2;
    m24_3 <= m24_xor_port_y_3;
    m27_0 <= m27_xor_port_y_0;
    m27_1 <= m27_xor_port_y_1;
    m27_2 <= m27_xor_port_y_2;
    m27_3 <= m27_xor_port_y_3;
    x7_2_0 <= x7_1_0;
    x7_2_1 <= x7_1_1;
    x7_2_2 <= x7_1_2;
    x7_2_3 <= x7_1_3;
    t1_2_0 <= t1_1_0;
    t1_2_1 <= t1_1_1;
    t1_2_2 <= t1_1_2;
    t1_2_3 <= t1_1_3;
    t2_2_0 <= t2_1_0;
    t2_2_1 <= t2_1_1;
    t2_2_2 <= t2_1_2;
    t2_2_3 <= t2_1_3;
    t3_2_0 <= t3_1_0;
    t3_2_1 <= t3_1_1;
    t3_2_2 <= t3_1_2;
    t3_2_3 <= t3_1_3;
    t4_2_0 <= t4_1_0;
    t4_2_1 <= t4_1_1;
    t4_2_2 <= t4_1_2;
    t4_2_3 <= t4_1_3;
    t6_2_0 <= t6_1_0;
    t6_2_1 <= t6_1_1;
    t6_2_2 <= t6_1_2;
    t6_2_3 <= t6_1_3;
    t8_2_0 <= t8_1_0;
    t8_2_1 <= t8_1_1;
    t8_2_2 <= t8_1_2;
    t8_2_3 <= t8_1_3;
    t9_2_0 <= t9_1_0;
    t9_2_1 <= t9_1_1;
    t9_2_2 <= t9_1_2;
    t9_2_3 <= t9_1_3;
    t10_2_0 <= t10_1_0;
    t10_2_1 <= t10_1_1;
    t10_2_2 <= t10_1_2;
    t10_2_3 <= t10_1_3;
    t13_2_0 <= t13_1_0;
    t13_2_1 <= t13_1_1;
    t13_2_2 <= t13_1_2;
    t13_2_3 <= t13_1_3;
    t15_2_0 <= t15_1_0;
    t15_2_1 <= t15_1_1;
    t15_2_2 <= t15_1_2;
    t15_2_3 <= t15_1_3;
    t16_2_0 <= t16_1_0;
    t16_2_1 <= t16_1_1;
    t16_2_2 <= t16_1_2;
    t16_2_3 <= t16_1_3;
    t17_2_0 <= t17_1_0;
    t17_2_1 <= t17_1_1;
    t17_2_2 <= t17_1_2;
    t17_2_3 <= t17_1_3;
    t19_2_0 <= t19_1_0;
    t19_2_1 <= t19_1_1;
    t19_2_2 <= t19_1_2;
    t19_2_3 <= t19_1_3;
    t20_2_0 <= t20_1_0;
    t20_2_1 <= t20_1_1;
    t20_2_2 <= t20_1_2;
    t20_2_3 <= t20_1_3;
    t22_2_0 <= t22_1_0;
    t22_2_1 <= t22_1_1;
    t22_2_2 <= t22_1_2;
    t22_2_3 <= t22_1_3;
    t23_2_0 <= t23_1_0;
    t23_2_1 <= t23_1_1;
    t23_2_2 <= t23_1_2;
    t23_2_3 <= t23_1_3;
    t27_2_0 <= t27_1_0;
    t27_2_1 <= t27_1_1;
    t27_2_2 <= t27_1_2;
    t27_2_3 <= t27_1_3;
    m21_1_0 <= m21_0;
    m21_1_1 <= m21_1;
    m21_1_2 <= m21_2;
    m21_1_3 <= m21_3;
    m23_1_0 <= m23_0;
    m23_1_1 <= m23_1;
    m23_1_2 <= m23_2;
    m23_1_3 <= m23_3;
    m33_0 <= m33_xor_port_y_0;
    m33_1 <= m33_xor_port_y_1;
    m33_2 <= m33_xor_port_y_2;
    m33_3 <= m33_xor_port_y_3;
    m36_0 <= m36_xor_port_y_0;
    m36_1 <= m36_xor_port_y_1;
    m36_2 <= m36_xor_port_y_2;
    m36_3 <= m36_xor_port_y_3;
  end


endmodule

//Addition_Inv_TI replaced by Addition_Inv_TI

//Addition_Inv_TI replaced by Addition_Inv_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_TI replaced by Addition_TI

//Addition_Inv_TI replaced by Addition_Inv_TI

module Addition_Inv_TI (
  input      [2:0]    port_x0_0,
  input      [2:0]    port_x0_1,
  input      [2:0]    port_x0_2,
  input      [2:0]    port_x0_3,
  input      [2:0]    port_x1_0,
  input      [2:0]    port_x1_1,
  input      [2:0]    port_x1_2,
  input      [2:0]    port_x1_3,
  output reg [2:0]    port_y_0,
  output reg [2:0]    port_y_1,
  output reg [2:0]    port_y_2,
  output reg [2:0]    port_y_3
);


  always @(*) begin
    port_y_0[0] = (! (port_x0_0[0] ^ port_x1_0[0]));
    port_y_0[1] = (! (port_x0_0[1] ^ port_x1_0[1]));
    port_y_0[2] = (! (port_x0_0[2] ^ port_x1_0[2]));
  end

  always @(*) begin
    port_y_1[0] = (port_x0_1[0] ^ port_x1_1[0]);
    port_y_1[1] = (port_x0_1[1] ^ port_x1_1[1]);
    port_y_1[2] = (port_x0_1[2] ^ port_x1_1[2]);
  end

  always @(*) begin
    port_y_2[0] = (port_x0_2[0] ^ port_x1_2[0]);
    port_y_2[1] = (port_x0_2[1] ^ port_x1_2[1]);
    port_y_2[2] = (port_x0_2[2] ^ port_x1_2[2]);
  end

  always @(*) begin
    port_y_3[0] = (port_x0_3[0] ^ port_x1_3[0]);
    port_y_3[1] = (port_x0_3[1] ^ port_x1_3[1]);
    port_y_3[2] = (port_x0_3[2] ^ port_x1_3[2]);
  end


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

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

//Multiplication_TI_noReg replaced by Multiplication_TI_noReg

module Multiplication_TI_noReg (
  input      [2:0]    port_x0_0,
  input      [2:0]    port_x0_1,
  input      [2:0]    port_x0_2,
  input      [2:0]    port_x0_3,
  input      [2:0]    port_x1_0,
  input      [2:0]    port_x1_1,
  input      [2:0]    port_x1_2,
  input      [2:0]    port_x1_3,
  output     [2:0]    port_y_0,
  output     [2:0]    port_y_1,
  output     [2:0]    port_y_2,
  output     [2:0]    port_y_3
);

  reg        [2:0]    _zz_port_y_0;
  reg        [2:0]    _zz_port_y_1;
  reg        [2:0]    _zz_port_y_2;
  reg        [2:0]    _zz_port_y_3;

  always @(*) begin
    _zz_port_y_0[0] = (((((port_x0_1[0] ^ port_x0_2[0]) ^ port_x0_3[0]) && (port_x1_1[0] ^ port_x1_2[0])) ^ port_x1_3[0]) ^ port_x1_2[0]);
    _zz_port_y_0[1] = (((((port_x0_1[1] ^ port_x0_2[1]) ^ port_x0_3[1]) && (port_x1_1[1] ^ port_x1_2[1])) ^ port_x1_3[1]) ^ port_x1_2[1]);
    _zz_port_y_0[2] = (((((port_x0_1[2] ^ port_x0_2[2]) ^ port_x0_3[2]) && (port_x1_1[2] ^ port_x1_2[2])) ^ port_x1_3[2]) ^ port_x1_2[2]);
  end

  always @(*) begin
    _zz_port_y_1[0] = ((((port_x0_0[0] ^ port_x0_2[0]) && (port_x1_0[0] ^ port_x1_3[0])) ^ (port_x0_0[0] && port_x1_2[0])) ^ port_x0_3[0]);
    _zz_port_y_1[1] = ((((port_x0_0[1] ^ port_x0_2[1]) && (port_x1_0[1] ^ port_x1_3[1])) ^ (port_x0_0[1] && port_x1_2[1])) ^ port_x0_3[1]);
    _zz_port_y_1[2] = ((((port_x0_0[2] ^ port_x0_2[2]) && (port_x1_0[2] ^ port_x1_3[2])) ^ (port_x0_0[2] && port_x1_2[2])) ^ port_x0_3[2]);
  end

  always @(*) begin
    _zz_port_y_2[0] = ((((port_x0_1[0] ^ port_x0_3[0]) && (port_x1_0[0] ^ port_x1_3[0])) ^ port_x0_3[0]) ^ port_x1_3[0]);
    _zz_port_y_2[1] = ((((port_x0_1[1] ^ port_x0_3[1]) && (port_x1_0[1] ^ port_x1_3[1])) ^ port_x0_3[1]) ^ port_x1_3[1]);
    _zz_port_y_2[2] = ((((port_x0_1[2] ^ port_x0_3[2]) && (port_x1_0[2] ^ port_x1_3[2])) ^ port_x0_3[2]) ^ port_x1_3[2]);
  end

  always @(*) begin
    _zz_port_y_3[0] = ((port_x0_0[0] && port_x1_1[0]) ^ port_x1_2[0]);
    _zz_port_y_3[1] = ((port_x0_0[1] && port_x1_1[1]) ^ port_x1_2[1]);
    _zz_port_y_3[2] = ((port_x0_0[2] && port_x1_1[2]) ^ port_x1_2[2]);
  end

  assign port_y_0 = _zz_port_y_0;
  assign port_y_1 = _zz_port_y_1;
  assign port_y_2 = _zz_port_y_2;
  assign port_y_3 = _zz_port_y_3;

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
  input      [2:0]    port_x0_0,
  input      [2:0]    port_x0_1,
  input      [2:0]    port_x0_2,
  input      [2:0]    port_x0_3,
  input      [2:0]    port_x1_0,
  input      [2:0]    port_x1_1,
  input      [2:0]    port_x1_2,
  input      [2:0]    port_x1_3,
  output     [2:0]    port_y_0,
  output     [2:0]    port_y_1,
  output     [2:0]    port_y_2,
  output     [2:0]    port_y_3,
  input               clk,
  input               reset
);

  wire                majority_192_port_o;
  wire                majority_193_port_o;
  wire                majority_194_port_o;
  wire                majority_195_port_o;
  wire                majority_196_port_o;
  wire                majority_197_port_o;
  wire                majority_198_port_o;
  wire                majority_199_port_o;
  wire                majority_200_port_o;
  wire                majority_201_port_o;
  wire                majority_202_port_o;
  wire                majority_203_port_o;
  reg        [2:0]    _zz_port_i;
  reg        [2:0]    _zz_port_i_1;
  reg        [2:0]    _zz_port_i_2;
  reg        [2:0]    _zz_port_i_3;
  reg        [2:0]    _zz_port_y_0;
  reg        [2:0]    _zz_port_y_1;
  reg        [2:0]    _zz_port_y_2;
  reg        [2:0]    _zz_port_y_3;

  Majority majority_192 (
    .port_i (_zz_port_i[2:0]    ), //i
    .port_o (majority_192_port_o)  //o
  );
  Majority majority_193 (
    .port_i (_zz_port_i_1[2:0]  ), //i
    .port_o (majority_193_port_o)  //o
  );
  Majority majority_194 (
    .port_i (_zz_port_i_2[2:0]  ), //i
    .port_o (majority_194_port_o)  //o
  );
  Majority majority_195 (
    .port_i (_zz_port_i_3[2:0]  ), //i
    .port_o (majority_195_port_o)  //o
  );
  Majority majority_196 (
    .port_i (_zz_port_i[2:0]    ), //i
    .port_o (majority_196_port_o)  //o
  );
  Majority majority_197 (
    .port_i (_zz_port_i_1[2:0]  ), //i
    .port_o (majority_197_port_o)  //o
  );
  Majority majority_198 (
    .port_i (_zz_port_i_2[2:0]  ), //i
    .port_o (majority_198_port_o)  //o
  );
  Majority majority_199 (
    .port_i (_zz_port_i_3[2:0]  ), //i
    .port_o (majority_199_port_o)  //o
  );
  Majority majority_200 (
    .port_i (_zz_port_i[2:0]    ), //i
    .port_o (majority_200_port_o)  //o
  );
  Majority majority_201 (
    .port_i (_zz_port_i_1[2:0]  ), //i
    .port_o (majority_201_port_o)  //o
  );
  Majority majority_202 (
    .port_i (_zz_port_i_2[2:0]  ), //i
    .port_o (majority_202_port_o)  //o
  );
  Majority majority_203 (
    .port_i (_zz_port_i_3[2:0]  ), //i
    .port_o (majority_203_port_o)  //o
  );
  always @(*) begin
    _zz_port_i[0] = (((((port_x0_1[0] ^ port_x0_2[0]) ^ port_x0_3[0]) && (port_x1_1[0] ^ port_x1_2[0])) ^ port_x1_3[0]) ^ port_x1_2[0]);
    _zz_port_i[1] = (((((port_x0_1[1] ^ port_x0_2[1]) ^ port_x0_3[1]) && (port_x1_1[1] ^ port_x1_2[1])) ^ port_x1_3[1]) ^ port_x1_2[1]);
    _zz_port_i[2] = (((((port_x0_1[2] ^ port_x0_2[2]) ^ port_x0_3[2]) && (port_x1_1[2] ^ port_x1_2[2])) ^ port_x1_3[2]) ^ port_x1_2[2]);
  end

  always @(*) begin
    _zz_port_i_1[0] = ((((port_x0_0[0] ^ port_x0_2[0]) && (port_x1_0[0] ^ port_x1_3[0])) ^ (port_x0_0[0] && port_x1_2[0])) ^ port_x0_3[0]);
    _zz_port_i_1[1] = ((((port_x0_0[1] ^ port_x0_2[1]) && (port_x1_0[1] ^ port_x1_3[1])) ^ (port_x0_0[1] && port_x1_2[1])) ^ port_x0_3[1]);
    _zz_port_i_1[2] = ((((port_x0_0[2] ^ port_x0_2[2]) && (port_x1_0[2] ^ port_x1_3[2])) ^ (port_x0_0[2] && port_x1_2[2])) ^ port_x0_3[2]);
  end

  always @(*) begin
    _zz_port_i_2[0] = ((((port_x0_1[0] ^ port_x0_3[0]) && (port_x1_0[0] ^ port_x1_3[0])) ^ port_x0_3[0]) ^ port_x1_3[0]);
    _zz_port_i_2[1] = ((((port_x0_1[1] ^ port_x0_3[1]) && (port_x1_0[1] ^ port_x1_3[1])) ^ port_x0_3[1]) ^ port_x1_3[1]);
    _zz_port_i_2[2] = ((((port_x0_1[2] ^ port_x0_3[2]) && (port_x1_0[2] ^ port_x1_3[2])) ^ port_x0_3[2]) ^ port_x1_3[2]);
  end

  always @(*) begin
    _zz_port_i_3[0] = ((port_x0_0[0] && port_x1_1[0]) ^ port_x1_2[0]);
    _zz_port_i_3[1] = ((port_x0_0[1] && port_x1_1[1]) ^ port_x1_2[1]);
    _zz_port_i_3[2] = ((port_x0_0[2] && port_x1_1[2]) ^ port_x1_2[2]);
  end

  assign port_y_0 = _zz_port_y_0;
  assign port_y_1 = _zz_port_y_1;
  assign port_y_2 = _zz_port_y_2;
  assign port_y_3 = _zz_port_y_3;
  always @(posedge clk) begin
    _zz_port_y_0[0] <= majority_192_port_o;
    _zz_port_y_1[0] <= majority_193_port_o;
    _zz_port_y_2[0] <= majority_194_port_o;
    _zz_port_y_3[0] <= majority_195_port_o;
    _zz_port_y_0[1] <= majority_196_port_o;
    _zz_port_y_1[1] <= majority_197_port_o;
    _zz_port_y_2[1] <= majority_198_port_o;
    _zz_port_y_3[1] <= majority_199_port_o;
    _zz_port_y_0[2] <= majority_200_port_o;
    _zz_port_y_1[2] <= majority_201_port_o;
    _zz_port_y_2[2] <= majority_202_port_o;
    _zz_port_y_3[2] <= majority_203_port_o;
  end


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
  input      [2:0]    port_x0_0,
  input      [2:0]    port_x0_1,
  input      [2:0]    port_x0_2,
  input      [2:0]    port_x0_3,
  input      [2:0]    port_x1_0,
  input      [2:0]    port_x1_1,
  input      [2:0]    port_x1_2,
  input      [2:0]    port_x1_3,
  output reg [2:0]    port_y_0,
  output reg [2:0]    port_y_1,
  output reg [2:0]    port_y_2,
  output reg [2:0]    port_y_3
);


  always @(*) begin
    port_y_0[0] = (port_x0_0[0] ^ port_x1_0[0]);
    port_y_0[1] = (port_x0_0[1] ^ port_x1_0[1]);
    port_y_0[2] = (port_x0_0[2] ^ port_x1_0[2]);
  end

  always @(*) begin
    port_y_1[0] = (port_x0_1[0] ^ port_x1_1[0]);
    port_y_1[1] = (port_x0_1[1] ^ port_x1_1[1]);
    port_y_1[2] = (port_x0_1[2] ^ port_x1_1[2]);
  end

  always @(*) begin
    port_y_2[0] = (port_x0_2[0] ^ port_x1_2[0]);
    port_y_2[1] = (port_x0_2[1] ^ port_x1_2[1]);
    port_y_2[2] = (port_x0_2[2] ^ port_x1_2[2]);
  end

  always @(*) begin
    port_y_3[0] = (port_x0_3[0] ^ port_x1_3[0]);
    port_y_3[1] = (port_x0_3[1] ^ port_x1_3[1]);
    port_y_3[2] = (port_x0_3[2] ^ port_x1_3[2]);
  end


endmodule

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

module Majority (
  input      [2:0]    port_i,
  output              port_o
);

  wire       [2:0]    _zz_port_o;
  wire                _zz_port_o_1;
  wire                _zz_port_o_2;
  wire                _zz_port_o_3;

  assign _zz_port_o = port_i;
  assign _zz_port_o_1 = _zz_port_o[0];
  assign _zz_port_o_2 = _zz_port_o[1];
  assign _zz_port_o_3 = _zz_port_o[2];
  assign port_o = (((1'b0 || ((1'b1 && _zz_port_o_1) && _zz_port_o_2)) || ((1'b1 && _zz_port_o_1) && _zz_port_o_3)) || ((1'b1 && _zz_port_o_2) && _zz_port_o_3));

endmodule
