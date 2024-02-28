// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : Sbox_AES_Canright_Gadgets
// Git hash  : db593c14fe8e83f0a4a5d43cf13325e631d65148

`timescale 1ns/1ps

module Sbox_AES_Canright_HPC1_d1 (
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

  wire       [0:0]    linMap_port_o_0_0;
  wire       [0:0]    linMap_port_o_0_1;
  wire       [0:0]    linMap_port_o_0_2;
  wire       [0:0]    linMap_port_o_0_3;
  wire       [0:0]    linMap_port_o_0_4;
  wire       [0:0]    linMap_port_o_0_5;
  wire       [0:0]    linMap_port_o_0_6;
  wire       [0:0]    linMap_port_o_0_7;
  wire       [0:0]    linMap_port_o_1_0;
  wire       [0:0]    linMap_port_o_1_1;
  wire       [0:0]    linMap_port_o_1_2;
  wire       [0:0]    linMap_port_o_1_3;
  wire       [0:0]    linMap_port_o_1_4;
  wire       [0:0]    linMap_port_o_1_5;
  wire       [0:0]    linMap_port_o_1_6;
  wire       [0:0]    linMap_port_o_1_7;
  wire       [0:0]    inv_port_o_0_0;
  wire       [0:0]    inv_port_o_0_1;
  wire       [0:0]    inv_port_o_0_2;
  wire       [0:0]    inv_port_o_0_3;
  wire       [0:0]    inv_port_o_0_4;
  wire       [0:0]    inv_port_o_0_5;
  wire       [0:0]    inv_port_o_0_6;
  wire       [0:0]    inv_port_o_0_7;
  wire       [0:0]    inv_port_o_1_0;
  wire       [0:0]    inv_port_o_1_1;
  wire       [0:0]    inv_port_o_1_2;
  wire       [0:0]    inv_port_o_1_3;
  wire       [0:0]    inv_port_o_1_4;
  wire       [0:0]    inv_port_o_1_5;
  wire       [0:0]    inv_port_o_1_6;
  wire       [0:0]    inv_port_o_1_7;
  wire       [0:0]    invLinMap_port_o_0_0;
  wire       [0:0]    invLinMap_port_o_0_1;
  wire       [0:0]    invLinMap_port_o_0_2;
  wire       [0:0]    invLinMap_port_o_0_3;
  wire       [0:0]    invLinMap_port_o_0_4;
  wire       [0:0]    invLinMap_port_o_0_5;
  wire       [0:0]    invLinMap_port_o_0_6;
  wire       [0:0]    invLinMap_port_o_0_7;
  wire       [0:0]    invLinMap_port_o_1_0;
  wire       [0:0]    invLinMap_port_o_1_1;
  wire       [0:0]    invLinMap_port_o_1_2;
  wire       [0:0]    invLinMap_port_o_1_3;
  wire       [0:0]    invLinMap_port_o_1_4;
  wire       [0:0]    invLinMap_port_o_1_5;
  wire       [0:0]    invLinMap_port_o_1_6;
  wire       [0:0]    invLinMap_port_o_1_7;

  Shared_LinearMapping linMap (
    .port_i_0_0 (port_i_0_0       ), //i
    .port_i_0_1 (port_i_0_1       ), //i
    .port_i_0_2 (port_i_0_2       ), //i
    .port_i_0_3 (port_i_0_3       ), //i
    .port_i_0_4 (port_i_0_4       ), //i
    .port_i_0_5 (port_i_0_5       ), //i
    .port_i_0_6 (port_i_0_6       ), //i
    .port_i_0_7 (port_i_0_7       ), //i
    .port_i_1_0 (port_i_1_0       ), //i
    .port_i_1_1 (port_i_1_1       ), //i
    .port_i_1_2 (port_i_1_2       ), //i
    .port_i_1_3 (port_i_1_3       ), //i
    .port_i_1_4 (port_i_1_4       ), //i
    .port_i_1_5 (port_i_1_5       ), //i
    .port_i_1_6 (port_i_1_6       ), //i
    .port_i_1_7 (port_i_1_7       ), //i
    .port_o_0_0 (linMap_port_o_0_0), //o
    .port_o_0_1 (linMap_port_o_0_1), //o
    .port_o_0_2 (linMap_port_o_0_2), //o
    .port_o_0_3 (linMap_port_o_0_3), //o
    .port_o_0_4 (linMap_port_o_0_4), //o
    .port_o_0_5 (linMap_port_o_0_5), //o
    .port_o_0_6 (linMap_port_o_0_6), //o
    .port_o_0_7 (linMap_port_o_0_7), //o
    .port_o_1_0 (linMap_port_o_1_0), //o
    .port_o_1_1 (linMap_port_o_1_1), //o
    .port_o_1_2 (linMap_port_o_1_2), //o
    .port_o_1_3 (linMap_port_o_1_3), //o
    .port_o_1_4 (linMap_port_o_1_4), //o
    .port_o_1_5 (linMap_port_o_1_5), //o
    .port_o_1_6 (linMap_port_o_1_6), //o
    .port_o_1_7 (linMap_port_o_1_7)  //o
  );
  Shared_GF_INV_8 inv (
    .port_i_0_0   (linMap_port_o_0_0), //i
    .port_i_0_1   (linMap_port_o_0_1), //i
    .port_i_0_2   (linMap_port_o_0_2), //i
    .port_i_0_3   (linMap_port_o_0_3), //i
    .port_i_0_4   (linMap_port_o_0_4), //i
    .port_i_0_5   (linMap_port_o_0_5), //i
    .port_i_0_6   (linMap_port_o_0_6), //i
    .port_i_0_7   (linMap_port_o_0_7), //i
    .port_i_1_0   (linMap_port_o_1_0), //i
    .port_i_1_1   (linMap_port_o_1_1), //i
    .port_i_1_2   (linMap_port_o_1_2), //i
    .port_i_1_3   (linMap_port_o_1_3), //i
    .port_i_1_4   (linMap_port_o_1_4), //i
    .port_i_1_5   (linMap_port_o_1_5), //i
    .port_i_1_6   (linMap_port_o_1_6), //i
    .port_i_1_7   (linMap_port_o_1_7), //i
    .port_rand_0  (port_r_0         ), //i
    .port_rand_1  (port_r_1         ), //i
    .port_rand_2  (port_r_2         ), //i
    .port_rand_3  (port_r_3         ), //i
    .port_rand_4  (port_r_4         ), //i
    .port_rand_5  (port_r_5         ), //i
    .port_rand_6  (port_r_6         ), //i
    .port_rand_7  (port_r_7         ), //i
    .port_rand_8  (port_r_8         ), //i
    .port_rand_9  (port_r_9         ), //i
    .port_rand_10 (port_r_10        ), //i
    .port_rand_11 (port_r_11        ), //i
    .port_rand_12 (port_r_12        ), //i
    .port_rand_13 (port_r_13        ), //i
    .port_rand_14 (port_r_14        ), //i
    .port_rand_15 (port_r_15        ), //i
    .port_rand_16 (port_r_16        ), //i
    .port_rand_17 (port_r_17        ), //i
    .port_rand_18 (port_r_18        ), //i
    .port_rand_19 (port_r_19        ), //i
    .port_rand_20 (port_r_20        ), //i
    .port_rand_21 (port_r_21        ), //i
    .port_rand_22 (port_r_22        ), //i
    .port_rand_23 (port_r_23        ), //i
    .port_rand_24 (port_r_24        ), //i
    .port_rand_25 (port_r_25        ), //i
    .port_rand_26 (port_r_26        ), //i
    .port_rand_27 (port_r_27        ), //i
    .port_rand_28 (port_r_28        ), //i
    .port_rand_29 (port_r_29        ), //i
    .port_rand_30 (port_r_30        ), //i
    .port_rand_31 (port_r_31        ), //i
    .port_rand_32 (port_r_32        ), //i
    .port_rand_33 (port_r_33        ), //i
    .port_rand_34 (port_r_34        ), //i
    .port_rand_35 (port_r_35        ), //i
    .port_rand_36 (port_r_36        ), //i
    .port_rand_37 (port_r_37        ), //i
    .port_rand_38 (port_r_38        ), //i
    .port_rand_39 (port_r_39        ), //i
    .port_rand_40 (port_r_40        ), //i
    .port_rand_41 (port_r_41        ), //i
    .port_rand_42 (port_r_42        ), //i
    .port_rand_43 (port_r_43        ), //i
    .port_rand_44 (port_r_44        ), //i
    .port_rand_45 (port_r_45        ), //i
    .port_rand_46 (port_r_46        ), //i
    .port_rand_47 (port_r_47        ), //i
    .port_rand_48 (port_r_48        ), //i
    .port_rand_49 (port_r_49        ), //i
    .port_rand_50 (port_r_50        ), //i
    .port_rand_51 (port_r_51        ), //i
    .port_rand_52 (port_r_52        ), //i
    .port_rand_53 (port_r_53        ), //i
    .port_rand_54 (port_r_54        ), //i
    .port_rand_55 (port_r_55        ), //i
    .port_rand_56 (port_r_56        ), //i
    .port_rand_57 (port_r_57        ), //i
    .port_rand_58 (port_r_58        ), //i
    .port_rand_59 (port_r_59        ), //i
    .port_rand_60 (port_r_60        ), //i
    .port_rand_61 (port_r_61        ), //i
    .port_rand_62 (port_r_62        ), //i
    .port_rand_63 (port_r_63        ), //i
    .port_rand_64 (port_r_64        ), //i
    .port_rand_65 (port_r_65        ), //i
    .port_rand_66 (port_r_66        ), //i
    .port_rand_67 (port_r_67        ), //i
    .port_rand_68 (port_r_68        ), //i
    .port_rand_69 (port_r_69        ), //i
    .port_rand_70 (port_r_70        ), //i
    .port_rand_71 (port_r_71        ), //i
    .port_o_0_0   (inv_port_o_0_0   ), //o
    .port_o_0_1   (inv_port_o_0_1   ), //o
    .port_o_0_2   (inv_port_o_0_2   ), //o
    .port_o_0_3   (inv_port_o_0_3   ), //o
    .port_o_0_4   (inv_port_o_0_4   ), //o
    .port_o_0_5   (inv_port_o_0_5   ), //o
    .port_o_0_6   (inv_port_o_0_6   ), //o
    .port_o_0_7   (inv_port_o_0_7   ), //o
    .port_o_1_0   (inv_port_o_1_0   ), //o
    .port_o_1_1   (inv_port_o_1_1   ), //o
    .port_o_1_2   (inv_port_o_1_2   ), //o
    .port_o_1_3   (inv_port_o_1_3   ), //o
    .port_o_1_4   (inv_port_o_1_4   ), //o
    .port_o_1_5   (inv_port_o_1_5   ), //o
    .port_o_1_6   (inv_port_o_1_6   ), //o
    .port_o_1_7   (inv_port_o_1_7   ), //o
    .clk          (clk              ), //i
    .reset        (reset            )  //i
  );
  Shared_InverseLinearMapping invLinMap (
    .port_i_0_0 (inv_port_o_0_0      ), //i
    .port_i_0_1 (inv_port_o_0_1      ), //i
    .port_i_0_2 (inv_port_o_0_2      ), //i
    .port_i_0_3 (inv_port_o_0_3      ), //i
    .port_i_0_4 (inv_port_o_0_4      ), //i
    .port_i_0_5 (inv_port_o_0_5      ), //i
    .port_i_0_6 (inv_port_o_0_6      ), //i
    .port_i_0_7 (inv_port_o_0_7      ), //i
    .port_i_1_0 (inv_port_o_1_0      ), //i
    .port_i_1_1 (inv_port_o_1_1      ), //i
    .port_i_1_2 (inv_port_o_1_2      ), //i
    .port_i_1_3 (inv_port_o_1_3      ), //i
    .port_i_1_4 (inv_port_o_1_4      ), //i
    .port_i_1_5 (inv_port_o_1_5      ), //i
    .port_i_1_6 (inv_port_o_1_6      ), //i
    .port_i_1_7 (inv_port_o_1_7      ), //i
    .port_o_0_0 (invLinMap_port_o_0_0), //o
    .port_o_0_1 (invLinMap_port_o_0_1), //o
    .port_o_0_2 (invLinMap_port_o_0_2), //o
    .port_o_0_3 (invLinMap_port_o_0_3), //o
    .port_o_0_4 (invLinMap_port_o_0_4), //o
    .port_o_0_5 (invLinMap_port_o_0_5), //o
    .port_o_0_6 (invLinMap_port_o_0_6), //o
    .port_o_0_7 (invLinMap_port_o_0_7), //o
    .port_o_1_0 (invLinMap_port_o_1_0), //o
    .port_o_1_1 (invLinMap_port_o_1_1), //o
    .port_o_1_2 (invLinMap_port_o_1_2), //o
    .port_o_1_3 (invLinMap_port_o_1_3), //o
    .port_o_1_4 (invLinMap_port_o_1_4), //o
    .port_o_1_5 (invLinMap_port_o_1_5), //o
    .port_o_1_6 (invLinMap_port_o_1_6), //o
    .port_o_1_7 (invLinMap_port_o_1_7)  //o
  );
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

endmodule

module Shared_InverseLinearMapping (
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
  output     [0:0]    port_o_1_7
);

  wire       [0:0]    outVal_0_0;
  wire       [0:0]    outVal_0_1;
  wire       [0:0]    outVal_0_2;
  wire       [0:0]    outVal_0_3;
  wire       [0:0]    outVal_0_4;
  wire       [0:0]    outVal_0_5;
  wire       [0:0]    outVal_0_6;
  wire       [0:0]    outVal_0_7;
  wire       [0:0]    outVal_1_0;
  wire       [0:0]    outVal_1_1;
  wire       [0:0]    outVal_1_2;
  wire       [0:0]    outVal_1_3;
  wire       [0:0]    outVal_1_4;
  wire       [0:0]    outVal_1_5;
  wire       [0:0]    outVal_1_6;
  wire       [0:0]    outVal_1_7;
  wire       [0:0]    tx1_0;
  wire       [0:0]    tx2_0;
  wire       [0:0]    tx3_0;
  wire       [0:0]    tx4_0;
  wire       [0:0]    tx5_0;
  wire       [0:0]    tx6_0;
  wire       [0:0]    tx7_0;
  wire       [0:0]    tx8_0;
  wire       [0:0]    tx9_0;
  wire       [0:0]    tx10_0;
  wire       [0:0]    _zz_outVal_1_3;
  wire       [0:0]    _zz_outVal_1_0;
  wire       [0:0]    _zz_outVal_1_2;
  wire       [0:0]    _zz_outVal_1_2_1;
  wire       [0:0]    _zz_outVal_1_3_1;

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

endmodule

module Shared_GF_INV_8 (
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

  wire       [0:0]    sq_port_o_0_0;
  wire       [0:0]    sq_port_o_0_1;
  wire       [0:0]    sq_port_o_0_2;
  wire       [0:0]    sq_port_o_0_3;
  wire       [0:0]    sq_port_o_1_0;
  wire       [0:0]    sq_port_o_1_1;
  wire       [0:0]    sq_port_o_1_2;
  wire       [0:0]    sq_port_o_1_3;
  wire       [0:0]    mul4_port_o_0_0;
  wire       [0:0]    mul4_port_o_0_1;
  wire       [0:0]    mul4_port_o_0_2;
  wire       [0:0]    mul4_port_o_0_3;
  wire       [0:0]    mul4_port_o_1_0;
  wire       [0:0]    mul4_port_o_1_1;
  wire       [0:0]    mul4_port_o_1_2;
  wire       [0:0]    mul4_port_o_1_3;
  wire       [0:0]    dx_inv_port_o_0_0;
  wire       [0:0]    dx_inv_port_o_0_1;
  wire       [0:0]    dx_inv_port_o_0_2;
  wire       [0:0]    dx_inv_port_o_0_3;
  wire       [0:0]    dx_inv_port_o_1_0;
  wire       [0:0]    dx_inv_port_o_1_1;
  wire       [0:0]    dx_inv_port_o_1_2;
  wire       [0:0]    dx_inv_port_o_1_3;
  wire       [0:0]    px_mul_port_o_0_0;
  wire       [0:0]    px_mul_port_o_0_1;
  wire       [0:0]    px_mul_port_o_0_2;
  wire       [0:0]    px_mul_port_o_0_3;
  wire       [0:0]    px_mul_port_o_1_0;
  wire       [0:0]    px_mul_port_o_1_1;
  wire       [0:0]    px_mul_port_o_1_2;
  wire       [0:0]    px_mul_port_o_1_3;
  wire       [0:0]    qx_mul_port_o_0_0;
  wire       [0:0]    qx_mul_port_o_0_1;
  wire       [0:0]    qx_mul_port_o_0_2;
  wire       [0:0]    qx_mul_port_o_0_3;
  wire       [0:0]    qx_mul_port_o_1_0;
  wire       [0:0]    qx_mul_port_o_1_1;
  wire       [0:0]    qx_mul_port_o_1_2;
  wire       [0:0]    qx_mul_port_o_1_3;
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
  reg        [0:0]    ax_0_0;
  reg        [0:0]    ax_0_1;
  reg        [0:0]    ax_0_2;
  reg        [0:0]    ax_0_3;
  reg        [0:0]    ax_1_0;
  reg        [0:0]    ax_1_1;
  reg        [0:0]    ax_1_2;
  reg        [0:0]    ax_1_3;
  wire       [0:0]    bx_0_0;
  wire       [0:0]    bx_0_1;
  wire       [0:0]    bx_0_2;
  wire       [0:0]    bx_0_3;
  wire       [0:0]    bx_1_0;
  wire       [0:0]    bx_1_1;
  wire       [0:0]    bx_1_2;
  wire       [0:0]    bx_1_3;
  wire       [0:0]    sax_0_0;
  wire       [0:0]    sax_0_1;
  wire       [0:0]    sax_1_0;
  wire       [0:0]    sax_1_1;
  wire       [0:0]    sbx_0_0;
  wire       [0:0]    sbx_0_1;
  wire       [0:0]    sbx_1_0;
  wire       [0:0]    sbx_1_1;
  wire       [0:0]    al_0;
  wire       [0:0]    al_1;
  wire       [0:0]    ah_0;
  wire       [0:0]    ah_1;
  wire       [0:0]    aa_0;
  wire       [0:0]    aa_1;
  wire       [0:0]    bl_0;
  wire       [0:0]    bl_1;
  wire       [0:0]    bh_0;
  wire       [0:0]    bh_1;
  wire       [0:0]    bb_0;
  wire       [0:0]    bb_1;
  wire       [0:0]    cx_0_0;
  wire       [0:0]    cx_0_1;
  wire       [0:0]    cx_0_2;
  wire       [0:0]    cx_0_3;
  wire       [0:0]    cx_1_0;
  wire       [0:0]    cx_1_1;
  wire       [0:0]    cx_1_2;
  wire       [0:0]    cx_1_3;
  wire       [0:0]    sq_in_0_0;
  wire       [0:0]    sq_in_0_1;
  wire       [0:0]    sq_in_0_2;
  wire       [0:0]    sq_in_0_3;
  wire       [0:0]    sq_in_1_0;
  wire       [0:0]    sq_in_1_1;
  wire       [0:0]    sq_in_1_2;
  wire       [0:0]    sq_in_1_3;
  wire       [0:0]    dx_0_0;
  wire       [0:0]    dx_0_1;
  wire       [0:0]    dx_0_2;
  wire       [0:0]    dx_0_3;
  wire       [0:0]    dx_1_0;
  wire       [0:0]    dx_1_1;
  wire       [0:0]    dx_1_2;
  wire       [0:0]    dx_1_3;
  wire       [0:0]    sdx_0_0;
  wire       [0:0]    sdx_0_1;
  wire       [0:0]    sdx_1_0;
  wire       [0:0]    sdx_1_1;
  wire       [0:0]    dl_0;
  wire       [0:0]    dl_1;
  wire       [0:0]    dh_0;
  wire       [0:0]    dh_1;
  wire       [0:0]    dd_0;
  wire       [0:0]    dd_1;
  reg        [0:0]    bx_reg_0_0_0;
  reg        [0:0]    bx_reg_0_0_1;
  reg        [0:0]    bx_reg_0_0_2;
  reg        [0:0]    bx_reg_0_0_3;
  reg        [0:0]    bx_reg_0_1_0;
  reg        [0:0]    bx_reg_0_1_1;
  reg        [0:0]    bx_reg_0_1_2;
  reg        [0:0]    bx_reg_0_1_3;
  reg        [0:0]    bx_reg_1_0_0;
  reg        [0:0]    bx_reg_1_0_1;
  reg        [0:0]    bx_reg_1_0_2;
  reg        [0:0]    bx_reg_1_0_3;
  reg        [0:0]    bx_reg_1_1_0;
  reg        [0:0]    bx_reg_1_1_1;
  reg        [0:0]    bx_reg_1_1_2;
  reg        [0:0]    bx_reg_1_1_3;
  reg        [0:0]    bx_reg_2_0_0;
  reg        [0:0]    bx_reg_2_0_1;
  reg        [0:0]    bx_reg_2_0_2;
  reg        [0:0]    bx_reg_2_0_3;
  reg        [0:0]    bx_reg_2_1_0;
  reg        [0:0]    bx_reg_2_1_1;
  reg        [0:0]    bx_reg_2_1_2;
  reg        [0:0]    bx_reg_2_1_3;
  reg        [0:0]    bx_reg_3_0_0;
  reg        [0:0]    bx_reg_3_0_1;
  reg        [0:0]    bx_reg_3_0_2;
  reg        [0:0]    bx_reg_3_0_3;
  reg        [0:0]    bx_reg_3_1_0;
  reg        [0:0]    bx_reg_3_1_1;
  reg        [0:0]    bx_reg_3_1_2;
  reg        [0:0]    bx_reg_3_1_3;
  reg        [0:0]    ax_reg_1_0_0;
  reg        [0:0]    ax_reg_1_0_1;
  reg        [0:0]    ax_reg_1_0_2;
  reg        [0:0]    ax_reg_1_0_3;
  reg        [0:0]    ax_reg_1_1_0;
  reg        [0:0]    ax_reg_1_1_1;
  reg        [0:0]    ax_reg_1_1_2;
  reg        [0:0]    ax_reg_1_1_3;
  reg        [0:0]    ax_reg_2_0_0;
  reg        [0:0]    ax_reg_2_0_1;
  reg        [0:0]    ax_reg_2_0_2;
  reg        [0:0]    ax_reg_2_0_3;
  reg        [0:0]    ax_reg_2_1_0;
  reg        [0:0]    ax_reg_2_1_1;
  reg        [0:0]    ax_reg_2_1_2;
  reg        [0:0]    ax_reg_2_1_3;
  reg        [0:0]    ax_reg_3_0_0;
  reg        [0:0]    ax_reg_3_0_1;
  reg        [0:0]    ax_reg_3_0_2;
  reg        [0:0]    ax_reg_3_0_3;
  reg        [0:0]    ax_reg_3_1_0;
  reg        [0:0]    ax_reg_3_1_1;
  reg        [0:0]    ax_reg_3_1_2;
  reg        [0:0]    ax_reg_3_1_3;
  wire       [0:0]    sax_reg_3_0_0;
  wire       [0:0]    sax_reg_3_0_1;
  wire       [0:0]    sax_reg_3_1_0;
  wire       [0:0]    sax_reg_3_1_1;
  wire       [0:0]    sbx_reg_3_0_0;
  wire       [0:0]    sbx_reg_3_0_1;
  wire       [0:0]    sbx_reg_3_1_0;
  wire       [0:0]    sbx_reg_3_1_1;
  wire       [0:0]    al_reg_3_0;
  wire       [0:0]    al_reg_3_1;
  wire       [0:0]    ah_reg_3_0;
  wire       [0:0]    ah_reg_3_1;
  wire       [0:0]    aa_reg_3_0;
  wire       [0:0]    aa_reg_3_1;
  wire       [0:0]    bl_reg_3_0;
  wire       [0:0]    bl_reg_3_1;
  wire       [0:0]    bh_reg_3_0;
  wire       [0:0]    bh_reg_3_1;
  wire       [0:0]    bb_reg_3_0;
  wire       [0:0]    bb_reg_3_1;
  wire       [0:0]    px_0_0;
  wire       [0:0]    px_0_1;
  wire       [0:0]    px_0_2;
  wire       [0:0]    px_0_3;
  wire       [0:0]    px_1_0;
  wire       [0:0]    px_1_1;
  wire       [0:0]    px_1_2;
  wire       [0:0]    px_1_3;
  wire       [0:0]    qx_0_0;
  wire       [0:0]    qx_0_1;
  wire       [0:0]    qx_0_2;
  wire       [0:0]    qx_0_3;
  wire       [0:0]    qx_1_0;
  wire       [0:0]    qx_1_1;
  wire       [0:0]    qx_1_2;
  wire       [0:0]    qx_1_3;

  Shared_GF_SQ_SCL_4 sq (
    .port_i_0_0 (sq_in_0_0    ), //i
    .port_i_0_1 (sq_in_0_1    ), //i
    .port_i_0_2 (sq_in_0_2    ), //i
    .port_i_0_3 (sq_in_0_3    ), //i
    .port_i_1_0 (sq_in_1_0    ), //i
    .port_i_1_1 (sq_in_1_1    ), //i
    .port_i_1_2 (sq_in_1_2    ), //i
    .port_i_1_3 (sq_in_1_3    ), //i
    .port_o_0_0 (sq_port_o_0_0), //o
    .port_o_0_1 (sq_port_o_0_1), //o
    .port_o_0_2 (sq_port_o_0_2), //o
    .port_o_0_3 (sq_port_o_0_3), //o
    .port_o_1_0 (sq_port_o_1_0), //o
    .port_o_1_1 (sq_port_o_1_1), //o
    .port_o_1_2 (sq_port_o_1_2), //o
    .port_o_1_3 (sq_port_o_1_3)  //o
  );
  Shared_GF_MULS_4 mul4 (
    .port_A_0_0   (ax_0_0         ), //i
    .port_A_0_1   (ax_0_1         ), //i
    .port_A_0_2   (ax_0_2         ), //i
    .port_A_0_3   (ax_0_3         ), //i
    .port_A_1_0   (ax_1_0         ), //i
    .port_A_1_1   (ax_1_1         ), //i
    .port_A_1_2   (ax_1_2         ), //i
    .port_A_1_3   (ax_1_3         ), //i
    .port_a_0_0_1 (sax_0_0        ), //i
    .port_a_0_1_1 (sax_0_1        ), //i
    .port_a_1_0_1 (sax_1_0        ), //i
    .port_a_1_1_1 (sax_1_1        ), //i
    .port_Al_0    (al_0           ), //i
    .port_Al_1    (al_1           ), //i
    .port_Ah_0    (ah_0           ), //i
    .port_Ah_1    (ah_1           ), //i
    .port_aa_0    (aa_0           ), //i
    .port_aa_1    (aa_1           ), //i
    .port_B_0_0   (bx_0_0         ), //i
    .port_B_0_1   (bx_0_1         ), //i
    .port_B_0_2   (bx_0_2         ), //i
    .port_B_0_3   (bx_0_3         ), //i
    .port_B_1_0   (bx_1_0         ), //i
    .port_B_1_1   (bx_1_1         ), //i
    .port_B_1_2   (bx_1_2         ), //i
    .port_B_1_3   (bx_1_3         ), //i
    .port_b_0_0_1 (sbx_0_0        ), //i
    .port_b_0_1_1 (sbx_0_1        ), //i
    .port_b_1_0_1 (sbx_1_0        ), //i
    .port_b_1_1_1 (sbx_1_1        ), //i
    .port_Bl_0    (bl_0           ), //i
    .port_Bl_1    (bl_1           ), //i
    .port_Bh_0    (bh_0           ), //i
    .port_Bh_1    (bh_1           ), //i
    .port_bb_0    (bb_0           ), //i
    .port_bb_1    (bb_1           ), //i
    .port_rand_0  (r0_0           ), //i
    .port_rand_1  (r0_1           ), //i
    .port_rand_2  (r0_2           ), //i
    .port_rand_3  (r0_3           ), //i
    .port_rand_4  (r0_4           ), //i
    .port_rand_5  (r0_5           ), //i
    .port_rand_6  (r0_6           ), //i
    .port_rand_7  (r0_7           ), //i
    .port_rand_8  (r0_8           ), //i
    .port_rand_9  (r0_9           ), //i
    .port_rand_10 (r0_10          ), //i
    .port_rand_11 (r0_11          ), //i
    .port_rand_12 (r0_12          ), //i
    .port_rand_13 (r0_13          ), //i
    .port_rand_14 (r0_14          ), //i
    .port_rand_15 (r0_15          ), //i
    .port_rand_16 (r0_16          ), //i
    .port_rand_17 (r0_17          ), //i
    .port_o_0_0   (mul4_port_o_0_0), //o
    .port_o_0_1   (mul4_port_o_0_1), //o
    .port_o_0_2   (mul4_port_o_0_2), //o
    .port_o_0_3   (mul4_port_o_0_3), //o
    .port_o_1_0   (mul4_port_o_1_0), //o
    .port_o_1_1   (mul4_port_o_1_1), //o
    .port_o_1_2   (mul4_port_o_1_2), //o
    .port_o_1_3   (mul4_port_o_1_3), //o
    .clk          (clk            ), //i
    .reset        (reset          )  //i
  );
  Shared_GF_INV_4 dx_inv (
    .port_i_0_0   (cx_0_0           ), //i
    .port_i_0_1   (cx_0_1           ), //i
    .port_i_0_2   (cx_0_2           ), //i
    .port_i_0_3   (cx_0_3           ), //i
    .port_i_1_0   (cx_1_0           ), //i
    .port_i_1_1   (cx_1_1           ), //i
    .port_i_1_2   (cx_1_2           ), //i
    .port_i_1_3   (cx_1_3           ), //i
    .port_rand_0  (r1_0             ), //i
    .port_rand_1  (r1_1             ), //i
    .port_rand_2  (r1_2             ), //i
    .port_rand_3  (r1_3             ), //i
    .port_rand_4  (r1_4             ), //i
    .port_rand_5  (r1_5             ), //i
    .port_rand_6  (r1_6             ), //i
    .port_rand_7  (r1_7             ), //i
    .port_rand_8  (r1_8             ), //i
    .port_rand_9  (r1_9             ), //i
    .port_rand_10 (r1_10            ), //i
    .port_rand_11 (r1_11            ), //i
    .port_rand_12 (r1_12            ), //i
    .port_rand_13 (r1_13            ), //i
    .port_rand_14 (r1_14            ), //i
    .port_rand_15 (r1_15            ), //i
    .port_rand_16 (r1_16            ), //i
    .port_rand_17 (r1_17            ), //i
    .port_o_0_0   (dx_inv_port_o_0_0), //o
    .port_o_0_1   (dx_inv_port_o_0_1), //o
    .port_o_0_2   (dx_inv_port_o_0_2), //o
    .port_o_0_3   (dx_inv_port_o_0_3), //o
    .port_o_1_0   (dx_inv_port_o_1_0), //o
    .port_o_1_1   (dx_inv_port_o_1_1), //o
    .port_o_1_2   (dx_inv_port_o_1_2), //o
    .port_o_1_3   (dx_inv_port_o_1_3), //o
    .clk          (clk              ), //i
    .reset        (reset            )  //i
  );
  Shared_GF_MULS_4 px_mul (
    .port_A_0_0   (dx_0_0           ), //i
    .port_A_0_1   (dx_0_1           ), //i
    .port_A_0_2   (dx_0_2           ), //i
    .port_A_0_3   (dx_0_3           ), //i
    .port_A_1_0   (dx_1_0           ), //i
    .port_A_1_1   (dx_1_1           ), //i
    .port_A_1_2   (dx_1_2           ), //i
    .port_A_1_3   (dx_1_3           ), //i
    .port_a_0_0_1 (sdx_0_0          ), //i
    .port_a_0_1_1 (sdx_0_1          ), //i
    .port_a_1_0_1 (sdx_1_0          ), //i
    .port_a_1_1_1 (sdx_1_1          ), //i
    .port_Al_0    (dl_0             ), //i
    .port_Al_1    (dl_1             ), //i
    .port_Ah_0    (dh_0             ), //i
    .port_Ah_1    (dh_1             ), //i
    .port_aa_0    (dd_0             ), //i
    .port_aa_1    (dd_1             ), //i
    .port_B_0_0   (bx_reg_3_0_0     ), //i
    .port_B_0_1   (bx_reg_3_0_1     ), //i
    .port_B_0_2   (bx_reg_3_0_2     ), //i
    .port_B_0_3   (bx_reg_3_0_3     ), //i
    .port_B_1_0   (bx_reg_3_1_0     ), //i
    .port_B_1_1   (bx_reg_3_1_1     ), //i
    .port_B_1_2   (bx_reg_3_1_2     ), //i
    .port_B_1_3   (bx_reg_3_1_3     ), //i
    .port_b_0_0_1 (sbx_reg_3_0_0    ), //i
    .port_b_0_1_1 (sbx_reg_3_0_1    ), //i
    .port_b_1_0_1 (sbx_reg_3_1_0    ), //i
    .port_b_1_1_1 (sbx_reg_3_1_1    ), //i
    .port_Bl_0    (bl_reg_3_0       ), //i
    .port_Bl_1    (bl_reg_3_1       ), //i
    .port_Bh_0    (bh_reg_3_0       ), //i
    .port_Bh_1    (bh_reg_3_1       ), //i
    .port_bb_0    (bb_reg_3_0       ), //i
    .port_bb_1    (bb_reg_3_1       ), //i
    .port_rand_0  (r2_0             ), //i
    .port_rand_1  (r2_1             ), //i
    .port_rand_2  (r2_2             ), //i
    .port_rand_3  (r2_3             ), //i
    .port_rand_4  (r2_4             ), //i
    .port_rand_5  (r2_5             ), //i
    .port_rand_6  (r2_6             ), //i
    .port_rand_7  (r2_7             ), //i
    .port_rand_8  (r2_8             ), //i
    .port_rand_9  (r2_9             ), //i
    .port_rand_10 (r2_10            ), //i
    .port_rand_11 (r2_11            ), //i
    .port_rand_12 (r2_12            ), //i
    .port_rand_13 (r2_13            ), //i
    .port_rand_14 (r2_14            ), //i
    .port_rand_15 (r2_15            ), //i
    .port_rand_16 (r2_16            ), //i
    .port_rand_17 (r2_17            ), //i
    .port_o_0_0   (px_mul_port_o_0_0), //o
    .port_o_0_1   (px_mul_port_o_0_1), //o
    .port_o_0_2   (px_mul_port_o_0_2), //o
    .port_o_0_3   (px_mul_port_o_0_3), //o
    .port_o_1_0   (px_mul_port_o_1_0), //o
    .port_o_1_1   (px_mul_port_o_1_1), //o
    .port_o_1_2   (px_mul_port_o_1_2), //o
    .port_o_1_3   (px_mul_port_o_1_3), //o
    .clk          (clk              ), //i
    .reset        (reset            )  //i
  );
  Shared_GF_MULS_4 qx_mul (
    .port_A_0_0   (dx_0_0           ), //i
    .port_A_0_1   (dx_0_1           ), //i
    .port_A_0_2   (dx_0_2           ), //i
    .port_A_0_3   (dx_0_3           ), //i
    .port_A_1_0   (dx_1_0           ), //i
    .port_A_1_1   (dx_1_1           ), //i
    .port_A_1_2   (dx_1_2           ), //i
    .port_A_1_3   (dx_1_3           ), //i
    .port_a_0_0_1 (sdx_0_0          ), //i
    .port_a_0_1_1 (sdx_0_1          ), //i
    .port_a_1_0_1 (sdx_1_0          ), //i
    .port_a_1_1_1 (sdx_1_1          ), //i
    .port_Al_0    (dl_0             ), //i
    .port_Al_1    (dl_1             ), //i
    .port_Ah_0    (dh_0             ), //i
    .port_Ah_1    (dh_1             ), //i
    .port_aa_0    (dd_0             ), //i
    .port_aa_1    (dd_1             ), //i
    .port_B_0_0   (ax_reg_3_0_0     ), //i
    .port_B_0_1   (ax_reg_3_0_1     ), //i
    .port_B_0_2   (ax_reg_3_0_2     ), //i
    .port_B_0_3   (ax_reg_3_0_3     ), //i
    .port_B_1_0   (ax_reg_3_1_0     ), //i
    .port_B_1_1   (ax_reg_3_1_1     ), //i
    .port_B_1_2   (ax_reg_3_1_2     ), //i
    .port_B_1_3   (ax_reg_3_1_3     ), //i
    .port_b_0_0_1 (sax_reg_3_0_0    ), //i
    .port_b_0_1_1 (sax_reg_3_0_1    ), //i
    .port_b_1_0_1 (sax_reg_3_1_0    ), //i
    .port_b_1_1_1 (sax_reg_3_1_1    ), //i
    .port_Bl_0    (al_reg_3_0       ), //i
    .port_Bl_1    (al_reg_3_1       ), //i
    .port_Bh_0    (ah_reg_3_0       ), //i
    .port_Bh_1    (ah_reg_3_1       ), //i
    .port_bb_0    (aa_reg_3_0       ), //i
    .port_bb_1    (aa_reg_3_1       ), //i
    .port_rand_0  (r3_0             ), //i
    .port_rand_1  (r3_1             ), //i
    .port_rand_2  (r3_2             ), //i
    .port_rand_3  (r3_3             ), //i
    .port_rand_4  (r3_4             ), //i
    .port_rand_5  (r3_5             ), //i
    .port_rand_6  (r3_6             ), //i
    .port_rand_7  (r3_7             ), //i
    .port_rand_8  (r3_8             ), //i
    .port_rand_9  (r3_9             ), //i
    .port_rand_10 (r3_10            ), //i
    .port_rand_11 (r3_11            ), //i
    .port_rand_12 (r3_12            ), //i
    .port_rand_13 (r3_13            ), //i
    .port_rand_14 (r3_14            ), //i
    .port_rand_15 (r3_15            ), //i
    .port_rand_16 (r3_16            ), //i
    .port_rand_17 (r3_17            ), //i
    .port_o_0_0   (qx_mul_port_o_0_0), //o
    .port_o_0_1   (qx_mul_port_o_0_1), //o
    .port_o_0_2   (qx_mul_port_o_0_2), //o
    .port_o_0_3   (qx_mul_port_o_0_3), //o
    .port_o_1_0   (qx_mul_port_o_1_0), //o
    .port_o_1_1   (qx_mul_port_o_1_1), //o
    .port_o_1_2   (qx_mul_port_o_1_2), //o
    .port_o_1_3   (qx_mul_port_o_1_3), //o
    .clk          (clk              ), //i
    .reset        (reset            )  //i
  );
  assign r0_0 = port_rand_0;
  assign r1_0 = port_rand_18;
  assign r2_0 = port_rand_36;
  assign r3_0 = port_rand_54;
  assign r0_1 = port_rand_1;
  assign r1_1 = port_rand_19;
  assign r2_1 = port_rand_37;
  assign r3_1 = port_rand_55;
  assign r0_2 = port_rand_2;
  assign r1_2 = port_rand_20;
  assign r2_2 = port_rand_38;
  assign r3_2 = port_rand_56;
  assign r0_3 = port_rand_3;
  assign r1_3 = port_rand_21;
  assign r2_3 = port_rand_39;
  assign r3_3 = port_rand_57;
  assign r0_4 = port_rand_4;
  assign r1_4 = port_rand_22;
  assign r2_4 = port_rand_40;
  assign r3_4 = port_rand_58;
  assign r0_5 = port_rand_5;
  assign r1_5 = port_rand_23;
  assign r2_5 = port_rand_41;
  assign r3_5 = port_rand_59;
  assign r0_6 = port_rand_6;
  assign r1_6 = port_rand_24;
  assign r2_6 = port_rand_42;
  assign r3_6 = port_rand_60;
  assign r0_7 = port_rand_7;
  assign r1_7 = port_rand_25;
  assign r2_7 = port_rand_43;
  assign r3_7 = port_rand_61;
  assign r0_8 = port_rand_8;
  assign r1_8 = port_rand_26;
  assign r2_8 = port_rand_44;
  assign r3_8 = port_rand_62;
  assign r0_9 = port_rand_9;
  assign r1_9 = port_rand_27;
  assign r2_9 = port_rand_45;
  assign r3_9 = port_rand_63;
  assign r0_10 = port_rand_10;
  assign r1_10 = port_rand_28;
  assign r2_10 = port_rand_46;
  assign r3_10 = port_rand_64;
  assign r0_11 = port_rand_11;
  assign r1_11 = port_rand_29;
  assign r2_11 = port_rand_47;
  assign r3_11 = port_rand_65;
  assign r0_12 = port_rand_12;
  assign r1_12 = port_rand_30;
  assign r2_12 = port_rand_48;
  assign r3_12 = port_rand_66;
  assign r0_13 = port_rand_13;
  assign r1_13 = port_rand_31;
  assign r2_13 = port_rand_49;
  assign r3_13 = port_rand_67;
  assign r0_14 = port_rand_14;
  assign r1_14 = port_rand_32;
  assign r2_14 = port_rand_50;
  assign r3_14 = port_rand_68;
  assign r0_15 = port_rand_15;
  assign r1_15 = port_rand_33;
  assign r2_15 = port_rand_51;
  assign r3_15 = port_rand_69;
  assign r0_16 = port_rand_16;
  assign r1_16 = port_rand_34;
  assign r2_16 = port_rand_52;
  assign r3_16 = port_rand_70;
  assign r0_17 = port_rand_17;
  assign r1_17 = port_rand_35;
  assign r2_17 = port_rand_53;
  assign r3_17 = port_rand_71;
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
  assign sq_in_0_0 = (ax_0_0 ^ bx_0_0);
  assign sq_in_0_1 = (ax_0_1 ^ bx_0_1);
  assign sq_in_0_2 = (ax_0_2 ^ bx_0_2);
  assign sq_in_0_3 = (ax_0_3 ^ bx_0_3);
  assign sq_in_1_0 = (ax_1_0 ^ bx_1_0);
  assign sq_in_1_1 = (ax_1_1 ^ bx_1_1);
  assign sq_in_1_2 = (ax_1_2 ^ bx_1_2);
  assign sq_in_1_3 = (ax_1_3 ^ bx_1_3);
  assign cx_0_0 = (mul4_port_o_0_0 ^ sq_port_o_0_0);
  assign cx_0_1 = (mul4_port_o_0_1 ^ sq_port_o_0_1);
  assign cx_0_2 = (mul4_port_o_0_2 ^ sq_port_o_0_2);
  assign cx_0_3 = (mul4_port_o_0_3 ^ sq_port_o_0_3);
  assign cx_1_0 = (mul4_port_o_1_0 ^ sq_port_o_1_0);
  assign cx_1_1 = (mul4_port_o_1_1 ^ sq_port_o_1_1);
  assign cx_1_2 = (mul4_port_o_1_2 ^ sq_port_o_1_2);
  assign cx_1_3 = (mul4_port_o_1_3 ^ sq_port_o_1_3);
  assign dx_0_0 = dx_inv_port_o_0_0;
  assign dx_0_1 = dx_inv_port_o_0_1;
  assign dx_0_2 = dx_inv_port_o_0_2;
  assign dx_0_3 = dx_inv_port_o_0_3;
  assign dx_1_0 = dx_inv_port_o_1_0;
  assign dx_1_1 = dx_inv_port_o_1_1;
  assign dx_1_2 = dx_inv_port_o_1_2;
  assign dx_1_3 = dx_inv_port_o_1_3;
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
  assign px_0_0 = px_mul_port_o_0_0;
  assign px_0_1 = px_mul_port_o_0_1;
  assign px_0_2 = px_mul_port_o_0_2;
  assign px_0_3 = px_mul_port_o_0_3;
  assign px_1_0 = px_mul_port_o_1_0;
  assign px_1_1 = px_mul_port_o_1_1;
  assign px_1_2 = px_mul_port_o_1_2;
  assign px_1_3 = px_mul_port_o_1_3;
  assign qx_0_0 = qx_mul_port_o_0_0;
  assign qx_0_1 = qx_mul_port_o_0_1;
  assign qx_0_2 = qx_mul_port_o_0_2;
  assign qx_0_3 = qx_mul_port_o_0_3;
  assign qx_1_0 = qx_mul_port_o_1_0;
  assign qx_1_1 = qx_mul_port_o_1_1;
  assign qx_1_2 = qx_mul_port_o_1_2;
  assign qx_1_3 = qx_mul_port_o_1_3;
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
  always @(posedge clk) begin
    ax_0_0 <= port_i_0_4;
    ax_0_1 <= port_i_0_5;
    ax_0_2 <= port_i_0_6;
    ax_0_3 <= port_i_0_7;
    ax_1_0 <= port_i_1_4;
    ax_1_1 <= port_i_1_5;
    ax_1_2 <= port_i_1_6;
    ax_1_3 <= port_i_1_7;
    bx_reg_0_0_0 <= bx_0_0;
    bx_reg_0_0_1 <= bx_0_1;
    bx_reg_0_0_2 <= bx_0_2;
    bx_reg_0_0_3 <= bx_0_3;
    bx_reg_0_1_0 <= bx_1_0;
    bx_reg_0_1_1 <= bx_1_1;
    bx_reg_0_1_2 <= bx_1_2;
    bx_reg_0_1_3 <= bx_1_3;
    bx_reg_1_0_0 <= bx_reg_0_0_0;
    bx_reg_1_0_1 <= bx_reg_0_0_1;
    bx_reg_1_0_2 <= bx_reg_0_0_2;
    bx_reg_1_0_3 <= bx_reg_0_0_3;
    bx_reg_1_1_0 <= bx_reg_0_1_0;
    bx_reg_1_1_1 <= bx_reg_0_1_1;
    bx_reg_1_1_2 <= bx_reg_0_1_2;
    bx_reg_1_1_3 <= bx_reg_0_1_3;
    bx_reg_2_0_0 <= bx_reg_1_0_0;
    bx_reg_2_0_1 <= bx_reg_1_0_1;
    bx_reg_2_0_2 <= bx_reg_1_0_2;
    bx_reg_2_0_3 <= bx_reg_1_0_3;
    bx_reg_2_1_0 <= bx_reg_1_1_0;
    bx_reg_2_1_1 <= bx_reg_1_1_1;
    bx_reg_2_1_2 <= bx_reg_1_1_2;
    bx_reg_2_1_3 <= bx_reg_1_1_3;
    bx_reg_3_0_0 <= bx_reg_2_0_0;
    bx_reg_3_0_1 <= bx_reg_2_0_1;
    bx_reg_3_0_2 <= bx_reg_2_0_2;
    bx_reg_3_0_3 <= bx_reg_2_0_3;
    bx_reg_3_1_0 <= bx_reg_2_1_0;
    bx_reg_3_1_1 <= bx_reg_2_1_1;
    bx_reg_3_1_2 <= bx_reg_2_1_2;
    bx_reg_3_1_3 <= bx_reg_2_1_3;
    ax_reg_1_0_0 <= ax_0_0;
    ax_reg_1_0_1 <= ax_0_1;
    ax_reg_1_0_2 <= ax_0_2;
    ax_reg_1_0_3 <= ax_0_3;
    ax_reg_1_1_0 <= ax_1_0;
    ax_reg_1_1_1 <= ax_1_1;
    ax_reg_1_1_2 <= ax_1_2;
    ax_reg_1_1_3 <= ax_1_3;
    ax_reg_2_0_0 <= ax_reg_1_0_0;
    ax_reg_2_0_1 <= ax_reg_1_0_1;
    ax_reg_2_0_2 <= ax_reg_1_0_2;
    ax_reg_2_0_3 <= ax_reg_1_0_3;
    ax_reg_2_1_0 <= ax_reg_1_1_0;
    ax_reg_2_1_1 <= ax_reg_1_1_1;
    ax_reg_2_1_2 <= ax_reg_1_1_2;
    ax_reg_2_1_3 <= ax_reg_1_1_3;
    ax_reg_3_0_0 <= ax_reg_2_0_0;
    ax_reg_3_0_1 <= ax_reg_2_0_1;
    ax_reg_3_0_2 <= ax_reg_2_0_2;
    ax_reg_3_0_3 <= ax_reg_2_0_3;
    ax_reg_3_1_0 <= ax_reg_2_1_0;
    ax_reg_3_1_1 <= ax_reg_2_1_1;
    ax_reg_3_1_2 <= ax_reg_2_1_2;
    ax_reg_3_1_3 <= ax_reg_2_1_3;
  end


endmodule

module Shared_LinearMapping (
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
  output     [0:0]    port_o_1_7
);

  wire       [0:0]    outVal_0_0;
  wire       [0:0]    outVal_0_1;
  wire       [0:0]    outVal_0_2;
  wire       [0:0]    outVal_0_3;
  wire       [0:0]    outVal_0_4;
  wire       [0:0]    outVal_0_5;
  wire       [0:0]    outVal_0_6;
  wire       [0:0]    outVal_0_7;
  wire       [0:0]    outVal_1_0;
  wire       [0:0]    outVal_1_1;
  wire       [0:0]    outVal_1_2;
  wire       [0:0]    outVal_1_3;
  wire       [0:0]    outVal_1_4;
  wire       [0:0]    outVal_1_5;
  wire       [0:0]    outVal_1_6;
  wire       [0:0]    outVal_1_7;
  wire       [0:0]    rx1_0;
  wire       [0:0]    rx2_0;
  wire       [0:0]    rx3_0;
  wire       [0:0]    rx4_0;
  wire       [0:0]    rx5_0;
  wire       [0:0]    rx6_0;
  wire       [0:0]    rx7_0;
  wire       [0:0]    rx8_0;
  wire       [0:0]    rx9_0;
  wire       [0:0]    _zz_outVal_1_4;
  wire       [0:0]    _zz_outVal_1_0;
  wire       [0:0]    _zz_outVal_1_1;
  wire       [0:0]    _zz_outVal_1_0_1;

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

endmodule

//Shared_GF_MULS_4 replaced by Shared_GF_MULS_4

//Shared_GF_MULS_4 replaced by Shared_GF_MULS_4

module Shared_GF_INV_4 (
  input      [0:0]    port_i_0_0,
  input      [0:0]    port_i_0_1,
  input      [0:0]    port_i_0_2,
  input      [0:0]    port_i_0_3,
  input      [0:0]    port_i_1_0,
  input      [0:0]    port_i_1_1,
  input      [0:0]    port_i_1_2,
  input      [0:0]    port_i_1_3,
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

  wire       [0:0]    mul2_port_o_0_0;
  wire       [0:0]    mul2_port_o_0_1;
  wire       [0:0]    mul2_port_o_1_0;
  wire       [0:0]    mul2_port_o_1_1;
  wire       [0:0]    sq_port_o_0_0;
  wire       [0:0]    sq_port_o_0_1;
  wire       [0:0]    sq_port_o_1_0;
  wire       [0:0]    sq_port_o_1_1;
  wire       [0:0]    sc_port_o_0_0;
  wire       [0:0]    sc_port_o_0_1;
  wire       [0:0]    sc_port_o_1_0;
  wire       [0:0]    sc_port_o_1_1;
  wire       [0:0]    dx_inv_port_o_0_0;
  wire       [0:0]    dx_inv_port_o_0_1;
  wire       [0:0]    dx_inv_port_o_1_0;
  wire       [0:0]    dx_inv_port_o_1_1;
  wire       [0:0]    px_mul_port_o_0_0;
  wire       [0:0]    px_mul_port_o_0_1;
  wire       [0:0]    px_mul_port_o_1_0;
  wire       [0:0]    px_mul_port_o_1_1;
  wire       [0:0]    qx_mul_port_o_0_0;
  wire       [0:0]    qx_mul_port_o_0_1;
  wire       [0:0]    qx_mul_port_o_1_0;
  wire       [0:0]    qx_mul_port_o_1_1;
  reg        [0:0]    ax_0_0;
  reg        [0:0]    ax_0_1;
  reg        [0:0]    ax_1_0;
  reg        [0:0]    ax_1_1;
  wire       [0:0]    bx_0_0;
  wire       [0:0]    bx_0_1;
  wire       [0:0]    bx_1_0;
  wire       [0:0]    bx_1_1;
  wire       [0:0]    sax_0;
  wire       [0:0]    sax_1;
  wire       [0:0]    sbx_0;
  wire       [0:0]    sbx_1;
  wire       [0:0]    cx_0_0;
  wire       [0:0]    cx_0_1;
  wire       [0:0]    cx_1_0;
  wire       [0:0]    cx_1_1;
  wire       [0:0]    dx_0_0;
  wire       [0:0]    dx_0_1;
  wire       [0:0]    dx_1_0;
  wire       [0:0]    dx_1_1;
  wire       [0:0]    sdx_0;
  wire       [0:0]    sdx_1;
  wire       [0:0]    px_0_0;
  wire       [0:0]    px_0_1;
  wire       [0:0]    px_1_0;
  wire       [0:0]    px_1_1;
  wire       [0:0]    qx_0_0;
  wire       [0:0]    qx_0_1;
  wire       [0:0]    qx_1_0;
  wire       [0:0]    qx_1_1;
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
  wire       [0:0]    sq_in_0_0;
  wire       [0:0]    sq_in_0_1;
  wire       [0:0]    sq_in_1_0;
  wire       [0:0]    sq_in_1_1;
  reg        [0:0]    reg_bx_0_0;
  reg        [0:0]    reg_bx_0_1;
  reg        [0:0]    reg_bx_1_0;
  reg        [0:0]    reg_bx_1_1;
  reg        [0:0]    reg_sbx_0;
  reg        [0:0]    reg_sbx_1;

  Shared_GF_MULS_2 mul2 (
    .port_a_0_0  (ax_0_0         ), //i
    .port_a_0_1  (ax_0_1         ), //i
    .port_a_1_0  (ax_1_0         ), //i
    .port_a_1_1  (ax_1_1         ), //i
    .port_ab_0   (sax_0          ), //i
    .port_ab_1   (sax_1          ), //i
    .port_b_0_0  (bx_0_0         ), //i
    .port_b_0_1  (bx_0_1         ), //i
    .port_b_1_0  (bx_1_0         ), //i
    .port_b_1_1  (bx_1_1         ), //i
    .port_cd_0   (sbx_0          ), //i
    .port_cd_1   (sbx_1          ), //i
    .port_rand_0 (r0_0           ), //i
    .port_rand_1 (r0_1           ), //i
    .port_rand_2 (r0_2           ), //i
    .port_rand_3 (r0_3           ), //i
    .port_rand_4 (r0_4           ), //i
    .port_rand_5 (r0_5           ), //i
    .port_o_0_0  (mul2_port_o_0_0), //o
    .port_o_0_1  (mul2_port_o_0_1), //o
    .port_o_1_0  (mul2_port_o_1_0), //o
    .port_o_1_1  (mul2_port_o_1_1), //o
    .clk         (clk            ), //i
    .reset       (reset          )  //i
  );
  Shared_GF_SQ_2 sq (
    .port_i_0_0 (sq_in_0_0    ), //i
    .port_i_0_1 (sq_in_0_1    ), //i
    .port_i_1_0 (sq_in_1_0    ), //i
    .port_i_1_1 (sq_in_1_1    ), //i
    .port_o_0_0 (sq_port_o_0_0), //o
    .port_o_0_1 (sq_port_o_0_1), //o
    .port_o_1_0 (sq_port_o_1_0), //o
    .port_o_1_1 (sq_port_o_1_1)  //o
  );
  Shared_GF_SCLW2_2 sc (
    .port_i_0_0 (sq_port_o_0_0), //i
    .port_i_0_1 (sq_port_o_0_1), //i
    .port_i_1_0 (sq_port_o_1_0), //i
    .port_i_1_1 (sq_port_o_1_1), //i
    .port_o_0_0 (sc_port_o_0_0), //o
    .port_o_0_1 (sc_port_o_0_1), //o
    .port_o_1_0 (sc_port_o_1_0), //o
    .port_o_1_1 (sc_port_o_1_1)  //o
  );
  Shared_GF_SQ_2 dx_inv (
    .port_i_0_0 (cx_0_0           ), //i
    .port_i_0_1 (cx_0_1           ), //i
    .port_i_1_0 (cx_1_0           ), //i
    .port_i_1_1 (cx_1_1           ), //i
    .port_o_0_0 (dx_inv_port_o_0_0), //o
    .port_o_0_1 (dx_inv_port_o_0_1), //o
    .port_o_1_0 (dx_inv_port_o_1_0), //o
    .port_o_1_1 (dx_inv_port_o_1_1)  //o
  );
  Shared_GF_MULS_2 px_mul (
    .port_a_0_0  (dx_0_0           ), //i
    .port_a_0_1  (dx_0_1           ), //i
    .port_a_1_0  (dx_1_0           ), //i
    .port_a_1_1  (dx_1_1           ), //i
    .port_ab_0   (sdx_0            ), //i
    .port_ab_1   (sdx_1            ), //i
    .port_b_0_0  (reg_bx_0_0       ), //i
    .port_b_0_1  (reg_bx_0_1       ), //i
    .port_b_1_0  (reg_bx_1_0       ), //i
    .port_b_1_1  (reg_bx_1_1       ), //i
    .port_cd_0   (reg_sbx_0        ), //i
    .port_cd_1   (reg_sbx_1        ), //i
    .port_rand_0 (r1_0             ), //i
    .port_rand_1 (r1_1             ), //i
    .port_rand_2 (r1_2             ), //i
    .port_rand_3 (r1_3             ), //i
    .port_rand_4 (r1_4             ), //i
    .port_rand_5 (r1_5             ), //i
    .port_o_0_0  (px_mul_port_o_0_0), //o
    .port_o_0_1  (px_mul_port_o_0_1), //o
    .port_o_1_0  (px_mul_port_o_1_0), //o
    .port_o_1_1  (px_mul_port_o_1_1), //o
    .clk         (clk              ), //i
    .reset       (reset            )  //i
  );
  Shared_GF_MULS_2 qx_mul (
    .port_a_0_0  (dx_0_0           ), //i
    .port_a_0_1  (dx_0_1           ), //i
    .port_a_1_0  (dx_1_0           ), //i
    .port_a_1_1  (dx_1_1           ), //i
    .port_ab_0   (sdx_0            ), //i
    .port_ab_1   (sdx_1            ), //i
    .port_b_0_0  (ax_0_0           ), //i
    .port_b_0_1  (ax_0_1           ), //i
    .port_b_1_0  (ax_1_0           ), //i
    .port_b_1_1  (ax_1_1           ), //i
    .port_cd_0   (sax_0            ), //i
    .port_cd_1   (sax_1            ), //i
    .port_rand_0 (r2_0             ), //i
    .port_rand_1 (r2_1             ), //i
    .port_rand_2 (r2_2             ), //i
    .port_rand_3 (r2_3             ), //i
    .port_rand_4 (r2_4             ), //i
    .port_rand_5 (r2_5             ), //i
    .port_o_0_0  (qx_mul_port_o_0_0), //o
    .port_o_0_1  (qx_mul_port_o_0_1), //o
    .port_o_1_0  (qx_mul_port_o_1_0), //o
    .port_o_1_1  (qx_mul_port_o_1_1), //o
    .clk         (clk              ), //i
    .reset       (reset            )  //i
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
  assign bx_0_0 = port_i_0_0;
  assign bx_0_1 = port_i_0_1;
  assign sax_0 = (ax_0_1 ^ ax_0_0);
  assign sbx_0 = (bx_0_1 ^ bx_0_0);
  assign bx_1_0 = port_i_1_0;
  assign bx_1_1 = port_i_1_1;
  assign sax_1 = (ax_1_1 ^ ax_1_0);
  assign sbx_1 = (bx_1_1 ^ bx_1_0);
  assign sq_in_0_0 = (ax_0_0 ^ bx_0_0);
  assign sq_in_0_1 = (ax_0_1 ^ bx_0_1);
  assign sq_in_1_0 = (ax_1_0 ^ bx_1_0);
  assign sq_in_1_1 = (ax_1_1 ^ bx_1_1);
  assign cx_0_0 = (mul2_port_o_0_0 ^ sc_port_o_0_0);
  assign cx_0_1 = (mul2_port_o_0_1 ^ sc_port_o_0_1);
  assign cx_1_0 = (mul2_port_o_1_0 ^ sc_port_o_1_0);
  assign cx_1_1 = (mul2_port_o_1_1 ^ sc_port_o_1_1);
  assign dx_0_0 = dx_inv_port_o_0_0;
  assign dx_0_1 = dx_inv_port_o_0_1;
  assign dx_1_0 = dx_inv_port_o_1_0;
  assign dx_1_1 = dx_inv_port_o_1_1;
  assign sdx_0 = (dx_0_0 ^ dx_0_1);
  assign sdx_1 = (dx_1_0 ^ dx_1_1);
  assign px_0_0 = px_mul_port_o_0_0;
  assign px_0_1 = px_mul_port_o_0_1;
  assign px_1_0 = px_mul_port_o_1_0;
  assign px_1_1 = px_mul_port_o_1_1;
  assign qx_0_0 = qx_mul_port_o_0_0;
  assign qx_0_1 = qx_mul_port_o_0_1;
  assign qx_1_0 = qx_mul_port_o_1_0;
  assign qx_1_1 = qx_mul_port_o_1_1;
  assign port_o_0_0 = qx_0_0;
  assign port_o_0_1 = qx_0_1;
  assign port_o_0_2 = px_0_0;
  assign port_o_0_3 = px_0_1;
  assign port_o_1_0 = qx_1_0;
  assign port_o_1_1 = qx_1_1;
  assign port_o_1_2 = px_1_0;
  assign port_o_1_3 = px_1_1;
  always @(posedge clk) begin
    ax_0_0 <= port_i_0_2;
    ax_0_1 <= port_i_0_3;
    ax_1_0 <= port_i_1_2;
    ax_1_1 <= port_i_1_3;
    reg_bx_0_0 <= bx_0_0;
    reg_bx_0_1 <= bx_0_1;
    reg_bx_1_0 <= bx_1_0;
    reg_bx_1_1 <= bx_1_1;
    reg_sbx_0 <= sbx_0;
    reg_sbx_1 <= sbx_1;
  end


endmodule

module Shared_GF_MULS_4 (
  input      [0:0]    port_A_0_0,
  input      [0:0]    port_A_0_1,
  input      [0:0]    port_A_0_2,
  input      [0:0]    port_A_0_3,
  input      [0:0]    port_A_1_0,
  input      [0:0]    port_A_1_1,
  input      [0:0]    port_A_1_2,
  input      [0:0]    port_A_1_3,
  input      [0:0]    port_a_0_0_1,
  input      [0:0]    port_a_0_1_1,
  input      [0:0]    port_a_1_0_1,
  input      [0:0]    port_a_1_1_1,
  input      [0:0]    port_Al_0,
  input      [0:0]    port_Al_1,
  input      [0:0]    port_Ah_0,
  input      [0:0]    port_Ah_1,
  input      [0:0]    port_aa_0,
  input      [0:0]    port_aa_1,
  input      [0:0]    port_B_0_0,
  input      [0:0]    port_B_0_1,
  input      [0:0]    port_B_0_2,
  input      [0:0]    port_B_0_3,
  input      [0:0]    port_B_1_0,
  input      [0:0]    port_B_1_1,
  input      [0:0]    port_B_1_2,
  input      [0:0]    port_B_1_3,
  input      [0:0]    port_b_0_0_1,
  input      [0:0]    port_b_0_1_1,
  input      [0:0]    port_b_1_0_1,
  input      [0:0]    port_b_1_1_1,
  input      [0:0]    port_Bl_0,
  input      [0:0]    port_Bl_1,
  input      [0:0]    port_Bh_0,
  input      [0:0]    port_Bh_1,
  input      [0:0]    port_bb_0,
  input      [0:0]    port_bb_1,
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

  wire       [0:0]    hi_mul_port_o_0_0;
  wire       [0:0]    hi_mul_port_o_0_1;
  wire       [0:0]    hi_mul_port_o_1_0;
  wire       [0:0]    hi_mul_port_o_1_1;
  wire       [0:0]    lo_mul_port_o_0_0;
  wire       [0:0]    lo_mul_port_o_0_1;
  wire       [0:0]    lo_mul_port_o_1_0;
  wire       [0:0]    lo_mul_port_o_1_1;
  wire       [0:0]    sum_mul_port_o_0_0;
  wire       [0:0]    sum_mul_port_o_0_1;
  wire       [0:0]    sum_mul_port_o_1_0;
  wire       [0:0]    sum_mul_port_o_1_1;
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
  wire       [0:0]    high_A_0_0;
  wire       [0:0]    high_A_0_1;
  wire       [0:0]    high_A_1_0;
  wire       [0:0]    high_A_1_1;
  wire       [0:0]    low_A_0_0;
  wire       [0:0]    low_A_0_1;
  wire       [0:0]    low_A_1_0;
  wire       [0:0]    low_A_1_1;
  wire       [0:0]    high_B_0_0;
  wire       [0:0]    high_B_0_1;
  wire       [0:0]    high_B_1_0;
  wire       [0:0]    high_B_1_1;
  wire       [0:0]    low_B_0_0;
  wire       [0:0]    low_B_0_1;
  wire       [0:0]    low_B_1_0;
  wire       [0:0]    low_B_1_1;
  wire       [0:0]    ph_0_0;
  wire       [0:0]    ph_0_1;
  wire       [0:0]    ph_1_0;
  wire       [0:0]    ph_1_1;
  wire       [0:0]    pl_0_0;
  wire       [0:0]    pl_0_1;
  wire       [0:0]    pl_1_0;
  wire       [0:0]    pl_1_1;
  wire       [0:0]    p_0_0;
  wire       [0:0]    p_0_1;
  wire       [0:0]    p_1_0;
  wire       [0:0]    p_1_1;

  Shared_GF_MULS_2 hi_mul (
    .port_a_0_0  (high_A_0_0       ), //i
    .port_a_0_1  (high_A_0_1       ), //i
    .port_a_1_0  (high_A_1_0       ), //i
    .port_a_1_1  (high_A_1_1       ), //i
    .port_ab_0   (port_Ah_0        ), //i
    .port_ab_1   (port_Ah_1        ), //i
    .port_b_0_0  (high_B_0_0       ), //i
    .port_b_0_1  (high_B_0_1       ), //i
    .port_b_1_0  (high_B_1_0       ), //i
    .port_b_1_1  (high_B_1_1       ), //i
    .port_cd_0   (port_Bh_0        ), //i
    .port_cd_1   (port_Bh_1        ), //i
    .port_rand_0 (r0_0             ), //i
    .port_rand_1 (r0_1             ), //i
    .port_rand_2 (r0_2             ), //i
    .port_rand_3 (r0_3             ), //i
    .port_rand_4 (r0_4             ), //i
    .port_rand_5 (r0_5             ), //i
    .port_o_0_0  (hi_mul_port_o_0_0), //o
    .port_o_0_1  (hi_mul_port_o_0_1), //o
    .port_o_1_0  (hi_mul_port_o_1_0), //o
    .port_o_1_1  (hi_mul_port_o_1_1), //o
    .clk         (clk              ), //i
    .reset       (reset            )  //i
  );
  Shared_GF_MULS_2 lo_mul (
    .port_a_0_0  (low_A_0_0        ), //i
    .port_a_0_1  (low_A_0_1        ), //i
    .port_a_1_0  (low_A_1_0        ), //i
    .port_a_1_1  (low_A_1_1        ), //i
    .port_ab_0   (port_Al_0        ), //i
    .port_ab_1   (port_Al_1        ), //i
    .port_b_0_0  (low_B_0_0        ), //i
    .port_b_0_1  (low_B_0_1        ), //i
    .port_b_1_0  (low_B_1_0        ), //i
    .port_b_1_1  (low_B_1_1        ), //i
    .port_cd_0   (port_Bl_0        ), //i
    .port_cd_1   (port_Bl_1        ), //i
    .port_rand_0 (r1_0             ), //i
    .port_rand_1 (r1_1             ), //i
    .port_rand_2 (r1_2             ), //i
    .port_rand_3 (r1_3             ), //i
    .port_rand_4 (r1_4             ), //i
    .port_rand_5 (r1_5             ), //i
    .port_o_0_0  (lo_mul_port_o_0_0), //o
    .port_o_0_1  (lo_mul_port_o_0_1), //o
    .port_o_1_0  (lo_mul_port_o_1_0), //o
    .port_o_1_1  (lo_mul_port_o_1_1), //o
    .clk         (clk              ), //i
    .reset       (reset            )  //i
  );
  Shared_GF_MULS_SCL_2 sum_mul (
    .port_a_0_0  (port_a_0_0_1      ), //i
    .port_a_0_1  (port_a_0_1_1      ), //i
    .port_a_1_0  (port_a_1_0_1      ), //i
    .port_a_1_1  (port_a_1_1_1      ), //i
    .port_ab_0   (port_aa_0         ), //i
    .port_ab_1   (port_aa_1         ), //i
    .port_b_0_0  (port_b_0_0_1      ), //i
    .port_b_0_1  (port_b_0_1_1      ), //i
    .port_b_1_0  (port_b_1_0_1      ), //i
    .port_b_1_1  (port_b_1_1_1      ), //i
    .port_cd_0   (port_bb_0         ), //i
    .port_cd_1   (port_bb_1         ), //i
    .port_rand_0 (r2_0              ), //i
    .port_rand_1 (r2_1              ), //i
    .port_rand_2 (r2_2              ), //i
    .port_rand_3 (r2_3              ), //i
    .port_rand_4 (r2_4              ), //i
    .port_rand_5 (r2_5              ), //i
    .port_o_0_0  (sum_mul_port_o_0_0), //o
    .port_o_0_1  (sum_mul_port_o_0_1), //o
    .port_o_1_0  (sum_mul_port_o_1_0), //o
    .port_o_1_1  (sum_mul_port_o_1_1), //o
    .clk         (clk               ), //i
    .reset       (reset             )  //i
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
  assign ph_0_0 = hi_mul_port_o_0_0;
  assign ph_0_1 = hi_mul_port_o_0_1;
  assign ph_1_0 = hi_mul_port_o_1_0;
  assign ph_1_1 = hi_mul_port_o_1_1;
  assign pl_0_0 = lo_mul_port_o_0_0;
  assign pl_0_1 = lo_mul_port_o_0_1;
  assign pl_1_0 = lo_mul_port_o_1_0;
  assign pl_1_1 = lo_mul_port_o_1_1;
  assign p_0_0 = sum_mul_port_o_0_0;
  assign p_0_1 = sum_mul_port_o_0_1;
  assign p_1_0 = sum_mul_port_o_1_0;
  assign p_1_1 = sum_mul_port_o_1_1;
  assign port_o_0_0 = (pl_0_0 ^ p_0_0);
  assign port_o_0_1 = (pl_0_1 ^ p_0_1);
  assign port_o_0_2 = (ph_0_0 ^ p_0_0);
  assign port_o_0_3 = (ph_0_1 ^ p_0_1);
  assign port_o_1_0 = (pl_1_0 ^ p_1_0);
  assign port_o_1_1 = (pl_1_1 ^ p_1_1);
  assign port_o_1_2 = (ph_1_0 ^ p_1_0);
  assign port_o_1_3 = (ph_1_1 ^ p_1_1);

endmodule

module Shared_GF_SQ_SCL_4 (
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
  output     [0:0]    port_o_1_3
);

  wire       [0:0]    ab_sq_port_o_0_0;
  wire       [0:0]    ab_sq_port_o_0_1;
  wire       [0:0]    ab_sq_port_o_1_0;
  wire       [0:0]    ab_sq_port_o_1_1;
  wire       [0:0]    b_sq_port_o_0_0;
  wire       [0:0]    b_sq_port_o_0_1;
  wire       [0:0]    b_sq_port_o_1_0;
  wire       [0:0]    b_sq_port_o_1_1;
  wire       [0:0]    b_mulN2_port_o_0_0;
  wire       [0:0]    b_mulN2_port_o_0_1;
  wire       [0:0]    b_mulN2_port_o_1_0;
  wire       [0:0]    b_mulN2_port_o_1_1;
  wire       [0:0]    ax_0_0;
  wire       [0:0]    ax_0_1;
  wire       [0:0]    ax_1_0;
  wire       [0:0]    ax_1_1;
  wire       [0:0]    bx_0_0;
  wire       [0:0]    bx_0_1;
  wire       [0:0]    bx_1_0;
  wire       [0:0]    bx_1_1;
  wire       [0:0]    abx_0_0;
  wire       [0:0]    abx_0_1;
  wire       [0:0]    abx_1_0;
  wire       [0:0]    abx_1_1;
  wire       [0:0]    ab2x_0_0;
  wire       [0:0]    ab2x_0_1;
  wire       [0:0]    ab2x_1_0;
  wire       [0:0]    ab2x_1_1;
  wire       [0:0]    b2x_0_0;
  wire       [0:0]    b2x_0_1;
  wire       [0:0]    b2x_1_0;
  wire       [0:0]    b2x_1_1;
  wire       [0:0]    b2N2_0_0;
  wire       [0:0]    b2N2_0_1;
  wire       [0:0]    b2N2_1_0;
  wire       [0:0]    b2N2_1_1;

  Shared_GF_SQ_2 ab_sq (
    .port_i_0_0 (abx_0_0         ), //i
    .port_i_0_1 (abx_0_1         ), //i
    .port_i_1_0 (abx_1_0         ), //i
    .port_i_1_1 (abx_1_1         ), //i
    .port_o_0_0 (ab_sq_port_o_0_0), //o
    .port_o_0_1 (ab_sq_port_o_0_1), //o
    .port_o_1_0 (ab_sq_port_o_1_0), //o
    .port_o_1_1 (ab_sq_port_o_1_1)  //o
  );
  Shared_GF_SQ_2 b_sq (
    .port_i_0_0 (bx_0_0         ), //i
    .port_i_0_1 (bx_0_1         ), //i
    .port_i_1_0 (bx_1_0         ), //i
    .port_i_1_1 (bx_1_1         ), //i
    .port_o_0_0 (b_sq_port_o_0_0), //o
    .port_o_0_1 (b_sq_port_o_0_1), //o
    .port_o_1_0 (b_sq_port_o_1_0), //o
    .port_o_1_1 (b_sq_port_o_1_1)  //o
  );
  Shared_GF_SCLW_2 b_mulN2 (
    .port_i_0_0 (b2x_0_0           ), //i
    .port_i_0_1 (b2x_0_1           ), //i
    .port_i_1_0 (b2x_1_0           ), //i
    .port_i_1_1 (b2x_1_1           ), //i
    .port_o_0_0 (b_mulN2_port_o_0_0), //o
    .port_o_0_1 (b_mulN2_port_o_0_1), //o
    .port_o_1_0 (b_mulN2_port_o_1_0), //o
    .port_o_1_1 (b_mulN2_port_o_1_1)  //o
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
  assign ab2x_0_0 = ab_sq_port_o_0_0;
  assign ab2x_0_1 = ab_sq_port_o_0_1;
  assign ab2x_1_0 = ab_sq_port_o_1_0;
  assign ab2x_1_1 = ab_sq_port_o_1_1;
  assign b2x_0_0 = b_sq_port_o_0_0;
  assign b2x_0_1 = b_sq_port_o_0_1;
  assign b2x_1_0 = b_sq_port_o_1_0;
  assign b2x_1_1 = b_sq_port_o_1_1;
  assign b2N2_0_0 = b_mulN2_port_o_0_0;
  assign b2N2_0_1 = b_mulN2_port_o_0_1;
  assign b2N2_1_0 = b_mulN2_port_o_1_0;
  assign b2N2_1_1 = b_mulN2_port_o_1_1;
  assign port_o_0_0 = b2N2_0_0;
  assign port_o_0_1 = b2N2_0_1;
  assign port_o_0_2 = ab2x_0_0;
  assign port_o_0_3 = ab2x_0_1;
  assign port_o_1_0 = b2N2_1_0;
  assign port_o_1_1 = b2N2_1_1;
  assign port_o_1_2 = ab2x_1_0;
  assign port_o_1_3 = ab2x_1_1;

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
  input      [0:0]    port_i_0_0,
  input      [0:0]    port_i_0_1,
  input      [0:0]    port_i_1_0,
  input      [0:0]    port_i_1_1,
  output     [0:0]    port_o_0_0,
  output     [0:0]    port_o_0_1,
  output     [0:0]    port_o_1_0,
  output     [0:0]    port_o_1_1
);


  assign port_o_0_0 = (port_i_0_1 ^ port_i_0_0);
  assign port_o_0_1 = port_i_0_0;
  assign port_o_1_0 = (port_i_1_1 ^ port_i_1_0);
  assign port_o_1_1 = port_i_1_0;

endmodule

//Shared_GF_SQ_2 replaced by Shared_GF_SQ_2

//Shared_GF_MULS_2 replaced by Shared_GF_MULS_2

module Shared_GF_MULS_SCL_2 (
  input      [0:0]    port_a_0_0,
  input      [0:0]    port_a_0_1,
  input      [0:0]    port_a_1_0,
  input      [0:0]    port_a_1_1,
  input      [0:0]    port_ab_0,
  input      [0:0]    port_ab_1,
  input      [0:0]    port_b_0_0,
  input      [0:0]    port_b_0_1,
  input      [0:0]    port_b_1_0,
  input      [0:0]    port_b_1_1,
  input      [0:0]    port_cd_0,
  input      [0:0]    port_cd_1,
  input               port_rand_0,
  input               port_rand_1,
  input               port_rand_2,
  input               port_rand_3,
  input               port_rand_4,
  input               port_rand_5,
  output     [0:0]    port_o_0_0,
  output     [0:0]    port_o_0_1,
  output     [0:0]    port_o_1_0,
  output     [0:0]    port_o_1_1,
  input               clk,
  input               reset
);

  wire       [0:0]    and_1_1_port_z_0;
  wire       [0:0]    and_1_1_port_z_1;
  wire       [0:0]    not_1_port_z_0;
  wire       [0:0]    not_1_port_z_1;
  wire       [0:0]    and_2_1_port_z_0;
  wire       [0:0]    and_2_1_port_z_1;
  wire       [0:0]    not_2_port_z_0;
  wire       [0:0]    not_2_port_z_1;
  wire       [0:0]    xor_2_1_port_z_0;
  wire       [0:0]    xor_2_1_port_z_1;
  wire       [0:0]    and_3_1_port_z_0;
  wire       [0:0]    and_3_1_port_z_1;
  wire       [0:0]    not_3_port_z_0;
  wire       [0:0]    not_3_port_z_1;
  wire       [0:0]    xor_3_1_port_z_0;
  wire       [0:0]    xor_3_1_port_z_1;
  wire                r0_0;
  wire                r0_1;
  wire                r1_0;
  wire                r1_1;
  wire                r2_0;
  wire                r2_1;
  wire       [0:0]    ax_0_0;
  wire       [0:0]    ax_0_1;
  wire       [0:0]    ax_1_0;
  wire       [0:0]    ax_1_1;
  wire       [0:0]    bx_0_0;
  wire       [0:0]    bx_0_1;
  wire       [0:0]    bx_1_0;
  wire       [0:0]    bx_1_1;
  wire       [0:0]    outVal_0_0;
  wire       [0:0]    outVal_0_1;
  wire       [0:0]    outVal_1_0;
  wire       [0:0]    outVal_1_1;

  Shared_And and_1_1 (
    .port_a_0    (ax_0_0          ), //i
    .port_a_1    (ax_0_1          ), //i
    .port_b_0    (bx_0_0          ), //i
    .port_b_1    (bx_0_1          ), //i
    .port_rand_0 (r0_0            ), //i
    .port_rand_1 (r0_1            ), //i
    .port_z_0    (and_1_1_port_z_0), //o
    .port_z_1    (and_1_1_port_z_1), //o
    .clk         (clk             ), //i
    .reset       (reset           )  //i
  );
  Shared_Not not_1 (
    .port_a_0 (and_1_1_port_z_0), //i
    .port_a_1 (and_1_1_port_z_1), //i
    .port_z_0 (not_1_port_z_0  ), //o
    .port_z_1 (not_1_port_z_1  )  //o
  );
  Shared_And and_2_1 (
    .port_a_0    (ax_1_0          ), //i
    .port_a_1    (ax_1_1          ), //i
    .port_b_0    (bx_1_0          ), //i
    .port_b_1    (bx_1_1          ), //i
    .port_rand_0 (r1_0            ), //i
    .port_rand_1 (r1_1            ), //i
    .port_z_0    (and_2_1_port_z_0), //o
    .port_z_1    (and_2_1_port_z_1), //o
    .clk         (clk             ), //i
    .reset       (reset           )  //i
  );
  Shared_Not not_2 (
    .port_a_0 (and_2_1_port_z_0), //i
    .port_a_1 (and_2_1_port_z_1), //i
    .port_z_0 (not_2_port_z_0  ), //o
    .port_z_1 (not_2_port_z_1  )  //o
  );
  Shared_Xor xor_2_1 (
    .port_a_0 (not_1_port_z_0  ), //i
    .port_a_1 (not_1_port_z_1  ), //i
    .port_b_0 (not_2_port_z_0  ), //i
    .port_b_1 (not_2_port_z_1  ), //i
    .port_z_0 (xor_2_1_port_z_0), //o
    .port_z_1 (xor_2_1_port_z_1)  //o
  );
  Shared_And and_3_1 (
    .port_a_0    (port_ab_0       ), //i
    .port_a_1    (port_ab_1       ), //i
    .port_b_0    (port_cd_0       ), //i
    .port_b_1    (port_cd_1       ), //i
    .port_rand_0 (r2_0            ), //i
    .port_rand_1 (r2_1            ), //i
    .port_z_0    (and_3_1_port_z_0), //o
    .port_z_1    (and_3_1_port_z_1), //o
    .clk         (clk             ), //i
    .reset       (reset           )  //i
  );
  Shared_Not not_3 (
    .port_a_0 (and_3_1_port_z_0), //i
    .port_a_1 (and_3_1_port_z_1), //i
    .port_z_0 (not_3_port_z_0  ), //o
    .port_z_1 (not_3_port_z_1  )  //o
  );
  Shared_Xor xor_3_1 (
    .port_a_0 (not_1_port_z_0  ), //i
    .port_a_1 (not_1_port_z_1  ), //i
    .port_b_0 (not_3_port_z_0  ), //i
    .port_b_1 (not_3_port_z_1  ), //i
    .port_z_0 (xor_3_1_port_z_0), //o
    .port_z_1 (xor_3_1_port_z_1)  //o
  );
  assign r0_0 = port_rand_0;
  assign r1_0 = port_rand_2;
  assign r2_0 = port_rand_4;
  assign r0_1 = port_rand_1;
  assign r1_1 = port_rand_3;
  assign r2_1 = port_rand_5;
  assign ax_0_0 = port_a_0_0;
  assign ax_1_0 = port_a_0_1;
  assign bx_0_0 = port_b_0_0;
  assign bx_1_0 = port_b_0_1;
  assign ax_0_1 = port_a_1_0;
  assign ax_1_1 = port_a_1_1;
  assign bx_0_1 = port_b_1_0;
  assign bx_1_1 = port_b_1_1;
  assign outVal_0_0 = xor_2_1_port_z_0;
  assign outVal_0_1 = xor_3_1_port_z_0;
  assign outVal_1_0 = xor_2_1_port_z_1;
  assign outVal_1_1 = xor_3_1_port_z_1;
  assign port_o_0_0 = outVal_0_0;
  assign port_o_0_1 = outVal_0_1;
  assign port_o_1_0 = outVal_1_0;
  assign port_o_1_1 = outVal_1_1;

endmodule

//Shared_GF_MULS_2 replaced by Shared_GF_MULS_2

module Shared_GF_MULS_2 (
  input      [0:0]    port_a_0_0,
  input      [0:0]    port_a_0_1,
  input      [0:0]    port_a_1_0,
  input      [0:0]    port_a_1_1,
  input      [0:0]    port_ab_0,
  input      [0:0]    port_ab_1,
  input      [0:0]    port_b_0_0,
  input      [0:0]    port_b_0_1,
  input      [0:0]    port_b_1_0,
  input      [0:0]    port_b_1_1,
  input      [0:0]    port_cd_0,
  input      [0:0]    port_cd_1,
  input               port_rand_0,
  input               port_rand_1,
  input               port_rand_2,
  input               port_rand_3,
  input               port_rand_4,
  input               port_rand_5,
  output     [0:0]    port_o_0_0,
  output     [0:0]    port_o_0_1,
  output     [0:0]    port_o_1_0,
  output     [0:0]    port_o_1_1,
  input               clk,
  input               reset
);

  wire       [0:0]    and_1_1_port_z_0;
  wire       [0:0]    and_1_1_port_z_1;
  wire       [0:0]    not_1_port_z_0;
  wire       [0:0]    not_1_port_z_1;
  wire       [0:0]    and_2_1_port_z_0;
  wire       [0:0]    and_2_1_port_z_1;
  wire       [0:0]    not_2_port_z_0;
  wire       [0:0]    not_2_port_z_1;
  wire       [0:0]    xor_2_1_port_z_0;
  wire       [0:0]    xor_2_1_port_z_1;
  wire       [0:0]    and_3_1_port_z_0;
  wire       [0:0]    and_3_1_port_z_1;
  wire       [0:0]    not_3_port_z_0;
  wire       [0:0]    not_3_port_z_1;
  wire       [0:0]    xor_3_1_port_z_0;
  wire       [0:0]    xor_3_1_port_z_1;
  wire                r0_0;
  wire                r0_1;
  wire                r1_0;
  wire                r1_1;
  wire                r2_0;
  wire                r2_1;
  wire       [0:0]    ax_0_0;
  wire       [0:0]    ax_0_1;
  wire       [0:0]    ax_1_0;
  wire       [0:0]    ax_1_1;
  wire       [0:0]    bx_0_0;
  wire       [0:0]    bx_0_1;
  wire       [0:0]    bx_1_0;
  wire       [0:0]    bx_1_1;
  wire       [0:0]    outVal_0_0;
  wire       [0:0]    outVal_0_1;
  wire       [0:0]    outVal_1_0;
  wire       [0:0]    outVal_1_1;

  Shared_And and_1_1 (
    .port_a_0    (port_ab_0       ), //i
    .port_a_1    (port_ab_1       ), //i
    .port_b_0    (port_cd_0       ), //i
    .port_b_1    (port_cd_1       ), //i
    .port_rand_0 (r0_0            ), //i
    .port_rand_1 (r0_1            ), //i
    .port_z_0    (and_1_1_port_z_0), //o
    .port_z_1    (and_1_1_port_z_1), //o
    .clk         (clk             ), //i
    .reset       (reset           )  //i
  );
  Shared_Not not_1 (
    .port_a_0 (and_1_1_port_z_0), //i
    .port_a_1 (and_1_1_port_z_1), //i
    .port_z_0 (not_1_port_z_0  ), //o
    .port_z_1 (not_1_port_z_1  )  //o
  );
  Shared_And and_2_1 (
    .port_a_0    (ax_0_0          ), //i
    .port_a_1    (ax_0_1          ), //i
    .port_b_0    (bx_0_0          ), //i
    .port_b_1    (bx_0_1          ), //i
    .port_rand_0 (r1_0            ), //i
    .port_rand_1 (r1_1            ), //i
    .port_z_0    (and_2_1_port_z_0), //o
    .port_z_1    (and_2_1_port_z_1), //o
    .clk         (clk             ), //i
    .reset       (reset           )  //i
  );
  Shared_Not not_2 (
    .port_a_0 (and_2_1_port_z_0), //i
    .port_a_1 (and_2_1_port_z_1), //i
    .port_z_0 (not_2_port_z_0  ), //o
    .port_z_1 (not_2_port_z_1  )  //o
  );
  Shared_Xor xor_2_1 (
    .port_a_0 (not_1_port_z_0  ), //i
    .port_a_1 (not_1_port_z_1  ), //i
    .port_b_0 (not_2_port_z_0  ), //i
    .port_b_1 (not_2_port_z_1  ), //i
    .port_z_0 (xor_2_1_port_z_0), //o
    .port_z_1 (xor_2_1_port_z_1)  //o
  );
  Shared_And and_3_1 (
    .port_a_0    (ax_1_0          ), //i
    .port_a_1    (ax_1_1          ), //i
    .port_b_0    (bx_1_0          ), //i
    .port_b_1    (bx_1_1          ), //i
    .port_rand_0 (r2_0            ), //i
    .port_rand_1 (r2_1            ), //i
    .port_z_0    (and_3_1_port_z_0), //o
    .port_z_1    (and_3_1_port_z_1), //o
    .clk         (clk             ), //i
    .reset       (reset           )  //i
  );
  Shared_Not not_3 (
    .port_a_0 (and_3_1_port_z_0), //i
    .port_a_1 (and_3_1_port_z_1), //i
    .port_z_0 (not_3_port_z_0  ), //o
    .port_z_1 (not_3_port_z_1  )  //o
  );
  Shared_Xor xor_3_1 (
    .port_a_0 (not_1_port_z_0  ), //i
    .port_a_1 (not_1_port_z_1  ), //i
    .port_b_0 (not_3_port_z_0  ), //i
    .port_b_1 (not_3_port_z_1  ), //i
    .port_z_0 (xor_3_1_port_z_0), //o
    .port_z_1 (xor_3_1_port_z_1)  //o
  );
  assign r0_0 = port_rand_0;
  assign r1_0 = port_rand_2;
  assign r2_0 = port_rand_4;
  assign r0_1 = port_rand_1;
  assign r1_1 = port_rand_3;
  assign r2_1 = port_rand_5;
  assign ax_0_0 = port_a_0_0;
  assign ax_1_0 = port_a_0_1;
  assign bx_0_0 = port_b_0_0;
  assign bx_1_0 = port_b_0_1;
  assign ax_0_1 = port_a_1_0;
  assign ax_1_1 = port_a_1_1;
  assign bx_0_1 = port_b_1_0;
  assign bx_1_1 = port_b_1_1;
  assign outVal_0_0 = xor_2_1_port_z_0;
  assign outVal_0_1 = xor_3_1_port_z_0;
  assign outVal_1_0 = xor_2_1_port_z_1;
  assign outVal_1_1 = xor_3_1_port_z_1;
  assign port_o_0_0 = outVal_0_0;
  assign port_o_0_1 = outVal_0_1;
  assign port_o_1_0 = outVal_1_0;
  assign port_o_1_1 = outVal_1_1;

endmodule

module Shared_GF_SCLW_2 (
  input      [0:0]    port_i_0_0,
  input      [0:0]    port_i_0_1,
  input      [0:0]    port_i_1_0,
  input      [0:0]    port_i_1_1,
  output     [0:0]    port_o_0_0,
  output     [0:0]    port_o_0_1,
  output     [0:0]    port_o_1_0,
  output     [0:0]    port_o_1_1
);


  assign port_o_0_0 = port_i_0_1;
  assign port_o_0_1 = (port_i_0_0 ^ port_i_0_1);
  assign port_o_1_0 = port_i_1_1;
  assign port_o_1_1 = (port_i_1_0 ^ port_i_1_1);

endmodule

//Shared_GF_SQ_2 replaced by Shared_GF_SQ_2

module Shared_GF_SQ_2 (
  input      [0:0]    port_i_0_0,
  input      [0:0]    port_i_0_1,
  input      [0:0]    port_i_1_0,
  input      [0:0]    port_i_1_1,
  output     [0:0]    port_o_0_0,
  output     [0:0]    port_o_0_1,
  output     [0:0]    port_o_1_0,
  output     [0:0]    port_o_1_1
);


  assign port_o_0_0 = port_i_0_1;
  assign port_o_0_1 = port_i_0_0;
  assign port_o_1_0 = port_i_1_1;
  assign port_o_1_1 = port_i_1_0;

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
  input      [0:0]    port_a_0,
  input      [0:0]    port_a_1,
  input      [0:0]    port_b_0,
  input      [0:0]    port_b_1,
  output     [0:0]    port_z_0,
  output     [0:0]    port_z_1
);


  assign port_z_0 = (port_a_0 ^ port_b_0);
  assign port_z_1 = (port_a_1 ^ port_b_1);

endmodule

//Shared_Not replaced by Shared_Not

//Shared_And replaced by Shared_And

module Shared_Not (
  input      [0:0]    port_a_0,
  input      [0:0]    port_a_1,
  output     [0:0]    port_z_0,
  output     [0:0]    port_z_1
);


  assign port_z_0 = (~ port_a_0);
  assign port_z_1 = port_a_1;

endmodule

module Shared_And (
  input      [0:0]    port_a_0,
  input      [0:0]    port_a_1,
  input      [0:0]    port_b_0,
  input      [0:0]    port_b_1,
  input               port_rand_0,
  input               port_rand_1,
  output     [0:0]    port_z_0,
  output     [0:0]    port_z_1,
  input               clk,
  input               reset
);

  wire       [0:0]    cPC1_36_port_z_0;
  wire       [0:0]    cPC1_36_port_z_1;

  CPC1 cPC1_36 (
    .port_a_0    (port_a_0        ), //i
    .port_a_1    (port_a_1        ), //i
    .port_b_0    (port_b_0        ), //i
    .port_b_1    (port_b_1        ), //i
    .port_rand_0 (port_rand_0     ), //i
    .port_rand_1 (port_rand_1     ), //i
    .port_z_0    (cPC1_36_port_z_0), //o
    .port_z_1    (cPC1_36_port_z_1), //o
    .clk         (clk             ), //i
    .reset       (reset           )  //i
  );
  assign port_z_0 = cPC1_36_port_z_0;
  assign port_z_1 = cPC1_36_port_z_1;

endmodule

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

//CPC1 replaced by CPC1

module CPC1 (
  input      [0:0]    port_a_0,
  input      [0:0]    port_a_1,
  input      [0:0]    port_b_0,
  input      [0:0]    port_b_1,
  input               port_rand_0,
  input               port_rand_1,
  output     [0:0]    port_z_0,
  output     [0:0]    port_z_1,
  input               clk,
  input               reset
);

  wire       [0:0]    xor_217_port_z;
  wire       [0:0]    xor_218_port_z;
  wire       [0:0]    and_145_port_z;
  wire       [0:0]    and_146_port_z;
  wire       [0:0]    xor_219_port_z;
  wire       [0:0]    and_147_port_z;
  wire       [0:0]    xor_220_port_z;
  wire       [0:0]    and_148_port_z;
  wire       [0:0]    xor_221_port_z;
  wire       [0:0]    xor_222_port_z;
  wire       [0:0]    r0_0;
  wire       [0:0]    v_tilde_0;
  wire       [0:0]    v_tilde_1;
  reg        [0:0]    v_0;
  reg        [0:0]    v_1;
  wire       [0:0]    r1_0;
  reg        [0:0]    z_0_0;
  reg        [0:0]    z_0_1;
  reg        [0:0]    z_1_0;
  reg        [0:0]    z_1_1;

  xor_1 xor_217 (
    .port_a (port_b_0      ), //i
    .port_b (r0_0          ), //i
    .port_z (xor_217_port_z)  //o
  );
  xor_1 xor_218 (
    .port_a (port_b_1      ), //i
    .port_b (r0_0          ), //i
    .port_z (xor_218_port_z)  //o
  );
  and_1 and_145 (
    .port_a (port_a_0      ), //i
    .port_b (v_0           ), //i
    .port_z (and_145_port_z)  //o
  );
  and_1 and_146 (
    .port_a (port_a_0      ), //i
    .port_b (v_1           ), //i
    .port_z (and_146_port_z)  //o
  );
  xor_1 xor_219 (
    .port_a (and_146_port_z), //i
    .port_b (r1_0          ), //i
    .port_z (xor_219_port_z)  //o
  );
  and_1 and_147 (
    .port_a (port_a_1      ), //i
    .port_b (v_0           ), //i
    .port_z (and_147_port_z)  //o
  );
  xor_1 xor_220 (
    .port_a (and_147_port_z), //i
    .port_b (r1_0          ), //i
    .port_z (xor_220_port_z)  //o
  );
  and_1 and_148 (
    .port_a (port_a_1      ), //i
    .port_b (v_1           ), //i
    .port_z (and_148_port_z)  //o
  );
  xor_1 xor_221 (
    .port_a (z_0_0         ), //i
    .port_b (z_0_1         ), //i
    .port_z (xor_221_port_z)  //o
  );
  xor_1 xor_222 (
    .port_a (z_1_1         ), //i
    .port_b (z_1_0         ), //i
    .port_z (xor_222_port_z)  //o
  );
  assign r0_0[0] = port_rand_0;
  assign v_tilde_0 = xor_217_port_z;
  assign v_tilde_1 = xor_218_port_z;
  assign r1_0[0] = port_rand_1;
  assign port_z_0 = xor_221_port_z;
  assign port_z_1 = xor_222_port_z;
  always @(posedge clk) begin
    v_0 <= v_tilde_0;
    v_1 <= v_tilde_1;
    z_0_0 <= and_145_port_z;
    z_0_1 <= xor_219_port_z;
    z_1_0 <= xor_220_port_z;
    z_1_1 <= and_148_port_z;
  end


endmodule

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

//xor_1 replaced by xor_1

//and_1 replaced by and_1

module and_1 (
  input      [0:0]    port_a,
  input      [0:0]    port_b,
  output     [0:0]    port_z
);


  assign port_z = (port_a & port_b);

endmodule

//xor_1 replaced by xor_1

module xor_1 (
  input      [0:0]    port_a,
  input      [0:0]    port_b,
  output     [0:0]    port_z
);


  assign port_z = (port_a ^ port_b);

endmodule
