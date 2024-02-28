// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : Sbox_0123456789ABCDFE_4shares_3replications
// Git hash  : db593c14fe8e83f0a4a5d43cf13325e631d65148

`timescale 1ns/1ps

module Sbox_0123456789ABCDFE_4shares_3replications (
  input      [2:0]    port_x0_0,
  input      [2:0]    port_x0_1,
  input      [2:0]    port_x0_2,
  input      [2:0]    port_x0_3,
  input      [2:0]    port_x1_0,
  input      [2:0]    port_x1_1,
  input      [2:0]    port_x1_2,
  input      [2:0]    port_x1_3,
  input      [2:0]    port_x2_0,
  input      [2:0]    port_x2_1,
  input      [2:0]    port_x2_2,
  input      [2:0]    port_x2_3,
  input      [2:0]    port_x3_0,
  input      [2:0]    port_x3_1,
  input      [2:0]    port_x3_2,
  input      [2:0]    port_x3_3,
  output     [2:0]    port_y0_0,
  output     [2:0]    port_y0_1,
  output     [2:0]    port_y0_2,
  output     [2:0]    port_y0_3,
  output     [2:0]    port_y1_0,
  output     [2:0]    port_y1_1,
  output     [2:0]    port_y1_2,
  output     [2:0]    port_y1_3,
  output     [2:0]    port_y2_0,
  output     [2:0]    port_y2_1,
  output     [2:0]    port_y2_2,
  output     [2:0]    port_y2_3,
  output     [2:0]    port_y3_0,
  output     [2:0]    port_y3_1,
  output     [2:0]    port_y3_2,
  output     [2:0]    port_y3_3,
  input               clk,
  input               reset
);

  wire                maj_12_port_o;
  wire                maj_13_port_o;
  wire                maj_14_port_o;
  wire                maj_15_port_o;
  wire                maj_16_port_o;
  wire                maj_17_port_o;
  wire                maj_18_port_o;
  wire                maj_19_port_o;
  wire                maj_20_port_o;
  wire                maj_21_port_o;
  wire                maj_22_port_o;
  wire                maj_23_port_o;
  wire                _zz_t0_0_0;
  wire                _zz_t0_0_0_1;
  wire                _zz_t0_0_0_2;
  wire                _zz_t0_0_0_3;
  wire                _zz_t0_0_0_4;
  wire                _zz_t0_0_0_5;
  wire                _zz_t0_0_0_6;
  wire                _zz_t0_0_0_7;
  wire                _zz_t0_0_0_8;
  wire                _zz_t0_0_0_9;
  wire                _zz_t0_0_0_10;
  wire                _zz_t0_0_0_11;
  wire                _zz_t0_1_0;
  wire                _zz_t0_1_0_1;
  wire                _zz_t0_1_0_2;
  wire                _zz_t0_1_0_3;
  wire                _zz_t0_1_0_4;
  wire                _zz_t0_1_0_5;
  wire                _zz_t0_1_0_6;
  wire                _zz_t0_1_0_7;
  wire                _zz_t0_1_0_8;
  wire                _zz_t0_1_0_9;
  wire                _zz_t0_1_0_10;
  wire                _zz_t0_1_0_11;
  wire                _zz_t0_2_0;
  wire                _zz_t0_2_0_1;
  wire                _zz_t0_2_0_2;
  wire                _zz_t0_2_0_3;
  wire                _zz_t0_2_0_4;
  wire                _zz_t0_2_0_5;
  wire                _zz_t0_2_0_6;
  wire                _zz_t0_2_0_7;
  wire                _zz_t0_2_0_8;
  wire                _zz_t0_2_0_9;
  wire                _zz_t0_2_0_10;
  wire                _zz_t0_2_0_11;
  wire                _zz_t0_3_0;
  wire                _zz_t0_3_0_1;
  wire                _zz_t0_3_0_2;
  wire                _zz_t0_3_0_3;
  wire                _zz_t0_3_0_4;
  wire                _zz_t0_3_0_5;
  wire                _zz_t0_3_0_6;
  wire                _zz_t0_3_0_7;
  wire                _zz_t0_3_0_8;
  wire                _zz_t0_3_0_9;
  wire                _zz_t0_3_0_10;
  wire                _zz_t0_3_0_11;
  wire                _zz_t0_0_1;
  wire                _zz_t0_0_1_1;
  wire                _zz_t0_0_1_2;
  wire                _zz_t0_0_1_3;
  wire                _zz_t0_0_1_4;
  wire                _zz_t0_0_1_5;
  wire                _zz_t0_0_1_6;
  wire                _zz_t0_0_1_7;
  wire                _zz_t0_0_1_8;
  wire                _zz_t0_0_1_9;
  wire                _zz_t0_0_1_10;
  wire                _zz_t0_0_1_11;
  wire                _zz_t0_1_1;
  wire                _zz_t0_1_1_1;
  wire                _zz_t0_1_1_2;
  wire                _zz_t0_1_1_3;
  wire                _zz_t0_1_1_4;
  wire                _zz_t0_1_1_5;
  wire                _zz_t0_1_1_6;
  wire                _zz_t0_1_1_7;
  wire                _zz_t0_1_1_8;
  wire                _zz_t0_1_1_9;
  wire                _zz_t0_1_1_10;
  wire                _zz_t0_1_1_11;
  wire                _zz_t0_2_1;
  wire                _zz_t0_2_1_1;
  wire                _zz_t0_2_1_2;
  wire                _zz_t0_2_1_3;
  wire                _zz_t0_2_1_4;
  wire                _zz_t0_2_1_5;
  wire                _zz_t0_2_1_6;
  wire                _zz_t0_2_1_7;
  wire                _zz_t0_2_1_8;
  wire                _zz_t0_2_1_9;
  wire                _zz_t0_2_1_10;
  wire                _zz_t0_2_1_11;
  wire                _zz_t0_3_1;
  wire                _zz_t0_3_1_1;
  wire                _zz_t0_3_1_2;
  wire                _zz_t0_3_1_3;
  wire                _zz_t0_3_1_4;
  wire                _zz_t0_3_1_5;
  wire                _zz_t0_3_1_6;
  wire                _zz_t0_3_1_7;
  wire                _zz_t0_3_1_8;
  wire                _zz_t0_3_1_9;
  wire                _zz_t0_3_1_10;
  wire                _zz_t0_3_1_11;
  wire                _zz_t0_0_2;
  wire                _zz_t0_0_2_1;
  wire                _zz_t0_0_2_2;
  wire                _zz_t0_0_2_3;
  wire                _zz_t0_0_2_4;
  wire                _zz_t0_0_2_5;
  wire                _zz_t0_0_2_6;
  wire                _zz_t0_0_2_7;
  wire                _zz_t0_0_2_8;
  wire                _zz_t0_0_2_9;
  wire                _zz_t0_0_2_10;
  wire                _zz_t0_0_2_11;
  wire                _zz_t0_1_2;
  wire                _zz_t0_1_2_1;
  wire                _zz_t0_1_2_2;
  wire                _zz_t0_1_2_3;
  wire                _zz_t0_1_2_4;
  wire                _zz_t0_1_2_5;
  wire                _zz_t0_1_2_6;
  wire                _zz_t0_1_2_7;
  wire                _zz_t0_1_2_8;
  wire                _zz_t0_1_2_9;
  wire                _zz_t0_1_2_10;
  wire                _zz_t0_1_2_11;
  wire                _zz_t0_2_2;
  wire                _zz_t0_2_2_1;
  wire                _zz_t0_2_2_2;
  wire                _zz_t0_2_2_3;
  wire                _zz_t0_2_2_4;
  wire                _zz_t0_2_2_5;
  wire                _zz_t0_2_2_6;
  wire                _zz_t0_2_2_7;
  wire                _zz_t0_2_2_8;
  wire                _zz_t0_2_2_9;
  wire                _zz_t0_2_2_10;
  wire                _zz_t0_2_2_11;
  wire                _zz_t0_3_2;
  wire                _zz_t0_3_2_1;
  wire                _zz_t0_3_2_2;
  wire                _zz_t0_3_2_3;
  wire                _zz_t0_3_2_4;
  wire                _zz_t0_3_2_5;
  wire                _zz_t0_3_2_6;
  wire                _zz_t0_3_2_7;
  wire                _zz_t0_3_2_8;
  wire                _zz_t0_3_2_9;
  wire                _zz_t0_3_2_10;
  wire                _zz_t0_3_2_11;
  wire                t0_0_0;
  wire                t0_0_1;
  wire                t0_0_2;
  wire                t0_1_0;
  wire                t0_1_1;
  wire                t0_1_2;
  wire                t0_2_0;
  wire                t0_2_1;
  wire                t0_2_2;
  wire                t0_3_0;
  wire                t0_3_1;
  wire                t0_3_2;
  reg        [2:0]    reg_y0_0;
  reg        [2:0]    reg_y0_1;
  reg        [2:0]    reg_y0_2;
  reg        [2:0]    reg_y0_3;
  wire                t1_0_0;
  wire                t1_0_1;
  wire                t1_0_2;
  wire                t1_1_0;
  wire                t1_1_1;
  wire                t1_1_2;
  wire                t1_2_0;
  wire                t1_2_1;
  wire                t1_2_2;
  wire                t1_3_0;
  wire                t1_3_1;
  wire                t1_3_2;
  reg        [2:0]    reg_y1_0;
  reg        [2:0]    reg_y1_1;
  reg        [2:0]    reg_y1_2;
  reg        [2:0]    reg_y1_3;
  wire                t2_0_0;
  wire                t2_0_1;
  wire                t2_0_2;
  wire                t2_1_0;
  wire                t2_1_1;
  wire                t2_1_2;
  wire                t2_2_0;
  wire                t2_2_1;
  wire                t2_2_2;
  wire                t2_3_0;
  wire                t2_3_1;
  wire                t2_3_2;
  reg        [2:0]    reg_y2_0;
  reg        [2:0]    reg_y2_1;
  reg        [2:0]    reg_y2_2;
  reg        [2:0]    reg_y2_3;
  wire                t3_0_0;
  wire                t3_0_1;
  wire                t3_0_2;
  wire                t3_1_0;
  wire                t3_1_1;
  wire                t3_1_2;
  wire                t3_2_0;
  wire                t3_2_1;
  wire                t3_2_2;
  wire                t3_3_0;
  wire                t3_3_1;
  wire                t3_3_2;
  reg        [2:0]    reg_y3_0;
  reg        [2:0]    reg_y3_1;
  reg        [2:0]    reg_y3_2;
  reg        [2:0]    reg_y3_3;

  assign _zz_t0_0_0 = ((((((_zz_t0_0_0_1 ^ _zz_t0_0_0_2) ^ (_zz_t0_0_0_3 && _zz_t0_0_0_4)) ^ ((_zz_t0_0_0_5 && _zz_t0_0_0_6) && port_x3_3[0])) ^ ((port_x1_2[0] && port_x2_3[0]) && port_x3_1[0])) ^ ((port_x1_2[0] && port_x2_3[0]) && port_x3_2[0])) ^ ((port_x1_2[0] && port_x2_3[0]) && port_x3_3[0]));
  assign _zz_t0_0_0_7 = ((port_x1_3[0] && port_x2_1[0]) && port_x3_2[0]);
  assign _zz_t0_0_0_8 = (port_x1_3[0] && port_x2_1[0]);
  assign _zz_t0_0_0_9 = port_x3_3[0];
  assign _zz_t0_0_0_10 = port_x1_3[0];
  assign _zz_t0_0_0_11 = port_x2_2[0];
  assign _zz_t0_0_0_1 = (((port_x0_1[0] ^ ((port_x1_1[0] && port_x2_1[0]) && port_x3_1[0])) ^ ((port_x1_1[0] && port_x2_2[0]) && port_x3_3[0])) ^ ((port_x1_1[0] && port_x2_3[0]) && port_x3_2[0]));
  assign _zz_t0_0_0_2 = ((port_x1_1[0] && port_x2_3[0]) && port_x3_3[0]);
  assign _zz_t0_0_0_3 = (port_x1_2[0] && port_x2_1[0]);
  assign _zz_t0_0_0_4 = port_x3_3[0];
  assign _zz_t0_0_0_5 = port_x1_2[0];
  assign _zz_t0_0_0_6 = port_x2_2[0];
  assign _zz_t0_1_0 = ((((((_zz_t0_1_0_1 ^ _zz_t0_1_0_2) ^ (_zz_t0_1_0_3 && _zz_t0_1_0_4)) ^ ((_zz_t0_1_0_5 && _zz_t0_1_0_6) && port_x3_3[0])) ^ ((port_x1_2[0] && port_x2_0[0]) && port_x3_2[0])) ^ ((port_x1_2[0] && port_x2_0[0]) && port_x3_3[0])) ^ ((port_x1_2[0] && port_x2_2[0]) && port_x3_0[0]));
  assign _zz_t0_1_0_7 = ((port_x1_2[0] && port_x2_2[0]) && port_x3_2[0]);
  assign _zz_t0_1_0_8 = (port_x1_2[0] && port_x2_3[0]);
  assign _zz_t0_1_0_9 = port_x3_0[0];
  assign _zz_t0_1_0_10 = port_x1_3[0];
  assign _zz_t0_1_0_11 = port_x2_0[0];
  assign _zz_t0_1_0_1 = (((port_x0_2[0] ^ ((port_x1_0[0] && port_x2_0[0]) && port_x3_3[0])) ^ ((port_x1_0[0] && port_x2_2[0]) && port_x3_2[0])) ^ ((port_x1_0[0] && port_x2_2[0]) && port_x3_3[0]));
  assign _zz_t0_1_0_2 = ((port_x1_0[0] && port_x2_3[0]) && port_x3_0[0]);
  assign _zz_t0_1_0_3 = (port_x1_0[0] && port_x2_3[0]);
  assign _zz_t0_1_0_4 = port_x3_2[0];
  assign _zz_t0_1_0_5 = port_x1_0[0];
  assign _zz_t0_1_0_6 = port_x2_3[0];
  assign _zz_t0_2_0 = ((((((_zz_t0_2_0_1 ^ _zz_t0_2_0_2) ^ (_zz_t0_2_0_3 && _zz_t0_2_0_4)) ^ ((_zz_t0_2_0_5 && _zz_t0_2_0_6) && port_x3_0[0])) ^ ((port_x1_1[0] && port_x2_0[0]) && port_x3_1[0])) ^ ((port_x1_1[0] && port_x2_0[0]) && port_x3_3[0])) ^ ((port_x1_1[0] && port_x2_1[0]) && port_x3_0[0]));
  assign _zz_t0_2_0_7 = ((port_x1_1[0] && port_x2_1[0]) && port_x3_3[0]);
  assign _zz_t0_2_0_8 = (port_x1_1[0] && port_x2_3[0]);
  assign _zz_t0_2_0_9 = port_x3_0[0];
  assign _zz_t0_2_0_10 = port_x1_1[0];
  assign _zz_t0_2_0_11 = port_x2_3[0];
  assign _zz_t0_2_0_1 = (((port_x0_3[0] ^ ((port_x1_0[0] && port_x2_0[0]) && port_x3_1[0])) ^ ((port_x1_0[0] && port_x2_1[0]) && port_x3_0[0])) ^ ((port_x1_0[0] && port_x2_1[0]) && port_x3_1[0]));
  assign _zz_t0_2_0_2 = ((port_x1_0[0] && port_x2_1[0]) && port_x3_3[0]);
  assign _zz_t0_2_0_3 = (port_x1_0[0] && port_x2_3[0]);
  assign _zz_t0_2_0_4 = port_x3_1[0];
  assign _zz_t0_2_0_5 = port_x1_1[0];
  assign _zz_t0_2_0_6 = port_x2_0[0];
  assign _zz_t0_3_0 = ((((((_zz_t0_3_0_1 ^ _zz_t0_3_0_2) ^ (_zz_t0_3_0_3 && _zz_t0_3_0_4)) ^ ((_zz_t0_3_0_5 && _zz_t0_3_0_6) && port_x3_2[0])) ^ ((port_x1_1[0] && port_x2_1[0]) && port_x3_2[0])) ^ ((port_x1_1[0] && port_x2_2[0]) && port_x3_0[0])) ^ ((port_x1_1[0] && port_x2_2[0]) && port_x3_1[0]));
  assign _zz_t0_3_0_7 = ((port_x1_1[0] && port_x2_2[0]) && port_x3_2[0]);
  assign _zz_t0_3_0_8 = (port_x1_2[0] && port_x2_0[0]);
  assign _zz_t0_3_0_9 = port_x3_0[0];
  assign _zz_t0_3_0_10 = port_x1_2[0];
  assign _zz_t0_3_0_11 = port_x2_0[0];
  assign _zz_t0_3_0_1 = (((port_x0_0[0] ^ ((port_x1_0[0] && port_x2_0[0]) && port_x3_0[0])) ^ ((port_x1_0[0] && port_x2_0[0]) && port_x3_2[0])) ^ ((port_x1_0[0] && port_x2_1[0]) && port_x3_2[0]));
  assign _zz_t0_3_0_2 = ((port_x1_0[0] && port_x2_2[0]) && port_x3_0[0]);
  assign _zz_t0_3_0_3 = (port_x1_0[0] && port_x2_2[0]);
  assign _zz_t0_3_0_4 = port_x3_1[0];
  assign _zz_t0_3_0_5 = port_x1_1[0];
  assign _zz_t0_3_0_6 = port_x2_0[0];
  assign _zz_t0_0_1 = ((((((_zz_t0_0_1_1 ^ _zz_t0_0_1_2) ^ (_zz_t0_0_1_3 && _zz_t0_0_1_4)) ^ ((_zz_t0_0_1_5 && _zz_t0_0_1_6) && port_x3_3[1])) ^ ((port_x1_2[1] && port_x2_3[1]) && port_x3_1[1])) ^ ((port_x1_2[1] && port_x2_3[1]) && port_x3_2[1])) ^ ((port_x1_2[1] && port_x2_3[1]) && port_x3_3[1]));
  assign _zz_t0_0_1_7 = ((port_x1_3[1] && port_x2_1[1]) && port_x3_2[1]);
  assign _zz_t0_0_1_8 = (port_x1_3[1] && port_x2_1[1]);
  assign _zz_t0_0_1_9 = port_x3_3[1];
  assign _zz_t0_0_1_10 = port_x1_3[1];
  assign _zz_t0_0_1_11 = port_x2_2[1];
  assign _zz_t0_0_1_1 = (((port_x0_1[1] ^ ((port_x1_1[1] && port_x2_1[1]) && port_x3_1[1])) ^ ((port_x1_1[1] && port_x2_2[1]) && port_x3_3[1])) ^ ((port_x1_1[1] && port_x2_3[1]) && port_x3_2[1]));
  assign _zz_t0_0_1_2 = ((port_x1_1[1] && port_x2_3[1]) && port_x3_3[1]);
  assign _zz_t0_0_1_3 = (port_x1_2[1] && port_x2_1[1]);
  assign _zz_t0_0_1_4 = port_x3_3[1];
  assign _zz_t0_0_1_5 = port_x1_2[1];
  assign _zz_t0_0_1_6 = port_x2_2[1];
  assign _zz_t0_1_1 = ((((((_zz_t0_1_1_1 ^ _zz_t0_1_1_2) ^ (_zz_t0_1_1_3 && _zz_t0_1_1_4)) ^ ((_zz_t0_1_1_5 && _zz_t0_1_1_6) && port_x3_3[1])) ^ ((port_x1_2[1] && port_x2_0[1]) && port_x3_2[1])) ^ ((port_x1_2[1] && port_x2_0[1]) && port_x3_3[1])) ^ ((port_x1_2[1] && port_x2_2[1]) && port_x3_0[1]));
  assign _zz_t0_1_1_7 = ((port_x1_2[1] && port_x2_2[1]) && port_x3_2[1]);
  assign _zz_t0_1_1_8 = (port_x1_2[1] && port_x2_3[1]);
  assign _zz_t0_1_1_9 = port_x3_0[1];
  assign _zz_t0_1_1_10 = port_x1_3[1];
  assign _zz_t0_1_1_11 = port_x2_0[1];
  assign _zz_t0_1_1_1 = (((port_x0_2[1] ^ ((port_x1_0[1] && port_x2_0[1]) && port_x3_3[1])) ^ ((port_x1_0[1] && port_x2_2[1]) && port_x3_2[1])) ^ ((port_x1_0[1] && port_x2_2[1]) && port_x3_3[1]));
  assign _zz_t0_1_1_2 = ((port_x1_0[1] && port_x2_3[1]) && port_x3_0[1]);
  assign _zz_t0_1_1_3 = (port_x1_0[1] && port_x2_3[1]);
  assign _zz_t0_1_1_4 = port_x3_2[1];
  assign _zz_t0_1_1_5 = port_x1_0[1];
  assign _zz_t0_1_1_6 = port_x2_3[1];
  assign _zz_t0_2_1 = ((((((_zz_t0_2_1_1 ^ _zz_t0_2_1_2) ^ (_zz_t0_2_1_3 && _zz_t0_2_1_4)) ^ ((_zz_t0_2_1_5 && _zz_t0_2_1_6) && port_x3_0[1])) ^ ((port_x1_1[1] && port_x2_0[1]) && port_x3_1[1])) ^ ((port_x1_1[1] && port_x2_0[1]) && port_x3_3[1])) ^ ((port_x1_1[1] && port_x2_1[1]) && port_x3_0[1]));
  assign _zz_t0_2_1_7 = ((port_x1_1[1] && port_x2_1[1]) && port_x3_3[1]);
  assign _zz_t0_2_1_8 = (port_x1_1[1] && port_x2_3[1]);
  assign _zz_t0_2_1_9 = port_x3_0[1];
  assign _zz_t0_2_1_10 = port_x1_1[1];
  assign _zz_t0_2_1_11 = port_x2_3[1];
  assign _zz_t0_2_1_1 = (((port_x0_3[1] ^ ((port_x1_0[1] && port_x2_0[1]) && port_x3_1[1])) ^ ((port_x1_0[1] && port_x2_1[1]) && port_x3_0[1])) ^ ((port_x1_0[1] && port_x2_1[1]) && port_x3_1[1]));
  assign _zz_t0_2_1_2 = ((port_x1_0[1] && port_x2_1[1]) && port_x3_3[1]);
  assign _zz_t0_2_1_3 = (port_x1_0[1] && port_x2_3[1]);
  assign _zz_t0_2_1_4 = port_x3_1[1];
  assign _zz_t0_2_1_5 = port_x1_1[1];
  assign _zz_t0_2_1_6 = port_x2_0[1];
  assign _zz_t0_3_1 = ((((((_zz_t0_3_1_1 ^ _zz_t0_3_1_2) ^ (_zz_t0_3_1_3 && _zz_t0_3_1_4)) ^ ((_zz_t0_3_1_5 && _zz_t0_3_1_6) && port_x3_2[1])) ^ ((port_x1_1[1] && port_x2_1[1]) && port_x3_2[1])) ^ ((port_x1_1[1] && port_x2_2[1]) && port_x3_0[1])) ^ ((port_x1_1[1] && port_x2_2[1]) && port_x3_1[1]));
  assign _zz_t0_3_1_7 = ((port_x1_1[1] && port_x2_2[1]) && port_x3_2[1]);
  assign _zz_t0_3_1_8 = (port_x1_2[1] && port_x2_0[1]);
  assign _zz_t0_3_1_9 = port_x3_0[1];
  assign _zz_t0_3_1_10 = port_x1_2[1];
  assign _zz_t0_3_1_11 = port_x2_0[1];
  assign _zz_t0_3_1_1 = (((port_x0_0[1] ^ ((port_x1_0[1] && port_x2_0[1]) && port_x3_0[1])) ^ ((port_x1_0[1] && port_x2_0[1]) && port_x3_2[1])) ^ ((port_x1_0[1] && port_x2_1[1]) && port_x3_2[1]));
  assign _zz_t0_3_1_2 = ((port_x1_0[1] && port_x2_2[1]) && port_x3_0[1]);
  assign _zz_t0_3_1_3 = (port_x1_0[1] && port_x2_2[1]);
  assign _zz_t0_3_1_4 = port_x3_1[1];
  assign _zz_t0_3_1_5 = port_x1_1[1];
  assign _zz_t0_3_1_6 = port_x2_0[1];
  assign _zz_t0_0_2 = ((((((_zz_t0_0_2_1 ^ _zz_t0_0_2_2) ^ (_zz_t0_0_2_3 && _zz_t0_0_2_4)) ^ ((_zz_t0_0_2_5 && _zz_t0_0_2_6) && port_x3_3[2])) ^ ((port_x1_2[2] && port_x2_3[2]) && port_x3_1[2])) ^ ((port_x1_2[2] && port_x2_3[2]) && port_x3_2[2])) ^ ((port_x1_2[2] && port_x2_3[2]) && port_x3_3[2]));
  assign _zz_t0_0_2_7 = ((port_x1_3[2] && port_x2_1[2]) && port_x3_2[2]);
  assign _zz_t0_0_2_8 = (port_x1_3[2] && port_x2_1[2]);
  assign _zz_t0_0_2_9 = port_x3_3[2];
  assign _zz_t0_0_2_10 = port_x1_3[2];
  assign _zz_t0_0_2_11 = port_x2_2[2];
  assign _zz_t0_0_2_1 = (((port_x0_1[2] ^ ((port_x1_1[2] && port_x2_1[2]) && port_x3_1[2])) ^ ((port_x1_1[2] && port_x2_2[2]) && port_x3_3[2])) ^ ((port_x1_1[2] && port_x2_3[2]) && port_x3_2[2]));
  assign _zz_t0_0_2_2 = ((port_x1_1[2] && port_x2_3[2]) && port_x3_3[2]);
  assign _zz_t0_0_2_3 = (port_x1_2[2] && port_x2_1[2]);
  assign _zz_t0_0_2_4 = port_x3_3[2];
  assign _zz_t0_0_2_5 = port_x1_2[2];
  assign _zz_t0_0_2_6 = port_x2_2[2];
  assign _zz_t0_1_2 = ((((((_zz_t0_1_2_1 ^ _zz_t0_1_2_2) ^ (_zz_t0_1_2_3 && _zz_t0_1_2_4)) ^ ((_zz_t0_1_2_5 && _zz_t0_1_2_6) && port_x3_3[2])) ^ ((port_x1_2[2] && port_x2_0[2]) && port_x3_2[2])) ^ ((port_x1_2[2] && port_x2_0[2]) && port_x3_3[2])) ^ ((port_x1_2[2] && port_x2_2[2]) && port_x3_0[2]));
  assign _zz_t0_1_2_7 = ((port_x1_2[2] && port_x2_2[2]) && port_x3_2[2]);
  assign _zz_t0_1_2_8 = (port_x1_2[2] && port_x2_3[2]);
  assign _zz_t0_1_2_9 = port_x3_0[2];
  assign _zz_t0_1_2_10 = port_x1_3[2];
  assign _zz_t0_1_2_11 = port_x2_0[2];
  assign _zz_t0_1_2_1 = (((port_x0_2[2] ^ ((port_x1_0[2] && port_x2_0[2]) && port_x3_3[2])) ^ ((port_x1_0[2] && port_x2_2[2]) && port_x3_2[2])) ^ ((port_x1_0[2] && port_x2_2[2]) && port_x3_3[2]));
  assign _zz_t0_1_2_2 = ((port_x1_0[2] && port_x2_3[2]) && port_x3_0[2]);
  assign _zz_t0_1_2_3 = (port_x1_0[2] && port_x2_3[2]);
  assign _zz_t0_1_2_4 = port_x3_2[2];
  assign _zz_t0_1_2_5 = port_x1_0[2];
  assign _zz_t0_1_2_6 = port_x2_3[2];
  assign _zz_t0_2_2 = ((((((_zz_t0_2_2_1 ^ _zz_t0_2_2_2) ^ (_zz_t0_2_2_3 && _zz_t0_2_2_4)) ^ ((_zz_t0_2_2_5 && _zz_t0_2_2_6) && port_x3_0[2])) ^ ((port_x1_1[2] && port_x2_0[2]) && port_x3_1[2])) ^ ((port_x1_1[2] && port_x2_0[2]) && port_x3_3[2])) ^ ((port_x1_1[2] && port_x2_1[2]) && port_x3_0[2]));
  assign _zz_t0_2_2_7 = ((port_x1_1[2] && port_x2_1[2]) && port_x3_3[2]);
  assign _zz_t0_2_2_8 = (port_x1_1[2] && port_x2_3[2]);
  assign _zz_t0_2_2_9 = port_x3_0[2];
  assign _zz_t0_2_2_10 = port_x1_1[2];
  assign _zz_t0_2_2_11 = port_x2_3[2];
  assign _zz_t0_2_2_1 = (((port_x0_3[2] ^ ((port_x1_0[2] && port_x2_0[2]) && port_x3_1[2])) ^ ((port_x1_0[2] && port_x2_1[2]) && port_x3_0[2])) ^ ((port_x1_0[2] && port_x2_1[2]) && port_x3_1[2]));
  assign _zz_t0_2_2_2 = ((port_x1_0[2] && port_x2_1[2]) && port_x3_3[2]);
  assign _zz_t0_2_2_3 = (port_x1_0[2] && port_x2_3[2]);
  assign _zz_t0_2_2_4 = port_x3_1[2];
  assign _zz_t0_2_2_5 = port_x1_1[2];
  assign _zz_t0_2_2_6 = port_x2_0[2];
  assign _zz_t0_3_2 = ((((((_zz_t0_3_2_1 ^ _zz_t0_3_2_2) ^ (_zz_t0_3_2_3 && _zz_t0_3_2_4)) ^ ((_zz_t0_3_2_5 && _zz_t0_3_2_6) && port_x3_2[2])) ^ ((port_x1_1[2] && port_x2_1[2]) && port_x3_2[2])) ^ ((port_x1_1[2] && port_x2_2[2]) && port_x3_0[2])) ^ ((port_x1_1[2] && port_x2_2[2]) && port_x3_1[2]));
  assign _zz_t0_3_2_7 = ((port_x1_1[2] && port_x2_2[2]) && port_x3_2[2]);
  assign _zz_t0_3_2_8 = (port_x1_2[2] && port_x2_0[2]);
  assign _zz_t0_3_2_9 = port_x3_0[2];
  assign _zz_t0_3_2_10 = port_x1_2[2];
  assign _zz_t0_3_2_11 = port_x2_0[2];
  assign _zz_t0_3_2_1 = (((port_x0_0[2] ^ ((port_x1_0[2] && port_x2_0[2]) && port_x3_0[2])) ^ ((port_x1_0[2] && port_x2_0[2]) && port_x3_2[2])) ^ ((port_x1_0[2] && port_x2_1[2]) && port_x3_2[2]));
  assign _zz_t0_3_2_2 = ((port_x1_0[2] && port_x2_2[2]) && port_x3_0[2]);
  assign _zz_t0_3_2_3 = (port_x1_0[2] && port_x2_2[2]);
  assign _zz_t0_3_2_4 = port_x3_1[2];
  assign _zz_t0_3_2_5 = port_x1_1[2];
  assign _zz_t0_3_2_6 = port_x2_0[2];
  Maj maj_12 (
    .port_i_0 (t0_0_0       ), //i
    .port_i_1 (t0_0_1       ), //i
    .port_i_2 (t0_0_2       ), //i
    .port_o   (maj_12_port_o)  //o
  );
  Maj maj_13 (
    .port_i_0 (t0_1_0       ), //i
    .port_i_1 (t0_1_1       ), //i
    .port_i_2 (t0_1_2       ), //i
    .port_o   (maj_13_port_o)  //o
  );
  Maj maj_14 (
    .port_i_0 (t0_2_0       ), //i
    .port_i_1 (t0_2_1       ), //i
    .port_i_2 (t0_2_2       ), //i
    .port_o   (maj_14_port_o)  //o
  );
  Maj maj_15 (
    .port_i_0 (t0_3_0       ), //i
    .port_i_1 (t0_3_1       ), //i
    .port_i_2 (t0_3_2       ), //i
    .port_o   (maj_15_port_o)  //o
  );
  Maj maj_16 (
    .port_i_0 (t0_0_0       ), //i
    .port_i_1 (t0_0_1       ), //i
    .port_i_2 (t0_0_2       ), //i
    .port_o   (maj_16_port_o)  //o
  );
  Maj maj_17 (
    .port_i_0 (t0_1_0       ), //i
    .port_i_1 (t0_1_1       ), //i
    .port_i_2 (t0_1_2       ), //i
    .port_o   (maj_17_port_o)  //o
  );
  Maj maj_18 (
    .port_i_0 (t0_2_0       ), //i
    .port_i_1 (t0_2_1       ), //i
    .port_i_2 (t0_2_2       ), //i
    .port_o   (maj_18_port_o)  //o
  );
  Maj maj_19 (
    .port_i_0 (t0_3_0       ), //i
    .port_i_1 (t0_3_1       ), //i
    .port_i_2 (t0_3_2       ), //i
    .port_o   (maj_19_port_o)  //o
  );
  Maj maj_20 (
    .port_i_0 (t0_0_0       ), //i
    .port_i_1 (t0_0_1       ), //i
    .port_i_2 (t0_0_2       ), //i
    .port_o   (maj_20_port_o)  //o
  );
  Maj maj_21 (
    .port_i_0 (t0_1_0       ), //i
    .port_i_1 (t0_1_1       ), //i
    .port_i_2 (t0_1_2       ), //i
    .port_o   (maj_21_port_o)  //o
  );
  Maj maj_22 (
    .port_i_0 (t0_2_0       ), //i
    .port_i_1 (t0_2_1       ), //i
    .port_i_2 (t0_2_2       ), //i
    .port_o   (maj_22_port_o)  //o
  );
  Maj maj_23 (
    .port_i_0 (t0_3_0       ), //i
    .port_i_1 (t0_3_1       ), //i
    .port_i_2 (t0_3_2       ), //i
    .port_o   (maj_23_port_o)  //o
  );
  assign t0_0_0 = (((((((_zz_t0_0_0 ^ _zz_t0_0_0_7) ^ (_zz_t0_0_0_8 && _zz_t0_0_0_9)) ^ ((_zz_t0_0_0_10 && _zz_t0_0_0_11) && port_x3_1[0])) ^ ((port_x1_3[0] && port_x2_2[0]) && port_x3_2[0])) ^ ((port_x1_3[0] && port_x2_2[0]) && port_x3_3[0])) ^ ((port_x1_3[0] && port_x2_3[0]) && port_x3_1[0])) ^ ((port_x1_3[0] && port_x2_3[0]) && port_x3_2[0]));
  assign t0_1_0 = (((((((_zz_t0_1_0 ^ _zz_t0_1_0_7) ^ (_zz_t0_1_0_8 && _zz_t0_1_0_9)) ^ ((_zz_t0_1_0_10 && _zz_t0_1_0_11) && port_x3_0[0])) ^ ((port_x1_3[0] && port_x2_0[0]) && port_x3_2[0])) ^ ((port_x1_3[0] && port_x2_0[0]) && port_x3_3[0])) ^ ((port_x1_3[0] && port_x2_2[0]) && port_x3_0[0])) ^ ((port_x1_3[0] && port_x2_3[0]) && port_x3_0[0]));
  assign t0_2_0 = (((((((_zz_t0_2_0 ^ _zz_t0_2_0_7) ^ (_zz_t0_2_0_8 && _zz_t0_2_0_9)) ^ ((_zz_t0_2_0_10 && _zz_t0_2_0_11) && port_x3_1[0])) ^ ((port_x1_3[0] && port_x2_0[0]) && port_x3_1[0])) ^ ((port_x1_3[0] && port_x2_1[0]) && port_x3_0[0])) ^ ((port_x1_3[0] && port_x2_1[0]) && port_x3_1[0])) ^ ((port_x1_3[0] && port_x2_3[0]) && port_x3_3[0]));
  assign t0_3_0 = (((((((_zz_t0_3_0 ^ _zz_t0_3_0_7) ^ (_zz_t0_3_0_8 && _zz_t0_3_0_9)) ^ ((_zz_t0_3_0_10 && _zz_t0_3_0_11) && port_x3_1[0])) ^ ((port_x1_2[0] && port_x2_1[0]) && port_x3_0[0])) ^ ((port_x1_2[0] && port_x2_1[0]) && port_x3_1[0])) ^ ((port_x1_2[0] && port_x2_1[0]) && port_x3_2[0])) ^ ((port_x1_2[0] && port_x2_2[0]) && port_x3_1[0]));
  assign t0_0_1 = (((((((_zz_t0_0_1 ^ _zz_t0_0_1_7) ^ (_zz_t0_0_1_8 && _zz_t0_0_1_9)) ^ ((_zz_t0_0_1_10 && _zz_t0_0_1_11) && port_x3_1[1])) ^ ((port_x1_3[1] && port_x2_2[1]) && port_x3_2[1])) ^ ((port_x1_3[1] && port_x2_2[1]) && port_x3_3[1])) ^ ((port_x1_3[1] && port_x2_3[1]) && port_x3_1[1])) ^ ((port_x1_3[1] && port_x2_3[1]) && port_x3_2[1]));
  assign t0_1_1 = (((((((_zz_t0_1_1 ^ _zz_t0_1_1_7) ^ (_zz_t0_1_1_8 && _zz_t0_1_1_9)) ^ ((_zz_t0_1_1_10 && _zz_t0_1_1_11) && port_x3_0[1])) ^ ((port_x1_3[1] && port_x2_0[1]) && port_x3_2[1])) ^ ((port_x1_3[1] && port_x2_0[1]) && port_x3_3[1])) ^ ((port_x1_3[1] && port_x2_2[1]) && port_x3_0[1])) ^ ((port_x1_3[1] && port_x2_3[1]) && port_x3_0[1]));
  assign t0_2_1 = (((((((_zz_t0_2_1 ^ _zz_t0_2_1_7) ^ (_zz_t0_2_1_8 && _zz_t0_2_1_9)) ^ ((_zz_t0_2_1_10 && _zz_t0_2_1_11) && port_x3_1[1])) ^ ((port_x1_3[1] && port_x2_0[1]) && port_x3_1[1])) ^ ((port_x1_3[1] && port_x2_1[1]) && port_x3_0[1])) ^ ((port_x1_3[1] && port_x2_1[1]) && port_x3_1[1])) ^ ((port_x1_3[1] && port_x2_3[1]) && port_x3_3[1]));
  assign t0_3_1 = (((((((_zz_t0_3_1 ^ _zz_t0_3_1_7) ^ (_zz_t0_3_1_8 && _zz_t0_3_1_9)) ^ ((_zz_t0_3_1_10 && _zz_t0_3_1_11) && port_x3_1[1])) ^ ((port_x1_2[1] && port_x2_1[1]) && port_x3_0[1])) ^ ((port_x1_2[1] && port_x2_1[1]) && port_x3_1[1])) ^ ((port_x1_2[1] && port_x2_1[1]) && port_x3_2[1])) ^ ((port_x1_2[1] && port_x2_2[1]) && port_x3_1[1]));
  assign t0_0_2 = (((((((_zz_t0_0_2 ^ _zz_t0_0_2_7) ^ (_zz_t0_0_2_8 && _zz_t0_0_2_9)) ^ ((_zz_t0_0_2_10 && _zz_t0_0_2_11) && port_x3_1[2])) ^ ((port_x1_3[2] && port_x2_2[2]) && port_x3_2[2])) ^ ((port_x1_3[2] && port_x2_2[2]) && port_x3_3[2])) ^ ((port_x1_3[2] && port_x2_3[2]) && port_x3_1[2])) ^ ((port_x1_3[2] && port_x2_3[2]) && port_x3_2[2]));
  assign t0_1_2 = (((((((_zz_t0_1_2 ^ _zz_t0_1_2_7) ^ (_zz_t0_1_2_8 && _zz_t0_1_2_9)) ^ ((_zz_t0_1_2_10 && _zz_t0_1_2_11) && port_x3_0[2])) ^ ((port_x1_3[2] && port_x2_0[2]) && port_x3_2[2])) ^ ((port_x1_3[2] && port_x2_0[2]) && port_x3_3[2])) ^ ((port_x1_3[2] && port_x2_2[2]) && port_x3_0[2])) ^ ((port_x1_3[2] && port_x2_3[2]) && port_x3_0[2]));
  assign t0_2_2 = (((((((_zz_t0_2_2 ^ _zz_t0_2_2_7) ^ (_zz_t0_2_2_8 && _zz_t0_2_2_9)) ^ ((_zz_t0_2_2_10 && _zz_t0_2_2_11) && port_x3_1[2])) ^ ((port_x1_3[2] && port_x2_0[2]) && port_x3_1[2])) ^ ((port_x1_3[2] && port_x2_1[2]) && port_x3_0[2])) ^ ((port_x1_3[2] && port_x2_1[2]) && port_x3_1[2])) ^ ((port_x1_3[2] && port_x2_3[2]) && port_x3_3[2]));
  assign t0_3_2 = (((((((_zz_t0_3_2 ^ _zz_t0_3_2_7) ^ (_zz_t0_3_2_8 && _zz_t0_3_2_9)) ^ ((_zz_t0_3_2_10 && _zz_t0_3_2_11) && port_x3_1[2])) ^ ((port_x1_2[2] && port_x2_1[2]) && port_x3_0[2])) ^ ((port_x1_2[2] && port_x2_1[2]) && port_x3_1[2])) ^ ((port_x1_2[2] && port_x2_1[2]) && port_x3_2[2])) ^ ((port_x1_2[2] && port_x2_2[2]) && port_x3_1[2]));
  assign port_y0_0 = reg_y0_0;
  assign port_y0_1 = reg_y0_1;
  assign port_y0_2 = reg_y0_2;
  assign port_y0_3 = reg_y0_3;
  assign t1_0_0 = port_x1_1[0];
  assign t1_1_0 = port_x1_2[0];
  assign t1_2_0 = port_x1_3[0];
  assign t1_3_0 = port_x1_0[0];
  assign t1_0_1 = port_x1_1[1];
  assign t1_1_1 = port_x1_2[1];
  assign t1_2_1 = port_x1_3[1];
  assign t1_3_1 = port_x1_0[1];
  assign t1_0_2 = port_x1_1[2];
  assign t1_1_2 = port_x1_2[2];
  assign t1_2_2 = port_x1_3[2];
  assign t1_3_2 = port_x1_0[2];
  assign port_y1_0 = reg_y1_0;
  assign port_y1_1 = reg_y1_1;
  assign port_y1_2 = reg_y1_2;
  assign port_y1_3 = reg_y1_3;
  assign t2_0_0 = port_x2_1[0];
  assign t2_1_0 = port_x2_2[0];
  assign t2_2_0 = port_x2_3[0];
  assign t2_3_0 = port_x2_0[0];
  assign t2_0_1 = port_x2_1[1];
  assign t2_1_1 = port_x2_2[1];
  assign t2_2_1 = port_x2_3[1];
  assign t2_3_1 = port_x2_0[1];
  assign t2_0_2 = port_x2_1[2];
  assign t2_1_2 = port_x2_2[2];
  assign t2_2_2 = port_x2_3[2];
  assign t2_3_2 = port_x2_0[2];
  assign port_y2_0 = reg_y2_0;
  assign port_y2_1 = reg_y2_1;
  assign port_y2_2 = reg_y2_2;
  assign port_y2_3 = reg_y2_3;
  assign t3_0_0 = port_x3_1[0];
  assign t3_1_0 = port_x3_2[0];
  assign t3_2_0 = port_x3_3[0];
  assign t3_3_0 = port_x3_0[0];
  assign t3_0_1 = port_x3_1[1];
  assign t3_1_1 = port_x3_2[1];
  assign t3_2_1 = port_x3_3[1];
  assign t3_3_1 = port_x3_0[1];
  assign t3_0_2 = port_x3_1[2];
  assign t3_1_2 = port_x3_2[2];
  assign t3_2_2 = port_x3_3[2];
  assign t3_3_2 = port_x3_0[2];
  assign port_y3_0 = reg_y3_0;
  assign port_y3_1 = reg_y3_1;
  assign port_y3_2 = reg_y3_2;
  assign port_y3_3 = reg_y3_3;
  always @(posedge clk) begin
    reg_y0_0[0] <= maj_12_port_o;
    reg_y0_1[0] <= maj_13_port_o;
    reg_y0_2[0] <= maj_14_port_o;
    reg_y0_3[0] <= maj_15_port_o;
    reg_y0_0[1] <= maj_16_port_o;
    reg_y0_1[1] <= maj_17_port_o;
    reg_y0_2[1] <= maj_18_port_o;
    reg_y0_3[1] <= maj_19_port_o;
    reg_y0_0[2] <= maj_20_port_o;
    reg_y0_1[2] <= maj_21_port_o;
    reg_y0_2[2] <= maj_22_port_o;
    reg_y0_3[2] <= maj_23_port_o;
    reg_y1_0[0] <= t1_0_0;
    reg_y1_1[0] <= t1_1_0;
    reg_y1_2[0] <= t1_2_0;
    reg_y1_3[0] <= t1_3_0;
    reg_y1_0[1] <= t1_0_1;
    reg_y1_1[1] <= t1_1_1;
    reg_y1_2[1] <= t1_2_1;
    reg_y1_3[1] <= t1_3_1;
    reg_y1_0[2] <= t1_0_2;
    reg_y1_1[2] <= t1_1_2;
    reg_y1_2[2] <= t1_2_2;
    reg_y1_3[2] <= t1_3_2;
    reg_y2_0[0] <= t2_0_0;
    reg_y2_1[0] <= t2_1_0;
    reg_y2_2[0] <= t2_2_0;
    reg_y2_3[0] <= t2_3_0;
    reg_y2_0[1] <= t2_0_1;
    reg_y2_1[1] <= t2_1_1;
    reg_y2_2[1] <= t2_2_1;
    reg_y2_3[1] <= t2_3_1;
    reg_y2_0[2] <= t2_0_2;
    reg_y2_1[2] <= t2_1_2;
    reg_y2_2[2] <= t2_2_2;
    reg_y2_3[2] <= t2_3_2;
    reg_y3_0[0] <= t3_0_0;
    reg_y3_1[0] <= t3_1_0;
    reg_y3_2[0] <= t3_2_0;
    reg_y3_3[0] <= t3_3_0;
    reg_y3_0[1] <= t3_0_1;
    reg_y3_1[1] <= t3_1_1;
    reg_y3_2[1] <= t3_2_1;
    reg_y3_3[1] <= t3_3_1;
    reg_y3_0[2] <= t3_0_2;
    reg_y3_1[2] <= t3_1_2;
    reg_y3_2[2] <= t3_2_2;
    reg_y3_3[2] <= t3_3_2;
  end


endmodule

//Maj replaced by Maj

//Maj replaced by Maj

//Maj replaced by Maj

//Maj replaced by Maj

//Maj replaced by Maj

//Maj replaced by Maj

//Maj replaced by Maj

//Maj replaced by Maj

//Maj replaced by Maj

//Maj replaced by Maj

//Maj replaced by Maj

module Maj (
  input               port_i_0,
  input               port_i_1,
  input               port_i_2,
  output              port_o
);

  wire                t0;
  wire                t1;
  wire                t2;

  assign t0 = (port_i_0 && port_i_2);
  assign t1 = (port_i_0 || port_i_2);
  assign t2 = (t0 || port_i_1);
  assign port_o = (t2 && t1);

endmodule
