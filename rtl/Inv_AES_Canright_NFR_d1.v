// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : GF_INV_8_RCFMS_2shares
// Git hash  : db593c14fe8e83f0a4a5d43cf13325e631d65148

`timescale 1ns/1ps

module Inv_AES_Canright_NFR_d1 (
  input      [0:0]    port_i_0_0,
  input      [0:0]    port_i_0_1,
  input      [0:0]    port_i_0_2,
  input      [0:0]    port_i_0_3,
  input      [0:0]    port_i_0_4,
  input      [0:0]    port_i_0_5,
  input      [0:0]    port_i_0_6,
  input      [0:0]    port_i_0_7,
  input      [0:0]    port_i_1_0,
  input      [0:0]    port_i_1_1,
  input      [0:0]    port_i_1_2,
  input      [0:0]    port_i_1_3,
  input      [0:0]    port_i_1_4,
  input      [0:0]    port_i_1_5,
  input      [0:0]    port_i_1_6,
  input      [0:0]    port_i_1_7,
  input               port_r_0,
  output     [0:0]    port_o_0_0,
  output     [0:0]    port_o_0_1,
  output     [0:0]    port_o_0_2,
  output     [0:0]    port_o_0_3,
  output     [0:0]    port_o_0_4,
  output     [0:0]    port_o_0_5,
  output     [0:0]    port_o_0_6,
  output     [0:0]    port_o_0_7,
  output     [0:0]    port_o_1_0,
  output     [0:0]    port_o_1_1,
  output     [0:0]    port_o_1_2,
  output     [0:0]    port_o_1_3,
  output     [0:0]    port_o_1_4,
  output     [0:0]    port_o_1_5,
  output     [0:0]    port_o_1_6,
  output     [0:0]    port_o_1_7,
  input               clk,
  input               reset
);

  wire       [0:0]    sqMul_port_o_0_0;
  wire       [0:0]    sqMul_port_o_0_1;
  wire       [0:0]    sqMul_port_o_0_2;
  wire       [0:0]    sqMul_port_o_0_3;
  wire       [0:0]    sqMul_port_o_1_0;
  wire       [0:0]    sqMul_port_o_1_1;
  wire       [0:0]    sqMul_port_o_1_2;
  wire       [0:0]    sqMul_port_o_1_3;
  wire       [0:0]    inv_port_o_0_0;
  wire       [0:0]    inv_port_o_0_1;
  wire       [0:0]    inv_port_o_0_2;
  wire       [0:0]    inv_port_o_0_3;
  wire       [0:0]    inv_port_o_1_0;
  wire       [0:0]    inv_port_o_1_1;
  wire       [0:0]    inv_port_o_1_2;
  wire       [0:0]    inv_port_o_1_3;
  wire       [0:0]    mul0_port_o_0_0;
  wire       [0:0]    mul0_port_o_0_1;
  wire       [0:0]    mul0_port_o_0_2;
  wire       [0:0]    mul0_port_o_0_3;
  wire       [0:0]    mul0_port_o_1_0;
  wire       [0:0]    mul0_port_o_1_1;
  wire       [0:0]    mul0_port_o_1_2;
  wire       [0:0]    mul0_port_o_1_3;
  wire       [0:0]    mul1_port_o_0_0;
  wire       [0:0]    mul1_port_o_0_1;
  wire       [0:0]    mul1_port_o_0_2;
  wire       [0:0]    mul1_port_o_0_3;
  wire       [0:0]    mul1_port_o_1_0;
  wire       [0:0]    mul1_port_o_1_1;
  wire       [0:0]    mul1_port_o_1_2;
  wire       [0:0]    mul1_port_o_1_3;
  wire       [0:0]    ax_0_0;
  wire       [0:0]    ax_0_1;
  wire       [0:0]    ax_0_2;
  wire       [0:0]    ax_0_3;
  wire       [0:0]    ax_1_0;
  wire       [0:0]    ax_1_1;
  wire       [0:0]    ax_1_2;
  wire       [0:0]    ax_1_3;
  wire       [0:0]    bx_0_0;
  wire       [0:0]    bx_0_1;
  wire       [0:0]    bx_0_2;
  wire       [0:0]    bx_0_3;
  wire       [0:0]    bx_1_0;
  wire       [0:0]    bx_1_1;
  wire       [0:0]    bx_1_2;
  wire       [0:0]    bx_1_3;
  wire       [0:0]    reg0_0_0;
  wire       [0:0]    reg0_0_1;
  wire       [0:0]    reg0_0_2;
  wire       [0:0]    reg0_0_3;
  wire       [0:0]    reg0_1_0;
  wire       [0:0]    reg0_1_1;
  wire       [0:0]    reg0_1_2;
  wire       [0:0]    reg0_1_3;
  wire       [0:0]    reg1_0_0;
  wire       [0:0]    reg1_0_1;
  wire       [0:0]    reg1_0_2;
  wire       [0:0]    reg1_0_3;
  wire       [0:0]    reg1_1_0;
  wire       [0:0]    reg1_1_1;
  wire       [0:0]    reg1_1_2;
  wire       [0:0]    reg1_1_3;
  wire       [0:0]    reg_a0_0_0;
  wire       [0:0]    reg_a0_0_1;
  wire       [0:0]    reg_a0_0_2;
  wire       [0:0]    reg_a0_0_3;
  wire       [0:0]    reg_a0_1_0;
  wire       [0:0]    reg_a0_1_1;
  wire       [0:0]    reg_a0_1_2;
  wire       [0:0]    reg_a0_1_3;
  wire       [0:0]    reg_a1_0_0;
  wire       [0:0]    reg_a1_0_1;
  wire       [0:0]    reg_a1_0_2;
  wire       [0:0]    reg_a1_0_3;
  wire       [0:0]    reg_a1_1_0;
  wire       [0:0]    reg_a1_1_1;
  wire       [0:0]    reg_a1_1_2;
  wire       [0:0]    reg_a1_1_3;
  wire       [0:0]    reg_a2_0_0;
  wire       [0:0]    reg_a2_0_1;
  wire       [0:0]    reg_a2_0_2;
  wire       [0:0]    reg_a2_0_3;
  wire       [0:0]    reg_a2_1_0;
  wire       [0:0]    reg_a2_1_1;
  wire       [0:0]    reg_a2_1_2;
  wire       [0:0]    reg_a2_1_3;
  wire       [0:0]    reg_a3_0_0;
  wire       [0:0]    reg_a3_0_1;
  wire       [0:0]    reg_a3_0_2;
  wire       [0:0]    reg_a3_0_3;
  wire       [0:0]    reg_a3_1_0;
  wire       [0:0]    reg_a3_1_1;
  wire       [0:0]    reg_a3_1_2;
  wire       [0:0]    reg_a3_1_3;
  wire       [0:0]    reg_b0_0_0;
  wire       [0:0]    reg_b0_0_1;
  wire       [0:0]    reg_b0_0_2;
  wire       [0:0]    reg_b0_0_3;
  wire       [0:0]    reg_b0_1_0;
  wire       [0:0]    reg_b0_1_1;
  wire       [0:0]    reg_b0_1_2;
  wire       [0:0]    reg_b0_1_3;
  wire       [0:0]    reg_b1_0_0;
  wire       [0:0]    reg_b1_0_1;
  wire       [0:0]    reg_b1_0_2;
  wire       [0:0]    reg_b1_0_3;
  wire       [0:0]    reg_b1_1_0;
  wire       [0:0]    reg_b1_1_1;
  wire       [0:0]    reg_b1_1_2;
  wire       [0:0]    reg_b1_1_3;
  wire       [0:0]    reg_b2_0_0;
  wire       [0:0]    reg_b2_0_1;
  wire       [0:0]    reg_b2_0_2;
  wire       [0:0]    reg_b2_0_3;
  wire       [0:0]    reg_b2_1_0;
  wire       [0:0]    reg_b2_1_1;
  wire       [0:0]    reg_b2_1_2;
  wire       [0:0]    reg_b2_1_3;
  wire       [0:0]    reg_b3_0_0;
  wire       [0:0]    reg_b3_0_1;
  wire       [0:0]    reg_b3_0_2;
  wire       [0:0]    reg_b3_0_3;
  wire       [0:0]    reg_b3_1_0;
  wire       [0:0]    reg_b3_1_1;
  wire       [0:0]    reg_b3_1_2;
  wire       [0:0]    reg_b3_1_3;
  wire       [0:0]    t1_0_0;
  wire       [0:0]    t1_0_1;
  wire       [0:0]    t1_0_2;
  wire       [0:0]    t1_0_3;
  wire       [0:0]    t1_0_4;
  wire       [0:0]    t1_0_5;
  wire       [0:0]    t1_0_6;
  wire       [0:0]    t1_0_7;
  wire       [0:0]    t1_1_0;
  wire       [0:0]    t1_1_1;
  wire       [0:0]    t1_1_2;
  wire       [0:0]    t1_1_3;
  wire       [0:0]    t1_1_4;
  wire       [0:0]    t1_1_5;
  wire       [0:0]    t1_1_6;
  wire       [0:0]    t1_1_7;

  GF_SQ_SCl_MUL_4_rcfms sqMul (
    .port_a_0_0 (ax_0_0          ), //i
    .port_a_0_1 (ax_0_1          ), //i
    .port_a_0_2 (ax_0_2          ), //i
    .port_a_0_3 (ax_0_3          ), //i
    .port_a_1_0 (ax_1_0          ), //i
    .port_a_1_1 (ax_1_1          ), //i
    .port_a_1_2 (ax_1_2          ), //i
    .port_a_1_3 (ax_1_3          ), //i
    .port_b_0_0 (bx_0_0          ), //i
    .port_b_0_1 (bx_0_1          ), //i
    .port_b_0_2 (bx_0_2          ), //i
    .port_b_0_3 (bx_0_3          ), //i
    .port_b_1_0 (bx_1_0          ), //i
    .port_b_1_1 (bx_1_1          ), //i
    .port_b_1_2 (bx_1_2          ), //i
    .port_b_1_3 (bx_1_3          ), //i
    .port_r_0   (port_r_0        ), //i
    .port_o_0_0 (sqMul_port_o_0_0), //o
    .port_o_0_1 (sqMul_port_o_0_1), //o
    .port_o_0_2 (sqMul_port_o_0_2), //o
    .port_o_0_3 (sqMul_port_o_0_3), //o
    .port_o_1_0 (sqMul_port_o_1_0), //o
    .port_o_1_1 (sqMul_port_o_1_1), //o
    .port_o_1_2 (sqMul_port_o_1_2), //o
    .port_o_1_3 (sqMul_port_o_1_3), //o
    .clk        (clk             ), //i
    .reset      (reset           )  //i
  );
  GF_INV_4_rcfms inv (
    .port_i_0_0 (reg0_0_0      ), //i
    .port_i_0_1 (reg0_0_1      ), //i
    .port_i_0_2 (reg0_0_2      ), //i
    .port_i_0_3 (reg0_0_3      ), //i
    .port_i_1_0 (reg0_1_0      ), //i
    .port_i_1_1 (reg0_1_1      ), //i
    .port_i_1_2 (reg0_1_2      ), //i
    .port_i_1_3 (reg0_1_3      ), //i
    .port_o_0_0 (inv_port_o_0_0), //o
    .port_o_0_1 (inv_port_o_0_1), //o
    .port_o_0_2 (inv_port_o_0_2), //o
    .port_o_0_3 (inv_port_o_0_3), //o
    .port_o_1_0 (inv_port_o_1_0), //o
    .port_o_1_1 (inv_port_o_1_1), //o
    .port_o_1_2 (inv_port_o_1_2), //o
    .port_o_1_3 (inv_port_o_1_3), //o
    .clk        (clk           ), //i
    .reset      (reset         )  //i
  );
  GF_MUL_4_rcfms mul0 (
    .port_a_0_0 (reg_a3_0_0     ), //i
    .port_a_0_1 (reg_a3_0_1     ), //i
    .port_a_0_2 (reg_a3_0_2     ), //i
    .port_a_0_3 (reg_a3_0_3     ), //i
    .port_a_1_0 (reg_a3_1_0     ), //i
    .port_a_1_1 (reg_a3_1_1     ), //i
    .port_a_1_2 (reg_a3_1_2     ), //i
    .port_a_1_3 (reg_a3_1_3     ), //i
    .port_b_0_0 (reg1_0_0       ), //i
    .port_b_0_1 (reg1_0_1       ), //i
    .port_b_0_2 (reg1_0_2       ), //i
    .port_b_0_3 (reg1_0_3       ), //i
    .port_b_1_0 (reg1_1_0       ), //i
    .port_b_1_1 (reg1_1_1       ), //i
    .port_b_1_2 (reg1_1_2       ), //i
    .port_b_1_3 (reg1_1_3       ), //i
    .port_o_0_0 (mul0_port_o_0_0), //o
    .port_o_0_1 (mul0_port_o_0_1), //o
    .port_o_0_2 (mul0_port_o_0_2), //o
    .port_o_0_3 (mul0_port_o_0_3), //o
    .port_o_1_0 (mul0_port_o_1_0), //o
    .port_o_1_1 (mul0_port_o_1_1), //o
    .port_o_1_2 (mul0_port_o_1_2), //o
    .port_o_1_3 (mul0_port_o_1_3), //o
    .clk        (clk            ), //i
    .reset      (reset          )  //i
  );
  GF_MUL_4_rcfms mul1 (
    .port_a_0_0 (reg_b3_0_0     ), //i
    .port_a_0_1 (reg_b3_0_1     ), //i
    .port_a_0_2 (reg_b3_0_2     ), //i
    .port_a_0_3 (reg_b3_0_3     ), //i
    .port_a_1_0 (reg_b3_1_0     ), //i
    .port_a_1_1 (reg_b3_1_1     ), //i
    .port_a_1_2 (reg_b3_1_2     ), //i
    .port_a_1_3 (reg_b3_1_3     ), //i
    .port_b_0_0 (reg1_0_0       ), //i
    .port_b_0_1 (reg1_0_1       ), //i
    .port_b_0_2 (reg1_0_2       ), //i
    .port_b_0_3 (reg1_0_3       ), //i
    .port_b_1_0 (reg1_1_0       ), //i
    .port_b_1_1 (reg1_1_1       ), //i
    .port_b_1_2 (reg1_1_2       ), //i
    .port_b_1_3 (reg1_1_3       ), //i
    .port_o_0_0 (mul1_port_o_0_0), //o
    .port_o_0_1 (mul1_port_o_0_1), //o
    .port_o_0_2 (mul1_port_o_0_2), //o
    .port_o_0_3 (mul1_port_o_0_3), //o
    .port_o_1_0 (mul1_port_o_1_0), //o
    .port_o_1_1 (mul1_port_o_1_1), //o
    .port_o_1_2 (mul1_port_o_1_2), //o
    .port_o_1_3 (mul1_port_o_1_3), //o
    .clk        (clk            ), //i
    .reset      (reset          )  //i
  );
  assign ax_0_0 = port_i_0_0;
  assign bx_0_0 = port_i_0_4;
  assign ax_0_1 = port_i_0_1;
  assign bx_0_1 = port_i_0_5;
  assign ax_0_2 = port_i_0_2;
  assign bx_0_2 = port_i_0_6;
  assign ax_0_3 = port_i_0_3;
  assign bx_0_3 = port_i_0_7;
  assign ax_1_0 = port_i_1_0;
  assign bx_1_0 = port_i_1_4;
  assign ax_1_1 = port_i_1_1;
  assign bx_1_1 = port_i_1_5;
  assign ax_1_2 = port_i_1_2;
  assign bx_1_2 = port_i_1_6;
  assign ax_1_3 = port_i_1_3;
  assign bx_1_3 = port_i_1_7;
  assign reg0_0_0 = sqMul_port_o_0_0;
  assign reg0_0_1 = sqMul_port_o_0_1;
  assign reg0_0_2 = sqMul_port_o_0_2;
  assign reg0_0_3 = sqMul_port_o_0_3;
  assign reg0_1_0 = sqMul_port_o_1_0;
  assign reg0_1_1 = sqMul_port_o_1_1;
  assign reg0_1_2 = sqMul_port_o_1_2;
  assign reg0_1_3 = sqMul_port_o_1_3;
  assign reg1_0_0 = inv_port_o_0_0;
  assign reg1_0_1 = inv_port_o_0_1;
  assign reg1_0_2 = inv_port_o_0_2;
  assign reg1_0_3 = inv_port_o_0_3;
  assign reg1_1_0 = inv_port_o_1_0;
  assign reg1_1_1 = inv_port_o_1_1;
  assign reg1_1_2 = inv_port_o_1_2;
  assign reg1_1_3 = inv_port_o_1_3;
  assign reg_a0_0_0 = ax_0_0;
  assign reg_a0_0_1 = ax_0_1;
  assign reg_a0_0_2 = ax_0_2;
  assign reg_a0_0_3 = ax_0_3;
  assign reg_a0_1_0 = ax_1_0;
  assign reg_a0_1_1 = ax_1_1;
  assign reg_a0_1_2 = ax_1_2;
  assign reg_a0_1_3 = ax_1_3;
  assign reg_a1_0_0 = reg_a0_0_0;
  assign reg_a1_0_1 = reg_a0_0_1;
  assign reg_a1_0_2 = reg_a0_0_2;
  assign reg_a1_0_3 = reg_a0_0_3;
  assign reg_a1_1_0 = reg_a0_1_0;
  assign reg_a1_1_1 = reg_a0_1_1;
  assign reg_a1_1_2 = reg_a0_1_2;
  assign reg_a1_1_3 = reg_a0_1_3;
  assign reg_a2_0_0 = reg_a1_0_0;
  assign reg_a2_0_1 = reg_a1_0_1;
  assign reg_a2_0_2 = reg_a1_0_2;
  assign reg_a2_0_3 = reg_a1_0_3;
  assign reg_a2_1_0 = reg_a1_1_0;
  assign reg_a2_1_1 = reg_a1_1_1;
  assign reg_a2_1_2 = reg_a1_1_2;
  assign reg_a2_1_3 = reg_a1_1_3;
  assign reg_b0_0_0 = bx_0_0;
  assign reg_b0_0_1 = bx_0_1;
  assign reg_b0_0_2 = bx_0_2;
  assign reg_b0_0_3 = bx_0_3;
  assign reg_b0_1_0 = bx_1_0;
  assign reg_b0_1_1 = bx_1_1;
  assign reg_b0_1_2 = bx_1_2;
  assign reg_b0_1_3 = bx_1_3;
  assign reg_b1_0_0 = reg_b0_0_0;
  assign reg_b1_0_1 = reg_b0_0_1;
  assign reg_b1_0_2 = reg_b0_0_2;
  assign reg_b1_0_3 = reg_b0_0_3;
  assign reg_b1_1_0 = reg_b0_1_0;
  assign reg_b1_1_1 = reg_b0_1_1;
  assign reg_b1_1_2 = reg_b0_1_2;
  assign reg_b1_1_3 = reg_b0_1_3;
  assign reg_b2_0_0 = reg_b1_0_0;
  assign reg_b2_0_1 = reg_b1_0_1;
  assign reg_b2_0_2 = reg_b1_0_2;
  assign reg_b2_0_3 = reg_b1_0_3;
  assign reg_b2_1_0 = reg_b1_1_0;
  assign reg_b2_1_1 = reg_b1_1_1;
  assign reg_b2_1_2 = reg_b1_1_2;
  assign reg_b2_1_3 = reg_b1_1_3;
  assign reg_a3_0_0 = reg_a2_0_0;
  assign reg_a3_0_1 = reg_a2_0_1;
  assign reg_a3_0_2 = reg_a2_0_2;
  assign reg_a3_0_3 = reg_a2_0_3;
  assign reg_a3_1_0 = reg_a2_1_0;
  assign reg_a3_1_1 = reg_a2_1_1;
  assign reg_a3_1_2 = reg_a2_1_2;
  assign reg_a3_1_3 = reg_a2_1_3;
  assign reg_b3_0_0 = reg_b2_0_0;
  assign reg_b3_0_1 = reg_b2_0_1;
  assign reg_b3_0_2 = reg_b2_0_2;
  assign reg_b3_0_3 = reg_b2_0_3;
  assign reg_b3_1_0 = reg_b2_1_0;
  assign reg_b3_1_1 = reg_b2_1_1;
  assign reg_b3_1_2 = reg_b2_1_2;
  assign reg_b3_1_3 = reg_b2_1_3;
  assign t1_0_0 = mul1_port_o_0_0;
  assign t1_0_4 = mul0_port_o_0_0;
  assign t1_0_1 = mul1_port_o_0_1;
  assign t1_0_5 = mul0_port_o_0_1;
  assign t1_0_2 = mul1_port_o_0_2;
  assign t1_0_6 = mul0_port_o_0_2;
  assign t1_0_3 = mul1_port_o_0_3;
  assign t1_0_7 = mul0_port_o_0_3;
  assign t1_1_0 = mul1_port_o_1_0;
  assign t1_1_4 = mul0_port_o_1_0;
  assign t1_1_1 = mul1_port_o_1_1;
  assign t1_1_5 = mul0_port_o_1_1;
  assign t1_1_2 = mul1_port_o_1_2;
  assign t1_1_6 = mul0_port_o_1_2;
  assign t1_1_3 = mul1_port_o_1_3;
  assign t1_1_7 = mul0_port_o_1_3;
  assign port_o_0_0 = t1_0_0;
  assign port_o_0_1 = t1_0_1;
  assign port_o_0_2 = t1_0_2;
  assign port_o_0_3 = t1_0_3;
  assign port_o_0_4 = t1_0_4;
  assign port_o_0_5 = t1_0_5;
  assign port_o_0_6 = t1_0_6;
  assign port_o_0_7 = t1_0_7;
  assign port_o_1_0 = t1_1_0;
  assign port_o_1_1 = t1_1_1;
  assign port_o_1_2 = t1_1_2;
  assign port_o_1_3 = t1_1_3;
  assign port_o_1_4 = t1_1_4;
  assign port_o_1_5 = t1_1_5;
  assign port_o_1_6 = t1_1_6;
  assign port_o_1_7 = t1_1_7;

endmodule

//GF_MUL_4_rcfms replaced by GF_MUL_4_rcfms

module GF_MUL_4_rcfms (
  input      [0:0]    port_a_0_0,
  input      [0:0]    port_a_0_1,
  input      [0:0]    port_a_0_2,
  input      [0:0]    port_a_0_3,
  input      [0:0]    port_a_1_0,
  input      [0:0]    port_a_1_1,
  input      [0:0]    port_a_1_2,
  input      [0:0]    port_a_1_3,
  input      [0:0]    port_b_0_0,
  input      [0:0]    port_b_0_1,
  input      [0:0]    port_b_0_2,
  input      [0:0]    port_b_0_3,
  input      [0:0]    port_b_1_0,
  input      [0:0]    port_b_1_1,
  input      [0:0]    port_b_1_2,
  input      [0:0]    port_b_1_3,
  output     [0:0]    port_o_0_0,
  output     [0:0]    port_o_0_1,
  output     [0:0]    port_o_0_2,
  output     [0:0]    port_o_0_3,
  output     [0:0]    port_o_1_0,
  output     [0:0]    port_o_1_1,
  output     [0:0]    port_o_1_2,
  output     [0:0]    port_o_1_3,
  input               clk,
  input               reset
);

  wire       [0:0]    _zz_f_0;
  wire       [0:0]    _zz_f_2;
  wire       [0:0]    f_0;
  reg        [0:0]    f_0_reg;
  wire       [0:0]    f_1;
  reg        [0:0]    f_1_reg;
  wire       [0:0]    f_2;
  reg        [0:0]    f_2_reg;
  wire       [0:0]    f_3;
  reg        [0:0]    f_3_reg;
  wire       [0:0]    g_0;
  reg        [0:0]    g_0_reg;
  wire       [0:0]    g_1;
  reg        [0:0]    g_1_reg;
  wire       [0:0]    g_2;
  reg        [0:0]    g_2_reg;
  wire       [0:0]    g_3;
  reg        [0:0]    g_3_reg;
  wire       [0:0]    h_0;
  reg        [0:0]    h_0_reg;
  wire       [0:0]    h_1;
  reg        [0:0]    h_1_reg;
  wire       [0:0]    h_2;
  reg        [0:0]    h_2_reg;
  wire       [0:0]    h_3;
  reg        [0:0]    h_3_reg;
  wire       [0:0]    k_0;
  reg        [0:0]    k_0_reg;
  wire       [0:0]    k_1;
  reg        [0:0]    k_1_reg;
  wire       [0:0]    k_2;
  reg        [0:0]    k_2_reg;
  wire       [0:0]    k_3;
  reg        [0:0]    k_3_reg;

  assign _zz_f_0 = (port_a_0_0 & port_b_0_0);
  assign _zz_f_2 = (port_a_1_0 & port_b_0_0);
  assign f_0 = (((((((((port_a_0_3 ^ _zz_f_0) ^ (port_a_0_2 & port_b_0_0)) ^ (port_a_0_0 & port_b_0_1)) ^ (port_a_0_1 & port_b_0_1)) ^ (port_a_0_2 & port_b_0_1)) ^ (port_a_0_3 & port_b_0_1)) ^ (port_a_0_2 & port_b_0_2)) ^ (port_a_0_0 & port_b_0_3)) ^ (port_a_0_1 & port_b_0_3));
  assign f_1 = ((((((((((port_a_0_1 ^ port_b_1_0) ^ (port_a_0_0 & port_b_1_0)) ^ (port_a_0_2 & port_b_1_0)) ^ (port_a_0_0 & port_b_1_1)) ^ (port_a_0_1 & port_b_1_1)) ^ (port_a_0_2 & port_b_1_1)) ^ (port_a_0_3 & port_b_1_1)) ^ (port_a_0_2 & port_b_1_2)) ^ (port_a_0_0 & port_b_1_3)) ^ (port_a_0_1 & port_b_1_3));
  assign f_2 = (((((((((port_a_1_3 ^ _zz_f_2) ^ (port_a_1_2 & port_b_0_0)) ^ (port_a_1_0 & port_b_0_1)) ^ (port_a_1_1 & port_b_0_1)) ^ (port_a_1_2 & port_b_0_1)) ^ (port_a_1_3 & port_b_0_1)) ^ (port_a_1_2 & port_b_0_2)) ^ (port_a_1_0 & port_b_0_3)) ^ (port_a_1_1 & port_b_0_3));
  assign f_3 = ((((((((((port_a_1_1 ^ port_b_1_0) ^ (port_a_1_0 & port_b_1_0)) ^ (port_a_1_2 & port_b_1_0)) ^ (port_a_1_0 & port_b_1_1)) ^ (port_a_1_1 & port_b_1_1)) ^ (port_a_1_2 & port_b_1_1)) ^ (port_a_1_3 & port_b_1_1)) ^ (port_a_1_2 & port_b_1_2)) ^ (port_a_1_0 & port_b_1_3)) ^ (port_a_1_1 & port_b_1_3));
  assign g_0 = (((((((port_a_0_0 ^ port_a_0_1) ^ (port_a_0_1 & port_b_0_0)) ^ (port_a_0_3 & port_b_0_0)) ^ (port_a_0_0 & port_b_0_1)) ^ (port_a_0_2 & port_b_0_1)) ^ (port_a_0_3 & port_b_0_2)) ^ (port_a_0_0 & port_b_0_3));
  assign g_1 = ((((((((port_a_0_2 ^ port_a_0_3) ^ port_b_1_1) ^ (port_a_0_1 & port_b_1_0)) ^ (port_a_0_3 & port_b_1_0)) ^ (port_a_0_0 & port_b_1_1)) ^ (port_a_0_2 & port_b_1_1)) ^ (port_a_0_3 & port_b_1_2)) ^ (port_a_0_0 & port_b_1_3));
  assign g_2 = ((((((((port_a_1_1 ^ port_a_1_2) ^ port_a_1_3) ^ (port_a_1_1 & port_b_0_0)) ^ (port_a_1_3 & port_b_0_0)) ^ (port_a_1_0 & port_b_0_1)) ^ (port_a_1_2 & port_b_0_1)) ^ (port_a_1_3 & port_b_0_2)) ^ (port_a_1_0 & port_b_0_3));
  assign g_3 = (((((((port_a_1_0 ^ port_b_1_1) ^ (port_a_1_1 & port_b_1_0)) ^ (port_a_1_3 & port_b_1_0)) ^ (port_a_1_0 & port_b_1_1)) ^ (port_a_1_2 & port_b_1_1)) ^ (port_a_1_3 & port_b_1_2)) ^ (port_a_1_0 & port_b_1_3));
  assign h_0 = ((((((((((port_a_0_1 ^ (port_a_0_0 & port_b_0_0)) ^ (port_a_0_2 & port_b_0_0)) ^ (port_a_0_3 & port_b_0_0)) ^ (port_a_0_0 & port_b_0_1)) ^ (port_a_0_1 & port_b_0_1)) ^ (port_a_0_3 & port_b_0_1)) ^ (port_a_0_0 & port_b_0_2)) ^ (port_a_0_3 & port_b_0_2)) ^ (port_a_0_2 & port_b_0_3)) ^ (port_a_0_3 & port_b_0_3));
  assign h_1 = (((((((((((port_a_0_2 ^ port_b_1_2) ^ (port_a_0_0 & port_b_1_0)) ^ (port_a_0_2 & port_b_1_0)) ^ (port_a_0_3 & port_b_1_0)) ^ (port_a_0_0 & port_b_1_1)) ^ (port_a_0_1 & port_b_1_1)) ^ (port_a_0_3 & port_b_1_1)) ^ (port_a_0_0 & port_b_1_2)) ^ (port_a_0_3 & port_b_1_2)) ^ (port_a_0_2 & port_b_1_3)) ^ (port_a_0_3 & port_b_1_3));
  assign h_2 = ((((((((((port_a_1_1 ^ (port_a_1_0 & port_b_0_0)) ^ (port_a_1_2 & port_b_0_0)) ^ (port_a_1_3 & port_b_0_0)) ^ (port_a_1_0 & port_b_0_1)) ^ (port_a_1_1 & port_b_0_1)) ^ (port_a_1_3 & port_b_0_1)) ^ (port_a_1_0 & port_b_0_2)) ^ (port_a_1_3 & port_b_0_2)) ^ (port_a_1_2 & port_b_0_3)) ^ (port_a_1_3 & port_b_0_3));
  assign h_3 = (((((((((((port_a_1_2 ^ port_b_1_2) ^ (port_a_1_0 & port_b_1_0)) ^ (port_a_1_2 & port_b_1_0)) ^ (port_a_1_3 & port_b_1_0)) ^ (port_a_1_0 & port_b_1_1)) ^ (port_a_1_1 & port_b_1_1)) ^ (port_a_1_3 & port_b_1_1)) ^ (port_a_1_0 & port_b_1_2)) ^ (port_a_1_3 & port_b_1_2)) ^ (port_a_1_2 & port_b_1_3)) ^ (port_a_1_3 & port_b_1_3));
  assign k_0 = (((((((((port_a_0_0 ^ (port_a_0_1 & port_b_0_0)) ^ (port_a_0_2 & port_b_0_0)) ^ (port_a_0_0 & port_b_0_1)) ^ (port_a_0_2 & port_b_0_1)) ^ (port_a_0_3 & port_b_0_1)) ^ (port_a_0_1 & port_b_0_2)) ^ (port_a_0_2 & port_b_0_2)) ^ (port_a_0_3 & port_b_0_2)) ^ (port_a_0_2 & port_b_0_3));
  assign k_1 = (((((((((((port_a_0_1 ^ port_a_0_3) ^ port_b_1_3) ^ (port_a_0_1 & port_b_1_0)) ^ (port_a_0_2 & port_b_1_0)) ^ (port_a_0_0 & port_b_1_1)) ^ (port_a_0_2 & port_b_1_1)) ^ (port_a_0_3 & port_b_1_1)) ^ (port_a_0_1 & port_b_1_2)) ^ (port_a_0_2 & port_b_1_2)) ^ (port_a_0_3 & port_b_1_2)) ^ (port_a_0_2 & port_b_1_3));
  assign k_2 = (((((((((((port_a_1_0 ^ port_a_1_2) ^ port_a_1_3) ^ (port_a_1_1 & port_b_0_0)) ^ (port_a_1_2 & port_b_0_0)) ^ (port_a_1_0 & port_b_0_1)) ^ (port_a_1_2 & port_b_0_1)) ^ (port_a_1_3 & port_b_0_1)) ^ (port_a_1_1 & port_b_0_2)) ^ (port_a_1_2 & port_b_0_2)) ^ (port_a_1_3 & port_b_0_2)) ^ (port_a_1_2 & port_b_0_3));
  assign k_3 = (((((((((((port_a_1_1 ^ port_a_1_2) ^ port_b_1_3) ^ (port_a_1_1 & port_b_1_0)) ^ (port_a_1_2 & port_b_1_0)) ^ (port_a_1_0 & port_b_1_1)) ^ (port_a_1_2 & port_b_1_1)) ^ (port_a_1_3 & port_b_1_1)) ^ (port_a_1_1 & port_b_1_2)) ^ (port_a_1_2 & port_b_1_2)) ^ (port_a_1_3 & port_b_1_2)) ^ (port_a_1_2 & port_b_1_3));
  assign port_o_0_0 = (f_0_reg ^ f_1_reg);
  assign port_o_1_0 = (f_2_reg ^ f_3_reg);
  assign port_o_0_1 = (g_0_reg ^ g_1_reg);
  assign port_o_1_1 = (g_2_reg ^ g_3_reg);
  assign port_o_0_2 = (h_0_reg ^ h_1_reg);
  assign port_o_1_2 = (h_2_reg ^ h_3_reg);
  assign port_o_0_3 = (k_0_reg ^ k_1_reg);
  assign port_o_1_3 = (k_2_reg ^ k_3_reg);
  always @(posedge clk) begin
    f_0_reg <= f_0;
    f_1_reg <= f_1;
    f_2_reg <= f_2;
    f_3_reg <= f_3;
    g_0_reg <= g_0;
    g_1_reg <= g_1;
    g_2_reg <= g_2;
    g_3_reg <= g_3;
    h_0_reg <= h_0;
    h_1_reg <= h_1;
    h_2_reg <= h_2;
    h_3_reg <= h_3;
    k_0_reg <= k_0;
    k_1_reg <= k_1;
    k_2_reg <= k_2;
    k_3_reg <= k_3;
  end


endmodule

module GF_INV_4_rcfms (
  input      [0:0]    port_i_0_0,
  input      [0:0]    port_i_0_1,
  input      [0:0]    port_i_0_2,
  input      [0:0]    port_i_0_3,
  input      [0:0]    port_i_1_0,
  input      [0:0]    port_i_1_1,
  input      [0:0]    port_i_1_2,
  input      [0:0]    port_i_1_3,
  output     [0:0]    port_o_0_0,
  output     [0:0]    port_o_0_1,
  output     [0:0]    port_o_0_2,
  output     [0:0]    port_o_0_3,
  output     [0:0]    port_o_1_0,
  output     [0:0]    port_o_1_1,
  output     [0:0]    port_o_1_2,
  output     [0:0]    port_o_1_3,
  input               clk,
  input               reset
);

  wire       [0:0]    f_0;
  reg        [0:0]    f_0_reg;
  wire       [0:0]    f_1;
  reg        [0:0]    f_1_reg;
  wire       [0:0]    f_2;
  reg        [0:0]    f_2_reg;
  wire       [0:0]    f_3;
  reg        [0:0]    f_3_reg;
  wire       [0:0]    f_4;
  reg        [0:0]    f_4_reg;
  wire       [0:0]    f_5;
  reg        [0:0]    f_5_reg;
  wire       [0:0]    f_6;
  reg        [0:0]    f_6_reg;
  wire       [0:0]    f_7;
  reg        [0:0]    f_7_reg;
  wire       [0:0]    g_0;
  reg        [0:0]    g_0_reg;
  wire       [0:0]    g_1;
  reg        [0:0]    g_1_reg;
  wire       [0:0]    g_2;
  reg        [0:0]    g_2_reg;
  wire       [0:0]    g_3;
  reg        [0:0]    g_3_reg;
  wire       [0:0]    g_4;
  reg        [0:0]    g_4_reg;
  wire       [0:0]    g_5;
  reg        [0:0]    g_5_reg;
  wire       [0:0]    g_6;
  reg        [0:0]    g_6_reg;
  wire       [0:0]    g_7;
  reg        [0:0]    g_7_reg;
  wire       [0:0]    h_0;
  reg        [0:0]    h_0_reg;
  wire       [0:0]    h_1;
  reg        [0:0]    h_1_reg;
  wire       [0:0]    h_2;
  reg        [0:0]    h_2_reg;
  wire       [0:0]    h_3;
  reg        [0:0]    h_3_reg;
  wire       [0:0]    h_4;
  reg        [0:0]    h_4_reg;
  wire       [0:0]    h_5;
  reg        [0:0]    h_5_reg;
  wire       [0:0]    h_6;
  reg        [0:0]    h_6_reg;
  wire       [0:0]    h_7;
  reg        [0:0]    h_7_reg;
  wire       [0:0]    k_0;
  reg        [0:0]    k_0_reg;
  wire       [0:0]    k_1;
  reg        [0:0]    k_1_reg;
  wire       [0:0]    k_2;
  reg        [0:0]    k_2_reg;
  wire       [0:0]    k_3;
  reg        [0:0]    k_3_reg;
  wire       [0:0]    k_4;
  reg        [0:0]    k_4_reg;
  wire       [0:0]    k_5;
  reg        [0:0]    k_5_reg;
  wire       [0:0]    k_6;
  reg        [0:0]    k_6_reg;
  wire       [0:0]    k_7;
  reg        [0:0]    k_7_reg;

  assign f_0 = (((((port_i_0_1 ^ (port_i_0_1 & port_i_0_2)) ^ (port_i_0_1 & port_i_1_3)) ^ (port_i_0_2 & port_i_1_3)) ^ (port_i_0_2 & port_i_1_0)) ^ ((port_i_0_1 & port_i_0_2) & port_i_1_0));
  assign f_1 = (((port_i_0_3 ^ (port_i_0_1 & port_i_0_3)) ^ (port_i_0_2 & port_i_0_3)) ^ ((port_i_0_1 & port_i_0_2) & port_i_0_0));
  assign f_2 = ((port_i_1_2 ^ (port_i_1_2 & port_i_0_3)) ^ ((port_i_0_1 & port_i_1_2) & port_i_0_0));
  assign f_3 = ((((port_i_0_1 & port_i_1_2) ^ (port_i_1_2 & port_i_1_3)) ^ (port_i_1_2 & port_i_1_0)) ^ ((port_i_0_1 & port_i_1_2) & port_i_1_0));
  assign f_4 = ((port_i_1_1 & port_i_0_2) ^ ((port_i_1_1 & port_i_0_2) & port_i_0_0));
  assign f_5 = (((port_i_1_0 ^ (port_i_1_1 & port_i_0_3)) ^ (port_i_0_2 & port_i_1_0)) ^ ((port_i_1_1 & port_i_0_2) & port_i_1_0));
  assign f_6 = (((port_i_1_2 ^ (port_i_1_1 & port_i_1_2)) ^ (port_i_1_2 & port_i_1_0)) ^ ((port_i_1_1 & port_i_1_2) & port_i_1_0));
  assign f_7 = ((((port_i_1_1 ^ port_i_1_3) ^ port_i_0_0) ^ (port_i_1_1 & port_i_1_3)) ^ ((port_i_1_1 & port_i_1_2) & port_i_0_0));
  assign g_0 = (((((port_i_1_0 ^ (port_i_0_1 & port_i_1_0)) ^ (port_i_0_2 & port_i_1_0)) ^ (port_i_0_3 & port_i_1_0)) ^ ((port_i_0_1 & port_i_0_3) & port_i_1_0)) ^ ((port_i_0_2 & port_i_0_3) & port_i_1_0));
  assign g_1 = (((port_i_0_1 & port_i_1_3) & port_i_0_0) ^ ((port_i_0_2 & port_i_1_3) & port_i_0_0));
  assign g_2 = ((((port_i_0_1 & port_i_0_3) ^ (port_i_1_2 & port_i_0_3)) ^ ((port_i_0_1 & port_i_0_3) & port_i_0_0)) ^ ((port_i_1_2 & port_i_0_3) & port_i_0_0));
  assign g_3 = ((((((((port_i_0_1 ^ port_i_1_0) ^ (port_i_0_1 & port_i_1_3)) ^ (port_i_1_2 & port_i_1_3)) ^ (port_i_0_1 & port_i_1_0)) ^ (port_i_1_2 & port_i_1_0)) ^ (port_i_1_3 & port_i_1_0)) ^ ((port_i_0_1 & port_i_1_3) & port_i_1_0)) ^ ((port_i_1_2 & port_i_1_3) & port_i_1_0));
  assign g_4 = ((((port_i_1_1 & port_i_0_0) ^ (port_i_0_2 & port_i_0_0)) ^ ((port_i_1_1 & port_i_0_3) & port_i_0_0)) ^ ((port_i_0_2 & port_i_0_3) & port_i_0_0));
  assign g_5 = ((((port_i_0_2 ^ port_i_1_3) ^ (port_i_1_3 & port_i_1_0)) ^ ((port_i_1_1 & port_i_1_3) & port_i_1_0)) ^ ((port_i_0_2 & port_i_1_3) & port_i_1_0));
  assign g_6 = (((((port_i_0_3 ^ (port_i_1_1 & port_i_0_3)) ^ (port_i_1_2 & port_i_0_3)) ^ (port_i_0_3 & port_i_1_0)) ^ ((port_i_1_1 & port_i_0_3) & port_i_1_0)) ^ ((port_i_1_2 & port_i_0_3) & port_i_1_0));
  assign g_7 = (((((((port_i_1_1 ^ port_i_1_2) ^ (port_i_1_1 & port_i_1_3)) ^ (port_i_1_2 & port_i_1_3)) ^ (port_i_1_1 & port_i_0_0)) ^ (port_i_1_2 & port_i_0_0)) ^ ((port_i_1_1 & port_i_1_3) & port_i_0_0)) ^ ((port_i_1_2 & port_i_1_3) & port_i_0_0));
  assign h_0 = ((((port_i_0_1 & port_i_0_2) ^ (port_i_0_2 & port_i_1_0)) ^ ((port_i_0_1 & port_i_0_2) & port_i_0_3)) ^ ((port_i_0_2 & port_i_0_3) & port_i_1_0));
  assign h_1 = ((((port_i_0_1 & port_i_1_3) ^ (port_i_1_3 & port_i_0_0)) ^ ((port_i_0_1 & port_i_0_2) & port_i_1_3)) ^ ((port_i_0_2 & port_i_1_3) & port_i_0_0));
  assign h_2 = (((port_i_1_2 & port_i_0_3) ^ ((port_i_0_1 & port_i_1_2) & port_i_0_3)) ^ ((port_i_1_2 & port_i_0_3) & port_i_0_0));
  assign h_3 = ((((((((port_i_1_2 ^ port_i_1_0) ^ (port_i_0_1 & port_i_1_2)) ^ (port_i_0_1 & port_i_1_3)) ^ (port_i_1_2 & port_i_1_3)) ^ (port_i_1_2 & port_i_1_0)) ^ (port_i_1_3 & port_i_1_0)) ^ ((port_i_0_1 & port_i_1_2) & port_i_1_3)) ^ ((port_i_1_2 & port_i_1_3) & port_i_1_0));
  assign h_4 = ((((port_i_1_1 ^ port_i_0_3) ^ (port_i_0_2 & port_i_0_3)) ^ ((port_i_1_1 & port_i_0_2) & port_i_0_3)) ^ ((port_i_0_2 & port_i_0_3) & port_i_0_0));
  assign h_5 = ((((((((((port_i_1_1 ^ port_i_0_2) ^ port_i_1_3) ^ port_i_1_0) ^ (port_i_1_1 & port_i_0_2)) ^ (port_i_1_1 & port_i_1_3)) ^ (port_i_0_2 & port_i_1_3)) ^ (port_i_0_2 & port_i_1_0)) ^ (port_i_1_3 & port_i_1_0)) ^ ((port_i_1_1 & port_i_0_2) & port_i_1_3)) ^ ((port_i_0_2 & port_i_1_3) & port_i_1_0));
  assign h_6 = ((((port_i_1_1 & port_i_1_2) ^ (port_i_1_2 & port_i_1_0)) ^ ((port_i_1_1 & port_i_1_2) & port_i_0_3)) ^ ((port_i_1_2 & port_i_0_3) & port_i_1_0));
  assign h_7 = ((((port_i_1_1 & port_i_1_3) ^ (port_i_1_3 & port_i_0_0)) ^ ((port_i_1_1 & port_i_1_2) & port_i_1_3)) ^ ((port_i_1_2 & port_i_1_3) & port_i_0_0));
  assign k_0 = (((port_i_1_0 ^ (port_i_0_2 & port_i_0_3)) ^ (port_i_0_1 & port_i_1_0)) ^ ((port_i_0_1 & port_i_0_2) & port_i_0_3));
  assign k_1 = (((port_i_1_3 ^ (port_i_0_1 & port_i_1_3)) ^ (port_i_0_1 & port_i_0_0)) ^ ((port_i_0_1 & port_i_0_2) & port_i_1_3));
  assign k_2 = (((((((port_i_1_2 ^ port_i_0_3) ^ port_i_0_0) ^ (port_i_0_1 & port_i_1_2)) ^ (port_i_0_1 & port_i_0_3)) ^ (port_i_1_2 & port_i_0_3)) ^ (port_i_0_1 & port_i_0_0)) ^ ((port_i_0_1 & port_i_1_2) & port_i_0_3));
  assign k_3 = (((port_i_0_1 & port_i_1_2) ^ (port_i_0_1 & port_i_1_0)) ^ ((port_i_0_1 & port_i_1_2) & port_i_1_3));
  assign k_4 = ((((((port_i_0_2 ^ port_i_0_0) ^ (port_i_1_1 & port_i_0_2)) ^ (port_i_1_1 & port_i_0_3)) ^ (port_i_0_2 & port_i_0_3)) ^ (port_i_0_3 & port_i_0_0)) ^ ((port_i_1_1 & port_i_0_2) & port_i_0_3));
  assign k_5 = (((((port_i_1_1 ^ port_i_1_0) ^ (port_i_1_1 & port_i_0_2)) ^ (port_i_1_1 & port_i_1_3)) ^ (port_i_1_3 & port_i_1_0)) ^ ((port_i_1_1 & port_i_0_2) & port_i_1_3));
  assign k_6 = (((port_i_1_1 ^ (port_i_1_2 & port_i_0_3)) ^ (port_i_0_3 & port_i_1_0)) ^ ((port_i_1_1 & port_i_1_2) & port_i_0_3));
  assign k_7 = ((port_i_1_3 & port_i_0_0) ^ ((port_i_1_1 & port_i_1_2) & port_i_1_3));
  assign port_o_0_0 = (((f_0_reg ^ f_1_reg) ^ f_2_reg) ^ f_3_reg);
  assign port_o_1_0 = (((f_4_reg ^ f_5_reg) ^ f_6_reg) ^ f_7_reg);
  assign port_o_0_1 = (((g_0_reg ^ g_1_reg) ^ g_2_reg) ^ g_3_reg);
  assign port_o_1_1 = (((g_4_reg ^ g_5_reg) ^ g_6_reg) ^ g_7_reg);
  assign port_o_0_2 = (((h_0_reg ^ h_1_reg) ^ h_2_reg) ^ h_3_reg);
  assign port_o_1_2 = (((h_4_reg ^ h_5_reg) ^ h_6_reg) ^ h_7_reg);
  assign port_o_0_3 = (((k_0_reg ^ k_1_reg) ^ k_2_reg) ^ k_3_reg);
  assign port_o_1_3 = (((k_4_reg ^ k_5_reg) ^ k_6_reg) ^ k_7_reg);
  always @(posedge clk) begin
    f_0_reg <= f_0;
    f_1_reg <= f_1;
    f_2_reg <= f_2;
    f_3_reg <= f_3;
    f_4_reg <= f_4;
    f_5_reg <= f_5;
    f_6_reg <= f_6;
    f_7_reg <= f_7;
    g_0_reg <= g_0;
    g_1_reg <= g_1;
    g_2_reg <= g_2;
    g_3_reg <= g_3;
    g_4_reg <= g_4;
    g_5_reg <= g_5;
    g_6_reg <= g_6;
    g_7_reg <= g_7;
    h_0_reg <= h_0;
    h_1_reg <= h_1;
    h_2_reg <= h_2;
    h_3_reg <= h_3;
    h_4_reg <= h_4;
    h_5_reg <= h_5;
    h_6_reg <= h_6;
    h_7_reg <= h_7;
    k_0_reg <= k_0;
    k_1_reg <= k_1;
    k_2_reg <= k_2;
    k_3_reg <= k_3;
    k_4_reg <= k_4;
    k_5_reg <= k_5;
    k_6_reg <= k_6;
    k_7_reg <= k_7;
  end


endmodule

module GF_SQ_SCl_MUL_4_rcfms (
  input      [0:0]    port_a_0_0,
  input      [0:0]    port_a_0_1,
  input      [0:0]    port_a_0_2,
  input      [0:0]    port_a_0_3,
  input      [0:0]    port_a_1_0,
  input      [0:0]    port_a_1_1,
  input      [0:0]    port_a_1_2,
  input      [0:0]    port_a_1_3,
  input      [0:0]    port_b_0_0,
  input      [0:0]    port_b_0_1,
  input      [0:0]    port_b_0_2,
  input      [0:0]    port_b_0_3,
  input      [0:0]    port_b_1_0,
  input      [0:0]    port_b_1_1,
  input      [0:0]    port_b_1_2,
  input      [0:0]    port_b_1_3,
  input               port_r_0,
  output     [0:0]    port_o_0_0,
  output     [0:0]    port_o_0_1,
  output     [0:0]    port_o_0_2,
  output     [0:0]    port_o_0_3,
  output     [0:0]    port_o_1_0,
  output     [0:0]    port_o_1_1,
  output     [0:0]    port_o_1_2,
  output     [0:0]    port_o_1_3,
  input               clk,
  input               reset
);

  wire       [0:0]    _zz_f_0;
  wire       [0:0]    _zz_f_0_1;
  wire       [0:0]    _zz_f_1;
  wire       [0:0]    _zz_f_1_1;
  wire       [0:0]    _zz_f_2;
  wire       [0:0]    _zz_f_2_1;
  wire       [0:0]    _zz_f_3;
  wire       [0:0]    _zz_g_1;
  wire       [0:0]    _zz_g_2;
  wire       [0:0]    _zz_h_0;
  wire       [0:0]    _zz_h_0_1;
  wire       [0:0]    _zz_h_1;
  wire       [0:0]    _zz_h_2;
  wire       [0:0]    _zz_h_2_1;
  wire       [0:0]    _zz_h_3;
  wire       [0:0]    _zz_h_3_1;
  wire       [0:0]    r_0;
  wire       [0:0]    f_0;
  reg        [0:0]    f_0_reg;
  wire       [0:0]    f_1;
  reg        [0:0]    f_1_reg;
  wire       [0:0]    f_2;
  reg        [0:0]    f_2_reg;
  wire       [0:0]    f_3;
  reg        [0:0]    f_3_reg;
  wire       [0:0]    g_0;
  reg        [0:0]    g_0_reg;
  wire       [0:0]    g_1;
  reg        [0:0]    g_1_reg;
  wire       [0:0]    g_2;
  reg        [0:0]    g_2_reg;
  wire       [0:0]    g_3;
  reg        [0:0]    g_3_reg;
  wire       [0:0]    h_0;
  reg        [0:0]    h_0_reg;
  wire       [0:0]    h_1;
  reg        [0:0]    h_1_reg;
  wire       [0:0]    h_2;
  reg        [0:0]    h_2_reg;
  wire       [0:0]    h_3;
  reg        [0:0]    h_3_reg;
  wire       [0:0]    k_0;
  reg        [0:0]    k_0_reg;
  wire       [0:0]    k_1;
  reg        [0:0]    k_1_reg;
  wire       [0:0]    k_2;
  reg        [0:0]    k_2_reg;
  wire       [0:0]    k_3;
  reg        [0:0]    k_3_reg;

  assign _zz_f_0 = (((port_a_0_1 ^ port_a_0_2) ^ port_a_0_3) ^ port_b_0_1);
  assign _zz_f_0_1 = (port_a_0_0 & port_b_0_0);
  assign _zz_f_1 = (((port_a_0_1 ^ port_a_1_3) ^ port_b_0_1) ^ port_b_1_2);
  assign _zz_f_1_1 = (port_a_1_0 & port_b_1_0);
  assign _zz_f_2 = (((((port_a_0_0 ^ port_a_0_2) ^ port_a_0_3) ^ port_b_1_0) ^ port_b_1_1) ^ port_b_1_2);
  assign _zz_f_2_1 = (port_a_0_0 & port_b_1_0);
  assign _zz_f_3 = ((port_a_1_0 ^ port_a_1_3) ^ port_b_0_0);
  assign _zz_g_1 = (port_a_0_1 ^ port_a_1_2);
  assign _zz_g_2 = (port_a_0_3 ^ port_b_1_0);
  assign _zz_h_0 = (((port_a_0_0 & port_b_0_0) ^ (port_a_0_1 & port_b_0_0)) ^ (port_a_0_2 & port_b_0_0));
  assign _zz_h_0_1 = (port_a_0_3 & port_b_0_0);
  assign _zz_h_1 = ((((port_a_0_1 ^ port_a_1_2) ^ port_a_1_3) ^ port_b_1_0) ^ port_b_0_1);
  assign _zz_h_2 = ((((((port_a_0_0 ^ port_a_1_1) ^ port_a_0_2) ^ port_a_0_3) ^ port_b_1_1) ^ port_b_1_3) ^ (port_a_0_0 & port_b_1_0));
  assign _zz_h_2_1 = (port_a_1_1 & port_b_1_0);
  assign _zz_h_3 = ((((port_a_1_0 ^ port_b_0_0) ^ port_b_0_3) ^ port_b_0_2) ^ (port_a_1_0 & port_b_0_0));
  assign _zz_h_3_1 = (port_a_1_1 & port_b_0_0);
  assign r_0[0] = port_r_0;
  assign f_0 = (((((((((_zz_f_0 ^ _zz_f_0_1) ^ (port_a_0_1 & port_b_0_0)) ^ (port_a_0_2 & port_b_0_0)) ^ (port_a_0_0 & port_b_0_1)) ^ (port_a_0_3 & port_b_0_1)) ^ (port_a_0_0 & port_b_0_2)) ^ (port_a_0_2 & port_b_0_2)) ^ (port_a_0_1 & port_b_0_3)) ^ (port_a_0_3 & port_b_0_3));
  assign f_1 = (((((((((_zz_f_1 ^ _zz_f_1_1) ^ (port_a_0_1 & port_b_1_0)) ^ (port_a_1_2 & port_b_1_0)) ^ (port_a_1_0 & port_b_0_1)) ^ (port_a_1_3 & port_b_0_1)) ^ (port_a_1_0 & port_b_1_2)) ^ (port_a_1_2 & port_b_1_2)) ^ (port_a_0_1 & port_b_1_3)) ^ (port_a_1_3 & port_b_1_3));
  assign f_2 = (((((((((_zz_f_2 ^ _zz_f_2_1) ^ (port_a_1_1 & port_b_1_0)) ^ (port_a_0_2 & port_b_1_0)) ^ (port_a_0_0 & port_b_1_1)) ^ (port_a_0_3 & port_b_1_1)) ^ (port_a_0_0 & port_b_1_2)) ^ (port_a_0_2 & port_b_1_2)) ^ (port_a_1_1 & port_b_1_3)) ^ (port_a_0_3 & port_b_1_3));
  assign f_3 = ((((((((((_zz_f_3 ^ port_b_1_1) ^ (port_a_1_0 & port_b_0_0)) ^ (port_a_1_1 & port_b_0_0)) ^ (port_a_1_2 & port_b_0_0)) ^ (port_a_1_0 & port_b_1_1)) ^ (port_a_1_3 & port_b_1_1)) ^ (port_a_1_0 & port_b_0_2)) ^ (port_a_1_2 & port_b_0_2)) ^ (port_a_1_1 & port_b_0_3)) ^ (port_a_1_3 & port_b_0_3));
  assign g_0 = (~ (((((((((port_a_0_1 ^ (port_a_0_0 & port_b_0_0)) ^ (port_a_0_1 & port_b_0_0)) ^ (port_a_0_3 & port_b_0_0)) ^ (port_a_0_0 & port_b_0_1)) ^ (port_a_0_2 & port_b_0_1)) ^ (port_a_0_3 & port_b_0_1)) ^ (port_a_0_1 & port_b_0_2)) ^ (port_a_0_0 & port_b_0_3)) ^ (port_a_0_1 & port_b_0_3)));
  assign g_1 = ((((((((((((_zz_g_1 ^ port_a_1_3) ^ port_b_1_0) ^ port_b_1_2) ^ (port_a_1_0 & port_b_1_0)) ^ (port_a_0_1 & port_b_1_0)) ^ (port_a_1_3 & port_b_1_0)) ^ (port_a_1_0 & port_b_0_1)) ^ (port_a_1_2 & port_b_0_1)) ^ (port_a_1_3 & port_b_0_1)) ^ (port_a_0_1 & port_b_1_2)) ^ (port_a_1_0 & port_b_1_3)) ^ (port_a_0_1 & port_b_1_3));
  assign g_2 = (((((((((((_zz_g_2 ^ port_b_1_2) ^ port_b_1_3) ^ (port_a_0_0 & port_b_1_0)) ^ (port_a_1_1 & port_b_1_0)) ^ (port_a_0_3 & port_b_1_0)) ^ (port_a_0_0 & port_b_1_1)) ^ (port_a_0_2 & port_b_1_1)) ^ (port_a_0_3 & port_b_1_1)) ^ (port_a_1_1 & port_b_1_2)) ^ (port_a_0_0 & port_b_1_3)) ^ (port_a_1_1 & port_b_1_3));
  assign g_3 = ((((((((((port_a_1_2 ^ port_b_0_3) ^ (port_a_1_0 & port_b_0_0)) ^ (port_a_1_1 & port_b_0_0)) ^ (port_a_1_3 & port_b_0_0)) ^ (port_a_1_0 & port_b_1_1)) ^ (port_a_1_2 & port_b_1_1)) ^ (port_a_1_3 & port_b_1_1)) ^ (port_a_1_1 & port_b_0_2)) ^ (port_a_1_0 & port_b_0_3)) ^ (port_a_1_1 & port_b_0_3));
  assign h_0 = (((((((((_zz_h_0 ^ _zz_h_0_1) ^ (port_a_0_0 & port_b_0_1)) ^ (port_a_0_2 & port_b_0_1)) ^ (port_a_0_0 & port_b_0_2)) ^ (port_a_0_1 & port_b_0_2)) ^ (port_a_0_3 & port_b_0_2)) ^ (port_a_0_0 & port_b_0_3)) ^ (port_a_0_2 & port_b_0_3)) ^ (port_a_0_3 & port_b_0_3));
  assign h_1 = (((((((((((((_zz_h_1 ^ port_b_1_2) ^ (port_a_1_0 & port_b_1_0)) ^ (port_a_0_1 & port_b_1_0)) ^ (port_a_1_2 & port_b_1_0)) ^ (port_a_1_3 & port_b_1_0)) ^ (port_a_1_0 & port_b_0_1)) ^ (port_a_1_2 & port_b_0_1)) ^ (port_a_1_0 & port_b_1_2)) ^ (port_a_0_1 & port_b_1_2)) ^ (port_a_1_3 & port_b_1_2)) ^ (port_a_1_0 & port_b_1_3)) ^ (port_a_1_2 & port_b_1_3)) ^ (port_a_1_3 & port_b_1_3));
  assign h_2 = (((((((((((_zz_h_2 ^ _zz_h_2_1) ^ (port_a_0_2 & port_b_1_0)) ^ (port_a_0_3 & port_b_1_0)) ^ (port_a_0_0 & port_b_1_1)) ^ (port_a_0_2 & port_b_1_1)) ^ (port_a_0_0 & port_b_1_2)) ^ (port_a_1_1 & port_b_1_2)) ^ (port_a_0_3 & port_b_1_2)) ^ (port_a_0_0 & port_b_1_3)) ^ (port_a_0_2 & port_b_1_3)) ^ (port_a_0_3 & port_b_1_3));
  assign h_3 = (((((((((((_zz_h_3 ^ _zz_h_3_1) ^ (port_a_1_2 & port_b_0_0)) ^ (port_a_1_3 & port_b_0_0)) ^ (port_a_1_0 & port_b_1_1)) ^ (port_a_1_2 & port_b_1_1)) ^ (port_a_1_0 & port_b_0_2)) ^ (port_a_1_1 & port_b_0_2)) ^ (port_a_1_3 & port_b_0_2)) ^ (port_a_1_0 & port_b_0_3)) ^ (port_a_1_2 & port_b_0_3)) ^ (port_a_1_3 & port_b_0_3));
  assign k_0 = ((((((((((port_a_0_0 & port_b_0_0) ^ (port_a_0_2 & port_b_0_0)) ^ (port_a_0_1 & port_b_0_1)) ^ (port_a_0_3 & port_b_0_1)) ^ (port_a_0_0 & port_b_0_2)) ^ (port_a_0_2 & port_b_0_2)) ^ (port_a_0_3 & port_b_0_2)) ^ (port_a_0_1 & port_b_0_3)) ^ (port_a_0_2 & port_b_0_3)) ^ r_0);
  assign k_1 = (((((((((((port_a_0_1 ^ port_b_1_0) ^ port_b_1_3) ^ (port_a_1_0 & port_b_1_0)) ^ (port_a_1_2 & port_b_1_0)) ^ (port_a_0_1 & port_b_1_1)) ^ (port_a_1_3 & port_b_1_1)) ^ (port_a_1_0 & port_b_0_2)) ^ (port_a_1_2 & port_b_0_2)) ^ (port_a_1_3 & port_b_0_2)) ^ (port_a_0_1 & port_b_1_3)) ^ (port_a_1_2 & port_b_1_3));
  assign k_2 = (((((((((((port_a_0_3 ^ port_b_1_0) ^ port_b_1_1) ^ (port_a_0_0 & port_b_1_0)) ^ (port_a_0_2 & port_b_1_0)) ^ (port_a_1_1 & port_b_1_1)) ^ (port_a_0_3 & port_b_1_1)) ^ (port_a_0_0 & port_b_1_2)) ^ (port_a_0_2 & port_b_1_2)) ^ (port_a_0_3 & port_b_1_2)) ^ (port_a_1_1 & port_b_1_3)) ^ (port_a_0_2 & port_b_1_3));
  assign k_3 = (((((((((((((port_a_1_1 ^ port_a_1_3) ^ port_b_0_1) ^ port_b_0_3) ^ (port_a_1_0 & port_b_0_0)) ^ (port_a_1_2 & port_b_0_0)) ^ (port_a_1_1 & port_b_0_1)) ^ (port_a_1_3 & port_b_0_1)) ^ (port_a_1_0 & port_b_1_2)) ^ (port_a_1_2 & port_b_1_2)) ^ (port_a_1_3 & port_b_1_2)) ^ (port_a_1_1 & port_b_0_3)) ^ (port_a_1_2 & port_b_0_3)) ^ r_0);
  assign port_o_0_0 = (f_0_reg ^ f_1_reg);
  assign port_o_1_0 = (f_2_reg ^ f_3_reg);
  assign port_o_0_1 = (g_0_reg ^ g_1_reg);
  assign port_o_1_1 = (g_2_reg ^ g_3_reg);
  assign port_o_0_2 = (h_0_reg ^ h_1_reg);
  assign port_o_1_2 = (h_2_reg ^ h_3_reg);
  assign port_o_0_3 = (k_0_reg ^ k_1_reg);
  assign port_o_1_3 = (k_2_reg ^ k_3_reg);
  always @(posedge clk) begin
    f_0_reg <= f_0;
    f_1_reg <= f_1;
    f_2_reg <= f_2;
    f_3_reg <= f_3;
    g_0_reg <= g_0;
    g_1_reg <= g_1;
    g_2_reg <= g_2;
    g_3_reg <= g_3;
    h_0_reg <= h_0;
    h_1_reg <= h_1;
    h_2_reg <= h_2;
    h_3_reg <= h_3;
    k_0_reg <= k_0;
    k_1_reg <= k_1;
    k_2_reg <= k_2;
    k_3_reg <= k_3;
  end


endmodule
