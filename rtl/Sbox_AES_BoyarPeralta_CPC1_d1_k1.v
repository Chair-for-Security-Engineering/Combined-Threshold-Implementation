// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : Sbox_AES_BoyarPeralta_Gadgets
// Git hash  : db593c14fe8e83f0a4a5d43cf13325e631d65148

`timescale 1ns/1ps

module Sbox_AES_BoyarPeralta_CPC1_d1_k1 (
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
  input               port_r_0,
  input               port_r_1,
  input               port_r_2,
  input               port_r_3,
  input               port_r_4,
  input               port_r_5,
  input               port_r_6,
  input               port_r_7,
  input               port_r_8,
  input               port_r_9,
  input               port_r_10,
  input               port_r_11,
  input               port_r_12,
  input               port_r_13,
  input               port_r_14,
  input               port_r_15,
  input               port_r_16,
  input               port_r_17,
  input               port_r_18,
  input               port_r_19,
  input               port_r_20,
  input               port_r_21,
  input               port_r_22,
  input               port_r_23,
  input               port_r_24,
  input               port_r_25,
  input               port_r_26,
  input               port_r_27,
  input               port_r_28,
  input               port_r_29,
  input               port_r_30,
  input               port_r_31,
  input               port_r_32,
  input               port_r_33,
  input               port_r_34,
  input               port_r_35,
  input               port_r_36,
  input               port_r_37,
  input               port_r_38,
  input               port_r_39,
  input               port_r_40,
  input               port_r_41,
  input               port_r_42,
  input               port_r_43,
  input               port_r_44,
  input               port_r_45,
  input               port_r_46,
  input               port_r_47,
  input               port_r_48,
  input               port_r_49,
  input               port_r_50,
  input               port_r_51,
  input               port_r_52,
  input               port_r_53,
  input               port_r_54,
  input               port_r_55,
  input               port_r_56,
  input               port_r_57,
  input               port_r_58,
  input               port_r_59,
  input               port_r_60,
  input               port_r_61,
  input               port_r_62,
  input               port_r_63,
  input               port_r_64,
  input               port_r_65,
  input               port_r_66,
  input               port_r_67,
  input               port_r_68,
  input               port_r_69,
  input               port_r_70,
  input               port_r_71,
  input               port_r_72,
  input               port_r_73,
  input               port_r_74,
  input               port_r_75,
  input               port_r_76,
  input               port_r_77,
  input               port_r_78,
  input               port_r_79,
  input               port_r_80,
  input               port_r_81,
  input               port_r_82,
  input               port_r_83,
  input               port_r_84,
  input               port_r_85,
  input               port_r_86,
  input               port_r_87,
  input               port_r_88,
  input               port_r_89,
  input               port_r_90,
  input               port_r_91,
  input               port_r_92,
  input               port_r_93,
  input               port_r_94,
  input               port_r_95,
  input               port_r_96,
  input               port_r_97,
  input               port_r_98,
  input               port_r_99,
  input               port_r_100,
  input               port_r_101,
  input               port_r_102,
  input               port_r_103,
  input               port_r_104,
  input               port_r_105,
  input               port_r_106,
  input               port_r_107,
  input               port_r_108,
  input               port_r_109,
  input               port_r_110,
  input               port_r_111,
  input               port_r_112,
  input               port_r_113,
  input               port_r_114,
  input               port_r_115,
  input               port_r_116,
  input               port_r_117,
  input               port_r_118,
  input               port_r_119,
  input               port_r_120,
  input               port_r_121,
  input               port_r_122,
  input               port_r_123,
  input               port_r_124,
  input               port_r_125,
  input               port_r_126,
  input               port_r_127,
  input               port_r_128,
  input               port_r_129,
  input               port_r_130,
  input               port_r_131,
  input               port_r_132,
  input               port_r_133,
  input               port_r_134,
  input               port_r_135,
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
  input               clk,
  input               reset
);

  wire       [2:0]    t1_0_xor_port_z_0;
  wire       [2:0]    t1_0_xor_port_z_1;
  wire       [2:0]    t2_0_xor_port_z_0;
  wire       [2:0]    t2_0_xor_port_z_1;
  wire       [2:0]    t3_0_xor_port_z_0;
  wire       [2:0]    t3_0_xor_port_z_1;
  wire       [2:0]    t4_0_xor_port_z_0;
  wire       [2:0]    t4_0_xor_port_z_1;
  wire       [2:0]    t5_0_xor_port_z_0;
  wire       [2:0]    t5_0_xor_port_z_1;
  wire       [2:0]    t6_0_xor_port_z_0;
  wire       [2:0]    t6_0_xor_port_z_1;
  wire       [2:0]    t7_0_xor_port_z_0;
  wire       [2:0]    t7_0_xor_port_z_1;
  wire       [2:0]    t8_0_xor_port_z_0;
  wire       [2:0]    t8_0_xor_port_z_1;
  wire       [2:0]    t9_0_xor_port_z_0;
  wire       [2:0]    t9_0_xor_port_z_1;
  wire       [2:0]    t10_0_xor_port_z_0;
  wire       [2:0]    t10_0_xor_port_z_1;
  wire       [2:0]    t11_0_xor_port_z_0;
  wire       [2:0]    t11_0_xor_port_z_1;
  wire       [2:0]    t12_0_xor_port_z_0;
  wire       [2:0]    t12_0_xor_port_z_1;
  wire       [2:0]    t13_0_xor_port_z_0;
  wire       [2:0]    t13_0_xor_port_z_1;
  wire       [2:0]    t14_0_xor_port_z_0;
  wire       [2:0]    t14_0_xor_port_z_1;
  wire       [2:0]    t15_0_xor_port_z_0;
  wire       [2:0]    t15_0_xor_port_z_1;
  wire       [2:0]    t16_0_xor_port_z_0;
  wire       [2:0]    t16_0_xor_port_z_1;
  wire       [2:0]    t17_0_xor_port_z_0;
  wire       [2:0]    t17_0_xor_port_z_1;
  wire       [2:0]    t18_0_xor_port_z_0;
  wire       [2:0]    t18_0_xor_port_z_1;
  wire       [2:0]    t19_0_xor_port_z_0;
  wire       [2:0]    t19_0_xor_port_z_1;
  wire       [2:0]    t20_0_xor_port_z_0;
  wire       [2:0]    t20_0_xor_port_z_1;
  wire       [2:0]    t21_0_xor_port_z_0;
  wire       [2:0]    t21_0_xor_port_z_1;
  wire       [2:0]    t22_0_xor_port_z_0;
  wire       [2:0]    t22_0_xor_port_z_1;
  wire       [2:0]    t23_0_xor_port_z_0;
  wire       [2:0]    t23_0_xor_port_z_1;
  wire       [2:0]    t24_0_xor_port_z_0;
  wire       [2:0]    t24_0_xor_port_z_1;
  wire       [2:0]    t25_0_xor_port_z_0;
  wire       [2:0]    t25_0_xor_port_z_1;
  wire       [2:0]    t26_0_xor_port_z_0;
  wire       [2:0]    t26_0_xor_port_z_1;
  wire       [2:0]    t27_0_xor_port_z_0;
  wire       [2:0]    t27_0_xor_port_z_1;
  wire       [2:0]    m1_2_port_z_0;
  wire       [2:0]    m1_2_port_z_1;
  wire       [2:0]    m2_2_port_z_0;
  wire       [2:0]    m2_2_port_z_1;
  wire       [2:0]    m4_2_port_z_0;
  wire       [2:0]    m4_2_port_z_1;
  wire       [2:0]    m6_2_port_z_0;
  wire       [2:0]    m6_2_port_z_1;
  wire       [2:0]    m7_2_port_z_0;
  wire       [2:0]    m7_2_port_z_1;
  wire       [2:0]    m9_2_port_z_0;
  wire       [2:0]    m9_2_port_z_1;
  wire       [2:0]    m11_2_port_z_0;
  wire       [2:0]    m11_2_port_z_1;
  wire       [2:0]    m12_2_port_z_0;
  wire       [2:0]    m12_2_port_z_1;
  wire       [2:0]    m14_2_port_z_0;
  wire       [2:0]    m14_2_port_z_1;
  wire       [2:0]    m3_2_xor_port_z_0;
  wire       [2:0]    m3_2_xor_port_z_1;
  wire       [2:0]    m5_2_xor_port_z_0;
  wire       [2:0]    m5_2_xor_port_z_1;
  wire       [2:0]    m8_2_xor_port_z_0;
  wire       [2:0]    m8_2_xor_port_z_1;
  wire       [2:0]    m10_2_xor_port_z_0;
  wire       [2:0]    m10_2_xor_port_z_1;
  wire       [2:0]    m13_2_xor_port_z_0;
  wire       [2:0]    m13_2_xor_port_z_1;
  wire       [2:0]    m15_2_xor_port_z_0;
  wire       [2:0]    m15_2_xor_port_z_1;
  wire       [2:0]    m16_2_xor_port_z_0;
  wire       [2:0]    m16_2_xor_port_z_1;
  wire       [2:0]    m17_2_xor_port_z_0;
  wire       [2:0]    m17_2_xor_port_z_1;
  wire       [2:0]    m18_2_xor_port_z_0;
  wire       [2:0]    m18_2_xor_port_z_1;
  wire       [2:0]    m19_2_xor_port_z_0;
  wire       [2:0]    m19_2_xor_port_z_1;
  wire       [2:0]    m20_2_xor_port_z_0;
  wire       [2:0]    m20_2_xor_port_z_1;
  wire       [2:0]    m21_2_xor_port_z_0;
  wire       [2:0]    m21_2_xor_port_z_1;
  wire       [2:0]    m22_2_xor_port_z_0;
  wire       [2:0]    m22_2_xor_port_z_1;
  wire       [2:0]    m23_2_xor_port_z_0;
  wire       [2:0]    m23_2_xor_port_z_1;
  wire       [2:0]    m24_2_xor_port_z_0;
  wire       [2:0]    m24_2_xor_port_z_1;
  wire       [2:0]    m27_2_xor_port_z_0;
  wire       [2:0]    m27_2_xor_port_z_1;
  wire       [2:0]    m25_4_port_z_0;
  wire       [2:0]    m25_4_port_z_1;
  wire       [2:0]    m31_4_port_z_0;
  wire       [2:0]    m31_4_port_z_1;
  wire       [2:0]    m34_4_port_z_0;
  wire       [2:0]    m34_4_port_z_1;
  wire       [2:0]    m26_4_xor_port_z_0;
  wire       [2:0]    m26_4_xor_port_z_1;
  wire       [2:0]    m28_4_xor_port_z_0;
  wire       [2:0]    m28_4_xor_port_z_1;
  wire       [2:0]    m33_4_xor_port_z_0;
  wire       [2:0]    m33_4_xor_port_z_1;
  wire       [2:0]    m36_4_xor_port_z_0;
  wire       [2:0]    m36_4_xor_port_z_1;
  wire       [2:0]    m29_5_port_z_0;
  wire       [2:0]    m29_5_port_z_1;
  wire       [2:0]    m30_5_port_z_0;
  wire       [2:0]    m30_5_port_z_1;
  wire       [2:0]    m32_5_port_z_0;
  wire       [2:0]    m32_5_port_z_1;
  wire       [2:0]    m35_5_port_z_0;
  wire       [2:0]    m35_5_port_z_1;
  wire       [2:0]    m37_5_xor_port_z_0;
  wire       [2:0]    m37_5_xor_port_z_1;
  wire       [2:0]    m38_5_xor_port_z_0;
  wire       [2:0]    m38_5_xor_port_z_1;
  wire       [2:0]    m39_5_xor_port_z_0;
  wire       [2:0]    m39_5_xor_port_z_1;
  wire       [2:0]    m40_5_xor_port_z_0;
  wire       [2:0]    m40_5_xor_port_z_1;
  wire       [2:0]    m41_5_xor_port_z_0;
  wire       [2:0]    m41_5_xor_port_z_1;
  wire       [2:0]    m42_5_xor_port_z_0;
  wire       [2:0]    m42_5_xor_port_z_1;
  wire       [2:0]    m43_5_xor_port_z_0;
  wire       [2:0]    m43_5_xor_port_z_1;
  wire       [2:0]    m44_5_xor_port_z_0;
  wire       [2:0]    m44_5_xor_port_z_1;
  wire       [2:0]    m45_5_xor_port_z_0;
  wire       [2:0]    m45_5_xor_port_z_1;
  wire       [2:0]    m46_6_mul_port_z_0;
  wire       [2:0]    m46_6_mul_port_z_1;
  wire       [2:0]    m47_6_mul_port_z_0;
  wire       [2:0]    m47_6_mul_port_z_1;
  wire       [2:0]    m48_6_mul_port_z_0;
  wire       [2:0]    m48_6_mul_port_z_1;
  wire       [2:0]    m49_6_mul_port_z_0;
  wire       [2:0]    m49_6_mul_port_z_1;
  wire       [2:0]    m50_6_mul_port_z_0;
  wire       [2:0]    m50_6_mul_port_z_1;
  wire       [2:0]    m51_6_mul_port_z_0;
  wire       [2:0]    m51_6_mul_port_z_1;
  wire       [2:0]    m52_6_mul_port_z_0;
  wire       [2:0]    m52_6_mul_port_z_1;
  wire       [2:0]    m53_6_mul_port_z_0;
  wire       [2:0]    m53_6_mul_port_z_1;
  wire       [2:0]    m54_6_mul_port_z_0;
  wire       [2:0]    m54_6_mul_port_z_1;
  wire       [2:0]    m55_6_mul_port_z_0;
  wire       [2:0]    m55_6_mul_port_z_1;
  wire       [2:0]    m56_6_mul_port_z_0;
  wire       [2:0]    m56_6_mul_port_z_1;
  wire       [2:0]    m57_6_mul_port_z_0;
  wire       [2:0]    m57_6_mul_port_z_1;
  wire       [2:0]    m58_6_mul_port_z_0;
  wire       [2:0]    m58_6_mul_port_z_1;
  wire       [2:0]    m59_6_mul_port_z_0;
  wire       [2:0]    m59_6_mul_port_z_1;
  wire       [2:0]    m60_6_mul_port_z_0;
  wire       [2:0]    m60_6_mul_port_z_1;
  wire       [2:0]    m61_6_mul_port_z_0;
  wire       [2:0]    m61_6_mul_port_z_1;
  wire       [2:0]    m62_6_mul_port_z_0;
  wire       [2:0]    m62_6_mul_port_z_1;
  wire       [2:0]    m63_6_mul_port_z_0;
  wire       [2:0]    m63_6_mul_port_z_1;
  wire       [2:0]    l0_6_xor_port_z_0;
  wire       [2:0]    l0_6_xor_port_z_1;
  wire       [2:0]    l1_6_xor_port_z_0;
  wire       [2:0]    l1_6_xor_port_z_1;
  wire       [2:0]    l2_6_xor_port_z_0;
  wire       [2:0]    l2_6_xor_port_z_1;
  wire       [2:0]    l3_6_xor_port_z_0;
  wire       [2:0]    l3_6_xor_port_z_1;
  wire       [2:0]    l4_6_xor_port_z_0;
  wire       [2:0]    l4_6_xor_port_z_1;
  wire       [2:0]    l5_6_xor_port_z_0;
  wire       [2:0]    l5_6_xor_port_z_1;
  wire       [2:0]    l6_6_xor_port_z_0;
  wire       [2:0]    l6_6_xor_port_z_1;
  wire       [2:0]    l7_6_xor_port_z_0;
  wire       [2:0]    l7_6_xor_port_z_1;
  wire       [2:0]    l8_6_xor_port_z_0;
  wire       [2:0]    l8_6_xor_port_z_1;
  wire       [2:0]    l9_6_xor_port_z_0;
  wire       [2:0]    l9_6_xor_port_z_1;
  wire       [2:0]    l10_6_xor_port_z_0;
  wire       [2:0]    l10_6_xor_port_z_1;
  wire       [2:0]    l11_6_xor_port_z_0;
  wire       [2:0]    l11_6_xor_port_z_1;
  wire       [2:0]    l12_6_xor_port_z_0;
  wire       [2:0]    l12_6_xor_port_z_1;
  wire       [2:0]    l13_6_xor_port_z_0;
  wire       [2:0]    l13_6_xor_port_z_1;
  wire       [2:0]    l14_6_xor_port_z_0;
  wire       [2:0]    l14_6_xor_port_z_1;
  wire       [2:0]    l15_6_xor_port_z_0;
  wire       [2:0]    l15_6_xor_port_z_1;
  wire       [2:0]    l16_6_xor_port_z_0;
  wire       [2:0]    l16_6_xor_port_z_1;
  wire       [2:0]    l17_6_xor_port_z_0;
  wire       [2:0]    l17_6_xor_port_z_1;
  wire       [2:0]    l18_6_xor_port_z_0;
  wire       [2:0]    l18_6_xor_port_z_1;
  wire       [2:0]    l19_6_xor_port_z_0;
  wire       [2:0]    l19_6_xor_port_z_1;
  wire       [2:0]    l20_6_xor_port_z_0;
  wire       [2:0]    l20_6_xor_port_z_1;
  wire       [2:0]    l21_6_xor_port_z_0;
  wire       [2:0]    l21_6_xor_port_z_1;
  wire       [2:0]    l22_6_xor_port_z_0;
  wire       [2:0]    l22_6_xor_port_z_1;
  wire       [2:0]    l23_6_xor_port_z_0;
  wire       [2:0]    l23_6_xor_port_z_1;
  wire       [2:0]    l24_6_xor_port_z_0;
  wire       [2:0]    l24_6_xor_port_z_1;
  wire       [2:0]    l25_6_xor_port_z_0;
  wire       [2:0]    l25_6_xor_port_z_1;
  wire       [2:0]    l26_6_xor_port_z_0;
  wire       [2:0]    l26_6_xor_port_z_1;
  wire       [2:0]    l27_6_xor_port_z_0;
  wire       [2:0]    l27_6_xor_port_z_1;
  wire       [2:0]    l28_6_xor_port_z_0;
  wire       [2:0]    l28_6_xor_port_z_1;
  wire       [2:0]    l29_6_xor_port_z_0;
  wire       [2:0]    l29_6_xor_port_z_1;
  wire       [2:0]    s0_6_port_z_0;
  wire       [2:0]    s0_6_port_z_1;
  wire       [2:0]    s1_6_port_z_0;
  wire       [2:0]    s1_6_port_z_1;
  wire       [2:0]    s2_6_port_z_0;
  wire       [2:0]    s2_6_port_z_1;
  wire       [2:0]    s3_6_port_z_0;
  wire       [2:0]    s3_6_port_z_1;
  wire       [2:0]    s4_6_port_z_0;
  wire       [2:0]    s4_6_port_z_1;
  wire       [2:0]    s5_6_port_z_0;
  wire       [2:0]    s5_6_port_z_1;
  wire       [2:0]    s6_6_port_z_0;
  wire       [2:0]    s6_6_port_z_1;
  wire       [2:0]    s7_6_port_z_0;
  wire       [2:0]    s7_6_port_z_1;
  wire       [2:0]    in_x0_0;
  wire       [2:0]    in_x0_1;
  wire       [2:0]    in_x1_0;
  wire       [2:0]    in_x1_1;
  wire       [2:0]    in_x2_0;
  wire       [2:0]    in_x2_1;
  wire       [2:0]    in_x3_0;
  wire       [2:0]    in_x3_1;
  wire       [2:0]    in_x4_0;
  wire       [2:0]    in_x4_1;
  wire       [2:0]    in_x5_0;
  wire       [2:0]    in_x5_1;
  wire       [2:0]    in_x6_0;
  wire       [2:0]    in_x6_1;
  wire       [2:0]    in_x7_0;
  wire       [2:0]    in_x7_1;
  wire       [2:0]    out_y0_0;
  wire       [2:0]    out_y0_1;
  wire       [2:0]    out_y1_0;
  wire       [2:0]    out_y1_1;
  wire       [2:0]    out_y2_0;
  wire       [2:0]    out_y2_1;
  wire       [2:0]    out_y3_0;
  wire       [2:0]    out_y3_1;
  wire       [2:0]    out_y4_0;
  wire       [2:0]    out_y4_1;
  wire       [2:0]    out_y5_0;
  wire       [2:0]    out_y5_1;
  wire       [2:0]    out_y6_0;
  wire       [2:0]    out_y6_1;
  wire       [2:0]    out_y7_0;
  wire       [2:0]    out_y7_1;
  wire                rand_0_0;
  wire                rand_0_1;
  wire                rand_0_2;
  wire                rand_0_3;
  wire                rand_1_0;
  wire                rand_1_1;
  wire                rand_1_2;
  wire                rand_1_3;
  wire                rand_2_0;
  wire                rand_2_1;
  wire                rand_2_2;
  wire                rand_2_3;
  wire                rand_3_0;
  wire                rand_3_1;
  wire                rand_3_2;
  wire                rand_3_3;
  wire                rand_4_0;
  wire                rand_4_1;
  wire                rand_4_2;
  wire                rand_4_3;
  wire                rand_5_0;
  wire                rand_5_1;
  wire                rand_5_2;
  wire                rand_5_3;
  wire                rand_6_0;
  wire                rand_6_1;
  wire                rand_6_2;
  wire                rand_6_3;
  wire                rand_7_0;
  wire                rand_7_1;
  wire                rand_7_2;
  wire                rand_7_3;
  wire                rand_8_0;
  wire                rand_8_1;
  wire                rand_8_2;
  wire                rand_8_3;
  wire                rand_9_0;
  wire                rand_9_1;
  wire                rand_9_2;
  wire                rand_9_3;
  wire                rand_10_0;
  wire                rand_10_1;
  wire                rand_10_2;
  wire                rand_10_3;
  wire                rand_11_0;
  wire                rand_11_1;
  wire                rand_11_2;
  wire                rand_11_3;
  wire                rand_12_0;
  wire                rand_12_1;
  wire                rand_12_2;
  wire                rand_12_3;
  wire                rand_13_0;
  wire                rand_13_1;
  wire                rand_13_2;
  wire                rand_13_3;
  wire                rand_14_0;
  wire                rand_14_1;
  wire                rand_14_2;
  wire                rand_14_3;
  wire                rand_15_0;
  wire                rand_15_1;
  wire                rand_15_2;
  wire                rand_15_3;
  wire                rand_16_0;
  wire                rand_16_1;
  wire                rand_16_2;
  wire                rand_16_3;
  wire                rand_17_0;
  wire                rand_17_1;
  wire                rand_17_2;
  wire                rand_17_3;
  wire                rand_18_0;
  wire                rand_18_1;
  wire                rand_18_2;
  wire                rand_18_3;
  wire                rand_19_0;
  wire                rand_19_1;
  wire                rand_19_2;
  wire                rand_19_3;
  wire                rand_20_0;
  wire                rand_20_1;
  wire                rand_20_2;
  wire                rand_20_3;
  wire                rand_21_0;
  wire                rand_21_1;
  wire                rand_21_2;
  wire                rand_21_3;
  wire                rand_22_0;
  wire                rand_22_1;
  wire                rand_22_2;
  wire                rand_22_3;
  wire                rand_23_0;
  wire                rand_23_1;
  wire                rand_23_2;
  wire                rand_23_3;
  wire                rand_24_0;
  wire                rand_24_1;
  wire                rand_24_2;
  wire                rand_24_3;
  wire                rand_25_0;
  wire                rand_25_1;
  wire                rand_25_2;
  wire                rand_25_3;
  wire                rand_26_0;
  wire                rand_26_1;
  wire                rand_26_2;
  wire                rand_26_3;
  wire                rand_27_0;
  wire                rand_27_1;
  wire                rand_27_2;
  wire                rand_27_3;
  wire                rand_28_0;
  wire                rand_28_1;
  wire                rand_28_2;
  wire                rand_28_3;
  wire                rand_29_0;
  wire                rand_29_1;
  wire                rand_29_2;
  wire                rand_29_3;
  wire                rand_30_0;
  wire                rand_30_1;
  wire                rand_30_2;
  wire                rand_30_3;
  wire                rand_31_0;
  wire                rand_31_1;
  wire                rand_31_2;
  wire                rand_31_3;
  wire                rand_32_0;
  wire                rand_32_1;
  wire                rand_32_2;
  wire                rand_32_3;
  wire                rand_33_0;
  wire                rand_33_1;
  wire                rand_33_2;
  wire                rand_33_3;
  reg        [2:0]    t1_1_0;
  reg        [2:0]    t1_1_1;
  reg        [2:0]    t2_1_0;
  reg        [2:0]    t2_1_1;
  reg        [2:0]    t3_1_0;
  reg        [2:0]    t3_1_1;
  reg        [2:0]    t4_1_0;
  reg        [2:0]    t4_1_1;
  reg        [2:0]    t13_1_0;
  reg        [2:0]    t13_1_1;
  reg        [2:0]    t19_1_0;
  reg        [2:0]    t19_1_1;
  reg        [2:0]    t20_1_0;
  reg        [2:0]    t20_1_1;
  reg        [2:0]    t22_1_0;
  reg        [2:0]    t22_1_1;
  reg        [2:0]    t23_1_0;
  reg        [2:0]    t23_1_1;
  reg        [2:0]    x7_1_0;
  reg        [2:0]    x7_1_1;
  reg        [2:0]    t6_1_0;
  reg        [2:0]    t6_1_1;
  reg        [2:0]    t7_1_0;
  reg        [2:0]    t7_1_1;
  reg        [2:0]    t8_1_0;
  reg        [2:0]    t8_1_1;
  reg        [2:0]    t9_1_0;
  reg        [2:0]    t9_1_1;
  reg        [2:0]    t10_1_0;
  reg        [2:0]    t10_1_1;
  reg        [2:0]    t14_1_0;
  reg        [2:0]    t14_1_1;
  reg        [2:0]    t15_1_0;
  reg        [2:0]    t15_1_1;
  reg        [2:0]    t16_1_0;
  reg        [2:0]    t16_1_1;
  reg        [2:0]    t17_1_0;
  reg        [2:0]    t17_1_1;
  reg        [2:0]    t24_1_0;
  reg        [2:0]    t24_1_1;
  reg        [2:0]    t25_1_0;
  reg        [2:0]    t25_1_1;
  reg        [2:0]    t26_1_0;
  reg        [2:0]    t26_1_1;
  reg        [2:0]    t27_1_0;
  reg        [2:0]    t27_1_1;
  reg        [2:0]    x7_2_0;
  reg        [2:0]    x7_2_1;
  reg        [2:0]    t1_2_0;
  reg        [2:0]    t1_2_1;
  reg        [2:0]    t2_2_0;
  reg        [2:0]    t2_2_1;
  reg        [2:0]    t3_2_0;
  reg        [2:0]    t3_2_1;
  reg        [2:0]    t4_2_0;
  reg        [2:0]    t4_2_1;
  reg        [2:0]    t6_2_0;
  reg        [2:0]    t6_2_1;
  reg        [2:0]    t7_2_0;
  reg        [2:0]    t7_2_1;
  reg        [2:0]    t8_2_0;
  reg        [2:0]    t8_2_1;
  reg        [2:0]    t9_2_0;
  reg        [2:0]    t9_2_1;
  reg        [2:0]    t10_2_0;
  reg        [2:0]    t10_2_1;
  reg        [2:0]    t13_2_0;
  reg        [2:0]    t13_2_1;
  reg        [2:0]    t14_2_0;
  reg        [2:0]    t14_2_1;
  reg        [2:0]    t15_2_0;
  reg        [2:0]    t15_2_1;
  reg        [2:0]    t16_2_0;
  reg        [2:0]    t16_2_1;
  reg        [2:0]    t17_2_0;
  reg        [2:0]    t17_2_1;
  reg        [2:0]    t19_2_0;
  reg        [2:0]    t19_2_1;
  reg        [2:0]    t20_2_0;
  reg        [2:0]    t20_2_1;
  reg        [2:0]    t22_2_0;
  reg        [2:0]    t22_2_1;
  reg        [2:0]    t23_2_0;
  reg        [2:0]    t23_2_1;
  reg        [2:0]    t24_2_0;
  reg        [2:0]    t24_2_1;
  reg        [2:0]    t25_2_0;
  reg        [2:0]    t25_2_1;
  reg        [2:0]    t26_2_0;
  reg        [2:0]    t26_2_1;
  reg        [2:0]    t27_2_0;
  reg        [2:0]    t27_2_1;
  reg        [2:0]    m22_3_0;
  reg        [2:0]    m22_3_1;
  reg        [2:0]    m23_3_0;
  reg        [2:0]    m23_3_1;
  reg        [2:0]    x7_3_0;
  reg        [2:0]    x7_3_1;
  reg        [2:0]    t1_3_0;
  reg        [2:0]    t1_3_1;
  reg        [2:0]    t2_3_0;
  reg        [2:0]    t2_3_1;
  reg        [2:0]    t3_3_0;
  reg        [2:0]    t3_3_1;
  reg        [2:0]    t4_3_0;
  reg        [2:0]    t4_3_1;
  reg        [2:0]    t6_3_0;
  reg        [2:0]    t6_3_1;
  reg        [2:0]    t8_3_0;
  reg        [2:0]    t8_3_1;
  reg        [2:0]    t9_3_0;
  reg        [2:0]    t9_3_1;
  reg        [2:0]    t10_3_0;
  reg        [2:0]    t10_3_1;
  reg        [2:0]    t13_3_0;
  reg        [2:0]    t13_3_1;
  reg        [2:0]    t15_3_0;
  reg        [2:0]    t15_3_1;
  reg        [2:0]    t16_3_0;
  reg        [2:0]    t16_3_1;
  reg        [2:0]    t17_3_0;
  reg        [2:0]    t17_3_1;
  reg        [2:0]    t19_3_0;
  reg        [2:0]    t19_3_1;
  reg        [2:0]    t20_3_0;
  reg        [2:0]    t20_3_1;
  reg        [2:0]    t22_3_0;
  reg        [2:0]    t22_3_1;
  reg        [2:0]    t23_3_0;
  reg        [2:0]    t23_3_1;
  reg        [2:0]    t27_3_0;
  reg        [2:0]    t27_3_1;
  reg        [2:0]    m21_3_0;
  reg        [2:0]    m21_3_1;
  reg        [2:0]    m24_3_0;
  reg        [2:0]    m24_3_1;
  reg        [2:0]    m27_3_0;
  reg        [2:0]    m27_3_1;
  reg        [2:0]    x7_4_0;
  reg        [2:0]    x7_4_1;
  reg        [2:0]    t1_4_0;
  reg        [2:0]    t1_4_1;
  reg        [2:0]    t2_4_0;
  reg        [2:0]    t2_4_1;
  reg        [2:0]    t3_4_0;
  reg        [2:0]    t3_4_1;
  reg        [2:0]    t4_4_0;
  reg        [2:0]    t4_4_1;
  reg        [2:0]    t6_4_0;
  reg        [2:0]    t6_4_1;
  reg        [2:0]    t8_4_0;
  reg        [2:0]    t8_4_1;
  reg        [2:0]    t9_4_0;
  reg        [2:0]    t9_4_1;
  reg        [2:0]    t10_4_0;
  reg        [2:0]    t10_4_1;
  reg        [2:0]    t13_4_0;
  reg        [2:0]    t13_4_1;
  reg        [2:0]    t15_4_0;
  reg        [2:0]    t15_4_1;
  reg        [2:0]    t16_4_0;
  reg        [2:0]    t16_4_1;
  reg        [2:0]    t17_4_0;
  reg        [2:0]    t17_4_1;
  reg        [2:0]    t19_4_0;
  reg        [2:0]    t19_4_1;
  reg        [2:0]    t20_4_0;
  reg        [2:0]    t20_4_1;
  reg        [2:0]    t22_4_0;
  reg        [2:0]    t22_4_1;
  reg        [2:0]    t23_4_0;
  reg        [2:0]    t23_4_1;
  reg        [2:0]    t27_4_0;
  reg        [2:0]    t27_4_1;
  reg        [2:0]    m21_4_0;
  reg        [2:0]    m21_4_1;
  reg        [2:0]    m23_4_0;
  reg        [2:0]    m23_4_1;
  reg        [2:0]    m24_4_0;
  reg        [2:0]    m24_4_1;
  reg        [2:0]    m27_4_0;
  reg        [2:0]    m27_4_1;
  reg        [2:0]    m21_5_0;
  reg        [2:0]    m21_5_1;
  reg        [2:0]    m23_5_0;
  reg        [2:0]    m23_5_1;
  reg        [2:0]    m33_5_0;
  reg        [2:0]    m33_5_1;
  reg        [2:0]    m36_5_0;
  reg        [2:0]    m36_5_1;

  Shared_Xor t1_0_xor (
    .port_a_0 (in_x0_0[2:0]          ), //i
    .port_a_1 (in_x0_1[2:0]          ), //i
    .port_b_0 (in_x3_0[2:0]          ), //i
    .port_b_1 (in_x3_1[2:0]          ), //i
    .port_z_0 (t1_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t1_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t2_0_xor (
    .port_a_0 (in_x0_0[2:0]          ), //i
    .port_a_1 (in_x0_1[2:0]          ), //i
    .port_b_0 (in_x5_0[2:0]          ), //i
    .port_b_1 (in_x5_1[2:0]          ), //i
    .port_z_0 (t2_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t2_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t3_0_xor (
    .port_a_0 (in_x0_0[2:0]          ), //i
    .port_a_1 (in_x0_1[2:0]          ), //i
    .port_b_0 (in_x6_0[2:0]          ), //i
    .port_b_1 (in_x6_1[2:0]          ), //i
    .port_z_0 (t3_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t3_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t4_0_xor (
    .port_a_0 (in_x3_0[2:0]          ), //i
    .port_a_1 (in_x3_1[2:0]          ), //i
    .port_b_0 (in_x5_0[2:0]          ), //i
    .port_b_1 (in_x5_1[2:0]          ), //i
    .port_z_0 (t4_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t4_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t5_0_xor (
    .port_a_0 (in_x4_0[2:0]          ), //i
    .port_a_1 (in_x4_1[2:0]          ), //i
    .port_b_0 (in_x6_0[2:0]          ), //i
    .port_b_1 (in_x6_1[2:0]          ), //i
    .port_z_0 (t5_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t5_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t6_0_xor (
    .port_a_0 (t1_0_xor_port_z_0[2:0]), //i
    .port_a_1 (t1_0_xor_port_z_1[2:0]), //i
    .port_b_0 (t5_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t5_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t6_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t6_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t7_0_xor (
    .port_a_0 (in_x1_0[2:0]          ), //i
    .port_a_1 (in_x1_1[2:0]          ), //i
    .port_b_0 (in_x2_0[2:0]          ), //i
    .port_b_1 (in_x2_1[2:0]          ), //i
    .port_z_0 (t7_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t7_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t8_0_xor (
    .port_a_0 (in_x7_0[2:0]          ), //i
    .port_a_1 (in_x7_1[2:0]          ), //i
    .port_b_0 (t6_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t6_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t8_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t8_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t9_0_xor (
    .port_a_0 (in_x7_0[2:0]          ), //i
    .port_a_1 (in_x7_1[2:0]          ), //i
    .port_b_0 (t7_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t7_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t9_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t9_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t10_0_xor (
    .port_a_0 (t6_0_xor_port_z_0[2:0] ), //i
    .port_a_1 (t6_0_xor_port_z_1[2:0] ), //i
    .port_b_0 (t7_0_xor_port_z_0[2:0] ), //i
    .port_b_1 (t7_0_xor_port_z_1[2:0] ), //i
    .port_z_0 (t10_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t10_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t11_0_xor (
    .port_a_0 (in_x1_0[2:0]           ), //i
    .port_a_1 (in_x1_1[2:0]           ), //i
    .port_b_0 (in_x5_0[2:0]           ), //i
    .port_b_1 (in_x5_1[2:0]           ), //i
    .port_z_0 (t11_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t11_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t12_0_xor (
    .port_a_0 (in_x2_0[2:0]           ), //i
    .port_a_1 (in_x2_1[2:0]           ), //i
    .port_b_0 (in_x5_0[2:0]           ), //i
    .port_b_1 (in_x5_1[2:0]           ), //i
    .port_z_0 (t12_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t12_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t13_0_xor (
    .port_a_0 (t3_0_xor_port_z_0[2:0] ), //i
    .port_a_1 (t3_0_xor_port_z_1[2:0] ), //i
    .port_b_0 (t4_0_xor_port_z_0[2:0] ), //i
    .port_b_1 (t4_0_xor_port_z_1[2:0] ), //i
    .port_z_0 (t13_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t13_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t14_0_xor (
    .port_a_0 (t6_0_xor_port_z_0[2:0] ), //i
    .port_a_1 (t6_0_xor_port_z_1[2:0] ), //i
    .port_b_0 (t11_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t11_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t14_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t14_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t15_0_xor (
    .port_a_0 (t5_0_xor_port_z_0[2:0] ), //i
    .port_a_1 (t5_0_xor_port_z_1[2:0] ), //i
    .port_b_0 (t11_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t11_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t15_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t15_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t16_0_xor (
    .port_a_0 (t5_0_xor_port_z_0[2:0] ), //i
    .port_a_1 (t5_0_xor_port_z_1[2:0] ), //i
    .port_b_0 (t12_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t12_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t16_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t16_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t17_0_xor (
    .port_a_0 (t9_0_xor_port_z_0[2:0] ), //i
    .port_a_1 (t9_0_xor_port_z_1[2:0] ), //i
    .port_b_0 (t16_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t16_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t17_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t17_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t18_0_xor (
    .port_a_0 (in_x3_0[2:0]           ), //i
    .port_a_1 (in_x3_1[2:0]           ), //i
    .port_b_0 (in_x7_0[2:0]           ), //i
    .port_b_1 (in_x7_1[2:0]           ), //i
    .port_z_0 (t18_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t18_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t19_0_xor (
    .port_a_0 (t7_0_xor_port_z_0[2:0] ), //i
    .port_a_1 (t7_0_xor_port_z_1[2:0] ), //i
    .port_b_0 (t18_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t18_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t19_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t19_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t20_0_xor (
    .port_a_0 (t1_0_xor_port_z_0[2:0] ), //i
    .port_a_1 (t1_0_xor_port_z_1[2:0] ), //i
    .port_b_0 (t19_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t19_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t20_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t20_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t21_0_xor (
    .port_a_0 (in_x6_0[2:0]           ), //i
    .port_a_1 (in_x6_1[2:0]           ), //i
    .port_b_0 (in_x7_0[2:0]           ), //i
    .port_b_1 (in_x7_1[2:0]           ), //i
    .port_z_0 (t21_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t21_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t22_0_xor (
    .port_a_0 (t7_0_xor_port_z_0[2:0] ), //i
    .port_a_1 (t7_0_xor_port_z_1[2:0] ), //i
    .port_b_0 (t21_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t21_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t22_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t22_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t23_0_xor (
    .port_a_0 (t2_0_xor_port_z_0[2:0] ), //i
    .port_a_1 (t2_0_xor_port_z_1[2:0] ), //i
    .port_b_0 (t22_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t22_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t23_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t23_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t24_0_xor (
    .port_a_0 (t2_0_xor_port_z_0[2:0] ), //i
    .port_a_1 (t2_0_xor_port_z_1[2:0] ), //i
    .port_b_0 (t10_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t10_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t24_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t24_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t25_0_xor (
    .port_a_0 (t20_0_xor_port_z_0[2:0]), //i
    .port_a_1 (t20_0_xor_port_z_1[2:0]), //i
    .port_b_0 (t17_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t17_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t25_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t25_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t26_0_xor (
    .port_a_0 (t3_0_xor_port_z_0[2:0] ), //i
    .port_a_1 (t3_0_xor_port_z_1[2:0] ), //i
    .port_b_0 (t16_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t16_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t26_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t26_0_xor_port_z_1[2:0])  //o
  );
  Shared_Xor t27_0_xor (
    .port_a_0 (t1_0_xor_port_z_0[2:0] ), //i
    .port_a_1 (t1_0_xor_port_z_1[2:0] ), //i
    .port_b_0 (t12_0_xor_port_z_0[2:0]), //i
    .port_b_1 (t12_0_xor_port_z_1[2:0]), //i
    .port_z_0 (t27_0_xor_port_z_0[2:0]), //o
    .port_z_1 (t27_0_xor_port_z_1[2:0])  //o
  );
  Shared_And m1_2 (
    .port_a_0    (t13_1_0[2:0]          ), //i
    .port_a_1    (t13_1_1[2:0]          ), //i
    .port_b_0    (t6_0_xor_port_z_0[2:0]), //i
    .port_b_1    (t6_0_xor_port_z_1[2:0]), //i
    .port_rand_0 (rand_0_0              ), //i
    .port_rand_1 (rand_0_1              ), //i
    .port_rand_2 (rand_0_2              ), //i
    .port_rand_3 (rand_0_3              ), //i
    .port_z_0    (m1_2_port_z_0[2:0]    ), //o
    .port_z_1    (m1_2_port_z_1[2:0]    ), //o
    .clk         (clk                   ), //i
    .reset       (reset                 )  //i
  );
  Shared_And m2_2 (
    .port_a_0    (t23_1_0[2:0]          ), //i
    .port_a_1    (t23_1_1[2:0]          ), //i
    .port_b_0    (t8_0_xor_port_z_0[2:0]), //i
    .port_b_1    (t8_0_xor_port_z_1[2:0]), //i
    .port_rand_0 (rand_1_0              ), //i
    .port_rand_1 (rand_1_1              ), //i
    .port_rand_2 (rand_1_2              ), //i
    .port_rand_3 (rand_1_3              ), //i
    .port_z_0    (m2_2_port_z_0[2:0]    ), //o
    .port_z_1    (m2_2_port_z_1[2:0]    ), //o
    .clk         (clk                   ), //i
    .reset       (reset                 )  //i
  );
  Shared_And m4_2 (
    .port_a_0    (t19_1_0[2:0]      ), //i
    .port_a_1    (t19_1_1[2:0]      ), //i
    .port_b_0    (in_x7_0[2:0]      ), //i
    .port_b_1    (in_x7_1[2:0]      ), //i
    .port_rand_0 (rand_2_0          ), //i
    .port_rand_1 (rand_2_1          ), //i
    .port_rand_2 (rand_2_2          ), //i
    .port_rand_3 (rand_2_3          ), //i
    .port_z_0    (m4_2_port_z_0[2:0]), //o
    .port_z_1    (m4_2_port_z_1[2:0]), //o
    .clk         (clk               ), //i
    .reset       (reset             )  //i
  );
  Shared_And m6_2 (
    .port_a_0    (t3_1_0[2:0]            ), //i
    .port_a_1    (t3_1_1[2:0]            ), //i
    .port_b_0    (t16_0_xor_port_z_0[2:0]), //i
    .port_b_1    (t16_0_xor_port_z_1[2:0]), //i
    .port_rand_0 (rand_3_0               ), //i
    .port_rand_1 (rand_3_1               ), //i
    .port_rand_2 (rand_3_2               ), //i
    .port_rand_3 (rand_3_3               ), //i
    .port_z_0    (m6_2_port_z_0[2:0]     ), //o
    .port_z_1    (m6_2_port_z_1[2:0]     ), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m7_2 (
    .port_a_0    (t22_1_0[2:0]          ), //i
    .port_a_1    (t22_1_1[2:0]          ), //i
    .port_b_0    (t9_0_xor_port_z_0[2:0]), //i
    .port_b_1    (t9_0_xor_port_z_1[2:0]), //i
    .port_rand_0 (rand_4_0              ), //i
    .port_rand_1 (rand_4_1              ), //i
    .port_rand_2 (rand_4_2              ), //i
    .port_rand_3 (rand_4_3              ), //i
    .port_z_0    (m7_2_port_z_0[2:0]    ), //o
    .port_z_1    (m7_2_port_z_1[2:0]    ), //o
    .clk         (clk                   ), //i
    .reset       (reset                 )  //i
  );
  Shared_And m9_2 (
    .port_a_0    (t20_1_0[2:0]           ), //i
    .port_a_1    (t20_1_1[2:0]           ), //i
    .port_b_0    (t17_0_xor_port_z_0[2:0]), //i
    .port_b_1    (t17_0_xor_port_z_1[2:0]), //i
    .port_rand_0 (rand_5_0               ), //i
    .port_rand_1 (rand_5_1               ), //i
    .port_rand_2 (rand_5_2               ), //i
    .port_rand_3 (rand_5_3               ), //i
    .port_z_0    (m9_2_port_z_0[2:0]     ), //o
    .port_z_1    (m9_2_port_z_1[2:0]     ), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m11_2 (
    .port_a_0    (t1_1_0[2:0]            ), //i
    .port_a_1    (t1_1_1[2:0]            ), //i
    .port_b_0    (t15_0_xor_port_z_0[2:0]), //i
    .port_b_1    (t15_0_xor_port_z_1[2:0]), //i
    .port_rand_0 (rand_6_0               ), //i
    .port_rand_1 (rand_6_1               ), //i
    .port_rand_2 (rand_6_2               ), //i
    .port_rand_3 (rand_6_3               ), //i
    .port_z_0    (m11_2_port_z_0[2:0]    ), //o
    .port_z_1    (m11_2_port_z_1[2:0]    ), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m12_2 (
    .port_a_0    (t4_1_0[2:0]            ), //i
    .port_a_1    (t4_1_1[2:0]            ), //i
    .port_b_0    (t27_0_xor_port_z_0[2:0]), //i
    .port_b_1    (t27_0_xor_port_z_1[2:0]), //i
    .port_rand_0 (rand_7_0               ), //i
    .port_rand_1 (rand_7_1               ), //i
    .port_rand_2 (rand_7_2               ), //i
    .port_rand_3 (rand_7_3               ), //i
    .port_z_0    (m12_2_port_z_0[2:0]    ), //o
    .port_z_1    (m12_2_port_z_1[2:0]    ), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m14_2 (
    .port_a_0    (t2_1_0[2:0]            ), //i
    .port_a_1    (t2_1_1[2:0]            ), //i
    .port_b_0    (t10_0_xor_port_z_0[2:0]), //i
    .port_b_1    (t10_0_xor_port_z_1[2:0]), //i
    .port_rand_0 (rand_8_0               ), //i
    .port_rand_1 (rand_8_1               ), //i
    .port_rand_2 (rand_8_2               ), //i
    .port_rand_3 (rand_8_3               ), //i
    .port_z_0    (m14_2_port_z_0[2:0]    ), //o
    .port_z_1    (m14_2_port_z_1[2:0]    ), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_Xor m3_2_xor (
    .port_a_0 (t14_2_0[2:0]          ), //i
    .port_a_1 (t14_2_1[2:0]          ), //i
    .port_b_0 (m1_2_port_z_0[2:0]    ), //i
    .port_b_1 (m1_2_port_z_1[2:0]    ), //i
    .port_z_0 (m3_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m3_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m5_2_xor (
    .port_a_0 (m4_2_port_z_0[2:0]    ), //i
    .port_a_1 (m4_2_port_z_1[2:0]    ), //i
    .port_b_0 (m1_2_port_z_0[2:0]    ), //i
    .port_b_1 (m1_2_port_z_1[2:0]    ), //i
    .port_z_0 (m5_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m5_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m8_2_xor (
    .port_a_0 (t26_2_0[2:0]          ), //i
    .port_a_1 (t26_2_1[2:0]          ), //i
    .port_b_0 (m6_2_port_z_0[2:0]    ), //i
    .port_b_1 (m6_2_port_z_1[2:0]    ), //i
    .port_z_0 (m8_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m8_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m10_2_xor (
    .port_a_0 (m9_2_port_z_0[2:0]     ), //i
    .port_a_1 (m9_2_port_z_1[2:0]     ), //i
    .port_b_0 (m6_2_port_z_0[2:0]     ), //i
    .port_b_1 (m6_2_port_z_1[2:0]     ), //i
    .port_z_0 (m10_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m10_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m13_2_xor (
    .port_a_0 (m12_2_port_z_0[2:0]    ), //i
    .port_a_1 (m12_2_port_z_1[2:0]    ), //i
    .port_b_0 (m11_2_port_z_0[2:0]    ), //i
    .port_b_1 (m11_2_port_z_1[2:0]    ), //i
    .port_z_0 (m13_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m13_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m15_2_xor (
    .port_a_0 (m14_2_port_z_0[2:0]    ), //i
    .port_a_1 (m14_2_port_z_1[2:0]    ), //i
    .port_b_0 (m11_2_port_z_0[2:0]    ), //i
    .port_b_1 (m11_2_port_z_1[2:0]    ), //i
    .port_z_0 (m15_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m15_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m16_2_xor (
    .port_a_0 (m3_2_xor_port_z_0[2:0] ), //i
    .port_a_1 (m3_2_xor_port_z_1[2:0] ), //i
    .port_b_0 (m2_2_port_z_0[2:0]     ), //i
    .port_b_1 (m2_2_port_z_1[2:0]     ), //i
    .port_z_0 (m16_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m16_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m17_2_xor (
    .port_a_0 (m5_2_xor_port_z_0[2:0] ), //i
    .port_a_1 (m5_2_xor_port_z_1[2:0] ), //i
    .port_b_0 (t24_2_0[2:0]           ), //i
    .port_b_1 (t24_2_1[2:0]           ), //i
    .port_z_0 (m17_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m17_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m18_2_xor (
    .port_a_0 (m8_2_xor_port_z_0[2:0] ), //i
    .port_a_1 (m8_2_xor_port_z_1[2:0] ), //i
    .port_b_0 (m7_2_port_z_0[2:0]     ), //i
    .port_b_1 (m7_2_port_z_1[2:0]     ), //i
    .port_z_0 (m18_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m18_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m19_2_xor (
    .port_a_0 (m10_2_xor_port_z_0[2:0]), //i
    .port_a_1 (m10_2_xor_port_z_1[2:0]), //i
    .port_b_0 (m15_2_xor_port_z_0[2:0]), //i
    .port_b_1 (m15_2_xor_port_z_1[2:0]), //i
    .port_z_0 (m19_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m19_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m20_2_xor (
    .port_a_0 (m16_2_xor_port_z_0[2:0]), //i
    .port_a_1 (m16_2_xor_port_z_1[2:0]), //i
    .port_b_0 (m13_2_xor_port_z_0[2:0]), //i
    .port_b_1 (m13_2_xor_port_z_1[2:0]), //i
    .port_z_0 (m20_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m20_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m21_2_xor (
    .port_a_0 (m17_2_xor_port_z_0[2:0]), //i
    .port_a_1 (m17_2_xor_port_z_1[2:0]), //i
    .port_b_0 (m15_2_xor_port_z_0[2:0]), //i
    .port_b_1 (m15_2_xor_port_z_1[2:0]), //i
    .port_z_0 (m21_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m21_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m22_2_xor (
    .port_a_0 (m18_2_xor_port_z_0[2:0]), //i
    .port_a_1 (m18_2_xor_port_z_1[2:0]), //i
    .port_b_0 (m13_2_xor_port_z_0[2:0]), //i
    .port_b_1 (m13_2_xor_port_z_1[2:0]), //i
    .port_z_0 (m22_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m22_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m23_2_xor (
    .port_a_0 (m19_2_xor_port_z_0[2:0]), //i
    .port_a_1 (m19_2_xor_port_z_1[2:0]), //i
    .port_b_0 (t25_2_0[2:0]           ), //i
    .port_b_1 (t25_2_1[2:0]           ), //i
    .port_z_0 (m23_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m23_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m24_2_xor (
    .port_a_0 (m22_2_xor_port_z_0[2:0]), //i
    .port_a_1 (m22_2_xor_port_z_1[2:0]), //i
    .port_b_0 (m23_2_xor_port_z_0[2:0]), //i
    .port_b_1 (m23_2_xor_port_z_1[2:0]), //i
    .port_z_0 (m24_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m24_2_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m27_2_xor (
    .port_a_0 (m21_2_xor_port_z_0[2:0]), //i
    .port_a_1 (m21_2_xor_port_z_1[2:0]), //i
    .port_b_0 (m20_2_xor_port_z_0[2:0]), //i
    .port_b_1 (m20_2_xor_port_z_1[2:0]), //i
    .port_z_0 (m27_2_xor_port_z_0[2:0]), //o
    .port_z_1 (m27_2_xor_port_z_1[2:0])  //o
  );
  Shared_And m25_4 (
    .port_a_0    (m22_3_0[2:0]           ), //i
    .port_a_1    (m22_3_1[2:0]           ), //i
    .port_b_0    (m20_2_xor_port_z_0[2:0]), //i
    .port_b_1    (m20_2_xor_port_z_1[2:0]), //i
    .port_rand_0 (rand_9_0               ), //i
    .port_rand_1 (rand_9_1               ), //i
    .port_rand_2 (rand_9_2               ), //i
    .port_rand_3 (rand_9_3               ), //i
    .port_z_0    (m25_4_port_z_0[2:0]    ), //o
    .port_z_1    (m25_4_port_z_1[2:0]    ), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m31_4 (
    .port_a_0    (m23_3_0[2:0]           ), //i
    .port_a_1    (m23_3_1[2:0]           ), //i
    .port_b_0    (m20_2_xor_port_z_0[2:0]), //i
    .port_b_1    (m20_2_xor_port_z_1[2:0]), //i
    .port_rand_0 (rand_10_0              ), //i
    .port_rand_1 (rand_10_1              ), //i
    .port_rand_2 (rand_10_2              ), //i
    .port_rand_3 (rand_10_3              ), //i
    .port_z_0    (m31_4_port_z_0[2:0]    ), //o
    .port_z_1    (m31_4_port_z_1[2:0]    ), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m34_4 (
    .port_a_0    (m22_3_0[2:0]           ), //i
    .port_a_1    (m22_3_1[2:0]           ), //i
    .port_b_0    (m21_2_xor_port_z_0[2:0]), //i
    .port_b_1    (m21_2_xor_port_z_1[2:0]), //i
    .port_rand_0 (rand_11_0              ), //i
    .port_rand_1 (rand_11_1              ), //i
    .port_rand_2 (rand_11_2              ), //i
    .port_rand_3 (rand_11_3              ), //i
    .port_z_0    (m34_4_port_z_0[2:0]    ), //o
    .port_z_1    (m34_4_port_z_1[2:0]    ), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_Xor m26_4_xor (
    .port_a_0 (m21_4_0[2:0]           ), //i
    .port_a_1 (m21_4_1[2:0]           ), //i
    .port_b_0 (m25_4_port_z_0[2:0]    ), //i
    .port_b_1 (m25_4_port_z_1[2:0]    ), //i
    .port_z_0 (m26_4_xor_port_z_0[2:0]), //o
    .port_z_1 (m26_4_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m28_4_xor (
    .port_a_0 (m23_4_0[2:0]           ), //i
    .port_a_1 (m23_4_1[2:0]           ), //i
    .port_b_0 (m25_4_port_z_0[2:0]    ), //i
    .port_b_1 (m25_4_port_z_1[2:0]    ), //i
    .port_z_0 (m28_4_xor_port_z_0[2:0]), //o
    .port_z_1 (m28_4_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m33_4_xor (
    .port_a_0 (m27_4_0[2:0]           ), //i
    .port_a_1 (m27_4_1[2:0]           ), //i
    .port_b_0 (m25_4_port_z_0[2:0]    ), //i
    .port_b_1 (m25_4_port_z_1[2:0]    ), //i
    .port_z_0 (m33_4_xor_port_z_0[2:0]), //o
    .port_z_1 (m33_4_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m36_4_xor (
    .port_a_0 (m24_4_0[2:0]           ), //i
    .port_a_1 (m24_4_1[2:0]           ), //i
    .port_b_0 (m25_4_port_z_0[2:0]    ), //i
    .port_b_1 (m25_4_port_z_1[2:0]    ), //i
    .port_z_0 (m36_4_xor_port_z_0[2:0]), //o
    .port_z_1 (m36_4_xor_port_z_1[2:0])  //o
  );
  Shared_And m29_5 (
    .port_a_0    (m28_4_xor_port_z_0[2:0]), //i
    .port_a_1    (m28_4_xor_port_z_1[2:0]), //i
    .port_b_0    (m27_3_0[2:0]           ), //i
    .port_b_1    (m27_3_1[2:0]           ), //i
    .port_rand_0 (rand_12_0              ), //i
    .port_rand_1 (rand_12_1              ), //i
    .port_rand_2 (rand_12_2              ), //i
    .port_rand_3 (rand_12_3              ), //i
    .port_z_0    (m29_5_port_z_0[2:0]    ), //o
    .port_z_1    (m29_5_port_z_1[2:0]    ), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m30_5 (
    .port_a_0    (m26_4_xor_port_z_0[2:0]), //i
    .port_a_1    (m26_4_xor_port_z_1[2:0]), //i
    .port_b_0    (m24_3_0[2:0]           ), //i
    .port_b_1    (m24_3_1[2:0]           ), //i
    .port_rand_0 (rand_13_0              ), //i
    .port_rand_1 (rand_13_1              ), //i
    .port_rand_2 (rand_13_2              ), //i
    .port_rand_3 (rand_13_3              ), //i
    .port_z_0    (m30_5_port_z_0[2:0]    ), //o
    .port_z_1    (m30_5_port_z_1[2:0]    ), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m32_5 (
    .port_a_0    (m31_4_port_z_0[2:0]), //i
    .port_a_1    (m31_4_port_z_1[2:0]), //i
    .port_b_0    (m27_3_0[2:0]       ), //i
    .port_b_1    (m27_3_1[2:0]       ), //i
    .port_rand_0 (rand_14_0          ), //i
    .port_rand_1 (rand_14_1          ), //i
    .port_rand_2 (rand_14_2          ), //i
    .port_rand_3 (rand_14_3          ), //i
    .port_z_0    (m32_5_port_z_0[2:0]), //o
    .port_z_1    (m32_5_port_z_1[2:0]), //o
    .clk         (clk                ), //i
    .reset       (reset              )  //i
  );
  Shared_And m35_5 (
    .port_a_0    (m34_4_port_z_0[2:0]), //i
    .port_a_1    (m34_4_port_z_1[2:0]), //i
    .port_b_0    (m24_3_0[2:0]       ), //i
    .port_b_1    (m24_3_1[2:0]       ), //i
    .port_rand_0 (rand_15_0          ), //i
    .port_rand_1 (rand_15_1          ), //i
    .port_rand_2 (rand_15_2          ), //i
    .port_rand_3 (rand_15_3          ), //i
    .port_z_0    (m35_5_port_z_0[2:0]), //o
    .port_z_1    (m35_5_port_z_1[2:0]), //o
    .clk         (clk                ), //i
    .reset       (reset              )  //i
  );
  Shared_Xor m37_5_xor (
    .port_a_0 (m21_5_0[2:0]           ), //i
    .port_a_1 (m21_5_1[2:0]           ), //i
    .port_b_0 (m29_5_port_z_0[2:0]    ), //i
    .port_b_1 (m29_5_port_z_1[2:0]    ), //i
    .port_z_0 (m37_5_xor_port_z_0[2:0]), //o
    .port_z_1 (m37_5_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m38_5_xor (
    .port_a_0 (m32_5_port_z_0[2:0]    ), //i
    .port_a_1 (m32_5_port_z_1[2:0]    ), //i
    .port_b_0 (m33_5_0[2:0]           ), //i
    .port_b_1 (m33_5_1[2:0]           ), //i
    .port_z_0 (m38_5_xor_port_z_0[2:0]), //o
    .port_z_1 (m38_5_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m39_5_xor (
    .port_a_0 (m23_5_0[2:0]           ), //i
    .port_a_1 (m23_5_1[2:0]           ), //i
    .port_b_0 (m30_5_port_z_0[2:0]    ), //i
    .port_b_1 (m30_5_port_z_1[2:0]    ), //i
    .port_z_0 (m39_5_xor_port_z_0[2:0]), //o
    .port_z_1 (m39_5_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m40_5_xor (
    .port_a_0 (m35_5_port_z_0[2:0]    ), //i
    .port_a_1 (m35_5_port_z_1[2:0]    ), //i
    .port_b_0 (m36_5_0[2:0]           ), //i
    .port_b_1 (m36_5_1[2:0]           ), //i
    .port_z_0 (m40_5_xor_port_z_0[2:0]), //o
    .port_z_1 (m40_5_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m41_5_xor (
    .port_a_0 (m38_5_xor_port_z_0[2:0]), //i
    .port_a_1 (m38_5_xor_port_z_1[2:0]), //i
    .port_b_0 (m40_5_xor_port_z_0[2:0]), //i
    .port_b_1 (m40_5_xor_port_z_1[2:0]), //i
    .port_z_0 (m41_5_xor_port_z_0[2:0]), //o
    .port_z_1 (m41_5_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m42_5_xor (
    .port_a_0 (m37_5_xor_port_z_0[2:0]), //i
    .port_a_1 (m37_5_xor_port_z_1[2:0]), //i
    .port_b_0 (m39_5_xor_port_z_0[2:0]), //i
    .port_b_1 (m39_5_xor_port_z_1[2:0]), //i
    .port_z_0 (m42_5_xor_port_z_0[2:0]), //o
    .port_z_1 (m42_5_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m43_5_xor (
    .port_a_0 (m37_5_xor_port_z_0[2:0]), //i
    .port_a_1 (m37_5_xor_port_z_1[2:0]), //i
    .port_b_0 (m38_5_xor_port_z_0[2:0]), //i
    .port_b_1 (m38_5_xor_port_z_1[2:0]), //i
    .port_z_0 (m43_5_xor_port_z_0[2:0]), //o
    .port_z_1 (m43_5_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m44_5_xor (
    .port_a_0 (m39_5_xor_port_z_0[2:0]), //i
    .port_a_1 (m39_5_xor_port_z_1[2:0]), //i
    .port_b_0 (m40_5_xor_port_z_0[2:0]), //i
    .port_b_1 (m40_5_xor_port_z_1[2:0]), //i
    .port_z_0 (m44_5_xor_port_z_0[2:0]), //o
    .port_z_1 (m44_5_xor_port_z_1[2:0])  //o
  );
  Shared_Xor m45_5_xor (
    .port_a_0 (m42_5_xor_port_z_0[2:0]), //i
    .port_a_1 (m42_5_xor_port_z_1[2:0]), //i
    .port_b_0 (m41_5_xor_port_z_0[2:0]), //i
    .port_b_1 (m41_5_xor_port_z_1[2:0]), //i
    .port_z_0 (m45_5_xor_port_z_0[2:0]), //o
    .port_z_1 (m45_5_xor_port_z_1[2:0])  //o
  );
  Shared_And m46_6_mul (
    .port_a_0    (m44_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m44_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t6_4_0[2:0]            ), //i
    .port_b_1    (t6_4_1[2:0]            ), //i
    .port_rand_0 (rand_16_0              ), //i
    .port_rand_1 (rand_16_1              ), //i
    .port_rand_2 (rand_16_2              ), //i
    .port_rand_3 (rand_16_3              ), //i
    .port_z_0    (m46_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m46_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m47_6_mul (
    .port_a_0    (m40_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m40_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t8_4_0[2:0]            ), //i
    .port_b_1    (t8_4_1[2:0]            ), //i
    .port_rand_0 (rand_17_0              ), //i
    .port_rand_1 (rand_17_1              ), //i
    .port_rand_2 (rand_17_2              ), //i
    .port_rand_3 (rand_17_3              ), //i
    .port_z_0    (m47_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m47_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m48_6_mul (
    .port_a_0    (m39_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m39_5_xor_port_z_1[2:0]), //i
    .port_b_0    (x7_4_0[2:0]            ), //i
    .port_b_1    (x7_4_1[2:0]            ), //i
    .port_rand_0 (rand_18_0              ), //i
    .port_rand_1 (rand_18_1              ), //i
    .port_rand_2 (rand_18_2              ), //i
    .port_rand_3 (rand_18_3              ), //i
    .port_z_0    (m48_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m48_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m49_6_mul (
    .port_a_0    (m43_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m43_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t16_4_0[2:0]           ), //i
    .port_b_1    (t16_4_1[2:0]           ), //i
    .port_rand_0 (rand_19_0              ), //i
    .port_rand_1 (rand_19_1              ), //i
    .port_rand_2 (rand_19_2              ), //i
    .port_rand_3 (rand_19_3              ), //i
    .port_z_0    (m49_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m49_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m50_6_mul (
    .port_a_0    (m38_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m38_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t9_4_0[2:0]            ), //i
    .port_b_1    (t9_4_1[2:0]            ), //i
    .port_rand_0 (rand_20_0              ), //i
    .port_rand_1 (rand_20_1              ), //i
    .port_rand_2 (rand_20_2              ), //i
    .port_rand_3 (rand_20_3              ), //i
    .port_z_0    (m50_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m50_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m51_6_mul (
    .port_a_0    (m37_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m37_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t17_4_0[2:0]           ), //i
    .port_b_1    (t17_4_1[2:0]           ), //i
    .port_rand_0 (rand_21_0              ), //i
    .port_rand_1 (rand_21_1              ), //i
    .port_rand_2 (rand_21_2              ), //i
    .port_rand_3 (rand_21_3              ), //i
    .port_z_0    (m51_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m51_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m52_6_mul (
    .port_a_0    (m42_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m42_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t15_4_0[2:0]           ), //i
    .port_b_1    (t15_4_1[2:0]           ), //i
    .port_rand_0 (rand_22_0              ), //i
    .port_rand_1 (rand_22_1              ), //i
    .port_rand_2 (rand_22_2              ), //i
    .port_rand_3 (rand_22_3              ), //i
    .port_z_0    (m52_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m52_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m53_6_mul (
    .port_a_0    (m45_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m45_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t27_4_0[2:0]           ), //i
    .port_b_1    (t27_4_1[2:0]           ), //i
    .port_rand_0 (rand_23_0              ), //i
    .port_rand_1 (rand_23_1              ), //i
    .port_rand_2 (rand_23_2              ), //i
    .port_rand_3 (rand_23_3              ), //i
    .port_z_0    (m53_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m53_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m54_6_mul (
    .port_a_0    (m41_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m41_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t10_4_0[2:0]           ), //i
    .port_b_1    (t10_4_1[2:0]           ), //i
    .port_rand_0 (rand_24_0              ), //i
    .port_rand_1 (rand_24_1              ), //i
    .port_rand_2 (rand_24_2              ), //i
    .port_rand_3 (rand_24_3              ), //i
    .port_z_0    (m54_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m54_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m55_6_mul (
    .port_a_0    (m44_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m44_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t13_4_0[2:0]           ), //i
    .port_b_1    (t13_4_1[2:0]           ), //i
    .port_rand_0 (rand_25_0              ), //i
    .port_rand_1 (rand_25_1              ), //i
    .port_rand_2 (rand_25_2              ), //i
    .port_rand_3 (rand_25_3              ), //i
    .port_z_0    (m55_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m55_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m56_6_mul (
    .port_a_0    (m40_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m40_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t23_4_0[2:0]           ), //i
    .port_b_1    (t23_4_1[2:0]           ), //i
    .port_rand_0 (rand_26_0              ), //i
    .port_rand_1 (rand_26_1              ), //i
    .port_rand_2 (rand_26_2              ), //i
    .port_rand_3 (rand_26_3              ), //i
    .port_z_0    (m56_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m56_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m57_6_mul (
    .port_a_0    (m39_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m39_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t19_4_0[2:0]           ), //i
    .port_b_1    (t19_4_1[2:0]           ), //i
    .port_rand_0 (rand_27_0              ), //i
    .port_rand_1 (rand_27_1              ), //i
    .port_rand_2 (rand_27_2              ), //i
    .port_rand_3 (rand_27_3              ), //i
    .port_z_0    (m57_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m57_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m58_6_mul (
    .port_a_0    (m43_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m43_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t3_4_0[2:0]            ), //i
    .port_b_1    (t3_4_1[2:0]            ), //i
    .port_rand_0 (rand_28_0              ), //i
    .port_rand_1 (rand_28_1              ), //i
    .port_rand_2 (rand_28_2              ), //i
    .port_rand_3 (rand_28_3              ), //i
    .port_z_0    (m58_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m58_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m59_6_mul (
    .port_a_0    (m38_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m38_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t22_4_0[2:0]           ), //i
    .port_b_1    (t22_4_1[2:0]           ), //i
    .port_rand_0 (rand_29_0              ), //i
    .port_rand_1 (rand_29_1              ), //i
    .port_rand_2 (rand_29_2              ), //i
    .port_rand_3 (rand_29_3              ), //i
    .port_z_0    (m59_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m59_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m60_6_mul (
    .port_a_0    (m37_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m37_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t20_4_0[2:0]           ), //i
    .port_b_1    (t20_4_1[2:0]           ), //i
    .port_rand_0 (rand_30_0              ), //i
    .port_rand_1 (rand_30_1              ), //i
    .port_rand_2 (rand_30_2              ), //i
    .port_rand_3 (rand_30_3              ), //i
    .port_z_0    (m60_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m60_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m61_6_mul (
    .port_a_0    (m42_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m42_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t1_4_0[2:0]            ), //i
    .port_b_1    (t1_4_1[2:0]            ), //i
    .port_rand_0 (rand_31_0              ), //i
    .port_rand_1 (rand_31_1              ), //i
    .port_rand_2 (rand_31_2              ), //i
    .port_rand_3 (rand_31_3              ), //i
    .port_z_0    (m61_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m61_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m62_6_mul (
    .port_a_0    (m45_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m45_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t4_4_0[2:0]            ), //i
    .port_b_1    (t4_4_1[2:0]            ), //i
    .port_rand_0 (rand_32_0              ), //i
    .port_rand_1 (rand_32_1              ), //i
    .port_rand_2 (rand_32_2              ), //i
    .port_rand_3 (rand_32_3              ), //i
    .port_z_0    (m62_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m62_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_And m63_6_mul (
    .port_a_0    (m41_5_xor_port_z_0[2:0]), //i
    .port_a_1    (m41_5_xor_port_z_1[2:0]), //i
    .port_b_0    (t2_4_0[2:0]            ), //i
    .port_b_1    (t2_4_1[2:0]            ), //i
    .port_rand_0 (rand_33_0              ), //i
    .port_rand_1 (rand_33_1              ), //i
    .port_rand_2 (rand_33_2              ), //i
    .port_rand_3 (rand_33_3              ), //i
    .port_z_0    (m63_6_mul_port_z_0[2:0]), //o
    .port_z_1    (m63_6_mul_port_z_1[2:0]), //o
    .clk         (clk                    ), //i
    .reset       (reset                  )  //i
  );
  Shared_Xor l0_6_xor (
    .port_a_0 (m61_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m61_6_mul_port_z_1[2:0]), //i
    .port_b_0 (m62_6_mul_port_z_0[2:0]), //i
    .port_b_1 (m62_6_mul_port_z_1[2:0]), //i
    .port_z_0 (l0_6_xor_port_z_0[2:0] ), //o
    .port_z_1 (l0_6_xor_port_z_1[2:0] )  //o
  );
  Shared_Xor l1_6_xor (
    .port_a_0 (m50_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m50_6_mul_port_z_1[2:0]), //i
    .port_b_0 (m56_6_mul_port_z_0[2:0]), //i
    .port_b_1 (m56_6_mul_port_z_1[2:0]), //i
    .port_z_0 (l1_6_xor_port_z_0[2:0] ), //o
    .port_z_1 (l1_6_xor_port_z_1[2:0] )  //o
  );
  Shared_Xor l2_6_xor (
    .port_a_0 (m46_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m46_6_mul_port_z_1[2:0]), //i
    .port_b_0 (m48_6_mul_port_z_0[2:0]), //i
    .port_b_1 (m48_6_mul_port_z_1[2:0]), //i
    .port_z_0 (l2_6_xor_port_z_0[2:0] ), //o
    .port_z_1 (l2_6_xor_port_z_1[2:0] )  //o
  );
  Shared_Xor l3_6_xor (
    .port_a_0 (m47_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m47_6_mul_port_z_1[2:0]), //i
    .port_b_0 (m55_6_mul_port_z_0[2:0]), //i
    .port_b_1 (m55_6_mul_port_z_1[2:0]), //i
    .port_z_0 (l3_6_xor_port_z_0[2:0] ), //o
    .port_z_1 (l3_6_xor_port_z_1[2:0] )  //o
  );
  Shared_Xor l4_6_xor (
    .port_a_0 (m54_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m54_6_mul_port_z_1[2:0]), //i
    .port_b_0 (m58_6_mul_port_z_0[2:0]), //i
    .port_b_1 (m58_6_mul_port_z_1[2:0]), //i
    .port_z_0 (l4_6_xor_port_z_0[2:0] ), //o
    .port_z_1 (l4_6_xor_port_z_1[2:0] )  //o
  );
  Shared_Xor l5_6_xor (
    .port_a_0 (m49_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m49_6_mul_port_z_1[2:0]), //i
    .port_b_0 (m61_6_mul_port_z_0[2:0]), //i
    .port_b_1 (m61_6_mul_port_z_1[2:0]), //i
    .port_z_0 (l5_6_xor_port_z_0[2:0] ), //o
    .port_z_1 (l5_6_xor_port_z_1[2:0] )  //o
  );
  Shared_Xor l6_6_xor (
    .port_a_0 (m62_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m62_6_mul_port_z_1[2:0]), //i
    .port_b_0 (l5_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l5_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l6_6_xor_port_z_0[2:0] ), //o
    .port_z_1 (l6_6_xor_port_z_1[2:0] )  //o
  );
  Shared_Xor l7_6_xor (
    .port_a_0 (m46_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m46_6_mul_port_z_1[2:0]), //i
    .port_b_0 (l3_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l3_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l7_6_xor_port_z_0[2:0] ), //o
    .port_z_1 (l7_6_xor_port_z_1[2:0] )  //o
  );
  Shared_Xor l8_6_xor (
    .port_a_0 (m51_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m51_6_mul_port_z_1[2:0]), //i
    .port_b_0 (m59_6_mul_port_z_0[2:0]), //i
    .port_b_1 (m59_6_mul_port_z_1[2:0]), //i
    .port_z_0 (l8_6_xor_port_z_0[2:0] ), //o
    .port_z_1 (l8_6_xor_port_z_1[2:0] )  //o
  );
  Shared_Xor l9_6_xor (
    .port_a_0 (m52_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m52_6_mul_port_z_1[2:0]), //i
    .port_b_0 (m53_6_mul_port_z_0[2:0]), //i
    .port_b_1 (m53_6_mul_port_z_1[2:0]), //i
    .port_z_0 (l9_6_xor_port_z_0[2:0] ), //o
    .port_z_1 (l9_6_xor_port_z_1[2:0] )  //o
  );
  Shared_Xor l10_6_xor (
    .port_a_0 (m53_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m53_6_mul_port_z_1[2:0]), //i
    .port_b_0 (l4_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l4_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l10_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l10_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l11_6_xor (
    .port_a_0 (m60_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m60_6_mul_port_z_1[2:0]), //i
    .port_b_0 (l2_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l2_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l11_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l11_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l12_6_xor (
    .port_a_0 (m48_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m48_6_mul_port_z_1[2:0]), //i
    .port_b_0 (m51_6_mul_port_z_0[2:0]), //i
    .port_b_1 (m51_6_mul_port_z_1[2:0]), //i
    .port_z_0 (l12_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l12_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l13_6_xor (
    .port_a_0 (m50_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m50_6_mul_port_z_1[2:0]), //i
    .port_b_0 (l0_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l0_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l13_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l13_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l14_6_xor (
    .port_a_0 (m52_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m52_6_mul_port_z_1[2:0]), //i
    .port_b_0 (m61_6_mul_port_z_0[2:0]), //i
    .port_b_1 (m61_6_mul_port_z_1[2:0]), //i
    .port_z_0 (l14_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l14_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l15_6_xor (
    .port_a_0 (m55_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m55_6_mul_port_z_1[2:0]), //i
    .port_b_0 (l1_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l1_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l15_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l15_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l16_6_xor (
    .port_a_0 (m56_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m56_6_mul_port_z_1[2:0]), //i
    .port_b_0 (l0_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l0_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l16_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l16_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l17_6_xor (
    .port_a_0 (m57_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m57_6_mul_port_z_1[2:0]), //i
    .port_b_0 (l1_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l1_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l17_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l17_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l18_6_xor (
    .port_a_0 (m58_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m58_6_mul_port_z_1[2:0]), //i
    .port_b_0 (l8_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l8_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l18_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l18_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l19_6_xor (
    .port_a_0 (m63_6_mul_port_z_0[2:0]), //i
    .port_a_1 (m63_6_mul_port_z_1[2:0]), //i
    .port_b_0 (l4_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l4_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l19_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l19_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l20_6_xor (
    .port_a_0 (l0_6_xor_port_z_0[2:0] ), //i
    .port_a_1 (l0_6_xor_port_z_1[2:0] ), //i
    .port_b_0 (l1_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l1_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l20_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l20_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l21_6_xor (
    .port_a_0 (l1_6_xor_port_z_0[2:0] ), //i
    .port_a_1 (l1_6_xor_port_z_1[2:0] ), //i
    .port_b_0 (l7_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l7_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l21_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l21_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l22_6_xor (
    .port_a_0 (l3_6_xor_port_z_0[2:0] ), //i
    .port_a_1 (l3_6_xor_port_z_1[2:0] ), //i
    .port_b_0 (l12_6_xor_port_z_0[2:0]), //i
    .port_b_1 (l12_6_xor_port_z_1[2:0]), //i
    .port_z_0 (l22_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l22_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l23_6_xor (
    .port_a_0 (l18_6_xor_port_z_0[2:0]), //i
    .port_a_1 (l18_6_xor_port_z_1[2:0]), //i
    .port_b_0 (l2_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l2_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l23_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l23_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l24_6_xor (
    .port_a_0 (l15_6_xor_port_z_0[2:0]), //i
    .port_a_1 (l15_6_xor_port_z_1[2:0]), //i
    .port_b_0 (l9_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l9_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l24_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l24_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l25_6_xor (
    .port_a_0 (l6_6_xor_port_z_0[2:0] ), //i
    .port_a_1 (l6_6_xor_port_z_1[2:0] ), //i
    .port_b_0 (l10_6_xor_port_z_0[2:0]), //i
    .port_b_1 (l10_6_xor_port_z_1[2:0]), //i
    .port_z_0 (l25_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l25_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l26_6_xor (
    .port_a_0 (l7_6_xor_port_z_0[2:0] ), //i
    .port_a_1 (l7_6_xor_port_z_1[2:0] ), //i
    .port_b_0 (l9_6_xor_port_z_0[2:0] ), //i
    .port_b_1 (l9_6_xor_port_z_1[2:0] ), //i
    .port_z_0 (l26_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l26_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l27_6_xor (
    .port_a_0 (l8_6_xor_port_z_0[2:0] ), //i
    .port_a_1 (l8_6_xor_port_z_1[2:0] ), //i
    .port_b_0 (l10_6_xor_port_z_0[2:0]), //i
    .port_b_1 (l10_6_xor_port_z_1[2:0]), //i
    .port_z_0 (l27_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l27_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l28_6_xor (
    .port_a_0 (l11_6_xor_port_z_0[2:0]), //i
    .port_a_1 (l11_6_xor_port_z_1[2:0]), //i
    .port_b_0 (l14_6_xor_port_z_0[2:0]), //i
    .port_b_1 (l14_6_xor_port_z_1[2:0]), //i
    .port_z_0 (l28_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l28_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor l29_6_xor (
    .port_a_0 (l11_6_xor_port_z_0[2:0]), //i
    .port_a_1 (l11_6_xor_port_z_1[2:0]), //i
    .port_b_0 (l17_6_xor_port_z_0[2:0]), //i
    .port_b_1 (l17_6_xor_port_z_1[2:0]), //i
    .port_z_0 (l29_6_xor_port_z_0[2:0]), //o
    .port_z_1 (l29_6_xor_port_z_1[2:0])  //o
  );
  Shared_Xor s0_6 (
    .port_a_0 (l6_6_xor_port_z_0[2:0] ), //i
    .port_a_1 (l6_6_xor_port_z_1[2:0] ), //i
    .port_b_0 (l24_6_xor_port_z_0[2:0]), //i
    .port_b_1 (l24_6_xor_port_z_1[2:0]), //i
    .port_z_0 (s0_6_port_z_0[2:0]     ), //o
    .port_z_1 (s0_6_port_z_1[2:0]     )  //o
  );
  Shared_Xnor s1_6 (
    .port_a_0 (l16_6_xor_port_z_0[2:0]), //i
    .port_a_1 (l16_6_xor_port_z_1[2:0]), //i
    .port_b_0 (l26_6_xor_port_z_0[2:0]), //i
    .port_b_1 (l26_6_xor_port_z_1[2:0]), //i
    .port_z_0 (s1_6_port_z_0[2:0]     ), //o
    .port_z_1 (s1_6_port_z_1[2:0]     )  //o
  );
  Shared_Xnor s2_6 (
    .port_a_0 (l19_6_xor_port_z_0[2:0]), //i
    .port_a_1 (l19_6_xor_port_z_1[2:0]), //i
    .port_b_0 (l28_6_xor_port_z_0[2:0]), //i
    .port_b_1 (l28_6_xor_port_z_1[2:0]), //i
    .port_z_0 (s2_6_port_z_0[2:0]     ), //o
    .port_z_1 (s2_6_port_z_1[2:0]     )  //o
  );
  Shared_Xor s3_6 (
    .port_a_0 (l6_6_xor_port_z_0[2:0] ), //i
    .port_a_1 (l6_6_xor_port_z_1[2:0] ), //i
    .port_b_0 (l21_6_xor_port_z_0[2:0]), //i
    .port_b_1 (l21_6_xor_port_z_1[2:0]), //i
    .port_z_0 (s3_6_port_z_0[2:0]     ), //o
    .port_z_1 (s3_6_port_z_1[2:0]     )  //o
  );
  Shared_Xor s4_6 (
    .port_a_0 (l20_6_xor_port_z_0[2:0]), //i
    .port_a_1 (l20_6_xor_port_z_1[2:0]), //i
    .port_b_0 (l22_6_xor_port_z_0[2:0]), //i
    .port_b_1 (l22_6_xor_port_z_1[2:0]), //i
    .port_z_0 (s4_6_port_z_0[2:0]     ), //o
    .port_z_1 (s4_6_port_z_1[2:0]     )  //o
  );
  Shared_Xor s5_6 (
    .port_a_0 (l25_6_xor_port_z_0[2:0]), //i
    .port_a_1 (l25_6_xor_port_z_1[2:0]), //i
    .port_b_0 (l29_6_xor_port_z_0[2:0]), //i
    .port_b_1 (l29_6_xor_port_z_1[2:0]), //i
    .port_z_0 (s5_6_port_z_0[2:0]     ), //o
    .port_z_1 (s5_6_port_z_1[2:0]     )  //o
  );
  Shared_Xnor s6_6 (
    .port_a_0 (l13_6_xor_port_z_0[2:0]), //i
    .port_a_1 (l13_6_xor_port_z_1[2:0]), //i
    .port_b_0 (l27_6_xor_port_z_0[2:0]), //i
    .port_b_1 (l27_6_xor_port_z_1[2:0]), //i
    .port_z_0 (s6_6_port_z_0[2:0]     ), //o
    .port_z_1 (s6_6_port_z_1[2:0]     )  //o
  );
  Shared_Xnor s7_6 (
    .port_a_0 (l6_6_xor_port_z_0[2:0] ), //i
    .port_a_1 (l6_6_xor_port_z_1[2:0] ), //i
    .port_b_0 (l23_6_xor_port_z_0[2:0]), //i
    .port_b_1 (l23_6_xor_port_z_1[2:0]), //i
    .port_z_0 (s7_6_port_z_0[2:0]     ), //o
    .port_z_1 (s7_6_port_z_1[2:0]     )  //o
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
  assign rand_0_0 = port_r_0;
  assign rand_0_1 = port_r_1;
  assign rand_0_2 = port_r_2;
  assign rand_0_3 = port_r_3;
  assign rand_1_0 = port_r_4;
  assign rand_1_1 = port_r_5;
  assign rand_1_2 = port_r_6;
  assign rand_1_3 = port_r_7;
  assign rand_2_0 = port_r_8;
  assign rand_2_1 = port_r_9;
  assign rand_2_2 = port_r_10;
  assign rand_2_3 = port_r_11;
  assign rand_3_0 = port_r_12;
  assign rand_3_1 = port_r_13;
  assign rand_3_2 = port_r_14;
  assign rand_3_3 = port_r_15;
  assign rand_4_0 = port_r_16;
  assign rand_4_1 = port_r_17;
  assign rand_4_2 = port_r_18;
  assign rand_4_3 = port_r_19;
  assign rand_5_0 = port_r_20;
  assign rand_5_1 = port_r_21;
  assign rand_5_2 = port_r_22;
  assign rand_5_3 = port_r_23;
  assign rand_6_0 = port_r_24;
  assign rand_6_1 = port_r_25;
  assign rand_6_2 = port_r_26;
  assign rand_6_3 = port_r_27;
  assign rand_7_0 = port_r_28;
  assign rand_7_1 = port_r_29;
  assign rand_7_2 = port_r_30;
  assign rand_7_3 = port_r_31;
  assign rand_8_0 = port_r_32;
  assign rand_8_1 = port_r_33;
  assign rand_8_2 = port_r_34;
  assign rand_8_3 = port_r_35;
  assign rand_9_0 = port_r_36;
  assign rand_9_1 = port_r_37;
  assign rand_9_2 = port_r_38;
  assign rand_9_3 = port_r_39;
  assign rand_10_0 = port_r_40;
  assign rand_10_1 = port_r_41;
  assign rand_10_2 = port_r_42;
  assign rand_10_3 = port_r_43;
  assign rand_11_0 = port_r_44;
  assign rand_11_1 = port_r_45;
  assign rand_11_2 = port_r_46;
  assign rand_11_3 = port_r_47;
  assign rand_12_0 = port_r_48;
  assign rand_12_1 = port_r_49;
  assign rand_12_2 = port_r_50;
  assign rand_12_3 = port_r_51;
  assign rand_13_0 = port_r_52;
  assign rand_13_1 = port_r_53;
  assign rand_13_2 = port_r_54;
  assign rand_13_3 = port_r_55;
  assign rand_14_0 = port_r_56;
  assign rand_14_1 = port_r_57;
  assign rand_14_2 = port_r_58;
  assign rand_14_3 = port_r_59;
  assign rand_15_0 = port_r_60;
  assign rand_15_1 = port_r_61;
  assign rand_15_2 = port_r_62;
  assign rand_15_3 = port_r_63;
  assign rand_16_0 = port_r_64;
  assign rand_16_1 = port_r_65;
  assign rand_16_2 = port_r_66;
  assign rand_16_3 = port_r_67;
  assign rand_17_0 = port_r_68;
  assign rand_17_1 = port_r_69;
  assign rand_17_2 = port_r_70;
  assign rand_17_3 = port_r_71;
  assign rand_18_0 = port_r_72;
  assign rand_18_1 = port_r_73;
  assign rand_18_2 = port_r_74;
  assign rand_18_3 = port_r_75;
  assign rand_19_0 = port_r_76;
  assign rand_19_1 = port_r_77;
  assign rand_19_2 = port_r_78;
  assign rand_19_3 = port_r_79;
  assign rand_20_0 = port_r_80;
  assign rand_20_1 = port_r_81;
  assign rand_20_2 = port_r_82;
  assign rand_20_3 = port_r_83;
  assign rand_21_0 = port_r_84;
  assign rand_21_1 = port_r_85;
  assign rand_21_2 = port_r_86;
  assign rand_21_3 = port_r_87;
  assign rand_22_0 = port_r_88;
  assign rand_22_1 = port_r_89;
  assign rand_22_2 = port_r_90;
  assign rand_22_3 = port_r_91;
  assign rand_23_0 = port_r_92;
  assign rand_23_1 = port_r_93;
  assign rand_23_2 = port_r_94;
  assign rand_23_3 = port_r_95;
  assign rand_24_0 = port_r_96;
  assign rand_24_1 = port_r_97;
  assign rand_24_2 = port_r_98;
  assign rand_24_3 = port_r_99;
  assign rand_25_0 = port_r_100;
  assign rand_25_1 = port_r_101;
  assign rand_25_2 = port_r_102;
  assign rand_25_3 = port_r_103;
  assign rand_26_0 = port_r_104;
  assign rand_26_1 = port_r_105;
  assign rand_26_2 = port_r_106;
  assign rand_26_3 = port_r_107;
  assign rand_27_0 = port_r_108;
  assign rand_27_1 = port_r_109;
  assign rand_27_2 = port_r_110;
  assign rand_27_3 = port_r_111;
  assign rand_28_0 = port_r_112;
  assign rand_28_1 = port_r_113;
  assign rand_28_2 = port_r_114;
  assign rand_28_3 = port_r_115;
  assign rand_29_0 = port_r_116;
  assign rand_29_1 = port_r_117;
  assign rand_29_2 = port_r_118;
  assign rand_29_3 = port_r_119;
  assign rand_30_0 = port_r_120;
  assign rand_30_1 = port_r_121;
  assign rand_30_2 = port_r_122;
  assign rand_30_3 = port_r_123;
  assign rand_31_0 = port_r_124;
  assign rand_31_1 = port_r_125;
  assign rand_31_2 = port_r_126;
  assign rand_31_3 = port_r_127;
  assign rand_32_0 = port_r_128;
  assign rand_32_1 = port_r_129;
  assign rand_32_2 = port_r_130;
  assign rand_32_3 = port_r_131;
  assign rand_33_0 = port_r_132;
  assign rand_33_1 = port_r_133;
  assign rand_33_2 = port_r_134;
  assign rand_33_3 = port_r_135;
  assign out_y0_0 = s0_6_port_z_0;
  assign out_y0_1 = s0_6_port_z_1;
  assign out_y1_0 = s1_6_port_z_0;
  assign out_y1_1 = s1_6_port_z_1;
  assign out_y2_0 = s2_6_port_z_0;
  assign out_y2_1 = s2_6_port_z_1;
  assign out_y3_0 = s3_6_port_z_0;
  assign out_y3_1 = s3_6_port_z_1;
  assign out_y4_0 = s4_6_port_z_0;
  assign out_y4_1 = s4_6_port_z_1;
  assign out_y5_0 = s5_6_port_z_0;
  assign out_y5_1 = s5_6_port_z_1;
  assign out_y6_0 = s6_6_port_z_0;
  assign out_y6_1 = s6_6_port_z_1;
  assign out_y7_0 = s7_6_port_z_0;
  assign out_y7_1 = s7_6_port_z_1;
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
  always @(posedge clk) begin
    t1_1_0 <= t1_0_xor_port_z_0;
    t1_1_1 <= t1_0_xor_port_z_1;
    t2_1_0 <= t2_0_xor_port_z_0;
    t2_1_1 <= t2_0_xor_port_z_1;
    t3_1_0 <= t3_0_xor_port_z_0;
    t3_1_1 <= t3_0_xor_port_z_1;
    t4_1_0 <= t4_0_xor_port_z_0;
    t4_1_1 <= t4_0_xor_port_z_1;
    t13_1_0 <= t13_0_xor_port_z_0;
    t13_1_1 <= t13_0_xor_port_z_1;
    t19_1_0 <= t19_0_xor_port_z_0;
    t19_1_1 <= t19_0_xor_port_z_1;
    t20_1_0 <= t20_0_xor_port_z_0;
    t20_1_1 <= t20_0_xor_port_z_1;
    t22_1_0 <= t22_0_xor_port_z_0;
    t22_1_1 <= t22_0_xor_port_z_1;
    t23_1_0 <= t23_0_xor_port_z_0;
    t23_1_1 <= t23_0_xor_port_z_1;
    x7_1_0 <= in_x7_0;
    x7_1_1 <= in_x7_1;
    t6_1_0 <= t6_0_xor_port_z_0;
    t6_1_1 <= t6_0_xor_port_z_1;
    t7_1_0 <= t7_0_xor_port_z_0;
    t7_1_1 <= t7_0_xor_port_z_1;
    t8_1_0 <= t8_0_xor_port_z_0;
    t8_1_1 <= t8_0_xor_port_z_1;
    t9_1_0 <= t9_0_xor_port_z_0;
    t9_1_1 <= t9_0_xor_port_z_1;
    t10_1_0 <= t10_0_xor_port_z_0;
    t10_1_1 <= t10_0_xor_port_z_1;
    t14_1_0 <= t14_0_xor_port_z_0;
    t14_1_1 <= t14_0_xor_port_z_1;
    t15_1_0 <= t15_0_xor_port_z_0;
    t15_1_1 <= t15_0_xor_port_z_1;
    t16_1_0 <= t16_0_xor_port_z_0;
    t16_1_1 <= t16_0_xor_port_z_1;
    t17_1_0 <= t17_0_xor_port_z_0;
    t17_1_1 <= t17_0_xor_port_z_1;
    t24_1_0 <= t24_0_xor_port_z_0;
    t24_1_1 <= t24_0_xor_port_z_1;
    t25_1_0 <= t25_0_xor_port_z_0;
    t25_1_1 <= t25_0_xor_port_z_1;
    t26_1_0 <= t26_0_xor_port_z_0;
    t26_1_1 <= t26_0_xor_port_z_1;
    t27_1_0 <= t27_0_xor_port_z_0;
    t27_1_1 <= t27_0_xor_port_z_1;
    x7_2_0 <= x7_1_0;
    x7_2_1 <= x7_1_1;
    t1_2_0 <= t1_1_0;
    t1_2_1 <= t1_1_1;
    t2_2_0 <= t2_1_0;
    t2_2_1 <= t2_1_1;
    t3_2_0 <= t3_1_0;
    t3_2_1 <= t3_1_1;
    t4_2_0 <= t4_1_0;
    t4_2_1 <= t4_1_1;
    t6_2_0 <= t6_1_0;
    t6_2_1 <= t6_1_1;
    t7_2_0 <= t7_1_0;
    t7_2_1 <= t7_1_1;
    t8_2_0 <= t8_1_0;
    t8_2_1 <= t8_1_1;
    t9_2_0 <= t9_1_0;
    t9_2_1 <= t9_1_1;
    t10_2_0 <= t10_1_0;
    t10_2_1 <= t10_1_1;
    t13_2_0 <= t13_1_0;
    t13_2_1 <= t13_1_1;
    t14_2_0 <= t14_1_0;
    t14_2_1 <= t14_1_1;
    t15_2_0 <= t15_1_0;
    t15_2_1 <= t15_1_1;
    t16_2_0 <= t16_1_0;
    t16_2_1 <= t16_1_1;
    t17_2_0 <= t17_1_0;
    t17_2_1 <= t17_1_1;
    t19_2_0 <= t19_1_0;
    t19_2_1 <= t19_1_1;
    t20_2_0 <= t20_1_0;
    t20_2_1 <= t20_1_1;
    t22_2_0 <= t22_1_0;
    t22_2_1 <= t22_1_1;
    t23_2_0 <= t23_1_0;
    t23_2_1 <= t23_1_1;
    t24_2_0 <= t24_1_0;
    t24_2_1 <= t24_1_1;
    t25_2_0 <= t25_1_0;
    t25_2_1 <= t25_1_1;
    t26_2_0 <= t26_1_0;
    t26_2_1 <= t26_1_1;
    t27_2_0 <= t27_1_0;
    t27_2_1 <= t27_1_1;
    m22_3_0 <= m22_2_xor_port_z_0;
    m22_3_1 <= m22_2_xor_port_z_1;
    m23_3_0 <= m23_2_xor_port_z_0;
    m23_3_1 <= m23_2_xor_port_z_1;
    x7_3_0 <= x7_2_0;
    x7_3_1 <= x7_2_1;
    t1_3_0 <= t1_2_0;
    t1_3_1 <= t1_2_1;
    t2_3_0 <= t2_2_0;
    t2_3_1 <= t2_2_1;
    t3_3_0 <= t3_2_0;
    t3_3_1 <= t3_2_1;
    t4_3_0 <= t4_2_0;
    t4_3_1 <= t4_2_1;
    t6_3_0 <= t6_2_0;
    t6_3_1 <= t6_2_1;
    t8_3_0 <= t8_2_0;
    t8_3_1 <= t8_2_1;
    t9_3_0 <= t9_2_0;
    t9_3_1 <= t9_2_1;
    t10_3_0 <= t10_2_0;
    t10_3_1 <= t10_2_1;
    t13_3_0 <= t13_2_0;
    t13_3_1 <= t13_2_1;
    t15_3_0 <= t15_2_0;
    t15_3_1 <= t15_2_1;
    t16_3_0 <= t16_2_0;
    t16_3_1 <= t16_2_1;
    t17_3_0 <= t17_2_0;
    t17_3_1 <= t17_2_1;
    t19_3_0 <= t19_2_0;
    t19_3_1 <= t19_2_1;
    t20_3_0 <= t20_2_0;
    t20_3_1 <= t20_2_1;
    t22_3_0 <= t22_2_0;
    t22_3_1 <= t22_2_1;
    t23_3_0 <= t23_2_0;
    t23_3_1 <= t23_2_1;
    t27_3_0 <= t27_2_0;
    t27_3_1 <= t27_2_1;
    m21_3_0 <= m21_2_xor_port_z_0;
    m21_3_1 <= m21_2_xor_port_z_1;
    m24_3_0 <= m24_2_xor_port_z_0;
    m24_3_1 <= m24_2_xor_port_z_1;
    m27_3_0 <= m27_2_xor_port_z_0;
    m27_3_1 <= m27_2_xor_port_z_1;
    x7_4_0 <= x7_3_0;
    x7_4_1 <= x7_3_1;
    t1_4_0 <= t1_3_0;
    t1_4_1 <= t1_3_1;
    t2_4_0 <= t2_3_0;
    t2_4_1 <= t2_3_1;
    t3_4_0 <= t3_3_0;
    t3_4_1 <= t3_3_1;
    t4_4_0 <= t4_3_0;
    t4_4_1 <= t4_3_1;
    t6_4_0 <= t6_3_0;
    t6_4_1 <= t6_3_1;
    t8_4_0 <= t8_3_0;
    t8_4_1 <= t8_3_1;
    t9_4_0 <= t9_3_0;
    t9_4_1 <= t9_3_1;
    t10_4_0 <= t10_3_0;
    t10_4_1 <= t10_3_1;
    t13_4_0 <= t13_3_0;
    t13_4_1 <= t13_3_1;
    t15_4_0 <= t15_3_0;
    t15_4_1 <= t15_3_1;
    t16_4_0 <= t16_3_0;
    t16_4_1 <= t16_3_1;
    t17_4_0 <= t17_3_0;
    t17_4_1 <= t17_3_1;
    t19_4_0 <= t19_3_0;
    t19_4_1 <= t19_3_1;
    t20_4_0 <= t20_3_0;
    t20_4_1 <= t20_3_1;
    t22_4_0 <= t22_3_0;
    t22_4_1 <= t22_3_1;
    t23_4_0 <= t23_3_0;
    t23_4_1 <= t23_3_1;
    t27_4_0 <= t27_3_0;
    t27_4_1 <= t27_3_1;
    m21_4_0 <= m21_3_0;
    m21_4_1 <= m21_3_1;
    m23_4_0 <= m23_3_0;
    m23_4_1 <= m23_3_1;
    m24_4_0 <= m24_3_0;
    m24_4_1 <= m24_3_1;
    m27_4_0 <= m27_3_0;
    m27_4_1 <= m27_3_1;
    m21_5_0 <= m21_4_0;
    m21_5_1 <= m21_4_1;
    m23_5_0 <= m23_4_0;
    m23_5_1 <= m23_4_1;
    m33_5_0 <= m33_4_xor_port_z_0;
    m33_5_1 <= m33_4_xor_port_z_1;
    m36_5_0 <= m36_4_xor_port_z_0;
    m36_5_1 <= m36_4_xor_port_z_1;
  end


endmodule

//Shared_Xnor replaced by Shared_Xnor

//Shared_Xnor replaced by Shared_Xnor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xnor replaced by Shared_Xnor

module Shared_Xnor (
  input      [2:0]    port_a_0,
  input      [2:0]    port_a_1,
  input      [2:0]    port_b_0,
  input      [2:0]    port_b_1,
  output     [2:0]    port_z_0,
  output     [2:0]    port_z_1
);


  assign port_z_0 = (~ (port_a_0 ^ port_b_0));
  assign port_z_1 = (port_a_1 ^ port_b_1);

endmodule

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

//Shared_And replaced by Shared_And

module Shared_And (
  input      [2:0]    port_a_0,
  input      [2:0]    port_a_1,
  input      [2:0]    port_b_0,
  input      [2:0]    port_b_1,
  input               port_rand_0,
  input               port_rand_1,
  input               port_rand_2,
  input               port_rand_3,
  output     [2:0]    port_z_0,
  output     [2:0]    port_z_1,
  input               clk,
  input               reset
);

  wire       [2:0]    cPC1_Ind_d1_k1_34_port_z_0;
  wire       [2:0]    cPC1_Ind_d1_k1_34_port_z_1;

  CPC1_Ind_d1_k1 cPC1_Ind_d1_k1_34 (
    .port_a_0    (port_a_0[2:0]                  ), //i
    .port_a_1    (port_a_1[2:0]                  ), //i
    .port_b_0    (port_b_0[2:0]                  ), //i
    .port_b_1    (port_b_1[2:0]                  ), //i
    .port_rand_0 (port_rand_0                    ), //i
    .port_rand_1 (port_rand_1                    ), //i
    .port_rand_2 (port_rand_2                    ), //i
    .port_rand_3 (port_rand_3                    ), //i
    .port_z_0    (cPC1_Ind_d1_k1_34_port_z_0[2:0]), //o
    .port_z_1    (cPC1_Ind_d1_k1_34_port_z_1[2:0]), //o
    .clk         (clk                            ), //i
    .reset       (reset                          )  //i
  );
  assign port_z_0 = cPC1_Ind_d1_k1_34_port_z_0;
  assign port_z_1 = cPC1_Ind_d1_k1_34_port_z_1;

endmodule

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

//Shared_Xor replaced by Shared_Xor

module Shared_Xor (
  input      [2:0]    port_a_0,
  input      [2:0]    port_a_1,
  input      [2:0]    port_b_0,
  input      [2:0]    port_b_1,
  output     [2:0]    port_z_0,
  output     [2:0]    port_z_1
);


  assign port_z_0 = (port_a_0 ^ port_b_0);
  assign port_z_1 = (port_a_1 ^ port_b_1);

endmodule

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

//CPC1_Ind_d1_k1 replaced by CPC1_Ind_d1_k1

module CPC1_Ind_d1_k1 (
  input      [2:0]    port_a_0,
  input      [2:0]    port_a_1,
  input      [2:0]    port_b_0,
  input      [2:0]    port_b_1,
  input               port_rand_0,
  input               port_rand_1,
  input               port_rand_2,
  input               port_rand_3,
  output     [2:0]    port_z_0,
  output     [2:0]    port_z_1,
  input               clk,
  input               reset
);

  wire       [2:0]    xor_gate_0_port_z;
  wire       [2:0]    xor_gate_1_port_z;
  wire       [2:0]    xor_gate_2_port_z;
  wire       [2:0]    xor_gate_3_port_z;
  wire                majority_408_port_o;
  wire                majority_409_port_o;
  wire                majority_410_port_o;
  wire                majority_411_port_o;
  wire                majority_412_port_o;
  wire                majority_413_port_o;
  wire       [2:0]    and_gate_z00_port_z;
  wire       [2:0]    and_gate_z11_port_z;
  wire       [2:0]    and_gate_z01_port_z;
  wire       [2:0]    xor_gate_z01_0_port_z;
  wire       [2:0]    xor_gate_z01_1_port_z;
  wire                maj_z01_0_port_o;
  wire                maj_z01_1_port_o;
  wire                maj_z01_2_port_o;
  wire       [2:0]    and_gate_z10_port_z;
  wire       [2:0]    xor_gate_z10_0_port_z;
  wire       [2:0]    xor_gate_z10_1_port_z;
  wire                maj_z10_0_port_o;
  wire                maj_z10_1_port_o;
  wire                maj_z10_2_port_o;
  wire       [2:0]    xor_gate_z00_z01_port_z;
  wire       [2:0]    xor_gate_z11_z10_port_z;
  reg        [2:0]    rand_0;
  reg        [2:0]    rand_1;
  reg        [2:0]    rand_2;
  reg        [2:0]    rand_3;
  wire       [2:0]    v_tilde_0;
  wire       [2:0]    v_tilde_1;
  reg        [2:0]    v_0;
  reg        [2:0]    v_1;
  reg        [2:0]    z_0_0;
  reg        [2:0]    z_0_1;
  reg        [2:0]    z_1_0;
  reg        [2:0]    z_1_1;

  xor_1 xor_gate_0 (
    .port_a (port_b_0[2:0]         ), //i
    .port_b (rand_0[2:0]           ), //i
    .port_z (xor_gate_0_port_z[2:0])  //o
  );
  xor_1 xor_gate_1 (
    .port_a (xor_gate_0_port_z[2:0]), //i
    .port_b (rand_1[2:0]           ), //i
    .port_z (xor_gate_1_port_z[2:0])  //o
  );
  xor_1 xor_gate_2 (
    .port_a (port_b_1[2:0]         ), //i
    .port_b (rand_0[2:0]           ), //i
    .port_z (xor_gate_2_port_z[2:0])  //o
  );
  xor_1 xor_gate_3 (
    .port_a (xor_gate_2_port_z[2:0]), //i
    .port_b (rand_1[2:0]           ), //i
    .port_z (xor_gate_3_port_z[2:0])  //o
  );
  Majority majority_408 (
    .port_i (v_tilde_0[2:0]     ), //i
    .port_o (majority_408_port_o)  //o
  );
  Majority majority_409 (
    .port_i (v_tilde_1[2:0]     ), //i
    .port_o (majority_409_port_o)  //o
  );
  Majority majority_410 (
    .port_i (v_tilde_0[2:0]     ), //i
    .port_o (majority_410_port_o)  //o
  );
  Majority majority_411 (
    .port_i (v_tilde_1[2:0]     ), //i
    .port_o (majority_411_port_o)  //o
  );
  Majority majority_412 (
    .port_i (v_tilde_0[2:0]     ), //i
    .port_o (majority_412_port_o)  //o
  );
  Majority majority_413 (
    .port_i (v_tilde_1[2:0]     ), //i
    .port_o (majority_413_port_o)  //o
  );
  and_1 and_gate_z00 (
    .port_a (port_a_0[2:0]           ), //i
    .port_b (v_0[2:0]                ), //i
    .port_z (and_gate_z00_port_z[2:0])  //o
  );
  and_1 and_gate_z11 (
    .port_a (port_a_1[2:0]           ), //i
    .port_b (v_1[2:0]                ), //i
    .port_z (and_gate_z11_port_z[2:0])  //o
  );
  and_1 and_gate_z01 (
    .port_a (port_a_0[2:0]           ), //i
    .port_b (v_1[2:0]                ), //i
    .port_z (and_gate_z01_port_z[2:0])  //o
  );
  xor_1 xor_gate_z01_0 (
    .port_a (and_gate_z01_port_z[2:0]  ), //i
    .port_b (rand_2[2:0]               ), //i
    .port_z (xor_gate_z01_0_port_z[2:0])  //o
  );
  xor_1 xor_gate_z01_1 (
    .port_a (xor_gate_z01_0_port_z[2:0]), //i
    .port_b (rand_3[2:0]               ), //i
    .port_z (xor_gate_z01_1_port_z[2:0])  //o
  );
  Majority maj_z01_0 (
    .port_i (xor_gate_z01_1_port_z[2:0]), //i
    .port_o (maj_z01_0_port_o          )  //o
  );
  Majority maj_z01_1 (
    .port_i (xor_gate_z01_1_port_z[2:0]), //i
    .port_o (maj_z01_1_port_o          )  //o
  );
  Majority maj_z01_2 (
    .port_i (xor_gate_z01_1_port_z[2:0]), //i
    .port_o (maj_z01_2_port_o          )  //o
  );
  and_1 and_gate_z10 (
    .port_a (port_a_1[2:0]           ), //i
    .port_b (v_0[2:0]                ), //i
    .port_z (and_gate_z10_port_z[2:0])  //o
  );
  xor_1 xor_gate_z10_0 (
    .port_a (and_gate_z10_port_z[2:0]  ), //i
    .port_b (rand_2[2:0]               ), //i
    .port_z (xor_gate_z10_0_port_z[2:0])  //o
  );
  xor_1 xor_gate_z10_1 (
    .port_a (xor_gate_z10_0_port_z[2:0]), //i
    .port_b (rand_3[2:0]               ), //i
    .port_z (xor_gate_z10_1_port_z[2:0])  //o
  );
  Majority maj_z10_0 (
    .port_i (xor_gate_z10_1_port_z[2:0]), //i
    .port_o (maj_z10_0_port_o          )  //o
  );
  Majority maj_z10_1 (
    .port_i (xor_gate_z10_1_port_z[2:0]), //i
    .port_o (maj_z10_1_port_o          )  //o
  );
  Majority maj_z10_2 (
    .port_i (xor_gate_z10_1_port_z[2:0]), //i
    .port_o (maj_z10_2_port_o          )  //o
  );
  xor_1 xor_gate_z00_z01 (
    .port_a (z_0_0[2:0]                  ), //i
    .port_b (z_0_1[2:0]                  ), //i
    .port_z (xor_gate_z00_z01_port_z[2:0])  //o
  );
  xor_1 xor_gate_z11_z10 (
    .port_a (z_1_1[2:0]                  ), //i
    .port_b (z_1_0[2:0]                  ), //i
    .port_z (xor_gate_z11_z10_port_z[2:0])  //o
  );
  always @(*) begin
    rand_0[0] = port_rand_0;
    rand_0[1] = port_rand_0;
    rand_0[2] = port_rand_0;
  end

  always @(*) begin
    rand_1[0] = port_rand_1;
    rand_1[1] = port_rand_1;
    rand_1[2] = port_rand_1;
  end

  always @(*) begin
    rand_2[0] = port_rand_2;
    rand_2[1] = port_rand_2;
    rand_2[2] = port_rand_2;
  end

  always @(*) begin
    rand_3[0] = port_rand_3;
    rand_3[1] = port_rand_3;
    rand_3[2] = port_rand_3;
  end

  assign v_tilde_0 = xor_gate_1_port_z;
  assign v_tilde_1 = xor_gate_3_port_z;
  assign port_z_0 = xor_gate_z00_z01_port_z;
  assign port_z_1 = xor_gate_z11_z10_port_z;
  always @(posedge clk) begin
    v_0[0] <= majority_408_port_o;
    v_1[0] <= majority_409_port_o;
    v_0[1] <= majority_410_port_o;
    v_1[1] <= majority_411_port_o;
    v_0[2] <= majority_412_port_o;
    v_1[2] <= majority_413_port_o;
    z_0_0 <= and_gate_z00_port_z;
    z_1_1 <= and_gate_z11_port_z;
    z_0_1[0] <= maj_z01_0_port_o;
    z_0_1[1] <= maj_z01_1_port_o;
    z_0_1[2] <= maj_z01_2_port_o;
    z_1_0[0] <= maj_z10_0_port_o;
    z_1_0[1] <= maj_z10_1_port_o;
    z_1_0[2] <= maj_z10_2_port_o;
  end


endmodule

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

module and_1 (
  input      [2:0]    port_a,
  input      [2:0]    port_b,
  output     [2:0]    port_z
);


  assign port_z = (port_a & port_b);

endmodule

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

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

module xor_1 (
  input      [2:0]    port_a,
  input      [2:0]    port_b,
  output     [2:0]    port_z
);


  assign port_z = (port_a ^ port_b);

endmodule
