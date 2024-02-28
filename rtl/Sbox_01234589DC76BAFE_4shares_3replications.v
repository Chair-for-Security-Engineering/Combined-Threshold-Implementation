// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : Sbox_01234589DC76BAFE_4shares_3replications
// Git hash  : db593c14fe8e83f0a4a5d43cf13325e631d65148

`timescale 1ns/1ps

module Sbox_01234589DC76BAFE_4shares_3replications (
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

  wire                maj_48_port_o;
  wire                maj_49_port_o;
  wire                maj_50_port_o;
  wire                maj_51_port_o;
  wire                maj_52_port_o;
  wire                maj_53_port_o;
  wire                maj_54_port_o;
  wire                maj_55_port_o;
  wire                maj_56_port_o;
  wire                maj_57_port_o;
  wire                maj_58_port_o;
  wire                maj_59_port_o;
  wire                maj_60_port_o;
  wire                maj_61_port_o;
  wire                maj_62_port_o;
  wire                maj_63_port_o;
  wire                maj_64_port_o;
  wire                maj_65_port_o;
  wire                maj_66_port_o;
  wire                maj_67_port_o;
  wire                maj_68_port_o;
  wire                maj_69_port_o;
  wire                maj_70_port_o;
  wire                maj_71_port_o;
  wire                maj_72_port_o;
  wire                maj_73_port_o;
  wire                maj_74_port_o;
  wire                maj_75_port_o;
  wire                maj_76_port_o;
  wire                maj_77_port_o;
  wire                maj_78_port_o;
  wire                maj_79_port_o;
  wire                maj_80_port_o;
  wire                maj_81_port_o;
  wire                maj_82_port_o;
  wire                maj_83_port_o;
  wire                maj_84_port_o;
  wire                maj_85_port_o;
  wire                maj_86_port_o;
  wire                maj_87_port_o;
  wire                maj_88_port_o;
  wire                maj_89_port_o;
  wire                maj_90_port_o;
  wire                maj_91_port_o;
  wire                maj_92_port_o;
  wire                maj_93_port_o;
  wire                maj_94_port_o;
  wire                maj_95_port_o;
  wire                _zz_t1_0_0;
  wire                _zz_t1_0_0_1;
  wire                _zz_t1_0_0_2;
  wire                _zz_t1_0_0_3;
  wire                _zz_t1_1_0;
  wire                _zz_t1_1_0_1;
  wire                _zz_t1_1_0_2;
  wire                _zz_t1_1_0_3;
  wire                _zz_t1_0_1;
  wire                _zz_t1_0_1_1;
  wire                _zz_t1_0_1_2;
  wire                _zz_t1_0_1_3;
  wire                _zz_t1_1_1;
  wire                _zz_t1_1_1_1;
  wire                _zz_t1_1_1_2;
  wire                _zz_t1_1_1_3;
  wire                _zz_t1_0_2;
  wire                _zz_t1_0_2_1;
  wire                _zz_t1_0_2_2;
  wire                _zz_t1_0_2_3;
  wire                _zz_t1_1_2;
  wire                _zz_t1_1_2_1;
  wire                _zz_t1_1_2_2;
  wire                _zz_t1_1_2_3;
  wire                _zz_t3_0_0;
  wire                _zz_t3_0_0_1;
  wire                _zz_t3_1_0;
  wire                _zz_t3_1_0_1;
  wire                _zz_t3_1_0_2;
  wire                _zz_t3_1_0_3;
  wire                _zz_t3_0_1;
  wire                _zz_t3_0_1_1;
  wire                _zz_t3_1_1;
  wire                _zz_t3_1_1_1;
  wire                _zz_t3_1_1_2;
  wire                _zz_t3_1_1_3;
  wire                _zz_t3_0_2;
  wire                _zz_t3_0_2_1;
  wire                _zz_t3_1_2;
  wire                _zz_t3_1_2_1;
  wire                _zz_t3_1_2_2;
  wire                _zz_t3_1_2_3;
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

  assign _zz_t1_0_0 = (((((port_x1_1[0] ^ (port_x1_1[0] && port_x2_1[0])) ^ (port_x1_1[0] && port_x2_2[0])) ^ (port_x1_1[0] && port_x2_3[0])) ^ (port_x1_2[0] && port_x2_1[0])) ^ (port_x1_2[0] && port_x2_3[0]));
  assign _zz_t1_0_0_1 = (port_x1_3[0] && port_x2_1[0]);
  assign _zz_t1_0_0_2 = port_x1_3[0];
  assign _zz_t1_0_0_3 = port_x2_2[0];
  assign _zz_t1_1_0 = (port_x1_2[0] ^ (port_x1_0[0] && port_x2_2[0]));
  assign _zz_t1_1_0_1 = (port_x1_0[0] && port_x2_3[0]);
  assign _zz_t1_1_0_2 = port_x1_2[0];
  assign _zz_t1_1_0_3 = port_x2_0[0];
  assign _zz_t1_0_1 = (((((port_x1_1[1] ^ (port_x1_1[1] && port_x2_1[1])) ^ (port_x1_1[1] && port_x2_2[1])) ^ (port_x1_1[1] && port_x2_3[1])) ^ (port_x1_2[1] && port_x2_1[1])) ^ (port_x1_2[1] && port_x2_3[1]));
  assign _zz_t1_0_1_1 = (port_x1_3[1] && port_x2_1[1]);
  assign _zz_t1_0_1_2 = port_x1_3[1];
  assign _zz_t1_0_1_3 = port_x2_2[1];
  assign _zz_t1_1_1 = (port_x1_2[1] ^ (port_x1_0[1] && port_x2_2[1]));
  assign _zz_t1_1_1_1 = (port_x1_0[1] && port_x2_3[1]);
  assign _zz_t1_1_1_2 = port_x1_2[1];
  assign _zz_t1_1_1_3 = port_x2_0[1];
  assign _zz_t1_0_2 = (((((port_x1_1[2] ^ (port_x1_1[2] && port_x2_1[2])) ^ (port_x1_1[2] && port_x2_2[2])) ^ (port_x1_1[2] && port_x2_3[2])) ^ (port_x1_2[2] && port_x2_1[2])) ^ (port_x1_2[2] && port_x2_3[2]));
  assign _zz_t1_0_2_1 = (port_x1_3[2] && port_x2_1[2]);
  assign _zz_t1_0_2_2 = port_x1_3[2];
  assign _zz_t1_0_2_3 = port_x2_2[2];
  assign _zz_t1_1_2 = (port_x1_2[2] ^ (port_x1_0[2] && port_x2_2[2]));
  assign _zz_t1_1_2_1 = (port_x1_0[2] && port_x2_3[2]);
  assign _zz_t1_1_2_2 = port_x1_2[2];
  assign _zz_t1_1_2_3 = port_x2_0[2];
  assign _zz_t3_0_0 = ((((((port_x1_1[0] && port_x2_1[0]) ^ (port_x1_1[0] && port_x2_2[0])) ^ (port_x1_1[0] && port_x2_3[0])) ^ (port_x1_2[0] && port_x2_1[0])) ^ (port_x1_2[0] && port_x2_3[0])) ^ (port_x1_3[0] && port_x2_1[0]));
  assign _zz_t3_0_0_1 = (port_x1_3[0] && port_x2_2[0]);
  assign _zz_t3_1_0 = ((port_x1_0[0] && port_x2_2[0]) ^ (port_x1_0[0] && port_x2_3[0]));
  assign _zz_t3_1_0_1 = (port_x1_2[0] && port_x2_0[0]);
  assign _zz_t3_1_0_2 = port_x1_2[0];
  assign _zz_t3_1_0_3 = port_x2_2[0];
  assign _zz_t3_0_1 = ((((((port_x1_1[1] && port_x2_1[1]) ^ (port_x1_1[1] && port_x2_2[1])) ^ (port_x1_1[1] && port_x2_3[1])) ^ (port_x1_2[1] && port_x2_1[1])) ^ (port_x1_2[1] && port_x2_3[1])) ^ (port_x1_3[1] && port_x2_1[1]));
  assign _zz_t3_0_1_1 = (port_x1_3[1] && port_x2_2[1]);
  assign _zz_t3_1_1 = ((port_x1_0[1] && port_x2_2[1]) ^ (port_x1_0[1] && port_x2_3[1]));
  assign _zz_t3_1_1_1 = (port_x1_2[1] && port_x2_0[1]);
  assign _zz_t3_1_1_2 = port_x1_2[1];
  assign _zz_t3_1_1_3 = port_x2_2[1];
  assign _zz_t3_0_2 = ((((((port_x1_1[2] && port_x2_1[2]) ^ (port_x1_1[2] && port_x2_2[2])) ^ (port_x1_1[2] && port_x2_3[2])) ^ (port_x1_2[2] && port_x2_1[2])) ^ (port_x1_2[2] && port_x2_3[2])) ^ (port_x1_3[2] && port_x2_1[2]));
  assign _zz_t3_0_2_1 = (port_x1_3[2] && port_x2_2[2]);
  assign _zz_t3_1_2 = ((port_x1_0[2] && port_x2_2[2]) ^ (port_x1_0[2] && port_x2_3[2]));
  assign _zz_t3_1_2_1 = (port_x1_2[2] && port_x2_0[2]);
  assign _zz_t3_1_2_2 = port_x1_2[2];
  assign _zz_t3_1_2_3 = port_x2_2[2];
  Maj maj_48 (
    .port_i_0 (t0_0_0       ), //i
    .port_i_1 (t0_0_1       ), //i
    .port_i_2 (t0_0_2       ), //i
    .port_o   (maj_48_port_o)  //o
  );
  Maj maj_49 (
    .port_i_0 (t0_1_0       ), //i
    .port_i_1 (t0_1_1       ), //i
    .port_i_2 (t0_1_2       ), //i
    .port_o   (maj_49_port_o)  //o
  );
  Maj maj_50 (
    .port_i_0 (t0_2_0       ), //i
    .port_i_1 (t0_2_1       ), //i
    .port_i_2 (t0_2_2       ), //i
    .port_o   (maj_50_port_o)  //o
  );
  Maj maj_51 (
    .port_i_0 (t0_3_0       ), //i
    .port_i_1 (t0_3_1       ), //i
    .port_i_2 (t0_3_2       ), //i
    .port_o   (maj_51_port_o)  //o
  );
  Maj maj_52 (
    .port_i_0 (t0_0_0       ), //i
    .port_i_1 (t0_0_1       ), //i
    .port_i_2 (t0_0_2       ), //i
    .port_o   (maj_52_port_o)  //o
  );
  Maj maj_53 (
    .port_i_0 (t0_1_0       ), //i
    .port_i_1 (t0_1_1       ), //i
    .port_i_2 (t0_1_2       ), //i
    .port_o   (maj_53_port_o)  //o
  );
  Maj maj_54 (
    .port_i_0 (t0_2_0       ), //i
    .port_i_1 (t0_2_1       ), //i
    .port_i_2 (t0_2_2       ), //i
    .port_o   (maj_54_port_o)  //o
  );
  Maj maj_55 (
    .port_i_0 (t0_3_0       ), //i
    .port_i_1 (t0_3_1       ), //i
    .port_i_2 (t0_3_2       ), //i
    .port_o   (maj_55_port_o)  //o
  );
  Maj maj_56 (
    .port_i_0 (t0_0_0       ), //i
    .port_i_1 (t0_0_1       ), //i
    .port_i_2 (t0_0_2       ), //i
    .port_o   (maj_56_port_o)  //o
  );
  Maj maj_57 (
    .port_i_0 (t0_1_0       ), //i
    .port_i_1 (t0_1_1       ), //i
    .port_i_2 (t0_1_2       ), //i
    .port_o   (maj_57_port_o)  //o
  );
  Maj maj_58 (
    .port_i_0 (t0_2_0       ), //i
    .port_i_1 (t0_2_1       ), //i
    .port_i_2 (t0_2_2       ), //i
    .port_o   (maj_58_port_o)  //o
  );
  Maj maj_59 (
    .port_i_0 (t0_3_0       ), //i
    .port_i_1 (t0_3_1       ), //i
    .port_i_2 (t0_3_2       ), //i
    .port_o   (maj_59_port_o)  //o
  );
  Maj maj_60 (
    .port_i_0 (t1_0_0       ), //i
    .port_i_1 (t1_0_1       ), //i
    .port_i_2 (t1_0_2       ), //i
    .port_o   (maj_60_port_o)  //o
  );
  Maj maj_61 (
    .port_i_0 (t1_1_0       ), //i
    .port_i_1 (t1_1_1       ), //i
    .port_i_2 (t1_1_2       ), //i
    .port_o   (maj_61_port_o)  //o
  );
  Maj maj_62 (
    .port_i_0 (t1_2_0       ), //i
    .port_i_1 (t1_2_1       ), //i
    .port_i_2 (t1_2_2       ), //i
    .port_o   (maj_62_port_o)  //o
  );
  Maj maj_63 (
    .port_i_0 (t1_3_0       ), //i
    .port_i_1 (t1_3_1       ), //i
    .port_i_2 (t1_3_2       ), //i
    .port_o   (maj_63_port_o)  //o
  );
  Maj maj_64 (
    .port_i_0 (t1_0_0       ), //i
    .port_i_1 (t1_0_1       ), //i
    .port_i_2 (t1_0_2       ), //i
    .port_o   (maj_64_port_o)  //o
  );
  Maj maj_65 (
    .port_i_0 (t1_1_0       ), //i
    .port_i_1 (t1_1_1       ), //i
    .port_i_2 (t1_1_2       ), //i
    .port_o   (maj_65_port_o)  //o
  );
  Maj maj_66 (
    .port_i_0 (t1_2_0       ), //i
    .port_i_1 (t1_2_1       ), //i
    .port_i_2 (t1_2_2       ), //i
    .port_o   (maj_66_port_o)  //o
  );
  Maj maj_67 (
    .port_i_0 (t1_3_0       ), //i
    .port_i_1 (t1_3_1       ), //i
    .port_i_2 (t1_3_2       ), //i
    .port_o   (maj_67_port_o)  //o
  );
  Maj maj_68 (
    .port_i_0 (t1_0_0       ), //i
    .port_i_1 (t1_0_1       ), //i
    .port_i_2 (t1_0_2       ), //i
    .port_o   (maj_68_port_o)  //o
  );
  Maj maj_69 (
    .port_i_0 (t1_1_0       ), //i
    .port_i_1 (t1_1_1       ), //i
    .port_i_2 (t1_1_2       ), //i
    .port_o   (maj_69_port_o)  //o
  );
  Maj maj_70 (
    .port_i_0 (t1_2_0       ), //i
    .port_i_1 (t1_2_1       ), //i
    .port_i_2 (t1_2_2       ), //i
    .port_o   (maj_70_port_o)  //o
  );
  Maj maj_71 (
    .port_i_0 (t1_3_0       ), //i
    .port_i_1 (t1_3_1       ), //i
    .port_i_2 (t1_3_2       ), //i
    .port_o   (maj_71_port_o)  //o
  );
  Maj maj_72 (
    .port_i_0 (t2_0_0       ), //i
    .port_i_1 (t2_0_1       ), //i
    .port_i_2 (t2_0_2       ), //i
    .port_o   (maj_72_port_o)  //o
  );
  Maj maj_73 (
    .port_i_0 (t2_1_0       ), //i
    .port_i_1 (t2_1_1       ), //i
    .port_i_2 (t2_1_2       ), //i
    .port_o   (maj_73_port_o)  //o
  );
  Maj maj_74 (
    .port_i_0 (t2_2_0       ), //i
    .port_i_1 (t2_2_1       ), //i
    .port_i_2 (t2_2_2       ), //i
    .port_o   (maj_74_port_o)  //o
  );
  Maj maj_75 (
    .port_i_0 (t2_3_0       ), //i
    .port_i_1 (t2_3_1       ), //i
    .port_i_2 (t2_3_2       ), //i
    .port_o   (maj_75_port_o)  //o
  );
  Maj maj_76 (
    .port_i_0 (t2_0_0       ), //i
    .port_i_1 (t2_0_1       ), //i
    .port_i_2 (t2_0_2       ), //i
    .port_o   (maj_76_port_o)  //o
  );
  Maj maj_77 (
    .port_i_0 (t2_1_0       ), //i
    .port_i_1 (t2_1_1       ), //i
    .port_i_2 (t2_1_2       ), //i
    .port_o   (maj_77_port_o)  //o
  );
  Maj maj_78 (
    .port_i_0 (t2_2_0       ), //i
    .port_i_1 (t2_2_1       ), //i
    .port_i_2 (t2_2_2       ), //i
    .port_o   (maj_78_port_o)  //o
  );
  Maj maj_79 (
    .port_i_0 (t2_3_0       ), //i
    .port_i_1 (t2_3_1       ), //i
    .port_i_2 (t2_3_2       ), //i
    .port_o   (maj_79_port_o)  //o
  );
  Maj maj_80 (
    .port_i_0 (t2_0_0       ), //i
    .port_i_1 (t2_0_1       ), //i
    .port_i_2 (t2_0_2       ), //i
    .port_o   (maj_80_port_o)  //o
  );
  Maj maj_81 (
    .port_i_0 (t2_1_0       ), //i
    .port_i_1 (t2_1_1       ), //i
    .port_i_2 (t2_1_2       ), //i
    .port_o   (maj_81_port_o)  //o
  );
  Maj maj_82 (
    .port_i_0 (t2_2_0       ), //i
    .port_i_1 (t2_2_1       ), //i
    .port_i_2 (t2_2_2       ), //i
    .port_o   (maj_82_port_o)  //o
  );
  Maj maj_83 (
    .port_i_0 (t2_3_0       ), //i
    .port_i_1 (t2_3_1       ), //i
    .port_i_2 (t2_3_2       ), //i
    .port_o   (maj_83_port_o)  //o
  );
  Maj maj_84 (
    .port_i_0 (t3_0_0       ), //i
    .port_i_1 (t3_0_1       ), //i
    .port_i_2 (t3_0_2       ), //i
    .port_o   (maj_84_port_o)  //o
  );
  Maj maj_85 (
    .port_i_0 (t3_1_0       ), //i
    .port_i_1 (t3_1_1       ), //i
    .port_i_2 (t3_1_2       ), //i
    .port_o   (maj_85_port_o)  //o
  );
  Maj maj_86 (
    .port_i_0 (t3_2_0       ), //i
    .port_i_1 (t3_2_1       ), //i
    .port_i_2 (t3_2_2       ), //i
    .port_o   (maj_86_port_o)  //o
  );
  Maj maj_87 (
    .port_i_0 (t3_3_0       ), //i
    .port_i_1 (t3_3_1       ), //i
    .port_i_2 (t3_3_2       ), //i
    .port_o   (maj_87_port_o)  //o
  );
  Maj maj_88 (
    .port_i_0 (t3_0_0       ), //i
    .port_i_1 (t3_0_1       ), //i
    .port_i_2 (t3_0_2       ), //i
    .port_o   (maj_88_port_o)  //o
  );
  Maj maj_89 (
    .port_i_0 (t3_1_0       ), //i
    .port_i_1 (t3_1_1       ), //i
    .port_i_2 (t3_1_2       ), //i
    .port_o   (maj_89_port_o)  //o
  );
  Maj maj_90 (
    .port_i_0 (t3_2_0       ), //i
    .port_i_1 (t3_2_1       ), //i
    .port_i_2 (t3_2_2       ), //i
    .port_o   (maj_90_port_o)  //o
  );
  Maj maj_91 (
    .port_i_0 (t3_3_0       ), //i
    .port_i_1 (t3_3_1       ), //i
    .port_i_2 (t3_3_2       ), //i
    .port_o   (maj_91_port_o)  //o
  );
  Maj maj_92 (
    .port_i_0 (t3_0_0       ), //i
    .port_i_1 (t3_0_1       ), //i
    .port_i_2 (t3_0_2       ), //i
    .port_o   (maj_92_port_o)  //o
  );
  Maj maj_93 (
    .port_i_0 (t3_1_0       ), //i
    .port_i_1 (t3_1_1       ), //i
    .port_i_2 (t3_1_2       ), //i
    .port_o   (maj_93_port_o)  //o
  );
  Maj maj_94 (
    .port_i_0 (t3_2_0       ), //i
    .port_i_1 (t3_2_1       ), //i
    .port_i_2 (t3_2_2       ), //i
    .port_o   (maj_94_port_o)  //o
  );
  Maj maj_95 (
    .port_i_0 (t3_3_0       ), //i
    .port_i_1 (t3_3_1       ), //i
    .port_i_2 (t3_3_2       ), //i
    .port_o   (maj_95_port_o)  //o
  );
  assign t0_0_0 = (port_x0_1[0] ^ port_x3_1[0]);
  assign t0_1_0 = (port_x0_2[0] ^ port_x3_2[0]);
  assign t0_2_0 = (port_x0_3[0] ^ port_x3_3[0]);
  assign t0_3_0 = (port_x0_0[0] ^ port_x3_0[0]);
  assign t0_0_1 = (port_x0_1[1] ^ port_x3_1[1]);
  assign t0_1_1 = (port_x0_2[1] ^ port_x3_2[1]);
  assign t0_2_1 = (port_x0_3[1] ^ port_x3_3[1]);
  assign t0_3_1 = (port_x0_0[1] ^ port_x3_0[1]);
  assign t0_0_2 = (port_x0_1[2] ^ port_x3_1[2]);
  assign t0_1_2 = (port_x0_2[2] ^ port_x3_2[2]);
  assign t0_2_2 = (port_x0_3[2] ^ port_x3_3[2]);
  assign t0_3_2 = (port_x0_0[2] ^ port_x3_0[2]);
  assign port_y0_0 = reg_y0_0;
  assign port_y0_1 = reg_y0_1;
  assign port_y0_2 = reg_y0_2;
  assign port_y0_3 = reg_y0_3;
  assign t1_0_0 = (((((((((_zz_t1_0_0 ^ _zz_t1_0_0_1) ^ (_zz_t1_0_0_2 && _zz_t1_0_0_3)) ^ (port_x2_1[0] && port_x3_1[0])) ^ (port_x2_1[0] && port_x3_2[0])) ^ (port_x2_1[0] && port_x3_3[0])) ^ (port_x2_2[0] && port_x3_1[0])) ^ (port_x2_2[0] && port_x3_3[0])) ^ (port_x2_3[0] && port_x3_1[0])) ^ (port_x2_3[0] && port_x3_2[0]));
  assign t1_1_0 = (((((((((_zz_t1_1_0 ^ _zz_t1_1_0_1) ^ (_zz_t1_1_0_2 && _zz_t1_1_0_3)) ^ (port_x1_2[0] && port_x2_2[0])) ^ (port_x1_3[0] && port_x2_0[0])) ^ (port_x2_0[0] && port_x3_2[0])) ^ (port_x2_0[0] && port_x3_3[0])) ^ (port_x2_2[0] && port_x3_0[0])) ^ (port_x2_2[0] && port_x3_2[0])) ^ (port_x2_3[0] && port_x3_0[0]));
  assign t1_2_0 = ((((((port_x1_3[0] ^ (port_x1_0[0] && port_x2_1[0])) ^ (port_x1_1[0] && port_x2_0[0])) ^ (port_x1_3[0] && port_x2_3[0])) ^ (port_x2_0[0] && port_x3_1[0])) ^ (port_x2_1[0] && port_x3_0[0])) ^ (port_x2_3[0] && port_x3_3[0]));
  assign t1_3_0 = ((port_x1_0[0] ^ (port_x1_0[0] && port_x2_0[0])) ^ (port_x2_0[0] && port_x3_0[0]));
  assign t1_0_1 = (((((((((_zz_t1_0_1 ^ _zz_t1_0_1_1) ^ (_zz_t1_0_1_2 && _zz_t1_0_1_3)) ^ (port_x2_1[1] && port_x3_1[1])) ^ (port_x2_1[1] && port_x3_2[1])) ^ (port_x2_1[1] && port_x3_3[1])) ^ (port_x2_2[1] && port_x3_1[1])) ^ (port_x2_2[1] && port_x3_3[1])) ^ (port_x2_3[1] && port_x3_1[1])) ^ (port_x2_3[1] && port_x3_2[1]));
  assign t1_1_1 = (((((((((_zz_t1_1_1 ^ _zz_t1_1_1_1) ^ (_zz_t1_1_1_2 && _zz_t1_1_1_3)) ^ (port_x1_2[1] && port_x2_2[1])) ^ (port_x1_3[1] && port_x2_0[1])) ^ (port_x2_0[1] && port_x3_2[1])) ^ (port_x2_0[1] && port_x3_3[1])) ^ (port_x2_2[1] && port_x3_0[1])) ^ (port_x2_2[1] && port_x3_2[1])) ^ (port_x2_3[1] && port_x3_0[1]));
  assign t1_2_1 = ((((((port_x1_3[1] ^ (port_x1_0[1] && port_x2_1[1])) ^ (port_x1_1[1] && port_x2_0[1])) ^ (port_x1_3[1] && port_x2_3[1])) ^ (port_x2_0[1] && port_x3_1[1])) ^ (port_x2_1[1] && port_x3_0[1])) ^ (port_x2_3[1] && port_x3_3[1]));
  assign t1_3_1 = ((port_x1_0[1] ^ (port_x1_0[1] && port_x2_0[1])) ^ (port_x2_0[1] && port_x3_0[1]));
  assign t1_0_2 = (((((((((_zz_t1_0_2 ^ _zz_t1_0_2_1) ^ (_zz_t1_0_2_2 && _zz_t1_0_2_3)) ^ (port_x2_1[2] && port_x3_1[2])) ^ (port_x2_1[2] && port_x3_2[2])) ^ (port_x2_1[2] && port_x3_3[2])) ^ (port_x2_2[2] && port_x3_1[2])) ^ (port_x2_2[2] && port_x3_3[2])) ^ (port_x2_3[2] && port_x3_1[2])) ^ (port_x2_3[2] && port_x3_2[2]));
  assign t1_1_2 = (((((((((_zz_t1_1_2 ^ _zz_t1_1_2_1) ^ (_zz_t1_1_2_2 && _zz_t1_1_2_3)) ^ (port_x1_2[2] && port_x2_2[2])) ^ (port_x1_3[2] && port_x2_0[2])) ^ (port_x2_0[2] && port_x3_2[2])) ^ (port_x2_0[2] && port_x3_3[2])) ^ (port_x2_2[2] && port_x3_0[2])) ^ (port_x2_2[2] && port_x3_2[2])) ^ (port_x2_3[2] && port_x3_0[2]));
  assign t1_2_2 = ((((((port_x1_3[2] ^ (port_x1_0[2] && port_x2_1[2])) ^ (port_x1_1[2] && port_x2_0[2])) ^ (port_x1_3[2] && port_x2_3[2])) ^ (port_x2_0[2] && port_x3_1[2])) ^ (port_x2_1[2] && port_x3_0[2])) ^ (port_x2_3[2] && port_x3_3[2]));
  assign t1_3_2 = ((port_x1_0[2] ^ (port_x1_0[2] && port_x2_0[2])) ^ (port_x2_0[2] && port_x3_0[2]));
  assign port_y1_0 = reg_y1_0;
  assign port_y1_1 = reg_y1_1;
  assign port_y1_2 = reg_y1_2;
  assign port_y1_3 = reg_y1_3;
  assign t2_0_0 = ((((((((port_x2_1[0] ^ (port_x1_1[0] && port_x2_1[0])) ^ (port_x1_1[0] && port_x2_2[0])) ^ (port_x1_1[0] && port_x2_3[0])) ^ (port_x1_2[0] && port_x2_1[0])) ^ (port_x1_2[0] && port_x2_3[0])) ^ (port_x1_3[0] && port_x2_1[0])) ^ (port_x1_3[0] && port_x2_2[0])) ^ port_x3_1[0]);
  assign t2_1_0 = ((((((port_x2_2[0] ^ (port_x1_0[0] && port_x2_2[0])) ^ (port_x1_0[0] && port_x2_3[0])) ^ (port_x1_2[0] && port_x2_0[0])) ^ (port_x1_2[0] && port_x2_2[0])) ^ (port_x1_3[0] && port_x2_0[0])) ^ port_x3_2[0]);
  assign t2_2_0 = ((((port_x2_3[0] ^ (port_x1_0[0] && port_x2_1[0])) ^ (port_x1_1[0] && port_x2_0[0])) ^ (port_x1_3[0] && port_x2_3[0])) ^ port_x3_3[0]);
  assign t2_3_0 = ((port_x2_0[0] ^ (port_x1_0[0] && port_x2_0[0])) ^ port_x3_0[0]);
  assign t2_0_1 = ((((((((port_x2_1[1] ^ (port_x1_1[1] && port_x2_1[1])) ^ (port_x1_1[1] && port_x2_2[1])) ^ (port_x1_1[1] && port_x2_3[1])) ^ (port_x1_2[1] && port_x2_1[1])) ^ (port_x1_2[1] && port_x2_3[1])) ^ (port_x1_3[1] && port_x2_1[1])) ^ (port_x1_3[1] && port_x2_2[1])) ^ port_x3_1[1]);
  assign t2_1_1 = ((((((port_x2_2[1] ^ (port_x1_0[1] && port_x2_2[1])) ^ (port_x1_0[1] && port_x2_3[1])) ^ (port_x1_2[1] && port_x2_0[1])) ^ (port_x1_2[1] && port_x2_2[1])) ^ (port_x1_3[1] && port_x2_0[1])) ^ port_x3_2[1]);
  assign t2_2_1 = ((((port_x2_3[1] ^ (port_x1_0[1] && port_x2_1[1])) ^ (port_x1_1[1] && port_x2_0[1])) ^ (port_x1_3[1] && port_x2_3[1])) ^ port_x3_3[1]);
  assign t2_3_1 = ((port_x2_0[1] ^ (port_x1_0[1] && port_x2_0[1])) ^ port_x3_0[1]);
  assign t2_0_2 = ((((((((port_x2_1[2] ^ (port_x1_1[2] && port_x2_1[2])) ^ (port_x1_1[2] && port_x2_2[2])) ^ (port_x1_1[2] && port_x2_3[2])) ^ (port_x1_2[2] && port_x2_1[2])) ^ (port_x1_2[2] && port_x2_3[2])) ^ (port_x1_3[2] && port_x2_1[2])) ^ (port_x1_3[2] && port_x2_2[2])) ^ port_x3_1[2]);
  assign t2_1_2 = ((((((port_x2_2[2] ^ (port_x1_0[2] && port_x2_2[2])) ^ (port_x1_0[2] && port_x2_3[2])) ^ (port_x1_2[2] && port_x2_0[2])) ^ (port_x1_2[2] && port_x2_2[2])) ^ (port_x1_3[2] && port_x2_0[2])) ^ port_x3_2[2]);
  assign t2_2_2 = ((((port_x2_3[2] ^ (port_x1_0[2] && port_x2_1[2])) ^ (port_x1_1[2] && port_x2_0[2])) ^ (port_x1_3[2] && port_x2_3[2])) ^ port_x3_3[2]);
  assign t2_3_2 = ((port_x2_0[2] ^ (port_x1_0[2] && port_x2_0[2])) ^ port_x3_0[2]);
  assign port_y2_0 = reg_y2_0;
  assign port_y2_1 = reg_y2_1;
  assign port_y2_2 = reg_y2_2;
  assign port_y2_3 = reg_y2_3;
  assign t3_0_0 = (((((((((_zz_t3_0_0 ^ _zz_t3_0_0_1) ^ port_x3_1[0]) ^ (port_x1_1[0] && port_x3_1[0])) ^ (port_x1_1[0] && port_x3_2[0])) ^ (port_x1_1[0] && port_x3_3[0])) ^ (port_x1_2[0] && port_x3_1[0])) ^ (port_x1_2[0] && port_x3_3[0])) ^ (port_x1_3[0] && port_x3_1[0])) ^ (port_x1_3[0] && port_x3_2[0]));
  assign t3_1_0 = (((((((((_zz_t3_1_0 ^ _zz_t3_1_0_1) ^ (_zz_t3_1_0_2 && _zz_t3_1_0_3)) ^ (port_x1_3[0] && port_x2_0[0])) ^ port_x3_2[0]) ^ (port_x1_0[0] && port_x3_2[0])) ^ (port_x1_0[0] && port_x3_3[0])) ^ (port_x1_2[0] && port_x3_0[0])) ^ (port_x1_2[0] && port_x3_2[0])) ^ (port_x1_3[0] && port_x3_0[0]));
  assign t3_2_0 = (((((((port_x1_0[0] && port_x2_1[0]) ^ (port_x1_1[0] && port_x2_0[0])) ^ (port_x1_3[0] && port_x2_3[0])) ^ port_x3_3[0]) ^ (port_x1_0[0] && port_x3_1[0])) ^ (port_x1_1[0] && port_x3_0[0])) ^ (port_x1_3[0] && port_x3_3[0]));
  assign t3_3_0 = (((port_x1_0[0] && port_x2_0[0]) ^ port_x3_0[0]) ^ (port_x1_0[0] && port_x3_0[0]));
  assign t3_0_1 = (((((((((_zz_t3_0_1 ^ _zz_t3_0_1_1) ^ port_x3_1[1]) ^ (port_x1_1[1] && port_x3_1[1])) ^ (port_x1_1[1] && port_x3_2[1])) ^ (port_x1_1[1] && port_x3_3[1])) ^ (port_x1_2[1] && port_x3_1[1])) ^ (port_x1_2[1] && port_x3_3[1])) ^ (port_x1_3[1] && port_x3_1[1])) ^ (port_x1_3[1] && port_x3_2[1]));
  assign t3_1_1 = (((((((((_zz_t3_1_1 ^ _zz_t3_1_1_1) ^ (_zz_t3_1_1_2 && _zz_t3_1_1_3)) ^ (port_x1_3[1] && port_x2_0[1])) ^ port_x3_2[1]) ^ (port_x1_0[1] && port_x3_2[1])) ^ (port_x1_0[1] && port_x3_3[1])) ^ (port_x1_2[1] && port_x3_0[1])) ^ (port_x1_2[1] && port_x3_2[1])) ^ (port_x1_3[1] && port_x3_0[1]));
  assign t3_2_1 = (((((((port_x1_0[1] && port_x2_1[1]) ^ (port_x1_1[1] && port_x2_0[1])) ^ (port_x1_3[1] && port_x2_3[1])) ^ port_x3_3[1]) ^ (port_x1_0[1] && port_x3_1[1])) ^ (port_x1_1[1] && port_x3_0[1])) ^ (port_x1_3[1] && port_x3_3[1]));
  assign t3_3_1 = (((port_x1_0[1] && port_x2_0[1]) ^ port_x3_0[1]) ^ (port_x1_0[1] && port_x3_0[1]));
  assign t3_0_2 = (((((((((_zz_t3_0_2 ^ _zz_t3_0_2_1) ^ port_x3_1[2]) ^ (port_x1_1[2] && port_x3_1[2])) ^ (port_x1_1[2] && port_x3_2[2])) ^ (port_x1_1[2] && port_x3_3[2])) ^ (port_x1_2[2] && port_x3_1[2])) ^ (port_x1_2[2] && port_x3_3[2])) ^ (port_x1_3[2] && port_x3_1[2])) ^ (port_x1_3[2] && port_x3_2[2]));
  assign t3_1_2 = (((((((((_zz_t3_1_2 ^ _zz_t3_1_2_1) ^ (_zz_t3_1_2_2 && _zz_t3_1_2_3)) ^ (port_x1_3[2] && port_x2_0[2])) ^ port_x3_2[2]) ^ (port_x1_0[2] && port_x3_2[2])) ^ (port_x1_0[2] && port_x3_3[2])) ^ (port_x1_2[2] && port_x3_0[2])) ^ (port_x1_2[2] && port_x3_2[2])) ^ (port_x1_3[2] && port_x3_0[2]));
  assign t3_2_2 = (((((((port_x1_0[2] && port_x2_1[2]) ^ (port_x1_1[2] && port_x2_0[2])) ^ (port_x1_3[2] && port_x2_3[2])) ^ port_x3_3[2]) ^ (port_x1_0[2] && port_x3_1[2])) ^ (port_x1_1[2] && port_x3_0[2])) ^ (port_x1_3[2] && port_x3_3[2]));
  assign t3_3_2 = (((port_x1_0[2] && port_x2_0[2]) ^ port_x3_0[2]) ^ (port_x1_0[2] && port_x3_0[2]));
  assign port_y3_0 = reg_y3_0;
  assign port_y3_1 = reg_y3_1;
  assign port_y3_2 = reg_y3_2;
  assign port_y3_3 = reg_y3_3;
  always @(posedge clk) begin
    reg_y0_0[0] <= maj_48_port_o;
    reg_y0_1[0] <= maj_49_port_o;
    reg_y0_2[0] <= maj_50_port_o;
    reg_y0_3[0] <= maj_51_port_o;
    reg_y0_0[1] <= maj_52_port_o;
    reg_y0_1[1] <= maj_53_port_o;
    reg_y0_2[1] <= maj_54_port_o;
    reg_y0_3[1] <= maj_55_port_o;
    reg_y0_0[2] <= maj_56_port_o;
    reg_y0_1[2] <= maj_57_port_o;
    reg_y0_2[2] <= maj_58_port_o;
    reg_y0_3[2] <= maj_59_port_o;
    reg_y1_0[0] <= maj_60_port_o;
    reg_y1_1[0] <= maj_61_port_o;
    reg_y1_2[0] <= maj_62_port_o;
    reg_y1_3[0] <= maj_63_port_o;
    reg_y1_0[1] <= maj_64_port_o;
    reg_y1_1[1] <= maj_65_port_o;
    reg_y1_2[1] <= maj_66_port_o;
    reg_y1_3[1] <= maj_67_port_o;
    reg_y1_0[2] <= maj_68_port_o;
    reg_y1_1[2] <= maj_69_port_o;
    reg_y1_2[2] <= maj_70_port_o;
    reg_y1_3[2] <= maj_71_port_o;
    reg_y2_0[0] <= maj_72_port_o;
    reg_y2_1[0] <= maj_73_port_o;
    reg_y2_2[0] <= maj_74_port_o;
    reg_y2_3[0] <= maj_75_port_o;
    reg_y2_0[1] <= maj_76_port_o;
    reg_y2_1[1] <= maj_77_port_o;
    reg_y2_2[1] <= maj_78_port_o;
    reg_y2_3[1] <= maj_79_port_o;
    reg_y2_0[2] <= maj_80_port_o;
    reg_y2_1[2] <= maj_81_port_o;
    reg_y2_2[2] <= maj_82_port_o;
    reg_y2_3[2] <= maj_83_port_o;
    reg_y3_0[0] <= maj_84_port_o;
    reg_y3_1[0] <= maj_85_port_o;
    reg_y3_2[0] <= maj_86_port_o;
    reg_y3_3[0] <= maj_87_port_o;
    reg_y3_0[1] <= maj_88_port_o;
    reg_y3_1[1] <= maj_89_port_o;
    reg_y3_2[1] <= maj_90_port_o;
    reg_y3_3[1] <= maj_91_port_o;
    reg_y3_0[2] <= maj_92_port_o;
    reg_y3_1[2] <= maj_93_port_o;
    reg_y3_2[2] <= maj_94_port_o;
    reg_y3_3[2] <= maj_95_port_o;
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
