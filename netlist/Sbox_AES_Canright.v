/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Jan 19 13:37:01 2024
/////////////////////////////////////////////////////////////


module Sbox_AES_Canright ( port_i_0, port_i_1, port_i_2, port_i_3, port_i_4, 
        port_i_5, port_i_6, port_i_7, port_o_0, port_o_1, port_o_2, port_o_3, 
        port_o_4, port_o_5, port_o_6, port_o_7 );
  input [0:0] port_i_0;
  input [0:0] port_i_1;
  input [0:0] port_i_2;
  input [0:0] port_i_3;
  input [0:0] port_i_4;
  input [0:0] port_i_5;
  input [0:0] port_i_6;
  input [0:0] port_i_7;
  output [0:0] port_o_0;
  output [0:0] port_o_1;
  output [0:0] port_o_2;
  output [0:0] port_o_3;
  output [0:0] port_o_4;
  output [0:0] port_o_5;
  output [0:0] port_o_6;
  output [0:0] port_o_7;
  wire   linMap_port_o_0_0_, linMap_port_o_1_0_, linMap_port_o_3_0_,
         linMap_port_o_4_0_, linMap_port_o_5_0_, linMap_port_o_6_0_,
         linMap_port_o_7_0_, inv_port_o_0_0_, inv_port_o_1_0_, inv_port_o_2_0_,
         inv_port_o_3_0_, inv_port_o_4_0_, inv_port_o_5_0_, inv_port_o_6_0_,
         inv_port_o_7_0_, linMap_n7, linMap_n6, linMap_n5, linMap_n4,
         linMap_n3, linMap_n2, linMap_n1, inv_dd_0_, inv_dh_0_, inv_dl_0_,
         inv_sdx_1_0_, inv_sdx_0_0_, inv_dx_inv_port_o_3_0_,
         inv_dx_inv_port_o_2_0_, inv_dx_inv_port_o_1_0_,
         inv_dx_inv_port_o_0_0_, inv_cx_3_0_, inv_cx_2_0_, inv_cx_1_0_,
         inv_cx_0_0_, inv_mul4_port_o_3_0_, inv_mul4_port_o_2_0_,
         inv_mul4_port_o_1_0_, inv_mul4_port_o_0_0_, inv_bb_0_, inv_bh_0_,
         inv_bl_0_, inv_sbx_1_0_, inv_sbx_0_0_, inv_aa_0_, inv_ah_0_,
         inv_al_0_, inv_sax_1_0_, inv_sax_0_0_, inv_sq_port_o_3_0_,
         inv_sq_port_o_2_0_, inv_sq_port_o_1_0_, inv_sq_port_o_0_0_,
         inv_sq_port_i_3_0_, inv_sq_port_i_2_0_, inv_sq_b_sq_port_o_0_0_,
         inv_mul4_sum_mul_port_o_1_0_, inv_mul4_sum_mul_port_o_0_0_,
         inv_mul4_lo_mul_port_o_1_0_, inv_mul4_lo_mul_port_o_0_0_,
         inv_mul4_hi_mul_port_o_1_0_, inv_mul4_hi_mul_port_o_0_0_,
         inv_mul4_hi_mul_n3, inv_mul4_hi_mul_n2, inv_mul4_hi_mul_n1,
         inv_mul4_lo_mul_n3, inv_mul4_lo_mul_n2, inv_mul4_lo_mul_n1,
         inv_mul4_sum_mul_n3, inv_mul4_sum_mul_n2, inv_mul4_sum_mul_n1,
         inv_dx_inv_sdx_0_, inv_dx_inv_dx_inv_port_o_1_0_,
         inv_dx_inv_dx_inv_port_o_0_0_, inv_dx_inv_sc_port_o_1_0_,
         inv_dx_inv_sc_port_o_0_0_, inv_dx_inv_sq_port_o_1_0_,
         inv_dx_inv_mul2_port_o_1_0_, inv_dx_inv_mul2_port_o_0_0_,
         inv_dx_inv_sbx_0_, inv_dx_inv_sax_0_, inv_dx_inv_mul2_n3,
         inv_dx_inv_mul2_n2, inv_dx_inv_mul2_n1, inv_dx_inv_px_mul_n3,
         inv_dx_inv_px_mul_n2, inv_dx_inv_px_mul_n1, inv_dx_inv_qx_mul_n3,
         inv_dx_inv_qx_mul_n2, inv_dx_inv_qx_mul_n1,
         inv_px_mul_sum_mul_port_o_1_0_, inv_px_mul_sum_mul_port_o_0_0_,
         inv_px_mul_lo_mul_port_o_1_0_, inv_px_mul_lo_mul_port_o_0_0_,
         inv_px_mul_hi_mul_port_o_1_0_, inv_px_mul_hi_mul_port_o_0_0_,
         inv_px_mul_hi_mul_n3, inv_px_mul_hi_mul_n2, inv_px_mul_hi_mul_n1,
         inv_px_mul_lo_mul_n3, inv_px_mul_lo_mul_n2, inv_px_mul_lo_mul_n1,
         inv_px_mul_sum_mul_n3, inv_px_mul_sum_mul_n2, inv_px_mul_sum_mul_n1,
         inv_qx_mul_sum_mul_port_o_1_0_, inv_qx_mul_sum_mul_port_o_0_0_,
         inv_qx_mul_lo_mul_port_o_1_0_, inv_qx_mul_lo_mul_port_o_0_0_,
         inv_qx_mul_hi_mul_port_o_1_0_, inv_qx_mul_hi_mul_port_o_0_0_,
         inv_qx_mul_hi_mul_n3, inv_qx_mul_hi_mul_n2, inv_qx_mul_hi_mul_n1,
         inv_qx_mul_lo_mul_n3, inv_qx_mul_lo_mul_n2, inv_qx_mul_lo_mul_n1,
         inv_qx_mul_sum_mul_n3, inv_qx_mul_sum_mul_n2, inv_qx_mul_sum_mul_n1,
         invLinMap_n3, invLinMap_n2, invLinMap_n1;

  XOR2_X1 linMap_U14 ( .A(port_i_0[0]), .B(port_i_6[0]), .Z(linMap_n3) );
  XOR2_X1 linMap_U13 ( .A(port_i_5[0]), .B(linMap_n3), .Z(linMap_port_o_1_0_)
         );
  XNOR2_X1 linMap_U12 ( .A(port_i_1[0]), .B(port_i_2[0]), .ZN(linMap_n7) );
  XNOR2_X1 linMap_U11 ( .A(linMap_n7), .B(linMap_n3), .ZN(linMap_n2) );
  XOR2_X1 linMap_U10 ( .A(port_i_3[0]), .B(linMap_n2), .Z(linMap_port_o_0_0_)
         );
  XOR2_X1 linMap_U9 ( .A(port_i_0[0]), .B(port_i_7[0]), .Z(linMap_n6) );
  XOR2_X1 linMap_U8 ( .A(port_i_4[0]), .B(linMap_n6), .Z(linMap_n4) );
  XOR2_X1 linMap_U7 ( .A(port_i_3[0]), .B(port_i_1[0]), .Z(linMap_n5) );
  XOR2_X1 linMap_U6 ( .A(linMap_n4), .B(linMap_n5), .Z(linMap_port_o_3_0_) );
  XOR2_X1 linMap_U5 ( .A(port_i_5[0]), .B(port_i_7[0]), .Z(linMap_n1) );
  XOR2_X1 linMap_U4 ( .A(linMap_n1), .B(linMap_n3), .Z(linMap_port_o_4_0_) );
  XOR2_X1 linMap_U3 ( .A(port_i_1[0]), .B(linMap_port_o_1_0_), .Z(
        linMap_port_o_5_0_) );
  XOR2_X1 linMap_U2 ( .A(port_i_4[0]), .B(linMap_port_o_1_0_), .Z(
        linMap_port_o_6_0_) );
  XOR2_X1 linMap_U1 ( .A(linMap_n1), .B(linMap_n2), .Z(linMap_port_o_7_0_) );
  XOR2_X1 inv_U23 ( .A(linMap_port_o_5_0_), .B(linMap_port_o_7_0_), .Z(
        inv_sax_1_0_) );
  XOR2_X1 inv_U22 ( .A(linMap_port_o_4_0_), .B(linMap_port_o_6_0_), .Z(
        inv_sax_0_0_) );
  XOR2_X1 inv_U21 ( .A(inv_sax_1_0_), .B(inv_sax_0_0_), .Z(inv_aa_0_) );
  XOR2_X1 inv_U20 ( .A(linMap_port_o_7_0_), .B(linMap_port_o_6_0_), .Z(
        inv_ah_0_) );
  XOR2_X1 inv_U19 ( .A(linMap_port_o_5_0_), .B(linMap_port_o_4_0_), .Z(
        inv_al_0_) );
  XOR2_X1 inv_U18 ( .A(linMap_port_o_1_0_), .B(linMap_port_o_3_0_), .Z(
        inv_sbx_1_0_) );
  XOR2_X1 inv_U17 ( .A(linMap_port_o_0_0_), .B(port_i_0[0]), .Z(inv_sbx_0_0_)
         );
  XOR2_X1 inv_U16 ( .A(inv_sbx_1_0_), .B(inv_sbx_0_0_), .Z(inv_bb_0_) );
  XOR2_X1 inv_U15 ( .A(linMap_port_o_3_0_), .B(port_i_0[0]), .Z(inv_bh_0_) );
  XOR2_X1 inv_U14 ( .A(linMap_port_o_1_0_), .B(linMap_port_o_0_0_), .Z(
        inv_bl_0_) );
  XOR2_X1 inv_U13 ( .A(inv_sq_port_o_0_0_), .B(inv_mul4_port_o_0_0_), .Z(
        inv_cx_0_0_) );
  XOR2_X1 inv_U12 ( .A(inv_sq_port_o_1_0_), .B(inv_mul4_port_o_1_0_), .Z(
        inv_cx_1_0_) );
  XOR2_X1 inv_U11 ( .A(inv_sq_port_o_2_0_), .B(inv_mul4_port_o_2_0_), .Z(
        inv_cx_2_0_) );
  XOR2_X1 inv_U10 ( .A(inv_sq_port_o_3_0_), .B(inv_mul4_port_o_3_0_), .Z(
        inv_cx_3_0_) );
  XOR2_X1 inv_U9 ( .A(inv_dx_inv_port_o_1_0_), .B(inv_dx_inv_port_o_3_0_), .Z(
        inv_sdx_1_0_) );
  XOR2_X1 inv_U8 ( .A(inv_dx_inv_port_o_0_0_), .B(inv_dx_inv_port_o_2_0_), .Z(
        inv_sdx_0_0_) );
  XOR2_X1 inv_U7 ( .A(inv_sdx_1_0_), .B(inv_sdx_0_0_), .Z(inv_dd_0_) );
  XOR2_X1 inv_U6 ( .A(inv_dx_inv_port_o_3_0_), .B(inv_dx_inv_port_o_2_0_), .Z(
        inv_dh_0_) );
  XOR2_X1 inv_U5 ( .A(inv_dx_inv_port_o_1_0_), .B(inv_dx_inv_port_o_0_0_), .Z(
        inv_dl_0_) );
  XOR2_X1 inv_U4 ( .A(linMap_port_o_4_0_), .B(linMap_port_o_0_0_), .Z(
        inv_sq_port_o_0_0_) );
  XOR2_X1 inv_U3 ( .A(linMap_port_o_5_0_), .B(linMap_port_o_1_0_), .Z(
        inv_sq_b_sq_port_o_0_0_) );
  XOR2_X1 inv_U2 ( .A(linMap_port_o_6_0_), .B(port_i_0[0]), .Z(
        inv_sq_port_i_2_0_) );
  XOR2_X1 inv_U1 ( .A(linMap_port_o_7_0_), .B(linMap_port_o_3_0_), .Z(
        inv_sq_port_i_3_0_) );
  XOR2_X1 inv_sq_U2 ( .A(inv_sq_port_i_2_0_), .B(inv_sq_port_o_0_0_), .Z(
        inv_sq_port_o_3_0_) );
  XOR2_X1 inv_sq_U1 ( .A(inv_sq_port_i_3_0_), .B(inv_sq_b_sq_port_o_0_0_), .Z(
        inv_sq_port_o_2_0_) );
  XOR2_X1 inv_sq_b_mulN2_U1 ( .A(inv_sq_port_o_0_0_), .B(
        inv_sq_b_sq_port_o_0_0_), .Z(inv_sq_port_o_1_0_) );
  XOR2_X1 inv_mul4_U4 ( .A(inv_mul4_sum_mul_port_o_0_0_), .B(
        inv_mul4_lo_mul_port_o_0_0_), .Z(inv_mul4_port_o_0_0_) );
  XOR2_X1 inv_mul4_U3 ( .A(inv_mul4_sum_mul_port_o_1_0_), .B(
        inv_mul4_lo_mul_port_o_1_0_), .Z(inv_mul4_port_o_1_0_) );
  XOR2_X1 inv_mul4_U2 ( .A(inv_mul4_sum_mul_port_o_0_0_), .B(
        inv_mul4_hi_mul_port_o_0_0_), .Z(inv_mul4_port_o_2_0_) );
  XOR2_X1 inv_mul4_U1 ( .A(inv_mul4_sum_mul_port_o_1_0_), .B(
        inv_mul4_hi_mul_port_o_1_0_), .Z(inv_mul4_port_o_3_0_) );
  NAND2_X1 inv_mul4_hi_mul_U5 ( .A1(inv_bh_0_), .A2(inv_ah_0_), .ZN(
        inv_mul4_hi_mul_n1) );
  NAND2_X1 inv_mul4_hi_mul_U4 ( .A1(port_i_0[0]), .A2(linMap_port_o_6_0_), 
        .ZN(inv_mul4_hi_mul_n3) );
  XOR2_X1 inv_mul4_hi_mul_U3 ( .A(inv_mul4_hi_mul_n1), .B(inv_mul4_hi_mul_n3), 
        .Z(inv_mul4_hi_mul_port_o_0_0_) );
  NAND2_X1 inv_mul4_hi_mul_U2 ( .A1(linMap_port_o_3_0_), .A2(
        linMap_port_o_7_0_), .ZN(inv_mul4_hi_mul_n2) );
  XOR2_X1 inv_mul4_hi_mul_U1 ( .A(inv_mul4_hi_mul_n1), .B(inv_mul4_hi_mul_n2), 
        .Z(inv_mul4_hi_mul_port_o_1_0_) );
  NAND2_X1 inv_mul4_lo_mul_U5 ( .A1(inv_bl_0_), .A2(inv_al_0_), .ZN(
        inv_mul4_lo_mul_n1) );
  NAND2_X1 inv_mul4_lo_mul_U4 ( .A1(linMap_port_o_0_0_), .A2(
        linMap_port_o_4_0_), .ZN(inv_mul4_lo_mul_n3) );
  XOR2_X1 inv_mul4_lo_mul_U3 ( .A(inv_mul4_lo_mul_n1), .B(inv_mul4_lo_mul_n3), 
        .Z(inv_mul4_lo_mul_port_o_0_0_) );
  NAND2_X1 inv_mul4_lo_mul_U2 ( .A1(linMap_port_o_1_0_), .A2(
        linMap_port_o_5_0_), .ZN(inv_mul4_lo_mul_n2) );
  XOR2_X1 inv_mul4_lo_mul_U1 ( .A(inv_mul4_lo_mul_n1), .B(inv_mul4_lo_mul_n2), 
        .Z(inv_mul4_lo_mul_port_o_1_0_) );
  NAND2_X1 inv_mul4_sum_mul_U5 ( .A1(inv_sbx_0_0_), .A2(inv_sax_0_0_), .ZN(
        inv_mul4_sum_mul_n1) );
  NAND2_X1 inv_mul4_sum_mul_U4 ( .A1(inv_sbx_1_0_), .A2(inv_sax_1_0_), .ZN(
        inv_mul4_sum_mul_n3) );
  XOR2_X1 inv_mul4_sum_mul_U3 ( .A(inv_mul4_sum_mul_n1), .B(
        inv_mul4_sum_mul_n3), .Z(inv_mul4_sum_mul_port_o_0_0_) );
  NAND2_X1 inv_mul4_sum_mul_U2 ( .A1(inv_bb_0_), .A2(inv_aa_0_), .ZN(
        inv_mul4_sum_mul_n2) );
  XOR2_X1 inv_mul4_sum_mul_U1 ( .A(inv_mul4_sum_mul_n1), .B(
        inv_mul4_sum_mul_n2), .Z(inv_mul4_sum_mul_port_o_1_0_) );
  XOR2_X1 inv_dx_inv_U7 ( .A(inv_dx_inv_sc_port_o_0_0_), .B(
        inv_dx_inv_mul2_port_o_0_0_), .Z(inv_dx_inv_dx_inv_port_o_1_0_) );
  XOR2_X1 inv_dx_inv_U6 ( .A(inv_dx_inv_sc_port_o_1_0_), .B(
        inv_dx_inv_mul2_port_o_1_0_), .Z(inv_dx_inv_dx_inv_port_o_0_0_) );
  XOR2_X1 inv_dx_inv_U5 ( .A(inv_cx_3_0_), .B(inv_cx_2_0_), .Z(
        inv_dx_inv_sax_0_) );
  XOR2_X1 inv_dx_inv_U4 ( .A(inv_cx_1_0_), .B(inv_cx_0_0_), .Z(
        inv_dx_inv_sbx_0_) );
  XOR2_X1 inv_dx_inv_U3 ( .A(inv_dx_inv_dx_inv_port_o_1_0_), .B(
        inv_dx_inv_dx_inv_port_o_0_0_), .Z(inv_dx_inv_sdx_0_) );
  XOR2_X1 inv_dx_inv_U2 ( .A(inv_cx_2_0_), .B(inv_cx_0_0_), .Z(
        inv_dx_inv_sq_port_o_1_0_) );
  XOR2_X1 inv_dx_inv_U1 ( .A(inv_cx_3_0_), .B(inv_cx_1_0_), .Z(
        inv_dx_inv_sc_port_o_1_0_) );
  NAND2_X1 inv_dx_inv_mul2_U5 ( .A1(inv_dx_inv_sbx_0_), .A2(inv_dx_inv_sax_0_), 
        .ZN(inv_dx_inv_mul2_n1) );
  NAND2_X1 inv_dx_inv_mul2_U4 ( .A1(inv_cx_0_0_), .A2(inv_cx_2_0_), .ZN(
        inv_dx_inv_mul2_n3) );
  XOR2_X1 inv_dx_inv_mul2_U3 ( .A(inv_dx_inv_mul2_n1), .B(inv_dx_inv_mul2_n3), 
        .Z(inv_dx_inv_mul2_port_o_0_0_) );
  NAND2_X1 inv_dx_inv_mul2_U2 ( .A1(inv_cx_1_0_), .A2(inv_cx_3_0_), .ZN(
        inv_dx_inv_mul2_n2) );
  XOR2_X1 inv_dx_inv_mul2_U1 ( .A(inv_dx_inv_mul2_n1), .B(inv_dx_inv_mul2_n2), 
        .Z(inv_dx_inv_mul2_port_o_1_0_) );
  XOR2_X1 inv_dx_inv_sc_U1 ( .A(inv_dx_inv_sc_port_o_1_0_), .B(
        inv_dx_inv_sq_port_o_1_0_), .Z(inv_dx_inv_sc_port_o_0_0_) );
  NAND2_X1 inv_dx_inv_px_mul_U5 ( .A1(inv_dx_inv_sbx_0_), .A2(
        inv_dx_inv_sdx_0_), .ZN(inv_dx_inv_px_mul_n1) );
  NAND2_X1 inv_dx_inv_px_mul_U4 ( .A1(inv_cx_0_0_), .A2(
        inv_dx_inv_dx_inv_port_o_0_0_), .ZN(inv_dx_inv_px_mul_n3) );
  XOR2_X1 inv_dx_inv_px_mul_U3 ( .A(inv_dx_inv_px_mul_n1), .B(
        inv_dx_inv_px_mul_n3), .Z(inv_dx_inv_port_o_2_0_) );
  NAND2_X1 inv_dx_inv_px_mul_U2 ( .A1(inv_cx_1_0_), .A2(
        inv_dx_inv_dx_inv_port_o_1_0_), .ZN(inv_dx_inv_px_mul_n2) );
  XOR2_X1 inv_dx_inv_px_mul_U1 ( .A(inv_dx_inv_px_mul_n1), .B(
        inv_dx_inv_px_mul_n2), .Z(inv_dx_inv_port_o_3_0_) );
  NAND2_X1 inv_dx_inv_qx_mul_U5 ( .A1(inv_dx_inv_sax_0_), .A2(
        inv_dx_inv_sdx_0_), .ZN(inv_dx_inv_qx_mul_n1) );
  NAND2_X1 inv_dx_inv_qx_mul_U4 ( .A1(inv_cx_2_0_), .A2(
        inv_dx_inv_dx_inv_port_o_0_0_), .ZN(inv_dx_inv_qx_mul_n3) );
  XOR2_X1 inv_dx_inv_qx_mul_U3 ( .A(inv_dx_inv_qx_mul_n1), .B(
        inv_dx_inv_qx_mul_n3), .Z(inv_dx_inv_port_o_0_0_) );
  NAND2_X1 inv_dx_inv_qx_mul_U2 ( .A1(inv_cx_3_0_), .A2(
        inv_dx_inv_dx_inv_port_o_1_0_), .ZN(inv_dx_inv_qx_mul_n2) );
  XOR2_X1 inv_dx_inv_qx_mul_U1 ( .A(inv_dx_inv_qx_mul_n1), .B(
        inv_dx_inv_qx_mul_n2), .Z(inv_dx_inv_port_o_1_0_) );
  XOR2_X1 inv_px_mul_U4 ( .A(inv_px_mul_sum_mul_port_o_0_0_), .B(
        inv_px_mul_lo_mul_port_o_0_0_), .Z(inv_port_o_4_0_) );
  XOR2_X1 inv_px_mul_U3 ( .A(inv_px_mul_sum_mul_port_o_1_0_), .B(
        inv_px_mul_lo_mul_port_o_1_0_), .Z(inv_port_o_5_0_) );
  XOR2_X1 inv_px_mul_U2 ( .A(inv_px_mul_sum_mul_port_o_0_0_), .B(
        inv_px_mul_hi_mul_port_o_0_0_), .Z(inv_port_o_6_0_) );
  XOR2_X1 inv_px_mul_U1 ( .A(inv_px_mul_sum_mul_port_o_1_0_), .B(
        inv_px_mul_hi_mul_port_o_1_0_), .Z(inv_port_o_7_0_) );
  NAND2_X1 inv_px_mul_hi_mul_U5 ( .A1(inv_bh_0_), .A2(inv_dh_0_), .ZN(
        inv_px_mul_hi_mul_n1) );
  NAND2_X1 inv_px_mul_hi_mul_U4 ( .A1(port_i_0[0]), .A2(inv_dx_inv_port_o_2_0_), .ZN(inv_px_mul_hi_mul_n3) );
  XOR2_X1 inv_px_mul_hi_mul_U3 ( .A(inv_px_mul_hi_mul_n1), .B(
        inv_px_mul_hi_mul_n3), .Z(inv_px_mul_hi_mul_port_o_0_0_) );
  NAND2_X1 inv_px_mul_hi_mul_U2 ( .A1(linMap_port_o_3_0_), .A2(
        inv_dx_inv_port_o_3_0_), .ZN(inv_px_mul_hi_mul_n2) );
  XOR2_X1 inv_px_mul_hi_mul_U1 ( .A(inv_px_mul_hi_mul_n1), .B(
        inv_px_mul_hi_mul_n2), .Z(inv_px_mul_hi_mul_port_o_1_0_) );
  NAND2_X1 inv_px_mul_lo_mul_U5 ( .A1(inv_bl_0_), .A2(inv_dl_0_), .ZN(
        inv_px_mul_lo_mul_n1) );
  NAND2_X1 inv_px_mul_lo_mul_U4 ( .A1(linMap_port_o_0_0_), .A2(
        inv_dx_inv_port_o_0_0_), .ZN(inv_px_mul_lo_mul_n3) );
  XOR2_X1 inv_px_mul_lo_mul_U3 ( .A(inv_px_mul_lo_mul_n1), .B(
        inv_px_mul_lo_mul_n3), .Z(inv_px_mul_lo_mul_port_o_0_0_) );
  NAND2_X1 inv_px_mul_lo_mul_U2 ( .A1(linMap_port_o_1_0_), .A2(
        inv_dx_inv_port_o_1_0_), .ZN(inv_px_mul_lo_mul_n2) );
  XOR2_X1 inv_px_mul_lo_mul_U1 ( .A(inv_px_mul_lo_mul_n1), .B(
        inv_px_mul_lo_mul_n2), .Z(inv_px_mul_lo_mul_port_o_1_0_) );
  NAND2_X1 inv_px_mul_sum_mul_U5 ( .A1(inv_sbx_0_0_), .A2(inv_sdx_0_0_), .ZN(
        inv_px_mul_sum_mul_n1) );
  NAND2_X1 inv_px_mul_sum_mul_U4 ( .A1(inv_sbx_1_0_), .A2(inv_sdx_1_0_), .ZN(
        inv_px_mul_sum_mul_n3) );
  XOR2_X1 inv_px_mul_sum_mul_U3 ( .A(inv_px_mul_sum_mul_n1), .B(
        inv_px_mul_sum_mul_n3), .Z(inv_px_mul_sum_mul_port_o_0_0_) );
  NAND2_X1 inv_px_mul_sum_mul_U2 ( .A1(inv_bb_0_), .A2(inv_dd_0_), .ZN(
        inv_px_mul_sum_mul_n2) );
  XOR2_X1 inv_px_mul_sum_mul_U1 ( .A(inv_px_mul_sum_mul_n1), .B(
        inv_px_mul_sum_mul_n2), .Z(inv_px_mul_sum_mul_port_o_1_0_) );
  XOR2_X1 inv_qx_mul_U4 ( .A(inv_qx_mul_sum_mul_port_o_0_0_), .B(
        inv_qx_mul_lo_mul_port_o_0_0_), .Z(inv_port_o_0_0_) );
  XOR2_X1 inv_qx_mul_U3 ( .A(inv_qx_mul_sum_mul_port_o_1_0_), .B(
        inv_qx_mul_lo_mul_port_o_1_0_), .Z(inv_port_o_1_0_) );
  XOR2_X1 inv_qx_mul_U2 ( .A(inv_qx_mul_sum_mul_port_o_0_0_), .B(
        inv_qx_mul_hi_mul_port_o_0_0_), .Z(inv_port_o_2_0_) );
  XOR2_X1 inv_qx_mul_U1 ( .A(inv_qx_mul_sum_mul_port_o_1_0_), .B(
        inv_qx_mul_hi_mul_port_o_1_0_), .Z(inv_port_o_3_0_) );
  NAND2_X1 inv_qx_mul_hi_mul_U5 ( .A1(inv_ah_0_), .A2(inv_dh_0_), .ZN(
        inv_qx_mul_hi_mul_n1) );
  NAND2_X1 inv_qx_mul_hi_mul_U4 ( .A1(linMap_port_o_6_0_), .A2(
        inv_dx_inv_port_o_2_0_), .ZN(inv_qx_mul_hi_mul_n3) );
  XOR2_X1 inv_qx_mul_hi_mul_U3 ( .A(inv_qx_mul_hi_mul_n1), .B(
        inv_qx_mul_hi_mul_n3), .Z(inv_qx_mul_hi_mul_port_o_0_0_) );
  NAND2_X1 inv_qx_mul_hi_mul_U2 ( .A1(linMap_port_o_7_0_), .A2(
        inv_dx_inv_port_o_3_0_), .ZN(inv_qx_mul_hi_mul_n2) );
  XOR2_X1 inv_qx_mul_hi_mul_U1 ( .A(inv_qx_mul_hi_mul_n1), .B(
        inv_qx_mul_hi_mul_n2), .Z(inv_qx_mul_hi_mul_port_o_1_0_) );
  NAND2_X1 inv_qx_mul_lo_mul_U5 ( .A1(inv_al_0_), .A2(inv_dl_0_), .ZN(
        inv_qx_mul_lo_mul_n1) );
  NAND2_X1 inv_qx_mul_lo_mul_U4 ( .A1(linMap_port_o_4_0_), .A2(
        inv_dx_inv_port_o_0_0_), .ZN(inv_qx_mul_lo_mul_n3) );
  XOR2_X1 inv_qx_mul_lo_mul_U3 ( .A(inv_qx_mul_lo_mul_n1), .B(
        inv_qx_mul_lo_mul_n3), .Z(inv_qx_mul_lo_mul_port_o_0_0_) );
  NAND2_X1 inv_qx_mul_lo_mul_U2 ( .A1(linMap_port_o_5_0_), .A2(
        inv_dx_inv_port_o_1_0_), .ZN(inv_qx_mul_lo_mul_n2) );
  XOR2_X1 inv_qx_mul_lo_mul_U1 ( .A(inv_qx_mul_lo_mul_n1), .B(
        inv_qx_mul_lo_mul_n2), .Z(inv_qx_mul_lo_mul_port_o_1_0_) );
  NAND2_X1 inv_qx_mul_sum_mul_U5 ( .A1(inv_sax_0_0_), .A2(inv_sdx_0_0_), .ZN(
        inv_qx_mul_sum_mul_n1) );
  NAND2_X1 inv_qx_mul_sum_mul_U4 ( .A1(inv_sax_1_0_), .A2(inv_sdx_1_0_), .ZN(
        inv_qx_mul_sum_mul_n3) );
  XOR2_X1 inv_qx_mul_sum_mul_U3 ( .A(inv_qx_mul_sum_mul_n1), .B(
        inv_qx_mul_sum_mul_n3), .Z(inv_qx_mul_sum_mul_port_o_0_0_) );
  NAND2_X1 inv_qx_mul_sum_mul_U2 ( .A1(inv_aa_0_), .A2(inv_dd_0_), .ZN(
        inv_qx_mul_sum_mul_n2) );
  XOR2_X1 inv_qx_mul_sum_mul_U1 ( .A(inv_qx_mul_sum_mul_n1), .B(
        inv_qx_mul_sum_mul_n2), .Z(inv_qx_mul_sum_mul_port_o_1_0_) );
  XOR2_X1 invLinMap_U11 ( .A(inv_port_o_3_0_), .B(inv_port_o_5_0_), .Z(
        port_o_7[0]) );
  XNOR2_X1 invLinMap_U10 ( .A(inv_port_o_3_0_), .B(inv_port_o_7_0_), .ZN(
        port_o_6[0]) );
  XNOR2_X1 invLinMap_U9 ( .A(inv_port_o_5_0_), .B(port_o_6[0]), .ZN(
        port_o_4[0]) );
  XOR2_X1 invLinMap_U8 ( .A(inv_port_o_5_0_), .B(inv_port_o_4_0_), .Z(
        invLinMap_n3) );
  XNOR2_X1 invLinMap_U7 ( .A(inv_port_o_1_0_), .B(invLinMap_n3), .ZN(
        port_o_1[0]) );
  XOR2_X1 invLinMap_U6 ( .A(inv_port_o_4_0_), .B(inv_port_o_6_0_), .Z(
        invLinMap_n1) );
  XNOR2_X1 invLinMap_U5 ( .A(inv_port_o_1_0_), .B(invLinMap_n1), .ZN(
        port_o_0[0]) );
  XNOR2_X1 invLinMap_U4 ( .A(inv_port_o_6_0_), .B(inv_port_o_0_0_), .ZN(
        port_o_5[0]) );
  XNOR2_X1 invLinMap_U3 ( .A(inv_port_o_2_0_), .B(port_o_5[0]), .ZN(
        invLinMap_n2) );
  XOR2_X1 invLinMap_U2 ( .A(port_o_7[0]), .B(invLinMap_n2), .Z(port_o_2[0]) );
  XOR2_X1 invLinMap_U1 ( .A(port_o_4[0]), .B(invLinMap_n1), .Z(port_o_3[0]) );
endmodule

