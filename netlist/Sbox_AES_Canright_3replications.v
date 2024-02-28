/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Wed Sep 27 08:42:01 2023
/////////////////////////////////////////////////////////////


module Sbox_AES_Canright_3replications ( port_i_0, port_i_1, port_i_2, 
        port_i_3, port_i_4, port_i_5, port_i_6, port_i_7, port_o_0, port_o_1, 
        port_o_2, port_o_3, port_o_4, port_o_5, port_o_6, port_o_7 );
  input [2:0] port_i_0;
  input [2:0] port_i_1;
  input [2:0] port_i_2;
  input [2:0] port_i_3;
  input [2:0] port_i_4;
  input [2:0] port_i_5;
  input [2:0] port_i_6;
  input [2:0] port_i_7;
  output [2:0] port_o_0;
  output [2:0] port_o_1;
  output [2:0] port_o_2;
  output [2:0] port_o_3;
  output [2:0] port_o_4;
  output [2:0] port_o_5;
  output [2:0] port_o_6;
  output [2:0] port_o_7;
  wire   linMap_n21, linMap_n20, linMap_n19, linMap_n18, linMap_n17,
         linMap_n16, linMap_n15, linMap_n14, linMap_n13, linMap_n12,
         linMap_n11, linMap_n10, linMap_n9, linMap_n8, linMap_n7, linMap_n6,
         linMap_n5, linMap_n4, linMap_n3, linMap_n2, linMap_n1,
         inv_mul4_hi_mul_n9, inv_mul4_hi_mul_n8, inv_mul4_hi_mul_n7,
         inv_mul4_hi_mul_n6, inv_mul4_hi_mul_n5, inv_mul4_hi_mul_n4,
         inv_mul4_hi_mul_n3, inv_mul4_hi_mul_n2, inv_mul4_hi_mul_n1,
         inv_mul4_lo_mul_n9, inv_mul4_lo_mul_n8, inv_mul4_lo_mul_n7,
         inv_mul4_lo_mul_n6, inv_mul4_lo_mul_n5, inv_mul4_lo_mul_n4,
         inv_mul4_lo_mul_n3, inv_mul4_lo_mul_n2, inv_mul4_lo_mul_n1,
         inv_mul4_sum_mul_n9, inv_mul4_sum_mul_n8, inv_mul4_sum_mul_n7,
         inv_mul4_sum_mul_n6, inv_mul4_sum_mul_n5, inv_mul4_sum_mul_n4,
         inv_mul4_sum_mul_n3, inv_mul4_sum_mul_n2, inv_mul4_sum_mul_n1,
         inv_dx_inv_mul2_n9, inv_dx_inv_mul2_n8, inv_dx_inv_mul2_n7,
         inv_dx_inv_mul2_n6, inv_dx_inv_mul2_n5, inv_dx_inv_mul2_n4,
         inv_dx_inv_mul2_n3, inv_dx_inv_mul2_n2, inv_dx_inv_mul2_n1,
         inv_dx_inv_px_mul_n9, inv_dx_inv_px_mul_n8, inv_dx_inv_px_mul_n7,
         inv_dx_inv_px_mul_n6, inv_dx_inv_px_mul_n5, inv_dx_inv_px_mul_n4,
         inv_dx_inv_px_mul_n3, inv_dx_inv_px_mul_n2, inv_dx_inv_px_mul_n1,
         inv_dx_inv_qx_mul_n9, inv_dx_inv_qx_mul_n8, inv_dx_inv_qx_mul_n7,
         inv_dx_inv_qx_mul_n6, inv_dx_inv_qx_mul_n5, inv_dx_inv_qx_mul_n4,
         inv_dx_inv_qx_mul_n3, inv_dx_inv_qx_mul_n2, inv_dx_inv_qx_mul_n1,
         inv_px_mul_hi_mul_n9, inv_px_mul_hi_mul_n8, inv_px_mul_hi_mul_n7,
         inv_px_mul_hi_mul_n6, inv_px_mul_hi_mul_n5, inv_px_mul_hi_mul_n4,
         inv_px_mul_hi_mul_n3, inv_px_mul_hi_mul_n2, inv_px_mul_hi_mul_n1,
         inv_px_mul_lo_mul_n9, inv_px_mul_lo_mul_n8, inv_px_mul_lo_mul_n7,
         inv_px_mul_lo_mul_n6, inv_px_mul_lo_mul_n5, inv_px_mul_lo_mul_n4,
         inv_px_mul_lo_mul_n3, inv_px_mul_lo_mul_n2, inv_px_mul_lo_mul_n1,
         inv_px_mul_sum_mul_n9, inv_px_mul_sum_mul_n8, inv_px_mul_sum_mul_n7,
         inv_px_mul_sum_mul_n6, inv_px_mul_sum_mul_n5, inv_px_mul_sum_mul_n4,
         inv_px_mul_sum_mul_n3, inv_px_mul_sum_mul_n2, inv_px_mul_sum_mul_n1,
         inv_qx_mul_hi_mul_n9, inv_qx_mul_hi_mul_n8, inv_qx_mul_hi_mul_n7,
         inv_qx_mul_hi_mul_n6, inv_qx_mul_hi_mul_n5, inv_qx_mul_hi_mul_n4,
         inv_qx_mul_hi_mul_n3, inv_qx_mul_hi_mul_n2, inv_qx_mul_hi_mul_n1,
         inv_qx_mul_lo_mul_n9, inv_qx_mul_lo_mul_n8, inv_qx_mul_lo_mul_n7,
         inv_qx_mul_lo_mul_n6, inv_qx_mul_lo_mul_n5, inv_qx_mul_lo_mul_n4,
         inv_qx_mul_lo_mul_n3, inv_qx_mul_lo_mul_n2, inv_qx_mul_lo_mul_n1,
         inv_qx_mul_sum_mul_n9, inv_qx_mul_sum_mul_n8, inv_qx_mul_sum_mul_n7,
         inv_qx_mul_sum_mul_n6, inv_qx_mul_sum_mul_n5, inv_qx_mul_sum_mul_n4,
         inv_qx_mul_sum_mul_n3, inv_qx_mul_sum_mul_n2, inv_qx_mul_sum_mul_n1,
         invLinMap_n9, invLinMap_n8, invLinMap_n7, invLinMap_n6, invLinMap_n5,
         invLinMap_n4, invLinMap_n3, invLinMap_n2, invLinMap_n1;
  wire   [2:0] linMap_port_o_0;
  wire   [2:0] linMap_port_o_1;
  wire   [2:0] linMap_port_o_3;
  wire   [2:0] linMap_port_o_4;
  wire   [2:0] linMap_port_o_5;
  wire   [2:0] linMap_port_o_6;
  wire   [2:0] linMap_port_o_7;
  wire   [2:0] inv_port_o_0;
  wire   [2:0] inv_port_o_1;
  wire   [2:0] inv_port_o_2;
  wire   [2:0] inv_port_o_3;
  wire   [2:0] inv_port_o_4;
  wire   [2:0] inv_port_o_5;
  wire   [2:0] inv_port_o_6;
  wire   [2:0] inv_port_o_7;
  wire   [2:0] inv_dd;
  wire   [2:0] inv_dh;
  wire   [2:0] inv_dl;
  wire   [2:0] inv_sdx_1;
  wire   [2:0] inv_sdx_0;
  wire   [2:0] inv_dx_inv_port_o_3;
  wire   [2:0] inv_dx_inv_port_o_2;
  wire   [2:0] inv_dx_inv_port_o_1;
  wire   [2:0] inv_dx_inv_port_o_0;
  wire   [2:0] inv_cx_3;
  wire   [2:0] inv_cx_2;
  wire   [2:0] inv_cx_1;
  wire   [2:0] inv_cx_0;
  wire   [2:0] inv_mul4_port_o_3;
  wire   [2:0] inv_mul4_port_o_2;
  wire   [2:0] inv_mul4_port_o_1;
  wire   [2:0] inv_mul4_port_o_0;
  wire   [2:0] inv_bb;
  wire   [2:0] inv_bh;
  wire   [2:0] inv_bl;
  wire   [2:0] inv_sbx_1;
  wire   [2:0] inv_sbx_0;
  wire   [2:0] inv_aa;
  wire   [2:0] inv_ah;
  wire   [2:0] inv_al;
  wire   [2:0] inv_sax_1;
  wire   [2:0] inv_sax_0;
  wire   [2:0] inv_sq_port_o_3;
  wire   [2:0] inv_sq_port_o_2;
  wire   [2:0] inv_sq_port_o_1;
  wire   [2:0] inv_sq_port_o_0;
  wire   [2:0] inv_sq_port_i_3;
  wire   [2:0] inv_sq_port_i_2;
  wire   [2:0] inv_sq_b_sq_port_o_0;
  wire   [2:0] inv_mul4_sum_mul_port_o_1;
  wire   [2:0] inv_mul4_sum_mul_port_o_0;
  wire   [2:0] inv_mul4_lo_mul_port_o_1;
  wire   [2:0] inv_mul4_lo_mul_port_o_0;
  wire   [2:0] inv_mul4_hi_mul_port_o_1;
  wire   [2:0] inv_mul4_hi_mul_port_o_0;
  wire   [2:0] inv_dx_inv_sdx;
  wire   [2:0] inv_dx_inv_dx_inv_port_o_1;
  wire   [2:0] inv_dx_inv_dx_inv_port_o_0;
  wire   [2:0] inv_dx_inv_sc_port_o_1;
  wire   [2:0] inv_dx_inv_sc_port_o_0;
  wire   [2:0] inv_dx_inv_sq_port_o_1;
  wire   [2:0] inv_dx_inv_mul2_port_o_1;
  wire   [2:0] inv_dx_inv_mul2_port_o_0;
  wire   [2:0] inv_dx_inv_sbx;
  wire   [2:0] inv_dx_inv_sax;
  wire   [2:0] inv_px_mul_sum_mul_port_o_1;
  wire   [2:0] inv_px_mul_sum_mul_port_o_0;
  wire   [2:0] inv_px_mul_lo_mul_port_o_1;
  wire   [2:0] inv_px_mul_lo_mul_port_o_0;
  wire   [2:0] inv_px_mul_hi_mul_port_o_1;
  wire   [2:0] inv_px_mul_hi_mul_port_o_0;
  wire   [2:0] inv_qx_mul_sum_mul_port_o_1;
  wire   [2:0] inv_qx_mul_sum_mul_port_o_0;
  wire   [2:0] inv_qx_mul_lo_mul_port_o_1;
  wire   [2:0] inv_qx_mul_lo_mul_port_o_0;
  wire   [2:0] inv_qx_mul_hi_mul_port_o_1;
  wire   [2:0] inv_qx_mul_hi_mul_port_o_0;

  XOR2_X1 linMap_U42 ( .A(port_i_0[2]), .B(port_i_6[2]), .Z(linMap_n7) );
  XOR2_X1 linMap_U41 ( .A(port_i_5[2]), .B(linMap_n7), .Z(linMap_port_o_1[2])
         );
  XOR2_X1 linMap_U40 ( .A(port_i_0[1]), .B(port_i_6[1]), .Z(linMap_n8) );
  XOR2_X1 linMap_U39 ( .A(port_i_5[1]), .B(linMap_n8), .Z(linMap_port_o_1[1])
         );
  XOR2_X1 linMap_U38 ( .A(port_i_0[0]), .B(port_i_6[0]), .Z(linMap_n9) );
  XOR2_X1 linMap_U37 ( .A(port_i_5[0]), .B(linMap_n9), .Z(linMap_port_o_1[0])
         );
  XNOR2_X1 linMap_U36 ( .A(port_i_1[0]), .B(port_i_2[0]), .ZN(linMap_n21) );
  XNOR2_X1 linMap_U35 ( .A(linMap_n21), .B(linMap_n9), .ZN(linMap_n6) );
  XOR2_X1 linMap_U34 ( .A(port_i_3[0]), .B(linMap_n6), .Z(linMap_port_o_0[0])
         );
  XNOR2_X1 linMap_U33 ( .A(port_i_1[1]), .B(port_i_2[1]), .ZN(linMap_n20) );
  XNOR2_X1 linMap_U32 ( .A(linMap_n20), .B(linMap_n8), .ZN(linMap_n4) );
  XOR2_X1 linMap_U31 ( .A(port_i_3[1]), .B(linMap_n4), .Z(linMap_port_o_0[1])
         );
  XNOR2_X1 linMap_U30 ( .A(port_i_1[2]), .B(port_i_2[2]), .ZN(linMap_n19) );
  XNOR2_X1 linMap_U29 ( .A(linMap_n19), .B(linMap_n7), .ZN(linMap_n2) );
  XOR2_X1 linMap_U28 ( .A(port_i_3[2]), .B(linMap_n2), .Z(linMap_port_o_0[2])
         );
  XOR2_X1 linMap_U27 ( .A(port_i_0[0]), .B(port_i_7[0]), .Z(linMap_n18) );
  XOR2_X1 linMap_U26 ( .A(port_i_4[0]), .B(linMap_n18), .Z(linMap_n16) );
  XOR2_X1 linMap_U25 ( .A(port_i_3[0]), .B(port_i_1[0]), .Z(linMap_n17) );
  XOR2_X1 linMap_U24 ( .A(linMap_n16), .B(linMap_n17), .Z(linMap_port_o_3[0])
         );
  XOR2_X1 linMap_U23 ( .A(port_i_0[1]), .B(port_i_7[1]), .Z(linMap_n15) );
  XOR2_X1 linMap_U22 ( .A(port_i_4[1]), .B(linMap_n15), .Z(linMap_n13) );
  XOR2_X1 linMap_U21 ( .A(port_i_3[1]), .B(port_i_1[1]), .Z(linMap_n14) );
  XOR2_X1 linMap_U20 ( .A(linMap_n13), .B(linMap_n14), .Z(linMap_port_o_3[1])
         );
  XOR2_X1 linMap_U19 ( .A(port_i_0[2]), .B(port_i_7[2]), .Z(linMap_n12) );
  XOR2_X1 linMap_U18 ( .A(port_i_4[2]), .B(linMap_n12), .Z(linMap_n10) );
  XOR2_X1 linMap_U17 ( .A(port_i_3[2]), .B(port_i_1[2]), .Z(linMap_n11) );
  XOR2_X1 linMap_U16 ( .A(linMap_n10), .B(linMap_n11), .Z(linMap_port_o_3[2])
         );
  XOR2_X1 linMap_U15 ( .A(port_i_5[0]), .B(port_i_7[0]), .Z(linMap_n5) );
  XOR2_X1 linMap_U14 ( .A(linMap_n5), .B(linMap_n9), .Z(linMap_port_o_4[0]) );
  XOR2_X1 linMap_U13 ( .A(port_i_5[1]), .B(port_i_7[1]), .Z(linMap_n3) );
  XOR2_X1 linMap_U12 ( .A(linMap_n3), .B(linMap_n8), .Z(linMap_port_o_4[1]) );
  XOR2_X1 linMap_U11 ( .A(port_i_5[2]), .B(port_i_7[2]), .Z(linMap_n1) );
  XOR2_X1 linMap_U10 ( .A(linMap_n1), .B(linMap_n7), .Z(linMap_port_o_4[2]) );
  XOR2_X1 linMap_U9 ( .A(port_i_1[0]), .B(linMap_port_o_1[0]), .Z(
        linMap_port_o_5[0]) );
  XOR2_X1 linMap_U8 ( .A(port_i_1[1]), .B(linMap_port_o_1[1]), .Z(
        linMap_port_o_5[1]) );
  XOR2_X1 linMap_U7 ( .A(port_i_1[2]), .B(linMap_port_o_1[2]), .Z(
        linMap_port_o_5[2]) );
  XOR2_X1 linMap_U6 ( .A(port_i_4[0]), .B(linMap_port_o_1[0]), .Z(
        linMap_port_o_6[0]) );
  XOR2_X1 linMap_U5 ( .A(port_i_4[1]), .B(linMap_port_o_1[1]), .Z(
        linMap_port_o_6[1]) );
  XOR2_X1 linMap_U4 ( .A(port_i_4[2]), .B(linMap_port_o_1[2]), .Z(
        linMap_port_o_6[2]) );
  XOR2_X1 linMap_U3 ( .A(linMap_n5), .B(linMap_n6), .Z(linMap_port_o_7[0]) );
  XOR2_X1 linMap_U2 ( .A(linMap_n3), .B(linMap_n4), .Z(linMap_port_o_7[1]) );
  XOR2_X1 linMap_U1 ( .A(linMap_n1), .B(linMap_n2), .Z(linMap_port_o_7[2]) );
  XOR2_X1 inv_U69 ( .A(linMap_port_o_5[0]), .B(linMap_port_o_7[0]), .Z(
        inv_sax_1[0]) );
  XOR2_X1 inv_U68 ( .A(linMap_port_o_4[0]), .B(linMap_port_o_6[0]), .Z(
        inv_sax_0[0]) );
  XOR2_X1 inv_U67 ( .A(inv_sax_1[0]), .B(inv_sax_0[0]), .Z(inv_aa[0]) );
  XOR2_X1 inv_U66 ( .A(linMap_port_o_5[1]), .B(linMap_port_o_7[1]), .Z(
        inv_sax_1[1]) );
  XOR2_X1 inv_U65 ( .A(linMap_port_o_4[1]), .B(linMap_port_o_6[1]), .Z(
        inv_sax_0[1]) );
  XOR2_X1 inv_U64 ( .A(inv_sax_1[1]), .B(inv_sax_0[1]), .Z(inv_aa[1]) );
  XOR2_X1 inv_U63 ( .A(linMap_port_o_5[2]), .B(linMap_port_o_7[2]), .Z(
        inv_sax_1[2]) );
  XOR2_X1 inv_U62 ( .A(linMap_port_o_4[2]), .B(linMap_port_o_6[2]), .Z(
        inv_sax_0[2]) );
  XOR2_X1 inv_U61 ( .A(inv_sax_1[2]), .B(inv_sax_0[2]), .Z(inv_aa[2]) );
  XOR2_X1 inv_U60 ( .A(linMap_port_o_7[0]), .B(linMap_port_o_6[0]), .Z(
        inv_ah[0]) );
  XOR2_X1 inv_U59 ( .A(linMap_port_o_7[1]), .B(linMap_port_o_6[1]), .Z(
        inv_ah[1]) );
  XOR2_X1 inv_U58 ( .A(linMap_port_o_7[2]), .B(linMap_port_o_6[2]), .Z(
        inv_ah[2]) );
  XOR2_X1 inv_U57 ( .A(linMap_port_o_5[0]), .B(linMap_port_o_4[0]), .Z(
        inv_al[0]) );
  XOR2_X1 inv_U56 ( .A(linMap_port_o_5[1]), .B(linMap_port_o_4[1]), .Z(
        inv_al[1]) );
  XOR2_X1 inv_U55 ( .A(linMap_port_o_5[2]), .B(linMap_port_o_4[2]), .Z(
        inv_al[2]) );
  XOR2_X1 inv_U54 ( .A(linMap_port_o_1[0]), .B(linMap_port_o_3[0]), .Z(
        inv_sbx_1[0]) );
  XOR2_X1 inv_U53 ( .A(linMap_port_o_0[0]), .B(port_i_0[0]), .Z(inv_sbx_0[0])
         );
  XOR2_X1 inv_U52 ( .A(inv_sbx_1[0]), .B(inv_sbx_0[0]), .Z(inv_bb[0]) );
  XOR2_X1 inv_U51 ( .A(linMap_port_o_1[1]), .B(linMap_port_o_3[1]), .Z(
        inv_sbx_1[1]) );
  XOR2_X1 inv_U50 ( .A(linMap_port_o_0[1]), .B(port_i_0[1]), .Z(inv_sbx_0[1])
         );
  XOR2_X1 inv_U49 ( .A(inv_sbx_1[1]), .B(inv_sbx_0[1]), .Z(inv_bb[1]) );
  XOR2_X1 inv_U48 ( .A(linMap_port_o_1[2]), .B(linMap_port_o_3[2]), .Z(
        inv_sbx_1[2]) );
  XOR2_X1 inv_U47 ( .A(linMap_port_o_0[2]), .B(port_i_0[2]), .Z(inv_sbx_0[2])
         );
  XOR2_X1 inv_U46 ( .A(inv_sbx_1[2]), .B(inv_sbx_0[2]), .Z(inv_bb[2]) );
  XOR2_X1 inv_U45 ( .A(linMap_port_o_3[0]), .B(port_i_0[0]), .Z(inv_bh[0]) );
  XOR2_X1 inv_U44 ( .A(linMap_port_o_3[1]), .B(port_i_0[1]), .Z(inv_bh[1]) );
  XOR2_X1 inv_U43 ( .A(linMap_port_o_3[2]), .B(port_i_0[2]), .Z(inv_bh[2]) );
  XOR2_X1 inv_U42 ( .A(linMap_port_o_1[0]), .B(linMap_port_o_0[0]), .Z(
        inv_bl[0]) );
  XOR2_X1 inv_U41 ( .A(linMap_port_o_1[1]), .B(linMap_port_o_0[1]), .Z(
        inv_bl[1]) );
  XOR2_X1 inv_U40 ( .A(linMap_port_o_1[2]), .B(linMap_port_o_0[2]), .Z(
        inv_bl[2]) );
  XOR2_X1 inv_U39 ( .A(inv_sq_port_o_0[0]), .B(inv_mul4_port_o_0[0]), .Z(
        inv_cx_0[0]) );
  XOR2_X1 inv_U38 ( .A(inv_sq_port_o_0[1]), .B(inv_mul4_port_o_0[1]), .Z(
        inv_cx_0[1]) );
  XOR2_X1 inv_U37 ( .A(inv_sq_port_o_0[2]), .B(inv_mul4_port_o_0[2]), .Z(
        inv_cx_0[2]) );
  XOR2_X1 inv_U36 ( .A(inv_sq_port_o_1[0]), .B(inv_mul4_port_o_1[0]), .Z(
        inv_cx_1[0]) );
  XOR2_X1 inv_U35 ( .A(inv_sq_port_o_1[1]), .B(inv_mul4_port_o_1[1]), .Z(
        inv_cx_1[1]) );
  XOR2_X1 inv_U34 ( .A(inv_sq_port_o_1[2]), .B(inv_mul4_port_o_1[2]), .Z(
        inv_cx_1[2]) );
  XOR2_X1 inv_U33 ( .A(inv_sq_port_o_2[0]), .B(inv_mul4_port_o_2[0]), .Z(
        inv_cx_2[0]) );
  XOR2_X1 inv_U32 ( .A(inv_sq_port_o_2[1]), .B(inv_mul4_port_o_2[1]), .Z(
        inv_cx_2[1]) );
  XOR2_X1 inv_U31 ( .A(inv_sq_port_o_2[2]), .B(inv_mul4_port_o_2[2]), .Z(
        inv_cx_2[2]) );
  XOR2_X1 inv_U30 ( .A(inv_sq_port_o_3[0]), .B(inv_mul4_port_o_3[0]), .Z(
        inv_cx_3[0]) );
  XOR2_X1 inv_U29 ( .A(inv_sq_port_o_3[1]), .B(inv_mul4_port_o_3[1]), .Z(
        inv_cx_3[1]) );
  XOR2_X1 inv_U28 ( .A(inv_sq_port_o_3[2]), .B(inv_mul4_port_o_3[2]), .Z(
        inv_cx_3[2]) );
  XOR2_X1 inv_U27 ( .A(inv_dx_inv_port_o_1[0]), .B(inv_dx_inv_port_o_3[0]), 
        .Z(inv_sdx_1[0]) );
  XOR2_X1 inv_U26 ( .A(inv_dx_inv_port_o_0[0]), .B(inv_dx_inv_port_o_2[0]), 
        .Z(inv_sdx_0[0]) );
  XOR2_X1 inv_U25 ( .A(inv_sdx_1[0]), .B(inv_sdx_0[0]), .Z(inv_dd[0]) );
  XOR2_X1 inv_U24 ( .A(inv_dx_inv_port_o_1[1]), .B(inv_dx_inv_port_o_3[1]), 
        .Z(inv_sdx_1[1]) );
  XOR2_X1 inv_U23 ( .A(inv_dx_inv_port_o_0[1]), .B(inv_dx_inv_port_o_2[1]), 
        .Z(inv_sdx_0[1]) );
  XOR2_X1 inv_U22 ( .A(inv_sdx_1[1]), .B(inv_sdx_0[1]), .Z(inv_dd[1]) );
  XOR2_X1 inv_U21 ( .A(inv_dx_inv_port_o_1[2]), .B(inv_dx_inv_port_o_3[2]), 
        .Z(inv_sdx_1[2]) );
  XOR2_X1 inv_U20 ( .A(inv_dx_inv_port_o_0[2]), .B(inv_dx_inv_port_o_2[2]), 
        .Z(inv_sdx_0[2]) );
  XOR2_X1 inv_U19 ( .A(inv_sdx_1[2]), .B(inv_sdx_0[2]), .Z(inv_dd[2]) );
  XOR2_X1 inv_U18 ( .A(inv_dx_inv_port_o_3[0]), .B(inv_dx_inv_port_o_2[0]), 
        .Z(inv_dh[0]) );
  XOR2_X1 inv_U17 ( .A(inv_dx_inv_port_o_3[1]), .B(inv_dx_inv_port_o_2[1]), 
        .Z(inv_dh[1]) );
  XOR2_X1 inv_U16 ( .A(inv_dx_inv_port_o_3[2]), .B(inv_dx_inv_port_o_2[2]), 
        .Z(inv_dh[2]) );
  XOR2_X1 inv_U15 ( .A(inv_dx_inv_port_o_1[0]), .B(inv_dx_inv_port_o_0[0]), 
        .Z(inv_dl[0]) );
  XOR2_X1 inv_U14 ( .A(inv_dx_inv_port_o_1[1]), .B(inv_dx_inv_port_o_0[1]), 
        .Z(inv_dl[1]) );
  XOR2_X1 inv_U13 ( .A(inv_dx_inv_port_o_1[2]), .B(inv_dx_inv_port_o_0[2]), 
        .Z(inv_dl[2]) );
  XOR2_X1 inv_U12 ( .A(linMap_port_o_4[0]), .B(linMap_port_o_0[0]), .Z(
        inv_sq_port_o_0[0]) );
  XOR2_X1 inv_U11 ( .A(linMap_port_o_4[1]), .B(linMap_port_o_0[1]), .Z(
        inv_sq_port_o_0[1]) );
  XOR2_X1 inv_U10 ( .A(linMap_port_o_4[2]), .B(linMap_port_o_0[2]), .Z(
        inv_sq_port_o_0[2]) );
  XOR2_X1 inv_U9 ( .A(linMap_port_o_5[0]), .B(linMap_port_o_1[0]), .Z(
        inv_sq_b_sq_port_o_0[0]) );
  XOR2_X1 inv_U8 ( .A(linMap_port_o_5[1]), .B(linMap_port_o_1[1]), .Z(
        inv_sq_b_sq_port_o_0[1]) );
  XOR2_X1 inv_U7 ( .A(linMap_port_o_5[2]), .B(linMap_port_o_1[2]), .Z(
        inv_sq_b_sq_port_o_0[2]) );
  XOR2_X1 inv_U6 ( .A(linMap_port_o_6[0]), .B(port_i_0[0]), .Z(
        inv_sq_port_i_2[0]) );
  XOR2_X1 inv_U5 ( .A(linMap_port_o_6[1]), .B(port_i_0[1]), .Z(
        inv_sq_port_i_2[1]) );
  XOR2_X1 inv_U4 ( .A(linMap_port_o_6[2]), .B(port_i_0[2]), .Z(
        inv_sq_port_i_2[2]) );
  XOR2_X1 inv_U3 ( .A(linMap_port_o_7[0]), .B(linMap_port_o_3[0]), .Z(
        inv_sq_port_i_3[0]) );
  XOR2_X1 inv_U2 ( .A(linMap_port_o_7[1]), .B(linMap_port_o_3[1]), .Z(
        inv_sq_port_i_3[1]) );
  XOR2_X1 inv_U1 ( .A(linMap_port_o_7[2]), .B(linMap_port_o_3[2]), .Z(
        inv_sq_port_i_3[2]) );
  XOR2_X1 inv_sq_U6 ( .A(inv_sq_port_i_2[0]), .B(inv_sq_port_o_0[0]), .Z(
        inv_sq_port_o_3[0]) );
  XOR2_X1 inv_sq_U5 ( .A(inv_sq_port_i_2[1]), .B(inv_sq_port_o_0[1]), .Z(
        inv_sq_port_o_3[1]) );
  XOR2_X1 inv_sq_U4 ( .A(inv_sq_port_i_2[2]), .B(inv_sq_port_o_0[2]), .Z(
        inv_sq_port_o_3[2]) );
  XOR2_X1 inv_sq_U3 ( .A(inv_sq_port_i_3[0]), .B(inv_sq_b_sq_port_o_0[0]), .Z(
        inv_sq_port_o_2[0]) );
  XOR2_X1 inv_sq_U2 ( .A(inv_sq_port_i_3[1]), .B(inv_sq_b_sq_port_o_0[1]), .Z(
        inv_sq_port_o_2[1]) );
  XOR2_X1 inv_sq_U1 ( .A(inv_sq_port_i_3[2]), .B(inv_sq_b_sq_port_o_0[2]), .Z(
        inv_sq_port_o_2[2]) );
  XOR2_X1 inv_sq_b_mulN2_U3 ( .A(inv_sq_port_o_0[0]), .B(
        inv_sq_b_sq_port_o_0[0]), .Z(inv_sq_port_o_1[0]) );
  XOR2_X1 inv_sq_b_mulN2_U2 ( .A(inv_sq_port_o_0[1]), .B(
        inv_sq_b_sq_port_o_0[1]), .Z(inv_sq_port_o_1[1]) );
  XOR2_X1 inv_sq_b_mulN2_U1 ( .A(inv_sq_port_o_0[2]), .B(
        inv_sq_b_sq_port_o_0[2]), .Z(inv_sq_port_o_1[2]) );
  XOR2_X1 inv_mul4_U12 ( .A(inv_mul4_sum_mul_port_o_0[0]), .B(
        inv_mul4_lo_mul_port_o_0[0]), .Z(inv_mul4_port_o_0[0]) );
  XOR2_X1 inv_mul4_U11 ( .A(inv_mul4_sum_mul_port_o_0[1]), .B(
        inv_mul4_lo_mul_port_o_0[1]), .Z(inv_mul4_port_o_0[1]) );
  XOR2_X1 inv_mul4_U10 ( .A(inv_mul4_sum_mul_port_o_0[2]), .B(
        inv_mul4_lo_mul_port_o_0[2]), .Z(inv_mul4_port_o_0[2]) );
  XOR2_X1 inv_mul4_U9 ( .A(inv_mul4_sum_mul_port_o_1[0]), .B(
        inv_mul4_lo_mul_port_o_1[0]), .Z(inv_mul4_port_o_1[0]) );
  XOR2_X1 inv_mul4_U8 ( .A(inv_mul4_sum_mul_port_o_1[1]), .B(
        inv_mul4_lo_mul_port_o_1[1]), .Z(inv_mul4_port_o_1[1]) );
  XOR2_X1 inv_mul4_U7 ( .A(inv_mul4_sum_mul_port_o_1[2]), .B(
        inv_mul4_lo_mul_port_o_1[2]), .Z(inv_mul4_port_o_1[2]) );
  XOR2_X1 inv_mul4_U6 ( .A(inv_mul4_sum_mul_port_o_0[0]), .B(
        inv_mul4_hi_mul_port_o_0[0]), .Z(inv_mul4_port_o_2[0]) );
  XOR2_X1 inv_mul4_U5 ( .A(inv_mul4_sum_mul_port_o_0[1]), .B(
        inv_mul4_hi_mul_port_o_0[1]), .Z(inv_mul4_port_o_2[1]) );
  XOR2_X1 inv_mul4_U4 ( .A(inv_mul4_sum_mul_port_o_0[2]), .B(
        inv_mul4_hi_mul_port_o_0[2]), .Z(inv_mul4_port_o_2[2]) );
  XOR2_X1 inv_mul4_U3 ( .A(inv_mul4_sum_mul_port_o_1[0]), .B(
        inv_mul4_hi_mul_port_o_1[0]), .Z(inv_mul4_port_o_3[0]) );
  XOR2_X1 inv_mul4_U2 ( .A(inv_mul4_sum_mul_port_o_1[1]), .B(
        inv_mul4_hi_mul_port_o_1[1]), .Z(inv_mul4_port_o_3[1]) );
  XOR2_X1 inv_mul4_U1 ( .A(inv_mul4_sum_mul_port_o_1[2]), .B(
        inv_mul4_hi_mul_port_o_1[2]), .Z(inv_mul4_port_o_3[2]) );
  NAND2_X1 inv_mul4_hi_mul_U15 ( .A1(inv_bh[0]), .A2(inv_ah[0]), .ZN(
        inv_mul4_hi_mul_n5) );
  NAND2_X1 inv_mul4_hi_mul_U14 ( .A1(port_i_0[0]), .A2(linMap_port_o_6[0]), 
        .ZN(inv_mul4_hi_mul_n9) );
  XOR2_X1 inv_mul4_hi_mul_U13 ( .A(inv_mul4_hi_mul_n5), .B(inv_mul4_hi_mul_n9), 
        .Z(inv_mul4_hi_mul_port_o_0[0]) );
  NAND2_X1 inv_mul4_hi_mul_U12 ( .A1(inv_bh[1]), .A2(inv_ah[1]), .ZN(
        inv_mul4_hi_mul_n3) );
  NAND2_X1 inv_mul4_hi_mul_U11 ( .A1(port_i_0[1]), .A2(linMap_port_o_6[1]), 
        .ZN(inv_mul4_hi_mul_n8) );
  XOR2_X1 inv_mul4_hi_mul_U10 ( .A(inv_mul4_hi_mul_n3), .B(inv_mul4_hi_mul_n8), 
        .Z(inv_mul4_hi_mul_port_o_0[1]) );
  NAND2_X1 inv_mul4_hi_mul_U9 ( .A1(inv_bh[2]), .A2(inv_ah[2]), .ZN(
        inv_mul4_hi_mul_n1) );
  NAND2_X1 inv_mul4_hi_mul_U8 ( .A1(port_i_0[2]), .A2(linMap_port_o_6[2]), 
        .ZN(inv_mul4_hi_mul_n7) );
  XOR2_X1 inv_mul4_hi_mul_U7 ( .A(inv_mul4_hi_mul_n1), .B(inv_mul4_hi_mul_n7), 
        .Z(inv_mul4_hi_mul_port_o_0[2]) );
  NAND2_X1 inv_mul4_hi_mul_U6 ( .A1(linMap_port_o_3[0]), .A2(
        linMap_port_o_7[0]), .ZN(inv_mul4_hi_mul_n6) );
  XOR2_X1 inv_mul4_hi_mul_U5 ( .A(inv_mul4_hi_mul_n5), .B(inv_mul4_hi_mul_n6), 
        .Z(inv_mul4_hi_mul_port_o_1[0]) );
  NAND2_X1 inv_mul4_hi_mul_U4 ( .A1(linMap_port_o_3[1]), .A2(
        linMap_port_o_7[1]), .ZN(inv_mul4_hi_mul_n4) );
  XOR2_X1 inv_mul4_hi_mul_U3 ( .A(inv_mul4_hi_mul_n3), .B(inv_mul4_hi_mul_n4), 
        .Z(inv_mul4_hi_mul_port_o_1[1]) );
  NAND2_X1 inv_mul4_hi_mul_U2 ( .A1(linMap_port_o_3[2]), .A2(
        linMap_port_o_7[2]), .ZN(inv_mul4_hi_mul_n2) );
  XOR2_X1 inv_mul4_hi_mul_U1 ( .A(inv_mul4_hi_mul_n1), .B(inv_mul4_hi_mul_n2), 
        .Z(inv_mul4_hi_mul_port_o_1[2]) );
  NAND2_X1 inv_mul4_lo_mul_U15 ( .A1(inv_bl[0]), .A2(inv_al[0]), .ZN(
        inv_mul4_lo_mul_n5) );
  NAND2_X1 inv_mul4_lo_mul_U14 ( .A1(linMap_port_o_0[0]), .A2(
        linMap_port_o_4[0]), .ZN(inv_mul4_lo_mul_n9) );
  XOR2_X1 inv_mul4_lo_mul_U13 ( .A(inv_mul4_lo_mul_n5), .B(inv_mul4_lo_mul_n9), 
        .Z(inv_mul4_lo_mul_port_o_0[0]) );
  NAND2_X1 inv_mul4_lo_mul_U12 ( .A1(inv_bl[1]), .A2(inv_al[1]), .ZN(
        inv_mul4_lo_mul_n3) );
  NAND2_X1 inv_mul4_lo_mul_U11 ( .A1(linMap_port_o_0[1]), .A2(
        linMap_port_o_4[1]), .ZN(inv_mul4_lo_mul_n8) );
  XOR2_X1 inv_mul4_lo_mul_U10 ( .A(inv_mul4_lo_mul_n3), .B(inv_mul4_lo_mul_n8), 
        .Z(inv_mul4_lo_mul_port_o_0[1]) );
  NAND2_X1 inv_mul4_lo_mul_U9 ( .A1(inv_bl[2]), .A2(inv_al[2]), .ZN(
        inv_mul4_lo_mul_n1) );
  NAND2_X1 inv_mul4_lo_mul_U8 ( .A1(linMap_port_o_0[2]), .A2(
        linMap_port_o_4[2]), .ZN(inv_mul4_lo_mul_n7) );
  XOR2_X1 inv_mul4_lo_mul_U7 ( .A(inv_mul4_lo_mul_n1), .B(inv_mul4_lo_mul_n7), 
        .Z(inv_mul4_lo_mul_port_o_0[2]) );
  NAND2_X1 inv_mul4_lo_mul_U6 ( .A1(linMap_port_o_1[0]), .A2(
        linMap_port_o_5[0]), .ZN(inv_mul4_lo_mul_n6) );
  XOR2_X1 inv_mul4_lo_mul_U5 ( .A(inv_mul4_lo_mul_n5), .B(inv_mul4_lo_mul_n6), 
        .Z(inv_mul4_lo_mul_port_o_1[0]) );
  NAND2_X1 inv_mul4_lo_mul_U4 ( .A1(linMap_port_o_1[1]), .A2(
        linMap_port_o_5[1]), .ZN(inv_mul4_lo_mul_n4) );
  XOR2_X1 inv_mul4_lo_mul_U3 ( .A(inv_mul4_lo_mul_n3), .B(inv_mul4_lo_mul_n4), 
        .Z(inv_mul4_lo_mul_port_o_1[1]) );
  NAND2_X1 inv_mul4_lo_mul_U2 ( .A1(linMap_port_o_1[2]), .A2(
        linMap_port_o_5[2]), .ZN(inv_mul4_lo_mul_n2) );
  XOR2_X1 inv_mul4_lo_mul_U1 ( .A(inv_mul4_lo_mul_n1), .B(inv_mul4_lo_mul_n2), 
        .Z(inv_mul4_lo_mul_port_o_1[2]) );
  NAND2_X1 inv_mul4_sum_mul_U15 ( .A1(inv_sbx_0[0]), .A2(inv_sax_0[0]), .ZN(
        inv_mul4_sum_mul_n5) );
  NAND2_X1 inv_mul4_sum_mul_U14 ( .A1(inv_sbx_1[0]), .A2(inv_sax_1[0]), .ZN(
        inv_mul4_sum_mul_n9) );
  XOR2_X1 inv_mul4_sum_mul_U13 ( .A(inv_mul4_sum_mul_n5), .B(
        inv_mul4_sum_mul_n9), .Z(inv_mul4_sum_mul_port_o_0[0]) );
  NAND2_X1 inv_mul4_sum_mul_U12 ( .A1(inv_sbx_0[1]), .A2(inv_sax_0[1]), .ZN(
        inv_mul4_sum_mul_n3) );
  NAND2_X1 inv_mul4_sum_mul_U11 ( .A1(inv_sbx_1[1]), .A2(inv_sax_1[1]), .ZN(
        inv_mul4_sum_mul_n8) );
  XOR2_X1 inv_mul4_sum_mul_U10 ( .A(inv_mul4_sum_mul_n3), .B(
        inv_mul4_sum_mul_n8), .Z(inv_mul4_sum_mul_port_o_0[1]) );
  NAND2_X1 inv_mul4_sum_mul_U9 ( .A1(inv_sbx_0[2]), .A2(inv_sax_0[2]), .ZN(
        inv_mul4_sum_mul_n1) );
  NAND2_X1 inv_mul4_sum_mul_U8 ( .A1(inv_sbx_1[2]), .A2(inv_sax_1[2]), .ZN(
        inv_mul4_sum_mul_n7) );
  XOR2_X1 inv_mul4_sum_mul_U7 ( .A(inv_mul4_sum_mul_n1), .B(
        inv_mul4_sum_mul_n7), .Z(inv_mul4_sum_mul_port_o_0[2]) );
  NAND2_X1 inv_mul4_sum_mul_U6 ( .A1(inv_bb[0]), .A2(inv_aa[0]), .ZN(
        inv_mul4_sum_mul_n6) );
  XOR2_X1 inv_mul4_sum_mul_U5 ( .A(inv_mul4_sum_mul_n5), .B(
        inv_mul4_sum_mul_n6), .Z(inv_mul4_sum_mul_port_o_1[0]) );
  NAND2_X1 inv_mul4_sum_mul_U4 ( .A1(inv_bb[1]), .A2(inv_aa[1]), .ZN(
        inv_mul4_sum_mul_n4) );
  XOR2_X1 inv_mul4_sum_mul_U3 ( .A(inv_mul4_sum_mul_n3), .B(
        inv_mul4_sum_mul_n4), .Z(inv_mul4_sum_mul_port_o_1[1]) );
  NAND2_X1 inv_mul4_sum_mul_U2 ( .A1(inv_bb[2]), .A2(inv_aa[2]), .ZN(
        inv_mul4_sum_mul_n2) );
  XOR2_X1 inv_mul4_sum_mul_U1 ( .A(inv_mul4_sum_mul_n1), .B(
        inv_mul4_sum_mul_n2), .Z(inv_mul4_sum_mul_port_o_1[2]) );
  XOR2_X1 inv_dx_inv_U21 ( .A(inv_dx_inv_sc_port_o_0[0]), .B(
        inv_dx_inv_mul2_port_o_0[0]), .Z(inv_dx_inv_dx_inv_port_o_1[0]) );
  XOR2_X1 inv_dx_inv_U20 ( .A(inv_dx_inv_sc_port_o_0[1]), .B(
        inv_dx_inv_mul2_port_o_0[1]), .Z(inv_dx_inv_dx_inv_port_o_1[1]) );
  XOR2_X1 inv_dx_inv_U19 ( .A(inv_dx_inv_sc_port_o_0[2]), .B(
        inv_dx_inv_mul2_port_o_0[2]), .Z(inv_dx_inv_dx_inv_port_o_1[2]) );
  XOR2_X1 inv_dx_inv_U18 ( .A(inv_dx_inv_sc_port_o_1[0]), .B(
        inv_dx_inv_mul2_port_o_1[0]), .Z(inv_dx_inv_dx_inv_port_o_0[0]) );
  XOR2_X1 inv_dx_inv_U17 ( .A(inv_dx_inv_sc_port_o_1[1]), .B(
        inv_dx_inv_mul2_port_o_1[1]), .Z(inv_dx_inv_dx_inv_port_o_0[1]) );
  XOR2_X1 inv_dx_inv_U16 ( .A(inv_dx_inv_sc_port_o_1[2]), .B(
        inv_dx_inv_mul2_port_o_1[2]), .Z(inv_dx_inv_dx_inv_port_o_0[2]) );
  XOR2_X1 inv_dx_inv_U15 ( .A(inv_cx_3[0]), .B(inv_cx_2[0]), .Z(
        inv_dx_inv_sax[0]) );
  XOR2_X1 inv_dx_inv_U14 ( .A(inv_cx_3[1]), .B(inv_cx_2[1]), .Z(
        inv_dx_inv_sax[1]) );
  XOR2_X1 inv_dx_inv_U13 ( .A(inv_cx_3[2]), .B(inv_cx_2[2]), .Z(
        inv_dx_inv_sax[2]) );
  XOR2_X1 inv_dx_inv_U12 ( .A(inv_cx_1[0]), .B(inv_cx_0[0]), .Z(
        inv_dx_inv_sbx[0]) );
  XOR2_X1 inv_dx_inv_U11 ( .A(inv_cx_1[1]), .B(inv_cx_0[1]), .Z(
        inv_dx_inv_sbx[1]) );
  XOR2_X1 inv_dx_inv_U10 ( .A(inv_cx_1[2]), .B(inv_cx_0[2]), .Z(
        inv_dx_inv_sbx[2]) );
  XOR2_X1 inv_dx_inv_U9 ( .A(inv_dx_inv_dx_inv_port_o_1[0]), .B(
        inv_dx_inv_dx_inv_port_o_0[0]), .Z(inv_dx_inv_sdx[0]) );
  XOR2_X1 inv_dx_inv_U8 ( .A(inv_dx_inv_dx_inv_port_o_1[1]), .B(
        inv_dx_inv_dx_inv_port_o_0[1]), .Z(inv_dx_inv_sdx[1]) );
  XOR2_X1 inv_dx_inv_U7 ( .A(inv_dx_inv_dx_inv_port_o_1[2]), .B(
        inv_dx_inv_dx_inv_port_o_0[2]), .Z(inv_dx_inv_sdx[2]) );
  XOR2_X1 inv_dx_inv_U6 ( .A(inv_cx_2[0]), .B(inv_cx_0[0]), .Z(
        inv_dx_inv_sq_port_o_1[0]) );
  XOR2_X1 inv_dx_inv_U5 ( .A(inv_cx_2[1]), .B(inv_cx_0[1]), .Z(
        inv_dx_inv_sq_port_o_1[1]) );
  XOR2_X1 inv_dx_inv_U4 ( .A(inv_cx_2[2]), .B(inv_cx_0[2]), .Z(
        inv_dx_inv_sq_port_o_1[2]) );
  XOR2_X1 inv_dx_inv_U3 ( .A(inv_cx_3[0]), .B(inv_cx_1[0]), .Z(
        inv_dx_inv_sc_port_o_1[0]) );
  XOR2_X1 inv_dx_inv_U2 ( .A(inv_cx_3[1]), .B(inv_cx_1[1]), .Z(
        inv_dx_inv_sc_port_o_1[1]) );
  XOR2_X1 inv_dx_inv_U1 ( .A(inv_cx_3[2]), .B(inv_cx_1[2]), .Z(
        inv_dx_inv_sc_port_o_1[2]) );
  NAND2_X1 inv_dx_inv_mul2_U15 ( .A1(inv_dx_inv_sbx[0]), .A2(inv_dx_inv_sax[0]), .ZN(inv_dx_inv_mul2_n5) );
  NAND2_X1 inv_dx_inv_mul2_U14 ( .A1(inv_cx_0[0]), .A2(inv_cx_2[0]), .ZN(
        inv_dx_inv_mul2_n9) );
  XOR2_X1 inv_dx_inv_mul2_U13 ( .A(inv_dx_inv_mul2_n5), .B(inv_dx_inv_mul2_n9), 
        .Z(inv_dx_inv_mul2_port_o_0[0]) );
  NAND2_X1 inv_dx_inv_mul2_U12 ( .A1(inv_dx_inv_sbx[1]), .A2(inv_dx_inv_sax[1]), .ZN(inv_dx_inv_mul2_n3) );
  NAND2_X1 inv_dx_inv_mul2_U11 ( .A1(inv_cx_0[1]), .A2(inv_cx_2[1]), .ZN(
        inv_dx_inv_mul2_n8) );
  XOR2_X1 inv_dx_inv_mul2_U10 ( .A(inv_dx_inv_mul2_n3), .B(inv_dx_inv_mul2_n8), 
        .Z(inv_dx_inv_mul2_port_o_0[1]) );
  NAND2_X1 inv_dx_inv_mul2_U9 ( .A1(inv_dx_inv_sbx[2]), .A2(inv_dx_inv_sax[2]), 
        .ZN(inv_dx_inv_mul2_n1) );
  NAND2_X1 inv_dx_inv_mul2_U8 ( .A1(inv_cx_0[2]), .A2(inv_cx_2[2]), .ZN(
        inv_dx_inv_mul2_n7) );
  XOR2_X1 inv_dx_inv_mul2_U7 ( .A(inv_dx_inv_mul2_n1), .B(inv_dx_inv_mul2_n7), 
        .Z(inv_dx_inv_mul2_port_o_0[2]) );
  NAND2_X1 inv_dx_inv_mul2_U6 ( .A1(inv_cx_1[0]), .A2(inv_cx_3[0]), .ZN(
        inv_dx_inv_mul2_n6) );
  XOR2_X1 inv_dx_inv_mul2_U5 ( .A(inv_dx_inv_mul2_n5), .B(inv_dx_inv_mul2_n6), 
        .Z(inv_dx_inv_mul2_port_o_1[0]) );
  NAND2_X1 inv_dx_inv_mul2_U4 ( .A1(inv_cx_1[1]), .A2(inv_cx_3[1]), .ZN(
        inv_dx_inv_mul2_n4) );
  XOR2_X1 inv_dx_inv_mul2_U3 ( .A(inv_dx_inv_mul2_n3), .B(inv_dx_inv_mul2_n4), 
        .Z(inv_dx_inv_mul2_port_o_1[1]) );
  NAND2_X1 inv_dx_inv_mul2_U2 ( .A1(inv_cx_1[2]), .A2(inv_cx_3[2]), .ZN(
        inv_dx_inv_mul2_n2) );
  XOR2_X1 inv_dx_inv_mul2_U1 ( .A(inv_dx_inv_mul2_n1), .B(inv_dx_inv_mul2_n2), 
        .Z(inv_dx_inv_mul2_port_o_1[2]) );
  XOR2_X1 inv_dx_inv_sc_U3 ( .A(inv_dx_inv_sc_port_o_1[0]), .B(
        inv_dx_inv_sq_port_o_1[0]), .Z(inv_dx_inv_sc_port_o_0[0]) );
  XOR2_X1 inv_dx_inv_sc_U2 ( .A(inv_dx_inv_sc_port_o_1[1]), .B(
        inv_dx_inv_sq_port_o_1[1]), .Z(inv_dx_inv_sc_port_o_0[1]) );
  XOR2_X1 inv_dx_inv_sc_U1 ( .A(inv_dx_inv_sc_port_o_1[2]), .B(
        inv_dx_inv_sq_port_o_1[2]), .Z(inv_dx_inv_sc_port_o_0[2]) );
  NAND2_X1 inv_dx_inv_px_mul_U15 ( .A1(inv_dx_inv_sbx[0]), .A2(
        inv_dx_inv_sdx[0]), .ZN(inv_dx_inv_px_mul_n5) );
  NAND2_X1 inv_dx_inv_px_mul_U14 ( .A1(inv_cx_0[0]), .A2(
        inv_dx_inv_dx_inv_port_o_0[0]), .ZN(inv_dx_inv_px_mul_n9) );
  XOR2_X1 inv_dx_inv_px_mul_U13 ( .A(inv_dx_inv_px_mul_n5), .B(
        inv_dx_inv_px_mul_n9), .Z(inv_dx_inv_port_o_2[0]) );
  NAND2_X1 inv_dx_inv_px_mul_U12 ( .A1(inv_dx_inv_sbx[1]), .A2(
        inv_dx_inv_sdx[1]), .ZN(inv_dx_inv_px_mul_n3) );
  NAND2_X1 inv_dx_inv_px_mul_U11 ( .A1(inv_cx_0[1]), .A2(
        inv_dx_inv_dx_inv_port_o_0[1]), .ZN(inv_dx_inv_px_mul_n8) );
  XOR2_X1 inv_dx_inv_px_mul_U10 ( .A(inv_dx_inv_px_mul_n3), .B(
        inv_dx_inv_px_mul_n8), .Z(inv_dx_inv_port_o_2[1]) );
  NAND2_X1 inv_dx_inv_px_mul_U9 ( .A1(inv_dx_inv_sbx[2]), .A2(
        inv_dx_inv_sdx[2]), .ZN(inv_dx_inv_px_mul_n1) );
  NAND2_X1 inv_dx_inv_px_mul_U8 ( .A1(inv_cx_0[2]), .A2(
        inv_dx_inv_dx_inv_port_o_0[2]), .ZN(inv_dx_inv_px_mul_n7) );
  XOR2_X1 inv_dx_inv_px_mul_U7 ( .A(inv_dx_inv_px_mul_n1), .B(
        inv_dx_inv_px_mul_n7), .Z(inv_dx_inv_port_o_2[2]) );
  NAND2_X1 inv_dx_inv_px_mul_U6 ( .A1(inv_cx_1[0]), .A2(
        inv_dx_inv_dx_inv_port_o_1[0]), .ZN(inv_dx_inv_px_mul_n6) );
  XOR2_X1 inv_dx_inv_px_mul_U5 ( .A(inv_dx_inv_px_mul_n5), .B(
        inv_dx_inv_px_mul_n6), .Z(inv_dx_inv_port_o_3[0]) );
  NAND2_X1 inv_dx_inv_px_mul_U4 ( .A1(inv_cx_1[1]), .A2(
        inv_dx_inv_dx_inv_port_o_1[1]), .ZN(inv_dx_inv_px_mul_n4) );
  XOR2_X1 inv_dx_inv_px_mul_U3 ( .A(inv_dx_inv_px_mul_n3), .B(
        inv_dx_inv_px_mul_n4), .Z(inv_dx_inv_port_o_3[1]) );
  NAND2_X1 inv_dx_inv_px_mul_U2 ( .A1(inv_cx_1[2]), .A2(
        inv_dx_inv_dx_inv_port_o_1[2]), .ZN(inv_dx_inv_px_mul_n2) );
  XOR2_X1 inv_dx_inv_px_mul_U1 ( .A(inv_dx_inv_px_mul_n1), .B(
        inv_dx_inv_px_mul_n2), .Z(inv_dx_inv_port_o_3[2]) );
  NAND2_X1 inv_dx_inv_qx_mul_U15 ( .A1(inv_dx_inv_sax[0]), .A2(
        inv_dx_inv_sdx[0]), .ZN(inv_dx_inv_qx_mul_n5) );
  NAND2_X1 inv_dx_inv_qx_mul_U14 ( .A1(inv_cx_2[0]), .A2(
        inv_dx_inv_dx_inv_port_o_0[0]), .ZN(inv_dx_inv_qx_mul_n9) );
  XOR2_X1 inv_dx_inv_qx_mul_U13 ( .A(inv_dx_inv_qx_mul_n5), .B(
        inv_dx_inv_qx_mul_n9), .Z(inv_dx_inv_port_o_0[0]) );
  NAND2_X1 inv_dx_inv_qx_mul_U12 ( .A1(inv_dx_inv_sax[1]), .A2(
        inv_dx_inv_sdx[1]), .ZN(inv_dx_inv_qx_mul_n3) );
  NAND2_X1 inv_dx_inv_qx_mul_U11 ( .A1(inv_cx_2[1]), .A2(
        inv_dx_inv_dx_inv_port_o_0[1]), .ZN(inv_dx_inv_qx_mul_n8) );
  XOR2_X1 inv_dx_inv_qx_mul_U10 ( .A(inv_dx_inv_qx_mul_n3), .B(
        inv_dx_inv_qx_mul_n8), .Z(inv_dx_inv_port_o_0[1]) );
  NAND2_X1 inv_dx_inv_qx_mul_U9 ( .A1(inv_dx_inv_sax[2]), .A2(
        inv_dx_inv_sdx[2]), .ZN(inv_dx_inv_qx_mul_n1) );
  NAND2_X1 inv_dx_inv_qx_mul_U8 ( .A1(inv_cx_2[2]), .A2(
        inv_dx_inv_dx_inv_port_o_0[2]), .ZN(inv_dx_inv_qx_mul_n7) );
  XOR2_X1 inv_dx_inv_qx_mul_U7 ( .A(inv_dx_inv_qx_mul_n1), .B(
        inv_dx_inv_qx_mul_n7), .Z(inv_dx_inv_port_o_0[2]) );
  NAND2_X1 inv_dx_inv_qx_mul_U6 ( .A1(inv_cx_3[0]), .A2(
        inv_dx_inv_dx_inv_port_o_1[0]), .ZN(inv_dx_inv_qx_mul_n6) );
  XOR2_X1 inv_dx_inv_qx_mul_U5 ( .A(inv_dx_inv_qx_mul_n5), .B(
        inv_dx_inv_qx_mul_n6), .Z(inv_dx_inv_port_o_1[0]) );
  NAND2_X1 inv_dx_inv_qx_mul_U4 ( .A1(inv_cx_3[1]), .A2(
        inv_dx_inv_dx_inv_port_o_1[1]), .ZN(inv_dx_inv_qx_mul_n4) );
  XOR2_X1 inv_dx_inv_qx_mul_U3 ( .A(inv_dx_inv_qx_mul_n3), .B(
        inv_dx_inv_qx_mul_n4), .Z(inv_dx_inv_port_o_1[1]) );
  NAND2_X1 inv_dx_inv_qx_mul_U2 ( .A1(inv_cx_3[2]), .A2(
        inv_dx_inv_dx_inv_port_o_1[2]), .ZN(inv_dx_inv_qx_mul_n2) );
  XOR2_X1 inv_dx_inv_qx_mul_U1 ( .A(inv_dx_inv_qx_mul_n1), .B(
        inv_dx_inv_qx_mul_n2), .Z(inv_dx_inv_port_o_1[2]) );
  XOR2_X1 inv_px_mul_U12 ( .A(inv_px_mul_sum_mul_port_o_0[0]), .B(
        inv_px_mul_lo_mul_port_o_0[0]), .Z(inv_port_o_4[0]) );
  XOR2_X1 inv_px_mul_U11 ( .A(inv_px_mul_sum_mul_port_o_0[1]), .B(
        inv_px_mul_lo_mul_port_o_0[1]), .Z(inv_port_o_4[1]) );
  XOR2_X1 inv_px_mul_U10 ( .A(inv_px_mul_sum_mul_port_o_0[2]), .B(
        inv_px_mul_lo_mul_port_o_0[2]), .Z(inv_port_o_4[2]) );
  XOR2_X1 inv_px_mul_U9 ( .A(inv_px_mul_sum_mul_port_o_1[0]), .B(
        inv_px_mul_lo_mul_port_o_1[0]), .Z(inv_port_o_5[0]) );
  XOR2_X1 inv_px_mul_U8 ( .A(inv_px_mul_sum_mul_port_o_1[1]), .B(
        inv_px_mul_lo_mul_port_o_1[1]), .Z(inv_port_o_5[1]) );
  XOR2_X1 inv_px_mul_U7 ( .A(inv_px_mul_sum_mul_port_o_1[2]), .B(
        inv_px_mul_lo_mul_port_o_1[2]), .Z(inv_port_o_5[2]) );
  XOR2_X1 inv_px_mul_U6 ( .A(inv_px_mul_sum_mul_port_o_0[0]), .B(
        inv_px_mul_hi_mul_port_o_0[0]), .Z(inv_port_o_6[0]) );
  XOR2_X1 inv_px_mul_U5 ( .A(inv_px_mul_sum_mul_port_o_0[1]), .B(
        inv_px_mul_hi_mul_port_o_0[1]), .Z(inv_port_o_6[1]) );
  XOR2_X1 inv_px_mul_U4 ( .A(inv_px_mul_sum_mul_port_o_0[2]), .B(
        inv_px_mul_hi_mul_port_o_0[2]), .Z(inv_port_o_6[2]) );
  XOR2_X1 inv_px_mul_U3 ( .A(inv_px_mul_sum_mul_port_o_1[0]), .B(
        inv_px_mul_hi_mul_port_o_1[0]), .Z(inv_port_o_7[0]) );
  XOR2_X1 inv_px_mul_U2 ( .A(inv_px_mul_sum_mul_port_o_1[1]), .B(
        inv_px_mul_hi_mul_port_o_1[1]), .Z(inv_port_o_7[1]) );
  XOR2_X1 inv_px_mul_U1 ( .A(inv_px_mul_sum_mul_port_o_1[2]), .B(
        inv_px_mul_hi_mul_port_o_1[2]), .Z(inv_port_o_7[2]) );
  NAND2_X1 inv_px_mul_hi_mul_U15 ( .A1(inv_bh[0]), .A2(inv_dh[0]), .ZN(
        inv_px_mul_hi_mul_n5) );
  NAND2_X1 inv_px_mul_hi_mul_U14 ( .A1(port_i_0[0]), .A2(
        inv_dx_inv_port_o_2[0]), .ZN(inv_px_mul_hi_mul_n9) );
  XOR2_X1 inv_px_mul_hi_mul_U13 ( .A(inv_px_mul_hi_mul_n5), .B(
        inv_px_mul_hi_mul_n9), .Z(inv_px_mul_hi_mul_port_o_0[0]) );
  NAND2_X1 inv_px_mul_hi_mul_U12 ( .A1(inv_bh[1]), .A2(inv_dh[1]), .ZN(
        inv_px_mul_hi_mul_n3) );
  NAND2_X1 inv_px_mul_hi_mul_U11 ( .A1(port_i_0[1]), .A2(
        inv_dx_inv_port_o_2[1]), .ZN(inv_px_mul_hi_mul_n8) );
  XOR2_X1 inv_px_mul_hi_mul_U10 ( .A(inv_px_mul_hi_mul_n3), .B(
        inv_px_mul_hi_mul_n8), .Z(inv_px_mul_hi_mul_port_o_0[1]) );
  NAND2_X1 inv_px_mul_hi_mul_U9 ( .A1(inv_bh[2]), .A2(inv_dh[2]), .ZN(
        inv_px_mul_hi_mul_n1) );
  NAND2_X1 inv_px_mul_hi_mul_U8 ( .A1(port_i_0[2]), .A2(inv_dx_inv_port_o_2[2]), .ZN(inv_px_mul_hi_mul_n7) );
  XOR2_X1 inv_px_mul_hi_mul_U7 ( .A(inv_px_mul_hi_mul_n1), .B(
        inv_px_mul_hi_mul_n7), .Z(inv_px_mul_hi_mul_port_o_0[2]) );
  NAND2_X1 inv_px_mul_hi_mul_U6 ( .A1(linMap_port_o_3[0]), .A2(
        inv_dx_inv_port_o_3[0]), .ZN(inv_px_mul_hi_mul_n6) );
  XOR2_X1 inv_px_mul_hi_mul_U5 ( .A(inv_px_mul_hi_mul_n5), .B(
        inv_px_mul_hi_mul_n6), .Z(inv_px_mul_hi_mul_port_o_1[0]) );
  NAND2_X1 inv_px_mul_hi_mul_U4 ( .A1(linMap_port_o_3[1]), .A2(
        inv_dx_inv_port_o_3[1]), .ZN(inv_px_mul_hi_mul_n4) );
  XOR2_X1 inv_px_mul_hi_mul_U3 ( .A(inv_px_mul_hi_mul_n3), .B(
        inv_px_mul_hi_mul_n4), .Z(inv_px_mul_hi_mul_port_o_1[1]) );
  NAND2_X1 inv_px_mul_hi_mul_U2 ( .A1(linMap_port_o_3[2]), .A2(
        inv_dx_inv_port_o_3[2]), .ZN(inv_px_mul_hi_mul_n2) );
  XOR2_X1 inv_px_mul_hi_mul_U1 ( .A(inv_px_mul_hi_mul_n1), .B(
        inv_px_mul_hi_mul_n2), .Z(inv_px_mul_hi_mul_port_o_1[2]) );
  NAND2_X1 inv_px_mul_lo_mul_U15 ( .A1(inv_bl[0]), .A2(inv_dl[0]), .ZN(
        inv_px_mul_lo_mul_n5) );
  NAND2_X1 inv_px_mul_lo_mul_U14 ( .A1(linMap_port_o_0[0]), .A2(
        inv_dx_inv_port_o_0[0]), .ZN(inv_px_mul_lo_mul_n9) );
  XOR2_X1 inv_px_mul_lo_mul_U13 ( .A(inv_px_mul_lo_mul_n5), .B(
        inv_px_mul_lo_mul_n9), .Z(inv_px_mul_lo_mul_port_o_0[0]) );
  NAND2_X1 inv_px_mul_lo_mul_U12 ( .A1(inv_bl[1]), .A2(inv_dl[1]), .ZN(
        inv_px_mul_lo_mul_n3) );
  NAND2_X1 inv_px_mul_lo_mul_U11 ( .A1(linMap_port_o_0[1]), .A2(
        inv_dx_inv_port_o_0[1]), .ZN(inv_px_mul_lo_mul_n8) );
  XOR2_X1 inv_px_mul_lo_mul_U10 ( .A(inv_px_mul_lo_mul_n3), .B(
        inv_px_mul_lo_mul_n8), .Z(inv_px_mul_lo_mul_port_o_0[1]) );
  NAND2_X1 inv_px_mul_lo_mul_U9 ( .A1(inv_bl[2]), .A2(inv_dl[2]), .ZN(
        inv_px_mul_lo_mul_n1) );
  NAND2_X1 inv_px_mul_lo_mul_U8 ( .A1(linMap_port_o_0[2]), .A2(
        inv_dx_inv_port_o_0[2]), .ZN(inv_px_mul_lo_mul_n7) );
  XOR2_X1 inv_px_mul_lo_mul_U7 ( .A(inv_px_mul_lo_mul_n1), .B(
        inv_px_mul_lo_mul_n7), .Z(inv_px_mul_lo_mul_port_o_0[2]) );
  NAND2_X1 inv_px_mul_lo_mul_U6 ( .A1(linMap_port_o_1[0]), .A2(
        inv_dx_inv_port_o_1[0]), .ZN(inv_px_mul_lo_mul_n6) );
  XOR2_X1 inv_px_mul_lo_mul_U5 ( .A(inv_px_mul_lo_mul_n5), .B(
        inv_px_mul_lo_mul_n6), .Z(inv_px_mul_lo_mul_port_o_1[0]) );
  NAND2_X1 inv_px_mul_lo_mul_U4 ( .A1(linMap_port_o_1[1]), .A2(
        inv_dx_inv_port_o_1[1]), .ZN(inv_px_mul_lo_mul_n4) );
  XOR2_X1 inv_px_mul_lo_mul_U3 ( .A(inv_px_mul_lo_mul_n3), .B(
        inv_px_mul_lo_mul_n4), .Z(inv_px_mul_lo_mul_port_o_1[1]) );
  NAND2_X1 inv_px_mul_lo_mul_U2 ( .A1(linMap_port_o_1[2]), .A2(
        inv_dx_inv_port_o_1[2]), .ZN(inv_px_mul_lo_mul_n2) );
  XOR2_X1 inv_px_mul_lo_mul_U1 ( .A(inv_px_mul_lo_mul_n1), .B(
        inv_px_mul_lo_mul_n2), .Z(inv_px_mul_lo_mul_port_o_1[2]) );
  NAND2_X1 inv_px_mul_sum_mul_U15 ( .A1(inv_sbx_0[0]), .A2(inv_sdx_0[0]), .ZN(
        inv_px_mul_sum_mul_n5) );
  NAND2_X1 inv_px_mul_sum_mul_U14 ( .A1(inv_sbx_1[0]), .A2(inv_sdx_1[0]), .ZN(
        inv_px_mul_sum_mul_n9) );
  XOR2_X1 inv_px_mul_sum_mul_U13 ( .A(inv_px_mul_sum_mul_n5), .B(
        inv_px_mul_sum_mul_n9), .Z(inv_px_mul_sum_mul_port_o_0[0]) );
  NAND2_X1 inv_px_mul_sum_mul_U12 ( .A1(inv_sbx_0[1]), .A2(inv_sdx_0[1]), .ZN(
        inv_px_mul_sum_mul_n3) );
  NAND2_X1 inv_px_mul_sum_mul_U11 ( .A1(inv_sbx_1[1]), .A2(inv_sdx_1[1]), .ZN(
        inv_px_mul_sum_mul_n8) );
  XOR2_X1 inv_px_mul_sum_mul_U10 ( .A(inv_px_mul_sum_mul_n3), .B(
        inv_px_mul_sum_mul_n8), .Z(inv_px_mul_sum_mul_port_o_0[1]) );
  NAND2_X1 inv_px_mul_sum_mul_U9 ( .A1(inv_sbx_0[2]), .A2(inv_sdx_0[2]), .ZN(
        inv_px_mul_sum_mul_n1) );
  NAND2_X1 inv_px_mul_sum_mul_U8 ( .A1(inv_sbx_1[2]), .A2(inv_sdx_1[2]), .ZN(
        inv_px_mul_sum_mul_n7) );
  XOR2_X1 inv_px_mul_sum_mul_U7 ( .A(inv_px_mul_sum_mul_n1), .B(
        inv_px_mul_sum_mul_n7), .Z(inv_px_mul_sum_mul_port_o_0[2]) );
  NAND2_X1 inv_px_mul_sum_mul_U6 ( .A1(inv_bb[0]), .A2(inv_dd[0]), .ZN(
        inv_px_mul_sum_mul_n6) );
  XOR2_X1 inv_px_mul_sum_mul_U5 ( .A(inv_px_mul_sum_mul_n5), .B(
        inv_px_mul_sum_mul_n6), .Z(inv_px_mul_sum_mul_port_o_1[0]) );
  NAND2_X1 inv_px_mul_sum_mul_U4 ( .A1(inv_bb[1]), .A2(inv_dd[1]), .ZN(
        inv_px_mul_sum_mul_n4) );
  XOR2_X1 inv_px_mul_sum_mul_U3 ( .A(inv_px_mul_sum_mul_n3), .B(
        inv_px_mul_sum_mul_n4), .Z(inv_px_mul_sum_mul_port_o_1[1]) );
  NAND2_X1 inv_px_mul_sum_mul_U2 ( .A1(inv_bb[2]), .A2(inv_dd[2]), .ZN(
        inv_px_mul_sum_mul_n2) );
  XOR2_X1 inv_px_mul_sum_mul_U1 ( .A(inv_px_mul_sum_mul_n1), .B(
        inv_px_mul_sum_mul_n2), .Z(inv_px_mul_sum_mul_port_o_1[2]) );
  XOR2_X1 inv_qx_mul_U12 ( .A(inv_qx_mul_sum_mul_port_o_0[0]), .B(
        inv_qx_mul_lo_mul_port_o_0[0]), .Z(inv_port_o_0[0]) );
  XOR2_X1 inv_qx_mul_U11 ( .A(inv_qx_mul_sum_mul_port_o_0[1]), .B(
        inv_qx_mul_lo_mul_port_o_0[1]), .Z(inv_port_o_0[1]) );
  XOR2_X1 inv_qx_mul_U10 ( .A(inv_qx_mul_sum_mul_port_o_0[2]), .B(
        inv_qx_mul_lo_mul_port_o_0[2]), .Z(inv_port_o_0[2]) );
  XOR2_X1 inv_qx_mul_U9 ( .A(inv_qx_mul_sum_mul_port_o_1[0]), .B(
        inv_qx_mul_lo_mul_port_o_1[0]), .Z(inv_port_o_1[0]) );
  XOR2_X1 inv_qx_mul_U8 ( .A(inv_qx_mul_sum_mul_port_o_1[1]), .B(
        inv_qx_mul_lo_mul_port_o_1[1]), .Z(inv_port_o_1[1]) );
  XOR2_X1 inv_qx_mul_U7 ( .A(inv_qx_mul_sum_mul_port_o_1[2]), .B(
        inv_qx_mul_lo_mul_port_o_1[2]), .Z(inv_port_o_1[2]) );
  XOR2_X1 inv_qx_mul_U6 ( .A(inv_qx_mul_sum_mul_port_o_0[0]), .B(
        inv_qx_mul_hi_mul_port_o_0[0]), .Z(inv_port_o_2[0]) );
  XOR2_X1 inv_qx_mul_U5 ( .A(inv_qx_mul_sum_mul_port_o_0[1]), .B(
        inv_qx_mul_hi_mul_port_o_0[1]), .Z(inv_port_o_2[1]) );
  XOR2_X1 inv_qx_mul_U4 ( .A(inv_qx_mul_sum_mul_port_o_0[2]), .B(
        inv_qx_mul_hi_mul_port_o_0[2]), .Z(inv_port_o_2[2]) );
  XOR2_X1 inv_qx_mul_U3 ( .A(inv_qx_mul_sum_mul_port_o_1[0]), .B(
        inv_qx_mul_hi_mul_port_o_1[0]), .Z(inv_port_o_3[0]) );
  XOR2_X1 inv_qx_mul_U2 ( .A(inv_qx_mul_sum_mul_port_o_1[1]), .B(
        inv_qx_mul_hi_mul_port_o_1[1]), .Z(inv_port_o_3[1]) );
  XOR2_X1 inv_qx_mul_U1 ( .A(inv_qx_mul_sum_mul_port_o_1[2]), .B(
        inv_qx_mul_hi_mul_port_o_1[2]), .Z(inv_port_o_3[2]) );
  NAND2_X1 inv_qx_mul_hi_mul_U15 ( .A1(inv_ah[0]), .A2(inv_dh[0]), .ZN(
        inv_qx_mul_hi_mul_n5) );
  NAND2_X1 inv_qx_mul_hi_mul_U14 ( .A1(linMap_port_o_6[0]), .A2(
        inv_dx_inv_port_o_2[0]), .ZN(inv_qx_mul_hi_mul_n9) );
  XOR2_X1 inv_qx_mul_hi_mul_U13 ( .A(inv_qx_mul_hi_mul_n5), .B(
        inv_qx_mul_hi_mul_n9), .Z(inv_qx_mul_hi_mul_port_o_0[0]) );
  NAND2_X1 inv_qx_mul_hi_mul_U12 ( .A1(inv_ah[1]), .A2(inv_dh[1]), .ZN(
        inv_qx_mul_hi_mul_n3) );
  NAND2_X1 inv_qx_mul_hi_mul_U11 ( .A1(linMap_port_o_6[1]), .A2(
        inv_dx_inv_port_o_2[1]), .ZN(inv_qx_mul_hi_mul_n8) );
  XOR2_X1 inv_qx_mul_hi_mul_U10 ( .A(inv_qx_mul_hi_mul_n3), .B(
        inv_qx_mul_hi_mul_n8), .Z(inv_qx_mul_hi_mul_port_o_0[1]) );
  NAND2_X1 inv_qx_mul_hi_mul_U9 ( .A1(inv_ah[2]), .A2(inv_dh[2]), .ZN(
        inv_qx_mul_hi_mul_n1) );
  NAND2_X1 inv_qx_mul_hi_mul_U8 ( .A1(linMap_port_o_6[2]), .A2(
        inv_dx_inv_port_o_2[2]), .ZN(inv_qx_mul_hi_mul_n7) );
  XOR2_X1 inv_qx_mul_hi_mul_U7 ( .A(inv_qx_mul_hi_mul_n1), .B(
        inv_qx_mul_hi_mul_n7), .Z(inv_qx_mul_hi_mul_port_o_0[2]) );
  NAND2_X1 inv_qx_mul_hi_mul_U6 ( .A1(linMap_port_o_7[0]), .A2(
        inv_dx_inv_port_o_3[0]), .ZN(inv_qx_mul_hi_mul_n6) );
  XOR2_X1 inv_qx_mul_hi_mul_U5 ( .A(inv_qx_mul_hi_mul_n5), .B(
        inv_qx_mul_hi_mul_n6), .Z(inv_qx_mul_hi_mul_port_o_1[0]) );
  NAND2_X1 inv_qx_mul_hi_mul_U4 ( .A1(linMap_port_o_7[1]), .A2(
        inv_dx_inv_port_o_3[1]), .ZN(inv_qx_mul_hi_mul_n4) );
  XOR2_X1 inv_qx_mul_hi_mul_U3 ( .A(inv_qx_mul_hi_mul_n3), .B(
        inv_qx_mul_hi_mul_n4), .Z(inv_qx_mul_hi_mul_port_o_1[1]) );
  NAND2_X1 inv_qx_mul_hi_mul_U2 ( .A1(linMap_port_o_7[2]), .A2(
        inv_dx_inv_port_o_3[2]), .ZN(inv_qx_mul_hi_mul_n2) );
  XOR2_X1 inv_qx_mul_hi_mul_U1 ( .A(inv_qx_mul_hi_mul_n1), .B(
        inv_qx_mul_hi_mul_n2), .Z(inv_qx_mul_hi_mul_port_o_1[2]) );
  NAND2_X1 inv_qx_mul_lo_mul_U15 ( .A1(inv_al[0]), .A2(inv_dl[0]), .ZN(
        inv_qx_mul_lo_mul_n5) );
  NAND2_X1 inv_qx_mul_lo_mul_U14 ( .A1(linMap_port_o_4[0]), .A2(
        inv_dx_inv_port_o_0[0]), .ZN(inv_qx_mul_lo_mul_n9) );
  XOR2_X1 inv_qx_mul_lo_mul_U13 ( .A(inv_qx_mul_lo_mul_n5), .B(
        inv_qx_mul_lo_mul_n9), .Z(inv_qx_mul_lo_mul_port_o_0[0]) );
  NAND2_X1 inv_qx_mul_lo_mul_U12 ( .A1(inv_al[1]), .A2(inv_dl[1]), .ZN(
        inv_qx_mul_lo_mul_n3) );
  NAND2_X1 inv_qx_mul_lo_mul_U11 ( .A1(linMap_port_o_4[1]), .A2(
        inv_dx_inv_port_o_0[1]), .ZN(inv_qx_mul_lo_mul_n8) );
  XOR2_X1 inv_qx_mul_lo_mul_U10 ( .A(inv_qx_mul_lo_mul_n3), .B(
        inv_qx_mul_lo_mul_n8), .Z(inv_qx_mul_lo_mul_port_o_0[1]) );
  NAND2_X1 inv_qx_mul_lo_mul_U9 ( .A1(inv_al[2]), .A2(inv_dl[2]), .ZN(
        inv_qx_mul_lo_mul_n1) );
  NAND2_X1 inv_qx_mul_lo_mul_U8 ( .A1(linMap_port_o_4[2]), .A2(
        inv_dx_inv_port_o_0[2]), .ZN(inv_qx_mul_lo_mul_n7) );
  XOR2_X1 inv_qx_mul_lo_mul_U7 ( .A(inv_qx_mul_lo_mul_n1), .B(
        inv_qx_mul_lo_mul_n7), .Z(inv_qx_mul_lo_mul_port_o_0[2]) );
  NAND2_X1 inv_qx_mul_lo_mul_U6 ( .A1(linMap_port_o_5[0]), .A2(
        inv_dx_inv_port_o_1[0]), .ZN(inv_qx_mul_lo_mul_n6) );
  XOR2_X1 inv_qx_mul_lo_mul_U5 ( .A(inv_qx_mul_lo_mul_n5), .B(
        inv_qx_mul_lo_mul_n6), .Z(inv_qx_mul_lo_mul_port_o_1[0]) );
  NAND2_X1 inv_qx_mul_lo_mul_U4 ( .A1(linMap_port_o_5[1]), .A2(
        inv_dx_inv_port_o_1[1]), .ZN(inv_qx_mul_lo_mul_n4) );
  XOR2_X1 inv_qx_mul_lo_mul_U3 ( .A(inv_qx_mul_lo_mul_n3), .B(
        inv_qx_mul_lo_mul_n4), .Z(inv_qx_mul_lo_mul_port_o_1[1]) );
  NAND2_X1 inv_qx_mul_lo_mul_U2 ( .A1(linMap_port_o_5[2]), .A2(
        inv_dx_inv_port_o_1[2]), .ZN(inv_qx_mul_lo_mul_n2) );
  XOR2_X1 inv_qx_mul_lo_mul_U1 ( .A(inv_qx_mul_lo_mul_n1), .B(
        inv_qx_mul_lo_mul_n2), .Z(inv_qx_mul_lo_mul_port_o_1[2]) );
  NAND2_X1 inv_qx_mul_sum_mul_U15 ( .A1(inv_sax_0[0]), .A2(inv_sdx_0[0]), .ZN(
        inv_qx_mul_sum_mul_n5) );
  NAND2_X1 inv_qx_mul_sum_mul_U14 ( .A1(inv_sax_1[0]), .A2(inv_sdx_1[0]), .ZN(
        inv_qx_mul_sum_mul_n9) );
  XOR2_X1 inv_qx_mul_sum_mul_U13 ( .A(inv_qx_mul_sum_mul_n5), .B(
        inv_qx_mul_sum_mul_n9), .Z(inv_qx_mul_sum_mul_port_o_0[0]) );
  NAND2_X1 inv_qx_mul_sum_mul_U12 ( .A1(inv_sax_0[1]), .A2(inv_sdx_0[1]), .ZN(
        inv_qx_mul_sum_mul_n3) );
  NAND2_X1 inv_qx_mul_sum_mul_U11 ( .A1(inv_sax_1[1]), .A2(inv_sdx_1[1]), .ZN(
        inv_qx_mul_sum_mul_n8) );
  XOR2_X1 inv_qx_mul_sum_mul_U10 ( .A(inv_qx_mul_sum_mul_n3), .B(
        inv_qx_mul_sum_mul_n8), .Z(inv_qx_mul_sum_mul_port_o_0[1]) );
  NAND2_X1 inv_qx_mul_sum_mul_U9 ( .A1(inv_sax_0[2]), .A2(inv_sdx_0[2]), .ZN(
        inv_qx_mul_sum_mul_n1) );
  NAND2_X1 inv_qx_mul_sum_mul_U8 ( .A1(inv_sax_1[2]), .A2(inv_sdx_1[2]), .ZN(
        inv_qx_mul_sum_mul_n7) );
  XOR2_X1 inv_qx_mul_sum_mul_U7 ( .A(inv_qx_mul_sum_mul_n1), .B(
        inv_qx_mul_sum_mul_n7), .Z(inv_qx_mul_sum_mul_port_o_0[2]) );
  NAND2_X1 inv_qx_mul_sum_mul_U6 ( .A1(inv_aa[0]), .A2(inv_dd[0]), .ZN(
        inv_qx_mul_sum_mul_n6) );
  XOR2_X1 inv_qx_mul_sum_mul_U5 ( .A(inv_qx_mul_sum_mul_n5), .B(
        inv_qx_mul_sum_mul_n6), .Z(inv_qx_mul_sum_mul_port_o_1[0]) );
  NAND2_X1 inv_qx_mul_sum_mul_U4 ( .A1(inv_aa[1]), .A2(inv_dd[1]), .ZN(
        inv_qx_mul_sum_mul_n4) );
  XOR2_X1 inv_qx_mul_sum_mul_U3 ( .A(inv_qx_mul_sum_mul_n3), .B(
        inv_qx_mul_sum_mul_n4), .Z(inv_qx_mul_sum_mul_port_o_1[1]) );
  NAND2_X1 inv_qx_mul_sum_mul_U2 ( .A1(inv_aa[2]), .A2(inv_dd[2]), .ZN(
        inv_qx_mul_sum_mul_n2) );
  XOR2_X1 inv_qx_mul_sum_mul_U1 ( .A(inv_qx_mul_sum_mul_n1), .B(
        inv_qx_mul_sum_mul_n2), .Z(inv_qx_mul_sum_mul_port_o_1[2]) );
  XOR2_X1 invLinMap_U33 ( .A(inv_port_o_3[2]), .B(inv_port_o_5[2]), .Z(
        port_o_7[2]) );
  XOR2_X1 invLinMap_U32 ( .A(inv_port_o_3[1]), .B(inv_port_o_5[1]), .Z(
        port_o_7[1]) );
  XOR2_X1 invLinMap_U31 ( .A(inv_port_o_5[1]), .B(inv_port_o_4[1]), .Z(
        invLinMap_n9) );
  XNOR2_X1 invLinMap_U30 ( .A(inv_port_o_1[1]), .B(invLinMap_n9), .ZN(
        port_o_1[1]) );
  XOR2_X1 invLinMap_U29 ( .A(inv_port_o_5[0]), .B(inv_port_o_4[0]), .Z(
        invLinMap_n8) );
  XNOR2_X1 invLinMap_U28 ( .A(inv_port_o_1[0]), .B(invLinMap_n8), .ZN(
        port_o_1[0]) );
  XOR2_X1 invLinMap_U27 ( .A(inv_port_o_3[0]), .B(inv_port_o_5[0]), .Z(
        port_o_7[0]) );
  XNOR2_X1 invLinMap_U26 ( .A(inv_port_o_3[2]), .B(inv_port_o_7[2]), .ZN(
        port_o_6[2]) );
  XNOR2_X1 invLinMap_U25 ( .A(inv_port_o_5[2]), .B(port_o_6[2]), .ZN(
        port_o_4[2]) );
  XNOR2_X1 invLinMap_U24 ( .A(inv_port_o_3[1]), .B(inv_port_o_7[1]), .ZN(
        port_o_6[1]) );
  XNOR2_X1 invLinMap_U23 ( .A(inv_port_o_5[1]), .B(port_o_6[1]), .ZN(
        port_o_4[1]) );
  XNOR2_X1 invLinMap_U22 ( .A(inv_port_o_3[0]), .B(inv_port_o_7[0]), .ZN(
        port_o_6[0]) );
  XNOR2_X1 invLinMap_U21 ( .A(inv_port_o_5[0]), .B(port_o_6[0]), .ZN(
        port_o_4[0]) );
  XOR2_X1 invLinMap_U20 ( .A(inv_port_o_5[2]), .B(inv_port_o_4[2]), .Z(
        invLinMap_n7) );
  XNOR2_X1 invLinMap_U19 ( .A(inv_port_o_1[2]), .B(invLinMap_n7), .ZN(
        port_o_1[2]) );
  XOR2_X1 invLinMap_U18 ( .A(inv_port_o_4[0]), .B(inv_port_o_6[0]), .Z(
        invLinMap_n3) );
  XNOR2_X1 invLinMap_U17 ( .A(inv_port_o_1[0]), .B(invLinMap_n3), .ZN(
        port_o_0[0]) );
  XOR2_X1 invLinMap_U16 ( .A(inv_port_o_4[1]), .B(inv_port_o_6[1]), .Z(
        invLinMap_n2) );
  XNOR2_X1 invLinMap_U15 ( .A(inv_port_o_1[1]), .B(invLinMap_n2), .ZN(
        port_o_0[1]) );
  XOR2_X1 invLinMap_U14 ( .A(inv_port_o_4[2]), .B(inv_port_o_6[2]), .Z(
        invLinMap_n1) );
  XNOR2_X1 invLinMap_U13 ( .A(inv_port_o_1[2]), .B(invLinMap_n1), .ZN(
        port_o_0[2]) );
  XNOR2_X1 invLinMap_U12 ( .A(inv_port_o_6[0]), .B(inv_port_o_0[0]), .ZN(
        port_o_5[0]) );
  XNOR2_X1 invLinMap_U11 ( .A(inv_port_o_2[0]), .B(port_o_5[0]), .ZN(
        invLinMap_n6) );
  XOR2_X1 invLinMap_U10 ( .A(port_o_7[0]), .B(invLinMap_n6), .Z(port_o_2[0])
         );
  XNOR2_X1 invLinMap_U9 ( .A(inv_port_o_6[1]), .B(inv_port_o_0[1]), .ZN(
        port_o_5[1]) );
  XNOR2_X1 invLinMap_U8 ( .A(inv_port_o_2[1]), .B(port_o_5[1]), .ZN(
        invLinMap_n5) );
  XOR2_X1 invLinMap_U7 ( .A(port_o_7[1]), .B(invLinMap_n5), .Z(port_o_2[1]) );
  XNOR2_X1 invLinMap_U6 ( .A(inv_port_o_6[2]), .B(inv_port_o_0[2]), .ZN(
        port_o_5[2]) );
  XNOR2_X1 invLinMap_U5 ( .A(inv_port_o_2[2]), .B(port_o_5[2]), .ZN(
        invLinMap_n4) );
  XOR2_X1 invLinMap_U4 ( .A(port_o_7[2]), .B(invLinMap_n4), .Z(port_o_2[2]) );
  XOR2_X1 invLinMap_U3 ( .A(port_o_4[0]), .B(invLinMap_n3), .Z(port_o_3[0]) );
  XOR2_X1 invLinMap_U2 ( .A(port_o_4[1]), .B(invLinMap_n2), .Z(port_o_3[1]) );
  XOR2_X1 invLinMap_U1 ( .A(port_o_4[2]), .B(invLinMap_n1), .Z(port_o_3[2]) );
endmodule

