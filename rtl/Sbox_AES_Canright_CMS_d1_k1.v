// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : Sbox_AES_Canright_CMS_2shares
// Git hash  : db593c14fe8e83f0a4a5d43cf13325e631d65148

`timescale 1ns/1ps

module Sbox_AES_Canright_CMS_d1_k1 (
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

  wire       [2:0]    stage6_port_i_0_0;
  wire       [2:0]    stage6_port_i_0_1;
  wire       [2:0]    stage6_port_i_0_2;
  wire       [2:0]    stage6_port_i_0_3;
  wire       [2:0]    stage6_port_i_0_4;
  wire       [2:0]    stage6_port_i_0_5;
  wire       [2:0]    stage6_port_i_0_6;
  wire       [2:0]    stage6_port_i_0_7;
  wire       [2:0]    stage6_port_i_1_0;
  wire       [2:0]    stage6_port_i_1_1;
  wire       [2:0]    stage6_port_i_1_2;
  wire       [2:0]    stage6_port_i_1_3;
  wire       [2:0]    stage6_port_i_1_4;
  wire       [2:0]    stage6_port_i_1_5;
  wire       [2:0]    stage6_port_i_1_6;
  wire       [2:0]    stage6_port_i_1_7;
  wire       [2:0]    stage1_port_o_0_0;
  wire       [2:0]    stage1_port_o_0_1;
  wire       [2:0]    stage1_port_o_0_2;
  wire       [2:0]    stage1_port_o_0_3;
  wire       [2:0]    stage1_port_o_0_4;
  wire       [2:0]    stage1_port_o_0_5;
  wire       [2:0]    stage1_port_o_0_6;
  wire       [2:0]    stage1_port_o_0_7;
  wire       [2:0]    stage1_port_o_1_0;
  wire       [2:0]    stage1_port_o_1_1;
  wire       [2:0]    stage1_port_o_1_2;
  wire       [2:0]    stage1_port_o_1_3;
  wire       [2:0]    stage1_port_o_1_4;
  wire       [2:0]    stage1_port_o_1_5;
  wire       [2:0]    stage1_port_o_1_6;
  wire       [2:0]    stage1_port_o_1_7;
  wire       [2:0]    stage2_port_y_0_0;
  wire       [2:0]    stage2_port_y_0_1;
  wire       [2:0]    stage2_port_y_0_2;
  wire       [2:0]    stage2_port_y_0_3;
  wire       [2:0]    stage2_port_y_1_0;
  wire       [2:0]    stage2_port_y_1_1;
  wire       [2:0]    stage2_port_y_1_2;
  wire       [2:0]    stage2_port_y_1_3;
  wire       [2:0]    stage2_port_y_2_0;
  wire       [2:0]    stage2_port_y_2_1;
  wire       [2:0]    stage2_port_y_2_2;
  wire       [2:0]    stage2_port_y_2_3;
  wire       [2:0]    stage2_port_y_3_0;
  wire       [2:0]    stage2_port_y_3_1;
  wire       [2:0]    stage2_port_y_3_2;
  wire       [2:0]    stage2_port_y_3_3;
  wire       [2:0]    stage3_port_y_0_0;
  wire       [2:0]    stage3_port_y_0_1;
  wire       [2:0]    stage3_port_y_1_0;
  wire       [2:0]    stage3_port_y_1_1;
  wire       [2:0]    stage3_port_y_2_0;
  wire       [2:0]    stage3_port_y_2_1;
  wire       [2:0]    stage3_port_y_3_0;
  wire       [2:0]    stage3_port_y_3_1;
  wire       [2:0]    stage4_port_y_0_0;
  wire       [2:0]    stage4_port_y_0_1;
  wire       [2:0]    stage4_port_y_0_2;
  wire       [2:0]    stage4_port_y_0_3;
  wire       [2:0]    stage4_port_y_1_0;
  wire       [2:0]    stage4_port_y_1_1;
  wire       [2:0]    stage4_port_y_1_2;
  wire       [2:0]    stage4_port_y_1_3;
  wire       [2:0]    stage4_port_y_2_0;
  wire       [2:0]    stage4_port_y_2_1;
  wire       [2:0]    stage4_port_y_2_2;
  wire       [2:0]    stage4_port_y_2_3;
  wire       [2:0]    stage4_port_y_3_0;
  wire       [2:0]    stage4_port_y_3_1;
  wire       [2:0]    stage4_port_y_3_2;
  wire       [2:0]    stage4_port_y_3_3;
  wire       [2:0]    stage5_port_y_0_0;
  wire       [2:0]    stage5_port_y_0_1;
  wire       [2:0]    stage5_port_y_0_2;
  wire       [2:0]    stage5_port_y_0_3;
  wire       [2:0]    stage5_port_y_0_4;
  wire       [2:0]    stage5_port_y_0_5;
  wire       [2:0]    stage5_port_y_0_6;
  wire       [2:0]    stage5_port_y_0_7;
  wire       [2:0]    stage5_port_y_1_0;
  wire       [2:0]    stage5_port_y_1_1;
  wire       [2:0]    stage5_port_y_1_2;
  wire       [2:0]    stage5_port_y_1_3;
  wire       [2:0]    stage5_port_y_1_4;
  wire       [2:0]    stage5_port_y_1_5;
  wire       [2:0]    stage5_port_y_1_6;
  wire       [2:0]    stage5_port_y_1_7;
  wire       [2:0]    stage5_port_y_2_0;
  wire       [2:0]    stage5_port_y_2_1;
  wire       [2:0]    stage5_port_y_2_2;
  wire       [2:0]    stage5_port_y_2_3;
  wire       [2:0]    stage5_port_y_2_4;
  wire       [2:0]    stage5_port_y_2_5;
  wire       [2:0]    stage5_port_y_2_6;
  wire       [2:0]    stage5_port_y_2_7;
  wire       [2:0]    stage5_port_y_3_0;
  wire       [2:0]    stage5_port_y_3_1;
  wire       [2:0]    stage5_port_y_3_2;
  wire       [2:0]    stage5_port_y_3_3;
  wire       [2:0]    stage5_port_y_3_4;
  wire       [2:0]    stage5_port_y_3_5;
  wire       [2:0]    stage5_port_y_3_6;
  wire       [2:0]    stage5_port_y_3_7;
  wire       [2:0]    stage6_port_o_0_0;
  wire       [2:0]    stage6_port_o_0_1;
  wire       [2:0]    stage6_port_o_0_2;
  wire       [2:0]    stage6_port_o_0_3;
  wire       [2:0]    stage6_port_o_0_4;
  wire       [2:0]    stage6_port_o_0_5;
  wire       [2:0]    stage6_port_o_0_6;
  wire       [2:0]    stage6_port_o_0_7;
  wire       [2:0]    stage6_port_o_1_0;
  wire       [2:0]    stage6_port_o_1_1;
  wire       [2:0]    stage6_port_o_1_2;
  wire       [2:0]    stage6_port_o_1_3;
  wire       [2:0]    stage6_port_o_1_4;
  wire       [2:0]    stage6_port_o_1_5;
  wire       [2:0]    stage6_port_o_1_6;
  wire       [2:0]    stage6_port_o_1_7;
  wire       [2:0]    ax_0_0;
  wire       [2:0]    ax_0_1;
  wire       [2:0]    ax_0_2;
  wire       [2:0]    ax_0_3;
  wire       [2:0]    ax_1_0;
  wire       [2:0]    ax_1_1;
  wire       [2:0]    ax_1_2;
  wire       [2:0]    ax_1_3;
  wire       [2:0]    bx_0_0;
  wire       [2:0]    bx_0_1;
  wire       [2:0]    bx_0_2;
  wire       [2:0]    bx_0_3;
  wire       [2:0]    bx_1_0;
  wire       [2:0]    bx_1_1;
  wire       [2:0]    bx_1_2;
  wire       [2:0]    bx_1_3;
  wire       [2:0]    ax1_0_0;
  wire       [2:0]    ax1_0_1;
  wire       [2:0]    ax1_1_0;
  wire       [2:0]    ax1_1_1;
  wire       [2:0]    bx1_0_0;
  wire       [2:0]    bx1_0_1;
  wire       [2:0]    bx1_1_0;
  wire       [2:0]    bx1_1_1;
  reg        [2:0]    ax4_0_0;
  reg        [2:0]    ax4_0_1;
  reg        [2:0]    ax4_1_0;
  reg        [2:0]    ax4_1_1;
  reg        [2:0]    bx4_0_0;
  reg        [2:0]    bx4_0_1;
  reg        [2:0]    bx4_1_0;
  reg        [2:0]    bx4_1_1;
  wire       [2:0]    cx4_0_0;
  wire       [2:0]    cx4_0_1;
  wire       [2:0]    cx4_1_0;
  wire       [2:0]    cx4_1_1;
  reg        [2:0]    ax_reg1_0_0;
  reg        [2:0]    ax_reg1_0_1;
  reg        [2:0]    ax_reg1_0_2;
  reg        [2:0]    ax_reg1_0_3;
  reg        [2:0]    ax_reg1_1_0;
  reg        [2:0]    ax_reg1_1_1;
  reg        [2:0]    ax_reg1_1_2;
  reg        [2:0]    ax_reg1_1_3;
  reg        [2:0]    ax_reg2_0_0;
  reg        [2:0]    ax_reg2_0_1;
  reg        [2:0]    ax_reg2_0_2;
  reg        [2:0]    ax_reg2_0_3;
  reg        [2:0]    ax_reg2_1_0;
  reg        [2:0]    ax_reg2_1_1;
  reg        [2:0]    ax_reg2_1_2;
  reg        [2:0]    ax_reg2_1_3;
  reg        [2:0]    ax_reg3_0_0;
  reg        [2:0]    ax_reg3_0_1;
  reg        [2:0]    ax_reg3_0_2;
  reg        [2:0]    ax_reg3_0_3;
  reg        [2:0]    ax_reg3_1_0;
  reg        [2:0]    ax_reg3_1_1;
  reg        [2:0]    ax_reg3_1_2;
  reg        [2:0]    ax_reg3_1_3;
  reg        [2:0]    bx_reg1_0_0;
  reg        [2:0]    bx_reg1_0_1;
  reg        [2:0]    bx_reg1_0_2;
  reg        [2:0]    bx_reg1_0_3;
  reg        [2:0]    bx_reg1_1_0;
  reg        [2:0]    bx_reg1_1_1;
  reg        [2:0]    bx_reg1_1_2;
  reg        [2:0]    bx_reg1_1_3;
  reg        [2:0]    bx_reg2_0_0;
  reg        [2:0]    bx_reg2_0_1;
  reg        [2:0]    bx_reg2_0_2;
  reg        [2:0]    bx_reg2_0_3;
  reg        [2:0]    bx_reg2_1_0;
  reg        [2:0]    bx_reg2_1_1;
  reg        [2:0]    bx_reg2_1_2;
  reg        [2:0]    bx_reg2_1_3;
  reg        [2:0]    bx_reg3_0_0;
  reg        [2:0]    bx_reg3_0_1;
  reg        [2:0]    bx_reg3_0_2;
  reg        [2:0]    bx_reg3_0_3;
  reg        [2:0]    bx_reg3_1_0;
  reg        [2:0]    bx_reg3_1_1;
  reg        [2:0]    bx_reg3_1_2;
  reg        [2:0]    bx_reg3_1_3;
  wire       [2:0]    bx5_0_0;
  wire       [2:0]    bx5_0_1;
  wire       [2:0]    bx5_0_2;
  wire       [2:0]    bx5_0_3;
  wire       [2:0]    bx5_1_0;
  wire       [2:0]    bx5_1_1;
  wire       [2:0]    bx5_1_2;
  wire       [2:0]    bx5_1_3;

  CMS_stage1 stage1 (
    .port_i_0_0 (port_i_0_0[2:0]       ), //i
    .port_i_0_1 (port_i_0_1[2:0]       ), //i
    .port_i_0_2 (port_i_0_2[2:0]       ), //i
    .port_i_0_3 (port_i_0_3[2:0]       ), //i
    .port_i_0_4 (port_i_0_4[2:0]       ), //i
    .port_i_0_5 (port_i_0_5[2:0]       ), //i
    .port_i_0_6 (port_i_0_6[2:0]       ), //i
    .port_i_0_7 (port_i_0_7[2:0]       ), //i
    .port_i_1_0 (port_i_1_0[2:0]       ), //i
    .port_i_1_1 (port_i_1_1[2:0]       ), //i
    .port_i_1_2 (port_i_1_2[2:0]       ), //i
    .port_i_1_3 (port_i_1_3[2:0]       ), //i
    .port_i_1_4 (port_i_1_4[2:0]       ), //i
    .port_i_1_5 (port_i_1_5[2:0]       ), //i
    .port_i_1_6 (port_i_1_6[2:0]       ), //i
    .port_i_1_7 (port_i_1_7[2:0]       ), //i
    .port_o_0_0 (stage1_port_o_0_0[2:0]), //o
    .port_o_0_1 (stage1_port_o_0_1[2:0]), //o
    .port_o_0_2 (stage1_port_o_0_2[2:0]), //o
    .port_o_0_3 (stage1_port_o_0_3[2:0]), //o
    .port_o_0_4 (stage1_port_o_0_4[2:0]), //o
    .port_o_0_5 (stage1_port_o_0_5[2:0]), //o
    .port_o_0_6 (stage1_port_o_0_6[2:0]), //o
    .port_o_0_7 (stage1_port_o_0_7[2:0]), //o
    .port_o_1_0 (stage1_port_o_1_0[2:0]), //o
    .port_o_1_1 (stage1_port_o_1_1[2:0]), //o
    .port_o_1_2 (stage1_port_o_1_2[2:0]), //o
    .port_o_1_3 (stage1_port_o_1_3[2:0]), //o
    .port_o_1_4 (stage1_port_o_1_4[2:0]), //o
    .port_o_1_5 (stage1_port_o_1_5[2:0]), //o
    .port_o_1_6 (stage1_port_o_1_6[2:0]), //o
    .port_o_1_7 (stage1_port_o_1_7[2:0]), //o
    .clk        (clk                   ), //i
    .reset      (reset                 )  //i
  );
  CMS_stage2 stage2 (
    .port_a_0_0 (ax_0_0[2:0]           ), //i
    .port_a_0_1 (ax_0_1[2:0]           ), //i
    .port_a_0_2 (ax_0_2[2:0]           ), //i
    .port_a_0_3 (ax_0_3[2:0]           ), //i
    .port_a_1_0 (ax_1_0[2:0]           ), //i
    .port_a_1_1 (ax_1_1[2:0]           ), //i
    .port_a_1_2 (ax_1_2[2:0]           ), //i
    .port_a_1_3 (ax_1_3[2:0]           ), //i
    .port_b_0_0 (bx_0_0[2:0]           ), //i
    .port_b_0_1 (bx_0_1[2:0]           ), //i
    .port_b_0_2 (bx_0_2[2:0]           ), //i
    .port_b_0_3 (bx_0_3[2:0]           ), //i
    .port_b_1_0 (bx_1_0[2:0]           ), //i
    .port_b_1_1 (bx_1_1[2:0]           ), //i
    .port_b_1_2 (bx_1_2[2:0]           ), //i
    .port_b_1_3 (bx_1_3[2:0]           ), //i
    .port_r_0_0 (port_r_0              ), //i
    .port_r_0_1 (port_r_1              ), //i
    .port_r_0_2 (port_r_2              ), //i
    .port_r_0_3 (port_r_3              ), //i
    .port_r_1_0 (port_r_4              ), //i
    .port_r_1_1 (port_r_5              ), //i
    .port_r_1_2 (port_r_6              ), //i
    .port_r_1_3 (port_r_7              ), //i
    .port_r_2_0 (port_r_8              ), //i
    .port_r_2_1 (port_r_9              ), //i
    .port_r_2_2 (port_r_10             ), //i
    .port_r_2_3 (port_r_11             ), //i
    .port_r_3_0 (port_r_12             ), //i
    .port_r_3_1 (port_r_13             ), //i
    .port_r_3_2 (port_r_14             ), //i
    .port_r_3_3 (port_r_15             ), //i
    .port_y_0_0 (stage2_port_y_0_0[2:0]), //o
    .port_y_0_1 (stage2_port_y_0_1[2:0]), //o
    .port_y_0_2 (stage2_port_y_0_2[2:0]), //o
    .port_y_0_3 (stage2_port_y_0_3[2:0]), //o
    .port_y_1_0 (stage2_port_y_1_0[2:0]), //o
    .port_y_1_1 (stage2_port_y_1_1[2:0]), //o
    .port_y_1_2 (stage2_port_y_1_2[2:0]), //o
    .port_y_1_3 (stage2_port_y_1_3[2:0]), //o
    .port_y_2_0 (stage2_port_y_2_0[2:0]), //o
    .port_y_2_1 (stage2_port_y_2_1[2:0]), //o
    .port_y_2_2 (stage2_port_y_2_2[2:0]), //o
    .port_y_2_3 (stage2_port_y_2_3[2:0]), //o
    .port_y_3_0 (stage2_port_y_3_0[2:0]), //o
    .port_y_3_1 (stage2_port_y_3_1[2:0]), //o
    .port_y_3_2 (stage2_port_y_3_2[2:0]), //o
    .port_y_3_3 (stage2_port_y_3_3[2:0]), //o
    .clk        (clk                   ), //i
    .reset      (reset                 )  //i
  );
  CMS_stage3 stage3 (
    .port_a_0_0 (ax1_0_0[2:0]          ), //i
    .port_a_0_1 (ax1_0_1[2:0]          ), //i
    .port_a_1_0 (ax1_1_0[2:0]          ), //i
    .port_a_1_1 (ax1_1_1[2:0]          ), //i
    .port_b_0_0 (bx1_0_0[2:0]          ), //i
    .port_b_0_1 (bx1_0_1[2:0]          ), //i
    .port_b_1_0 (bx1_1_0[2:0]          ), //i
    .port_b_1_1 (bx1_1_1[2:0]          ), //i
    .port_r_0_0 (port_r_12             ), //i
    .port_r_0_1 (port_r_13             ), //i
    .port_r_1_0 (port_r_14             ), //i
    .port_r_1_1 (port_r_15             ), //i
    .port_r_2_0 (port_r_16             ), //i
    .port_r_2_1 (port_r_17             ), //i
    .port_r_3_0 (port_r_18             ), //i
    .port_r_3_1 (port_r_19             ), //i
    .port_y_0_0 (stage3_port_y_0_0[2:0]), //o
    .port_y_0_1 (stage3_port_y_0_1[2:0]), //o
    .port_y_1_0 (stage3_port_y_1_0[2:0]), //o
    .port_y_1_1 (stage3_port_y_1_1[2:0]), //o
    .port_y_2_0 (stage3_port_y_2_0[2:0]), //o
    .port_y_2_1 (stage3_port_y_2_1[2:0]), //o
    .port_y_3_0 (stage3_port_y_3_0[2:0]), //o
    .port_y_3_1 (stage3_port_y_3_1[2:0]), //o
    .clk        (clk                   ), //i
    .reset      (reset                 )  //i
  );
  CMS_stage4 stage4 (
    .port_a_0_0 (ax4_0_0[2:0]          ), //i
    .port_a_0_1 (ax4_0_1[2:0]          ), //i
    .port_a_1_0 (ax4_1_0[2:0]          ), //i
    .port_a_1_1 (ax4_1_1[2:0]          ), //i
    .port_b_0_0 (cx4_0_0[2:0]          ), //i
    .port_b_0_1 (cx4_0_1[2:0]          ), //i
    .port_b_1_0 (cx4_1_0[2:0]          ), //i
    .port_b_1_1 (cx4_1_1[2:0]          ), //i
    .port_c_0_0 (bx4_0_0[2:0]          ), //i
    .port_c_0_1 (bx4_0_1[2:0]          ), //i
    .port_c_1_0 (bx4_1_0[2:0]          ), //i
    .port_c_1_1 (bx4_1_1[2:0]          ), //i
    .port_r_0_0 (port_r_18             ), //i
    .port_r_0_1 (port_r_19             ), //i
    .port_r_0_2 (port_r_20             ), //i
    .port_r_0_3 (port_r_21             ), //i
    .port_r_1_0 (port_r_22             ), //i
    .port_r_1_1 (port_r_23             ), //i
    .port_r_1_2 (port_r_24             ), //i
    .port_r_1_3 (port_r_25             ), //i
    .port_r_2_0 (port_r_26             ), //i
    .port_r_2_1 (port_r_27             ), //i
    .port_r_2_2 (port_r_28             ), //i
    .port_r_2_3 (port_r_29             ), //i
    .port_r_3_0 (port_r_30             ), //i
    .port_r_3_1 (port_r_31             ), //i
    .port_r_3_2 (port_r_32             ), //i
    .port_r_3_3 (port_r_33             ), //i
    .port_y_0_0 (stage4_port_y_0_0[2:0]), //o
    .port_y_0_1 (stage4_port_y_0_1[2:0]), //o
    .port_y_0_2 (stage4_port_y_0_2[2:0]), //o
    .port_y_0_3 (stage4_port_y_0_3[2:0]), //o
    .port_y_1_0 (stage4_port_y_1_0[2:0]), //o
    .port_y_1_1 (stage4_port_y_1_1[2:0]), //o
    .port_y_1_2 (stage4_port_y_1_2[2:0]), //o
    .port_y_1_3 (stage4_port_y_1_3[2:0]), //o
    .port_y_2_0 (stage4_port_y_2_0[2:0]), //o
    .port_y_2_1 (stage4_port_y_2_1[2:0]), //o
    .port_y_2_2 (stage4_port_y_2_2[2:0]), //o
    .port_y_2_3 (stage4_port_y_2_3[2:0]), //o
    .port_y_3_0 (stage4_port_y_3_0[2:0]), //o
    .port_y_3_1 (stage4_port_y_3_1[2:0]), //o
    .port_y_3_2 (stage4_port_y_3_2[2:0]), //o
    .port_y_3_3 (stage4_port_y_3_3[2:0]), //o
    .clk        (clk                   ), //i
    .reset      (reset                 )  //i
  );
  CMS_stage5 stage5 (
    .port_a_0_0 (bx_reg3_0_0[2:0]      ), //i
    .port_a_0_1 (bx_reg3_0_1[2:0]      ), //i
    .port_a_0_2 (bx_reg3_0_2[2:0]      ), //i
    .port_a_0_3 (bx_reg3_0_3[2:0]      ), //i
    .port_a_1_0 (bx_reg3_1_0[2:0]      ), //i
    .port_a_1_1 (bx_reg3_1_1[2:0]      ), //i
    .port_a_1_2 (bx_reg3_1_2[2:0]      ), //i
    .port_a_1_3 (bx_reg3_1_3[2:0]      ), //i
    .port_b_0_0 (bx5_0_0[2:0]          ), //i
    .port_b_0_1 (bx5_0_1[2:0]          ), //i
    .port_b_0_2 (bx5_0_2[2:0]          ), //i
    .port_b_0_3 (bx5_0_3[2:0]          ), //i
    .port_b_1_0 (bx5_1_0[2:0]          ), //i
    .port_b_1_1 (bx5_1_1[2:0]          ), //i
    .port_b_1_2 (bx5_1_2[2:0]          ), //i
    .port_b_1_3 (bx5_1_3[2:0]          ), //i
    .port_c_0_0 (ax_reg3_0_0[2:0]      ), //i
    .port_c_0_1 (ax_reg3_0_1[2:0]      ), //i
    .port_c_0_2 (ax_reg3_0_2[2:0]      ), //i
    .port_c_0_3 (ax_reg3_0_3[2:0]      ), //i
    .port_c_1_0 (ax_reg3_1_0[2:0]      ), //i
    .port_c_1_1 (ax_reg3_1_1[2:0]      ), //i
    .port_c_1_2 (ax_reg3_1_2[2:0]      ), //i
    .port_c_1_3 (ax_reg3_1_3[2:0]      ), //i
    .port_r_0_0 (port_r_30             ), //i
    .port_r_0_1 (port_r_31             ), //i
    .port_r_0_2 (port_r_32             ), //i
    .port_r_0_3 (port_r_33             ), //i
    .port_r_0_4 (port_r_34             ), //i
    .port_r_0_5 (port_r_35             ), //i
    .port_r_0_6 (port_r_36             ), //i
    .port_r_0_7 (port_r_37             ), //i
    .port_r_1_0 (port_r_34             ), //i
    .port_r_1_1 (port_r_35             ), //i
    .port_r_1_2 (port_r_36             ), //i
    .port_r_1_3 (port_r_37             ), //i
    .port_r_1_4 (port_r_38             ), //i
    .port_r_1_5 (port_r_39             ), //i
    .port_r_1_6 (port_r_40             ), //i
    .port_r_1_7 (port_r_41             ), //i
    .port_r_2_0 (port_r_38             ), //i
    .port_r_2_1 (port_r_39             ), //i
    .port_r_2_2 (port_r_40             ), //i
    .port_r_2_3 (port_r_41             ), //i
    .port_r_2_4 (port_r_42             ), //i
    .port_r_2_5 (port_r_43             ), //i
    .port_r_2_6 (port_r_44             ), //i
    .port_r_2_7 (port_r_45             ), //i
    .port_r_3_0 (port_r_42             ), //i
    .port_r_3_1 (port_r_43             ), //i
    .port_r_3_2 (port_r_44             ), //i
    .port_r_3_3 (port_r_45             ), //i
    .port_r_3_4 (port_r_46             ), //i
    .port_r_3_5 (port_r_47             ), //i
    .port_r_3_6 (port_r_48             ), //i
    .port_r_3_7 (port_r_49             ), //i
    .port_y_0_0 (stage5_port_y_0_0[2:0]), //o
    .port_y_0_1 (stage5_port_y_0_1[2:0]), //o
    .port_y_0_2 (stage5_port_y_0_2[2:0]), //o
    .port_y_0_3 (stage5_port_y_0_3[2:0]), //o
    .port_y_0_4 (stage5_port_y_0_4[2:0]), //o
    .port_y_0_5 (stage5_port_y_0_5[2:0]), //o
    .port_y_0_6 (stage5_port_y_0_6[2:0]), //o
    .port_y_0_7 (stage5_port_y_0_7[2:0]), //o
    .port_y_1_0 (stage5_port_y_1_0[2:0]), //o
    .port_y_1_1 (stage5_port_y_1_1[2:0]), //o
    .port_y_1_2 (stage5_port_y_1_2[2:0]), //o
    .port_y_1_3 (stage5_port_y_1_3[2:0]), //o
    .port_y_1_4 (stage5_port_y_1_4[2:0]), //o
    .port_y_1_5 (stage5_port_y_1_5[2:0]), //o
    .port_y_1_6 (stage5_port_y_1_6[2:0]), //o
    .port_y_1_7 (stage5_port_y_1_7[2:0]), //o
    .port_y_2_0 (stage5_port_y_2_0[2:0]), //o
    .port_y_2_1 (stage5_port_y_2_1[2:0]), //o
    .port_y_2_2 (stage5_port_y_2_2[2:0]), //o
    .port_y_2_3 (stage5_port_y_2_3[2:0]), //o
    .port_y_2_4 (stage5_port_y_2_4[2:0]), //o
    .port_y_2_5 (stage5_port_y_2_5[2:0]), //o
    .port_y_2_6 (stage5_port_y_2_6[2:0]), //o
    .port_y_2_7 (stage5_port_y_2_7[2:0]), //o
    .port_y_3_0 (stage5_port_y_3_0[2:0]), //o
    .port_y_3_1 (stage5_port_y_3_1[2:0]), //o
    .port_y_3_2 (stage5_port_y_3_2[2:0]), //o
    .port_y_3_3 (stage5_port_y_3_3[2:0]), //o
    .port_y_3_4 (stage5_port_y_3_4[2:0]), //o
    .port_y_3_5 (stage5_port_y_3_5[2:0]), //o
    .port_y_3_6 (stage5_port_y_3_6[2:0]), //o
    .port_y_3_7 (stage5_port_y_3_7[2:0]), //o
    .clk        (clk                   ), //i
    .reset      (reset                 )  //i
  );
  CMS_stage6 stage6 (
    .port_i_0_0 (stage6_port_i_0_0[2:0]), //i
    .port_i_0_1 (stage6_port_i_0_1[2:0]), //i
    .port_i_0_2 (stage6_port_i_0_2[2:0]), //i
    .port_i_0_3 (stage6_port_i_0_3[2:0]), //i
    .port_i_0_4 (stage6_port_i_0_4[2:0]), //i
    .port_i_0_5 (stage6_port_i_0_5[2:0]), //i
    .port_i_0_6 (stage6_port_i_0_6[2:0]), //i
    .port_i_0_7 (stage6_port_i_0_7[2:0]), //i
    .port_i_1_0 (stage6_port_i_1_0[2:0]), //i
    .port_i_1_1 (stage6_port_i_1_1[2:0]), //i
    .port_i_1_2 (stage6_port_i_1_2[2:0]), //i
    .port_i_1_3 (stage6_port_i_1_3[2:0]), //i
    .port_i_1_4 (stage6_port_i_1_4[2:0]), //i
    .port_i_1_5 (stage6_port_i_1_5[2:0]), //i
    .port_i_1_6 (stage6_port_i_1_6[2:0]), //i
    .port_i_1_7 (stage6_port_i_1_7[2:0]), //i
    .port_o_0_0 (stage6_port_o_0_0[2:0]), //o
    .port_o_0_1 (stage6_port_o_0_1[2:0]), //o
    .port_o_0_2 (stage6_port_o_0_2[2:0]), //o
    .port_o_0_3 (stage6_port_o_0_3[2:0]), //o
    .port_o_0_4 (stage6_port_o_0_4[2:0]), //o
    .port_o_0_5 (stage6_port_o_0_5[2:0]), //o
    .port_o_0_6 (stage6_port_o_0_6[2:0]), //o
    .port_o_0_7 (stage6_port_o_0_7[2:0]), //o
    .port_o_1_0 (stage6_port_o_1_0[2:0]), //o
    .port_o_1_1 (stage6_port_o_1_1[2:0]), //o
    .port_o_1_2 (stage6_port_o_1_2[2:0]), //o
    .port_o_1_3 (stage6_port_o_1_3[2:0]), //o
    .port_o_1_4 (stage6_port_o_1_4[2:0]), //o
    .port_o_1_5 (stage6_port_o_1_5[2:0]), //o
    .port_o_1_6 (stage6_port_o_1_6[2:0]), //o
    .port_o_1_7 (stage6_port_o_1_7[2:0])  //o
  );
  assign ax_0_0 = stage1_port_o_0_4;
  assign bx_0_0 = stage1_port_o_0_0;
  assign ax_0_1 = stage1_port_o_0_5;
  assign bx_0_1 = stage1_port_o_0_1;
  assign ax_0_2 = stage1_port_o_0_6;
  assign bx_0_2 = stage1_port_o_0_2;
  assign ax_0_3 = stage1_port_o_0_7;
  assign bx_0_3 = stage1_port_o_0_3;
  assign ax_1_0 = stage1_port_o_1_4;
  assign bx_1_0 = stage1_port_o_1_0;
  assign ax_1_1 = stage1_port_o_1_5;
  assign bx_1_1 = stage1_port_o_1_1;
  assign ax_1_2 = stage1_port_o_1_6;
  assign bx_1_2 = stage1_port_o_1_2;
  assign ax_1_3 = stage1_port_o_1_7;
  assign bx_1_3 = stage1_port_o_1_3;
  assign ax1_0_0 = (stage2_port_y_0_2 ^ stage2_port_y_1_2);
  assign ax1_1_0 = (stage2_port_y_2_2 ^ stage2_port_y_3_2);
  assign ax1_0_1 = (stage2_port_y_0_3 ^ stage2_port_y_1_3);
  assign ax1_1_1 = (stage2_port_y_2_3 ^ stage2_port_y_3_3);
  assign bx1_0_0 = (stage2_port_y_0_0 ^ stage2_port_y_1_0);
  assign bx1_1_0 = (stage2_port_y_2_0 ^ stage2_port_y_3_0);
  assign bx1_0_1 = (stage2_port_y_0_1 ^ stage2_port_y_1_1);
  assign bx1_1_1 = (stage2_port_y_2_1 ^ stage2_port_y_3_1);
  assign cx4_0_0 = (stage3_port_y_0_0 ^ stage3_port_y_1_0);
  assign cx4_0_1 = (stage3_port_y_0_1 ^ stage3_port_y_1_1);
  assign cx4_1_0 = (stage3_port_y_2_0 ^ stage3_port_y_3_0);
  assign cx4_1_1 = (stage3_port_y_2_1 ^ stage3_port_y_3_1);
  assign bx5_0_0 = (stage4_port_y_0_0 ^ stage4_port_y_1_0);
  assign bx5_0_1 = (stage4_port_y_0_1 ^ stage4_port_y_1_1);
  assign bx5_0_2 = (stage4_port_y_0_2 ^ stage4_port_y_1_2);
  assign bx5_0_3 = (stage4_port_y_0_3 ^ stage4_port_y_1_3);
  assign bx5_1_0 = (stage4_port_y_2_0 ^ stage4_port_y_3_0);
  assign bx5_1_1 = (stage4_port_y_2_1 ^ stage4_port_y_3_1);
  assign bx5_1_2 = (stage4_port_y_2_2 ^ stage4_port_y_3_2);
  assign bx5_1_3 = (stage4_port_y_2_3 ^ stage4_port_y_3_3);
  assign stage6_port_i_0_0 = (stage5_port_y_0_0 ^ stage5_port_y_1_0);
  assign stage6_port_i_0_1 = (stage5_port_y_0_1 ^ stage5_port_y_1_1);
  assign stage6_port_i_0_2 = (stage5_port_y_0_2 ^ stage5_port_y_1_2);
  assign stage6_port_i_0_3 = (stage5_port_y_0_3 ^ stage5_port_y_1_3);
  assign stage6_port_i_0_4 = (stage5_port_y_0_4 ^ stage5_port_y_1_4);
  assign stage6_port_i_0_5 = (stage5_port_y_0_5 ^ stage5_port_y_1_5);
  assign stage6_port_i_0_6 = (stage5_port_y_0_6 ^ stage5_port_y_1_6);
  assign stage6_port_i_0_7 = (stage5_port_y_0_7 ^ stage5_port_y_1_7);
  assign stage6_port_i_1_0 = (stage5_port_y_2_0 ^ stage5_port_y_3_0);
  assign stage6_port_i_1_1 = (stage5_port_y_2_1 ^ stage5_port_y_3_1);
  assign stage6_port_i_1_2 = (stage5_port_y_2_2 ^ stage5_port_y_3_2);
  assign stage6_port_i_1_3 = (stage5_port_y_2_3 ^ stage5_port_y_3_3);
  assign stage6_port_i_1_4 = (stage5_port_y_2_4 ^ stage5_port_y_3_4);
  assign stage6_port_i_1_5 = (stage5_port_y_2_5 ^ stage5_port_y_3_5);
  assign stage6_port_i_1_6 = (stage5_port_y_2_6 ^ stage5_port_y_3_6);
  assign stage6_port_i_1_7 = (stage5_port_y_2_7 ^ stage5_port_y_3_7);
  assign port_o_0_0 = stage6_port_o_0_0;
  assign port_o_0_1 = stage6_port_o_0_1;
  assign port_o_0_2 = stage6_port_o_0_2;
  assign port_o_0_3 = stage6_port_o_0_3;
  assign port_o_0_4 = stage6_port_o_0_4;
  assign port_o_0_5 = stage6_port_o_0_5;
  assign port_o_0_6 = stage6_port_o_0_6;
  assign port_o_0_7 = stage6_port_o_0_7;
  assign port_o_1_0 = stage6_port_o_1_0;
  assign port_o_1_1 = stage6_port_o_1_1;
  assign port_o_1_2 = stage6_port_o_1_2;
  assign port_o_1_3 = stage6_port_o_1_3;
  assign port_o_1_4 = stage6_port_o_1_4;
  assign port_o_1_5 = stage6_port_o_1_5;
  assign port_o_1_6 = stage6_port_o_1_6;
  assign port_o_1_7 = stage6_port_o_1_7;
  always @(posedge clk) begin
    ax4_0_0 <= ax1_0_0;
    ax4_0_1 <= ax1_0_1;
    ax4_1_0 <= ax1_1_0;
    ax4_1_1 <= ax1_1_1;
    bx4_0_0 <= bx1_0_0;
    bx4_0_1 <= bx1_0_1;
    bx4_1_0 <= bx1_1_0;
    bx4_1_1 <= bx1_1_1;
    ax_reg1_0_0 <= ax_0_0;
    ax_reg1_0_1 <= ax_0_1;
    ax_reg1_0_2 <= ax_0_2;
    ax_reg1_0_3 <= ax_0_3;
    ax_reg1_1_0 <= ax_1_0;
    ax_reg1_1_1 <= ax_1_1;
    ax_reg1_1_2 <= ax_1_2;
    ax_reg1_1_3 <= ax_1_3;
    ax_reg2_0_0 <= ax_reg1_0_0;
    ax_reg2_0_1 <= ax_reg1_0_1;
    ax_reg2_0_2 <= ax_reg1_0_2;
    ax_reg2_0_3 <= ax_reg1_0_3;
    ax_reg2_1_0 <= ax_reg1_1_0;
    ax_reg2_1_1 <= ax_reg1_1_1;
    ax_reg2_1_2 <= ax_reg1_1_2;
    ax_reg2_1_3 <= ax_reg1_1_3;
    ax_reg3_0_0 <= ax_reg2_0_0;
    ax_reg3_0_1 <= ax_reg2_0_1;
    ax_reg3_0_2 <= ax_reg2_0_2;
    ax_reg3_0_3 <= ax_reg2_0_3;
    ax_reg3_1_0 <= ax_reg2_1_0;
    ax_reg3_1_1 <= ax_reg2_1_1;
    ax_reg3_1_2 <= ax_reg2_1_2;
    ax_reg3_1_3 <= ax_reg2_1_3;
    bx_reg1_0_0 <= bx_0_0;
    bx_reg1_0_1 <= bx_0_1;
    bx_reg1_0_2 <= bx_0_2;
    bx_reg1_0_3 <= bx_0_3;
    bx_reg1_1_0 <= bx_1_0;
    bx_reg1_1_1 <= bx_1_1;
    bx_reg1_1_2 <= bx_1_2;
    bx_reg1_1_3 <= bx_1_3;
    bx_reg2_0_0 <= bx_reg1_0_0;
    bx_reg2_0_1 <= bx_reg1_0_1;
    bx_reg2_0_2 <= bx_reg1_0_2;
    bx_reg2_0_3 <= bx_reg1_0_3;
    bx_reg2_1_0 <= bx_reg1_1_0;
    bx_reg2_1_1 <= bx_reg1_1_1;
    bx_reg2_1_2 <= bx_reg1_1_2;
    bx_reg2_1_3 <= bx_reg1_1_3;
    bx_reg3_0_0 <= bx_reg2_0_0;
    bx_reg3_0_1 <= bx_reg2_0_1;
    bx_reg3_0_2 <= bx_reg2_0_2;
    bx_reg3_0_3 <= bx_reg2_0_3;
    bx_reg3_1_0 <= bx_reg2_1_0;
    bx_reg3_1_1 <= bx_reg2_1_1;
    bx_reg3_1_2 <= bx_reg2_1_2;
    bx_reg3_1_3 <= bx_reg2_1_3;
  end


endmodule

module CMS_stage6 (
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
  output     [2:0]    port_o_1_7
);

  wire       [2:0]    tx1_0;
  wire       [2:0]    tx2_0;
  wire       [2:0]    tx3_0;
  wire       [2:0]    tx4_0;
  wire       [2:0]    tx5_0;
  wire       [2:0]    tx6_0;
  wire       [2:0]    tx7_0;
  wire       [2:0]    tx8_0;
  wire       [2:0]    tx9_0;
  wire       [2:0]    tx10_0;
  wire       [2:0]    tx1_1;
  wire       [2:0]    tx2_1;
  wire       [2:0]    tx3_1;
  wire       [2:0]    tx4_1;
  wire       [2:0]    tx5_1;
  wire       [2:0]    tx6_1;
  wire       [2:0]    tx7_1;
  wire       [2:0]    tx8_1;
  wire       [2:0]    tx9_1;
  wire       [2:0]    tx10_1;

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
  assign port_o_0_7 = (~ tx4_0);
  assign port_o_0_6 = (~ tx1_0);
  assign port_o_0_5 = (~ tx3_0);
  assign port_o_0_4 = (~ tx5_0);
  assign port_o_0_3 = (~ (tx2_0 ^ tx5_0));
  assign port_o_0_2 = (~ (tx3_0 ^ tx8_0));
  assign port_o_0_1 = (~ tx7_0);
  assign port_o_0_0 = (~ tx9_0);
  assign tx1_1 = (port_i_1_7 ^ port_i_1_3);
  assign tx2_1 = (port_i_1_6 ^ port_i_1_4);
  assign tx3_1 = (port_i_1_6 ^ port_i_1_0);
  assign tx4_1 = (port_i_1_5 ^ port_i_1_3);
  assign tx5_1 = (port_i_1_5 ^ tx1_1);
  assign tx6_1 = (port_i_1_5 ^ port_i_1_1);
  assign tx7_1 = (port_i_1_4 ^ tx6_1);
  assign tx8_1 = (port_i_1_2 ^ tx4_1);
  assign tx9_1 = (port_i_1_1 ^ tx2_1);
  assign tx10_1 = (tx3_1 ^ tx5_1);
  assign port_o_1_7 = tx4_1;
  assign port_o_1_6 = tx1_1;
  assign port_o_1_5 = tx3_1;
  assign port_o_1_4 = tx5_1;
  assign port_o_1_3 = (tx2_1 ^ tx5_1);
  assign port_o_1_2 = (tx3_1 ^ tx8_1);
  assign port_o_1_1 = tx7_1;
  assign port_o_1_0 = tx9_1;

endmodule

module CMS_stage5 (
  input      [2:0]    port_a_0_0,
  input      [2:0]    port_a_0_1,
  input      [2:0]    port_a_0_2,
  input      [2:0]    port_a_0_3,
  input      [2:0]    port_a_1_0,
  input      [2:0]    port_a_1_1,
  input      [2:0]    port_a_1_2,
  input      [2:0]    port_a_1_3,
  input      [2:0]    port_b_0_0,
  input      [2:0]    port_b_0_1,
  input      [2:0]    port_b_0_2,
  input      [2:0]    port_b_0_3,
  input      [2:0]    port_b_1_0,
  input      [2:0]    port_b_1_1,
  input      [2:0]    port_b_1_2,
  input      [2:0]    port_b_1_3,
  input      [2:0]    port_c_0_0,
  input      [2:0]    port_c_0_1,
  input      [2:0]    port_c_0_2,
  input      [2:0]    port_c_0_3,
  input      [2:0]    port_c_1_0,
  input      [2:0]    port_c_1_1,
  input      [2:0]    port_c_1_2,
  input      [2:0]    port_c_1_3,
  input               port_r_0_0,
  input               port_r_0_1,
  input               port_r_0_2,
  input               port_r_0_3,
  input               port_r_0_4,
  input               port_r_0_5,
  input               port_r_0_6,
  input               port_r_0_7,
  input               port_r_1_0,
  input               port_r_1_1,
  input               port_r_1_2,
  input               port_r_1_3,
  input               port_r_1_4,
  input               port_r_1_5,
  input               port_r_1_6,
  input               port_r_1_7,
  input               port_r_2_0,
  input               port_r_2_1,
  input               port_r_2_2,
  input               port_r_2_3,
  input               port_r_2_4,
  input               port_r_2_5,
  input               port_r_2_6,
  input               port_r_2_7,
  input               port_r_3_0,
  input               port_r_3_1,
  input               port_r_3_2,
  input               port_r_3_3,
  input               port_r_3_4,
  input               port_r_3_5,
  input               port_r_3_6,
  input               port_r_3_7,
  output     [2:0]    port_y_0_0,
  output     [2:0]    port_y_0_1,
  output     [2:0]    port_y_0_2,
  output     [2:0]    port_y_0_3,
  output     [2:0]    port_y_0_4,
  output     [2:0]    port_y_0_5,
  output     [2:0]    port_y_0_6,
  output     [2:0]    port_y_0_7,
  output     [2:0]    port_y_1_0,
  output     [2:0]    port_y_1_1,
  output     [2:0]    port_y_1_2,
  output     [2:0]    port_y_1_3,
  output     [2:0]    port_y_1_4,
  output     [2:0]    port_y_1_5,
  output     [2:0]    port_y_1_6,
  output     [2:0]    port_y_1_7,
  output     [2:0]    port_y_2_0,
  output     [2:0]    port_y_2_1,
  output     [2:0]    port_y_2_2,
  output     [2:0]    port_y_2_3,
  output     [2:0]    port_y_2_4,
  output     [2:0]    port_y_2_5,
  output     [2:0]    port_y_2_6,
  output     [2:0]    port_y_2_7,
  output     [2:0]    port_y_3_0,
  output     [2:0]    port_y_3_1,
  output     [2:0]    port_y_3_2,
  output     [2:0]    port_y_3_3,
  output     [2:0]    port_y_3_4,
  output     [2:0]    port_y_3_5,
  output     [2:0]    port_y_3_6,
  output     [2:0]    port_y_3_7,
  input               clk,
  input               reset
);

  wire       [2:0]    gF_MULS_4_12_port_o_0;
  wire       [2:0]    gF_MULS_4_12_port_o_1;
  wire       [2:0]    gF_MULS_4_12_port_o_2;
  wire       [2:0]    gF_MULS_4_12_port_o_3;
  wire       [2:0]    gF_MULS_4_13_port_o_0;
  wire       [2:0]    gF_MULS_4_13_port_o_1;
  wire       [2:0]    gF_MULS_4_13_port_o_2;
  wire       [2:0]    gF_MULS_4_13_port_o_3;
  wire       [2:0]    gF_MULS_4_14_port_o_0;
  wire       [2:0]    gF_MULS_4_14_port_o_1;
  wire       [2:0]    gF_MULS_4_14_port_o_2;
  wire       [2:0]    gF_MULS_4_14_port_o_3;
  wire       [2:0]    gF_MULS_4_15_port_o_0;
  wire       [2:0]    gF_MULS_4_15_port_o_1;
  wire       [2:0]    gF_MULS_4_15_port_o_2;
  wire       [2:0]    gF_MULS_4_15_port_o_3;
  wire       [2:0]    gF_MULS_4_16_port_o_0;
  wire       [2:0]    gF_MULS_4_16_port_o_1;
  wire       [2:0]    gF_MULS_4_16_port_o_2;
  wire       [2:0]    gF_MULS_4_16_port_o_3;
  wire       [2:0]    gF_MULS_4_17_port_o_0;
  wire       [2:0]    gF_MULS_4_17_port_o_1;
  wire       [2:0]    gF_MULS_4_17_port_o_2;
  wire       [2:0]    gF_MULS_4_17_port_o_3;
  wire       [2:0]    gF_MULS_4_18_port_o_0;
  wire       [2:0]    gF_MULS_4_18_port_o_1;
  wire       [2:0]    gF_MULS_4_18_port_o_2;
  wire       [2:0]    gF_MULS_4_18_port_o_3;
  wire       [2:0]    gF_MULS_4_19_port_o_0;
  wire       [2:0]    gF_MULS_4_19_port_o_1;
  wire       [2:0]    gF_MULS_4_19_port_o_2;
  wire       [2:0]    gF_MULS_4_19_port_o_3;
  wire                majority_264_port_o;
  wire                majority_265_port_o;
  wire                majority_266_port_o;
  wire                majority_267_port_o;
  wire                majority_268_port_o;
  wire                majority_269_port_o;
  wire                majority_270_port_o;
  wire                majority_271_port_o;
  wire                majority_272_port_o;
  wire                majority_273_port_o;
  wire                majority_274_port_o;
  wire                majority_275_port_o;
  wire                majority_276_port_o;
  wire                majority_277_port_o;
  wire                majority_278_port_o;
  wire                majority_279_port_o;
  wire                majority_280_port_o;
  wire                majority_281_port_o;
  wire                majority_282_port_o;
  wire                majority_283_port_o;
  wire                majority_284_port_o;
  wire                majority_285_port_o;
  wire                majority_286_port_o;
  wire                majority_287_port_o;
  wire                majority_288_port_o;
  wire                majority_289_port_o;
  wire                majority_290_port_o;
  wire                majority_291_port_o;
  wire                majority_292_port_o;
  wire                majority_293_port_o;
  wire                majority_294_port_o;
  wire                majority_295_port_o;
  wire                majority_296_port_o;
  wire                majority_297_port_o;
  wire                majority_298_port_o;
  wire                majority_299_port_o;
  wire                majority_300_port_o;
  wire                majority_301_port_o;
  wire                majority_302_port_o;
  wire                majority_303_port_o;
  wire                majority_304_port_o;
  wire                majority_305_port_o;
  wire                majority_306_port_o;
  wire                majority_307_port_o;
  wire                majority_308_port_o;
  wire                majority_309_port_o;
  wire                majority_310_port_o;
  wire                majority_311_port_o;
  wire                majority_312_port_o;
  wire                majority_313_port_o;
  wire                majority_314_port_o;
  wire                majority_315_port_o;
  wire                majority_316_port_o;
  wire                majority_317_port_o;
  wire                majority_318_port_o;
  wire                majority_319_port_o;
  wire                majority_320_port_o;
  wire                majority_321_port_o;
  wire                majority_322_port_o;
  wire                majority_323_port_o;
  wire                majority_324_port_o;
  wire                majority_325_port_o;
  wire                majority_326_port_o;
  wire                majority_327_port_o;
  wire                majority_328_port_o;
  wire                majority_329_port_o;
  wire                majority_330_port_o;
  wire                majority_331_port_o;
  wire                majority_332_port_o;
  wire                majority_333_port_o;
  wire                majority_334_port_o;
  wire                majority_335_port_o;
  wire                majority_336_port_o;
  wire                majority_337_port_o;
  wire                majority_338_port_o;
  wire                majority_339_port_o;
  wire                majority_340_port_o;
  wire                majority_341_port_o;
  wire                majority_342_port_o;
  wire                majority_343_port_o;
  wire                majority_344_port_o;
  wire                majority_345_port_o;
  wire                majority_346_port_o;
  wire                majority_347_port_o;
  wire                majority_348_port_o;
  wire                majority_349_port_o;
  wire                majority_350_port_o;
  wire                majority_351_port_o;
  wire                majority_352_port_o;
  wire                majority_353_port_o;
  wire                majority_354_port_o;
  wire                majority_355_port_o;
  wire                majority_356_port_o;
  wire                majority_357_port_o;
  wire                majority_358_port_o;
  wire                majority_359_port_o;
  reg        [2:0]    outReg_0_0;
  reg        [2:0]    outReg_0_1;
  reg        [2:0]    outReg_0_2;
  reg        [2:0]    outReg_0_3;
  reg        [2:0]    outReg_0_4;
  reg        [2:0]    outReg_0_5;
  reg        [2:0]    outReg_0_6;
  reg        [2:0]    outReg_0_7;
  reg        [2:0]    outReg_1_0;
  reg        [2:0]    outReg_1_1;
  reg        [2:0]    outReg_1_2;
  reg        [2:0]    outReg_1_3;
  reg        [2:0]    outReg_1_4;
  reg        [2:0]    outReg_1_5;
  reg        [2:0]    outReg_1_6;
  reg        [2:0]    outReg_1_7;
  reg        [2:0]    outReg_2_0;
  reg        [2:0]    outReg_2_1;
  reg        [2:0]    outReg_2_2;
  reg        [2:0]    outReg_2_3;
  reg        [2:0]    outReg_2_4;
  reg        [2:0]    outReg_2_5;
  reg        [2:0]    outReg_2_6;
  reg        [2:0]    outReg_2_7;
  reg        [2:0]    outReg_3_0;
  reg        [2:0]    outReg_3_1;
  reg        [2:0]    outReg_3_2;
  reg        [2:0]    outReg_3_3;
  reg        [2:0]    outReg_3_4;
  reg        [2:0]    outReg_3_5;
  reg        [2:0]    outReg_3_6;
  reg        [2:0]    outReg_3_7;
  wire       [2:0]    outVal_0_0;
  wire       [2:0]    outVal_0_1;
  wire       [2:0]    outVal_0_2;
  wire       [2:0]    outVal_0_3;
  wire       [2:0]    outVal_0_4;
  wire       [2:0]    outVal_0_5;
  wire       [2:0]    outVal_0_6;
  wire       [2:0]    outVal_0_7;
  wire       [2:0]    outVal_1_0;
  wire       [2:0]    outVal_1_1;
  wire       [2:0]    outVal_1_2;
  wire       [2:0]    outVal_1_3;
  wire       [2:0]    outVal_1_4;
  wire       [2:0]    outVal_1_5;
  wire       [2:0]    outVal_1_6;
  wire       [2:0]    outVal_1_7;
  wire       [2:0]    outVal_2_0;
  wire       [2:0]    outVal_2_1;
  wire       [2:0]    outVal_2_2;
  wire       [2:0]    outVal_2_3;
  wire       [2:0]    outVal_2_4;
  wire       [2:0]    outVal_2_5;
  wire       [2:0]    outVal_2_6;
  wire       [2:0]    outVal_2_7;
  wire       [2:0]    outVal_3_0;
  wire       [2:0]    outVal_3_1;
  wire       [2:0]    outVal_3_2;
  wire       [2:0]    outVal_3_3;
  wire       [2:0]    outVal_3_4;
  wire       [2:0]    outVal_3_5;
  wire       [2:0]    outVal_3_6;
  wire       [2:0]    outVal_3_7;
  reg        [2:0]    refVal_0_0;
  reg        [2:0]    refVal_0_1;
  reg        [2:0]    refVal_0_2;
  reg        [2:0]    refVal_0_3;
  reg        [2:0]    refVal_0_4;
  reg        [2:0]    refVal_0_5;
  reg        [2:0]    refVal_0_6;
  reg        [2:0]    refVal_0_7;
  reg        [2:0]    refVal_1_0;
  reg        [2:0]    refVal_1_1;
  reg        [2:0]    refVal_1_2;
  reg        [2:0]    refVal_1_3;
  reg        [2:0]    refVal_1_4;
  reg        [2:0]    refVal_1_5;
  reg        [2:0]    refVal_1_6;
  reg        [2:0]    refVal_1_7;
  reg        [2:0]    refVal_2_0;
  reg        [2:0]    refVal_2_1;
  reg        [2:0]    refVal_2_2;
  reg        [2:0]    refVal_2_3;
  reg        [2:0]    refVal_2_4;
  reg        [2:0]    refVal_2_5;
  reg        [2:0]    refVal_2_6;
  reg        [2:0]    refVal_2_7;
  reg        [2:0]    refVal_3_0;
  reg        [2:0]    refVal_3_1;
  reg        [2:0]    refVal_3_2;
  reg        [2:0]    refVal_3_3;
  reg        [2:0]    refVal_3_4;
  reg        [2:0]    refVal_3_5;
  reg        [2:0]    refVal_3_6;
  reg        [2:0]    refVal_3_7;
  wire       [2:0]    sax_0_0;
  wire       [2:0]    sax_0_1;
  wire       [2:0]    sax_1_0;
  wire       [2:0]    sax_1_1;
  wire       [2:0]    sbx_0_0;
  wire       [2:0]    sbx_0_1;
  wire       [2:0]    sbx_1_0;
  wire       [2:0]    sbx_1_1;
  wire       [2:0]    scx_0_0;
  wire       [2:0]    scx_0_1;
  wire       [2:0]    scx_1_0;
  wire       [2:0]    scx_1_1;
  wire       [2:0]    al_0;
  wire       [2:0]    al_1;
  wire       [2:0]    ah_0;
  wire       [2:0]    ah_1;
  wire       [2:0]    aa_0;
  wire       [2:0]    aa_1;
  wire       [2:0]    bl_0;
  wire       [2:0]    bl_1;
  wire       [2:0]    bh_0;
  wire       [2:0]    bh_1;
  wire       [2:0]    bb_0;
  wire       [2:0]    bb_1;
  wire       [2:0]    cl_0;
  wire       [2:0]    cl_1;
  wire       [2:0]    ch_0;
  wire       [2:0]    ch_1;
  wire       [2:0]    cc_0;
  wire       [2:0]    cc_1;

  GF_MULS_4 gF_MULS_4_12 (
    .port_A_0   (port_b_0_0[2:0]           ), //i
    .port_A_1   (port_b_0_1[2:0]           ), //i
    .port_A_2   (port_b_0_2[2:0]           ), //i
    .port_A_3   (port_b_0_3[2:0]           ), //i
    .port_a_0_1 (sbx_0_0[2:0]              ), //i
    .port_a_1_1 (sbx_0_1[2:0]              ), //i
    .port_Al    (bl_0[2:0]                 ), //i
    .port_Ah    (bh_0[2:0]                 ), //i
    .port_aa    (bb_0[2:0]                 ), //i
    .port_B_0   (port_a_0_0[2:0]           ), //i
    .port_B_1   (port_a_0_1[2:0]           ), //i
    .port_B_2   (port_a_0_2[2:0]           ), //i
    .port_B_3   (port_a_0_3[2:0]           ), //i
    .port_b_0_1 (sax_0_0[2:0]              ), //i
    .port_b_1_1 (sax_0_1[2:0]              ), //i
    .port_Bl    (al_0[2:0]                 ), //i
    .port_Bh    (ah_0[2:0]                 ), //i
    .port_bb    (aa_0[2:0]                 ), //i
    .port_o_0   (gF_MULS_4_12_port_o_0[2:0]), //o
    .port_o_1   (gF_MULS_4_12_port_o_1[2:0]), //o
    .port_o_2   (gF_MULS_4_12_port_o_2[2:0]), //o
    .port_o_3   (gF_MULS_4_12_port_o_3[2:0])  //o
  );
  GF_MULS_4 gF_MULS_4_13 (
    .port_A_0   (port_b_0_0[2:0]           ), //i
    .port_A_1   (port_b_0_1[2:0]           ), //i
    .port_A_2   (port_b_0_2[2:0]           ), //i
    .port_A_3   (port_b_0_3[2:0]           ), //i
    .port_a_0_1 (sbx_0_0[2:0]              ), //i
    .port_a_1_1 (sbx_0_1[2:0]              ), //i
    .port_Al    (bl_0[2:0]                 ), //i
    .port_Ah    (bh_0[2:0]                 ), //i
    .port_aa    (bb_0[2:0]                 ), //i
    .port_B_0   (port_c_0_0[2:0]           ), //i
    .port_B_1   (port_c_0_1[2:0]           ), //i
    .port_B_2   (port_c_0_2[2:0]           ), //i
    .port_B_3   (port_c_0_3[2:0]           ), //i
    .port_b_0_1 (scx_0_0[2:0]              ), //i
    .port_b_1_1 (scx_0_1[2:0]              ), //i
    .port_Bl    (cl_0[2:0]                 ), //i
    .port_Bh    (ch_0[2:0]                 ), //i
    .port_bb    (cc_0[2:0]                 ), //i
    .port_o_0   (gF_MULS_4_13_port_o_0[2:0]), //o
    .port_o_1   (gF_MULS_4_13_port_o_1[2:0]), //o
    .port_o_2   (gF_MULS_4_13_port_o_2[2:0]), //o
    .port_o_3   (gF_MULS_4_13_port_o_3[2:0])  //o
  );
  GF_MULS_4 gF_MULS_4_14 (
    .port_A_0   (port_b_0_0[2:0]           ), //i
    .port_A_1   (port_b_0_1[2:0]           ), //i
    .port_A_2   (port_b_0_2[2:0]           ), //i
    .port_A_3   (port_b_0_3[2:0]           ), //i
    .port_a_0_1 (sbx_0_0[2:0]              ), //i
    .port_a_1_1 (sbx_0_1[2:0]              ), //i
    .port_Al    (bl_0[2:0]                 ), //i
    .port_Ah    (bh_0[2:0]                 ), //i
    .port_aa    (bb_0[2:0]                 ), //i
    .port_B_0   (port_a_1_0[2:0]           ), //i
    .port_B_1   (port_a_1_1[2:0]           ), //i
    .port_B_2   (port_a_1_2[2:0]           ), //i
    .port_B_3   (port_a_1_3[2:0]           ), //i
    .port_b_0_1 (sax_1_0[2:0]              ), //i
    .port_b_1_1 (sax_1_1[2:0]              ), //i
    .port_Bl    (al_1[2:0]                 ), //i
    .port_Bh    (ah_1[2:0]                 ), //i
    .port_bb    (aa_1[2:0]                 ), //i
    .port_o_0   (gF_MULS_4_14_port_o_0[2:0]), //o
    .port_o_1   (gF_MULS_4_14_port_o_1[2:0]), //o
    .port_o_2   (gF_MULS_4_14_port_o_2[2:0]), //o
    .port_o_3   (gF_MULS_4_14_port_o_3[2:0])  //o
  );
  GF_MULS_4 gF_MULS_4_15 (
    .port_A_0   (port_b_0_0[2:0]           ), //i
    .port_A_1   (port_b_0_1[2:0]           ), //i
    .port_A_2   (port_b_0_2[2:0]           ), //i
    .port_A_3   (port_b_0_3[2:0]           ), //i
    .port_a_0_1 (sbx_0_0[2:0]              ), //i
    .port_a_1_1 (sbx_0_1[2:0]              ), //i
    .port_Al    (bl_0[2:0]                 ), //i
    .port_Ah    (bh_0[2:0]                 ), //i
    .port_aa    (bb_0[2:0]                 ), //i
    .port_B_0   (port_c_1_0[2:0]           ), //i
    .port_B_1   (port_c_1_1[2:0]           ), //i
    .port_B_2   (port_c_1_2[2:0]           ), //i
    .port_B_3   (port_c_1_3[2:0]           ), //i
    .port_b_0_1 (scx_1_0[2:0]              ), //i
    .port_b_1_1 (scx_1_1[2:0]              ), //i
    .port_Bl    (cl_1[2:0]                 ), //i
    .port_Bh    (ch_1[2:0]                 ), //i
    .port_bb    (cc_1[2:0]                 ), //i
    .port_o_0   (gF_MULS_4_15_port_o_0[2:0]), //o
    .port_o_1   (gF_MULS_4_15_port_o_1[2:0]), //o
    .port_o_2   (gF_MULS_4_15_port_o_2[2:0]), //o
    .port_o_3   (gF_MULS_4_15_port_o_3[2:0])  //o
  );
  GF_MULS_4 gF_MULS_4_16 (
    .port_A_0   (port_b_1_0[2:0]           ), //i
    .port_A_1   (port_b_1_1[2:0]           ), //i
    .port_A_2   (port_b_1_2[2:0]           ), //i
    .port_A_3   (port_b_1_3[2:0]           ), //i
    .port_a_0_1 (sbx_1_0[2:0]              ), //i
    .port_a_1_1 (sbx_1_1[2:0]              ), //i
    .port_Al    (bl_1[2:0]                 ), //i
    .port_Ah    (bh_1[2:0]                 ), //i
    .port_aa    (bb_1[2:0]                 ), //i
    .port_B_0   (port_a_0_0[2:0]           ), //i
    .port_B_1   (port_a_0_1[2:0]           ), //i
    .port_B_2   (port_a_0_2[2:0]           ), //i
    .port_B_3   (port_a_0_3[2:0]           ), //i
    .port_b_0_1 (sax_0_0[2:0]              ), //i
    .port_b_1_1 (sax_0_1[2:0]              ), //i
    .port_Bl    (al_0[2:0]                 ), //i
    .port_Bh    (ah_0[2:0]                 ), //i
    .port_bb    (aa_0[2:0]                 ), //i
    .port_o_0   (gF_MULS_4_16_port_o_0[2:0]), //o
    .port_o_1   (gF_MULS_4_16_port_o_1[2:0]), //o
    .port_o_2   (gF_MULS_4_16_port_o_2[2:0]), //o
    .port_o_3   (gF_MULS_4_16_port_o_3[2:0])  //o
  );
  GF_MULS_4 gF_MULS_4_17 (
    .port_A_0   (port_b_1_0[2:0]           ), //i
    .port_A_1   (port_b_1_1[2:0]           ), //i
    .port_A_2   (port_b_1_2[2:0]           ), //i
    .port_A_3   (port_b_1_3[2:0]           ), //i
    .port_a_0_1 (sbx_1_0[2:0]              ), //i
    .port_a_1_1 (sbx_1_1[2:0]              ), //i
    .port_Al    (bl_1[2:0]                 ), //i
    .port_Ah    (bh_1[2:0]                 ), //i
    .port_aa    (bb_1[2:0]                 ), //i
    .port_B_0   (port_c_0_0[2:0]           ), //i
    .port_B_1   (port_c_0_1[2:0]           ), //i
    .port_B_2   (port_c_0_2[2:0]           ), //i
    .port_B_3   (port_c_0_3[2:0]           ), //i
    .port_b_0_1 (scx_0_0[2:0]              ), //i
    .port_b_1_1 (scx_0_1[2:0]              ), //i
    .port_Bl    (cl_0[2:0]                 ), //i
    .port_Bh    (ch_0[2:0]                 ), //i
    .port_bb    (cc_0[2:0]                 ), //i
    .port_o_0   (gF_MULS_4_17_port_o_0[2:0]), //o
    .port_o_1   (gF_MULS_4_17_port_o_1[2:0]), //o
    .port_o_2   (gF_MULS_4_17_port_o_2[2:0]), //o
    .port_o_3   (gF_MULS_4_17_port_o_3[2:0])  //o
  );
  GF_MULS_4 gF_MULS_4_18 (
    .port_A_0   (port_b_1_0[2:0]           ), //i
    .port_A_1   (port_b_1_1[2:0]           ), //i
    .port_A_2   (port_b_1_2[2:0]           ), //i
    .port_A_3   (port_b_1_3[2:0]           ), //i
    .port_a_0_1 (sbx_1_0[2:0]              ), //i
    .port_a_1_1 (sbx_1_1[2:0]              ), //i
    .port_Al    (bl_1[2:0]                 ), //i
    .port_Ah    (bh_1[2:0]                 ), //i
    .port_aa    (bb_1[2:0]                 ), //i
    .port_B_0   (port_a_1_0[2:0]           ), //i
    .port_B_1   (port_a_1_1[2:0]           ), //i
    .port_B_2   (port_a_1_2[2:0]           ), //i
    .port_B_3   (port_a_1_3[2:0]           ), //i
    .port_b_0_1 (sax_1_0[2:0]              ), //i
    .port_b_1_1 (sax_1_1[2:0]              ), //i
    .port_Bl    (al_1[2:0]                 ), //i
    .port_Bh    (ah_1[2:0]                 ), //i
    .port_bb    (aa_1[2:0]                 ), //i
    .port_o_0   (gF_MULS_4_18_port_o_0[2:0]), //o
    .port_o_1   (gF_MULS_4_18_port_o_1[2:0]), //o
    .port_o_2   (gF_MULS_4_18_port_o_2[2:0]), //o
    .port_o_3   (gF_MULS_4_18_port_o_3[2:0])  //o
  );
  GF_MULS_4 gF_MULS_4_19 (
    .port_A_0   (port_b_1_0[2:0]           ), //i
    .port_A_1   (port_b_1_1[2:0]           ), //i
    .port_A_2   (port_b_1_2[2:0]           ), //i
    .port_A_3   (port_b_1_3[2:0]           ), //i
    .port_a_0_1 (sbx_1_0[2:0]              ), //i
    .port_a_1_1 (sbx_1_1[2:0]              ), //i
    .port_Al    (bl_1[2:0]                 ), //i
    .port_Ah    (bh_1[2:0]                 ), //i
    .port_aa    (bb_1[2:0]                 ), //i
    .port_B_0   (port_c_1_0[2:0]           ), //i
    .port_B_1   (port_c_1_1[2:0]           ), //i
    .port_B_2   (port_c_1_2[2:0]           ), //i
    .port_B_3   (port_c_1_3[2:0]           ), //i
    .port_b_0_1 (scx_1_0[2:0]              ), //i
    .port_b_1_1 (scx_1_1[2:0]              ), //i
    .port_Bl    (cl_1[2:0]                 ), //i
    .port_Bh    (ch_1[2:0]                 ), //i
    .port_bb    (cc_1[2:0]                 ), //i
    .port_o_0   (gF_MULS_4_19_port_o_0[2:0]), //o
    .port_o_1   (gF_MULS_4_19_port_o_1[2:0]), //o
    .port_o_2   (gF_MULS_4_19_port_o_2[2:0]), //o
    .port_o_3   (gF_MULS_4_19_port_o_3[2:0])  //o
  );
  Majority majority_264 (
    .port_i (refVal_0_0[2:0]    ), //i
    .port_o (majority_264_port_o)  //o
  );
  Majority majority_265 (
    .port_i (refVal_0_1[2:0]    ), //i
    .port_o (majority_265_port_o)  //o
  );
  Majority majority_266 (
    .port_i (refVal_0_2[2:0]    ), //i
    .port_o (majority_266_port_o)  //o
  );
  Majority majority_267 (
    .port_i (refVal_0_3[2:0]    ), //i
    .port_o (majority_267_port_o)  //o
  );
  Majority majority_268 (
    .port_i (refVal_0_4[2:0]    ), //i
    .port_o (majority_268_port_o)  //o
  );
  Majority majority_269 (
    .port_i (refVal_0_5[2:0]    ), //i
    .port_o (majority_269_port_o)  //o
  );
  Majority majority_270 (
    .port_i (refVal_0_6[2:0]    ), //i
    .port_o (majority_270_port_o)  //o
  );
  Majority majority_271 (
    .port_i (refVal_0_7[2:0]    ), //i
    .port_o (majority_271_port_o)  //o
  );
  Majority majority_272 (
    .port_i (refVal_1_0[2:0]    ), //i
    .port_o (majority_272_port_o)  //o
  );
  Majority majority_273 (
    .port_i (refVal_1_1[2:0]    ), //i
    .port_o (majority_273_port_o)  //o
  );
  Majority majority_274 (
    .port_i (refVal_1_2[2:0]    ), //i
    .port_o (majority_274_port_o)  //o
  );
  Majority majority_275 (
    .port_i (refVal_1_3[2:0]    ), //i
    .port_o (majority_275_port_o)  //o
  );
  Majority majority_276 (
    .port_i (refVal_1_4[2:0]    ), //i
    .port_o (majority_276_port_o)  //o
  );
  Majority majority_277 (
    .port_i (refVal_1_5[2:0]    ), //i
    .port_o (majority_277_port_o)  //o
  );
  Majority majority_278 (
    .port_i (refVal_1_6[2:0]    ), //i
    .port_o (majority_278_port_o)  //o
  );
  Majority majority_279 (
    .port_i (refVal_1_7[2:0]    ), //i
    .port_o (majority_279_port_o)  //o
  );
  Majority majority_280 (
    .port_i (refVal_2_0[2:0]    ), //i
    .port_o (majority_280_port_o)  //o
  );
  Majority majority_281 (
    .port_i (refVal_2_1[2:0]    ), //i
    .port_o (majority_281_port_o)  //o
  );
  Majority majority_282 (
    .port_i (refVal_2_2[2:0]    ), //i
    .port_o (majority_282_port_o)  //o
  );
  Majority majority_283 (
    .port_i (refVal_2_3[2:0]    ), //i
    .port_o (majority_283_port_o)  //o
  );
  Majority majority_284 (
    .port_i (refVal_2_4[2:0]    ), //i
    .port_o (majority_284_port_o)  //o
  );
  Majority majority_285 (
    .port_i (refVal_2_5[2:0]    ), //i
    .port_o (majority_285_port_o)  //o
  );
  Majority majority_286 (
    .port_i (refVal_2_6[2:0]    ), //i
    .port_o (majority_286_port_o)  //o
  );
  Majority majority_287 (
    .port_i (refVal_2_7[2:0]    ), //i
    .port_o (majority_287_port_o)  //o
  );
  Majority majority_288 (
    .port_i (refVal_3_0[2:0]    ), //i
    .port_o (majority_288_port_o)  //o
  );
  Majority majority_289 (
    .port_i (refVal_3_1[2:0]    ), //i
    .port_o (majority_289_port_o)  //o
  );
  Majority majority_290 (
    .port_i (refVal_3_2[2:0]    ), //i
    .port_o (majority_290_port_o)  //o
  );
  Majority majority_291 (
    .port_i (refVal_3_3[2:0]    ), //i
    .port_o (majority_291_port_o)  //o
  );
  Majority majority_292 (
    .port_i (refVal_3_4[2:0]    ), //i
    .port_o (majority_292_port_o)  //o
  );
  Majority majority_293 (
    .port_i (refVal_3_5[2:0]    ), //i
    .port_o (majority_293_port_o)  //o
  );
  Majority majority_294 (
    .port_i (refVal_3_6[2:0]    ), //i
    .port_o (majority_294_port_o)  //o
  );
  Majority majority_295 (
    .port_i (refVal_3_7[2:0]    ), //i
    .port_o (majority_295_port_o)  //o
  );
  Majority majority_296 (
    .port_i (refVal_0_0[2:0]    ), //i
    .port_o (majority_296_port_o)  //o
  );
  Majority majority_297 (
    .port_i (refVal_0_1[2:0]    ), //i
    .port_o (majority_297_port_o)  //o
  );
  Majority majority_298 (
    .port_i (refVal_0_2[2:0]    ), //i
    .port_o (majority_298_port_o)  //o
  );
  Majority majority_299 (
    .port_i (refVal_0_3[2:0]    ), //i
    .port_o (majority_299_port_o)  //o
  );
  Majority majority_300 (
    .port_i (refVal_0_4[2:0]    ), //i
    .port_o (majority_300_port_o)  //o
  );
  Majority majority_301 (
    .port_i (refVal_0_5[2:0]    ), //i
    .port_o (majority_301_port_o)  //o
  );
  Majority majority_302 (
    .port_i (refVal_0_6[2:0]    ), //i
    .port_o (majority_302_port_o)  //o
  );
  Majority majority_303 (
    .port_i (refVal_0_7[2:0]    ), //i
    .port_o (majority_303_port_o)  //o
  );
  Majority majority_304 (
    .port_i (refVal_1_0[2:0]    ), //i
    .port_o (majority_304_port_o)  //o
  );
  Majority majority_305 (
    .port_i (refVal_1_1[2:0]    ), //i
    .port_o (majority_305_port_o)  //o
  );
  Majority majority_306 (
    .port_i (refVal_1_2[2:0]    ), //i
    .port_o (majority_306_port_o)  //o
  );
  Majority majority_307 (
    .port_i (refVal_1_3[2:0]    ), //i
    .port_o (majority_307_port_o)  //o
  );
  Majority majority_308 (
    .port_i (refVal_1_4[2:0]    ), //i
    .port_o (majority_308_port_o)  //o
  );
  Majority majority_309 (
    .port_i (refVal_1_5[2:0]    ), //i
    .port_o (majority_309_port_o)  //o
  );
  Majority majority_310 (
    .port_i (refVal_1_6[2:0]    ), //i
    .port_o (majority_310_port_o)  //o
  );
  Majority majority_311 (
    .port_i (refVal_1_7[2:0]    ), //i
    .port_o (majority_311_port_o)  //o
  );
  Majority majority_312 (
    .port_i (refVal_2_0[2:0]    ), //i
    .port_o (majority_312_port_o)  //o
  );
  Majority majority_313 (
    .port_i (refVal_2_1[2:0]    ), //i
    .port_o (majority_313_port_o)  //o
  );
  Majority majority_314 (
    .port_i (refVal_2_2[2:0]    ), //i
    .port_o (majority_314_port_o)  //o
  );
  Majority majority_315 (
    .port_i (refVal_2_3[2:0]    ), //i
    .port_o (majority_315_port_o)  //o
  );
  Majority majority_316 (
    .port_i (refVal_2_4[2:0]    ), //i
    .port_o (majority_316_port_o)  //o
  );
  Majority majority_317 (
    .port_i (refVal_2_5[2:0]    ), //i
    .port_o (majority_317_port_o)  //o
  );
  Majority majority_318 (
    .port_i (refVal_2_6[2:0]    ), //i
    .port_o (majority_318_port_o)  //o
  );
  Majority majority_319 (
    .port_i (refVal_2_7[2:0]    ), //i
    .port_o (majority_319_port_o)  //o
  );
  Majority majority_320 (
    .port_i (refVal_3_0[2:0]    ), //i
    .port_o (majority_320_port_o)  //o
  );
  Majority majority_321 (
    .port_i (refVal_3_1[2:0]    ), //i
    .port_o (majority_321_port_o)  //o
  );
  Majority majority_322 (
    .port_i (refVal_3_2[2:0]    ), //i
    .port_o (majority_322_port_o)  //o
  );
  Majority majority_323 (
    .port_i (refVal_3_3[2:0]    ), //i
    .port_o (majority_323_port_o)  //o
  );
  Majority majority_324 (
    .port_i (refVal_3_4[2:0]    ), //i
    .port_o (majority_324_port_o)  //o
  );
  Majority majority_325 (
    .port_i (refVal_3_5[2:0]    ), //i
    .port_o (majority_325_port_o)  //o
  );
  Majority majority_326 (
    .port_i (refVal_3_6[2:0]    ), //i
    .port_o (majority_326_port_o)  //o
  );
  Majority majority_327 (
    .port_i (refVal_3_7[2:0]    ), //i
    .port_o (majority_327_port_o)  //o
  );
  Majority majority_328 (
    .port_i (refVal_0_0[2:0]    ), //i
    .port_o (majority_328_port_o)  //o
  );
  Majority majority_329 (
    .port_i (refVal_0_1[2:0]    ), //i
    .port_o (majority_329_port_o)  //o
  );
  Majority majority_330 (
    .port_i (refVal_0_2[2:0]    ), //i
    .port_o (majority_330_port_o)  //o
  );
  Majority majority_331 (
    .port_i (refVal_0_3[2:0]    ), //i
    .port_o (majority_331_port_o)  //o
  );
  Majority majority_332 (
    .port_i (refVal_0_4[2:0]    ), //i
    .port_o (majority_332_port_o)  //o
  );
  Majority majority_333 (
    .port_i (refVal_0_5[2:0]    ), //i
    .port_o (majority_333_port_o)  //o
  );
  Majority majority_334 (
    .port_i (refVal_0_6[2:0]    ), //i
    .port_o (majority_334_port_o)  //o
  );
  Majority majority_335 (
    .port_i (refVal_0_7[2:0]    ), //i
    .port_o (majority_335_port_o)  //o
  );
  Majority majority_336 (
    .port_i (refVal_1_0[2:0]    ), //i
    .port_o (majority_336_port_o)  //o
  );
  Majority majority_337 (
    .port_i (refVal_1_1[2:0]    ), //i
    .port_o (majority_337_port_o)  //o
  );
  Majority majority_338 (
    .port_i (refVal_1_2[2:0]    ), //i
    .port_o (majority_338_port_o)  //o
  );
  Majority majority_339 (
    .port_i (refVal_1_3[2:0]    ), //i
    .port_o (majority_339_port_o)  //o
  );
  Majority majority_340 (
    .port_i (refVal_1_4[2:0]    ), //i
    .port_o (majority_340_port_o)  //o
  );
  Majority majority_341 (
    .port_i (refVal_1_5[2:0]    ), //i
    .port_o (majority_341_port_o)  //o
  );
  Majority majority_342 (
    .port_i (refVal_1_6[2:0]    ), //i
    .port_o (majority_342_port_o)  //o
  );
  Majority majority_343 (
    .port_i (refVal_1_7[2:0]    ), //i
    .port_o (majority_343_port_o)  //o
  );
  Majority majority_344 (
    .port_i (refVal_2_0[2:0]    ), //i
    .port_o (majority_344_port_o)  //o
  );
  Majority majority_345 (
    .port_i (refVal_2_1[2:0]    ), //i
    .port_o (majority_345_port_o)  //o
  );
  Majority majority_346 (
    .port_i (refVal_2_2[2:0]    ), //i
    .port_o (majority_346_port_o)  //o
  );
  Majority majority_347 (
    .port_i (refVal_2_3[2:0]    ), //i
    .port_o (majority_347_port_o)  //o
  );
  Majority majority_348 (
    .port_i (refVal_2_4[2:0]    ), //i
    .port_o (majority_348_port_o)  //o
  );
  Majority majority_349 (
    .port_i (refVal_2_5[2:0]    ), //i
    .port_o (majority_349_port_o)  //o
  );
  Majority majority_350 (
    .port_i (refVal_2_6[2:0]    ), //i
    .port_o (majority_350_port_o)  //o
  );
  Majority majority_351 (
    .port_i (refVal_2_7[2:0]    ), //i
    .port_o (majority_351_port_o)  //o
  );
  Majority majority_352 (
    .port_i (refVal_3_0[2:0]    ), //i
    .port_o (majority_352_port_o)  //o
  );
  Majority majority_353 (
    .port_i (refVal_3_1[2:0]    ), //i
    .port_o (majority_353_port_o)  //o
  );
  Majority majority_354 (
    .port_i (refVal_3_2[2:0]    ), //i
    .port_o (majority_354_port_o)  //o
  );
  Majority majority_355 (
    .port_i (refVal_3_3[2:0]    ), //i
    .port_o (majority_355_port_o)  //o
  );
  Majority majority_356 (
    .port_i (refVal_3_4[2:0]    ), //i
    .port_o (majority_356_port_o)  //o
  );
  Majority majority_357 (
    .port_i (refVal_3_5[2:0]    ), //i
    .port_o (majority_357_port_o)  //o
  );
  Majority majority_358 (
    .port_i (refVal_3_6[2:0]    ), //i
    .port_o (majority_358_port_o)  //o
  );
  Majority majority_359 (
    .port_i (refVal_3_7[2:0]    ), //i
    .port_o (majority_359_port_o)  //o
  );
  assign sax_0_0 = (port_a_0_2 ^ port_a_0_0);
  assign sax_0_1 = (port_a_0_3 ^ port_a_0_1);
  assign al_0 = (port_a_0_1 ^ port_a_0_0);
  assign ah_0 = (port_a_0_3 ^ port_a_0_2);
  assign aa_0 = (sax_0_1 ^ sax_0_0);
  assign sbx_0_0 = (port_b_0_2 ^ port_b_0_0);
  assign sbx_0_1 = (port_b_0_3 ^ port_b_0_1);
  assign bl_0 = (port_b_0_1 ^ port_b_0_0);
  assign bh_0 = (port_b_0_3 ^ port_b_0_2);
  assign bb_0 = (sbx_0_1 ^ sbx_0_0);
  assign scx_0_0 = (port_c_0_2 ^ port_c_0_0);
  assign scx_0_1 = (port_c_0_3 ^ port_c_0_1);
  assign cl_0 = (port_c_0_1 ^ port_c_0_0);
  assign ch_0 = (port_c_0_3 ^ port_c_0_2);
  assign cc_0 = (scx_0_1 ^ scx_0_0);
  assign sax_1_0 = (port_a_1_2 ^ port_a_1_0);
  assign sax_1_1 = (port_a_1_3 ^ port_a_1_1);
  assign al_1 = (port_a_1_1 ^ port_a_1_0);
  assign ah_1 = (port_a_1_3 ^ port_a_1_2);
  assign aa_1 = (sax_1_1 ^ sax_1_0);
  assign sbx_1_0 = (port_b_1_2 ^ port_b_1_0);
  assign sbx_1_1 = (port_b_1_3 ^ port_b_1_1);
  assign bl_1 = (port_b_1_1 ^ port_b_1_0);
  assign bh_1 = (port_b_1_3 ^ port_b_1_2);
  assign bb_1 = (sbx_1_1 ^ sbx_1_0);
  assign scx_1_0 = (port_c_1_2 ^ port_c_1_0);
  assign scx_1_1 = (port_c_1_3 ^ port_c_1_1);
  assign cl_1 = (port_c_1_1 ^ port_c_1_0);
  assign ch_1 = (port_c_1_3 ^ port_c_1_2);
  assign cc_1 = (scx_1_1 ^ scx_1_0);
  assign outVal_0_0 = gF_MULS_4_13_port_o_0;
  assign outVal_0_1 = gF_MULS_4_13_port_o_1;
  assign outVal_0_2 = gF_MULS_4_13_port_o_2;
  assign outVal_0_3 = gF_MULS_4_13_port_o_3;
  assign outVal_0_4 = gF_MULS_4_12_port_o_0;
  assign outVal_0_5 = gF_MULS_4_12_port_o_1;
  assign outVal_0_6 = gF_MULS_4_12_port_o_2;
  assign outVal_0_7 = gF_MULS_4_12_port_o_3;
  assign outVal_2_0 = gF_MULS_4_15_port_o_0;
  assign outVal_2_1 = gF_MULS_4_15_port_o_1;
  assign outVal_2_2 = gF_MULS_4_15_port_o_2;
  assign outVal_2_3 = gF_MULS_4_15_port_o_3;
  assign outVal_2_4 = gF_MULS_4_14_port_o_0;
  assign outVal_2_5 = gF_MULS_4_14_port_o_1;
  assign outVal_2_6 = gF_MULS_4_14_port_o_2;
  assign outVal_2_7 = gF_MULS_4_14_port_o_3;
  assign outVal_1_0 = gF_MULS_4_17_port_o_0;
  assign outVal_1_1 = gF_MULS_4_17_port_o_1;
  assign outVal_1_2 = gF_MULS_4_17_port_o_2;
  assign outVal_1_3 = gF_MULS_4_17_port_o_3;
  assign outVal_1_4 = gF_MULS_4_16_port_o_0;
  assign outVal_1_5 = gF_MULS_4_16_port_o_1;
  assign outVal_1_6 = gF_MULS_4_16_port_o_2;
  assign outVal_1_7 = gF_MULS_4_16_port_o_3;
  assign outVal_3_0 = gF_MULS_4_19_port_o_0;
  assign outVal_3_1 = gF_MULS_4_19_port_o_1;
  assign outVal_3_2 = gF_MULS_4_19_port_o_2;
  assign outVal_3_3 = gF_MULS_4_19_port_o_3;
  assign outVal_3_4 = gF_MULS_4_18_port_o_0;
  assign outVal_3_5 = gF_MULS_4_18_port_o_1;
  assign outVal_3_6 = gF_MULS_4_18_port_o_2;
  assign outVal_3_7 = gF_MULS_4_18_port_o_3;
  always @(*) begin
    refVal_0_0[0] = ((outVal_0_0[0] ^ port_r_0_0) ^ port_r_1_0);
    refVal_0_0[1] = ((outVal_0_0[1] ^ port_r_0_0) ^ port_r_1_0);
    refVal_0_0[2] = ((outVal_0_0[2] ^ port_r_0_0) ^ port_r_1_0);
  end

  always @(*) begin
    refVal_0_1[0] = ((outVal_0_1[0] ^ port_r_0_1) ^ port_r_1_1);
    refVal_0_1[1] = ((outVal_0_1[1] ^ port_r_0_1) ^ port_r_1_1);
    refVal_0_1[2] = ((outVal_0_1[2] ^ port_r_0_1) ^ port_r_1_1);
  end

  always @(*) begin
    refVal_0_2[0] = ((outVal_0_2[0] ^ port_r_0_2) ^ port_r_1_2);
    refVal_0_2[1] = ((outVal_0_2[1] ^ port_r_0_2) ^ port_r_1_2);
    refVal_0_2[2] = ((outVal_0_2[2] ^ port_r_0_2) ^ port_r_1_2);
  end

  always @(*) begin
    refVal_0_3[0] = ((outVal_0_3[0] ^ port_r_0_3) ^ port_r_1_3);
    refVal_0_3[1] = ((outVal_0_3[1] ^ port_r_0_3) ^ port_r_1_3);
    refVal_0_3[2] = ((outVal_0_3[2] ^ port_r_0_3) ^ port_r_1_3);
  end

  always @(*) begin
    refVal_0_4[0] = ((outVal_0_4[0] ^ port_r_0_4) ^ port_r_1_4);
    refVal_0_4[1] = ((outVal_0_4[1] ^ port_r_0_4) ^ port_r_1_4);
    refVal_0_4[2] = ((outVal_0_4[2] ^ port_r_0_4) ^ port_r_1_4);
  end

  always @(*) begin
    refVal_0_5[0] = ((outVal_0_5[0] ^ port_r_0_5) ^ port_r_1_5);
    refVal_0_5[1] = ((outVal_0_5[1] ^ port_r_0_5) ^ port_r_1_5);
    refVal_0_5[2] = ((outVal_0_5[2] ^ port_r_0_5) ^ port_r_1_5);
  end

  always @(*) begin
    refVal_0_6[0] = ((outVal_0_6[0] ^ port_r_0_6) ^ port_r_1_6);
    refVal_0_6[1] = ((outVal_0_6[1] ^ port_r_0_6) ^ port_r_1_6);
    refVal_0_6[2] = ((outVal_0_6[2] ^ port_r_0_6) ^ port_r_1_6);
  end

  always @(*) begin
    refVal_0_7[0] = ((outVal_0_7[0] ^ port_r_0_7) ^ port_r_1_7);
    refVal_0_7[1] = ((outVal_0_7[1] ^ port_r_0_7) ^ port_r_1_7);
    refVal_0_7[2] = ((outVal_0_7[2] ^ port_r_0_7) ^ port_r_1_7);
  end

  always @(*) begin
    refVal_1_0[0] = ((outVal_1_0[0] ^ port_r_1_0) ^ port_r_2_0);
    refVal_1_0[1] = ((outVal_1_0[1] ^ port_r_1_0) ^ port_r_2_0);
    refVal_1_0[2] = ((outVal_1_0[2] ^ port_r_1_0) ^ port_r_2_0);
  end

  always @(*) begin
    refVal_1_1[0] = ((outVal_1_1[0] ^ port_r_1_1) ^ port_r_2_1);
    refVal_1_1[1] = ((outVal_1_1[1] ^ port_r_1_1) ^ port_r_2_1);
    refVal_1_1[2] = ((outVal_1_1[2] ^ port_r_1_1) ^ port_r_2_1);
  end

  always @(*) begin
    refVal_1_2[0] = ((outVal_1_2[0] ^ port_r_1_2) ^ port_r_2_2);
    refVal_1_2[1] = ((outVal_1_2[1] ^ port_r_1_2) ^ port_r_2_2);
    refVal_1_2[2] = ((outVal_1_2[2] ^ port_r_1_2) ^ port_r_2_2);
  end

  always @(*) begin
    refVal_1_3[0] = ((outVal_1_3[0] ^ port_r_1_3) ^ port_r_2_3);
    refVal_1_3[1] = ((outVal_1_3[1] ^ port_r_1_3) ^ port_r_2_3);
    refVal_1_3[2] = ((outVal_1_3[2] ^ port_r_1_3) ^ port_r_2_3);
  end

  always @(*) begin
    refVal_1_4[0] = ((outVal_1_4[0] ^ port_r_1_4) ^ port_r_2_4);
    refVal_1_4[1] = ((outVal_1_4[1] ^ port_r_1_4) ^ port_r_2_4);
    refVal_1_4[2] = ((outVal_1_4[2] ^ port_r_1_4) ^ port_r_2_4);
  end

  always @(*) begin
    refVal_1_5[0] = ((outVal_1_5[0] ^ port_r_1_5) ^ port_r_2_5);
    refVal_1_5[1] = ((outVal_1_5[1] ^ port_r_1_5) ^ port_r_2_5);
    refVal_1_5[2] = ((outVal_1_5[2] ^ port_r_1_5) ^ port_r_2_5);
  end

  always @(*) begin
    refVal_1_6[0] = ((outVal_1_6[0] ^ port_r_1_6) ^ port_r_2_6);
    refVal_1_6[1] = ((outVal_1_6[1] ^ port_r_1_6) ^ port_r_2_6);
    refVal_1_6[2] = ((outVal_1_6[2] ^ port_r_1_6) ^ port_r_2_6);
  end

  always @(*) begin
    refVal_1_7[0] = ((outVal_1_7[0] ^ port_r_1_7) ^ port_r_2_7);
    refVal_1_7[1] = ((outVal_1_7[1] ^ port_r_1_7) ^ port_r_2_7);
    refVal_1_7[2] = ((outVal_1_7[2] ^ port_r_1_7) ^ port_r_2_7);
  end

  always @(*) begin
    refVal_2_0[0] = ((outVal_2_0[0] ^ port_r_2_0) ^ port_r_3_0);
    refVal_2_0[1] = ((outVal_2_0[1] ^ port_r_2_0) ^ port_r_3_0);
    refVal_2_0[2] = ((outVal_2_0[2] ^ port_r_2_0) ^ port_r_3_0);
  end

  always @(*) begin
    refVal_2_1[0] = ((outVal_2_1[0] ^ port_r_2_1) ^ port_r_3_1);
    refVal_2_1[1] = ((outVal_2_1[1] ^ port_r_2_1) ^ port_r_3_1);
    refVal_2_1[2] = ((outVal_2_1[2] ^ port_r_2_1) ^ port_r_3_1);
  end

  always @(*) begin
    refVal_2_2[0] = ((outVal_2_2[0] ^ port_r_2_2) ^ port_r_3_2);
    refVal_2_2[1] = ((outVal_2_2[1] ^ port_r_2_2) ^ port_r_3_2);
    refVal_2_2[2] = ((outVal_2_2[2] ^ port_r_2_2) ^ port_r_3_2);
  end

  always @(*) begin
    refVal_2_3[0] = ((outVal_2_3[0] ^ port_r_2_3) ^ port_r_3_3);
    refVal_2_3[1] = ((outVal_2_3[1] ^ port_r_2_3) ^ port_r_3_3);
    refVal_2_3[2] = ((outVal_2_3[2] ^ port_r_2_3) ^ port_r_3_3);
  end

  always @(*) begin
    refVal_2_4[0] = ((outVal_2_4[0] ^ port_r_2_4) ^ port_r_3_4);
    refVal_2_4[1] = ((outVal_2_4[1] ^ port_r_2_4) ^ port_r_3_4);
    refVal_2_4[2] = ((outVal_2_4[2] ^ port_r_2_4) ^ port_r_3_4);
  end

  always @(*) begin
    refVal_2_5[0] = ((outVal_2_5[0] ^ port_r_2_5) ^ port_r_3_5);
    refVal_2_5[1] = ((outVal_2_5[1] ^ port_r_2_5) ^ port_r_3_5);
    refVal_2_5[2] = ((outVal_2_5[2] ^ port_r_2_5) ^ port_r_3_5);
  end

  always @(*) begin
    refVal_2_6[0] = ((outVal_2_6[0] ^ port_r_2_6) ^ port_r_3_6);
    refVal_2_6[1] = ((outVal_2_6[1] ^ port_r_2_6) ^ port_r_3_6);
    refVal_2_6[2] = ((outVal_2_6[2] ^ port_r_2_6) ^ port_r_3_6);
  end

  always @(*) begin
    refVal_2_7[0] = ((outVal_2_7[0] ^ port_r_2_7) ^ port_r_3_7);
    refVal_2_7[1] = ((outVal_2_7[1] ^ port_r_2_7) ^ port_r_3_7);
    refVal_2_7[2] = ((outVal_2_7[2] ^ port_r_2_7) ^ port_r_3_7);
  end

  always @(*) begin
    refVal_3_0[0] = ((outVal_3_0[0] ^ port_r_3_0) ^ port_r_0_0);
    refVal_3_0[1] = ((outVal_3_0[1] ^ port_r_3_0) ^ port_r_0_0);
    refVal_3_0[2] = ((outVal_3_0[2] ^ port_r_3_0) ^ port_r_0_0);
  end

  always @(*) begin
    refVal_3_1[0] = ((outVal_3_1[0] ^ port_r_3_1) ^ port_r_0_1);
    refVal_3_1[1] = ((outVal_3_1[1] ^ port_r_3_1) ^ port_r_0_1);
    refVal_3_1[2] = ((outVal_3_1[2] ^ port_r_3_1) ^ port_r_0_1);
  end

  always @(*) begin
    refVal_3_2[0] = ((outVal_3_2[0] ^ port_r_3_2) ^ port_r_0_2);
    refVal_3_2[1] = ((outVal_3_2[1] ^ port_r_3_2) ^ port_r_0_2);
    refVal_3_2[2] = ((outVal_3_2[2] ^ port_r_3_2) ^ port_r_0_2);
  end

  always @(*) begin
    refVal_3_3[0] = ((outVal_3_3[0] ^ port_r_3_3) ^ port_r_0_3);
    refVal_3_3[1] = ((outVal_3_3[1] ^ port_r_3_3) ^ port_r_0_3);
    refVal_3_3[2] = ((outVal_3_3[2] ^ port_r_3_3) ^ port_r_0_3);
  end

  always @(*) begin
    refVal_3_4[0] = ((outVal_3_4[0] ^ port_r_3_4) ^ port_r_0_4);
    refVal_3_4[1] = ((outVal_3_4[1] ^ port_r_3_4) ^ port_r_0_4);
    refVal_3_4[2] = ((outVal_3_4[2] ^ port_r_3_4) ^ port_r_0_4);
  end

  always @(*) begin
    refVal_3_5[0] = ((outVal_3_5[0] ^ port_r_3_5) ^ port_r_0_5);
    refVal_3_5[1] = ((outVal_3_5[1] ^ port_r_3_5) ^ port_r_0_5);
    refVal_3_5[2] = ((outVal_3_5[2] ^ port_r_3_5) ^ port_r_0_5);
  end

  always @(*) begin
    refVal_3_6[0] = ((outVal_3_6[0] ^ port_r_3_6) ^ port_r_0_6);
    refVal_3_6[1] = ((outVal_3_6[1] ^ port_r_3_6) ^ port_r_0_6);
    refVal_3_6[2] = ((outVal_3_6[2] ^ port_r_3_6) ^ port_r_0_6);
  end

  always @(*) begin
    refVal_3_7[0] = ((outVal_3_7[0] ^ port_r_3_7) ^ port_r_0_7);
    refVal_3_7[1] = ((outVal_3_7[1] ^ port_r_3_7) ^ port_r_0_7);
    refVal_3_7[2] = ((outVal_3_7[2] ^ port_r_3_7) ^ port_r_0_7);
  end

  assign port_y_0_0 = outReg_0_0;
  assign port_y_0_1 = outReg_0_1;
  assign port_y_0_2 = outReg_0_2;
  assign port_y_0_3 = outReg_0_3;
  assign port_y_0_4 = outReg_0_4;
  assign port_y_0_5 = outReg_0_5;
  assign port_y_0_6 = outReg_0_6;
  assign port_y_0_7 = outReg_0_7;
  assign port_y_1_0 = outReg_1_0;
  assign port_y_1_1 = outReg_1_1;
  assign port_y_1_2 = outReg_1_2;
  assign port_y_1_3 = outReg_1_3;
  assign port_y_1_4 = outReg_1_4;
  assign port_y_1_5 = outReg_1_5;
  assign port_y_1_6 = outReg_1_6;
  assign port_y_1_7 = outReg_1_7;
  assign port_y_2_0 = outReg_2_0;
  assign port_y_2_1 = outReg_2_1;
  assign port_y_2_2 = outReg_2_2;
  assign port_y_2_3 = outReg_2_3;
  assign port_y_2_4 = outReg_2_4;
  assign port_y_2_5 = outReg_2_5;
  assign port_y_2_6 = outReg_2_6;
  assign port_y_2_7 = outReg_2_7;
  assign port_y_3_0 = outReg_3_0;
  assign port_y_3_1 = outReg_3_1;
  assign port_y_3_2 = outReg_3_2;
  assign port_y_3_3 = outReg_3_3;
  assign port_y_3_4 = outReg_3_4;
  assign port_y_3_5 = outReg_3_5;
  assign port_y_3_6 = outReg_3_6;
  assign port_y_3_7 = outReg_3_7;
  always @(posedge clk) begin
    outReg_0_0[0] <= majority_264_port_o;
    outReg_0_1[0] <= majority_265_port_o;
    outReg_0_2[0] <= majority_266_port_o;
    outReg_0_3[0] <= majority_267_port_o;
    outReg_0_4[0] <= majority_268_port_o;
    outReg_0_5[0] <= majority_269_port_o;
    outReg_0_6[0] <= majority_270_port_o;
    outReg_0_7[0] <= majority_271_port_o;
    outReg_1_0[0] <= majority_272_port_o;
    outReg_1_1[0] <= majority_273_port_o;
    outReg_1_2[0] <= majority_274_port_o;
    outReg_1_3[0] <= majority_275_port_o;
    outReg_1_4[0] <= majority_276_port_o;
    outReg_1_5[0] <= majority_277_port_o;
    outReg_1_6[0] <= majority_278_port_o;
    outReg_1_7[0] <= majority_279_port_o;
    outReg_2_0[0] <= majority_280_port_o;
    outReg_2_1[0] <= majority_281_port_o;
    outReg_2_2[0] <= majority_282_port_o;
    outReg_2_3[0] <= majority_283_port_o;
    outReg_2_4[0] <= majority_284_port_o;
    outReg_2_5[0] <= majority_285_port_o;
    outReg_2_6[0] <= majority_286_port_o;
    outReg_2_7[0] <= majority_287_port_o;
    outReg_3_0[0] <= majority_288_port_o;
    outReg_3_1[0] <= majority_289_port_o;
    outReg_3_2[0] <= majority_290_port_o;
    outReg_3_3[0] <= majority_291_port_o;
    outReg_3_4[0] <= majority_292_port_o;
    outReg_3_5[0] <= majority_293_port_o;
    outReg_3_6[0] <= majority_294_port_o;
    outReg_3_7[0] <= majority_295_port_o;
    outReg_0_0[1] <= majority_296_port_o;
    outReg_0_1[1] <= majority_297_port_o;
    outReg_0_2[1] <= majority_298_port_o;
    outReg_0_3[1] <= majority_299_port_o;
    outReg_0_4[1] <= majority_300_port_o;
    outReg_0_5[1] <= majority_301_port_o;
    outReg_0_6[1] <= majority_302_port_o;
    outReg_0_7[1] <= majority_303_port_o;
    outReg_1_0[1] <= majority_304_port_o;
    outReg_1_1[1] <= majority_305_port_o;
    outReg_1_2[1] <= majority_306_port_o;
    outReg_1_3[1] <= majority_307_port_o;
    outReg_1_4[1] <= majority_308_port_o;
    outReg_1_5[1] <= majority_309_port_o;
    outReg_1_6[1] <= majority_310_port_o;
    outReg_1_7[1] <= majority_311_port_o;
    outReg_2_0[1] <= majority_312_port_o;
    outReg_2_1[1] <= majority_313_port_o;
    outReg_2_2[1] <= majority_314_port_o;
    outReg_2_3[1] <= majority_315_port_o;
    outReg_2_4[1] <= majority_316_port_o;
    outReg_2_5[1] <= majority_317_port_o;
    outReg_2_6[1] <= majority_318_port_o;
    outReg_2_7[1] <= majority_319_port_o;
    outReg_3_0[1] <= majority_320_port_o;
    outReg_3_1[1] <= majority_321_port_o;
    outReg_3_2[1] <= majority_322_port_o;
    outReg_3_3[1] <= majority_323_port_o;
    outReg_3_4[1] <= majority_324_port_o;
    outReg_3_5[1] <= majority_325_port_o;
    outReg_3_6[1] <= majority_326_port_o;
    outReg_3_7[1] <= majority_327_port_o;
    outReg_0_0[2] <= majority_328_port_o;
    outReg_0_1[2] <= majority_329_port_o;
    outReg_0_2[2] <= majority_330_port_o;
    outReg_0_3[2] <= majority_331_port_o;
    outReg_0_4[2] <= majority_332_port_o;
    outReg_0_5[2] <= majority_333_port_o;
    outReg_0_6[2] <= majority_334_port_o;
    outReg_0_7[2] <= majority_335_port_o;
    outReg_1_0[2] <= majority_336_port_o;
    outReg_1_1[2] <= majority_337_port_o;
    outReg_1_2[2] <= majority_338_port_o;
    outReg_1_3[2] <= majority_339_port_o;
    outReg_1_4[2] <= majority_340_port_o;
    outReg_1_5[2] <= majority_341_port_o;
    outReg_1_6[2] <= majority_342_port_o;
    outReg_1_7[2] <= majority_343_port_o;
    outReg_2_0[2] <= majority_344_port_o;
    outReg_2_1[2] <= majority_345_port_o;
    outReg_2_2[2] <= majority_346_port_o;
    outReg_2_3[2] <= majority_347_port_o;
    outReg_2_4[2] <= majority_348_port_o;
    outReg_2_5[2] <= majority_349_port_o;
    outReg_2_6[2] <= majority_350_port_o;
    outReg_2_7[2] <= majority_351_port_o;
    outReg_3_0[2] <= majority_352_port_o;
    outReg_3_1[2] <= majority_353_port_o;
    outReg_3_2[2] <= majority_354_port_o;
    outReg_3_3[2] <= majority_355_port_o;
    outReg_3_4[2] <= majority_356_port_o;
    outReg_3_5[2] <= majority_357_port_o;
    outReg_3_6[2] <= majority_358_port_o;
    outReg_3_7[2] <= majority_359_port_o;
  end


endmodule

module CMS_stage4 (
  input      [2:0]    port_a_0_0,
  input      [2:0]    port_a_0_1,
  input      [2:0]    port_a_1_0,
  input      [2:0]    port_a_1_1,
  input      [2:0]    port_b_0_0,
  input      [2:0]    port_b_0_1,
  input      [2:0]    port_b_1_0,
  input      [2:0]    port_b_1_1,
  input      [2:0]    port_c_0_0,
  input      [2:0]    port_c_0_1,
  input      [2:0]    port_c_1_0,
  input      [2:0]    port_c_1_1,
  input               port_r_0_0,
  input               port_r_0_1,
  input               port_r_0_2,
  input               port_r_0_3,
  input               port_r_1_0,
  input               port_r_1_1,
  input               port_r_1_2,
  input               port_r_1_3,
  input               port_r_2_0,
  input               port_r_2_1,
  input               port_r_2_2,
  input               port_r_2_3,
  input               port_r_3_0,
  input               port_r_3_1,
  input               port_r_3_2,
  input               port_r_3_3,
  output     [2:0]    port_y_0_0,
  output     [2:0]    port_y_0_1,
  output     [2:0]    port_y_0_2,
  output     [2:0]    port_y_0_3,
  output     [2:0]    port_y_1_0,
  output     [2:0]    port_y_1_1,
  output     [2:0]    port_y_1_2,
  output     [2:0]    port_y_1_3,
  output     [2:0]    port_y_2_0,
  output     [2:0]    port_y_2_1,
  output     [2:0]    port_y_2_2,
  output     [2:0]    port_y_2_3,
  output     [2:0]    port_y_3_0,
  output     [2:0]    port_y_3_1,
  output     [2:0]    port_y_3_2,
  output     [2:0]    port_y_3_3,
  input               clk,
  input               reset
);

  wire       [2:0]    sq_0_port_o_0;
  wire       [2:0]    sq_0_port_o_1;
  wire       [2:0]    sq_1_port_o_0;
  wire       [2:0]    sq_1_port_o_1;
  wire       [2:0]    gF_MULS_2_36_port_o_0;
  wire       [2:0]    gF_MULS_2_36_port_o_1;
  wire       [2:0]    gF_MULS_2_37_port_o_0;
  wire       [2:0]    gF_MULS_2_37_port_o_1;
  wire       [2:0]    gF_MULS_2_38_port_o_0;
  wire       [2:0]    gF_MULS_2_38_port_o_1;
  wire       [2:0]    gF_MULS_2_39_port_o_0;
  wire       [2:0]    gF_MULS_2_39_port_o_1;
  wire       [2:0]    gF_MULS_2_40_port_o_0;
  wire       [2:0]    gF_MULS_2_40_port_o_1;
  wire       [2:0]    gF_MULS_2_41_port_o_0;
  wire       [2:0]    gF_MULS_2_41_port_o_1;
  wire       [2:0]    gF_MULS_2_42_port_o_0;
  wire       [2:0]    gF_MULS_2_42_port_o_1;
  wire       [2:0]    gF_MULS_2_43_port_o_0;
  wire       [2:0]    gF_MULS_2_43_port_o_1;
  wire                majority_264_port_o;
  wire                majority_265_port_o;
  wire                majority_266_port_o;
  wire                majority_267_port_o;
  wire                majority_268_port_o;
  wire                majority_269_port_o;
  wire                majority_270_port_o;
  wire                majority_271_port_o;
  wire                majority_272_port_o;
  wire                majority_273_port_o;
  wire                majority_274_port_o;
  wire                majority_275_port_o;
  wire                majority_276_port_o;
  wire                majority_277_port_o;
  wire                majority_278_port_o;
  wire                majority_279_port_o;
  wire                majority_280_port_o;
  wire                majority_281_port_o;
  wire                majority_282_port_o;
  wire                majority_283_port_o;
  wire                majority_284_port_o;
  wire                majority_285_port_o;
  wire                majority_286_port_o;
  wire                majority_287_port_o;
  wire                majority_288_port_o;
  wire                majority_289_port_o;
  wire                majority_290_port_o;
  wire                majority_291_port_o;
  wire                majority_292_port_o;
  wire                majority_293_port_o;
  wire                majority_294_port_o;
  wire                majority_295_port_o;
  wire                majority_296_port_o;
  wire                majority_297_port_o;
  wire                majority_298_port_o;
  wire                majority_299_port_o;
  wire                majority_300_port_o;
  wire                majority_301_port_o;
  wire                majority_302_port_o;
  wire                majority_303_port_o;
  wire                majority_304_port_o;
  wire                majority_305_port_o;
  wire                majority_306_port_o;
  wire                majority_307_port_o;
  wire                majority_308_port_o;
  wire                majority_309_port_o;
  wire                majority_310_port_o;
  wire                majority_311_port_o;
  reg        [2:0]    outReg_0_0;
  reg        [2:0]    outReg_0_1;
  reg        [2:0]    outReg_0_2;
  reg        [2:0]    outReg_0_3;
  reg        [2:0]    outReg_1_0;
  reg        [2:0]    outReg_1_1;
  reg        [2:0]    outReg_1_2;
  reg        [2:0]    outReg_1_3;
  reg        [2:0]    outReg_2_0;
  reg        [2:0]    outReg_2_1;
  reg        [2:0]    outReg_2_2;
  reg        [2:0]    outReg_2_3;
  reg        [2:0]    outReg_3_0;
  reg        [2:0]    outReg_3_1;
  reg        [2:0]    outReg_3_2;
  reg        [2:0]    outReg_3_3;
  wire       [2:0]    outVal_0_0;
  wire       [2:0]    outVal_0_1;
  wire       [2:0]    outVal_0_2;
  wire       [2:0]    outVal_0_3;
  wire       [2:0]    outVal_1_0;
  wire       [2:0]    outVal_1_1;
  wire       [2:0]    outVal_1_2;
  wire       [2:0]    outVal_1_3;
  wire       [2:0]    outVal_2_0;
  wire       [2:0]    outVal_2_1;
  wire       [2:0]    outVal_2_2;
  wire       [2:0]    outVal_2_3;
  wire       [2:0]    outVal_3_0;
  wire       [2:0]    outVal_3_1;
  wire       [2:0]    outVal_3_2;
  wire       [2:0]    outVal_3_3;
  reg        [2:0]    refVal_0_0;
  reg        [2:0]    refVal_0_1;
  reg        [2:0]    refVal_0_2;
  reg        [2:0]    refVal_0_3;
  reg        [2:0]    refVal_1_0;
  reg        [2:0]    refVal_1_1;
  reg        [2:0]    refVal_1_2;
  reg        [2:0]    refVal_1_3;
  reg        [2:0]    refVal_2_0;
  reg        [2:0]    refVal_2_1;
  reg        [2:0]    refVal_2_2;
  reg        [2:0]    refVal_2_3;
  reg        [2:0]    refVal_3_0;
  reg        [2:0]    refVal_3_1;
  reg        [2:0]    refVal_3_2;
  reg        [2:0]    refVal_3_3;
  wire       [2:0]    sq_0_0;
  wire       [2:0]    sq_0_1;
  wire       [2:0]    sq_1_0;
  wire       [2:0]    sq_1_1;
  wire       [2:0]    sax_0;
  wire       [2:0]    sax_1;
  wire       [2:0]    sqx_0;
  wire       [2:0]    sqx_1;
  wire       [2:0]    scx_0;
  wire       [2:0]    scx_1;

  GF_SQ_2 sq_0 (
    .port_i_0 (port_b_0_0[2:0]   ), //i
    .port_i_1 (port_b_0_1[2:0]   ), //i
    .port_o_0 (sq_0_port_o_0[2:0]), //o
    .port_o_1 (sq_0_port_o_1[2:0])  //o
  );
  GF_SQ_2 sq_1 (
    .port_i_0 (port_b_1_0[2:0]   ), //i
    .port_i_1 (port_b_1_1[2:0]   ), //i
    .port_o_0 (sq_1_port_o_0[2:0]), //o
    .port_o_1 (sq_1_port_o_1[2:0])  //o
  );
  GF_MULS_2 gF_MULS_2_36 (
    .port_a_0 (port_a_0_0[2:0]           ), //i
    .port_a_1 (port_a_0_1[2:0]           ), //i
    .port_ab  (sax_0[2:0]                ), //i
    .port_b_0 (sq_0_0[2:0]               ), //i
    .port_b_1 (sq_0_1[2:0]               ), //i
    .port_cd  (sqx_0[2:0]                ), //i
    .port_o_0 (gF_MULS_2_36_port_o_0[2:0]), //o
    .port_o_1 (gF_MULS_2_36_port_o_1[2:0])  //o
  );
  GF_MULS_2 gF_MULS_2_37 (
    .port_a_0 (port_c_0_0[2:0]           ), //i
    .port_a_1 (port_c_0_1[2:0]           ), //i
    .port_ab  (scx_0[2:0]                ), //i
    .port_b_0 (sq_0_0[2:0]               ), //i
    .port_b_1 (sq_0_1[2:0]               ), //i
    .port_cd  (sqx_0[2:0]                ), //i
    .port_o_0 (gF_MULS_2_37_port_o_0[2:0]), //o
    .port_o_1 (gF_MULS_2_37_port_o_1[2:0])  //o
  );
  GF_MULS_2 gF_MULS_2_38 (
    .port_a_0 (port_a_0_0[2:0]           ), //i
    .port_a_1 (port_a_0_1[2:0]           ), //i
    .port_ab  (sax_0[2:0]                ), //i
    .port_b_0 (sq_1_0[2:0]               ), //i
    .port_b_1 (sq_1_1[2:0]               ), //i
    .port_cd  (sqx_1[2:0]                ), //i
    .port_o_0 (gF_MULS_2_38_port_o_0[2:0]), //o
    .port_o_1 (gF_MULS_2_38_port_o_1[2:0])  //o
  );
  GF_MULS_2 gF_MULS_2_39 (
    .port_a_0 (port_c_0_0[2:0]           ), //i
    .port_a_1 (port_c_0_1[2:0]           ), //i
    .port_ab  (scx_0[2:0]                ), //i
    .port_b_0 (sq_1_0[2:0]               ), //i
    .port_b_1 (sq_1_1[2:0]               ), //i
    .port_cd  (sqx_1[2:0]                ), //i
    .port_o_0 (gF_MULS_2_39_port_o_0[2:0]), //o
    .port_o_1 (gF_MULS_2_39_port_o_1[2:0])  //o
  );
  GF_MULS_2 gF_MULS_2_40 (
    .port_a_0 (port_a_1_0[2:0]           ), //i
    .port_a_1 (port_a_1_1[2:0]           ), //i
    .port_ab  (sax_1[2:0]                ), //i
    .port_b_0 (sq_0_0[2:0]               ), //i
    .port_b_1 (sq_0_1[2:0]               ), //i
    .port_cd  (sqx_0[2:0]                ), //i
    .port_o_0 (gF_MULS_2_40_port_o_0[2:0]), //o
    .port_o_1 (gF_MULS_2_40_port_o_1[2:0])  //o
  );
  GF_MULS_2 gF_MULS_2_41 (
    .port_a_0 (port_c_1_0[2:0]           ), //i
    .port_a_1 (port_c_1_1[2:0]           ), //i
    .port_ab  (scx_1[2:0]                ), //i
    .port_b_0 (sq_0_0[2:0]               ), //i
    .port_b_1 (sq_0_1[2:0]               ), //i
    .port_cd  (sqx_0[2:0]                ), //i
    .port_o_0 (gF_MULS_2_41_port_o_0[2:0]), //o
    .port_o_1 (gF_MULS_2_41_port_o_1[2:0])  //o
  );
  GF_MULS_2 gF_MULS_2_42 (
    .port_a_0 (port_a_1_0[2:0]           ), //i
    .port_a_1 (port_a_1_1[2:0]           ), //i
    .port_ab  (sax_1[2:0]                ), //i
    .port_b_0 (sq_1_0[2:0]               ), //i
    .port_b_1 (sq_1_1[2:0]               ), //i
    .port_cd  (sqx_1[2:0]                ), //i
    .port_o_0 (gF_MULS_2_42_port_o_0[2:0]), //o
    .port_o_1 (gF_MULS_2_42_port_o_1[2:0])  //o
  );
  GF_MULS_2 gF_MULS_2_43 (
    .port_a_0 (port_c_1_0[2:0]           ), //i
    .port_a_1 (port_c_1_1[2:0]           ), //i
    .port_ab  (scx_1[2:0]                ), //i
    .port_b_0 (sq_1_0[2:0]               ), //i
    .port_b_1 (sq_1_1[2:0]               ), //i
    .port_cd  (sqx_1[2:0]                ), //i
    .port_o_0 (gF_MULS_2_43_port_o_0[2:0]), //o
    .port_o_1 (gF_MULS_2_43_port_o_1[2:0])  //o
  );
  Majority majority_264 (
    .port_i (refVal_0_0[2:0]    ), //i
    .port_o (majority_264_port_o)  //o
  );
  Majority majority_265 (
    .port_i (refVal_0_1[2:0]    ), //i
    .port_o (majority_265_port_o)  //o
  );
  Majority majority_266 (
    .port_i (refVal_0_2[2:0]    ), //i
    .port_o (majority_266_port_o)  //o
  );
  Majority majority_267 (
    .port_i (refVal_0_3[2:0]    ), //i
    .port_o (majority_267_port_o)  //o
  );
  Majority majority_268 (
    .port_i (refVal_1_0[2:0]    ), //i
    .port_o (majority_268_port_o)  //o
  );
  Majority majority_269 (
    .port_i (refVal_1_1[2:0]    ), //i
    .port_o (majority_269_port_o)  //o
  );
  Majority majority_270 (
    .port_i (refVal_1_2[2:0]    ), //i
    .port_o (majority_270_port_o)  //o
  );
  Majority majority_271 (
    .port_i (refVal_1_3[2:0]    ), //i
    .port_o (majority_271_port_o)  //o
  );
  Majority majority_272 (
    .port_i (refVal_2_0[2:0]    ), //i
    .port_o (majority_272_port_o)  //o
  );
  Majority majority_273 (
    .port_i (refVal_2_1[2:0]    ), //i
    .port_o (majority_273_port_o)  //o
  );
  Majority majority_274 (
    .port_i (refVal_2_2[2:0]    ), //i
    .port_o (majority_274_port_o)  //o
  );
  Majority majority_275 (
    .port_i (refVal_2_3[2:0]    ), //i
    .port_o (majority_275_port_o)  //o
  );
  Majority majority_276 (
    .port_i (refVal_3_0[2:0]    ), //i
    .port_o (majority_276_port_o)  //o
  );
  Majority majority_277 (
    .port_i (refVal_3_1[2:0]    ), //i
    .port_o (majority_277_port_o)  //o
  );
  Majority majority_278 (
    .port_i (refVal_3_2[2:0]    ), //i
    .port_o (majority_278_port_o)  //o
  );
  Majority majority_279 (
    .port_i (refVal_3_3[2:0]    ), //i
    .port_o (majority_279_port_o)  //o
  );
  Majority majority_280 (
    .port_i (refVal_0_0[2:0]    ), //i
    .port_o (majority_280_port_o)  //o
  );
  Majority majority_281 (
    .port_i (refVal_0_1[2:0]    ), //i
    .port_o (majority_281_port_o)  //o
  );
  Majority majority_282 (
    .port_i (refVal_0_2[2:0]    ), //i
    .port_o (majority_282_port_o)  //o
  );
  Majority majority_283 (
    .port_i (refVal_0_3[2:0]    ), //i
    .port_o (majority_283_port_o)  //o
  );
  Majority majority_284 (
    .port_i (refVal_1_0[2:0]    ), //i
    .port_o (majority_284_port_o)  //o
  );
  Majority majority_285 (
    .port_i (refVal_1_1[2:0]    ), //i
    .port_o (majority_285_port_o)  //o
  );
  Majority majority_286 (
    .port_i (refVal_1_2[2:0]    ), //i
    .port_o (majority_286_port_o)  //o
  );
  Majority majority_287 (
    .port_i (refVal_1_3[2:0]    ), //i
    .port_o (majority_287_port_o)  //o
  );
  Majority majority_288 (
    .port_i (refVal_2_0[2:0]    ), //i
    .port_o (majority_288_port_o)  //o
  );
  Majority majority_289 (
    .port_i (refVal_2_1[2:0]    ), //i
    .port_o (majority_289_port_o)  //o
  );
  Majority majority_290 (
    .port_i (refVal_2_2[2:0]    ), //i
    .port_o (majority_290_port_o)  //o
  );
  Majority majority_291 (
    .port_i (refVal_2_3[2:0]    ), //i
    .port_o (majority_291_port_o)  //o
  );
  Majority majority_292 (
    .port_i (refVal_3_0[2:0]    ), //i
    .port_o (majority_292_port_o)  //o
  );
  Majority majority_293 (
    .port_i (refVal_3_1[2:0]    ), //i
    .port_o (majority_293_port_o)  //o
  );
  Majority majority_294 (
    .port_i (refVal_3_2[2:0]    ), //i
    .port_o (majority_294_port_o)  //o
  );
  Majority majority_295 (
    .port_i (refVal_3_3[2:0]    ), //i
    .port_o (majority_295_port_o)  //o
  );
  Majority majority_296 (
    .port_i (refVal_0_0[2:0]    ), //i
    .port_o (majority_296_port_o)  //o
  );
  Majority majority_297 (
    .port_i (refVal_0_1[2:0]    ), //i
    .port_o (majority_297_port_o)  //o
  );
  Majority majority_298 (
    .port_i (refVal_0_2[2:0]    ), //i
    .port_o (majority_298_port_o)  //o
  );
  Majority majority_299 (
    .port_i (refVal_0_3[2:0]    ), //i
    .port_o (majority_299_port_o)  //o
  );
  Majority majority_300 (
    .port_i (refVal_1_0[2:0]    ), //i
    .port_o (majority_300_port_o)  //o
  );
  Majority majority_301 (
    .port_i (refVal_1_1[2:0]    ), //i
    .port_o (majority_301_port_o)  //o
  );
  Majority majority_302 (
    .port_i (refVal_1_2[2:0]    ), //i
    .port_o (majority_302_port_o)  //o
  );
  Majority majority_303 (
    .port_i (refVal_1_3[2:0]    ), //i
    .port_o (majority_303_port_o)  //o
  );
  Majority majority_304 (
    .port_i (refVal_2_0[2:0]    ), //i
    .port_o (majority_304_port_o)  //o
  );
  Majority majority_305 (
    .port_i (refVal_2_1[2:0]    ), //i
    .port_o (majority_305_port_o)  //o
  );
  Majority majority_306 (
    .port_i (refVal_2_2[2:0]    ), //i
    .port_o (majority_306_port_o)  //o
  );
  Majority majority_307 (
    .port_i (refVal_2_3[2:0]    ), //i
    .port_o (majority_307_port_o)  //o
  );
  Majority majority_308 (
    .port_i (refVal_3_0[2:0]    ), //i
    .port_o (majority_308_port_o)  //o
  );
  Majority majority_309 (
    .port_i (refVal_3_1[2:0]    ), //i
    .port_o (majority_309_port_o)  //o
  );
  Majority majority_310 (
    .port_i (refVal_3_2[2:0]    ), //i
    .port_o (majority_310_port_o)  //o
  );
  Majority majority_311 (
    .port_i (refVal_3_3[2:0]    ), //i
    .port_o (majority_311_port_o)  //o
  );
  assign sq_0_0 = sq_0_port_o_0;
  assign sq_0_1 = sq_0_port_o_1;
  assign sq_1_0 = sq_1_port_o_0;
  assign sq_1_1 = sq_1_port_o_1;
  assign sax_0 = (port_a_0_0 ^ port_a_0_1);
  assign sqx_0 = (sq_0_0 ^ sq_0_1);
  assign scx_0 = (port_c_0_0 ^ port_c_0_1);
  assign sax_1 = (port_a_1_0 ^ port_a_1_1);
  assign sqx_1 = (sq_1_0 ^ sq_1_1);
  assign scx_1 = (port_c_1_0 ^ port_c_1_1);
  assign outVal_0_0 = gF_MULS_2_36_port_o_0;
  assign outVal_0_1 = gF_MULS_2_36_port_o_1;
  assign outVal_0_2 = gF_MULS_2_37_port_o_0;
  assign outVal_0_3 = gF_MULS_2_37_port_o_1;
  assign outVal_2_0 = gF_MULS_2_38_port_o_0;
  assign outVal_2_1 = gF_MULS_2_38_port_o_1;
  assign outVal_2_2 = gF_MULS_2_39_port_o_0;
  assign outVal_2_3 = gF_MULS_2_39_port_o_1;
  assign outVal_1_0 = gF_MULS_2_40_port_o_0;
  assign outVal_1_1 = gF_MULS_2_40_port_o_1;
  assign outVal_1_2 = gF_MULS_2_41_port_o_0;
  assign outVal_1_3 = gF_MULS_2_41_port_o_1;
  assign outVal_3_0 = gF_MULS_2_42_port_o_0;
  assign outVal_3_1 = gF_MULS_2_42_port_o_1;
  assign outVal_3_2 = gF_MULS_2_43_port_o_0;
  assign outVal_3_3 = gF_MULS_2_43_port_o_1;
  always @(*) begin
    refVal_0_0[0] = ((outVal_0_0[0] ^ port_r_0_0) ^ port_r_1_0);
    refVal_0_0[1] = ((outVal_0_0[1] ^ port_r_0_0) ^ port_r_1_0);
    refVal_0_0[2] = ((outVal_0_0[2] ^ port_r_0_0) ^ port_r_1_0);
  end

  always @(*) begin
    refVal_0_1[0] = ((outVal_0_1[0] ^ port_r_0_1) ^ port_r_1_1);
    refVal_0_1[1] = ((outVal_0_1[1] ^ port_r_0_1) ^ port_r_1_1);
    refVal_0_1[2] = ((outVal_0_1[2] ^ port_r_0_1) ^ port_r_1_1);
  end

  always @(*) begin
    refVal_0_2[0] = ((outVal_0_2[0] ^ port_r_0_2) ^ port_r_1_2);
    refVal_0_2[1] = ((outVal_0_2[1] ^ port_r_0_2) ^ port_r_1_2);
    refVal_0_2[2] = ((outVal_0_2[2] ^ port_r_0_2) ^ port_r_1_2);
  end

  always @(*) begin
    refVal_0_3[0] = ((outVal_0_3[0] ^ port_r_0_3) ^ port_r_1_3);
    refVal_0_3[1] = ((outVal_0_3[1] ^ port_r_0_3) ^ port_r_1_3);
    refVal_0_3[2] = ((outVal_0_3[2] ^ port_r_0_3) ^ port_r_1_3);
  end

  always @(*) begin
    refVal_1_0[0] = ((outVal_1_0[0] ^ port_r_1_0) ^ port_r_2_0);
    refVal_1_0[1] = ((outVal_1_0[1] ^ port_r_1_0) ^ port_r_2_0);
    refVal_1_0[2] = ((outVal_1_0[2] ^ port_r_1_0) ^ port_r_2_0);
  end

  always @(*) begin
    refVal_1_1[0] = ((outVal_1_1[0] ^ port_r_1_1) ^ port_r_2_1);
    refVal_1_1[1] = ((outVal_1_1[1] ^ port_r_1_1) ^ port_r_2_1);
    refVal_1_1[2] = ((outVal_1_1[2] ^ port_r_1_1) ^ port_r_2_1);
  end

  always @(*) begin
    refVal_1_2[0] = ((outVal_1_2[0] ^ port_r_1_2) ^ port_r_2_2);
    refVal_1_2[1] = ((outVal_1_2[1] ^ port_r_1_2) ^ port_r_2_2);
    refVal_1_2[2] = ((outVal_1_2[2] ^ port_r_1_2) ^ port_r_2_2);
  end

  always @(*) begin
    refVal_1_3[0] = ((outVal_1_3[0] ^ port_r_1_3) ^ port_r_2_3);
    refVal_1_3[1] = ((outVal_1_3[1] ^ port_r_1_3) ^ port_r_2_3);
    refVal_1_3[2] = ((outVal_1_3[2] ^ port_r_1_3) ^ port_r_2_3);
  end

  always @(*) begin
    refVal_2_0[0] = ((outVal_2_0[0] ^ port_r_2_0) ^ port_r_3_0);
    refVal_2_0[1] = ((outVal_2_0[1] ^ port_r_2_0) ^ port_r_3_0);
    refVal_2_0[2] = ((outVal_2_0[2] ^ port_r_2_0) ^ port_r_3_0);
  end

  always @(*) begin
    refVal_2_1[0] = ((outVal_2_1[0] ^ port_r_2_1) ^ port_r_3_1);
    refVal_2_1[1] = ((outVal_2_1[1] ^ port_r_2_1) ^ port_r_3_1);
    refVal_2_1[2] = ((outVal_2_1[2] ^ port_r_2_1) ^ port_r_3_1);
  end

  always @(*) begin
    refVal_2_2[0] = ((outVal_2_2[0] ^ port_r_2_2) ^ port_r_3_2);
    refVal_2_2[1] = ((outVal_2_2[1] ^ port_r_2_2) ^ port_r_3_2);
    refVal_2_2[2] = ((outVal_2_2[2] ^ port_r_2_2) ^ port_r_3_2);
  end

  always @(*) begin
    refVal_2_3[0] = ((outVal_2_3[0] ^ port_r_2_3) ^ port_r_3_3);
    refVal_2_3[1] = ((outVal_2_3[1] ^ port_r_2_3) ^ port_r_3_3);
    refVal_2_3[2] = ((outVal_2_3[2] ^ port_r_2_3) ^ port_r_3_3);
  end

  always @(*) begin
    refVal_3_0[0] = ((outVal_3_0[0] ^ port_r_3_0) ^ port_r_0_0);
    refVal_3_0[1] = ((outVal_3_0[1] ^ port_r_3_0) ^ port_r_0_0);
    refVal_3_0[2] = ((outVal_3_0[2] ^ port_r_3_0) ^ port_r_0_0);
  end

  always @(*) begin
    refVal_3_1[0] = ((outVal_3_1[0] ^ port_r_3_1) ^ port_r_0_1);
    refVal_3_1[1] = ((outVal_3_1[1] ^ port_r_3_1) ^ port_r_0_1);
    refVal_3_1[2] = ((outVal_3_1[2] ^ port_r_3_1) ^ port_r_0_1);
  end

  always @(*) begin
    refVal_3_2[0] = ((outVal_3_2[0] ^ port_r_3_2) ^ port_r_0_2);
    refVal_3_2[1] = ((outVal_3_2[1] ^ port_r_3_2) ^ port_r_0_2);
    refVal_3_2[2] = ((outVal_3_2[2] ^ port_r_3_2) ^ port_r_0_2);
  end

  always @(*) begin
    refVal_3_3[0] = ((outVal_3_3[0] ^ port_r_3_3) ^ port_r_0_3);
    refVal_3_3[1] = ((outVal_3_3[1] ^ port_r_3_3) ^ port_r_0_3);
    refVal_3_3[2] = ((outVal_3_3[2] ^ port_r_3_3) ^ port_r_0_3);
  end

  assign port_y_0_0 = outReg_0_0;
  assign port_y_0_1 = outReg_0_1;
  assign port_y_0_2 = outReg_0_2;
  assign port_y_0_3 = outReg_0_3;
  assign port_y_1_0 = outReg_1_0;
  assign port_y_1_1 = outReg_1_1;
  assign port_y_1_2 = outReg_1_2;
  assign port_y_1_3 = outReg_1_3;
  assign port_y_2_0 = outReg_2_0;
  assign port_y_2_1 = outReg_2_1;
  assign port_y_2_2 = outReg_2_2;
  assign port_y_2_3 = outReg_2_3;
  assign port_y_3_0 = outReg_3_0;
  assign port_y_3_1 = outReg_3_1;
  assign port_y_3_2 = outReg_3_2;
  assign port_y_3_3 = outReg_3_3;
  always @(posedge clk) begin
    outReg_0_0[0] <= majority_264_port_o;
    outReg_0_1[0] <= majority_265_port_o;
    outReg_0_2[0] <= majority_266_port_o;
    outReg_0_3[0] <= majority_267_port_o;
    outReg_1_0[0] <= majority_268_port_o;
    outReg_1_1[0] <= majority_269_port_o;
    outReg_1_2[0] <= majority_270_port_o;
    outReg_1_3[0] <= majority_271_port_o;
    outReg_2_0[0] <= majority_272_port_o;
    outReg_2_1[0] <= majority_273_port_o;
    outReg_2_2[0] <= majority_274_port_o;
    outReg_2_3[0] <= majority_275_port_o;
    outReg_3_0[0] <= majority_276_port_o;
    outReg_3_1[0] <= majority_277_port_o;
    outReg_3_2[0] <= majority_278_port_o;
    outReg_3_3[0] <= majority_279_port_o;
    outReg_0_0[1] <= majority_280_port_o;
    outReg_0_1[1] <= majority_281_port_o;
    outReg_0_2[1] <= majority_282_port_o;
    outReg_0_3[1] <= majority_283_port_o;
    outReg_1_0[1] <= majority_284_port_o;
    outReg_1_1[1] <= majority_285_port_o;
    outReg_1_2[1] <= majority_286_port_o;
    outReg_1_3[1] <= majority_287_port_o;
    outReg_2_0[1] <= majority_288_port_o;
    outReg_2_1[1] <= majority_289_port_o;
    outReg_2_2[1] <= majority_290_port_o;
    outReg_2_3[1] <= majority_291_port_o;
    outReg_3_0[1] <= majority_292_port_o;
    outReg_3_1[1] <= majority_293_port_o;
    outReg_3_2[1] <= majority_294_port_o;
    outReg_3_3[1] <= majority_295_port_o;
    outReg_0_0[2] <= majority_296_port_o;
    outReg_0_1[2] <= majority_297_port_o;
    outReg_0_2[2] <= majority_298_port_o;
    outReg_0_3[2] <= majority_299_port_o;
    outReg_1_0[2] <= majority_300_port_o;
    outReg_1_1[2] <= majority_301_port_o;
    outReg_1_2[2] <= majority_302_port_o;
    outReg_1_3[2] <= majority_303_port_o;
    outReg_2_0[2] <= majority_304_port_o;
    outReg_2_1[2] <= majority_305_port_o;
    outReg_2_2[2] <= majority_306_port_o;
    outReg_2_3[2] <= majority_307_port_o;
    outReg_3_0[2] <= majority_308_port_o;
    outReg_3_1[2] <= majority_309_port_o;
    outReg_3_2[2] <= majority_310_port_o;
    outReg_3_3[2] <= majority_311_port_o;
  end


endmodule

module CMS_stage3 (
  input      [2:0]    port_a_0_0,
  input      [2:0]    port_a_0_1,
  input      [2:0]    port_a_1_0,
  input      [2:0]    port_a_1_1,
  input      [2:0]    port_b_0_0,
  input      [2:0]    port_b_0_1,
  input      [2:0]    port_b_1_0,
  input      [2:0]    port_b_1_1,
  input               port_r_0_0,
  input               port_r_0_1,
  input               port_r_1_0,
  input               port_r_1_1,
  input               port_r_2_0,
  input               port_r_2_1,
  input               port_r_3_0,
  input               port_r_3_1,
  output     [2:0]    port_y_0_0,
  output     [2:0]    port_y_0_1,
  output     [2:0]    port_y_1_0,
  output     [2:0]    port_y_1_1,
  output     [2:0]    port_y_2_0,
  output     [2:0]    port_y_2_1,
  output     [2:0]    port_y_3_0,
  output     [2:0]    port_y_3_1,
  input               clk,
  input               reset
);

  wire       [2:0]    gF_SQ_2_8_port_i_0;
  wire       [2:0]    gF_SQ_2_8_port_i_1;
  wire       [2:0]    gF_SQ_2_9_port_i_0;
  wire       [2:0]    gF_SQ_2_9_port_i_1;
  wire       [2:0]    gF_SQ_2_8_port_o_0;
  wire       [2:0]    gF_SQ_2_8_port_o_1;
  wire       [2:0]    gF_SCLW2_2_2_port_o_0;
  wire       [2:0]    gF_SCLW2_2_2_port_o_1;
  wire       [2:0]    gF_SQ_2_9_port_o_0;
  wire       [2:0]    gF_SQ_2_9_port_o_1;
  wire       [2:0]    gF_SCLW2_2_3_port_o_0;
  wire       [2:0]    gF_SCLW2_2_3_port_o_1;
  wire       [2:0]    gF_MULS_2_36_port_o_0;
  wire       [2:0]    gF_MULS_2_36_port_o_1;
  wire       [2:0]    gF_MULS_2_37_port_o_0;
  wire       [2:0]    gF_MULS_2_37_port_o_1;
  wire       [2:0]    gF_MULS_2_38_port_o_0;
  wire       [2:0]    gF_MULS_2_38_port_o_1;
  wire       [2:0]    gF_MULS_2_39_port_o_0;
  wire       [2:0]    gF_MULS_2_39_port_o_1;
  wire                majority_264_port_o;
  wire                majority_265_port_o;
  wire                majority_266_port_o;
  wire                majority_267_port_o;
  wire                majority_268_port_o;
  wire                majority_269_port_o;
  wire                majority_270_port_o;
  wire                majority_271_port_o;
  wire                majority_272_port_o;
  wire                majority_273_port_o;
  wire                majority_274_port_o;
  wire                majority_275_port_o;
  wire                majority_276_port_o;
  wire                majority_277_port_o;
  wire                majority_278_port_o;
  wire                majority_279_port_o;
  wire                majority_280_port_o;
  wire                majority_281_port_o;
  wire                majority_282_port_o;
  wire                majority_283_port_o;
  wire                majority_284_port_o;
  wire                majority_285_port_o;
  wire                majority_286_port_o;
  wire                majority_287_port_o;
  reg        [2:0]    outReg_0_0;
  reg        [2:0]    outReg_0_1;
  reg        [2:0]    outReg_1_0;
  reg        [2:0]    outReg_1_1;
  reg        [2:0]    outReg_2_0;
  reg        [2:0]    outReg_2_1;
  reg        [2:0]    outReg_3_0;
  reg        [2:0]    outReg_3_1;
  wire       [2:0]    outVal_0_0;
  wire       [2:0]    outVal_0_1;
  wire       [2:0]    outVal_1_0;
  wire       [2:0]    outVal_1_1;
  wire       [2:0]    outVal_2_0;
  wire       [2:0]    outVal_2_1;
  wire       [2:0]    outVal_3_0;
  wire       [2:0]    outVal_3_1;
  reg        [2:0]    refVal_0_0;
  reg        [2:0]    refVal_0_1;
  reg        [2:0]    refVal_1_0;
  reg        [2:0]    refVal_1_1;
  reg        [2:0]    refVal_2_0;
  reg        [2:0]    refVal_2_1;
  reg        [2:0]    refVal_3_0;
  reg        [2:0]    refVal_3_1;
  wire       [2:0]    sax_0;
  wire       [2:0]    sax_1;
  wire       [2:0]    sbx_0;
  wire       [2:0]    sbx_1;
  wire       [2:0]    sq_0_0;
  wire       [2:0]    sq_0_1;
  wire       [2:0]    sq_1_0;
  wire       [2:0]    sq_1_1;

  GF_SQ_2 gF_SQ_2_8 (
    .port_i_0 (gF_SQ_2_8_port_i_0[2:0]), //i
    .port_i_1 (gF_SQ_2_8_port_i_1[2:0]), //i
    .port_o_0 (gF_SQ_2_8_port_o_0[2:0]), //o
    .port_o_1 (gF_SQ_2_8_port_o_1[2:0])  //o
  );
  GF_SCLW2_2 gF_SCLW2_2_2 (
    .port_i_0 (gF_SQ_2_8_port_o_0[2:0]   ), //i
    .port_i_1 (gF_SQ_2_8_port_o_1[2:0]   ), //i
    .port_o_0 (gF_SCLW2_2_2_port_o_0[2:0]), //o
    .port_o_1 (gF_SCLW2_2_2_port_o_1[2:0])  //o
  );
  GF_SQ_2 gF_SQ_2_9 (
    .port_i_0 (gF_SQ_2_9_port_i_0[2:0]), //i
    .port_i_1 (gF_SQ_2_9_port_i_1[2:0]), //i
    .port_o_0 (gF_SQ_2_9_port_o_0[2:0]), //o
    .port_o_1 (gF_SQ_2_9_port_o_1[2:0])  //o
  );
  GF_SCLW2_2 gF_SCLW2_2_3 (
    .port_i_0 (gF_SQ_2_9_port_o_0[2:0]   ), //i
    .port_i_1 (gF_SQ_2_9_port_o_1[2:0]   ), //i
    .port_o_0 (gF_SCLW2_2_3_port_o_0[2:0]), //o
    .port_o_1 (gF_SCLW2_2_3_port_o_1[2:0])  //o
  );
  GF_MULS_2 gF_MULS_2_36 (
    .port_a_0 (port_a_0_0[2:0]           ), //i
    .port_a_1 (port_a_0_1[2:0]           ), //i
    .port_ab  (sax_0[2:0]                ), //i
    .port_b_0 (port_b_0_0[2:0]           ), //i
    .port_b_1 (port_b_0_1[2:0]           ), //i
    .port_cd  (sbx_0[2:0]                ), //i
    .port_o_0 (gF_MULS_2_36_port_o_0[2:0]), //o
    .port_o_1 (gF_MULS_2_36_port_o_1[2:0])  //o
  );
  GF_MULS_2 gF_MULS_2_37 (
    .port_a_0 (port_a_0_0[2:0]           ), //i
    .port_a_1 (port_a_0_1[2:0]           ), //i
    .port_ab  (sax_0[2:0]                ), //i
    .port_b_0 (port_b_1_0[2:0]           ), //i
    .port_b_1 (port_b_1_1[2:0]           ), //i
    .port_cd  (sbx_1[2:0]                ), //i
    .port_o_0 (gF_MULS_2_37_port_o_0[2:0]), //o
    .port_o_1 (gF_MULS_2_37_port_o_1[2:0])  //o
  );
  GF_MULS_2 gF_MULS_2_38 (
    .port_a_0 (port_a_1_0[2:0]           ), //i
    .port_a_1 (port_a_1_1[2:0]           ), //i
    .port_ab  (sax_1[2:0]                ), //i
    .port_b_0 (port_b_0_0[2:0]           ), //i
    .port_b_1 (port_b_0_1[2:0]           ), //i
    .port_cd  (sbx_0[2:0]                ), //i
    .port_o_0 (gF_MULS_2_38_port_o_0[2:0]), //o
    .port_o_1 (gF_MULS_2_38_port_o_1[2:0])  //o
  );
  GF_MULS_2 gF_MULS_2_39 (
    .port_a_0 (port_a_1_0[2:0]           ), //i
    .port_a_1 (port_a_1_1[2:0]           ), //i
    .port_ab  (sax_1[2:0]                ), //i
    .port_b_0 (port_b_1_0[2:0]           ), //i
    .port_b_1 (port_b_1_1[2:0]           ), //i
    .port_cd  (sbx_1[2:0]                ), //i
    .port_o_0 (gF_MULS_2_39_port_o_0[2:0]), //o
    .port_o_1 (gF_MULS_2_39_port_o_1[2:0])  //o
  );
  Majority majority_264 (
    .port_i (refVal_0_0[2:0]    ), //i
    .port_o (majority_264_port_o)  //o
  );
  Majority majority_265 (
    .port_i (refVal_0_1[2:0]    ), //i
    .port_o (majority_265_port_o)  //o
  );
  Majority majority_266 (
    .port_i (refVal_1_0[2:0]    ), //i
    .port_o (majority_266_port_o)  //o
  );
  Majority majority_267 (
    .port_i (refVal_1_1[2:0]    ), //i
    .port_o (majority_267_port_o)  //o
  );
  Majority majority_268 (
    .port_i (refVal_2_0[2:0]    ), //i
    .port_o (majority_268_port_o)  //o
  );
  Majority majority_269 (
    .port_i (refVal_2_1[2:0]    ), //i
    .port_o (majority_269_port_o)  //o
  );
  Majority majority_270 (
    .port_i (refVal_3_0[2:0]    ), //i
    .port_o (majority_270_port_o)  //o
  );
  Majority majority_271 (
    .port_i (refVal_3_1[2:0]    ), //i
    .port_o (majority_271_port_o)  //o
  );
  Majority majority_272 (
    .port_i (refVal_0_0[2:0]    ), //i
    .port_o (majority_272_port_o)  //o
  );
  Majority majority_273 (
    .port_i (refVal_0_1[2:0]    ), //i
    .port_o (majority_273_port_o)  //o
  );
  Majority majority_274 (
    .port_i (refVal_1_0[2:0]    ), //i
    .port_o (majority_274_port_o)  //o
  );
  Majority majority_275 (
    .port_i (refVal_1_1[2:0]    ), //i
    .port_o (majority_275_port_o)  //o
  );
  Majority majority_276 (
    .port_i (refVal_2_0[2:0]    ), //i
    .port_o (majority_276_port_o)  //o
  );
  Majority majority_277 (
    .port_i (refVal_2_1[2:0]    ), //i
    .port_o (majority_277_port_o)  //o
  );
  Majority majority_278 (
    .port_i (refVal_3_0[2:0]    ), //i
    .port_o (majority_278_port_o)  //o
  );
  Majority majority_279 (
    .port_i (refVal_3_1[2:0]    ), //i
    .port_o (majority_279_port_o)  //o
  );
  Majority majority_280 (
    .port_i (refVal_0_0[2:0]    ), //i
    .port_o (majority_280_port_o)  //o
  );
  Majority majority_281 (
    .port_i (refVal_0_1[2:0]    ), //i
    .port_o (majority_281_port_o)  //o
  );
  Majority majority_282 (
    .port_i (refVal_1_0[2:0]    ), //i
    .port_o (majority_282_port_o)  //o
  );
  Majority majority_283 (
    .port_i (refVal_1_1[2:0]    ), //i
    .port_o (majority_283_port_o)  //o
  );
  Majority majority_284 (
    .port_i (refVal_2_0[2:0]    ), //i
    .port_o (majority_284_port_o)  //o
  );
  Majority majority_285 (
    .port_i (refVal_2_1[2:0]    ), //i
    .port_o (majority_285_port_o)  //o
  );
  Majority majority_286 (
    .port_i (refVal_3_0[2:0]    ), //i
    .port_o (majority_286_port_o)  //o
  );
  Majority majority_287 (
    .port_i (refVal_3_1[2:0]    ), //i
    .port_o (majority_287_port_o)  //o
  );
  assign sax_0 = (port_a_0_0 ^ port_a_0_1);
  assign sbx_0 = (port_b_0_0 ^ port_b_0_1);
  assign sax_1 = (port_a_1_0 ^ port_a_1_1);
  assign sbx_1 = (port_b_1_0 ^ port_b_1_1);
  assign gF_SQ_2_8_port_i_0 = (port_a_0_0 ^ port_b_0_0);
  assign gF_SQ_2_8_port_i_1 = (port_a_0_1 ^ port_b_0_1);
  assign sq_0_0 = gF_SCLW2_2_2_port_o_0;
  assign sq_0_1 = gF_SCLW2_2_2_port_o_1;
  assign gF_SQ_2_9_port_i_0 = (port_a_1_0 ^ port_b_1_0);
  assign gF_SQ_2_9_port_i_1 = (port_a_1_1 ^ port_b_1_1);
  assign sq_1_0 = gF_SCLW2_2_3_port_o_0;
  assign sq_1_1 = gF_SCLW2_2_3_port_o_1;
  assign outVal_0_0 = (gF_MULS_2_36_port_o_0 ^ sq_0_0);
  assign outVal_0_1 = (gF_MULS_2_36_port_o_1 ^ sq_0_1);
  assign outVal_2_0 = gF_MULS_2_37_port_o_0;
  assign outVal_2_1 = gF_MULS_2_37_port_o_1;
  assign outVal_1_0 = gF_MULS_2_38_port_o_0;
  assign outVal_1_1 = gF_MULS_2_38_port_o_1;
  assign outVal_3_0 = (gF_MULS_2_39_port_o_0 ^ sq_1_0);
  assign outVal_3_1 = (gF_MULS_2_39_port_o_1 ^ sq_1_1);
  always @(*) begin
    refVal_0_0[0] = ((outVal_0_0[0] ^ port_r_0_0) ^ port_r_1_0);
    refVal_0_0[1] = ((outVal_0_0[1] ^ port_r_0_0) ^ port_r_1_0);
    refVal_0_0[2] = ((outVal_0_0[2] ^ port_r_0_0) ^ port_r_1_0);
  end

  always @(*) begin
    refVal_0_1[0] = ((outVal_0_1[0] ^ port_r_0_1) ^ port_r_1_1);
    refVal_0_1[1] = ((outVal_0_1[1] ^ port_r_0_1) ^ port_r_1_1);
    refVal_0_1[2] = ((outVal_0_1[2] ^ port_r_0_1) ^ port_r_1_1);
  end

  always @(*) begin
    refVal_1_0[0] = ((outVal_1_0[0] ^ port_r_1_0) ^ port_r_2_0);
    refVal_1_0[1] = ((outVal_1_0[1] ^ port_r_1_0) ^ port_r_2_0);
    refVal_1_0[2] = ((outVal_1_0[2] ^ port_r_1_0) ^ port_r_2_0);
  end

  always @(*) begin
    refVal_1_1[0] = ((outVal_1_1[0] ^ port_r_1_1) ^ port_r_2_1);
    refVal_1_1[1] = ((outVal_1_1[1] ^ port_r_1_1) ^ port_r_2_1);
    refVal_1_1[2] = ((outVal_1_1[2] ^ port_r_1_1) ^ port_r_2_1);
  end

  always @(*) begin
    refVal_2_0[0] = ((outVal_2_0[0] ^ port_r_2_0) ^ port_r_3_0);
    refVal_2_0[1] = ((outVal_2_0[1] ^ port_r_2_0) ^ port_r_3_0);
    refVal_2_0[2] = ((outVal_2_0[2] ^ port_r_2_0) ^ port_r_3_0);
  end

  always @(*) begin
    refVal_2_1[0] = ((outVal_2_1[0] ^ port_r_2_1) ^ port_r_3_1);
    refVal_2_1[1] = ((outVal_2_1[1] ^ port_r_2_1) ^ port_r_3_1);
    refVal_2_1[2] = ((outVal_2_1[2] ^ port_r_2_1) ^ port_r_3_1);
  end

  always @(*) begin
    refVal_3_0[0] = ((outVal_3_0[0] ^ port_r_3_0) ^ port_r_0_0);
    refVal_3_0[1] = ((outVal_3_0[1] ^ port_r_3_0) ^ port_r_0_0);
    refVal_3_0[2] = ((outVal_3_0[2] ^ port_r_3_0) ^ port_r_0_0);
  end

  always @(*) begin
    refVal_3_1[0] = ((outVal_3_1[0] ^ port_r_3_1) ^ port_r_0_1);
    refVal_3_1[1] = ((outVal_3_1[1] ^ port_r_3_1) ^ port_r_0_1);
    refVal_3_1[2] = ((outVal_3_1[2] ^ port_r_3_1) ^ port_r_0_1);
  end

  assign port_y_0_0 = outReg_0_0;
  assign port_y_0_1 = outReg_0_1;
  assign port_y_1_0 = outReg_1_0;
  assign port_y_1_1 = outReg_1_1;
  assign port_y_2_0 = outReg_2_0;
  assign port_y_2_1 = outReg_2_1;
  assign port_y_3_0 = outReg_3_0;
  assign port_y_3_1 = outReg_3_1;
  always @(posedge clk) begin
    outReg_0_0[0] <= majority_264_port_o;
    outReg_0_1[0] <= majority_265_port_o;
    outReg_1_0[0] <= majority_266_port_o;
    outReg_1_1[0] <= majority_267_port_o;
    outReg_2_0[0] <= majority_268_port_o;
    outReg_2_1[0] <= majority_269_port_o;
    outReg_3_0[0] <= majority_270_port_o;
    outReg_3_1[0] <= majority_271_port_o;
    outReg_0_0[1] <= majority_272_port_o;
    outReg_0_1[1] <= majority_273_port_o;
    outReg_1_0[1] <= majority_274_port_o;
    outReg_1_1[1] <= majority_275_port_o;
    outReg_2_0[1] <= majority_276_port_o;
    outReg_2_1[1] <= majority_277_port_o;
    outReg_3_0[1] <= majority_278_port_o;
    outReg_3_1[1] <= majority_279_port_o;
    outReg_0_0[2] <= majority_280_port_o;
    outReg_0_1[2] <= majority_281_port_o;
    outReg_1_0[2] <= majority_282_port_o;
    outReg_1_1[2] <= majority_283_port_o;
    outReg_2_0[2] <= majority_284_port_o;
    outReg_2_1[2] <= majority_285_port_o;
    outReg_3_0[2] <= majority_286_port_o;
    outReg_3_1[2] <= majority_287_port_o;
  end


endmodule

module CMS_stage2 (
  input      [2:0]    port_a_0_0,
  input      [2:0]    port_a_0_1,
  input      [2:0]    port_a_0_2,
  input      [2:0]    port_a_0_3,
  input      [2:0]    port_a_1_0,
  input      [2:0]    port_a_1_1,
  input      [2:0]    port_a_1_2,
  input      [2:0]    port_a_1_3,
  input      [2:0]    port_b_0_0,
  input      [2:0]    port_b_0_1,
  input      [2:0]    port_b_0_2,
  input      [2:0]    port_b_0_3,
  input      [2:0]    port_b_1_0,
  input      [2:0]    port_b_1_1,
  input      [2:0]    port_b_1_2,
  input      [2:0]    port_b_1_3,
  input               port_r_0_0,
  input               port_r_0_1,
  input               port_r_0_2,
  input               port_r_0_3,
  input               port_r_1_0,
  input               port_r_1_1,
  input               port_r_1_2,
  input               port_r_1_3,
  input               port_r_2_0,
  input               port_r_2_1,
  input               port_r_2_2,
  input               port_r_2_3,
  input               port_r_3_0,
  input               port_r_3_1,
  input               port_r_3_2,
  input               port_r_3_3,
  output     [2:0]    port_y_0_0,
  output     [2:0]    port_y_0_1,
  output     [2:0]    port_y_0_2,
  output     [2:0]    port_y_0_3,
  output     [2:0]    port_y_1_0,
  output     [2:0]    port_y_1_1,
  output     [2:0]    port_y_1_2,
  output     [2:0]    port_y_1_3,
  output     [2:0]    port_y_2_0,
  output     [2:0]    port_y_2_1,
  output     [2:0]    port_y_2_2,
  output     [2:0]    port_y_2_3,
  output     [2:0]    port_y_3_0,
  output     [2:0]    port_y_3_1,
  output     [2:0]    port_y_3_2,
  output     [2:0]    port_y_3_3,
  input               clk,
  input               reset
);

  wire       [2:0]    sq_0_port_i_0;
  wire       [2:0]    sq_0_port_i_1;
  wire       [2:0]    sq_0_port_i_2;
  wire       [2:0]    sq_0_port_i_3;
  wire       [2:0]    sq_1_port_i_0;
  wire       [2:0]    sq_1_port_i_1;
  wire       [2:0]    sq_1_port_i_2;
  wire       [2:0]    sq_1_port_i_3;
  wire       [2:0]    sq_0_port_o_0;
  wire       [2:0]    sq_0_port_o_1;
  wire       [2:0]    sq_0_port_o_2;
  wire       [2:0]    sq_0_port_o_3;
  wire       [2:0]    sq_1_port_o_0;
  wire       [2:0]    sq_1_port_o_1;
  wire       [2:0]    sq_1_port_o_2;
  wire       [2:0]    sq_1_port_o_3;
  wire       [2:0]    gF_MULS_4_12_port_o_0;
  wire       [2:0]    gF_MULS_4_12_port_o_1;
  wire       [2:0]    gF_MULS_4_12_port_o_2;
  wire       [2:0]    gF_MULS_4_12_port_o_3;
  wire       [2:0]    gF_MULS_4_13_port_o_0;
  wire       [2:0]    gF_MULS_4_13_port_o_1;
  wire       [2:0]    gF_MULS_4_13_port_o_2;
  wire       [2:0]    gF_MULS_4_13_port_o_3;
  wire       [2:0]    gF_MULS_4_14_port_o_0;
  wire       [2:0]    gF_MULS_4_14_port_o_1;
  wire       [2:0]    gF_MULS_4_14_port_o_2;
  wire       [2:0]    gF_MULS_4_14_port_o_3;
  wire       [2:0]    gF_MULS_4_15_port_o_0;
  wire       [2:0]    gF_MULS_4_15_port_o_1;
  wire       [2:0]    gF_MULS_4_15_port_o_2;
  wire       [2:0]    gF_MULS_4_15_port_o_3;
  wire                majority_264_port_o;
  wire                majority_265_port_o;
  wire                majority_266_port_o;
  wire                majority_267_port_o;
  wire                majority_268_port_o;
  wire                majority_269_port_o;
  wire                majority_270_port_o;
  wire                majority_271_port_o;
  wire                majority_272_port_o;
  wire                majority_273_port_o;
  wire                majority_274_port_o;
  wire                majority_275_port_o;
  wire                majority_276_port_o;
  wire                majority_277_port_o;
  wire                majority_278_port_o;
  wire                majority_279_port_o;
  wire                majority_280_port_o;
  wire                majority_281_port_o;
  wire                majority_282_port_o;
  wire                majority_283_port_o;
  wire                majority_284_port_o;
  wire                majority_285_port_o;
  wire                majority_286_port_o;
  wire                majority_287_port_o;
  wire                majority_288_port_o;
  wire                majority_289_port_o;
  wire                majority_290_port_o;
  wire                majority_291_port_o;
  wire                majority_292_port_o;
  wire                majority_293_port_o;
  wire                majority_294_port_o;
  wire                majority_295_port_o;
  wire                majority_296_port_o;
  wire                majority_297_port_o;
  wire                majority_298_port_o;
  wire                majority_299_port_o;
  wire                majority_300_port_o;
  wire                majority_301_port_o;
  wire                majority_302_port_o;
  wire                majority_303_port_o;
  wire                majority_304_port_o;
  wire                majority_305_port_o;
  wire                majority_306_port_o;
  wire                majority_307_port_o;
  wire                majority_308_port_o;
  wire                majority_309_port_o;
  wire                majority_310_port_o;
  wire                majority_311_port_o;
  reg        [2:0]    outReg_0_0;
  reg        [2:0]    outReg_0_1;
  reg        [2:0]    outReg_0_2;
  reg        [2:0]    outReg_0_3;
  reg        [2:0]    outReg_1_0;
  reg        [2:0]    outReg_1_1;
  reg        [2:0]    outReg_1_2;
  reg        [2:0]    outReg_1_3;
  reg        [2:0]    outReg_2_0;
  reg        [2:0]    outReg_2_1;
  reg        [2:0]    outReg_2_2;
  reg        [2:0]    outReg_2_3;
  reg        [2:0]    outReg_3_0;
  reg        [2:0]    outReg_3_1;
  reg        [2:0]    outReg_3_2;
  reg        [2:0]    outReg_3_3;
  wire       [2:0]    outVal_0_0;
  wire       [2:0]    outVal_0_1;
  wire       [2:0]    outVal_0_2;
  wire       [2:0]    outVal_0_3;
  wire       [2:0]    outVal_1_0;
  wire       [2:0]    outVal_1_1;
  wire       [2:0]    outVal_1_2;
  wire       [2:0]    outVal_1_3;
  wire       [2:0]    outVal_2_0;
  wire       [2:0]    outVal_2_1;
  wire       [2:0]    outVal_2_2;
  wire       [2:0]    outVal_2_3;
  wire       [2:0]    outVal_3_0;
  wire       [2:0]    outVal_3_1;
  wire       [2:0]    outVal_3_2;
  wire       [2:0]    outVal_3_3;
  reg        [2:0]    refVal_0_0;
  reg        [2:0]    refVal_0_1;
  reg        [2:0]    refVal_0_2;
  reg        [2:0]    refVal_0_3;
  reg        [2:0]    refVal_1_0;
  reg        [2:0]    refVal_1_1;
  reg        [2:0]    refVal_1_2;
  reg        [2:0]    refVal_1_3;
  reg        [2:0]    refVal_2_0;
  reg        [2:0]    refVal_2_1;
  reg        [2:0]    refVal_2_2;
  reg        [2:0]    refVal_2_3;
  reg        [2:0]    refVal_3_0;
  reg        [2:0]    refVal_3_1;
  reg        [2:0]    refVal_3_2;
  reg        [2:0]    refVal_3_3;
  wire       [2:0]    sq_0_0;
  wire       [2:0]    sq_0_1;
  wire       [2:0]    sq_0_2;
  wire       [2:0]    sq_0_3;
  wire       [2:0]    sq_1_0;
  wire       [2:0]    sq_1_1;
  wire       [2:0]    sq_1_2;
  wire       [2:0]    sq_1_3;
  wire       [2:0]    sax_0_0;
  wire       [2:0]    sax_0_1;
  wire       [2:0]    sax_1_0;
  wire       [2:0]    sax_1_1;
  wire       [2:0]    sbx_0_0;
  wire       [2:0]    sbx_0_1;
  wire       [2:0]    sbx_1_0;
  wire       [2:0]    sbx_1_1;
  wire       [2:0]    al_0;
  wire       [2:0]    al_1;
  wire       [2:0]    ah_0;
  wire       [2:0]    ah_1;
  wire       [2:0]    aa_0;
  wire       [2:0]    aa_1;
  wire       [2:0]    bl_0;
  wire       [2:0]    bl_1;
  wire       [2:0]    bh_0;
  wire       [2:0]    bh_1;
  wire       [2:0]    bb_0;
  wire       [2:0]    bb_1;

  GF_SQ_SCL_4 sq_0 (
    .port_i_0 (sq_0_port_i_0[2:0]), //i
    .port_i_1 (sq_0_port_i_1[2:0]), //i
    .port_i_2 (sq_0_port_i_2[2:0]), //i
    .port_i_3 (sq_0_port_i_3[2:0]), //i
    .port_o_0 (sq_0_port_o_0[2:0]), //o
    .port_o_1 (sq_0_port_o_1[2:0]), //o
    .port_o_2 (sq_0_port_o_2[2:0]), //o
    .port_o_3 (sq_0_port_o_3[2:0])  //o
  );
  GF_SQ_SCL_4 sq_1 (
    .port_i_0 (sq_1_port_i_0[2:0]), //i
    .port_i_1 (sq_1_port_i_1[2:0]), //i
    .port_i_2 (sq_1_port_i_2[2:0]), //i
    .port_i_3 (sq_1_port_i_3[2:0]), //i
    .port_o_0 (sq_1_port_o_0[2:0]), //o
    .port_o_1 (sq_1_port_o_1[2:0]), //o
    .port_o_2 (sq_1_port_o_2[2:0]), //o
    .port_o_3 (sq_1_port_o_3[2:0])  //o
  );
  GF_MULS_4 gF_MULS_4_12 (
    .port_A_0   (port_a_0_0[2:0]           ), //i
    .port_A_1   (port_a_0_1[2:0]           ), //i
    .port_A_2   (port_a_0_2[2:0]           ), //i
    .port_A_3   (port_a_0_3[2:0]           ), //i
    .port_a_0_1 (sax_0_0[2:0]              ), //i
    .port_a_1_1 (sax_0_1[2:0]              ), //i
    .port_Al    (al_0[2:0]                 ), //i
    .port_Ah    (ah_0[2:0]                 ), //i
    .port_aa    (aa_0[2:0]                 ), //i
    .port_B_0   (port_b_0_0[2:0]           ), //i
    .port_B_1   (port_b_0_1[2:0]           ), //i
    .port_B_2   (port_b_0_2[2:0]           ), //i
    .port_B_3   (port_b_0_3[2:0]           ), //i
    .port_b_0_1 (sbx_0_0[2:0]              ), //i
    .port_b_1_1 (sbx_0_1[2:0]              ), //i
    .port_Bl    (bl_0[2:0]                 ), //i
    .port_Bh    (bh_0[2:0]                 ), //i
    .port_bb    (bb_0[2:0]                 ), //i
    .port_o_0   (gF_MULS_4_12_port_o_0[2:0]), //o
    .port_o_1   (gF_MULS_4_12_port_o_1[2:0]), //o
    .port_o_2   (gF_MULS_4_12_port_o_2[2:0]), //o
    .port_o_3   (gF_MULS_4_12_port_o_3[2:0])  //o
  );
  GF_MULS_4 gF_MULS_4_13 (
    .port_A_0   (port_a_0_0[2:0]           ), //i
    .port_A_1   (port_a_0_1[2:0]           ), //i
    .port_A_2   (port_a_0_2[2:0]           ), //i
    .port_A_3   (port_a_0_3[2:0]           ), //i
    .port_a_0_1 (sax_0_0[2:0]              ), //i
    .port_a_1_1 (sax_0_1[2:0]              ), //i
    .port_Al    (al_0[2:0]                 ), //i
    .port_Ah    (ah_0[2:0]                 ), //i
    .port_aa    (aa_0[2:0]                 ), //i
    .port_B_0   (port_b_1_0[2:0]           ), //i
    .port_B_1   (port_b_1_1[2:0]           ), //i
    .port_B_2   (port_b_1_2[2:0]           ), //i
    .port_B_3   (port_b_1_3[2:0]           ), //i
    .port_b_0_1 (sbx_1_0[2:0]              ), //i
    .port_b_1_1 (sbx_1_1[2:0]              ), //i
    .port_Bl    (bl_1[2:0]                 ), //i
    .port_Bh    (bh_1[2:0]                 ), //i
    .port_bb    (bb_1[2:0]                 ), //i
    .port_o_0   (gF_MULS_4_13_port_o_0[2:0]), //o
    .port_o_1   (gF_MULS_4_13_port_o_1[2:0]), //o
    .port_o_2   (gF_MULS_4_13_port_o_2[2:0]), //o
    .port_o_3   (gF_MULS_4_13_port_o_3[2:0])  //o
  );
  GF_MULS_4 gF_MULS_4_14 (
    .port_A_0   (port_a_1_0[2:0]           ), //i
    .port_A_1   (port_a_1_1[2:0]           ), //i
    .port_A_2   (port_a_1_2[2:0]           ), //i
    .port_A_3   (port_a_1_3[2:0]           ), //i
    .port_a_0_1 (sax_1_0[2:0]              ), //i
    .port_a_1_1 (sax_1_1[2:0]              ), //i
    .port_Al    (al_1[2:0]                 ), //i
    .port_Ah    (ah_1[2:0]                 ), //i
    .port_aa    (aa_1[2:0]                 ), //i
    .port_B_0   (port_b_0_0[2:0]           ), //i
    .port_B_1   (port_b_0_1[2:0]           ), //i
    .port_B_2   (port_b_0_2[2:0]           ), //i
    .port_B_3   (port_b_0_3[2:0]           ), //i
    .port_b_0_1 (sbx_0_0[2:0]              ), //i
    .port_b_1_1 (sbx_0_1[2:0]              ), //i
    .port_Bl    (bl_0[2:0]                 ), //i
    .port_Bh    (bh_0[2:0]                 ), //i
    .port_bb    (bb_0[2:0]                 ), //i
    .port_o_0   (gF_MULS_4_14_port_o_0[2:0]), //o
    .port_o_1   (gF_MULS_4_14_port_o_1[2:0]), //o
    .port_o_2   (gF_MULS_4_14_port_o_2[2:0]), //o
    .port_o_3   (gF_MULS_4_14_port_o_3[2:0])  //o
  );
  GF_MULS_4 gF_MULS_4_15 (
    .port_A_0   (port_a_1_0[2:0]           ), //i
    .port_A_1   (port_a_1_1[2:0]           ), //i
    .port_A_2   (port_a_1_2[2:0]           ), //i
    .port_A_3   (port_a_1_3[2:0]           ), //i
    .port_a_0_1 (sax_1_0[2:0]              ), //i
    .port_a_1_1 (sax_1_1[2:0]              ), //i
    .port_Al    (al_1[2:0]                 ), //i
    .port_Ah    (ah_1[2:0]                 ), //i
    .port_aa    (aa_1[2:0]                 ), //i
    .port_B_0   (port_b_1_0[2:0]           ), //i
    .port_B_1   (port_b_1_1[2:0]           ), //i
    .port_B_2   (port_b_1_2[2:0]           ), //i
    .port_B_3   (port_b_1_3[2:0]           ), //i
    .port_b_0_1 (sbx_1_0[2:0]              ), //i
    .port_b_1_1 (sbx_1_1[2:0]              ), //i
    .port_Bl    (bl_1[2:0]                 ), //i
    .port_Bh    (bh_1[2:0]                 ), //i
    .port_bb    (bb_1[2:0]                 ), //i
    .port_o_0   (gF_MULS_4_15_port_o_0[2:0]), //o
    .port_o_1   (gF_MULS_4_15_port_o_1[2:0]), //o
    .port_o_2   (gF_MULS_4_15_port_o_2[2:0]), //o
    .port_o_3   (gF_MULS_4_15_port_o_3[2:0])  //o
  );
  Majority majority_264 (
    .port_i (refVal_0_0[2:0]    ), //i
    .port_o (majority_264_port_o)  //o
  );
  Majority majority_265 (
    .port_i (refVal_0_1[2:0]    ), //i
    .port_o (majority_265_port_o)  //o
  );
  Majority majority_266 (
    .port_i (refVal_0_2[2:0]    ), //i
    .port_o (majority_266_port_o)  //o
  );
  Majority majority_267 (
    .port_i (refVal_0_3[2:0]    ), //i
    .port_o (majority_267_port_o)  //o
  );
  Majority majority_268 (
    .port_i (refVal_1_0[2:0]    ), //i
    .port_o (majority_268_port_o)  //o
  );
  Majority majority_269 (
    .port_i (refVal_1_1[2:0]    ), //i
    .port_o (majority_269_port_o)  //o
  );
  Majority majority_270 (
    .port_i (refVal_1_2[2:0]    ), //i
    .port_o (majority_270_port_o)  //o
  );
  Majority majority_271 (
    .port_i (refVal_1_3[2:0]    ), //i
    .port_o (majority_271_port_o)  //o
  );
  Majority majority_272 (
    .port_i (refVal_2_0[2:0]    ), //i
    .port_o (majority_272_port_o)  //o
  );
  Majority majority_273 (
    .port_i (refVal_2_1[2:0]    ), //i
    .port_o (majority_273_port_o)  //o
  );
  Majority majority_274 (
    .port_i (refVal_2_2[2:0]    ), //i
    .port_o (majority_274_port_o)  //o
  );
  Majority majority_275 (
    .port_i (refVal_2_3[2:0]    ), //i
    .port_o (majority_275_port_o)  //o
  );
  Majority majority_276 (
    .port_i (refVal_3_0[2:0]    ), //i
    .port_o (majority_276_port_o)  //o
  );
  Majority majority_277 (
    .port_i (refVal_3_1[2:0]    ), //i
    .port_o (majority_277_port_o)  //o
  );
  Majority majority_278 (
    .port_i (refVal_3_2[2:0]    ), //i
    .port_o (majority_278_port_o)  //o
  );
  Majority majority_279 (
    .port_i (refVal_3_3[2:0]    ), //i
    .port_o (majority_279_port_o)  //o
  );
  Majority majority_280 (
    .port_i (refVal_0_0[2:0]    ), //i
    .port_o (majority_280_port_o)  //o
  );
  Majority majority_281 (
    .port_i (refVal_0_1[2:0]    ), //i
    .port_o (majority_281_port_o)  //o
  );
  Majority majority_282 (
    .port_i (refVal_0_2[2:0]    ), //i
    .port_o (majority_282_port_o)  //o
  );
  Majority majority_283 (
    .port_i (refVal_0_3[2:0]    ), //i
    .port_o (majority_283_port_o)  //o
  );
  Majority majority_284 (
    .port_i (refVal_1_0[2:0]    ), //i
    .port_o (majority_284_port_o)  //o
  );
  Majority majority_285 (
    .port_i (refVal_1_1[2:0]    ), //i
    .port_o (majority_285_port_o)  //o
  );
  Majority majority_286 (
    .port_i (refVal_1_2[2:0]    ), //i
    .port_o (majority_286_port_o)  //o
  );
  Majority majority_287 (
    .port_i (refVal_1_3[2:0]    ), //i
    .port_o (majority_287_port_o)  //o
  );
  Majority majority_288 (
    .port_i (refVal_2_0[2:0]    ), //i
    .port_o (majority_288_port_o)  //o
  );
  Majority majority_289 (
    .port_i (refVal_2_1[2:0]    ), //i
    .port_o (majority_289_port_o)  //o
  );
  Majority majority_290 (
    .port_i (refVal_2_2[2:0]    ), //i
    .port_o (majority_290_port_o)  //o
  );
  Majority majority_291 (
    .port_i (refVal_2_3[2:0]    ), //i
    .port_o (majority_291_port_o)  //o
  );
  Majority majority_292 (
    .port_i (refVal_3_0[2:0]    ), //i
    .port_o (majority_292_port_o)  //o
  );
  Majority majority_293 (
    .port_i (refVal_3_1[2:0]    ), //i
    .port_o (majority_293_port_o)  //o
  );
  Majority majority_294 (
    .port_i (refVal_3_2[2:0]    ), //i
    .port_o (majority_294_port_o)  //o
  );
  Majority majority_295 (
    .port_i (refVal_3_3[2:0]    ), //i
    .port_o (majority_295_port_o)  //o
  );
  Majority majority_296 (
    .port_i (refVal_0_0[2:0]    ), //i
    .port_o (majority_296_port_o)  //o
  );
  Majority majority_297 (
    .port_i (refVal_0_1[2:0]    ), //i
    .port_o (majority_297_port_o)  //o
  );
  Majority majority_298 (
    .port_i (refVal_0_2[2:0]    ), //i
    .port_o (majority_298_port_o)  //o
  );
  Majority majority_299 (
    .port_i (refVal_0_3[2:0]    ), //i
    .port_o (majority_299_port_o)  //o
  );
  Majority majority_300 (
    .port_i (refVal_1_0[2:0]    ), //i
    .port_o (majority_300_port_o)  //o
  );
  Majority majority_301 (
    .port_i (refVal_1_1[2:0]    ), //i
    .port_o (majority_301_port_o)  //o
  );
  Majority majority_302 (
    .port_i (refVal_1_2[2:0]    ), //i
    .port_o (majority_302_port_o)  //o
  );
  Majority majority_303 (
    .port_i (refVal_1_3[2:0]    ), //i
    .port_o (majority_303_port_o)  //o
  );
  Majority majority_304 (
    .port_i (refVal_2_0[2:0]    ), //i
    .port_o (majority_304_port_o)  //o
  );
  Majority majority_305 (
    .port_i (refVal_2_1[2:0]    ), //i
    .port_o (majority_305_port_o)  //o
  );
  Majority majority_306 (
    .port_i (refVal_2_2[2:0]    ), //i
    .port_o (majority_306_port_o)  //o
  );
  Majority majority_307 (
    .port_i (refVal_2_3[2:0]    ), //i
    .port_o (majority_307_port_o)  //o
  );
  Majority majority_308 (
    .port_i (refVal_3_0[2:0]    ), //i
    .port_o (majority_308_port_o)  //o
  );
  Majority majority_309 (
    .port_i (refVal_3_1[2:0]    ), //i
    .port_o (majority_309_port_o)  //o
  );
  Majority majority_310 (
    .port_i (refVal_3_2[2:0]    ), //i
    .port_o (majority_310_port_o)  //o
  );
  Majority majority_311 (
    .port_i (refVal_3_3[2:0]    ), //i
    .port_o (majority_311_port_o)  //o
  );
  assign sq_0_port_i_0 = (port_a_0_0 ^ port_b_0_0);
  assign sq_0_port_i_1 = (port_a_0_1 ^ port_b_0_1);
  assign sq_0_port_i_2 = (port_a_0_2 ^ port_b_0_2);
  assign sq_0_port_i_3 = (port_a_0_3 ^ port_b_0_3);
  assign sq_0_0 = sq_0_port_o_0;
  assign sq_0_1 = sq_0_port_o_1;
  assign sq_0_2 = sq_0_port_o_2;
  assign sq_0_3 = sq_0_port_o_3;
  assign sq_1_port_i_0 = (port_a_1_0 ^ port_b_1_0);
  assign sq_1_port_i_1 = (port_a_1_1 ^ port_b_1_1);
  assign sq_1_port_i_2 = (port_a_1_2 ^ port_b_1_2);
  assign sq_1_port_i_3 = (port_a_1_3 ^ port_b_1_3);
  assign sq_1_0 = sq_1_port_o_0;
  assign sq_1_1 = sq_1_port_o_1;
  assign sq_1_2 = sq_1_port_o_2;
  assign sq_1_3 = sq_1_port_o_3;
  assign sax_0_0 = (port_a_0_2 ^ port_a_0_0);
  assign sax_0_1 = (port_a_0_3 ^ port_a_0_1);
  assign sbx_0_0 = (port_b_0_2 ^ port_b_0_0);
  assign sbx_0_1 = (port_b_0_3 ^ port_b_0_1);
  assign al_0 = (port_a_0_1 ^ port_a_0_0);
  assign ah_0 = (port_a_0_3 ^ port_a_0_2);
  assign aa_0 = (sax_0_1 ^ sax_0_0);
  assign bl_0 = (port_b_0_1 ^ port_b_0_0);
  assign bh_0 = (port_b_0_3 ^ port_b_0_2);
  assign bb_0 = (sbx_0_1 ^ sbx_0_0);
  assign sax_1_0 = (port_a_1_2 ^ port_a_1_0);
  assign sax_1_1 = (port_a_1_3 ^ port_a_1_1);
  assign sbx_1_0 = (port_b_1_2 ^ port_b_1_0);
  assign sbx_1_1 = (port_b_1_3 ^ port_b_1_1);
  assign al_1 = (port_a_1_1 ^ port_a_1_0);
  assign ah_1 = (port_a_1_3 ^ port_a_1_2);
  assign aa_1 = (sax_1_1 ^ sax_1_0);
  assign bl_1 = (port_b_1_1 ^ port_b_1_0);
  assign bh_1 = (port_b_1_3 ^ port_b_1_2);
  assign bb_1 = (sbx_1_1 ^ sbx_1_0);
  assign outVal_0_0 = (gF_MULS_4_12_port_o_0 ^ sq_0_0);
  assign outVal_0_1 = (gF_MULS_4_12_port_o_1 ^ sq_0_1);
  assign outVal_0_2 = (gF_MULS_4_12_port_o_2 ^ sq_0_2);
  assign outVal_0_3 = (gF_MULS_4_12_port_o_3 ^ sq_0_3);
  assign outVal_2_0 = gF_MULS_4_13_port_o_0;
  assign outVal_2_1 = gF_MULS_4_13_port_o_1;
  assign outVal_2_2 = gF_MULS_4_13_port_o_2;
  assign outVal_2_3 = gF_MULS_4_13_port_o_3;
  assign outVal_1_0 = gF_MULS_4_14_port_o_0;
  assign outVal_1_1 = gF_MULS_4_14_port_o_1;
  assign outVal_1_2 = gF_MULS_4_14_port_o_2;
  assign outVal_1_3 = gF_MULS_4_14_port_o_3;
  assign outVal_3_0 = (gF_MULS_4_15_port_o_0 ^ sq_1_0);
  assign outVal_3_1 = (gF_MULS_4_15_port_o_1 ^ sq_1_1);
  assign outVal_3_2 = (gF_MULS_4_15_port_o_2 ^ sq_1_2);
  assign outVal_3_3 = (gF_MULS_4_15_port_o_3 ^ sq_1_3);
  always @(*) begin
    refVal_0_0[0] = ((outVal_0_0[0] ^ port_r_0_0) ^ port_r_1_0);
    refVal_0_0[1] = ((outVal_0_0[1] ^ port_r_0_0) ^ port_r_1_0);
    refVal_0_0[2] = ((outVal_0_0[2] ^ port_r_0_0) ^ port_r_1_0);
  end

  always @(*) begin
    refVal_0_1[0] = ((outVal_0_1[0] ^ port_r_0_1) ^ port_r_1_1);
    refVal_0_1[1] = ((outVal_0_1[1] ^ port_r_0_1) ^ port_r_1_1);
    refVal_0_1[2] = ((outVal_0_1[2] ^ port_r_0_1) ^ port_r_1_1);
  end

  always @(*) begin
    refVal_0_2[0] = ((outVal_0_2[0] ^ port_r_0_2) ^ port_r_1_2);
    refVal_0_2[1] = ((outVal_0_2[1] ^ port_r_0_2) ^ port_r_1_2);
    refVal_0_2[2] = ((outVal_0_2[2] ^ port_r_0_2) ^ port_r_1_2);
  end

  always @(*) begin
    refVal_0_3[0] = ((outVal_0_3[0] ^ port_r_0_3) ^ port_r_1_3);
    refVal_0_3[1] = ((outVal_0_3[1] ^ port_r_0_3) ^ port_r_1_3);
    refVal_0_3[2] = ((outVal_0_3[2] ^ port_r_0_3) ^ port_r_1_3);
  end

  always @(*) begin
    refVal_1_0[0] = ((outVal_1_0[0] ^ port_r_1_0) ^ port_r_2_0);
    refVal_1_0[1] = ((outVal_1_0[1] ^ port_r_1_0) ^ port_r_2_0);
    refVal_1_0[2] = ((outVal_1_0[2] ^ port_r_1_0) ^ port_r_2_0);
  end

  always @(*) begin
    refVal_1_1[0] = ((outVal_1_1[0] ^ port_r_1_1) ^ port_r_2_1);
    refVal_1_1[1] = ((outVal_1_1[1] ^ port_r_1_1) ^ port_r_2_1);
    refVal_1_1[2] = ((outVal_1_1[2] ^ port_r_1_1) ^ port_r_2_1);
  end

  always @(*) begin
    refVal_1_2[0] = ((outVal_1_2[0] ^ port_r_1_2) ^ port_r_2_2);
    refVal_1_2[1] = ((outVal_1_2[1] ^ port_r_1_2) ^ port_r_2_2);
    refVal_1_2[2] = ((outVal_1_2[2] ^ port_r_1_2) ^ port_r_2_2);
  end

  always @(*) begin
    refVal_1_3[0] = ((outVal_1_3[0] ^ port_r_1_3) ^ port_r_2_3);
    refVal_1_3[1] = ((outVal_1_3[1] ^ port_r_1_3) ^ port_r_2_3);
    refVal_1_3[2] = ((outVal_1_3[2] ^ port_r_1_3) ^ port_r_2_3);
  end

  always @(*) begin
    refVal_2_0[0] = ((outVal_2_0[0] ^ port_r_2_0) ^ port_r_3_0);
    refVal_2_0[1] = ((outVal_2_0[1] ^ port_r_2_0) ^ port_r_3_0);
    refVal_2_0[2] = ((outVal_2_0[2] ^ port_r_2_0) ^ port_r_3_0);
  end

  always @(*) begin
    refVal_2_1[0] = ((outVal_2_1[0] ^ port_r_2_1) ^ port_r_3_1);
    refVal_2_1[1] = ((outVal_2_1[1] ^ port_r_2_1) ^ port_r_3_1);
    refVal_2_1[2] = ((outVal_2_1[2] ^ port_r_2_1) ^ port_r_3_1);
  end

  always @(*) begin
    refVal_2_2[0] = ((outVal_2_2[0] ^ port_r_2_2) ^ port_r_3_2);
    refVal_2_2[1] = ((outVal_2_2[1] ^ port_r_2_2) ^ port_r_3_2);
    refVal_2_2[2] = ((outVal_2_2[2] ^ port_r_2_2) ^ port_r_3_2);
  end

  always @(*) begin
    refVal_2_3[0] = ((outVal_2_3[0] ^ port_r_2_3) ^ port_r_3_3);
    refVal_2_3[1] = ((outVal_2_3[1] ^ port_r_2_3) ^ port_r_3_3);
    refVal_2_3[2] = ((outVal_2_3[2] ^ port_r_2_3) ^ port_r_3_3);
  end

  always @(*) begin
    refVal_3_0[0] = ((outVal_3_0[0] ^ port_r_3_0) ^ port_r_0_0);
    refVal_3_0[1] = ((outVal_3_0[1] ^ port_r_3_0) ^ port_r_0_0);
    refVal_3_0[2] = ((outVal_3_0[2] ^ port_r_3_0) ^ port_r_0_0);
  end

  always @(*) begin
    refVal_3_1[0] = ((outVal_3_1[0] ^ port_r_3_1) ^ port_r_0_1);
    refVal_3_1[1] = ((outVal_3_1[1] ^ port_r_3_1) ^ port_r_0_1);
    refVal_3_1[2] = ((outVal_3_1[2] ^ port_r_3_1) ^ port_r_0_1);
  end

  always @(*) begin
    refVal_3_2[0] = ((outVal_3_2[0] ^ port_r_3_2) ^ port_r_0_2);
    refVal_3_2[1] = ((outVal_3_2[1] ^ port_r_3_2) ^ port_r_0_2);
    refVal_3_2[2] = ((outVal_3_2[2] ^ port_r_3_2) ^ port_r_0_2);
  end

  always @(*) begin
    refVal_3_3[0] = ((outVal_3_3[0] ^ port_r_3_3) ^ port_r_0_3);
    refVal_3_3[1] = ((outVal_3_3[1] ^ port_r_3_3) ^ port_r_0_3);
    refVal_3_3[2] = ((outVal_3_3[2] ^ port_r_3_3) ^ port_r_0_3);
  end

  assign port_y_0_0 = outReg_0_0;
  assign port_y_0_1 = outReg_0_1;
  assign port_y_0_2 = outReg_0_2;
  assign port_y_0_3 = outReg_0_3;
  assign port_y_1_0 = outReg_1_0;
  assign port_y_1_1 = outReg_1_1;
  assign port_y_1_2 = outReg_1_2;
  assign port_y_1_3 = outReg_1_3;
  assign port_y_2_0 = outReg_2_0;
  assign port_y_2_1 = outReg_2_1;
  assign port_y_2_2 = outReg_2_2;
  assign port_y_2_3 = outReg_2_3;
  assign port_y_3_0 = outReg_3_0;
  assign port_y_3_1 = outReg_3_1;
  assign port_y_3_2 = outReg_3_2;
  assign port_y_3_3 = outReg_3_3;
  always @(posedge clk) begin
    outReg_0_0[0] <= majority_264_port_o;
    outReg_0_1[0] <= majority_265_port_o;
    outReg_0_2[0] <= majority_266_port_o;
    outReg_0_3[0] <= majority_267_port_o;
    outReg_1_0[0] <= majority_268_port_o;
    outReg_1_1[0] <= majority_269_port_o;
    outReg_1_2[0] <= majority_270_port_o;
    outReg_1_3[0] <= majority_271_port_o;
    outReg_2_0[0] <= majority_272_port_o;
    outReg_2_1[0] <= majority_273_port_o;
    outReg_2_2[0] <= majority_274_port_o;
    outReg_2_3[0] <= majority_275_port_o;
    outReg_3_0[0] <= majority_276_port_o;
    outReg_3_1[0] <= majority_277_port_o;
    outReg_3_2[0] <= majority_278_port_o;
    outReg_3_3[0] <= majority_279_port_o;
    outReg_0_0[1] <= majority_280_port_o;
    outReg_0_1[1] <= majority_281_port_o;
    outReg_0_2[1] <= majority_282_port_o;
    outReg_0_3[1] <= majority_283_port_o;
    outReg_1_0[1] <= majority_284_port_o;
    outReg_1_1[1] <= majority_285_port_o;
    outReg_1_2[1] <= majority_286_port_o;
    outReg_1_3[1] <= majority_287_port_o;
    outReg_2_0[1] <= majority_288_port_o;
    outReg_2_1[1] <= majority_289_port_o;
    outReg_2_2[1] <= majority_290_port_o;
    outReg_2_3[1] <= majority_291_port_o;
    outReg_3_0[1] <= majority_292_port_o;
    outReg_3_1[1] <= majority_293_port_o;
    outReg_3_2[1] <= majority_294_port_o;
    outReg_3_3[1] <= majority_295_port_o;
    outReg_0_0[2] <= majority_296_port_o;
    outReg_0_1[2] <= majority_297_port_o;
    outReg_0_2[2] <= majority_298_port_o;
    outReg_0_3[2] <= majority_299_port_o;
    outReg_1_0[2] <= majority_300_port_o;
    outReg_1_1[2] <= majority_301_port_o;
    outReg_1_2[2] <= majority_302_port_o;
    outReg_1_3[2] <= majority_303_port_o;
    outReg_2_0[2] <= majority_304_port_o;
    outReg_2_1[2] <= majority_305_port_o;
    outReg_2_2[2] <= majority_306_port_o;
    outReg_2_3[2] <= majority_307_port_o;
    outReg_3_0[2] <= majority_308_port_o;
    outReg_3_1[2] <= majority_309_port_o;
    outReg_3_2[2] <= majority_310_port_o;
    outReg_3_3[2] <= majority_311_port_o;
  end


endmodule

module CMS_stage1 (
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

  wire                majority_264_port_o;
  wire                majority_265_port_o;
  wire                majority_266_port_o;
  wire                majority_267_port_o;
  wire                majority_268_port_o;
  wire                majority_269_port_o;
  wire                majority_270_port_o;
  wire                majority_271_port_o;
  wire                majority_272_port_o;
  wire                majority_273_port_o;
  wire                majority_274_port_o;
  wire                majority_275_port_o;
  wire                majority_276_port_o;
  wire                majority_277_port_o;
  wire                majority_278_port_o;
  wire                majority_279_port_o;
  wire                majority_280_port_o;
  wire                majority_281_port_o;
  wire                majority_282_port_o;
  wire                majority_283_port_o;
  wire                majority_284_port_o;
  wire                majority_285_port_o;
  wire                majority_286_port_o;
  wire                majority_287_port_o;
  wire                majority_288_port_o;
  wire                majority_289_port_o;
  wire                majority_290_port_o;
  wire                majority_291_port_o;
  wire                majority_292_port_o;
  wire                majority_293_port_o;
  wire                majority_294_port_o;
  wire                majority_295_port_o;
  wire                majority_296_port_o;
  wire                majority_297_port_o;
  wire                majority_298_port_o;
  wire                majority_299_port_o;
  wire                majority_300_port_o;
  wire                majority_301_port_o;
  wire                majority_302_port_o;
  wire                majority_303_port_o;
  wire                majority_304_port_o;
  wire                majority_305_port_o;
  wire                majority_306_port_o;
  wire                majority_307_port_o;
  wire                majority_308_port_o;
  wire                majority_309_port_o;
  wire                majority_310_port_o;
  wire                majority_311_port_o;
  reg        [2:0]    outReg_0_0;
  reg        [2:0]    outReg_0_1;
  reg        [2:0]    outReg_0_2;
  reg        [2:0]    outReg_0_3;
  reg        [2:0]    outReg_0_4;
  reg        [2:0]    outReg_0_5;
  reg        [2:0]    outReg_0_6;
  reg        [2:0]    outReg_0_7;
  reg        [2:0]    outReg_1_0;
  reg        [2:0]    outReg_1_1;
  reg        [2:0]    outReg_1_2;
  reg        [2:0]    outReg_1_3;
  reg        [2:0]    outReg_1_4;
  reg        [2:0]    outReg_1_5;
  reg        [2:0]    outReg_1_6;
  reg        [2:0]    outReg_1_7;
  wire       [2:0]    outVal_0_0;
  wire       [2:0]    outVal_0_1;
  wire       [2:0]    outVal_0_2;
  wire       [2:0]    outVal_0_3;
  wire       [2:0]    outVal_0_4;
  wire       [2:0]    outVal_0_5;
  wire       [2:0]    outVal_0_6;
  wire       [2:0]    outVal_0_7;
  wire       [2:0]    outVal_1_0;
  wire       [2:0]    outVal_1_1;
  wire       [2:0]    outVal_1_2;
  wire       [2:0]    outVal_1_3;
  wire       [2:0]    outVal_1_4;
  wire       [2:0]    outVal_1_5;
  wire       [2:0]    outVal_1_6;
  wire       [2:0]    outVal_1_7;
  wire       [2:0]    rx1_0;
  wire       [2:0]    rx2_0;
  wire       [2:0]    rx3_0;
  wire       [2:0]    rx4_0;
  wire       [2:0]    rx5_0;
  wire       [2:0]    rx6_0;
  wire       [2:0]    rx7_0;
  wire       [2:0]    rx8_0;
  wire       [2:0]    rx9_0;
  wire       [2:0]    rx1_1;
  wire       [2:0]    rx2_1;
  wire       [2:0]    rx3_1;
  wire       [2:0]    rx4_1;
  wire       [2:0]    rx5_1;
  wire       [2:0]    rx6_1;
  wire       [2:0]    rx7_1;
  wire       [2:0]    rx8_1;
  wire       [2:0]    rx9_1;

  Majority majority_264 (
    .port_i (outVal_0_0[2:0]    ), //i
    .port_o (majority_264_port_o)  //o
  );
  Majority majority_265 (
    .port_i (outVal_0_1[2:0]    ), //i
    .port_o (majority_265_port_o)  //o
  );
  Majority majority_266 (
    .port_i (outVal_0_2[2:0]    ), //i
    .port_o (majority_266_port_o)  //o
  );
  Majority majority_267 (
    .port_i (outVal_0_3[2:0]    ), //i
    .port_o (majority_267_port_o)  //o
  );
  Majority majority_268 (
    .port_i (outVal_0_4[2:0]    ), //i
    .port_o (majority_268_port_o)  //o
  );
  Majority majority_269 (
    .port_i (outVal_0_5[2:0]    ), //i
    .port_o (majority_269_port_o)  //o
  );
  Majority majority_270 (
    .port_i (outVal_0_6[2:0]    ), //i
    .port_o (majority_270_port_o)  //o
  );
  Majority majority_271 (
    .port_i (outVal_0_7[2:0]    ), //i
    .port_o (majority_271_port_o)  //o
  );
  Majority majority_272 (
    .port_i (outVal_1_0[2:0]    ), //i
    .port_o (majority_272_port_o)  //o
  );
  Majority majority_273 (
    .port_i (outVal_1_1[2:0]    ), //i
    .port_o (majority_273_port_o)  //o
  );
  Majority majority_274 (
    .port_i (outVal_1_2[2:0]    ), //i
    .port_o (majority_274_port_o)  //o
  );
  Majority majority_275 (
    .port_i (outVal_1_3[2:0]    ), //i
    .port_o (majority_275_port_o)  //o
  );
  Majority majority_276 (
    .port_i (outVal_1_4[2:0]    ), //i
    .port_o (majority_276_port_o)  //o
  );
  Majority majority_277 (
    .port_i (outVal_1_5[2:0]    ), //i
    .port_o (majority_277_port_o)  //o
  );
  Majority majority_278 (
    .port_i (outVal_1_6[2:0]    ), //i
    .port_o (majority_278_port_o)  //o
  );
  Majority majority_279 (
    .port_i (outVal_1_7[2:0]    ), //i
    .port_o (majority_279_port_o)  //o
  );
  Majority majority_280 (
    .port_i (outVal_0_0[2:0]    ), //i
    .port_o (majority_280_port_o)  //o
  );
  Majority majority_281 (
    .port_i (outVal_0_1[2:0]    ), //i
    .port_o (majority_281_port_o)  //o
  );
  Majority majority_282 (
    .port_i (outVal_0_2[2:0]    ), //i
    .port_o (majority_282_port_o)  //o
  );
  Majority majority_283 (
    .port_i (outVal_0_3[2:0]    ), //i
    .port_o (majority_283_port_o)  //o
  );
  Majority majority_284 (
    .port_i (outVal_0_4[2:0]    ), //i
    .port_o (majority_284_port_o)  //o
  );
  Majority majority_285 (
    .port_i (outVal_0_5[2:0]    ), //i
    .port_o (majority_285_port_o)  //o
  );
  Majority majority_286 (
    .port_i (outVal_0_6[2:0]    ), //i
    .port_o (majority_286_port_o)  //o
  );
  Majority majority_287 (
    .port_i (outVal_0_7[2:0]    ), //i
    .port_o (majority_287_port_o)  //o
  );
  Majority majority_288 (
    .port_i (outVal_1_0[2:0]    ), //i
    .port_o (majority_288_port_o)  //o
  );
  Majority majority_289 (
    .port_i (outVal_1_1[2:0]    ), //i
    .port_o (majority_289_port_o)  //o
  );
  Majority majority_290 (
    .port_i (outVal_1_2[2:0]    ), //i
    .port_o (majority_290_port_o)  //o
  );
  Majority majority_291 (
    .port_i (outVal_1_3[2:0]    ), //i
    .port_o (majority_291_port_o)  //o
  );
  Majority majority_292 (
    .port_i (outVal_1_4[2:0]    ), //i
    .port_o (majority_292_port_o)  //o
  );
  Majority majority_293 (
    .port_i (outVal_1_5[2:0]    ), //i
    .port_o (majority_293_port_o)  //o
  );
  Majority majority_294 (
    .port_i (outVal_1_6[2:0]    ), //i
    .port_o (majority_294_port_o)  //o
  );
  Majority majority_295 (
    .port_i (outVal_1_7[2:0]    ), //i
    .port_o (majority_295_port_o)  //o
  );
  Majority majority_296 (
    .port_i (outVal_0_0[2:0]    ), //i
    .port_o (majority_296_port_o)  //o
  );
  Majority majority_297 (
    .port_i (outVal_0_1[2:0]    ), //i
    .port_o (majority_297_port_o)  //o
  );
  Majority majority_298 (
    .port_i (outVal_0_2[2:0]    ), //i
    .port_o (majority_298_port_o)  //o
  );
  Majority majority_299 (
    .port_i (outVal_0_3[2:0]    ), //i
    .port_o (majority_299_port_o)  //o
  );
  Majority majority_300 (
    .port_i (outVal_0_4[2:0]    ), //i
    .port_o (majority_300_port_o)  //o
  );
  Majority majority_301 (
    .port_i (outVal_0_5[2:0]    ), //i
    .port_o (majority_301_port_o)  //o
  );
  Majority majority_302 (
    .port_i (outVal_0_6[2:0]    ), //i
    .port_o (majority_302_port_o)  //o
  );
  Majority majority_303 (
    .port_i (outVal_0_7[2:0]    ), //i
    .port_o (majority_303_port_o)  //o
  );
  Majority majority_304 (
    .port_i (outVal_1_0[2:0]    ), //i
    .port_o (majority_304_port_o)  //o
  );
  Majority majority_305 (
    .port_i (outVal_1_1[2:0]    ), //i
    .port_o (majority_305_port_o)  //o
  );
  Majority majority_306 (
    .port_i (outVal_1_2[2:0]    ), //i
    .port_o (majority_306_port_o)  //o
  );
  Majority majority_307 (
    .port_i (outVal_1_3[2:0]    ), //i
    .port_o (majority_307_port_o)  //o
  );
  Majority majority_308 (
    .port_i (outVal_1_4[2:0]    ), //i
    .port_o (majority_308_port_o)  //o
  );
  Majority majority_309 (
    .port_i (outVal_1_5[2:0]    ), //i
    .port_o (majority_309_port_o)  //o
  );
  Majority majority_310 (
    .port_i (outVal_1_6[2:0]    ), //i
    .port_o (majority_310_port_o)  //o
  );
  Majority majority_311 (
    .port_i (outVal_1_7[2:0]    ), //i
    .port_o (majority_311_port_o)  //o
  );
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
  assign rx1_1 = (port_i_1_7 ^ port_i_1_5);
  assign rx2_1 = (port_i_1_7 ^ port_i_1_4);
  assign rx3_1 = (port_i_1_6 ^ port_i_1_0);
  assign rx4_1 = (port_i_1_5 ^ rx3_1);
  assign rx5_1 = (port_i_1_4 ^ rx4_1);
  assign rx6_1 = (port_i_1_3 ^ port_i_1_0);
  assign rx7_1 = (port_i_1_2 ^ rx1_1);
  assign rx8_1 = (port_i_1_1 ^ rx3_1);
  assign rx9_1 = (port_i_1_3 ^ rx8_1);
  assign outVal_1_7 = (rx7_1 ^ rx8_1);
  assign outVal_1_6 = rx5_1;
  assign outVal_1_5 = (port_i_1_1 ^ rx4_1);
  assign outVal_1_4 = (rx1_1 ^ rx3_1);
  assign outVal_1_3 = ((port_i_1_1 ^ rx2_1) ^ rx6_1);
  assign outVal_1_2 = port_i_1_0;
  assign outVal_1_1 = rx4_1;
  assign outVal_1_0 = (port_i_1_2 ^ rx9_1);
  assign port_o_0_0 = outReg_0_0;
  assign port_o_0_1 = outReg_0_1;
  assign port_o_0_2 = outReg_0_2;
  assign port_o_0_3 = outReg_0_3;
  assign port_o_0_4 = outReg_0_4;
  assign port_o_0_5 = outReg_0_5;
  assign port_o_0_6 = outReg_0_6;
  assign port_o_0_7 = outReg_0_7;
  assign port_o_1_0 = outReg_1_0;
  assign port_o_1_1 = outReg_1_1;
  assign port_o_1_2 = outReg_1_2;
  assign port_o_1_3 = outReg_1_3;
  assign port_o_1_4 = outReg_1_4;
  assign port_o_1_5 = outReg_1_5;
  assign port_o_1_6 = outReg_1_6;
  assign port_o_1_7 = outReg_1_7;
  always @(posedge clk) begin
    outReg_0_0[0] <= majority_264_port_o;
    outReg_0_1[0] <= majority_265_port_o;
    outReg_0_2[0] <= majority_266_port_o;
    outReg_0_3[0] <= majority_267_port_o;
    outReg_0_4[0] <= majority_268_port_o;
    outReg_0_5[0] <= majority_269_port_o;
    outReg_0_6[0] <= majority_270_port_o;
    outReg_0_7[0] <= majority_271_port_o;
    outReg_1_0[0] <= majority_272_port_o;
    outReg_1_1[0] <= majority_273_port_o;
    outReg_1_2[0] <= majority_274_port_o;
    outReg_1_3[0] <= majority_275_port_o;
    outReg_1_4[0] <= majority_276_port_o;
    outReg_1_5[0] <= majority_277_port_o;
    outReg_1_6[0] <= majority_278_port_o;
    outReg_1_7[0] <= majority_279_port_o;
    outReg_0_0[1] <= majority_280_port_o;
    outReg_0_1[1] <= majority_281_port_o;
    outReg_0_2[1] <= majority_282_port_o;
    outReg_0_3[1] <= majority_283_port_o;
    outReg_0_4[1] <= majority_284_port_o;
    outReg_0_5[1] <= majority_285_port_o;
    outReg_0_6[1] <= majority_286_port_o;
    outReg_0_7[1] <= majority_287_port_o;
    outReg_1_0[1] <= majority_288_port_o;
    outReg_1_1[1] <= majority_289_port_o;
    outReg_1_2[1] <= majority_290_port_o;
    outReg_1_3[1] <= majority_291_port_o;
    outReg_1_4[1] <= majority_292_port_o;
    outReg_1_5[1] <= majority_293_port_o;
    outReg_1_6[1] <= majority_294_port_o;
    outReg_1_7[1] <= majority_295_port_o;
    outReg_0_0[2] <= majority_296_port_o;
    outReg_0_1[2] <= majority_297_port_o;
    outReg_0_2[2] <= majority_298_port_o;
    outReg_0_3[2] <= majority_299_port_o;
    outReg_0_4[2] <= majority_300_port_o;
    outReg_0_5[2] <= majority_301_port_o;
    outReg_0_6[2] <= majority_302_port_o;
    outReg_0_7[2] <= majority_303_port_o;
    outReg_1_0[2] <= majority_304_port_o;
    outReg_1_1[2] <= majority_305_port_o;
    outReg_1_2[2] <= majority_306_port_o;
    outReg_1_3[2] <= majority_307_port_o;
    outReg_1_4[2] <= majority_308_port_o;
    outReg_1_5[2] <= majority_309_port_o;
    outReg_1_6[2] <= majority_310_port_o;
    outReg_1_7[2] <= majority_311_port_o;
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

//GF_MULS_4 replaced by GF_MULS_4

//GF_MULS_4 replaced by GF_MULS_4

//GF_MULS_4 replaced by GF_MULS_4

//GF_MULS_4 replaced by GF_MULS_4

//GF_MULS_4 replaced by GF_MULS_4

//GF_MULS_4 replaced by GF_MULS_4

//GF_MULS_4 replaced by GF_MULS_4

//GF_MULS_4 replaced by GF_MULS_4

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

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_SQ_2 replaced by GF_SQ_2

//GF_SQ_2 replaced by GF_SQ_2

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

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_SCLW2_2 replaced by GF_SCLW2_2

//GF_SQ_2 replaced by GF_SQ_2

module GF_SCLW2_2 (
  input      [2:0]    port_i_0,
  input      [2:0]    port_i_1,
  output     [2:0]    port_o_0,
  output     [2:0]    port_o_1
);


  assign port_o_0 = (port_i_1 ^ port_i_0);
  assign port_o_1 = port_i_0;

endmodule

//GF_SQ_2 replaced by GF_SQ_2

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

//GF_MULS_4 replaced by GF_MULS_4

//GF_MULS_4 replaced by GF_MULS_4

//GF_MULS_4 replaced by GF_MULS_4

module GF_MULS_4 (
  input      [2:0]    port_A_0,
  input      [2:0]    port_A_1,
  input      [2:0]    port_A_2,
  input      [2:0]    port_A_3,
  input      [2:0]    port_a_0_1,
  input      [2:0]    port_a_1_1,
  input      [2:0]    port_Al,
  input      [2:0]    port_Ah,
  input      [2:0]    port_aa,
  input      [2:0]    port_B_0,
  input      [2:0]    port_B_1,
  input      [2:0]    port_B_2,
  input      [2:0]    port_B_3,
  input      [2:0]    port_b_0_1,
  input      [2:0]    port_b_1_1,
  input      [2:0]    port_Bl,
  input      [2:0]    port_Bh,
  input      [2:0]    port_bb,
  output     [2:0]    port_o_0,
  output     [2:0]    port_o_1,
  output     [2:0]    port_o_2,
  output     [2:0]    port_o_3
);

  wire       [2:0]    hi_mul_port_o_0;
  wire       [2:0]    hi_mul_port_o_1;
  wire       [2:0]    lo_mul_port_o_0;
  wire       [2:0]    lo_mul_port_o_1;
  wire       [2:0]    sum_mul_port_o_0;
  wire       [2:0]    sum_mul_port_o_1;
  wire       [2:0]    ph_0;
  wire       [2:0]    ph_1;
  wire       [2:0]    pl_0;
  wire       [2:0]    pl_1;
  wire       [2:0]    p_0;
  wire       [2:0]    p_1;

  GF_MULS_2 hi_mul (
    .port_a_0 (port_A_2[2:0]       ), //i
    .port_a_1 (port_A_3[2:0]       ), //i
    .port_ab  (port_Ah[2:0]        ), //i
    .port_b_0 (port_B_2[2:0]       ), //i
    .port_b_1 (port_B_3[2:0]       ), //i
    .port_cd  (port_Bh[2:0]        ), //i
    .port_o_0 (hi_mul_port_o_0[2:0]), //o
    .port_o_1 (hi_mul_port_o_1[2:0])  //o
  );
  GF_MULS_2 lo_mul (
    .port_a_0 (port_A_0[2:0]       ), //i
    .port_a_1 (port_A_1[2:0]       ), //i
    .port_ab  (port_Al[2:0]        ), //i
    .port_b_0 (port_B_0[2:0]       ), //i
    .port_b_1 (port_B_1[2:0]       ), //i
    .port_cd  (port_Bl[2:0]        ), //i
    .port_o_0 (lo_mul_port_o_0[2:0]), //o
    .port_o_1 (lo_mul_port_o_1[2:0])  //o
  );
  GF_MULS_SCL_2 sum_mul (
    .port_a_0 (port_a_0_1[2:0]      ), //i
    .port_a_1 (port_a_1_1[2:0]      ), //i
    .port_ab  (port_aa[2:0]         ), //i
    .port_b_0 (port_b_0_1[2:0]      ), //i
    .port_b_1 (port_b_1_1[2:0]      ), //i
    .port_cd  (port_bb[2:0]         ), //i
    .port_o_0 (sum_mul_port_o_0[2:0]), //o
    .port_o_1 (sum_mul_port_o_1[2:0])  //o
  );
  assign ph_0 = hi_mul_port_o_0;
  assign ph_1 = hi_mul_port_o_1;
  assign pl_0 = lo_mul_port_o_0;
  assign pl_1 = lo_mul_port_o_1;
  assign p_0 = sum_mul_port_o_0;
  assign p_1 = sum_mul_port_o_1;
  assign port_o_0 = (pl_0 ^ p_0);
  assign port_o_1 = (pl_1 ^ p_1);
  assign port_o_2 = (ph_0 ^ p_0);
  assign port_o_3 = (ph_1 ^ p_1);

endmodule

//GF_SQ_SCL_4 replaced by GF_SQ_SCL_4

module GF_SQ_SCL_4 (
  input      [2:0]    port_i_0,
  input      [2:0]    port_i_1,
  input      [2:0]    port_i_2,
  input      [2:0]    port_i_3,
  output     [2:0]    port_o_0,
  output     [2:0]    port_o_1,
  output     [2:0]    port_o_2,
  output     [2:0]    port_o_3
);

  wire       [2:0]    ab_sq_port_o_0;
  wire       [2:0]    ab_sq_port_o_1;
  wire       [2:0]    b_sq_port_o_0;
  wire       [2:0]    b_sq_port_o_1;
  wire       [2:0]    b_mulN2_port_o_0;
  wire       [2:0]    b_mulN2_port_o_1;
  wire       [2:0]    ax_0;
  wire       [2:0]    ax_1;
  wire       [2:0]    bx_0;
  wire       [2:0]    bx_1;
  wire       [2:0]    abx_0;
  wire       [2:0]    abx_1;
  wire       [2:0]    ab2x_0;
  wire       [2:0]    ab2x_1;
  wire       [2:0]    b2x_0;
  wire       [2:0]    b2x_1;
  wire       [2:0]    b2N2_0;
  wire       [2:0]    b2N2_1;

  GF_SQ_2 ab_sq (
    .port_i_0 (abx_0[2:0]         ), //i
    .port_i_1 (abx_1[2:0]         ), //i
    .port_o_0 (ab_sq_port_o_0[2:0]), //o
    .port_o_1 (ab_sq_port_o_1[2:0])  //o
  );
  GF_SQ_2 b_sq (
    .port_i_0 (bx_0[2:0]         ), //i
    .port_i_1 (bx_1[2:0]         ), //i
    .port_o_0 (b_sq_port_o_0[2:0]), //o
    .port_o_1 (b_sq_port_o_1[2:0])  //o
  );
  GF_SCLW_2 b_mulN2 (
    .port_i_0 (b2x_0[2:0]           ), //i
    .port_i_1 (b2x_1[2:0]           ), //i
    .port_o_0 (b_mulN2_port_o_0[2:0]), //o
    .port_o_1 (b_mulN2_port_o_1[2:0])  //o
  );
  assign ax_0 = port_i_2;
  assign ax_1 = port_i_3;
  assign bx_0 = port_i_0;
  assign bx_1 = port_i_1;
  assign abx_0 = (ax_0 ^ bx_0);
  assign abx_1 = (ax_1 ^ bx_1);
  assign ab2x_0 = ab_sq_port_o_0;
  assign ab2x_1 = ab_sq_port_o_1;
  assign b2x_0 = b_sq_port_o_0;
  assign b2x_1 = b_sq_port_o_1;
  assign b2N2_0 = b_mulN2_port_o_0;
  assign b2N2_1 = b_mulN2_port_o_1;
  assign port_o_0 = b2N2_0;
  assign port_o_1 = b2N2_1;
  assign port_o_2 = ab2x_0;
  assign port_o_3 = ab2x_1;

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

//GF_MULS_SCL_2 replaced by GF_MULS_SCL_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_SCL_2 replaced by GF_MULS_SCL_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_SCL_2 replaced by GF_MULS_SCL_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_SCL_2 replaced by GF_MULS_SCL_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_SCL_2 replaced by GF_MULS_SCL_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_SCL_2 replaced by GF_MULS_SCL_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_SCL_2 replaced by GF_MULS_SCL_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_SCL_2 replaced by GF_MULS_SCL_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_SCL_2 replaced by GF_MULS_SCL_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_SCL_2 replaced by GF_MULS_SCL_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_SCL_2 replaced by GF_MULS_SCL_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

module GF_MULS_SCL_2 (
  input      [2:0]    port_a_0,
  input      [2:0]    port_a_1,
  input      [2:0]    port_ab,
  input      [2:0]    port_b_0,
  input      [2:0]    port_b_1,
  input      [2:0]    port_cd,
  output     [2:0]    port_o_0,
  output     [2:0]    port_o_1
);

  wire       [2:0]    t;

  assign t = (~ (port_a_0 & port_b_0));
  assign port_o_0 = ((~ (port_a_1 & port_b_1)) ^ t);
  assign port_o_1 = ((~ (port_ab & port_cd)) ^ t);

endmodule

//GF_MULS_2 replaced by GF_MULS_2

module GF_MULS_2 (
  input      [2:0]    port_a_0,
  input      [2:0]    port_a_1,
  input      [2:0]    port_ab,
  input      [2:0]    port_b_0,
  input      [2:0]    port_b_1,
  input      [2:0]    port_cd,
  output     [2:0]    port_o_0,
  output     [2:0]    port_o_1
);

  wire       [2:0]    t;

  assign t = (~ (port_ab & port_cd));
  assign port_o_0 = ((~ (port_a_0 & port_b_0)) ^ t);
  assign port_o_1 = ((~ (port_a_1 & port_b_1)) ^ t);

endmodule

//GF_SCLW_2 replaced by GF_SCLW_2

//GF_SQ_2 replaced by GF_SQ_2

//GF_SQ_2 replaced by GF_SQ_2

module GF_SCLW_2 (
  input      [2:0]    port_i_0,
  input      [2:0]    port_i_1,
  output     [2:0]    port_o_0,
  output     [2:0]    port_o_1
);


  assign port_o_0 = port_i_1;
  assign port_o_1 = (port_i_0 ^ port_i_1);

endmodule

//GF_SQ_2 replaced by GF_SQ_2

module GF_SQ_2 (
  input      [2:0]    port_i_0,
  input      [2:0]    port_i_1,
  output     [2:0]    port_o_0,
  output     [2:0]    port_o_1
);


  assign port_o_0 = port_i_1;
  assign port_o_1 = port_i_0;

endmodule
