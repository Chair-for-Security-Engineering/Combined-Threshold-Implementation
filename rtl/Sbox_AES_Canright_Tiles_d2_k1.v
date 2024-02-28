// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : Sbox_AES_Canright_Gadgets
// Git hash  : db593c14fe8e83f0a4a5d43cf13325e631d65148

`timescale 1ns/1ps

module Sbox_AES_Canright_Tiles_d2_k1 (
  input      [1:0]    port_i_0_0,
  input      [1:0]    port_i_0_1,
  input      [1:0]    port_i_0_2,
  input      [1:0]    port_i_0_3,
  input      [1:0]    port_i_0_4,
  input      [1:0]    port_i_0_5,
  input      [1:0]    port_i_0_6,
  input      [1:0]    port_i_0_7,
  input      [1:0]    port_i_1_0,
  input      [1:0]    port_i_1_1,
  input      [1:0]    port_i_1_2,
  input      [1:0]    port_i_1_3,
  input      [1:0]    port_i_1_4,
  input      [1:0]    port_i_1_5,
  input      [1:0]    port_i_1_6,
  input      [1:0]    port_i_1_7,
  input      [1:0]    port_i_2_0,
  input      [1:0]    port_i_2_1,
  input      [1:0]    port_i_2_2,
  input      [1:0]    port_i_2_3,
  input      [1:0]    port_i_2_4,
  input      [1:0]    port_i_2_5,
  input      [1:0]    port_i_2_6,
  input      [1:0]    port_i_2_7,
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
  input               port_r_136,
  input               port_r_137,
  input               port_r_138,
  input               port_r_139,
  input               port_r_140,
  input               port_r_141,
  input               port_r_142,
  input               port_r_143,
  input               port_r_144,
  input               port_r_145,
  input               port_r_146,
  input               port_r_147,
  input               port_r_148,
  input               port_r_149,
  input               port_r_150,
  input               port_r_151,
  input               port_r_152,
  input               port_r_153,
  input               port_r_154,
  input               port_r_155,
  input               port_r_156,
  input               port_r_157,
  input               port_r_158,
  input               port_r_159,
  input               port_r_160,
  input               port_r_161,
  input               port_r_162,
  input               port_r_163,
  input               port_r_164,
  input               port_r_165,
  input               port_r_166,
  input               port_r_167,
  input               port_r_168,
  input               port_r_169,
  input               port_r_170,
  input               port_r_171,
  input               port_r_172,
  input               port_r_173,
  input               port_r_174,
  input               port_r_175,
  input               port_r_176,
  input               port_r_177,
  input               port_r_178,
  input               port_r_179,
  input               port_r_180,
  input               port_r_181,
  input               port_r_182,
  input               port_r_183,
  input               port_r_184,
  input               port_r_185,
  input               port_r_186,
  input               port_r_187,
  input               port_r_188,
  input               port_r_189,
  input               port_r_190,
  input               port_r_191,
  input               port_r_192,
  input               port_r_193,
  input               port_r_194,
  input               port_r_195,
  input               port_r_196,
  input               port_r_197,
  input               port_r_198,
  input               port_r_199,
  input               port_r_200,
  input               port_r_201,
  input               port_r_202,
  input               port_r_203,
  input               port_r_204,
  input               port_r_205,
  input               port_r_206,
  input               port_r_207,
  input               port_r_208,
  input               port_r_209,
  input               port_r_210,
  input               port_r_211,
  input               port_r_212,
  input               port_r_213,
  input               port_r_214,
  input               port_r_215,
  output     [1:0]    port_o_0_0,
  output     [1:0]    port_o_0_1,
  output     [1:0]    port_o_0_2,
  output     [1:0]    port_o_0_3,
  output     [1:0]    port_o_0_4,
  output     [1:0]    port_o_0_5,
  output     [1:0]    port_o_0_6,
  output     [1:0]    port_o_0_7,
  output     [1:0]    port_o_1_0,
  output     [1:0]    port_o_1_1,
  output     [1:0]    port_o_1_2,
  output     [1:0]    port_o_1_3,
  output     [1:0]    port_o_1_4,
  output     [1:0]    port_o_1_5,
  output     [1:0]    port_o_1_6,
  output     [1:0]    port_o_1_7,
  output     [1:0]    port_o_2_0,
  output     [1:0]    port_o_2_1,
  output     [1:0]    port_o_2_2,
  output     [1:0]    port_o_2_3,
  output     [1:0]    port_o_2_4,
  output     [1:0]    port_o_2_5,
  output     [1:0]    port_o_2_6,
  output     [1:0]    port_o_2_7,
  output              port_det_flag_0_0,
  output              port_det_flag_0_1,
  output              port_det_flag_0_2,
  output              port_det_flag_0_3,
  output              port_det_flag_0_4,
  output              port_det_flag_0_5,
  output              port_det_flag_0_6,
  output              port_det_flag_0_7,
  output              port_det_flag_0_8,
  output              port_det_flag_0_9,
  output              port_det_flag_0_10,
  output              port_det_flag_0_11,
  output              port_det_flag_0_12,
  output              port_det_flag_0_13,
  output              port_det_flag_0_14,
  output              port_det_flag_0_15,
  output              port_det_flag_0_16,
  output              port_det_flag_0_17,
  output              port_det_flag_0_18,
  output              port_det_flag_0_19,
  output              port_det_flag_0_20,
  output              port_det_flag_0_21,
  output              port_det_flag_0_22,
  output              port_det_flag_0_23,
  output              port_det_flag_1_0,
  output              port_det_flag_1_1,
  output              port_det_flag_1_2,
  output              port_det_flag_1_3,
  output              port_det_flag_1_4,
  output              port_det_flag_1_5,
  output              port_det_flag_1_6,
  output              port_det_flag_1_7,
  output              port_det_flag_1_8,
  output              port_det_flag_1_9,
  output              port_det_flag_1_10,
  output              port_det_flag_1_11,
  output              port_det_flag_1_12,
  output              port_det_flag_1_13,
  output              port_det_flag_1_14,
  output              port_det_flag_1_15,
  output              port_det_flag_1_16,
  output              port_det_flag_1_17,
  output              port_det_flag_1_18,
  output              port_det_flag_1_19,
  output              port_det_flag_1_20,
  output              port_det_flag_1_21,
  output              port_det_flag_1_22,
  output              port_det_flag_1_23,
  output              port_det_flag_2_0,
  output              port_det_flag_2_1,
  output              port_det_flag_2_2,
  output              port_det_flag_2_3,
  output              port_det_flag_2_4,
  output              port_det_flag_2_5,
  output              port_det_flag_2_6,
  output              port_det_flag_2_7,
  output              port_det_flag_2_8,
  output              port_det_flag_2_9,
  output              port_det_flag_2_10,
  output              port_det_flag_2_11,
  output              port_det_flag_2_12,
  output              port_det_flag_2_13,
  output              port_det_flag_2_14,
  output              port_det_flag_2_15,
  output              port_det_flag_2_16,
  output              port_det_flag_2_17,
  output              port_det_flag_2_18,
  output              port_det_flag_2_19,
  output              port_det_flag_2_20,
  output              port_det_flag_2_21,
  output              port_det_flag_2_22,
  output              port_det_flag_2_23,
  output              port_det_flag_3_0,
  output              port_det_flag_3_1,
  output              port_det_flag_3_2,
  output              port_det_flag_3_3,
  output              port_det_flag_3_4,
  output              port_det_flag_3_5,
  output              port_det_flag_3_6,
  output              port_det_flag_3_7,
  output              port_det_flag_3_8,
  output              port_det_flag_3_9,
  output              port_det_flag_3_10,
  output              port_det_flag_3_11,
  output              port_det_flag_3_12,
  output              port_det_flag_3_13,
  output              port_det_flag_3_14,
  output              port_det_flag_3_15,
  output              port_det_flag_3_16,
  output              port_det_flag_3_17,
  output              port_det_flag_3_18,
  output              port_det_flag_3_19,
  output              port_det_flag_3_20,
  output              port_det_flag_3_21,
  output              port_det_flag_3_22,
  output              port_det_flag_3_23,
  output              port_det_flag_4_0,
  output              port_det_flag_4_1,
  output              port_det_flag_4_2,
  output              port_det_flag_4_3,
  output              port_det_flag_4_4,
  output              port_det_flag_4_5,
  output              port_det_flag_4_6,
  output              port_det_flag_4_7,
  output              port_det_flag_4_8,
  output              port_det_flag_4_9,
  output              port_det_flag_4_10,
  output              port_det_flag_4_11,
  output              port_det_flag_4_12,
  output              port_det_flag_4_13,
  output              port_det_flag_4_14,
  output              port_det_flag_4_15,
  output              port_det_flag_4_16,
  output              port_det_flag_4_17,
  output              port_det_flag_4_18,
  output              port_det_flag_4_19,
  output              port_det_flag_4_20,
  output              port_det_flag_4_21,
  output              port_det_flag_4_22,
  output              port_det_flag_4_23,
  output              port_det_flag_5_0,
  output              port_det_flag_5_1,
  output              port_det_flag_5_2,
  output              port_det_flag_5_3,
  output              port_det_flag_5_4,
  output              port_det_flag_5_5,
  output              port_det_flag_5_6,
  output              port_det_flag_5_7,
  output              port_det_flag_5_8,
  output              port_det_flag_5_9,
  output              port_det_flag_5_10,
  output              port_det_flag_5_11,
  output              port_det_flag_5_12,
  output              port_det_flag_5_13,
  output              port_det_flag_5_14,
  output              port_det_flag_5_15,
  output              port_det_flag_5_16,
  output              port_det_flag_5_17,
  output              port_det_flag_5_18,
  output              port_det_flag_5_19,
  output              port_det_flag_5_20,
  output              port_det_flag_5_21,
  output              port_det_flag_5_22,
  output              port_det_flag_5_23,
  output              port_det_flag_6_0,
  output              port_det_flag_6_1,
  output              port_det_flag_6_2,
  output              port_det_flag_6_3,
  output              port_det_flag_6_4,
  output              port_det_flag_6_5,
  output              port_det_flag_6_6,
  output              port_det_flag_6_7,
  output              port_det_flag_6_8,
  output              port_det_flag_6_9,
  output              port_det_flag_6_10,
  output              port_det_flag_6_11,
  output              port_det_flag_6_12,
  output              port_det_flag_6_13,
  output              port_det_flag_6_14,
  output              port_det_flag_6_15,
  output              port_det_flag_6_16,
  output              port_det_flag_6_17,
  output              port_det_flag_6_18,
  output              port_det_flag_6_19,
  output              port_det_flag_6_20,
  output              port_det_flag_6_21,
  output              port_det_flag_6_22,
  output              port_det_flag_6_23,
  output              port_det_flag_7_0,
  output              port_det_flag_7_1,
  output              port_det_flag_7_2,
  output              port_det_flag_7_3,
  output              port_det_flag_7_4,
  output              port_det_flag_7_5,
  output              port_det_flag_7_6,
  output              port_det_flag_7_7,
  output              port_det_flag_7_8,
  output              port_det_flag_7_9,
  output              port_det_flag_7_10,
  output              port_det_flag_7_11,
  output              port_det_flag_7_12,
  output              port_det_flag_7_13,
  output              port_det_flag_7_14,
  output              port_det_flag_7_15,
  output              port_det_flag_7_16,
  output              port_det_flag_7_17,
  output              port_det_flag_7_18,
  output              port_det_flag_7_19,
  output              port_det_flag_7_20,
  output              port_det_flag_7_21,
  output              port_det_flag_7_22,
  output              port_det_flag_7_23,
  output              port_det_flag_8_0,
  output              port_det_flag_8_1,
  output              port_det_flag_8_2,
  output              port_det_flag_8_3,
  output              port_det_flag_8_4,
  output              port_det_flag_8_5,
  output              port_det_flag_8_6,
  output              port_det_flag_8_7,
  output              port_det_flag_8_8,
  output              port_det_flag_8_9,
  output              port_det_flag_8_10,
  output              port_det_flag_8_11,
  output              port_det_flag_8_12,
  output              port_det_flag_8_13,
  output              port_det_flag_8_14,
  output              port_det_flag_8_15,
  output              port_det_flag_8_16,
  output              port_det_flag_8_17,
  output              port_det_flag_8_18,
  output              port_det_flag_8_19,
  output              port_det_flag_8_20,
  output              port_det_flag_8_21,
  output              port_det_flag_8_22,
  output              port_det_flag_8_23,
  output              port_det_flag_9_0,
  output              port_det_flag_9_1,
  output              port_det_flag_9_2,
  output              port_det_flag_9_3,
  output              port_det_flag_9_4,
  output              port_det_flag_9_5,
  output              port_det_flag_9_6,
  output              port_det_flag_9_7,
  output              port_det_flag_9_8,
  output              port_det_flag_9_9,
  output              port_det_flag_9_10,
  output              port_det_flag_9_11,
  output              port_det_flag_9_12,
  output              port_det_flag_9_13,
  output              port_det_flag_9_14,
  output              port_det_flag_9_15,
  output              port_det_flag_9_16,
  output              port_det_flag_9_17,
  output              port_det_flag_9_18,
  output              port_det_flag_9_19,
  output              port_det_flag_9_20,
  output              port_det_flag_9_21,
  output              port_det_flag_9_22,
  output              port_det_flag_9_23,
  output              port_det_flag_10_0,
  output              port_det_flag_10_1,
  output              port_det_flag_10_2,
  output              port_det_flag_10_3,
  output              port_det_flag_10_4,
  output              port_det_flag_10_5,
  output              port_det_flag_10_6,
  output              port_det_flag_10_7,
  output              port_det_flag_10_8,
  output              port_det_flag_10_9,
  output              port_det_flag_10_10,
  output              port_det_flag_10_11,
  output              port_det_flag_10_12,
  output              port_det_flag_10_13,
  output              port_det_flag_10_14,
  output              port_det_flag_10_15,
  output              port_det_flag_10_16,
  output              port_det_flag_10_17,
  output              port_det_flag_10_18,
  output              port_det_flag_10_19,
  output              port_det_flag_10_20,
  output              port_det_flag_10_21,
  output              port_det_flag_10_22,
  output              port_det_flag_10_23,
  output              port_det_flag_11_0,
  output              port_det_flag_11_1,
  output              port_det_flag_11_2,
  output              port_det_flag_11_3,
  output              port_det_flag_11_4,
  output              port_det_flag_11_5,
  output              port_det_flag_11_6,
  output              port_det_flag_11_7,
  output              port_det_flag_11_8,
  output              port_det_flag_11_9,
  output              port_det_flag_11_10,
  output              port_det_flag_11_11,
  output              port_det_flag_11_12,
  output              port_det_flag_11_13,
  output              port_det_flag_11_14,
  output              port_det_flag_11_15,
  output              port_det_flag_11_16,
  output              port_det_flag_11_17,
  output              port_det_flag_11_18,
  output              port_det_flag_11_19,
  output              port_det_flag_11_20,
  output              port_det_flag_11_21,
  output              port_det_flag_11_22,
  output              port_det_flag_11_23,
  output              port_det_flag_12_0,
  output              port_det_flag_12_1,
  output              port_det_flag_12_2,
  output              port_det_flag_12_3,
  output              port_det_flag_12_4,
  output              port_det_flag_12_5,
  output              port_det_flag_12_6,
  output              port_det_flag_12_7,
  output              port_det_flag_12_8,
  output              port_det_flag_12_9,
  output              port_det_flag_12_10,
  output              port_det_flag_12_11,
  output              port_det_flag_12_12,
  output              port_det_flag_12_13,
  output              port_det_flag_12_14,
  output              port_det_flag_12_15,
  output              port_det_flag_12_16,
  output              port_det_flag_12_17,
  output              port_det_flag_12_18,
  output              port_det_flag_12_19,
  output              port_det_flag_12_20,
  output              port_det_flag_12_21,
  output              port_det_flag_12_22,
  output              port_det_flag_12_23,
  output              port_det_flag_13_0,
  output              port_det_flag_13_1,
  output              port_det_flag_13_2,
  output              port_det_flag_13_3,
  output              port_det_flag_13_4,
  output              port_det_flag_13_5,
  output              port_det_flag_13_6,
  output              port_det_flag_13_7,
  output              port_det_flag_13_8,
  output              port_det_flag_13_9,
  output              port_det_flag_13_10,
  output              port_det_flag_13_11,
  output              port_det_flag_13_12,
  output              port_det_flag_13_13,
  output              port_det_flag_13_14,
  output              port_det_flag_13_15,
  output              port_det_flag_13_16,
  output              port_det_flag_13_17,
  output              port_det_flag_13_18,
  output              port_det_flag_13_19,
  output              port_det_flag_13_20,
  output              port_det_flag_13_21,
  output              port_det_flag_13_22,
  output              port_det_flag_13_23,
  output              port_det_flag_14_0,
  output              port_det_flag_14_1,
  output              port_det_flag_14_2,
  output              port_det_flag_14_3,
  output              port_det_flag_14_4,
  output              port_det_flag_14_5,
  output              port_det_flag_14_6,
  output              port_det_flag_14_7,
  output              port_det_flag_14_8,
  output              port_det_flag_14_9,
  output              port_det_flag_14_10,
  output              port_det_flag_14_11,
  output              port_det_flag_14_12,
  output              port_det_flag_14_13,
  output              port_det_flag_14_14,
  output              port_det_flag_14_15,
  output              port_det_flag_14_16,
  output              port_det_flag_14_17,
  output              port_det_flag_14_18,
  output              port_det_flag_14_19,
  output              port_det_flag_14_20,
  output              port_det_flag_14_21,
  output              port_det_flag_14_22,
  output              port_det_flag_14_23,
  output              port_det_flag_15_0,
  output              port_det_flag_15_1,
  output              port_det_flag_15_2,
  output              port_det_flag_15_3,
  output              port_det_flag_15_4,
  output              port_det_flag_15_5,
  output              port_det_flag_15_6,
  output              port_det_flag_15_7,
  output              port_det_flag_15_8,
  output              port_det_flag_15_9,
  output              port_det_flag_15_10,
  output              port_det_flag_15_11,
  output              port_det_flag_15_12,
  output              port_det_flag_15_13,
  output              port_det_flag_15_14,
  output              port_det_flag_15_15,
  output              port_det_flag_15_16,
  output              port_det_flag_15_17,
  output              port_det_flag_15_18,
  output              port_det_flag_15_19,
  output              port_det_flag_15_20,
  output              port_det_flag_15_21,
  output              port_det_flag_15_22,
  output              port_det_flag_15_23,
  output              port_det_flag_16_0,
  output              port_det_flag_16_1,
  output              port_det_flag_16_2,
  output              port_det_flag_16_3,
  output              port_det_flag_16_4,
  output              port_det_flag_16_5,
  output              port_det_flag_16_6,
  output              port_det_flag_16_7,
  output              port_det_flag_16_8,
  output              port_det_flag_16_9,
  output              port_det_flag_16_10,
  output              port_det_flag_16_11,
  output              port_det_flag_16_12,
  output              port_det_flag_16_13,
  output              port_det_flag_16_14,
  output              port_det_flag_16_15,
  output              port_det_flag_16_16,
  output              port_det_flag_16_17,
  output              port_det_flag_16_18,
  output              port_det_flag_16_19,
  output              port_det_flag_16_20,
  output              port_det_flag_16_21,
  output              port_det_flag_16_22,
  output              port_det_flag_16_23,
  output              port_det_flag_17_0,
  output              port_det_flag_17_1,
  output              port_det_flag_17_2,
  output              port_det_flag_17_3,
  output              port_det_flag_17_4,
  output              port_det_flag_17_5,
  output              port_det_flag_17_6,
  output              port_det_flag_17_7,
  output              port_det_flag_17_8,
  output              port_det_flag_17_9,
  output              port_det_flag_17_10,
  output              port_det_flag_17_11,
  output              port_det_flag_17_12,
  output              port_det_flag_17_13,
  output              port_det_flag_17_14,
  output              port_det_flag_17_15,
  output              port_det_flag_17_16,
  output              port_det_flag_17_17,
  output              port_det_flag_17_18,
  output              port_det_flag_17_19,
  output              port_det_flag_17_20,
  output              port_det_flag_17_21,
  output              port_det_flag_17_22,
  output              port_det_flag_17_23,
  output              port_det_flag_18_0,
  output              port_det_flag_18_1,
  output              port_det_flag_18_2,
  output              port_det_flag_18_3,
  output              port_det_flag_18_4,
  output              port_det_flag_18_5,
  output              port_det_flag_18_6,
  output              port_det_flag_18_7,
  output              port_det_flag_18_8,
  output              port_det_flag_18_9,
  output              port_det_flag_18_10,
  output              port_det_flag_18_11,
  output              port_det_flag_18_12,
  output              port_det_flag_18_13,
  output              port_det_flag_18_14,
  output              port_det_flag_18_15,
  output              port_det_flag_18_16,
  output              port_det_flag_18_17,
  output              port_det_flag_18_18,
  output              port_det_flag_18_19,
  output              port_det_flag_18_20,
  output              port_det_flag_18_21,
  output              port_det_flag_18_22,
  output              port_det_flag_18_23,
  output              port_det_flag_19_0,
  output              port_det_flag_19_1,
  output              port_det_flag_19_2,
  output              port_det_flag_19_3,
  output              port_det_flag_19_4,
  output              port_det_flag_19_5,
  output              port_det_flag_19_6,
  output              port_det_flag_19_7,
  output              port_det_flag_19_8,
  output              port_det_flag_19_9,
  output              port_det_flag_19_10,
  output              port_det_flag_19_11,
  output              port_det_flag_19_12,
  output              port_det_flag_19_13,
  output              port_det_flag_19_14,
  output              port_det_flag_19_15,
  output              port_det_flag_19_16,
  output              port_det_flag_19_17,
  output              port_det_flag_19_18,
  output              port_det_flag_19_19,
  output              port_det_flag_19_20,
  output              port_det_flag_19_21,
  output              port_det_flag_19_22,
  output              port_det_flag_19_23,
  output              port_det_flag_20_0,
  output              port_det_flag_20_1,
  output              port_det_flag_20_2,
  output              port_det_flag_20_3,
  output              port_det_flag_20_4,
  output              port_det_flag_20_5,
  output              port_det_flag_20_6,
  output              port_det_flag_20_7,
  output              port_det_flag_20_8,
  output              port_det_flag_20_9,
  output              port_det_flag_20_10,
  output              port_det_flag_20_11,
  output              port_det_flag_20_12,
  output              port_det_flag_20_13,
  output              port_det_flag_20_14,
  output              port_det_flag_20_15,
  output              port_det_flag_20_16,
  output              port_det_flag_20_17,
  output              port_det_flag_20_18,
  output              port_det_flag_20_19,
  output              port_det_flag_20_20,
  output              port_det_flag_20_21,
  output              port_det_flag_20_22,
  output              port_det_flag_20_23,
  output              port_det_flag_21_0,
  output              port_det_flag_21_1,
  output              port_det_flag_21_2,
  output              port_det_flag_21_3,
  output              port_det_flag_21_4,
  output              port_det_flag_21_5,
  output              port_det_flag_21_6,
  output              port_det_flag_21_7,
  output              port_det_flag_21_8,
  output              port_det_flag_21_9,
  output              port_det_flag_21_10,
  output              port_det_flag_21_11,
  output              port_det_flag_21_12,
  output              port_det_flag_21_13,
  output              port_det_flag_21_14,
  output              port_det_flag_21_15,
  output              port_det_flag_21_16,
  output              port_det_flag_21_17,
  output              port_det_flag_21_18,
  output              port_det_flag_21_19,
  output              port_det_flag_21_20,
  output              port_det_flag_21_21,
  output              port_det_flag_21_22,
  output              port_det_flag_21_23,
  output              port_det_flag_22_0,
  output              port_det_flag_22_1,
  output              port_det_flag_22_2,
  output              port_det_flag_22_3,
  output              port_det_flag_22_4,
  output              port_det_flag_22_5,
  output              port_det_flag_22_6,
  output              port_det_flag_22_7,
  output              port_det_flag_22_8,
  output              port_det_flag_22_9,
  output              port_det_flag_22_10,
  output              port_det_flag_22_11,
  output              port_det_flag_22_12,
  output              port_det_flag_22_13,
  output              port_det_flag_22_14,
  output              port_det_flag_22_15,
  output              port_det_flag_22_16,
  output              port_det_flag_22_17,
  output              port_det_flag_22_18,
  output              port_det_flag_22_19,
  output              port_det_flag_22_20,
  output              port_det_flag_22_21,
  output              port_det_flag_22_22,
  output              port_det_flag_22_23,
  output              port_det_flag_23_0,
  output              port_det_flag_23_1,
  output              port_det_flag_23_2,
  output              port_det_flag_23_3,
  output              port_det_flag_23_4,
  output              port_det_flag_23_5,
  output              port_det_flag_23_6,
  output              port_det_flag_23_7,
  output              port_det_flag_23_8,
  output              port_det_flag_23_9,
  output              port_det_flag_23_10,
  output              port_det_flag_23_11,
  output              port_det_flag_23_12,
  output              port_det_flag_23_13,
  output              port_det_flag_23_14,
  output              port_det_flag_23_15,
  output              port_det_flag_23_16,
  output              port_det_flag_23_17,
  output              port_det_flag_23_18,
  output              port_det_flag_23_19,
  output              port_det_flag_23_20,
  output              port_det_flag_23_21,
  output              port_det_flag_23_22,
  output              port_det_flag_23_23,
  output              port_det_flag_24_0,
  output              port_det_flag_24_1,
  output              port_det_flag_24_2,
  output              port_det_flag_24_3,
  output              port_det_flag_24_4,
  output              port_det_flag_24_5,
  output              port_det_flag_24_6,
  output              port_det_flag_24_7,
  output              port_det_flag_24_8,
  output              port_det_flag_24_9,
  output              port_det_flag_24_10,
  output              port_det_flag_24_11,
  output              port_det_flag_24_12,
  output              port_det_flag_24_13,
  output              port_det_flag_24_14,
  output              port_det_flag_24_15,
  output              port_det_flag_24_16,
  output              port_det_flag_24_17,
  output              port_det_flag_24_18,
  output              port_det_flag_24_19,
  output              port_det_flag_24_20,
  output              port_det_flag_24_21,
  output              port_det_flag_24_22,
  output              port_det_flag_24_23,
  output              port_det_flag_25_0,
  output              port_det_flag_25_1,
  output              port_det_flag_25_2,
  output              port_det_flag_25_3,
  output              port_det_flag_25_4,
  output              port_det_flag_25_5,
  output              port_det_flag_25_6,
  output              port_det_flag_25_7,
  output              port_det_flag_25_8,
  output              port_det_flag_25_9,
  output              port_det_flag_25_10,
  output              port_det_flag_25_11,
  output              port_det_flag_25_12,
  output              port_det_flag_25_13,
  output              port_det_flag_25_14,
  output              port_det_flag_25_15,
  output              port_det_flag_25_16,
  output              port_det_flag_25_17,
  output              port_det_flag_25_18,
  output              port_det_flag_25_19,
  output              port_det_flag_25_20,
  output              port_det_flag_25_21,
  output              port_det_flag_25_22,
  output              port_det_flag_25_23,
  output              port_det_flag_26_0,
  output              port_det_flag_26_1,
  output              port_det_flag_26_2,
  output              port_det_flag_26_3,
  output              port_det_flag_26_4,
  output              port_det_flag_26_5,
  output              port_det_flag_26_6,
  output              port_det_flag_26_7,
  output              port_det_flag_26_8,
  output              port_det_flag_26_9,
  output              port_det_flag_26_10,
  output              port_det_flag_26_11,
  output              port_det_flag_26_12,
  output              port_det_flag_26_13,
  output              port_det_flag_26_14,
  output              port_det_flag_26_15,
  output              port_det_flag_26_16,
  output              port_det_flag_26_17,
  output              port_det_flag_26_18,
  output              port_det_flag_26_19,
  output              port_det_flag_26_20,
  output              port_det_flag_26_21,
  output              port_det_flag_26_22,
  output              port_det_flag_26_23,
  input               clk,
  input               reset
);

  wire       [1:0]    linMap_port_o_0_0;
  wire       [1:0]    linMap_port_o_0_1;
  wire       [1:0]    linMap_port_o_0_2;
  wire       [1:0]    linMap_port_o_0_3;
  wire       [1:0]    linMap_port_o_0_4;
  wire       [1:0]    linMap_port_o_0_5;
  wire       [1:0]    linMap_port_o_0_6;
  wire       [1:0]    linMap_port_o_0_7;
  wire       [1:0]    linMap_port_o_1_0;
  wire       [1:0]    linMap_port_o_1_1;
  wire       [1:0]    linMap_port_o_1_2;
  wire       [1:0]    linMap_port_o_1_3;
  wire       [1:0]    linMap_port_o_1_4;
  wire       [1:0]    linMap_port_o_1_5;
  wire       [1:0]    linMap_port_o_1_6;
  wire       [1:0]    linMap_port_o_1_7;
  wire       [1:0]    linMap_port_o_2_0;
  wire       [1:0]    linMap_port_o_2_1;
  wire       [1:0]    linMap_port_o_2_2;
  wire       [1:0]    linMap_port_o_2_3;
  wire       [1:0]    linMap_port_o_2_4;
  wire       [1:0]    linMap_port_o_2_5;
  wire       [1:0]    linMap_port_o_2_6;
  wire       [1:0]    linMap_port_o_2_7;
  wire       [1:0]    inv_port_o_0_0;
  wire       [1:0]    inv_port_o_0_1;
  wire       [1:0]    inv_port_o_0_2;
  wire       [1:0]    inv_port_o_0_3;
  wire       [1:0]    inv_port_o_0_4;
  wire       [1:0]    inv_port_o_0_5;
  wire       [1:0]    inv_port_o_0_6;
  wire       [1:0]    inv_port_o_0_7;
  wire       [1:0]    inv_port_o_1_0;
  wire       [1:0]    inv_port_o_1_1;
  wire       [1:0]    inv_port_o_1_2;
  wire       [1:0]    inv_port_o_1_3;
  wire       [1:0]    inv_port_o_1_4;
  wire       [1:0]    inv_port_o_1_5;
  wire       [1:0]    inv_port_o_1_6;
  wire       [1:0]    inv_port_o_1_7;
  wire       [1:0]    inv_port_o_2_0;
  wire       [1:0]    inv_port_o_2_1;
  wire       [1:0]    inv_port_o_2_2;
  wire       [1:0]    inv_port_o_2_3;
  wire       [1:0]    inv_port_o_2_4;
  wire       [1:0]    inv_port_o_2_5;
  wire       [1:0]    inv_port_o_2_6;
  wire       [1:0]    inv_port_o_2_7;
  wire                inv_port_det_flag_0_0;
  wire                inv_port_det_flag_0_1;
  wire                inv_port_det_flag_0_2;
  wire                inv_port_det_flag_0_3;
  wire                inv_port_det_flag_0_4;
  wire                inv_port_det_flag_0_5;
  wire                inv_port_det_flag_0_6;
  wire                inv_port_det_flag_0_7;
  wire                inv_port_det_flag_0_8;
  wire                inv_port_det_flag_0_9;
  wire                inv_port_det_flag_0_10;
  wire                inv_port_det_flag_0_11;
  wire                inv_port_det_flag_0_12;
  wire                inv_port_det_flag_0_13;
  wire                inv_port_det_flag_0_14;
  wire                inv_port_det_flag_0_15;
  wire                inv_port_det_flag_0_16;
  wire                inv_port_det_flag_0_17;
  wire                inv_port_det_flag_0_18;
  wire                inv_port_det_flag_0_19;
  wire                inv_port_det_flag_0_20;
  wire                inv_port_det_flag_0_21;
  wire                inv_port_det_flag_0_22;
  wire                inv_port_det_flag_0_23;
  wire                inv_port_det_flag_1_0;
  wire                inv_port_det_flag_1_1;
  wire                inv_port_det_flag_1_2;
  wire                inv_port_det_flag_1_3;
  wire                inv_port_det_flag_1_4;
  wire                inv_port_det_flag_1_5;
  wire                inv_port_det_flag_1_6;
  wire                inv_port_det_flag_1_7;
  wire                inv_port_det_flag_1_8;
  wire                inv_port_det_flag_1_9;
  wire                inv_port_det_flag_1_10;
  wire                inv_port_det_flag_1_11;
  wire                inv_port_det_flag_1_12;
  wire                inv_port_det_flag_1_13;
  wire                inv_port_det_flag_1_14;
  wire                inv_port_det_flag_1_15;
  wire                inv_port_det_flag_1_16;
  wire                inv_port_det_flag_1_17;
  wire                inv_port_det_flag_1_18;
  wire                inv_port_det_flag_1_19;
  wire                inv_port_det_flag_1_20;
  wire                inv_port_det_flag_1_21;
  wire                inv_port_det_flag_1_22;
  wire                inv_port_det_flag_1_23;
  wire                inv_port_det_flag_2_0;
  wire                inv_port_det_flag_2_1;
  wire                inv_port_det_flag_2_2;
  wire                inv_port_det_flag_2_3;
  wire                inv_port_det_flag_2_4;
  wire                inv_port_det_flag_2_5;
  wire                inv_port_det_flag_2_6;
  wire                inv_port_det_flag_2_7;
  wire                inv_port_det_flag_2_8;
  wire                inv_port_det_flag_2_9;
  wire                inv_port_det_flag_2_10;
  wire                inv_port_det_flag_2_11;
  wire                inv_port_det_flag_2_12;
  wire                inv_port_det_flag_2_13;
  wire                inv_port_det_flag_2_14;
  wire                inv_port_det_flag_2_15;
  wire                inv_port_det_flag_2_16;
  wire                inv_port_det_flag_2_17;
  wire                inv_port_det_flag_2_18;
  wire                inv_port_det_flag_2_19;
  wire                inv_port_det_flag_2_20;
  wire                inv_port_det_flag_2_21;
  wire                inv_port_det_flag_2_22;
  wire                inv_port_det_flag_2_23;
  wire                inv_port_det_flag_3_0;
  wire                inv_port_det_flag_3_1;
  wire                inv_port_det_flag_3_2;
  wire                inv_port_det_flag_3_3;
  wire                inv_port_det_flag_3_4;
  wire                inv_port_det_flag_3_5;
  wire                inv_port_det_flag_3_6;
  wire                inv_port_det_flag_3_7;
  wire                inv_port_det_flag_3_8;
  wire                inv_port_det_flag_3_9;
  wire                inv_port_det_flag_3_10;
  wire                inv_port_det_flag_3_11;
  wire                inv_port_det_flag_3_12;
  wire                inv_port_det_flag_3_13;
  wire                inv_port_det_flag_3_14;
  wire                inv_port_det_flag_3_15;
  wire                inv_port_det_flag_3_16;
  wire                inv_port_det_flag_3_17;
  wire                inv_port_det_flag_3_18;
  wire                inv_port_det_flag_3_19;
  wire                inv_port_det_flag_3_20;
  wire                inv_port_det_flag_3_21;
  wire                inv_port_det_flag_3_22;
  wire                inv_port_det_flag_3_23;
  wire                inv_port_det_flag_4_0;
  wire                inv_port_det_flag_4_1;
  wire                inv_port_det_flag_4_2;
  wire                inv_port_det_flag_4_3;
  wire                inv_port_det_flag_4_4;
  wire                inv_port_det_flag_4_5;
  wire                inv_port_det_flag_4_6;
  wire                inv_port_det_flag_4_7;
  wire                inv_port_det_flag_4_8;
  wire                inv_port_det_flag_4_9;
  wire                inv_port_det_flag_4_10;
  wire                inv_port_det_flag_4_11;
  wire                inv_port_det_flag_4_12;
  wire                inv_port_det_flag_4_13;
  wire                inv_port_det_flag_4_14;
  wire                inv_port_det_flag_4_15;
  wire                inv_port_det_flag_4_16;
  wire                inv_port_det_flag_4_17;
  wire                inv_port_det_flag_4_18;
  wire                inv_port_det_flag_4_19;
  wire                inv_port_det_flag_4_20;
  wire                inv_port_det_flag_4_21;
  wire                inv_port_det_flag_4_22;
  wire                inv_port_det_flag_4_23;
  wire                inv_port_det_flag_5_0;
  wire                inv_port_det_flag_5_1;
  wire                inv_port_det_flag_5_2;
  wire                inv_port_det_flag_5_3;
  wire                inv_port_det_flag_5_4;
  wire                inv_port_det_flag_5_5;
  wire                inv_port_det_flag_5_6;
  wire                inv_port_det_flag_5_7;
  wire                inv_port_det_flag_5_8;
  wire                inv_port_det_flag_5_9;
  wire                inv_port_det_flag_5_10;
  wire                inv_port_det_flag_5_11;
  wire                inv_port_det_flag_5_12;
  wire                inv_port_det_flag_5_13;
  wire                inv_port_det_flag_5_14;
  wire                inv_port_det_flag_5_15;
  wire                inv_port_det_flag_5_16;
  wire                inv_port_det_flag_5_17;
  wire                inv_port_det_flag_5_18;
  wire                inv_port_det_flag_5_19;
  wire                inv_port_det_flag_5_20;
  wire                inv_port_det_flag_5_21;
  wire                inv_port_det_flag_5_22;
  wire                inv_port_det_flag_5_23;
  wire                inv_port_det_flag_6_0;
  wire                inv_port_det_flag_6_1;
  wire                inv_port_det_flag_6_2;
  wire                inv_port_det_flag_6_3;
  wire                inv_port_det_flag_6_4;
  wire                inv_port_det_flag_6_5;
  wire                inv_port_det_flag_6_6;
  wire                inv_port_det_flag_6_7;
  wire                inv_port_det_flag_6_8;
  wire                inv_port_det_flag_6_9;
  wire                inv_port_det_flag_6_10;
  wire                inv_port_det_flag_6_11;
  wire                inv_port_det_flag_6_12;
  wire                inv_port_det_flag_6_13;
  wire                inv_port_det_flag_6_14;
  wire                inv_port_det_flag_6_15;
  wire                inv_port_det_flag_6_16;
  wire                inv_port_det_flag_6_17;
  wire                inv_port_det_flag_6_18;
  wire                inv_port_det_flag_6_19;
  wire                inv_port_det_flag_6_20;
  wire                inv_port_det_flag_6_21;
  wire                inv_port_det_flag_6_22;
  wire                inv_port_det_flag_6_23;
  wire                inv_port_det_flag_7_0;
  wire                inv_port_det_flag_7_1;
  wire                inv_port_det_flag_7_2;
  wire                inv_port_det_flag_7_3;
  wire                inv_port_det_flag_7_4;
  wire                inv_port_det_flag_7_5;
  wire                inv_port_det_flag_7_6;
  wire                inv_port_det_flag_7_7;
  wire                inv_port_det_flag_7_8;
  wire                inv_port_det_flag_7_9;
  wire                inv_port_det_flag_7_10;
  wire                inv_port_det_flag_7_11;
  wire                inv_port_det_flag_7_12;
  wire                inv_port_det_flag_7_13;
  wire                inv_port_det_flag_7_14;
  wire                inv_port_det_flag_7_15;
  wire                inv_port_det_flag_7_16;
  wire                inv_port_det_flag_7_17;
  wire                inv_port_det_flag_7_18;
  wire                inv_port_det_flag_7_19;
  wire                inv_port_det_flag_7_20;
  wire                inv_port_det_flag_7_21;
  wire                inv_port_det_flag_7_22;
  wire                inv_port_det_flag_7_23;
  wire                inv_port_det_flag_8_0;
  wire                inv_port_det_flag_8_1;
  wire                inv_port_det_flag_8_2;
  wire                inv_port_det_flag_8_3;
  wire                inv_port_det_flag_8_4;
  wire                inv_port_det_flag_8_5;
  wire                inv_port_det_flag_8_6;
  wire                inv_port_det_flag_8_7;
  wire                inv_port_det_flag_8_8;
  wire                inv_port_det_flag_8_9;
  wire                inv_port_det_flag_8_10;
  wire                inv_port_det_flag_8_11;
  wire                inv_port_det_flag_8_12;
  wire                inv_port_det_flag_8_13;
  wire                inv_port_det_flag_8_14;
  wire                inv_port_det_flag_8_15;
  wire                inv_port_det_flag_8_16;
  wire                inv_port_det_flag_8_17;
  wire                inv_port_det_flag_8_18;
  wire                inv_port_det_flag_8_19;
  wire                inv_port_det_flag_8_20;
  wire                inv_port_det_flag_8_21;
  wire                inv_port_det_flag_8_22;
  wire                inv_port_det_flag_8_23;
  wire                inv_port_det_flag_9_0;
  wire                inv_port_det_flag_9_1;
  wire                inv_port_det_flag_9_2;
  wire                inv_port_det_flag_9_3;
  wire                inv_port_det_flag_9_4;
  wire                inv_port_det_flag_9_5;
  wire                inv_port_det_flag_9_6;
  wire                inv_port_det_flag_9_7;
  wire                inv_port_det_flag_9_8;
  wire                inv_port_det_flag_9_9;
  wire                inv_port_det_flag_9_10;
  wire                inv_port_det_flag_9_11;
  wire                inv_port_det_flag_9_12;
  wire                inv_port_det_flag_9_13;
  wire                inv_port_det_flag_9_14;
  wire                inv_port_det_flag_9_15;
  wire                inv_port_det_flag_9_16;
  wire                inv_port_det_flag_9_17;
  wire                inv_port_det_flag_9_18;
  wire                inv_port_det_flag_9_19;
  wire                inv_port_det_flag_9_20;
  wire                inv_port_det_flag_9_21;
  wire                inv_port_det_flag_9_22;
  wire                inv_port_det_flag_9_23;
  wire                inv_port_det_flag_10_0;
  wire                inv_port_det_flag_10_1;
  wire                inv_port_det_flag_10_2;
  wire                inv_port_det_flag_10_3;
  wire                inv_port_det_flag_10_4;
  wire                inv_port_det_flag_10_5;
  wire                inv_port_det_flag_10_6;
  wire                inv_port_det_flag_10_7;
  wire                inv_port_det_flag_10_8;
  wire                inv_port_det_flag_10_9;
  wire                inv_port_det_flag_10_10;
  wire                inv_port_det_flag_10_11;
  wire                inv_port_det_flag_10_12;
  wire                inv_port_det_flag_10_13;
  wire                inv_port_det_flag_10_14;
  wire                inv_port_det_flag_10_15;
  wire                inv_port_det_flag_10_16;
  wire                inv_port_det_flag_10_17;
  wire                inv_port_det_flag_10_18;
  wire                inv_port_det_flag_10_19;
  wire                inv_port_det_flag_10_20;
  wire                inv_port_det_flag_10_21;
  wire                inv_port_det_flag_10_22;
  wire                inv_port_det_flag_10_23;
  wire                inv_port_det_flag_11_0;
  wire                inv_port_det_flag_11_1;
  wire                inv_port_det_flag_11_2;
  wire                inv_port_det_flag_11_3;
  wire                inv_port_det_flag_11_4;
  wire                inv_port_det_flag_11_5;
  wire                inv_port_det_flag_11_6;
  wire                inv_port_det_flag_11_7;
  wire                inv_port_det_flag_11_8;
  wire                inv_port_det_flag_11_9;
  wire                inv_port_det_flag_11_10;
  wire                inv_port_det_flag_11_11;
  wire                inv_port_det_flag_11_12;
  wire                inv_port_det_flag_11_13;
  wire                inv_port_det_flag_11_14;
  wire                inv_port_det_flag_11_15;
  wire                inv_port_det_flag_11_16;
  wire                inv_port_det_flag_11_17;
  wire                inv_port_det_flag_11_18;
  wire                inv_port_det_flag_11_19;
  wire                inv_port_det_flag_11_20;
  wire                inv_port_det_flag_11_21;
  wire                inv_port_det_flag_11_22;
  wire                inv_port_det_flag_11_23;
  wire                inv_port_det_flag_12_0;
  wire                inv_port_det_flag_12_1;
  wire                inv_port_det_flag_12_2;
  wire                inv_port_det_flag_12_3;
  wire                inv_port_det_flag_12_4;
  wire                inv_port_det_flag_12_5;
  wire                inv_port_det_flag_12_6;
  wire                inv_port_det_flag_12_7;
  wire                inv_port_det_flag_12_8;
  wire                inv_port_det_flag_12_9;
  wire                inv_port_det_flag_12_10;
  wire                inv_port_det_flag_12_11;
  wire                inv_port_det_flag_12_12;
  wire                inv_port_det_flag_12_13;
  wire                inv_port_det_flag_12_14;
  wire                inv_port_det_flag_12_15;
  wire                inv_port_det_flag_12_16;
  wire                inv_port_det_flag_12_17;
  wire                inv_port_det_flag_12_18;
  wire                inv_port_det_flag_12_19;
  wire                inv_port_det_flag_12_20;
  wire                inv_port_det_flag_12_21;
  wire                inv_port_det_flag_12_22;
  wire                inv_port_det_flag_12_23;
  wire                inv_port_det_flag_13_0;
  wire                inv_port_det_flag_13_1;
  wire                inv_port_det_flag_13_2;
  wire                inv_port_det_flag_13_3;
  wire                inv_port_det_flag_13_4;
  wire                inv_port_det_flag_13_5;
  wire                inv_port_det_flag_13_6;
  wire                inv_port_det_flag_13_7;
  wire                inv_port_det_flag_13_8;
  wire                inv_port_det_flag_13_9;
  wire                inv_port_det_flag_13_10;
  wire                inv_port_det_flag_13_11;
  wire                inv_port_det_flag_13_12;
  wire                inv_port_det_flag_13_13;
  wire                inv_port_det_flag_13_14;
  wire                inv_port_det_flag_13_15;
  wire                inv_port_det_flag_13_16;
  wire                inv_port_det_flag_13_17;
  wire                inv_port_det_flag_13_18;
  wire                inv_port_det_flag_13_19;
  wire                inv_port_det_flag_13_20;
  wire                inv_port_det_flag_13_21;
  wire                inv_port_det_flag_13_22;
  wire                inv_port_det_flag_13_23;
  wire                inv_port_det_flag_14_0;
  wire                inv_port_det_flag_14_1;
  wire                inv_port_det_flag_14_2;
  wire                inv_port_det_flag_14_3;
  wire                inv_port_det_flag_14_4;
  wire                inv_port_det_flag_14_5;
  wire                inv_port_det_flag_14_6;
  wire                inv_port_det_flag_14_7;
  wire                inv_port_det_flag_14_8;
  wire                inv_port_det_flag_14_9;
  wire                inv_port_det_flag_14_10;
  wire                inv_port_det_flag_14_11;
  wire                inv_port_det_flag_14_12;
  wire                inv_port_det_flag_14_13;
  wire                inv_port_det_flag_14_14;
  wire                inv_port_det_flag_14_15;
  wire                inv_port_det_flag_14_16;
  wire                inv_port_det_flag_14_17;
  wire                inv_port_det_flag_14_18;
  wire                inv_port_det_flag_14_19;
  wire                inv_port_det_flag_14_20;
  wire                inv_port_det_flag_14_21;
  wire                inv_port_det_flag_14_22;
  wire                inv_port_det_flag_14_23;
  wire                inv_port_det_flag_15_0;
  wire                inv_port_det_flag_15_1;
  wire                inv_port_det_flag_15_2;
  wire                inv_port_det_flag_15_3;
  wire                inv_port_det_flag_15_4;
  wire                inv_port_det_flag_15_5;
  wire                inv_port_det_flag_15_6;
  wire                inv_port_det_flag_15_7;
  wire                inv_port_det_flag_15_8;
  wire                inv_port_det_flag_15_9;
  wire                inv_port_det_flag_15_10;
  wire                inv_port_det_flag_15_11;
  wire                inv_port_det_flag_15_12;
  wire                inv_port_det_flag_15_13;
  wire                inv_port_det_flag_15_14;
  wire                inv_port_det_flag_15_15;
  wire                inv_port_det_flag_15_16;
  wire                inv_port_det_flag_15_17;
  wire                inv_port_det_flag_15_18;
  wire                inv_port_det_flag_15_19;
  wire                inv_port_det_flag_15_20;
  wire                inv_port_det_flag_15_21;
  wire                inv_port_det_flag_15_22;
  wire                inv_port_det_flag_15_23;
  wire                inv_port_det_flag_16_0;
  wire                inv_port_det_flag_16_1;
  wire                inv_port_det_flag_16_2;
  wire                inv_port_det_flag_16_3;
  wire                inv_port_det_flag_16_4;
  wire                inv_port_det_flag_16_5;
  wire                inv_port_det_flag_16_6;
  wire                inv_port_det_flag_16_7;
  wire                inv_port_det_flag_16_8;
  wire                inv_port_det_flag_16_9;
  wire                inv_port_det_flag_16_10;
  wire                inv_port_det_flag_16_11;
  wire                inv_port_det_flag_16_12;
  wire                inv_port_det_flag_16_13;
  wire                inv_port_det_flag_16_14;
  wire                inv_port_det_flag_16_15;
  wire                inv_port_det_flag_16_16;
  wire                inv_port_det_flag_16_17;
  wire                inv_port_det_flag_16_18;
  wire                inv_port_det_flag_16_19;
  wire                inv_port_det_flag_16_20;
  wire                inv_port_det_flag_16_21;
  wire                inv_port_det_flag_16_22;
  wire                inv_port_det_flag_16_23;
  wire                inv_port_det_flag_17_0;
  wire                inv_port_det_flag_17_1;
  wire                inv_port_det_flag_17_2;
  wire                inv_port_det_flag_17_3;
  wire                inv_port_det_flag_17_4;
  wire                inv_port_det_flag_17_5;
  wire                inv_port_det_flag_17_6;
  wire                inv_port_det_flag_17_7;
  wire                inv_port_det_flag_17_8;
  wire                inv_port_det_flag_17_9;
  wire                inv_port_det_flag_17_10;
  wire                inv_port_det_flag_17_11;
  wire                inv_port_det_flag_17_12;
  wire                inv_port_det_flag_17_13;
  wire                inv_port_det_flag_17_14;
  wire                inv_port_det_flag_17_15;
  wire                inv_port_det_flag_17_16;
  wire                inv_port_det_flag_17_17;
  wire                inv_port_det_flag_17_18;
  wire                inv_port_det_flag_17_19;
  wire                inv_port_det_flag_17_20;
  wire                inv_port_det_flag_17_21;
  wire                inv_port_det_flag_17_22;
  wire                inv_port_det_flag_17_23;
  wire                inv_port_det_flag_18_0;
  wire                inv_port_det_flag_18_1;
  wire                inv_port_det_flag_18_2;
  wire                inv_port_det_flag_18_3;
  wire                inv_port_det_flag_18_4;
  wire                inv_port_det_flag_18_5;
  wire                inv_port_det_flag_18_6;
  wire                inv_port_det_flag_18_7;
  wire                inv_port_det_flag_18_8;
  wire                inv_port_det_flag_18_9;
  wire                inv_port_det_flag_18_10;
  wire                inv_port_det_flag_18_11;
  wire                inv_port_det_flag_18_12;
  wire                inv_port_det_flag_18_13;
  wire                inv_port_det_flag_18_14;
  wire                inv_port_det_flag_18_15;
  wire                inv_port_det_flag_18_16;
  wire                inv_port_det_flag_18_17;
  wire                inv_port_det_flag_18_18;
  wire                inv_port_det_flag_18_19;
  wire                inv_port_det_flag_18_20;
  wire                inv_port_det_flag_18_21;
  wire                inv_port_det_flag_18_22;
  wire                inv_port_det_flag_18_23;
  wire                inv_port_det_flag_19_0;
  wire                inv_port_det_flag_19_1;
  wire                inv_port_det_flag_19_2;
  wire                inv_port_det_flag_19_3;
  wire                inv_port_det_flag_19_4;
  wire                inv_port_det_flag_19_5;
  wire                inv_port_det_flag_19_6;
  wire                inv_port_det_flag_19_7;
  wire                inv_port_det_flag_19_8;
  wire                inv_port_det_flag_19_9;
  wire                inv_port_det_flag_19_10;
  wire                inv_port_det_flag_19_11;
  wire                inv_port_det_flag_19_12;
  wire                inv_port_det_flag_19_13;
  wire                inv_port_det_flag_19_14;
  wire                inv_port_det_flag_19_15;
  wire                inv_port_det_flag_19_16;
  wire                inv_port_det_flag_19_17;
  wire                inv_port_det_flag_19_18;
  wire                inv_port_det_flag_19_19;
  wire                inv_port_det_flag_19_20;
  wire                inv_port_det_flag_19_21;
  wire                inv_port_det_flag_19_22;
  wire                inv_port_det_flag_19_23;
  wire                inv_port_det_flag_20_0;
  wire                inv_port_det_flag_20_1;
  wire                inv_port_det_flag_20_2;
  wire                inv_port_det_flag_20_3;
  wire                inv_port_det_flag_20_4;
  wire                inv_port_det_flag_20_5;
  wire                inv_port_det_flag_20_6;
  wire                inv_port_det_flag_20_7;
  wire                inv_port_det_flag_20_8;
  wire                inv_port_det_flag_20_9;
  wire                inv_port_det_flag_20_10;
  wire                inv_port_det_flag_20_11;
  wire                inv_port_det_flag_20_12;
  wire                inv_port_det_flag_20_13;
  wire                inv_port_det_flag_20_14;
  wire                inv_port_det_flag_20_15;
  wire                inv_port_det_flag_20_16;
  wire                inv_port_det_flag_20_17;
  wire                inv_port_det_flag_20_18;
  wire                inv_port_det_flag_20_19;
  wire                inv_port_det_flag_20_20;
  wire                inv_port_det_flag_20_21;
  wire                inv_port_det_flag_20_22;
  wire                inv_port_det_flag_20_23;
  wire                inv_port_det_flag_21_0;
  wire                inv_port_det_flag_21_1;
  wire                inv_port_det_flag_21_2;
  wire                inv_port_det_flag_21_3;
  wire                inv_port_det_flag_21_4;
  wire                inv_port_det_flag_21_5;
  wire                inv_port_det_flag_21_6;
  wire                inv_port_det_flag_21_7;
  wire                inv_port_det_flag_21_8;
  wire                inv_port_det_flag_21_9;
  wire                inv_port_det_flag_21_10;
  wire                inv_port_det_flag_21_11;
  wire                inv_port_det_flag_21_12;
  wire                inv_port_det_flag_21_13;
  wire                inv_port_det_flag_21_14;
  wire                inv_port_det_flag_21_15;
  wire                inv_port_det_flag_21_16;
  wire                inv_port_det_flag_21_17;
  wire                inv_port_det_flag_21_18;
  wire                inv_port_det_flag_21_19;
  wire                inv_port_det_flag_21_20;
  wire                inv_port_det_flag_21_21;
  wire                inv_port_det_flag_21_22;
  wire                inv_port_det_flag_21_23;
  wire                inv_port_det_flag_22_0;
  wire                inv_port_det_flag_22_1;
  wire                inv_port_det_flag_22_2;
  wire                inv_port_det_flag_22_3;
  wire                inv_port_det_flag_22_4;
  wire                inv_port_det_flag_22_5;
  wire                inv_port_det_flag_22_6;
  wire                inv_port_det_flag_22_7;
  wire                inv_port_det_flag_22_8;
  wire                inv_port_det_flag_22_9;
  wire                inv_port_det_flag_22_10;
  wire                inv_port_det_flag_22_11;
  wire                inv_port_det_flag_22_12;
  wire                inv_port_det_flag_22_13;
  wire                inv_port_det_flag_22_14;
  wire                inv_port_det_flag_22_15;
  wire                inv_port_det_flag_22_16;
  wire                inv_port_det_flag_22_17;
  wire                inv_port_det_flag_22_18;
  wire                inv_port_det_flag_22_19;
  wire                inv_port_det_flag_22_20;
  wire                inv_port_det_flag_22_21;
  wire                inv_port_det_flag_22_22;
  wire                inv_port_det_flag_22_23;
  wire                inv_port_det_flag_23_0;
  wire                inv_port_det_flag_23_1;
  wire                inv_port_det_flag_23_2;
  wire                inv_port_det_flag_23_3;
  wire                inv_port_det_flag_23_4;
  wire                inv_port_det_flag_23_5;
  wire                inv_port_det_flag_23_6;
  wire                inv_port_det_flag_23_7;
  wire                inv_port_det_flag_23_8;
  wire                inv_port_det_flag_23_9;
  wire                inv_port_det_flag_23_10;
  wire                inv_port_det_flag_23_11;
  wire                inv_port_det_flag_23_12;
  wire                inv_port_det_flag_23_13;
  wire                inv_port_det_flag_23_14;
  wire                inv_port_det_flag_23_15;
  wire                inv_port_det_flag_23_16;
  wire                inv_port_det_flag_23_17;
  wire                inv_port_det_flag_23_18;
  wire                inv_port_det_flag_23_19;
  wire                inv_port_det_flag_23_20;
  wire                inv_port_det_flag_23_21;
  wire                inv_port_det_flag_23_22;
  wire                inv_port_det_flag_23_23;
  wire                inv_port_det_flag_24_0;
  wire                inv_port_det_flag_24_1;
  wire                inv_port_det_flag_24_2;
  wire                inv_port_det_flag_24_3;
  wire                inv_port_det_flag_24_4;
  wire                inv_port_det_flag_24_5;
  wire                inv_port_det_flag_24_6;
  wire                inv_port_det_flag_24_7;
  wire                inv_port_det_flag_24_8;
  wire                inv_port_det_flag_24_9;
  wire                inv_port_det_flag_24_10;
  wire                inv_port_det_flag_24_11;
  wire                inv_port_det_flag_24_12;
  wire                inv_port_det_flag_24_13;
  wire                inv_port_det_flag_24_14;
  wire                inv_port_det_flag_24_15;
  wire                inv_port_det_flag_24_16;
  wire                inv_port_det_flag_24_17;
  wire                inv_port_det_flag_24_18;
  wire                inv_port_det_flag_24_19;
  wire                inv_port_det_flag_24_20;
  wire                inv_port_det_flag_24_21;
  wire                inv_port_det_flag_24_22;
  wire                inv_port_det_flag_24_23;
  wire                inv_port_det_flag_25_0;
  wire                inv_port_det_flag_25_1;
  wire                inv_port_det_flag_25_2;
  wire                inv_port_det_flag_25_3;
  wire                inv_port_det_flag_25_4;
  wire                inv_port_det_flag_25_5;
  wire                inv_port_det_flag_25_6;
  wire                inv_port_det_flag_25_7;
  wire                inv_port_det_flag_25_8;
  wire                inv_port_det_flag_25_9;
  wire                inv_port_det_flag_25_10;
  wire                inv_port_det_flag_25_11;
  wire                inv_port_det_flag_25_12;
  wire                inv_port_det_flag_25_13;
  wire                inv_port_det_flag_25_14;
  wire                inv_port_det_flag_25_15;
  wire                inv_port_det_flag_25_16;
  wire                inv_port_det_flag_25_17;
  wire                inv_port_det_flag_25_18;
  wire                inv_port_det_flag_25_19;
  wire                inv_port_det_flag_25_20;
  wire                inv_port_det_flag_25_21;
  wire                inv_port_det_flag_25_22;
  wire                inv_port_det_flag_25_23;
  wire                inv_port_det_flag_26_0;
  wire                inv_port_det_flag_26_1;
  wire                inv_port_det_flag_26_2;
  wire                inv_port_det_flag_26_3;
  wire                inv_port_det_flag_26_4;
  wire                inv_port_det_flag_26_5;
  wire                inv_port_det_flag_26_6;
  wire                inv_port_det_flag_26_7;
  wire                inv_port_det_flag_26_8;
  wire                inv_port_det_flag_26_9;
  wire                inv_port_det_flag_26_10;
  wire                inv_port_det_flag_26_11;
  wire                inv_port_det_flag_26_12;
  wire                inv_port_det_flag_26_13;
  wire                inv_port_det_flag_26_14;
  wire                inv_port_det_flag_26_15;
  wire                inv_port_det_flag_26_16;
  wire                inv_port_det_flag_26_17;
  wire                inv_port_det_flag_26_18;
  wire                inv_port_det_flag_26_19;
  wire                inv_port_det_flag_26_20;
  wire                inv_port_det_flag_26_21;
  wire                inv_port_det_flag_26_22;
  wire                inv_port_det_flag_26_23;
  wire       [1:0]    invLinMap_port_o_0_0;
  wire       [1:0]    invLinMap_port_o_0_1;
  wire       [1:0]    invLinMap_port_o_0_2;
  wire       [1:0]    invLinMap_port_o_0_3;
  wire       [1:0]    invLinMap_port_o_0_4;
  wire       [1:0]    invLinMap_port_o_0_5;
  wire       [1:0]    invLinMap_port_o_0_6;
  wire       [1:0]    invLinMap_port_o_0_7;
  wire       [1:0]    invLinMap_port_o_1_0;
  wire       [1:0]    invLinMap_port_o_1_1;
  wire       [1:0]    invLinMap_port_o_1_2;
  wire       [1:0]    invLinMap_port_o_1_3;
  wire       [1:0]    invLinMap_port_o_1_4;
  wire       [1:0]    invLinMap_port_o_1_5;
  wire       [1:0]    invLinMap_port_o_1_6;
  wire       [1:0]    invLinMap_port_o_1_7;
  wire       [1:0]    invLinMap_port_o_2_0;
  wire       [1:0]    invLinMap_port_o_2_1;
  wire       [1:0]    invLinMap_port_o_2_2;
  wire       [1:0]    invLinMap_port_o_2_3;
  wire       [1:0]    invLinMap_port_o_2_4;
  wire       [1:0]    invLinMap_port_o_2_5;
  wire       [1:0]    invLinMap_port_o_2_6;
  wire       [1:0]    invLinMap_port_o_2_7;

  Shared_LinearMapping linMap (
    .port_i_0_0 (port_i_0_0[1:0]       ), //i
    .port_i_0_1 (port_i_0_1[1:0]       ), //i
    .port_i_0_2 (port_i_0_2[1:0]       ), //i
    .port_i_0_3 (port_i_0_3[1:0]       ), //i
    .port_i_0_4 (port_i_0_4[1:0]       ), //i
    .port_i_0_5 (port_i_0_5[1:0]       ), //i
    .port_i_0_6 (port_i_0_6[1:0]       ), //i
    .port_i_0_7 (port_i_0_7[1:0]       ), //i
    .port_i_1_0 (port_i_1_0[1:0]       ), //i
    .port_i_1_1 (port_i_1_1[1:0]       ), //i
    .port_i_1_2 (port_i_1_2[1:0]       ), //i
    .port_i_1_3 (port_i_1_3[1:0]       ), //i
    .port_i_1_4 (port_i_1_4[1:0]       ), //i
    .port_i_1_5 (port_i_1_5[1:0]       ), //i
    .port_i_1_6 (port_i_1_6[1:0]       ), //i
    .port_i_1_7 (port_i_1_7[1:0]       ), //i
    .port_i_2_0 (port_i_2_0[1:0]       ), //i
    .port_i_2_1 (port_i_2_1[1:0]       ), //i
    .port_i_2_2 (port_i_2_2[1:0]       ), //i
    .port_i_2_3 (port_i_2_3[1:0]       ), //i
    .port_i_2_4 (port_i_2_4[1:0]       ), //i
    .port_i_2_5 (port_i_2_5[1:0]       ), //i
    .port_i_2_6 (port_i_2_6[1:0]       ), //i
    .port_i_2_7 (port_i_2_7[1:0]       ), //i
    .port_o_0_0 (linMap_port_o_0_0[1:0]), //o
    .port_o_0_1 (linMap_port_o_0_1[1:0]), //o
    .port_o_0_2 (linMap_port_o_0_2[1:0]), //o
    .port_o_0_3 (linMap_port_o_0_3[1:0]), //o
    .port_o_0_4 (linMap_port_o_0_4[1:0]), //o
    .port_o_0_5 (linMap_port_o_0_5[1:0]), //o
    .port_o_0_6 (linMap_port_o_0_6[1:0]), //o
    .port_o_0_7 (linMap_port_o_0_7[1:0]), //o
    .port_o_1_0 (linMap_port_o_1_0[1:0]), //o
    .port_o_1_1 (linMap_port_o_1_1[1:0]), //o
    .port_o_1_2 (linMap_port_o_1_2[1:0]), //o
    .port_o_1_3 (linMap_port_o_1_3[1:0]), //o
    .port_o_1_4 (linMap_port_o_1_4[1:0]), //o
    .port_o_1_5 (linMap_port_o_1_5[1:0]), //o
    .port_o_1_6 (linMap_port_o_1_6[1:0]), //o
    .port_o_1_7 (linMap_port_o_1_7[1:0]), //o
    .port_o_2_0 (linMap_port_o_2_0[1:0]), //o
    .port_o_2_1 (linMap_port_o_2_1[1:0]), //o
    .port_o_2_2 (linMap_port_o_2_2[1:0]), //o
    .port_o_2_3 (linMap_port_o_2_3[1:0]), //o
    .port_o_2_4 (linMap_port_o_2_4[1:0]), //o
    .port_o_2_5 (linMap_port_o_2_5[1:0]), //o
    .port_o_2_6 (linMap_port_o_2_6[1:0]), //o
    .port_o_2_7 (linMap_port_o_2_7[1:0])  //o
  );
  Shared_GF_INV_8 inv (
    .port_i_0_0          (linMap_port_o_0_0[1:0] ), //i
    .port_i_0_1          (linMap_port_o_0_1[1:0] ), //i
    .port_i_0_2          (linMap_port_o_0_2[1:0] ), //i
    .port_i_0_3          (linMap_port_o_0_3[1:0] ), //i
    .port_i_0_4          (linMap_port_o_0_4[1:0] ), //i
    .port_i_0_5          (linMap_port_o_0_5[1:0] ), //i
    .port_i_0_6          (linMap_port_o_0_6[1:0] ), //i
    .port_i_0_7          (linMap_port_o_0_7[1:0] ), //i
    .port_i_1_0          (linMap_port_o_1_0[1:0] ), //i
    .port_i_1_1          (linMap_port_o_1_1[1:0] ), //i
    .port_i_1_2          (linMap_port_o_1_2[1:0] ), //i
    .port_i_1_3          (linMap_port_o_1_3[1:0] ), //i
    .port_i_1_4          (linMap_port_o_1_4[1:0] ), //i
    .port_i_1_5          (linMap_port_o_1_5[1:0] ), //i
    .port_i_1_6          (linMap_port_o_1_6[1:0] ), //i
    .port_i_1_7          (linMap_port_o_1_7[1:0] ), //i
    .port_i_2_0          (linMap_port_o_2_0[1:0] ), //i
    .port_i_2_1          (linMap_port_o_2_1[1:0] ), //i
    .port_i_2_2          (linMap_port_o_2_2[1:0] ), //i
    .port_i_2_3          (linMap_port_o_2_3[1:0] ), //i
    .port_i_2_4          (linMap_port_o_2_4[1:0] ), //i
    .port_i_2_5          (linMap_port_o_2_5[1:0] ), //i
    .port_i_2_6          (linMap_port_o_2_6[1:0] ), //i
    .port_i_2_7          (linMap_port_o_2_7[1:0] ), //i
    .port_rand_0         (port_r_0               ), //i
    .port_rand_1         (port_r_1               ), //i
    .port_rand_2         (port_r_2               ), //i
    .port_rand_3         (port_r_3               ), //i
    .port_rand_4         (port_r_4               ), //i
    .port_rand_5         (port_r_5               ), //i
    .port_rand_6         (port_r_6               ), //i
    .port_rand_7         (port_r_7               ), //i
    .port_rand_8         (port_r_8               ), //i
    .port_rand_9         (port_r_9               ), //i
    .port_rand_10        (port_r_10              ), //i
    .port_rand_11        (port_r_11              ), //i
    .port_rand_12        (port_r_12              ), //i
    .port_rand_13        (port_r_13              ), //i
    .port_rand_14        (port_r_14              ), //i
    .port_rand_15        (port_r_15              ), //i
    .port_rand_16        (port_r_16              ), //i
    .port_rand_17        (port_r_17              ), //i
    .port_rand_18        (port_r_18              ), //i
    .port_rand_19        (port_r_19              ), //i
    .port_rand_20        (port_r_20              ), //i
    .port_rand_21        (port_r_21              ), //i
    .port_rand_22        (port_r_22              ), //i
    .port_rand_23        (port_r_23              ), //i
    .port_rand_24        (port_r_24              ), //i
    .port_rand_25        (port_r_25              ), //i
    .port_rand_26        (port_r_26              ), //i
    .port_rand_27        (port_r_27              ), //i
    .port_rand_28        (port_r_28              ), //i
    .port_rand_29        (port_r_29              ), //i
    .port_rand_30        (port_r_30              ), //i
    .port_rand_31        (port_r_31              ), //i
    .port_rand_32        (port_r_32              ), //i
    .port_rand_33        (port_r_33              ), //i
    .port_rand_34        (port_r_34              ), //i
    .port_rand_35        (port_r_35              ), //i
    .port_rand_36        (port_r_36              ), //i
    .port_rand_37        (port_r_37              ), //i
    .port_rand_38        (port_r_38              ), //i
    .port_rand_39        (port_r_39              ), //i
    .port_rand_40        (port_r_40              ), //i
    .port_rand_41        (port_r_41              ), //i
    .port_rand_42        (port_r_42              ), //i
    .port_rand_43        (port_r_43              ), //i
    .port_rand_44        (port_r_44              ), //i
    .port_rand_45        (port_r_45              ), //i
    .port_rand_46        (port_r_46              ), //i
    .port_rand_47        (port_r_47              ), //i
    .port_rand_48        (port_r_48              ), //i
    .port_rand_49        (port_r_49              ), //i
    .port_rand_50        (port_r_50              ), //i
    .port_rand_51        (port_r_51              ), //i
    .port_rand_52        (port_r_52              ), //i
    .port_rand_53        (port_r_53              ), //i
    .port_rand_54        (port_r_54              ), //i
    .port_rand_55        (port_r_55              ), //i
    .port_rand_56        (port_r_56              ), //i
    .port_rand_57        (port_r_57              ), //i
    .port_rand_58        (port_r_58              ), //i
    .port_rand_59        (port_r_59              ), //i
    .port_rand_60        (port_r_60              ), //i
    .port_rand_61        (port_r_61              ), //i
    .port_rand_62        (port_r_62              ), //i
    .port_rand_63        (port_r_63              ), //i
    .port_rand_64        (port_r_64              ), //i
    .port_rand_65        (port_r_65              ), //i
    .port_rand_66        (port_r_66              ), //i
    .port_rand_67        (port_r_67              ), //i
    .port_rand_68        (port_r_68              ), //i
    .port_rand_69        (port_r_69              ), //i
    .port_rand_70        (port_r_70              ), //i
    .port_rand_71        (port_r_71              ), //i
    .port_rand_72        (port_r_72              ), //i
    .port_rand_73        (port_r_73              ), //i
    .port_rand_74        (port_r_74              ), //i
    .port_rand_75        (port_r_75              ), //i
    .port_rand_76        (port_r_76              ), //i
    .port_rand_77        (port_r_77              ), //i
    .port_rand_78        (port_r_78              ), //i
    .port_rand_79        (port_r_79              ), //i
    .port_rand_80        (port_r_80              ), //i
    .port_rand_81        (port_r_81              ), //i
    .port_rand_82        (port_r_82              ), //i
    .port_rand_83        (port_r_83              ), //i
    .port_rand_84        (port_r_84              ), //i
    .port_rand_85        (port_r_85              ), //i
    .port_rand_86        (port_r_86              ), //i
    .port_rand_87        (port_r_87              ), //i
    .port_rand_88        (port_r_88              ), //i
    .port_rand_89        (port_r_89              ), //i
    .port_rand_90        (port_r_90              ), //i
    .port_rand_91        (port_r_91              ), //i
    .port_rand_92        (port_r_92              ), //i
    .port_rand_93        (port_r_93              ), //i
    .port_rand_94        (port_r_94              ), //i
    .port_rand_95        (port_r_95              ), //i
    .port_rand_96        (port_r_96              ), //i
    .port_rand_97        (port_r_97              ), //i
    .port_rand_98        (port_r_98              ), //i
    .port_rand_99        (port_r_99              ), //i
    .port_rand_100       (port_r_100             ), //i
    .port_rand_101       (port_r_101             ), //i
    .port_rand_102       (port_r_102             ), //i
    .port_rand_103       (port_r_103             ), //i
    .port_rand_104       (port_r_104             ), //i
    .port_rand_105       (port_r_105             ), //i
    .port_rand_106       (port_r_106             ), //i
    .port_rand_107       (port_r_107             ), //i
    .port_rand_108       (port_r_108             ), //i
    .port_rand_109       (port_r_109             ), //i
    .port_rand_110       (port_r_110             ), //i
    .port_rand_111       (port_r_111             ), //i
    .port_rand_112       (port_r_112             ), //i
    .port_rand_113       (port_r_113             ), //i
    .port_rand_114       (port_r_114             ), //i
    .port_rand_115       (port_r_115             ), //i
    .port_rand_116       (port_r_116             ), //i
    .port_rand_117       (port_r_117             ), //i
    .port_rand_118       (port_r_118             ), //i
    .port_rand_119       (port_r_119             ), //i
    .port_rand_120       (port_r_120             ), //i
    .port_rand_121       (port_r_121             ), //i
    .port_rand_122       (port_r_122             ), //i
    .port_rand_123       (port_r_123             ), //i
    .port_rand_124       (port_r_124             ), //i
    .port_rand_125       (port_r_125             ), //i
    .port_rand_126       (port_r_126             ), //i
    .port_rand_127       (port_r_127             ), //i
    .port_rand_128       (port_r_128             ), //i
    .port_rand_129       (port_r_129             ), //i
    .port_rand_130       (port_r_130             ), //i
    .port_rand_131       (port_r_131             ), //i
    .port_rand_132       (port_r_132             ), //i
    .port_rand_133       (port_r_133             ), //i
    .port_rand_134       (port_r_134             ), //i
    .port_rand_135       (port_r_135             ), //i
    .port_rand_136       (port_r_136             ), //i
    .port_rand_137       (port_r_137             ), //i
    .port_rand_138       (port_r_138             ), //i
    .port_rand_139       (port_r_139             ), //i
    .port_rand_140       (port_r_140             ), //i
    .port_rand_141       (port_r_141             ), //i
    .port_rand_142       (port_r_142             ), //i
    .port_rand_143       (port_r_143             ), //i
    .port_rand_144       (port_r_144             ), //i
    .port_rand_145       (port_r_145             ), //i
    .port_rand_146       (port_r_146             ), //i
    .port_rand_147       (port_r_147             ), //i
    .port_rand_148       (port_r_148             ), //i
    .port_rand_149       (port_r_149             ), //i
    .port_rand_150       (port_r_150             ), //i
    .port_rand_151       (port_r_151             ), //i
    .port_rand_152       (port_r_152             ), //i
    .port_rand_153       (port_r_153             ), //i
    .port_rand_154       (port_r_154             ), //i
    .port_rand_155       (port_r_155             ), //i
    .port_rand_156       (port_r_156             ), //i
    .port_rand_157       (port_r_157             ), //i
    .port_rand_158       (port_r_158             ), //i
    .port_rand_159       (port_r_159             ), //i
    .port_rand_160       (port_r_160             ), //i
    .port_rand_161       (port_r_161             ), //i
    .port_rand_162       (port_r_162             ), //i
    .port_rand_163       (port_r_163             ), //i
    .port_rand_164       (port_r_164             ), //i
    .port_rand_165       (port_r_165             ), //i
    .port_rand_166       (port_r_166             ), //i
    .port_rand_167       (port_r_167             ), //i
    .port_rand_168       (port_r_168             ), //i
    .port_rand_169       (port_r_169             ), //i
    .port_rand_170       (port_r_170             ), //i
    .port_rand_171       (port_r_171             ), //i
    .port_rand_172       (port_r_172             ), //i
    .port_rand_173       (port_r_173             ), //i
    .port_rand_174       (port_r_174             ), //i
    .port_rand_175       (port_r_175             ), //i
    .port_rand_176       (port_r_176             ), //i
    .port_rand_177       (port_r_177             ), //i
    .port_rand_178       (port_r_178             ), //i
    .port_rand_179       (port_r_179             ), //i
    .port_rand_180       (port_r_180             ), //i
    .port_rand_181       (port_r_181             ), //i
    .port_rand_182       (port_r_182             ), //i
    .port_rand_183       (port_r_183             ), //i
    .port_rand_184       (port_r_184             ), //i
    .port_rand_185       (port_r_185             ), //i
    .port_rand_186       (port_r_186             ), //i
    .port_rand_187       (port_r_187             ), //i
    .port_rand_188       (port_r_188             ), //i
    .port_rand_189       (port_r_189             ), //i
    .port_rand_190       (port_r_190             ), //i
    .port_rand_191       (port_r_191             ), //i
    .port_rand_192       (port_r_192             ), //i
    .port_rand_193       (port_r_193             ), //i
    .port_rand_194       (port_r_194             ), //i
    .port_rand_195       (port_r_195             ), //i
    .port_rand_196       (port_r_196             ), //i
    .port_rand_197       (port_r_197             ), //i
    .port_rand_198       (port_r_198             ), //i
    .port_rand_199       (port_r_199             ), //i
    .port_rand_200       (port_r_200             ), //i
    .port_rand_201       (port_r_201             ), //i
    .port_rand_202       (port_r_202             ), //i
    .port_rand_203       (port_r_203             ), //i
    .port_rand_204       (port_r_204             ), //i
    .port_rand_205       (port_r_205             ), //i
    .port_rand_206       (port_r_206             ), //i
    .port_rand_207       (port_r_207             ), //i
    .port_rand_208       (port_r_208             ), //i
    .port_rand_209       (port_r_209             ), //i
    .port_rand_210       (port_r_210             ), //i
    .port_rand_211       (port_r_211             ), //i
    .port_rand_212       (port_r_212             ), //i
    .port_rand_213       (port_r_213             ), //i
    .port_rand_214       (port_r_214             ), //i
    .port_rand_215       (port_r_215             ), //i
    .port_o_0_0          (inv_port_o_0_0[1:0]    ), //o
    .port_o_0_1          (inv_port_o_0_1[1:0]    ), //o
    .port_o_0_2          (inv_port_o_0_2[1:0]    ), //o
    .port_o_0_3          (inv_port_o_0_3[1:0]    ), //o
    .port_o_0_4          (inv_port_o_0_4[1:0]    ), //o
    .port_o_0_5          (inv_port_o_0_5[1:0]    ), //o
    .port_o_0_6          (inv_port_o_0_6[1:0]    ), //o
    .port_o_0_7          (inv_port_o_0_7[1:0]    ), //o
    .port_o_1_0          (inv_port_o_1_0[1:0]    ), //o
    .port_o_1_1          (inv_port_o_1_1[1:0]    ), //o
    .port_o_1_2          (inv_port_o_1_2[1:0]    ), //o
    .port_o_1_3          (inv_port_o_1_3[1:0]    ), //o
    .port_o_1_4          (inv_port_o_1_4[1:0]    ), //o
    .port_o_1_5          (inv_port_o_1_5[1:0]    ), //o
    .port_o_1_6          (inv_port_o_1_6[1:0]    ), //o
    .port_o_1_7          (inv_port_o_1_7[1:0]    ), //o
    .port_o_2_0          (inv_port_o_2_0[1:0]    ), //o
    .port_o_2_1          (inv_port_o_2_1[1:0]    ), //o
    .port_o_2_2          (inv_port_o_2_2[1:0]    ), //o
    .port_o_2_3          (inv_port_o_2_3[1:0]    ), //o
    .port_o_2_4          (inv_port_o_2_4[1:0]    ), //o
    .port_o_2_5          (inv_port_o_2_5[1:0]    ), //o
    .port_o_2_6          (inv_port_o_2_6[1:0]    ), //o
    .port_o_2_7          (inv_port_o_2_7[1:0]    ), //o
    .port_det_flag_0_0   (inv_port_det_flag_0_0  ), //o
    .port_det_flag_0_1   (inv_port_det_flag_0_1  ), //o
    .port_det_flag_0_2   (inv_port_det_flag_0_2  ), //o
    .port_det_flag_0_3   (inv_port_det_flag_0_3  ), //o
    .port_det_flag_0_4   (inv_port_det_flag_0_4  ), //o
    .port_det_flag_0_5   (inv_port_det_flag_0_5  ), //o
    .port_det_flag_0_6   (inv_port_det_flag_0_6  ), //o
    .port_det_flag_0_7   (inv_port_det_flag_0_7  ), //o
    .port_det_flag_0_8   (inv_port_det_flag_0_8  ), //o
    .port_det_flag_0_9   (inv_port_det_flag_0_9  ), //o
    .port_det_flag_0_10  (inv_port_det_flag_0_10 ), //o
    .port_det_flag_0_11  (inv_port_det_flag_0_11 ), //o
    .port_det_flag_0_12  (inv_port_det_flag_0_12 ), //o
    .port_det_flag_0_13  (inv_port_det_flag_0_13 ), //o
    .port_det_flag_0_14  (inv_port_det_flag_0_14 ), //o
    .port_det_flag_0_15  (inv_port_det_flag_0_15 ), //o
    .port_det_flag_0_16  (inv_port_det_flag_0_16 ), //o
    .port_det_flag_0_17  (inv_port_det_flag_0_17 ), //o
    .port_det_flag_0_18  (inv_port_det_flag_0_18 ), //o
    .port_det_flag_0_19  (inv_port_det_flag_0_19 ), //o
    .port_det_flag_0_20  (inv_port_det_flag_0_20 ), //o
    .port_det_flag_0_21  (inv_port_det_flag_0_21 ), //o
    .port_det_flag_0_22  (inv_port_det_flag_0_22 ), //o
    .port_det_flag_0_23  (inv_port_det_flag_0_23 ), //o
    .port_det_flag_1_0   (inv_port_det_flag_1_0  ), //o
    .port_det_flag_1_1   (inv_port_det_flag_1_1  ), //o
    .port_det_flag_1_2   (inv_port_det_flag_1_2  ), //o
    .port_det_flag_1_3   (inv_port_det_flag_1_3  ), //o
    .port_det_flag_1_4   (inv_port_det_flag_1_4  ), //o
    .port_det_flag_1_5   (inv_port_det_flag_1_5  ), //o
    .port_det_flag_1_6   (inv_port_det_flag_1_6  ), //o
    .port_det_flag_1_7   (inv_port_det_flag_1_7  ), //o
    .port_det_flag_1_8   (inv_port_det_flag_1_8  ), //o
    .port_det_flag_1_9   (inv_port_det_flag_1_9  ), //o
    .port_det_flag_1_10  (inv_port_det_flag_1_10 ), //o
    .port_det_flag_1_11  (inv_port_det_flag_1_11 ), //o
    .port_det_flag_1_12  (inv_port_det_flag_1_12 ), //o
    .port_det_flag_1_13  (inv_port_det_flag_1_13 ), //o
    .port_det_flag_1_14  (inv_port_det_flag_1_14 ), //o
    .port_det_flag_1_15  (inv_port_det_flag_1_15 ), //o
    .port_det_flag_1_16  (inv_port_det_flag_1_16 ), //o
    .port_det_flag_1_17  (inv_port_det_flag_1_17 ), //o
    .port_det_flag_1_18  (inv_port_det_flag_1_18 ), //o
    .port_det_flag_1_19  (inv_port_det_flag_1_19 ), //o
    .port_det_flag_1_20  (inv_port_det_flag_1_20 ), //o
    .port_det_flag_1_21  (inv_port_det_flag_1_21 ), //o
    .port_det_flag_1_22  (inv_port_det_flag_1_22 ), //o
    .port_det_flag_1_23  (inv_port_det_flag_1_23 ), //o
    .port_det_flag_2_0   (inv_port_det_flag_2_0  ), //o
    .port_det_flag_2_1   (inv_port_det_flag_2_1  ), //o
    .port_det_flag_2_2   (inv_port_det_flag_2_2  ), //o
    .port_det_flag_2_3   (inv_port_det_flag_2_3  ), //o
    .port_det_flag_2_4   (inv_port_det_flag_2_4  ), //o
    .port_det_flag_2_5   (inv_port_det_flag_2_5  ), //o
    .port_det_flag_2_6   (inv_port_det_flag_2_6  ), //o
    .port_det_flag_2_7   (inv_port_det_flag_2_7  ), //o
    .port_det_flag_2_8   (inv_port_det_flag_2_8  ), //o
    .port_det_flag_2_9   (inv_port_det_flag_2_9  ), //o
    .port_det_flag_2_10  (inv_port_det_flag_2_10 ), //o
    .port_det_flag_2_11  (inv_port_det_flag_2_11 ), //o
    .port_det_flag_2_12  (inv_port_det_flag_2_12 ), //o
    .port_det_flag_2_13  (inv_port_det_flag_2_13 ), //o
    .port_det_flag_2_14  (inv_port_det_flag_2_14 ), //o
    .port_det_flag_2_15  (inv_port_det_flag_2_15 ), //o
    .port_det_flag_2_16  (inv_port_det_flag_2_16 ), //o
    .port_det_flag_2_17  (inv_port_det_flag_2_17 ), //o
    .port_det_flag_2_18  (inv_port_det_flag_2_18 ), //o
    .port_det_flag_2_19  (inv_port_det_flag_2_19 ), //o
    .port_det_flag_2_20  (inv_port_det_flag_2_20 ), //o
    .port_det_flag_2_21  (inv_port_det_flag_2_21 ), //o
    .port_det_flag_2_22  (inv_port_det_flag_2_22 ), //o
    .port_det_flag_2_23  (inv_port_det_flag_2_23 ), //o
    .port_det_flag_3_0   (inv_port_det_flag_3_0  ), //o
    .port_det_flag_3_1   (inv_port_det_flag_3_1  ), //o
    .port_det_flag_3_2   (inv_port_det_flag_3_2  ), //o
    .port_det_flag_3_3   (inv_port_det_flag_3_3  ), //o
    .port_det_flag_3_4   (inv_port_det_flag_3_4  ), //o
    .port_det_flag_3_5   (inv_port_det_flag_3_5  ), //o
    .port_det_flag_3_6   (inv_port_det_flag_3_6  ), //o
    .port_det_flag_3_7   (inv_port_det_flag_3_7  ), //o
    .port_det_flag_3_8   (inv_port_det_flag_3_8  ), //o
    .port_det_flag_3_9   (inv_port_det_flag_3_9  ), //o
    .port_det_flag_3_10  (inv_port_det_flag_3_10 ), //o
    .port_det_flag_3_11  (inv_port_det_flag_3_11 ), //o
    .port_det_flag_3_12  (inv_port_det_flag_3_12 ), //o
    .port_det_flag_3_13  (inv_port_det_flag_3_13 ), //o
    .port_det_flag_3_14  (inv_port_det_flag_3_14 ), //o
    .port_det_flag_3_15  (inv_port_det_flag_3_15 ), //o
    .port_det_flag_3_16  (inv_port_det_flag_3_16 ), //o
    .port_det_flag_3_17  (inv_port_det_flag_3_17 ), //o
    .port_det_flag_3_18  (inv_port_det_flag_3_18 ), //o
    .port_det_flag_3_19  (inv_port_det_flag_3_19 ), //o
    .port_det_flag_3_20  (inv_port_det_flag_3_20 ), //o
    .port_det_flag_3_21  (inv_port_det_flag_3_21 ), //o
    .port_det_flag_3_22  (inv_port_det_flag_3_22 ), //o
    .port_det_flag_3_23  (inv_port_det_flag_3_23 ), //o
    .port_det_flag_4_0   (inv_port_det_flag_4_0  ), //o
    .port_det_flag_4_1   (inv_port_det_flag_4_1  ), //o
    .port_det_flag_4_2   (inv_port_det_flag_4_2  ), //o
    .port_det_flag_4_3   (inv_port_det_flag_4_3  ), //o
    .port_det_flag_4_4   (inv_port_det_flag_4_4  ), //o
    .port_det_flag_4_5   (inv_port_det_flag_4_5  ), //o
    .port_det_flag_4_6   (inv_port_det_flag_4_6  ), //o
    .port_det_flag_4_7   (inv_port_det_flag_4_7  ), //o
    .port_det_flag_4_8   (inv_port_det_flag_4_8  ), //o
    .port_det_flag_4_9   (inv_port_det_flag_4_9  ), //o
    .port_det_flag_4_10  (inv_port_det_flag_4_10 ), //o
    .port_det_flag_4_11  (inv_port_det_flag_4_11 ), //o
    .port_det_flag_4_12  (inv_port_det_flag_4_12 ), //o
    .port_det_flag_4_13  (inv_port_det_flag_4_13 ), //o
    .port_det_flag_4_14  (inv_port_det_flag_4_14 ), //o
    .port_det_flag_4_15  (inv_port_det_flag_4_15 ), //o
    .port_det_flag_4_16  (inv_port_det_flag_4_16 ), //o
    .port_det_flag_4_17  (inv_port_det_flag_4_17 ), //o
    .port_det_flag_4_18  (inv_port_det_flag_4_18 ), //o
    .port_det_flag_4_19  (inv_port_det_flag_4_19 ), //o
    .port_det_flag_4_20  (inv_port_det_flag_4_20 ), //o
    .port_det_flag_4_21  (inv_port_det_flag_4_21 ), //o
    .port_det_flag_4_22  (inv_port_det_flag_4_22 ), //o
    .port_det_flag_4_23  (inv_port_det_flag_4_23 ), //o
    .port_det_flag_5_0   (inv_port_det_flag_5_0  ), //o
    .port_det_flag_5_1   (inv_port_det_flag_5_1  ), //o
    .port_det_flag_5_2   (inv_port_det_flag_5_2  ), //o
    .port_det_flag_5_3   (inv_port_det_flag_5_3  ), //o
    .port_det_flag_5_4   (inv_port_det_flag_5_4  ), //o
    .port_det_flag_5_5   (inv_port_det_flag_5_5  ), //o
    .port_det_flag_5_6   (inv_port_det_flag_5_6  ), //o
    .port_det_flag_5_7   (inv_port_det_flag_5_7  ), //o
    .port_det_flag_5_8   (inv_port_det_flag_5_8  ), //o
    .port_det_flag_5_9   (inv_port_det_flag_5_9  ), //o
    .port_det_flag_5_10  (inv_port_det_flag_5_10 ), //o
    .port_det_flag_5_11  (inv_port_det_flag_5_11 ), //o
    .port_det_flag_5_12  (inv_port_det_flag_5_12 ), //o
    .port_det_flag_5_13  (inv_port_det_flag_5_13 ), //o
    .port_det_flag_5_14  (inv_port_det_flag_5_14 ), //o
    .port_det_flag_5_15  (inv_port_det_flag_5_15 ), //o
    .port_det_flag_5_16  (inv_port_det_flag_5_16 ), //o
    .port_det_flag_5_17  (inv_port_det_flag_5_17 ), //o
    .port_det_flag_5_18  (inv_port_det_flag_5_18 ), //o
    .port_det_flag_5_19  (inv_port_det_flag_5_19 ), //o
    .port_det_flag_5_20  (inv_port_det_flag_5_20 ), //o
    .port_det_flag_5_21  (inv_port_det_flag_5_21 ), //o
    .port_det_flag_5_22  (inv_port_det_flag_5_22 ), //o
    .port_det_flag_5_23  (inv_port_det_flag_5_23 ), //o
    .port_det_flag_6_0   (inv_port_det_flag_6_0  ), //o
    .port_det_flag_6_1   (inv_port_det_flag_6_1  ), //o
    .port_det_flag_6_2   (inv_port_det_flag_6_2  ), //o
    .port_det_flag_6_3   (inv_port_det_flag_6_3  ), //o
    .port_det_flag_6_4   (inv_port_det_flag_6_4  ), //o
    .port_det_flag_6_5   (inv_port_det_flag_6_5  ), //o
    .port_det_flag_6_6   (inv_port_det_flag_6_6  ), //o
    .port_det_flag_6_7   (inv_port_det_flag_6_7  ), //o
    .port_det_flag_6_8   (inv_port_det_flag_6_8  ), //o
    .port_det_flag_6_9   (inv_port_det_flag_6_9  ), //o
    .port_det_flag_6_10  (inv_port_det_flag_6_10 ), //o
    .port_det_flag_6_11  (inv_port_det_flag_6_11 ), //o
    .port_det_flag_6_12  (inv_port_det_flag_6_12 ), //o
    .port_det_flag_6_13  (inv_port_det_flag_6_13 ), //o
    .port_det_flag_6_14  (inv_port_det_flag_6_14 ), //o
    .port_det_flag_6_15  (inv_port_det_flag_6_15 ), //o
    .port_det_flag_6_16  (inv_port_det_flag_6_16 ), //o
    .port_det_flag_6_17  (inv_port_det_flag_6_17 ), //o
    .port_det_flag_6_18  (inv_port_det_flag_6_18 ), //o
    .port_det_flag_6_19  (inv_port_det_flag_6_19 ), //o
    .port_det_flag_6_20  (inv_port_det_flag_6_20 ), //o
    .port_det_flag_6_21  (inv_port_det_flag_6_21 ), //o
    .port_det_flag_6_22  (inv_port_det_flag_6_22 ), //o
    .port_det_flag_6_23  (inv_port_det_flag_6_23 ), //o
    .port_det_flag_7_0   (inv_port_det_flag_7_0  ), //o
    .port_det_flag_7_1   (inv_port_det_flag_7_1  ), //o
    .port_det_flag_7_2   (inv_port_det_flag_7_2  ), //o
    .port_det_flag_7_3   (inv_port_det_flag_7_3  ), //o
    .port_det_flag_7_4   (inv_port_det_flag_7_4  ), //o
    .port_det_flag_7_5   (inv_port_det_flag_7_5  ), //o
    .port_det_flag_7_6   (inv_port_det_flag_7_6  ), //o
    .port_det_flag_7_7   (inv_port_det_flag_7_7  ), //o
    .port_det_flag_7_8   (inv_port_det_flag_7_8  ), //o
    .port_det_flag_7_9   (inv_port_det_flag_7_9  ), //o
    .port_det_flag_7_10  (inv_port_det_flag_7_10 ), //o
    .port_det_flag_7_11  (inv_port_det_flag_7_11 ), //o
    .port_det_flag_7_12  (inv_port_det_flag_7_12 ), //o
    .port_det_flag_7_13  (inv_port_det_flag_7_13 ), //o
    .port_det_flag_7_14  (inv_port_det_flag_7_14 ), //o
    .port_det_flag_7_15  (inv_port_det_flag_7_15 ), //o
    .port_det_flag_7_16  (inv_port_det_flag_7_16 ), //o
    .port_det_flag_7_17  (inv_port_det_flag_7_17 ), //o
    .port_det_flag_7_18  (inv_port_det_flag_7_18 ), //o
    .port_det_flag_7_19  (inv_port_det_flag_7_19 ), //o
    .port_det_flag_7_20  (inv_port_det_flag_7_20 ), //o
    .port_det_flag_7_21  (inv_port_det_flag_7_21 ), //o
    .port_det_flag_7_22  (inv_port_det_flag_7_22 ), //o
    .port_det_flag_7_23  (inv_port_det_flag_7_23 ), //o
    .port_det_flag_8_0   (inv_port_det_flag_8_0  ), //o
    .port_det_flag_8_1   (inv_port_det_flag_8_1  ), //o
    .port_det_flag_8_2   (inv_port_det_flag_8_2  ), //o
    .port_det_flag_8_3   (inv_port_det_flag_8_3  ), //o
    .port_det_flag_8_4   (inv_port_det_flag_8_4  ), //o
    .port_det_flag_8_5   (inv_port_det_flag_8_5  ), //o
    .port_det_flag_8_6   (inv_port_det_flag_8_6  ), //o
    .port_det_flag_8_7   (inv_port_det_flag_8_7  ), //o
    .port_det_flag_8_8   (inv_port_det_flag_8_8  ), //o
    .port_det_flag_8_9   (inv_port_det_flag_8_9  ), //o
    .port_det_flag_8_10  (inv_port_det_flag_8_10 ), //o
    .port_det_flag_8_11  (inv_port_det_flag_8_11 ), //o
    .port_det_flag_8_12  (inv_port_det_flag_8_12 ), //o
    .port_det_flag_8_13  (inv_port_det_flag_8_13 ), //o
    .port_det_flag_8_14  (inv_port_det_flag_8_14 ), //o
    .port_det_flag_8_15  (inv_port_det_flag_8_15 ), //o
    .port_det_flag_8_16  (inv_port_det_flag_8_16 ), //o
    .port_det_flag_8_17  (inv_port_det_flag_8_17 ), //o
    .port_det_flag_8_18  (inv_port_det_flag_8_18 ), //o
    .port_det_flag_8_19  (inv_port_det_flag_8_19 ), //o
    .port_det_flag_8_20  (inv_port_det_flag_8_20 ), //o
    .port_det_flag_8_21  (inv_port_det_flag_8_21 ), //o
    .port_det_flag_8_22  (inv_port_det_flag_8_22 ), //o
    .port_det_flag_8_23  (inv_port_det_flag_8_23 ), //o
    .port_det_flag_9_0   (inv_port_det_flag_9_0  ), //o
    .port_det_flag_9_1   (inv_port_det_flag_9_1  ), //o
    .port_det_flag_9_2   (inv_port_det_flag_9_2  ), //o
    .port_det_flag_9_3   (inv_port_det_flag_9_3  ), //o
    .port_det_flag_9_4   (inv_port_det_flag_9_4  ), //o
    .port_det_flag_9_5   (inv_port_det_flag_9_5  ), //o
    .port_det_flag_9_6   (inv_port_det_flag_9_6  ), //o
    .port_det_flag_9_7   (inv_port_det_flag_9_7  ), //o
    .port_det_flag_9_8   (inv_port_det_flag_9_8  ), //o
    .port_det_flag_9_9   (inv_port_det_flag_9_9  ), //o
    .port_det_flag_9_10  (inv_port_det_flag_9_10 ), //o
    .port_det_flag_9_11  (inv_port_det_flag_9_11 ), //o
    .port_det_flag_9_12  (inv_port_det_flag_9_12 ), //o
    .port_det_flag_9_13  (inv_port_det_flag_9_13 ), //o
    .port_det_flag_9_14  (inv_port_det_flag_9_14 ), //o
    .port_det_flag_9_15  (inv_port_det_flag_9_15 ), //o
    .port_det_flag_9_16  (inv_port_det_flag_9_16 ), //o
    .port_det_flag_9_17  (inv_port_det_flag_9_17 ), //o
    .port_det_flag_9_18  (inv_port_det_flag_9_18 ), //o
    .port_det_flag_9_19  (inv_port_det_flag_9_19 ), //o
    .port_det_flag_9_20  (inv_port_det_flag_9_20 ), //o
    .port_det_flag_9_21  (inv_port_det_flag_9_21 ), //o
    .port_det_flag_9_22  (inv_port_det_flag_9_22 ), //o
    .port_det_flag_9_23  (inv_port_det_flag_9_23 ), //o
    .port_det_flag_10_0  (inv_port_det_flag_10_0 ), //o
    .port_det_flag_10_1  (inv_port_det_flag_10_1 ), //o
    .port_det_flag_10_2  (inv_port_det_flag_10_2 ), //o
    .port_det_flag_10_3  (inv_port_det_flag_10_3 ), //o
    .port_det_flag_10_4  (inv_port_det_flag_10_4 ), //o
    .port_det_flag_10_5  (inv_port_det_flag_10_5 ), //o
    .port_det_flag_10_6  (inv_port_det_flag_10_6 ), //o
    .port_det_flag_10_7  (inv_port_det_flag_10_7 ), //o
    .port_det_flag_10_8  (inv_port_det_flag_10_8 ), //o
    .port_det_flag_10_9  (inv_port_det_flag_10_9 ), //o
    .port_det_flag_10_10 (inv_port_det_flag_10_10), //o
    .port_det_flag_10_11 (inv_port_det_flag_10_11), //o
    .port_det_flag_10_12 (inv_port_det_flag_10_12), //o
    .port_det_flag_10_13 (inv_port_det_flag_10_13), //o
    .port_det_flag_10_14 (inv_port_det_flag_10_14), //o
    .port_det_flag_10_15 (inv_port_det_flag_10_15), //o
    .port_det_flag_10_16 (inv_port_det_flag_10_16), //o
    .port_det_flag_10_17 (inv_port_det_flag_10_17), //o
    .port_det_flag_10_18 (inv_port_det_flag_10_18), //o
    .port_det_flag_10_19 (inv_port_det_flag_10_19), //o
    .port_det_flag_10_20 (inv_port_det_flag_10_20), //o
    .port_det_flag_10_21 (inv_port_det_flag_10_21), //o
    .port_det_flag_10_22 (inv_port_det_flag_10_22), //o
    .port_det_flag_10_23 (inv_port_det_flag_10_23), //o
    .port_det_flag_11_0  (inv_port_det_flag_11_0 ), //o
    .port_det_flag_11_1  (inv_port_det_flag_11_1 ), //o
    .port_det_flag_11_2  (inv_port_det_flag_11_2 ), //o
    .port_det_flag_11_3  (inv_port_det_flag_11_3 ), //o
    .port_det_flag_11_4  (inv_port_det_flag_11_4 ), //o
    .port_det_flag_11_5  (inv_port_det_flag_11_5 ), //o
    .port_det_flag_11_6  (inv_port_det_flag_11_6 ), //o
    .port_det_flag_11_7  (inv_port_det_flag_11_7 ), //o
    .port_det_flag_11_8  (inv_port_det_flag_11_8 ), //o
    .port_det_flag_11_9  (inv_port_det_flag_11_9 ), //o
    .port_det_flag_11_10 (inv_port_det_flag_11_10), //o
    .port_det_flag_11_11 (inv_port_det_flag_11_11), //o
    .port_det_flag_11_12 (inv_port_det_flag_11_12), //o
    .port_det_flag_11_13 (inv_port_det_flag_11_13), //o
    .port_det_flag_11_14 (inv_port_det_flag_11_14), //o
    .port_det_flag_11_15 (inv_port_det_flag_11_15), //o
    .port_det_flag_11_16 (inv_port_det_flag_11_16), //o
    .port_det_flag_11_17 (inv_port_det_flag_11_17), //o
    .port_det_flag_11_18 (inv_port_det_flag_11_18), //o
    .port_det_flag_11_19 (inv_port_det_flag_11_19), //o
    .port_det_flag_11_20 (inv_port_det_flag_11_20), //o
    .port_det_flag_11_21 (inv_port_det_flag_11_21), //o
    .port_det_flag_11_22 (inv_port_det_flag_11_22), //o
    .port_det_flag_11_23 (inv_port_det_flag_11_23), //o
    .port_det_flag_12_0  (inv_port_det_flag_12_0 ), //o
    .port_det_flag_12_1  (inv_port_det_flag_12_1 ), //o
    .port_det_flag_12_2  (inv_port_det_flag_12_2 ), //o
    .port_det_flag_12_3  (inv_port_det_flag_12_3 ), //o
    .port_det_flag_12_4  (inv_port_det_flag_12_4 ), //o
    .port_det_flag_12_5  (inv_port_det_flag_12_5 ), //o
    .port_det_flag_12_6  (inv_port_det_flag_12_6 ), //o
    .port_det_flag_12_7  (inv_port_det_flag_12_7 ), //o
    .port_det_flag_12_8  (inv_port_det_flag_12_8 ), //o
    .port_det_flag_12_9  (inv_port_det_flag_12_9 ), //o
    .port_det_flag_12_10 (inv_port_det_flag_12_10), //o
    .port_det_flag_12_11 (inv_port_det_flag_12_11), //o
    .port_det_flag_12_12 (inv_port_det_flag_12_12), //o
    .port_det_flag_12_13 (inv_port_det_flag_12_13), //o
    .port_det_flag_12_14 (inv_port_det_flag_12_14), //o
    .port_det_flag_12_15 (inv_port_det_flag_12_15), //o
    .port_det_flag_12_16 (inv_port_det_flag_12_16), //o
    .port_det_flag_12_17 (inv_port_det_flag_12_17), //o
    .port_det_flag_12_18 (inv_port_det_flag_12_18), //o
    .port_det_flag_12_19 (inv_port_det_flag_12_19), //o
    .port_det_flag_12_20 (inv_port_det_flag_12_20), //o
    .port_det_flag_12_21 (inv_port_det_flag_12_21), //o
    .port_det_flag_12_22 (inv_port_det_flag_12_22), //o
    .port_det_flag_12_23 (inv_port_det_flag_12_23), //o
    .port_det_flag_13_0  (inv_port_det_flag_13_0 ), //o
    .port_det_flag_13_1  (inv_port_det_flag_13_1 ), //o
    .port_det_flag_13_2  (inv_port_det_flag_13_2 ), //o
    .port_det_flag_13_3  (inv_port_det_flag_13_3 ), //o
    .port_det_flag_13_4  (inv_port_det_flag_13_4 ), //o
    .port_det_flag_13_5  (inv_port_det_flag_13_5 ), //o
    .port_det_flag_13_6  (inv_port_det_flag_13_6 ), //o
    .port_det_flag_13_7  (inv_port_det_flag_13_7 ), //o
    .port_det_flag_13_8  (inv_port_det_flag_13_8 ), //o
    .port_det_flag_13_9  (inv_port_det_flag_13_9 ), //o
    .port_det_flag_13_10 (inv_port_det_flag_13_10), //o
    .port_det_flag_13_11 (inv_port_det_flag_13_11), //o
    .port_det_flag_13_12 (inv_port_det_flag_13_12), //o
    .port_det_flag_13_13 (inv_port_det_flag_13_13), //o
    .port_det_flag_13_14 (inv_port_det_flag_13_14), //o
    .port_det_flag_13_15 (inv_port_det_flag_13_15), //o
    .port_det_flag_13_16 (inv_port_det_flag_13_16), //o
    .port_det_flag_13_17 (inv_port_det_flag_13_17), //o
    .port_det_flag_13_18 (inv_port_det_flag_13_18), //o
    .port_det_flag_13_19 (inv_port_det_flag_13_19), //o
    .port_det_flag_13_20 (inv_port_det_flag_13_20), //o
    .port_det_flag_13_21 (inv_port_det_flag_13_21), //o
    .port_det_flag_13_22 (inv_port_det_flag_13_22), //o
    .port_det_flag_13_23 (inv_port_det_flag_13_23), //o
    .port_det_flag_14_0  (inv_port_det_flag_14_0 ), //o
    .port_det_flag_14_1  (inv_port_det_flag_14_1 ), //o
    .port_det_flag_14_2  (inv_port_det_flag_14_2 ), //o
    .port_det_flag_14_3  (inv_port_det_flag_14_3 ), //o
    .port_det_flag_14_4  (inv_port_det_flag_14_4 ), //o
    .port_det_flag_14_5  (inv_port_det_flag_14_5 ), //o
    .port_det_flag_14_6  (inv_port_det_flag_14_6 ), //o
    .port_det_flag_14_7  (inv_port_det_flag_14_7 ), //o
    .port_det_flag_14_8  (inv_port_det_flag_14_8 ), //o
    .port_det_flag_14_9  (inv_port_det_flag_14_9 ), //o
    .port_det_flag_14_10 (inv_port_det_flag_14_10), //o
    .port_det_flag_14_11 (inv_port_det_flag_14_11), //o
    .port_det_flag_14_12 (inv_port_det_flag_14_12), //o
    .port_det_flag_14_13 (inv_port_det_flag_14_13), //o
    .port_det_flag_14_14 (inv_port_det_flag_14_14), //o
    .port_det_flag_14_15 (inv_port_det_flag_14_15), //o
    .port_det_flag_14_16 (inv_port_det_flag_14_16), //o
    .port_det_flag_14_17 (inv_port_det_flag_14_17), //o
    .port_det_flag_14_18 (inv_port_det_flag_14_18), //o
    .port_det_flag_14_19 (inv_port_det_flag_14_19), //o
    .port_det_flag_14_20 (inv_port_det_flag_14_20), //o
    .port_det_flag_14_21 (inv_port_det_flag_14_21), //o
    .port_det_flag_14_22 (inv_port_det_flag_14_22), //o
    .port_det_flag_14_23 (inv_port_det_flag_14_23), //o
    .port_det_flag_15_0  (inv_port_det_flag_15_0 ), //o
    .port_det_flag_15_1  (inv_port_det_flag_15_1 ), //o
    .port_det_flag_15_2  (inv_port_det_flag_15_2 ), //o
    .port_det_flag_15_3  (inv_port_det_flag_15_3 ), //o
    .port_det_flag_15_4  (inv_port_det_flag_15_4 ), //o
    .port_det_flag_15_5  (inv_port_det_flag_15_5 ), //o
    .port_det_flag_15_6  (inv_port_det_flag_15_6 ), //o
    .port_det_flag_15_7  (inv_port_det_flag_15_7 ), //o
    .port_det_flag_15_8  (inv_port_det_flag_15_8 ), //o
    .port_det_flag_15_9  (inv_port_det_flag_15_9 ), //o
    .port_det_flag_15_10 (inv_port_det_flag_15_10), //o
    .port_det_flag_15_11 (inv_port_det_flag_15_11), //o
    .port_det_flag_15_12 (inv_port_det_flag_15_12), //o
    .port_det_flag_15_13 (inv_port_det_flag_15_13), //o
    .port_det_flag_15_14 (inv_port_det_flag_15_14), //o
    .port_det_flag_15_15 (inv_port_det_flag_15_15), //o
    .port_det_flag_15_16 (inv_port_det_flag_15_16), //o
    .port_det_flag_15_17 (inv_port_det_flag_15_17), //o
    .port_det_flag_15_18 (inv_port_det_flag_15_18), //o
    .port_det_flag_15_19 (inv_port_det_flag_15_19), //o
    .port_det_flag_15_20 (inv_port_det_flag_15_20), //o
    .port_det_flag_15_21 (inv_port_det_flag_15_21), //o
    .port_det_flag_15_22 (inv_port_det_flag_15_22), //o
    .port_det_flag_15_23 (inv_port_det_flag_15_23), //o
    .port_det_flag_16_0  (inv_port_det_flag_16_0 ), //o
    .port_det_flag_16_1  (inv_port_det_flag_16_1 ), //o
    .port_det_flag_16_2  (inv_port_det_flag_16_2 ), //o
    .port_det_flag_16_3  (inv_port_det_flag_16_3 ), //o
    .port_det_flag_16_4  (inv_port_det_flag_16_4 ), //o
    .port_det_flag_16_5  (inv_port_det_flag_16_5 ), //o
    .port_det_flag_16_6  (inv_port_det_flag_16_6 ), //o
    .port_det_flag_16_7  (inv_port_det_flag_16_7 ), //o
    .port_det_flag_16_8  (inv_port_det_flag_16_8 ), //o
    .port_det_flag_16_9  (inv_port_det_flag_16_9 ), //o
    .port_det_flag_16_10 (inv_port_det_flag_16_10), //o
    .port_det_flag_16_11 (inv_port_det_flag_16_11), //o
    .port_det_flag_16_12 (inv_port_det_flag_16_12), //o
    .port_det_flag_16_13 (inv_port_det_flag_16_13), //o
    .port_det_flag_16_14 (inv_port_det_flag_16_14), //o
    .port_det_flag_16_15 (inv_port_det_flag_16_15), //o
    .port_det_flag_16_16 (inv_port_det_flag_16_16), //o
    .port_det_flag_16_17 (inv_port_det_flag_16_17), //o
    .port_det_flag_16_18 (inv_port_det_flag_16_18), //o
    .port_det_flag_16_19 (inv_port_det_flag_16_19), //o
    .port_det_flag_16_20 (inv_port_det_flag_16_20), //o
    .port_det_flag_16_21 (inv_port_det_flag_16_21), //o
    .port_det_flag_16_22 (inv_port_det_flag_16_22), //o
    .port_det_flag_16_23 (inv_port_det_flag_16_23), //o
    .port_det_flag_17_0  (inv_port_det_flag_17_0 ), //o
    .port_det_flag_17_1  (inv_port_det_flag_17_1 ), //o
    .port_det_flag_17_2  (inv_port_det_flag_17_2 ), //o
    .port_det_flag_17_3  (inv_port_det_flag_17_3 ), //o
    .port_det_flag_17_4  (inv_port_det_flag_17_4 ), //o
    .port_det_flag_17_5  (inv_port_det_flag_17_5 ), //o
    .port_det_flag_17_6  (inv_port_det_flag_17_6 ), //o
    .port_det_flag_17_7  (inv_port_det_flag_17_7 ), //o
    .port_det_flag_17_8  (inv_port_det_flag_17_8 ), //o
    .port_det_flag_17_9  (inv_port_det_flag_17_9 ), //o
    .port_det_flag_17_10 (inv_port_det_flag_17_10), //o
    .port_det_flag_17_11 (inv_port_det_flag_17_11), //o
    .port_det_flag_17_12 (inv_port_det_flag_17_12), //o
    .port_det_flag_17_13 (inv_port_det_flag_17_13), //o
    .port_det_flag_17_14 (inv_port_det_flag_17_14), //o
    .port_det_flag_17_15 (inv_port_det_flag_17_15), //o
    .port_det_flag_17_16 (inv_port_det_flag_17_16), //o
    .port_det_flag_17_17 (inv_port_det_flag_17_17), //o
    .port_det_flag_17_18 (inv_port_det_flag_17_18), //o
    .port_det_flag_17_19 (inv_port_det_flag_17_19), //o
    .port_det_flag_17_20 (inv_port_det_flag_17_20), //o
    .port_det_flag_17_21 (inv_port_det_flag_17_21), //o
    .port_det_flag_17_22 (inv_port_det_flag_17_22), //o
    .port_det_flag_17_23 (inv_port_det_flag_17_23), //o
    .port_det_flag_18_0  (inv_port_det_flag_18_0 ), //o
    .port_det_flag_18_1  (inv_port_det_flag_18_1 ), //o
    .port_det_flag_18_2  (inv_port_det_flag_18_2 ), //o
    .port_det_flag_18_3  (inv_port_det_flag_18_3 ), //o
    .port_det_flag_18_4  (inv_port_det_flag_18_4 ), //o
    .port_det_flag_18_5  (inv_port_det_flag_18_5 ), //o
    .port_det_flag_18_6  (inv_port_det_flag_18_6 ), //o
    .port_det_flag_18_7  (inv_port_det_flag_18_7 ), //o
    .port_det_flag_18_8  (inv_port_det_flag_18_8 ), //o
    .port_det_flag_18_9  (inv_port_det_flag_18_9 ), //o
    .port_det_flag_18_10 (inv_port_det_flag_18_10), //o
    .port_det_flag_18_11 (inv_port_det_flag_18_11), //o
    .port_det_flag_18_12 (inv_port_det_flag_18_12), //o
    .port_det_flag_18_13 (inv_port_det_flag_18_13), //o
    .port_det_flag_18_14 (inv_port_det_flag_18_14), //o
    .port_det_flag_18_15 (inv_port_det_flag_18_15), //o
    .port_det_flag_18_16 (inv_port_det_flag_18_16), //o
    .port_det_flag_18_17 (inv_port_det_flag_18_17), //o
    .port_det_flag_18_18 (inv_port_det_flag_18_18), //o
    .port_det_flag_18_19 (inv_port_det_flag_18_19), //o
    .port_det_flag_18_20 (inv_port_det_flag_18_20), //o
    .port_det_flag_18_21 (inv_port_det_flag_18_21), //o
    .port_det_flag_18_22 (inv_port_det_flag_18_22), //o
    .port_det_flag_18_23 (inv_port_det_flag_18_23), //o
    .port_det_flag_19_0  (inv_port_det_flag_19_0 ), //o
    .port_det_flag_19_1  (inv_port_det_flag_19_1 ), //o
    .port_det_flag_19_2  (inv_port_det_flag_19_2 ), //o
    .port_det_flag_19_3  (inv_port_det_flag_19_3 ), //o
    .port_det_flag_19_4  (inv_port_det_flag_19_4 ), //o
    .port_det_flag_19_5  (inv_port_det_flag_19_5 ), //o
    .port_det_flag_19_6  (inv_port_det_flag_19_6 ), //o
    .port_det_flag_19_7  (inv_port_det_flag_19_7 ), //o
    .port_det_flag_19_8  (inv_port_det_flag_19_8 ), //o
    .port_det_flag_19_9  (inv_port_det_flag_19_9 ), //o
    .port_det_flag_19_10 (inv_port_det_flag_19_10), //o
    .port_det_flag_19_11 (inv_port_det_flag_19_11), //o
    .port_det_flag_19_12 (inv_port_det_flag_19_12), //o
    .port_det_flag_19_13 (inv_port_det_flag_19_13), //o
    .port_det_flag_19_14 (inv_port_det_flag_19_14), //o
    .port_det_flag_19_15 (inv_port_det_flag_19_15), //o
    .port_det_flag_19_16 (inv_port_det_flag_19_16), //o
    .port_det_flag_19_17 (inv_port_det_flag_19_17), //o
    .port_det_flag_19_18 (inv_port_det_flag_19_18), //o
    .port_det_flag_19_19 (inv_port_det_flag_19_19), //o
    .port_det_flag_19_20 (inv_port_det_flag_19_20), //o
    .port_det_flag_19_21 (inv_port_det_flag_19_21), //o
    .port_det_flag_19_22 (inv_port_det_flag_19_22), //o
    .port_det_flag_19_23 (inv_port_det_flag_19_23), //o
    .port_det_flag_20_0  (inv_port_det_flag_20_0 ), //o
    .port_det_flag_20_1  (inv_port_det_flag_20_1 ), //o
    .port_det_flag_20_2  (inv_port_det_flag_20_2 ), //o
    .port_det_flag_20_3  (inv_port_det_flag_20_3 ), //o
    .port_det_flag_20_4  (inv_port_det_flag_20_4 ), //o
    .port_det_flag_20_5  (inv_port_det_flag_20_5 ), //o
    .port_det_flag_20_6  (inv_port_det_flag_20_6 ), //o
    .port_det_flag_20_7  (inv_port_det_flag_20_7 ), //o
    .port_det_flag_20_8  (inv_port_det_flag_20_8 ), //o
    .port_det_flag_20_9  (inv_port_det_flag_20_9 ), //o
    .port_det_flag_20_10 (inv_port_det_flag_20_10), //o
    .port_det_flag_20_11 (inv_port_det_flag_20_11), //o
    .port_det_flag_20_12 (inv_port_det_flag_20_12), //o
    .port_det_flag_20_13 (inv_port_det_flag_20_13), //o
    .port_det_flag_20_14 (inv_port_det_flag_20_14), //o
    .port_det_flag_20_15 (inv_port_det_flag_20_15), //o
    .port_det_flag_20_16 (inv_port_det_flag_20_16), //o
    .port_det_flag_20_17 (inv_port_det_flag_20_17), //o
    .port_det_flag_20_18 (inv_port_det_flag_20_18), //o
    .port_det_flag_20_19 (inv_port_det_flag_20_19), //o
    .port_det_flag_20_20 (inv_port_det_flag_20_20), //o
    .port_det_flag_20_21 (inv_port_det_flag_20_21), //o
    .port_det_flag_20_22 (inv_port_det_flag_20_22), //o
    .port_det_flag_20_23 (inv_port_det_flag_20_23), //o
    .port_det_flag_21_0  (inv_port_det_flag_21_0 ), //o
    .port_det_flag_21_1  (inv_port_det_flag_21_1 ), //o
    .port_det_flag_21_2  (inv_port_det_flag_21_2 ), //o
    .port_det_flag_21_3  (inv_port_det_flag_21_3 ), //o
    .port_det_flag_21_4  (inv_port_det_flag_21_4 ), //o
    .port_det_flag_21_5  (inv_port_det_flag_21_5 ), //o
    .port_det_flag_21_6  (inv_port_det_flag_21_6 ), //o
    .port_det_flag_21_7  (inv_port_det_flag_21_7 ), //o
    .port_det_flag_21_8  (inv_port_det_flag_21_8 ), //o
    .port_det_flag_21_9  (inv_port_det_flag_21_9 ), //o
    .port_det_flag_21_10 (inv_port_det_flag_21_10), //o
    .port_det_flag_21_11 (inv_port_det_flag_21_11), //o
    .port_det_flag_21_12 (inv_port_det_flag_21_12), //o
    .port_det_flag_21_13 (inv_port_det_flag_21_13), //o
    .port_det_flag_21_14 (inv_port_det_flag_21_14), //o
    .port_det_flag_21_15 (inv_port_det_flag_21_15), //o
    .port_det_flag_21_16 (inv_port_det_flag_21_16), //o
    .port_det_flag_21_17 (inv_port_det_flag_21_17), //o
    .port_det_flag_21_18 (inv_port_det_flag_21_18), //o
    .port_det_flag_21_19 (inv_port_det_flag_21_19), //o
    .port_det_flag_21_20 (inv_port_det_flag_21_20), //o
    .port_det_flag_21_21 (inv_port_det_flag_21_21), //o
    .port_det_flag_21_22 (inv_port_det_flag_21_22), //o
    .port_det_flag_21_23 (inv_port_det_flag_21_23), //o
    .port_det_flag_22_0  (inv_port_det_flag_22_0 ), //o
    .port_det_flag_22_1  (inv_port_det_flag_22_1 ), //o
    .port_det_flag_22_2  (inv_port_det_flag_22_2 ), //o
    .port_det_flag_22_3  (inv_port_det_flag_22_3 ), //o
    .port_det_flag_22_4  (inv_port_det_flag_22_4 ), //o
    .port_det_flag_22_5  (inv_port_det_flag_22_5 ), //o
    .port_det_flag_22_6  (inv_port_det_flag_22_6 ), //o
    .port_det_flag_22_7  (inv_port_det_flag_22_7 ), //o
    .port_det_flag_22_8  (inv_port_det_flag_22_8 ), //o
    .port_det_flag_22_9  (inv_port_det_flag_22_9 ), //o
    .port_det_flag_22_10 (inv_port_det_flag_22_10), //o
    .port_det_flag_22_11 (inv_port_det_flag_22_11), //o
    .port_det_flag_22_12 (inv_port_det_flag_22_12), //o
    .port_det_flag_22_13 (inv_port_det_flag_22_13), //o
    .port_det_flag_22_14 (inv_port_det_flag_22_14), //o
    .port_det_flag_22_15 (inv_port_det_flag_22_15), //o
    .port_det_flag_22_16 (inv_port_det_flag_22_16), //o
    .port_det_flag_22_17 (inv_port_det_flag_22_17), //o
    .port_det_flag_22_18 (inv_port_det_flag_22_18), //o
    .port_det_flag_22_19 (inv_port_det_flag_22_19), //o
    .port_det_flag_22_20 (inv_port_det_flag_22_20), //o
    .port_det_flag_22_21 (inv_port_det_flag_22_21), //o
    .port_det_flag_22_22 (inv_port_det_flag_22_22), //o
    .port_det_flag_22_23 (inv_port_det_flag_22_23), //o
    .port_det_flag_23_0  (inv_port_det_flag_23_0 ), //o
    .port_det_flag_23_1  (inv_port_det_flag_23_1 ), //o
    .port_det_flag_23_2  (inv_port_det_flag_23_2 ), //o
    .port_det_flag_23_3  (inv_port_det_flag_23_3 ), //o
    .port_det_flag_23_4  (inv_port_det_flag_23_4 ), //o
    .port_det_flag_23_5  (inv_port_det_flag_23_5 ), //o
    .port_det_flag_23_6  (inv_port_det_flag_23_6 ), //o
    .port_det_flag_23_7  (inv_port_det_flag_23_7 ), //o
    .port_det_flag_23_8  (inv_port_det_flag_23_8 ), //o
    .port_det_flag_23_9  (inv_port_det_flag_23_9 ), //o
    .port_det_flag_23_10 (inv_port_det_flag_23_10), //o
    .port_det_flag_23_11 (inv_port_det_flag_23_11), //o
    .port_det_flag_23_12 (inv_port_det_flag_23_12), //o
    .port_det_flag_23_13 (inv_port_det_flag_23_13), //o
    .port_det_flag_23_14 (inv_port_det_flag_23_14), //o
    .port_det_flag_23_15 (inv_port_det_flag_23_15), //o
    .port_det_flag_23_16 (inv_port_det_flag_23_16), //o
    .port_det_flag_23_17 (inv_port_det_flag_23_17), //o
    .port_det_flag_23_18 (inv_port_det_flag_23_18), //o
    .port_det_flag_23_19 (inv_port_det_flag_23_19), //o
    .port_det_flag_23_20 (inv_port_det_flag_23_20), //o
    .port_det_flag_23_21 (inv_port_det_flag_23_21), //o
    .port_det_flag_23_22 (inv_port_det_flag_23_22), //o
    .port_det_flag_23_23 (inv_port_det_flag_23_23), //o
    .port_det_flag_24_0  (inv_port_det_flag_24_0 ), //o
    .port_det_flag_24_1  (inv_port_det_flag_24_1 ), //o
    .port_det_flag_24_2  (inv_port_det_flag_24_2 ), //o
    .port_det_flag_24_3  (inv_port_det_flag_24_3 ), //o
    .port_det_flag_24_4  (inv_port_det_flag_24_4 ), //o
    .port_det_flag_24_5  (inv_port_det_flag_24_5 ), //o
    .port_det_flag_24_6  (inv_port_det_flag_24_6 ), //o
    .port_det_flag_24_7  (inv_port_det_flag_24_7 ), //o
    .port_det_flag_24_8  (inv_port_det_flag_24_8 ), //o
    .port_det_flag_24_9  (inv_port_det_flag_24_9 ), //o
    .port_det_flag_24_10 (inv_port_det_flag_24_10), //o
    .port_det_flag_24_11 (inv_port_det_flag_24_11), //o
    .port_det_flag_24_12 (inv_port_det_flag_24_12), //o
    .port_det_flag_24_13 (inv_port_det_flag_24_13), //o
    .port_det_flag_24_14 (inv_port_det_flag_24_14), //o
    .port_det_flag_24_15 (inv_port_det_flag_24_15), //o
    .port_det_flag_24_16 (inv_port_det_flag_24_16), //o
    .port_det_flag_24_17 (inv_port_det_flag_24_17), //o
    .port_det_flag_24_18 (inv_port_det_flag_24_18), //o
    .port_det_flag_24_19 (inv_port_det_flag_24_19), //o
    .port_det_flag_24_20 (inv_port_det_flag_24_20), //o
    .port_det_flag_24_21 (inv_port_det_flag_24_21), //o
    .port_det_flag_24_22 (inv_port_det_flag_24_22), //o
    .port_det_flag_24_23 (inv_port_det_flag_24_23), //o
    .port_det_flag_25_0  (inv_port_det_flag_25_0 ), //o
    .port_det_flag_25_1  (inv_port_det_flag_25_1 ), //o
    .port_det_flag_25_2  (inv_port_det_flag_25_2 ), //o
    .port_det_flag_25_3  (inv_port_det_flag_25_3 ), //o
    .port_det_flag_25_4  (inv_port_det_flag_25_4 ), //o
    .port_det_flag_25_5  (inv_port_det_flag_25_5 ), //o
    .port_det_flag_25_6  (inv_port_det_flag_25_6 ), //o
    .port_det_flag_25_7  (inv_port_det_flag_25_7 ), //o
    .port_det_flag_25_8  (inv_port_det_flag_25_8 ), //o
    .port_det_flag_25_9  (inv_port_det_flag_25_9 ), //o
    .port_det_flag_25_10 (inv_port_det_flag_25_10), //o
    .port_det_flag_25_11 (inv_port_det_flag_25_11), //o
    .port_det_flag_25_12 (inv_port_det_flag_25_12), //o
    .port_det_flag_25_13 (inv_port_det_flag_25_13), //o
    .port_det_flag_25_14 (inv_port_det_flag_25_14), //o
    .port_det_flag_25_15 (inv_port_det_flag_25_15), //o
    .port_det_flag_25_16 (inv_port_det_flag_25_16), //o
    .port_det_flag_25_17 (inv_port_det_flag_25_17), //o
    .port_det_flag_25_18 (inv_port_det_flag_25_18), //o
    .port_det_flag_25_19 (inv_port_det_flag_25_19), //o
    .port_det_flag_25_20 (inv_port_det_flag_25_20), //o
    .port_det_flag_25_21 (inv_port_det_flag_25_21), //o
    .port_det_flag_25_22 (inv_port_det_flag_25_22), //o
    .port_det_flag_25_23 (inv_port_det_flag_25_23), //o
    .port_det_flag_26_0  (inv_port_det_flag_26_0 ), //o
    .port_det_flag_26_1  (inv_port_det_flag_26_1 ), //o
    .port_det_flag_26_2  (inv_port_det_flag_26_2 ), //o
    .port_det_flag_26_3  (inv_port_det_flag_26_3 ), //o
    .port_det_flag_26_4  (inv_port_det_flag_26_4 ), //o
    .port_det_flag_26_5  (inv_port_det_flag_26_5 ), //o
    .port_det_flag_26_6  (inv_port_det_flag_26_6 ), //o
    .port_det_flag_26_7  (inv_port_det_flag_26_7 ), //o
    .port_det_flag_26_8  (inv_port_det_flag_26_8 ), //o
    .port_det_flag_26_9  (inv_port_det_flag_26_9 ), //o
    .port_det_flag_26_10 (inv_port_det_flag_26_10), //o
    .port_det_flag_26_11 (inv_port_det_flag_26_11), //o
    .port_det_flag_26_12 (inv_port_det_flag_26_12), //o
    .port_det_flag_26_13 (inv_port_det_flag_26_13), //o
    .port_det_flag_26_14 (inv_port_det_flag_26_14), //o
    .port_det_flag_26_15 (inv_port_det_flag_26_15), //o
    .port_det_flag_26_16 (inv_port_det_flag_26_16), //o
    .port_det_flag_26_17 (inv_port_det_flag_26_17), //o
    .port_det_flag_26_18 (inv_port_det_flag_26_18), //o
    .port_det_flag_26_19 (inv_port_det_flag_26_19), //o
    .port_det_flag_26_20 (inv_port_det_flag_26_20), //o
    .port_det_flag_26_21 (inv_port_det_flag_26_21), //o
    .port_det_flag_26_22 (inv_port_det_flag_26_22), //o
    .port_det_flag_26_23 (inv_port_det_flag_26_23), //o
    .clk                 (clk                    ), //i
    .reset               (reset                  )  //i
  );
  Shared_InverseLinearMapping invLinMap (
    .port_i_0_0 (inv_port_o_0_0[1:0]      ), //i
    .port_i_0_1 (inv_port_o_0_1[1:0]      ), //i
    .port_i_0_2 (inv_port_o_0_2[1:0]      ), //i
    .port_i_0_3 (inv_port_o_0_3[1:0]      ), //i
    .port_i_0_4 (inv_port_o_0_4[1:0]      ), //i
    .port_i_0_5 (inv_port_o_0_5[1:0]      ), //i
    .port_i_0_6 (inv_port_o_0_6[1:0]      ), //i
    .port_i_0_7 (inv_port_o_0_7[1:0]      ), //i
    .port_i_1_0 (inv_port_o_1_0[1:0]      ), //i
    .port_i_1_1 (inv_port_o_1_1[1:0]      ), //i
    .port_i_1_2 (inv_port_o_1_2[1:0]      ), //i
    .port_i_1_3 (inv_port_o_1_3[1:0]      ), //i
    .port_i_1_4 (inv_port_o_1_4[1:0]      ), //i
    .port_i_1_5 (inv_port_o_1_5[1:0]      ), //i
    .port_i_1_6 (inv_port_o_1_6[1:0]      ), //i
    .port_i_1_7 (inv_port_o_1_7[1:0]      ), //i
    .port_i_2_0 (inv_port_o_2_0[1:0]      ), //i
    .port_i_2_1 (inv_port_o_2_1[1:0]      ), //i
    .port_i_2_2 (inv_port_o_2_2[1:0]      ), //i
    .port_i_2_3 (inv_port_o_2_3[1:0]      ), //i
    .port_i_2_4 (inv_port_o_2_4[1:0]      ), //i
    .port_i_2_5 (inv_port_o_2_5[1:0]      ), //i
    .port_i_2_6 (inv_port_o_2_6[1:0]      ), //i
    .port_i_2_7 (inv_port_o_2_7[1:0]      ), //i
    .port_o_0_0 (invLinMap_port_o_0_0[1:0]), //o
    .port_o_0_1 (invLinMap_port_o_0_1[1:0]), //o
    .port_o_0_2 (invLinMap_port_o_0_2[1:0]), //o
    .port_o_0_3 (invLinMap_port_o_0_3[1:0]), //o
    .port_o_0_4 (invLinMap_port_o_0_4[1:0]), //o
    .port_o_0_5 (invLinMap_port_o_0_5[1:0]), //o
    .port_o_0_6 (invLinMap_port_o_0_6[1:0]), //o
    .port_o_0_7 (invLinMap_port_o_0_7[1:0]), //o
    .port_o_1_0 (invLinMap_port_o_1_0[1:0]), //o
    .port_o_1_1 (invLinMap_port_o_1_1[1:0]), //o
    .port_o_1_2 (invLinMap_port_o_1_2[1:0]), //o
    .port_o_1_3 (invLinMap_port_o_1_3[1:0]), //o
    .port_o_1_4 (invLinMap_port_o_1_4[1:0]), //o
    .port_o_1_5 (invLinMap_port_o_1_5[1:0]), //o
    .port_o_1_6 (invLinMap_port_o_1_6[1:0]), //o
    .port_o_1_7 (invLinMap_port_o_1_7[1:0]), //o
    .port_o_2_0 (invLinMap_port_o_2_0[1:0]), //o
    .port_o_2_1 (invLinMap_port_o_2_1[1:0]), //o
    .port_o_2_2 (invLinMap_port_o_2_2[1:0]), //o
    .port_o_2_3 (invLinMap_port_o_2_3[1:0]), //o
    .port_o_2_4 (invLinMap_port_o_2_4[1:0]), //o
    .port_o_2_5 (invLinMap_port_o_2_5[1:0]), //o
    .port_o_2_6 (invLinMap_port_o_2_6[1:0]), //o
    .port_o_2_7 (invLinMap_port_o_2_7[1:0])  //o
  );
  assign port_det_flag_0_0 = inv_port_det_flag_0_0;
  assign port_det_flag_0_1 = inv_port_det_flag_0_1;
  assign port_det_flag_0_2 = inv_port_det_flag_0_2;
  assign port_det_flag_0_3 = inv_port_det_flag_0_3;
  assign port_det_flag_0_4 = inv_port_det_flag_0_4;
  assign port_det_flag_0_5 = inv_port_det_flag_0_5;
  assign port_det_flag_0_6 = inv_port_det_flag_0_6;
  assign port_det_flag_0_7 = inv_port_det_flag_0_7;
  assign port_det_flag_0_8 = inv_port_det_flag_0_8;
  assign port_det_flag_0_9 = inv_port_det_flag_0_9;
  assign port_det_flag_0_10 = inv_port_det_flag_0_10;
  assign port_det_flag_0_11 = inv_port_det_flag_0_11;
  assign port_det_flag_0_12 = inv_port_det_flag_0_12;
  assign port_det_flag_0_13 = inv_port_det_flag_0_13;
  assign port_det_flag_0_14 = inv_port_det_flag_0_14;
  assign port_det_flag_0_15 = inv_port_det_flag_0_15;
  assign port_det_flag_0_16 = inv_port_det_flag_0_16;
  assign port_det_flag_0_17 = inv_port_det_flag_0_17;
  assign port_det_flag_0_18 = inv_port_det_flag_0_18;
  assign port_det_flag_0_19 = inv_port_det_flag_0_19;
  assign port_det_flag_0_20 = inv_port_det_flag_0_20;
  assign port_det_flag_0_21 = inv_port_det_flag_0_21;
  assign port_det_flag_0_22 = inv_port_det_flag_0_22;
  assign port_det_flag_0_23 = inv_port_det_flag_0_23;
  assign port_det_flag_1_0 = inv_port_det_flag_1_0;
  assign port_det_flag_1_1 = inv_port_det_flag_1_1;
  assign port_det_flag_1_2 = inv_port_det_flag_1_2;
  assign port_det_flag_1_3 = inv_port_det_flag_1_3;
  assign port_det_flag_1_4 = inv_port_det_flag_1_4;
  assign port_det_flag_1_5 = inv_port_det_flag_1_5;
  assign port_det_flag_1_6 = inv_port_det_flag_1_6;
  assign port_det_flag_1_7 = inv_port_det_flag_1_7;
  assign port_det_flag_1_8 = inv_port_det_flag_1_8;
  assign port_det_flag_1_9 = inv_port_det_flag_1_9;
  assign port_det_flag_1_10 = inv_port_det_flag_1_10;
  assign port_det_flag_1_11 = inv_port_det_flag_1_11;
  assign port_det_flag_1_12 = inv_port_det_flag_1_12;
  assign port_det_flag_1_13 = inv_port_det_flag_1_13;
  assign port_det_flag_1_14 = inv_port_det_flag_1_14;
  assign port_det_flag_1_15 = inv_port_det_flag_1_15;
  assign port_det_flag_1_16 = inv_port_det_flag_1_16;
  assign port_det_flag_1_17 = inv_port_det_flag_1_17;
  assign port_det_flag_1_18 = inv_port_det_flag_1_18;
  assign port_det_flag_1_19 = inv_port_det_flag_1_19;
  assign port_det_flag_1_20 = inv_port_det_flag_1_20;
  assign port_det_flag_1_21 = inv_port_det_flag_1_21;
  assign port_det_flag_1_22 = inv_port_det_flag_1_22;
  assign port_det_flag_1_23 = inv_port_det_flag_1_23;
  assign port_det_flag_2_0 = inv_port_det_flag_2_0;
  assign port_det_flag_2_1 = inv_port_det_flag_2_1;
  assign port_det_flag_2_2 = inv_port_det_flag_2_2;
  assign port_det_flag_2_3 = inv_port_det_flag_2_3;
  assign port_det_flag_2_4 = inv_port_det_flag_2_4;
  assign port_det_flag_2_5 = inv_port_det_flag_2_5;
  assign port_det_flag_2_6 = inv_port_det_flag_2_6;
  assign port_det_flag_2_7 = inv_port_det_flag_2_7;
  assign port_det_flag_2_8 = inv_port_det_flag_2_8;
  assign port_det_flag_2_9 = inv_port_det_flag_2_9;
  assign port_det_flag_2_10 = inv_port_det_flag_2_10;
  assign port_det_flag_2_11 = inv_port_det_flag_2_11;
  assign port_det_flag_2_12 = inv_port_det_flag_2_12;
  assign port_det_flag_2_13 = inv_port_det_flag_2_13;
  assign port_det_flag_2_14 = inv_port_det_flag_2_14;
  assign port_det_flag_2_15 = inv_port_det_flag_2_15;
  assign port_det_flag_2_16 = inv_port_det_flag_2_16;
  assign port_det_flag_2_17 = inv_port_det_flag_2_17;
  assign port_det_flag_2_18 = inv_port_det_flag_2_18;
  assign port_det_flag_2_19 = inv_port_det_flag_2_19;
  assign port_det_flag_2_20 = inv_port_det_flag_2_20;
  assign port_det_flag_2_21 = inv_port_det_flag_2_21;
  assign port_det_flag_2_22 = inv_port_det_flag_2_22;
  assign port_det_flag_2_23 = inv_port_det_flag_2_23;
  assign port_det_flag_3_0 = inv_port_det_flag_3_0;
  assign port_det_flag_3_1 = inv_port_det_flag_3_1;
  assign port_det_flag_3_2 = inv_port_det_flag_3_2;
  assign port_det_flag_3_3 = inv_port_det_flag_3_3;
  assign port_det_flag_3_4 = inv_port_det_flag_3_4;
  assign port_det_flag_3_5 = inv_port_det_flag_3_5;
  assign port_det_flag_3_6 = inv_port_det_flag_3_6;
  assign port_det_flag_3_7 = inv_port_det_flag_3_7;
  assign port_det_flag_3_8 = inv_port_det_flag_3_8;
  assign port_det_flag_3_9 = inv_port_det_flag_3_9;
  assign port_det_flag_3_10 = inv_port_det_flag_3_10;
  assign port_det_flag_3_11 = inv_port_det_flag_3_11;
  assign port_det_flag_3_12 = inv_port_det_flag_3_12;
  assign port_det_flag_3_13 = inv_port_det_flag_3_13;
  assign port_det_flag_3_14 = inv_port_det_flag_3_14;
  assign port_det_flag_3_15 = inv_port_det_flag_3_15;
  assign port_det_flag_3_16 = inv_port_det_flag_3_16;
  assign port_det_flag_3_17 = inv_port_det_flag_3_17;
  assign port_det_flag_3_18 = inv_port_det_flag_3_18;
  assign port_det_flag_3_19 = inv_port_det_flag_3_19;
  assign port_det_flag_3_20 = inv_port_det_flag_3_20;
  assign port_det_flag_3_21 = inv_port_det_flag_3_21;
  assign port_det_flag_3_22 = inv_port_det_flag_3_22;
  assign port_det_flag_3_23 = inv_port_det_flag_3_23;
  assign port_det_flag_4_0 = inv_port_det_flag_4_0;
  assign port_det_flag_4_1 = inv_port_det_flag_4_1;
  assign port_det_flag_4_2 = inv_port_det_flag_4_2;
  assign port_det_flag_4_3 = inv_port_det_flag_4_3;
  assign port_det_flag_4_4 = inv_port_det_flag_4_4;
  assign port_det_flag_4_5 = inv_port_det_flag_4_5;
  assign port_det_flag_4_6 = inv_port_det_flag_4_6;
  assign port_det_flag_4_7 = inv_port_det_flag_4_7;
  assign port_det_flag_4_8 = inv_port_det_flag_4_8;
  assign port_det_flag_4_9 = inv_port_det_flag_4_9;
  assign port_det_flag_4_10 = inv_port_det_flag_4_10;
  assign port_det_flag_4_11 = inv_port_det_flag_4_11;
  assign port_det_flag_4_12 = inv_port_det_flag_4_12;
  assign port_det_flag_4_13 = inv_port_det_flag_4_13;
  assign port_det_flag_4_14 = inv_port_det_flag_4_14;
  assign port_det_flag_4_15 = inv_port_det_flag_4_15;
  assign port_det_flag_4_16 = inv_port_det_flag_4_16;
  assign port_det_flag_4_17 = inv_port_det_flag_4_17;
  assign port_det_flag_4_18 = inv_port_det_flag_4_18;
  assign port_det_flag_4_19 = inv_port_det_flag_4_19;
  assign port_det_flag_4_20 = inv_port_det_flag_4_20;
  assign port_det_flag_4_21 = inv_port_det_flag_4_21;
  assign port_det_flag_4_22 = inv_port_det_flag_4_22;
  assign port_det_flag_4_23 = inv_port_det_flag_4_23;
  assign port_det_flag_5_0 = inv_port_det_flag_5_0;
  assign port_det_flag_5_1 = inv_port_det_flag_5_1;
  assign port_det_flag_5_2 = inv_port_det_flag_5_2;
  assign port_det_flag_5_3 = inv_port_det_flag_5_3;
  assign port_det_flag_5_4 = inv_port_det_flag_5_4;
  assign port_det_flag_5_5 = inv_port_det_flag_5_5;
  assign port_det_flag_5_6 = inv_port_det_flag_5_6;
  assign port_det_flag_5_7 = inv_port_det_flag_5_7;
  assign port_det_flag_5_8 = inv_port_det_flag_5_8;
  assign port_det_flag_5_9 = inv_port_det_flag_5_9;
  assign port_det_flag_5_10 = inv_port_det_flag_5_10;
  assign port_det_flag_5_11 = inv_port_det_flag_5_11;
  assign port_det_flag_5_12 = inv_port_det_flag_5_12;
  assign port_det_flag_5_13 = inv_port_det_flag_5_13;
  assign port_det_flag_5_14 = inv_port_det_flag_5_14;
  assign port_det_flag_5_15 = inv_port_det_flag_5_15;
  assign port_det_flag_5_16 = inv_port_det_flag_5_16;
  assign port_det_flag_5_17 = inv_port_det_flag_5_17;
  assign port_det_flag_5_18 = inv_port_det_flag_5_18;
  assign port_det_flag_5_19 = inv_port_det_flag_5_19;
  assign port_det_flag_5_20 = inv_port_det_flag_5_20;
  assign port_det_flag_5_21 = inv_port_det_flag_5_21;
  assign port_det_flag_5_22 = inv_port_det_flag_5_22;
  assign port_det_flag_5_23 = inv_port_det_flag_5_23;
  assign port_det_flag_6_0 = inv_port_det_flag_6_0;
  assign port_det_flag_6_1 = inv_port_det_flag_6_1;
  assign port_det_flag_6_2 = inv_port_det_flag_6_2;
  assign port_det_flag_6_3 = inv_port_det_flag_6_3;
  assign port_det_flag_6_4 = inv_port_det_flag_6_4;
  assign port_det_flag_6_5 = inv_port_det_flag_6_5;
  assign port_det_flag_6_6 = inv_port_det_flag_6_6;
  assign port_det_flag_6_7 = inv_port_det_flag_6_7;
  assign port_det_flag_6_8 = inv_port_det_flag_6_8;
  assign port_det_flag_6_9 = inv_port_det_flag_6_9;
  assign port_det_flag_6_10 = inv_port_det_flag_6_10;
  assign port_det_flag_6_11 = inv_port_det_flag_6_11;
  assign port_det_flag_6_12 = inv_port_det_flag_6_12;
  assign port_det_flag_6_13 = inv_port_det_flag_6_13;
  assign port_det_flag_6_14 = inv_port_det_flag_6_14;
  assign port_det_flag_6_15 = inv_port_det_flag_6_15;
  assign port_det_flag_6_16 = inv_port_det_flag_6_16;
  assign port_det_flag_6_17 = inv_port_det_flag_6_17;
  assign port_det_flag_6_18 = inv_port_det_flag_6_18;
  assign port_det_flag_6_19 = inv_port_det_flag_6_19;
  assign port_det_flag_6_20 = inv_port_det_flag_6_20;
  assign port_det_flag_6_21 = inv_port_det_flag_6_21;
  assign port_det_flag_6_22 = inv_port_det_flag_6_22;
  assign port_det_flag_6_23 = inv_port_det_flag_6_23;
  assign port_det_flag_7_0 = inv_port_det_flag_7_0;
  assign port_det_flag_7_1 = inv_port_det_flag_7_1;
  assign port_det_flag_7_2 = inv_port_det_flag_7_2;
  assign port_det_flag_7_3 = inv_port_det_flag_7_3;
  assign port_det_flag_7_4 = inv_port_det_flag_7_4;
  assign port_det_flag_7_5 = inv_port_det_flag_7_5;
  assign port_det_flag_7_6 = inv_port_det_flag_7_6;
  assign port_det_flag_7_7 = inv_port_det_flag_7_7;
  assign port_det_flag_7_8 = inv_port_det_flag_7_8;
  assign port_det_flag_7_9 = inv_port_det_flag_7_9;
  assign port_det_flag_7_10 = inv_port_det_flag_7_10;
  assign port_det_flag_7_11 = inv_port_det_flag_7_11;
  assign port_det_flag_7_12 = inv_port_det_flag_7_12;
  assign port_det_flag_7_13 = inv_port_det_flag_7_13;
  assign port_det_flag_7_14 = inv_port_det_flag_7_14;
  assign port_det_flag_7_15 = inv_port_det_flag_7_15;
  assign port_det_flag_7_16 = inv_port_det_flag_7_16;
  assign port_det_flag_7_17 = inv_port_det_flag_7_17;
  assign port_det_flag_7_18 = inv_port_det_flag_7_18;
  assign port_det_flag_7_19 = inv_port_det_flag_7_19;
  assign port_det_flag_7_20 = inv_port_det_flag_7_20;
  assign port_det_flag_7_21 = inv_port_det_flag_7_21;
  assign port_det_flag_7_22 = inv_port_det_flag_7_22;
  assign port_det_flag_7_23 = inv_port_det_flag_7_23;
  assign port_det_flag_8_0 = inv_port_det_flag_8_0;
  assign port_det_flag_8_1 = inv_port_det_flag_8_1;
  assign port_det_flag_8_2 = inv_port_det_flag_8_2;
  assign port_det_flag_8_3 = inv_port_det_flag_8_3;
  assign port_det_flag_8_4 = inv_port_det_flag_8_4;
  assign port_det_flag_8_5 = inv_port_det_flag_8_5;
  assign port_det_flag_8_6 = inv_port_det_flag_8_6;
  assign port_det_flag_8_7 = inv_port_det_flag_8_7;
  assign port_det_flag_8_8 = inv_port_det_flag_8_8;
  assign port_det_flag_8_9 = inv_port_det_flag_8_9;
  assign port_det_flag_8_10 = inv_port_det_flag_8_10;
  assign port_det_flag_8_11 = inv_port_det_flag_8_11;
  assign port_det_flag_8_12 = inv_port_det_flag_8_12;
  assign port_det_flag_8_13 = inv_port_det_flag_8_13;
  assign port_det_flag_8_14 = inv_port_det_flag_8_14;
  assign port_det_flag_8_15 = inv_port_det_flag_8_15;
  assign port_det_flag_8_16 = inv_port_det_flag_8_16;
  assign port_det_flag_8_17 = inv_port_det_flag_8_17;
  assign port_det_flag_8_18 = inv_port_det_flag_8_18;
  assign port_det_flag_8_19 = inv_port_det_flag_8_19;
  assign port_det_flag_8_20 = inv_port_det_flag_8_20;
  assign port_det_flag_8_21 = inv_port_det_flag_8_21;
  assign port_det_flag_8_22 = inv_port_det_flag_8_22;
  assign port_det_flag_8_23 = inv_port_det_flag_8_23;
  assign port_det_flag_9_0 = inv_port_det_flag_9_0;
  assign port_det_flag_9_1 = inv_port_det_flag_9_1;
  assign port_det_flag_9_2 = inv_port_det_flag_9_2;
  assign port_det_flag_9_3 = inv_port_det_flag_9_3;
  assign port_det_flag_9_4 = inv_port_det_flag_9_4;
  assign port_det_flag_9_5 = inv_port_det_flag_9_5;
  assign port_det_flag_9_6 = inv_port_det_flag_9_6;
  assign port_det_flag_9_7 = inv_port_det_flag_9_7;
  assign port_det_flag_9_8 = inv_port_det_flag_9_8;
  assign port_det_flag_9_9 = inv_port_det_flag_9_9;
  assign port_det_flag_9_10 = inv_port_det_flag_9_10;
  assign port_det_flag_9_11 = inv_port_det_flag_9_11;
  assign port_det_flag_9_12 = inv_port_det_flag_9_12;
  assign port_det_flag_9_13 = inv_port_det_flag_9_13;
  assign port_det_flag_9_14 = inv_port_det_flag_9_14;
  assign port_det_flag_9_15 = inv_port_det_flag_9_15;
  assign port_det_flag_9_16 = inv_port_det_flag_9_16;
  assign port_det_flag_9_17 = inv_port_det_flag_9_17;
  assign port_det_flag_9_18 = inv_port_det_flag_9_18;
  assign port_det_flag_9_19 = inv_port_det_flag_9_19;
  assign port_det_flag_9_20 = inv_port_det_flag_9_20;
  assign port_det_flag_9_21 = inv_port_det_flag_9_21;
  assign port_det_flag_9_22 = inv_port_det_flag_9_22;
  assign port_det_flag_9_23 = inv_port_det_flag_9_23;
  assign port_det_flag_10_0 = inv_port_det_flag_10_0;
  assign port_det_flag_10_1 = inv_port_det_flag_10_1;
  assign port_det_flag_10_2 = inv_port_det_flag_10_2;
  assign port_det_flag_10_3 = inv_port_det_flag_10_3;
  assign port_det_flag_10_4 = inv_port_det_flag_10_4;
  assign port_det_flag_10_5 = inv_port_det_flag_10_5;
  assign port_det_flag_10_6 = inv_port_det_flag_10_6;
  assign port_det_flag_10_7 = inv_port_det_flag_10_7;
  assign port_det_flag_10_8 = inv_port_det_flag_10_8;
  assign port_det_flag_10_9 = inv_port_det_flag_10_9;
  assign port_det_flag_10_10 = inv_port_det_flag_10_10;
  assign port_det_flag_10_11 = inv_port_det_flag_10_11;
  assign port_det_flag_10_12 = inv_port_det_flag_10_12;
  assign port_det_flag_10_13 = inv_port_det_flag_10_13;
  assign port_det_flag_10_14 = inv_port_det_flag_10_14;
  assign port_det_flag_10_15 = inv_port_det_flag_10_15;
  assign port_det_flag_10_16 = inv_port_det_flag_10_16;
  assign port_det_flag_10_17 = inv_port_det_flag_10_17;
  assign port_det_flag_10_18 = inv_port_det_flag_10_18;
  assign port_det_flag_10_19 = inv_port_det_flag_10_19;
  assign port_det_flag_10_20 = inv_port_det_flag_10_20;
  assign port_det_flag_10_21 = inv_port_det_flag_10_21;
  assign port_det_flag_10_22 = inv_port_det_flag_10_22;
  assign port_det_flag_10_23 = inv_port_det_flag_10_23;
  assign port_det_flag_11_0 = inv_port_det_flag_11_0;
  assign port_det_flag_11_1 = inv_port_det_flag_11_1;
  assign port_det_flag_11_2 = inv_port_det_flag_11_2;
  assign port_det_flag_11_3 = inv_port_det_flag_11_3;
  assign port_det_flag_11_4 = inv_port_det_flag_11_4;
  assign port_det_flag_11_5 = inv_port_det_flag_11_5;
  assign port_det_flag_11_6 = inv_port_det_flag_11_6;
  assign port_det_flag_11_7 = inv_port_det_flag_11_7;
  assign port_det_flag_11_8 = inv_port_det_flag_11_8;
  assign port_det_flag_11_9 = inv_port_det_flag_11_9;
  assign port_det_flag_11_10 = inv_port_det_flag_11_10;
  assign port_det_flag_11_11 = inv_port_det_flag_11_11;
  assign port_det_flag_11_12 = inv_port_det_flag_11_12;
  assign port_det_flag_11_13 = inv_port_det_flag_11_13;
  assign port_det_flag_11_14 = inv_port_det_flag_11_14;
  assign port_det_flag_11_15 = inv_port_det_flag_11_15;
  assign port_det_flag_11_16 = inv_port_det_flag_11_16;
  assign port_det_flag_11_17 = inv_port_det_flag_11_17;
  assign port_det_flag_11_18 = inv_port_det_flag_11_18;
  assign port_det_flag_11_19 = inv_port_det_flag_11_19;
  assign port_det_flag_11_20 = inv_port_det_flag_11_20;
  assign port_det_flag_11_21 = inv_port_det_flag_11_21;
  assign port_det_flag_11_22 = inv_port_det_flag_11_22;
  assign port_det_flag_11_23 = inv_port_det_flag_11_23;
  assign port_det_flag_12_0 = inv_port_det_flag_12_0;
  assign port_det_flag_12_1 = inv_port_det_flag_12_1;
  assign port_det_flag_12_2 = inv_port_det_flag_12_2;
  assign port_det_flag_12_3 = inv_port_det_flag_12_3;
  assign port_det_flag_12_4 = inv_port_det_flag_12_4;
  assign port_det_flag_12_5 = inv_port_det_flag_12_5;
  assign port_det_flag_12_6 = inv_port_det_flag_12_6;
  assign port_det_flag_12_7 = inv_port_det_flag_12_7;
  assign port_det_flag_12_8 = inv_port_det_flag_12_8;
  assign port_det_flag_12_9 = inv_port_det_flag_12_9;
  assign port_det_flag_12_10 = inv_port_det_flag_12_10;
  assign port_det_flag_12_11 = inv_port_det_flag_12_11;
  assign port_det_flag_12_12 = inv_port_det_flag_12_12;
  assign port_det_flag_12_13 = inv_port_det_flag_12_13;
  assign port_det_flag_12_14 = inv_port_det_flag_12_14;
  assign port_det_flag_12_15 = inv_port_det_flag_12_15;
  assign port_det_flag_12_16 = inv_port_det_flag_12_16;
  assign port_det_flag_12_17 = inv_port_det_flag_12_17;
  assign port_det_flag_12_18 = inv_port_det_flag_12_18;
  assign port_det_flag_12_19 = inv_port_det_flag_12_19;
  assign port_det_flag_12_20 = inv_port_det_flag_12_20;
  assign port_det_flag_12_21 = inv_port_det_flag_12_21;
  assign port_det_flag_12_22 = inv_port_det_flag_12_22;
  assign port_det_flag_12_23 = inv_port_det_flag_12_23;
  assign port_det_flag_13_0 = inv_port_det_flag_13_0;
  assign port_det_flag_13_1 = inv_port_det_flag_13_1;
  assign port_det_flag_13_2 = inv_port_det_flag_13_2;
  assign port_det_flag_13_3 = inv_port_det_flag_13_3;
  assign port_det_flag_13_4 = inv_port_det_flag_13_4;
  assign port_det_flag_13_5 = inv_port_det_flag_13_5;
  assign port_det_flag_13_6 = inv_port_det_flag_13_6;
  assign port_det_flag_13_7 = inv_port_det_flag_13_7;
  assign port_det_flag_13_8 = inv_port_det_flag_13_8;
  assign port_det_flag_13_9 = inv_port_det_flag_13_9;
  assign port_det_flag_13_10 = inv_port_det_flag_13_10;
  assign port_det_flag_13_11 = inv_port_det_flag_13_11;
  assign port_det_flag_13_12 = inv_port_det_flag_13_12;
  assign port_det_flag_13_13 = inv_port_det_flag_13_13;
  assign port_det_flag_13_14 = inv_port_det_flag_13_14;
  assign port_det_flag_13_15 = inv_port_det_flag_13_15;
  assign port_det_flag_13_16 = inv_port_det_flag_13_16;
  assign port_det_flag_13_17 = inv_port_det_flag_13_17;
  assign port_det_flag_13_18 = inv_port_det_flag_13_18;
  assign port_det_flag_13_19 = inv_port_det_flag_13_19;
  assign port_det_flag_13_20 = inv_port_det_flag_13_20;
  assign port_det_flag_13_21 = inv_port_det_flag_13_21;
  assign port_det_flag_13_22 = inv_port_det_flag_13_22;
  assign port_det_flag_13_23 = inv_port_det_flag_13_23;
  assign port_det_flag_14_0 = inv_port_det_flag_14_0;
  assign port_det_flag_14_1 = inv_port_det_flag_14_1;
  assign port_det_flag_14_2 = inv_port_det_flag_14_2;
  assign port_det_flag_14_3 = inv_port_det_flag_14_3;
  assign port_det_flag_14_4 = inv_port_det_flag_14_4;
  assign port_det_flag_14_5 = inv_port_det_flag_14_5;
  assign port_det_flag_14_6 = inv_port_det_flag_14_6;
  assign port_det_flag_14_7 = inv_port_det_flag_14_7;
  assign port_det_flag_14_8 = inv_port_det_flag_14_8;
  assign port_det_flag_14_9 = inv_port_det_flag_14_9;
  assign port_det_flag_14_10 = inv_port_det_flag_14_10;
  assign port_det_flag_14_11 = inv_port_det_flag_14_11;
  assign port_det_flag_14_12 = inv_port_det_flag_14_12;
  assign port_det_flag_14_13 = inv_port_det_flag_14_13;
  assign port_det_flag_14_14 = inv_port_det_flag_14_14;
  assign port_det_flag_14_15 = inv_port_det_flag_14_15;
  assign port_det_flag_14_16 = inv_port_det_flag_14_16;
  assign port_det_flag_14_17 = inv_port_det_flag_14_17;
  assign port_det_flag_14_18 = inv_port_det_flag_14_18;
  assign port_det_flag_14_19 = inv_port_det_flag_14_19;
  assign port_det_flag_14_20 = inv_port_det_flag_14_20;
  assign port_det_flag_14_21 = inv_port_det_flag_14_21;
  assign port_det_flag_14_22 = inv_port_det_flag_14_22;
  assign port_det_flag_14_23 = inv_port_det_flag_14_23;
  assign port_det_flag_15_0 = inv_port_det_flag_15_0;
  assign port_det_flag_15_1 = inv_port_det_flag_15_1;
  assign port_det_flag_15_2 = inv_port_det_flag_15_2;
  assign port_det_flag_15_3 = inv_port_det_flag_15_3;
  assign port_det_flag_15_4 = inv_port_det_flag_15_4;
  assign port_det_flag_15_5 = inv_port_det_flag_15_5;
  assign port_det_flag_15_6 = inv_port_det_flag_15_6;
  assign port_det_flag_15_7 = inv_port_det_flag_15_7;
  assign port_det_flag_15_8 = inv_port_det_flag_15_8;
  assign port_det_flag_15_9 = inv_port_det_flag_15_9;
  assign port_det_flag_15_10 = inv_port_det_flag_15_10;
  assign port_det_flag_15_11 = inv_port_det_flag_15_11;
  assign port_det_flag_15_12 = inv_port_det_flag_15_12;
  assign port_det_flag_15_13 = inv_port_det_flag_15_13;
  assign port_det_flag_15_14 = inv_port_det_flag_15_14;
  assign port_det_flag_15_15 = inv_port_det_flag_15_15;
  assign port_det_flag_15_16 = inv_port_det_flag_15_16;
  assign port_det_flag_15_17 = inv_port_det_flag_15_17;
  assign port_det_flag_15_18 = inv_port_det_flag_15_18;
  assign port_det_flag_15_19 = inv_port_det_flag_15_19;
  assign port_det_flag_15_20 = inv_port_det_flag_15_20;
  assign port_det_flag_15_21 = inv_port_det_flag_15_21;
  assign port_det_flag_15_22 = inv_port_det_flag_15_22;
  assign port_det_flag_15_23 = inv_port_det_flag_15_23;
  assign port_det_flag_16_0 = inv_port_det_flag_16_0;
  assign port_det_flag_16_1 = inv_port_det_flag_16_1;
  assign port_det_flag_16_2 = inv_port_det_flag_16_2;
  assign port_det_flag_16_3 = inv_port_det_flag_16_3;
  assign port_det_flag_16_4 = inv_port_det_flag_16_4;
  assign port_det_flag_16_5 = inv_port_det_flag_16_5;
  assign port_det_flag_16_6 = inv_port_det_flag_16_6;
  assign port_det_flag_16_7 = inv_port_det_flag_16_7;
  assign port_det_flag_16_8 = inv_port_det_flag_16_8;
  assign port_det_flag_16_9 = inv_port_det_flag_16_9;
  assign port_det_flag_16_10 = inv_port_det_flag_16_10;
  assign port_det_flag_16_11 = inv_port_det_flag_16_11;
  assign port_det_flag_16_12 = inv_port_det_flag_16_12;
  assign port_det_flag_16_13 = inv_port_det_flag_16_13;
  assign port_det_flag_16_14 = inv_port_det_flag_16_14;
  assign port_det_flag_16_15 = inv_port_det_flag_16_15;
  assign port_det_flag_16_16 = inv_port_det_flag_16_16;
  assign port_det_flag_16_17 = inv_port_det_flag_16_17;
  assign port_det_flag_16_18 = inv_port_det_flag_16_18;
  assign port_det_flag_16_19 = inv_port_det_flag_16_19;
  assign port_det_flag_16_20 = inv_port_det_flag_16_20;
  assign port_det_flag_16_21 = inv_port_det_flag_16_21;
  assign port_det_flag_16_22 = inv_port_det_flag_16_22;
  assign port_det_flag_16_23 = inv_port_det_flag_16_23;
  assign port_det_flag_17_0 = inv_port_det_flag_17_0;
  assign port_det_flag_17_1 = inv_port_det_flag_17_1;
  assign port_det_flag_17_2 = inv_port_det_flag_17_2;
  assign port_det_flag_17_3 = inv_port_det_flag_17_3;
  assign port_det_flag_17_4 = inv_port_det_flag_17_4;
  assign port_det_flag_17_5 = inv_port_det_flag_17_5;
  assign port_det_flag_17_6 = inv_port_det_flag_17_6;
  assign port_det_flag_17_7 = inv_port_det_flag_17_7;
  assign port_det_flag_17_8 = inv_port_det_flag_17_8;
  assign port_det_flag_17_9 = inv_port_det_flag_17_9;
  assign port_det_flag_17_10 = inv_port_det_flag_17_10;
  assign port_det_flag_17_11 = inv_port_det_flag_17_11;
  assign port_det_flag_17_12 = inv_port_det_flag_17_12;
  assign port_det_flag_17_13 = inv_port_det_flag_17_13;
  assign port_det_flag_17_14 = inv_port_det_flag_17_14;
  assign port_det_flag_17_15 = inv_port_det_flag_17_15;
  assign port_det_flag_17_16 = inv_port_det_flag_17_16;
  assign port_det_flag_17_17 = inv_port_det_flag_17_17;
  assign port_det_flag_17_18 = inv_port_det_flag_17_18;
  assign port_det_flag_17_19 = inv_port_det_flag_17_19;
  assign port_det_flag_17_20 = inv_port_det_flag_17_20;
  assign port_det_flag_17_21 = inv_port_det_flag_17_21;
  assign port_det_flag_17_22 = inv_port_det_flag_17_22;
  assign port_det_flag_17_23 = inv_port_det_flag_17_23;
  assign port_det_flag_18_0 = inv_port_det_flag_18_0;
  assign port_det_flag_18_1 = inv_port_det_flag_18_1;
  assign port_det_flag_18_2 = inv_port_det_flag_18_2;
  assign port_det_flag_18_3 = inv_port_det_flag_18_3;
  assign port_det_flag_18_4 = inv_port_det_flag_18_4;
  assign port_det_flag_18_5 = inv_port_det_flag_18_5;
  assign port_det_flag_18_6 = inv_port_det_flag_18_6;
  assign port_det_flag_18_7 = inv_port_det_flag_18_7;
  assign port_det_flag_18_8 = inv_port_det_flag_18_8;
  assign port_det_flag_18_9 = inv_port_det_flag_18_9;
  assign port_det_flag_18_10 = inv_port_det_flag_18_10;
  assign port_det_flag_18_11 = inv_port_det_flag_18_11;
  assign port_det_flag_18_12 = inv_port_det_flag_18_12;
  assign port_det_flag_18_13 = inv_port_det_flag_18_13;
  assign port_det_flag_18_14 = inv_port_det_flag_18_14;
  assign port_det_flag_18_15 = inv_port_det_flag_18_15;
  assign port_det_flag_18_16 = inv_port_det_flag_18_16;
  assign port_det_flag_18_17 = inv_port_det_flag_18_17;
  assign port_det_flag_18_18 = inv_port_det_flag_18_18;
  assign port_det_flag_18_19 = inv_port_det_flag_18_19;
  assign port_det_flag_18_20 = inv_port_det_flag_18_20;
  assign port_det_flag_18_21 = inv_port_det_flag_18_21;
  assign port_det_flag_18_22 = inv_port_det_flag_18_22;
  assign port_det_flag_18_23 = inv_port_det_flag_18_23;
  assign port_det_flag_19_0 = inv_port_det_flag_19_0;
  assign port_det_flag_19_1 = inv_port_det_flag_19_1;
  assign port_det_flag_19_2 = inv_port_det_flag_19_2;
  assign port_det_flag_19_3 = inv_port_det_flag_19_3;
  assign port_det_flag_19_4 = inv_port_det_flag_19_4;
  assign port_det_flag_19_5 = inv_port_det_flag_19_5;
  assign port_det_flag_19_6 = inv_port_det_flag_19_6;
  assign port_det_flag_19_7 = inv_port_det_flag_19_7;
  assign port_det_flag_19_8 = inv_port_det_flag_19_8;
  assign port_det_flag_19_9 = inv_port_det_flag_19_9;
  assign port_det_flag_19_10 = inv_port_det_flag_19_10;
  assign port_det_flag_19_11 = inv_port_det_flag_19_11;
  assign port_det_flag_19_12 = inv_port_det_flag_19_12;
  assign port_det_flag_19_13 = inv_port_det_flag_19_13;
  assign port_det_flag_19_14 = inv_port_det_flag_19_14;
  assign port_det_flag_19_15 = inv_port_det_flag_19_15;
  assign port_det_flag_19_16 = inv_port_det_flag_19_16;
  assign port_det_flag_19_17 = inv_port_det_flag_19_17;
  assign port_det_flag_19_18 = inv_port_det_flag_19_18;
  assign port_det_flag_19_19 = inv_port_det_flag_19_19;
  assign port_det_flag_19_20 = inv_port_det_flag_19_20;
  assign port_det_flag_19_21 = inv_port_det_flag_19_21;
  assign port_det_flag_19_22 = inv_port_det_flag_19_22;
  assign port_det_flag_19_23 = inv_port_det_flag_19_23;
  assign port_det_flag_20_0 = inv_port_det_flag_20_0;
  assign port_det_flag_20_1 = inv_port_det_flag_20_1;
  assign port_det_flag_20_2 = inv_port_det_flag_20_2;
  assign port_det_flag_20_3 = inv_port_det_flag_20_3;
  assign port_det_flag_20_4 = inv_port_det_flag_20_4;
  assign port_det_flag_20_5 = inv_port_det_flag_20_5;
  assign port_det_flag_20_6 = inv_port_det_flag_20_6;
  assign port_det_flag_20_7 = inv_port_det_flag_20_7;
  assign port_det_flag_20_8 = inv_port_det_flag_20_8;
  assign port_det_flag_20_9 = inv_port_det_flag_20_9;
  assign port_det_flag_20_10 = inv_port_det_flag_20_10;
  assign port_det_flag_20_11 = inv_port_det_flag_20_11;
  assign port_det_flag_20_12 = inv_port_det_flag_20_12;
  assign port_det_flag_20_13 = inv_port_det_flag_20_13;
  assign port_det_flag_20_14 = inv_port_det_flag_20_14;
  assign port_det_flag_20_15 = inv_port_det_flag_20_15;
  assign port_det_flag_20_16 = inv_port_det_flag_20_16;
  assign port_det_flag_20_17 = inv_port_det_flag_20_17;
  assign port_det_flag_20_18 = inv_port_det_flag_20_18;
  assign port_det_flag_20_19 = inv_port_det_flag_20_19;
  assign port_det_flag_20_20 = inv_port_det_flag_20_20;
  assign port_det_flag_20_21 = inv_port_det_flag_20_21;
  assign port_det_flag_20_22 = inv_port_det_flag_20_22;
  assign port_det_flag_20_23 = inv_port_det_flag_20_23;
  assign port_det_flag_21_0 = inv_port_det_flag_21_0;
  assign port_det_flag_21_1 = inv_port_det_flag_21_1;
  assign port_det_flag_21_2 = inv_port_det_flag_21_2;
  assign port_det_flag_21_3 = inv_port_det_flag_21_3;
  assign port_det_flag_21_4 = inv_port_det_flag_21_4;
  assign port_det_flag_21_5 = inv_port_det_flag_21_5;
  assign port_det_flag_21_6 = inv_port_det_flag_21_6;
  assign port_det_flag_21_7 = inv_port_det_flag_21_7;
  assign port_det_flag_21_8 = inv_port_det_flag_21_8;
  assign port_det_flag_21_9 = inv_port_det_flag_21_9;
  assign port_det_flag_21_10 = inv_port_det_flag_21_10;
  assign port_det_flag_21_11 = inv_port_det_flag_21_11;
  assign port_det_flag_21_12 = inv_port_det_flag_21_12;
  assign port_det_flag_21_13 = inv_port_det_flag_21_13;
  assign port_det_flag_21_14 = inv_port_det_flag_21_14;
  assign port_det_flag_21_15 = inv_port_det_flag_21_15;
  assign port_det_flag_21_16 = inv_port_det_flag_21_16;
  assign port_det_flag_21_17 = inv_port_det_flag_21_17;
  assign port_det_flag_21_18 = inv_port_det_flag_21_18;
  assign port_det_flag_21_19 = inv_port_det_flag_21_19;
  assign port_det_flag_21_20 = inv_port_det_flag_21_20;
  assign port_det_flag_21_21 = inv_port_det_flag_21_21;
  assign port_det_flag_21_22 = inv_port_det_flag_21_22;
  assign port_det_flag_21_23 = inv_port_det_flag_21_23;
  assign port_det_flag_22_0 = inv_port_det_flag_22_0;
  assign port_det_flag_22_1 = inv_port_det_flag_22_1;
  assign port_det_flag_22_2 = inv_port_det_flag_22_2;
  assign port_det_flag_22_3 = inv_port_det_flag_22_3;
  assign port_det_flag_22_4 = inv_port_det_flag_22_4;
  assign port_det_flag_22_5 = inv_port_det_flag_22_5;
  assign port_det_flag_22_6 = inv_port_det_flag_22_6;
  assign port_det_flag_22_7 = inv_port_det_flag_22_7;
  assign port_det_flag_22_8 = inv_port_det_flag_22_8;
  assign port_det_flag_22_9 = inv_port_det_flag_22_9;
  assign port_det_flag_22_10 = inv_port_det_flag_22_10;
  assign port_det_flag_22_11 = inv_port_det_flag_22_11;
  assign port_det_flag_22_12 = inv_port_det_flag_22_12;
  assign port_det_flag_22_13 = inv_port_det_flag_22_13;
  assign port_det_flag_22_14 = inv_port_det_flag_22_14;
  assign port_det_flag_22_15 = inv_port_det_flag_22_15;
  assign port_det_flag_22_16 = inv_port_det_flag_22_16;
  assign port_det_flag_22_17 = inv_port_det_flag_22_17;
  assign port_det_flag_22_18 = inv_port_det_flag_22_18;
  assign port_det_flag_22_19 = inv_port_det_flag_22_19;
  assign port_det_flag_22_20 = inv_port_det_flag_22_20;
  assign port_det_flag_22_21 = inv_port_det_flag_22_21;
  assign port_det_flag_22_22 = inv_port_det_flag_22_22;
  assign port_det_flag_22_23 = inv_port_det_flag_22_23;
  assign port_det_flag_23_0 = inv_port_det_flag_23_0;
  assign port_det_flag_23_1 = inv_port_det_flag_23_1;
  assign port_det_flag_23_2 = inv_port_det_flag_23_2;
  assign port_det_flag_23_3 = inv_port_det_flag_23_3;
  assign port_det_flag_23_4 = inv_port_det_flag_23_4;
  assign port_det_flag_23_5 = inv_port_det_flag_23_5;
  assign port_det_flag_23_6 = inv_port_det_flag_23_6;
  assign port_det_flag_23_7 = inv_port_det_flag_23_7;
  assign port_det_flag_23_8 = inv_port_det_flag_23_8;
  assign port_det_flag_23_9 = inv_port_det_flag_23_9;
  assign port_det_flag_23_10 = inv_port_det_flag_23_10;
  assign port_det_flag_23_11 = inv_port_det_flag_23_11;
  assign port_det_flag_23_12 = inv_port_det_flag_23_12;
  assign port_det_flag_23_13 = inv_port_det_flag_23_13;
  assign port_det_flag_23_14 = inv_port_det_flag_23_14;
  assign port_det_flag_23_15 = inv_port_det_flag_23_15;
  assign port_det_flag_23_16 = inv_port_det_flag_23_16;
  assign port_det_flag_23_17 = inv_port_det_flag_23_17;
  assign port_det_flag_23_18 = inv_port_det_flag_23_18;
  assign port_det_flag_23_19 = inv_port_det_flag_23_19;
  assign port_det_flag_23_20 = inv_port_det_flag_23_20;
  assign port_det_flag_23_21 = inv_port_det_flag_23_21;
  assign port_det_flag_23_22 = inv_port_det_flag_23_22;
  assign port_det_flag_23_23 = inv_port_det_flag_23_23;
  assign port_det_flag_24_0 = inv_port_det_flag_24_0;
  assign port_det_flag_24_1 = inv_port_det_flag_24_1;
  assign port_det_flag_24_2 = inv_port_det_flag_24_2;
  assign port_det_flag_24_3 = inv_port_det_flag_24_3;
  assign port_det_flag_24_4 = inv_port_det_flag_24_4;
  assign port_det_flag_24_5 = inv_port_det_flag_24_5;
  assign port_det_flag_24_6 = inv_port_det_flag_24_6;
  assign port_det_flag_24_7 = inv_port_det_flag_24_7;
  assign port_det_flag_24_8 = inv_port_det_flag_24_8;
  assign port_det_flag_24_9 = inv_port_det_flag_24_9;
  assign port_det_flag_24_10 = inv_port_det_flag_24_10;
  assign port_det_flag_24_11 = inv_port_det_flag_24_11;
  assign port_det_flag_24_12 = inv_port_det_flag_24_12;
  assign port_det_flag_24_13 = inv_port_det_flag_24_13;
  assign port_det_flag_24_14 = inv_port_det_flag_24_14;
  assign port_det_flag_24_15 = inv_port_det_flag_24_15;
  assign port_det_flag_24_16 = inv_port_det_flag_24_16;
  assign port_det_flag_24_17 = inv_port_det_flag_24_17;
  assign port_det_flag_24_18 = inv_port_det_flag_24_18;
  assign port_det_flag_24_19 = inv_port_det_flag_24_19;
  assign port_det_flag_24_20 = inv_port_det_flag_24_20;
  assign port_det_flag_24_21 = inv_port_det_flag_24_21;
  assign port_det_flag_24_22 = inv_port_det_flag_24_22;
  assign port_det_flag_24_23 = inv_port_det_flag_24_23;
  assign port_det_flag_25_0 = inv_port_det_flag_25_0;
  assign port_det_flag_25_1 = inv_port_det_flag_25_1;
  assign port_det_flag_25_2 = inv_port_det_flag_25_2;
  assign port_det_flag_25_3 = inv_port_det_flag_25_3;
  assign port_det_flag_25_4 = inv_port_det_flag_25_4;
  assign port_det_flag_25_5 = inv_port_det_flag_25_5;
  assign port_det_flag_25_6 = inv_port_det_flag_25_6;
  assign port_det_flag_25_7 = inv_port_det_flag_25_7;
  assign port_det_flag_25_8 = inv_port_det_flag_25_8;
  assign port_det_flag_25_9 = inv_port_det_flag_25_9;
  assign port_det_flag_25_10 = inv_port_det_flag_25_10;
  assign port_det_flag_25_11 = inv_port_det_flag_25_11;
  assign port_det_flag_25_12 = inv_port_det_flag_25_12;
  assign port_det_flag_25_13 = inv_port_det_flag_25_13;
  assign port_det_flag_25_14 = inv_port_det_flag_25_14;
  assign port_det_flag_25_15 = inv_port_det_flag_25_15;
  assign port_det_flag_25_16 = inv_port_det_flag_25_16;
  assign port_det_flag_25_17 = inv_port_det_flag_25_17;
  assign port_det_flag_25_18 = inv_port_det_flag_25_18;
  assign port_det_flag_25_19 = inv_port_det_flag_25_19;
  assign port_det_flag_25_20 = inv_port_det_flag_25_20;
  assign port_det_flag_25_21 = inv_port_det_flag_25_21;
  assign port_det_flag_25_22 = inv_port_det_flag_25_22;
  assign port_det_flag_25_23 = inv_port_det_flag_25_23;
  assign port_det_flag_26_0 = inv_port_det_flag_26_0;
  assign port_det_flag_26_1 = inv_port_det_flag_26_1;
  assign port_det_flag_26_2 = inv_port_det_flag_26_2;
  assign port_det_flag_26_3 = inv_port_det_flag_26_3;
  assign port_det_flag_26_4 = inv_port_det_flag_26_4;
  assign port_det_flag_26_5 = inv_port_det_flag_26_5;
  assign port_det_flag_26_6 = inv_port_det_flag_26_6;
  assign port_det_flag_26_7 = inv_port_det_flag_26_7;
  assign port_det_flag_26_8 = inv_port_det_flag_26_8;
  assign port_det_flag_26_9 = inv_port_det_flag_26_9;
  assign port_det_flag_26_10 = inv_port_det_flag_26_10;
  assign port_det_flag_26_11 = inv_port_det_flag_26_11;
  assign port_det_flag_26_12 = inv_port_det_flag_26_12;
  assign port_det_flag_26_13 = inv_port_det_flag_26_13;
  assign port_det_flag_26_14 = inv_port_det_flag_26_14;
  assign port_det_flag_26_15 = inv_port_det_flag_26_15;
  assign port_det_flag_26_16 = inv_port_det_flag_26_16;
  assign port_det_flag_26_17 = inv_port_det_flag_26_17;
  assign port_det_flag_26_18 = inv_port_det_flag_26_18;
  assign port_det_flag_26_19 = inv_port_det_flag_26_19;
  assign port_det_flag_26_20 = inv_port_det_flag_26_20;
  assign port_det_flag_26_21 = inv_port_det_flag_26_21;
  assign port_det_flag_26_22 = inv_port_det_flag_26_22;
  assign port_det_flag_26_23 = inv_port_det_flag_26_23;
  assign port_o_0_0 = invLinMap_port_o_0_0;
  assign port_o_0_1 = invLinMap_port_o_0_1;
  assign port_o_0_2 = invLinMap_port_o_0_2;
  assign port_o_0_3 = invLinMap_port_o_0_3;
  assign port_o_0_4 = invLinMap_port_o_0_4;
  assign port_o_0_5 = invLinMap_port_o_0_5;
  assign port_o_0_6 = invLinMap_port_o_0_6;
  assign port_o_0_7 = invLinMap_port_o_0_7;
  assign port_o_1_0 = invLinMap_port_o_1_0;
  assign port_o_1_1 = invLinMap_port_o_1_1;
  assign port_o_1_2 = invLinMap_port_o_1_2;
  assign port_o_1_3 = invLinMap_port_o_1_3;
  assign port_o_1_4 = invLinMap_port_o_1_4;
  assign port_o_1_5 = invLinMap_port_o_1_5;
  assign port_o_1_6 = invLinMap_port_o_1_6;
  assign port_o_1_7 = invLinMap_port_o_1_7;
  assign port_o_2_0 = invLinMap_port_o_2_0;
  assign port_o_2_1 = invLinMap_port_o_2_1;
  assign port_o_2_2 = invLinMap_port_o_2_2;
  assign port_o_2_3 = invLinMap_port_o_2_3;
  assign port_o_2_4 = invLinMap_port_o_2_4;
  assign port_o_2_5 = invLinMap_port_o_2_5;
  assign port_o_2_6 = invLinMap_port_o_2_6;
  assign port_o_2_7 = invLinMap_port_o_2_7;

endmodule

module Shared_InverseLinearMapping (
  input      [1:0]    port_i_0_0,
  input      [1:0]    port_i_0_1,
  input      [1:0]    port_i_0_2,
  input      [1:0]    port_i_0_3,
  input      [1:0]    port_i_0_4,
  input      [1:0]    port_i_0_5,
  input      [1:0]    port_i_0_6,
  input      [1:0]    port_i_0_7,
  input      [1:0]    port_i_1_0,
  input      [1:0]    port_i_1_1,
  input      [1:0]    port_i_1_2,
  input      [1:0]    port_i_1_3,
  input      [1:0]    port_i_1_4,
  input      [1:0]    port_i_1_5,
  input      [1:0]    port_i_1_6,
  input      [1:0]    port_i_1_7,
  input      [1:0]    port_i_2_0,
  input      [1:0]    port_i_2_1,
  input      [1:0]    port_i_2_2,
  input      [1:0]    port_i_2_3,
  input      [1:0]    port_i_2_4,
  input      [1:0]    port_i_2_5,
  input      [1:0]    port_i_2_6,
  input      [1:0]    port_i_2_7,
  output     [1:0]    port_o_0_0,
  output     [1:0]    port_o_0_1,
  output     [1:0]    port_o_0_2,
  output     [1:0]    port_o_0_3,
  output     [1:0]    port_o_0_4,
  output     [1:0]    port_o_0_5,
  output     [1:0]    port_o_0_6,
  output     [1:0]    port_o_0_7,
  output     [1:0]    port_o_1_0,
  output     [1:0]    port_o_1_1,
  output     [1:0]    port_o_1_2,
  output     [1:0]    port_o_1_3,
  output     [1:0]    port_o_1_4,
  output     [1:0]    port_o_1_5,
  output     [1:0]    port_o_1_6,
  output     [1:0]    port_o_1_7,
  output     [1:0]    port_o_2_0,
  output     [1:0]    port_o_2_1,
  output     [1:0]    port_o_2_2,
  output     [1:0]    port_o_2_3,
  output     [1:0]    port_o_2_4,
  output     [1:0]    port_o_2_5,
  output     [1:0]    port_o_2_6,
  output     [1:0]    port_o_2_7
);

  wire       [1:0]    outVal_0_0;
  wire       [1:0]    outVal_0_1;
  wire       [1:0]    outVal_0_2;
  wire       [1:0]    outVal_0_3;
  wire       [1:0]    outVal_0_4;
  wire       [1:0]    outVal_0_5;
  wire       [1:0]    outVal_0_6;
  wire       [1:0]    outVal_0_7;
  wire       [1:0]    outVal_1_0;
  wire       [1:0]    outVal_1_1;
  wire       [1:0]    outVal_1_2;
  wire       [1:0]    outVal_1_3;
  wire       [1:0]    outVal_1_4;
  wire       [1:0]    outVal_1_5;
  wire       [1:0]    outVal_1_6;
  wire       [1:0]    outVal_1_7;
  wire       [1:0]    outVal_2_0;
  wire       [1:0]    outVal_2_1;
  wire       [1:0]    outVal_2_2;
  wire       [1:0]    outVal_2_3;
  wire       [1:0]    outVal_2_4;
  wire       [1:0]    outVal_2_5;
  wire       [1:0]    outVal_2_6;
  wire       [1:0]    outVal_2_7;
  wire       [1:0]    tx1_0;
  wire       [1:0]    tx2_0;
  wire       [1:0]    tx3_0;
  wire       [1:0]    tx4_0;
  wire       [1:0]    tx5_0;
  wire       [1:0]    tx6_0;
  wire       [1:0]    tx7_0;
  wire       [1:0]    tx8_0;
  wire       [1:0]    tx9_0;
  wire       [1:0]    tx10_0;
  wire       [1:0]    _zz_outVal_1_3;
  wire       [1:0]    _zz_outVal_1_0;
  wire       [1:0]    _zz_outVal_1_2;
  wire       [1:0]    _zz_outVal_1_2_1;
  wire       [1:0]    _zz_outVal_1_3_1;
  wire       [1:0]    _zz_outVal_2_3;
  wire       [1:0]    _zz_outVal_2_0;
  wire       [1:0]    _zz_outVal_2_2;
  wire       [1:0]    _zz_outVal_2_2_1;
  wire       [1:0]    _zz_outVal_2_3_1;

  assign tx1_0 = (port_i_0_7 ^ port_i_0_3);
  assign tx2_0 = (port_i_0_6 ^ port_i_0_4);
  assign tx3_0 = (port_i_0_6 ^ port_i_0_0);
  assign tx4_0 = (~ (port_i_0_5 ^ port_i_0_3));
  assign tx5_0 = (~ (port_i_0_5 ^ tx1_0));
  assign tx6_0 = (~ (port_i_0_5 ^ port_i_0_1));
  assign tx7_0 = (~ (port_i_0_4 ^ tx6_0));
  assign tx8_0 = (port_i_0_2 ^ tx4_0);
  assign tx9_0 = (port_i_0_1 ^ tx2_0);
  assign tx10_0 = (tx3_0 ^ tx5_0);
  assign outVal_0_7 = (~ tx4_0);
  assign outVal_0_6 = (~ tx1_0);
  assign outVal_0_5 = (~ tx3_0);
  assign outVal_0_4 = (~ tx5_0);
  assign outVal_0_3 = (~ (tx2_0 ^ tx5_0));
  assign outVal_0_2 = (~ (tx3_0 ^ tx8_0));
  assign outVal_0_1 = (~ tx7_0);
  assign outVal_0_0 = (~ tx9_0);
  assign _zz_outVal_1_3 = (port_i_1_7 ^ port_i_1_3);
  assign _zz_outVal_1_0 = (port_i_1_6 ^ port_i_1_4);
  assign _zz_outVal_1_2 = (port_i_1_6 ^ port_i_1_0);
  assign _zz_outVal_1_2_1 = (port_i_1_5 ^ port_i_1_3);
  assign _zz_outVal_1_3_1 = (port_i_1_5 ^ _zz_outVal_1_3);
  assign outVal_1_7 = _zz_outVal_1_2_1;
  assign outVal_1_6 = _zz_outVal_1_3;
  assign outVal_1_5 = _zz_outVal_1_2;
  assign outVal_1_4 = _zz_outVal_1_3_1;
  assign outVal_1_3 = (_zz_outVal_1_0 ^ _zz_outVal_1_3_1);
  assign outVal_1_2 = (_zz_outVal_1_2 ^ (port_i_1_2 ^ _zz_outVal_1_2_1));
  assign outVal_1_1 = (port_i_1_4 ^ (port_i_1_5 ^ port_i_1_1));
  assign outVal_1_0 = (port_i_1_1 ^ _zz_outVal_1_0);
  assign _zz_outVal_2_3 = (port_i_2_7 ^ port_i_2_3);
  assign _zz_outVal_2_0 = (port_i_2_6 ^ port_i_2_4);
  assign _zz_outVal_2_2 = (port_i_2_6 ^ port_i_2_0);
  assign _zz_outVal_2_2_1 = (port_i_2_5 ^ port_i_2_3);
  assign _zz_outVal_2_3_1 = (port_i_2_5 ^ _zz_outVal_2_3);
  assign outVal_2_7 = _zz_outVal_2_2_1;
  assign outVal_2_6 = _zz_outVal_2_3;
  assign outVal_2_5 = _zz_outVal_2_2;
  assign outVal_2_4 = _zz_outVal_2_3_1;
  assign outVal_2_3 = (_zz_outVal_2_0 ^ _zz_outVal_2_3_1);
  assign outVal_2_2 = (_zz_outVal_2_2 ^ (port_i_2_2 ^ _zz_outVal_2_2_1));
  assign outVal_2_1 = (port_i_2_4 ^ (port_i_2_5 ^ port_i_2_1));
  assign outVal_2_0 = (port_i_2_1 ^ _zz_outVal_2_0);
  assign port_o_0_0 = outVal_0_0;
  assign port_o_0_1 = outVal_0_1;
  assign port_o_0_2 = outVal_0_2;
  assign port_o_0_3 = outVal_0_3;
  assign port_o_0_4 = outVal_0_4;
  assign port_o_0_5 = outVal_0_5;
  assign port_o_0_6 = outVal_0_6;
  assign port_o_0_7 = outVal_0_7;
  assign port_o_1_0 = outVal_1_0;
  assign port_o_1_1 = outVal_1_1;
  assign port_o_1_2 = outVal_1_2;
  assign port_o_1_3 = outVal_1_3;
  assign port_o_1_4 = outVal_1_4;
  assign port_o_1_5 = outVal_1_5;
  assign port_o_1_6 = outVal_1_6;
  assign port_o_1_7 = outVal_1_7;
  assign port_o_2_0 = outVal_2_0;
  assign port_o_2_1 = outVal_2_1;
  assign port_o_2_2 = outVal_2_2;
  assign port_o_2_3 = outVal_2_3;
  assign port_o_2_4 = outVal_2_4;
  assign port_o_2_5 = outVal_2_5;
  assign port_o_2_6 = outVal_2_6;
  assign port_o_2_7 = outVal_2_7;

endmodule

module Shared_GF_INV_8 (
  input      [1:0]    port_i_0_0,
  input      [1:0]    port_i_0_1,
  input      [1:0]    port_i_0_2,
  input      [1:0]    port_i_0_3,
  input      [1:0]    port_i_0_4,
  input      [1:0]    port_i_0_5,
  input      [1:0]    port_i_0_6,
  input      [1:0]    port_i_0_7,
  input      [1:0]    port_i_1_0,
  input      [1:0]    port_i_1_1,
  input      [1:0]    port_i_1_2,
  input      [1:0]    port_i_1_3,
  input      [1:0]    port_i_1_4,
  input      [1:0]    port_i_1_5,
  input      [1:0]    port_i_1_6,
  input      [1:0]    port_i_1_7,
  input      [1:0]    port_i_2_0,
  input      [1:0]    port_i_2_1,
  input      [1:0]    port_i_2_2,
  input      [1:0]    port_i_2_3,
  input      [1:0]    port_i_2_4,
  input      [1:0]    port_i_2_5,
  input      [1:0]    port_i_2_6,
  input      [1:0]    port_i_2_7,
  input               port_rand_0,
  input               port_rand_1,
  input               port_rand_2,
  input               port_rand_3,
  input               port_rand_4,
  input               port_rand_5,
  input               port_rand_6,
  input               port_rand_7,
  input               port_rand_8,
  input               port_rand_9,
  input               port_rand_10,
  input               port_rand_11,
  input               port_rand_12,
  input               port_rand_13,
  input               port_rand_14,
  input               port_rand_15,
  input               port_rand_16,
  input               port_rand_17,
  input               port_rand_18,
  input               port_rand_19,
  input               port_rand_20,
  input               port_rand_21,
  input               port_rand_22,
  input               port_rand_23,
  input               port_rand_24,
  input               port_rand_25,
  input               port_rand_26,
  input               port_rand_27,
  input               port_rand_28,
  input               port_rand_29,
  input               port_rand_30,
  input               port_rand_31,
  input               port_rand_32,
  input               port_rand_33,
  input               port_rand_34,
  input               port_rand_35,
  input               port_rand_36,
  input               port_rand_37,
  input               port_rand_38,
  input               port_rand_39,
  input               port_rand_40,
  input               port_rand_41,
  input               port_rand_42,
  input               port_rand_43,
  input               port_rand_44,
  input               port_rand_45,
  input               port_rand_46,
  input               port_rand_47,
  input               port_rand_48,
  input               port_rand_49,
  input               port_rand_50,
  input               port_rand_51,
  input               port_rand_52,
  input               port_rand_53,
  input               port_rand_54,
  input               port_rand_55,
  input               port_rand_56,
  input               port_rand_57,
  input               port_rand_58,
  input               port_rand_59,
  input               port_rand_60,
  input               port_rand_61,
  input               port_rand_62,
  input               port_rand_63,
  input               port_rand_64,
  input               port_rand_65,
  input               port_rand_66,
  input               port_rand_67,
  input               port_rand_68,
  input               port_rand_69,
  input               port_rand_70,
  input               port_rand_71,
  input               port_rand_72,
  input               port_rand_73,
  input               port_rand_74,
  input               port_rand_75,
  input               port_rand_76,
  input               port_rand_77,
  input               port_rand_78,
  input               port_rand_79,
  input               port_rand_80,
  input               port_rand_81,
  input               port_rand_82,
  input               port_rand_83,
  input               port_rand_84,
  input               port_rand_85,
  input               port_rand_86,
  input               port_rand_87,
  input               port_rand_88,
  input               port_rand_89,
  input               port_rand_90,
  input               port_rand_91,
  input               port_rand_92,
  input               port_rand_93,
  input               port_rand_94,
  input               port_rand_95,
  input               port_rand_96,
  input               port_rand_97,
  input               port_rand_98,
  input               port_rand_99,
  input               port_rand_100,
  input               port_rand_101,
  input               port_rand_102,
  input               port_rand_103,
  input               port_rand_104,
  input               port_rand_105,
  input               port_rand_106,
  input               port_rand_107,
  input               port_rand_108,
  input               port_rand_109,
  input               port_rand_110,
  input               port_rand_111,
  input               port_rand_112,
  input               port_rand_113,
  input               port_rand_114,
  input               port_rand_115,
  input               port_rand_116,
  input               port_rand_117,
  input               port_rand_118,
  input               port_rand_119,
  input               port_rand_120,
  input               port_rand_121,
  input               port_rand_122,
  input               port_rand_123,
  input               port_rand_124,
  input               port_rand_125,
  input               port_rand_126,
  input               port_rand_127,
  input               port_rand_128,
  input               port_rand_129,
  input               port_rand_130,
  input               port_rand_131,
  input               port_rand_132,
  input               port_rand_133,
  input               port_rand_134,
  input               port_rand_135,
  input               port_rand_136,
  input               port_rand_137,
  input               port_rand_138,
  input               port_rand_139,
  input               port_rand_140,
  input               port_rand_141,
  input               port_rand_142,
  input               port_rand_143,
  input               port_rand_144,
  input               port_rand_145,
  input               port_rand_146,
  input               port_rand_147,
  input               port_rand_148,
  input               port_rand_149,
  input               port_rand_150,
  input               port_rand_151,
  input               port_rand_152,
  input               port_rand_153,
  input               port_rand_154,
  input               port_rand_155,
  input               port_rand_156,
  input               port_rand_157,
  input               port_rand_158,
  input               port_rand_159,
  input               port_rand_160,
  input               port_rand_161,
  input               port_rand_162,
  input               port_rand_163,
  input               port_rand_164,
  input               port_rand_165,
  input               port_rand_166,
  input               port_rand_167,
  input               port_rand_168,
  input               port_rand_169,
  input               port_rand_170,
  input               port_rand_171,
  input               port_rand_172,
  input               port_rand_173,
  input               port_rand_174,
  input               port_rand_175,
  input               port_rand_176,
  input               port_rand_177,
  input               port_rand_178,
  input               port_rand_179,
  input               port_rand_180,
  input               port_rand_181,
  input               port_rand_182,
  input               port_rand_183,
  input               port_rand_184,
  input               port_rand_185,
  input               port_rand_186,
  input               port_rand_187,
  input               port_rand_188,
  input               port_rand_189,
  input               port_rand_190,
  input               port_rand_191,
  input               port_rand_192,
  input               port_rand_193,
  input               port_rand_194,
  input               port_rand_195,
  input               port_rand_196,
  input               port_rand_197,
  input               port_rand_198,
  input               port_rand_199,
  input               port_rand_200,
  input               port_rand_201,
  input               port_rand_202,
  input               port_rand_203,
  input               port_rand_204,
  input               port_rand_205,
  input               port_rand_206,
  input               port_rand_207,
  input               port_rand_208,
  input               port_rand_209,
  input               port_rand_210,
  input               port_rand_211,
  input               port_rand_212,
  input               port_rand_213,
  input               port_rand_214,
  input               port_rand_215,
  output     [1:0]    port_o_0_0,
  output     [1:0]    port_o_0_1,
  output     [1:0]    port_o_0_2,
  output     [1:0]    port_o_0_3,
  output     [1:0]    port_o_0_4,
  output     [1:0]    port_o_0_5,
  output     [1:0]    port_o_0_6,
  output     [1:0]    port_o_0_7,
  output     [1:0]    port_o_1_0,
  output     [1:0]    port_o_1_1,
  output     [1:0]    port_o_1_2,
  output     [1:0]    port_o_1_3,
  output     [1:0]    port_o_1_4,
  output     [1:0]    port_o_1_5,
  output     [1:0]    port_o_1_6,
  output     [1:0]    port_o_1_7,
  output     [1:0]    port_o_2_0,
  output     [1:0]    port_o_2_1,
  output     [1:0]    port_o_2_2,
  output     [1:0]    port_o_2_3,
  output     [1:0]    port_o_2_4,
  output     [1:0]    port_o_2_5,
  output     [1:0]    port_o_2_6,
  output     [1:0]    port_o_2_7,
  output              port_det_flag_0_0,
  output              port_det_flag_0_1,
  output              port_det_flag_0_2,
  output              port_det_flag_0_3,
  output              port_det_flag_0_4,
  output              port_det_flag_0_5,
  output              port_det_flag_0_6,
  output              port_det_flag_0_7,
  output              port_det_flag_0_8,
  output              port_det_flag_0_9,
  output              port_det_flag_0_10,
  output              port_det_flag_0_11,
  output              port_det_flag_0_12,
  output              port_det_flag_0_13,
  output              port_det_flag_0_14,
  output              port_det_flag_0_15,
  output              port_det_flag_0_16,
  output              port_det_flag_0_17,
  output              port_det_flag_0_18,
  output              port_det_flag_0_19,
  output              port_det_flag_0_20,
  output              port_det_flag_0_21,
  output              port_det_flag_0_22,
  output              port_det_flag_0_23,
  output              port_det_flag_1_0,
  output              port_det_flag_1_1,
  output              port_det_flag_1_2,
  output              port_det_flag_1_3,
  output              port_det_flag_1_4,
  output              port_det_flag_1_5,
  output              port_det_flag_1_6,
  output              port_det_flag_1_7,
  output              port_det_flag_1_8,
  output              port_det_flag_1_9,
  output              port_det_flag_1_10,
  output              port_det_flag_1_11,
  output              port_det_flag_1_12,
  output              port_det_flag_1_13,
  output              port_det_flag_1_14,
  output              port_det_flag_1_15,
  output              port_det_flag_1_16,
  output              port_det_flag_1_17,
  output              port_det_flag_1_18,
  output              port_det_flag_1_19,
  output              port_det_flag_1_20,
  output              port_det_flag_1_21,
  output              port_det_flag_1_22,
  output              port_det_flag_1_23,
  output              port_det_flag_2_0,
  output              port_det_flag_2_1,
  output              port_det_flag_2_2,
  output              port_det_flag_2_3,
  output              port_det_flag_2_4,
  output              port_det_flag_2_5,
  output              port_det_flag_2_6,
  output              port_det_flag_2_7,
  output              port_det_flag_2_8,
  output              port_det_flag_2_9,
  output              port_det_flag_2_10,
  output              port_det_flag_2_11,
  output              port_det_flag_2_12,
  output              port_det_flag_2_13,
  output              port_det_flag_2_14,
  output              port_det_flag_2_15,
  output              port_det_flag_2_16,
  output              port_det_flag_2_17,
  output              port_det_flag_2_18,
  output              port_det_flag_2_19,
  output              port_det_flag_2_20,
  output              port_det_flag_2_21,
  output              port_det_flag_2_22,
  output              port_det_flag_2_23,
  output              port_det_flag_3_0,
  output              port_det_flag_3_1,
  output              port_det_flag_3_2,
  output              port_det_flag_3_3,
  output              port_det_flag_3_4,
  output              port_det_flag_3_5,
  output              port_det_flag_3_6,
  output              port_det_flag_3_7,
  output              port_det_flag_3_8,
  output              port_det_flag_3_9,
  output              port_det_flag_3_10,
  output              port_det_flag_3_11,
  output              port_det_flag_3_12,
  output              port_det_flag_3_13,
  output              port_det_flag_3_14,
  output              port_det_flag_3_15,
  output              port_det_flag_3_16,
  output              port_det_flag_3_17,
  output              port_det_flag_3_18,
  output              port_det_flag_3_19,
  output              port_det_flag_3_20,
  output              port_det_flag_3_21,
  output              port_det_flag_3_22,
  output              port_det_flag_3_23,
  output              port_det_flag_4_0,
  output              port_det_flag_4_1,
  output              port_det_flag_4_2,
  output              port_det_flag_4_3,
  output              port_det_flag_4_4,
  output              port_det_flag_4_5,
  output              port_det_flag_4_6,
  output              port_det_flag_4_7,
  output              port_det_flag_4_8,
  output              port_det_flag_4_9,
  output              port_det_flag_4_10,
  output              port_det_flag_4_11,
  output              port_det_flag_4_12,
  output              port_det_flag_4_13,
  output              port_det_flag_4_14,
  output              port_det_flag_4_15,
  output              port_det_flag_4_16,
  output              port_det_flag_4_17,
  output              port_det_flag_4_18,
  output              port_det_flag_4_19,
  output              port_det_flag_4_20,
  output              port_det_flag_4_21,
  output              port_det_flag_4_22,
  output              port_det_flag_4_23,
  output              port_det_flag_5_0,
  output              port_det_flag_5_1,
  output              port_det_flag_5_2,
  output              port_det_flag_5_3,
  output              port_det_flag_5_4,
  output              port_det_flag_5_5,
  output              port_det_flag_5_6,
  output              port_det_flag_5_7,
  output              port_det_flag_5_8,
  output              port_det_flag_5_9,
  output              port_det_flag_5_10,
  output              port_det_flag_5_11,
  output              port_det_flag_5_12,
  output              port_det_flag_5_13,
  output              port_det_flag_5_14,
  output              port_det_flag_5_15,
  output              port_det_flag_5_16,
  output              port_det_flag_5_17,
  output              port_det_flag_5_18,
  output              port_det_flag_5_19,
  output              port_det_flag_5_20,
  output              port_det_flag_5_21,
  output              port_det_flag_5_22,
  output              port_det_flag_5_23,
  output              port_det_flag_6_0,
  output              port_det_flag_6_1,
  output              port_det_flag_6_2,
  output              port_det_flag_6_3,
  output              port_det_flag_6_4,
  output              port_det_flag_6_5,
  output              port_det_flag_6_6,
  output              port_det_flag_6_7,
  output              port_det_flag_6_8,
  output              port_det_flag_6_9,
  output              port_det_flag_6_10,
  output              port_det_flag_6_11,
  output              port_det_flag_6_12,
  output              port_det_flag_6_13,
  output              port_det_flag_6_14,
  output              port_det_flag_6_15,
  output              port_det_flag_6_16,
  output              port_det_flag_6_17,
  output              port_det_flag_6_18,
  output              port_det_flag_6_19,
  output              port_det_flag_6_20,
  output              port_det_flag_6_21,
  output              port_det_flag_6_22,
  output              port_det_flag_6_23,
  output              port_det_flag_7_0,
  output              port_det_flag_7_1,
  output              port_det_flag_7_2,
  output              port_det_flag_7_3,
  output              port_det_flag_7_4,
  output              port_det_flag_7_5,
  output              port_det_flag_7_6,
  output              port_det_flag_7_7,
  output              port_det_flag_7_8,
  output              port_det_flag_7_9,
  output              port_det_flag_7_10,
  output              port_det_flag_7_11,
  output              port_det_flag_7_12,
  output              port_det_flag_7_13,
  output              port_det_flag_7_14,
  output              port_det_flag_7_15,
  output              port_det_flag_7_16,
  output              port_det_flag_7_17,
  output              port_det_flag_7_18,
  output              port_det_flag_7_19,
  output              port_det_flag_7_20,
  output              port_det_flag_7_21,
  output              port_det_flag_7_22,
  output              port_det_flag_7_23,
  output              port_det_flag_8_0,
  output              port_det_flag_8_1,
  output              port_det_flag_8_2,
  output              port_det_flag_8_3,
  output              port_det_flag_8_4,
  output              port_det_flag_8_5,
  output              port_det_flag_8_6,
  output              port_det_flag_8_7,
  output              port_det_flag_8_8,
  output              port_det_flag_8_9,
  output              port_det_flag_8_10,
  output              port_det_flag_8_11,
  output              port_det_flag_8_12,
  output              port_det_flag_8_13,
  output              port_det_flag_8_14,
  output              port_det_flag_8_15,
  output              port_det_flag_8_16,
  output              port_det_flag_8_17,
  output              port_det_flag_8_18,
  output              port_det_flag_8_19,
  output              port_det_flag_8_20,
  output              port_det_flag_8_21,
  output              port_det_flag_8_22,
  output              port_det_flag_8_23,
  output              port_det_flag_9_0,
  output              port_det_flag_9_1,
  output              port_det_flag_9_2,
  output              port_det_flag_9_3,
  output              port_det_flag_9_4,
  output              port_det_flag_9_5,
  output              port_det_flag_9_6,
  output              port_det_flag_9_7,
  output              port_det_flag_9_8,
  output              port_det_flag_9_9,
  output              port_det_flag_9_10,
  output              port_det_flag_9_11,
  output              port_det_flag_9_12,
  output              port_det_flag_9_13,
  output              port_det_flag_9_14,
  output              port_det_flag_9_15,
  output              port_det_flag_9_16,
  output              port_det_flag_9_17,
  output              port_det_flag_9_18,
  output              port_det_flag_9_19,
  output              port_det_flag_9_20,
  output              port_det_flag_9_21,
  output              port_det_flag_9_22,
  output              port_det_flag_9_23,
  output              port_det_flag_10_0,
  output              port_det_flag_10_1,
  output              port_det_flag_10_2,
  output              port_det_flag_10_3,
  output              port_det_flag_10_4,
  output              port_det_flag_10_5,
  output              port_det_flag_10_6,
  output              port_det_flag_10_7,
  output              port_det_flag_10_8,
  output              port_det_flag_10_9,
  output              port_det_flag_10_10,
  output              port_det_flag_10_11,
  output              port_det_flag_10_12,
  output              port_det_flag_10_13,
  output              port_det_flag_10_14,
  output              port_det_flag_10_15,
  output              port_det_flag_10_16,
  output              port_det_flag_10_17,
  output              port_det_flag_10_18,
  output              port_det_flag_10_19,
  output              port_det_flag_10_20,
  output              port_det_flag_10_21,
  output              port_det_flag_10_22,
  output              port_det_flag_10_23,
  output              port_det_flag_11_0,
  output              port_det_flag_11_1,
  output              port_det_flag_11_2,
  output              port_det_flag_11_3,
  output              port_det_flag_11_4,
  output              port_det_flag_11_5,
  output              port_det_flag_11_6,
  output              port_det_flag_11_7,
  output              port_det_flag_11_8,
  output              port_det_flag_11_9,
  output              port_det_flag_11_10,
  output              port_det_flag_11_11,
  output              port_det_flag_11_12,
  output              port_det_flag_11_13,
  output              port_det_flag_11_14,
  output              port_det_flag_11_15,
  output              port_det_flag_11_16,
  output              port_det_flag_11_17,
  output              port_det_flag_11_18,
  output              port_det_flag_11_19,
  output              port_det_flag_11_20,
  output              port_det_flag_11_21,
  output              port_det_flag_11_22,
  output              port_det_flag_11_23,
  output              port_det_flag_12_0,
  output              port_det_flag_12_1,
  output              port_det_flag_12_2,
  output              port_det_flag_12_3,
  output              port_det_flag_12_4,
  output              port_det_flag_12_5,
  output              port_det_flag_12_6,
  output              port_det_flag_12_7,
  output              port_det_flag_12_8,
  output              port_det_flag_12_9,
  output              port_det_flag_12_10,
  output              port_det_flag_12_11,
  output              port_det_flag_12_12,
  output              port_det_flag_12_13,
  output              port_det_flag_12_14,
  output              port_det_flag_12_15,
  output              port_det_flag_12_16,
  output              port_det_flag_12_17,
  output              port_det_flag_12_18,
  output              port_det_flag_12_19,
  output              port_det_flag_12_20,
  output              port_det_flag_12_21,
  output              port_det_flag_12_22,
  output              port_det_flag_12_23,
  output              port_det_flag_13_0,
  output              port_det_flag_13_1,
  output              port_det_flag_13_2,
  output              port_det_flag_13_3,
  output              port_det_flag_13_4,
  output              port_det_flag_13_5,
  output              port_det_flag_13_6,
  output              port_det_flag_13_7,
  output              port_det_flag_13_8,
  output              port_det_flag_13_9,
  output              port_det_flag_13_10,
  output              port_det_flag_13_11,
  output              port_det_flag_13_12,
  output              port_det_flag_13_13,
  output              port_det_flag_13_14,
  output              port_det_flag_13_15,
  output              port_det_flag_13_16,
  output              port_det_flag_13_17,
  output              port_det_flag_13_18,
  output              port_det_flag_13_19,
  output              port_det_flag_13_20,
  output              port_det_flag_13_21,
  output              port_det_flag_13_22,
  output              port_det_flag_13_23,
  output              port_det_flag_14_0,
  output              port_det_flag_14_1,
  output              port_det_flag_14_2,
  output              port_det_flag_14_3,
  output              port_det_flag_14_4,
  output              port_det_flag_14_5,
  output              port_det_flag_14_6,
  output              port_det_flag_14_7,
  output              port_det_flag_14_8,
  output              port_det_flag_14_9,
  output              port_det_flag_14_10,
  output              port_det_flag_14_11,
  output              port_det_flag_14_12,
  output              port_det_flag_14_13,
  output              port_det_flag_14_14,
  output              port_det_flag_14_15,
  output              port_det_flag_14_16,
  output              port_det_flag_14_17,
  output              port_det_flag_14_18,
  output              port_det_flag_14_19,
  output              port_det_flag_14_20,
  output              port_det_flag_14_21,
  output              port_det_flag_14_22,
  output              port_det_flag_14_23,
  output              port_det_flag_15_0,
  output              port_det_flag_15_1,
  output              port_det_flag_15_2,
  output              port_det_flag_15_3,
  output              port_det_flag_15_4,
  output              port_det_flag_15_5,
  output              port_det_flag_15_6,
  output              port_det_flag_15_7,
  output              port_det_flag_15_8,
  output              port_det_flag_15_9,
  output              port_det_flag_15_10,
  output              port_det_flag_15_11,
  output              port_det_flag_15_12,
  output              port_det_flag_15_13,
  output              port_det_flag_15_14,
  output              port_det_flag_15_15,
  output              port_det_flag_15_16,
  output              port_det_flag_15_17,
  output              port_det_flag_15_18,
  output              port_det_flag_15_19,
  output              port_det_flag_15_20,
  output              port_det_flag_15_21,
  output              port_det_flag_15_22,
  output              port_det_flag_15_23,
  output              port_det_flag_16_0,
  output              port_det_flag_16_1,
  output              port_det_flag_16_2,
  output              port_det_flag_16_3,
  output              port_det_flag_16_4,
  output              port_det_flag_16_5,
  output              port_det_flag_16_6,
  output              port_det_flag_16_7,
  output              port_det_flag_16_8,
  output              port_det_flag_16_9,
  output              port_det_flag_16_10,
  output              port_det_flag_16_11,
  output              port_det_flag_16_12,
  output              port_det_flag_16_13,
  output              port_det_flag_16_14,
  output              port_det_flag_16_15,
  output              port_det_flag_16_16,
  output              port_det_flag_16_17,
  output              port_det_flag_16_18,
  output              port_det_flag_16_19,
  output              port_det_flag_16_20,
  output              port_det_flag_16_21,
  output              port_det_flag_16_22,
  output              port_det_flag_16_23,
  output              port_det_flag_17_0,
  output              port_det_flag_17_1,
  output              port_det_flag_17_2,
  output              port_det_flag_17_3,
  output              port_det_flag_17_4,
  output              port_det_flag_17_5,
  output              port_det_flag_17_6,
  output              port_det_flag_17_7,
  output              port_det_flag_17_8,
  output              port_det_flag_17_9,
  output              port_det_flag_17_10,
  output              port_det_flag_17_11,
  output              port_det_flag_17_12,
  output              port_det_flag_17_13,
  output              port_det_flag_17_14,
  output              port_det_flag_17_15,
  output              port_det_flag_17_16,
  output              port_det_flag_17_17,
  output              port_det_flag_17_18,
  output              port_det_flag_17_19,
  output              port_det_flag_17_20,
  output              port_det_flag_17_21,
  output              port_det_flag_17_22,
  output              port_det_flag_17_23,
  output              port_det_flag_18_0,
  output              port_det_flag_18_1,
  output              port_det_flag_18_2,
  output              port_det_flag_18_3,
  output              port_det_flag_18_4,
  output              port_det_flag_18_5,
  output              port_det_flag_18_6,
  output              port_det_flag_18_7,
  output              port_det_flag_18_8,
  output              port_det_flag_18_9,
  output              port_det_flag_18_10,
  output              port_det_flag_18_11,
  output              port_det_flag_18_12,
  output              port_det_flag_18_13,
  output              port_det_flag_18_14,
  output              port_det_flag_18_15,
  output              port_det_flag_18_16,
  output              port_det_flag_18_17,
  output              port_det_flag_18_18,
  output              port_det_flag_18_19,
  output              port_det_flag_18_20,
  output              port_det_flag_18_21,
  output              port_det_flag_18_22,
  output              port_det_flag_18_23,
  output              port_det_flag_19_0,
  output              port_det_flag_19_1,
  output              port_det_flag_19_2,
  output              port_det_flag_19_3,
  output              port_det_flag_19_4,
  output              port_det_flag_19_5,
  output              port_det_flag_19_6,
  output              port_det_flag_19_7,
  output              port_det_flag_19_8,
  output              port_det_flag_19_9,
  output              port_det_flag_19_10,
  output              port_det_flag_19_11,
  output              port_det_flag_19_12,
  output              port_det_flag_19_13,
  output              port_det_flag_19_14,
  output              port_det_flag_19_15,
  output              port_det_flag_19_16,
  output              port_det_flag_19_17,
  output              port_det_flag_19_18,
  output              port_det_flag_19_19,
  output              port_det_flag_19_20,
  output              port_det_flag_19_21,
  output              port_det_flag_19_22,
  output              port_det_flag_19_23,
  output              port_det_flag_20_0,
  output              port_det_flag_20_1,
  output              port_det_flag_20_2,
  output              port_det_flag_20_3,
  output              port_det_flag_20_4,
  output              port_det_flag_20_5,
  output              port_det_flag_20_6,
  output              port_det_flag_20_7,
  output              port_det_flag_20_8,
  output              port_det_flag_20_9,
  output              port_det_flag_20_10,
  output              port_det_flag_20_11,
  output              port_det_flag_20_12,
  output              port_det_flag_20_13,
  output              port_det_flag_20_14,
  output              port_det_flag_20_15,
  output              port_det_flag_20_16,
  output              port_det_flag_20_17,
  output              port_det_flag_20_18,
  output              port_det_flag_20_19,
  output              port_det_flag_20_20,
  output              port_det_flag_20_21,
  output              port_det_flag_20_22,
  output              port_det_flag_20_23,
  output              port_det_flag_21_0,
  output              port_det_flag_21_1,
  output              port_det_flag_21_2,
  output              port_det_flag_21_3,
  output              port_det_flag_21_4,
  output              port_det_flag_21_5,
  output              port_det_flag_21_6,
  output              port_det_flag_21_7,
  output              port_det_flag_21_8,
  output              port_det_flag_21_9,
  output              port_det_flag_21_10,
  output              port_det_flag_21_11,
  output              port_det_flag_21_12,
  output              port_det_flag_21_13,
  output              port_det_flag_21_14,
  output              port_det_flag_21_15,
  output              port_det_flag_21_16,
  output              port_det_flag_21_17,
  output              port_det_flag_21_18,
  output              port_det_flag_21_19,
  output              port_det_flag_21_20,
  output              port_det_flag_21_21,
  output              port_det_flag_21_22,
  output              port_det_flag_21_23,
  output              port_det_flag_22_0,
  output              port_det_flag_22_1,
  output              port_det_flag_22_2,
  output              port_det_flag_22_3,
  output              port_det_flag_22_4,
  output              port_det_flag_22_5,
  output              port_det_flag_22_6,
  output              port_det_flag_22_7,
  output              port_det_flag_22_8,
  output              port_det_flag_22_9,
  output              port_det_flag_22_10,
  output              port_det_flag_22_11,
  output              port_det_flag_22_12,
  output              port_det_flag_22_13,
  output              port_det_flag_22_14,
  output              port_det_flag_22_15,
  output              port_det_flag_22_16,
  output              port_det_flag_22_17,
  output              port_det_flag_22_18,
  output              port_det_flag_22_19,
  output              port_det_flag_22_20,
  output              port_det_flag_22_21,
  output              port_det_flag_22_22,
  output              port_det_flag_22_23,
  output              port_det_flag_23_0,
  output              port_det_flag_23_1,
  output              port_det_flag_23_2,
  output              port_det_flag_23_3,
  output              port_det_flag_23_4,
  output              port_det_flag_23_5,
  output              port_det_flag_23_6,
  output              port_det_flag_23_7,
  output              port_det_flag_23_8,
  output              port_det_flag_23_9,
  output              port_det_flag_23_10,
  output              port_det_flag_23_11,
  output              port_det_flag_23_12,
  output              port_det_flag_23_13,
  output              port_det_flag_23_14,
  output              port_det_flag_23_15,
  output              port_det_flag_23_16,
  output              port_det_flag_23_17,
  output              port_det_flag_23_18,
  output              port_det_flag_23_19,
  output              port_det_flag_23_20,
  output              port_det_flag_23_21,
  output              port_det_flag_23_22,
  output              port_det_flag_23_23,
  output              port_det_flag_24_0,
  output              port_det_flag_24_1,
  output              port_det_flag_24_2,
  output              port_det_flag_24_3,
  output              port_det_flag_24_4,
  output              port_det_flag_24_5,
  output              port_det_flag_24_6,
  output              port_det_flag_24_7,
  output              port_det_flag_24_8,
  output              port_det_flag_24_9,
  output              port_det_flag_24_10,
  output              port_det_flag_24_11,
  output              port_det_flag_24_12,
  output              port_det_flag_24_13,
  output              port_det_flag_24_14,
  output              port_det_flag_24_15,
  output              port_det_flag_24_16,
  output              port_det_flag_24_17,
  output              port_det_flag_24_18,
  output              port_det_flag_24_19,
  output              port_det_flag_24_20,
  output              port_det_flag_24_21,
  output              port_det_flag_24_22,
  output              port_det_flag_24_23,
  output              port_det_flag_25_0,
  output              port_det_flag_25_1,
  output              port_det_flag_25_2,
  output              port_det_flag_25_3,
  output              port_det_flag_25_4,
  output              port_det_flag_25_5,
  output              port_det_flag_25_6,
  output              port_det_flag_25_7,
  output              port_det_flag_25_8,
  output              port_det_flag_25_9,
  output              port_det_flag_25_10,
  output              port_det_flag_25_11,
  output              port_det_flag_25_12,
  output              port_det_flag_25_13,
  output              port_det_flag_25_14,
  output              port_det_flag_25_15,
  output              port_det_flag_25_16,
  output              port_det_flag_25_17,
  output              port_det_flag_25_18,
  output              port_det_flag_25_19,
  output              port_det_flag_25_20,
  output              port_det_flag_25_21,
  output              port_det_flag_25_22,
  output              port_det_flag_25_23,
  output              port_det_flag_26_0,
  output              port_det_flag_26_1,
  output              port_det_flag_26_2,
  output              port_det_flag_26_3,
  output              port_det_flag_26_4,
  output              port_det_flag_26_5,
  output              port_det_flag_26_6,
  output              port_det_flag_26_7,
  output              port_det_flag_26_8,
  output              port_det_flag_26_9,
  output              port_det_flag_26_10,
  output              port_det_flag_26_11,
  output              port_det_flag_26_12,
  output              port_det_flag_26_13,
  output              port_det_flag_26_14,
  output              port_det_flag_26_15,
  output              port_det_flag_26_16,
  output              port_det_flag_26_17,
  output              port_det_flag_26_18,
  output              port_det_flag_26_19,
  output              port_det_flag_26_20,
  output              port_det_flag_26_21,
  output              port_det_flag_26_22,
  output              port_det_flag_26_23,
  input               clk,
  input               reset
);

  wire       [1:0]    sq_port_o_0_0;
  wire       [1:0]    sq_port_o_0_1;
  wire       [1:0]    sq_port_o_0_2;
  wire       [1:0]    sq_port_o_0_3;
  wire       [1:0]    sq_port_o_1_0;
  wire       [1:0]    sq_port_o_1_1;
  wire       [1:0]    sq_port_o_1_2;
  wire       [1:0]    sq_port_o_1_3;
  wire       [1:0]    sq_port_o_2_0;
  wire       [1:0]    sq_port_o_2_1;
  wire       [1:0]    sq_port_o_2_2;
  wire       [1:0]    sq_port_o_2_3;
  wire       [1:0]    mul4_port_o_0_0;
  wire       [1:0]    mul4_port_o_0_1;
  wire       [1:0]    mul4_port_o_0_2;
  wire       [1:0]    mul4_port_o_0_3;
  wire       [1:0]    mul4_port_o_1_0;
  wire       [1:0]    mul4_port_o_1_1;
  wire       [1:0]    mul4_port_o_1_2;
  wire       [1:0]    mul4_port_o_1_3;
  wire       [1:0]    mul4_port_o_2_0;
  wire       [1:0]    mul4_port_o_2_1;
  wire       [1:0]    mul4_port_o_2_2;
  wire       [1:0]    mul4_port_o_2_3;
  wire                mul4_port_det_flag_0_0;
  wire                mul4_port_det_flag_0_1;
  wire                mul4_port_det_flag_0_2;
  wire                mul4_port_det_flag_0_3;
  wire                mul4_port_det_flag_0_4;
  wire                mul4_port_det_flag_0_5;
  wire                mul4_port_det_flag_0_6;
  wire                mul4_port_det_flag_0_7;
  wire                mul4_port_det_flag_0_8;
  wire                mul4_port_det_flag_0_9;
  wire                mul4_port_det_flag_0_10;
  wire                mul4_port_det_flag_0_11;
  wire                mul4_port_det_flag_0_12;
  wire                mul4_port_det_flag_0_13;
  wire                mul4_port_det_flag_0_14;
  wire                mul4_port_det_flag_0_15;
  wire                mul4_port_det_flag_0_16;
  wire                mul4_port_det_flag_0_17;
  wire                mul4_port_det_flag_0_18;
  wire                mul4_port_det_flag_0_19;
  wire                mul4_port_det_flag_0_20;
  wire                mul4_port_det_flag_0_21;
  wire                mul4_port_det_flag_0_22;
  wire                mul4_port_det_flag_0_23;
  wire                mul4_port_det_flag_1_0;
  wire                mul4_port_det_flag_1_1;
  wire                mul4_port_det_flag_1_2;
  wire                mul4_port_det_flag_1_3;
  wire                mul4_port_det_flag_1_4;
  wire                mul4_port_det_flag_1_5;
  wire                mul4_port_det_flag_1_6;
  wire                mul4_port_det_flag_1_7;
  wire                mul4_port_det_flag_1_8;
  wire                mul4_port_det_flag_1_9;
  wire                mul4_port_det_flag_1_10;
  wire                mul4_port_det_flag_1_11;
  wire                mul4_port_det_flag_1_12;
  wire                mul4_port_det_flag_1_13;
  wire                mul4_port_det_flag_1_14;
  wire                mul4_port_det_flag_1_15;
  wire                mul4_port_det_flag_1_16;
  wire                mul4_port_det_flag_1_17;
  wire                mul4_port_det_flag_1_18;
  wire                mul4_port_det_flag_1_19;
  wire                mul4_port_det_flag_1_20;
  wire                mul4_port_det_flag_1_21;
  wire                mul4_port_det_flag_1_22;
  wire                mul4_port_det_flag_1_23;
  wire                mul4_port_det_flag_2_0;
  wire                mul4_port_det_flag_2_1;
  wire                mul4_port_det_flag_2_2;
  wire                mul4_port_det_flag_2_3;
  wire                mul4_port_det_flag_2_4;
  wire                mul4_port_det_flag_2_5;
  wire                mul4_port_det_flag_2_6;
  wire                mul4_port_det_flag_2_7;
  wire                mul4_port_det_flag_2_8;
  wire                mul4_port_det_flag_2_9;
  wire                mul4_port_det_flag_2_10;
  wire                mul4_port_det_flag_2_11;
  wire                mul4_port_det_flag_2_12;
  wire                mul4_port_det_flag_2_13;
  wire                mul4_port_det_flag_2_14;
  wire                mul4_port_det_flag_2_15;
  wire                mul4_port_det_flag_2_16;
  wire                mul4_port_det_flag_2_17;
  wire                mul4_port_det_flag_2_18;
  wire                mul4_port_det_flag_2_19;
  wire                mul4_port_det_flag_2_20;
  wire                mul4_port_det_flag_2_21;
  wire                mul4_port_det_flag_2_22;
  wire                mul4_port_det_flag_2_23;
  wire                mul4_port_det_flag_3_0;
  wire                mul4_port_det_flag_3_1;
  wire                mul4_port_det_flag_3_2;
  wire                mul4_port_det_flag_3_3;
  wire                mul4_port_det_flag_3_4;
  wire                mul4_port_det_flag_3_5;
  wire                mul4_port_det_flag_3_6;
  wire                mul4_port_det_flag_3_7;
  wire                mul4_port_det_flag_3_8;
  wire                mul4_port_det_flag_3_9;
  wire                mul4_port_det_flag_3_10;
  wire                mul4_port_det_flag_3_11;
  wire                mul4_port_det_flag_3_12;
  wire                mul4_port_det_flag_3_13;
  wire                mul4_port_det_flag_3_14;
  wire                mul4_port_det_flag_3_15;
  wire                mul4_port_det_flag_3_16;
  wire                mul4_port_det_flag_3_17;
  wire                mul4_port_det_flag_3_18;
  wire                mul4_port_det_flag_3_19;
  wire                mul4_port_det_flag_3_20;
  wire                mul4_port_det_flag_3_21;
  wire                mul4_port_det_flag_3_22;
  wire                mul4_port_det_flag_3_23;
  wire                mul4_port_det_flag_4_0;
  wire                mul4_port_det_flag_4_1;
  wire                mul4_port_det_flag_4_2;
  wire                mul4_port_det_flag_4_3;
  wire                mul4_port_det_flag_4_4;
  wire                mul4_port_det_flag_4_5;
  wire                mul4_port_det_flag_4_6;
  wire                mul4_port_det_flag_4_7;
  wire                mul4_port_det_flag_4_8;
  wire                mul4_port_det_flag_4_9;
  wire                mul4_port_det_flag_4_10;
  wire                mul4_port_det_flag_4_11;
  wire                mul4_port_det_flag_4_12;
  wire                mul4_port_det_flag_4_13;
  wire                mul4_port_det_flag_4_14;
  wire                mul4_port_det_flag_4_15;
  wire                mul4_port_det_flag_4_16;
  wire                mul4_port_det_flag_4_17;
  wire                mul4_port_det_flag_4_18;
  wire                mul4_port_det_flag_4_19;
  wire                mul4_port_det_flag_4_20;
  wire                mul4_port_det_flag_4_21;
  wire                mul4_port_det_flag_4_22;
  wire                mul4_port_det_flag_4_23;
  wire                mul4_port_det_flag_5_0;
  wire                mul4_port_det_flag_5_1;
  wire                mul4_port_det_flag_5_2;
  wire                mul4_port_det_flag_5_3;
  wire                mul4_port_det_flag_5_4;
  wire                mul4_port_det_flag_5_5;
  wire                mul4_port_det_flag_5_6;
  wire                mul4_port_det_flag_5_7;
  wire                mul4_port_det_flag_5_8;
  wire                mul4_port_det_flag_5_9;
  wire                mul4_port_det_flag_5_10;
  wire                mul4_port_det_flag_5_11;
  wire                mul4_port_det_flag_5_12;
  wire                mul4_port_det_flag_5_13;
  wire                mul4_port_det_flag_5_14;
  wire                mul4_port_det_flag_5_15;
  wire                mul4_port_det_flag_5_16;
  wire                mul4_port_det_flag_5_17;
  wire                mul4_port_det_flag_5_18;
  wire                mul4_port_det_flag_5_19;
  wire                mul4_port_det_flag_5_20;
  wire                mul4_port_det_flag_5_21;
  wire                mul4_port_det_flag_5_22;
  wire                mul4_port_det_flag_5_23;
  wire       [1:0]    dx_inv_port_o_0_0;
  wire       [1:0]    dx_inv_port_o_0_1;
  wire       [1:0]    dx_inv_port_o_0_2;
  wire       [1:0]    dx_inv_port_o_0_3;
  wire       [1:0]    dx_inv_port_o_1_0;
  wire       [1:0]    dx_inv_port_o_1_1;
  wire       [1:0]    dx_inv_port_o_1_2;
  wire       [1:0]    dx_inv_port_o_1_3;
  wire       [1:0]    dx_inv_port_o_2_0;
  wire       [1:0]    dx_inv_port_o_2_1;
  wire       [1:0]    dx_inv_port_o_2_2;
  wire       [1:0]    dx_inv_port_o_2_3;
  wire                dx_inv_port_det_flag_0_0;
  wire                dx_inv_port_det_flag_0_1;
  wire                dx_inv_port_det_flag_0_2;
  wire                dx_inv_port_det_flag_0_3;
  wire                dx_inv_port_det_flag_0_4;
  wire                dx_inv_port_det_flag_0_5;
  wire                dx_inv_port_det_flag_0_6;
  wire                dx_inv_port_det_flag_0_7;
  wire                dx_inv_port_det_flag_0_8;
  wire                dx_inv_port_det_flag_0_9;
  wire                dx_inv_port_det_flag_0_10;
  wire                dx_inv_port_det_flag_0_11;
  wire                dx_inv_port_det_flag_0_12;
  wire                dx_inv_port_det_flag_0_13;
  wire                dx_inv_port_det_flag_0_14;
  wire                dx_inv_port_det_flag_0_15;
  wire                dx_inv_port_det_flag_0_16;
  wire                dx_inv_port_det_flag_0_17;
  wire                dx_inv_port_det_flag_0_18;
  wire                dx_inv_port_det_flag_0_19;
  wire                dx_inv_port_det_flag_0_20;
  wire                dx_inv_port_det_flag_0_21;
  wire                dx_inv_port_det_flag_0_22;
  wire                dx_inv_port_det_flag_0_23;
  wire                dx_inv_port_det_flag_1_0;
  wire                dx_inv_port_det_flag_1_1;
  wire                dx_inv_port_det_flag_1_2;
  wire                dx_inv_port_det_flag_1_3;
  wire                dx_inv_port_det_flag_1_4;
  wire                dx_inv_port_det_flag_1_5;
  wire                dx_inv_port_det_flag_1_6;
  wire                dx_inv_port_det_flag_1_7;
  wire                dx_inv_port_det_flag_1_8;
  wire                dx_inv_port_det_flag_1_9;
  wire                dx_inv_port_det_flag_1_10;
  wire                dx_inv_port_det_flag_1_11;
  wire                dx_inv_port_det_flag_1_12;
  wire                dx_inv_port_det_flag_1_13;
  wire                dx_inv_port_det_flag_1_14;
  wire                dx_inv_port_det_flag_1_15;
  wire                dx_inv_port_det_flag_1_16;
  wire                dx_inv_port_det_flag_1_17;
  wire                dx_inv_port_det_flag_1_18;
  wire                dx_inv_port_det_flag_1_19;
  wire                dx_inv_port_det_flag_1_20;
  wire                dx_inv_port_det_flag_1_21;
  wire                dx_inv_port_det_flag_1_22;
  wire                dx_inv_port_det_flag_1_23;
  wire                dx_inv_port_det_flag_2_0;
  wire                dx_inv_port_det_flag_2_1;
  wire                dx_inv_port_det_flag_2_2;
  wire                dx_inv_port_det_flag_2_3;
  wire                dx_inv_port_det_flag_2_4;
  wire                dx_inv_port_det_flag_2_5;
  wire                dx_inv_port_det_flag_2_6;
  wire                dx_inv_port_det_flag_2_7;
  wire                dx_inv_port_det_flag_2_8;
  wire                dx_inv_port_det_flag_2_9;
  wire                dx_inv_port_det_flag_2_10;
  wire                dx_inv_port_det_flag_2_11;
  wire                dx_inv_port_det_flag_2_12;
  wire                dx_inv_port_det_flag_2_13;
  wire                dx_inv_port_det_flag_2_14;
  wire                dx_inv_port_det_flag_2_15;
  wire                dx_inv_port_det_flag_2_16;
  wire                dx_inv_port_det_flag_2_17;
  wire                dx_inv_port_det_flag_2_18;
  wire                dx_inv_port_det_flag_2_19;
  wire                dx_inv_port_det_flag_2_20;
  wire                dx_inv_port_det_flag_2_21;
  wire                dx_inv_port_det_flag_2_22;
  wire                dx_inv_port_det_flag_2_23;
  wire                dx_inv_port_det_flag_3_0;
  wire                dx_inv_port_det_flag_3_1;
  wire                dx_inv_port_det_flag_3_2;
  wire                dx_inv_port_det_flag_3_3;
  wire                dx_inv_port_det_flag_3_4;
  wire                dx_inv_port_det_flag_3_5;
  wire                dx_inv_port_det_flag_3_6;
  wire                dx_inv_port_det_flag_3_7;
  wire                dx_inv_port_det_flag_3_8;
  wire                dx_inv_port_det_flag_3_9;
  wire                dx_inv_port_det_flag_3_10;
  wire                dx_inv_port_det_flag_3_11;
  wire                dx_inv_port_det_flag_3_12;
  wire                dx_inv_port_det_flag_3_13;
  wire                dx_inv_port_det_flag_3_14;
  wire                dx_inv_port_det_flag_3_15;
  wire                dx_inv_port_det_flag_3_16;
  wire                dx_inv_port_det_flag_3_17;
  wire                dx_inv_port_det_flag_3_18;
  wire                dx_inv_port_det_flag_3_19;
  wire                dx_inv_port_det_flag_3_20;
  wire                dx_inv_port_det_flag_3_21;
  wire                dx_inv_port_det_flag_3_22;
  wire                dx_inv_port_det_flag_3_23;
  wire                dx_inv_port_det_flag_4_0;
  wire                dx_inv_port_det_flag_4_1;
  wire                dx_inv_port_det_flag_4_2;
  wire                dx_inv_port_det_flag_4_3;
  wire                dx_inv_port_det_flag_4_4;
  wire                dx_inv_port_det_flag_4_5;
  wire                dx_inv_port_det_flag_4_6;
  wire                dx_inv_port_det_flag_4_7;
  wire                dx_inv_port_det_flag_4_8;
  wire                dx_inv_port_det_flag_4_9;
  wire                dx_inv_port_det_flag_4_10;
  wire                dx_inv_port_det_flag_4_11;
  wire                dx_inv_port_det_flag_4_12;
  wire                dx_inv_port_det_flag_4_13;
  wire                dx_inv_port_det_flag_4_14;
  wire                dx_inv_port_det_flag_4_15;
  wire                dx_inv_port_det_flag_4_16;
  wire                dx_inv_port_det_flag_4_17;
  wire                dx_inv_port_det_flag_4_18;
  wire                dx_inv_port_det_flag_4_19;
  wire                dx_inv_port_det_flag_4_20;
  wire                dx_inv_port_det_flag_4_21;
  wire                dx_inv_port_det_flag_4_22;
  wire                dx_inv_port_det_flag_4_23;
  wire                dx_inv_port_det_flag_5_0;
  wire                dx_inv_port_det_flag_5_1;
  wire                dx_inv_port_det_flag_5_2;
  wire                dx_inv_port_det_flag_5_3;
  wire                dx_inv_port_det_flag_5_4;
  wire                dx_inv_port_det_flag_5_5;
  wire                dx_inv_port_det_flag_5_6;
  wire                dx_inv_port_det_flag_5_7;
  wire                dx_inv_port_det_flag_5_8;
  wire                dx_inv_port_det_flag_5_9;
  wire                dx_inv_port_det_flag_5_10;
  wire                dx_inv_port_det_flag_5_11;
  wire                dx_inv_port_det_flag_5_12;
  wire                dx_inv_port_det_flag_5_13;
  wire                dx_inv_port_det_flag_5_14;
  wire                dx_inv_port_det_flag_5_15;
  wire                dx_inv_port_det_flag_5_16;
  wire                dx_inv_port_det_flag_5_17;
  wire                dx_inv_port_det_flag_5_18;
  wire                dx_inv_port_det_flag_5_19;
  wire                dx_inv_port_det_flag_5_20;
  wire                dx_inv_port_det_flag_5_21;
  wire                dx_inv_port_det_flag_5_22;
  wire                dx_inv_port_det_flag_5_23;
  wire                dx_inv_port_det_flag_6_0;
  wire                dx_inv_port_det_flag_6_1;
  wire                dx_inv_port_det_flag_6_2;
  wire                dx_inv_port_det_flag_6_3;
  wire                dx_inv_port_det_flag_6_4;
  wire                dx_inv_port_det_flag_6_5;
  wire                dx_inv_port_det_flag_6_6;
  wire                dx_inv_port_det_flag_6_7;
  wire                dx_inv_port_det_flag_6_8;
  wire                dx_inv_port_det_flag_6_9;
  wire                dx_inv_port_det_flag_6_10;
  wire                dx_inv_port_det_flag_6_11;
  wire                dx_inv_port_det_flag_6_12;
  wire                dx_inv_port_det_flag_6_13;
  wire                dx_inv_port_det_flag_6_14;
  wire                dx_inv_port_det_flag_6_15;
  wire                dx_inv_port_det_flag_6_16;
  wire                dx_inv_port_det_flag_6_17;
  wire                dx_inv_port_det_flag_6_18;
  wire                dx_inv_port_det_flag_6_19;
  wire                dx_inv_port_det_flag_6_20;
  wire                dx_inv_port_det_flag_6_21;
  wire                dx_inv_port_det_flag_6_22;
  wire                dx_inv_port_det_flag_6_23;
  wire                dx_inv_port_det_flag_7_0;
  wire                dx_inv_port_det_flag_7_1;
  wire                dx_inv_port_det_flag_7_2;
  wire                dx_inv_port_det_flag_7_3;
  wire                dx_inv_port_det_flag_7_4;
  wire                dx_inv_port_det_flag_7_5;
  wire                dx_inv_port_det_flag_7_6;
  wire                dx_inv_port_det_flag_7_7;
  wire                dx_inv_port_det_flag_7_8;
  wire                dx_inv_port_det_flag_7_9;
  wire                dx_inv_port_det_flag_7_10;
  wire                dx_inv_port_det_flag_7_11;
  wire                dx_inv_port_det_flag_7_12;
  wire                dx_inv_port_det_flag_7_13;
  wire                dx_inv_port_det_flag_7_14;
  wire                dx_inv_port_det_flag_7_15;
  wire                dx_inv_port_det_flag_7_16;
  wire                dx_inv_port_det_flag_7_17;
  wire                dx_inv_port_det_flag_7_18;
  wire                dx_inv_port_det_flag_7_19;
  wire                dx_inv_port_det_flag_7_20;
  wire                dx_inv_port_det_flag_7_21;
  wire                dx_inv_port_det_flag_7_22;
  wire                dx_inv_port_det_flag_7_23;
  wire                dx_inv_port_det_flag_8_0;
  wire                dx_inv_port_det_flag_8_1;
  wire                dx_inv_port_det_flag_8_2;
  wire                dx_inv_port_det_flag_8_3;
  wire                dx_inv_port_det_flag_8_4;
  wire                dx_inv_port_det_flag_8_5;
  wire                dx_inv_port_det_flag_8_6;
  wire                dx_inv_port_det_flag_8_7;
  wire                dx_inv_port_det_flag_8_8;
  wire                dx_inv_port_det_flag_8_9;
  wire                dx_inv_port_det_flag_8_10;
  wire                dx_inv_port_det_flag_8_11;
  wire                dx_inv_port_det_flag_8_12;
  wire                dx_inv_port_det_flag_8_13;
  wire                dx_inv_port_det_flag_8_14;
  wire                dx_inv_port_det_flag_8_15;
  wire                dx_inv_port_det_flag_8_16;
  wire                dx_inv_port_det_flag_8_17;
  wire                dx_inv_port_det_flag_8_18;
  wire                dx_inv_port_det_flag_8_19;
  wire                dx_inv_port_det_flag_8_20;
  wire                dx_inv_port_det_flag_8_21;
  wire                dx_inv_port_det_flag_8_22;
  wire                dx_inv_port_det_flag_8_23;
  wire       [1:0]    px_mul_port_o_0_0;
  wire       [1:0]    px_mul_port_o_0_1;
  wire       [1:0]    px_mul_port_o_0_2;
  wire       [1:0]    px_mul_port_o_0_3;
  wire       [1:0]    px_mul_port_o_1_0;
  wire       [1:0]    px_mul_port_o_1_1;
  wire       [1:0]    px_mul_port_o_1_2;
  wire       [1:0]    px_mul_port_o_1_3;
  wire       [1:0]    px_mul_port_o_2_0;
  wire       [1:0]    px_mul_port_o_2_1;
  wire       [1:0]    px_mul_port_o_2_2;
  wire       [1:0]    px_mul_port_o_2_3;
  wire                px_mul_port_det_flag_0_0;
  wire                px_mul_port_det_flag_0_1;
  wire                px_mul_port_det_flag_0_2;
  wire                px_mul_port_det_flag_0_3;
  wire                px_mul_port_det_flag_0_4;
  wire                px_mul_port_det_flag_0_5;
  wire                px_mul_port_det_flag_0_6;
  wire                px_mul_port_det_flag_0_7;
  wire                px_mul_port_det_flag_0_8;
  wire                px_mul_port_det_flag_0_9;
  wire                px_mul_port_det_flag_0_10;
  wire                px_mul_port_det_flag_0_11;
  wire                px_mul_port_det_flag_0_12;
  wire                px_mul_port_det_flag_0_13;
  wire                px_mul_port_det_flag_0_14;
  wire                px_mul_port_det_flag_0_15;
  wire                px_mul_port_det_flag_0_16;
  wire                px_mul_port_det_flag_0_17;
  wire                px_mul_port_det_flag_0_18;
  wire                px_mul_port_det_flag_0_19;
  wire                px_mul_port_det_flag_0_20;
  wire                px_mul_port_det_flag_0_21;
  wire                px_mul_port_det_flag_0_22;
  wire                px_mul_port_det_flag_0_23;
  wire                px_mul_port_det_flag_1_0;
  wire                px_mul_port_det_flag_1_1;
  wire                px_mul_port_det_flag_1_2;
  wire                px_mul_port_det_flag_1_3;
  wire                px_mul_port_det_flag_1_4;
  wire                px_mul_port_det_flag_1_5;
  wire                px_mul_port_det_flag_1_6;
  wire                px_mul_port_det_flag_1_7;
  wire                px_mul_port_det_flag_1_8;
  wire                px_mul_port_det_flag_1_9;
  wire                px_mul_port_det_flag_1_10;
  wire                px_mul_port_det_flag_1_11;
  wire                px_mul_port_det_flag_1_12;
  wire                px_mul_port_det_flag_1_13;
  wire                px_mul_port_det_flag_1_14;
  wire                px_mul_port_det_flag_1_15;
  wire                px_mul_port_det_flag_1_16;
  wire                px_mul_port_det_flag_1_17;
  wire                px_mul_port_det_flag_1_18;
  wire                px_mul_port_det_flag_1_19;
  wire                px_mul_port_det_flag_1_20;
  wire                px_mul_port_det_flag_1_21;
  wire                px_mul_port_det_flag_1_22;
  wire                px_mul_port_det_flag_1_23;
  wire                px_mul_port_det_flag_2_0;
  wire                px_mul_port_det_flag_2_1;
  wire                px_mul_port_det_flag_2_2;
  wire                px_mul_port_det_flag_2_3;
  wire                px_mul_port_det_flag_2_4;
  wire                px_mul_port_det_flag_2_5;
  wire                px_mul_port_det_flag_2_6;
  wire                px_mul_port_det_flag_2_7;
  wire                px_mul_port_det_flag_2_8;
  wire                px_mul_port_det_flag_2_9;
  wire                px_mul_port_det_flag_2_10;
  wire                px_mul_port_det_flag_2_11;
  wire                px_mul_port_det_flag_2_12;
  wire                px_mul_port_det_flag_2_13;
  wire                px_mul_port_det_flag_2_14;
  wire                px_mul_port_det_flag_2_15;
  wire                px_mul_port_det_flag_2_16;
  wire                px_mul_port_det_flag_2_17;
  wire                px_mul_port_det_flag_2_18;
  wire                px_mul_port_det_flag_2_19;
  wire                px_mul_port_det_flag_2_20;
  wire                px_mul_port_det_flag_2_21;
  wire                px_mul_port_det_flag_2_22;
  wire                px_mul_port_det_flag_2_23;
  wire                px_mul_port_det_flag_3_0;
  wire                px_mul_port_det_flag_3_1;
  wire                px_mul_port_det_flag_3_2;
  wire                px_mul_port_det_flag_3_3;
  wire                px_mul_port_det_flag_3_4;
  wire                px_mul_port_det_flag_3_5;
  wire                px_mul_port_det_flag_3_6;
  wire                px_mul_port_det_flag_3_7;
  wire                px_mul_port_det_flag_3_8;
  wire                px_mul_port_det_flag_3_9;
  wire                px_mul_port_det_flag_3_10;
  wire                px_mul_port_det_flag_3_11;
  wire                px_mul_port_det_flag_3_12;
  wire                px_mul_port_det_flag_3_13;
  wire                px_mul_port_det_flag_3_14;
  wire                px_mul_port_det_flag_3_15;
  wire                px_mul_port_det_flag_3_16;
  wire                px_mul_port_det_flag_3_17;
  wire                px_mul_port_det_flag_3_18;
  wire                px_mul_port_det_flag_3_19;
  wire                px_mul_port_det_flag_3_20;
  wire                px_mul_port_det_flag_3_21;
  wire                px_mul_port_det_flag_3_22;
  wire                px_mul_port_det_flag_3_23;
  wire                px_mul_port_det_flag_4_0;
  wire                px_mul_port_det_flag_4_1;
  wire                px_mul_port_det_flag_4_2;
  wire                px_mul_port_det_flag_4_3;
  wire                px_mul_port_det_flag_4_4;
  wire                px_mul_port_det_flag_4_5;
  wire                px_mul_port_det_flag_4_6;
  wire                px_mul_port_det_flag_4_7;
  wire                px_mul_port_det_flag_4_8;
  wire                px_mul_port_det_flag_4_9;
  wire                px_mul_port_det_flag_4_10;
  wire                px_mul_port_det_flag_4_11;
  wire                px_mul_port_det_flag_4_12;
  wire                px_mul_port_det_flag_4_13;
  wire                px_mul_port_det_flag_4_14;
  wire                px_mul_port_det_flag_4_15;
  wire                px_mul_port_det_flag_4_16;
  wire                px_mul_port_det_flag_4_17;
  wire                px_mul_port_det_flag_4_18;
  wire                px_mul_port_det_flag_4_19;
  wire                px_mul_port_det_flag_4_20;
  wire                px_mul_port_det_flag_4_21;
  wire                px_mul_port_det_flag_4_22;
  wire                px_mul_port_det_flag_4_23;
  wire                px_mul_port_det_flag_5_0;
  wire                px_mul_port_det_flag_5_1;
  wire                px_mul_port_det_flag_5_2;
  wire                px_mul_port_det_flag_5_3;
  wire                px_mul_port_det_flag_5_4;
  wire                px_mul_port_det_flag_5_5;
  wire                px_mul_port_det_flag_5_6;
  wire                px_mul_port_det_flag_5_7;
  wire                px_mul_port_det_flag_5_8;
  wire                px_mul_port_det_flag_5_9;
  wire                px_mul_port_det_flag_5_10;
  wire                px_mul_port_det_flag_5_11;
  wire                px_mul_port_det_flag_5_12;
  wire                px_mul_port_det_flag_5_13;
  wire                px_mul_port_det_flag_5_14;
  wire                px_mul_port_det_flag_5_15;
  wire                px_mul_port_det_flag_5_16;
  wire                px_mul_port_det_flag_5_17;
  wire                px_mul_port_det_flag_5_18;
  wire                px_mul_port_det_flag_5_19;
  wire                px_mul_port_det_flag_5_20;
  wire                px_mul_port_det_flag_5_21;
  wire                px_mul_port_det_flag_5_22;
  wire                px_mul_port_det_flag_5_23;
  wire       [1:0]    qx_mul_port_o_0_0;
  wire       [1:0]    qx_mul_port_o_0_1;
  wire       [1:0]    qx_mul_port_o_0_2;
  wire       [1:0]    qx_mul_port_o_0_3;
  wire       [1:0]    qx_mul_port_o_1_0;
  wire       [1:0]    qx_mul_port_o_1_1;
  wire       [1:0]    qx_mul_port_o_1_2;
  wire       [1:0]    qx_mul_port_o_1_3;
  wire       [1:0]    qx_mul_port_o_2_0;
  wire       [1:0]    qx_mul_port_o_2_1;
  wire       [1:0]    qx_mul_port_o_2_2;
  wire       [1:0]    qx_mul_port_o_2_3;
  wire                qx_mul_port_det_flag_0_0;
  wire                qx_mul_port_det_flag_0_1;
  wire                qx_mul_port_det_flag_0_2;
  wire                qx_mul_port_det_flag_0_3;
  wire                qx_mul_port_det_flag_0_4;
  wire                qx_mul_port_det_flag_0_5;
  wire                qx_mul_port_det_flag_0_6;
  wire                qx_mul_port_det_flag_0_7;
  wire                qx_mul_port_det_flag_0_8;
  wire                qx_mul_port_det_flag_0_9;
  wire                qx_mul_port_det_flag_0_10;
  wire                qx_mul_port_det_flag_0_11;
  wire                qx_mul_port_det_flag_0_12;
  wire                qx_mul_port_det_flag_0_13;
  wire                qx_mul_port_det_flag_0_14;
  wire                qx_mul_port_det_flag_0_15;
  wire                qx_mul_port_det_flag_0_16;
  wire                qx_mul_port_det_flag_0_17;
  wire                qx_mul_port_det_flag_0_18;
  wire                qx_mul_port_det_flag_0_19;
  wire                qx_mul_port_det_flag_0_20;
  wire                qx_mul_port_det_flag_0_21;
  wire                qx_mul_port_det_flag_0_22;
  wire                qx_mul_port_det_flag_0_23;
  wire                qx_mul_port_det_flag_1_0;
  wire                qx_mul_port_det_flag_1_1;
  wire                qx_mul_port_det_flag_1_2;
  wire                qx_mul_port_det_flag_1_3;
  wire                qx_mul_port_det_flag_1_4;
  wire                qx_mul_port_det_flag_1_5;
  wire                qx_mul_port_det_flag_1_6;
  wire                qx_mul_port_det_flag_1_7;
  wire                qx_mul_port_det_flag_1_8;
  wire                qx_mul_port_det_flag_1_9;
  wire                qx_mul_port_det_flag_1_10;
  wire                qx_mul_port_det_flag_1_11;
  wire                qx_mul_port_det_flag_1_12;
  wire                qx_mul_port_det_flag_1_13;
  wire                qx_mul_port_det_flag_1_14;
  wire                qx_mul_port_det_flag_1_15;
  wire                qx_mul_port_det_flag_1_16;
  wire                qx_mul_port_det_flag_1_17;
  wire                qx_mul_port_det_flag_1_18;
  wire                qx_mul_port_det_flag_1_19;
  wire                qx_mul_port_det_flag_1_20;
  wire                qx_mul_port_det_flag_1_21;
  wire                qx_mul_port_det_flag_1_22;
  wire                qx_mul_port_det_flag_1_23;
  wire                qx_mul_port_det_flag_2_0;
  wire                qx_mul_port_det_flag_2_1;
  wire                qx_mul_port_det_flag_2_2;
  wire                qx_mul_port_det_flag_2_3;
  wire                qx_mul_port_det_flag_2_4;
  wire                qx_mul_port_det_flag_2_5;
  wire                qx_mul_port_det_flag_2_6;
  wire                qx_mul_port_det_flag_2_7;
  wire                qx_mul_port_det_flag_2_8;
  wire                qx_mul_port_det_flag_2_9;
  wire                qx_mul_port_det_flag_2_10;
  wire                qx_mul_port_det_flag_2_11;
  wire                qx_mul_port_det_flag_2_12;
  wire                qx_mul_port_det_flag_2_13;
  wire                qx_mul_port_det_flag_2_14;
  wire                qx_mul_port_det_flag_2_15;
  wire                qx_mul_port_det_flag_2_16;
  wire                qx_mul_port_det_flag_2_17;
  wire                qx_mul_port_det_flag_2_18;
  wire                qx_mul_port_det_flag_2_19;
  wire                qx_mul_port_det_flag_2_20;
  wire                qx_mul_port_det_flag_2_21;
  wire                qx_mul_port_det_flag_2_22;
  wire                qx_mul_port_det_flag_2_23;
  wire                qx_mul_port_det_flag_3_0;
  wire                qx_mul_port_det_flag_3_1;
  wire                qx_mul_port_det_flag_3_2;
  wire                qx_mul_port_det_flag_3_3;
  wire                qx_mul_port_det_flag_3_4;
  wire                qx_mul_port_det_flag_3_5;
  wire                qx_mul_port_det_flag_3_6;
  wire                qx_mul_port_det_flag_3_7;
  wire                qx_mul_port_det_flag_3_8;
  wire                qx_mul_port_det_flag_3_9;
  wire                qx_mul_port_det_flag_3_10;
  wire                qx_mul_port_det_flag_3_11;
  wire                qx_mul_port_det_flag_3_12;
  wire                qx_mul_port_det_flag_3_13;
  wire                qx_mul_port_det_flag_3_14;
  wire                qx_mul_port_det_flag_3_15;
  wire                qx_mul_port_det_flag_3_16;
  wire                qx_mul_port_det_flag_3_17;
  wire                qx_mul_port_det_flag_3_18;
  wire                qx_mul_port_det_flag_3_19;
  wire                qx_mul_port_det_flag_3_20;
  wire                qx_mul_port_det_flag_3_21;
  wire                qx_mul_port_det_flag_3_22;
  wire                qx_mul_port_det_flag_3_23;
  wire                qx_mul_port_det_flag_4_0;
  wire                qx_mul_port_det_flag_4_1;
  wire                qx_mul_port_det_flag_4_2;
  wire                qx_mul_port_det_flag_4_3;
  wire                qx_mul_port_det_flag_4_4;
  wire                qx_mul_port_det_flag_4_5;
  wire                qx_mul_port_det_flag_4_6;
  wire                qx_mul_port_det_flag_4_7;
  wire                qx_mul_port_det_flag_4_8;
  wire                qx_mul_port_det_flag_4_9;
  wire                qx_mul_port_det_flag_4_10;
  wire                qx_mul_port_det_flag_4_11;
  wire                qx_mul_port_det_flag_4_12;
  wire                qx_mul_port_det_flag_4_13;
  wire                qx_mul_port_det_flag_4_14;
  wire                qx_mul_port_det_flag_4_15;
  wire                qx_mul_port_det_flag_4_16;
  wire                qx_mul_port_det_flag_4_17;
  wire                qx_mul_port_det_flag_4_18;
  wire                qx_mul_port_det_flag_4_19;
  wire                qx_mul_port_det_flag_4_20;
  wire                qx_mul_port_det_flag_4_21;
  wire                qx_mul_port_det_flag_4_22;
  wire                qx_mul_port_det_flag_4_23;
  wire                qx_mul_port_det_flag_5_0;
  wire                qx_mul_port_det_flag_5_1;
  wire                qx_mul_port_det_flag_5_2;
  wire                qx_mul_port_det_flag_5_3;
  wire                qx_mul_port_det_flag_5_4;
  wire                qx_mul_port_det_flag_5_5;
  wire                qx_mul_port_det_flag_5_6;
  wire                qx_mul_port_det_flag_5_7;
  wire                qx_mul_port_det_flag_5_8;
  wire                qx_mul_port_det_flag_5_9;
  wire                qx_mul_port_det_flag_5_10;
  wire                qx_mul_port_det_flag_5_11;
  wire                qx_mul_port_det_flag_5_12;
  wire                qx_mul_port_det_flag_5_13;
  wire                qx_mul_port_det_flag_5_14;
  wire                qx_mul_port_det_flag_5_15;
  wire                qx_mul_port_det_flag_5_16;
  wire                qx_mul_port_det_flag_5_17;
  wire                qx_mul_port_det_flag_5_18;
  wire                qx_mul_port_det_flag_5_19;
  wire                qx_mul_port_det_flag_5_20;
  wire                qx_mul_port_det_flag_5_21;
  wire                qx_mul_port_det_flag_5_22;
  wire                qx_mul_port_det_flag_5_23;
  wire                r0_0;
  wire                r0_1;
  wire                r0_2;
  wire                r0_3;
  wire                r0_4;
  wire                r0_5;
  wire                r0_6;
  wire                r0_7;
  wire                r0_8;
  wire                r0_9;
  wire                r0_10;
  wire                r0_11;
  wire                r0_12;
  wire                r0_13;
  wire                r0_14;
  wire                r0_15;
  wire                r0_16;
  wire                r0_17;
  wire                r0_18;
  wire                r0_19;
  wire                r0_20;
  wire                r0_21;
  wire                r0_22;
  wire                r0_23;
  wire                r0_24;
  wire                r0_25;
  wire                r0_26;
  wire                r0_27;
  wire                r0_28;
  wire                r0_29;
  wire                r0_30;
  wire                r0_31;
  wire                r0_32;
  wire                r0_33;
  wire                r0_34;
  wire                r0_35;
  wire                r0_36;
  wire                r0_37;
  wire                r0_38;
  wire                r0_39;
  wire                r0_40;
  wire                r0_41;
  wire                r0_42;
  wire                r0_43;
  wire                r0_44;
  wire                r0_45;
  wire                r0_46;
  wire                r0_47;
  wire                r0_48;
  wire                r0_49;
  wire                r0_50;
  wire                r0_51;
  wire                r0_52;
  wire                r0_53;
  wire                r1_0;
  wire                r1_1;
  wire                r1_2;
  wire                r1_3;
  wire                r1_4;
  wire                r1_5;
  wire                r1_6;
  wire                r1_7;
  wire                r1_8;
  wire                r1_9;
  wire                r1_10;
  wire                r1_11;
  wire                r1_12;
  wire                r1_13;
  wire                r1_14;
  wire                r1_15;
  wire                r1_16;
  wire                r1_17;
  wire                r1_18;
  wire                r1_19;
  wire                r1_20;
  wire                r1_21;
  wire                r1_22;
  wire                r1_23;
  wire                r1_24;
  wire                r1_25;
  wire                r1_26;
  wire                r1_27;
  wire                r1_28;
  wire                r1_29;
  wire                r1_30;
  wire                r1_31;
  wire                r1_32;
  wire                r1_33;
  wire                r1_34;
  wire                r1_35;
  wire                r1_36;
  wire                r1_37;
  wire                r1_38;
  wire                r1_39;
  wire                r1_40;
  wire                r1_41;
  wire                r1_42;
  wire                r1_43;
  wire                r1_44;
  wire                r1_45;
  wire                r1_46;
  wire                r1_47;
  wire                r1_48;
  wire                r1_49;
  wire                r1_50;
  wire                r1_51;
  wire                r1_52;
  wire                r1_53;
  wire                r2_0;
  wire                r2_1;
  wire                r2_2;
  wire                r2_3;
  wire                r2_4;
  wire                r2_5;
  wire                r2_6;
  wire                r2_7;
  wire                r2_8;
  wire                r2_9;
  wire                r2_10;
  wire                r2_11;
  wire                r2_12;
  wire                r2_13;
  wire                r2_14;
  wire                r2_15;
  wire                r2_16;
  wire                r2_17;
  wire                r2_18;
  wire                r2_19;
  wire                r2_20;
  wire                r2_21;
  wire                r2_22;
  wire                r2_23;
  wire                r2_24;
  wire                r2_25;
  wire                r2_26;
  wire                r2_27;
  wire                r2_28;
  wire                r2_29;
  wire                r2_30;
  wire                r2_31;
  wire                r2_32;
  wire                r2_33;
  wire                r2_34;
  wire                r2_35;
  wire                r2_36;
  wire                r2_37;
  wire                r2_38;
  wire                r2_39;
  wire                r2_40;
  wire                r2_41;
  wire                r2_42;
  wire                r2_43;
  wire                r2_44;
  wire                r2_45;
  wire                r2_46;
  wire                r2_47;
  wire                r2_48;
  wire                r2_49;
  wire                r2_50;
  wire                r2_51;
  wire                r2_52;
  wire                r2_53;
  wire                r3_0;
  wire                r3_1;
  wire                r3_2;
  wire                r3_3;
  wire                r3_4;
  wire                r3_5;
  wire                r3_6;
  wire                r3_7;
  wire                r3_8;
  wire                r3_9;
  wire                r3_10;
  wire                r3_11;
  wire                r3_12;
  wire                r3_13;
  wire                r3_14;
  wire                r3_15;
  wire                r3_16;
  wire                r3_17;
  wire                r3_18;
  wire                r3_19;
  wire                r3_20;
  wire                r3_21;
  wire                r3_22;
  wire                r3_23;
  wire                r3_24;
  wire                r3_25;
  wire                r3_26;
  wire                r3_27;
  wire                r3_28;
  wire                r3_29;
  wire                r3_30;
  wire                r3_31;
  wire                r3_32;
  wire                r3_33;
  wire                r3_34;
  wire                r3_35;
  wire                r3_36;
  wire                r3_37;
  wire                r3_38;
  wire                r3_39;
  wire                r3_40;
  wire                r3_41;
  wire                r3_42;
  wire                r3_43;
  wire                r3_44;
  wire                r3_45;
  wire                r3_46;
  wire                r3_47;
  wire                r3_48;
  wire                r3_49;
  wire                r3_50;
  wire                r3_51;
  wire                r3_52;
  wire                r3_53;
  wire       [1:0]    ax_0_0;
  wire       [1:0]    ax_0_1;
  wire       [1:0]    ax_0_2;
  wire       [1:0]    ax_0_3;
  wire       [1:0]    ax_1_0;
  wire       [1:0]    ax_1_1;
  wire       [1:0]    ax_1_2;
  wire       [1:0]    ax_1_3;
  wire       [1:0]    ax_2_0;
  wire       [1:0]    ax_2_1;
  wire       [1:0]    ax_2_2;
  wire       [1:0]    ax_2_3;
  wire       [1:0]    bx_0_0;
  wire       [1:0]    bx_0_1;
  wire       [1:0]    bx_0_2;
  wire       [1:0]    bx_0_3;
  wire       [1:0]    bx_1_0;
  wire       [1:0]    bx_1_1;
  wire       [1:0]    bx_1_2;
  wire       [1:0]    bx_1_3;
  wire       [1:0]    bx_2_0;
  wire       [1:0]    bx_2_1;
  wire       [1:0]    bx_2_2;
  wire       [1:0]    bx_2_3;
  wire       [1:0]    sax_0_0;
  wire       [1:0]    sax_0_1;
  wire       [1:0]    sax_1_0;
  wire       [1:0]    sax_1_1;
  wire       [1:0]    sax_2_0;
  wire       [1:0]    sax_2_1;
  wire       [1:0]    sbx_0_0;
  wire       [1:0]    sbx_0_1;
  wire       [1:0]    sbx_1_0;
  wire       [1:0]    sbx_1_1;
  wire       [1:0]    sbx_2_0;
  wire       [1:0]    sbx_2_1;
  wire       [1:0]    al_0;
  wire       [1:0]    al_1;
  wire       [1:0]    al_2;
  wire       [1:0]    ah_0;
  wire       [1:0]    ah_1;
  wire       [1:0]    ah_2;
  wire       [1:0]    aa_0;
  wire       [1:0]    aa_1;
  wire       [1:0]    aa_2;
  wire       [1:0]    bl_0;
  wire       [1:0]    bl_1;
  wire       [1:0]    bl_2;
  wire       [1:0]    bh_0;
  wire       [1:0]    bh_1;
  wire       [1:0]    bh_2;
  wire       [1:0]    bb_0;
  wire       [1:0]    bb_1;
  wire       [1:0]    bb_2;
  wire       [1:0]    cx_0_0;
  wire       [1:0]    cx_0_1;
  wire       [1:0]    cx_0_2;
  wire       [1:0]    cx_0_3;
  wire       [1:0]    cx_1_0;
  wire       [1:0]    cx_1_1;
  wire       [1:0]    cx_1_2;
  wire       [1:0]    cx_1_3;
  wire       [1:0]    cx_2_0;
  wire       [1:0]    cx_2_1;
  wire       [1:0]    cx_2_2;
  wire       [1:0]    cx_2_3;
  wire       [1:0]    sq_in_0_0;
  wire       [1:0]    sq_in_0_1;
  wire       [1:0]    sq_in_0_2;
  wire       [1:0]    sq_in_0_3;
  wire       [1:0]    sq_in_1_0;
  wire       [1:0]    sq_in_1_1;
  wire       [1:0]    sq_in_1_2;
  wire       [1:0]    sq_in_1_3;
  wire       [1:0]    sq_in_2_0;
  wire       [1:0]    sq_in_2_1;
  wire       [1:0]    sq_in_2_2;
  wire       [1:0]    sq_in_2_3;
  wire       [1:0]    dx_0_0;
  wire       [1:0]    dx_0_1;
  wire       [1:0]    dx_0_2;
  wire       [1:0]    dx_0_3;
  wire       [1:0]    dx_1_0;
  wire       [1:0]    dx_1_1;
  wire       [1:0]    dx_1_2;
  wire       [1:0]    dx_1_3;
  wire       [1:0]    dx_2_0;
  wire       [1:0]    dx_2_1;
  wire       [1:0]    dx_2_2;
  wire       [1:0]    dx_2_3;
  wire       [1:0]    sdx_0_0;
  wire       [1:0]    sdx_0_1;
  wire       [1:0]    sdx_1_0;
  wire       [1:0]    sdx_1_1;
  wire       [1:0]    sdx_2_0;
  wire       [1:0]    sdx_2_1;
  wire       [1:0]    dl_0;
  wire       [1:0]    dl_1;
  wire       [1:0]    dl_2;
  wire       [1:0]    dh_0;
  wire       [1:0]    dh_1;
  wire       [1:0]    dh_2;
  wire       [1:0]    dd_0;
  wire       [1:0]    dd_1;
  wire       [1:0]    dd_2;
  reg        [1:0]    bx_reg_0_0_0;
  reg        [1:0]    bx_reg_0_0_1;
  reg        [1:0]    bx_reg_0_0_2;
  reg        [1:0]    bx_reg_0_0_3;
  reg        [1:0]    bx_reg_0_1_0;
  reg        [1:0]    bx_reg_0_1_1;
  reg        [1:0]    bx_reg_0_1_2;
  reg        [1:0]    bx_reg_0_1_3;
  reg        [1:0]    bx_reg_0_2_0;
  reg        [1:0]    bx_reg_0_2_1;
  reg        [1:0]    bx_reg_0_2_2;
  reg        [1:0]    bx_reg_0_2_3;
  reg        [1:0]    bx_reg_1_0_0;
  reg        [1:0]    bx_reg_1_0_1;
  reg        [1:0]    bx_reg_1_0_2;
  reg        [1:0]    bx_reg_1_0_3;
  reg        [1:0]    bx_reg_1_1_0;
  reg        [1:0]    bx_reg_1_1_1;
  reg        [1:0]    bx_reg_1_1_2;
  reg        [1:0]    bx_reg_1_1_3;
  reg        [1:0]    bx_reg_1_2_0;
  reg        [1:0]    bx_reg_1_2_1;
  reg        [1:0]    bx_reg_1_2_2;
  reg        [1:0]    bx_reg_1_2_3;
  reg        [1:0]    bx_reg_2_0_0;
  reg        [1:0]    bx_reg_2_0_1;
  reg        [1:0]    bx_reg_2_0_2;
  reg        [1:0]    bx_reg_2_0_3;
  reg        [1:0]    bx_reg_2_1_0;
  reg        [1:0]    bx_reg_2_1_1;
  reg        [1:0]    bx_reg_2_1_2;
  reg        [1:0]    bx_reg_2_1_3;
  reg        [1:0]    bx_reg_2_2_0;
  reg        [1:0]    bx_reg_2_2_1;
  reg        [1:0]    bx_reg_2_2_2;
  reg        [1:0]    bx_reg_2_2_3;
  reg        [1:0]    bx_reg_3_0_0;
  reg        [1:0]    bx_reg_3_0_1;
  reg        [1:0]    bx_reg_3_0_2;
  reg        [1:0]    bx_reg_3_0_3;
  reg        [1:0]    bx_reg_3_1_0;
  reg        [1:0]    bx_reg_3_1_1;
  reg        [1:0]    bx_reg_3_1_2;
  reg        [1:0]    bx_reg_3_1_3;
  reg        [1:0]    bx_reg_3_2_0;
  reg        [1:0]    bx_reg_3_2_1;
  reg        [1:0]    bx_reg_3_2_2;
  reg        [1:0]    bx_reg_3_2_3;
  reg        [1:0]    ax_reg_1_0_0;
  reg        [1:0]    ax_reg_1_0_1;
  reg        [1:0]    ax_reg_1_0_2;
  reg        [1:0]    ax_reg_1_0_3;
  reg        [1:0]    ax_reg_1_1_0;
  reg        [1:0]    ax_reg_1_1_1;
  reg        [1:0]    ax_reg_1_1_2;
  reg        [1:0]    ax_reg_1_1_3;
  reg        [1:0]    ax_reg_1_2_0;
  reg        [1:0]    ax_reg_1_2_1;
  reg        [1:0]    ax_reg_1_2_2;
  reg        [1:0]    ax_reg_1_2_3;
  reg        [1:0]    ax_reg_2_0_0;
  reg        [1:0]    ax_reg_2_0_1;
  reg        [1:0]    ax_reg_2_0_2;
  reg        [1:0]    ax_reg_2_0_3;
  reg        [1:0]    ax_reg_2_1_0;
  reg        [1:0]    ax_reg_2_1_1;
  reg        [1:0]    ax_reg_2_1_2;
  reg        [1:0]    ax_reg_2_1_3;
  reg        [1:0]    ax_reg_2_2_0;
  reg        [1:0]    ax_reg_2_2_1;
  reg        [1:0]    ax_reg_2_2_2;
  reg        [1:0]    ax_reg_2_2_3;
  reg        [1:0]    ax_reg_3_0_0;
  reg        [1:0]    ax_reg_3_0_1;
  reg        [1:0]    ax_reg_3_0_2;
  reg        [1:0]    ax_reg_3_0_3;
  reg        [1:0]    ax_reg_3_1_0;
  reg        [1:0]    ax_reg_3_1_1;
  reg        [1:0]    ax_reg_3_1_2;
  reg        [1:0]    ax_reg_3_1_3;
  reg        [1:0]    ax_reg_3_2_0;
  reg        [1:0]    ax_reg_3_2_1;
  reg        [1:0]    ax_reg_3_2_2;
  reg        [1:0]    ax_reg_3_2_3;
  wire       [1:0]    sax_reg_3_0_0;
  wire       [1:0]    sax_reg_3_0_1;
  wire       [1:0]    sax_reg_3_1_0;
  wire       [1:0]    sax_reg_3_1_1;
  wire       [1:0]    sax_reg_3_2_0;
  wire       [1:0]    sax_reg_3_2_1;
  wire       [1:0]    sbx_reg_3_0_0;
  wire       [1:0]    sbx_reg_3_0_1;
  wire       [1:0]    sbx_reg_3_1_0;
  wire       [1:0]    sbx_reg_3_1_1;
  wire       [1:0]    sbx_reg_3_2_0;
  wire       [1:0]    sbx_reg_3_2_1;
  wire       [1:0]    al_reg_3_0;
  wire       [1:0]    al_reg_3_1;
  wire       [1:0]    al_reg_3_2;
  wire       [1:0]    ah_reg_3_0;
  wire       [1:0]    ah_reg_3_1;
  wire       [1:0]    ah_reg_3_2;
  wire       [1:0]    aa_reg_3_0;
  wire       [1:0]    aa_reg_3_1;
  wire       [1:0]    aa_reg_3_2;
  wire       [1:0]    bl_reg_3_0;
  wire       [1:0]    bl_reg_3_1;
  wire       [1:0]    bl_reg_3_2;
  wire       [1:0]    bh_reg_3_0;
  wire       [1:0]    bh_reg_3_1;
  wire       [1:0]    bh_reg_3_2;
  wire       [1:0]    bb_reg_3_0;
  wire       [1:0]    bb_reg_3_1;
  wire       [1:0]    bb_reg_3_2;
  reg        [1:0]    _zz_bx_reg_3_0_0;
  reg        [1:0]    _zz_bx_reg_3_0_1;
  reg        [1:0]    _zz_bx_reg_3_0_2;
  reg        [1:0]    _zz_bx_reg_3_0_3;
  reg        [1:0]    _zz_bx_reg_3_1_0;
  reg        [1:0]    _zz_bx_reg_3_1_1;
  reg        [1:0]    _zz_bx_reg_3_1_2;
  reg        [1:0]    _zz_bx_reg_3_1_3;
  reg        [1:0]    _zz_bx_reg_3_2_0;
  reg        [1:0]    _zz_bx_reg_3_2_1;
  reg        [1:0]    _zz_bx_reg_3_2_2;
  reg        [1:0]    _zz_bx_reg_3_2_3;
  reg        [1:0]    _zz_ax_reg_3_0_0;
  reg        [1:0]    _zz_ax_reg_3_0_1;
  reg        [1:0]    _zz_ax_reg_3_0_2;
  reg        [1:0]    _zz_ax_reg_3_0_3;
  reg        [1:0]    _zz_ax_reg_3_1_0;
  reg        [1:0]    _zz_ax_reg_3_1_1;
  reg        [1:0]    _zz_ax_reg_3_1_2;
  reg        [1:0]    _zz_ax_reg_3_1_3;
  reg        [1:0]    _zz_ax_reg_3_2_0;
  reg        [1:0]    _zz_ax_reg_3_2_1;
  reg        [1:0]    _zz_ax_reg_3_2_2;
  reg        [1:0]    _zz_ax_reg_3_2_3;
  wire       [1:0]    px_0_0;
  wire       [1:0]    px_0_1;
  wire       [1:0]    px_0_2;
  wire       [1:0]    px_0_3;
  wire       [1:0]    px_1_0;
  wire       [1:0]    px_1_1;
  wire       [1:0]    px_1_2;
  wire       [1:0]    px_1_3;
  wire       [1:0]    px_2_0;
  wire       [1:0]    px_2_1;
  wire       [1:0]    px_2_2;
  wire       [1:0]    px_2_3;
  wire       [1:0]    qx_0_0;
  wire       [1:0]    qx_0_1;
  wire       [1:0]    qx_0_2;
  wire       [1:0]    qx_0_3;
  wire       [1:0]    qx_1_0;
  wire       [1:0]    qx_1_1;
  wire       [1:0]    qx_1_2;
  wire       [1:0]    qx_1_3;
  wire       [1:0]    qx_2_0;
  wire       [1:0]    qx_2_1;
  wire       [1:0]    qx_2_2;
  wire       [1:0]    qx_2_3;

  Shared_GF_SQ_SCL_4 sq (
    .port_i_0_0 (sq_in_0_0[1:0]    ), //i
    .port_i_0_1 (sq_in_0_1[1:0]    ), //i
    .port_i_0_2 (sq_in_0_2[1:0]    ), //i
    .port_i_0_3 (sq_in_0_3[1:0]    ), //i
    .port_i_1_0 (sq_in_1_0[1:0]    ), //i
    .port_i_1_1 (sq_in_1_1[1:0]    ), //i
    .port_i_1_2 (sq_in_1_2[1:0]    ), //i
    .port_i_1_3 (sq_in_1_3[1:0]    ), //i
    .port_i_2_0 (sq_in_2_0[1:0]    ), //i
    .port_i_2_1 (sq_in_2_1[1:0]    ), //i
    .port_i_2_2 (sq_in_2_2[1:0]    ), //i
    .port_i_2_3 (sq_in_2_3[1:0]    ), //i
    .port_o_0_0 (sq_port_o_0_0[1:0]), //o
    .port_o_0_1 (sq_port_o_0_1[1:0]), //o
    .port_o_0_2 (sq_port_o_0_2[1:0]), //o
    .port_o_0_3 (sq_port_o_0_3[1:0]), //o
    .port_o_1_0 (sq_port_o_1_0[1:0]), //o
    .port_o_1_1 (sq_port_o_1_1[1:0]), //o
    .port_o_1_2 (sq_port_o_1_2[1:0]), //o
    .port_o_1_3 (sq_port_o_1_3[1:0]), //o
    .port_o_2_0 (sq_port_o_2_0[1:0]), //o
    .port_o_2_1 (sq_port_o_2_1[1:0]), //o
    .port_o_2_2 (sq_port_o_2_2[1:0]), //o
    .port_o_2_3 (sq_port_o_2_3[1:0])  //o
  );
  Shared_GF_MULS_4 mul4 (
    .port_A_0_0         (ax_0_0[1:0]            ), //i
    .port_A_0_1         (ax_0_1[1:0]            ), //i
    .port_A_0_2         (ax_0_2[1:0]            ), //i
    .port_A_0_3         (ax_0_3[1:0]            ), //i
    .port_A_1_0         (ax_1_0[1:0]            ), //i
    .port_A_1_1         (ax_1_1[1:0]            ), //i
    .port_A_1_2         (ax_1_2[1:0]            ), //i
    .port_A_1_3         (ax_1_3[1:0]            ), //i
    .port_A_2_0         (ax_2_0[1:0]            ), //i
    .port_A_2_1         (ax_2_1[1:0]            ), //i
    .port_A_2_2         (ax_2_2[1:0]            ), //i
    .port_A_2_3         (ax_2_3[1:0]            ), //i
    .port_a_0_0_1       (sax_0_0[1:0]           ), //i
    .port_a_0_1_1       (sax_0_1[1:0]           ), //i
    .port_a_1_0_1       (sax_1_0[1:0]           ), //i
    .port_a_1_1_1       (sax_1_1[1:0]           ), //i
    .port_a_2_0_1       (sax_2_0[1:0]           ), //i
    .port_a_2_1_1       (sax_2_1[1:0]           ), //i
    .port_Al_0          (al_0[1:0]              ), //i
    .port_Al_1          (al_1[1:0]              ), //i
    .port_Al_2          (al_2[1:0]              ), //i
    .port_Ah_0          (ah_0[1:0]              ), //i
    .port_Ah_1          (ah_1[1:0]              ), //i
    .port_Ah_2          (ah_2[1:0]              ), //i
    .port_aa_0          (aa_0[1:0]              ), //i
    .port_aa_1          (aa_1[1:0]              ), //i
    .port_aa_2          (aa_2[1:0]              ), //i
    .port_B_0_0         (bx_0_0[1:0]            ), //i
    .port_B_0_1         (bx_0_1[1:0]            ), //i
    .port_B_0_2         (bx_0_2[1:0]            ), //i
    .port_B_0_3         (bx_0_3[1:0]            ), //i
    .port_B_1_0         (bx_1_0[1:0]            ), //i
    .port_B_1_1         (bx_1_1[1:0]            ), //i
    .port_B_1_2         (bx_1_2[1:0]            ), //i
    .port_B_1_3         (bx_1_3[1:0]            ), //i
    .port_B_2_0         (bx_2_0[1:0]            ), //i
    .port_B_2_1         (bx_2_1[1:0]            ), //i
    .port_B_2_2         (bx_2_2[1:0]            ), //i
    .port_B_2_3         (bx_2_3[1:0]            ), //i
    .port_b_0_0_1       (sbx_0_0[1:0]           ), //i
    .port_b_0_1_1       (sbx_0_1[1:0]           ), //i
    .port_b_1_0_1       (sbx_1_0[1:0]           ), //i
    .port_b_1_1_1       (sbx_1_1[1:0]           ), //i
    .port_b_2_0_1       (sbx_2_0[1:0]           ), //i
    .port_b_2_1_1       (sbx_2_1[1:0]           ), //i
    .port_Bl_0          (bl_0[1:0]              ), //i
    .port_Bl_1          (bl_1[1:0]              ), //i
    .port_Bl_2          (bl_2[1:0]              ), //i
    .port_Bh_0          (bh_0[1:0]              ), //i
    .port_Bh_1          (bh_1[1:0]              ), //i
    .port_Bh_2          (bh_2[1:0]              ), //i
    .port_bb_0          (bb_0[1:0]              ), //i
    .port_bb_1          (bb_1[1:0]              ), //i
    .port_bb_2          (bb_2[1:0]              ), //i
    .port_rand_0        (r0_0                   ), //i
    .port_rand_1        (r0_1                   ), //i
    .port_rand_2        (r0_2                   ), //i
    .port_rand_3        (r0_3                   ), //i
    .port_rand_4        (r0_4                   ), //i
    .port_rand_5        (r0_5                   ), //i
    .port_rand_6        (r0_6                   ), //i
    .port_rand_7        (r0_7                   ), //i
    .port_rand_8        (r0_8                   ), //i
    .port_rand_9        (r0_9                   ), //i
    .port_rand_10       (r0_10                  ), //i
    .port_rand_11       (r0_11                  ), //i
    .port_rand_12       (r0_12                  ), //i
    .port_rand_13       (r0_13                  ), //i
    .port_rand_14       (r0_14                  ), //i
    .port_rand_15       (r0_15                  ), //i
    .port_rand_16       (r0_16                  ), //i
    .port_rand_17       (r0_17                  ), //i
    .port_rand_18       (r0_18                  ), //i
    .port_rand_19       (r0_19                  ), //i
    .port_rand_20       (r0_20                  ), //i
    .port_rand_21       (r0_21                  ), //i
    .port_rand_22       (r0_22                  ), //i
    .port_rand_23       (r0_23                  ), //i
    .port_rand_24       (r0_24                  ), //i
    .port_rand_25       (r0_25                  ), //i
    .port_rand_26       (r0_26                  ), //i
    .port_rand_27       (r0_27                  ), //i
    .port_rand_28       (r0_28                  ), //i
    .port_rand_29       (r0_29                  ), //i
    .port_rand_30       (r0_30                  ), //i
    .port_rand_31       (r0_31                  ), //i
    .port_rand_32       (r0_32                  ), //i
    .port_rand_33       (r0_33                  ), //i
    .port_rand_34       (r0_34                  ), //i
    .port_rand_35       (r0_35                  ), //i
    .port_rand_36       (r0_36                  ), //i
    .port_rand_37       (r0_37                  ), //i
    .port_rand_38       (r0_38                  ), //i
    .port_rand_39       (r0_39                  ), //i
    .port_rand_40       (r0_40                  ), //i
    .port_rand_41       (r0_41                  ), //i
    .port_rand_42       (r0_42                  ), //i
    .port_rand_43       (r0_43                  ), //i
    .port_rand_44       (r0_44                  ), //i
    .port_rand_45       (r0_45                  ), //i
    .port_rand_46       (r0_46                  ), //i
    .port_rand_47       (r0_47                  ), //i
    .port_rand_48       (r0_48                  ), //i
    .port_rand_49       (r0_49                  ), //i
    .port_rand_50       (r0_50                  ), //i
    .port_rand_51       (r0_51                  ), //i
    .port_rand_52       (r0_52                  ), //i
    .port_rand_53       (r0_53                  ), //i
    .port_o_0_0         (mul4_port_o_0_0[1:0]   ), //o
    .port_o_0_1         (mul4_port_o_0_1[1:0]   ), //o
    .port_o_0_2         (mul4_port_o_0_2[1:0]   ), //o
    .port_o_0_3         (mul4_port_o_0_3[1:0]   ), //o
    .port_o_1_0         (mul4_port_o_1_0[1:0]   ), //o
    .port_o_1_1         (mul4_port_o_1_1[1:0]   ), //o
    .port_o_1_2         (mul4_port_o_1_2[1:0]   ), //o
    .port_o_1_3         (mul4_port_o_1_3[1:0]   ), //o
    .port_o_2_0         (mul4_port_o_2_0[1:0]   ), //o
    .port_o_2_1         (mul4_port_o_2_1[1:0]   ), //o
    .port_o_2_2         (mul4_port_o_2_2[1:0]   ), //o
    .port_o_2_3         (mul4_port_o_2_3[1:0]   ), //o
    .port_det_flag_0_0  (mul4_port_det_flag_0_0 ), //o
    .port_det_flag_0_1  (mul4_port_det_flag_0_1 ), //o
    .port_det_flag_0_2  (mul4_port_det_flag_0_2 ), //o
    .port_det_flag_0_3  (mul4_port_det_flag_0_3 ), //o
    .port_det_flag_0_4  (mul4_port_det_flag_0_4 ), //o
    .port_det_flag_0_5  (mul4_port_det_flag_0_5 ), //o
    .port_det_flag_0_6  (mul4_port_det_flag_0_6 ), //o
    .port_det_flag_0_7  (mul4_port_det_flag_0_7 ), //o
    .port_det_flag_0_8  (mul4_port_det_flag_0_8 ), //o
    .port_det_flag_0_9  (mul4_port_det_flag_0_9 ), //o
    .port_det_flag_0_10 (mul4_port_det_flag_0_10), //o
    .port_det_flag_0_11 (mul4_port_det_flag_0_11), //o
    .port_det_flag_0_12 (mul4_port_det_flag_0_12), //o
    .port_det_flag_0_13 (mul4_port_det_flag_0_13), //o
    .port_det_flag_0_14 (mul4_port_det_flag_0_14), //o
    .port_det_flag_0_15 (mul4_port_det_flag_0_15), //o
    .port_det_flag_0_16 (mul4_port_det_flag_0_16), //o
    .port_det_flag_0_17 (mul4_port_det_flag_0_17), //o
    .port_det_flag_0_18 (mul4_port_det_flag_0_18), //o
    .port_det_flag_0_19 (mul4_port_det_flag_0_19), //o
    .port_det_flag_0_20 (mul4_port_det_flag_0_20), //o
    .port_det_flag_0_21 (mul4_port_det_flag_0_21), //o
    .port_det_flag_0_22 (mul4_port_det_flag_0_22), //o
    .port_det_flag_0_23 (mul4_port_det_flag_0_23), //o
    .port_det_flag_1_0  (mul4_port_det_flag_1_0 ), //o
    .port_det_flag_1_1  (mul4_port_det_flag_1_1 ), //o
    .port_det_flag_1_2  (mul4_port_det_flag_1_2 ), //o
    .port_det_flag_1_3  (mul4_port_det_flag_1_3 ), //o
    .port_det_flag_1_4  (mul4_port_det_flag_1_4 ), //o
    .port_det_flag_1_5  (mul4_port_det_flag_1_5 ), //o
    .port_det_flag_1_6  (mul4_port_det_flag_1_6 ), //o
    .port_det_flag_1_7  (mul4_port_det_flag_1_7 ), //o
    .port_det_flag_1_8  (mul4_port_det_flag_1_8 ), //o
    .port_det_flag_1_9  (mul4_port_det_flag_1_9 ), //o
    .port_det_flag_1_10 (mul4_port_det_flag_1_10), //o
    .port_det_flag_1_11 (mul4_port_det_flag_1_11), //o
    .port_det_flag_1_12 (mul4_port_det_flag_1_12), //o
    .port_det_flag_1_13 (mul4_port_det_flag_1_13), //o
    .port_det_flag_1_14 (mul4_port_det_flag_1_14), //o
    .port_det_flag_1_15 (mul4_port_det_flag_1_15), //o
    .port_det_flag_1_16 (mul4_port_det_flag_1_16), //o
    .port_det_flag_1_17 (mul4_port_det_flag_1_17), //o
    .port_det_flag_1_18 (mul4_port_det_flag_1_18), //o
    .port_det_flag_1_19 (mul4_port_det_flag_1_19), //o
    .port_det_flag_1_20 (mul4_port_det_flag_1_20), //o
    .port_det_flag_1_21 (mul4_port_det_flag_1_21), //o
    .port_det_flag_1_22 (mul4_port_det_flag_1_22), //o
    .port_det_flag_1_23 (mul4_port_det_flag_1_23), //o
    .port_det_flag_2_0  (mul4_port_det_flag_2_0 ), //o
    .port_det_flag_2_1  (mul4_port_det_flag_2_1 ), //o
    .port_det_flag_2_2  (mul4_port_det_flag_2_2 ), //o
    .port_det_flag_2_3  (mul4_port_det_flag_2_3 ), //o
    .port_det_flag_2_4  (mul4_port_det_flag_2_4 ), //o
    .port_det_flag_2_5  (mul4_port_det_flag_2_5 ), //o
    .port_det_flag_2_6  (mul4_port_det_flag_2_6 ), //o
    .port_det_flag_2_7  (mul4_port_det_flag_2_7 ), //o
    .port_det_flag_2_8  (mul4_port_det_flag_2_8 ), //o
    .port_det_flag_2_9  (mul4_port_det_flag_2_9 ), //o
    .port_det_flag_2_10 (mul4_port_det_flag_2_10), //o
    .port_det_flag_2_11 (mul4_port_det_flag_2_11), //o
    .port_det_flag_2_12 (mul4_port_det_flag_2_12), //o
    .port_det_flag_2_13 (mul4_port_det_flag_2_13), //o
    .port_det_flag_2_14 (mul4_port_det_flag_2_14), //o
    .port_det_flag_2_15 (mul4_port_det_flag_2_15), //o
    .port_det_flag_2_16 (mul4_port_det_flag_2_16), //o
    .port_det_flag_2_17 (mul4_port_det_flag_2_17), //o
    .port_det_flag_2_18 (mul4_port_det_flag_2_18), //o
    .port_det_flag_2_19 (mul4_port_det_flag_2_19), //o
    .port_det_flag_2_20 (mul4_port_det_flag_2_20), //o
    .port_det_flag_2_21 (mul4_port_det_flag_2_21), //o
    .port_det_flag_2_22 (mul4_port_det_flag_2_22), //o
    .port_det_flag_2_23 (mul4_port_det_flag_2_23), //o
    .port_det_flag_3_0  (mul4_port_det_flag_3_0 ), //o
    .port_det_flag_3_1  (mul4_port_det_flag_3_1 ), //o
    .port_det_flag_3_2  (mul4_port_det_flag_3_2 ), //o
    .port_det_flag_3_3  (mul4_port_det_flag_3_3 ), //o
    .port_det_flag_3_4  (mul4_port_det_flag_3_4 ), //o
    .port_det_flag_3_5  (mul4_port_det_flag_3_5 ), //o
    .port_det_flag_3_6  (mul4_port_det_flag_3_6 ), //o
    .port_det_flag_3_7  (mul4_port_det_flag_3_7 ), //o
    .port_det_flag_3_8  (mul4_port_det_flag_3_8 ), //o
    .port_det_flag_3_9  (mul4_port_det_flag_3_9 ), //o
    .port_det_flag_3_10 (mul4_port_det_flag_3_10), //o
    .port_det_flag_3_11 (mul4_port_det_flag_3_11), //o
    .port_det_flag_3_12 (mul4_port_det_flag_3_12), //o
    .port_det_flag_3_13 (mul4_port_det_flag_3_13), //o
    .port_det_flag_3_14 (mul4_port_det_flag_3_14), //o
    .port_det_flag_3_15 (mul4_port_det_flag_3_15), //o
    .port_det_flag_3_16 (mul4_port_det_flag_3_16), //o
    .port_det_flag_3_17 (mul4_port_det_flag_3_17), //o
    .port_det_flag_3_18 (mul4_port_det_flag_3_18), //o
    .port_det_flag_3_19 (mul4_port_det_flag_3_19), //o
    .port_det_flag_3_20 (mul4_port_det_flag_3_20), //o
    .port_det_flag_3_21 (mul4_port_det_flag_3_21), //o
    .port_det_flag_3_22 (mul4_port_det_flag_3_22), //o
    .port_det_flag_3_23 (mul4_port_det_flag_3_23), //o
    .port_det_flag_4_0  (mul4_port_det_flag_4_0 ), //o
    .port_det_flag_4_1  (mul4_port_det_flag_4_1 ), //o
    .port_det_flag_4_2  (mul4_port_det_flag_4_2 ), //o
    .port_det_flag_4_3  (mul4_port_det_flag_4_3 ), //o
    .port_det_flag_4_4  (mul4_port_det_flag_4_4 ), //o
    .port_det_flag_4_5  (mul4_port_det_flag_4_5 ), //o
    .port_det_flag_4_6  (mul4_port_det_flag_4_6 ), //o
    .port_det_flag_4_7  (mul4_port_det_flag_4_7 ), //o
    .port_det_flag_4_8  (mul4_port_det_flag_4_8 ), //o
    .port_det_flag_4_9  (mul4_port_det_flag_4_9 ), //o
    .port_det_flag_4_10 (mul4_port_det_flag_4_10), //o
    .port_det_flag_4_11 (mul4_port_det_flag_4_11), //o
    .port_det_flag_4_12 (mul4_port_det_flag_4_12), //o
    .port_det_flag_4_13 (mul4_port_det_flag_4_13), //o
    .port_det_flag_4_14 (mul4_port_det_flag_4_14), //o
    .port_det_flag_4_15 (mul4_port_det_flag_4_15), //o
    .port_det_flag_4_16 (mul4_port_det_flag_4_16), //o
    .port_det_flag_4_17 (mul4_port_det_flag_4_17), //o
    .port_det_flag_4_18 (mul4_port_det_flag_4_18), //o
    .port_det_flag_4_19 (mul4_port_det_flag_4_19), //o
    .port_det_flag_4_20 (mul4_port_det_flag_4_20), //o
    .port_det_flag_4_21 (mul4_port_det_flag_4_21), //o
    .port_det_flag_4_22 (mul4_port_det_flag_4_22), //o
    .port_det_flag_4_23 (mul4_port_det_flag_4_23), //o
    .port_det_flag_5_0  (mul4_port_det_flag_5_0 ), //o
    .port_det_flag_5_1  (mul4_port_det_flag_5_1 ), //o
    .port_det_flag_5_2  (mul4_port_det_flag_5_2 ), //o
    .port_det_flag_5_3  (mul4_port_det_flag_5_3 ), //o
    .port_det_flag_5_4  (mul4_port_det_flag_5_4 ), //o
    .port_det_flag_5_5  (mul4_port_det_flag_5_5 ), //o
    .port_det_flag_5_6  (mul4_port_det_flag_5_6 ), //o
    .port_det_flag_5_7  (mul4_port_det_flag_5_7 ), //o
    .port_det_flag_5_8  (mul4_port_det_flag_5_8 ), //o
    .port_det_flag_5_9  (mul4_port_det_flag_5_9 ), //o
    .port_det_flag_5_10 (mul4_port_det_flag_5_10), //o
    .port_det_flag_5_11 (mul4_port_det_flag_5_11), //o
    .port_det_flag_5_12 (mul4_port_det_flag_5_12), //o
    .port_det_flag_5_13 (mul4_port_det_flag_5_13), //o
    .port_det_flag_5_14 (mul4_port_det_flag_5_14), //o
    .port_det_flag_5_15 (mul4_port_det_flag_5_15), //o
    .port_det_flag_5_16 (mul4_port_det_flag_5_16), //o
    .port_det_flag_5_17 (mul4_port_det_flag_5_17), //o
    .port_det_flag_5_18 (mul4_port_det_flag_5_18), //o
    .port_det_flag_5_19 (mul4_port_det_flag_5_19), //o
    .port_det_flag_5_20 (mul4_port_det_flag_5_20), //o
    .port_det_flag_5_21 (mul4_port_det_flag_5_21), //o
    .port_det_flag_5_22 (mul4_port_det_flag_5_22), //o
    .port_det_flag_5_23 (mul4_port_det_flag_5_23), //o
    .clk                (clk                    ), //i
    .reset              (reset                  )  //i
  );
  Shared_GF_INV_4 dx_inv (
    .port_i_0_0         (cx_0_0[1:0]              ), //i
    .port_i_0_1         (cx_0_1[1:0]              ), //i
    .port_i_0_2         (cx_0_2[1:0]              ), //i
    .port_i_0_3         (cx_0_3[1:0]              ), //i
    .port_i_1_0         (cx_1_0[1:0]              ), //i
    .port_i_1_1         (cx_1_1[1:0]              ), //i
    .port_i_1_2         (cx_1_2[1:0]              ), //i
    .port_i_1_3         (cx_1_3[1:0]              ), //i
    .port_i_2_0         (cx_2_0[1:0]              ), //i
    .port_i_2_1         (cx_2_1[1:0]              ), //i
    .port_i_2_2         (cx_2_2[1:0]              ), //i
    .port_i_2_3         (cx_2_3[1:0]              ), //i
    .port_rand_0        (r1_0                     ), //i
    .port_rand_1        (r1_1                     ), //i
    .port_rand_2        (r1_2                     ), //i
    .port_rand_3        (r1_3                     ), //i
    .port_rand_4        (r1_4                     ), //i
    .port_rand_5        (r1_5                     ), //i
    .port_rand_6        (r1_6                     ), //i
    .port_rand_7        (r1_7                     ), //i
    .port_rand_8        (r1_8                     ), //i
    .port_rand_9        (r1_9                     ), //i
    .port_rand_10       (r1_10                    ), //i
    .port_rand_11       (r1_11                    ), //i
    .port_rand_12       (r1_12                    ), //i
    .port_rand_13       (r1_13                    ), //i
    .port_rand_14       (r1_14                    ), //i
    .port_rand_15       (r1_15                    ), //i
    .port_rand_16       (r1_16                    ), //i
    .port_rand_17       (r1_17                    ), //i
    .port_rand_18       (r1_18                    ), //i
    .port_rand_19       (r1_19                    ), //i
    .port_rand_20       (r1_20                    ), //i
    .port_rand_21       (r1_21                    ), //i
    .port_rand_22       (r1_22                    ), //i
    .port_rand_23       (r1_23                    ), //i
    .port_rand_24       (r1_24                    ), //i
    .port_rand_25       (r1_25                    ), //i
    .port_rand_26       (r1_26                    ), //i
    .port_rand_27       (r1_27                    ), //i
    .port_rand_28       (r1_28                    ), //i
    .port_rand_29       (r1_29                    ), //i
    .port_rand_30       (r1_30                    ), //i
    .port_rand_31       (r1_31                    ), //i
    .port_rand_32       (r1_32                    ), //i
    .port_rand_33       (r1_33                    ), //i
    .port_rand_34       (r1_34                    ), //i
    .port_rand_35       (r1_35                    ), //i
    .port_rand_36       (r1_36                    ), //i
    .port_rand_37       (r1_37                    ), //i
    .port_rand_38       (r1_38                    ), //i
    .port_rand_39       (r1_39                    ), //i
    .port_rand_40       (r1_40                    ), //i
    .port_rand_41       (r1_41                    ), //i
    .port_rand_42       (r1_42                    ), //i
    .port_rand_43       (r1_43                    ), //i
    .port_rand_44       (r1_44                    ), //i
    .port_rand_45       (r1_45                    ), //i
    .port_rand_46       (r1_46                    ), //i
    .port_rand_47       (r1_47                    ), //i
    .port_rand_48       (r1_48                    ), //i
    .port_rand_49       (r1_49                    ), //i
    .port_rand_50       (r1_50                    ), //i
    .port_rand_51       (r1_51                    ), //i
    .port_rand_52       (r1_52                    ), //i
    .port_rand_53       (r1_53                    ), //i
    .port_o_0_0         (dx_inv_port_o_0_0[1:0]   ), //o
    .port_o_0_1         (dx_inv_port_o_0_1[1:0]   ), //o
    .port_o_0_2         (dx_inv_port_o_0_2[1:0]   ), //o
    .port_o_0_3         (dx_inv_port_o_0_3[1:0]   ), //o
    .port_o_1_0         (dx_inv_port_o_1_0[1:0]   ), //o
    .port_o_1_1         (dx_inv_port_o_1_1[1:0]   ), //o
    .port_o_1_2         (dx_inv_port_o_1_2[1:0]   ), //o
    .port_o_1_3         (dx_inv_port_o_1_3[1:0]   ), //o
    .port_o_2_0         (dx_inv_port_o_2_0[1:0]   ), //o
    .port_o_2_1         (dx_inv_port_o_2_1[1:0]   ), //o
    .port_o_2_2         (dx_inv_port_o_2_2[1:0]   ), //o
    .port_o_2_3         (dx_inv_port_o_2_3[1:0]   ), //o
    .port_det_flag_0_0  (dx_inv_port_det_flag_0_0 ), //o
    .port_det_flag_0_1  (dx_inv_port_det_flag_0_1 ), //o
    .port_det_flag_0_2  (dx_inv_port_det_flag_0_2 ), //o
    .port_det_flag_0_3  (dx_inv_port_det_flag_0_3 ), //o
    .port_det_flag_0_4  (dx_inv_port_det_flag_0_4 ), //o
    .port_det_flag_0_5  (dx_inv_port_det_flag_0_5 ), //o
    .port_det_flag_0_6  (dx_inv_port_det_flag_0_6 ), //o
    .port_det_flag_0_7  (dx_inv_port_det_flag_0_7 ), //o
    .port_det_flag_0_8  (dx_inv_port_det_flag_0_8 ), //o
    .port_det_flag_0_9  (dx_inv_port_det_flag_0_9 ), //o
    .port_det_flag_0_10 (dx_inv_port_det_flag_0_10), //o
    .port_det_flag_0_11 (dx_inv_port_det_flag_0_11), //o
    .port_det_flag_0_12 (dx_inv_port_det_flag_0_12), //o
    .port_det_flag_0_13 (dx_inv_port_det_flag_0_13), //o
    .port_det_flag_0_14 (dx_inv_port_det_flag_0_14), //o
    .port_det_flag_0_15 (dx_inv_port_det_flag_0_15), //o
    .port_det_flag_0_16 (dx_inv_port_det_flag_0_16), //o
    .port_det_flag_0_17 (dx_inv_port_det_flag_0_17), //o
    .port_det_flag_0_18 (dx_inv_port_det_flag_0_18), //o
    .port_det_flag_0_19 (dx_inv_port_det_flag_0_19), //o
    .port_det_flag_0_20 (dx_inv_port_det_flag_0_20), //o
    .port_det_flag_0_21 (dx_inv_port_det_flag_0_21), //o
    .port_det_flag_0_22 (dx_inv_port_det_flag_0_22), //o
    .port_det_flag_0_23 (dx_inv_port_det_flag_0_23), //o
    .port_det_flag_1_0  (dx_inv_port_det_flag_1_0 ), //o
    .port_det_flag_1_1  (dx_inv_port_det_flag_1_1 ), //o
    .port_det_flag_1_2  (dx_inv_port_det_flag_1_2 ), //o
    .port_det_flag_1_3  (dx_inv_port_det_flag_1_3 ), //o
    .port_det_flag_1_4  (dx_inv_port_det_flag_1_4 ), //o
    .port_det_flag_1_5  (dx_inv_port_det_flag_1_5 ), //o
    .port_det_flag_1_6  (dx_inv_port_det_flag_1_6 ), //o
    .port_det_flag_1_7  (dx_inv_port_det_flag_1_7 ), //o
    .port_det_flag_1_8  (dx_inv_port_det_flag_1_8 ), //o
    .port_det_flag_1_9  (dx_inv_port_det_flag_1_9 ), //o
    .port_det_flag_1_10 (dx_inv_port_det_flag_1_10), //o
    .port_det_flag_1_11 (dx_inv_port_det_flag_1_11), //o
    .port_det_flag_1_12 (dx_inv_port_det_flag_1_12), //o
    .port_det_flag_1_13 (dx_inv_port_det_flag_1_13), //o
    .port_det_flag_1_14 (dx_inv_port_det_flag_1_14), //o
    .port_det_flag_1_15 (dx_inv_port_det_flag_1_15), //o
    .port_det_flag_1_16 (dx_inv_port_det_flag_1_16), //o
    .port_det_flag_1_17 (dx_inv_port_det_flag_1_17), //o
    .port_det_flag_1_18 (dx_inv_port_det_flag_1_18), //o
    .port_det_flag_1_19 (dx_inv_port_det_flag_1_19), //o
    .port_det_flag_1_20 (dx_inv_port_det_flag_1_20), //o
    .port_det_flag_1_21 (dx_inv_port_det_flag_1_21), //o
    .port_det_flag_1_22 (dx_inv_port_det_flag_1_22), //o
    .port_det_flag_1_23 (dx_inv_port_det_flag_1_23), //o
    .port_det_flag_2_0  (dx_inv_port_det_flag_2_0 ), //o
    .port_det_flag_2_1  (dx_inv_port_det_flag_2_1 ), //o
    .port_det_flag_2_2  (dx_inv_port_det_flag_2_2 ), //o
    .port_det_flag_2_3  (dx_inv_port_det_flag_2_3 ), //o
    .port_det_flag_2_4  (dx_inv_port_det_flag_2_4 ), //o
    .port_det_flag_2_5  (dx_inv_port_det_flag_2_5 ), //o
    .port_det_flag_2_6  (dx_inv_port_det_flag_2_6 ), //o
    .port_det_flag_2_7  (dx_inv_port_det_flag_2_7 ), //o
    .port_det_flag_2_8  (dx_inv_port_det_flag_2_8 ), //o
    .port_det_flag_2_9  (dx_inv_port_det_flag_2_9 ), //o
    .port_det_flag_2_10 (dx_inv_port_det_flag_2_10), //o
    .port_det_flag_2_11 (dx_inv_port_det_flag_2_11), //o
    .port_det_flag_2_12 (dx_inv_port_det_flag_2_12), //o
    .port_det_flag_2_13 (dx_inv_port_det_flag_2_13), //o
    .port_det_flag_2_14 (dx_inv_port_det_flag_2_14), //o
    .port_det_flag_2_15 (dx_inv_port_det_flag_2_15), //o
    .port_det_flag_2_16 (dx_inv_port_det_flag_2_16), //o
    .port_det_flag_2_17 (dx_inv_port_det_flag_2_17), //o
    .port_det_flag_2_18 (dx_inv_port_det_flag_2_18), //o
    .port_det_flag_2_19 (dx_inv_port_det_flag_2_19), //o
    .port_det_flag_2_20 (dx_inv_port_det_flag_2_20), //o
    .port_det_flag_2_21 (dx_inv_port_det_flag_2_21), //o
    .port_det_flag_2_22 (dx_inv_port_det_flag_2_22), //o
    .port_det_flag_2_23 (dx_inv_port_det_flag_2_23), //o
    .port_det_flag_3_0  (dx_inv_port_det_flag_3_0 ), //o
    .port_det_flag_3_1  (dx_inv_port_det_flag_3_1 ), //o
    .port_det_flag_3_2  (dx_inv_port_det_flag_3_2 ), //o
    .port_det_flag_3_3  (dx_inv_port_det_flag_3_3 ), //o
    .port_det_flag_3_4  (dx_inv_port_det_flag_3_4 ), //o
    .port_det_flag_3_5  (dx_inv_port_det_flag_3_5 ), //o
    .port_det_flag_3_6  (dx_inv_port_det_flag_3_6 ), //o
    .port_det_flag_3_7  (dx_inv_port_det_flag_3_7 ), //o
    .port_det_flag_3_8  (dx_inv_port_det_flag_3_8 ), //o
    .port_det_flag_3_9  (dx_inv_port_det_flag_3_9 ), //o
    .port_det_flag_3_10 (dx_inv_port_det_flag_3_10), //o
    .port_det_flag_3_11 (dx_inv_port_det_flag_3_11), //o
    .port_det_flag_3_12 (dx_inv_port_det_flag_3_12), //o
    .port_det_flag_3_13 (dx_inv_port_det_flag_3_13), //o
    .port_det_flag_3_14 (dx_inv_port_det_flag_3_14), //o
    .port_det_flag_3_15 (dx_inv_port_det_flag_3_15), //o
    .port_det_flag_3_16 (dx_inv_port_det_flag_3_16), //o
    .port_det_flag_3_17 (dx_inv_port_det_flag_3_17), //o
    .port_det_flag_3_18 (dx_inv_port_det_flag_3_18), //o
    .port_det_flag_3_19 (dx_inv_port_det_flag_3_19), //o
    .port_det_flag_3_20 (dx_inv_port_det_flag_3_20), //o
    .port_det_flag_3_21 (dx_inv_port_det_flag_3_21), //o
    .port_det_flag_3_22 (dx_inv_port_det_flag_3_22), //o
    .port_det_flag_3_23 (dx_inv_port_det_flag_3_23), //o
    .port_det_flag_4_0  (dx_inv_port_det_flag_4_0 ), //o
    .port_det_flag_4_1  (dx_inv_port_det_flag_4_1 ), //o
    .port_det_flag_4_2  (dx_inv_port_det_flag_4_2 ), //o
    .port_det_flag_4_3  (dx_inv_port_det_flag_4_3 ), //o
    .port_det_flag_4_4  (dx_inv_port_det_flag_4_4 ), //o
    .port_det_flag_4_5  (dx_inv_port_det_flag_4_5 ), //o
    .port_det_flag_4_6  (dx_inv_port_det_flag_4_6 ), //o
    .port_det_flag_4_7  (dx_inv_port_det_flag_4_7 ), //o
    .port_det_flag_4_8  (dx_inv_port_det_flag_4_8 ), //o
    .port_det_flag_4_9  (dx_inv_port_det_flag_4_9 ), //o
    .port_det_flag_4_10 (dx_inv_port_det_flag_4_10), //o
    .port_det_flag_4_11 (dx_inv_port_det_flag_4_11), //o
    .port_det_flag_4_12 (dx_inv_port_det_flag_4_12), //o
    .port_det_flag_4_13 (dx_inv_port_det_flag_4_13), //o
    .port_det_flag_4_14 (dx_inv_port_det_flag_4_14), //o
    .port_det_flag_4_15 (dx_inv_port_det_flag_4_15), //o
    .port_det_flag_4_16 (dx_inv_port_det_flag_4_16), //o
    .port_det_flag_4_17 (dx_inv_port_det_flag_4_17), //o
    .port_det_flag_4_18 (dx_inv_port_det_flag_4_18), //o
    .port_det_flag_4_19 (dx_inv_port_det_flag_4_19), //o
    .port_det_flag_4_20 (dx_inv_port_det_flag_4_20), //o
    .port_det_flag_4_21 (dx_inv_port_det_flag_4_21), //o
    .port_det_flag_4_22 (dx_inv_port_det_flag_4_22), //o
    .port_det_flag_4_23 (dx_inv_port_det_flag_4_23), //o
    .port_det_flag_5_0  (dx_inv_port_det_flag_5_0 ), //o
    .port_det_flag_5_1  (dx_inv_port_det_flag_5_1 ), //o
    .port_det_flag_5_2  (dx_inv_port_det_flag_5_2 ), //o
    .port_det_flag_5_3  (dx_inv_port_det_flag_5_3 ), //o
    .port_det_flag_5_4  (dx_inv_port_det_flag_5_4 ), //o
    .port_det_flag_5_5  (dx_inv_port_det_flag_5_5 ), //o
    .port_det_flag_5_6  (dx_inv_port_det_flag_5_6 ), //o
    .port_det_flag_5_7  (dx_inv_port_det_flag_5_7 ), //o
    .port_det_flag_5_8  (dx_inv_port_det_flag_5_8 ), //o
    .port_det_flag_5_9  (dx_inv_port_det_flag_5_9 ), //o
    .port_det_flag_5_10 (dx_inv_port_det_flag_5_10), //o
    .port_det_flag_5_11 (dx_inv_port_det_flag_5_11), //o
    .port_det_flag_5_12 (dx_inv_port_det_flag_5_12), //o
    .port_det_flag_5_13 (dx_inv_port_det_flag_5_13), //o
    .port_det_flag_5_14 (dx_inv_port_det_flag_5_14), //o
    .port_det_flag_5_15 (dx_inv_port_det_flag_5_15), //o
    .port_det_flag_5_16 (dx_inv_port_det_flag_5_16), //o
    .port_det_flag_5_17 (dx_inv_port_det_flag_5_17), //o
    .port_det_flag_5_18 (dx_inv_port_det_flag_5_18), //o
    .port_det_flag_5_19 (dx_inv_port_det_flag_5_19), //o
    .port_det_flag_5_20 (dx_inv_port_det_flag_5_20), //o
    .port_det_flag_5_21 (dx_inv_port_det_flag_5_21), //o
    .port_det_flag_5_22 (dx_inv_port_det_flag_5_22), //o
    .port_det_flag_5_23 (dx_inv_port_det_flag_5_23), //o
    .port_det_flag_6_0  (dx_inv_port_det_flag_6_0 ), //o
    .port_det_flag_6_1  (dx_inv_port_det_flag_6_1 ), //o
    .port_det_flag_6_2  (dx_inv_port_det_flag_6_2 ), //o
    .port_det_flag_6_3  (dx_inv_port_det_flag_6_3 ), //o
    .port_det_flag_6_4  (dx_inv_port_det_flag_6_4 ), //o
    .port_det_flag_6_5  (dx_inv_port_det_flag_6_5 ), //o
    .port_det_flag_6_6  (dx_inv_port_det_flag_6_6 ), //o
    .port_det_flag_6_7  (dx_inv_port_det_flag_6_7 ), //o
    .port_det_flag_6_8  (dx_inv_port_det_flag_6_8 ), //o
    .port_det_flag_6_9  (dx_inv_port_det_flag_6_9 ), //o
    .port_det_flag_6_10 (dx_inv_port_det_flag_6_10), //o
    .port_det_flag_6_11 (dx_inv_port_det_flag_6_11), //o
    .port_det_flag_6_12 (dx_inv_port_det_flag_6_12), //o
    .port_det_flag_6_13 (dx_inv_port_det_flag_6_13), //o
    .port_det_flag_6_14 (dx_inv_port_det_flag_6_14), //o
    .port_det_flag_6_15 (dx_inv_port_det_flag_6_15), //o
    .port_det_flag_6_16 (dx_inv_port_det_flag_6_16), //o
    .port_det_flag_6_17 (dx_inv_port_det_flag_6_17), //o
    .port_det_flag_6_18 (dx_inv_port_det_flag_6_18), //o
    .port_det_flag_6_19 (dx_inv_port_det_flag_6_19), //o
    .port_det_flag_6_20 (dx_inv_port_det_flag_6_20), //o
    .port_det_flag_6_21 (dx_inv_port_det_flag_6_21), //o
    .port_det_flag_6_22 (dx_inv_port_det_flag_6_22), //o
    .port_det_flag_6_23 (dx_inv_port_det_flag_6_23), //o
    .port_det_flag_7_0  (dx_inv_port_det_flag_7_0 ), //o
    .port_det_flag_7_1  (dx_inv_port_det_flag_7_1 ), //o
    .port_det_flag_7_2  (dx_inv_port_det_flag_7_2 ), //o
    .port_det_flag_7_3  (dx_inv_port_det_flag_7_3 ), //o
    .port_det_flag_7_4  (dx_inv_port_det_flag_7_4 ), //o
    .port_det_flag_7_5  (dx_inv_port_det_flag_7_5 ), //o
    .port_det_flag_7_6  (dx_inv_port_det_flag_7_6 ), //o
    .port_det_flag_7_7  (dx_inv_port_det_flag_7_7 ), //o
    .port_det_flag_7_8  (dx_inv_port_det_flag_7_8 ), //o
    .port_det_flag_7_9  (dx_inv_port_det_flag_7_9 ), //o
    .port_det_flag_7_10 (dx_inv_port_det_flag_7_10), //o
    .port_det_flag_7_11 (dx_inv_port_det_flag_7_11), //o
    .port_det_flag_7_12 (dx_inv_port_det_flag_7_12), //o
    .port_det_flag_7_13 (dx_inv_port_det_flag_7_13), //o
    .port_det_flag_7_14 (dx_inv_port_det_flag_7_14), //o
    .port_det_flag_7_15 (dx_inv_port_det_flag_7_15), //o
    .port_det_flag_7_16 (dx_inv_port_det_flag_7_16), //o
    .port_det_flag_7_17 (dx_inv_port_det_flag_7_17), //o
    .port_det_flag_7_18 (dx_inv_port_det_flag_7_18), //o
    .port_det_flag_7_19 (dx_inv_port_det_flag_7_19), //o
    .port_det_flag_7_20 (dx_inv_port_det_flag_7_20), //o
    .port_det_flag_7_21 (dx_inv_port_det_flag_7_21), //o
    .port_det_flag_7_22 (dx_inv_port_det_flag_7_22), //o
    .port_det_flag_7_23 (dx_inv_port_det_flag_7_23), //o
    .port_det_flag_8_0  (dx_inv_port_det_flag_8_0 ), //o
    .port_det_flag_8_1  (dx_inv_port_det_flag_8_1 ), //o
    .port_det_flag_8_2  (dx_inv_port_det_flag_8_2 ), //o
    .port_det_flag_8_3  (dx_inv_port_det_flag_8_3 ), //o
    .port_det_flag_8_4  (dx_inv_port_det_flag_8_4 ), //o
    .port_det_flag_8_5  (dx_inv_port_det_flag_8_5 ), //o
    .port_det_flag_8_6  (dx_inv_port_det_flag_8_6 ), //o
    .port_det_flag_8_7  (dx_inv_port_det_flag_8_7 ), //o
    .port_det_flag_8_8  (dx_inv_port_det_flag_8_8 ), //o
    .port_det_flag_8_9  (dx_inv_port_det_flag_8_9 ), //o
    .port_det_flag_8_10 (dx_inv_port_det_flag_8_10), //o
    .port_det_flag_8_11 (dx_inv_port_det_flag_8_11), //o
    .port_det_flag_8_12 (dx_inv_port_det_flag_8_12), //o
    .port_det_flag_8_13 (dx_inv_port_det_flag_8_13), //o
    .port_det_flag_8_14 (dx_inv_port_det_flag_8_14), //o
    .port_det_flag_8_15 (dx_inv_port_det_flag_8_15), //o
    .port_det_flag_8_16 (dx_inv_port_det_flag_8_16), //o
    .port_det_flag_8_17 (dx_inv_port_det_flag_8_17), //o
    .port_det_flag_8_18 (dx_inv_port_det_flag_8_18), //o
    .port_det_flag_8_19 (dx_inv_port_det_flag_8_19), //o
    .port_det_flag_8_20 (dx_inv_port_det_flag_8_20), //o
    .port_det_flag_8_21 (dx_inv_port_det_flag_8_21), //o
    .port_det_flag_8_22 (dx_inv_port_det_flag_8_22), //o
    .port_det_flag_8_23 (dx_inv_port_det_flag_8_23), //o
    .clk                (clk                      ), //i
    .reset              (reset                    )  //i
  );
  Shared_GF_MULS_4 px_mul (
    .port_A_0_0         (dx_0_0[1:0]              ), //i
    .port_A_0_1         (dx_0_1[1:0]              ), //i
    .port_A_0_2         (dx_0_2[1:0]              ), //i
    .port_A_0_3         (dx_0_3[1:0]              ), //i
    .port_A_1_0         (dx_1_0[1:0]              ), //i
    .port_A_1_1         (dx_1_1[1:0]              ), //i
    .port_A_1_2         (dx_1_2[1:0]              ), //i
    .port_A_1_3         (dx_1_3[1:0]              ), //i
    .port_A_2_0         (dx_2_0[1:0]              ), //i
    .port_A_2_1         (dx_2_1[1:0]              ), //i
    .port_A_2_2         (dx_2_2[1:0]              ), //i
    .port_A_2_3         (dx_2_3[1:0]              ), //i
    .port_a_0_0_1       (sdx_0_0[1:0]             ), //i
    .port_a_0_1_1       (sdx_0_1[1:0]             ), //i
    .port_a_1_0_1       (sdx_1_0[1:0]             ), //i
    .port_a_1_1_1       (sdx_1_1[1:0]             ), //i
    .port_a_2_0_1       (sdx_2_0[1:0]             ), //i
    .port_a_2_1_1       (sdx_2_1[1:0]             ), //i
    .port_Al_0          (dl_0[1:0]                ), //i
    .port_Al_1          (dl_1[1:0]                ), //i
    .port_Al_2          (dl_2[1:0]                ), //i
    .port_Ah_0          (dh_0[1:0]                ), //i
    .port_Ah_1          (dh_1[1:0]                ), //i
    .port_Ah_2          (dh_2[1:0]                ), //i
    .port_aa_0          (dd_0[1:0]                ), //i
    .port_aa_1          (dd_1[1:0]                ), //i
    .port_aa_2          (dd_2[1:0]                ), //i
    .port_B_0_0         (bx_reg_3_0_0[1:0]        ), //i
    .port_B_0_1         (bx_reg_3_0_1[1:0]        ), //i
    .port_B_0_2         (bx_reg_3_0_2[1:0]        ), //i
    .port_B_0_3         (bx_reg_3_0_3[1:0]        ), //i
    .port_B_1_0         (bx_reg_3_1_0[1:0]        ), //i
    .port_B_1_1         (bx_reg_3_1_1[1:0]        ), //i
    .port_B_1_2         (bx_reg_3_1_2[1:0]        ), //i
    .port_B_1_3         (bx_reg_3_1_3[1:0]        ), //i
    .port_B_2_0         (bx_reg_3_2_0[1:0]        ), //i
    .port_B_2_1         (bx_reg_3_2_1[1:0]        ), //i
    .port_B_2_2         (bx_reg_3_2_2[1:0]        ), //i
    .port_B_2_3         (bx_reg_3_2_3[1:0]        ), //i
    .port_b_0_0_1       (sbx_reg_3_0_0[1:0]       ), //i
    .port_b_0_1_1       (sbx_reg_3_0_1[1:0]       ), //i
    .port_b_1_0_1       (sbx_reg_3_1_0[1:0]       ), //i
    .port_b_1_1_1       (sbx_reg_3_1_1[1:0]       ), //i
    .port_b_2_0_1       (sbx_reg_3_2_0[1:0]       ), //i
    .port_b_2_1_1       (sbx_reg_3_2_1[1:0]       ), //i
    .port_Bl_0          (bl_reg_3_0[1:0]          ), //i
    .port_Bl_1          (bl_reg_3_1[1:0]          ), //i
    .port_Bl_2          (bl_reg_3_2[1:0]          ), //i
    .port_Bh_0          (bh_reg_3_0[1:0]          ), //i
    .port_Bh_1          (bh_reg_3_1[1:0]          ), //i
    .port_Bh_2          (bh_reg_3_2[1:0]          ), //i
    .port_bb_0          (bb_reg_3_0[1:0]          ), //i
    .port_bb_1          (bb_reg_3_1[1:0]          ), //i
    .port_bb_2          (bb_reg_3_2[1:0]          ), //i
    .port_rand_0        (r2_0                     ), //i
    .port_rand_1        (r2_1                     ), //i
    .port_rand_2        (r2_2                     ), //i
    .port_rand_3        (r2_3                     ), //i
    .port_rand_4        (r2_4                     ), //i
    .port_rand_5        (r2_5                     ), //i
    .port_rand_6        (r2_6                     ), //i
    .port_rand_7        (r2_7                     ), //i
    .port_rand_8        (r2_8                     ), //i
    .port_rand_9        (r2_9                     ), //i
    .port_rand_10       (r2_10                    ), //i
    .port_rand_11       (r2_11                    ), //i
    .port_rand_12       (r2_12                    ), //i
    .port_rand_13       (r2_13                    ), //i
    .port_rand_14       (r2_14                    ), //i
    .port_rand_15       (r2_15                    ), //i
    .port_rand_16       (r2_16                    ), //i
    .port_rand_17       (r2_17                    ), //i
    .port_rand_18       (r2_18                    ), //i
    .port_rand_19       (r2_19                    ), //i
    .port_rand_20       (r2_20                    ), //i
    .port_rand_21       (r2_21                    ), //i
    .port_rand_22       (r2_22                    ), //i
    .port_rand_23       (r2_23                    ), //i
    .port_rand_24       (r2_24                    ), //i
    .port_rand_25       (r2_25                    ), //i
    .port_rand_26       (r2_26                    ), //i
    .port_rand_27       (r2_27                    ), //i
    .port_rand_28       (r2_28                    ), //i
    .port_rand_29       (r2_29                    ), //i
    .port_rand_30       (r2_30                    ), //i
    .port_rand_31       (r2_31                    ), //i
    .port_rand_32       (r2_32                    ), //i
    .port_rand_33       (r2_33                    ), //i
    .port_rand_34       (r2_34                    ), //i
    .port_rand_35       (r2_35                    ), //i
    .port_rand_36       (r2_36                    ), //i
    .port_rand_37       (r2_37                    ), //i
    .port_rand_38       (r2_38                    ), //i
    .port_rand_39       (r2_39                    ), //i
    .port_rand_40       (r2_40                    ), //i
    .port_rand_41       (r2_41                    ), //i
    .port_rand_42       (r2_42                    ), //i
    .port_rand_43       (r2_43                    ), //i
    .port_rand_44       (r2_44                    ), //i
    .port_rand_45       (r2_45                    ), //i
    .port_rand_46       (r2_46                    ), //i
    .port_rand_47       (r2_47                    ), //i
    .port_rand_48       (r2_48                    ), //i
    .port_rand_49       (r2_49                    ), //i
    .port_rand_50       (r2_50                    ), //i
    .port_rand_51       (r2_51                    ), //i
    .port_rand_52       (r2_52                    ), //i
    .port_rand_53       (r2_53                    ), //i
    .port_o_0_0         (px_mul_port_o_0_0[1:0]   ), //o
    .port_o_0_1         (px_mul_port_o_0_1[1:0]   ), //o
    .port_o_0_2         (px_mul_port_o_0_2[1:0]   ), //o
    .port_o_0_3         (px_mul_port_o_0_3[1:0]   ), //o
    .port_o_1_0         (px_mul_port_o_1_0[1:0]   ), //o
    .port_o_1_1         (px_mul_port_o_1_1[1:0]   ), //o
    .port_o_1_2         (px_mul_port_o_1_2[1:0]   ), //o
    .port_o_1_3         (px_mul_port_o_1_3[1:0]   ), //o
    .port_o_2_0         (px_mul_port_o_2_0[1:0]   ), //o
    .port_o_2_1         (px_mul_port_o_2_1[1:0]   ), //o
    .port_o_2_2         (px_mul_port_o_2_2[1:0]   ), //o
    .port_o_2_3         (px_mul_port_o_2_3[1:0]   ), //o
    .port_det_flag_0_0  (px_mul_port_det_flag_0_0 ), //o
    .port_det_flag_0_1  (px_mul_port_det_flag_0_1 ), //o
    .port_det_flag_0_2  (px_mul_port_det_flag_0_2 ), //o
    .port_det_flag_0_3  (px_mul_port_det_flag_0_3 ), //o
    .port_det_flag_0_4  (px_mul_port_det_flag_0_4 ), //o
    .port_det_flag_0_5  (px_mul_port_det_flag_0_5 ), //o
    .port_det_flag_0_6  (px_mul_port_det_flag_0_6 ), //o
    .port_det_flag_0_7  (px_mul_port_det_flag_0_7 ), //o
    .port_det_flag_0_8  (px_mul_port_det_flag_0_8 ), //o
    .port_det_flag_0_9  (px_mul_port_det_flag_0_9 ), //o
    .port_det_flag_0_10 (px_mul_port_det_flag_0_10), //o
    .port_det_flag_0_11 (px_mul_port_det_flag_0_11), //o
    .port_det_flag_0_12 (px_mul_port_det_flag_0_12), //o
    .port_det_flag_0_13 (px_mul_port_det_flag_0_13), //o
    .port_det_flag_0_14 (px_mul_port_det_flag_0_14), //o
    .port_det_flag_0_15 (px_mul_port_det_flag_0_15), //o
    .port_det_flag_0_16 (px_mul_port_det_flag_0_16), //o
    .port_det_flag_0_17 (px_mul_port_det_flag_0_17), //o
    .port_det_flag_0_18 (px_mul_port_det_flag_0_18), //o
    .port_det_flag_0_19 (px_mul_port_det_flag_0_19), //o
    .port_det_flag_0_20 (px_mul_port_det_flag_0_20), //o
    .port_det_flag_0_21 (px_mul_port_det_flag_0_21), //o
    .port_det_flag_0_22 (px_mul_port_det_flag_0_22), //o
    .port_det_flag_0_23 (px_mul_port_det_flag_0_23), //o
    .port_det_flag_1_0  (px_mul_port_det_flag_1_0 ), //o
    .port_det_flag_1_1  (px_mul_port_det_flag_1_1 ), //o
    .port_det_flag_1_2  (px_mul_port_det_flag_1_2 ), //o
    .port_det_flag_1_3  (px_mul_port_det_flag_1_3 ), //o
    .port_det_flag_1_4  (px_mul_port_det_flag_1_4 ), //o
    .port_det_flag_1_5  (px_mul_port_det_flag_1_5 ), //o
    .port_det_flag_1_6  (px_mul_port_det_flag_1_6 ), //o
    .port_det_flag_1_7  (px_mul_port_det_flag_1_7 ), //o
    .port_det_flag_1_8  (px_mul_port_det_flag_1_8 ), //o
    .port_det_flag_1_9  (px_mul_port_det_flag_1_9 ), //o
    .port_det_flag_1_10 (px_mul_port_det_flag_1_10), //o
    .port_det_flag_1_11 (px_mul_port_det_flag_1_11), //o
    .port_det_flag_1_12 (px_mul_port_det_flag_1_12), //o
    .port_det_flag_1_13 (px_mul_port_det_flag_1_13), //o
    .port_det_flag_1_14 (px_mul_port_det_flag_1_14), //o
    .port_det_flag_1_15 (px_mul_port_det_flag_1_15), //o
    .port_det_flag_1_16 (px_mul_port_det_flag_1_16), //o
    .port_det_flag_1_17 (px_mul_port_det_flag_1_17), //o
    .port_det_flag_1_18 (px_mul_port_det_flag_1_18), //o
    .port_det_flag_1_19 (px_mul_port_det_flag_1_19), //o
    .port_det_flag_1_20 (px_mul_port_det_flag_1_20), //o
    .port_det_flag_1_21 (px_mul_port_det_flag_1_21), //o
    .port_det_flag_1_22 (px_mul_port_det_flag_1_22), //o
    .port_det_flag_1_23 (px_mul_port_det_flag_1_23), //o
    .port_det_flag_2_0  (px_mul_port_det_flag_2_0 ), //o
    .port_det_flag_2_1  (px_mul_port_det_flag_2_1 ), //o
    .port_det_flag_2_2  (px_mul_port_det_flag_2_2 ), //o
    .port_det_flag_2_3  (px_mul_port_det_flag_2_3 ), //o
    .port_det_flag_2_4  (px_mul_port_det_flag_2_4 ), //o
    .port_det_flag_2_5  (px_mul_port_det_flag_2_5 ), //o
    .port_det_flag_2_6  (px_mul_port_det_flag_2_6 ), //o
    .port_det_flag_2_7  (px_mul_port_det_flag_2_7 ), //o
    .port_det_flag_2_8  (px_mul_port_det_flag_2_8 ), //o
    .port_det_flag_2_9  (px_mul_port_det_flag_2_9 ), //o
    .port_det_flag_2_10 (px_mul_port_det_flag_2_10), //o
    .port_det_flag_2_11 (px_mul_port_det_flag_2_11), //o
    .port_det_flag_2_12 (px_mul_port_det_flag_2_12), //o
    .port_det_flag_2_13 (px_mul_port_det_flag_2_13), //o
    .port_det_flag_2_14 (px_mul_port_det_flag_2_14), //o
    .port_det_flag_2_15 (px_mul_port_det_flag_2_15), //o
    .port_det_flag_2_16 (px_mul_port_det_flag_2_16), //o
    .port_det_flag_2_17 (px_mul_port_det_flag_2_17), //o
    .port_det_flag_2_18 (px_mul_port_det_flag_2_18), //o
    .port_det_flag_2_19 (px_mul_port_det_flag_2_19), //o
    .port_det_flag_2_20 (px_mul_port_det_flag_2_20), //o
    .port_det_flag_2_21 (px_mul_port_det_flag_2_21), //o
    .port_det_flag_2_22 (px_mul_port_det_flag_2_22), //o
    .port_det_flag_2_23 (px_mul_port_det_flag_2_23), //o
    .port_det_flag_3_0  (px_mul_port_det_flag_3_0 ), //o
    .port_det_flag_3_1  (px_mul_port_det_flag_3_1 ), //o
    .port_det_flag_3_2  (px_mul_port_det_flag_3_2 ), //o
    .port_det_flag_3_3  (px_mul_port_det_flag_3_3 ), //o
    .port_det_flag_3_4  (px_mul_port_det_flag_3_4 ), //o
    .port_det_flag_3_5  (px_mul_port_det_flag_3_5 ), //o
    .port_det_flag_3_6  (px_mul_port_det_flag_3_6 ), //o
    .port_det_flag_3_7  (px_mul_port_det_flag_3_7 ), //o
    .port_det_flag_3_8  (px_mul_port_det_flag_3_8 ), //o
    .port_det_flag_3_9  (px_mul_port_det_flag_3_9 ), //o
    .port_det_flag_3_10 (px_mul_port_det_flag_3_10), //o
    .port_det_flag_3_11 (px_mul_port_det_flag_3_11), //o
    .port_det_flag_3_12 (px_mul_port_det_flag_3_12), //o
    .port_det_flag_3_13 (px_mul_port_det_flag_3_13), //o
    .port_det_flag_3_14 (px_mul_port_det_flag_3_14), //o
    .port_det_flag_3_15 (px_mul_port_det_flag_3_15), //o
    .port_det_flag_3_16 (px_mul_port_det_flag_3_16), //o
    .port_det_flag_3_17 (px_mul_port_det_flag_3_17), //o
    .port_det_flag_3_18 (px_mul_port_det_flag_3_18), //o
    .port_det_flag_3_19 (px_mul_port_det_flag_3_19), //o
    .port_det_flag_3_20 (px_mul_port_det_flag_3_20), //o
    .port_det_flag_3_21 (px_mul_port_det_flag_3_21), //o
    .port_det_flag_3_22 (px_mul_port_det_flag_3_22), //o
    .port_det_flag_3_23 (px_mul_port_det_flag_3_23), //o
    .port_det_flag_4_0  (px_mul_port_det_flag_4_0 ), //o
    .port_det_flag_4_1  (px_mul_port_det_flag_4_1 ), //o
    .port_det_flag_4_2  (px_mul_port_det_flag_4_2 ), //o
    .port_det_flag_4_3  (px_mul_port_det_flag_4_3 ), //o
    .port_det_flag_4_4  (px_mul_port_det_flag_4_4 ), //o
    .port_det_flag_4_5  (px_mul_port_det_flag_4_5 ), //o
    .port_det_flag_4_6  (px_mul_port_det_flag_4_6 ), //o
    .port_det_flag_4_7  (px_mul_port_det_flag_4_7 ), //o
    .port_det_flag_4_8  (px_mul_port_det_flag_4_8 ), //o
    .port_det_flag_4_9  (px_mul_port_det_flag_4_9 ), //o
    .port_det_flag_4_10 (px_mul_port_det_flag_4_10), //o
    .port_det_flag_4_11 (px_mul_port_det_flag_4_11), //o
    .port_det_flag_4_12 (px_mul_port_det_flag_4_12), //o
    .port_det_flag_4_13 (px_mul_port_det_flag_4_13), //o
    .port_det_flag_4_14 (px_mul_port_det_flag_4_14), //o
    .port_det_flag_4_15 (px_mul_port_det_flag_4_15), //o
    .port_det_flag_4_16 (px_mul_port_det_flag_4_16), //o
    .port_det_flag_4_17 (px_mul_port_det_flag_4_17), //o
    .port_det_flag_4_18 (px_mul_port_det_flag_4_18), //o
    .port_det_flag_4_19 (px_mul_port_det_flag_4_19), //o
    .port_det_flag_4_20 (px_mul_port_det_flag_4_20), //o
    .port_det_flag_4_21 (px_mul_port_det_flag_4_21), //o
    .port_det_flag_4_22 (px_mul_port_det_flag_4_22), //o
    .port_det_flag_4_23 (px_mul_port_det_flag_4_23), //o
    .port_det_flag_5_0  (px_mul_port_det_flag_5_0 ), //o
    .port_det_flag_5_1  (px_mul_port_det_flag_5_1 ), //o
    .port_det_flag_5_2  (px_mul_port_det_flag_5_2 ), //o
    .port_det_flag_5_3  (px_mul_port_det_flag_5_3 ), //o
    .port_det_flag_5_4  (px_mul_port_det_flag_5_4 ), //o
    .port_det_flag_5_5  (px_mul_port_det_flag_5_5 ), //o
    .port_det_flag_5_6  (px_mul_port_det_flag_5_6 ), //o
    .port_det_flag_5_7  (px_mul_port_det_flag_5_7 ), //o
    .port_det_flag_5_8  (px_mul_port_det_flag_5_8 ), //o
    .port_det_flag_5_9  (px_mul_port_det_flag_5_9 ), //o
    .port_det_flag_5_10 (px_mul_port_det_flag_5_10), //o
    .port_det_flag_5_11 (px_mul_port_det_flag_5_11), //o
    .port_det_flag_5_12 (px_mul_port_det_flag_5_12), //o
    .port_det_flag_5_13 (px_mul_port_det_flag_5_13), //o
    .port_det_flag_5_14 (px_mul_port_det_flag_5_14), //o
    .port_det_flag_5_15 (px_mul_port_det_flag_5_15), //o
    .port_det_flag_5_16 (px_mul_port_det_flag_5_16), //o
    .port_det_flag_5_17 (px_mul_port_det_flag_5_17), //o
    .port_det_flag_5_18 (px_mul_port_det_flag_5_18), //o
    .port_det_flag_5_19 (px_mul_port_det_flag_5_19), //o
    .port_det_flag_5_20 (px_mul_port_det_flag_5_20), //o
    .port_det_flag_5_21 (px_mul_port_det_flag_5_21), //o
    .port_det_flag_5_22 (px_mul_port_det_flag_5_22), //o
    .port_det_flag_5_23 (px_mul_port_det_flag_5_23), //o
    .clk                (clk                      ), //i
    .reset              (reset                    )  //i
  );
  Shared_GF_MULS_4 qx_mul (
    .port_A_0_0         (dx_0_0[1:0]              ), //i
    .port_A_0_1         (dx_0_1[1:0]              ), //i
    .port_A_0_2         (dx_0_2[1:0]              ), //i
    .port_A_0_3         (dx_0_3[1:0]              ), //i
    .port_A_1_0         (dx_1_0[1:0]              ), //i
    .port_A_1_1         (dx_1_1[1:0]              ), //i
    .port_A_1_2         (dx_1_2[1:0]              ), //i
    .port_A_1_3         (dx_1_3[1:0]              ), //i
    .port_A_2_0         (dx_2_0[1:0]              ), //i
    .port_A_2_1         (dx_2_1[1:0]              ), //i
    .port_A_2_2         (dx_2_2[1:0]              ), //i
    .port_A_2_3         (dx_2_3[1:0]              ), //i
    .port_a_0_0_1       (sdx_0_0[1:0]             ), //i
    .port_a_0_1_1       (sdx_0_1[1:0]             ), //i
    .port_a_1_0_1       (sdx_1_0[1:0]             ), //i
    .port_a_1_1_1       (sdx_1_1[1:0]             ), //i
    .port_a_2_0_1       (sdx_2_0[1:0]             ), //i
    .port_a_2_1_1       (sdx_2_1[1:0]             ), //i
    .port_Al_0          (dl_0[1:0]                ), //i
    .port_Al_1          (dl_1[1:0]                ), //i
    .port_Al_2          (dl_2[1:0]                ), //i
    .port_Ah_0          (dh_0[1:0]                ), //i
    .port_Ah_1          (dh_1[1:0]                ), //i
    .port_Ah_2          (dh_2[1:0]                ), //i
    .port_aa_0          (dd_0[1:0]                ), //i
    .port_aa_1          (dd_1[1:0]                ), //i
    .port_aa_2          (dd_2[1:0]                ), //i
    .port_B_0_0         (ax_reg_3_0_0[1:0]        ), //i
    .port_B_0_1         (ax_reg_3_0_1[1:0]        ), //i
    .port_B_0_2         (ax_reg_3_0_2[1:0]        ), //i
    .port_B_0_3         (ax_reg_3_0_3[1:0]        ), //i
    .port_B_1_0         (ax_reg_3_1_0[1:0]        ), //i
    .port_B_1_1         (ax_reg_3_1_1[1:0]        ), //i
    .port_B_1_2         (ax_reg_3_1_2[1:0]        ), //i
    .port_B_1_3         (ax_reg_3_1_3[1:0]        ), //i
    .port_B_2_0         (ax_reg_3_2_0[1:0]        ), //i
    .port_B_2_1         (ax_reg_3_2_1[1:0]        ), //i
    .port_B_2_2         (ax_reg_3_2_2[1:0]        ), //i
    .port_B_2_3         (ax_reg_3_2_3[1:0]        ), //i
    .port_b_0_0_1       (sax_reg_3_0_0[1:0]       ), //i
    .port_b_0_1_1       (sax_reg_3_0_1[1:0]       ), //i
    .port_b_1_0_1       (sax_reg_3_1_0[1:0]       ), //i
    .port_b_1_1_1       (sax_reg_3_1_1[1:0]       ), //i
    .port_b_2_0_1       (sax_reg_3_2_0[1:0]       ), //i
    .port_b_2_1_1       (sax_reg_3_2_1[1:0]       ), //i
    .port_Bl_0          (al_reg_3_0[1:0]          ), //i
    .port_Bl_1          (al_reg_3_1[1:0]          ), //i
    .port_Bl_2          (al_reg_3_2[1:0]          ), //i
    .port_Bh_0          (ah_reg_3_0[1:0]          ), //i
    .port_Bh_1          (ah_reg_3_1[1:0]          ), //i
    .port_Bh_2          (ah_reg_3_2[1:0]          ), //i
    .port_bb_0          (aa_reg_3_0[1:0]          ), //i
    .port_bb_1          (aa_reg_3_1[1:0]          ), //i
    .port_bb_2          (aa_reg_3_2[1:0]          ), //i
    .port_rand_0        (r3_0                     ), //i
    .port_rand_1        (r3_1                     ), //i
    .port_rand_2        (r3_2                     ), //i
    .port_rand_3        (r3_3                     ), //i
    .port_rand_4        (r3_4                     ), //i
    .port_rand_5        (r3_5                     ), //i
    .port_rand_6        (r3_6                     ), //i
    .port_rand_7        (r3_7                     ), //i
    .port_rand_8        (r3_8                     ), //i
    .port_rand_9        (r3_9                     ), //i
    .port_rand_10       (r3_10                    ), //i
    .port_rand_11       (r3_11                    ), //i
    .port_rand_12       (r3_12                    ), //i
    .port_rand_13       (r3_13                    ), //i
    .port_rand_14       (r3_14                    ), //i
    .port_rand_15       (r3_15                    ), //i
    .port_rand_16       (r3_16                    ), //i
    .port_rand_17       (r3_17                    ), //i
    .port_rand_18       (r3_18                    ), //i
    .port_rand_19       (r3_19                    ), //i
    .port_rand_20       (r3_20                    ), //i
    .port_rand_21       (r3_21                    ), //i
    .port_rand_22       (r3_22                    ), //i
    .port_rand_23       (r3_23                    ), //i
    .port_rand_24       (r3_24                    ), //i
    .port_rand_25       (r3_25                    ), //i
    .port_rand_26       (r3_26                    ), //i
    .port_rand_27       (r3_27                    ), //i
    .port_rand_28       (r3_28                    ), //i
    .port_rand_29       (r3_29                    ), //i
    .port_rand_30       (r3_30                    ), //i
    .port_rand_31       (r3_31                    ), //i
    .port_rand_32       (r3_32                    ), //i
    .port_rand_33       (r3_33                    ), //i
    .port_rand_34       (r3_34                    ), //i
    .port_rand_35       (r3_35                    ), //i
    .port_rand_36       (r3_36                    ), //i
    .port_rand_37       (r3_37                    ), //i
    .port_rand_38       (r3_38                    ), //i
    .port_rand_39       (r3_39                    ), //i
    .port_rand_40       (r3_40                    ), //i
    .port_rand_41       (r3_41                    ), //i
    .port_rand_42       (r3_42                    ), //i
    .port_rand_43       (r3_43                    ), //i
    .port_rand_44       (r3_44                    ), //i
    .port_rand_45       (r3_45                    ), //i
    .port_rand_46       (r3_46                    ), //i
    .port_rand_47       (r3_47                    ), //i
    .port_rand_48       (r3_48                    ), //i
    .port_rand_49       (r3_49                    ), //i
    .port_rand_50       (r3_50                    ), //i
    .port_rand_51       (r3_51                    ), //i
    .port_rand_52       (r3_52                    ), //i
    .port_rand_53       (r3_53                    ), //i
    .port_o_0_0         (qx_mul_port_o_0_0[1:0]   ), //o
    .port_o_0_1         (qx_mul_port_o_0_1[1:0]   ), //o
    .port_o_0_2         (qx_mul_port_o_0_2[1:0]   ), //o
    .port_o_0_3         (qx_mul_port_o_0_3[1:0]   ), //o
    .port_o_1_0         (qx_mul_port_o_1_0[1:0]   ), //o
    .port_o_1_1         (qx_mul_port_o_1_1[1:0]   ), //o
    .port_o_1_2         (qx_mul_port_o_1_2[1:0]   ), //o
    .port_o_1_3         (qx_mul_port_o_1_3[1:0]   ), //o
    .port_o_2_0         (qx_mul_port_o_2_0[1:0]   ), //o
    .port_o_2_1         (qx_mul_port_o_2_1[1:0]   ), //o
    .port_o_2_2         (qx_mul_port_o_2_2[1:0]   ), //o
    .port_o_2_3         (qx_mul_port_o_2_3[1:0]   ), //o
    .port_det_flag_0_0  (qx_mul_port_det_flag_0_0 ), //o
    .port_det_flag_0_1  (qx_mul_port_det_flag_0_1 ), //o
    .port_det_flag_0_2  (qx_mul_port_det_flag_0_2 ), //o
    .port_det_flag_0_3  (qx_mul_port_det_flag_0_3 ), //o
    .port_det_flag_0_4  (qx_mul_port_det_flag_0_4 ), //o
    .port_det_flag_0_5  (qx_mul_port_det_flag_0_5 ), //o
    .port_det_flag_0_6  (qx_mul_port_det_flag_0_6 ), //o
    .port_det_flag_0_7  (qx_mul_port_det_flag_0_7 ), //o
    .port_det_flag_0_8  (qx_mul_port_det_flag_0_8 ), //o
    .port_det_flag_0_9  (qx_mul_port_det_flag_0_9 ), //o
    .port_det_flag_0_10 (qx_mul_port_det_flag_0_10), //o
    .port_det_flag_0_11 (qx_mul_port_det_flag_0_11), //o
    .port_det_flag_0_12 (qx_mul_port_det_flag_0_12), //o
    .port_det_flag_0_13 (qx_mul_port_det_flag_0_13), //o
    .port_det_flag_0_14 (qx_mul_port_det_flag_0_14), //o
    .port_det_flag_0_15 (qx_mul_port_det_flag_0_15), //o
    .port_det_flag_0_16 (qx_mul_port_det_flag_0_16), //o
    .port_det_flag_0_17 (qx_mul_port_det_flag_0_17), //o
    .port_det_flag_0_18 (qx_mul_port_det_flag_0_18), //o
    .port_det_flag_0_19 (qx_mul_port_det_flag_0_19), //o
    .port_det_flag_0_20 (qx_mul_port_det_flag_0_20), //o
    .port_det_flag_0_21 (qx_mul_port_det_flag_0_21), //o
    .port_det_flag_0_22 (qx_mul_port_det_flag_0_22), //o
    .port_det_flag_0_23 (qx_mul_port_det_flag_0_23), //o
    .port_det_flag_1_0  (qx_mul_port_det_flag_1_0 ), //o
    .port_det_flag_1_1  (qx_mul_port_det_flag_1_1 ), //o
    .port_det_flag_1_2  (qx_mul_port_det_flag_1_2 ), //o
    .port_det_flag_1_3  (qx_mul_port_det_flag_1_3 ), //o
    .port_det_flag_1_4  (qx_mul_port_det_flag_1_4 ), //o
    .port_det_flag_1_5  (qx_mul_port_det_flag_1_5 ), //o
    .port_det_flag_1_6  (qx_mul_port_det_flag_1_6 ), //o
    .port_det_flag_1_7  (qx_mul_port_det_flag_1_7 ), //o
    .port_det_flag_1_8  (qx_mul_port_det_flag_1_8 ), //o
    .port_det_flag_1_9  (qx_mul_port_det_flag_1_9 ), //o
    .port_det_flag_1_10 (qx_mul_port_det_flag_1_10), //o
    .port_det_flag_1_11 (qx_mul_port_det_flag_1_11), //o
    .port_det_flag_1_12 (qx_mul_port_det_flag_1_12), //o
    .port_det_flag_1_13 (qx_mul_port_det_flag_1_13), //o
    .port_det_flag_1_14 (qx_mul_port_det_flag_1_14), //o
    .port_det_flag_1_15 (qx_mul_port_det_flag_1_15), //o
    .port_det_flag_1_16 (qx_mul_port_det_flag_1_16), //o
    .port_det_flag_1_17 (qx_mul_port_det_flag_1_17), //o
    .port_det_flag_1_18 (qx_mul_port_det_flag_1_18), //o
    .port_det_flag_1_19 (qx_mul_port_det_flag_1_19), //o
    .port_det_flag_1_20 (qx_mul_port_det_flag_1_20), //o
    .port_det_flag_1_21 (qx_mul_port_det_flag_1_21), //o
    .port_det_flag_1_22 (qx_mul_port_det_flag_1_22), //o
    .port_det_flag_1_23 (qx_mul_port_det_flag_1_23), //o
    .port_det_flag_2_0  (qx_mul_port_det_flag_2_0 ), //o
    .port_det_flag_2_1  (qx_mul_port_det_flag_2_1 ), //o
    .port_det_flag_2_2  (qx_mul_port_det_flag_2_2 ), //o
    .port_det_flag_2_3  (qx_mul_port_det_flag_2_3 ), //o
    .port_det_flag_2_4  (qx_mul_port_det_flag_2_4 ), //o
    .port_det_flag_2_5  (qx_mul_port_det_flag_2_5 ), //o
    .port_det_flag_2_6  (qx_mul_port_det_flag_2_6 ), //o
    .port_det_flag_2_7  (qx_mul_port_det_flag_2_7 ), //o
    .port_det_flag_2_8  (qx_mul_port_det_flag_2_8 ), //o
    .port_det_flag_2_9  (qx_mul_port_det_flag_2_9 ), //o
    .port_det_flag_2_10 (qx_mul_port_det_flag_2_10), //o
    .port_det_flag_2_11 (qx_mul_port_det_flag_2_11), //o
    .port_det_flag_2_12 (qx_mul_port_det_flag_2_12), //o
    .port_det_flag_2_13 (qx_mul_port_det_flag_2_13), //o
    .port_det_flag_2_14 (qx_mul_port_det_flag_2_14), //o
    .port_det_flag_2_15 (qx_mul_port_det_flag_2_15), //o
    .port_det_flag_2_16 (qx_mul_port_det_flag_2_16), //o
    .port_det_flag_2_17 (qx_mul_port_det_flag_2_17), //o
    .port_det_flag_2_18 (qx_mul_port_det_flag_2_18), //o
    .port_det_flag_2_19 (qx_mul_port_det_flag_2_19), //o
    .port_det_flag_2_20 (qx_mul_port_det_flag_2_20), //o
    .port_det_flag_2_21 (qx_mul_port_det_flag_2_21), //o
    .port_det_flag_2_22 (qx_mul_port_det_flag_2_22), //o
    .port_det_flag_2_23 (qx_mul_port_det_flag_2_23), //o
    .port_det_flag_3_0  (qx_mul_port_det_flag_3_0 ), //o
    .port_det_flag_3_1  (qx_mul_port_det_flag_3_1 ), //o
    .port_det_flag_3_2  (qx_mul_port_det_flag_3_2 ), //o
    .port_det_flag_3_3  (qx_mul_port_det_flag_3_3 ), //o
    .port_det_flag_3_4  (qx_mul_port_det_flag_3_4 ), //o
    .port_det_flag_3_5  (qx_mul_port_det_flag_3_5 ), //o
    .port_det_flag_3_6  (qx_mul_port_det_flag_3_6 ), //o
    .port_det_flag_3_7  (qx_mul_port_det_flag_3_7 ), //o
    .port_det_flag_3_8  (qx_mul_port_det_flag_3_8 ), //o
    .port_det_flag_3_9  (qx_mul_port_det_flag_3_9 ), //o
    .port_det_flag_3_10 (qx_mul_port_det_flag_3_10), //o
    .port_det_flag_3_11 (qx_mul_port_det_flag_3_11), //o
    .port_det_flag_3_12 (qx_mul_port_det_flag_3_12), //o
    .port_det_flag_3_13 (qx_mul_port_det_flag_3_13), //o
    .port_det_flag_3_14 (qx_mul_port_det_flag_3_14), //o
    .port_det_flag_3_15 (qx_mul_port_det_flag_3_15), //o
    .port_det_flag_3_16 (qx_mul_port_det_flag_3_16), //o
    .port_det_flag_3_17 (qx_mul_port_det_flag_3_17), //o
    .port_det_flag_3_18 (qx_mul_port_det_flag_3_18), //o
    .port_det_flag_3_19 (qx_mul_port_det_flag_3_19), //o
    .port_det_flag_3_20 (qx_mul_port_det_flag_3_20), //o
    .port_det_flag_3_21 (qx_mul_port_det_flag_3_21), //o
    .port_det_flag_3_22 (qx_mul_port_det_flag_3_22), //o
    .port_det_flag_3_23 (qx_mul_port_det_flag_3_23), //o
    .port_det_flag_4_0  (qx_mul_port_det_flag_4_0 ), //o
    .port_det_flag_4_1  (qx_mul_port_det_flag_4_1 ), //o
    .port_det_flag_4_2  (qx_mul_port_det_flag_4_2 ), //o
    .port_det_flag_4_3  (qx_mul_port_det_flag_4_3 ), //o
    .port_det_flag_4_4  (qx_mul_port_det_flag_4_4 ), //o
    .port_det_flag_4_5  (qx_mul_port_det_flag_4_5 ), //o
    .port_det_flag_4_6  (qx_mul_port_det_flag_4_6 ), //o
    .port_det_flag_4_7  (qx_mul_port_det_flag_4_7 ), //o
    .port_det_flag_4_8  (qx_mul_port_det_flag_4_8 ), //o
    .port_det_flag_4_9  (qx_mul_port_det_flag_4_9 ), //o
    .port_det_flag_4_10 (qx_mul_port_det_flag_4_10), //o
    .port_det_flag_4_11 (qx_mul_port_det_flag_4_11), //o
    .port_det_flag_4_12 (qx_mul_port_det_flag_4_12), //o
    .port_det_flag_4_13 (qx_mul_port_det_flag_4_13), //o
    .port_det_flag_4_14 (qx_mul_port_det_flag_4_14), //o
    .port_det_flag_4_15 (qx_mul_port_det_flag_4_15), //o
    .port_det_flag_4_16 (qx_mul_port_det_flag_4_16), //o
    .port_det_flag_4_17 (qx_mul_port_det_flag_4_17), //o
    .port_det_flag_4_18 (qx_mul_port_det_flag_4_18), //o
    .port_det_flag_4_19 (qx_mul_port_det_flag_4_19), //o
    .port_det_flag_4_20 (qx_mul_port_det_flag_4_20), //o
    .port_det_flag_4_21 (qx_mul_port_det_flag_4_21), //o
    .port_det_flag_4_22 (qx_mul_port_det_flag_4_22), //o
    .port_det_flag_4_23 (qx_mul_port_det_flag_4_23), //o
    .port_det_flag_5_0  (qx_mul_port_det_flag_5_0 ), //o
    .port_det_flag_5_1  (qx_mul_port_det_flag_5_1 ), //o
    .port_det_flag_5_2  (qx_mul_port_det_flag_5_2 ), //o
    .port_det_flag_5_3  (qx_mul_port_det_flag_5_3 ), //o
    .port_det_flag_5_4  (qx_mul_port_det_flag_5_4 ), //o
    .port_det_flag_5_5  (qx_mul_port_det_flag_5_5 ), //o
    .port_det_flag_5_6  (qx_mul_port_det_flag_5_6 ), //o
    .port_det_flag_5_7  (qx_mul_port_det_flag_5_7 ), //o
    .port_det_flag_5_8  (qx_mul_port_det_flag_5_8 ), //o
    .port_det_flag_5_9  (qx_mul_port_det_flag_5_9 ), //o
    .port_det_flag_5_10 (qx_mul_port_det_flag_5_10), //o
    .port_det_flag_5_11 (qx_mul_port_det_flag_5_11), //o
    .port_det_flag_5_12 (qx_mul_port_det_flag_5_12), //o
    .port_det_flag_5_13 (qx_mul_port_det_flag_5_13), //o
    .port_det_flag_5_14 (qx_mul_port_det_flag_5_14), //o
    .port_det_flag_5_15 (qx_mul_port_det_flag_5_15), //o
    .port_det_flag_5_16 (qx_mul_port_det_flag_5_16), //o
    .port_det_flag_5_17 (qx_mul_port_det_flag_5_17), //o
    .port_det_flag_5_18 (qx_mul_port_det_flag_5_18), //o
    .port_det_flag_5_19 (qx_mul_port_det_flag_5_19), //o
    .port_det_flag_5_20 (qx_mul_port_det_flag_5_20), //o
    .port_det_flag_5_21 (qx_mul_port_det_flag_5_21), //o
    .port_det_flag_5_22 (qx_mul_port_det_flag_5_22), //o
    .port_det_flag_5_23 (qx_mul_port_det_flag_5_23), //o
    .clk                (clk                      ), //i
    .reset              (reset                    )  //i
  );
  assign r0_0 = port_rand_0;
  assign r1_0 = port_rand_54;
  assign r2_0 = port_rand_108;
  assign r3_0 = port_rand_162;
  assign r0_1 = port_rand_1;
  assign r1_1 = port_rand_55;
  assign r2_1 = port_rand_109;
  assign r3_1 = port_rand_163;
  assign r0_2 = port_rand_2;
  assign r1_2 = port_rand_56;
  assign r2_2 = port_rand_110;
  assign r3_2 = port_rand_164;
  assign r0_3 = port_rand_3;
  assign r1_3 = port_rand_57;
  assign r2_3 = port_rand_111;
  assign r3_3 = port_rand_165;
  assign r0_4 = port_rand_4;
  assign r1_4 = port_rand_58;
  assign r2_4 = port_rand_112;
  assign r3_4 = port_rand_166;
  assign r0_5 = port_rand_5;
  assign r1_5 = port_rand_59;
  assign r2_5 = port_rand_113;
  assign r3_5 = port_rand_167;
  assign r0_6 = port_rand_6;
  assign r1_6 = port_rand_60;
  assign r2_6 = port_rand_114;
  assign r3_6 = port_rand_168;
  assign r0_7 = port_rand_7;
  assign r1_7 = port_rand_61;
  assign r2_7 = port_rand_115;
  assign r3_7 = port_rand_169;
  assign r0_8 = port_rand_8;
  assign r1_8 = port_rand_62;
  assign r2_8 = port_rand_116;
  assign r3_8 = port_rand_170;
  assign r0_9 = port_rand_9;
  assign r1_9 = port_rand_63;
  assign r2_9 = port_rand_117;
  assign r3_9 = port_rand_171;
  assign r0_10 = port_rand_10;
  assign r1_10 = port_rand_64;
  assign r2_10 = port_rand_118;
  assign r3_10 = port_rand_172;
  assign r0_11 = port_rand_11;
  assign r1_11 = port_rand_65;
  assign r2_11 = port_rand_119;
  assign r3_11 = port_rand_173;
  assign r0_12 = port_rand_12;
  assign r1_12 = port_rand_66;
  assign r2_12 = port_rand_120;
  assign r3_12 = port_rand_174;
  assign r0_13 = port_rand_13;
  assign r1_13 = port_rand_67;
  assign r2_13 = port_rand_121;
  assign r3_13 = port_rand_175;
  assign r0_14 = port_rand_14;
  assign r1_14 = port_rand_68;
  assign r2_14 = port_rand_122;
  assign r3_14 = port_rand_176;
  assign r0_15 = port_rand_15;
  assign r1_15 = port_rand_69;
  assign r2_15 = port_rand_123;
  assign r3_15 = port_rand_177;
  assign r0_16 = port_rand_16;
  assign r1_16 = port_rand_70;
  assign r2_16 = port_rand_124;
  assign r3_16 = port_rand_178;
  assign r0_17 = port_rand_17;
  assign r1_17 = port_rand_71;
  assign r2_17 = port_rand_125;
  assign r3_17 = port_rand_179;
  assign r0_18 = port_rand_18;
  assign r1_18 = port_rand_72;
  assign r2_18 = port_rand_126;
  assign r3_18 = port_rand_180;
  assign r0_19 = port_rand_19;
  assign r1_19 = port_rand_73;
  assign r2_19 = port_rand_127;
  assign r3_19 = port_rand_181;
  assign r0_20 = port_rand_20;
  assign r1_20 = port_rand_74;
  assign r2_20 = port_rand_128;
  assign r3_20 = port_rand_182;
  assign r0_21 = port_rand_21;
  assign r1_21 = port_rand_75;
  assign r2_21 = port_rand_129;
  assign r3_21 = port_rand_183;
  assign r0_22 = port_rand_22;
  assign r1_22 = port_rand_76;
  assign r2_22 = port_rand_130;
  assign r3_22 = port_rand_184;
  assign r0_23 = port_rand_23;
  assign r1_23 = port_rand_77;
  assign r2_23 = port_rand_131;
  assign r3_23 = port_rand_185;
  assign r0_24 = port_rand_24;
  assign r1_24 = port_rand_78;
  assign r2_24 = port_rand_132;
  assign r3_24 = port_rand_186;
  assign r0_25 = port_rand_25;
  assign r1_25 = port_rand_79;
  assign r2_25 = port_rand_133;
  assign r3_25 = port_rand_187;
  assign r0_26 = port_rand_26;
  assign r1_26 = port_rand_80;
  assign r2_26 = port_rand_134;
  assign r3_26 = port_rand_188;
  assign r0_27 = port_rand_27;
  assign r1_27 = port_rand_81;
  assign r2_27 = port_rand_135;
  assign r3_27 = port_rand_189;
  assign r0_28 = port_rand_28;
  assign r1_28 = port_rand_82;
  assign r2_28 = port_rand_136;
  assign r3_28 = port_rand_190;
  assign r0_29 = port_rand_29;
  assign r1_29 = port_rand_83;
  assign r2_29 = port_rand_137;
  assign r3_29 = port_rand_191;
  assign r0_30 = port_rand_30;
  assign r1_30 = port_rand_84;
  assign r2_30 = port_rand_138;
  assign r3_30 = port_rand_192;
  assign r0_31 = port_rand_31;
  assign r1_31 = port_rand_85;
  assign r2_31 = port_rand_139;
  assign r3_31 = port_rand_193;
  assign r0_32 = port_rand_32;
  assign r1_32 = port_rand_86;
  assign r2_32 = port_rand_140;
  assign r3_32 = port_rand_194;
  assign r0_33 = port_rand_33;
  assign r1_33 = port_rand_87;
  assign r2_33 = port_rand_141;
  assign r3_33 = port_rand_195;
  assign r0_34 = port_rand_34;
  assign r1_34 = port_rand_88;
  assign r2_34 = port_rand_142;
  assign r3_34 = port_rand_196;
  assign r0_35 = port_rand_35;
  assign r1_35 = port_rand_89;
  assign r2_35 = port_rand_143;
  assign r3_35 = port_rand_197;
  assign r0_36 = port_rand_36;
  assign r1_36 = port_rand_90;
  assign r2_36 = port_rand_144;
  assign r3_36 = port_rand_198;
  assign r0_37 = port_rand_37;
  assign r1_37 = port_rand_91;
  assign r2_37 = port_rand_145;
  assign r3_37 = port_rand_199;
  assign r0_38 = port_rand_38;
  assign r1_38 = port_rand_92;
  assign r2_38 = port_rand_146;
  assign r3_38 = port_rand_200;
  assign r0_39 = port_rand_39;
  assign r1_39 = port_rand_93;
  assign r2_39 = port_rand_147;
  assign r3_39 = port_rand_201;
  assign r0_40 = port_rand_40;
  assign r1_40 = port_rand_94;
  assign r2_40 = port_rand_148;
  assign r3_40 = port_rand_202;
  assign r0_41 = port_rand_41;
  assign r1_41 = port_rand_95;
  assign r2_41 = port_rand_149;
  assign r3_41 = port_rand_203;
  assign r0_42 = port_rand_42;
  assign r1_42 = port_rand_96;
  assign r2_42 = port_rand_150;
  assign r3_42 = port_rand_204;
  assign r0_43 = port_rand_43;
  assign r1_43 = port_rand_97;
  assign r2_43 = port_rand_151;
  assign r3_43 = port_rand_205;
  assign r0_44 = port_rand_44;
  assign r1_44 = port_rand_98;
  assign r2_44 = port_rand_152;
  assign r3_44 = port_rand_206;
  assign r0_45 = port_rand_45;
  assign r1_45 = port_rand_99;
  assign r2_45 = port_rand_153;
  assign r3_45 = port_rand_207;
  assign r0_46 = port_rand_46;
  assign r1_46 = port_rand_100;
  assign r2_46 = port_rand_154;
  assign r3_46 = port_rand_208;
  assign r0_47 = port_rand_47;
  assign r1_47 = port_rand_101;
  assign r2_47 = port_rand_155;
  assign r3_47 = port_rand_209;
  assign r0_48 = port_rand_48;
  assign r1_48 = port_rand_102;
  assign r2_48 = port_rand_156;
  assign r3_48 = port_rand_210;
  assign r0_49 = port_rand_49;
  assign r1_49 = port_rand_103;
  assign r2_49 = port_rand_157;
  assign r3_49 = port_rand_211;
  assign r0_50 = port_rand_50;
  assign r1_50 = port_rand_104;
  assign r2_50 = port_rand_158;
  assign r3_50 = port_rand_212;
  assign r0_51 = port_rand_51;
  assign r1_51 = port_rand_105;
  assign r2_51 = port_rand_159;
  assign r3_51 = port_rand_213;
  assign r0_52 = port_rand_52;
  assign r1_52 = port_rand_106;
  assign r2_52 = port_rand_160;
  assign r3_52 = port_rand_214;
  assign r0_53 = port_rand_53;
  assign r1_53 = port_rand_107;
  assign r2_53 = port_rand_161;
  assign r3_53 = port_rand_215;
  assign ax_0_0 = port_i_0_4;
  assign ax_0_1 = port_i_0_5;
  assign ax_0_2 = port_i_0_6;
  assign ax_0_3 = port_i_0_7;
  assign bx_0_0 = port_i_0_0;
  assign bx_0_1 = port_i_0_1;
  assign bx_0_2 = port_i_0_2;
  assign bx_0_3 = port_i_0_3;
  assign sax_0_0 = (ax_0_2 ^ ax_0_0);
  assign sax_0_1 = (ax_0_3 ^ ax_0_1);
  assign sbx_0_0 = (bx_0_2 ^ bx_0_0);
  assign sbx_0_1 = (bx_0_3 ^ bx_0_1);
  assign al_0 = (ax_0_1 ^ ax_0_0);
  assign ah_0 = (ax_0_3 ^ ax_0_2);
  assign aa_0 = (sax_0_1 ^ sax_0_0);
  assign bl_0 = (bx_0_1 ^ bx_0_0);
  assign bh_0 = (bx_0_3 ^ bx_0_2);
  assign bb_0 = (sbx_0_1 ^ sbx_0_0);
  assign ax_1_0 = port_i_1_4;
  assign ax_1_1 = port_i_1_5;
  assign ax_1_2 = port_i_1_6;
  assign ax_1_3 = port_i_1_7;
  assign bx_1_0 = port_i_1_0;
  assign bx_1_1 = port_i_1_1;
  assign bx_1_2 = port_i_1_2;
  assign bx_1_3 = port_i_1_3;
  assign sax_1_0 = (ax_1_2 ^ ax_1_0);
  assign sax_1_1 = (ax_1_3 ^ ax_1_1);
  assign sbx_1_0 = (bx_1_2 ^ bx_1_0);
  assign sbx_1_1 = (bx_1_3 ^ bx_1_1);
  assign al_1 = (ax_1_1 ^ ax_1_0);
  assign ah_1 = (ax_1_3 ^ ax_1_2);
  assign aa_1 = (sax_1_1 ^ sax_1_0);
  assign bl_1 = (bx_1_1 ^ bx_1_0);
  assign bh_1 = (bx_1_3 ^ bx_1_2);
  assign bb_1 = (sbx_1_1 ^ sbx_1_0);
  assign ax_2_0 = port_i_2_4;
  assign ax_2_1 = port_i_2_5;
  assign ax_2_2 = port_i_2_6;
  assign ax_2_3 = port_i_2_7;
  assign bx_2_0 = port_i_2_0;
  assign bx_2_1 = port_i_2_1;
  assign bx_2_2 = port_i_2_2;
  assign bx_2_3 = port_i_2_3;
  assign sax_2_0 = (ax_2_2 ^ ax_2_0);
  assign sax_2_1 = (ax_2_3 ^ ax_2_1);
  assign sbx_2_0 = (bx_2_2 ^ bx_2_0);
  assign sbx_2_1 = (bx_2_3 ^ bx_2_1);
  assign al_2 = (ax_2_1 ^ ax_2_0);
  assign ah_2 = (ax_2_3 ^ ax_2_2);
  assign aa_2 = (sax_2_1 ^ sax_2_0);
  assign bl_2 = (bx_2_1 ^ bx_2_0);
  assign bh_2 = (bx_2_3 ^ bx_2_2);
  assign bb_2 = (sbx_2_1 ^ sbx_2_0);
  assign sq_in_0_0 = (ax_0_0 ^ bx_0_0);
  assign sq_in_0_1 = (ax_0_1 ^ bx_0_1);
  assign sq_in_0_2 = (ax_0_2 ^ bx_0_2);
  assign sq_in_0_3 = (ax_0_3 ^ bx_0_3);
  assign sq_in_1_0 = (ax_1_0 ^ bx_1_0);
  assign sq_in_1_1 = (ax_1_1 ^ bx_1_1);
  assign sq_in_1_2 = (ax_1_2 ^ bx_1_2);
  assign sq_in_1_3 = (ax_1_3 ^ bx_1_3);
  assign sq_in_2_0 = (ax_2_0 ^ bx_2_0);
  assign sq_in_2_1 = (ax_2_1 ^ bx_2_1);
  assign sq_in_2_2 = (ax_2_2 ^ bx_2_2);
  assign sq_in_2_3 = (ax_2_3 ^ bx_2_3);
  assign cx_0_0 = (mul4_port_o_0_0 ^ sq_port_o_0_0);
  assign cx_0_1 = (mul4_port_o_0_1 ^ sq_port_o_0_1);
  assign cx_0_2 = (mul4_port_o_0_2 ^ sq_port_o_0_2);
  assign cx_0_3 = (mul4_port_o_0_3 ^ sq_port_o_0_3);
  assign cx_1_0 = (mul4_port_o_1_0 ^ sq_port_o_1_0);
  assign cx_1_1 = (mul4_port_o_1_1 ^ sq_port_o_1_1);
  assign cx_1_2 = (mul4_port_o_1_2 ^ sq_port_o_1_2);
  assign cx_1_3 = (mul4_port_o_1_3 ^ sq_port_o_1_3);
  assign cx_2_0 = (mul4_port_o_2_0 ^ sq_port_o_2_0);
  assign cx_2_1 = (mul4_port_o_2_1 ^ sq_port_o_2_1);
  assign cx_2_2 = (mul4_port_o_2_2 ^ sq_port_o_2_2);
  assign cx_2_3 = (mul4_port_o_2_3 ^ sq_port_o_2_3);
  assign port_det_flag_0_0 = mul4_port_det_flag_0_0;
  assign port_det_flag_0_1 = mul4_port_det_flag_0_1;
  assign port_det_flag_0_2 = mul4_port_det_flag_0_2;
  assign port_det_flag_0_3 = mul4_port_det_flag_0_3;
  assign port_det_flag_0_4 = mul4_port_det_flag_0_4;
  assign port_det_flag_0_5 = mul4_port_det_flag_0_5;
  assign port_det_flag_0_6 = mul4_port_det_flag_0_6;
  assign port_det_flag_0_7 = mul4_port_det_flag_0_7;
  assign port_det_flag_0_8 = mul4_port_det_flag_0_8;
  assign port_det_flag_0_9 = mul4_port_det_flag_0_9;
  assign port_det_flag_0_10 = mul4_port_det_flag_0_10;
  assign port_det_flag_0_11 = mul4_port_det_flag_0_11;
  assign port_det_flag_0_12 = mul4_port_det_flag_0_12;
  assign port_det_flag_0_13 = mul4_port_det_flag_0_13;
  assign port_det_flag_0_14 = mul4_port_det_flag_0_14;
  assign port_det_flag_0_15 = mul4_port_det_flag_0_15;
  assign port_det_flag_0_16 = mul4_port_det_flag_0_16;
  assign port_det_flag_0_17 = mul4_port_det_flag_0_17;
  assign port_det_flag_0_18 = mul4_port_det_flag_0_18;
  assign port_det_flag_0_19 = mul4_port_det_flag_0_19;
  assign port_det_flag_0_20 = mul4_port_det_flag_0_20;
  assign port_det_flag_0_21 = mul4_port_det_flag_0_21;
  assign port_det_flag_0_22 = mul4_port_det_flag_0_22;
  assign port_det_flag_0_23 = mul4_port_det_flag_0_23;
  assign port_det_flag_1_0 = mul4_port_det_flag_1_0;
  assign port_det_flag_1_1 = mul4_port_det_flag_1_1;
  assign port_det_flag_1_2 = mul4_port_det_flag_1_2;
  assign port_det_flag_1_3 = mul4_port_det_flag_1_3;
  assign port_det_flag_1_4 = mul4_port_det_flag_1_4;
  assign port_det_flag_1_5 = mul4_port_det_flag_1_5;
  assign port_det_flag_1_6 = mul4_port_det_flag_1_6;
  assign port_det_flag_1_7 = mul4_port_det_flag_1_7;
  assign port_det_flag_1_8 = mul4_port_det_flag_1_8;
  assign port_det_flag_1_9 = mul4_port_det_flag_1_9;
  assign port_det_flag_1_10 = mul4_port_det_flag_1_10;
  assign port_det_flag_1_11 = mul4_port_det_flag_1_11;
  assign port_det_flag_1_12 = mul4_port_det_flag_1_12;
  assign port_det_flag_1_13 = mul4_port_det_flag_1_13;
  assign port_det_flag_1_14 = mul4_port_det_flag_1_14;
  assign port_det_flag_1_15 = mul4_port_det_flag_1_15;
  assign port_det_flag_1_16 = mul4_port_det_flag_1_16;
  assign port_det_flag_1_17 = mul4_port_det_flag_1_17;
  assign port_det_flag_1_18 = mul4_port_det_flag_1_18;
  assign port_det_flag_1_19 = mul4_port_det_flag_1_19;
  assign port_det_flag_1_20 = mul4_port_det_flag_1_20;
  assign port_det_flag_1_21 = mul4_port_det_flag_1_21;
  assign port_det_flag_1_22 = mul4_port_det_flag_1_22;
  assign port_det_flag_1_23 = mul4_port_det_flag_1_23;
  assign port_det_flag_2_0 = mul4_port_det_flag_2_0;
  assign port_det_flag_2_1 = mul4_port_det_flag_2_1;
  assign port_det_flag_2_2 = mul4_port_det_flag_2_2;
  assign port_det_flag_2_3 = mul4_port_det_flag_2_3;
  assign port_det_flag_2_4 = mul4_port_det_flag_2_4;
  assign port_det_flag_2_5 = mul4_port_det_flag_2_5;
  assign port_det_flag_2_6 = mul4_port_det_flag_2_6;
  assign port_det_flag_2_7 = mul4_port_det_flag_2_7;
  assign port_det_flag_2_8 = mul4_port_det_flag_2_8;
  assign port_det_flag_2_9 = mul4_port_det_flag_2_9;
  assign port_det_flag_2_10 = mul4_port_det_flag_2_10;
  assign port_det_flag_2_11 = mul4_port_det_flag_2_11;
  assign port_det_flag_2_12 = mul4_port_det_flag_2_12;
  assign port_det_flag_2_13 = mul4_port_det_flag_2_13;
  assign port_det_flag_2_14 = mul4_port_det_flag_2_14;
  assign port_det_flag_2_15 = mul4_port_det_flag_2_15;
  assign port_det_flag_2_16 = mul4_port_det_flag_2_16;
  assign port_det_flag_2_17 = mul4_port_det_flag_2_17;
  assign port_det_flag_2_18 = mul4_port_det_flag_2_18;
  assign port_det_flag_2_19 = mul4_port_det_flag_2_19;
  assign port_det_flag_2_20 = mul4_port_det_flag_2_20;
  assign port_det_flag_2_21 = mul4_port_det_flag_2_21;
  assign port_det_flag_2_22 = mul4_port_det_flag_2_22;
  assign port_det_flag_2_23 = mul4_port_det_flag_2_23;
  assign port_det_flag_3_0 = mul4_port_det_flag_3_0;
  assign port_det_flag_3_1 = mul4_port_det_flag_3_1;
  assign port_det_flag_3_2 = mul4_port_det_flag_3_2;
  assign port_det_flag_3_3 = mul4_port_det_flag_3_3;
  assign port_det_flag_3_4 = mul4_port_det_flag_3_4;
  assign port_det_flag_3_5 = mul4_port_det_flag_3_5;
  assign port_det_flag_3_6 = mul4_port_det_flag_3_6;
  assign port_det_flag_3_7 = mul4_port_det_flag_3_7;
  assign port_det_flag_3_8 = mul4_port_det_flag_3_8;
  assign port_det_flag_3_9 = mul4_port_det_flag_3_9;
  assign port_det_flag_3_10 = mul4_port_det_flag_3_10;
  assign port_det_flag_3_11 = mul4_port_det_flag_3_11;
  assign port_det_flag_3_12 = mul4_port_det_flag_3_12;
  assign port_det_flag_3_13 = mul4_port_det_flag_3_13;
  assign port_det_flag_3_14 = mul4_port_det_flag_3_14;
  assign port_det_flag_3_15 = mul4_port_det_flag_3_15;
  assign port_det_flag_3_16 = mul4_port_det_flag_3_16;
  assign port_det_flag_3_17 = mul4_port_det_flag_3_17;
  assign port_det_flag_3_18 = mul4_port_det_flag_3_18;
  assign port_det_flag_3_19 = mul4_port_det_flag_3_19;
  assign port_det_flag_3_20 = mul4_port_det_flag_3_20;
  assign port_det_flag_3_21 = mul4_port_det_flag_3_21;
  assign port_det_flag_3_22 = mul4_port_det_flag_3_22;
  assign port_det_flag_3_23 = mul4_port_det_flag_3_23;
  assign port_det_flag_4_0 = mul4_port_det_flag_4_0;
  assign port_det_flag_4_1 = mul4_port_det_flag_4_1;
  assign port_det_flag_4_2 = mul4_port_det_flag_4_2;
  assign port_det_flag_4_3 = mul4_port_det_flag_4_3;
  assign port_det_flag_4_4 = mul4_port_det_flag_4_4;
  assign port_det_flag_4_5 = mul4_port_det_flag_4_5;
  assign port_det_flag_4_6 = mul4_port_det_flag_4_6;
  assign port_det_flag_4_7 = mul4_port_det_flag_4_7;
  assign port_det_flag_4_8 = mul4_port_det_flag_4_8;
  assign port_det_flag_4_9 = mul4_port_det_flag_4_9;
  assign port_det_flag_4_10 = mul4_port_det_flag_4_10;
  assign port_det_flag_4_11 = mul4_port_det_flag_4_11;
  assign port_det_flag_4_12 = mul4_port_det_flag_4_12;
  assign port_det_flag_4_13 = mul4_port_det_flag_4_13;
  assign port_det_flag_4_14 = mul4_port_det_flag_4_14;
  assign port_det_flag_4_15 = mul4_port_det_flag_4_15;
  assign port_det_flag_4_16 = mul4_port_det_flag_4_16;
  assign port_det_flag_4_17 = mul4_port_det_flag_4_17;
  assign port_det_flag_4_18 = mul4_port_det_flag_4_18;
  assign port_det_flag_4_19 = mul4_port_det_flag_4_19;
  assign port_det_flag_4_20 = mul4_port_det_flag_4_20;
  assign port_det_flag_4_21 = mul4_port_det_flag_4_21;
  assign port_det_flag_4_22 = mul4_port_det_flag_4_22;
  assign port_det_flag_4_23 = mul4_port_det_flag_4_23;
  assign port_det_flag_5_0 = mul4_port_det_flag_5_0;
  assign port_det_flag_5_1 = mul4_port_det_flag_5_1;
  assign port_det_flag_5_2 = mul4_port_det_flag_5_2;
  assign port_det_flag_5_3 = mul4_port_det_flag_5_3;
  assign port_det_flag_5_4 = mul4_port_det_flag_5_4;
  assign port_det_flag_5_5 = mul4_port_det_flag_5_5;
  assign port_det_flag_5_6 = mul4_port_det_flag_5_6;
  assign port_det_flag_5_7 = mul4_port_det_flag_5_7;
  assign port_det_flag_5_8 = mul4_port_det_flag_5_8;
  assign port_det_flag_5_9 = mul4_port_det_flag_5_9;
  assign port_det_flag_5_10 = mul4_port_det_flag_5_10;
  assign port_det_flag_5_11 = mul4_port_det_flag_5_11;
  assign port_det_flag_5_12 = mul4_port_det_flag_5_12;
  assign port_det_flag_5_13 = mul4_port_det_flag_5_13;
  assign port_det_flag_5_14 = mul4_port_det_flag_5_14;
  assign port_det_flag_5_15 = mul4_port_det_flag_5_15;
  assign port_det_flag_5_16 = mul4_port_det_flag_5_16;
  assign port_det_flag_5_17 = mul4_port_det_flag_5_17;
  assign port_det_flag_5_18 = mul4_port_det_flag_5_18;
  assign port_det_flag_5_19 = mul4_port_det_flag_5_19;
  assign port_det_flag_5_20 = mul4_port_det_flag_5_20;
  assign port_det_flag_5_21 = mul4_port_det_flag_5_21;
  assign port_det_flag_5_22 = mul4_port_det_flag_5_22;
  assign port_det_flag_5_23 = mul4_port_det_flag_5_23;
  assign dx_0_0 = dx_inv_port_o_0_0;
  assign dx_0_1 = dx_inv_port_o_0_1;
  assign dx_0_2 = dx_inv_port_o_0_2;
  assign dx_0_3 = dx_inv_port_o_0_3;
  assign dx_1_0 = dx_inv_port_o_1_0;
  assign dx_1_1 = dx_inv_port_o_1_1;
  assign dx_1_2 = dx_inv_port_o_1_2;
  assign dx_1_3 = dx_inv_port_o_1_3;
  assign dx_2_0 = dx_inv_port_o_2_0;
  assign dx_2_1 = dx_inv_port_o_2_1;
  assign dx_2_2 = dx_inv_port_o_2_2;
  assign dx_2_3 = dx_inv_port_o_2_3;
  assign port_det_flag_6_0 = dx_inv_port_det_flag_0_0;
  assign port_det_flag_6_1 = dx_inv_port_det_flag_0_1;
  assign port_det_flag_6_2 = dx_inv_port_det_flag_0_2;
  assign port_det_flag_6_3 = dx_inv_port_det_flag_0_3;
  assign port_det_flag_6_4 = dx_inv_port_det_flag_0_4;
  assign port_det_flag_6_5 = dx_inv_port_det_flag_0_5;
  assign port_det_flag_6_6 = dx_inv_port_det_flag_0_6;
  assign port_det_flag_6_7 = dx_inv_port_det_flag_0_7;
  assign port_det_flag_6_8 = dx_inv_port_det_flag_0_8;
  assign port_det_flag_6_9 = dx_inv_port_det_flag_0_9;
  assign port_det_flag_6_10 = dx_inv_port_det_flag_0_10;
  assign port_det_flag_6_11 = dx_inv_port_det_flag_0_11;
  assign port_det_flag_6_12 = dx_inv_port_det_flag_0_12;
  assign port_det_flag_6_13 = dx_inv_port_det_flag_0_13;
  assign port_det_flag_6_14 = dx_inv_port_det_flag_0_14;
  assign port_det_flag_6_15 = dx_inv_port_det_flag_0_15;
  assign port_det_flag_6_16 = dx_inv_port_det_flag_0_16;
  assign port_det_flag_6_17 = dx_inv_port_det_flag_0_17;
  assign port_det_flag_6_18 = dx_inv_port_det_flag_0_18;
  assign port_det_flag_6_19 = dx_inv_port_det_flag_0_19;
  assign port_det_flag_6_20 = dx_inv_port_det_flag_0_20;
  assign port_det_flag_6_21 = dx_inv_port_det_flag_0_21;
  assign port_det_flag_6_22 = dx_inv_port_det_flag_0_22;
  assign port_det_flag_6_23 = dx_inv_port_det_flag_0_23;
  assign port_det_flag_7_0 = dx_inv_port_det_flag_1_0;
  assign port_det_flag_7_1 = dx_inv_port_det_flag_1_1;
  assign port_det_flag_7_2 = dx_inv_port_det_flag_1_2;
  assign port_det_flag_7_3 = dx_inv_port_det_flag_1_3;
  assign port_det_flag_7_4 = dx_inv_port_det_flag_1_4;
  assign port_det_flag_7_5 = dx_inv_port_det_flag_1_5;
  assign port_det_flag_7_6 = dx_inv_port_det_flag_1_6;
  assign port_det_flag_7_7 = dx_inv_port_det_flag_1_7;
  assign port_det_flag_7_8 = dx_inv_port_det_flag_1_8;
  assign port_det_flag_7_9 = dx_inv_port_det_flag_1_9;
  assign port_det_flag_7_10 = dx_inv_port_det_flag_1_10;
  assign port_det_flag_7_11 = dx_inv_port_det_flag_1_11;
  assign port_det_flag_7_12 = dx_inv_port_det_flag_1_12;
  assign port_det_flag_7_13 = dx_inv_port_det_flag_1_13;
  assign port_det_flag_7_14 = dx_inv_port_det_flag_1_14;
  assign port_det_flag_7_15 = dx_inv_port_det_flag_1_15;
  assign port_det_flag_7_16 = dx_inv_port_det_flag_1_16;
  assign port_det_flag_7_17 = dx_inv_port_det_flag_1_17;
  assign port_det_flag_7_18 = dx_inv_port_det_flag_1_18;
  assign port_det_flag_7_19 = dx_inv_port_det_flag_1_19;
  assign port_det_flag_7_20 = dx_inv_port_det_flag_1_20;
  assign port_det_flag_7_21 = dx_inv_port_det_flag_1_21;
  assign port_det_flag_7_22 = dx_inv_port_det_flag_1_22;
  assign port_det_flag_7_23 = dx_inv_port_det_flag_1_23;
  assign port_det_flag_8_0 = dx_inv_port_det_flag_2_0;
  assign port_det_flag_8_1 = dx_inv_port_det_flag_2_1;
  assign port_det_flag_8_2 = dx_inv_port_det_flag_2_2;
  assign port_det_flag_8_3 = dx_inv_port_det_flag_2_3;
  assign port_det_flag_8_4 = dx_inv_port_det_flag_2_4;
  assign port_det_flag_8_5 = dx_inv_port_det_flag_2_5;
  assign port_det_flag_8_6 = dx_inv_port_det_flag_2_6;
  assign port_det_flag_8_7 = dx_inv_port_det_flag_2_7;
  assign port_det_flag_8_8 = dx_inv_port_det_flag_2_8;
  assign port_det_flag_8_9 = dx_inv_port_det_flag_2_9;
  assign port_det_flag_8_10 = dx_inv_port_det_flag_2_10;
  assign port_det_flag_8_11 = dx_inv_port_det_flag_2_11;
  assign port_det_flag_8_12 = dx_inv_port_det_flag_2_12;
  assign port_det_flag_8_13 = dx_inv_port_det_flag_2_13;
  assign port_det_flag_8_14 = dx_inv_port_det_flag_2_14;
  assign port_det_flag_8_15 = dx_inv_port_det_flag_2_15;
  assign port_det_flag_8_16 = dx_inv_port_det_flag_2_16;
  assign port_det_flag_8_17 = dx_inv_port_det_flag_2_17;
  assign port_det_flag_8_18 = dx_inv_port_det_flag_2_18;
  assign port_det_flag_8_19 = dx_inv_port_det_flag_2_19;
  assign port_det_flag_8_20 = dx_inv_port_det_flag_2_20;
  assign port_det_flag_8_21 = dx_inv_port_det_flag_2_21;
  assign port_det_flag_8_22 = dx_inv_port_det_flag_2_22;
  assign port_det_flag_8_23 = dx_inv_port_det_flag_2_23;
  assign port_det_flag_9_0 = dx_inv_port_det_flag_3_0;
  assign port_det_flag_9_1 = dx_inv_port_det_flag_3_1;
  assign port_det_flag_9_2 = dx_inv_port_det_flag_3_2;
  assign port_det_flag_9_3 = dx_inv_port_det_flag_3_3;
  assign port_det_flag_9_4 = dx_inv_port_det_flag_3_4;
  assign port_det_flag_9_5 = dx_inv_port_det_flag_3_5;
  assign port_det_flag_9_6 = dx_inv_port_det_flag_3_6;
  assign port_det_flag_9_7 = dx_inv_port_det_flag_3_7;
  assign port_det_flag_9_8 = dx_inv_port_det_flag_3_8;
  assign port_det_flag_9_9 = dx_inv_port_det_flag_3_9;
  assign port_det_flag_9_10 = dx_inv_port_det_flag_3_10;
  assign port_det_flag_9_11 = dx_inv_port_det_flag_3_11;
  assign port_det_flag_9_12 = dx_inv_port_det_flag_3_12;
  assign port_det_flag_9_13 = dx_inv_port_det_flag_3_13;
  assign port_det_flag_9_14 = dx_inv_port_det_flag_3_14;
  assign port_det_flag_9_15 = dx_inv_port_det_flag_3_15;
  assign port_det_flag_9_16 = dx_inv_port_det_flag_3_16;
  assign port_det_flag_9_17 = dx_inv_port_det_flag_3_17;
  assign port_det_flag_9_18 = dx_inv_port_det_flag_3_18;
  assign port_det_flag_9_19 = dx_inv_port_det_flag_3_19;
  assign port_det_flag_9_20 = dx_inv_port_det_flag_3_20;
  assign port_det_flag_9_21 = dx_inv_port_det_flag_3_21;
  assign port_det_flag_9_22 = dx_inv_port_det_flag_3_22;
  assign port_det_flag_9_23 = dx_inv_port_det_flag_3_23;
  assign port_det_flag_10_0 = dx_inv_port_det_flag_4_0;
  assign port_det_flag_10_1 = dx_inv_port_det_flag_4_1;
  assign port_det_flag_10_2 = dx_inv_port_det_flag_4_2;
  assign port_det_flag_10_3 = dx_inv_port_det_flag_4_3;
  assign port_det_flag_10_4 = dx_inv_port_det_flag_4_4;
  assign port_det_flag_10_5 = dx_inv_port_det_flag_4_5;
  assign port_det_flag_10_6 = dx_inv_port_det_flag_4_6;
  assign port_det_flag_10_7 = dx_inv_port_det_flag_4_7;
  assign port_det_flag_10_8 = dx_inv_port_det_flag_4_8;
  assign port_det_flag_10_9 = dx_inv_port_det_flag_4_9;
  assign port_det_flag_10_10 = dx_inv_port_det_flag_4_10;
  assign port_det_flag_10_11 = dx_inv_port_det_flag_4_11;
  assign port_det_flag_10_12 = dx_inv_port_det_flag_4_12;
  assign port_det_flag_10_13 = dx_inv_port_det_flag_4_13;
  assign port_det_flag_10_14 = dx_inv_port_det_flag_4_14;
  assign port_det_flag_10_15 = dx_inv_port_det_flag_4_15;
  assign port_det_flag_10_16 = dx_inv_port_det_flag_4_16;
  assign port_det_flag_10_17 = dx_inv_port_det_flag_4_17;
  assign port_det_flag_10_18 = dx_inv_port_det_flag_4_18;
  assign port_det_flag_10_19 = dx_inv_port_det_flag_4_19;
  assign port_det_flag_10_20 = dx_inv_port_det_flag_4_20;
  assign port_det_flag_10_21 = dx_inv_port_det_flag_4_21;
  assign port_det_flag_10_22 = dx_inv_port_det_flag_4_22;
  assign port_det_flag_10_23 = dx_inv_port_det_flag_4_23;
  assign port_det_flag_11_0 = dx_inv_port_det_flag_5_0;
  assign port_det_flag_11_1 = dx_inv_port_det_flag_5_1;
  assign port_det_flag_11_2 = dx_inv_port_det_flag_5_2;
  assign port_det_flag_11_3 = dx_inv_port_det_flag_5_3;
  assign port_det_flag_11_4 = dx_inv_port_det_flag_5_4;
  assign port_det_flag_11_5 = dx_inv_port_det_flag_5_5;
  assign port_det_flag_11_6 = dx_inv_port_det_flag_5_6;
  assign port_det_flag_11_7 = dx_inv_port_det_flag_5_7;
  assign port_det_flag_11_8 = dx_inv_port_det_flag_5_8;
  assign port_det_flag_11_9 = dx_inv_port_det_flag_5_9;
  assign port_det_flag_11_10 = dx_inv_port_det_flag_5_10;
  assign port_det_flag_11_11 = dx_inv_port_det_flag_5_11;
  assign port_det_flag_11_12 = dx_inv_port_det_flag_5_12;
  assign port_det_flag_11_13 = dx_inv_port_det_flag_5_13;
  assign port_det_flag_11_14 = dx_inv_port_det_flag_5_14;
  assign port_det_flag_11_15 = dx_inv_port_det_flag_5_15;
  assign port_det_flag_11_16 = dx_inv_port_det_flag_5_16;
  assign port_det_flag_11_17 = dx_inv_port_det_flag_5_17;
  assign port_det_flag_11_18 = dx_inv_port_det_flag_5_18;
  assign port_det_flag_11_19 = dx_inv_port_det_flag_5_19;
  assign port_det_flag_11_20 = dx_inv_port_det_flag_5_20;
  assign port_det_flag_11_21 = dx_inv_port_det_flag_5_21;
  assign port_det_flag_11_22 = dx_inv_port_det_flag_5_22;
  assign port_det_flag_11_23 = dx_inv_port_det_flag_5_23;
  assign port_det_flag_12_0 = dx_inv_port_det_flag_6_0;
  assign port_det_flag_12_1 = dx_inv_port_det_flag_6_1;
  assign port_det_flag_12_2 = dx_inv_port_det_flag_6_2;
  assign port_det_flag_12_3 = dx_inv_port_det_flag_6_3;
  assign port_det_flag_12_4 = dx_inv_port_det_flag_6_4;
  assign port_det_flag_12_5 = dx_inv_port_det_flag_6_5;
  assign port_det_flag_12_6 = dx_inv_port_det_flag_6_6;
  assign port_det_flag_12_7 = dx_inv_port_det_flag_6_7;
  assign port_det_flag_12_8 = dx_inv_port_det_flag_6_8;
  assign port_det_flag_12_9 = dx_inv_port_det_flag_6_9;
  assign port_det_flag_12_10 = dx_inv_port_det_flag_6_10;
  assign port_det_flag_12_11 = dx_inv_port_det_flag_6_11;
  assign port_det_flag_12_12 = dx_inv_port_det_flag_6_12;
  assign port_det_flag_12_13 = dx_inv_port_det_flag_6_13;
  assign port_det_flag_12_14 = dx_inv_port_det_flag_6_14;
  assign port_det_flag_12_15 = dx_inv_port_det_flag_6_15;
  assign port_det_flag_12_16 = dx_inv_port_det_flag_6_16;
  assign port_det_flag_12_17 = dx_inv_port_det_flag_6_17;
  assign port_det_flag_12_18 = dx_inv_port_det_flag_6_18;
  assign port_det_flag_12_19 = dx_inv_port_det_flag_6_19;
  assign port_det_flag_12_20 = dx_inv_port_det_flag_6_20;
  assign port_det_flag_12_21 = dx_inv_port_det_flag_6_21;
  assign port_det_flag_12_22 = dx_inv_port_det_flag_6_22;
  assign port_det_flag_12_23 = dx_inv_port_det_flag_6_23;
  assign port_det_flag_13_0 = dx_inv_port_det_flag_7_0;
  assign port_det_flag_13_1 = dx_inv_port_det_flag_7_1;
  assign port_det_flag_13_2 = dx_inv_port_det_flag_7_2;
  assign port_det_flag_13_3 = dx_inv_port_det_flag_7_3;
  assign port_det_flag_13_4 = dx_inv_port_det_flag_7_4;
  assign port_det_flag_13_5 = dx_inv_port_det_flag_7_5;
  assign port_det_flag_13_6 = dx_inv_port_det_flag_7_6;
  assign port_det_flag_13_7 = dx_inv_port_det_flag_7_7;
  assign port_det_flag_13_8 = dx_inv_port_det_flag_7_8;
  assign port_det_flag_13_9 = dx_inv_port_det_flag_7_9;
  assign port_det_flag_13_10 = dx_inv_port_det_flag_7_10;
  assign port_det_flag_13_11 = dx_inv_port_det_flag_7_11;
  assign port_det_flag_13_12 = dx_inv_port_det_flag_7_12;
  assign port_det_flag_13_13 = dx_inv_port_det_flag_7_13;
  assign port_det_flag_13_14 = dx_inv_port_det_flag_7_14;
  assign port_det_flag_13_15 = dx_inv_port_det_flag_7_15;
  assign port_det_flag_13_16 = dx_inv_port_det_flag_7_16;
  assign port_det_flag_13_17 = dx_inv_port_det_flag_7_17;
  assign port_det_flag_13_18 = dx_inv_port_det_flag_7_18;
  assign port_det_flag_13_19 = dx_inv_port_det_flag_7_19;
  assign port_det_flag_13_20 = dx_inv_port_det_flag_7_20;
  assign port_det_flag_13_21 = dx_inv_port_det_flag_7_21;
  assign port_det_flag_13_22 = dx_inv_port_det_flag_7_22;
  assign port_det_flag_13_23 = dx_inv_port_det_flag_7_23;
  assign port_det_flag_14_0 = dx_inv_port_det_flag_8_0;
  assign port_det_flag_14_1 = dx_inv_port_det_flag_8_1;
  assign port_det_flag_14_2 = dx_inv_port_det_flag_8_2;
  assign port_det_flag_14_3 = dx_inv_port_det_flag_8_3;
  assign port_det_flag_14_4 = dx_inv_port_det_flag_8_4;
  assign port_det_flag_14_5 = dx_inv_port_det_flag_8_5;
  assign port_det_flag_14_6 = dx_inv_port_det_flag_8_6;
  assign port_det_flag_14_7 = dx_inv_port_det_flag_8_7;
  assign port_det_flag_14_8 = dx_inv_port_det_flag_8_8;
  assign port_det_flag_14_9 = dx_inv_port_det_flag_8_9;
  assign port_det_flag_14_10 = dx_inv_port_det_flag_8_10;
  assign port_det_flag_14_11 = dx_inv_port_det_flag_8_11;
  assign port_det_flag_14_12 = dx_inv_port_det_flag_8_12;
  assign port_det_flag_14_13 = dx_inv_port_det_flag_8_13;
  assign port_det_flag_14_14 = dx_inv_port_det_flag_8_14;
  assign port_det_flag_14_15 = dx_inv_port_det_flag_8_15;
  assign port_det_flag_14_16 = dx_inv_port_det_flag_8_16;
  assign port_det_flag_14_17 = dx_inv_port_det_flag_8_17;
  assign port_det_flag_14_18 = dx_inv_port_det_flag_8_18;
  assign port_det_flag_14_19 = dx_inv_port_det_flag_8_19;
  assign port_det_flag_14_20 = dx_inv_port_det_flag_8_20;
  assign port_det_flag_14_21 = dx_inv_port_det_flag_8_21;
  assign port_det_flag_14_22 = dx_inv_port_det_flag_8_22;
  assign port_det_flag_14_23 = dx_inv_port_det_flag_8_23;
  assign sdx_0_0 = (dx_0_2 ^ dx_0_0);
  assign sdx_0_1 = (dx_0_3 ^ dx_0_1);
  assign dl_0 = (dx_0_1 ^ dx_0_0);
  assign dh_0 = (dx_0_3 ^ dx_0_2);
  assign dd_0 = (sdx_0_1 ^ sdx_0_0);
  assign sdx_1_0 = (dx_1_2 ^ dx_1_0);
  assign sdx_1_1 = (dx_1_3 ^ dx_1_1);
  assign dl_1 = (dx_1_1 ^ dx_1_0);
  assign dh_1 = (dx_1_3 ^ dx_1_2);
  assign dd_1 = (sdx_1_1 ^ sdx_1_0);
  assign sdx_2_0 = (dx_2_2 ^ dx_2_0);
  assign sdx_2_1 = (dx_2_3 ^ dx_2_1);
  assign dl_2 = (dx_2_1 ^ dx_2_0);
  assign dh_2 = (dx_2_3 ^ dx_2_2);
  assign dd_2 = (sdx_2_1 ^ sdx_2_0);
  assign sax_reg_3_0_0 = (ax_reg_3_0_2 ^ ax_reg_3_0_0);
  assign sax_reg_3_0_1 = (ax_reg_3_0_3 ^ ax_reg_3_0_1);
  assign sbx_reg_3_0_0 = (bx_reg_3_0_2 ^ bx_reg_3_0_0);
  assign sbx_reg_3_0_1 = (bx_reg_3_0_3 ^ bx_reg_3_0_1);
  assign al_reg_3_0 = (ax_reg_3_0_1 ^ ax_reg_3_0_0);
  assign ah_reg_3_0 = (ax_reg_3_0_3 ^ ax_reg_3_0_2);
  assign aa_reg_3_0 = (sax_reg_3_0_1 ^ sax_reg_3_0_0);
  assign bl_reg_3_0 = (bx_reg_3_0_1 ^ bx_reg_3_0_0);
  assign bh_reg_3_0 = (bx_reg_3_0_3 ^ bx_reg_3_0_2);
  assign bb_reg_3_0 = (sbx_reg_3_0_1 ^ sbx_reg_3_0_0);
  assign sax_reg_3_1_0 = (ax_reg_3_1_2 ^ ax_reg_3_1_0);
  assign sax_reg_3_1_1 = (ax_reg_3_1_3 ^ ax_reg_3_1_1);
  assign sbx_reg_3_1_0 = (bx_reg_3_1_2 ^ bx_reg_3_1_0);
  assign sbx_reg_3_1_1 = (bx_reg_3_1_3 ^ bx_reg_3_1_1);
  assign al_reg_3_1 = (ax_reg_3_1_1 ^ ax_reg_3_1_0);
  assign ah_reg_3_1 = (ax_reg_3_1_3 ^ ax_reg_3_1_2);
  assign aa_reg_3_1 = (sax_reg_3_1_1 ^ sax_reg_3_1_0);
  assign bl_reg_3_1 = (bx_reg_3_1_1 ^ bx_reg_3_1_0);
  assign bh_reg_3_1 = (bx_reg_3_1_3 ^ bx_reg_3_1_2);
  assign bb_reg_3_1 = (sbx_reg_3_1_1 ^ sbx_reg_3_1_0);
  assign sax_reg_3_2_0 = (ax_reg_3_2_2 ^ ax_reg_3_2_0);
  assign sax_reg_3_2_1 = (ax_reg_3_2_3 ^ ax_reg_3_2_1);
  assign sbx_reg_3_2_0 = (bx_reg_3_2_2 ^ bx_reg_3_2_0);
  assign sbx_reg_3_2_1 = (bx_reg_3_2_3 ^ bx_reg_3_2_1);
  assign al_reg_3_2 = (ax_reg_3_2_1 ^ ax_reg_3_2_0);
  assign ah_reg_3_2 = (ax_reg_3_2_3 ^ ax_reg_3_2_2);
  assign aa_reg_3_2 = (sax_reg_3_2_1 ^ sax_reg_3_2_0);
  assign bl_reg_3_2 = (bx_reg_3_2_1 ^ bx_reg_3_2_0);
  assign bh_reg_3_2 = (bx_reg_3_2_3 ^ bx_reg_3_2_2);
  assign bb_reg_3_2 = (sbx_reg_3_2_1 ^ sbx_reg_3_2_0);
  assign px_0_0 = px_mul_port_o_0_0;
  assign px_0_1 = px_mul_port_o_0_1;
  assign px_0_2 = px_mul_port_o_0_2;
  assign px_0_3 = px_mul_port_o_0_3;
  assign px_1_0 = px_mul_port_o_1_0;
  assign px_1_1 = px_mul_port_o_1_1;
  assign px_1_2 = px_mul_port_o_1_2;
  assign px_1_3 = px_mul_port_o_1_3;
  assign px_2_0 = px_mul_port_o_2_0;
  assign px_2_1 = px_mul_port_o_2_1;
  assign px_2_2 = px_mul_port_o_2_2;
  assign px_2_3 = px_mul_port_o_2_3;
  assign port_det_flag_15_0 = px_mul_port_det_flag_0_0;
  assign port_det_flag_15_1 = px_mul_port_det_flag_0_1;
  assign port_det_flag_15_2 = px_mul_port_det_flag_0_2;
  assign port_det_flag_15_3 = px_mul_port_det_flag_0_3;
  assign port_det_flag_15_4 = px_mul_port_det_flag_0_4;
  assign port_det_flag_15_5 = px_mul_port_det_flag_0_5;
  assign port_det_flag_15_6 = px_mul_port_det_flag_0_6;
  assign port_det_flag_15_7 = px_mul_port_det_flag_0_7;
  assign port_det_flag_15_8 = px_mul_port_det_flag_0_8;
  assign port_det_flag_15_9 = px_mul_port_det_flag_0_9;
  assign port_det_flag_15_10 = px_mul_port_det_flag_0_10;
  assign port_det_flag_15_11 = px_mul_port_det_flag_0_11;
  assign port_det_flag_15_12 = px_mul_port_det_flag_0_12;
  assign port_det_flag_15_13 = px_mul_port_det_flag_0_13;
  assign port_det_flag_15_14 = px_mul_port_det_flag_0_14;
  assign port_det_flag_15_15 = px_mul_port_det_flag_0_15;
  assign port_det_flag_15_16 = px_mul_port_det_flag_0_16;
  assign port_det_flag_15_17 = px_mul_port_det_flag_0_17;
  assign port_det_flag_15_18 = px_mul_port_det_flag_0_18;
  assign port_det_flag_15_19 = px_mul_port_det_flag_0_19;
  assign port_det_flag_15_20 = px_mul_port_det_flag_0_20;
  assign port_det_flag_15_21 = px_mul_port_det_flag_0_21;
  assign port_det_flag_15_22 = px_mul_port_det_flag_0_22;
  assign port_det_flag_15_23 = px_mul_port_det_flag_0_23;
  assign port_det_flag_16_0 = px_mul_port_det_flag_1_0;
  assign port_det_flag_16_1 = px_mul_port_det_flag_1_1;
  assign port_det_flag_16_2 = px_mul_port_det_flag_1_2;
  assign port_det_flag_16_3 = px_mul_port_det_flag_1_3;
  assign port_det_flag_16_4 = px_mul_port_det_flag_1_4;
  assign port_det_flag_16_5 = px_mul_port_det_flag_1_5;
  assign port_det_flag_16_6 = px_mul_port_det_flag_1_6;
  assign port_det_flag_16_7 = px_mul_port_det_flag_1_7;
  assign port_det_flag_16_8 = px_mul_port_det_flag_1_8;
  assign port_det_flag_16_9 = px_mul_port_det_flag_1_9;
  assign port_det_flag_16_10 = px_mul_port_det_flag_1_10;
  assign port_det_flag_16_11 = px_mul_port_det_flag_1_11;
  assign port_det_flag_16_12 = px_mul_port_det_flag_1_12;
  assign port_det_flag_16_13 = px_mul_port_det_flag_1_13;
  assign port_det_flag_16_14 = px_mul_port_det_flag_1_14;
  assign port_det_flag_16_15 = px_mul_port_det_flag_1_15;
  assign port_det_flag_16_16 = px_mul_port_det_flag_1_16;
  assign port_det_flag_16_17 = px_mul_port_det_flag_1_17;
  assign port_det_flag_16_18 = px_mul_port_det_flag_1_18;
  assign port_det_flag_16_19 = px_mul_port_det_flag_1_19;
  assign port_det_flag_16_20 = px_mul_port_det_flag_1_20;
  assign port_det_flag_16_21 = px_mul_port_det_flag_1_21;
  assign port_det_flag_16_22 = px_mul_port_det_flag_1_22;
  assign port_det_flag_16_23 = px_mul_port_det_flag_1_23;
  assign port_det_flag_17_0 = px_mul_port_det_flag_2_0;
  assign port_det_flag_17_1 = px_mul_port_det_flag_2_1;
  assign port_det_flag_17_2 = px_mul_port_det_flag_2_2;
  assign port_det_flag_17_3 = px_mul_port_det_flag_2_3;
  assign port_det_flag_17_4 = px_mul_port_det_flag_2_4;
  assign port_det_flag_17_5 = px_mul_port_det_flag_2_5;
  assign port_det_flag_17_6 = px_mul_port_det_flag_2_6;
  assign port_det_flag_17_7 = px_mul_port_det_flag_2_7;
  assign port_det_flag_17_8 = px_mul_port_det_flag_2_8;
  assign port_det_flag_17_9 = px_mul_port_det_flag_2_9;
  assign port_det_flag_17_10 = px_mul_port_det_flag_2_10;
  assign port_det_flag_17_11 = px_mul_port_det_flag_2_11;
  assign port_det_flag_17_12 = px_mul_port_det_flag_2_12;
  assign port_det_flag_17_13 = px_mul_port_det_flag_2_13;
  assign port_det_flag_17_14 = px_mul_port_det_flag_2_14;
  assign port_det_flag_17_15 = px_mul_port_det_flag_2_15;
  assign port_det_flag_17_16 = px_mul_port_det_flag_2_16;
  assign port_det_flag_17_17 = px_mul_port_det_flag_2_17;
  assign port_det_flag_17_18 = px_mul_port_det_flag_2_18;
  assign port_det_flag_17_19 = px_mul_port_det_flag_2_19;
  assign port_det_flag_17_20 = px_mul_port_det_flag_2_20;
  assign port_det_flag_17_21 = px_mul_port_det_flag_2_21;
  assign port_det_flag_17_22 = px_mul_port_det_flag_2_22;
  assign port_det_flag_17_23 = px_mul_port_det_flag_2_23;
  assign port_det_flag_18_0 = px_mul_port_det_flag_3_0;
  assign port_det_flag_18_1 = px_mul_port_det_flag_3_1;
  assign port_det_flag_18_2 = px_mul_port_det_flag_3_2;
  assign port_det_flag_18_3 = px_mul_port_det_flag_3_3;
  assign port_det_flag_18_4 = px_mul_port_det_flag_3_4;
  assign port_det_flag_18_5 = px_mul_port_det_flag_3_5;
  assign port_det_flag_18_6 = px_mul_port_det_flag_3_6;
  assign port_det_flag_18_7 = px_mul_port_det_flag_3_7;
  assign port_det_flag_18_8 = px_mul_port_det_flag_3_8;
  assign port_det_flag_18_9 = px_mul_port_det_flag_3_9;
  assign port_det_flag_18_10 = px_mul_port_det_flag_3_10;
  assign port_det_flag_18_11 = px_mul_port_det_flag_3_11;
  assign port_det_flag_18_12 = px_mul_port_det_flag_3_12;
  assign port_det_flag_18_13 = px_mul_port_det_flag_3_13;
  assign port_det_flag_18_14 = px_mul_port_det_flag_3_14;
  assign port_det_flag_18_15 = px_mul_port_det_flag_3_15;
  assign port_det_flag_18_16 = px_mul_port_det_flag_3_16;
  assign port_det_flag_18_17 = px_mul_port_det_flag_3_17;
  assign port_det_flag_18_18 = px_mul_port_det_flag_3_18;
  assign port_det_flag_18_19 = px_mul_port_det_flag_3_19;
  assign port_det_flag_18_20 = px_mul_port_det_flag_3_20;
  assign port_det_flag_18_21 = px_mul_port_det_flag_3_21;
  assign port_det_flag_18_22 = px_mul_port_det_flag_3_22;
  assign port_det_flag_18_23 = px_mul_port_det_flag_3_23;
  assign port_det_flag_19_0 = px_mul_port_det_flag_4_0;
  assign port_det_flag_19_1 = px_mul_port_det_flag_4_1;
  assign port_det_flag_19_2 = px_mul_port_det_flag_4_2;
  assign port_det_flag_19_3 = px_mul_port_det_flag_4_3;
  assign port_det_flag_19_4 = px_mul_port_det_flag_4_4;
  assign port_det_flag_19_5 = px_mul_port_det_flag_4_5;
  assign port_det_flag_19_6 = px_mul_port_det_flag_4_6;
  assign port_det_flag_19_7 = px_mul_port_det_flag_4_7;
  assign port_det_flag_19_8 = px_mul_port_det_flag_4_8;
  assign port_det_flag_19_9 = px_mul_port_det_flag_4_9;
  assign port_det_flag_19_10 = px_mul_port_det_flag_4_10;
  assign port_det_flag_19_11 = px_mul_port_det_flag_4_11;
  assign port_det_flag_19_12 = px_mul_port_det_flag_4_12;
  assign port_det_flag_19_13 = px_mul_port_det_flag_4_13;
  assign port_det_flag_19_14 = px_mul_port_det_flag_4_14;
  assign port_det_flag_19_15 = px_mul_port_det_flag_4_15;
  assign port_det_flag_19_16 = px_mul_port_det_flag_4_16;
  assign port_det_flag_19_17 = px_mul_port_det_flag_4_17;
  assign port_det_flag_19_18 = px_mul_port_det_flag_4_18;
  assign port_det_flag_19_19 = px_mul_port_det_flag_4_19;
  assign port_det_flag_19_20 = px_mul_port_det_flag_4_20;
  assign port_det_flag_19_21 = px_mul_port_det_flag_4_21;
  assign port_det_flag_19_22 = px_mul_port_det_flag_4_22;
  assign port_det_flag_19_23 = px_mul_port_det_flag_4_23;
  assign port_det_flag_20_0 = px_mul_port_det_flag_5_0;
  assign port_det_flag_20_1 = px_mul_port_det_flag_5_1;
  assign port_det_flag_20_2 = px_mul_port_det_flag_5_2;
  assign port_det_flag_20_3 = px_mul_port_det_flag_5_3;
  assign port_det_flag_20_4 = px_mul_port_det_flag_5_4;
  assign port_det_flag_20_5 = px_mul_port_det_flag_5_5;
  assign port_det_flag_20_6 = px_mul_port_det_flag_5_6;
  assign port_det_flag_20_7 = px_mul_port_det_flag_5_7;
  assign port_det_flag_20_8 = px_mul_port_det_flag_5_8;
  assign port_det_flag_20_9 = px_mul_port_det_flag_5_9;
  assign port_det_flag_20_10 = px_mul_port_det_flag_5_10;
  assign port_det_flag_20_11 = px_mul_port_det_flag_5_11;
  assign port_det_flag_20_12 = px_mul_port_det_flag_5_12;
  assign port_det_flag_20_13 = px_mul_port_det_flag_5_13;
  assign port_det_flag_20_14 = px_mul_port_det_flag_5_14;
  assign port_det_flag_20_15 = px_mul_port_det_flag_5_15;
  assign port_det_flag_20_16 = px_mul_port_det_flag_5_16;
  assign port_det_flag_20_17 = px_mul_port_det_flag_5_17;
  assign port_det_flag_20_18 = px_mul_port_det_flag_5_18;
  assign port_det_flag_20_19 = px_mul_port_det_flag_5_19;
  assign port_det_flag_20_20 = px_mul_port_det_flag_5_20;
  assign port_det_flag_20_21 = px_mul_port_det_flag_5_21;
  assign port_det_flag_20_22 = px_mul_port_det_flag_5_22;
  assign port_det_flag_20_23 = px_mul_port_det_flag_5_23;
  assign qx_0_0 = qx_mul_port_o_0_0;
  assign qx_0_1 = qx_mul_port_o_0_1;
  assign qx_0_2 = qx_mul_port_o_0_2;
  assign qx_0_3 = qx_mul_port_o_0_3;
  assign qx_1_0 = qx_mul_port_o_1_0;
  assign qx_1_1 = qx_mul_port_o_1_1;
  assign qx_1_2 = qx_mul_port_o_1_2;
  assign qx_1_3 = qx_mul_port_o_1_3;
  assign qx_2_0 = qx_mul_port_o_2_0;
  assign qx_2_1 = qx_mul_port_o_2_1;
  assign qx_2_2 = qx_mul_port_o_2_2;
  assign qx_2_3 = qx_mul_port_o_2_3;
  assign port_det_flag_21_0 = qx_mul_port_det_flag_0_0;
  assign port_det_flag_21_1 = qx_mul_port_det_flag_0_1;
  assign port_det_flag_21_2 = qx_mul_port_det_flag_0_2;
  assign port_det_flag_21_3 = qx_mul_port_det_flag_0_3;
  assign port_det_flag_21_4 = qx_mul_port_det_flag_0_4;
  assign port_det_flag_21_5 = qx_mul_port_det_flag_0_5;
  assign port_det_flag_21_6 = qx_mul_port_det_flag_0_6;
  assign port_det_flag_21_7 = qx_mul_port_det_flag_0_7;
  assign port_det_flag_21_8 = qx_mul_port_det_flag_0_8;
  assign port_det_flag_21_9 = qx_mul_port_det_flag_0_9;
  assign port_det_flag_21_10 = qx_mul_port_det_flag_0_10;
  assign port_det_flag_21_11 = qx_mul_port_det_flag_0_11;
  assign port_det_flag_21_12 = qx_mul_port_det_flag_0_12;
  assign port_det_flag_21_13 = qx_mul_port_det_flag_0_13;
  assign port_det_flag_21_14 = qx_mul_port_det_flag_0_14;
  assign port_det_flag_21_15 = qx_mul_port_det_flag_0_15;
  assign port_det_flag_21_16 = qx_mul_port_det_flag_0_16;
  assign port_det_flag_21_17 = qx_mul_port_det_flag_0_17;
  assign port_det_flag_21_18 = qx_mul_port_det_flag_0_18;
  assign port_det_flag_21_19 = qx_mul_port_det_flag_0_19;
  assign port_det_flag_21_20 = qx_mul_port_det_flag_0_20;
  assign port_det_flag_21_21 = qx_mul_port_det_flag_0_21;
  assign port_det_flag_21_22 = qx_mul_port_det_flag_0_22;
  assign port_det_flag_21_23 = qx_mul_port_det_flag_0_23;
  assign port_det_flag_22_0 = qx_mul_port_det_flag_1_0;
  assign port_det_flag_22_1 = qx_mul_port_det_flag_1_1;
  assign port_det_flag_22_2 = qx_mul_port_det_flag_1_2;
  assign port_det_flag_22_3 = qx_mul_port_det_flag_1_3;
  assign port_det_flag_22_4 = qx_mul_port_det_flag_1_4;
  assign port_det_flag_22_5 = qx_mul_port_det_flag_1_5;
  assign port_det_flag_22_6 = qx_mul_port_det_flag_1_6;
  assign port_det_flag_22_7 = qx_mul_port_det_flag_1_7;
  assign port_det_flag_22_8 = qx_mul_port_det_flag_1_8;
  assign port_det_flag_22_9 = qx_mul_port_det_flag_1_9;
  assign port_det_flag_22_10 = qx_mul_port_det_flag_1_10;
  assign port_det_flag_22_11 = qx_mul_port_det_flag_1_11;
  assign port_det_flag_22_12 = qx_mul_port_det_flag_1_12;
  assign port_det_flag_22_13 = qx_mul_port_det_flag_1_13;
  assign port_det_flag_22_14 = qx_mul_port_det_flag_1_14;
  assign port_det_flag_22_15 = qx_mul_port_det_flag_1_15;
  assign port_det_flag_22_16 = qx_mul_port_det_flag_1_16;
  assign port_det_flag_22_17 = qx_mul_port_det_flag_1_17;
  assign port_det_flag_22_18 = qx_mul_port_det_flag_1_18;
  assign port_det_flag_22_19 = qx_mul_port_det_flag_1_19;
  assign port_det_flag_22_20 = qx_mul_port_det_flag_1_20;
  assign port_det_flag_22_21 = qx_mul_port_det_flag_1_21;
  assign port_det_flag_22_22 = qx_mul_port_det_flag_1_22;
  assign port_det_flag_22_23 = qx_mul_port_det_flag_1_23;
  assign port_det_flag_23_0 = qx_mul_port_det_flag_2_0;
  assign port_det_flag_23_1 = qx_mul_port_det_flag_2_1;
  assign port_det_flag_23_2 = qx_mul_port_det_flag_2_2;
  assign port_det_flag_23_3 = qx_mul_port_det_flag_2_3;
  assign port_det_flag_23_4 = qx_mul_port_det_flag_2_4;
  assign port_det_flag_23_5 = qx_mul_port_det_flag_2_5;
  assign port_det_flag_23_6 = qx_mul_port_det_flag_2_6;
  assign port_det_flag_23_7 = qx_mul_port_det_flag_2_7;
  assign port_det_flag_23_8 = qx_mul_port_det_flag_2_8;
  assign port_det_flag_23_9 = qx_mul_port_det_flag_2_9;
  assign port_det_flag_23_10 = qx_mul_port_det_flag_2_10;
  assign port_det_flag_23_11 = qx_mul_port_det_flag_2_11;
  assign port_det_flag_23_12 = qx_mul_port_det_flag_2_12;
  assign port_det_flag_23_13 = qx_mul_port_det_flag_2_13;
  assign port_det_flag_23_14 = qx_mul_port_det_flag_2_14;
  assign port_det_flag_23_15 = qx_mul_port_det_flag_2_15;
  assign port_det_flag_23_16 = qx_mul_port_det_flag_2_16;
  assign port_det_flag_23_17 = qx_mul_port_det_flag_2_17;
  assign port_det_flag_23_18 = qx_mul_port_det_flag_2_18;
  assign port_det_flag_23_19 = qx_mul_port_det_flag_2_19;
  assign port_det_flag_23_20 = qx_mul_port_det_flag_2_20;
  assign port_det_flag_23_21 = qx_mul_port_det_flag_2_21;
  assign port_det_flag_23_22 = qx_mul_port_det_flag_2_22;
  assign port_det_flag_23_23 = qx_mul_port_det_flag_2_23;
  assign port_det_flag_24_0 = qx_mul_port_det_flag_3_0;
  assign port_det_flag_24_1 = qx_mul_port_det_flag_3_1;
  assign port_det_flag_24_2 = qx_mul_port_det_flag_3_2;
  assign port_det_flag_24_3 = qx_mul_port_det_flag_3_3;
  assign port_det_flag_24_4 = qx_mul_port_det_flag_3_4;
  assign port_det_flag_24_5 = qx_mul_port_det_flag_3_5;
  assign port_det_flag_24_6 = qx_mul_port_det_flag_3_6;
  assign port_det_flag_24_7 = qx_mul_port_det_flag_3_7;
  assign port_det_flag_24_8 = qx_mul_port_det_flag_3_8;
  assign port_det_flag_24_9 = qx_mul_port_det_flag_3_9;
  assign port_det_flag_24_10 = qx_mul_port_det_flag_3_10;
  assign port_det_flag_24_11 = qx_mul_port_det_flag_3_11;
  assign port_det_flag_24_12 = qx_mul_port_det_flag_3_12;
  assign port_det_flag_24_13 = qx_mul_port_det_flag_3_13;
  assign port_det_flag_24_14 = qx_mul_port_det_flag_3_14;
  assign port_det_flag_24_15 = qx_mul_port_det_flag_3_15;
  assign port_det_flag_24_16 = qx_mul_port_det_flag_3_16;
  assign port_det_flag_24_17 = qx_mul_port_det_flag_3_17;
  assign port_det_flag_24_18 = qx_mul_port_det_flag_3_18;
  assign port_det_flag_24_19 = qx_mul_port_det_flag_3_19;
  assign port_det_flag_24_20 = qx_mul_port_det_flag_3_20;
  assign port_det_flag_24_21 = qx_mul_port_det_flag_3_21;
  assign port_det_flag_24_22 = qx_mul_port_det_flag_3_22;
  assign port_det_flag_24_23 = qx_mul_port_det_flag_3_23;
  assign port_det_flag_25_0 = qx_mul_port_det_flag_4_0;
  assign port_det_flag_25_1 = qx_mul_port_det_flag_4_1;
  assign port_det_flag_25_2 = qx_mul_port_det_flag_4_2;
  assign port_det_flag_25_3 = qx_mul_port_det_flag_4_3;
  assign port_det_flag_25_4 = qx_mul_port_det_flag_4_4;
  assign port_det_flag_25_5 = qx_mul_port_det_flag_4_5;
  assign port_det_flag_25_6 = qx_mul_port_det_flag_4_6;
  assign port_det_flag_25_7 = qx_mul_port_det_flag_4_7;
  assign port_det_flag_25_8 = qx_mul_port_det_flag_4_8;
  assign port_det_flag_25_9 = qx_mul_port_det_flag_4_9;
  assign port_det_flag_25_10 = qx_mul_port_det_flag_4_10;
  assign port_det_flag_25_11 = qx_mul_port_det_flag_4_11;
  assign port_det_flag_25_12 = qx_mul_port_det_flag_4_12;
  assign port_det_flag_25_13 = qx_mul_port_det_flag_4_13;
  assign port_det_flag_25_14 = qx_mul_port_det_flag_4_14;
  assign port_det_flag_25_15 = qx_mul_port_det_flag_4_15;
  assign port_det_flag_25_16 = qx_mul_port_det_flag_4_16;
  assign port_det_flag_25_17 = qx_mul_port_det_flag_4_17;
  assign port_det_flag_25_18 = qx_mul_port_det_flag_4_18;
  assign port_det_flag_25_19 = qx_mul_port_det_flag_4_19;
  assign port_det_flag_25_20 = qx_mul_port_det_flag_4_20;
  assign port_det_flag_25_21 = qx_mul_port_det_flag_4_21;
  assign port_det_flag_25_22 = qx_mul_port_det_flag_4_22;
  assign port_det_flag_25_23 = qx_mul_port_det_flag_4_23;
  assign port_det_flag_26_0 = qx_mul_port_det_flag_5_0;
  assign port_det_flag_26_1 = qx_mul_port_det_flag_5_1;
  assign port_det_flag_26_2 = qx_mul_port_det_flag_5_2;
  assign port_det_flag_26_3 = qx_mul_port_det_flag_5_3;
  assign port_det_flag_26_4 = qx_mul_port_det_flag_5_4;
  assign port_det_flag_26_5 = qx_mul_port_det_flag_5_5;
  assign port_det_flag_26_6 = qx_mul_port_det_flag_5_6;
  assign port_det_flag_26_7 = qx_mul_port_det_flag_5_7;
  assign port_det_flag_26_8 = qx_mul_port_det_flag_5_8;
  assign port_det_flag_26_9 = qx_mul_port_det_flag_5_9;
  assign port_det_flag_26_10 = qx_mul_port_det_flag_5_10;
  assign port_det_flag_26_11 = qx_mul_port_det_flag_5_11;
  assign port_det_flag_26_12 = qx_mul_port_det_flag_5_12;
  assign port_det_flag_26_13 = qx_mul_port_det_flag_5_13;
  assign port_det_flag_26_14 = qx_mul_port_det_flag_5_14;
  assign port_det_flag_26_15 = qx_mul_port_det_flag_5_15;
  assign port_det_flag_26_16 = qx_mul_port_det_flag_5_16;
  assign port_det_flag_26_17 = qx_mul_port_det_flag_5_17;
  assign port_det_flag_26_18 = qx_mul_port_det_flag_5_18;
  assign port_det_flag_26_19 = qx_mul_port_det_flag_5_19;
  assign port_det_flag_26_20 = qx_mul_port_det_flag_5_20;
  assign port_det_flag_26_21 = qx_mul_port_det_flag_5_21;
  assign port_det_flag_26_22 = qx_mul_port_det_flag_5_22;
  assign port_det_flag_26_23 = qx_mul_port_det_flag_5_23;
  assign port_o_0_0 = qx_0_0;
  assign port_o_0_1 = qx_0_1;
  assign port_o_0_2 = qx_0_2;
  assign port_o_0_3 = qx_0_3;
  assign port_o_0_4 = px_0_0;
  assign port_o_0_5 = px_0_1;
  assign port_o_0_6 = px_0_2;
  assign port_o_0_7 = px_0_3;
  assign port_o_1_0 = qx_1_0;
  assign port_o_1_1 = qx_1_1;
  assign port_o_1_2 = qx_1_2;
  assign port_o_1_3 = qx_1_3;
  assign port_o_1_4 = px_1_0;
  assign port_o_1_5 = px_1_1;
  assign port_o_1_6 = px_1_2;
  assign port_o_1_7 = px_1_3;
  assign port_o_2_0 = qx_2_0;
  assign port_o_2_1 = qx_2_1;
  assign port_o_2_2 = qx_2_2;
  assign port_o_2_3 = qx_2_3;
  assign port_o_2_4 = px_2_0;
  assign port_o_2_5 = px_2_1;
  assign port_o_2_6 = px_2_2;
  assign port_o_2_7 = px_2_3;
  always @(posedge clk) begin
    bx_reg_0_0_0 <= bx_0_0;
    bx_reg_0_0_1 <= bx_0_1;
    bx_reg_0_0_2 <= bx_0_2;
    bx_reg_0_0_3 <= bx_0_3;
    bx_reg_0_1_0 <= bx_1_0;
    bx_reg_0_1_1 <= bx_1_1;
    bx_reg_0_1_2 <= bx_1_2;
    bx_reg_0_1_3 <= bx_1_3;
    bx_reg_0_2_0 <= bx_2_0;
    bx_reg_0_2_1 <= bx_2_1;
    bx_reg_0_2_2 <= bx_2_2;
    bx_reg_0_2_3 <= bx_2_3;
    bx_reg_1_0_0 <= bx_reg_0_0_0;
    bx_reg_1_0_1 <= bx_reg_0_0_1;
    bx_reg_1_0_2 <= bx_reg_0_0_2;
    bx_reg_1_0_3 <= bx_reg_0_0_3;
    bx_reg_1_1_0 <= bx_reg_0_1_0;
    bx_reg_1_1_1 <= bx_reg_0_1_1;
    bx_reg_1_1_2 <= bx_reg_0_1_2;
    bx_reg_1_1_3 <= bx_reg_0_1_3;
    bx_reg_1_2_0 <= bx_reg_0_2_0;
    bx_reg_1_2_1 <= bx_reg_0_2_1;
    bx_reg_1_2_2 <= bx_reg_0_2_2;
    bx_reg_1_2_3 <= bx_reg_0_2_3;
    bx_reg_2_0_0 <= bx_reg_1_0_0;
    bx_reg_2_0_1 <= bx_reg_1_0_1;
    bx_reg_2_0_2 <= bx_reg_1_0_2;
    bx_reg_2_0_3 <= bx_reg_1_0_3;
    bx_reg_2_1_0 <= bx_reg_1_1_0;
    bx_reg_2_1_1 <= bx_reg_1_1_1;
    bx_reg_2_1_2 <= bx_reg_1_1_2;
    bx_reg_2_1_3 <= bx_reg_1_1_3;
    bx_reg_2_2_0 <= bx_reg_1_2_0;
    bx_reg_2_2_1 <= bx_reg_1_2_1;
    bx_reg_2_2_2 <= bx_reg_1_2_2;
    bx_reg_2_2_3 <= bx_reg_1_2_3;
    ax_reg_1_0_0 <= ax_0_0;
    ax_reg_1_0_1 <= ax_0_1;
    ax_reg_1_0_2 <= ax_0_2;
    ax_reg_1_0_3 <= ax_0_3;
    ax_reg_1_1_0 <= ax_1_0;
    ax_reg_1_1_1 <= ax_1_1;
    ax_reg_1_1_2 <= ax_1_2;
    ax_reg_1_1_3 <= ax_1_3;
    ax_reg_1_2_0 <= ax_2_0;
    ax_reg_1_2_1 <= ax_2_1;
    ax_reg_1_2_2 <= ax_2_2;
    ax_reg_1_2_3 <= ax_2_3;
    ax_reg_2_0_0 <= ax_reg_1_0_0;
    ax_reg_2_0_1 <= ax_reg_1_0_1;
    ax_reg_2_0_2 <= ax_reg_1_0_2;
    ax_reg_2_0_3 <= ax_reg_1_0_3;
    ax_reg_2_1_0 <= ax_reg_1_1_0;
    ax_reg_2_1_1 <= ax_reg_1_1_1;
    ax_reg_2_1_2 <= ax_reg_1_1_2;
    ax_reg_2_1_3 <= ax_reg_1_1_3;
    ax_reg_2_2_0 <= ax_reg_1_2_0;
    ax_reg_2_2_1 <= ax_reg_1_2_1;
    ax_reg_2_2_2 <= ax_reg_1_2_2;
    ax_reg_2_2_3 <= ax_reg_1_2_3;
    _zz_bx_reg_3_0_0 <= bx_reg_2_0_0;
    _zz_bx_reg_3_0_1 <= bx_reg_2_0_1;
    _zz_bx_reg_3_0_2 <= bx_reg_2_0_2;
    _zz_bx_reg_3_0_3 <= bx_reg_2_0_3;
    _zz_bx_reg_3_1_0 <= bx_reg_2_1_0;
    _zz_bx_reg_3_1_1 <= bx_reg_2_1_1;
    _zz_bx_reg_3_1_2 <= bx_reg_2_1_2;
    _zz_bx_reg_3_1_3 <= bx_reg_2_1_3;
    _zz_bx_reg_3_2_0 <= bx_reg_2_2_0;
    _zz_bx_reg_3_2_1 <= bx_reg_2_2_1;
    _zz_bx_reg_3_2_2 <= bx_reg_2_2_2;
    _zz_bx_reg_3_2_3 <= bx_reg_2_2_3;
    bx_reg_3_0_0 <= _zz_bx_reg_3_0_0;
    bx_reg_3_0_1 <= _zz_bx_reg_3_0_1;
    bx_reg_3_0_2 <= _zz_bx_reg_3_0_2;
    bx_reg_3_0_3 <= _zz_bx_reg_3_0_3;
    bx_reg_3_1_0 <= _zz_bx_reg_3_1_0;
    bx_reg_3_1_1 <= _zz_bx_reg_3_1_1;
    bx_reg_3_1_2 <= _zz_bx_reg_3_1_2;
    bx_reg_3_1_3 <= _zz_bx_reg_3_1_3;
    bx_reg_3_2_0 <= _zz_bx_reg_3_2_0;
    bx_reg_3_2_1 <= _zz_bx_reg_3_2_1;
    bx_reg_3_2_2 <= _zz_bx_reg_3_2_2;
    bx_reg_3_2_3 <= _zz_bx_reg_3_2_3;
    _zz_ax_reg_3_0_0 <= ax_reg_2_0_0;
    _zz_ax_reg_3_0_1 <= ax_reg_2_0_1;
    _zz_ax_reg_3_0_2 <= ax_reg_2_0_2;
    _zz_ax_reg_3_0_3 <= ax_reg_2_0_3;
    _zz_ax_reg_3_1_0 <= ax_reg_2_1_0;
    _zz_ax_reg_3_1_1 <= ax_reg_2_1_1;
    _zz_ax_reg_3_1_2 <= ax_reg_2_1_2;
    _zz_ax_reg_3_1_3 <= ax_reg_2_1_3;
    _zz_ax_reg_3_2_0 <= ax_reg_2_2_0;
    _zz_ax_reg_3_2_1 <= ax_reg_2_2_1;
    _zz_ax_reg_3_2_2 <= ax_reg_2_2_2;
    _zz_ax_reg_3_2_3 <= ax_reg_2_2_3;
    ax_reg_3_0_0 <= _zz_ax_reg_3_0_0;
    ax_reg_3_0_1 <= _zz_ax_reg_3_0_1;
    ax_reg_3_0_2 <= _zz_ax_reg_3_0_2;
    ax_reg_3_0_3 <= _zz_ax_reg_3_0_3;
    ax_reg_3_1_0 <= _zz_ax_reg_3_1_0;
    ax_reg_3_1_1 <= _zz_ax_reg_3_1_1;
    ax_reg_3_1_2 <= _zz_ax_reg_3_1_2;
    ax_reg_3_1_3 <= _zz_ax_reg_3_1_3;
    ax_reg_3_2_0 <= _zz_ax_reg_3_2_0;
    ax_reg_3_2_1 <= _zz_ax_reg_3_2_1;
    ax_reg_3_2_2 <= _zz_ax_reg_3_2_2;
    ax_reg_3_2_3 <= _zz_ax_reg_3_2_3;
  end


endmodule

module Shared_LinearMapping (
  input      [1:0]    port_i_0_0,
  input      [1:0]    port_i_0_1,
  input      [1:0]    port_i_0_2,
  input      [1:0]    port_i_0_3,
  input      [1:0]    port_i_0_4,
  input      [1:0]    port_i_0_5,
  input      [1:0]    port_i_0_6,
  input      [1:0]    port_i_0_7,
  input      [1:0]    port_i_1_0,
  input      [1:0]    port_i_1_1,
  input      [1:0]    port_i_1_2,
  input      [1:0]    port_i_1_3,
  input      [1:0]    port_i_1_4,
  input      [1:0]    port_i_1_5,
  input      [1:0]    port_i_1_6,
  input      [1:0]    port_i_1_7,
  input      [1:0]    port_i_2_0,
  input      [1:0]    port_i_2_1,
  input      [1:0]    port_i_2_2,
  input      [1:0]    port_i_2_3,
  input      [1:0]    port_i_2_4,
  input      [1:0]    port_i_2_5,
  input      [1:0]    port_i_2_6,
  input      [1:0]    port_i_2_7,
  output     [1:0]    port_o_0_0,
  output     [1:0]    port_o_0_1,
  output     [1:0]    port_o_0_2,
  output     [1:0]    port_o_0_3,
  output     [1:0]    port_o_0_4,
  output     [1:0]    port_o_0_5,
  output     [1:0]    port_o_0_6,
  output     [1:0]    port_o_0_7,
  output     [1:0]    port_o_1_0,
  output     [1:0]    port_o_1_1,
  output     [1:0]    port_o_1_2,
  output     [1:0]    port_o_1_3,
  output     [1:0]    port_o_1_4,
  output     [1:0]    port_o_1_5,
  output     [1:0]    port_o_1_6,
  output     [1:0]    port_o_1_7,
  output     [1:0]    port_o_2_0,
  output     [1:0]    port_o_2_1,
  output     [1:0]    port_o_2_2,
  output     [1:0]    port_o_2_3,
  output     [1:0]    port_o_2_4,
  output     [1:0]    port_o_2_5,
  output     [1:0]    port_o_2_6,
  output     [1:0]    port_o_2_7
);

  wire       [1:0]    outVal_0_0;
  wire       [1:0]    outVal_0_1;
  wire       [1:0]    outVal_0_2;
  wire       [1:0]    outVal_0_3;
  wire       [1:0]    outVal_0_4;
  wire       [1:0]    outVal_0_5;
  wire       [1:0]    outVal_0_6;
  wire       [1:0]    outVal_0_7;
  wire       [1:0]    outVal_1_0;
  wire       [1:0]    outVal_1_1;
  wire       [1:0]    outVal_1_2;
  wire       [1:0]    outVal_1_3;
  wire       [1:0]    outVal_1_4;
  wire       [1:0]    outVal_1_5;
  wire       [1:0]    outVal_1_6;
  wire       [1:0]    outVal_1_7;
  wire       [1:0]    outVal_2_0;
  wire       [1:0]    outVal_2_1;
  wire       [1:0]    outVal_2_2;
  wire       [1:0]    outVal_2_3;
  wire       [1:0]    outVal_2_4;
  wire       [1:0]    outVal_2_5;
  wire       [1:0]    outVal_2_6;
  wire       [1:0]    outVal_2_7;
  wire       [1:0]    rx1_0;
  wire       [1:0]    rx2_0;
  wire       [1:0]    rx3_0;
  wire       [1:0]    rx4_0;
  wire       [1:0]    rx5_0;
  wire       [1:0]    rx6_0;
  wire       [1:0]    rx7_0;
  wire       [1:0]    rx8_0;
  wire       [1:0]    rx9_0;
  wire       [1:0]    _zz_outVal_1_4;
  wire       [1:0]    _zz_outVal_1_0;
  wire       [1:0]    _zz_outVal_1_1;
  wire       [1:0]    _zz_outVal_1_0_1;
  wire       [1:0]    _zz_outVal_2_4;
  wire       [1:0]    _zz_outVal_2_0;
  wire       [1:0]    _zz_outVal_2_1;
  wire       [1:0]    _zz_outVal_2_0_1;

  assign rx1_0 = (port_i_0_7 ^ port_i_0_5);
  assign rx2_0 = (~ (port_i_0_7 ^ port_i_0_4));
  assign rx3_0 = (port_i_0_6 ^ port_i_0_0);
  assign rx4_0 = (~ (port_i_0_5 ^ rx3_0));
  assign rx5_0 = (port_i_0_4 ^ rx4_0);
  assign rx6_0 = (port_i_0_3 ^ port_i_0_0);
  assign rx7_0 = (port_i_0_2 ^ rx1_0);
  assign rx8_0 = (port_i_0_1 ^ rx3_0);
  assign rx9_0 = (port_i_0_3 ^ rx8_0);
  assign outVal_0_7 = (rx7_0 ^ rx8_0);
  assign outVal_0_6 = (~ rx5_0);
  assign outVal_0_5 = (~ (port_i_0_1 ^ rx4_0));
  assign outVal_0_4 = (rx1_0 ^ rx3_0);
  assign outVal_0_3 = (~ ((port_i_0_1 ^ rx2_0) ^ rx6_0));
  assign outVal_0_2 = port_i_0_0;
  assign outVal_0_1 = (~ rx4_0);
  assign outVal_0_0 = (port_i_0_2 ^ rx9_0);
  assign _zz_outVal_1_4 = (port_i_1_7 ^ port_i_1_5);
  assign _zz_outVal_1_0 = (port_i_1_6 ^ port_i_1_0);
  assign _zz_outVal_1_1 = (port_i_1_5 ^ _zz_outVal_1_0);
  assign _zz_outVal_1_0_1 = (port_i_1_1 ^ _zz_outVal_1_0);
  assign outVal_1_7 = ((port_i_1_2 ^ _zz_outVal_1_4) ^ _zz_outVal_1_0_1);
  assign outVal_1_6 = (port_i_1_4 ^ _zz_outVal_1_1);
  assign outVal_1_5 = (port_i_1_1 ^ _zz_outVal_1_1);
  assign outVal_1_4 = (_zz_outVal_1_4 ^ _zz_outVal_1_0);
  assign outVal_1_3 = ((port_i_1_1 ^ (port_i_1_7 ^ port_i_1_4)) ^ (port_i_1_3 ^ port_i_1_0));
  assign outVal_1_2 = port_i_1_0;
  assign outVal_1_1 = _zz_outVal_1_1;
  assign outVal_1_0 = (port_i_1_2 ^ (port_i_1_3 ^ _zz_outVal_1_0_1));
  assign _zz_outVal_2_4 = (port_i_2_7 ^ port_i_2_5);
  assign _zz_outVal_2_0 = (port_i_2_6 ^ port_i_2_0);
  assign _zz_outVal_2_1 = (port_i_2_5 ^ _zz_outVal_2_0);
  assign _zz_outVal_2_0_1 = (port_i_2_1 ^ _zz_outVal_2_0);
  assign outVal_2_7 = ((port_i_2_2 ^ _zz_outVal_2_4) ^ _zz_outVal_2_0_1);
  assign outVal_2_6 = (port_i_2_4 ^ _zz_outVal_2_1);
  assign outVal_2_5 = (port_i_2_1 ^ _zz_outVal_2_1);
  assign outVal_2_4 = (_zz_outVal_2_4 ^ _zz_outVal_2_0);
  assign outVal_2_3 = ((port_i_2_1 ^ (port_i_2_7 ^ port_i_2_4)) ^ (port_i_2_3 ^ port_i_2_0));
  assign outVal_2_2 = port_i_2_0;
  assign outVal_2_1 = _zz_outVal_2_1;
  assign outVal_2_0 = (port_i_2_2 ^ (port_i_2_3 ^ _zz_outVal_2_0_1));
  assign port_o_0_0 = outVal_0_0;
  assign port_o_0_1 = outVal_0_1;
  assign port_o_0_2 = outVal_0_2;
  assign port_o_0_3 = outVal_0_3;
  assign port_o_0_4 = outVal_0_4;
  assign port_o_0_5 = outVal_0_5;
  assign port_o_0_6 = outVal_0_6;
  assign port_o_0_7 = outVal_0_7;
  assign port_o_1_0 = outVal_1_0;
  assign port_o_1_1 = outVal_1_1;
  assign port_o_1_2 = outVal_1_2;
  assign port_o_1_3 = outVal_1_3;
  assign port_o_1_4 = outVal_1_4;
  assign port_o_1_5 = outVal_1_5;
  assign port_o_1_6 = outVal_1_6;
  assign port_o_1_7 = outVal_1_7;
  assign port_o_2_0 = outVal_2_0;
  assign port_o_2_1 = outVal_2_1;
  assign port_o_2_2 = outVal_2_2;
  assign port_o_2_3 = outVal_2_3;
  assign port_o_2_4 = outVal_2_4;
  assign port_o_2_5 = outVal_2_5;
  assign port_o_2_6 = outVal_2_6;
  assign port_o_2_7 = outVal_2_7;

endmodule

//Shared_GF_MULS_4 replaced by Shared_GF_MULS_4

//Shared_GF_MULS_4 replaced by Shared_GF_MULS_4

module Shared_GF_INV_4 (
  input      [1:0]    port_i_0_0,
  input      [1:0]    port_i_0_1,
  input      [1:0]    port_i_0_2,
  input      [1:0]    port_i_0_3,
  input      [1:0]    port_i_1_0,
  input      [1:0]    port_i_1_1,
  input      [1:0]    port_i_1_2,
  input      [1:0]    port_i_1_3,
  input      [1:0]    port_i_2_0,
  input      [1:0]    port_i_2_1,
  input      [1:0]    port_i_2_2,
  input      [1:0]    port_i_2_3,
  input               port_rand_0,
  input               port_rand_1,
  input               port_rand_2,
  input               port_rand_3,
  input               port_rand_4,
  input               port_rand_5,
  input               port_rand_6,
  input               port_rand_7,
  input               port_rand_8,
  input               port_rand_9,
  input               port_rand_10,
  input               port_rand_11,
  input               port_rand_12,
  input               port_rand_13,
  input               port_rand_14,
  input               port_rand_15,
  input               port_rand_16,
  input               port_rand_17,
  input               port_rand_18,
  input               port_rand_19,
  input               port_rand_20,
  input               port_rand_21,
  input               port_rand_22,
  input               port_rand_23,
  input               port_rand_24,
  input               port_rand_25,
  input               port_rand_26,
  input               port_rand_27,
  input               port_rand_28,
  input               port_rand_29,
  input               port_rand_30,
  input               port_rand_31,
  input               port_rand_32,
  input               port_rand_33,
  input               port_rand_34,
  input               port_rand_35,
  input               port_rand_36,
  input               port_rand_37,
  input               port_rand_38,
  input               port_rand_39,
  input               port_rand_40,
  input               port_rand_41,
  input               port_rand_42,
  input               port_rand_43,
  input               port_rand_44,
  input               port_rand_45,
  input               port_rand_46,
  input               port_rand_47,
  input               port_rand_48,
  input               port_rand_49,
  input               port_rand_50,
  input               port_rand_51,
  input               port_rand_52,
  input               port_rand_53,
  output     [1:0]    port_o_0_0,
  output     [1:0]    port_o_0_1,
  output     [1:0]    port_o_0_2,
  output     [1:0]    port_o_0_3,
  output     [1:0]    port_o_1_0,
  output     [1:0]    port_o_1_1,
  output     [1:0]    port_o_1_2,
  output     [1:0]    port_o_1_3,
  output     [1:0]    port_o_2_0,
  output     [1:0]    port_o_2_1,
  output     [1:0]    port_o_2_2,
  output     [1:0]    port_o_2_3,
  output              port_det_flag_0_0,
  output              port_det_flag_0_1,
  output              port_det_flag_0_2,
  output              port_det_flag_0_3,
  output              port_det_flag_0_4,
  output              port_det_flag_0_5,
  output              port_det_flag_0_6,
  output              port_det_flag_0_7,
  output              port_det_flag_0_8,
  output              port_det_flag_0_9,
  output              port_det_flag_0_10,
  output              port_det_flag_0_11,
  output              port_det_flag_0_12,
  output              port_det_flag_0_13,
  output              port_det_flag_0_14,
  output              port_det_flag_0_15,
  output              port_det_flag_0_16,
  output              port_det_flag_0_17,
  output              port_det_flag_0_18,
  output              port_det_flag_0_19,
  output              port_det_flag_0_20,
  output              port_det_flag_0_21,
  output              port_det_flag_0_22,
  output              port_det_flag_0_23,
  output              port_det_flag_1_0,
  output              port_det_flag_1_1,
  output              port_det_flag_1_2,
  output              port_det_flag_1_3,
  output              port_det_flag_1_4,
  output              port_det_flag_1_5,
  output              port_det_flag_1_6,
  output              port_det_flag_1_7,
  output              port_det_flag_1_8,
  output              port_det_flag_1_9,
  output              port_det_flag_1_10,
  output              port_det_flag_1_11,
  output              port_det_flag_1_12,
  output              port_det_flag_1_13,
  output              port_det_flag_1_14,
  output              port_det_flag_1_15,
  output              port_det_flag_1_16,
  output              port_det_flag_1_17,
  output              port_det_flag_1_18,
  output              port_det_flag_1_19,
  output              port_det_flag_1_20,
  output              port_det_flag_1_21,
  output              port_det_flag_1_22,
  output              port_det_flag_1_23,
  output              port_det_flag_2_0,
  output              port_det_flag_2_1,
  output              port_det_flag_2_2,
  output              port_det_flag_2_3,
  output              port_det_flag_2_4,
  output              port_det_flag_2_5,
  output              port_det_flag_2_6,
  output              port_det_flag_2_7,
  output              port_det_flag_2_8,
  output              port_det_flag_2_9,
  output              port_det_flag_2_10,
  output              port_det_flag_2_11,
  output              port_det_flag_2_12,
  output              port_det_flag_2_13,
  output              port_det_flag_2_14,
  output              port_det_flag_2_15,
  output              port_det_flag_2_16,
  output              port_det_flag_2_17,
  output              port_det_flag_2_18,
  output              port_det_flag_2_19,
  output              port_det_flag_2_20,
  output              port_det_flag_2_21,
  output              port_det_flag_2_22,
  output              port_det_flag_2_23,
  output              port_det_flag_3_0,
  output              port_det_flag_3_1,
  output              port_det_flag_3_2,
  output              port_det_flag_3_3,
  output              port_det_flag_3_4,
  output              port_det_flag_3_5,
  output              port_det_flag_3_6,
  output              port_det_flag_3_7,
  output              port_det_flag_3_8,
  output              port_det_flag_3_9,
  output              port_det_flag_3_10,
  output              port_det_flag_3_11,
  output              port_det_flag_3_12,
  output              port_det_flag_3_13,
  output              port_det_flag_3_14,
  output              port_det_flag_3_15,
  output              port_det_flag_3_16,
  output              port_det_flag_3_17,
  output              port_det_flag_3_18,
  output              port_det_flag_3_19,
  output              port_det_flag_3_20,
  output              port_det_flag_3_21,
  output              port_det_flag_3_22,
  output              port_det_flag_3_23,
  output              port_det_flag_4_0,
  output              port_det_flag_4_1,
  output              port_det_flag_4_2,
  output              port_det_flag_4_3,
  output              port_det_flag_4_4,
  output              port_det_flag_4_5,
  output              port_det_flag_4_6,
  output              port_det_flag_4_7,
  output              port_det_flag_4_8,
  output              port_det_flag_4_9,
  output              port_det_flag_4_10,
  output              port_det_flag_4_11,
  output              port_det_flag_4_12,
  output              port_det_flag_4_13,
  output              port_det_flag_4_14,
  output              port_det_flag_4_15,
  output              port_det_flag_4_16,
  output              port_det_flag_4_17,
  output              port_det_flag_4_18,
  output              port_det_flag_4_19,
  output              port_det_flag_4_20,
  output              port_det_flag_4_21,
  output              port_det_flag_4_22,
  output              port_det_flag_4_23,
  output              port_det_flag_5_0,
  output              port_det_flag_5_1,
  output              port_det_flag_5_2,
  output              port_det_flag_5_3,
  output              port_det_flag_5_4,
  output              port_det_flag_5_5,
  output              port_det_flag_5_6,
  output              port_det_flag_5_7,
  output              port_det_flag_5_8,
  output              port_det_flag_5_9,
  output              port_det_flag_5_10,
  output              port_det_flag_5_11,
  output              port_det_flag_5_12,
  output              port_det_flag_5_13,
  output              port_det_flag_5_14,
  output              port_det_flag_5_15,
  output              port_det_flag_5_16,
  output              port_det_flag_5_17,
  output              port_det_flag_5_18,
  output              port_det_flag_5_19,
  output              port_det_flag_5_20,
  output              port_det_flag_5_21,
  output              port_det_flag_5_22,
  output              port_det_flag_5_23,
  output              port_det_flag_6_0,
  output              port_det_flag_6_1,
  output              port_det_flag_6_2,
  output              port_det_flag_6_3,
  output              port_det_flag_6_4,
  output              port_det_flag_6_5,
  output              port_det_flag_6_6,
  output              port_det_flag_6_7,
  output              port_det_flag_6_8,
  output              port_det_flag_6_9,
  output              port_det_flag_6_10,
  output              port_det_flag_6_11,
  output              port_det_flag_6_12,
  output              port_det_flag_6_13,
  output              port_det_flag_6_14,
  output              port_det_flag_6_15,
  output              port_det_flag_6_16,
  output              port_det_flag_6_17,
  output              port_det_flag_6_18,
  output              port_det_flag_6_19,
  output              port_det_flag_6_20,
  output              port_det_flag_6_21,
  output              port_det_flag_6_22,
  output              port_det_flag_6_23,
  output              port_det_flag_7_0,
  output              port_det_flag_7_1,
  output              port_det_flag_7_2,
  output              port_det_flag_7_3,
  output              port_det_flag_7_4,
  output              port_det_flag_7_5,
  output              port_det_flag_7_6,
  output              port_det_flag_7_7,
  output              port_det_flag_7_8,
  output              port_det_flag_7_9,
  output              port_det_flag_7_10,
  output              port_det_flag_7_11,
  output              port_det_flag_7_12,
  output              port_det_flag_7_13,
  output              port_det_flag_7_14,
  output              port_det_flag_7_15,
  output              port_det_flag_7_16,
  output              port_det_flag_7_17,
  output              port_det_flag_7_18,
  output              port_det_flag_7_19,
  output              port_det_flag_7_20,
  output              port_det_flag_7_21,
  output              port_det_flag_7_22,
  output              port_det_flag_7_23,
  output              port_det_flag_8_0,
  output              port_det_flag_8_1,
  output              port_det_flag_8_2,
  output              port_det_flag_8_3,
  output              port_det_flag_8_4,
  output              port_det_flag_8_5,
  output              port_det_flag_8_6,
  output              port_det_flag_8_7,
  output              port_det_flag_8_8,
  output              port_det_flag_8_9,
  output              port_det_flag_8_10,
  output              port_det_flag_8_11,
  output              port_det_flag_8_12,
  output              port_det_flag_8_13,
  output              port_det_flag_8_14,
  output              port_det_flag_8_15,
  output              port_det_flag_8_16,
  output              port_det_flag_8_17,
  output              port_det_flag_8_18,
  output              port_det_flag_8_19,
  output              port_det_flag_8_20,
  output              port_det_flag_8_21,
  output              port_det_flag_8_22,
  output              port_det_flag_8_23,
  input               clk,
  input               reset
);

  wire       [1:0]    mul2_port_o_0_0;
  wire       [1:0]    mul2_port_o_0_1;
  wire       [1:0]    mul2_port_o_1_0;
  wire       [1:0]    mul2_port_o_1_1;
  wire       [1:0]    mul2_port_o_2_0;
  wire       [1:0]    mul2_port_o_2_1;
  wire                mul2_port_det_flag_0_0;
  wire                mul2_port_det_flag_0_1;
  wire                mul2_port_det_flag_0_2;
  wire                mul2_port_det_flag_0_3;
  wire                mul2_port_det_flag_0_4;
  wire                mul2_port_det_flag_0_5;
  wire                mul2_port_det_flag_0_6;
  wire                mul2_port_det_flag_0_7;
  wire                mul2_port_det_flag_0_8;
  wire                mul2_port_det_flag_0_9;
  wire                mul2_port_det_flag_0_10;
  wire                mul2_port_det_flag_0_11;
  wire                mul2_port_det_flag_0_12;
  wire                mul2_port_det_flag_0_13;
  wire                mul2_port_det_flag_0_14;
  wire                mul2_port_det_flag_0_15;
  wire                mul2_port_det_flag_0_16;
  wire                mul2_port_det_flag_0_17;
  wire                mul2_port_det_flag_0_18;
  wire                mul2_port_det_flag_0_19;
  wire                mul2_port_det_flag_0_20;
  wire                mul2_port_det_flag_0_21;
  wire                mul2_port_det_flag_0_22;
  wire                mul2_port_det_flag_0_23;
  wire                mul2_port_det_flag_1_0;
  wire                mul2_port_det_flag_1_1;
  wire                mul2_port_det_flag_1_2;
  wire                mul2_port_det_flag_1_3;
  wire                mul2_port_det_flag_1_4;
  wire                mul2_port_det_flag_1_5;
  wire                mul2_port_det_flag_1_6;
  wire                mul2_port_det_flag_1_7;
  wire                mul2_port_det_flag_1_8;
  wire                mul2_port_det_flag_1_9;
  wire                mul2_port_det_flag_1_10;
  wire                mul2_port_det_flag_1_11;
  wire                mul2_port_det_flag_1_12;
  wire                mul2_port_det_flag_1_13;
  wire                mul2_port_det_flag_1_14;
  wire                mul2_port_det_flag_1_15;
  wire                mul2_port_det_flag_1_16;
  wire                mul2_port_det_flag_1_17;
  wire                mul2_port_det_flag_1_18;
  wire                mul2_port_det_flag_1_19;
  wire                mul2_port_det_flag_1_20;
  wire                mul2_port_det_flag_1_21;
  wire                mul2_port_det_flag_1_22;
  wire                mul2_port_det_flag_1_23;
  wire                mul2_port_det_flag_2_0;
  wire                mul2_port_det_flag_2_1;
  wire                mul2_port_det_flag_2_2;
  wire                mul2_port_det_flag_2_3;
  wire                mul2_port_det_flag_2_4;
  wire                mul2_port_det_flag_2_5;
  wire                mul2_port_det_flag_2_6;
  wire                mul2_port_det_flag_2_7;
  wire                mul2_port_det_flag_2_8;
  wire                mul2_port_det_flag_2_9;
  wire                mul2_port_det_flag_2_10;
  wire                mul2_port_det_flag_2_11;
  wire                mul2_port_det_flag_2_12;
  wire                mul2_port_det_flag_2_13;
  wire                mul2_port_det_flag_2_14;
  wire                mul2_port_det_flag_2_15;
  wire                mul2_port_det_flag_2_16;
  wire                mul2_port_det_flag_2_17;
  wire                mul2_port_det_flag_2_18;
  wire                mul2_port_det_flag_2_19;
  wire                mul2_port_det_flag_2_20;
  wire                mul2_port_det_flag_2_21;
  wire                mul2_port_det_flag_2_22;
  wire                mul2_port_det_flag_2_23;
  wire       [1:0]    sq_port_o_0_0;
  wire       [1:0]    sq_port_o_0_1;
  wire       [1:0]    sq_port_o_1_0;
  wire       [1:0]    sq_port_o_1_1;
  wire       [1:0]    sq_port_o_2_0;
  wire       [1:0]    sq_port_o_2_1;
  wire       [1:0]    sc_port_o_0_0;
  wire       [1:0]    sc_port_o_0_1;
  wire       [1:0]    sc_port_o_1_0;
  wire       [1:0]    sc_port_o_1_1;
  wire       [1:0]    sc_port_o_2_0;
  wire       [1:0]    sc_port_o_2_1;
  wire       [1:0]    dx_inv_port_o_0_0;
  wire       [1:0]    dx_inv_port_o_0_1;
  wire       [1:0]    dx_inv_port_o_1_0;
  wire       [1:0]    dx_inv_port_o_1_1;
  wire       [1:0]    dx_inv_port_o_2_0;
  wire       [1:0]    dx_inv_port_o_2_1;
  wire       [1:0]    px_mul_port_o_0_0;
  wire       [1:0]    px_mul_port_o_0_1;
  wire       [1:0]    px_mul_port_o_1_0;
  wire       [1:0]    px_mul_port_o_1_1;
  wire       [1:0]    px_mul_port_o_2_0;
  wire       [1:0]    px_mul_port_o_2_1;
  wire                px_mul_port_det_flag_0_0;
  wire                px_mul_port_det_flag_0_1;
  wire                px_mul_port_det_flag_0_2;
  wire                px_mul_port_det_flag_0_3;
  wire                px_mul_port_det_flag_0_4;
  wire                px_mul_port_det_flag_0_5;
  wire                px_mul_port_det_flag_0_6;
  wire                px_mul_port_det_flag_0_7;
  wire                px_mul_port_det_flag_0_8;
  wire                px_mul_port_det_flag_0_9;
  wire                px_mul_port_det_flag_0_10;
  wire                px_mul_port_det_flag_0_11;
  wire                px_mul_port_det_flag_0_12;
  wire                px_mul_port_det_flag_0_13;
  wire                px_mul_port_det_flag_0_14;
  wire                px_mul_port_det_flag_0_15;
  wire                px_mul_port_det_flag_0_16;
  wire                px_mul_port_det_flag_0_17;
  wire                px_mul_port_det_flag_0_18;
  wire                px_mul_port_det_flag_0_19;
  wire                px_mul_port_det_flag_0_20;
  wire                px_mul_port_det_flag_0_21;
  wire                px_mul_port_det_flag_0_22;
  wire                px_mul_port_det_flag_0_23;
  wire                px_mul_port_det_flag_1_0;
  wire                px_mul_port_det_flag_1_1;
  wire                px_mul_port_det_flag_1_2;
  wire                px_mul_port_det_flag_1_3;
  wire                px_mul_port_det_flag_1_4;
  wire                px_mul_port_det_flag_1_5;
  wire                px_mul_port_det_flag_1_6;
  wire                px_mul_port_det_flag_1_7;
  wire                px_mul_port_det_flag_1_8;
  wire                px_mul_port_det_flag_1_9;
  wire                px_mul_port_det_flag_1_10;
  wire                px_mul_port_det_flag_1_11;
  wire                px_mul_port_det_flag_1_12;
  wire                px_mul_port_det_flag_1_13;
  wire                px_mul_port_det_flag_1_14;
  wire                px_mul_port_det_flag_1_15;
  wire                px_mul_port_det_flag_1_16;
  wire                px_mul_port_det_flag_1_17;
  wire                px_mul_port_det_flag_1_18;
  wire                px_mul_port_det_flag_1_19;
  wire                px_mul_port_det_flag_1_20;
  wire                px_mul_port_det_flag_1_21;
  wire                px_mul_port_det_flag_1_22;
  wire                px_mul_port_det_flag_1_23;
  wire                px_mul_port_det_flag_2_0;
  wire                px_mul_port_det_flag_2_1;
  wire                px_mul_port_det_flag_2_2;
  wire                px_mul_port_det_flag_2_3;
  wire                px_mul_port_det_flag_2_4;
  wire                px_mul_port_det_flag_2_5;
  wire                px_mul_port_det_flag_2_6;
  wire                px_mul_port_det_flag_2_7;
  wire                px_mul_port_det_flag_2_8;
  wire                px_mul_port_det_flag_2_9;
  wire                px_mul_port_det_flag_2_10;
  wire                px_mul_port_det_flag_2_11;
  wire                px_mul_port_det_flag_2_12;
  wire                px_mul_port_det_flag_2_13;
  wire                px_mul_port_det_flag_2_14;
  wire                px_mul_port_det_flag_2_15;
  wire                px_mul_port_det_flag_2_16;
  wire                px_mul_port_det_flag_2_17;
  wire                px_mul_port_det_flag_2_18;
  wire                px_mul_port_det_flag_2_19;
  wire                px_mul_port_det_flag_2_20;
  wire                px_mul_port_det_flag_2_21;
  wire                px_mul_port_det_flag_2_22;
  wire                px_mul_port_det_flag_2_23;
  wire       [1:0]    qx_mul_port_o_0_0;
  wire       [1:0]    qx_mul_port_o_0_1;
  wire       [1:0]    qx_mul_port_o_1_0;
  wire       [1:0]    qx_mul_port_o_1_1;
  wire       [1:0]    qx_mul_port_o_2_0;
  wire       [1:0]    qx_mul_port_o_2_1;
  wire                qx_mul_port_det_flag_0_0;
  wire                qx_mul_port_det_flag_0_1;
  wire                qx_mul_port_det_flag_0_2;
  wire                qx_mul_port_det_flag_0_3;
  wire                qx_mul_port_det_flag_0_4;
  wire                qx_mul_port_det_flag_0_5;
  wire                qx_mul_port_det_flag_0_6;
  wire                qx_mul_port_det_flag_0_7;
  wire                qx_mul_port_det_flag_0_8;
  wire                qx_mul_port_det_flag_0_9;
  wire                qx_mul_port_det_flag_0_10;
  wire                qx_mul_port_det_flag_0_11;
  wire                qx_mul_port_det_flag_0_12;
  wire                qx_mul_port_det_flag_0_13;
  wire                qx_mul_port_det_flag_0_14;
  wire                qx_mul_port_det_flag_0_15;
  wire                qx_mul_port_det_flag_0_16;
  wire                qx_mul_port_det_flag_0_17;
  wire                qx_mul_port_det_flag_0_18;
  wire                qx_mul_port_det_flag_0_19;
  wire                qx_mul_port_det_flag_0_20;
  wire                qx_mul_port_det_flag_0_21;
  wire                qx_mul_port_det_flag_0_22;
  wire                qx_mul_port_det_flag_0_23;
  wire                qx_mul_port_det_flag_1_0;
  wire                qx_mul_port_det_flag_1_1;
  wire                qx_mul_port_det_flag_1_2;
  wire                qx_mul_port_det_flag_1_3;
  wire                qx_mul_port_det_flag_1_4;
  wire                qx_mul_port_det_flag_1_5;
  wire                qx_mul_port_det_flag_1_6;
  wire                qx_mul_port_det_flag_1_7;
  wire                qx_mul_port_det_flag_1_8;
  wire                qx_mul_port_det_flag_1_9;
  wire                qx_mul_port_det_flag_1_10;
  wire                qx_mul_port_det_flag_1_11;
  wire                qx_mul_port_det_flag_1_12;
  wire                qx_mul_port_det_flag_1_13;
  wire                qx_mul_port_det_flag_1_14;
  wire                qx_mul_port_det_flag_1_15;
  wire                qx_mul_port_det_flag_1_16;
  wire                qx_mul_port_det_flag_1_17;
  wire                qx_mul_port_det_flag_1_18;
  wire                qx_mul_port_det_flag_1_19;
  wire                qx_mul_port_det_flag_1_20;
  wire                qx_mul_port_det_flag_1_21;
  wire                qx_mul_port_det_flag_1_22;
  wire                qx_mul_port_det_flag_1_23;
  wire                qx_mul_port_det_flag_2_0;
  wire                qx_mul_port_det_flag_2_1;
  wire                qx_mul_port_det_flag_2_2;
  wire                qx_mul_port_det_flag_2_3;
  wire                qx_mul_port_det_flag_2_4;
  wire                qx_mul_port_det_flag_2_5;
  wire                qx_mul_port_det_flag_2_6;
  wire                qx_mul_port_det_flag_2_7;
  wire                qx_mul_port_det_flag_2_8;
  wire                qx_mul_port_det_flag_2_9;
  wire                qx_mul_port_det_flag_2_10;
  wire                qx_mul_port_det_flag_2_11;
  wire                qx_mul_port_det_flag_2_12;
  wire                qx_mul_port_det_flag_2_13;
  wire                qx_mul_port_det_flag_2_14;
  wire                qx_mul_port_det_flag_2_15;
  wire                qx_mul_port_det_flag_2_16;
  wire                qx_mul_port_det_flag_2_17;
  wire                qx_mul_port_det_flag_2_18;
  wire                qx_mul_port_det_flag_2_19;
  wire                qx_mul_port_det_flag_2_20;
  wire                qx_mul_port_det_flag_2_21;
  wire                qx_mul_port_det_flag_2_22;
  wire                qx_mul_port_det_flag_2_23;
  wire       [1:0]    ax_0_0;
  wire       [1:0]    ax_0_1;
  wire       [1:0]    ax_1_0;
  wire       [1:0]    ax_1_1;
  wire       [1:0]    ax_2_0;
  wire       [1:0]    ax_2_1;
  wire       [1:0]    bx_0_0;
  wire       [1:0]    bx_0_1;
  wire       [1:0]    bx_1_0;
  wire       [1:0]    bx_1_1;
  wire       [1:0]    bx_2_0;
  wire       [1:0]    bx_2_1;
  wire       [1:0]    sax_0;
  wire       [1:0]    sax_1;
  wire       [1:0]    sax_2;
  wire       [1:0]    sbx_0;
  wire       [1:0]    sbx_1;
  wire       [1:0]    sbx_2;
  wire       [1:0]    cx_0_0;
  wire       [1:0]    cx_0_1;
  wire       [1:0]    cx_1_0;
  wire       [1:0]    cx_1_1;
  wire       [1:0]    cx_2_0;
  wire       [1:0]    cx_2_1;
  wire       [1:0]    dx_0_0;
  wire       [1:0]    dx_0_1;
  wire       [1:0]    dx_1_0;
  wire       [1:0]    dx_1_1;
  wire       [1:0]    dx_2_0;
  wire       [1:0]    dx_2_1;
  wire       [1:0]    sdx_0;
  wire       [1:0]    sdx_1;
  wire       [1:0]    sdx_2;
  wire       [1:0]    px_0_0;
  wire       [1:0]    px_0_1;
  wire       [1:0]    px_1_0;
  wire       [1:0]    px_1_1;
  wire       [1:0]    px_2_0;
  wire       [1:0]    px_2_1;
  wire       [1:0]    qx_0_0;
  wire       [1:0]    qx_0_1;
  wire       [1:0]    qx_1_0;
  wire       [1:0]    qx_1_1;
  wire       [1:0]    qx_2_0;
  wire       [1:0]    qx_2_1;
  wire                r0_0;
  wire                r0_1;
  wire                r0_2;
  wire                r0_3;
  wire                r0_4;
  wire                r0_5;
  wire                r0_6;
  wire                r0_7;
  wire                r0_8;
  wire                r0_9;
  wire                r0_10;
  wire                r0_11;
  wire                r0_12;
  wire                r0_13;
  wire                r0_14;
  wire                r0_15;
  wire                r0_16;
  wire                r0_17;
  wire                r1_0;
  wire                r1_1;
  wire                r1_2;
  wire                r1_3;
  wire                r1_4;
  wire                r1_5;
  wire                r1_6;
  wire                r1_7;
  wire                r1_8;
  wire                r1_9;
  wire                r1_10;
  wire                r1_11;
  wire                r1_12;
  wire                r1_13;
  wire                r1_14;
  wire                r1_15;
  wire                r1_16;
  wire                r1_17;
  wire                r2_0;
  wire                r2_1;
  wire                r2_2;
  wire                r2_3;
  wire                r2_4;
  wire                r2_5;
  wire                r2_6;
  wire                r2_7;
  wire                r2_8;
  wire                r2_9;
  wire                r2_10;
  wire                r2_11;
  wire                r2_12;
  wire                r2_13;
  wire                r2_14;
  wire                r2_15;
  wire                r2_16;
  wire                r2_17;
  wire       [1:0]    sq_in_0_0;
  wire       [1:0]    sq_in_0_1;
  wire       [1:0]    sq_in_1_0;
  wire       [1:0]    sq_in_1_1;
  wire       [1:0]    sq_in_2_0;
  wire       [1:0]    sq_in_2_1;
  reg        [1:0]    reg_bx_0_0;
  reg        [1:0]    reg_bx_0_1;
  reg        [1:0]    reg_bx_1_0;
  reg        [1:0]    reg_bx_1_1;
  reg        [1:0]    reg_bx_2_0;
  reg        [1:0]    reg_bx_2_1;
  reg        [1:0]    reg_sbx_0;
  reg        [1:0]    reg_sbx_1;
  reg        [1:0]    reg_sbx_2;

  Shared_GF_MULS_2 mul2 (
    .port_a_0_0         (ax_0_0[1:0]            ), //i
    .port_a_0_1         (ax_0_1[1:0]            ), //i
    .port_a_1_0         (ax_1_0[1:0]            ), //i
    .port_a_1_1         (ax_1_1[1:0]            ), //i
    .port_a_2_0         (ax_2_0[1:0]            ), //i
    .port_a_2_1         (ax_2_1[1:0]            ), //i
    .port_ab_0          (sax_0[1:0]             ), //i
    .port_ab_1          (sax_1[1:0]             ), //i
    .port_ab_2          (sax_2[1:0]             ), //i
    .port_b_0_0         (bx_0_0[1:0]            ), //i
    .port_b_0_1         (bx_0_1[1:0]            ), //i
    .port_b_1_0         (bx_1_0[1:0]            ), //i
    .port_b_1_1         (bx_1_1[1:0]            ), //i
    .port_b_2_0         (bx_2_0[1:0]            ), //i
    .port_b_2_1         (bx_2_1[1:0]            ), //i
    .port_cd_0          (sbx_0[1:0]             ), //i
    .port_cd_1          (sbx_1[1:0]             ), //i
    .port_cd_2          (sbx_2[1:0]             ), //i
    .port_rand_0        (r0_0                   ), //i
    .port_rand_1        (r0_1                   ), //i
    .port_rand_2        (r0_2                   ), //i
    .port_rand_3        (r0_3                   ), //i
    .port_rand_4        (r0_4                   ), //i
    .port_rand_5        (r0_5                   ), //i
    .port_rand_6        (r0_6                   ), //i
    .port_rand_7        (r0_7                   ), //i
    .port_rand_8        (r0_8                   ), //i
    .port_rand_9        (r0_9                   ), //i
    .port_rand_10       (r0_10                  ), //i
    .port_rand_11       (r0_11                  ), //i
    .port_rand_12       (r0_12                  ), //i
    .port_rand_13       (r0_13                  ), //i
    .port_rand_14       (r0_14                  ), //i
    .port_rand_15       (r0_15                  ), //i
    .port_rand_16       (r0_16                  ), //i
    .port_rand_17       (r0_17                  ), //i
    .port_o_0_0         (mul2_port_o_0_0[1:0]   ), //o
    .port_o_0_1         (mul2_port_o_0_1[1:0]   ), //o
    .port_o_1_0         (mul2_port_o_1_0[1:0]   ), //o
    .port_o_1_1         (mul2_port_o_1_1[1:0]   ), //o
    .port_o_2_0         (mul2_port_o_2_0[1:0]   ), //o
    .port_o_2_1         (mul2_port_o_2_1[1:0]   ), //o
    .port_det_flag_0_0  (mul2_port_det_flag_0_0 ), //o
    .port_det_flag_0_1  (mul2_port_det_flag_0_1 ), //o
    .port_det_flag_0_2  (mul2_port_det_flag_0_2 ), //o
    .port_det_flag_0_3  (mul2_port_det_flag_0_3 ), //o
    .port_det_flag_0_4  (mul2_port_det_flag_0_4 ), //o
    .port_det_flag_0_5  (mul2_port_det_flag_0_5 ), //o
    .port_det_flag_0_6  (mul2_port_det_flag_0_6 ), //o
    .port_det_flag_0_7  (mul2_port_det_flag_0_7 ), //o
    .port_det_flag_0_8  (mul2_port_det_flag_0_8 ), //o
    .port_det_flag_0_9  (mul2_port_det_flag_0_9 ), //o
    .port_det_flag_0_10 (mul2_port_det_flag_0_10), //o
    .port_det_flag_0_11 (mul2_port_det_flag_0_11), //o
    .port_det_flag_0_12 (mul2_port_det_flag_0_12), //o
    .port_det_flag_0_13 (mul2_port_det_flag_0_13), //o
    .port_det_flag_0_14 (mul2_port_det_flag_0_14), //o
    .port_det_flag_0_15 (mul2_port_det_flag_0_15), //o
    .port_det_flag_0_16 (mul2_port_det_flag_0_16), //o
    .port_det_flag_0_17 (mul2_port_det_flag_0_17), //o
    .port_det_flag_0_18 (mul2_port_det_flag_0_18), //o
    .port_det_flag_0_19 (mul2_port_det_flag_0_19), //o
    .port_det_flag_0_20 (mul2_port_det_flag_0_20), //o
    .port_det_flag_0_21 (mul2_port_det_flag_0_21), //o
    .port_det_flag_0_22 (mul2_port_det_flag_0_22), //o
    .port_det_flag_0_23 (mul2_port_det_flag_0_23), //o
    .port_det_flag_1_0  (mul2_port_det_flag_1_0 ), //o
    .port_det_flag_1_1  (mul2_port_det_flag_1_1 ), //o
    .port_det_flag_1_2  (mul2_port_det_flag_1_2 ), //o
    .port_det_flag_1_3  (mul2_port_det_flag_1_3 ), //o
    .port_det_flag_1_4  (mul2_port_det_flag_1_4 ), //o
    .port_det_flag_1_5  (mul2_port_det_flag_1_5 ), //o
    .port_det_flag_1_6  (mul2_port_det_flag_1_6 ), //o
    .port_det_flag_1_7  (mul2_port_det_flag_1_7 ), //o
    .port_det_flag_1_8  (mul2_port_det_flag_1_8 ), //o
    .port_det_flag_1_9  (mul2_port_det_flag_1_9 ), //o
    .port_det_flag_1_10 (mul2_port_det_flag_1_10), //o
    .port_det_flag_1_11 (mul2_port_det_flag_1_11), //o
    .port_det_flag_1_12 (mul2_port_det_flag_1_12), //o
    .port_det_flag_1_13 (mul2_port_det_flag_1_13), //o
    .port_det_flag_1_14 (mul2_port_det_flag_1_14), //o
    .port_det_flag_1_15 (mul2_port_det_flag_1_15), //o
    .port_det_flag_1_16 (mul2_port_det_flag_1_16), //o
    .port_det_flag_1_17 (mul2_port_det_flag_1_17), //o
    .port_det_flag_1_18 (mul2_port_det_flag_1_18), //o
    .port_det_flag_1_19 (mul2_port_det_flag_1_19), //o
    .port_det_flag_1_20 (mul2_port_det_flag_1_20), //o
    .port_det_flag_1_21 (mul2_port_det_flag_1_21), //o
    .port_det_flag_1_22 (mul2_port_det_flag_1_22), //o
    .port_det_flag_1_23 (mul2_port_det_flag_1_23), //o
    .port_det_flag_2_0  (mul2_port_det_flag_2_0 ), //o
    .port_det_flag_2_1  (mul2_port_det_flag_2_1 ), //o
    .port_det_flag_2_2  (mul2_port_det_flag_2_2 ), //o
    .port_det_flag_2_3  (mul2_port_det_flag_2_3 ), //o
    .port_det_flag_2_4  (mul2_port_det_flag_2_4 ), //o
    .port_det_flag_2_5  (mul2_port_det_flag_2_5 ), //o
    .port_det_flag_2_6  (mul2_port_det_flag_2_6 ), //o
    .port_det_flag_2_7  (mul2_port_det_flag_2_7 ), //o
    .port_det_flag_2_8  (mul2_port_det_flag_2_8 ), //o
    .port_det_flag_2_9  (mul2_port_det_flag_2_9 ), //o
    .port_det_flag_2_10 (mul2_port_det_flag_2_10), //o
    .port_det_flag_2_11 (mul2_port_det_flag_2_11), //o
    .port_det_flag_2_12 (mul2_port_det_flag_2_12), //o
    .port_det_flag_2_13 (mul2_port_det_flag_2_13), //o
    .port_det_flag_2_14 (mul2_port_det_flag_2_14), //o
    .port_det_flag_2_15 (mul2_port_det_flag_2_15), //o
    .port_det_flag_2_16 (mul2_port_det_flag_2_16), //o
    .port_det_flag_2_17 (mul2_port_det_flag_2_17), //o
    .port_det_flag_2_18 (mul2_port_det_flag_2_18), //o
    .port_det_flag_2_19 (mul2_port_det_flag_2_19), //o
    .port_det_flag_2_20 (mul2_port_det_flag_2_20), //o
    .port_det_flag_2_21 (mul2_port_det_flag_2_21), //o
    .port_det_flag_2_22 (mul2_port_det_flag_2_22), //o
    .port_det_flag_2_23 (mul2_port_det_flag_2_23), //o
    .clk                (clk                    ), //i
    .reset              (reset                  )  //i
  );
  Shared_GF_SQ_2 sq (
    .port_i_0_0 (sq_in_0_0[1:0]    ), //i
    .port_i_0_1 (sq_in_0_1[1:0]    ), //i
    .port_i_1_0 (sq_in_1_0[1:0]    ), //i
    .port_i_1_1 (sq_in_1_1[1:0]    ), //i
    .port_i_2_0 (sq_in_2_0[1:0]    ), //i
    .port_i_2_1 (sq_in_2_1[1:0]    ), //i
    .port_o_0_0 (sq_port_o_0_0[1:0]), //o
    .port_o_0_1 (sq_port_o_0_1[1:0]), //o
    .port_o_1_0 (sq_port_o_1_0[1:0]), //o
    .port_o_1_1 (sq_port_o_1_1[1:0]), //o
    .port_o_2_0 (sq_port_o_2_0[1:0]), //o
    .port_o_2_1 (sq_port_o_2_1[1:0])  //o
  );
  Shared_GF_SCLW2_2 sc (
    .port_i_0_0 (sq_port_o_0_0[1:0]), //i
    .port_i_0_1 (sq_port_o_0_1[1:0]), //i
    .port_i_1_0 (sq_port_o_1_0[1:0]), //i
    .port_i_1_1 (sq_port_o_1_1[1:0]), //i
    .port_i_2_0 (sq_port_o_2_0[1:0]), //i
    .port_i_2_1 (sq_port_o_2_1[1:0]), //i
    .port_o_0_0 (sc_port_o_0_0[1:0]), //o
    .port_o_0_1 (sc_port_o_0_1[1:0]), //o
    .port_o_1_0 (sc_port_o_1_0[1:0]), //o
    .port_o_1_1 (sc_port_o_1_1[1:0]), //o
    .port_o_2_0 (sc_port_o_2_0[1:0]), //o
    .port_o_2_1 (sc_port_o_2_1[1:0])  //o
  );
  Shared_GF_SQ_2 dx_inv (
    .port_i_0_0 (cx_0_0[1:0]           ), //i
    .port_i_0_1 (cx_0_1[1:0]           ), //i
    .port_i_1_0 (cx_1_0[1:0]           ), //i
    .port_i_1_1 (cx_1_1[1:0]           ), //i
    .port_i_2_0 (cx_2_0[1:0]           ), //i
    .port_i_2_1 (cx_2_1[1:0]           ), //i
    .port_o_0_0 (dx_inv_port_o_0_0[1:0]), //o
    .port_o_0_1 (dx_inv_port_o_0_1[1:0]), //o
    .port_o_1_0 (dx_inv_port_o_1_0[1:0]), //o
    .port_o_1_1 (dx_inv_port_o_1_1[1:0]), //o
    .port_o_2_0 (dx_inv_port_o_2_0[1:0]), //o
    .port_o_2_1 (dx_inv_port_o_2_1[1:0])  //o
  );
  Shared_GF_MULS_2 px_mul (
    .port_a_0_0         (dx_0_0[1:0]              ), //i
    .port_a_0_1         (dx_0_1[1:0]              ), //i
    .port_a_1_0         (dx_1_0[1:0]              ), //i
    .port_a_1_1         (dx_1_1[1:0]              ), //i
    .port_a_2_0         (dx_2_0[1:0]              ), //i
    .port_a_2_1         (dx_2_1[1:0]              ), //i
    .port_ab_0          (sdx_0[1:0]               ), //i
    .port_ab_1          (sdx_1[1:0]               ), //i
    .port_ab_2          (sdx_2[1:0]               ), //i
    .port_b_0_0         (reg_bx_0_0[1:0]          ), //i
    .port_b_0_1         (reg_bx_0_1[1:0]          ), //i
    .port_b_1_0         (reg_bx_1_0[1:0]          ), //i
    .port_b_1_1         (reg_bx_1_1[1:0]          ), //i
    .port_b_2_0         (reg_bx_2_0[1:0]          ), //i
    .port_b_2_1         (reg_bx_2_1[1:0]          ), //i
    .port_cd_0          (reg_sbx_0[1:0]           ), //i
    .port_cd_1          (reg_sbx_1[1:0]           ), //i
    .port_cd_2          (reg_sbx_2[1:0]           ), //i
    .port_rand_0        (r1_0                     ), //i
    .port_rand_1        (r1_1                     ), //i
    .port_rand_2        (r1_2                     ), //i
    .port_rand_3        (r1_3                     ), //i
    .port_rand_4        (r1_4                     ), //i
    .port_rand_5        (r1_5                     ), //i
    .port_rand_6        (r1_6                     ), //i
    .port_rand_7        (r1_7                     ), //i
    .port_rand_8        (r1_8                     ), //i
    .port_rand_9        (r1_9                     ), //i
    .port_rand_10       (r1_10                    ), //i
    .port_rand_11       (r1_11                    ), //i
    .port_rand_12       (r1_12                    ), //i
    .port_rand_13       (r1_13                    ), //i
    .port_rand_14       (r1_14                    ), //i
    .port_rand_15       (r1_15                    ), //i
    .port_rand_16       (r1_16                    ), //i
    .port_rand_17       (r1_17                    ), //i
    .port_o_0_0         (px_mul_port_o_0_0[1:0]   ), //o
    .port_o_0_1         (px_mul_port_o_0_1[1:0]   ), //o
    .port_o_1_0         (px_mul_port_o_1_0[1:0]   ), //o
    .port_o_1_1         (px_mul_port_o_1_1[1:0]   ), //o
    .port_o_2_0         (px_mul_port_o_2_0[1:0]   ), //o
    .port_o_2_1         (px_mul_port_o_2_1[1:0]   ), //o
    .port_det_flag_0_0  (px_mul_port_det_flag_0_0 ), //o
    .port_det_flag_0_1  (px_mul_port_det_flag_0_1 ), //o
    .port_det_flag_0_2  (px_mul_port_det_flag_0_2 ), //o
    .port_det_flag_0_3  (px_mul_port_det_flag_0_3 ), //o
    .port_det_flag_0_4  (px_mul_port_det_flag_0_4 ), //o
    .port_det_flag_0_5  (px_mul_port_det_flag_0_5 ), //o
    .port_det_flag_0_6  (px_mul_port_det_flag_0_6 ), //o
    .port_det_flag_0_7  (px_mul_port_det_flag_0_7 ), //o
    .port_det_flag_0_8  (px_mul_port_det_flag_0_8 ), //o
    .port_det_flag_0_9  (px_mul_port_det_flag_0_9 ), //o
    .port_det_flag_0_10 (px_mul_port_det_flag_0_10), //o
    .port_det_flag_0_11 (px_mul_port_det_flag_0_11), //o
    .port_det_flag_0_12 (px_mul_port_det_flag_0_12), //o
    .port_det_flag_0_13 (px_mul_port_det_flag_0_13), //o
    .port_det_flag_0_14 (px_mul_port_det_flag_0_14), //o
    .port_det_flag_0_15 (px_mul_port_det_flag_0_15), //o
    .port_det_flag_0_16 (px_mul_port_det_flag_0_16), //o
    .port_det_flag_0_17 (px_mul_port_det_flag_0_17), //o
    .port_det_flag_0_18 (px_mul_port_det_flag_0_18), //o
    .port_det_flag_0_19 (px_mul_port_det_flag_0_19), //o
    .port_det_flag_0_20 (px_mul_port_det_flag_0_20), //o
    .port_det_flag_0_21 (px_mul_port_det_flag_0_21), //o
    .port_det_flag_0_22 (px_mul_port_det_flag_0_22), //o
    .port_det_flag_0_23 (px_mul_port_det_flag_0_23), //o
    .port_det_flag_1_0  (px_mul_port_det_flag_1_0 ), //o
    .port_det_flag_1_1  (px_mul_port_det_flag_1_1 ), //o
    .port_det_flag_1_2  (px_mul_port_det_flag_1_2 ), //o
    .port_det_flag_1_3  (px_mul_port_det_flag_1_3 ), //o
    .port_det_flag_1_4  (px_mul_port_det_flag_1_4 ), //o
    .port_det_flag_1_5  (px_mul_port_det_flag_1_5 ), //o
    .port_det_flag_1_6  (px_mul_port_det_flag_1_6 ), //o
    .port_det_flag_1_7  (px_mul_port_det_flag_1_7 ), //o
    .port_det_flag_1_8  (px_mul_port_det_flag_1_8 ), //o
    .port_det_flag_1_9  (px_mul_port_det_flag_1_9 ), //o
    .port_det_flag_1_10 (px_mul_port_det_flag_1_10), //o
    .port_det_flag_1_11 (px_mul_port_det_flag_1_11), //o
    .port_det_flag_1_12 (px_mul_port_det_flag_1_12), //o
    .port_det_flag_1_13 (px_mul_port_det_flag_1_13), //o
    .port_det_flag_1_14 (px_mul_port_det_flag_1_14), //o
    .port_det_flag_1_15 (px_mul_port_det_flag_1_15), //o
    .port_det_flag_1_16 (px_mul_port_det_flag_1_16), //o
    .port_det_flag_1_17 (px_mul_port_det_flag_1_17), //o
    .port_det_flag_1_18 (px_mul_port_det_flag_1_18), //o
    .port_det_flag_1_19 (px_mul_port_det_flag_1_19), //o
    .port_det_flag_1_20 (px_mul_port_det_flag_1_20), //o
    .port_det_flag_1_21 (px_mul_port_det_flag_1_21), //o
    .port_det_flag_1_22 (px_mul_port_det_flag_1_22), //o
    .port_det_flag_1_23 (px_mul_port_det_flag_1_23), //o
    .port_det_flag_2_0  (px_mul_port_det_flag_2_0 ), //o
    .port_det_flag_2_1  (px_mul_port_det_flag_2_1 ), //o
    .port_det_flag_2_2  (px_mul_port_det_flag_2_2 ), //o
    .port_det_flag_2_3  (px_mul_port_det_flag_2_3 ), //o
    .port_det_flag_2_4  (px_mul_port_det_flag_2_4 ), //o
    .port_det_flag_2_5  (px_mul_port_det_flag_2_5 ), //o
    .port_det_flag_2_6  (px_mul_port_det_flag_2_6 ), //o
    .port_det_flag_2_7  (px_mul_port_det_flag_2_7 ), //o
    .port_det_flag_2_8  (px_mul_port_det_flag_2_8 ), //o
    .port_det_flag_2_9  (px_mul_port_det_flag_2_9 ), //o
    .port_det_flag_2_10 (px_mul_port_det_flag_2_10), //o
    .port_det_flag_2_11 (px_mul_port_det_flag_2_11), //o
    .port_det_flag_2_12 (px_mul_port_det_flag_2_12), //o
    .port_det_flag_2_13 (px_mul_port_det_flag_2_13), //o
    .port_det_flag_2_14 (px_mul_port_det_flag_2_14), //o
    .port_det_flag_2_15 (px_mul_port_det_flag_2_15), //o
    .port_det_flag_2_16 (px_mul_port_det_flag_2_16), //o
    .port_det_flag_2_17 (px_mul_port_det_flag_2_17), //o
    .port_det_flag_2_18 (px_mul_port_det_flag_2_18), //o
    .port_det_flag_2_19 (px_mul_port_det_flag_2_19), //o
    .port_det_flag_2_20 (px_mul_port_det_flag_2_20), //o
    .port_det_flag_2_21 (px_mul_port_det_flag_2_21), //o
    .port_det_flag_2_22 (px_mul_port_det_flag_2_22), //o
    .port_det_flag_2_23 (px_mul_port_det_flag_2_23), //o
    .clk                (clk                      ), //i
    .reset              (reset                    )  //i
  );
  Shared_GF_MULS_2 qx_mul (
    .port_a_0_0         (dx_0_0[1:0]              ), //i
    .port_a_0_1         (dx_0_1[1:0]              ), //i
    .port_a_1_0         (dx_1_0[1:0]              ), //i
    .port_a_1_1         (dx_1_1[1:0]              ), //i
    .port_a_2_0         (dx_2_0[1:0]              ), //i
    .port_a_2_1         (dx_2_1[1:0]              ), //i
    .port_ab_0          (sdx_0[1:0]               ), //i
    .port_ab_1          (sdx_1[1:0]               ), //i
    .port_ab_2          (sdx_2[1:0]               ), //i
    .port_b_0_0         (ax_0_0[1:0]              ), //i
    .port_b_0_1         (ax_0_1[1:0]              ), //i
    .port_b_1_0         (ax_1_0[1:0]              ), //i
    .port_b_1_1         (ax_1_1[1:0]              ), //i
    .port_b_2_0         (ax_2_0[1:0]              ), //i
    .port_b_2_1         (ax_2_1[1:0]              ), //i
    .port_cd_0          (sax_0[1:0]               ), //i
    .port_cd_1          (sax_1[1:0]               ), //i
    .port_cd_2          (sax_2[1:0]               ), //i
    .port_rand_0        (r2_0                     ), //i
    .port_rand_1        (r2_1                     ), //i
    .port_rand_2        (r2_2                     ), //i
    .port_rand_3        (r2_3                     ), //i
    .port_rand_4        (r2_4                     ), //i
    .port_rand_5        (r2_5                     ), //i
    .port_rand_6        (r2_6                     ), //i
    .port_rand_7        (r2_7                     ), //i
    .port_rand_8        (r2_8                     ), //i
    .port_rand_9        (r2_9                     ), //i
    .port_rand_10       (r2_10                    ), //i
    .port_rand_11       (r2_11                    ), //i
    .port_rand_12       (r2_12                    ), //i
    .port_rand_13       (r2_13                    ), //i
    .port_rand_14       (r2_14                    ), //i
    .port_rand_15       (r2_15                    ), //i
    .port_rand_16       (r2_16                    ), //i
    .port_rand_17       (r2_17                    ), //i
    .port_o_0_0         (qx_mul_port_o_0_0[1:0]   ), //o
    .port_o_0_1         (qx_mul_port_o_0_1[1:0]   ), //o
    .port_o_1_0         (qx_mul_port_o_1_0[1:0]   ), //o
    .port_o_1_1         (qx_mul_port_o_1_1[1:0]   ), //o
    .port_o_2_0         (qx_mul_port_o_2_0[1:0]   ), //o
    .port_o_2_1         (qx_mul_port_o_2_1[1:0]   ), //o
    .port_det_flag_0_0  (qx_mul_port_det_flag_0_0 ), //o
    .port_det_flag_0_1  (qx_mul_port_det_flag_0_1 ), //o
    .port_det_flag_0_2  (qx_mul_port_det_flag_0_2 ), //o
    .port_det_flag_0_3  (qx_mul_port_det_flag_0_3 ), //o
    .port_det_flag_0_4  (qx_mul_port_det_flag_0_4 ), //o
    .port_det_flag_0_5  (qx_mul_port_det_flag_0_5 ), //o
    .port_det_flag_0_6  (qx_mul_port_det_flag_0_6 ), //o
    .port_det_flag_0_7  (qx_mul_port_det_flag_0_7 ), //o
    .port_det_flag_0_8  (qx_mul_port_det_flag_0_8 ), //o
    .port_det_flag_0_9  (qx_mul_port_det_flag_0_9 ), //o
    .port_det_flag_0_10 (qx_mul_port_det_flag_0_10), //o
    .port_det_flag_0_11 (qx_mul_port_det_flag_0_11), //o
    .port_det_flag_0_12 (qx_mul_port_det_flag_0_12), //o
    .port_det_flag_0_13 (qx_mul_port_det_flag_0_13), //o
    .port_det_flag_0_14 (qx_mul_port_det_flag_0_14), //o
    .port_det_flag_0_15 (qx_mul_port_det_flag_0_15), //o
    .port_det_flag_0_16 (qx_mul_port_det_flag_0_16), //o
    .port_det_flag_0_17 (qx_mul_port_det_flag_0_17), //o
    .port_det_flag_0_18 (qx_mul_port_det_flag_0_18), //o
    .port_det_flag_0_19 (qx_mul_port_det_flag_0_19), //o
    .port_det_flag_0_20 (qx_mul_port_det_flag_0_20), //o
    .port_det_flag_0_21 (qx_mul_port_det_flag_0_21), //o
    .port_det_flag_0_22 (qx_mul_port_det_flag_0_22), //o
    .port_det_flag_0_23 (qx_mul_port_det_flag_0_23), //o
    .port_det_flag_1_0  (qx_mul_port_det_flag_1_0 ), //o
    .port_det_flag_1_1  (qx_mul_port_det_flag_1_1 ), //o
    .port_det_flag_1_2  (qx_mul_port_det_flag_1_2 ), //o
    .port_det_flag_1_3  (qx_mul_port_det_flag_1_3 ), //o
    .port_det_flag_1_4  (qx_mul_port_det_flag_1_4 ), //o
    .port_det_flag_1_5  (qx_mul_port_det_flag_1_5 ), //o
    .port_det_flag_1_6  (qx_mul_port_det_flag_1_6 ), //o
    .port_det_flag_1_7  (qx_mul_port_det_flag_1_7 ), //o
    .port_det_flag_1_8  (qx_mul_port_det_flag_1_8 ), //o
    .port_det_flag_1_9  (qx_mul_port_det_flag_1_9 ), //o
    .port_det_flag_1_10 (qx_mul_port_det_flag_1_10), //o
    .port_det_flag_1_11 (qx_mul_port_det_flag_1_11), //o
    .port_det_flag_1_12 (qx_mul_port_det_flag_1_12), //o
    .port_det_flag_1_13 (qx_mul_port_det_flag_1_13), //o
    .port_det_flag_1_14 (qx_mul_port_det_flag_1_14), //o
    .port_det_flag_1_15 (qx_mul_port_det_flag_1_15), //o
    .port_det_flag_1_16 (qx_mul_port_det_flag_1_16), //o
    .port_det_flag_1_17 (qx_mul_port_det_flag_1_17), //o
    .port_det_flag_1_18 (qx_mul_port_det_flag_1_18), //o
    .port_det_flag_1_19 (qx_mul_port_det_flag_1_19), //o
    .port_det_flag_1_20 (qx_mul_port_det_flag_1_20), //o
    .port_det_flag_1_21 (qx_mul_port_det_flag_1_21), //o
    .port_det_flag_1_22 (qx_mul_port_det_flag_1_22), //o
    .port_det_flag_1_23 (qx_mul_port_det_flag_1_23), //o
    .port_det_flag_2_0  (qx_mul_port_det_flag_2_0 ), //o
    .port_det_flag_2_1  (qx_mul_port_det_flag_2_1 ), //o
    .port_det_flag_2_2  (qx_mul_port_det_flag_2_2 ), //o
    .port_det_flag_2_3  (qx_mul_port_det_flag_2_3 ), //o
    .port_det_flag_2_4  (qx_mul_port_det_flag_2_4 ), //o
    .port_det_flag_2_5  (qx_mul_port_det_flag_2_5 ), //o
    .port_det_flag_2_6  (qx_mul_port_det_flag_2_6 ), //o
    .port_det_flag_2_7  (qx_mul_port_det_flag_2_7 ), //o
    .port_det_flag_2_8  (qx_mul_port_det_flag_2_8 ), //o
    .port_det_flag_2_9  (qx_mul_port_det_flag_2_9 ), //o
    .port_det_flag_2_10 (qx_mul_port_det_flag_2_10), //o
    .port_det_flag_2_11 (qx_mul_port_det_flag_2_11), //o
    .port_det_flag_2_12 (qx_mul_port_det_flag_2_12), //o
    .port_det_flag_2_13 (qx_mul_port_det_flag_2_13), //o
    .port_det_flag_2_14 (qx_mul_port_det_flag_2_14), //o
    .port_det_flag_2_15 (qx_mul_port_det_flag_2_15), //o
    .port_det_flag_2_16 (qx_mul_port_det_flag_2_16), //o
    .port_det_flag_2_17 (qx_mul_port_det_flag_2_17), //o
    .port_det_flag_2_18 (qx_mul_port_det_flag_2_18), //o
    .port_det_flag_2_19 (qx_mul_port_det_flag_2_19), //o
    .port_det_flag_2_20 (qx_mul_port_det_flag_2_20), //o
    .port_det_flag_2_21 (qx_mul_port_det_flag_2_21), //o
    .port_det_flag_2_22 (qx_mul_port_det_flag_2_22), //o
    .port_det_flag_2_23 (qx_mul_port_det_flag_2_23), //o
    .clk                (clk                      ), //i
    .reset              (reset                    )  //i
  );
  assign r0_0 = port_rand_0;
  assign r1_0 = port_rand_18;
  assign r2_0 = port_rand_36;
  assign r0_1 = port_rand_1;
  assign r1_1 = port_rand_19;
  assign r2_1 = port_rand_37;
  assign r0_2 = port_rand_2;
  assign r1_2 = port_rand_20;
  assign r2_2 = port_rand_38;
  assign r0_3 = port_rand_3;
  assign r1_3 = port_rand_21;
  assign r2_3 = port_rand_39;
  assign r0_4 = port_rand_4;
  assign r1_4 = port_rand_22;
  assign r2_4 = port_rand_40;
  assign r0_5 = port_rand_5;
  assign r1_5 = port_rand_23;
  assign r2_5 = port_rand_41;
  assign r0_6 = port_rand_6;
  assign r1_6 = port_rand_24;
  assign r2_6 = port_rand_42;
  assign r0_7 = port_rand_7;
  assign r1_7 = port_rand_25;
  assign r2_7 = port_rand_43;
  assign r0_8 = port_rand_8;
  assign r1_8 = port_rand_26;
  assign r2_8 = port_rand_44;
  assign r0_9 = port_rand_9;
  assign r1_9 = port_rand_27;
  assign r2_9 = port_rand_45;
  assign r0_10 = port_rand_10;
  assign r1_10 = port_rand_28;
  assign r2_10 = port_rand_46;
  assign r0_11 = port_rand_11;
  assign r1_11 = port_rand_29;
  assign r2_11 = port_rand_47;
  assign r0_12 = port_rand_12;
  assign r1_12 = port_rand_30;
  assign r2_12 = port_rand_48;
  assign r0_13 = port_rand_13;
  assign r1_13 = port_rand_31;
  assign r2_13 = port_rand_49;
  assign r0_14 = port_rand_14;
  assign r1_14 = port_rand_32;
  assign r2_14 = port_rand_50;
  assign r0_15 = port_rand_15;
  assign r1_15 = port_rand_33;
  assign r2_15 = port_rand_51;
  assign r0_16 = port_rand_16;
  assign r1_16 = port_rand_34;
  assign r2_16 = port_rand_52;
  assign r0_17 = port_rand_17;
  assign r1_17 = port_rand_35;
  assign r2_17 = port_rand_53;
  assign ax_0_0 = port_i_0_2;
  assign ax_0_1 = port_i_0_3;
  assign bx_0_0 = port_i_0_0;
  assign bx_0_1 = port_i_0_1;
  assign sax_0 = (ax_0_1 ^ ax_0_0);
  assign sbx_0 = (bx_0_1 ^ bx_0_0);
  assign ax_1_0 = port_i_1_2;
  assign ax_1_1 = port_i_1_3;
  assign bx_1_0 = port_i_1_0;
  assign bx_1_1 = port_i_1_1;
  assign sax_1 = (ax_1_1 ^ ax_1_0);
  assign sbx_1 = (bx_1_1 ^ bx_1_0);
  assign ax_2_0 = port_i_2_2;
  assign ax_2_1 = port_i_2_3;
  assign bx_2_0 = port_i_2_0;
  assign bx_2_1 = port_i_2_1;
  assign sax_2 = (ax_2_1 ^ ax_2_0);
  assign sbx_2 = (bx_2_1 ^ bx_2_0);
  assign port_det_flag_0_0 = mul2_port_det_flag_0_0;
  assign port_det_flag_0_1 = mul2_port_det_flag_0_1;
  assign port_det_flag_0_2 = mul2_port_det_flag_0_2;
  assign port_det_flag_0_3 = mul2_port_det_flag_0_3;
  assign port_det_flag_0_4 = mul2_port_det_flag_0_4;
  assign port_det_flag_0_5 = mul2_port_det_flag_0_5;
  assign port_det_flag_0_6 = mul2_port_det_flag_0_6;
  assign port_det_flag_0_7 = mul2_port_det_flag_0_7;
  assign port_det_flag_0_8 = mul2_port_det_flag_0_8;
  assign port_det_flag_0_9 = mul2_port_det_flag_0_9;
  assign port_det_flag_0_10 = mul2_port_det_flag_0_10;
  assign port_det_flag_0_11 = mul2_port_det_flag_0_11;
  assign port_det_flag_0_12 = mul2_port_det_flag_0_12;
  assign port_det_flag_0_13 = mul2_port_det_flag_0_13;
  assign port_det_flag_0_14 = mul2_port_det_flag_0_14;
  assign port_det_flag_0_15 = mul2_port_det_flag_0_15;
  assign port_det_flag_0_16 = mul2_port_det_flag_0_16;
  assign port_det_flag_0_17 = mul2_port_det_flag_0_17;
  assign port_det_flag_0_18 = mul2_port_det_flag_0_18;
  assign port_det_flag_0_19 = mul2_port_det_flag_0_19;
  assign port_det_flag_0_20 = mul2_port_det_flag_0_20;
  assign port_det_flag_0_21 = mul2_port_det_flag_0_21;
  assign port_det_flag_0_22 = mul2_port_det_flag_0_22;
  assign port_det_flag_0_23 = mul2_port_det_flag_0_23;
  assign port_det_flag_1_0 = mul2_port_det_flag_1_0;
  assign port_det_flag_1_1 = mul2_port_det_flag_1_1;
  assign port_det_flag_1_2 = mul2_port_det_flag_1_2;
  assign port_det_flag_1_3 = mul2_port_det_flag_1_3;
  assign port_det_flag_1_4 = mul2_port_det_flag_1_4;
  assign port_det_flag_1_5 = mul2_port_det_flag_1_5;
  assign port_det_flag_1_6 = mul2_port_det_flag_1_6;
  assign port_det_flag_1_7 = mul2_port_det_flag_1_7;
  assign port_det_flag_1_8 = mul2_port_det_flag_1_8;
  assign port_det_flag_1_9 = mul2_port_det_flag_1_9;
  assign port_det_flag_1_10 = mul2_port_det_flag_1_10;
  assign port_det_flag_1_11 = mul2_port_det_flag_1_11;
  assign port_det_flag_1_12 = mul2_port_det_flag_1_12;
  assign port_det_flag_1_13 = mul2_port_det_flag_1_13;
  assign port_det_flag_1_14 = mul2_port_det_flag_1_14;
  assign port_det_flag_1_15 = mul2_port_det_flag_1_15;
  assign port_det_flag_1_16 = mul2_port_det_flag_1_16;
  assign port_det_flag_1_17 = mul2_port_det_flag_1_17;
  assign port_det_flag_1_18 = mul2_port_det_flag_1_18;
  assign port_det_flag_1_19 = mul2_port_det_flag_1_19;
  assign port_det_flag_1_20 = mul2_port_det_flag_1_20;
  assign port_det_flag_1_21 = mul2_port_det_flag_1_21;
  assign port_det_flag_1_22 = mul2_port_det_flag_1_22;
  assign port_det_flag_1_23 = mul2_port_det_flag_1_23;
  assign port_det_flag_2_0 = mul2_port_det_flag_2_0;
  assign port_det_flag_2_1 = mul2_port_det_flag_2_1;
  assign port_det_flag_2_2 = mul2_port_det_flag_2_2;
  assign port_det_flag_2_3 = mul2_port_det_flag_2_3;
  assign port_det_flag_2_4 = mul2_port_det_flag_2_4;
  assign port_det_flag_2_5 = mul2_port_det_flag_2_5;
  assign port_det_flag_2_6 = mul2_port_det_flag_2_6;
  assign port_det_flag_2_7 = mul2_port_det_flag_2_7;
  assign port_det_flag_2_8 = mul2_port_det_flag_2_8;
  assign port_det_flag_2_9 = mul2_port_det_flag_2_9;
  assign port_det_flag_2_10 = mul2_port_det_flag_2_10;
  assign port_det_flag_2_11 = mul2_port_det_flag_2_11;
  assign port_det_flag_2_12 = mul2_port_det_flag_2_12;
  assign port_det_flag_2_13 = mul2_port_det_flag_2_13;
  assign port_det_flag_2_14 = mul2_port_det_flag_2_14;
  assign port_det_flag_2_15 = mul2_port_det_flag_2_15;
  assign port_det_flag_2_16 = mul2_port_det_flag_2_16;
  assign port_det_flag_2_17 = mul2_port_det_flag_2_17;
  assign port_det_flag_2_18 = mul2_port_det_flag_2_18;
  assign port_det_flag_2_19 = mul2_port_det_flag_2_19;
  assign port_det_flag_2_20 = mul2_port_det_flag_2_20;
  assign port_det_flag_2_21 = mul2_port_det_flag_2_21;
  assign port_det_flag_2_22 = mul2_port_det_flag_2_22;
  assign port_det_flag_2_23 = mul2_port_det_flag_2_23;
  assign sq_in_0_0 = (ax_0_0 ^ bx_0_0);
  assign sq_in_0_1 = (ax_0_1 ^ bx_0_1);
  assign sq_in_1_0 = (ax_1_0 ^ bx_1_0);
  assign sq_in_1_1 = (ax_1_1 ^ bx_1_1);
  assign sq_in_2_0 = (ax_2_0 ^ bx_2_0);
  assign sq_in_2_1 = (ax_2_1 ^ bx_2_1);
  assign cx_0_0 = (mul2_port_o_0_0 ^ sc_port_o_0_0);
  assign cx_0_1 = (mul2_port_o_0_1 ^ sc_port_o_0_1);
  assign cx_1_0 = (mul2_port_o_1_0 ^ sc_port_o_1_0);
  assign cx_1_1 = (mul2_port_o_1_1 ^ sc_port_o_1_1);
  assign cx_2_0 = (mul2_port_o_2_0 ^ sc_port_o_2_0);
  assign cx_2_1 = (mul2_port_o_2_1 ^ sc_port_o_2_1);
  assign dx_0_0 = dx_inv_port_o_0_0;
  assign dx_0_1 = dx_inv_port_o_0_1;
  assign dx_1_0 = dx_inv_port_o_1_0;
  assign dx_1_1 = dx_inv_port_o_1_1;
  assign dx_2_0 = dx_inv_port_o_2_0;
  assign dx_2_1 = dx_inv_port_o_2_1;
  assign sdx_0 = (dx_0_0 ^ dx_0_1);
  assign sdx_1 = (dx_1_0 ^ dx_1_1);
  assign sdx_2 = (dx_2_0 ^ dx_2_1);
  assign px_0_0 = px_mul_port_o_0_0;
  assign px_0_1 = px_mul_port_o_0_1;
  assign px_1_0 = px_mul_port_o_1_0;
  assign px_1_1 = px_mul_port_o_1_1;
  assign px_2_0 = px_mul_port_o_2_0;
  assign px_2_1 = px_mul_port_o_2_1;
  assign port_det_flag_3_0 = px_mul_port_det_flag_0_0;
  assign port_det_flag_3_1 = px_mul_port_det_flag_0_1;
  assign port_det_flag_3_2 = px_mul_port_det_flag_0_2;
  assign port_det_flag_3_3 = px_mul_port_det_flag_0_3;
  assign port_det_flag_3_4 = px_mul_port_det_flag_0_4;
  assign port_det_flag_3_5 = px_mul_port_det_flag_0_5;
  assign port_det_flag_3_6 = px_mul_port_det_flag_0_6;
  assign port_det_flag_3_7 = px_mul_port_det_flag_0_7;
  assign port_det_flag_3_8 = px_mul_port_det_flag_0_8;
  assign port_det_flag_3_9 = px_mul_port_det_flag_0_9;
  assign port_det_flag_3_10 = px_mul_port_det_flag_0_10;
  assign port_det_flag_3_11 = px_mul_port_det_flag_0_11;
  assign port_det_flag_3_12 = px_mul_port_det_flag_0_12;
  assign port_det_flag_3_13 = px_mul_port_det_flag_0_13;
  assign port_det_flag_3_14 = px_mul_port_det_flag_0_14;
  assign port_det_flag_3_15 = px_mul_port_det_flag_0_15;
  assign port_det_flag_3_16 = px_mul_port_det_flag_0_16;
  assign port_det_flag_3_17 = px_mul_port_det_flag_0_17;
  assign port_det_flag_3_18 = px_mul_port_det_flag_0_18;
  assign port_det_flag_3_19 = px_mul_port_det_flag_0_19;
  assign port_det_flag_3_20 = px_mul_port_det_flag_0_20;
  assign port_det_flag_3_21 = px_mul_port_det_flag_0_21;
  assign port_det_flag_3_22 = px_mul_port_det_flag_0_22;
  assign port_det_flag_3_23 = px_mul_port_det_flag_0_23;
  assign port_det_flag_4_0 = px_mul_port_det_flag_1_0;
  assign port_det_flag_4_1 = px_mul_port_det_flag_1_1;
  assign port_det_flag_4_2 = px_mul_port_det_flag_1_2;
  assign port_det_flag_4_3 = px_mul_port_det_flag_1_3;
  assign port_det_flag_4_4 = px_mul_port_det_flag_1_4;
  assign port_det_flag_4_5 = px_mul_port_det_flag_1_5;
  assign port_det_flag_4_6 = px_mul_port_det_flag_1_6;
  assign port_det_flag_4_7 = px_mul_port_det_flag_1_7;
  assign port_det_flag_4_8 = px_mul_port_det_flag_1_8;
  assign port_det_flag_4_9 = px_mul_port_det_flag_1_9;
  assign port_det_flag_4_10 = px_mul_port_det_flag_1_10;
  assign port_det_flag_4_11 = px_mul_port_det_flag_1_11;
  assign port_det_flag_4_12 = px_mul_port_det_flag_1_12;
  assign port_det_flag_4_13 = px_mul_port_det_flag_1_13;
  assign port_det_flag_4_14 = px_mul_port_det_flag_1_14;
  assign port_det_flag_4_15 = px_mul_port_det_flag_1_15;
  assign port_det_flag_4_16 = px_mul_port_det_flag_1_16;
  assign port_det_flag_4_17 = px_mul_port_det_flag_1_17;
  assign port_det_flag_4_18 = px_mul_port_det_flag_1_18;
  assign port_det_flag_4_19 = px_mul_port_det_flag_1_19;
  assign port_det_flag_4_20 = px_mul_port_det_flag_1_20;
  assign port_det_flag_4_21 = px_mul_port_det_flag_1_21;
  assign port_det_flag_4_22 = px_mul_port_det_flag_1_22;
  assign port_det_flag_4_23 = px_mul_port_det_flag_1_23;
  assign port_det_flag_5_0 = px_mul_port_det_flag_2_0;
  assign port_det_flag_5_1 = px_mul_port_det_flag_2_1;
  assign port_det_flag_5_2 = px_mul_port_det_flag_2_2;
  assign port_det_flag_5_3 = px_mul_port_det_flag_2_3;
  assign port_det_flag_5_4 = px_mul_port_det_flag_2_4;
  assign port_det_flag_5_5 = px_mul_port_det_flag_2_5;
  assign port_det_flag_5_6 = px_mul_port_det_flag_2_6;
  assign port_det_flag_5_7 = px_mul_port_det_flag_2_7;
  assign port_det_flag_5_8 = px_mul_port_det_flag_2_8;
  assign port_det_flag_5_9 = px_mul_port_det_flag_2_9;
  assign port_det_flag_5_10 = px_mul_port_det_flag_2_10;
  assign port_det_flag_5_11 = px_mul_port_det_flag_2_11;
  assign port_det_flag_5_12 = px_mul_port_det_flag_2_12;
  assign port_det_flag_5_13 = px_mul_port_det_flag_2_13;
  assign port_det_flag_5_14 = px_mul_port_det_flag_2_14;
  assign port_det_flag_5_15 = px_mul_port_det_flag_2_15;
  assign port_det_flag_5_16 = px_mul_port_det_flag_2_16;
  assign port_det_flag_5_17 = px_mul_port_det_flag_2_17;
  assign port_det_flag_5_18 = px_mul_port_det_flag_2_18;
  assign port_det_flag_5_19 = px_mul_port_det_flag_2_19;
  assign port_det_flag_5_20 = px_mul_port_det_flag_2_20;
  assign port_det_flag_5_21 = px_mul_port_det_flag_2_21;
  assign port_det_flag_5_22 = px_mul_port_det_flag_2_22;
  assign port_det_flag_5_23 = px_mul_port_det_flag_2_23;
  assign qx_0_0 = qx_mul_port_o_0_0;
  assign qx_0_1 = qx_mul_port_o_0_1;
  assign qx_1_0 = qx_mul_port_o_1_0;
  assign qx_1_1 = qx_mul_port_o_1_1;
  assign qx_2_0 = qx_mul_port_o_2_0;
  assign qx_2_1 = qx_mul_port_o_2_1;
  assign port_det_flag_6_0 = qx_mul_port_det_flag_0_0;
  assign port_det_flag_6_1 = qx_mul_port_det_flag_0_1;
  assign port_det_flag_6_2 = qx_mul_port_det_flag_0_2;
  assign port_det_flag_6_3 = qx_mul_port_det_flag_0_3;
  assign port_det_flag_6_4 = qx_mul_port_det_flag_0_4;
  assign port_det_flag_6_5 = qx_mul_port_det_flag_0_5;
  assign port_det_flag_6_6 = qx_mul_port_det_flag_0_6;
  assign port_det_flag_6_7 = qx_mul_port_det_flag_0_7;
  assign port_det_flag_6_8 = qx_mul_port_det_flag_0_8;
  assign port_det_flag_6_9 = qx_mul_port_det_flag_0_9;
  assign port_det_flag_6_10 = qx_mul_port_det_flag_0_10;
  assign port_det_flag_6_11 = qx_mul_port_det_flag_0_11;
  assign port_det_flag_6_12 = qx_mul_port_det_flag_0_12;
  assign port_det_flag_6_13 = qx_mul_port_det_flag_0_13;
  assign port_det_flag_6_14 = qx_mul_port_det_flag_0_14;
  assign port_det_flag_6_15 = qx_mul_port_det_flag_0_15;
  assign port_det_flag_6_16 = qx_mul_port_det_flag_0_16;
  assign port_det_flag_6_17 = qx_mul_port_det_flag_0_17;
  assign port_det_flag_6_18 = qx_mul_port_det_flag_0_18;
  assign port_det_flag_6_19 = qx_mul_port_det_flag_0_19;
  assign port_det_flag_6_20 = qx_mul_port_det_flag_0_20;
  assign port_det_flag_6_21 = qx_mul_port_det_flag_0_21;
  assign port_det_flag_6_22 = qx_mul_port_det_flag_0_22;
  assign port_det_flag_6_23 = qx_mul_port_det_flag_0_23;
  assign port_det_flag_7_0 = qx_mul_port_det_flag_1_0;
  assign port_det_flag_7_1 = qx_mul_port_det_flag_1_1;
  assign port_det_flag_7_2 = qx_mul_port_det_flag_1_2;
  assign port_det_flag_7_3 = qx_mul_port_det_flag_1_3;
  assign port_det_flag_7_4 = qx_mul_port_det_flag_1_4;
  assign port_det_flag_7_5 = qx_mul_port_det_flag_1_5;
  assign port_det_flag_7_6 = qx_mul_port_det_flag_1_6;
  assign port_det_flag_7_7 = qx_mul_port_det_flag_1_7;
  assign port_det_flag_7_8 = qx_mul_port_det_flag_1_8;
  assign port_det_flag_7_9 = qx_mul_port_det_flag_1_9;
  assign port_det_flag_7_10 = qx_mul_port_det_flag_1_10;
  assign port_det_flag_7_11 = qx_mul_port_det_flag_1_11;
  assign port_det_flag_7_12 = qx_mul_port_det_flag_1_12;
  assign port_det_flag_7_13 = qx_mul_port_det_flag_1_13;
  assign port_det_flag_7_14 = qx_mul_port_det_flag_1_14;
  assign port_det_flag_7_15 = qx_mul_port_det_flag_1_15;
  assign port_det_flag_7_16 = qx_mul_port_det_flag_1_16;
  assign port_det_flag_7_17 = qx_mul_port_det_flag_1_17;
  assign port_det_flag_7_18 = qx_mul_port_det_flag_1_18;
  assign port_det_flag_7_19 = qx_mul_port_det_flag_1_19;
  assign port_det_flag_7_20 = qx_mul_port_det_flag_1_20;
  assign port_det_flag_7_21 = qx_mul_port_det_flag_1_21;
  assign port_det_flag_7_22 = qx_mul_port_det_flag_1_22;
  assign port_det_flag_7_23 = qx_mul_port_det_flag_1_23;
  assign port_det_flag_8_0 = qx_mul_port_det_flag_2_0;
  assign port_det_flag_8_1 = qx_mul_port_det_flag_2_1;
  assign port_det_flag_8_2 = qx_mul_port_det_flag_2_2;
  assign port_det_flag_8_3 = qx_mul_port_det_flag_2_3;
  assign port_det_flag_8_4 = qx_mul_port_det_flag_2_4;
  assign port_det_flag_8_5 = qx_mul_port_det_flag_2_5;
  assign port_det_flag_8_6 = qx_mul_port_det_flag_2_6;
  assign port_det_flag_8_7 = qx_mul_port_det_flag_2_7;
  assign port_det_flag_8_8 = qx_mul_port_det_flag_2_8;
  assign port_det_flag_8_9 = qx_mul_port_det_flag_2_9;
  assign port_det_flag_8_10 = qx_mul_port_det_flag_2_10;
  assign port_det_flag_8_11 = qx_mul_port_det_flag_2_11;
  assign port_det_flag_8_12 = qx_mul_port_det_flag_2_12;
  assign port_det_flag_8_13 = qx_mul_port_det_flag_2_13;
  assign port_det_flag_8_14 = qx_mul_port_det_flag_2_14;
  assign port_det_flag_8_15 = qx_mul_port_det_flag_2_15;
  assign port_det_flag_8_16 = qx_mul_port_det_flag_2_16;
  assign port_det_flag_8_17 = qx_mul_port_det_flag_2_17;
  assign port_det_flag_8_18 = qx_mul_port_det_flag_2_18;
  assign port_det_flag_8_19 = qx_mul_port_det_flag_2_19;
  assign port_det_flag_8_20 = qx_mul_port_det_flag_2_20;
  assign port_det_flag_8_21 = qx_mul_port_det_flag_2_21;
  assign port_det_flag_8_22 = qx_mul_port_det_flag_2_22;
  assign port_det_flag_8_23 = qx_mul_port_det_flag_2_23;
  assign port_o_0_0 = qx_0_0;
  assign port_o_0_1 = qx_0_1;
  assign port_o_0_2 = px_0_0;
  assign port_o_0_3 = px_0_1;
  assign port_o_1_0 = qx_1_0;
  assign port_o_1_1 = qx_1_1;
  assign port_o_1_2 = px_1_0;
  assign port_o_1_3 = px_1_1;
  assign port_o_2_0 = qx_2_0;
  assign port_o_2_1 = qx_2_1;
  assign port_o_2_2 = px_2_0;
  assign port_o_2_3 = px_2_1;
  always @(posedge clk) begin
    reg_bx_0_0 <= bx_0_0;
    reg_bx_0_1 <= bx_0_1;
    reg_bx_1_0 <= bx_1_0;
    reg_bx_1_1 <= bx_1_1;
    reg_bx_2_0 <= bx_2_0;
    reg_bx_2_1 <= bx_2_1;
    reg_sbx_0 <= sbx_0;
    reg_sbx_1 <= sbx_1;
    reg_sbx_2 <= sbx_2;
  end


endmodule

module Shared_GF_MULS_4 (
  input      [1:0]    port_A_0_0,
  input      [1:0]    port_A_0_1,
  input      [1:0]    port_A_0_2,
  input      [1:0]    port_A_0_3,
  input      [1:0]    port_A_1_0,
  input      [1:0]    port_A_1_1,
  input      [1:0]    port_A_1_2,
  input      [1:0]    port_A_1_3,
  input      [1:0]    port_A_2_0,
  input      [1:0]    port_A_2_1,
  input      [1:0]    port_A_2_2,
  input      [1:0]    port_A_2_3,
  input      [1:0]    port_a_0_0_1,
  input      [1:0]    port_a_0_1_1,
  input      [1:0]    port_a_1_0_1,
  input      [1:0]    port_a_1_1_1,
  input      [1:0]    port_a_2_0_1,
  input      [1:0]    port_a_2_1_1,
  input      [1:0]    port_Al_0,
  input      [1:0]    port_Al_1,
  input      [1:0]    port_Al_2,
  input      [1:0]    port_Ah_0,
  input      [1:0]    port_Ah_1,
  input      [1:0]    port_Ah_2,
  input      [1:0]    port_aa_0,
  input      [1:0]    port_aa_1,
  input      [1:0]    port_aa_2,
  input      [1:0]    port_B_0_0,
  input      [1:0]    port_B_0_1,
  input      [1:0]    port_B_0_2,
  input      [1:0]    port_B_0_3,
  input      [1:0]    port_B_1_0,
  input      [1:0]    port_B_1_1,
  input      [1:0]    port_B_1_2,
  input      [1:0]    port_B_1_3,
  input      [1:0]    port_B_2_0,
  input      [1:0]    port_B_2_1,
  input      [1:0]    port_B_2_2,
  input      [1:0]    port_B_2_3,
  input      [1:0]    port_b_0_0_1,
  input      [1:0]    port_b_0_1_1,
  input      [1:0]    port_b_1_0_1,
  input      [1:0]    port_b_1_1_1,
  input      [1:0]    port_b_2_0_1,
  input      [1:0]    port_b_2_1_1,
  input      [1:0]    port_Bl_0,
  input      [1:0]    port_Bl_1,
  input      [1:0]    port_Bl_2,
  input      [1:0]    port_Bh_0,
  input      [1:0]    port_Bh_1,
  input      [1:0]    port_Bh_2,
  input      [1:0]    port_bb_0,
  input      [1:0]    port_bb_1,
  input      [1:0]    port_bb_2,
  input               port_rand_0,
  input               port_rand_1,
  input               port_rand_2,
  input               port_rand_3,
  input               port_rand_4,
  input               port_rand_5,
  input               port_rand_6,
  input               port_rand_7,
  input               port_rand_8,
  input               port_rand_9,
  input               port_rand_10,
  input               port_rand_11,
  input               port_rand_12,
  input               port_rand_13,
  input               port_rand_14,
  input               port_rand_15,
  input               port_rand_16,
  input               port_rand_17,
  input               port_rand_18,
  input               port_rand_19,
  input               port_rand_20,
  input               port_rand_21,
  input               port_rand_22,
  input               port_rand_23,
  input               port_rand_24,
  input               port_rand_25,
  input               port_rand_26,
  input               port_rand_27,
  input               port_rand_28,
  input               port_rand_29,
  input               port_rand_30,
  input               port_rand_31,
  input               port_rand_32,
  input               port_rand_33,
  input               port_rand_34,
  input               port_rand_35,
  input               port_rand_36,
  input               port_rand_37,
  input               port_rand_38,
  input               port_rand_39,
  input               port_rand_40,
  input               port_rand_41,
  input               port_rand_42,
  input               port_rand_43,
  input               port_rand_44,
  input               port_rand_45,
  input               port_rand_46,
  input               port_rand_47,
  input               port_rand_48,
  input               port_rand_49,
  input               port_rand_50,
  input               port_rand_51,
  input               port_rand_52,
  input               port_rand_53,
  output     [1:0]    port_o_0_0,
  output     [1:0]    port_o_0_1,
  output     [1:0]    port_o_0_2,
  output     [1:0]    port_o_0_3,
  output     [1:0]    port_o_1_0,
  output     [1:0]    port_o_1_1,
  output     [1:0]    port_o_1_2,
  output     [1:0]    port_o_1_3,
  output     [1:0]    port_o_2_0,
  output     [1:0]    port_o_2_1,
  output     [1:0]    port_o_2_2,
  output     [1:0]    port_o_2_3,
  output              port_det_flag_0_0,
  output              port_det_flag_0_1,
  output              port_det_flag_0_2,
  output              port_det_flag_0_3,
  output              port_det_flag_0_4,
  output              port_det_flag_0_5,
  output              port_det_flag_0_6,
  output              port_det_flag_0_7,
  output              port_det_flag_0_8,
  output              port_det_flag_0_9,
  output              port_det_flag_0_10,
  output              port_det_flag_0_11,
  output              port_det_flag_0_12,
  output              port_det_flag_0_13,
  output              port_det_flag_0_14,
  output              port_det_flag_0_15,
  output              port_det_flag_0_16,
  output              port_det_flag_0_17,
  output              port_det_flag_0_18,
  output              port_det_flag_0_19,
  output              port_det_flag_0_20,
  output              port_det_flag_0_21,
  output              port_det_flag_0_22,
  output              port_det_flag_0_23,
  output              port_det_flag_1_0,
  output              port_det_flag_1_1,
  output              port_det_flag_1_2,
  output              port_det_flag_1_3,
  output              port_det_flag_1_4,
  output              port_det_flag_1_5,
  output              port_det_flag_1_6,
  output              port_det_flag_1_7,
  output              port_det_flag_1_8,
  output              port_det_flag_1_9,
  output              port_det_flag_1_10,
  output              port_det_flag_1_11,
  output              port_det_flag_1_12,
  output              port_det_flag_1_13,
  output              port_det_flag_1_14,
  output              port_det_flag_1_15,
  output              port_det_flag_1_16,
  output              port_det_flag_1_17,
  output              port_det_flag_1_18,
  output              port_det_flag_1_19,
  output              port_det_flag_1_20,
  output              port_det_flag_1_21,
  output              port_det_flag_1_22,
  output              port_det_flag_1_23,
  output              port_det_flag_2_0,
  output              port_det_flag_2_1,
  output              port_det_flag_2_2,
  output              port_det_flag_2_3,
  output              port_det_flag_2_4,
  output              port_det_flag_2_5,
  output              port_det_flag_2_6,
  output              port_det_flag_2_7,
  output              port_det_flag_2_8,
  output              port_det_flag_2_9,
  output              port_det_flag_2_10,
  output              port_det_flag_2_11,
  output              port_det_flag_2_12,
  output              port_det_flag_2_13,
  output              port_det_flag_2_14,
  output              port_det_flag_2_15,
  output              port_det_flag_2_16,
  output              port_det_flag_2_17,
  output              port_det_flag_2_18,
  output              port_det_flag_2_19,
  output              port_det_flag_2_20,
  output              port_det_flag_2_21,
  output              port_det_flag_2_22,
  output              port_det_flag_2_23,
  output              port_det_flag_3_0,
  output              port_det_flag_3_1,
  output              port_det_flag_3_2,
  output              port_det_flag_3_3,
  output              port_det_flag_3_4,
  output              port_det_flag_3_5,
  output              port_det_flag_3_6,
  output              port_det_flag_3_7,
  output              port_det_flag_3_8,
  output              port_det_flag_3_9,
  output              port_det_flag_3_10,
  output              port_det_flag_3_11,
  output              port_det_flag_3_12,
  output              port_det_flag_3_13,
  output              port_det_flag_3_14,
  output              port_det_flag_3_15,
  output              port_det_flag_3_16,
  output              port_det_flag_3_17,
  output              port_det_flag_3_18,
  output              port_det_flag_3_19,
  output              port_det_flag_3_20,
  output              port_det_flag_3_21,
  output              port_det_flag_3_22,
  output              port_det_flag_3_23,
  output              port_det_flag_4_0,
  output              port_det_flag_4_1,
  output              port_det_flag_4_2,
  output              port_det_flag_4_3,
  output              port_det_flag_4_4,
  output              port_det_flag_4_5,
  output              port_det_flag_4_6,
  output              port_det_flag_4_7,
  output              port_det_flag_4_8,
  output              port_det_flag_4_9,
  output              port_det_flag_4_10,
  output              port_det_flag_4_11,
  output              port_det_flag_4_12,
  output              port_det_flag_4_13,
  output              port_det_flag_4_14,
  output              port_det_flag_4_15,
  output              port_det_flag_4_16,
  output              port_det_flag_4_17,
  output              port_det_flag_4_18,
  output              port_det_flag_4_19,
  output              port_det_flag_4_20,
  output              port_det_flag_4_21,
  output              port_det_flag_4_22,
  output              port_det_flag_4_23,
  output              port_det_flag_5_0,
  output              port_det_flag_5_1,
  output              port_det_flag_5_2,
  output              port_det_flag_5_3,
  output              port_det_flag_5_4,
  output              port_det_flag_5_5,
  output              port_det_flag_5_6,
  output              port_det_flag_5_7,
  output              port_det_flag_5_8,
  output              port_det_flag_5_9,
  output              port_det_flag_5_10,
  output              port_det_flag_5_11,
  output              port_det_flag_5_12,
  output              port_det_flag_5_13,
  output              port_det_flag_5_14,
  output              port_det_flag_5_15,
  output              port_det_flag_5_16,
  output              port_det_flag_5_17,
  output              port_det_flag_5_18,
  output              port_det_flag_5_19,
  output              port_det_flag_5_20,
  output              port_det_flag_5_21,
  output              port_det_flag_5_22,
  output              port_det_flag_5_23,
  input               clk,
  input               reset
);

  wire       [1:0]    hi_mul_port_o_0_0;
  wire       [1:0]    hi_mul_port_o_0_1;
  wire       [1:0]    hi_mul_port_o_1_0;
  wire       [1:0]    hi_mul_port_o_1_1;
  wire       [1:0]    hi_mul_port_o_2_0;
  wire       [1:0]    hi_mul_port_o_2_1;
  wire                hi_mul_port_det_flag_0_0;
  wire                hi_mul_port_det_flag_0_1;
  wire                hi_mul_port_det_flag_0_2;
  wire                hi_mul_port_det_flag_0_3;
  wire                hi_mul_port_det_flag_0_4;
  wire                hi_mul_port_det_flag_0_5;
  wire                hi_mul_port_det_flag_0_6;
  wire                hi_mul_port_det_flag_0_7;
  wire                hi_mul_port_det_flag_0_8;
  wire                hi_mul_port_det_flag_0_9;
  wire                hi_mul_port_det_flag_0_10;
  wire                hi_mul_port_det_flag_0_11;
  wire                hi_mul_port_det_flag_0_12;
  wire                hi_mul_port_det_flag_0_13;
  wire                hi_mul_port_det_flag_0_14;
  wire                hi_mul_port_det_flag_0_15;
  wire                hi_mul_port_det_flag_0_16;
  wire                hi_mul_port_det_flag_0_17;
  wire                hi_mul_port_det_flag_0_18;
  wire                hi_mul_port_det_flag_0_19;
  wire                hi_mul_port_det_flag_0_20;
  wire                hi_mul_port_det_flag_0_21;
  wire                hi_mul_port_det_flag_0_22;
  wire                hi_mul_port_det_flag_0_23;
  wire                hi_mul_port_det_flag_1_0;
  wire                hi_mul_port_det_flag_1_1;
  wire                hi_mul_port_det_flag_1_2;
  wire                hi_mul_port_det_flag_1_3;
  wire                hi_mul_port_det_flag_1_4;
  wire                hi_mul_port_det_flag_1_5;
  wire                hi_mul_port_det_flag_1_6;
  wire                hi_mul_port_det_flag_1_7;
  wire                hi_mul_port_det_flag_1_8;
  wire                hi_mul_port_det_flag_1_9;
  wire                hi_mul_port_det_flag_1_10;
  wire                hi_mul_port_det_flag_1_11;
  wire                hi_mul_port_det_flag_1_12;
  wire                hi_mul_port_det_flag_1_13;
  wire                hi_mul_port_det_flag_1_14;
  wire                hi_mul_port_det_flag_1_15;
  wire                hi_mul_port_det_flag_1_16;
  wire                hi_mul_port_det_flag_1_17;
  wire                hi_mul_port_det_flag_1_18;
  wire                hi_mul_port_det_flag_1_19;
  wire                hi_mul_port_det_flag_1_20;
  wire                hi_mul_port_det_flag_1_21;
  wire                hi_mul_port_det_flag_1_22;
  wire                hi_mul_port_det_flag_1_23;
  wire                hi_mul_port_det_flag_2_0;
  wire                hi_mul_port_det_flag_2_1;
  wire                hi_mul_port_det_flag_2_2;
  wire                hi_mul_port_det_flag_2_3;
  wire                hi_mul_port_det_flag_2_4;
  wire                hi_mul_port_det_flag_2_5;
  wire                hi_mul_port_det_flag_2_6;
  wire                hi_mul_port_det_flag_2_7;
  wire                hi_mul_port_det_flag_2_8;
  wire                hi_mul_port_det_flag_2_9;
  wire                hi_mul_port_det_flag_2_10;
  wire                hi_mul_port_det_flag_2_11;
  wire                hi_mul_port_det_flag_2_12;
  wire                hi_mul_port_det_flag_2_13;
  wire                hi_mul_port_det_flag_2_14;
  wire                hi_mul_port_det_flag_2_15;
  wire                hi_mul_port_det_flag_2_16;
  wire                hi_mul_port_det_flag_2_17;
  wire                hi_mul_port_det_flag_2_18;
  wire                hi_mul_port_det_flag_2_19;
  wire                hi_mul_port_det_flag_2_20;
  wire                hi_mul_port_det_flag_2_21;
  wire                hi_mul_port_det_flag_2_22;
  wire                hi_mul_port_det_flag_2_23;
  wire       [1:0]    lo_mul_port_o_0_0;
  wire       [1:0]    lo_mul_port_o_0_1;
  wire       [1:0]    lo_mul_port_o_1_0;
  wire       [1:0]    lo_mul_port_o_1_1;
  wire       [1:0]    lo_mul_port_o_2_0;
  wire       [1:0]    lo_mul_port_o_2_1;
  wire                lo_mul_port_det_flag_0_0;
  wire                lo_mul_port_det_flag_0_1;
  wire                lo_mul_port_det_flag_0_2;
  wire                lo_mul_port_det_flag_0_3;
  wire                lo_mul_port_det_flag_0_4;
  wire                lo_mul_port_det_flag_0_5;
  wire                lo_mul_port_det_flag_0_6;
  wire                lo_mul_port_det_flag_0_7;
  wire                lo_mul_port_det_flag_0_8;
  wire                lo_mul_port_det_flag_0_9;
  wire                lo_mul_port_det_flag_0_10;
  wire                lo_mul_port_det_flag_0_11;
  wire                lo_mul_port_det_flag_0_12;
  wire                lo_mul_port_det_flag_0_13;
  wire                lo_mul_port_det_flag_0_14;
  wire                lo_mul_port_det_flag_0_15;
  wire                lo_mul_port_det_flag_0_16;
  wire                lo_mul_port_det_flag_0_17;
  wire                lo_mul_port_det_flag_0_18;
  wire                lo_mul_port_det_flag_0_19;
  wire                lo_mul_port_det_flag_0_20;
  wire                lo_mul_port_det_flag_0_21;
  wire                lo_mul_port_det_flag_0_22;
  wire                lo_mul_port_det_flag_0_23;
  wire                lo_mul_port_det_flag_1_0;
  wire                lo_mul_port_det_flag_1_1;
  wire                lo_mul_port_det_flag_1_2;
  wire                lo_mul_port_det_flag_1_3;
  wire                lo_mul_port_det_flag_1_4;
  wire                lo_mul_port_det_flag_1_5;
  wire                lo_mul_port_det_flag_1_6;
  wire                lo_mul_port_det_flag_1_7;
  wire                lo_mul_port_det_flag_1_8;
  wire                lo_mul_port_det_flag_1_9;
  wire                lo_mul_port_det_flag_1_10;
  wire                lo_mul_port_det_flag_1_11;
  wire                lo_mul_port_det_flag_1_12;
  wire                lo_mul_port_det_flag_1_13;
  wire                lo_mul_port_det_flag_1_14;
  wire                lo_mul_port_det_flag_1_15;
  wire                lo_mul_port_det_flag_1_16;
  wire                lo_mul_port_det_flag_1_17;
  wire                lo_mul_port_det_flag_1_18;
  wire                lo_mul_port_det_flag_1_19;
  wire                lo_mul_port_det_flag_1_20;
  wire                lo_mul_port_det_flag_1_21;
  wire                lo_mul_port_det_flag_1_22;
  wire                lo_mul_port_det_flag_1_23;
  wire                lo_mul_port_det_flag_2_0;
  wire                lo_mul_port_det_flag_2_1;
  wire                lo_mul_port_det_flag_2_2;
  wire                lo_mul_port_det_flag_2_3;
  wire                lo_mul_port_det_flag_2_4;
  wire                lo_mul_port_det_flag_2_5;
  wire                lo_mul_port_det_flag_2_6;
  wire                lo_mul_port_det_flag_2_7;
  wire                lo_mul_port_det_flag_2_8;
  wire                lo_mul_port_det_flag_2_9;
  wire                lo_mul_port_det_flag_2_10;
  wire                lo_mul_port_det_flag_2_11;
  wire                lo_mul_port_det_flag_2_12;
  wire                lo_mul_port_det_flag_2_13;
  wire                lo_mul_port_det_flag_2_14;
  wire                lo_mul_port_det_flag_2_15;
  wire                lo_mul_port_det_flag_2_16;
  wire                lo_mul_port_det_flag_2_17;
  wire                lo_mul_port_det_flag_2_18;
  wire                lo_mul_port_det_flag_2_19;
  wire                lo_mul_port_det_flag_2_20;
  wire                lo_mul_port_det_flag_2_21;
  wire                lo_mul_port_det_flag_2_22;
  wire                lo_mul_port_det_flag_2_23;
  wire       [1:0]    sum_mul_port_o_0_0;
  wire       [1:0]    sum_mul_port_o_0_1;
  wire       [1:0]    sum_mul_port_o_1_0;
  wire       [1:0]    sum_mul_port_o_1_1;
  wire       [1:0]    sum_mul_port_o_2_0;
  wire       [1:0]    sum_mul_port_o_2_1;
  wire                r0_0;
  wire                r0_1;
  wire                r0_2;
  wire                r0_3;
  wire                r0_4;
  wire                r0_5;
  wire                r0_6;
  wire                r0_7;
  wire                r0_8;
  wire                r0_9;
  wire                r0_10;
  wire                r0_11;
  wire                r0_12;
  wire                r0_13;
  wire                r0_14;
  wire                r0_15;
  wire                r0_16;
  wire                r0_17;
  wire                r1_0;
  wire                r1_1;
  wire                r1_2;
  wire                r1_3;
  wire                r1_4;
  wire                r1_5;
  wire                r1_6;
  wire                r1_7;
  wire                r1_8;
  wire                r1_9;
  wire                r1_10;
  wire                r1_11;
  wire                r1_12;
  wire                r1_13;
  wire                r1_14;
  wire                r1_15;
  wire                r1_16;
  wire                r1_17;
  wire                r2_0;
  wire                r2_1;
  wire                r2_2;
  wire                r2_3;
  wire                r2_4;
  wire                r2_5;
  wire                r2_6;
  wire                r2_7;
  wire                r2_8;
  wire                r2_9;
  wire                r2_10;
  wire                r2_11;
  wire                r2_12;
  wire                r2_13;
  wire                r2_14;
  wire                r2_15;
  wire                r2_16;
  wire                r2_17;
  wire       [1:0]    high_A_0_0;
  wire       [1:0]    high_A_0_1;
  wire       [1:0]    high_A_1_0;
  wire       [1:0]    high_A_1_1;
  wire       [1:0]    high_A_2_0;
  wire       [1:0]    high_A_2_1;
  wire       [1:0]    low_A_0_0;
  wire       [1:0]    low_A_0_1;
  wire       [1:0]    low_A_1_0;
  wire       [1:0]    low_A_1_1;
  wire       [1:0]    low_A_2_0;
  wire       [1:0]    low_A_2_1;
  wire       [1:0]    high_B_0_0;
  wire       [1:0]    high_B_0_1;
  wire       [1:0]    high_B_1_0;
  wire       [1:0]    high_B_1_1;
  wire       [1:0]    high_B_2_0;
  wire       [1:0]    high_B_2_1;
  wire       [1:0]    low_B_0_0;
  wire       [1:0]    low_B_0_1;
  wire       [1:0]    low_B_1_0;
  wire       [1:0]    low_B_1_1;
  wire       [1:0]    low_B_2_0;
  wire       [1:0]    low_B_2_1;
  wire       [1:0]    ph_0_0;
  wire       [1:0]    ph_0_1;
  wire       [1:0]    ph_1_0;
  wire       [1:0]    ph_1_1;
  wire       [1:0]    ph_2_0;
  wire       [1:0]    ph_2_1;
  wire       [1:0]    pl_0_0;
  wire       [1:0]    pl_0_1;
  wire       [1:0]    pl_1_0;
  wire       [1:0]    pl_1_1;
  wire       [1:0]    pl_2_0;
  wire       [1:0]    pl_2_1;
  wire       [1:0]    p_0_0;
  wire       [1:0]    p_0_1;
  wire       [1:0]    p_1_0;
  wire       [1:0]    p_1_1;
  wire       [1:0]    p_2_0;
  wire       [1:0]    p_2_1;

  Shared_GF_MULS_2 hi_mul (
    .port_a_0_0         (high_A_0_0[1:0]          ), //i
    .port_a_0_1         (high_A_0_1[1:0]          ), //i
    .port_a_1_0         (high_A_1_0[1:0]          ), //i
    .port_a_1_1         (high_A_1_1[1:0]          ), //i
    .port_a_2_0         (high_A_2_0[1:0]          ), //i
    .port_a_2_1         (high_A_2_1[1:0]          ), //i
    .port_ab_0          (port_Ah_0[1:0]           ), //i
    .port_ab_1          (port_Ah_1[1:0]           ), //i
    .port_ab_2          (port_Ah_2[1:0]           ), //i
    .port_b_0_0         (high_B_0_0[1:0]          ), //i
    .port_b_0_1         (high_B_0_1[1:0]          ), //i
    .port_b_1_0         (high_B_1_0[1:0]          ), //i
    .port_b_1_1         (high_B_1_1[1:0]          ), //i
    .port_b_2_0         (high_B_2_0[1:0]          ), //i
    .port_b_2_1         (high_B_2_1[1:0]          ), //i
    .port_cd_0          (port_Bh_0[1:0]           ), //i
    .port_cd_1          (port_Bh_1[1:0]           ), //i
    .port_cd_2          (port_Bh_2[1:0]           ), //i
    .port_rand_0        (r0_0                     ), //i
    .port_rand_1        (r0_1                     ), //i
    .port_rand_2        (r0_2                     ), //i
    .port_rand_3        (r0_3                     ), //i
    .port_rand_4        (r0_4                     ), //i
    .port_rand_5        (r0_5                     ), //i
    .port_rand_6        (r0_6                     ), //i
    .port_rand_7        (r0_7                     ), //i
    .port_rand_8        (r0_8                     ), //i
    .port_rand_9        (r0_9                     ), //i
    .port_rand_10       (r0_10                    ), //i
    .port_rand_11       (r0_11                    ), //i
    .port_rand_12       (r0_12                    ), //i
    .port_rand_13       (r0_13                    ), //i
    .port_rand_14       (r0_14                    ), //i
    .port_rand_15       (r0_15                    ), //i
    .port_rand_16       (r0_16                    ), //i
    .port_rand_17       (r0_17                    ), //i
    .port_o_0_0         (hi_mul_port_o_0_0[1:0]   ), //o
    .port_o_0_1         (hi_mul_port_o_0_1[1:0]   ), //o
    .port_o_1_0         (hi_mul_port_o_1_0[1:0]   ), //o
    .port_o_1_1         (hi_mul_port_o_1_1[1:0]   ), //o
    .port_o_2_0         (hi_mul_port_o_2_0[1:0]   ), //o
    .port_o_2_1         (hi_mul_port_o_2_1[1:0]   ), //o
    .port_det_flag_0_0  (hi_mul_port_det_flag_0_0 ), //o
    .port_det_flag_0_1  (hi_mul_port_det_flag_0_1 ), //o
    .port_det_flag_0_2  (hi_mul_port_det_flag_0_2 ), //o
    .port_det_flag_0_3  (hi_mul_port_det_flag_0_3 ), //o
    .port_det_flag_0_4  (hi_mul_port_det_flag_0_4 ), //o
    .port_det_flag_0_5  (hi_mul_port_det_flag_0_5 ), //o
    .port_det_flag_0_6  (hi_mul_port_det_flag_0_6 ), //o
    .port_det_flag_0_7  (hi_mul_port_det_flag_0_7 ), //o
    .port_det_flag_0_8  (hi_mul_port_det_flag_0_8 ), //o
    .port_det_flag_0_9  (hi_mul_port_det_flag_0_9 ), //o
    .port_det_flag_0_10 (hi_mul_port_det_flag_0_10), //o
    .port_det_flag_0_11 (hi_mul_port_det_flag_0_11), //o
    .port_det_flag_0_12 (hi_mul_port_det_flag_0_12), //o
    .port_det_flag_0_13 (hi_mul_port_det_flag_0_13), //o
    .port_det_flag_0_14 (hi_mul_port_det_flag_0_14), //o
    .port_det_flag_0_15 (hi_mul_port_det_flag_0_15), //o
    .port_det_flag_0_16 (hi_mul_port_det_flag_0_16), //o
    .port_det_flag_0_17 (hi_mul_port_det_flag_0_17), //o
    .port_det_flag_0_18 (hi_mul_port_det_flag_0_18), //o
    .port_det_flag_0_19 (hi_mul_port_det_flag_0_19), //o
    .port_det_flag_0_20 (hi_mul_port_det_flag_0_20), //o
    .port_det_flag_0_21 (hi_mul_port_det_flag_0_21), //o
    .port_det_flag_0_22 (hi_mul_port_det_flag_0_22), //o
    .port_det_flag_0_23 (hi_mul_port_det_flag_0_23), //o
    .port_det_flag_1_0  (hi_mul_port_det_flag_1_0 ), //o
    .port_det_flag_1_1  (hi_mul_port_det_flag_1_1 ), //o
    .port_det_flag_1_2  (hi_mul_port_det_flag_1_2 ), //o
    .port_det_flag_1_3  (hi_mul_port_det_flag_1_3 ), //o
    .port_det_flag_1_4  (hi_mul_port_det_flag_1_4 ), //o
    .port_det_flag_1_5  (hi_mul_port_det_flag_1_5 ), //o
    .port_det_flag_1_6  (hi_mul_port_det_flag_1_6 ), //o
    .port_det_flag_1_7  (hi_mul_port_det_flag_1_7 ), //o
    .port_det_flag_1_8  (hi_mul_port_det_flag_1_8 ), //o
    .port_det_flag_1_9  (hi_mul_port_det_flag_1_9 ), //o
    .port_det_flag_1_10 (hi_mul_port_det_flag_1_10), //o
    .port_det_flag_1_11 (hi_mul_port_det_flag_1_11), //o
    .port_det_flag_1_12 (hi_mul_port_det_flag_1_12), //o
    .port_det_flag_1_13 (hi_mul_port_det_flag_1_13), //o
    .port_det_flag_1_14 (hi_mul_port_det_flag_1_14), //o
    .port_det_flag_1_15 (hi_mul_port_det_flag_1_15), //o
    .port_det_flag_1_16 (hi_mul_port_det_flag_1_16), //o
    .port_det_flag_1_17 (hi_mul_port_det_flag_1_17), //o
    .port_det_flag_1_18 (hi_mul_port_det_flag_1_18), //o
    .port_det_flag_1_19 (hi_mul_port_det_flag_1_19), //o
    .port_det_flag_1_20 (hi_mul_port_det_flag_1_20), //o
    .port_det_flag_1_21 (hi_mul_port_det_flag_1_21), //o
    .port_det_flag_1_22 (hi_mul_port_det_flag_1_22), //o
    .port_det_flag_1_23 (hi_mul_port_det_flag_1_23), //o
    .port_det_flag_2_0  (hi_mul_port_det_flag_2_0 ), //o
    .port_det_flag_2_1  (hi_mul_port_det_flag_2_1 ), //o
    .port_det_flag_2_2  (hi_mul_port_det_flag_2_2 ), //o
    .port_det_flag_2_3  (hi_mul_port_det_flag_2_3 ), //o
    .port_det_flag_2_4  (hi_mul_port_det_flag_2_4 ), //o
    .port_det_flag_2_5  (hi_mul_port_det_flag_2_5 ), //o
    .port_det_flag_2_6  (hi_mul_port_det_flag_2_6 ), //o
    .port_det_flag_2_7  (hi_mul_port_det_flag_2_7 ), //o
    .port_det_flag_2_8  (hi_mul_port_det_flag_2_8 ), //o
    .port_det_flag_2_9  (hi_mul_port_det_flag_2_9 ), //o
    .port_det_flag_2_10 (hi_mul_port_det_flag_2_10), //o
    .port_det_flag_2_11 (hi_mul_port_det_flag_2_11), //o
    .port_det_flag_2_12 (hi_mul_port_det_flag_2_12), //o
    .port_det_flag_2_13 (hi_mul_port_det_flag_2_13), //o
    .port_det_flag_2_14 (hi_mul_port_det_flag_2_14), //o
    .port_det_flag_2_15 (hi_mul_port_det_flag_2_15), //o
    .port_det_flag_2_16 (hi_mul_port_det_flag_2_16), //o
    .port_det_flag_2_17 (hi_mul_port_det_flag_2_17), //o
    .port_det_flag_2_18 (hi_mul_port_det_flag_2_18), //o
    .port_det_flag_2_19 (hi_mul_port_det_flag_2_19), //o
    .port_det_flag_2_20 (hi_mul_port_det_flag_2_20), //o
    .port_det_flag_2_21 (hi_mul_port_det_flag_2_21), //o
    .port_det_flag_2_22 (hi_mul_port_det_flag_2_22), //o
    .port_det_flag_2_23 (hi_mul_port_det_flag_2_23), //o
    .clk                (clk                      ), //i
    .reset              (reset                    )  //i
  );
  Shared_GF_MULS_2 lo_mul (
    .port_a_0_0         (low_A_0_0[1:0]           ), //i
    .port_a_0_1         (low_A_0_1[1:0]           ), //i
    .port_a_1_0         (low_A_1_0[1:0]           ), //i
    .port_a_1_1         (low_A_1_1[1:0]           ), //i
    .port_a_2_0         (low_A_2_0[1:0]           ), //i
    .port_a_2_1         (low_A_2_1[1:0]           ), //i
    .port_ab_0          (port_Al_0[1:0]           ), //i
    .port_ab_1          (port_Al_1[1:0]           ), //i
    .port_ab_2          (port_Al_2[1:0]           ), //i
    .port_b_0_0         (low_B_0_0[1:0]           ), //i
    .port_b_0_1         (low_B_0_1[1:0]           ), //i
    .port_b_1_0         (low_B_1_0[1:0]           ), //i
    .port_b_1_1         (low_B_1_1[1:0]           ), //i
    .port_b_2_0         (low_B_2_0[1:0]           ), //i
    .port_b_2_1         (low_B_2_1[1:0]           ), //i
    .port_cd_0          (port_Bl_0[1:0]           ), //i
    .port_cd_1          (port_Bl_1[1:0]           ), //i
    .port_cd_2          (port_Bl_2[1:0]           ), //i
    .port_rand_0        (r1_0                     ), //i
    .port_rand_1        (r1_1                     ), //i
    .port_rand_2        (r1_2                     ), //i
    .port_rand_3        (r1_3                     ), //i
    .port_rand_4        (r1_4                     ), //i
    .port_rand_5        (r1_5                     ), //i
    .port_rand_6        (r1_6                     ), //i
    .port_rand_7        (r1_7                     ), //i
    .port_rand_8        (r1_8                     ), //i
    .port_rand_9        (r1_9                     ), //i
    .port_rand_10       (r1_10                    ), //i
    .port_rand_11       (r1_11                    ), //i
    .port_rand_12       (r1_12                    ), //i
    .port_rand_13       (r1_13                    ), //i
    .port_rand_14       (r1_14                    ), //i
    .port_rand_15       (r1_15                    ), //i
    .port_rand_16       (r1_16                    ), //i
    .port_rand_17       (r1_17                    ), //i
    .port_o_0_0         (lo_mul_port_o_0_0[1:0]   ), //o
    .port_o_0_1         (lo_mul_port_o_0_1[1:0]   ), //o
    .port_o_1_0         (lo_mul_port_o_1_0[1:0]   ), //o
    .port_o_1_1         (lo_mul_port_o_1_1[1:0]   ), //o
    .port_o_2_0         (lo_mul_port_o_2_0[1:0]   ), //o
    .port_o_2_1         (lo_mul_port_o_2_1[1:0]   ), //o
    .port_det_flag_0_0  (lo_mul_port_det_flag_0_0 ), //o
    .port_det_flag_0_1  (lo_mul_port_det_flag_0_1 ), //o
    .port_det_flag_0_2  (lo_mul_port_det_flag_0_2 ), //o
    .port_det_flag_0_3  (lo_mul_port_det_flag_0_3 ), //o
    .port_det_flag_0_4  (lo_mul_port_det_flag_0_4 ), //o
    .port_det_flag_0_5  (lo_mul_port_det_flag_0_5 ), //o
    .port_det_flag_0_6  (lo_mul_port_det_flag_0_6 ), //o
    .port_det_flag_0_7  (lo_mul_port_det_flag_0_7 ), //o
    .port_det_flag_0_8  (lo_mul_port_det_flag_0_8 ), //o
    .port_det_flag_0_9  (lo_mul_port_det_flag_0_9 ), //o
    .port_det_flag_0_10 (lo_mul_port_det_flag_0_10), //o
    .port_det_flag_0_11 (lo_mul_port_det_flag_0_11), //o
    .port_det_flag_0_12 (lo_mul_port_det_flag_0_12), //o
    .port_det_flag_0_13 (lo_mul_port_det_flag_0_13), //o
    .port_det_flag_0_14 (lo_mul_port_det_flag_0_14), //o
    .port_det_flag_0_15 (lo_mul_port_det_flag_0_15), //o
    .port_det_flag_0_16 (lo_mul_port_det_flag_0_16), //o
    .port_det_flag_0_17 (lo_mul_port_det_flag_0_17), //o
    .port_det_flag_0_18 (lo_mul_port_det_flag_0_18), //o
    .port_det_flag_0_19 (lo_mul_port_det_flag_0_19), //o
    .port_det_flag_0_20 (lo_mul_port_det_flag_0_20), //o
    .port_det_flag_0_21 (lo_mul_port_det_flag_0_21), //o
    .port_det_flag_0_22 (lo_mul_port_det_flag_0_22), //o
    .port_det_flag_0_23 (lo_mul_port_det_flag_0_23), //o
    .port_det_flag_1_0  (lo_mul_port_det_flag_1_0 ), //o
    .port_det_flag_1_1  (lo_mul_port_det_flag_1_1 ), //o
    .port_det_flag_1_2  (lo_mul_port_det_flag_1_2 ), //o
    .port_det_flag_1_3  (lo_mul_port_det_flag_1_3 ), //o
    .port_det_flag_1_4  (lo_mul_port_det_flag_1_4 ), //o
    .port_det_flag_1_5  (lo_mul_port_det_flag_1_5 ), //o
    .port_det_flag_1_6  (lo_mul_port_det_flag_1_6 ), //o
    .port_det_flag_1_7  (lo_mul_port_det_flag_1_7 ), //o
    .port_det_flag_1_8  (lo_mul_port_det_flag_1_8 ), //o
    .port_det_flag_1_9  (lo_mul_port_det_flag_1_9 ), //o
    .port_det_flag_1_10 (lo_mul_port_det_flag_1_10), //o
    .port_det_flag_1_11 (lo_mul_port_det_flag_1_11), //o
    .port_det_flag_1_12 (lo_mul_port_det_flag_1_12), //o
    .port_det_flag_1_13 (lo_mul_port_det_flag_1_13), //o
    .port_det_flag_1_14 (lo_mul_port_det_flag_1_14), //o
    .port_det_flag_1_15 (lo_mul_port_det_flag_1_15), //o
    .port_det_flag_1_16 (lo_mul_port_det_flag_1_16), //o
    .port_det_flag_1_17 (lo_mul_port_det_flag_1_17), //o
    .port_det_flag_1_18 (lo_mul_port_det_flag_1_18), //o
    .port_det_flag_1_19 (lo_mul_port_det_flag_1_19), //o
    .port_det_flag_1_20 (lo_mul_port_det_flag_1_20), //o
    .port_det_flag_1_21 (lo_mul_port_det_flag_1_21), //o
    .port_det_flag_1_22 (lo_mul_port_det_flag_1_22), //o
    .port_det_flag_1_23 (lo_mul_port_det_flag_1_23), //o
    .port_det_flag_2_0  (lo_mul_port_det_flag_2_0 ), //o
    .port_det_flag_2_1  (lo_mul_port_det_flag_2_1 ), //o
    .port_det_flag_2_2  (lo_mul_port_det_flag_2_2 ), //o
    .port_det_flag_2_3  (lo_mul_port_det_flag_2_3 ), //o
    .port_det_flag_2_4  (lo_mul_port_det_flag_2_4 ), //o
    .port_det_flag_2_5  (lo_mul_port_det_flag_2_5 ), //o
    .port_det_flag_2_6  (lo_mul_port_det_flag_2_6 ), //o
    .port_det_flag_2_7  (lo_mul_port_det_flag_2_7 ), //o
    .port_det_flag_2_8  (lo_mul_port_det_flag_2_8 ), //o
    .port_det_flag_2_9  (lo_mul_port_det_flag_2_9 ), //o
    .port_det_flag_2_10 (lo_mul_port_det_flag_2_10), //o
    .port_det_flag_2_11 (lo_mul_port_det_flag_2_11), //o
    .port_det_flag_2_12 (lo_mul_port_det_flag_2_12), //o
    .port_det_flag_2_13 (lo_mul_port_det_flag_2_13), //o
    .port_det_flag_2_14 (lo_mul_port_det_flag_2_14), //o
    .port_det_flag_2_15 (lo_mul_port_det_flag_2_15), //o
    .port_det_flag_2_16 (lo_mul_port_det_flag_2_16), //o
    .port_det_flag_2_17 (lo_mul_port_det_flag_2_17), //o
    .port_det_flag_2_18 (lo_mul_port_det_flag_2_18), //o
    .port_det_flag_2_19 (lo_mul_port_det_flag_2_19), //o
    .port_det_flag_2_20 (lo_mul_port_det_flag_2_20), //o
    .port_det_flag_2_21 (lo_mul_port_det_flag_2_21), //o
    .port_det_flag_2_22 (lo_mul_port_det_flag_2_22), //o
    .port_det_flag_2_23 (lo_mul_port_det_flag_2_23), //o
    .clk                (clk                      ), //i
    .reset              (reset                    )  //i
  );
  Shared_GF_MULS_SCL_2 sum_mul (
    .port_a_0_0   (port_a_0_0_1[1:0]      ), //i
    .port_a_0_1   (port_a_0_1_1[1:0]      ), //i
    .port_a_1_0   (port_a_1_0_1[1:0]      ), //i
    .port_a_1_1   (port_a_1_1_1[1:0]      ), //i
    .port_a_2_0   (port_a_2_0_1[1:0]      ), //i
    .port_a_2_1   (port_a_2_1_1[1:0]      ), //i
    .port_ab_0    (port_aa_0[1:0]         ), //i
    .port_ab_1    (port_aa_1[1:0]         ), //i
    .port_ab_2    (port_aa_2[1:0]         ), //i
    .port_b_0_0   (port_b_0_0_1[1:0]      ), //i
    .port_b_0_1   (port_b_0_1_1[1:0]      ), //i
    .port_b_1_0   (port_b_1_0_1[1:0]      ), //i
    .port_b_1_1   (port_b_1_1_1[1:0]      ), //i
    .port_b_2_0   (port_b_2_0_1[1:0]      ), //i
    .port_b_2_1   (port_b_2_1_1[1:0]      ), //i
    .port_cd_0    (port_bb_0[1:0]         ), //i
    .port_cd_1    (port_bb_1[1:0]         ), //i
    .port_cd_2    (port_bb_2[1:0]         ), //i
    .port_rand_0  (r2_0                   ), //i
    .port_rand_1  (r2_1                   ), //i
    .port_rand_2  (r2_2                   ), //i
    .port_rand_3  (r2_3                   ), //i
    .port_rand_4  (r2_4                   ), //i
    .port_rand_5  (r2_5                   ), //i
    .port_rand_6  (r2_6                   ), //i
    .port_rand_7  (r2_7                   ), //i
    .port_rand_8  (r2_8                   ), //i
    .port_rand_9  (r2_9                   ), //i
    .port_rand_10 (r2_10                  ), //i
    .port_rand_11 (r2_11                  ), //i
    .port_rand_12 (r2_12                  ), //i
    .port_rand_13 (r2_13                  ), //i
    .port_rand_14 (r2_14                  ), //i
    .port_rand_15 (r2_15                  ), //i
    .port_rand_16 (r2_16                  ), //i
    .port_rand_17 (r2_17                  ), //i
    .port_o_0_0   (sum_mul_port_o_0_0[1:0]), //o
    .port_o_0_1   (sum_mul_port_o_0_1[1:0]), //o
    .port_o_1_0   (sum_mul_port_o_1_0[1:0]), //o
    .port_o_1_1   (sum_mul_port_o_1_1[1:0]), //o
    .port_o_2_0   (sum_mul_port_o_2_0[1:0]), //o
    .port_o_2_1   (sum_mul_port_o_2_1[1:0]), //o
    .clk          (clk                    ), //i
    .reset        (reset                  )  //i
  );
  assign r0_0 = port_rand_0;
  assign r1_0 = port_rand_18;
  assign r2_0 = port_rand_36;
  assign r0_1 = port_rand_1;
  assign r1_1 = port_rand_19;
  assign r2_1 = port_rand_37;
  assign r0_2 = port_rand_2;
  assign r1_2 = port_rand_20;
  assign r2_2 = port_rand_38;
  assign r0_3 = port_rand_3;
  assign r1_3 = port_rand_21;
  assign r2_3 = port_rand_39;
  assign r0_4 = port_rand_4;
  assign r1_4 = port_rand_22;
  assign r2_4 = port_rand_40;
  assign r0_5 = port_rand_5;
  assign r1_5 = port_rand_23;
  assign r2_5 = port_rand_41;
  assign r0_6 = port_rand_6;
  assign r1_6 = port_rand_24;
  assign r2_6 = port_rand_42;
  assign r0_7 = port_rand_7;
  assign r1_7 = port_rand_25;
  assign r2_7 = port_rand_43;
  assign r0_8 = port_rand_8;
  assign r1_8 = port_rand_26;
  assign r2_8 = port_rand_44;
  assign r0_9 = port_rand_9;
  assign r1_9 = port_rand_27;
  assign r2_9 = port_rand_45;
  assign r0_10 = port_rand_10;
  assign r1_10 = port_rand_28;
  assign r2_10 = port_rand_46;
  assign r0_11 = port_rand_11;
  assign r1_11 = port_rand_29;
  assign r2_11 = port_rand_47;
  assign r0_12 = port_rand_12;
  assign r1_12 = port_rand_30;
  assign r2_12 = port_rand_48;
  assign r0_13 = port_rand_13;
  assign r1_13 = port_rand_31;
  assign r2_13 = port_rand_49;
  assign r0_14 = port_rand_14;
  assign r1_14 = port_rand_32;
  assign r2_14 = port_rand_50;
  assign r0_15 = port_rand_15;
  assign r1_15 = port_rand_33;
  assign r2_15 = port_rand_51;
  assign r0_16 = port_rand_16;
  assign r1_16 = port_rand_34;
  assign r2_16 = port_rand_52;
  assign r0_17 = port_rand_17;
  assign r1_17 = port_rand_35;
  assign r2_17 = port_rand_53;
  assign high_A_0_0 = port_A_0_2;
  assign high_A_0_1 = port_A_0_3;
  assign low_A_0_0 = port_A_0_0;
  assign low_A_0_1 = port_A_0_1;
  assign high_B_0_0 = port_B_0_2;
  assign high_B_0_1 = port_B_0_3;
  assign low_B_0_0 = port_B_0_0;
  assign low_B_0_1 = port_B_0_1;
  assign high_A_1_0 = port_A_1_2;
  assign high_A_1_1 = port_A_1_3;
  assign low_A_1_0 = port_A_1_0;
  assign low_A_1_1 = port_A_1_1;
  assign high_B_1_0 = port_B_1_2;
  assign high_B_1_1 = port_B_1_3;
  assign low_B_1_0 = port_B_1_0;
  assign low_B_1_1 = port_B_1_1;
  assign high_A_2_0 = port_A_2_2;
  assign high_A_2_1 = port_A_2_3;
  assign low_A_2_0 = port_A_2_0;
  assign low_A_2_1 = port_A_2_1;
  assign high_B_2_0 = port_B_2_2;
  assign high_B_2_1 = port_B_2_3;
  assign low_B_2_0 = port_B_2_0;
  assign low_B_2_1 = port_B_2_1;
  assign ph_0_0 = hi_mul_port_o_0_0;
  assign ph_0_1 = hi_mul_port_o_0_1;
  assign ph_1_0 = hi_mul_port_o_1_0;
  assign ph_1_1 = hi_mul_port_o_1_1;
  assign ph_2_0 = hi_mul_port_o_2_0;
  assign ph_2_1 = hi_mul_port_o_2_1;
  assign port_det_flag_0_0 = hi_mul_port_det_flag_0_0;
  assign port_det_flag_0_1 = hi_mul_port_det_flag_0_1;
  assign port_det_flag_0_2 = hi_mul_port_det_flag_0_2;
  assign port_det_flag_0_3 = hi_mul_port_det_flag_0_3;
  assign port_det_flag_0_4 = hi_mul_port_det_flag_0_4;
  assign port_det_flag_0_5 = hi_mul_port_det_flag_0_5;
  assign port_det_flag_0_6 = hi_mul_port_det_flag_0_6;
  assign port_det_flag_0_7 = hi_mul_port_det_flag_0_7;
  assign port_det_flag_0_8 = hi_mul_port_det_flag_0_8;
  assign port_det_flag_0_9 = hi_mul_port_det_flag_0_9;
  assign port_det_flag_0_10 = hi_mul_port_det_flag_0_10;
  assign port_det_flag_0_11 = hi_mul_port_det_flag_0_11;
  assign port_det_flag_0_12 = hi_mul_port_det_flag_0_12;
  assign port_det_flag_0_13 = hi_mul_port_det_flag_0_13;
  assign port_det_flag_0_14 = hi_mul_port_det_flag_0_14;
  assign port_det_flag_0_15 = hi_mul_port_det_flag_0_15;
  assign port_det_flag_0_16 = hi_mul_port_det_flag_0_16;
  assign port_det_flag_0_17 = hi_mul_port_det_flag_0_17;
  assign port_det_flag_0_18 = hi_mul_port_det_flag_0_18;
  assign port_det_flag_0_19 = hi_mul_port_det_flag_0_19;
  assign port_det_flag_0_20 = hi_mul_port_det_flag_0_20;
  assign port_det_flag_0_21 = hi_mul_port_det_flag_0_21;
  assign port_det_flag_0_22 = hi_mul_port_det_flag_0_22;
  assign port_det_flag_0_23 = hi_mul_port_det_flag_0_23;
  assign port_det_flag_1_0 = hi_mul_port_det_flag_1_0;
  assign port_det_flag_1_1 = hi_mul_port_det_flag_1_1;
  assign port_det_flag_1_2 = hi_mul_port_det_flag_1_2;
  assign port_det_flag_1_3 = hi_mul_port_det_flag_1_3;
  assign port_det_flag_1_4 = hi_mul_port_det_flag_1_4;
  assign port_det_flag_1_5 = hi_mul_port_det_flag_1_5;
  assign port_det_flag_1_6 = hi_mul_port_det_flag_1_6;
  assign port_det_flag_1_7 = hi_mul_port_det_flag_1_7;
  assign port_det_flag_1_8 = hi_mul_port_det_flag_1_8;
  assign port_det_flag_1_9 = hi_mul_port_det_flag_1_9;
  assign port_det_flag_1_10 = hi_mul_port_det_flag_1_10;
  assign port_det_flag_1_11 = hi_mul_port_det_flag_1_11;
  assign port_det_flag_1_12 = hi_mul_port_det_flag_1_12;
  assign port_det_flag_1_13 = hi_mul_port_det_flag_1_13;
  assign port_det_flag_1_14 = hi_mul_port_det_flag_1_14;
  assign port_det_flag_1_15 = hi_mul_port_det_flag_1_15;
  assign port_det_flag_1_16 = hi_mul_port_det_flag_1_16;
  assign port_det_flag_1_17 = hi_mul_port_det_flag_1_17;
  assign port_det_flag_1_18 = hi_mul_port_det_flag_1_18;
  assign port_det_flag_1_19 = hi_mul_port_det_flag_1_19;
  assign port_det_flag_1_20 = hi_mul_port_det_flag_1_20;
  assign port_det_flag_1_21 = hi_mul_port_det_flag_1_21;
  assign port_det_flag_1_22 = hi_mul_port_det_flag_1_22;
  assign port_det_flag_1_23 = hi_mul_port_det_flag_1_23;
  assign port_det_flag_2_0 = hi_mul_port_det_flag_2_0;
  assign port_det_flag_2_1 = hi_mul_port_det_flag_2_1;
  assign port_det_flag_2_2 = hi_mul_port_det_flag_2_2;
  assign port_det_flag_2_3 = hi_mul_port_det_flag_2_3;
  assign port_det_flag_2_4 = hi_mul_port_det_flag_2_4;
  assign port_det_flag_2_5 = hi_mul_port_det_flag_2_5;
  assign port_det_flag_2_6 = hi_mul_port_det_flag_2_6;
  assign port_det_flag_2_7 = hi_mul_port_det_flag_2_7;
  assign port_det_flag_2_8 = hi_mul_port_det_flag_2_8;
  assign port_det_flag_2_9 = hi_mul_port_det_flag_2_9;
  assign port_det_flag_2_10 = hi_mul_port_det_flag_2_10;
  assign port_det_flag_2_11 = hi_mul_port_det_flag_2_11;
  assign port_det_flag_2_12 = hi_mul_port_det_flag_2_12;
  assign port_det_flag_2_13 = hi_mul_port_det_flag_2_13;
  assign port_det_flag_2_14 = hi_mul_port_det_flag_2_14;
  assign port_det_flag_2_15 = hi_mul_port_det_flag_2_15;
  assign port_det_flag_2_16 = hi_mul_port_det_flag_2_16;
  assign port_det_flag_2_17 = hi_mul_port_det_flag_2_17;
  assign port_det_flag_2_18 = hi_mul_port_det_flag_2_18;
  assign port_det_flag_2_19 = hi_mul_port_det_flag_2_19;
  assign port_det_flag_2_20 = hi_mul_port_det_flag_2_20;
  assign port_det_flag_2_21 = hi_mul_port_det_flag_2_21;
  assign port_det_flag_2_22 = hi_mul_port_det_flag_2_22;
  assign port_det_flag_2_23 = hi_mul_port_det_flag_2_23;
  assign pl_0_0 = lo_mul_port_o_0_0;
  assign pl_0_1 = lo_mul_port_o_0_1;
  assign pl_1_0 = lo_mul_port_o_1_0;
  assign pl_1_1 = lo_mul_port_o_1_1;
  assign pl_2_0 = lo_mul_port_o_2_0;
  assign pl_2_1 = lo_mul_port_o_2_1;
  assign port_det_flag_3_0 = lo_mul_port_det_flag_0_0;
  assign port_det_flag_3_1 = lo_mul_port_det_flag_0_1;
  assign port_det_flag_3_2 = lo_mul_port_det_flag_0_2;
  assign port_det_flag_3_3 = lo_mul_port_det_flag_0_3;
  assign port_det_flag_3_4 = lo_mul_port_det_flag_0_4;
  assign port_det_flag_3_5 = lo_mul_port_det_flag_0_5;
  assign port_det_flag_3_6 = lo_mul_port_det_flag_0_6;
  assign port_det_flag_3_7 = lo_mul_port_det_flag_0_7;
  assign port_det_flag_3_8 = lo_mul_port_det_flag_0_8;
  assign port_det_flag_3_9 = lo_mul_port_det_flag_0_9;
  assign port_det_flag_3_10 = lo_mul_port_det_flag_0_10;
  assign port_det_flag_3_11 = lo_mul_port_det_flag_0_11;
  assign port_det_flag_3_12 = lo_mul_port_det_flag_0_12;
  assign port_det_flag_3_13 = lo_mul_port_det_flag_0_13;
  assign port_det_flag_3_14 = lo_mul_port_det_flag_0_14;
  assign port_det_flag_3_15 = lo_mul_port_det_flag_0_15;
  assign port_det_flag_3_16 = lo_mul_port_det_flag_0_16;
  assign port_det_flag_3_17 = lo_mul_port_det_flag_0_17;
  assign port_det_flag_3_18 = lo_mul_port_det_flag_0_18;
  assign port_det_flag_3_19 = lo_mul_port_det_flag_0_19;
  assign port_det_flag_3_20 = lo_mul_port_det_flag_0_20;
  assign port_det_flag_3_21 = lo_mul_port_det_flag_0_21;
  assign port_det_flag_3_22 = lo_mul_port_det_flag_0_22;
  assign port_det_flag_3_23 = lo_mul_port_det_flag_0_23;
  assign port_det_flag_4_0 = lo_mul_port_det_flag_1_0;
  assign port_det_flag_4_1 = lo_mul_port_det_flag_1_1;
  assign port_det_flag_4_2 = lo_mul_port_det_flag_1_2;
  assign port_det_flag_4_3 = lo_mul_port_det_flag_1_3;
  assign port_det_flag_4_4 = lo_mul_port_det_flag_1_4;
  assign port_det_flag_4_5 = lo_mul_port_det_flag_1_5;
  assign port_det_flag_4_6 = lo_mul_port_det_flag_1_6;
  assign port_det_flag_4_7 = lo_mul_port_det_flag_1_7;
  assign port_det_flag_4_8 = lo_mul_port_det_flag_1_8;
  assign port_det_flag_4_9 = lo_mul_port_det_flag_1_9;
  assign port_det_flag_4_10 = lo_mul_port_det_flag_1_10;
  assign port_det_flag_4_11 = lo_mul_port_det_flag_1_11;
  assign port_det_flag_4_12 = lo_mul_port_det_flag_1_12;
  assign port_det_flag_4_13 = lo_mul_port_det_flag_1_13;
  assign port_det_flag_4_14 = lo_mul_port_det_flag_1_14;
  assign port_det_flag_4_15 = lo_mul_port_det_flag_1_15;
  assign port_det_flag_4_16 = lo_mul_port_det_flag_1_16;
  assign port_det_flag_4_17 = lo_mul_port_det_flag_1_17;
  assign port_det_flag_4_18 = lo_mul_port_det_flag_1_18;
  assign port_det_flag_4_19 = lo_mul_port_det_flag_1_19;
  assign port_det_flag_4_20 = lo_mul_port_det_flag_1_20;
  assign port_det_flag_4_21 = lo_mul_port_det_flag_1_21;
  assign port_det_flag_4_22 = lo_mul_port_det_flag_1_22;
  assign port_det_flag_4_23 = lo_mul_port_det_flag_1_23;
  assign port_det_flag_5_0 = lo_mul_port_det_flag_2_0;
  assign port_det_flag_5_1 = lo_mul_port_det_flag_2_1;
  assign port_det_flag_5_2 = lo_mul_port_det_flag_2_2;
  assign port_det_flag_5_3 = lo_mul_port_det_flag_2_3;
  assign port_det_flag_5_4 = lo_mul_port_det_flag_2_4;
  assign port_det_flag_5_5 = lo_mul_port_det_flag_2_5;
  assign port_det_flag_5_6 = lo_mul_port_det_flag_2_6;
  assign port_det_flag_5_7 = lo_mul_port_det_flag_2_7;
  assign port_det_flag_5_8 = lo_mul_port_det_flag_2_8;
  assign port_det_flag_5_9 = lo_mul_port_det_flag_2_9;
  assign port_det_flag_5_10 = lo_mul_port_det_flag_2_10;
  assign port_det_flag_5_11 = lo_mul_port_det_flag_2_11;
  assign port_det_flag_5_12 = lo_mul_port_det_flag_2_12;
  assign port_det_flag_5_13 = lo_mul_port_det_flag_2_13;
  assign port_det_flag_5_14 = lo_mul_port_det_flag_2_14;
  assign port_det_flag_5_15 = lo_mul_port_det_flag_2_15;
  assign port_det_flag_5_16 = lo_mul_port_det_flag_2_16;
  assign port_det_flag_5_17 = lo_mul_port_det_flag_2_17;
  assign port_det_flag_5_18 = lo_mul_port_det_flag_2_18;
  assign port_det_flag_5_19 = lo_mul_port_det_flag_2_19;
  assign port_det_flag_5_20 = lo_mul_port_det_flag_2_20;
  assign port_det_flag_5_21 = lo_mul_port_det_flag_2_21;
  assign port_det_flag_5_22 = lo_mul_port_det_flag_2_22;
  assign port_det_flag_5_23 = lo_mul_port_det_flag_2_23;
  assign p_0_0 = sum_mul_port_o_0_0;
  assign p_0_1 = sum_mul_port_o_0_1;
  assign p_1_0 = sum_mul_port_o_1_0;
  assign p_1_1 = sum_mul_port_o_1_1;
  assign p_2_0 = sum_mul_port_o_2_0;
  assign p_2_1 = sum_mul_port_o_2_1;
  assign port_o_0_0 = (pl_0_0 ^ p_0_0);
  assign port_o_0_1 = (pl_0_1 ^ p_0_1);
  assign port_o_0_2 = (ph_0_0 ^ p_0_0);
  assign port_o_0_3 = (ph_0_1 ^ p_0_1);
  assign port_o_1_0 = (pl_1_0 ^ p_1_0);
  assign port_o_1_1 = (pl_1_1 ^ p_1_1);
  assign port_o_1_2 = (ph_1_0 ^ p_1_0);
  assign port_o_1_3 = (ph_1_1 ^ p_1_1);
  assign port_o_2_0 = (pl_2_0 ^ p_2_0);
  assign port_o_2_1 = (pl_2_1 ^ p_2_1);
  assign port_o_2_2 = (ph_2_0 ^ p_2_0);
  assign port_o_2_3 = (ph_2_1 ^ p_2_1);

endmodule

module Shared_GF_SQ_SCL_4 (
  input      [1:0]    port_i_0_0,
  input      [1:0]    port_i_0_1,
  input      [1:0]    port_i_0_2,
  input      [1:0]    port_i_0_3,
  input      [1:0]    port_i_1_0,
  input      [1:0]    port_i_1_1,
  input      [1:0]    port_i_1_2,
  input      [1:0]    port_i_1_3,
  input      [1:0]    port_i_2_0,
  input      [1:0]    port_i_2_1,
  input      [1:0]    port_i_2_2,
  input      [1:0]    port_i_2_3,
  output     [1:0]    port_o_0_0,
  output     [1:0]    port_o_0_1,
  output     [1:0]    port_o_0_2,
  output     [1:0]    port_o_0_3,
  output     [1:0]    port_o_1_0,
  output     [1:0]    port_o_1_1,
  output     [1:0]    port_o_1_2,
  output     [1:0]    port_o_1_3,
  output     [1:0]    port_o_2_0,
  output     [1:0]    port_o_2_1,
  output     [1:0]    port_o_2_2,
  output     [1:0]    port_o_2_3
);

  wire       [1:0]    ab_sq_port_o_0_0;
  wire       [1:0]    ab_sq_port_o_0_1;
  wire       [1:0]    ab_sq_port_o_1_0;
  wire       [1:0]    ab_sq_port_o_1_1;
  wire       [1:0]    ab_sq_port_o_2_0;
  wire       [1:0]    ab_sq_port_o_2_1;
  wire       [1:0]    b_sq_port_o_0_0;
  wire       [1:0]    b_sq_port_o_0_1;
  wire       [1:0]    b_sq_port_o_1_0;
  wire       [1:0]    b_sq_port_o_1_1;
  wire       [1:0]    b_sq_port_o_2_0;
  wire       [1:0]    b_sq_port_o_2_1;
  wire       [1:0]    b_mulN2_port_o_0_0;
  wire       [1:0]    b_mulN2_port_o_0_1;
  wire       [1:0]    b_mulN2_port_o_1_0;
  wire       [1:0]    b_mulN2_port_o_1_1;
  wire       [1:0]    b_mulN2_port_o_2_0;
  wire       [1:0]    b_mulN2_port_o_2_1;
  wire       [1:0]    ax_0_0;
  wire       [1:0]    ax_0_1;
  wire       [1:0]    ax_1_0;
  wire       [1:0]    ax_1_1;
  wire       [1:0]    ax_2_0;
  wire       [1:0]    ax_2_1;
  wire       [1:0]    bx_0_0;
  wire       [1:0]    bx_0_1;
  wire       [1:0]    bx_1_0;
  wire       [1:0]    bx_1_1;
  wire       [1:0]    bx_2_0;
  wire       [1:0]    bx_2_1;
  wire       [1:0]    abx_0_0;
  wire       [1:0]    abx_0_1;
  wire       [1:0]    abx_1_0;
  wire       [1:0]    abx_1_1;
  wire       [1:0]    abx_2_0;
  wire       [1:0]    abx_2_1;
  wire       [1:0]    ab2x_0_0;
  wire       [1:0]    ab2x_0_1;
  wire       [1:0]    ab2x_1_0;
  wire       [1:0]    ab2x_1_1;
  wire       [1:0]    ab2x_2_0;
  wire       [1:0]    ab2x_2_1;
  wire       [1:0]    b2x_0_0;
  wire       [1:0]    b2x_0_1;
  wire       [1:0]    b2x_1_0;
  wire       [1:0]    b2x_1_1;
  wire       [1:0]    b2x_2_0;
  wire       [1:0]    b2x_2_1;
  wire       [1:0]    b2N2_0_0;
  wire       [1:0]    b2N2_0_1;
  wire       [1:0]    b2N2_1_0;
  wire       [1:0]    b2N2_1_1;
  wire       [1:0]    b2N2_2_0;
  wire       [1:0]    b2N2_2_1;

  Shared_GF_SQ_2 ab_sq (
    .port_i_0_0 (abx_0_0[1:0]         ), //i
    .port_i_0_1 (abx_0_1[1:0]         ), //i
    .port_i_1_0 (abx_1_0[1:0]         ), //i
    .port_i_1_1 (abx_1_1[1:0]         ), //i
    .port_i_2_0 (abx_2_0[1:0]         ), //i
    .port_i_2_1 (abx_2_1[1:0]         ), //i
    .port_o_0_0 (ab_sq_port_o_0_0[1:0]), //o
    .port_o_0_1 (ab_sq_port_o_0_1[1:0]), //o
    .port_o_1_0 (ab_sq_port_o_1_0[1:0]), //o
    .port_o_1_1 (ab_sq_port_o_1_1[1:0]), //o
    .port_o_2_0 (ab_sq_port_o_2_0[1:0]), //o
    .port_o_2_1 (ab_sq_port_o_2_1[1:0])  //o
  );
  Shared_GF_SQ_2 b_sq (
    .port_i_0_0 (bx_0_0[1:0]         ), //i
    .port_i_0_1 (bx_0_1[1:0]         ), //i
    .port_i_1_0 (bx_1_0[1:0]         ), //i
    .port_i_1_1 (bx_1_1[1:0]         ), //i
    .port_i_2_0 (bx_2_0[1:0]         ), //i
    .port_i_2_1 (bx_2_1[1:0]         ), //i
    .port_o_0_0 (b_sq_port_o_0_0[1:0]), //o
    .port_o_0_1 (b_sq_port_o_0_1[1:0]), //o
    .port_o_1_0 (b_sq_port_o_1_0[1:0]), //o
    .port_o_1_1 (b_sq_port_o_1_1[1:0]), //o
    .port_o_2_0 (b_sq_port_o_2_0[1:0]), //o
    .port_o_2_1 (b_sq_port_o_2_1[1:0])  //o
  );
  Shared_GF_SCLW_2 b_mulN2 (
    .port_i_0_0 (b2x_0_0[1:0]           ), //i
    .port_i_0_1 (b2x_0_1[1:0]           ), //i
    .port_i_1_0 (b2x_1_0[1:0]           ), //i
    .port_i_1_1 (b2x_1_1[1:0]           ), //i
    .port_i_2_0 (b2x_2_0[1:0]           ), //i
    .port_i_2_1 (b2x_2_1[1:0]           ), //i
    .port_o_0_0 (b_mulN2_port_o_0_0[1:0]), //o
    .port_o_0_1 (b_mulN2_port_o_0_1[1:0]), //o
    .port_o_1_0 (b_mulN2_port_o_1_0[1:0]), //o
    .port_o_1_1 (b_mulN2_port_o_1_1[1:0]), //o
    .port_o_2_0 (b_mulN2_port_o_2_0[1:0]), //o
    .port_o_2_1 (b_mulN2_port_o_2_1[1:0])  //o
  );
  assign ax_0_0 = port_i_0_2;
  assign ax_0_1 = port_i_0_3;
  assign bx_0_0 = port_i_0_0;
  assign bx_0_1 = port_i_0_1;
  assign abx_0_0 = (ax_0_0 ^ bx_0_0);
  assign abx_0_1 = (ax_0_1 ^ bx_0_1);
  assign ax_1_0 = port_i_1_2;
  assign ax_1_1 = port_i_1_3;
  assign bx_1_0 = port_i_1_0;
  assign bx_1_1 = port_i_1_1;
  assign abx_1_0 = (ax_1_0 ^ bx_1_0);
  assign abx_1_1 = (ax_1_1 ^ bx_1_1);
  assign ax_2_0 = port_i_2_2;
  assign ax_2_1 = port_i_2_3;
  assign bx_2_0 = port_i_2_0;
  assign bx_2_1 = port_i_2_1;
  assign abx_2_0 = (ax_2_0 ^ bx_2_0);
  assign abx_2_1 = (ax_2_1 ^ bx_2_1);
  assign ab2x_0_0 = ab_sq_port_o_0_0;
  assign ab2x_0_1 = ab_sq_port_o_0_1;
  assign ab2x_1_0 = ab_sq_port_o_1_0;
  assign ab2x_1_1 = ab_sq_port_o_1_1;
  assign ab2x_2_0 = ab_sq_port_o_2_0;
  assign ab2x_2_1 = ab_sq_port_o_2_1;
  assign b2x_0_0 = b_sq_port_o_0_0;
  assign b2x_0_1 = b_sq_port_o_0_1;
  assign b2x_1_0 = b_sq_port_o_1_0;
  assign b2x_1_1 = b_sq_port_o_1_1;
  assign b2x_2_0 = b_sq_port_o_2_0;
  assign b2x_2_1 = b_sq_port_o_2_1;
  assign b2N2_0_0 = b_mulN2_port_o_0_0;
  assign b2N2_0_1 = b_mulN2_port_o_0_1;
  assign b2N2_1_0 = b_mulN2_port_o_1_0;
  assign b2N2_1_1 = b_mulN2_port_o_1_1;
  assign b2N2_2_0 = b_mulN2_port_o_2_0;
  assign b2N2_2_1 = b_mulN2_port_o_2_1;
  assign port_o_0_0 = b2N2_0_0;
  assign port_o_0_1 = b2N2_0_1;
  assign port_o_0_2 = ab2x_0_0;
  assign port_o_0_3 = ab2x_0_1;
  assign port_o_1_0 = b2N2_1_0;
  assign port_o_1_1 = b2N2_1_1;
  assign port_o_1_2 = ab2x_1_0;
  assign port_o_1_3 = ab2x_1_1;
  assign port_o_2_0 = b2N2_2_0;
  assign port_o_2_1 = b2N2_2_1;
  assign port_o_2_2 = ab2x_2_0;
  assign port_o_2_3 = ab2x_2_1;

endmodule

//Shared_GF_MULS_SCL_2 replaced by Shared_GF_MULS_SCL_2

//Shared_GF_MULS_2 replaced by Shared_GF_MULS_2

//Shared_GF_MULS_2 replaced by Shared_GF_MULS_2

//Shared_GF_MULS_SCL_2 replaced by Shared_GF_MULS_SCL_2

//Shared_GF_MULS_2 replaced by Shared_GF_MULS_2

//Shared_GF_MULS_2 replaced by Shared_GF_MULS_2

//Shared_GF_MULS_2 replaced by Shared_GF_MULS_2

//Shared_GF_MULS_2 replaced by Shared_GF_MULS_2

//Shared_GF_SQ_2 replaced by Shared_GF_SQ_2

module Shared_GF_SCLW2_2 (
  input      [1:0]    port_i_0_0,
  input      [1:0]    port_i_0_1,
  input      [1:0]    port_i_1_0,
  input      [1:0]    port_i_1_1,
  input      [1:0]    port_i_2_0,
  input      [1:0]    port_i_2_1,
  output     [1:0]    port_o_0_0,
  output     [1:0]    port_o_0_1,
  output     [1:0]    port_o_1_0,
  output     [1:0]    port_o_1_1,
  output     [1:0]    port_o_2_0,
  output     [1:0]    port_o_2_1
);


  assign port_o_0_0 = (port_i_0_1 ^ port_i_0_0);
  assign port_o_0_1 = port_i_0_0;
  assign port_o_1_0 = (port_i_1_1 ^ port_i_1_0);
  assign port_o_1_1 = port_i_1_0;
  assign port_o_2_0 = (port_i_2_1 ^ port_i_2_0);
  assign port_o_2_1 = port_i_2_0;

endmodule

//Shared_GF_SQ_2 replaced by Shared_GF_SQ_2

//Shared_GF_MULS_2 replaced by Shared_GF_MULS_2

module Shared_GF_MULS_SCL_2 (
  input      [1:0]    port_a_0_0,
  input      [1:0]    port_a_0_1,
  input      [1:0]    port_a_1_0,
  input      [1:0]    port_a_1_1,
  input      [1:0]    port_a_2_0,
  input      [1:0]    port_a_2_1,
  input      [1:0]    port_ab_0,
  input      [1:0]    port_ab_1,
  input      [1:0]    port_ab_2,
  input      [1:0]    port_b_0_0,
  input      [1:0]    port_b_0_1,
  input      [1:0]    port_b_1_0,
  input      [1:0]    port_b_1_1,
  input      [1:0]    port_b_2_0,
  input      [1:0]    port_b_2_1,
  input      [1:0]    port_cd_0,
  input      [1:0]    port_cd_1,
  input      [1:0]    port_cd_2,
  input               port_rand_0,
  input               port_rand_1,
  input               port_rand_2,
  input               port_rand_3,
  input               port_rand_4,
  input               port_rand_5,
  input               port_rand_6,
  input               port_rand_7,
  input               port_rand_8,
  input               port_rand_9,
  input               port_rand_10,
  input               port_rand_11,
  input               port_rand_12,
  input               port_rand_13,
  input               port_rand_14,
  input               port_rand_15,
  input               port_rand_16,
  input               port_rand_17,
  output     [1:0]    port_o_0_0,
  output     [1:0]    port_o_0_1,
  output     [1:0]    port_o_1_0,
  output     [1:0]    port_o_1_1,
  output     [1:0]    port_o_2_0,
  output     [1:0]    port_o_2_1,
  input               clk,
  input               reset
);

  wire       [1:0]    and_1_port_z_0;
  wire       [1:0]    and_1_port_z_1;
  wire       [1:0]    and_1_port_z_2;
  wire                and_1_port_det_flag_0;
  wire                and_1_port_det_flag_1;
  wire                and_1_port_det_flag_2;
  wire                and_1_port_det_flag_3;
  wire                and_1_port_det_flag_4;
  wire                and_1_port_det_flag_5;
  wire                and_1_port_det_flag_6;
  wire                and_1_port_det_flag_7;
  wire                and_1_port_det_flag_8;
  wire                and_1_port_det_flag_9;
  wire                and_1_port_det_flag_10;
  wire                and_1_port_det_flag_11;
  wire                and_1_port_det_flag_12;
  wire                and_1_port_det_flag_13;
  wire                and_1_port_det_flag_14;
  wire                and_1_port_det_flag_15;
  wire                and_1_port_det_flag_16;
  wire                and_1_port_det_flag_17;
  wire                and_1_port_det_flag_18;
  wire                and_1_port_det_flag_19;
  wire                and_1_port_det_flag_20;
  wire                and_1_port_det_flag_21;
  wire                and_1_port_det_flag_22;
  wire                and_1_port_det_flag_23;
  wire       [1:0]    not_1_port_z_0;
  wire       [1:0]    not_1_port_z_1;
  wire       [1:0]    not_1_port_z_2;
  wire       [1:0]    and_2_port_z_0;
  wire       [1:0]    and_2_port_z_1;
  wire       [1:0]    and_2_port_z_2;
  wire                and_2_port_det_flag_0;
  wire                and_2_port_det_flag_1;
  wire                and_2_port_det_flag_2;
  wire                and_2_port_det_flag_3;
  wire                and_2_port_det_flag_4;
  wire                and_2_port_det_flag_5;
  wire                and_2_port_det_flag_6;
  wire                and_2_port_det_flag_7;
  wire                and_2_port_det_flag_8;
  wire                and_2_port_det_flag_9;
  wire                and_2_port_det_flag_10;
  wire                and_2_port_det_flag_11;
  wire                and_2_port_det_flag_12;
  wire                and_2_port_det_flag_13;
  wire                and_2_port_det_flag_14;
  wire                and_2_port_det_flag_15;
  wire                and_2_port_det_flag_16;
  wire                and_2_port_det_flag_17;
  wire                and_2_port_det_flag_18;
  wire                and_2_port_det_flag_19;
  wire                and_2_port_det_flag_20;
  wire                and_2_port_det_flag_21;
  wire                and_2_port_det_flag_22;
  wire                and_2_port_det_flag_23;
  wire       [1:0]    not_2_port_z_0;
  wire       [1:0]    not_2_port_z_1;
  wire       [1:0]    not_2_port_z_2;
  wire       [1:0]    xor_2_port_z_0;
  wire       [1:0]    xor_2_port_z_1;
  wire       [1:0]    xor_2_port_z_2;
  wire       [1:0]    and_3_port_z_0;
  wire       [1:0]    and_3_port_z_1;
  wire       [1:0]    and_3_port_z_2;
  wire                and_3_port_det_flag_0;
  wire                and_3_port_det_flag_1;
  wire                and_3_port_det_flag_2;
  wire                and_3_port_det_flag_3;
  wire                and_3_port_det_flag_4;
  wire                and_3_port_det_flag_5;
  wire                and_3_port_det_flag_6;
  wire                and_3_port_det_flag_7;
  wire                and_3_port_det_flag_8;
  wire                and_3_port_det_flag_9;
  wire                and_3_port_det_flag_10;
  wire                and_3_port_det_flag_11;
  wire                and_3_port_det_flag_12;
  wire                and_3_port_det_flag_13;
  wire                and_3_port_det_flag_14;
  wire                and_3_port_det_flag_15;
  wire                and_3_port_det_flag_16;
  wire                and_3_port_det_flag_17;
  wire                and_3_port_det_flag_18;
  wire                and_3_port_det_flag_19;
  wire                and_3_port_det_flag_20;
  wire                and_3_port_det_flag_21;
  wire                and_3_port_det_flag_22;
  wire                and_3_port_det_flag_23;
  wire       [1:0]    not_3_port_z_0;
  wire       [1:0]    not_3_port_z_1;
  wire       [1:0]    not_3_port_z_2;
  wire       [1:0]    xor_3_port_z_0;
  wire       [1:0]    xor_3_port_z_1;
  wire       [1:0]    xor_3_port_z_2;
  wire                r0_0;
  wire                r0_1;
  wire                r0_2;
  wire                r0_3;
  wire                r0_4;
  wire                r0_5;
  wire                r1_0;
  wire                r1_1;
  wire                r1_2;
  wire                r1_3;
  wire                r1_4;
  wire                r1_5;
  wire                r2_0;
  wire                r2_1;
  wire                r2_2;
  wire                r2_3;
  wire                r2_4;
  wire                r2_5;
  wire       [1:0]    ax_0_0;
  wire       [1:0]    ax_0_1;
  wire       [1:0]    ax_0_2;
  wire       [1:0]    ax_1_0;
  wire       [1:0]    ax_1_1;
  wire       [1:0]    ax_1_2;
  wire       [1:0]    bx_0_0;
  wire       [1:0]    bx_0_1;
  wire       [1:0]    bx_0_2;
  wire       [1:0]    bx_1_0;
  wire       [1:0]    bx_1_1;
  wire       [1:0]    bx_1_2;
  wire       [1:0]    outVal_0_0;
  wire       [1:0]    outVal_0_1;
  wire       [1:0]    outVal_1_0;
  wire       [1:0]    outVal_1_1;
  wire       [1:0]    outVal_2_0;
  wire       [1:0]    outVal_2_1;

  Shared_And and_1 (
    .port_a_0         (ax_0_0[1:0]           ), //i
    .port_a_1         (ax_0_1[1:0]           ), //i
    .port_a_2         (ax_0_2[1:0]           ), //i
    .port_b_0         (bx_0_0[1:0]           ), //i
    .port_b_1         (bx_0_1[1:0]           ), //i
    .port_b_2         (bx_0_2[1:0]           ), //i
    .port_rand_0      (r0_0                  ), //i
    .port_rand_1      (r0_1                  ), //i
    .port_rand_2      (r0_2                  ), //i
    .port_rand_3      (r0_3                  ), //i
    .port_rand_4      (r0_4                  ), //i
    .port_rand_5      (r0_5                  ), //i
    .port_z_0         (and_1_port_z_0[1:0]   ), //o
    .port_z_1         (and_1_port_z_1[1:0]   ), //o
    .port_z_2         (and_1_port_z_2[1:0]   ), //o
    .port_det_flag_0  (and_1_port_det_flag_0 ), //o
    .port_det_flag_1  (and_1_port_det_flag_1 ), //o
    .port_det_flag_2  (and_1_port_det_flag_2 ), //o
    .port_det_flag_3  (and_1_port_det_flag_3 ), //o
    .port_det_flag_4  (and_1_port_det_flag_4 ), //o
    .port_det_flag_5  (and_1_port_det_flag_5 ), //o
    .port_det_flag_6  (and_1_port_det_flag_6 ), //o
    .port_det_flag_7  (and_1_port_det_flag_7 ), //o
    .port_det_flag_8  (and_1_port_det_flag_8 ), //o
    .port_det_flag_9  (and_1_port_det_flag_9 ), //o
    .port_det_flag_10 (and_1_port_det_flag_10), //o
    .port_det_flag_11 (and_1_port_det_flag_11), //o
    .port_det_flag_12 (and_1_port_det_flag_12), //o
    .port_det_flag_13 (and_1_port_det_flag_13), //o
    .port_det_flag_14 (and_1_port_det_flag_14), //o
    .port_det_flag_15 (and_1_port_det_flag_15), //o
    .port_det_flag_16 (and_1_port_det_flag_16), //o
    .port_det_flag_17 (and_1_port_det_flag_17), //o
    .port_det_flag_18 (and_1_port_det_flag_18), //o
    .port_det_flag_19 (and_1_port_det_flag_19), //o
    .port_det_flag_20 (and_1_port_det_flag_20), //o
    .port_det_flag_21 (and_1_port_det_flag_21), //o
    .port_det_flag_22 (and_1_port_det_flag_22), //o
    .port_det_flag_23 (and_1_port_det_flag_23), //o
    .clk              (clk                   ), //i
    .reset            (reset                 )  //i
  );
  Shared_Not not_1 (
    .port_a_0 (and_1_port_z_0[1:0]), //i
    .port_a_1 (and_1_port_z_1[1:0]), //i
    .port_a_2 (and_1_port_z_2[1:0]), //i
    .port_z_0 (not_1_port_z_0[1:0]), //o
    .port_z_1 (not_1_port_z_1[1:0]), //o
    .port_z_2 (not_1_port_z_2[1:0])  //o
  );
  Shared_And and_2 (
    .port_a_0         (ax_1_0[1:0]           ), //i
    .port_a_1         (ax_1_1[1:0]           ), //i
    .port_a_2         (ax_1_2[1:0]           ), //i
    .port_b_0         (bx_1_0[1:0]           ), //i
    .port_b_1         (bx_1_1[1:0]           ), //i
    .port_b_2         (bx_1_2[1:0]           ), //i
    .port_rand_0      (r1_0                  ), //i
    .port_rand_1      (r1_1                  ), //i
    .port_rand_2      (r1_2                  ), //i
    .port_rand_3      (r1_3                  ), //i
    .port_rand_4      (r1_4                  ), //i
    .port_rand_5      (r1_5                  ), //i
    .port_z_0         (and_2_port_z_0[1:0]   ), //o
    .port_z_1         (and_2_port_z_1[1:0]   ), //o
    .port_z_2         (and_2_port_z_2[1:0]   ), //o
    .port_det_flag_0  (and_2_port_det_flag_0 ), //o
    .port_det_flag_1  (and_2_port_det_flag_1 ), //o
    .port_det_flag_2  (and_2_port_det_flag_2 ), //o
    .port_det_flag_3  (and_2_port_det_flag_3 ), //o
    .port_det_flag_4  (and_2_port_det_flag_4 ), //o
    .port_det_flag_5  (and_2_port_det_flag_5 ), //o
    .port_det_flag_6  (and_2_port_det_flag_6 ), //o
    .port_det_flag_7  (and_2_port_det_flag_7 ), //o
    .port_det_flag_8  (and_2_port_det_flag_8 ), //o
    .port_det_flag_9  (and_2_port_det_flag_9 ), //o
    .port_det_flag_10 (and_2_port_det_flag_10), //o
    .port_det_flag_11 (and_2_port_det_flag_11), //o
    .port_det_flag_12 (and_2_port_det_flag_12), //o
    .port_det_flag_13 (and_2_port_det_flag_13), //o
    .port_det_flag_14 (and_2_port_det_flag_14), //o
    .port_det_flag_15 (and_2_port_det_flag_15), //o
    .port_det_flag_16 (and_2_port_det_flag_16), //o
    .port_det_flag_17 (and_2_port_det_flag_17), //o
    .port_det_flag_18 (and_2_port_det_flag_18), //o
    .port_det_flag_19 (and_2_port_det_flag_19), //o
    .port_det_flag_20 (and_2_port_det_flag_20), //o
    .port_det_flag_21 (and_2_port_det_flag_21), //o
    .port_det_flag_22 (and_2_port_det_flag_22), //o
    .port_det_flag_23 (and_2_port_det_flag_23), //o
    .clk              (clk                   ), //i
    .reset            (reset                 )  //i
  );
  Shared_Not not_2 (
    .port_a_0 (and_2_port_z_0[1:0]), //i
    .port_a_1 (and_2_port_z_1[1:0]), //i
    .port_a_2 (and_2_port_z_2[1:0]), //i
    .port_z_0 (not_2_port_z_0[1:0]), //o
    .port_z_1 (not_2_port_z_1[1:0]), //o
    .port_z_2 (not_2_port_z_2[1:0])  //o
  );
  Shared_Xor xor_2 (
    .port_a_0 (not_1_port_z_0[1:0]), //i
    .port_a_1 (not_1_port_z_1[1:0]), //i
    .port_a_2 (not_1_port_z_2[1:0]), //i
    .port_b_0 (not_2_port_z_0[1:0]), //i
    .port_b_1 (not_2_port_z_1[1:0]), //i
    .port_b_2 (not_2_port_z_2[1:0]), //i
    .port_z_0 (xor_2_port_z_0[1:0]), //o
    .port_z_1 (xor_2_port_z_1[1:0]), //o
    .port_z_2 (xor_2_port_z_2[1:0])  //o
  );
  Shared_And and_3 (
    .port_a_0         (port_ab_0[1:0]        ), //i
    .port_a_1         (port_ab_1[1:0]        ), //i
    .port_a_2         (port_ab_2[1:0]        ), //i
    .port_b_0         (port_cd_0[1:0]        ), //i
    .port_b_1         (port_cd_1[1:0]        ), //i
    .port_b_2         (port_cd_2[1:0]        ), //i
    .port_rand_0      (r2_0                  ), //i
    .port_rand_1      (r2_1                  ), //i
    .port_rand_2      (r2_2                  ), //i
    .port_rand_3      (r2_3                  ), //i
    .port_rand_4      (r2_4                  ), //i
    .port_rand_5      (r2_5                  ), //i
    .port_z_0         (and_3_port_z_0[1:0]   ), //o
    .port_z_1         (and_3_port_z_1[1:0]   ), //o
    .port_z_2         (and_3_port_z_2[1:0]   ), //o
    .port_det_flag_0  (and_3_port_det_flag_0 ), //o
    .port_det_flag_1  (and_3_port_det_flag_1 ), //o
    .port_det_flag_2  (and_3_port_det_flag_2 ), //o
    .port_det_flag_3  (and_3_port_det_flag_3 ), //o
    .port_det_flag_4  (and_3_port_det_flag_4 ), //o
    .port_det_flag_5  (and_3_port_det_flag_5 ), //o
    .port_det_flag_6  (and_3_port_det_flag_6 ), //o
    .port_det_flag_7  (and_3_port_det_flag_7 ), //o
    .port_det_flag_8  (and_3_port_det_flag_8 ), //o
    .port_det_flag_9  (and_3_port_det_flag_9 ), //o
    .port_det_flag_10 (and_3_port_det_flag_10), //o
    .port_det_flag_11 (and_3_port_det_flag_11), //o
    .port_det_flag_12 (and_3_port_det_flag_12), //o
    .port_det_flag_13 (and_3_port_det_flag_13), //o
    .port_det_flag_14 (and_3_port_det_flag_14), //o
    .port_det_flag_15 (and_3_port_det_flag_15), //o
    .port_det_flag_16 (and_3_port_det_flag_16), //o
    .port_det_flag_17 (and_3_port_det_flag_17), //o
    .port_det_flag_18 (and_3_port_det_flag_18), //o
    .port_det_flag_19 (and_3_port_det_flag_19), //o
    .port_det_flag_20 (and_3_port_det_flag_20), //o
    .port_det_flag_21 (and_3_port_det_flag_21), //o
    .port_det_flag_22 (and_3_port_det_flag_22), //o
    .port_det_flag_23 (and_3_port_det_flag_23), //o
    .clk              (clk                   ), //i
    .reset            (reset                 )  //i
  );
  Shared_Not not_3 (
    .port_a_0 (and_3_port_z_0[1:0]), //i
    .port_a_1 (and_3_port_z_1[1:0]), //i
    .port_a_2 (and_3_port_z_2[1:0]), //i
    .port_z_0 (not_3_port_z_0[1:0]), //o
    .port_z_1 (not_3_port_z_1[1:0]), //o
    .port_z_2 (not_3_port_z_2[1:0])  //o
  );
  Shared_Xor xor_3 (
    .port_a_0 (not_1_port_z_0[1:0]), //i
    .port_a_1 (not_1_port_z_1[1:0]), //i
    .port_a_2 (not_1_port_z_2[1:0]), //i
    .port_b_0 (not_3_port_z_0[1:0]), //i
    .port_b_1 (not_3_port_z_1[1:0]), //i
    .port_b_2 (not_3_port_z_2[1:0]), //i
    .port_z_0 (xor_3_port_z_0[1:0]), //o
    .port_z_1 (xor_3_port_z_1[1:0]), //o
    .port_z_2 (xor_3_port_z_2[1:0])  //o
  );
  assign r0_0 = port_rand_0;
  assign r1_0 = port_rand_6;
  assign r2_0 = port_rand_12;
  assign r0_1 = port_rand_1;
  assign r1_1 = port_rand_7;
  assign r2_1 = port_rand_13;
  assign r0_2 = port_rand_2;
  assign r1_2 = port_rand_8;
  assign r2_2 = port_rand_14;
  assign r0_3 = port_rand_3;
  assign r1_3 = port_rand_9;
  assign r2_3 = port_rand_15;
  assign r0_4 = port_rand_4;
  assign r1_4 = port_rand_10;
  assign r2_4 = port_rand_16;
  assign r0_5 = port_rand_5;
  assign r1_5 = port_rand_11;
  assign r2_5 = port_rand_17;
  assign ax_0_0 = port_a_0_0;
  assign ax_1_0 = port_a_0_1;
  assign bx_0_0 = port_b_0_0;
  assign bx_1_0 = port_b_0_1;
  assign ax_0_1 = port_a_1_0;
  assign ax_1_1 = port_a_1_1;
  assign bx_0_1 = port_b_1_0;
  assign bx_1_1 = port_b_1_1;
  assign ax_0_2 = port_a_2_0;
  assign ax_1_2 = port_a_2_1;
  assign bx_0_2 = port_b_2_0;
  assign bx_1_2 = port_b_2_1;
  assign outVal_0_0 = xor_2_port_z_0;
  assign outVal_0_1 = xor_3_port_z_0;
  assign outVal_1_0 = xor_2_port_z_1;
  assign outVal_1_1 = xor_3_port_z_1;
  assign outVal_2_0 = xor_2_port_z_2;
  assign outVal_2_1 = xor_3_port_z_2;
  assign port_o_0_0 = outVal_0_0;
  assign port_o_0_1 = outVal_0_1;
  assign port_o_1_0 = outVal_1_0;
  assign port_o_1_1 = outVal_1_1;
  assign port_o_2_0 = outVal_2_0;
  assign port_o_2_1 = outVal_2_1;

endmodule

//Shared_GF_MULS_2 replaced by Shared_GF_MULS_2

module Shared_GF_MULS_2 (
  input      [1:0]    port_a_0_0,
  input      [1:0]    port_a_0_1,
  input      [1:0]    port_a_1_0,
  input      [1:0]    port_a_1_1,
  input      [1:0]    port_a_2_0,
  input      [1:0]    port_a_2_1,
  input      [1:0]    port_ab_0,
  input      [1:0]    port_ab_1,
  input      [1:0]    port_ab_2,
  input      [1:0]    port_b_0_0,
  input      [1:0]    port_b_0_1,
  input      [1:0]    port_b_1_0,
  input      [1:0]    port_b_1_1,
  input      [1:0]    port_b_2_0,
  input      [1:0]    port_b_2_1,
  input      [1:0]    port_cd_0,
  input      [1:0]    port_cd_1,
  input      [1:0]    port_cd_2,
  input               port_rand_0,
  input               port_rand_1,
  input               port_rand_2,
  input               port_rand_3,
  input               port_rand_4,
  input               port_rand_5,
  input               port_rand_6,
  input               port_rand_7,
  input               port_rand_8,
  input               port_rand_9,
  input               port_rand_10,
  input               port_rand_11,
  input               port_rand_12,
  input               port_rand_13,
  input               port_rand_14,
  input               port_rand_15,
  input               port_rand_16,
  input               port_rand_17,
  output     [1:0]    port_o_0_0,
  output     [1:0]    port_o_0_1,
  output     [1:0]    port_o_1_0,
  output     [1:0]    port_o_1_1,
  output     [1:0]    port_o_2_0,
  output     [1:0]    port_o_2_1,
  output              port_det_flag_0_0,
  output              port_det_flag_0_1,
  output              port_det_flag_0_2,
  output              port_det_flag_0_3,
  output              port_det_flag_0_4,
  output              port_det_flag_0_5,
  output              port_det_flag_0_6,
  output              port_det_flag_0_7,
  output              port_det_flag_0_8,
  output              port_det_flag_0_9,
  output              port_det_flag_0_10,
  output              port_det_flag_0_11,
  output              port_det_flag_0_12,
  output              port_det_flag_0_13,
  output              port_det_flag_0_14,
  output              port_det_flag_0_15,
  output              port_det_flag_0_16,
  output              port_det_flag_0_17,
  output              port_det_flag_0_18,
  output              port_det_flag_0_19,
  output              port_det_flag_0_20,
  output              port_det_flag_0_21,
  output              port_det_flag_0_22,
  output              port_det_flag_0_23,
  output              port_det_flag_1_0,
  output              port_det_flag_1_1,
  output              port_det_flag_1_2,
  output              port_det_flag_1_3,
  output              port_det_flag_1_4,
  output              port_det_flag_1_5,
  output              port_det_flag_1_6,
  output              port_det_flag_1_7,
  output              port_det_flag_1_8,
  output              port_det_flag_1_9,
  output              port_det_flag_1_10,
  output              port_det_flag_1_11,
  output              port_det_flag_1_12,
  output              port_det_flag_1_13,
  output              port_det_flag_1_14,
  output              port_det_flag_1_15,
  output              port_det_flag_1_16,
  output              port_det_flag_1_17,
  output              port_det_flag_1_18,
  output              port_det_flag_1_19,
  output              port_det_flag_1_20,
  output              port_det_flag_1_21,
  output              port_det_flag_1_22,
  output              port_det_flag_1_23,
  output              port_det_flag_2_0,
  output              port_det_flag_2_1,
  output              port_det_flag_2_2,
  output              port_det_flag_2_3,
  output              port_det_flag_2_4,
  output              port_det_flag_2_5,
  output              port_det_flag_2_6,
  output              port_det_flag_2_7,
  output              port_det_flag_2_8,
  output              port_det_flag_2_9,
  output              port_det_flag_2_10,
  output              port_det_flag_2_11,
  output              port_det_flag_2_12,
  output              port_det_flag_2_13,
  output              port_det_flag_2_14,
  output              port_det_flag_2_15,
  output              port_det_flag_2_16,
  output              port_det_flag_2_17,
  output              port_det_flag_2_18,
  output              port_det_flag_2_19,
  output              port_det_flag_2_20,
  output              port_det_flag_2_21,
  output              port_det_flag_2_22,
  output              port_det_flag_2_23,
  input               clk,
  input               reset
);

  wire       [1:0]    and_1_port_z_0;
  wire       [1:0]    and_1_port_z_1;
  wire       [1:0]    and_1_port_z_2;
  wire                and_1_port_det_flag_0;
  wire                and_1_port_det_flag_1;
  wire                and_1_port_det_flag_2;
  wire                and_1_port_det_flag_3;
  wire                and_1_port_det_flag_4;
  wire                and_1_port_det_flag_5;
  wire                and_1_port_det_flag_6;
  wire                and_1_port_det_flag_7;
  wire                and_1_port_det_flag_8;
  wire                and_1_port_det_flag_9;
  wire                and_1_port_det_flag_10;
  wire                and_1_port_det_flag_11;
  wire                and_1_port_det_flag_12;
  wire                and_1_port_det_flag_13;
  wire                and_1_port_det_flag_14;
  wire                and_1_port_det_flag_15;
  wire                and_1_port_det_flag_16;
  wire                and_1_port_det_flag_17;
  wire                and_1_port_det_flag_18;
  wire                and_1_port_det_flag_19;
  wire                and_1_port_det_flag_20;
  wire                and_1_port_det_flag_21;
  wire                and_1_port_det_flag_22;
  wire                and_1_port_det_flag_23;
  wire       [1:0]    not_1_port_z_0;
  wire       [1:0]    not_1_port_z_1;
  wire       [1:0]    not_1_port_z_2;
  wire       [1:0]    and_2_port_z_0;
  wire       [1:0]    and_2_port_z_1;
  wire       [1:0]    and_2_port_z_2;
  wire                and_2_port_det_flag_0;
  wire                and_2_port_det_flag_1;
  wire                and_2_port_det_flag_2;
  wire                and_2_port_det_flag_3;
  wire                and_2_port_det_flag_4;
  wire                and_2_port_det_flag_5;
  wire                and_2_port_det_flag_6;
  wire                and_2_port_det_flag_7;
  wire                and_2_port_det_flag_8;
  wire                and_2_port_det_flag_9;
  wire                and_2_port_det_flag_10;
  wire                and_2_port_det_flag_11;
  wire                and_2_port_det_flag_12;
  wire                and_2_port_det_flag_13;
  wire                and_2_port_det_flag_14;
  wire                and_2_port_det_flag_15;
  wire                and_2_port_det_flag_16;
  wire                and_2_port_det_flag_17;
  wire                and_2_port_det_flag_18;
  wire                and_2_port_det_flag_19;
  wire                and_2_port_det_flag_20;
  wire                and_2_port_det_flag_21;
  wire                and_2_port_det_flag_22;
  wire                and_2_port_det_flag_23;
  wire       [1:0]    not_2_port_z_0;
  wire       [1:0]    not_2_port_z_1;
  wire       [1:0]    not_2_port_z_2;
  wire       [1:0]    xor_2_port_z_0;
  wire       [1:0]    xor_2_port_z_1;
  wire       [1:0]    xor_2_port_z_2;
  wire       [1:0]    and_3_port_z_0;
  wire       [1:0]    and_3_port_z_1;
  wire       [1:0]    and_3_port_z_2;
  wire                and_3_port_det_flag_0;
  wire                and_3_port_det_flag_1;
  wire                and_3_port_det_flag_2;
  wire                and_3_port_det_flag_3;
  wire                and_3_port_det_flag_4;
  wire                and_3_port_det_flag_5;
  wire                and_3_port_det_flag_6;
  wire                and_3_port_det_flag_7;
  wire                and_3_port_det_flag_8;
  wire                and_3_port_det_flag_9;
  wire                and_3_port_det_flag_10;
  wire                and_3_port_det_flag_11;
  wire                and_3_port_det_flag_12;
  wire                and_3_port_det_flag_13;
  wire                and_3_port_det_flag_14;
  wire                and_3_port_det_flag_15;
  wire                and_3_port_det_flag_16;
  wire                and_3_port_det_flag_17;
  wire                and_3_port_det_flag_18;
  wire                and_3_port_det_flag_19;
  wire                and_3_port_det_flag_20;
  wire                and_3_port_det_flag_21;
  wire                and_3_port_det_flag_22;
  wire                and_3_port_det_flag_23;
  wire       [1:0]    not_3_port_z_0;
  wire       [1:0]    not_3_port_z_1;
  wire       [1:0]    not_3_port_z_2;
  wire       [1:0]    xor_3_port_z_0;
  wire       [1:0]    xor_3_port_z_1;
  wire       [1:0]    xor_3_port_z_2;
  wire                r0_0;
  wire                r0_1;
  wire                r0_2;
  wire                r0_3;
  wire                r0_4;
  wire                r0_5;
  wire                r1_0;
  wire                r1_1;
  wire                r1_2;
  wire                r1_3;
  wire                r1_4;
  wire                r1_5;
  wire                r2_0;
  wire                r2_1;
  wire                r2_2;
  wire                r2_3;
  wire                r2_4;
  wire                r2_5;
  wire       [1:0]    ax_0_0;
  wire       [1:0]    ax_0_1;
  wire       [1:0]    ax_0_2;
  wire       [1:0]    ax_1_0;
  wire       [1:0]    ax_1_1;
  wire       [1:0]    ax_1_2;
  wire       [1:0]    bx_0_0;
  wire       [1:0]    bx_0_1;
  wire       [1:0]    bx_0_2;
  wire       [1:0]    bx_1_0;
  wire       [1:0]    bx_1_1;
  wire       [1:0]    bx_1_2;
  wire       [1:0]    outVal_0_0;
  wire       [1:0]    outVal_0_1;
  wire       [1:0]    outVal_1_0;
  wire       [1:0]    outVal_1_1;
  wire       [1:0]    outVal_2_0;
  wire       [1:0]    outVal_2_1;

  Shared_And and_1 (
    .port_a_0         (port_ab_0[1:0]        ), //i
    .port_a_1         (port_ab_1[1:0]        ), //i
    .port_a_2         (port_ab_2[1:0]        ), //i
    .port_b_0         (port_cd_0[1:0]        ), //i
    .port_b_1         (port_cd_1[1:0]        ), //i
    .port_b_2         (port_cd_2[1:0]        ), //i
    .port_rand_0      (r0_0                  ), //i
    .port_rand_1      (r0_1                  ), //i
    .port_rand_2      (r0_2                  ), //i
    .port_rand_3      (r0_3                  ), //i
    .port_rand_4      (r0_4                  ), //i
    .port_rand_5      (r0_5                  ), //i
    .port_z_0         (and_1_port_z_0[1:0]   ), //o
    .port_z_1         (and_1_port_z_1[1:0]   ), //o
    .port_z_2         (and_1_port_z_2[1:0]   ), //o
    .port_det_flag_0  (and_1_port_det_flag_0 ), //o
    .port_det_flag_1  (and_1_port_det_flag_1 ), //o
    .port_det_flag_2  (and_1_port_det_flag_2 ), //o
    .port_det_flag_3  (and_1_port_det_flag_3 ), //o
    .port_det_flag_4  (and_1_port_det_flag_4 ), //o
    .port_det_flag_5  (and_1_port_det_flag_5 ), //o
    .port_det_flag_6  (and_1_port_det_flag_6 ), //o
    .port_det_flag_7  (and_1_port_det_flag_7 ), //o
    .port_det_flag_8  (and_1_port_det_flag_8 ), //o
    .port_det_flag_9  (and_1_port_det_flag_9 ), //o
    .port_det_flag_10 (and_1_port_det_flag_10), //o
    .port_det_flag_11 (and_1_port_det_flag_11), //o
    .port_det_flag_12 (and_1_port_det_flag_12), //o
    .port_det_flag_13 (and_1_port_det_flag_13), //o
    .port_det_flag_14 (and_1_port_det_flag_14), //o
    .port_det_flag_15 (and_1_port_det_flag_15), //o
    .port_det_flag_16 (and_1_port_det_flag_16), //o
    .port_det_flag_17 (and_1_port_det_flag_17), //o
    .port_det_flag_18 (and_1_port_det_flag_18), //o
    .port_det_flag_19 (and_1_port_det_flag_19), //o
    .port_det_flag_20 (and_1_port_det_flag_20), //o
    .port_det_flag_21 (and_1_port_det_flag_21), //o
    .port_det_flag_22 (and_1_port_det_flag_22), //o
    .port_det_flag_23 (and_1_port_det_flag_23), //o
    .clk              (clk                   ), //i
    .reset            (reset                 )  //i
  );
  Shared_Not not_1 (
    .port_a_0 (and_1_port_z_0[1:0]), //i
    .port_a_1 (and_1_port_z_1[1:0]), //i
    .port_a_2 (and_1_port_z_2[1:0]), //i
    .port_z_0 (not_1_port_z_0[1:0]), //o
    .port_z_1 (not_1_port_z_1[1:0]), //o
    .port_z_2 (not_1_port_z_2[1:0])  //o
  );
  Shared_And and_2 (
    .port_a_0         (ax_0_0[1:0]           ), //i
    .port_a_1         (ax_0_1[1:0]           ), //i
    .port_a_2         (ax_0_2[1:0]           ), //i
    .port_b_0         (bx_0_0[1:0]           ), //i
    .port_b_1         (bx_0_1[1:0]           ), //i
    .port_b_2         (bx_0_2[1:0]           ), //i
    .port_rand_0      (r1_0                  ), //i
    .port_rand_1      (r1_1                  ), //i
    .port_rand_2      (r1_2                  ), //i
    .port_rand_3      (r1_3                  ), //i
    .port_rand_4      (r1_4                  ), //i
    .port_rand_5      (r1_5                  ), //i
    .port_z_0         (and_2_port_z_0[1:0]   ), //o
    .port_z_1         (and_2_port_z_1[1:0]   ), //o
    .port_z_2         (and_2_port_z_2[1:0]   ), //o
    .port_det_flag_0  (and_2_port_det_flag_0 ), //o
    .port_det_flag_1  (and_2_port_det_flag_1 ), //o
    .port_det_flag_2  (and_2_port_det_flag_2 ), //o
    .port_det_flag_3  (and_2_port_det_flag_3 ), //o
    .port_det_flag_4  (and_2_port_det_flag_4 ), //o
    .port_det_flag_5  (and_2_port_det_flag_5 ), //o
    .port_det_flag_6  (and_2_port_det_flag_6 ), //o
    .port_det_flag_7  (and_2_port_det_flag_7 ), //o
    .port_det_flag_8  (and_2_port_det_flag_8 ), //o
    .port_det_flag_9  (and_2_port_det_flag_9 ), //o
    .port_det_flag_10 (and_2_port_det_flag_10), //o
    .port_det_flag_11 (and_2_port_det_flag_11), //o
    .port_det_flag_12 (and_2_port_det_flag_12), //o
    .port_det_flag_13 (and_2_port_det_flag_13), //o
    .port_det_flag_14 (and_2_port_det_flag_14), //o
    .port_det_flag_15 (and_2_port_det_flag_15), //o
    .port_det_flag_16 (and_2_port_det_flag_16), //o
    .port_det_flag_17 (and_2_port_det_flag_17), //o
    .port_det_flag_18 (and_2_port_det_flag_18), //o
    .port_det_flag_19 (and_2_port_det_flag_19), //o
    .port_det_flag_20 (and_2_port_det_flag_20), //o
    .port_det_flag_21 (and_2_port_det_flag_21), //o
    .port_det_flag_22 (and_2_port_det_flag_22), //o
    .port_det_flag_23 (and_2_port_det_flag_23), //o
    .clk              (clk                   ), //i
    .reset            (reset                 )  //i
  );
  Shared_Not not_2 (
    .port_a_0 (and_2_port_z_0[1:0]), //i
    .port_a_1 (and_2_port_z_1[1:0]), //i
    .port_a_2 (and_2_port_z_2[1:0]), //i
    .port_z_0 (not_2_port_z_0[1:0]), //o
    .port_z_1 (not_2_port_z_1[1:0]), //o
    .port_z_2 (not_2_port_z_2[1:0])  //o
  );
  Shared_Xor xor_2 (
    .port_a_0 (not_1_port_z_0[1:0]), //i
    .port_a_1 (not_1_port_z_1[1:0]), //i
    .port_a_2 (not_1_port_z_2[1:0]), //i
    .port_b_0 (not_2_port_z_0[1:0]), //i
    .port_b_1 (not_2_port_z_1[1:0]), //i
    .port_b_2 (not_2_port_z_2[1:0]), //i
    .port_z_0 (xor_2_port_z_0[1:0]), //o
    .port_z_1 (xor_2_port_z_1[1:0]), //o
    .port_z_2 (xor_2_port_z_2[1:0])  //o
  );
  Shared_And and_3 (
    .port_a_0         (ax_1_0[1:0]           ), //i
    .port_a_1         (ax_1_1[1:0]           ), //i
    .port_a_2         (ax_1_2[1:0]           ), //i
    .port_b_0         (bx_1_0[1:0]           ), //i
    .port_b_1         (bx_1_1[1:0]           ), //i
    .port_b_2         (bx_1_2[1:0]           ), //i
    .port_rand_0      (r2_0                  ), //i
    .port_rand_1      (r2_1                  ), //i
    .port_rand_2      (r2_2                  ), //i
    .port_rand_3      (r2_3                  ), //i
    .port_rand_4      (r2_4                  ), //i
    .port_rand_5      (r2_5                  ), //i
    .port_z_0         (and_3_port_z_0[1:0]   ), //o
    .port_z_1         (and_3_port_z_1[1:0]   ), //o
    .port_z_2         (and_3_port_z_2[1:0]   ), //o
    .port_det_flag_0  (and_3_port_det_flag_0 ), //o
    .port_det_flag_1  (and_3_port_det_flag_1 ), //o
    .port_det_flag_2  (and_3_port_det_flag_2 ), //o
    .port_det_flag_3  (and_3_port_det_flag_3 ), //o
    .port_det_flag_4  (and_3_port_det_flag_4 ), //o
    .port_det_flag_5  (and_3_port_det_flag_5 ), //o
    .port_det_flag_6  (and_3_port_det_flag_6 ), //o
    .port_det_flag_7  (and_3_port_det_flag_7 ), //o
    .port_det_flag_8  (and_3_port_det_flag_8 ), //o
    .port_det_flag_9  (and_3_port_det_flag_9 ), //o
    .port_det_flag_10 (and_3_port_det_flag_10), //o
    .port_det_flag_11 (and_3_port_det_flag_11), //o
    .port_det_flag_12 (and_3_port_det_flag_12), //o
    .port_det_flag_13 (and_3_port_det_flag_13), //o
    .port_det_flag_14 (and_3_port_det_flag_14), //o
    .port_det_flag_15 (and_3_port_det_flag_15), //o
    .port_det_flag_16 (and_3_port_det_flag_16), //o
    .port_det_flag_17 (and_3_port_det_flag_17), //o
    .port_det_flag_18 (and_3_port_det_flag_18), //o
    .port_det_flag_19 (and_3_port_det_flag_19), //o
    .port_det_flag_20 (and_3_port_det_flag_20), //o
    .port_det_flag_21 (and_3_port_det_flag_21), //o
    .port_det_flag_22 (and_3_port_det_flag_22), //o
    .port_det_flag_23 (and_3_port_det_flag_23), //o
    .clk              (clk                   ), //i
    .reset            (reset                 )  //i
  );
  Shared_Not not_3 (
    .port_a_0 (and_3_port_z_0[1:0]), //i
    .port_a_1 (and_3_port_z_1[1:0]), //i
    .port_a_2 (and_3_port_z_2[1:0]), //i
    .port_z_0 (not_3_port_z_0[1:0]), //o
    .port_z_1 (not_3_port_z_1[1:0]), //o
    .port_z_2 (not_3_port_z_2[1:0])  //o
  );
  Shared_Xor xor_3 (
    .port_a_0 (not_1_port_z_0[1:0]), //i
    .port_a_1 (not_1_port_z_1[1:0]), //i
    .port_a_2 (not_1_port_z_2[1:0]), //i
    .port_b_0 (not_3_port_z_0[1:0]), //i
    .port_b_1 (not_3_port_z_1[1:0]), //i
    .port_b_2 (not_3_port_z_2[1:0]), //i
    .port_z_0 (xor_3_port_z_0[1:0]), //o
    .port_z_1 (xor_3_port_z_1[1:0]), //o
    .port_z_2 (xor_3_port_z_2[1:0])  //o
  );
  assign r0_0 = port_rand_0;
  assign r1_0 = port_rand_6;
  assign r2_0 = port_rand_12;
  assign r0_1 = port_rand_1;
  assign r1_1 = port_rand_7;
  assign r2_1 = port_rand_13;
  assign r0_2 = port_rand_2;
  assign r1_2 = port_rand_8;
  assign r2_2 = port_rand_14;
  assign r0_3 = port_rand_3;
  assign r1_3 = port_rand_9;
  assign r2_3 = port_rand_15;
  assign r0_4 = port_rand_4;
  assign r1_4 = port_rand_10;
  assign r2_4 = port_rand_16;
  assign r0_5 = port_rand_5;
  assign r1_5 = port_rand_11;
  assign r2_5 = port_rand_17;
  assign ax_0_0 = port_a_0_0;
  assign ax_1_0 = port_a_0_1;
  assign bx_0_0 = port_b_0_0;
  assign bx_1_0 = port_b_0_1;
  assign ax_0_1 = port_a_1_0;
  assign ax_1_1 = port_a_1_1;
  assign bx_0_1 = port_b_1_0;
  assign bx_1_1 = port_b_1_1;
  assign ax_0_2 = port_a_2_0;
  assign ax_1_2 = port_a_2_1;
  assign bx_0_2 = port_b_2_0;
  assign bx_1_2 = port_b_2_1;
  assign port_det_flag_0_0 = and_1_port_det_flag_0;
  assign port_det_flag_0_1 = and_1_port_det_flag_1;
  assign port_det_flag_0_2 = and_1_port_det_flag_2;
  assign port_det_flag_0_3 = and_1_port_det_flag_3;
  assign port_det_flag_0_4 = and_1_port_det_flag_4;
  assign port_det_flag_0_5 = and_1_port_det_flag_5;
  assign port_det_flag_0_6 = and_1_port_det_flag_6;
  assign port_det_flag_0_7 = and_1_port_det_flag_7;
  assign port_det_flag_0_8 = and_1_port_det_flag_8;
  assign port_det_flag_0_9 = and_1_port_det_flag_9;
  assign port_det_flag_0_10 = and_1_port_det_flag_10;
  assign port_det_flag_0_11 = and_1_port_det_flag_11;
  assign port_det_flag_0_12 = and_1_port_det_flag_12;
  assign port_det_flag_0_13 = and_1_port_det_flag_13;
  assign port_det_flag_0_14 = and_1_port_det_flag_14;
  assign port_det_flag_0_15 = and_1_port_det_flag_15;
  assign port_det_flag_0_16 = and_1_port_det_flag_16;
  assign port_det_flag_0_17 = and_1_port_det_flag_17;
  assign port_det_flag_0_18 = and_1_port_det_flag_18;
  assign port_det_flag_0_19 = and_1_port_det_flag_19;
  assign port_det_flag_0_20 = and_1_port_det_flag_20;
  assign port_det_flag_0_21 = and_1_port_det_flag_21;
  assign port_det_flag_0_22 = and_1_port_det_flag_22;
  assign port_det_flag_0_23 = and_1_port_det_flag_23;
  assign port_det_flag_1_0 = and_2_port_det_flag_0;
  assign port_det_flag_1_1 = and_2_port_det_flag_1;
  assign port_det_flag_1_2 = and_2_port_det_flag_2;
  assign port_det_flag_1_3 = and_2_port_det_flag_3;
  assign port_det_flag_1_4 = and_2_port_det_flag_4;
  assign port_det_flag_1_5 = and_2_port_det_flag_5;
  assign port_det_flag_1_6 = and_2_port_det_flag_6;
  assign port_det_flag_1_7 = and_2_port_det_flag_7;
  assign port_det_flag_1_8 = and_2_port_det_flag_8;
  assign port_det_flag_1_9 = and_2_port_det_flag_9;
  assign port_det_flag_1_10 = and_2_port_det_flag_10;
  assign port_det_flag_1_11 = and_2_port_det_flag_11;
  assign port_det_flag_1_12 = and_2_port_det_flag_12;
  assign port_det_flag_1_13 = and_2_port_det_flag_13;
  assign port_det_flag_1_14 = and_2_port_det_flag_14;
  assign port_det_flag_1_15 = and_2_port_det_flag_15;
  assign port_det_flag_1_16 = and_2_port_det_flag_16;
  assign port_det_flag_1_17 = and_2_port_det_flag_17;
  assign port_det_flag_1_18 = and_2_port_det_flag_18;
  assign port_det_flag_1_19 = and_2_port_det_flag_19;
  assign port_det_flag_1_20 = and_2_port_det_flag_20;
  assign port_det_flag_1_21 = and_2_port_det_flag_21;
  assign port_det_flag_1_22 = and_2_port_det_flag_22;
  assign port_det_flag_1_23 = and_2_port_det_flag_23;
  assign port_det_flag_2_0 = and_3_port_det_flag_0;
  assign port_det_flag_2_1 = and_3_port_det_flag_1;
  assign port_det_flag_2_2 = and_3_port_det_flag_2;
  assign port_det_flag_2_3 = and_3_port_det_flag_3;
  assign port_det_flag_2_4 = and_3_port_det_flag_4;
  assign port_det_flag_2_5 = and_3_port_det_flag_5;
  assign port_det_flag_2_6 = and_3_port_det_flag_6;
  assign port_det_flag_2_7 = and_3_port_det_flag_7;
  assign port_det_flag_2_8 = and_3_port_det_flag_8;
  assign port_det_flag_2_9 = and_3_port_det_flag_9;
  assign port_det_flag_2_10 = and_3_port_det_flag_10;
  assign port_det_flag_2_11 = and_3_port_det_flag_11;
  assign port_det_flag_2_12 = and_3_port_det_flag_12;
  assign port_det_flag_2_13 = and_3_port_det_flag_13;
  assign port_det_flag_2_14 = and_3_port_det_flag_14;
  assign port_det_flag_2_15 = and_3_port_det_flag_15;
  assign port_det_flag_2_16 = and_3_port_det_flag_16;
  assign port_det_flag_2_17 = and_3_port_det_flag_17;
  assign port_det_flag_2_18 = and_3_port_det_flag_18;
  assign port_det_flag_2_19 = and_3_port_det_flag_19;
  assign port_det_flag_2_20 = and_3_port_det_flag_20;
  assign port_det_flag_2_21 = and_3_port_det_flag_21;
  assign port_det_flag_2_22 = and_3_port_det_flag_22;
  assign port_det_flag_2_23 = and_3_port_det_flag_23;
  assign outVal_0_0 = xor_2_port_z_0;
  assign outVal_0_1 = xor_3_port_z_0;
  assign outVal_1_0 = xor_2_port_z_1;
  assign outVal_1_1 = xor_3_port_z_1;
  assign outVal_2_0 = xor_2_port_z_2;
  assign outVal_2_1 = xor_3_port_z_2;
  assign port_o_0_0 = outVal_0_0;
  assign port_o_0_1 = outVal_0_1;
  assign port_o_1_0 = outVal_1_0;
  assign port_o_1_1 = outVal_1_1;
  assign port_o_2_0 = outVal_2_0;
  assign port_o_2_1 = outVal_2_1;

endmodule

module Shared_GF_SCLW_2 (
  input      [1:0]    port_i_0_0,
  input      [1:0]    port_i_0_1,
  input      [1:0]    port_i_1_0,
  input      [1:0]    port_i_1_1,
  input      [1:0]    port_i_2_0,
  input      [1:0]    port_i_2_1,
  output     [1:0]    port_o_0_0,
  output     [1:0]    port_o_0_1,
  output     [1:0]    port_o_1_0,
  output     [1:0]    port_o_1_1,
  output     [1:0]    port_o_2_0,
  output     [1:0]    port_o_2_1
);


  assign port_o_0_0 = port_i_0_1;
  assign port_o_0_1 = (port_i_0_0 ^ port_i_0_1);
  assign port_o_1_0 = port_i_1_1;
  assign port_o_1_1 = (port_i_1_0 ^ port_i_1_1);
  assign port_o_2_0 = port_i_2_1;
  assign port_o_2_1 = (port_i_2_0 ^ port_i_2_1);

endmodule

//Shared_GF_SQ_2 replaced by Shared_GF_SQ_2

module Shared_GF_SQ_2 (
  input      [1:0]    port_i_0_0,
  input      [1:0]    port_i_0_1,
  input      [1:0]    port_i_1_0,
  input      [1:0]    port_i_1_1,
  input      [1:0]    port_i_2_0,
  input      [1:0]    port_i_2_1,
  output     [1:0]    port_o_0_0,
  output     [1:0]    port_o_0_1,
  output     [1:0]    port_o_1_0,
  output     [1:0]    port_o_1_1,
  output     [1:0]    port_o_2_0,
  output     [1:0]    port_o_2_1
);


  assign port_o_0_0 = port_i_0_1;
  assign port_o_0_1 = port_i_0_0;
  assign port_o_1_0 = port_i_1_1;
  assign port_o_1_1 = port_i_1_0;
  assign port_o_2_0 = port_i_2_1;
  assign port_o_2_1 = port_i_2_0;

endmodule

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

//Shared_Xor replaced by Shared_Xor

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

module Shared_Xor (
  input      [1:0]    port_a_0,
  input      [1:0]    port_a_1,
  input      [1:0]    port_a_2,
  input      [1:0]    port_b_0,
  input      [1:0]    port_b_1,
  input      [1:0]    port_b_2,
  output     [1:0]    port_z_0,
  output     [1:0]    port_z_1,
  output     [1:0]    port_z_2
);


  assign port_z_0 = (port_a_0 ^ port_b_0);
  assign port_z_1 = (port_a_1 ^ port_b_1);
  assign port_z_2 = (port_a_2 ^ port_b_2);

endmodule

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

module Shared_Not (
  input      [1:0]    port_a_0,
  input      [1:0]    port_a_1,
  input      [1:0]    port_a_2,
  output     [1:0]    port_z_0,
  output     [1:0]    port_z_1,
  output     [1:0]    port_z_2
);


  assign port_z_0 = (~ port_a_0);
  assign port_z_1 = port_a_1;
  assign port_z_2 = port_a_2;

endmodule

module Shared_And (
  input      [1:0]    port_a_0,
  input      [1:0]    port_a_1,
  input      [1:0]    port_a_2,
  input      [1:0]    port_b_0,
  input      [1:0]    port_b_1,
  input      [1:0]    port_b_2,
  input               port_rand_0,
  input               port_rand_1,
  input               port_rand_2,
  input               port_rand_3,
  input               port_rand_4,
  input               port_rand_5,
  output     [1:0]    port_z_0,
  output     [1:0]    port_z_1,
  output     [1:0]    port_z_2,
  output              port_det_flag_0,
  output              port_det_flag_1,
  output              port_det_flag_2,
  output              port_det_flag_3,
  output              port_det_flag_4,
  output              port_det_flag_5,
  output              port_det_flag_6,
  output              port_det_flag_7,
  output              port_det_flag_8,
  output              port_det_flag_9,
  output              port_det_flag_10,
  output              port_det_flag_11,
  output              port_det_flag_12,
  output              port_det_flag_13,
  output              port_det_flag_14,
  output              port_det_flag_15,
  output              port_det_flag_16,
  output              port_det_flag_17,
  output              port_det_flag_18,
  output              port_det_flag_19,
  output              port_det_flag_20,
  output              port_det_flag_21,
  output              port_det_flag_22,
  output              port_det_flag_23,
  input               clk,
  input               reset
);

  wire       [1:0]    tile_And_d2_k1_36_port_z_0;
  wire       [1:0]    tile_And_d2_k1_36_port_z_1;
  wire       [1:0]    tile_And_d2_k1_36_port_z_2;
  wire                tile_And_d2_k1_36_port_det_0;
  wire                tile_And_d2_k1_36_port_det_1;
  wire                tile_And_d2_k1_36_port_det_2;
  wire                tile_And_d2_k1_36_port_det_3;
  wire                tile_And_d2_k1_36_port_det_4;
  wire                tile_And_d2_k1_36_port_det_5;
  wire                tile_And_d2_k1_36_port_det_6;
  wire                tile_And_d2_k1_36_port_det_7;
  wire                tile_And_d2_k1_36_port_det_8;
  wire                tile_And_d2_k1_36_port_det_9;
  wire                tile_And_d2_k1_36_port_det_10;
  wire                tile_And_d2_k1_36_port_det_11;
  wire                tile_And_d2_k1_36_port_det_12;
  wire                tile_And_d2_k1_36_port_det_13;
  wire                tile_And_d2_k1_36_port_det_14;
  wire                tile_And_d2_k1_36_port_det_15;
  wire                tile_And_d2_k1_36_port_det_16;
  wire                tile_And_d2_k1_36_port_det_17;
  wire                tile_And_d2_k1_36_port_det_18;
  wire                tile_And_d2_k1_36_port_det_19;
  wire                tile_And_d2_k1_36_port_det_20;
  wire                tile_And_d2_k1_36_port_det_21;
  wire                tile_And_d2_k1_36_port_det_22;
  wire                tile_And_d2_k1_36_port_det_23;

  Tile_And_d2_k1 tile_And_d2_k1_36 (
    .port_a_0    (port_a_0[1:0]                  ), //i
    .port_a_1    (port_a_1[1:0]                  ), //i
    .port_a_2    (port_a_2[1:0]                  ), //i
    .port_b_0    (port_b_0[1:0]                  ), //i
    .port_b_1    (port_b_1[1:0]                  ), //i
    .port_b_2    (port_b_2[1:0]                  ), //i
    .port_rand_0 (port_rand_0                    ), //i
    .port_rand_1 (port_rand_1                    ), //i
    .port_rand_2 (port_rand_2                    ), //i
    .port_rand_3 (port_rand_3                    ), //i
    .port_rand_4 (port_rand_4                    ), //i
    .port_rand_5 (port_rand_5                    ), //i
    .port_z_0    (tile_And_d2_k1_36_port_z_0[1:0]), //o
    .port_z_1    (tile_And_d2_k1_36_port_z_1[1:0]), //o
    .port_z_2    (tile_And_d2_k1_36_port_z_2[1:0]), //o
    .port_det_0  (tile_And_d2_k1_36_port_det_0   ), //o
    .port_det_1  (tile_And_d2_k1_36_port_det_1   ), //o
    .port_det_2  (tile_And_d2_k1_36_port_det_2   ), //o
    .port_det_3  (tile_And_d2_k1_36_port_det_3   ), //o
    .port_det_4  (tile_And_d2_k1_36_port_det_4   ), //o
    .port_det_5  (tile_And_d2_k1_36_port_det_5   ), //o
    .port_det_6  (tile_And_d2_k1_36_port_det_6   ), //o
    .port_det_7  (tile_And_d2_k1_36_port_det_7   ), //o
    .port_det_8  (tile_And_d2_k1_36_port_det_8   ), //o
    .port_det_9  (tile_And_d2_k1_36_port_det_9   ), //o
    .port_det_10 (tile_And_d2_k1_36_port_det_10  ), //o
    .port_det_11 (tile_And_d2_k1_36_port_det_11  ), //o
    .port_det_12 (tile_And_d2_k1_36_port_det_12  ), //o
    .port_det_13 (tile_And_d2_k1_36_port_det_13  ), //o
    .port_det_14 (tile_And_d2_k1_36_port_det_14  ), //o
    .port_det_15 (tile_And_d2_k1_36_port_det_15  ), //o
    .port_det_16 (tile_And_d2_k1_36_port_det_16  ), //o
    .port_det_17 (tile_And_d2_k1_36_port_det_17  ), //o
    .port_det_18 (tile_And_d2_k1_36_port_det_18  ), //o
    .port_det_19 (tile_And_d2_k1_36_port_det_19  ), //o
    .port_det_20 (tile_And_d2_k1_36_port_det_20  ), //o
    .port_det_21 (tile_And_d2_k1_36_port_det_21  ), //o
    .port_det_22 (tile_And_d2_k1_36_port_det_22  ), //o
    .port_det_23 (tile_And_d2_k1_36_port_det_23  ), //o
    .clk         (clk                            ), //i
    .reset       (reset                          )  //i
  );
  assign port_z_0 = tile_And_d2_k1_36_port_z_0;
  assign port_z_1 = tile_And_d2_k1_36_port_z_1;
  assign port_z_2 = tile_And_d2_k1_36_port_z_2;
  assign port_det_flag_0 = tile_And_d2_k1_36_port_det_0;
  assign port_det_flag_1 = tile_And_d2_k1_36_port_det_1;
  assign port_det_flag_2 = tile_And_d2_k1_36_port_det_2;
  assign port_det_flag_3 = tile_And_d2_k1_36_port_det_3;
  assign port_det_flag_4 = tile_And_d2_k1_36_port_det_4;
  assign port_det_flag_5 = tile_And_d2_k1_36_port_det_5;
  assign port_det_flag_6 = tile_And_d2_k1_36_port_det_6;
  assign port_det_flag_7 = tile_And_d2_k1_36_port_det_7;
  assign port_det_flag_8 = tile_And_d2_k1_36_port_det_8;
  assign port_det_flag_9 = tile_And_d2_k1_36_port_det_9;
  assign port_det_flag_10 = tile_And_d2_k1_36_port_det_10;
  assign port_det_flag_11 = tile_And_d2_k1_36_port_det_11;
  assign port_det_flag_12 = tile_And_d2_k1_36_port_det_12;
  assign port_det_flag_13 = tile_And_d2_k1_36_port_det_13;
  assign port_det_flag_14 = tile_And_d2_k1_36_port_det_14;
  assign port_det_flag_15 = tile_And_d2_k1_36_port_det_15;
  assign port_det_flag_16 = tile_And_d2_k1_36_port_det_16;
  assign port_det_flag_17 = tile_And_d2_k1_36_port_det_17;
  assign port_det_flag_18 = tile_And_d2_k1_36_port_det_18;
  assign port_det_flag_19 = tile_And_d2_k1_36_port_det_19;
  assign port_det_flag_20 = tile_And_d2_k1_36_port_det_20;
  assign port_det_flag_21 = tile_And_d2_k1_36_port_det_21;
  assign port_det_flag_22 = tile_And_d2_k1_36_port_det_22;
  assign port_det_flag_23 = tile_And_d2_k1_36_port_det_23;

endmodule

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

//Tile_And_d2_k1 replaced by Tile_And_d2_k1

module Tile_And_d2_k1 (
  input      [1:0]    port_a_0,
  input      [1:0]    port_a_1,
  input      [1:0]    port_a_2,
  input      [1:0]    port_b_0,
  input      [1:0]    port_b_1,
  input      [1:0]    port_b_2,
  input               port_rand_0,
  input               port_rand_1,
  input               port_rand_2,
  input               port_rand_3,
  input               port_rand_4,
  input               port_rand_5,
  output reg [1:0]    port_z_0,
  output reg [1:0]    port_z_1,
  output reg [1:0]    port_z_2,
  output              port_det_0,
  output              port_det_1,
  output              port_det_2,
  output              port_det_3,
  output              port_det_4,
  output              port_det_5,
  output              port_det_6,
  output              port_det_7,
  output              port_det_8,
  output              port_det_9,
  output              port_det_10,
  output              port_det_11,
  output              port_det_12,
  output              port_det_13,
  output              port_det_14,
  output              port_det_15,
  output              port_det_16,
  output              port_det_17,
  output              port_det_18,
  output              port_det_19,
  output              port_det_20,
  output              port_det_21,
  output              port_det_22,
  output              port_det_23,
  input               clk,
  input               reset
);

  reg        [1:0]    a_reg_0_0;
  reg        [1:0]    a_reg_0_1;
  reg        [1:0]    a_reg_0_2;
  reg        [1:0]    a_reg_1_0;
  reg        [1:0]    a_reg_1_1;
  reg        [1:0]    a_reg_1_2;
  reg        [1:0]    a_reg_2_0;
  reg        [1:0]    a_reg_2_1;
  reg        [1:0]    a_reg_2_2;
  reg        [1:0]    b_reg_0_0;
  reg        [1:0]    b_reg_0_1;
  reg        [1:0]    b_reg_0_2;
  reg        [1:0]    b_reg_1_0;
  reg        [1:0]    b_reg_1_1;
  reg        [1:0]    b_reg_1_2;
  reg        [1:0]    b_reg_2_0;
  reg        [1:0]    b_reg_2_1;
  reg        [1:0]    b_reg_2_2;
  wire                det_0;
  wire                det_1;
  wire                det_2;
  wire                det_3;
  wire                det_4;
  wire                det_5;
  wire                det_6;
  wire                det_7;
  wire                det_8;
  wire                det_9;
  wire                det_10;
  wire                det_11;
  wire                det_12;
  wire                det_13;
  wire                det_14;
  wire                det_15;
  wire                det_16;
  wire                det_17;
  wire                det_18;
  wire                det_19;
  wire                det_20;
  wire                det_21;
  wire                det_22;
  wire                det_23;
  reg        [1:0]    u_0_0;
  reg        [1:0]    u_0_1;
  reg        [1:0]    u_0_2;
  reg        [1:0]    u_1_0;
  reg        [1:0]    u_1_1;
  reg        [1:0]    u_1_2;
  reg        [1:0]    u_2_0;
  reg        [1:0]    u_2_1;
  reg        [1:0]    u_2_2;

  assign det_0 = (a_reg_0_1[0] ^ a_reg_0_1[1]);
  assign det_12 = (b_reg_0_1[0] ^ b_reg_0_1[1]);
  assign det_6 = (a_reg_0_1[0] ^ a_reg_0_1[1]);
  assign det_18 = (b_reg_0_1[0] ^ b_reg_0_1[1]);
  assign det_1 = (a_reg_0_2[0] ^ a_reg_0_2[1]);
  assign det_13 = (b_reg_0_2[0] ^ b_reg_0_2[1]);
  assign det_7 = (a_reg_0_2[0] ^ a_reg_0_2[1]);
  assign det_19 = (b_reg_0_2[0] ^ b_reg_0_2[1]);
  assign det_2 = (a_reg_1_0[0] ^ a_reg_1_0[1]);
  assign det_14 = (b_reg_1_0[0] ^ b_reg_1_0[1]);
  assign det_8 = (a_reg_1_0[0] ^ a_reg_1_0[1]);
  assign det_20 = (b_reg_1_0[0] ^ b_reg_1_0[1]);
  assign det_3 = (a_reg_1_2[0] ^ a_reg_1_2[1]);
  assign det_15 = (b_reg_1_2[0] ^ b_reg_1_2[1]);
  assign det_9 = (a_reg_1_2[0] ^ a_reg_1_2[1]);
  assign det_21 = (b_reg_1_2[0] ^ b_reg_1_2[1]);
  assign det_4 = (a_reg_2_0[0] ^ a_reg_2_0[1]);
  assign det_16 = (b_reg_2_0[0] ^ b_reg_2_0[1]);
  assign det_10 = (a_reg_2_0[0] ^ a_reg_2_0[1]);
  assign det_22 = (b_reg_2_0[0] ^ b_reg_2_0[1]);
  assign det_5 = (a_reg_2_1[0] ^ a_reg_2_1[1]);
  assign det_17 = (b_reg_2_1[0] ^ b_reg_2_1[1]);
  assign det_11 = (a_reg_2_1[0] ^ a_reg_2_1[1]);
  assign det_23 = (b_reg_2_1[0] ^ b_reg_2_1[1]);
  assign port_det_0 = det_0;
  assign port_det_1 = det_1;
  assign port_det_2 = det_2;
  assign port_det_3 = det_3;
  assign port_det_4 = det_4;
  assign port_det_5 = det_5;
  assign port_det_6 = det_6;
  assign port_det_7 = det_7;
  assign port_det_8 = det_8;
  assign port_det_9 = det_9;
  assign port_det_10 = det_10;
  assign port_det_11 = det_11;
  assign port_det_12 = det_12;
  assign port_det_13 = det_13;
  assign port_det_14 = det_14;
  assign port_det_15 = det_15;
  assign port_det_16 = det_16;
  assign port_det_17 = det_17;
  assign port_det_18 = det_18;
  assign port_det_19 = det_19;
  assign port_det_20 = det_20;
  assign port_det_21 = det_21;
  assign port_det_22 = det_22;
  assign port_det_23 = det_23;
  always @(*) begin
    port_z_0[0] = ((u_0_0[0] ^ u_0_1[0]) ^ u_0_2[0]);
    port_z_0[1] = ((u_0_0[1] ^ u_0_1[1]) ^ u_0_2[1]);
  end

  always @(*) begin
    port_z_1[0] = ((u_1_1[0] ^ u_1_2[0]) ^ u_1_0[0]);
    port_z_1[1] = ((u_1_1[1] ^ u_1_2[1]) ^ u_1_0[1]);
  end

  always @(*) begin
    port_z_2[0] = ((u_2_2[0] ^ u_2_0[0]) ^ u_2_1[0]);
    port_z_2[1] = ((u_2_2[1] ^ u_2_0[1]) ^ u_2_1[1]);
  end

  always @(posedge clk) begin
    a_reg_0_0[0] <= port_a_0[0];
    b_reg_0_0[0] <= port_b_0[0];
    a_reg_0_0[1] <= port_a_0[1];
    b_reg_0_0[1] <= port_b_0[1];
    a_reg_0_1[0] <= port_a_0[0];
    b_reg_0_1[0] <= port_b_0[0];
    a_reg_0_1[1] <= port_a_0[1];
    b_reg_0_1[1] <= port_b_0[1];
    a_reg_0_2[0] <= port_a_0[0];
    b_reg_0_2[0] <= port_b_0[0];
    a_reg_0_2[1] <= port_a_0[1];
    b_reg_0_2[1] <= port_b_0[1];
    a_reg_1_0[0] <= port_a_1[0];
    b_reg_1_0[0] <= port_b_1[0];
    a_reg_1_0[1] <= port_a_1[1];
    b_reg_1_0[1] <= port_b_1[1];
    a_reg_1_1[0] <= port_a_1[0];
    b_reg_1_1[0] <= port_b_1[0];
    a_reg_1_1[1] <= port_a_1[1];
    b_reg_1_1[1] <= port_b_1[1];
    a_reg_1_2[0] <= port_a_1[0];
    b_reg_1_2[0] <= port_b_1[0];
    a_reg_1_2[1] <= port_a_1[1];
    b_reg_1_2[1] <= port_b_1[1];
    a_reg_2_0[0] <= port_a_2[0];
    b_reg_2_0[0] <= port_b_2[0];
    a_reg_2_0[1] <= port_a_2[1];
    b_reg_2_0[1] <= port_b_2[1];
    a_reg_2_1[0] <= port_a_2[0];
    b_reg_2_1[0] <= port_b_2[0];
    a_reg_2_1[1] <= port_a_2[1];
    b_reg_2_1[1] <= port_b_2[1];
    a_reg_2_2[0] <= port_a_2[0];
    b_reg_2_2[0] <= port_b_2[0];
    a_reg_2_2[1] <= port_a_2[1];
    b_reg_2_2[1] <= port_b_2[1];
    u_0_0[0] <= (((a_reg_0_0[0] && b_reg_0_0[0]) ^ port_rand_0) ^ port_rand_1);
    u_0_1[0] <= ((a_reg_0_1[0] && b_reg_1_0[0]) ^ port_rand_2);
    u_0_2[0] <= ((a_reg_0_2[0] && b_reg_2_0[0]) ^ port_rand_4);
    u_1_0[0] <= ((a_reg_1_0[0] && b_reg_0_1[0]) ^ port_rand_0);
    u_1_1[0] <= (((a_reg_1_1[0] && b_reg_1_1[0]) ^ port_rand_3) ^ port_rand_2);
    u_1_2[0] <= ((a_reg_1_2[0] && b_reg_2_1[0]) ^ port_rand_5);
    u_2_0[0] <= ((a_reg_2_0[0] && b_reg_0_2[0]) ^ port_rand_1);
    u_2_1[0] <= ((a_reg_2_1[0] && b_reg_1_2[0]) ^ port_rand_3);
    u_2_2[0] <= (((a_reg_2_2[0] && b_reg_2_2[0]) ^ port_rand_4) ^ port_rand_5);
    u_0_0[1] <= (((a_reg_0_0[1] && b_reg_0_0[1]) ^ port_rand_0) ^ port_rand_1);
    u_0_1[1] <= ((a_reg_0_1[1] && b_reg_1_0[1]) ^ port_rand_2);
    u_0_2[1] <= ((a_reg_0_2[1] && b_reg_2_0[1]) ^ port_rand_4);
    u_1_0[1] <= ((a_reg_1_0[1] && b_reg_0_1[1]) ^ port_rand_0);
    u_1_1[1] <= (((a_reg_1_1[1] && b_reg_1_1[1]) ^ port_rand_3) ^ port_rand_2);
    u_1_2[1] <= ((a_reg_1_2[1] && b_reg_2_1[1]) ^ port_rand_5);
    u_2_0[1] <= ((a_reg_2_0[1] && b_reg_0_2[1]) ^ port_rand_1);
    u_2_1[1] <= ((a_reg_2_1[1] && b_reg_1_2[1]) ^ port_rand_3);
    u_2_2[1] <= (((a_reg_2_2[1] && b_reg_2_2[1]) ^ port_rand_4) ^ port_rand_5);
  end


endmodule
