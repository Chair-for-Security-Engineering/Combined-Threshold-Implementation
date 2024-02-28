// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : Sbox_AES_Canright
// Git hash  : db593c14fe8e83f0a4a5d43cf13325e631d65148

`timescale 1ns/1ps

module Sbox_AES_Canright (
  input      [0:0]    port_i_0,
  input      [0:0]    port_i_1,
  input      [0:0]    port_i_2,
  input      [0:0]    port_i_3,
  input      [0:0]    port_i_4,
  input      [0:0]    port_i_5,
  input      [0:0]    port_i_6,
  input      [0:0]    port_i_7,
  output     [0:0]    port_o_0,
  output     [0:0]    port_o_1,
  output     [0:0]    port_o_2,
  output     [0:0]    port_o_3,
  output     [0:0]    port_o_4,
  output     [0:0]    port_o_5,
  output     [0:0]    port_o_6,
  output     [0:0]    port_o_7
);

  wire       [0:0]    linMap_port_o_0;
  wire       [0:0]    linMap_port_o_1;
  wire       [0:0]    linMap_port_o_2;
  wire       [0:0]    linMap_port_o_3;
  wire       [0:0]    linMap_port_o_4;
  wire       [0:0]    linMap_port_o_5;
  wire       [0:0]    linMap_port_o_6;
  wire       [0:0]    linMap_port_o_7;
  wire       [0:0]    inv_port_o_0;
  wire       [0:0]    inv_port_o_1;
  wire       [0:0]    inv_port_o_2;
  wire       [0:0]    inv_port_o_3;
  wire       [0:0]    inv_port_o_4;
  wire       [0:0]    inv_port_o_5;
  wire       [0:0]    inv_port_o_6;
  wire       [0:0]    inv_port_o_7;
  wire       [0:0]    invLinMap_port_o_0;
  wire       [0:0]    invLinMap_port_o_1;
  wire       [0:0]    invLinMap_port_o_2;
  wire       [0:0]    invLinMap_port_o_3;
  wire       [0:0]    invLinMap_port_o_4;
  wire       [0:0]    invLinMap_port_o_5;
  wire       [0:0]    invLinMap_port_o_6;
  wire       [0:0]    invLinMap_port_o_7;

  LinearMapping linMap (
    .port_i_0 (port_i_0       ), //i
    .port_i_1 (port_i_1       ), //i
    .port_i_2 (port_i_2       ), //i
    .port_i_3 (port_i_3       ), //i
    .port_i_4 (port_i_4       ), //i
    .port_i_5 (port_i_5       ), //i
    .port_i_6 (port_i_6       ), //i
    .port_i_7 (port_i_7       ), //i
    .port_o_0 (linMap_port_o_0), //o
    .port_o_1 (linMap_port_o_1), //o
    .port_o_2 (linMap_port_o_2), //o
    .port_o_3 (linMap_port_o_3), //o
    .port_o_4 (linMap_port_o_4), //o
    .port_o_5 (linMap_port_o_5), //o
    .port_o_6 (linMap_port_o_6), //o
    .port_o_7 (linMap_port_o_7)  //o
  );
  GF_INV_8 inv (
    .port_i_0 (linMap_port_o_0), //i
    .port_i_1 (linMap_port_o_1), //i
    .port_i_2 (linMap_port_o_2), //i
    .port_i_3 (linMap_port_o_3), //i
    .port_i_4 (linMap_port_o_4), //i
    .port_i_5 (linMap_port_o_5), //i
    .port_i_6 (linMap_port_o_6), //i
    .port_i_7 (linMap_port_o_7), //i
    .port_o_0 (inv_port_o_0   ), //o
    .port_o_1 (inv_port_o_1   ), //o
    .port_o_2 (inv_port_o_2   ), //o
    .port_o_3 (inv_port_o_3   ), //o
    .port_o_4 (inv_port_o_4   ), //o
    .port_o_5 (inv_port_o_5   ), //o
    .port_o_6 (inv_port_o_6   ), //o
    .port_o_7 (inv_port_o_7   )  //o
  );
  LinearInverseMapping invLinMap (
    .port_i_0 (inv_port_o_0      ), //i
    .port_i_1 (inv_port_o_1      ), //i
    .port_i_2 (inv_port_o_2      ), //i
    .port_i_3 (inv_port_o_3      ), //i
    .port_i_4 (inv_port_o_4      ), //i
    .port_i_5 (inv_port_o_5      ), //i
    .port_i_6 (inv_port_o_6      ), //i
    .port_i_7 (inv_port_o_7      ), //i
    .port_o_0 (invLinMap_port_o_0), //o
    .port_o_1 (invLinMap_port_o_1), //o
    .port_o_2 (invLinMap_port_o_2), //o
    .port_o_3 (invLinMap_port_o_3), //o
    .port_o_4 (invLinMap_port_o_4), //o
    .port_o_5 (invLinMap_port_o_5), //o
    .port_o_6 (invLinMap_port_o_6), //o
    .port_o_7 (invLinMap_port_o_7)  //o
  );
  assign port_o_0 = invLinMap_port_o_0;
  assign port_o_1 = invLinMap_port_o_1;
  assign port_o_2 = invLinMap_port_o_2;
  assign port_o_3 = invLinMap_port_o_3;
  assign port_o_4 = invLinMap_port_o_4;
  assign port_o_5 = invLinMap_port_o_5;
  assign port_o_6 = invLinMap_port_o_6;
  assign port_o_7 = invLinMap_port_o_7;

endmodule

module LinearInverseMapping (
  input      [0:0]    port_i_0,
  input      [0:0]    port_i_1,
  input      [0:0]    port_i_2,
  input      [0:0]    port_i_3,
  input      [0:0]    port_i_4,
  input      [0:0]    port_i_5,
  input      [0:0]    port_i_6,
  input      [0:0]    port_i_7,
  output     [0:0]    port_o_0,
  output     [0:0]    port_o_1,
  output     [0:0]    port_o_2,
  output     [0:0]    port_o_3,
  output     [0:0]    port_o_4,
  output     [0:0]    port_o_5,
  output     [0:0]    port_o_6,
  output     [0:0]    port_o_7
);

  wire       [0:0]    tx1;
  wire       [0:0]    tx2;
  wire       [0:0]    tx3;
  wire       [0:0]    tx4;
  wire       [0:0]    tx5;
  wire       [0:0]    tx6;
  wire       [0:0]    tx7;
  wire       [0:0]    tx8;
  wire       [0:0]    tx9;
  wire       [0:0]    tx10;

  assign tx1 = (port_i_7 ^ port_i_3);
  assign tx2 = (port_i_6 ^ port_i_4);
  assign tx3 = (port_i_6 ^ port_i_0);
  assign tx4 = (~ (port_i_5 ^ port_i_3));
  assign tx5 = (~ (port_i_5 ^ tx1));
  assign tx6 = (~ (port_i_5 ^ port_i_1));
  assign tx7 = (~ (port_i_4 ^ tx6));
  assign tx8 = (port_i_2 ^ tx4);
  assign tx9 = (port_i_1 ^ tx2);
  assign tx10 = (tx3 ^ tx5);
  assign port_o_7 = (~ tx4);
  assign port_o_6 = (~ tx1);
  assign port_o_5 = (~ tx3);
  assign port_o_4 = (~ tx5);
  assign port_o_3 = (~ (tx2 ^ tx5));
  assign port_o_2 = (~ (tx3 ^ tx8));
  assign port_o_1 = (~ tx7);
  assign port_o_0 = (~ tx9);

endmodule

module GF_INV_8 (
  input      [0:0]    port_i_0,
  input      [0:0]    port_i_1,
  input      [0:0]    port_i_2,
  input      [0:0]    port_i_3,
  input      [0:0]    port_i_4,
  input      [0:0]    port_i_5,
  input      [0:0]    port_i_6,
  input      [0:0]    port_i_7,
  output     [0:0]    port_o_0,
  output     [0:0]    port_o_1,
  output     [0:0]    port_o_2,
  output     [0:0]    port_o_3,
  output     [0:0]    port_o_4,
  output     [0:0]    port_o_5,
  output     [0:0]    port_o_6,
  output     [0:0]    port_o_7
);

  wire       [0:0]    sq_port_i_0;
  wire       [0:0]    sq_port_i_1;
  wire       [0:0]    sq_port_i_2;
  wire       [0:0]    sq_port_i_3;
  wire       [0:0]    sq_port_o_0;
  wire       [0:0]    sq_port_o_1;
  wire       [0:0]    sq_port_o_2;
  wire       [0:0]    sq_port_o_3;
  wire       [0:0]    mul4_port_o_0;
  wire       [0:0]    mul4_port_o_1;
  wire       [0:0]    mul4_port_o_2;
  wire       [0:0]    mul4_port_o_3;
  wire       [0:0]    dx_inv_port_o_0;
  wire       [0:0]    dx_inv_port_o_1;
  wire       [0:0]    dx_inv_port_o_2;
  wire       [0:0]    dx_inv_port_o_3;
  wire       [0:0]    px_mul_port_o_0;
  wire       [0:0]    px_mul_port_o_1;
  wire       [0:0]    px_mul_port_o_2;
  wire       [0:0]    px_mul_port_o_3;
  wire       [0:0]    qx_mul_port_o_0;
  wire       [0:0]    qx_mul_port_o_1;
  wire       [0:0]    qx_mul_port_o_2;
  wire       [0:0]    qx_mul_port_o_3;
  wire       [0:0]    ax_0;
  wire       [0:0]    ax_1;
  wire       [0:0]    ax_2;
  wire       [0:0]    ax_3;
  wire       [0:0]    bx_0;
  wire       [0:0]    bx_1;
  wire       [0:0]    bx_2;
  wire       [0:0]    bx_3;
  wire       [0:0]    sax_0;
  wire       [0:0]    sax_1;
  wire       [0:0]    sbx_0;
  wire       [0:0]    sbx_1;
  wire       [0:0]    al;
  wire       [0:0]    ah;
  wire       [0:0]    aa;
  wire       [0:0]    bl;
  wire       [0:0]    bh;
  wire       [0:0]    bb;
  wire       [0:0]    cx_0;
  wire       [0:0]    cx_1;
  wire       [0:0]    cx_2;
  wire       [0:0]    cx_3;
  wire       [0:0]    dx_0;
  wire       [0:0]    dx_1;
  wire       [0:0]    dx_2;
  wire       [0:0]    dx_3;
  wire       [0:0]    sdx_0;
  wire       [0:0]    sdx_1;
  wire       [0:0]    dl;
  wire       [0:0]    dh;
  wire       [0:0]    dd;
  wire       [0:0]    px_0;
  wire       [0:0]    px_1;
  wire       [0:0]    px_2;
  wire       [0:0]    px_3;
  wire       [0:0]    qx_0;
  wire       [0:0]    qx_1;
  wire       [0:0]    qx_2;
  wire       [0:0]    qx_3;

  GF_SQ_SCL_4 sq (
    .port_i_0 (sq_port_i_0), //i
    .port_i_1 (sq_port_i_1), //i
    .port_i_2 (sq_port_i_2), //i
    .port_i_3 (sq_port_i_3), //i
    .port_o_0 (sq_port_o_0), //o
    .port_o_1 (sq_port_o_1), //o
    .port_o_2 (sq_port_o_2), //o
    .port_o_3 (sq_port_o_3)  //o
  );
  GF_MULS_4 mul4 (
    .port_A_0   (ax_0         ), //i
    .port_A_1   (ax_1         ), //i
    .port_A_2   (ax_2         ), //i
    .port_A_3   (ax_3         ), //i
    .port_a_0_1 (sax_0        ), //i
    .port_a_1_1 (sax_1        ), //i
    .port_Al    (al           ), //i
    .port_Ah    (ah           ), //i
    .port_aa    (aa           ), //i
    .port_B_0   (bx_0         ), //i
    .port_B_1   (bx_1         ), //i
    .port_B_2   (bx_2         ), //i
    .port_B_3   (bx_3         ), //i
    .port_b_0_1 (sbx_0        ), //i
    .port_b_1_1 (sbx_1        ), //i
    .port_Bl    (bl           ), //i
    .port_Bh    (bh           ), //i
    .port_bb    (bb           ), //i
    .port_o_0   (mul4_port_o_0), //o
    .port_o_1   (mul4_port_o_1), //o
    .port_o_2   (mul4_port_o_2), //o
    .port_o_3   (mul4_port_o_3)  //o
  );
  GF_INV_4 dx_inv (
    .port_i_0 (cx_0           ), //i
    .port_i_1 (cx_1           ), //i
    .port_i_2 (cx_2           ), //i
    .port_i_3 (cx_3           ), //i
    .port_o_0 (dx_inv_port_o_0), //o
    .port_o_1 (dx_inv_port_o_1), //o
    .port_o_2 (dx_inv_port_o_2), //o
    .port_o_3 (dx_inv_port_o_3)  //o
  );
  GF_MULS_4 px_mul (
    .port_A_0   (dx_0           ), //i
    .port_A_1   (dx_1           ), //i
    .port_A_2   (dx_2           ), //i
    .port_A_3   (dx_3           ), //i
    .port_a_0_1 (sdx_0          ), //i
    .port_a_1_1 (sdx_1          ), //i
    .port_Al    (dl             ), //i
    .port_Ah    (dh             ), //i
    .port_aa    (dd             ), //i
    .port_B_0   (bx_0           ), //i
    .port_B_1   (bx_1           ), //i
    .port_B_2   (bx_2           ), //i
    .port_B_3   (bx_3           ), //i
    .port_b_0_1 (sbx_0          ), //i
    .port_b_1_1 (sbx_1          ), //i
    .port_Bl    (bl             ), //i
    .port_Bh    (bh             ), //i
    .port_bb    (bb             ), //i
    .port_o_0   (px_mul_port_o_0), //o
    .port_o_1   (px_mul_port_o_1), //o
    .port_o_2   (px_mul_port_o_2), //o
    .port_o_3   (px_mul_port_o_3)  //o
  );
  GF_MULS_4 qx_mul (
    .port_A_0   (dx_0           ), //i
    .port_A_1   (dx_1           ), //i
    .port_A_2   (dx_2           ), //i
    .port_A_3   (dx_3           ), //i
    .port_a_0_1 (sdx_0          ), //i
    .port_a_1_1 (sdx_1          ), //i
    .port_Al    (dl             ), //i
    .port_Ah    (dh             ), //i
    .port_aa    (dd             ), //i
    .port_B_0   (ax_0           ), //i
    .port_B_1   (ax_1           ), //i
    .port_B_2   (ax_2           ), //i
    .port_B_3   (ax_3           ), //i
    .port_b_0_1 (sax_0          ), //i
    .port_b_1_1 (sax_1          ), //i
    .port_Bl    (al             ), //i
    .port_Bh    (ah             ), //i
    .port_bb    (aa             ), //i
    .port_o_0   (qx_mul_port_o_0), //o
    .port_o_1   (qx_mul_port_o_1), //o
    .port_o_2   (qx_mul_port_o_2), //o
    .port_o_3   (qx_mul_port_o_3)  //o
  );
  assign ax_0 = port_i_4;
  assign ax_1 = port_i_5;
  assign ax_2 = port_i_6;
  assign ax_3 = port_i_7;
  assign bx_0 = port_i_0;
  assign bx_1 = port_i_1;
  assign bx_2 = port_i_2;
  assign bx_3 = port_i_3;
  assign sax_0 = (ax_2 ^ ax_0);
  assign sax_1 = (ax_3 ^ ax_1);
  assign sbx_0 = (bx_2 ^ bx_0);
  assign sbx_1 = (bx_3 ^ bx_1);
  assign al = (ax_1 ^ ax_0);
  assign ah = (ax_3 ^ ax_2);
  assign aa = (sax_1 ^ sax_0);
  assign bl = (bx_1 ^ bx_0);
  assign bh = (bx_3 ^ bx_2);
  assign bb = (sbx_1 ^ sbx_0);
  assign sq_port_i_0 = (ax_0 ^ bx_0);
  assign sq_port_i_1 = (ax_1 ^ bx_1);
  assign sq_port_i_2 = (ax_2 ^ bx_2);
  assign sq_port_i_3 = (ax_3 ^ bx_3);
  assign cx_0 = (mul4_port_o_0 ^ sq_port_o_0);
  assign cx_1 = (mul4_port_o_1 ^ sq_port_o_1);
  assign cx_2 = (mul4_port_o_2 ^ sq_port_o_2);
  assign cx_3 = (mul4_port_o_3 ^ sq_port_o_3);
  assign dx_0 = dx_inv_port_o_0;
  assign dx_1 = dx_inv_port_o_1;
  assign dx_2 = dx_inv_port_o_2;
  assign dx_3 = dx_inv_port_o_3;
  assign sdx_0 = (dx_2 ^ dx_0);
  assign sdx_1 = (dx_3 ^ dx_1);
  assign dl = (dx_1 ^ dx_0);
  assign dh = (dx_3 ^ dx_2);
  assign dd = (sdx_1 ^ sdx_0);
  assign px_0 = px_mul_port_o_0;
  assign px_1 = px_mul_port_o_1;
  assign px_2 = px_mul_port_o_2;
  assign px_3 = px_mul_port_o_3;
  assign qx_0 = qx_mul_port_o_0;
  assign qx_1 = qx_mul_port_o_1;
  assign qx_2 = qx_mul_port_o_2;
  assign qx_3 = qx_mul_port_o_3;
  assign port_o_0 = qx_0;
  assign port_o_1 = qx_1;
  assign port_o_2 = qx_2;
  assign port_o_3 = qx_3;
  assign port_o_4 = px_0;
  assign port_o_5 = px_1;
  assign port_o_6 = px_2;
  assign port_o_7 = px_3;

endmodule

module LinearMapping (
  input      [0:0]    port_i_0,
  input      [0:0]    port_i_1,
  input      [0:0]    port_i_2,
  input      [0:0]    port_i_3,
  input      [0:0]    port_i_4,
  input      [0:0]    port_i_5,
  input      [0:0]    port_i_6,
  input      [0:0]    port_i_7,
  output     [0:0]    port_o_0,
  output     [0:0]    port_o_1,
  output     [0:0]    port_o_2,
  output     [0:0]    port_o_3,
  output     [0:0]    port_o_4,
  output     [0:0]    port_o_5,
  output     [0:0]    port_o_6,
  output     [0:0]    port_o_7
);

  wire       [0:0]    rx1;
  wire       [0:0]    rx2;
  wire       [0:0]    rx3;
  wire       [0:0]    rx4;
  wire       [0:0]    rx5;
  wire       [0:0]    rx6;
  wire       [0:0]    rx7;
  wire       [0:0]    rx8;
  wire       [0:0]    rx9;

  assign rx1 = (port_i_7 ^ port_i_5);
  assign rx2 = (~ (port_i_7 ^ port_i_4));
  assign rx3 = (port_i_6 ^ port_i_0);
  assign rx4 = (~ (port_i_5 ^ rx3));
  assign rx5 = (port_i_4 ^ rx4);
  assign rx6 = (port_i_3 ^ port_i_0);
  assign rx7 = (port_i_2 ^ rx1);
  assign rx8 = (port_i_1 ^ rx3);
  assign rx9 = (port_i_3 ^ rx8);
  assign port_o_7 = (rx7 ^ rx8);
  assign port_o_6 = (~ rx5);
  assign port_o_5 = (~ (port_i_1 ^ rx4));
  assign port_o_4 = (rx1 ^ rx3);
  assign port_o_3 = (~ ((port_i_1 ^ rx2) ^ rx6));
  assign port_o_2 = port_i_0;
  assign port_o_1 = (~ rx4);
  assign port_o_0 = (port_i_2 ^ rx9);

endmodule

//GF_MULS_4 replaced by GF_MULS_4

//GF_MULS_4 replaced by GF_MULS_4

module GF_INV_4 (
  input      [0:0]    port_i_0,
  input      [0:0]    port_i_1,
  input      [0:0]    port_i_2,
  input      [0:0]    port_i_3,
  output     [0:0]    port_o_0,
  output     [0:0]    port_o_1,
  output     [0:0]    port_o_2,
  output     [0:0]    port_o_3
);

  wire       [0:0]    sq_port_i_0;
  wire       [0:0]    sq_port_i_1;
  wire       [0:0]    mul2_port_o_0;
  wire       [0:0]    mul2_port_o_1;
  wire       [0:0]    sq_port_o_0;
  wire       [0:0]    sq_port_o_1;
  wire       [0:0]    sc_port_o_0;
  wire       [0:0]    sc_port_o_1;
  wire       [0:0]    dx_inv_port_o_0;
  wire       [0:0]    dx_inv_port_o_1;
  wire       [0:0]    px_mul_port_o_0;
  wire       [0:0]    px_mul_port_o_1;
  wire       [0:0]    qx_mul_port_o_0;
  wire       [0:0]    qx_mul_port_o_1;
  wire       [0:0]    ax_0;
  wire       [0:0]    ax_1;
  wire       [0:0]    bx_0;
  wire       [0:0]    bx_1;
  wire       [0:0]    sax;
  wire       [0:0]    sbx;
  wire       [0:0]    cx_0;
  wire       [0:0]    cx_1;
  wire       [0:0]    dx_0;
  wire       [0:0]    dx_1;
  wire       [0:0]    sdx;
  wire       [0:0]    px_0;
  wire       [0:0]    px_1;
  wire       [0:0]    qx_0;
  wire       [0:0]    qx_1;

  GF_MULS_2 mul2 (
    .port_a_0 (ax_0         ), //i
    .port_a_1 (ax_1         ), //i
    .port_ab  (sax          ), //i
    .port_b_0 (bx_0         ), //i
    .port_b_1 (bx_1         ), //i
    .port_cd  (sbx          ), //i
    .port_o_0 (mul2_port_o_0), //o
    .port_o_1 (mul2_port_o_1)  //o
  );
  GF_SQ_2 sq (
    .port_i_0 (sq_port_i_0), //i
    .port_i_1 (sq_port_i_1), //i
    .port_o_0 (sq_port_o_0), //o
    .port_o_1 (sq_port_o_1)  //o
  );
  GF_SCLW2_2 sc (
    .port_i_0 (sq_port_o_0), //i
    .port_i_1 (sq_port_o_1), //i
    .port_o_0 (sc_port_o_0), //o
    .port_o_1 (sc_port_o_1)  //o
  );
  GF_SQ_2 dx_inv (
    .port_i_0 (cx_0           ), //i
    .port_i_1 (cx_1           ), //i
    .port_o_0 (dx_inv_port_o_0), //o
    .port_o_1 (dx_inv_port_o_1)  //o
  );
  GF_MULS_2 px_mul (
    .port_a_0 (dx_0           ), //i
    .port_a_1 (dx_1           ), //i
    .port_ab  (sdx            ), //i
    .port_b_0 (bx_0           ), //i
    .port_b_1 (bx_1           ), //i
    .port_cd  (sbx            ), //i
    .port_o_0 (px_mul_port_o_0), //o
    .port_o_1 (px_mul_port_o_1)  //o
  );
  GF_MULS_2 qx_mul (
    .port_a_0 (dx_0           ), //i
    .port_a_1 (dx_1           ), //i
    .port_ab  (sdx            ), //i
    .port_b_0 (ax_0           ), //i
    .port_b_1 (ax_1           ), //i
    .port_cd  (sax            ), //i
    .port_o_0 (qx_mul_port_o_0), //o
    .port_o_1 (qx_mul_port_o_1)  //o
  );
  assign ax_0 = port_i_2;
  assign ax_1 = port_i_3;
  assign bx_0 = port_i_0;
  assign bx_1 = port_i_1;
  assign sax = (ax_1 ^ ax_0);
  assign sbx = (bx_1 ^ bx_0);
  assign sq_port_i_0 = (ax_0 ^ bx_0);
  assign sq_port_i_1 = (ax_1 ^ bx_1);
  assign cx_0 = (mul2_port_o_0 ^ sc_port_o_0);
  assign cx_1 = (mul2_port_o_1 ^ sc_port_o_1);
  assign dx_0 = dx_inv_port_o_0;
  assign dx_1 = dx_inv_port_o_1;
  assign sdx = (dx_0 ^ dx_1);
  assign px_0 = px_mul_port_o_0;
  assign px_1 = px_mul_port_o_1;
  assign qx_0 = qx_mul_port_o_0;
  assign qx_1 = qx_mul_port_o_1;
  assign port_o_0 = qx_0;
  assign port_o_1 = qx_1;
  assign port_o_2 = px_0;
  assign port_o_3 = px_1;

endmodule

module GF_MULS_4 (
  input      [0:0]    port_A_0,
  input      [0:0]    port_A_1,
  input      [0:0]    port_A_2,
  input      [0:0]    port_A_3,
  input      [0:0]    port_a_0_1,
  input      [0:0]    port_a_1_1,
  input      [0:0]    port_Al,
  input      [0:0]    port_Ah,
  input      [0:0]    port_aa,
  input      [0:0]    port_B_0,
  input      [0:0]    port_B_1,
  input      [0:0]    port_B_2,
  input      [0:0]    port_B_3,
  input      [0:0]    port_b_0_1,
  input      [0:0]    port_b_1_1,
  input      [0:0]    port_Bl,
  input      [0:0]    port_Bh,
  input      [0:0]    port_bb,
  output     [0:0]    port_o_0,
  output     [0:0]    port_o_1,
  output     [0:0]    port_o_2,
  output     [0:0]    port_o_3
);

  wire       [0:0]    hi_mul_port_o_0;
  wire       [0:0]    hi_mul_port_o_1;
  wire       [0:0]    lo_mul_port_o_0;
  wire       [0:0]    lo_mul_port_o_1;
  wire       [0:0]    sum_mul_port_o_0;
  wire       [0:0]    sum_mul_port_o_1;
  wire       [0:0]    ph_0;
  wire       [0:0]    ph_1;
  wire       [0:0]    pl_0;
  wire       [0:0]    pl_1;
  wire       [0:0]    p_0;
  wire       [0:0]    p_1;

  GF_MULS_2 hi_mul (
    .port_a_0 (port_A_2       ), //i
    .port_a_1 (port_A_3       ), //i
    .port_ab  (port_Ah        ), //i
    .port_b_0 (port_B_2       ), //i
    .port_b_1 (port_B_3       ), //i
    .port_cd  (port_Bh        ), //i
    .port_o_0 (hi_mul_port_o_0), //o
    .port_o_1 (hi_mul_port_o_1)  //o
  );
  GF_MULS_2 lo_mul (
    .port_a_0 (port_A_0       ), //i
    .port_a_1 (port_A_1       ), //i
    .port_ab  (port_Al        ), //i
    .port_b_0 (port_B_0       ), //i
    .port_b_1 (port_B_1       ), //i
    .port_cd  (port_Bl        ), //i
    .port_o_0 (lo_mul_port_o_0), //o
    .port_o_1 (lo_mul_port_o_1)  //o
  );
  GF_MULS_SCL_2 sum_mul (
    .port_a_0 (port_a_0_1      ), //i
    .port_a_1 (port_a_1_1      ), //i
    .port_ab  (port_aa         ), //i
    .port_b_0 (port_b_0_1      ), //i
    .port_b_1 (port_b_1_1      ), //i
    .port_cd  (port_bb         ), //i
    .port_o_0 (sum_mul_port_o_0), //o
    .port_o_1 (sum_mul_port_o_1)  //o
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

module GF_SQ_SCL_4 (
  input      [0:0]    port_i_0,
  input      [0:0]    port_i_1,
  input      [0:0]    port_i_2,
  input      [0:0]    port_i_3,
  output     [0:0]    port_o_0,
  output     [0:0]    port_o_1,
  output     [0:0]    port_o_2,
  output     [0:0]    port_o_3
);

  wire       [0:0]    ab_sq_port_o_0;
  wire       [0:0]    ab_sq_port_o_1;
  wire       [0:0]    b_sq_port_o_0;
  wire       [0:0]    b_sq_port_o_1;
  wire       [0:0]    b_mulN2_port_o_0;
  wire       [0:0]    b_mulN2_port_o_1;
  wire       [0:0]    ax_0;
  wire       [0:0]    ax_1;
  wire       [0:0]    bx_0;
  wire       [0:0]    bx_1;
  wire       [0:0]    abx_0;
  wire       [0:0]    abx_1;
  wire       [0:0]    ab2x_0;
  wire       [0:0]    ab2x_1;
  wire       [0:0]    b2x_0;
  wire       [0:0]    b2x_1;
  wire       [0:0]    b2N2_0;
  wire       [0:0]    b2N2_1;

  GF_SQ_2 ab_sq (
    .port_i_0 (abx_0         ), //i
    .port_i_1 (abx_1         ), //i
    .port_o_0 (ab_sq_port_o_0), //o
    .port_o_1 (ab_sq_port_o_1)  //o
  );
  GF_SQ_2 b_sq (
    .port_i_0 (bx_0         ), //i
    .port_i_1 (bx_1         ), //i
    .port_o_0 (b_sq_port_o_0), //o
    .port_o_1 (b_sq_port_o_1)  //o
  );
  GF_SCLW_2 b_mulN2 (
    .port_i_0 (b2x_0           ), //i
    .port_i_1 (b2x_1           ), //i
    .port_o_0 (b_mulN2_port_o_0), //o
    .port_o_1 (b_mulN2_port_o_1)  //o
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

//GF_MULS_SCL_2 replaced by GF_MULS_SCL_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_SCL_2 replaced by GF_MULS_SCL_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_MULS_2 replaced by GF_MULS_2

//GF_SQ_2 replaced by GF_SQ_2

module GF_SCLW2_2 (
  input      [0:0]    port_i_0,
  input      [0:0]    port_i_1,
  output     [0:0]    port_o_0,
  output     [0:0]    port_o_1
);


  assign port_o_0 = (port_i_1 ^ port_i_0);
  assign port_o_1 = port_i_0;

endmodule

//GF_SQ_2 replaced by GF_SQ_2

//GF_MULS_2 replaced by GF_MULS_2

module GF_MULS_SCL_2 (
  input      [0:0]    port_a_0,
  input      [0:0]    port_a_1,
  input      [0:0]    port_ab,
  input      [0:0]    port_b_0,
  input      [0:0]    port_b_1,
  input      [0:0]    port_cd,
  output     [0:0]    port_o_0,
  output     [0:0]    port_o_1
);

  wire       [0:0]    t;

  assign t = (~ (port_a_0 & port_b_0));
  assign port_o_0 = ((~ (port_a_1 & port_b_1)) ^ t);
  assign port_o_1 = ((~ (port_ab & port_cd)) ^ t);

endmodule

//GF_MULS_2 replaced by GF_MULS_2

module GF_MULS_2 (
  input      [0:0]    port_a_0,
  input      [0:0]    port_a_1,
  input      [0:0]    port_ab,
  input      [0:0]    port_b_0,
  input      [0:0]    port_b_1,
  input      [0:0]    port_cd,
  output     [0:0]    port_o_0,
  output     [0:0]    port_o_1
);

  wire       [0:0]    t;

  assign t = (~ (port_ab & port_cd));
  assign port_o_0 = ((~ (port_a_0 & port_b_0)) ^ t);
  assign port_o_1 = ((~ (port_a_1 & port_b_1)) ^ t);

endmodule

module GF_SCLW_2 (
  input      [0:0]    port_i_0,
  input      [0:0]    port_i_1,
  output     [0:0]    port_o_0,
  output     [0:0]    port_o_1
);


  assign port_o_0 = port_i_1;
  assign port_o_1 = (port_i_0 ^ port_i_1);

endmodule

//GF_SQ_2 replaced by GF_SQ_2

module GF_SQ_2 (
  input      [0:0]    port_i_0,
  input      [0:0]    port_i_1,
  output     [0:0]    port_o_0,
  output     [0:0]    port_o_1
);


  assign port_o_0 = port_i_1;
  assign port_o_1 = port_i_0;

endmodule
