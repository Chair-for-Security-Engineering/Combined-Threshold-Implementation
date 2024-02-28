// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : GF_INV_8_RCFMS_2shares
// Git hash  : db593c14fe8e83f0a4a5d43cf13325e631d65148

`timescale 1ns/1ps

module Inv_AES_Canright_NFR_d1_k1 (
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

  wire       [2:0]    sqMul_port_o_0_0;
  wire       [2:0]    sqMul_port_o_0_1;
  wire       [2:0]    sqMul_port_o_0_2;
  wire       [2:0]    sqMul_port_o_0_3;
  wire       [2:0]    sqMul_port_o_1_0;
  wire       [2:0]    sqMul_port_o_1_1;
  wire       [2:0]    sqMul_port_o_1_2;
  wire       [2:0]    sqMul_port_o_1_3;
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
  wire       [2:0]    inv_port_o_0_0;
  wire       [2:0]    inv_port_o_0_1;
  wire       [2:0]    inv_port_o_0_2;
  wire       [2:0]    inv_port_o_0_3;
  wire       [2:0]    inv_port_o_1_0;
  wire       [2:0]    inv_port_o_1_1;
  wire       [2:0]    inv_port_o_1_2;
  wire       [2:0]    inv_port_o_1_3;
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
  wire       [2:0]    mul0_port_o_0_0;
  wire       [2:0]    mul0_port_o_0_1;
  wire       [2:0]    mul0_port_o_0_2;
  wire       [2:0]    mul0_port_o_0_3;
  wire       [2:0]    mul0_port_o_1_0;
  wire       [2:0]    mul0_port_o_1_1;
  wire       [2:0]    mul0_port_o_1_2;
  wire       [2:0]    mul0_port_o_1_3;
  wire       [2:0]    mul1_port_o_0_0;
  wire       [2:0]    mul1_port_o_0_1;
  wire       [2:0]    mul1_port_o_0_2;
  wire       [2:0]    mul1_port_o_0_3;
  wire       [2:0]    mul1_port_o_1_0;
  wire       [2:0]    mul1_port_o_1_1;
  wire       [2:0]    mul1_port_o_1_2;
  wire       [2:0]    mul1_port_o_1_3;
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
  reg        [2:0]    reg0_0_0;
  reg        [2:0]    reg0_0_1;
  reg        [2:0]    reg0_0_2;
  reg        [2:0]    reg0_0_3;
  reg        [2:0]    reg0_1_0;
  reg        [2:0]    reg0_1_1;
  reg        [2:0]    reg0_1_2;
  reg        [2:0]    reg0_1_3;
  reg        [2:0]    reg1_0_0;
  reg        [2:0]    reg1_0_1;
  reg        [2:0]    reg1_0_2;
  reg        [2:0]    reg1_0_3;
  reg        [2:0]    reg1_1_0;
  reg        [2:0]    reg1_1_1;
  reg        [2:0]    reg1_1_2;
  reg        [2:0]    reg1_1_3;
  wire       [2:0]    reg_a0_0_0;
  wire       [2:0]    reg_a0_0_1;
  wire       [2:0]    reg_a0_0_2;
  wire       [2:0]    reg_a0_0_3;
  wire       [2:0]    reg_a0_1_0;
  wire       [2:0]    reg_a0_1_1;
  wire       [2:0]    reg_a0_1_2;
  wire       [2:0]    reg_a0_1_3;
  wire       [2:0]    reg_a1_0_0;
  wire       [2:0]    reg_a1_0_1;
  wire       [2:0]    reg_a1_0_2;
  wire       [2:0]    reg_a1_0_3;
  wire       [2:0]    reg_a1_1_0;
  wire       [2:0]    reg_a1_1_1;
  wire       [2:0]    reg_a1_1_2;
  wire       [2:0]    reg_a1_1_3;
  wire       [2:0]    reg_a2_0_0;
  wire       [2:0]    reg_a2_0_1;
  wire       [2:0]    reg_a2_0_2;
  wire       [2:0]    reg_a2_0_3;
  wire       [2:0]    reg_a2_1_0;
  wire       [2:0]    reg_a2_1_1;
  wire       [2:0]    reg_a2_1_2;
  wire       [2:0]    reg_a2_1_3;
  wire       [2:0]    reg_a3_0_0;
  wire       [2:0]    reg_a3_0_1;
  wire       [2:0]    reg_a3_0_2;
  wire       [2:0]    reg_a3_0_3;
  wire       [2:0]    reg_a3_1_0;
  wire       [2:0]    reg_a3_1_1;
  wire       [2:0]    reg_a3_1_2;
  wire       [2:0]    reg_a3_1_3;
  wire       [2:0]    reg_b0_0_0;
  wire       [2:0]    reg_b0_0_1;
  wire       [2:0]    reg_b0_0_2;
  wire       [2:0]    reg_b0_0_3;
  wire       [2:0]    reg_b0_1_0;
  wire       [2:0]    reg_b0_1_1;
  wire       [2:0]    reg_b0_1_2;
  wire       [2:0]    reg_b0_1_3;
  wire       [2:0]    reg_b1_0_0;
  wire       [2:0]    reg_b1_0_1;
  wire       [2:0]    reg_b1_0_2;
  wire       [2:0]    reg_b1_0_3;
  wire       [2:0]    reg_b1_1_0;
  wire       [2:0]    reg_b1_1_1;
  wire       [2:0]    reg_b1_1_2;
  wire       [2:0]    reg_b1_1_3;
  wire       [2:0]    reg_b2_0_0;
  wire       [2:0]    reg_b2_0_1;
  wire       [2:0]    reg_b2_0_2;
  wire       [2:0]    reg_b2_0_3;
  wire       [2:0]    reg_b2_1_0;
  wire       [2:0]    reg_b2_1_1;
  wire       [2:0]    reg_b2_1_2;
  wire       [2:0]    reg_b2_1_3;
  wire       [2:0]    reg_b3_0_0;
  wire       [2:0]    reg_b3_0_1;
  wire       [2:0]    reg_b3_0_2;
  wire       [2:0]    reg_b3_0_3;
  wire       [2:0]    reg_b3_1_0;
  wire       [2:0]    reg_b3_1_1;
  wire       [2:0]    reg_b3_1_2;
  wire       [2:0]    reg_b3_1_3;
  wire       [2:0]    t1_0_0;
  wire       [2:0]    t1_0_1;
  wire       [2:0]    t1_0_2;
  wire       [2:0]    t1_0_3;
  wire       [2:0]    t1_0_4;
  wire       [2:0]    t1_0_5;
  wire       [2:0]    t1_0_6;
  wire       [2:0]    t1_0_7;
  wire       [2:0]    t1_1_0;
  wire       [2:0]    t1_1_1;
  wire       [2:0]    t1_1_2;
  wire       [2:0]    t1_1_3;
  wire       [2:0]    t1_1_4;
  wire       [2:0]    t1_1_5;
  wire       [2:0]    t1_1_6;
  wire       [2:0]    t1_1_7;

  GF_SQ_SCl_MUL_4_rcfms sqMul (
    .port_a_0_0 (ax_0_0[2:0]          ), //i
    .port_a_0_1 (ax_0_1[2:0]          ), //i
    .port_a_0_2 (ax_0_2[2:0]          ), //i
    .port_a_0_3 (ax_0_3[2:0]          ), //i
    .port_a_1_0 (ax_1_0[2:0]          ), //i
    .port_a_1_1 (ax_1_1[2:0]          ), //i
    .port_a_1_2 (ax_1_2[2:0]          ), //i
    .port_a_1_3 (ax_1_3[2:0]          ), //i
    .port_b_0_0 (bx_0_0[2:0]          ), //i
    .port_b_0_1 (bx_0_1[2:0]          ), //i
    .port_b_0_2 (bx_0_2[2:0]          ), //i
    .port_b_0_3 (bx_0_3[2:0]          ), //i
    .port_b_1_0 (bx_1_0[2:0]          ), //i
    .port_b_1_1 (bx_1_1[2:0]          ), //i
    .port_b_1_2 (bx_1_2[2:0]          ), //i
    .port_b_1_3 (bx_1_3[2:0]          ), //i
    .port_r_0   (port_r_0             ), //i
    .port_r_1   (port_r_1             ), //i
    .port_o_0_0 (sqMul_port_o_0_0[2:0]), //o
    .port_o_0_1 (sqMul_port_o_0_1[2:0]), //o
    .port_o_0_2 (sqMul_port_o_0_2[2:0]), //o
    .port_o_0_3 (sqMul_port_o_0_3[2:0]), //o
    .port_o_1_0 (sqMul_port_o_1_0[2:0]), //o
    .port_o_1_1 (sqMul_port_o_1_1[2:0]), //o
    .port_o_1_2 (sqMul_port_o_1_2[2:0]), //o
    .port_o_1_3 (sqMul_port_o_1_3[2:0]), //o
    .clk        (clk                  ), //i
    .reset      (reset                )  //i
  );
  Majority majority_288 (
    .port_i (sqMul_port_o_0_0[2:0]), //i
    .port_o (majority_288_port_o  )  //o
  );
  Majority majority_289 (
    .port_i (sqMul_port_o_0_0[2:0]), //i
    .port_o (majority_289_port_o  )  //o
  );
  Majority majority_290 (
    .port_i (sqMul_port_o_0_0[2:0]), //i
    .port_o (majority_290_port_o  )  //o
  );
  Majority majority_291 (
    .port_i (sqMul_port_o_0_1[2:0]), //i
    .port_o (majority_291_port_o  )  //o
  );
  Majority majority_292 (
    .port_i (sqMul_port_o_0_1[2:0]), //i
    .port_o (majority_292_port_o  )  //o
  );
  Majority majority_293 (
    .port_i (sqMul_port_o_0_1[2:0]), //i
    .port_o (majority_293_port_o  )  //o
  );
  Majority majority_294 (
    .port_i (sqMul_port_o_0_2[2:0]), //i
    .port_o (majority_294_port_o  )  //o
  );
  Majority majority_295 (
    .port_i (sqMul_port_o_0_2[2:0]), //i
    .port_o (majority_295_port_o  )  //o
  );
  Majority majority_296 (
    .port_i (sqMul_port_o_0_2[2:0]), //i
    .port_o (majority_296_port_o  )  //o
  );
  Majority majority_297 (
    .port_i (sqMul_port_o_0_3[2:0]), //i
    .port_o (majority_297_port_o  )  //o
  );
  Majority majority_298 (
    .port_i (sqMul_port_o_0_3[2:0]), //i
    .port_o (majority_298_port_o  )  //o
  );
  Majority majority_299 (
    .port_i (sqMul_port_o_0_3[2:0]), //i
    .port_o (majority_299_port_o  )  //o
  );
  Majority majority_300 (
    .port_i (sqMul_port_o_1_0[2:0]), //i
    .port_o (majority_300_port_o  )  //o
  );
  Majority majority_301 (
    .port_i (sqMul_port_o_1_0[2:0]), //i
    .port_o (majority_301_port_o  )  //o
  );
  Majority majority_302 (
    .port_i (sqMul_port_o_1_0[2:0]), //i
    .port_o (majority_302_port_o  )  //o
  );
  Majority majority_303 (
    .port_i (sqMul_port_o_1_1[2:0]), //i
    .port_o (majority_303_port_o  )  //o
  );
  Majority majority_304 (
    .port_i (sqMul_port_o_1_1[2:0]), //i
    .port_o (majority_304_port_o  )  //o
  );
  Majority majority_305 (
    .port_i (sqMul_port_o_1_1[2:0]), //i
    .port_o (majority_305_port_o  )  //o
  );
  Majority majority_306 (
    .port_i (sqMul_port_o_1_2[2:0]), //i
    .port_o (majority_306_port_o  )  //o
  );
  Majority majority_307 (
    .port_i (sqMul_port_o_1_2[2:0]), //i
    .port_o (majority_307_port_o  )  //o
  );
  Majority majority_308 (
    .port_i (sqMul_port_o_1_2[2:0]), //i
    .port_o (majority_308_port_o  )  //o
  );
  Majority majority_309 (
    .port_i (sqMul_port_o_1_3[2:0]), //i
    .port_o (majority_309_port_o  )  //o
  );
  Majority majority_310 (
    .port_i (sqMul_port_o_1_3[2:0]), //i
    .port_o (majority_310_port_o  )  //o
  );
  Majority majority_311 (
    .port_i (sqMul_port_o_1_3[2:0]), //i
    .port_o (majority_311_port_o  )  //o
  );
  GF_INV_4_rcfms inv (
    .port_i_0_0 (reg0_0_0[2:0]      ), //i
    .port_i_0_1 (reg0_0_1[2:0]      ), //i
    .port_i_0_2 (reg0_0_2[2:0]      ), //i
    .port_i_0_3 (reg0_0_3[2:0]      ), //i
    .port_i_1_0 (reg0_1_0[2:0]      ), //i
    .port_i_1_1 (reg0_1_1[2:0]      ), //i
    .port_i_1_2 (reg0_1_2[2:0]      ), //i
    .port_i_1_3 (reg0_1_3[2:0]      ), //i
    .port_o_0_0 (inv_port_o_0_0[2:0]), //o
    .port_o_0_1 (inv_port_o_0_1[2:0]), //o
    .port_o_0_2 (inv_port_o_0_2[2:0]), //o
    .port_o_0_3 (inv_port_o_0_3[2:0]), //o
    .port_o_1_0 (inv_port_o_1_0[2:0]), //o
    .port_o_1_1 (inv_port_o_1_1[2:0]), //o
    .port_o_1_2 (inv_port_o_1_2[2:0]), //o
    .port_o_1_3 (inv_port_o_1_3[2:0]), //o
    .clk        (clk                ), //i
    .reset      (reset              )  //i
  );
  Majority majority_312 (
    .port_i (inv_port_o_0_0[2:0]), //i
    .port_o (majority_312_port_o)  //o
  );
  Majority majority_313 (
    .port_i (inv_port_o_0_0[2:0]), //i
    .port_o (majority_313_port_o)  //o
  );
  Majority majority_314 (
    .port_i (inv_port_o_0_0[2:0]), //i
    .port_o (majority_314_port_o)  //o
  );
  Majority majority_315 (
    .port_i (inv_port_o_0_1[2:0]), //i
    .port_o (majority_315_port_o)  //o
  );
  Majority majority_316 (
    .port_i (inv_port_o_0_1[2:0]), //i
    .port_o (majority_316_port_o)  //o
  );
  Majority majority_317 (
    .port_i (inv_port_o_0_1[2:0]), //i
    .port_o (majority_317_port_o)  //o
  );
  Majority majority_318 (
    .port_i (inv_port_o_0_2[2:0]), //i
    .port_o (majority_318_port_o)  //o
  );
  Majority majority_319 (
    .port_i (inv_port_o_0_2[2:0]), //i
    .port_o (majority_319_port_o)  //o
  );
  Majority majority_320 (
    .port_i (inv_port_o_0_2[2:0]), //i
    .port_o (majority_320_port_o)  //o
  );
  Majority majority_321 (
    .port_i (inv_port_o_0_3[2:0]), //i
    .port_o (majority_321_port_o)  //o
  );
  Majority majority_322 (
    .port_i (inv_port_o_0_3[2:0]), //i
    .port_o (majority_322_port_o)  //o
  );
  Majority majority_323 (
    .port_i (inv_port_o_0_3[2:0]), //i
    .port_o (majority_323_port_o)  //o
  );
  Majority majority_324 (
    .port_i (inv_port_o_1_0[2:0]), //i
    .port_o (majority_324_port_o)  //o
  );
  Majority majority_325 (
    .port_i (inv_port_o_1_0[2:0]), //i
    .port_o (majority_325_port_o)  //o
  );
  Majority majority_326 (
    .port_i (inv_port_o_1_0[2:0]), //i
    .port_o (majority_326_port_o)  //o
  );
  Majority majority_327 (
    .port_i (inv_port_o_1_1[2:0]), //i
    .port_o (majority_327_port_o)  //o
  );
  Majority majority_328 (
    .port_i (inv_port_o_1_1[2:0]), //i
    .port_o (majority_328_port_o)  //o
  );
  Majority majority_329 (
    .port_i (inv_port_o_1_1[2:0]), //i
    .port_o (majority_329_port_o)  //o
  );
  Majority majority_330 (
    .port_i (inv_port_o_1_2[2:0]), //i
    .port_o (majority_330_port_o)  //o
  );
  Majority majority_331 (
    .port_i (inv_port_o_1_2[2:0]), //i
    .port_o (majority_331_port_o)  //o
  );
  Majority majority_332 (
    .port_i (inv_port_o_1_2[2:0]), //i
    .port_o (majority_332_port_o)  //o
  );
  Majority majority_333 (
    .port_i (inv_port_o_1_3[2:0]), //i
    .port_o (majority_333_port_o)  //o
  );
  Majority majority_334 (
    .port_i (inv_port_o_1_3[2:0]), //i
    .port_o (majority_334_port_o)  //o
  );
  Majority majority_335 (
    .port_i (inv_port_o_1_3[2:0]), //i
    .port_o (majority_335_port_o)  //o
  );
  GF_MUL_4_rcfms mul0 (
    .port_a_0_0 (reg_a3_0_0[2:0]     ), //i
    .port_a_0_1 (reg_a3_0_1[2:0]     ), //i
    .port_a_0_2 (reg_a3_0_2[2:0]     ), //i
    .port_a_0_3 (reg_a3_0_3[2:0]     ), //i
    .port_a_1_0 (reg_a3_1_0[2:0]     ), //i
    .port_a_1_1 (reg_a3_1_1[2:0]     ), //i
    .port_a_1_2 (reg_a3_1_2[2:0]     ), //i
    .port_a_1_3 (reg_a3_1_3[2:0]     ), //i
    .port_b_0_0 (reg1_0_0[2:0]       ), //i
    .port_b_0_1 (reg1_0_1[2:0]       ), //i
    .port_b_0_2 (reg1_0_2[2:0]       ), //i
    .port_b_0_3 (reg1_0_3[2:0]       ), //i
    .port_b_1_0 (reg1_1_0[2:0]       ), //i
    .port_b_1_1 (reg1_1_1[2:0]       ), //i
    .port_b_1_2 (reg1_1_2[2:0]       ), //i
    .port_b_1_3 (reg1_1_3[2:0]       ), //i
    .port_o_0_0 (mul0_port_o_0_0[2:0]), //o
    .port_o_0_1 (mul0_port_o_0_1[2:0]), //o
    .port_o_0_2 (mul0_port_o_0_2[2:0]), //o
    .port_o_0_3 (mul0_port_o_0_3[2:0]), //o
    .port_o_1_0 (mul0_port_o_1_0[2:0]), //o
    .port_o_1_1 (mul0_port_o_1_1[2:0]), //o
    .port_o_1_2 (mul0_port_o_1_2[2:0]), //o
    .port_o_1_3 (mul0_port_o_1_3[2:0]), //o
    .clk        (clk                 ), //i
    .reset      (reset               )  //i
  );
  GF_MUL_4_rcfms mul1 (
    .port_a_0_0 (reg_b3_0_0[2:0]     ), //i
    .port_a_0_1 (reg_b3_0_1[2:0]     ), //i
    .port_a_0_2 (reg_b3_0_2[2:0]     ), //i
    .port_a_0_3 (reg_b3_0_3[2:0]     ), //i
    .port_a_1_0 (reg_b3_1_0[2:0]     ), //i
    .port_a_1_1 (reg_b3_1_1[2:0]     ), //i
    .port_a_1_2 (reg_b3_1_2[2:0]     ), //i
    .port_a_1_3 (reg_b3_1_3[2:0]     ), //i
    .port_b_0_0 (reg1_0_0[2:0]       ), //i
    .port_b_0_1 (reg1_0_1[2:0]       ), //i
    .port_b_0_2 (reg1_0_2[2:0]       ), //i
    .port_b_0_3 (reg1_0_3[2:0]       ), //i
    .port_b_1_0 (reg1_1_0[2:0]       ), //i
    .port_b_1_1 (reg1_1_1[2:0]       ), //i
    .port_b_1_2 (reg1_1_2[2:0]       ), //i
    .port_b_1_3 (reg1_1_3[2:0]       ), //i
    .port_o_0_0 (mul1_port_o_0_0[2:0]), //o
    .port_o_0_1 (mul1_port_o_0_1[2:0]), //o
    .port_o_0_2 (mul1_port_o_0_2[2:0]), //o
    .port_o_0_3 (mul1_port_o_0_3[2:0]), //o
    .port_o_1_0 (mul1_port_o_1_0[2:0]), //o
    .port_o_1_1 (mul1_port_o_1_1[2:0]), //o
    .port_o_1_2 (mul1_port_o_1_2[2:0]), //o
    .port_o_1_3 (mul1_port_o_1_3[2:0]), //o
    .clk        (clk                 ), //i
    .reset      (reset               )  //i
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
  always @(*) begin
    reg0_0_0[0] = majority_288_port_o;
    reg0_0_0[1] = majority_289_port_o;
    reg0_0_0[2] = majority_290_port_o;
  end

  always @(*) begin
    reg0_0_1[0] = majority_291_port_o;
    reg0_0_1[1] = majority_292_port_o;
    reg0_0_1[2] = majority_293_port_o;
  end

  always @(*) begin
    reg0_0_2[0] = majority_294_port_o;
    reg0_0_2[1] = majority_295_port_o;
    reg0_0_2[2] = majority_296_port_o;
  end

  always @(*) begin
    reg0_0_3[0] = majority_297_port_o;
    reg0_0_3[1] = majority_298_port_o;
    reg0_0_3[2] = majority_299_port_o;
  end

  always @(*) begin
    reg0_1_0[0] = majority_300_port_o;
    reg0_1_0[1] = majority_301_port_o;
    reg0_1_0[2] = majority_302_port_o;
  end

  always @(*) begin
    reg0_1_1[0] = majority_303_port_o;
    reg0_1_1[1] = majority_304_port_o;
    reg0_1_1[2] = majority_305_port_o;
  end

  always @(*) begin
    reg0_1_2[0] = majority_306_port_o;
    reg0_1_2[1] = majority_307_port_o;
    reg0_1_2[2] = majority_308_port_o;
  end

  always @(*) begin
    reg0_1_3[0] = majority_309_port_o;
    reg0_1_3[1] = majority_310_port_o;
    reg0_1_3[2] = majority_311_port_o;
  end

  always @(*) begin
    reg1_0_0[0] = majority_312_port_o;
    reg1_0_0[1] = majority_313_port_o;
    reg1_0_0[2] = majority_314_port_o;
  end

  always @(*) begin
    reg1_0_1[0] = majority_315_port_o;
    reg1_0_1[1] = majority_316_port_o;
    reg1_0_1[2] = majority_317_port_o;
  end

  always @(*) begin
    reg1_0_2[0] = majority_318_port_o;
    reg1_0_2[1] = majority_319_port_o;
    reg1_0_2[2] = majority_320_port_o;
  end

  always @(*) begin
    reg1_0_3[0] = majority_321_port_o;
    reg1_0_3[1] = majority_322_port_o;
    reg1_0_3[2] = majority_323_port_o;
  end

  always @(*) begin
    reg1_1_0[0] = majority_324_port_o;
    reg1_1_0[1] = majority_325_port_o;
    reg1_1_0[2] = majority_326_port_o;
  end

  always @(*) begin
    reg1_1_1[0] = majority_327_port_o;
    reg1_1_1[1] = majority_328_port_o;
    reg1_1_1[2] = majority_329_port_o;
  end

  always @(*) begin
    reg1_1_2[0] = majority_330_port_o;
    reg1_1_2[1] = majority_331_port_o;
    reg1_1_2[2] = majority_332_port_o;
  end

  always @(*) begin
    reg1_1_3[0] = majority_333_port_o;
    reg1_1_3[1] = majority_334_port_o;
    reg1_1_3[2] = majority_335_port_o;
  end

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
  output     [2:0]    port_o_0_0,
  output     [2:0]    port_o_0_1,
  output     [2:0]    port_o_0_2,
  output     [2:0]    port_o_0_3,
  output     [2:0]    port_o_1_0,
  output     [2:0]    port_o_1_1,
  output     [2:0]    port_o_1_2,
  output     [2:0]    port_o_1_3,
  input               clk,
  input               reset
);

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
  wire       [2:0]    _zz_f_0;
  wire       [2:0]    _zz_f_2;
  wire       [2:0]    f_0;
  reg        [2:0]    f_0_reg;
  wire       [2:0]    f_1;
  reg        [2:0]    f_1_reg;
  wire       [2:0]    f_2;
  reg        [2:0]    f_2_reg;
  wire       [2:0]    f_3;
  reg        [2:0]    f_3_reg;
  wire       [2:0]    g_0;
  reg        [2:0]    g_0_reg;
  wire       [2:0]    g_1;
  reg        [2:0]    g_1_reg;
  wire       [2:0]    g_2;
  reg        [2:0]    g_2_reg;
  wire       [2:0]    g_3;
  reg        [2:0]    g_3_reg;
  wire       [2:0]    h_0;
  reg        [2:0]    h_0_reg;
  wire       [2:0]    h_1;
  reg        [2:0]    h_1_reg;
  wire       [2:0]    h_2;
  reg        [2:0]    h_2_reg;
  wire       [2:0]    h_3;
  reg        [2:0]    h_3_reg;
  wire       [2:0]    k_0;
  reg        [2:0]    k_0_reg;
  wire       [2:0]    k_1;
  reg        [2:0]    k_1_reg;
  wire       [2:0]    k_2;
  reg        [2:0]    k_2_reg;
  wire       [2:0]    k_3;
  reg        [2:0]    k_3_reg;

  assign _zz_f_0 = (port_a_0_0 & port_b_0_0);
  assign _zz_f_2 = (port_a_1_0 & port_b_0_0);
  Majority majority_288 (
    .port_i (f_0[2:0]           ), //i
    .port_o (majority_288_port_o)  //o
  );
  Majority majority_289 (
    .port_i (f_0[2:0]           ), //i
    .port_o (majority_289_port_o)  //o
  );
  Majority majority_290 (
    .port_i (f_0[2:0]           ), //i
    .port_o (majority_290_port_o)  //o
  );
  Majority majority_291 (
    .port_i (f_1[2:0]           ), //i
    .port_o (majority_291_port_o)  //o
  );
  Majority majority_292 (
    .port_i (f_1[2:0]           ), //i
    .port_o (majority_292_port_o)  //o
  );
  Majority majority_293 (
    .port_i (f_1[2:0]           ), //i
    .port_o (majority_293_port_o)  //o
  );
  Majority majority_294 (
    .port_i (f_2[2:0]           ), //i
    .port_o (majority_294_port_o)  //o
  );
  Majority majority_295 (
    .port_i (f_2[2:0]           ), //i
    .port_o (majority_295_port_o)  //o
  );
  Majority majority_296 (
    .port_i (f_2[2:0]           ), //i
    .port_o (majority_296_port_o)  //o
  );
  Majority majority_297 (
    .port_i (f_3[2:0]           ), //i
    .port_o (majority_297_port_o)  //o
  );
  Majority majority_298 (
    .port_i (f_3[2:0]           ), //i
    .port_o (majority_298_port_o)  //o
  );
  Majority majority_299 (
    .port_i (f_3[2:0]           ), //i
    .port_o (majority_299_port_o)  //o
  );
  Majority majority_300 (
    .port_i (g_0[2:0]           ), //i
    .port_o (majority_300_port_o)  //o
  );
  Majority majority_301 (
    .port_i (g_0[2:0]           ), //i
    .port_o (majority_301_port_o)  //o
  );
  Majority majority_302 (
    .port_i (g_0[2:0]           ), //i
    .port_o (majority_302_port_o)  //o
  );
  Majority majority_303 (
    .port_i (g_1[2:0]           ), //i
    .port_o (majority_303_port_o)  //o
  );
  Majority majority_304 (
    .port_i (g_1[2:0]           ), //i
    .port_o (majority_304_port_o)  //o
  );
  Majority majority_305 (
    .port_i (g_1[2:0]           ), //i
    .port_o (majority_305_port_o)  //o
  );
  Majority majority_306 (
    .port_i (g_2[2:0]           ), //i
    .port_o (majority_306_port_o)  //o
  );
  Majority majority_307 (
    .port_i (g_2[2:0]           ), //i
    .port_o (majority_307_port_o)  //o
  );
  Majority majority_308 (
    .port_i (g_2[2:0]           ), //i
    .port_o (majority_308_port_o)  //o
  );
  Majority majority_309 (
    .port_i (g_3[2:0]           ), //i
    .port_o (majority_309_port_o)  //o
  );
  Majority majority_310 (
    .port_i (g_3[2:0]           ), //i
    .port_o (majority_310_port_o)  //o
  );
  Majority majority_311 (
    .port_i (g_3[2:0]           ), //i
    .port_o (majority_311_port_o)  //o
  );
  Majority majority_312 (
    .port_i (h_0[2:0]           ), //i
    .port_o (majority_312_port_o)  //o
  );
  Majority majority_313 (
    .port_i (h_0[2:0]           ), //i
    .port_o (majority_313_port_o)  //o
  );
  Majority majority_314 (
    .port_i (h_0[2:0]           ), //i
    .port_o (majority_314_port_o)  //o
  );
  Majority majority_315 (
    .port_i (h_1[2:0]           ), //i
    .port_o (majority_315_port_o)  //o
  );
  Majority majority_316 (
    .port_i (h_1[2:0]           ), //i
    .port_o (majority_316_port_o)  //o
  );
  Majority majority_317 (
    .port_i (h_1[2:0]           ), //i
    .port_o (majority_317_port_o)  //o
  );
  Majority majority_318 (
    .port_i (h_2[2:0]           ), //i
    .port_o (majority_318_port_o)  //o
  );
  Majority majority_319 (
    .port_i (h_2[2:0]           ), //i
    .port_o (majority_319_port_o)  //o
  );
  Majority majority_320 (
    .port_i (h_2[2:0]           ), //i
    .port_o (majority_320_port_o)  //o
  );
  Majority majority_321 (
    .port_i (h_3[2:0]           ), //i
    .port_o (majority_321_port_o)  //o
  );
  Majority majority_322 (
    .port_i (h_3[2:0]           ), //i
    .port_o (majority_322_port_o)  //o
  );
  Majority majority_323 (
    .port_i (h_3[2:0]           ), //i
    .port_o (majority_323_port_o)  //o
  );
  Majority majority_324 (
    .port_i (k_0[2:0]           ), //i
    .port_o (majority_324_port_o)  //o
  );
  Majority majority_325 (
    .port_i (k_0[2:0]           ), //i
    .port_o (majority_325_port_o)  //o
  );
  Majority majority_326 (
    .port_i (k_0[2:0]           ), //i
    .port_o (majority_326_port_o)  //o
  );
  Majority majority_327 (
    .port_i (k_1[2:0]           ), //i
    .port_o (majority_327_port_o)  //o
  );
  Majority majority_328 (
    .port_i (k_1[2:0]           ), //i
    .port_o (majority_328_port_o)  //o
  );
  Majority majority_329 (
    .port_i (k_1[2:0]           ), //i
    .port_o (majority_329_port_o)  //o
  );
  Majority majority_330 (
    .port_i (k_2[2:0]           ), //i
    .port_o (majority_330_port_o)  //o
  );
  Majority majority_331 (
    .port_i (k_2[2:0]           ), //i
    .port_o (majority_331_port_o)  //o
  );
  Majority majority_332 (
    .port_i (k_2[2:0]           ), //i
    .port_o (majority_332_port_o)  //o
  );
  Majority majority_333 (
    .port_i (k_3[2:0]           ), //i
    .port_o (majority_333_port_o)  //o
  );
  Majority majority_334 (
    .port_i (k_3[2:0]           ), //i
    .port_o (majority_334_port_o)  //o
  );
  Majority majority_335 (
    .port_i (k_3[2:0]           ), //i
    .port_o (majority_335_port_o)  //o
  );
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
    f_0_reg[0] <= majority_288_port_o;
    f_0_reg[1] <= majority_289_port_o;
    f_0_reg[2] <= majority_290_port_o;
    f_1_reg[0] <= majority_291_port_o;
    f_1_reg[1] <= majority_292_port_o;
    f_1_reg[2] <= majority_293_port_o;
    f_2_reg[0] <= majority_294_port_o;
    f_2_reg[1] <= majority_295_port_o;
    f_2_reg[2] <= majority_296_port_o;
    f_3_reg[0] <= majority_297_port_o;
    f_3_reg[1] <= majority_298_port_o;
    f_3_reg[2] <= majority_299_port_o;
    g_0_reg[0] <= majority_300_port_o;
    g_0_reg[1] <= majority_301_port_o;
    g_0_reg[2] <= majority_302_port_o;
    g_1_reg[0] <= majority_303_port_o;
    g_1_reg[1] <= majority_304_port_o;
    g_1_reg[2] <= majority_305_port_o;
    g_2_reg[0] <= majority_306_port_o;
    g_2_reg[1] <= majority_307_port_o;
    g_2_reg[2] <= majority_308_port_o;
    g_3_reg[0] <= majority_309_port_o;
    g_3_reg[1] <= majority_310_port_o;
    g_3_reg[2] <= majority_311_port_o;
    h_0_reg[0] <= majority_312_port_o;
    h_0_reg[1] <= majority_313_port_o;
    h_0_reg[2] <= majority_314_port_o;
    h_1_reg[0] <= majority_315_port_o;
    h_1_reg[1] <= majority_316_port_o;
    h_1_reg[2] <= majority_317_port_o;
    h_2_reg[0] <= majority_318_port_o;
    h_2_reg[1] <= majority_319_port_o;
    h_2_reg[2] <= majority_320_port_o;
    h_3_reg[0] <= majority_321_port_o;
    h_3_reg[1] <= majority_322_port_o;
    h_3_reg[2] <= majority_323_port_o;
    k_0_reg[0] <= majority_324_port_o;
    k_0_reg[1] <= majority_325_port_o;
    k_0_reg[2] <= majority_326_port_o;
    k_1_reg[0] <= majority_327_port_o;
    k_1_reg[1] <= majority_328_port_o;
    k_1_reg[2] <= majority_329_port_o;
    k_2_reg[0] <= majority_330_port_o;
    k_2_reg[1] <= majority_331_port_o;
    k_2_reg[2] <= majority_332_port_o;
    k_3_reg[0] <= majority_333_port_o;
    k_3_reg[1] <= majority_334_port_o;
    k_3_reg[2] <= majority_335_port_o;
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

module GF_INV_4_rcfms (
  input      [2:0]    port_i_0_0,
  input      [2:0]    port_i_0_1,
  input      [2:0]    port_i_0_2,
  input      [2:0]    port_i_0_3,
  input      [2:0]    port_i_1_0,
  input      [2:0]    port_i_1_1,
  input      [2:0]    port_i_1_2,
  input      [2:0]    port_i_1_3,
  output     [2:0]    port_o_0_0,
  output     [2:0]    port_o_0_1,
  output     [2:0]    port_o_0_2,
  output     [2:0]    port_o_0_3,
  output     [2:0]    port_o_1_0,
  output     [2:0]    port_o_1_1,
  output     [2:0]    port_o_1_2,
  output     [2:0]    port_o_1_3,
  input               clk,
  input               reset
);

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
  wire                majority_360_port_o;
  wire                majority_361_port_o;
  wire                majority_362_port_o;
  wire                majority_363_port_o;
  wire                majority_364_port_o;
  wire                majority_365_port_o;
  wire                majority_366_port_o;
  wire                majority_367_port_o;
  wire                majority_368_port_o;
  wire                majority_369_port_o;
  wire                majority_370_port_o;
  wire                majority_371_port_o;
  wire                majority_372_port_o;
  wire                majority_373_port_o;
  wire                majority_374_port_o;
  wire                majority_375_port_o;
  wire                majority_376_port_o;
  wire                majority_377_port_o;
  wire                majority_378_port_o;
  wire                majority_379_port_o;
  wire                majority_380_port_o;
  wire                majority_381_port_o;
  wire                majority_382_port_o;
  wire                majority_383_port_o;
  wire       [2:0]    f_0;
  reg        [2:0]    f_0_reg;
  wire       [2:0]    f_1;
  reg        [2:0]    f_1_reg;
  wire       [2:0]    f_2;
  reg        [2:0]    f_2_reg;
  wire       [2:0]    f_3;
  reg        [2:0]    f_3_reg;
  wire       [2:0]    f_4;
  reg        [2:0]    f_4_reg;
  wire       [2:0]    f_5;
  reg        [2:0]    f_5_reg;
  wire       [2:0]    f_6;
  reg        [2:0]    f_6_reg;
  wire       [2:0]    f_7;
  reg        [2:0]    f_7_reg;
  wire       [2:0]    g_0;
  reg        [2:0]    g_0_reg;
  wire       [2:0]    g_1;
  reg        [2:0]    g_1_reg;
  wire       [2:0]    g_2;
  reg        [2:0]    g_2_reg;
  wire       [2:0]    g_3;
  reg        [2:0]    g_3_reg;
  wire       [2:0]    g_4;
  reg        [2:0]    g_4_reg;
  wire       [2:0]    g_5;
  reg        [2:0]    g_5_reg;
  wire       [2:0]    g_6;
  reg        [2:0]    g_6_reg;
  wire       [2:0]    g_7;
  reg        [2:0]    g_7_reg;
  wire       [2:0]    h_0;
  reg        [2:0]    h_0_reg;
  wire       [2:0]    h_1;
  reg        [2:0]    h_1_reg;
  wire       [2:0]    h_2;
  reg        [2:0]    h_2_reg;
  wire       [2:0]    h_3;
  reg        [2:0]    h_3_reg;
  wire       [2:0]    h_4;
  reg        [2:0]    h_4_reg;
  wire       [2:0]    h_5;
  reg        [2:0]    h_5_reg;
  wire       [2:0]    h_6;
  reg        [2:0]    h_6_reg;
  wire       [2:0]    h_7;
  reg        [2:0]    h_7_reg;
  wire       [2:0]    k_0;
  reg        [2:0]    k_0_reg;
  wire       [2:0]    k_1;
  reg        [2:0]    k_1_reg;
  wire       [2:0]    k_2;
  reg        [2:0]    k_2_reg;
  wire       [2:0]    k_3;
  reg        [2:0]    k_3_reg;
  wire       [2:0]    k_4;
  reg        [2:0]    k_4_reg;
  wire       [2:0]    k_5;
  reg        [2:0]    k_5_reg;
  wire       [2:0]    k_6;
  reg        [2:0]    k_6_reg;
  wire       [2:0]    k_7;
  reg        [2:0]    k_7_reg;

  Majority majority_288 (
    .port_i (f_0[2:0]           ), //i
    .port_o (majority_288_port_o)  //o
  );
  Majority majority_289 (
    .port_i (f_0[2:0]           ), //i
    .port_o (majority_289_port_o)  //o
  );
  Majority majority_290 (
    .port_i (f_0[2:0]           ), //i
    .port_o (majority_290_port_o)  //o
  );
  Majority majority_291 (
    .port_i (f_1[2:0]           ), //i
    .port_o (majority_291_port_o)  //o
  );
  Majority majority_292 (
    .port_i (f_1[2:0]           ), //i
    .port_o (majority_292_port_o)  //o
  );
  Majority majority_293 (
    .port_i (f_1[2:0]           ), //i
    .port_o (majority_293_port_o)  //o
  );
  Majority majority_294 (
    .port_i (f_2[2:0]           ), //i
    .port_o (majority_294_port_o)  //o
  );
  Majority majority_295 (
    .port_i (f_2[2:0]           ), //i
    .port_o (majority_295_port_o)  //o
  );
  Majority majority_296 (
    .port_i (f_2[2:0]           ), //i
    .port_o (majority_296_port_o)  //o
  );
  Majority majority_297 (
    .port_i (f_3[2:0]           ), //i
    .port_o (majority_297_port_o)  //o
  );
  Majority majority_298 (
    .port_i (f_3[2:0]           ), //i
    .port_o (majority_298_port_o)  //o
  );
  Majority majority_299 (
    .port_i (f_3[2:0]           ), //i
    .port_o (majority_299_port_o)  //o
  );
  Majority majority_300 (
    .port_i (f_4[2:0]           ), //i
    .port_o (majority_300_port_o)  //o
  );
  Majority majority_301 (
    .port_i (f_4[2:0]           ), //i
    .port_o (majority_301_port_o)  //o
  );
  Majority majority_302 (
    .port_i (f_4[2:0]           ), //i
    .port_o (majority_302_port_o)  //o
  );
  Majority majority_303 (
    .port_i (f_5[2:0]           ), //i
    .port_o (majority_303_port_o)  //o
  );
  Majority majority_304 (
    .port_i (f_5[2:0]           ), //i
    .port_o (majority_304_port_o)  //o
  );
  Majority majority_305 (
    .port_i (f_5[2:0]           ), //i
    .port_o (majority_305_port_o)  //o
  );
  Majority majority_306 (
    .port_i (f_6[2:0]           ), //i
    .port_o (majority_306_port_o)  //o
  );
  Majority majority_307 (
    .port_i (f_6[2:0]           ), //i
    .port_o (majority_307_port_o)  //o
  );
  Majority majority_308 (
    .port_i (f_6[2:0]           ), //i
    .port_o (majority_308_port_o)  //o
  );
  Majority majority_309 (
    .port_i (f_7[2:0]           ), //i
    .port_o (majority_309_port_o)  //o
  );
  Majority majority_310 (
    .port_i (f_7[2:0]           ), //i
    .port_o (majority_310_port_o)  //o
  );
  Majority majority_311 (
    .port_i (f_7[2:0]           ), //i
    .port_o (majority_311_port_o)  //o
  );
  Majority majority_312 (
    .port_i (g_0[2:0]           ), //i
    .port_o (majority_312_port_o)  //o
  );
  Majority majority_313 (
    .port_i (g_0[2:0]           ), //i
    .port_o (majority_313_port_o)  //o
  );
  Majority majority_314 (
    .port_i (g_0[2:0]           ), //i
    .port_o (majority_314_port_o)  //o
  );
  Majority majority_315 (
    .port_i (g_1[2:0]           ), //i
    .port_o (majority_315_port_o)  //o
  );
  Majority majority_316 (
    .port_i (g_1[2:0]           ), //i
    .port_o (majority_316_port_o)  //o
  );
  Majority majority_317 (
    .port_i (g_1[2:0]           ), //i
    .port_o (majority_317_port_o)  //o
  );
  Majority majority_318 (
    .port_i (g_2[2:0]           ), //i
    .port_o (majority_318_port_o)  //o
  );
  Majority majority_319 (
    .port_i (g_2[2:0]           ), //i
    .port_o (majority_319_port_o)  //o
  );
  Majority majority_320 (
    .port_i (g_2[2:0]           ), //i
    .port_o (majority_320_port_o)  //o
  );
  Majority majority_321 (
    .port_i (g_3[2:0]           ), //i
    .port_o (majority_321_port_o)  //o
  );
  Majority majority_322 (
    .port_i (g_3[2:0]           ), //i
    .port_o (majority_322_port_o)  //o
  );
  Majority majority_323 (
    .port_i (g_3[2:0]           ), //i
    .port_o (majority_323_port_o)  //o
  );
  Majority majority_324 (
    .port_i (g_4[2:0]           ), //i
    .port_o (majority_324_port_o)  //o
  );
  Majority majority_325 (
    .port_i (g_4[2:0]           ), //i
    .port_o (majority_325_port_o)  //o
  );
  Majority majority_326 (
    .port_i (g_4[2:0]           ), //i
    .port_o (majority_326_port_o)  //o
  );
  Majority majority_327 (
    .port_i (g_5[2:0]           ), //i
    .port_o (majority_327_port_o)  //o
  );
  Majority majority_328 (
    .port_i (g_5[2:0]           ), //i
    .port_o (majority_328_port_o)  //o
  );
  Majority majority_329 (
    .port_i (g_5[2:0]           ), //i
    .port_o (majority_329_port_o)  //o
  );
  Majority majority_330 (
    .port_i (g_6[2:0]           ), //i
    .port_o (majority_330_port_o)  //o
  );
  Majority majority_331 (
    .port_i (g_6[2:0]           ), //i
    .port_o (majority_331_port_o)  //o
  );
  Majority majority_332 (
    .port_i (g_6[2:0]           ), //i
    .port_o (majority_332_port_o)  //o
  );
  Majority majority_333 (
    .port_i (g_7[2:0]           ), //i
    .port_o (majority_333_port_o)  //o
  );
  Majority majority_334 (
    .port_i (g_7[2:0]           ), //i
    .port_o (majority_334_port_o)  //o
  );
  Majority majority_335 (
    .port_i (g_7[2:0]           ), //i
    .port_o (majority_335_port_o)  //o
  );
  Majority majority_336 (
    .port_i (h_0[2:0]           ), //i
    .port_o (majority_336_port_o)  //o
  );
  Majority majority_337 (
    .port_i (h_0[2:0]           ), //i
    .port_o (majority_337_port_o)  //o
  );
  Majority majority_338 (
    .port_i (h_0[2:0]           ), //i
    .port_o (majority_338_port_o)  //o
  );
  Majority majority_339 (
    .port_i (h_1[2:0]           ), //i
    .port_o (majority_339_port_o)  //o
  );
  Majority majority_340 (
    .port_i (h_1[2:0]           ), //i
    .port_o (majority_340_port_o)  //o
  );
  Majority majority_341 (
    .port_i (h_1[2:0]           ), //i
    .port_o (majority_341_port_o)  //o
  );
  Majority majority_342 (
    .port_i (h_2[2:0]           ), //i
    .port_o (majority_342_port_o)  //o
  );
  Majority majority_343 (
    .port_i (h_2[2:0]           ), //i
    .port_o (majority_343_port_o)  //o
  );
  Majority majority_344 (
    .port_i (h_2[2:0]           ), //i
    .port_o (majority_344_port_o)  //o
  );
  Majority majority_345 (
    .port_i (h_3[2:0]           ), //i
    .port_o (majority_345_port_o)  //o
  );
  Majority majority_346 (
    .port_i (h_3[2:0]           ), //i
    .port_o (majority_346_port_o)  //o
  );
  Majority majority_347 (
    .port_i (h_3[2:0]           ), //i
    .port_o (majority_347_port_o)  //o
  );
  Majority majority_348 (
    .port_i (h_4[2:0]           ), //i
    .port_o (majority_348_port_o)  //o
  );
  Majority majority_349 (
    .port_i (h_4[2:0]           ), //i
    .port_o (majority_349_port_o)  //o
  );
  Majority majority_350 (
    .port_i (h_4[2:0]           ), //i
    .port_o (majority_350_port_o)  //o
  );
  Majority majority_351 (
    .port_i (h_5[2:0]           ), //i
    .port_o (majority_351_port_o)  //o
  );
  Majority majority_352 (
    .port_i (h_5[2:0]           ), //i
    .port_o (majority_352_port_o)  //o
  );
  Majority majority_353 (
    .port_i (h_5[2:0]           ), //i
    .port_o (majority_353_port_o)  //o
  );
  Majority majority_354 (
    .port_i (h_6[2:0]           ), //i
    .port_o (majority_354_port_o)  //o
  );
  Majority majority_355 (
    .port_i (h_6[2:0]           ), //i
    .port_o (majority_355_port_o)  //o
  );
  Majority majority_356 (
    .port_i (h_6[2:0]           ), //i
    .port_o (majority_356_port_o)  //o
  );
  Majority majority_357 (
    .port_i (h_7[2:0]           ), //i
    .port_o (majority_357_port_o)  //o
  );
  Majority majority_358 (
    .port_i (h_7[2:0]           ), //i
    .port_o (majority_358_port_o)  //o
  );
  Majority majority_359 (
    .port_i (h_7[2:0]           ), //i
    .port_o (majority_359_port_o)  //o
  );
  Majority majority_360 (
    .port_i (k_0[2:0]           ), //i
    .port_o (majority_360_port_o)  //o
  );
  Majority majority_361 (
    .port_i (k_0[2:0]           ), //i
    .port_o (majority_361_port_o)  //o
  );
  Majority majority_362 (
    .port_i (k_0[2:0]           ), //i
    .port_o (majority_362_port_o)  //o
  );
  Majority majority_363 (
    .port_i (k_1[2:0]           ), //i
    .port_o (majority_363_port_o)  //o
  );
  Majority majority_364 (
    .port_i (k_1[2:0]           ), //i
    .port_o (majority_364_port_o)  //o
  );
  Majority majority_365 (
    .port_i (k_1[2:0]           ), //i
    .port_o (majority_365_port_o)  //o
  );
  Majority majority_366 (
    .port_i (k_2[2:0]           ), //i
    .port_o (majority_366_port_o)  //o
  );
  Majority majority_367 (
    .port_i (k_2[2:0]           ), //i
    .port_o (majority_367_port_o)  //o
  );
  Majority majority_368 (
    .port_i (k_2[2:0]           ), //i
    .port_o (majority_368_port_o)  //o
  );
  Majority majority_369 (
    .port_i (k_3[2:0]           ), //i
    .port_o (majority_369_port_o)  //o
  );
  Majority majority_370 (
    .port_i (k_3[2:0]           ), //i
    .port_o (majority_370_port_o)  //o
  );
  Majority majority_371 (
    .port_i (k_3[2:0]           ), //i
    .port_o (majority_371_port_o)  //o
  );
  Majority majority_372 (
    .port_i (k_4[2:0]           ), //i
    .port_o (majority_372_port_o)  //o
  );
  Majority majority_373 (
    .port_i (k_4[2:0]           ), //i
    .port_o (majority_373_port_o)  //o
  );
  Majority majority_374 (
    .port_i (k_4[2:0]           ), //i
    .port_o (majority_374_port_o)  //o
  );
  Majority majority_375 (
    .port_i (k_5[2:0]           ), //i
    .port_o (majority_375_port_o)  //o
  );
  Majority majority_376 (
    .port_i (k_5[2:0]           ), //i
    .port_o (majority_376_port_o)  //o
  );
  Majority majority_377 (
    .port_i (k_5[2:0]           ), //i
    .port_o (majority_377_port_o)  //o
  );
  Majority majority_378 (
    .port_i (k_6[2:0]           ), //i
    .port_o (majority_378_port_o)  //o
  );
  Majority majority_379 (
    .port_i (k_6[2:0]           ), //i
    .port_o (majority_379_port_o)  //o
  );
  Majority majority_380 (
    .port_i (k_6[2:0]           ), //i
    .port_o (majority_380_port_o)  //o
  );
  Majority majority_381 (
    .port_i (k_7[2:0]           ), //i
    .port_o (majority_381_port_o)  //o
  );
  Majority majority_382 (
    .port_i (k_7[2:0]           ), //i
    .port_o (majority_382_port_o)  //o
  );
  Majority majority_383 (
    .port_i (k_7[2:0]           ), //i
    .port_o (majority_383_port_o)  //o
  );
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
    f_0_reg[0] <= majority_288_port_o;
    f_0_reg[1] <= majority_289_port_o;
    f_0_reg[2] <= majority_290_port_o;
    f_1_reg[0] <= majority_291_port_o;
    f_1_reg[1] <= majority_292_port_o;
    f_1_reg[2] <= majority_293_port_o;
    f_2_reg[0] <= majority_294_port_o;
    f_2_reg[1] <= majority_295_port_o;
    f_2_reg[2] <= majority_296_port_o;
    f_3_reg[0] <= majority_297_port_o;
    f_3_reg[1] <= majority_298_port_o;
    f_3_reg[2] <= majority_299_port_o;
    f_4_reg[0] <= majority_300_port_o;
    f_4_reg[1] <= majority_301_port_o;
    f_4_reg[2] <= majority_302_port_o;
    f_5_reg[0] <= majority_303_port_o;
    f_5_reg[1] <= majority_304_port_o;
    f_5_reg[2] <= majority_305_port_o;
    f_6_reg[0] <= majority_306_port_o;
    f_6_reg[1] <= majority_307_port_o;
    f_6_reg[2] <= majority_308_port_o;
    f_7_reg[0] <= majority_309_port_o;
    f_7_reg[1] <= majority_310_port_o;
    f_7_reg[2] <= majority_311_port_o;
    g_0_reg[0] <= majority_312_port_o;
    g_0_reg[1] <= majority_313_port_o;
    g_0_reg[2] <= majority_314_port_o;
    g_1_reg[0] <= majority_315_port_o;
    g_1_reg[1] <= majority_316_port_o;
    g_1_reg[2] <= majority_317_port_o;
    g_2_reg[0] <= majority_318_port_o;
    g_2_reg[1] <= majority_319_port_o;
    g_2_reg[2] <= majority_320_port_o;
    g_3_reg[0] <= majority_321_port_o;
    g_3_reg[1] <= majority_322_port_o;
    g_3_reg[2] <= majority_323_port_o;
    g_4_reg[0] <= majority_324_port_o;
    g_4_reg[1] <= majority_325_port_o;
    g_4_reg[2] <= majority_326_port_o;
    g_5_reg[0] <= majority_327_port_o;
    g_5_reg[1] <= majority_328_port_o;
    g_5_reg[2] <= majority_329_port_o;
    g_6_reg[0] <= majority_330_port_o;
    g_6_reg[1] <= majority_331_port_o;
    g_6_reg[2] <= majority_332_port_o;
    g_7_reg[0] <= majority_333_port_o;
    g_7_reg[1] <= majority_334_port_o;
    g_7_reg[2] <= majority_335_port_o;
    h_0_reg[0] <= majority_336_port_o;
    h_0_reg[1] <= majority_337_port_o;
    h_0_reg[2] <= majority_338_port_o;
    h_1_reg[0] <= majority_339_port_o;
    h_1_reg[1] <= majority_340_port_o;
    h_1_reg[2] <= majority_341_port_o;
    h_2_reg[0] <= majority_342_port_o;
    h_2_reg[1] <= majority_343_port_o;
    h_2_reg[2] <= majority_344_port_o;
    h_3_reg[0] <= majority_345_port_o;
    h_3_reg[1] <= majority_346_port_o;
    h_3_reg[2] <= majority_347_port_o;
    h_4_reg[0] <= majority_348_port_o;
    h_4_reg[1] <= majority_349_port_o;
    h_4_reg[2] <= majority_350_port_o;
    h_5_reg[0] <= majority_351_port_o;
    h_5_reg[1] <= majority_352_port_o;
    h_5_reg[2] <= majority_353_port_o;
    h_6_reg[0] <= majority_354_port_o;
    h_6_reg[1] <= majority_355_port_o;
    h_6_reg[2] <= majority_356_port_o;
    h_7_reg[0] <= majority_357_port_o;
    h_7_reg[1] <= majority_358_port_o;
    h_7_reg[2] <= majority_359_port_o;
    k_0_reg[0] <= majority_360_port_o;
    k_0_reg[1] <= majority_361_port_o;
    k_0_reg[2] <= majority_362_port_o;
    k_1_reg[0] <= majority_363_port_o;
    k_1_reg[1] <= majority_364_port_o;
    k_1_reg[2] <= majority_365_port_o;
    k_2_reg[0] <= majority_366_port_o;
    k_2_reg[1] <= majority_367_port_o;
    k_2_reg[2] <= majority_368_port_o;
    k_3_reg[0] <= majority_369_port_o;
    k_3_reg[1] <= majority_370_port_o;
    k_3_reg[2] <= majority_371_port_o;
    k_4_reg[0] <= majority_372_port_o;
    k_4_reg[1] <= majority_373_port_o;
    k_4_reg[2] <= majority_374_port_o;
    k_5_reg[0] <= majority_375_port_o;
    k_5_reg[1] <= majority_376_port_o;
    k_5_reg[2] <= majority_377_port_o;
    k_6_reg[0] <= majority_378_port_o;
    k_6_reg[1] <= majority_379_port_o;
    k_6_reg[2] <= majority_380_port_o;
    k_7_reg[0] <= majority_381_port_o;
    k_7_reg[1] <= majority_382_port_o;
    k_7_reg[2] <= majority_383_port_o;
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

module GF_SQ_SCl_MUL_4_rcfms (
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
  input               port_r_0,
  input               port_r_1,
  output     [2:0]    port_o_0_0,
  output     [2:0]    port_o_0_1,
  output     [2:0]    port_o_0_2,
  output     [2:0]    port_o_0_3,
  output     [2:0]    port_o_1_0,
  output     [2:0]    port_o_1_1,
  output     [2:0]    port_o_1_2,
  output     [2:0]    port_o_1_3,
  input               clk,
  input               reset
);

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
  wire       [2:0]    _zz_f_0;
  wire       [2:0]    _zz_f_0_1;
  wire       [2:0]    _zz_f_1;
  wire       [2:0]    _zz_f_1_1;
  wire       [2:0]    _zz_f_2;
  wire       [2:0]    _zz_f_2_1;
  wire       [2:0]    _zz_f_3;
  wire       [2:0]    _zz_g_1;
  wire       [2:0]    _zz_g_2;
  wire       [2:0]    _zz_h_0;
  wire       [2:0]    _zz_h_0_1;
  wire       [2:0]    _zz_h_1;
  wire       [2:0]    _zz_h_2;
  wire       [2:0]    _zz_h_2_1;
  wire       [2:0]    _zz_h_3;
  wire       [2:0]    _zz_h_3_1;
  reg        [2:0]    r_0;
  reg        [2:0]    r_1;
  wire       [2:0]    f_0;
  reg        [2:0]    f_0_reg;
  wire       [2:0]    f_1;
  reg        [2:0]    f_1_reg;
  wire       [2:0]    f_2;
  reg        [2:0]    f_2_reg;
  wire       [2:0]    f_3;
  reg        [2:0]    f_3_reg;
  wire       [2:0]    g_0;
  reg        [2:0]    g_0_reg;
  wire       [2:0]    g_1;
  reg        [2:0]    g_1_reg;
  wire       [2:0]    g_2;
  reg        [2:0]    g_2_reg;
  wire       [2:0]    g_3;
  reg        [2:0]    g_3_reg;
  wire       [2:0]    h_0;
  reg        [2:0]    h_0_reg;
  wire       [2:0]    h_1;
  reg        [2:0]    h_1_reg;
  wire       [2:0]    h_2;
  reg        [2:0]    h_2_reg;
  wire       [2:0]    h_3;
  reg        [2:0]    h_3_reg;
  wire       [2:0]    k_0;
  reg        [2:0]    k_0_reg;
  wire       [2:0]    _zz_port_i;
  wire       [2:0]    k_1;
  reg        [2:0]    k_1_reg;
  wire       [2:0]    k_2;
  reg        [2:0]    k_2_reg;
  wire       [2:0]    k_3;
  reg        [2:0]    k_3_reg;
  wire       [2:0]    _zz_port_i_1;

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
  Majority majority_288 (
    .port_i (f_0[2:0]           ), //i
    .port_o (majority_288_port_o)  //o
  );
  Majority majority_289 (
    .port_i (f_0[2:0]           ), //i
    .port_o (majority_289_port_o)  //o
  );
  Majority majority_290 (
    .port_i (f_0[2:0]           ), //i
    .port_o (majority_290_port_o)  //o
  );
  Majority majority_291 (
    .port_i (f_1[2:0]           ), //i
    .port_o (majority_291_port_o)  //o
  );
  Majority majority_292 (
    .port_i (f_1[2:0]           ), //i
    .port_o (majority_292_port_o)  //o
  );
  Majority majority_293 (
    .port_i (f_1[2:0]           ), //i
    .port_o (majority_293_port_o)  //o
  );
  Majority majority_294 (
    .port_i (f_2[2:0]           ), //i
    .port_o (majority_294_port_o)  //o
  );
  Majority majority_295 (
    .port_i (f_2[2:0]           ), //i
    .port_o (majority_295_port_o)  //o
  );
  Majority majority_296 (
    .port_i (f_2[2:0]           ), //i
    .port_o (majority_296_port_o)  //o
  );
  Majority majority_297 (
    .port_i (f_3[2:0]           ), //i
    .port_o (majority_297_port_o)  //o
  );
  Majority majority_298 (
    .port_i (f_3[2:0]           ), //i
    .port_o (majority_298_port_o)  //o
  );
  Majority majority_299 (
    .port_i (f_3[2:0]           ), //i
    .port_o (majority_299_port_o)  //o
  );
  Majority majority_300 (
    .port_i (g_0[2:0]           ), //i
    .port_o (majority_300_port_o)  //o
  );
  Majority majority_301 (
    .port_i (g_0[2:0]           ), //i
    .port_o (majority_301_port_o)  //o
  );
  Majority majority_302 (
    .port_i (g_0[2:0]           ), //i
    .port_o (majority_302_port_o)  //o
  );
  Majority majority_303 (
    .port_i (g_1[2:0]           ), //i
    .port_o (majority_303_port_o)  //o
  );
  Majority majority_304 (
    .port_i (g_1[2:0]           ), //i
    .port_o (majority_304_port_o)  //o
  );
  Majority majority_305 (
    .port_i (g_1[2:0]           ), //i
    .port_o (majority_305_port_o)  //o
  );
  Majority majority_306 (
    .port_i (g_2[2:0]           ), //i
    .port_o (majority_306_port_o)  //o
  );
  Majority majority_307 (
    .port_i (g_2[2:0]           ), //i
    .port_o (majority_307_port_o)  //o
  );
  Majority majority_308 (
    .port_i (g_2[2:0]           ), //i
    .port_o (majority_308_port_o)  //o
  );
  Majority majority_309 (
    .port_i (g_3[2:0]           ), //i
    .port_o (majority_309_port_o)  //o
  );
  Majority majority_310 (
    .port_i (g_3[2:0]           ), //i
    .port_o (majority_310_port_o)  //o
  );
  Majority majority_311 (
    .port_i (g_3[2:0]           ), //i
    .port_o (majority_311_port_o)  //o
  );
  Majority majority_312 (
    .port_i (h_0[2:0]           ), //i
    .port_o (majority_312_port_o)  //o
  );
  Majority majority_313 (
    .port_i (h_0[2:0]           ), //i
    .port_o (majority_313_port_o)  //o
  );
  Majority majority_314 (
    .port_i (h_0[2:0]           ), //i
    .port_o (majority_314_port_o)  //o
  );
  Majority majority_315 (
    .port_i (h_1[2:0]           ), //i
    .port_o (majority_315_port_o)  //o
  );
  Majority majority_316 (
    .port_i (h_1[2:0]           ), //i
    .port_o (majority_316_port_o)  //o
  );
  Majority majority_317 (
    .port_i (h_1[2:0]           ), //i
    .port_o (majority_317_port_o)  //o
  );
  Majority majority_318 (
    .port_i (h_2[2:0]           ), //i
    .port_o (majority_318_port_o)  //o
  );
  Majority majority_319 (
    .port_i (h_2[2:0]           ), //i
    .port_o (majority_319_port_o)  //o
  );
  Majority majority_320 (
    .port_i (h_2[2:0]           ), //i
    .port_o (majority_320_port_o)  //o
  );
  Majority majority_321 (
    .port_i (h_3[2:0]           ), //i
    .port_o (majority_321_port_o)  //o
  );
  Majority majority_322 (
    .port_i (h_3[2:0]           ), //i
    .port_o (majority_322_port_o)  //o
  );
  Majority majority_323 (
    .port_i (h_3[2:0]           ), //i
    .port_o (majority_323_port_o)  //o
  );
  Majority majority_324 (
    .port_i (_zz_port_i[2:0]    ), //i
    .port_o (majority_324_port_o)  //o
  );
  Majority majority_325 (
    .port_i (_zz_port_i[2:0]    ), //i
    .port_o (majority_325_port_o)  //o
  );
  Majority majority_326 (
    .port_i (_zz_port_i[2:0]    ), //i
    .port_o (majority_326_port_o)  //o
  );
  Majority majority_327 (
    .port_i (k_1[2:0]           ), //i
    .port_o (majority_327_port_o)  //o
  );
  Majority majority_328 (
    .port_i (k_1[2:0]           ), //i
    .port_o (majority_328_port_o)  //o
  );
  Majority majority_329 (
    .port_i (k_1[2:0]           ), //i
    .port_o (majority_329_port_o)  //o
  );
  Majority majority_330 (
    .port_i (k_2[2:0]           ), //i
    .port_o (majority_330_port_o)  //o
  );
  Majority majority_331 (
    .port_i (k_2[2:0]           ), //i
    .port_o (majority_331_port_o)  //o
  );
  Majority majority_332 (
    .port_i (k_2[2:0]           ), //i
    .port_o (majority_332_port_o)  //o
  );
  Majority majority_333 (
    .port_i (_zz_port_i_1[2:0]  ), //i
    .port_o (majority_333_port_o)  //o
  );
  Majority majority_334 (
    .port_i (_zz_port_i_1[2:0]  ), //i
    .port_o (majority_334_port_o)  //o
  );
  Majority majority_335 (
    .port_i (_zz_port_i_1[2:0]  ), //i
    .port_o (majority_335_port_o)  //o
  );
  always @(*) begin
    r_0[0] = port_r_0;
    r_0[1] = port_r_0;
    r_0[2] = port_r_0;
  end

  always @(*) begin
    r_1[0] = port_r_1;
    r_1[1] = port_r_1;
    r_1[2] = port_r_1;
  end

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
  assign _zz_port_i = (k_0 ^ r_1);
  assign k_1 = (((((((((((port_a_0_1 ^ port_b_1_0) ^ port_b_1_3) ^ (port_a_1_0 & port_b_1_0)) ^ (port_a_1_2 & port_b_1_0)) ^ (port_a_0_1 & port_b_1_1)) ^ (port_a_1_3 & port_b_1_1)) ^ (port_a_1_0 & port_b_0_2)) ^ (port_a_1_2 & port_b_0_2)) ^ (port_a_1_3 & port_b_0_2)) ^ (port_a_0_1 & port_b_1_3)) ^ (port_a_1_2 & port_b_1_3));
  assign k_2 = (((((((((((port_a_0_3 ^ port_b_1_0) ^ port_b_1_1) ^ (port_a_0_0 & port_b_1_0)) ^ (port_a_0_2 & port_b_1_0)) ^ (port_a_1_1 & port_b_1_1)) ^ (port_a_0_3 & port_b_1_1)) ^ (port_a_0_0 & port_b_1_2)) ^ (port_a_0_2 & port_b_1_2)) ^ (port_a_0_3 & port_b_1_2)) ^ (port_a_1_1 & port_b_1_3)) ^ (port_a_0_2 & port_b_1_3));
  assign k_3 = (((((((((((((port_a_1_1 ^ port_a_1_3) ^ port_b_0_1) ^ port_b_0_3) ^ (port_a_1_0 & port_b_0_0)) ^ (port_a_1_2 & port_b_0_0)) ^ (port_a_1_1 & port_b_0_1)) ^ (port_a_1_3 & port_b_0_1)) ^ (port_a_1_0 & port_b_1_2)) ^ (port_a_1_2 & port_b_1_2)) ^ (port_a_1_3 & port_b_1_2)) ^ (port_a_1_1 & port_b_0_3)) ^ (port_a_1_2 & port_b_0_3)) ^ r_0);
  assign _zz_port_i_1 = (k_3 ^ r_1);
  assign port_o_0_0 = (f_0_reg ^ f_1_reg);
  assign port_o_1_0 = (f_2_reg ^ f_3_reg);
  assign port_o_0_1 = (g_0_reg ^ g_1_reg);
  assign port_o_1_1 = (g_2_reg ^ g_3_reg);
  assign port_o_0_2 = (h_0_reg ^ h_1_reg);
  assign port_o_1_2 = (h_2_reg ^ h_3_reg);
  assign port_o_0_3 = (k_0_reg ^ k_1_reg);
  assign port_o_1_3 = (k_2_reg ^ k_3_reg);
  always @(posedge clk) begin
    f_0_reg[0] <= majority_288_port_o;
    f_0_reg[1] <= majority_289_port_o;
    f_0_reg[2] <= majority_290_port_o;
    f_1_reg[0] <= majority_291_port_o;
    f_1_reg[1] <= majority_292_port_o;
    f_1_reg[2] <= majority_293_port_o;
    f_2_reg[0] <= majority_294_port_o;
    f_2_reg[1] <= majority_295_port_o;
    f_2_reg[2] <= majority_296_port_o;
    f_3_reg[0] <= majority_297_port_o;
    f_3_reg[1] <= majority_298_port_o;
    f_3_reg[2] <= majority_299_port_o;
    g_0_reg[0] <= majority_300_port_o;
    g_0_reg[1] <= majority_301_port_o;
    g_0_reg[2] <= majority_302_port_o;
    g_1_reg[0] <= majority_303_port_o;
    g_1_reg[1] <= majority_304_port_o;
    g_1_reg[2] <= majority_305_port_o;
    g_2_reg[0] <= majority_306_port_o;
    g_2_reg[1] <= majority_307_port_o;
    g_2_reg[2] <= majority_308_port_o;
    g_3_reg[0] <= majority_309_port_o;
    g_3_reg[1] <= majority_310_port_o;
    g_3_reg[2] <= majority_311_port_o;
    h_0_reg[0] <= majority_312_port_o;
    h_0_reg[1] <= majority_313_port_o;
    h_0_reg[2] <= majority_314_port_o;
    h_1_reg[0] <= majority_315_port_o;
    h_1_reg[1] <= majority_316_port_o;
    h_1_reg[2] <= majority_317_port_o;
    h_2_reg[0] <= majority_318_port_o;
    h_2_reg[1] <= majority_319_port_o;
    h_2_reg[2] <= majority_320_port_o;
    h_3_reg[0] <= majority_321_port_o;
    h_3_reg[1] <= majority_322_port_o;
    h_3_reg[2] <= majority_323_port_o;
    k_0_reg[0] <= majority_324_port_o;
    k_0_reg[1] <= majority_325_port_o;
    k_0_reg[2] <= majority_326_port_o;
    k_1_reg[0] <= majority_327_port_o;
    k_1_reg[1] <= majority_328_port_o;
    k_1_reg[2] <= majority_329_port_o;
    k_2_reg[0] <= majority_330_port_o;
    k_2_reg[1] <= majority_331_port_o;
    k_2_reg[2] <= majority_332_port_o;
    k_3_reg[0] <= majority_333_port_o;
    k_3_reg[1] <= majority_334_port_o;
    k_3_reg[2] <= majority_335_port_o;
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

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

//Majority replaced by Majority

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
