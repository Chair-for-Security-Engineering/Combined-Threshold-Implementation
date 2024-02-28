// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : Sbox_Present_3shares_3replications
// Git hash  : db593c14fe8e83f0a4a5d43cf13325e631d65148

`timescale 1ns/1ps

module Sbox_Present_3shares_3replications (
  input      [2:0]    port_x0_0,
  input      [2:0]    port_x0_1,
  input      [2:0]    port_x0_2,
  input      [2:0]    port_x1_0,
  input      [2:0]    port_x1_1,
  input      [2:0]    port_x1_2,
  input      [2:0]    port_x2_0,
  input      [2:0]    port_x2_1,
  input      [2:0]    port_x2_2,
  input      [2:0]    port_x3_0,
  input      [2:0]    port_x3_1,
  input      [2:0]    port_x3_2,
  output     [2:0]    port_y0_0,
  output     [2:0]    port_y0_1,
  output     [2:0]    port_y0_2,
  output     [2:0]    port_y1_0,
  output     [2:0]    port_y1_1,
  output     [2:0]    port_y1_2,
  output     [2:0]    port_y2_0,
  output     [2:0]    port_y2_1,
  output     [2:0]    port_y2_2,
  output     [2:0]    port_y3_0,
  output     [2:0]    port_y3_1,
  output     [2:0]    port_y3_2,
  input               clk,
  input               reset
);

  wire       [2:0]    A_port_y0_0;
  wire       [2:0]    A_port_y0_1;
  wire       [2:0]    A_port_y0_2;
  wire       [2:0]    A_port_y1_0;
  wire       [2:0]    A_port_y1_1;
  wire       [2:0]    A_port_y1_2;
  wire       [2:0]    A_port_y2_0;
  wire       [2:0]    A_port_y2_1;
  wire       [2:0]    A_port_y2_2;
  wire       [2:0]    A_port_y3_0;
  wire       [2:0]    A_port_y3_1;
  wire       [2:0]    A_port_y3_2;
  wire       [2:0]    Q12_0_port_y0_0;
  wire       [2:0]    Q12_0_port_y0_1;
  wire       [2:0]    Q12_0_port_y0_2;
  wire       [2:0]    Q12_0_port_y1_0;
  wire       [2:0]    Q12_0_port_y1_1;
  wire       [2:0]    Q12_0_port_y1_2;
  wire       [2:0]    Q12_0_port_y2_0;
  wire       [2:0]    Q12_0_port_y2_1;
  wire       [2:0]    Q12_0_port_y2_2;
  wire       [2:0]    Q12_0_port_y3_0;
  wire       [2:0]    Q12_0_port_y3_1;
  wire       [2:0]    Q12_0_port_y3_2;
  wire       [2:0]    A_prime_port_y0_0;
  wire       [2:0]    A_prime_port_y0_1;
  wire       [2:0]    A_prime_port_y0_2;
  wire       [2:0]    A_prime_port_y1_0;
  wire       [2:0]    A_prime_port_y1_1;
  wire       [2:0]    A_prime_port_y1_2;
  wire       [2:0]    A_prime_port_y2_0;
  wire       [2:0]    A_prime_port_y2_1;
  wire       [2:0]    A_prime_port_y2_2;
  wire       [2:0]    A_prime_port_y3_0;
  wire       [2:0]    A_prime_port_y3_1;
  wire       [2:0]    A_prime_port_y3_2;
  wire       [2:0]    Q12_1_port_y0_0;
  wire       [2:0]    Q12_1_port_y0_1;
  wire       [2:0]    Q12_1_port_y0_2;
  wire       [2:0]    Q12_1_port_y1_0;
  wire       [2:0]    Q12_1_port_y1_1;
  wire       [2:0]    Q12_1_port_y1_2;
  wire       [2:0]    Q12_1_port_y2_0;
  wire       [2:0]    Q12_1_port_y2_1;
  wire       [2:0]    Q12_1_port_y2_2;
  wire       [2:0]    Q12_1_port_y3_0;
  wire       [2:0]    Q12_1_port_y3_1;
  wire       [2:0]    Q12_1_port_y3_2;
  wire       [2:0]    A_out_port_y0_0;
  wire       [2:0]    A_out_port_y0_1;
  wire       [2:0]    A_out_port_y0_2;
  wire       [2:0]    A_out_port_y1_0;
  wire       [2:0]    A_out_port_y1_1;
  wire       [2:0]    A_out_port_y1_2;
  wire       [2:0]    A_out_port_y2_0;
  wire       [2:0]    A_out_port_y2_1;
  wire       [2:0]    A_out_port_y2_2;
  wire       [2:0]    A_out_port_y3_0;
  wire       [2:0]    A_out_port_y3_1;
  wire       [2:0]    A_out_port_y3_2;

  LinearMapping_A_01AB892345EFCD67_3shares_3replications A (
    .port_x0_0 (port_x0_0[2:0]  ), //i
    .port_x0_1 (port_x0_1[2:0]  ), //i
    .port_x0_2 (port_x0_2[2:0]  ), //i
    .port_x1_0 (port_x1_0[2:0]  ), //i
    .port_x1_1 (port_x1_1[2:0]  ), //i
    .port_x1_2 (port_x1_2[2:0]  ), //i
    .port_x2_0 (port_x2_0[2:0]  ), //i
    .port_x2_1 (port_x2_1[2:0]  ), //i
    .port_x2_2 (port_x2_2[2:0]  ), //i
    .port_x3_0 (port_x3_0[2:0]  ), //i
    .port_x3_1 (port_x3_1[2:0]  ), //i
    .port_x3_2 (port_x3_2[2:0]  ), //i
    .port_y0_0 (A_port_y0_0[2:0]), //o
    .port_y0_1 (A_port_y0_1[2:0]), //o
    .port_y0_2 (A_port_y0_2[2:0]), //o
    .port_y1_0 (A_port_y1_0[2:0]), //o
    .port_y1_1 (A_port_y1_1[2:0]), //o
    .port_y1_2 (A_port_y1_2[2:0]), //o
    .port_y2_0 (A_port_y2_0[2:0]), //o
    .port_y2_1 (A_port_y2_1[2:0]), //o
    .port_y2_2 (A_port_y2_2[2:0]), //o
    .port_y3_0 (A_port_y3_0[2:0]), //o
    .port_y3_1 (A_port_y3_1[2:0]), //o
    .port_y3_2 (A_port_y3_2[2:0])  //o
  );
  Sbox_0123456789CDEFAB_3shares_3replications Q12_0 (
    .port_x0_0 (A_port_y0_0[2:0]    ), //i
    .port_x0_1 (A_port_y0_1[2:0]    ), //i
    .port_x0_2 (A_port_y0_2[2:0]    ), //i
    .port_x1_0 (A_port_y1_0[2:0]    ), //i
    .port_x1_1 (A_port_y1_1[2:0]    ), //i
    .port_x1_2 (A_port_y1_2[2:0]    ), //i
    .port_x2_0 (A_port_y2_0[2:0]    ), //i
    .port_x2_1 (A_port_y2_1[2:0]    ), //i
    .port_x2_2 (A_port_y2_2[2:0]    ), //i
    .port_x3_0 (A_port_y3_0[2:0]    ), //i
    .port_x3_1 (A_port_y3_1[2:0]    ), //i
    .port_x3_2 (A_port_y3_2[2:0]    ), //i
    .port_y0_0 (Q12_0_port_y0_0[2:0]), //o
    .port_y0_1 (Q12_0_port_y0_1[2:0]), //o
    .port_y0_2 (Q12_0_port_y0_2[2:0]), //o
    .port_y1_0 (Q12_0_port_y1_0[2:0]), //o
    .port_y1_1 (Q12_0_port_y1_1[2:0]), //o
    .port_y1_2 (Q12_0_port_y1_2[2:0]), //o
    .port_y2_0 (Q12_0_port_y2_0[2:0]), //o
    .port_y2_1 (Q12_0_port_y2_1[2:0]), //o
    .port_y2_2 (Q12_0_port_y2_2[2:0]), //o
    .port_y3_0 (Q12_0_port_y3_0[2:0]), //o
    .port_y3_1 (Q12_0_port_y3_1[2:0]), //o
    .port_y3_2 (Q12_0_port_y3_2[2:0]), //o
    .clk       (clk                 ), //i
    .reset     (reset               )  //i
  );
  LinearMapping_Aprime_0B835ED61A924FC7_3shares_3replications A_prime (
    .port_x0_0 (Q12_0_port_y0_0[2:0]  ), //i
    .port_x0_1 (Q12_0_port_y0_1[2:0]  ), //i
    .port_x0_2 (Q12_0_port_y0_2[2:0]  ), //i
    .port_x1_0 (Q12_0_port_y1_0[2:0]  ), //i
    .port_x1_1 (Q12_0_port_y1_1[2:0]  ), //i
    .port_x1_2 (Q12_0_port_y1_2[2:0]  ), //i
    .port_x2_0 (Q12_0_port_y2_0[2:0]  ), //i
    .port_x2_1 (Q12_0_port_y2_1[2:0]  ), //i
    .port_x2_2 (Q12_0_port_y2_2[2:0]  ), //i
    .port_x3_0 (Q12_0_port_y3_0[2:0]  ), //i
    .port_x3_1 (Q12_0_port_y3_1[2:0]  ), //i
    .port_x3_2 (Q12_0_port_y3_2[2:0]  ), //i
    .port_y0_0 (A_prime_port_y0_0[2:0]), //o
    .port_y0_1 (A_prime_port_y0_1[2:0]), //o
    .port_y0_2 (A_prime_port_y0_2[2:0]), //o
    .port_y1_0 (A_prime_port_y1_0[2:0]), //o
    .port_y1_1 (A_prime_port_y1_1[2:0]), //o
    .port_y1_2 (A_prime_port_y1_2[2:0]), //o
    .port_y2_0 (A_prime_port_y2_0[2:0]), //o
    .port_y2_1 (A_prime_port_y2_1[2:0]), //o
    .port_y2_2 (A_prime_port_y2_2[2:0]), //o
    .port_y3_0 (A_prime_port_y3_0[2:0]), //o
    .port_y3_1 (A_prime_port_y3_1[2:0]), //o
    .port_y3_2 (A_prime_port_y3_2[2:0])  //o
  );
  Sbox_0123456789CDEFAB_3shares_3replications Q12_1 (
    .port_x0_0 (Q12_0_port_y0_0[2:0]), //i
    .port_x0_1 (Q12_0_port_y0_1[2:0]), //i
    .port_x0_2 (Q12_0_port_y0_2[2:0]), //i
    .port_x1_0 (Q12_0_port_y1_0[2:0]), //i
    .port_x1_1 (Q12_0_port_y1_1[2:0]), //i
    .port_x1_2 (Q12_0_port_y1_2[2:0]), //i
    .port_x2_0 (Q12_0_port_y2_0[2:0]), //i
    .port_x2_1 (Q12_0_port_y2_1[2:0]), //i
    .port_x2_2 (Q12_0_port_y2_2[2:0]), //i
    .port_x3_0 (Q12_0_port_y3_0[2:0]), //i
    .port_x3_1 (Q12_0_port_y3_1[2:0]), //i
    .port_x3_2 (Q12_0_port_y3_2[2:0]), //i
    .port_y0_0 (Q12_1_port_y0_0[2:0]), //o
    .port_y0_1 (Q12_1_port_y0_1[2:0]), //o
    .port_y0_2 (Q12_1_port_y0_2[2:0]), //o
    .port_y1_0 (Q12_1_port_y1_0[2:0]), //o
    .port_y1_1 (Q12_1_port_y1_1[2:0]), //o
    .port_y1_2 (Q12_1_port_y1_2[2:0]), //o
    .port_y2_0 (Q12_1_port_y2_0[2:0]), //o
    .port_y2_1 (Q12_1_port_y2_1[2:0]), //o
    .port_y2_2 (Q12_1_port_y2_2[2:0]), //o
    .port_y3_0 (Q12_1_port_y3_0[2:0]), //o
    .port_y3_1 (Q12_1_port_y3_1[2:0]), //o
    .port_y3_2 (Q12_1_port_y3_2[2:0]), //o
    .clk       (clk                 ), //i
    .reset     (reset               )  //i
  );
  LinearMapping_Aprimeprime_C98D6327AFEB0541_3shares_3replications A_out (
    .port_x0_0 (Q12_1_port_y0_0[2:0]), //i
    .port_x0_1 (Q12_1_port_y0_1[2:0]), //i
    .port_x0_2 (Q12_1_port_y0_2[2:0]), //i
    .port_x1_0 (Q12_1_port_y1_0[2:0]), //i
    .port_x1_1 (Q12_1_port_y1_1[2:0]), //i
    .port_x1_2 (Q12_1_port_y1_2[2:0]), //i
    .port_x2_0 (Q12_1_port_y2_0[2:0]), //i
    .port_x2_1 (Q12_1_port_y2_1[2:0]), //i
    .port_x2_2 (Q12_1_port_y2_2[2:0]), //i
    .port_x3_0 (Q12_1_port_y3_0[2:0]), //i
    .port_x3_1 (Q12_1_port_y3_1[2:0]), //i
    .port_x3_2 (Q12_1_port_y3_2[2:0]), //i
    .port_y0_0 (A_out_port_y0_0[2:0]), //o
    .port_y0_1 (A_out_port_y0_1[2:0]), //o
    .port_y0_2 (A_out_port_y0_2[2:0]), //o
    .port_y1_0 (A_out_port_y1_0[2:0]), //o
    .port_y1_1 (A_out_port_y1_1[2:0]), //o
    .port_y1_2 (A_out_port_y1_2[2:0]), //o
    .port_y2_0 (A_out_port_y2_0[2:0]), //o
    .port_y2_1 (A_out_port_y2_1[2:0]), //o
    .port_y2_2 (A_out_port_y2_2[2:0]), //o
    .port_y3_0 (A_out_port_y3_0[2:0]), //o
    .port_y3_1 (A_out_port_y3_1[2:0]), //o
    .port_y3_2 (A_out_port_y3_2[2:0])  //o
  );
  assign port_y0_0 = A_out_port_y0_0;
  assign port_y0_1 = A_out_port_y0_1;
  assign port_y0_2 = A_out_port_y0_2;
  assign port_y1_0 = A_out_port_y1_0;
  assign port_y1_1 = A_out_port_y1_1;
  assign port_y1_2 = A_out_port_y1_2;
  assign port_y2_0 = A_out_port_y2_0;
  assign port_y2_1 = A_out_port_y2_1;
  assign port_y2_2 = A_out_port_y2_2;
  assign port_y3_0 = A_out_port_y3_0;
  assign port_y3_1 = A_out_port_y3_1;
  assign port_y3_2 = A_out_port_y3_2;

endmodule

module LinearMapping_Aprimeprime_C98D6327AFEB0541_3shares_3replications (
  input      [2:0]    port_x0_0,
  input      [2:0]    port_x0_1,
  input      [2:0]    port_x0_2,
  input      [2:0]    port_x1_0,
  input      [2:0]    port_x1_1,
  input      [2:0]    port_x1_2,
  input      [2:0]    port_x2_0,
  input      [2:0]    port_x2_1,
  input      [2:0]    port_x2_2,
  input      [2:0]    port_x3_0,
  input      [2:0]    port_x3_1,
  input      [2:0]    port_x3_2,
  output     [2:0]    port_y0_0,
  output     [2:0]    port_y0_1,
  output     [2:0]    port_y0_2,
  output     [2:0]    port_y1_0,
  output     [2:0]    port_y1_1,
  output     [2:0]    port_y1_2,
  output     [2:0]    port_y2_0,
  output     [2:0]    port_y2_1,
  output     [2:0]    port_y2_2,
  output     [2:0]    port_y3_0,
  output     [2:0]    port_y3_1,
  output     [2:0]    port_y3_2
);

  wire       [2:0]    y0_0;
  wire       [2:0]    y0_1;
  wire       [2:0]    y0_2;
  wire       [2:0]    y1_0;
  wire       [2:0]    y1_1;
  wire       [2:0]    y1_2;
  wire       [2:0]    y2_0;
  wire       [2:0]    y2_1;
  wire       [2:0]    y2_2;
  wire       [2:0]    y3_0;
  wire       [2:0]    y3_1;
  wire       [2:0]    y3_2;

  assign y0_0 = port_x0_1;
  assign y0_1 = port_x0_2;
  assign y0_2 = port_x0_0;
  assign port_y0_0 = y0_0;
  assign port_y0_1 = y0_1;
  assign port_y0_2 = y0_2;
  assign y1_0 = (port_x2_1 ^ port_x3_1);
  assign y1_1 = (port_x2_2 ^ port_x3_2);
  assign y1_2 = (port_x2_0 ^ port_x3_0);
  assign port_y1_0 = y1_0;
  assign port_y1_1 = y1_1;
  assign port_y1_2 = y1_2;
  assign y2_0 = ((port_x0_1 ^ port_x1_1) ^ port_x3_1);
  assign y2_1 = ((port_x0_2 ^ port_x1_2) ^ port_x3_2);
  assign y2_2 = ((port_x0_0 ^ port_x1_0) ^ port_x3_0);
  assign port_y2_0 = y2_0;
  assign port_y2_1 = y2_1;
  assign port_y2_2 = y2_2;
  assign y3_0 = port_x2_1;
  assign y3_1 = port_x2_2;
  assign y3_2 = port_x2_0;
  assign port_y3_0 = y3_0;
  assign port_y3_1 = y3_1;
  assign port_y3_2 = y3_2;

endmodule

//Sbox_0123456789CDEFAB_3shares_3replications replaced by Sbox_0123456789CDEFAB_3shares_3replications

module LinearMapping_Aprime_0B835ED61A924FC7_3shares_3replications (
  input      [2:0]    port_x0_0,
  input      [2:0]    port_x0_1,
  input      [2:0]    port_x0_2,
  input      [2:0]    port_x1_0,
  input      [2:0]    port_x1_1,
  input      [2:0]    port_x1_2,
  input      [2:0]    port_x2_0,
  input      [2:0]    port_x2_1,
  input      [2:0]    port_x2_2,
  input      [2:0]    port_x3_0,
  input      [2:0]    port_x3_1,
  input      [2:0]    port_x3_2,
  output     [2:0]    port_y0_0,
  output     [2:0]    port_y0_1,
  output     [2:0]    port_y0_2,
  output     [2:0]    port_y1_0,
  output     [2:0]    port_y1_1,
  output     [2:0]    port_y1_2,
  output     [2:0]    port_y2_0,
  output     [2:0]    port_y2_1,
  output     [2:0]    port_y2_2,
  output     [2:0]    port_y3_0,
  output     [2:0]    port_y3_1,
  output     [2:0]    port_y3_2
);

  wire       [2:0]    y0_0;
  wire       [2:0]    y0_1;
  wire       [2:0]    y0_2;
  wire       [2:0]    y1_0;
  wire       [2:0]    y1_1;
  wire       [2:0]    y1_2;
  wire       [2:0]    y2_0;
  wire       [2:0]    y2_1;
  wire       [2:0]    y2_2;
  wire       [2:0]    y3_0;
  wire       [2:0]    y3_1;
  wire       [2:0]    y3_2;

  assign y0_0 = ((port_x0_1 ^ port_x2_1) ^ port_x3_1);
  assign y0_1 = ((port_x0_2 ^ port_x2_2) ^ port_x3_2);
  assign y0_2 = ((port_x0_0 ^ port_x2_0) ^ port_x3_0);
  assign port_y0_0 = y0_0;
  assign port_y0_1 = y0_1;
  assign port_y0_2 = y0_2;
  assign y1_0 = port_x0_1;
  assign y1_1 = port_x0_2;
  assign y1_2 = port_x0_0;
  assign port_y1_0 = y1_0;
  assign port_y1_1 = y1_1;
  assign port_y1_2 = y1_2;
  assign y2_0 = port_x2_1;
  assign y2_1 = port_x2_2;
  assign y2_2 = port_x2_0;
  assign port_y2_0 = y2_0;
  assign port_y2_1 = y2_1;
  assign port_y2_2 = y2_2;
  assign y3_0 = (port_x0_1 ^ port_x1_1);
  assign y3_1 = (port_x0_2 ^ port_x1_2);
  assign y3_2 = (port_x0_0 ^ port_x1_0);
  assign port_y3_0 = y3_0;
  assign port_y3_1 = y3_1;
  assign port_y3_2 = y3_2;

endmodule

module Sbox_0123456789CDEFAB_3shares_3replications (
  input      [2:0]    port_x0_0,
  input      [2:0]    port_x0_1,
  input      [2:0]    port_x0_2,
  input      [2:0]    port_x1_0,
  input      [2:0]    port_x1_1,
  input      [2:0]    port_x1_2,
  input      [2:0]    port_x2_0,
  input      [2:0]    port_x2_1,
  input      [2:0]    port_x2_2,
  input      [2:0]    port_x3_0,
  input      [2:0]    port_x3_1,
  input      [2:0]    port_x3_2,
  output     [2:0]    port_y0_0,
  output     [2:0]    port_y0_1,
  output     [2:0]    port_y0_2,
  output     [2:0]    port_y1_0,
  output     [2:0]    port_y1_1,
  output     [2:0]    port_y1_2,
  output     [2:0]    port_y2_0,
  output     [2:0]    port_y2_1,
  output     [2:0]    port_y2_2,
  output     [2:0]    port_y3_0,
  output     [2:0]    port_y3_1,
  output     [2:0]    port_y3_2,
  input               clk,
  input               reset
);

  wire                maj_36_port_o;
  wire                maj_37_port_o;
  wire                maj_38_port_o;
  wire                maj_39_port_o;
  wire                maj_40_port_o;
  wire                maj_41_port_o;
  wire                maj_42_port_o;
  wire                maj_43_port_o;
  wire                maj_44_port_o;
  wire                maj_45_port_o;
  wire                maj_46_port_o;
  wire                maj_47_port_o;
  wire                maj_48_port_o;
  wire                maj_49_port_o;
  wire                maj_50_port_o;
  wire                maj_51_port_o;
  wire                maj_52_port_o;
  wire                maj_53_port_o;
  wire                t0_0_0;
  wire                t0_0_1;
  wire                t0_0_2;
  wire                t0_1_0;
  wire                t0_1_1;
  wire                t0_1_2;
  wire                t0_2_0;
  wire                t0_2_1;
  wire                t0_2_2;
  reg        [2:0]    reg_y0_0;
  reg        [2:0]    reg_y0_1;
  reg        [2:0]    reg_y0_2;
  wire                t1_0_0;
  wire                t1_0_1;
  wire                t1_0_2;
  wire                t1_1_0;
  wire                t1_1_1;
  wire                t1_1_2;
  wire                t1_2_0;
  wire                t1_2_1;
  wire                t1_2_2;
  reg        [2:0]    reg_y1_0;
  reg        [2:0]    reg_y1_1;
  reg        [2:0]    reg_y1_2;
  wire                t2_0_0;
  wire                t2_0_1;
  wire                t2_0_2;
  wire                t2_1_0;
  wire                t2_1_1;
  wire                t2_1_2;
  wire                t2_2_0;
  wire                t2_2_1;
  wire                t2_2_2;
  reg        [2:0]    reg_y2_0;
  reg        [2:0]    reg_y2_1;
  reg        [2:0]    reg_y2_2;
  wire                t3_0_0;
  wire                t3_0_1;
  wire                t3_0_2;
  wire                t3_1_0;
  wire                t3_1_1;
  wire                t3_1_2;
  wire                t3_2_0;
  wire                t3_2_1;
  wire                t3_2_2;
  reg        [2:0]    reg_y3_0;
  reg        [2:0]    reg_y3_1;
  reg        [2:0]    reg_y3_2;

  Maj maj_36 (
    .port_i_0 (t1_0_0       ), //i
    .port_i_1 (t1_0_1       ), //i
    .port_i_2 (t1_0_2       ), //i
    .port_o   (maj_36_port_o)  //o
  );
  Maj maj_37 (
    .port_i_0 (t1_1_0       ), //i
    .port_i_1 (t1_1_1       ), //i
    .port_i_2 (t1_1_2       ), //i
    .port_o   (maj_37_port_o)  //o
  );
  Maj maj_38 (
    .port_i_0 (t1_2_0       ), //i
    .port_i_1 (t1_2_1       ), //i
    .port_i_2 (t1_2_2       ), //i
    .port_o   (maj_38_port_o)  //o
  );
  Maj maj_39 (
    .port_i_0 (t1_0_0       ), //i
    .port_i_1 (t1_0_1       ), //i
    .port_i_2 (t1_0_2       ), //i
    .port_o   (maj_39_port_o)  //o
  );
  Maj maj_40 (
    .port_i_0 (t1_1_0       ), //i
    .port_i_1 (t1_1_1       ), //i
    .port_i_2 (t1_1_2       ), //i
    .port_o   (maj_40_port_o)  //o
  );
  Maj maj_41 (
    .port_i_0 (t1_2_0       ), //i
    .port_i_1 (t1_2_1       ), //i
    .port_i_2 (t1_2_2       ), //i
    .port_o   (maj_41_port_o)  //o
  );
  Maj maj_42 (
    .port_i_0 (t1_0_0       ), //i
    .port_i_1 (t1_0_1       ), //i
    .port_i_2 (t1_0_2       ), //i
    .port_o   (maj_42_port_o)  //o
  );
  Maj maj_43 (
    .port_i_0 (t1_1_0       ), //i
    .port_i_1 (t1_1_1       ), //i
    .port_i_2 (t1_1_2       ), //i
    .port_o   (maj_43_port_o)  //o
  );
  Maj maj_44 (
    .port_i_0 (t1_2_0       ), //i
    .port_i_1 (t1_2_1       ), //i
    .port_i_2 (t1_2_2       ), //i
    .port_o   (maj_44_port_o)  //o
  );
  Maj maj_45 (
    .port_i_0 (t2_0_0       ), //i
    .port_i_1 (t2_0_1       ), //i
    .port_i_2 (t2_0_2       ), //i
    .port_o   (maj_45_port_o)  //o
  );
  Maj maj_46 (
    .port_i_0 (t2_1_0       ), //i
    .port_i_1 (t2_1_1       ), //i
    .port_i_2 (t2_1_2       ), //i
    .port_o   (maj_46_port_o)  //o
  );
  Maj maj_47 (
    .port_i_0 (t2_2_0       ), //i
    .port_i_1 (t2_2_1       ), //i
    .port_i_2 (t2_2_2       ), //i
    .port_o   (maj_47_port_o)  //o
  );
  Maj maj_48 (
    .port_i_0 (t2_0_0       ), //i
    .port_i_1 (t2_0_1       ), //i
    .port_i_2 (t2_0_2       ), //i
    .port_o   (maj_48_port_o)  //o
  );
  Maj maj_49 (
    .port_i_0 (t2_1_0       ), //i
    .port_i_1 (t2_1_1       ), //i
    .port_i_2 (t2_1_2       ), //i
    .port_o   (maj_49_port_o)  //o
  );
  Maj maj_50 (
    .port_i_0 (t2_2_0       ), //i
    .port_i_1 (t2_2_1       ), //i
    .port_i_2 (t2_2_2       ), //i
    .port_o   (maj_50_port_o)  //o
  );
  Maj maj_51 (
    .port_i_0 (t2_0_0       ), //i
    .port_i_1 (t2_0_1       ), //i
    .port_i_2 (t2_0_2       ), //i
    .port_o   (maj_51_port_o)  //o
  );
  Maj maj_52 (
    .port_i_0 (t2_1_0       ), //i
    .port_i_1 (t2_1_1       ), //i
    .port_i_2 (t2_1_2       ), //i
    .port_o   (maj_52_port_o)  //o
  );
  Maj maj_53 (
    .port_i_0 (t2_2_0       ), //i
    .port_i_1 (t2_2_1       ), //i
    .port_i_2 (t2_2_2       ), //i
    .port_o   (maj_53_port_o)  //o
  );
  assign t0_0_0 = port_x0_1[0];
  assign t0_1_0 = port_x0_2[0];
  assign t0_2_0 = port_x0_0[0];
  assign t0_0_1 = port_x0_1[1];
  assign t0_1_1 = port_x0_2[1];
  assign t0_2_1 = port_x0_0[1];
  assign t0_0_2 = port_x0_1[2];
  assign t0_1_2 = port_x0_2[2];
  assign t0_2_2 = port_x0_0[2];
  assign port_y0_0 = reg_y0_0;
  assign port_y0_1 = reg_y0_1;
  assign port_y0_2 = reg_y0_2;
  assign t1_0_0 = ((((((port_x1_1[0] ^ (port_x1_1[0] && port_x3_1[0])) ^ (port_x1_1[0] && port_x3_2[0])) ^ (port_x1_2[0] && port_x3_1[0])) ^ (port_x2_1[0] && port_x3_1[0])) ^ (port_x2_1[0] && port_x3_2[0])) ^ (port_x2_2[0] && port_x3_1[0]));
  assign t1_1_0 = ((((((port_x1_2[0] ^ (port_x1_0[0] && port_x3_2[0])) ^ (port_x1_2[0] && port_x3_0[0])) ^ (port_x1_2[0] && port_x3_2[0])) ^ (port_x2_0[0] && port_x3_2[0])) ^ (port_x2_2[0] && port_x3_0[0])) ^ (port_x2_2[0] && port_x3_2[0]));
  assign t1_2_0 = ((((((port_x1_0[0] ^ (port_x1_0[0] && port_x3_0[0])) ^ (port_x1_0[0] && port_x3_1[0])) ^ (port_x1_1[0] && port_x3_0[0])) ^ (port_x2_0[0] && port_x3_0[0])) ^ (port_x2_0[0] && port_x3_1[0])) ^ (port_x2_1[0] && port_x3_0[0]));
  assign t1_0_1 = ((((((port_x1_1[1] ^ (port_x1_1[1] && port_x3_1[1])) ^ (port_x1_1[1] && port_x3_2[1])) ^ (port_x1_2[1] && port_x3_1[1])) ^ (port_x2_1[1] && port_x3_1[1])) ^ (port_x2_1[1] && port_x3_2[1])) ^ (port_x2_2[1] && port_x3_1[1]));
  assign t1_1_1 = ((((((port_x1_2[1] ^ (port_x1_0[1] && port_x3_2[1])) ^ (port_x1_2[1] && port_x3_0[1])) ^ (port_x1_2[1] && port_x3_2[1])) ^ (port_x2_0[1] && port_x3_2[1])) ^ (port_x2_2[1] && port_x3_0[1])) ^ (port_x2_2[1] && port_x3_2[1]));
  assign t1_2_1 = ((((((port_x1_0[1] ^ (port_x1_0[1] && port_x3_0[1])) ^ (port_x1_0[1] && port_x3_1[1])) ^ (port_x1_1[1] && port_x3_0[1])) ^ (port_x2_0[1] && port_x3_0[1])) ^ (port_x2_0[1] && port_x3_1[1])) ^ (port_x2_1[1] && port_x3_0[1]));
  assign t1_0_2 = ((((((port_x1_1[2] ^ (port_x1_1[2] && port_x3_1[2])) ^ (port_x1_1[2] && port_x3_2[2])) ^ (port_x1_2[2] && port_x3_1[2])) ^ (port_x2_1[2] && port_x3_1[2])) ^ (port_x2_1[2] && port_x3_2[2])) ^ (port_x2_2[2] && port_x3_1[2]));
  assign t1_1_2 = ((((((port_x1_2[2] ^ (port_x1_0[2] && port_x3_2[2])) ^ (port_x1_2[2] && port_x3_0[2])) ^ (port_x1_2[2] && port_x3_2[2])) ^ (port_x2_0[2] && port_x3_2[2])) ^ (port_x2_2[2] && port_x3_0[2])) ^ (port_x2_2[2] && port_x3_2[2]));
  assign t1_2_2 = ((((((port_x1_0[2] ^ (port_x1_0[2] && port_x3_0[2])) ^ (port_x1_0[2] && port_x3_1[2])) ^ (port_x1_1[2] && port_x3_0[2])) ^ (port_x2_0[2] && port_x3_0[2])) ^ (port_x2_0[2] && port_x3_1[2])) ^ (port_x2_1[2] && port_x3_0[2]));
  assign port_y1_0 = reg_y1_0;
  assign port_y1_1 = reg_y1_1;
  assign port_y1_2 = reg_y1_2;
  assign t2_0_0 = (((port_x2_1[0] ^ (port_x1_1[0] && port_x3_1[0])) ^ (port_x1_1[0] && port_x3_2[0])) ^ (port_x1_2[0] && port_x3_1[0]));
  assign t2_1_0 = (((port_x2_2[0] ^ (port_x1_0[0] && port_x3_2[0])) ^ (port_x1_2[0] && port_x3_0[0])) ^ (port_x1_2[0] && port_x3_2[0]));
  assign t2_2_0 = (((port_x2_0[0] ^ (port_x1_0[0] && port_x3_0[0])) ^ (port_x1_0[0] && port_x3_1[0])) ^ (port_x1_1[0] && port_x3_0[0]));
  assign t2_0_1 = (((port_x2_1[1] ^ (port_x1_1[1] && port_x3_1[1])) ^ (port_x1_1[1] && port_x3_2[1])) ^ (port_x1_2[1] && port_x3_1[1]));
  assign t2_1_1 = (((port_x2_2[1] ^ (port_x1_0[1] && port_x3_2[1])) ^ (port_x1_2[1] && port_x3_0[1])) ^ (port_x1_2[1] && port_x3_2[1]));
  assign t2_2_1 = (((port_x2_0[1] ^ (port_x1_0[1] && port_x3_0[1])) ^ (port_x1_0[1] && port_x3_1[1])) ^ (port_x1_1[1] && port_x3_0[1]));
  assign t2_0_2 = (((port_x2_1[2] ^ (port_x1_1[2] && port_x3_1[2])) ^ (port_x1_1[2] && port_x3_2[2])) ^ (port_x1_2[2] && port_x3_1[2]));
  assign t2_1_2 = (((port_x2_2[2] ^ (port_x1_0[2] && port_x3_2[2])) ^ (port_x1_2[2] && port_x3_0[2])) ^ (port_x1_2[2] && port_x3_2[2]));
  assign t2_2_2 = (((port_x2_0[2] ^ (port_x1_0[2] && port_x3_0[2])) ^ (port_x1_0[2] && port_x3_1[2])) ^ (port_x1_1[2] && port_x3_0[2]));
  assign port_y2_0 = reg_y2_0;
  assign port_y2_1 = reg_y2_1;
  assign port_y2_2 = reg_y2_2;
  assign t3_0_0 = port_x3_1[0];
  assign t3_1_0 = port_x3_2[0];
  assign t3_2_0 = port_x3_0[0];
  assign t3_0_1 = port_x3_1[1];
  assign t3_1_1 = port_x3_2[1];
  assign t3_2_1 = port_x3_0[1];
  assign t3_0_2 = port_x3_1[2];
  assign t3_1_2 = port_x3_2[2];
  assign t3_2_2 = port_x3_0[2];
  assign port_y3_0 = reg_y3_0;
  assign port_y3_1 = reg_y3_1;
  assign port_y3_2 = reg_y3_2;
  always @(posedge clk) begin
    reg_y0_0[0] <= t0_0_0;
    reg_y0_1[0] <= t0_1_0;
    reg_y0_2[0] <= t0_2_0;
    reg_y0_0[1] <= t0_0_1;
    reg_y0_1[1] <= t0_1_1;
    reg_y0_2[1] <= t0_2_1;
    reg_y0_0[2] <= t0_0_2;
    reg_y0_1[2] <= t0_1_2;
    reg_y0_2[2] <= t0_2_2;
    reg_y1_0[0] <= maj_36_port_o;
    reg_y1_1[0] <= maj_37_port_o;
    reg_y1_2[0] <= maj_38_port_o;
    reg_y1_0[1] <= maj_39_port_o;
    reg_y1_1[1] <= maj_40_port_o;
    reg_y1_2[1] <= maj_41_port_o;
    reg_y1_0[2] <= maj_42_port_o;
    reg_y1_1[2] <= maj_43_port_o;
    reg_y1_2[2] <= maj_44_port_o;
    reg_y2_0[0] <= maj_45_port_o;
    reg_y2_1[0] <= maj_46_port_o;
    reg_y2_2[0] <= maj_47_port_o;
    reg_y2_0[1] <= maj_48_port_o;
    reg_y2_1[1] <= maj_49_port_o;
    reg_y2_2[1] <= maj_50_port_o;
    reg_y2_0[2] <= maj_51_port_o;
    reg_y2_1[2] <= maj_52_port_o;
    reg_y2_2[2] <= maj_53_port_o;
    reg_y3_0[0] <= t3_0_0;
    reg_y3_1[0] <= t3_1_0;
    reg_y3_2[0] <= t3_2_0;
    reg_y3_0[1] <= t3_0_1;
    reg_y3_1[1] <= t3_1_1;
    reg_y3_2[1] <= t3_2_1;
    reg_y3_0[2] <= t3_0_2;
    reg_y3_1[2] <= t3_1_2;
    reg_y3_2[2] <= t3_2_2;
  end


endmodule

module LinearMapping_A_01AB892345EFCD67_3shares_3replications (
  input      [2:0]    port_x0_0,
  input      [2:0]    port_x0_1,
  input      [2:0]    port_x0_2,
  input      [2:0]    port_x1_0,
  input      [2:0]    port_x1_1,
  input      [2:0]    port_x1_2,
  input      [2:0]    port_x2_0,
  input      [2:0]    port_x2_1,
  input      [2:0]    port_x2_2,
  input      [2:0]    port_x3_0,
  input      [2:0]    port_x3_1,
  input      [2:0]    port_x3_2,
  output     [2:0]    port_y0_0,
  output     [2:0]    port_y0_1,
  output     [2:0]    port_y0_2,
  output     [2:0]    port_y1_0,
  output     [2:0]    port_y1_1,
  output     [2:0]    port_y1_2,
  output     [2:0]    port_y2_0,
  output     [2:0]    port_y2_1,
  output     [2:0]    port_y2_2,
  output     [2:0]    port_y3_0,
  output     [2:0]    port_y3_1,
  output     [2:0]    port_y3_2
);

  wire       [2:0]    y0_0;
  wire       [2:0]    y0_1;
  wire       [2:0]    y0_2;
  wire       [2:0]    y1_0;
  wire       [2:0]    y1_1;
  wire       [2:0]    y1_2;
  wire       [2:0]    y2_0;
  wire       [2:0]    y2_1;
  wire       [2:0]    y2_2;
  wire       [2:0]    y3_0;
  wire       [2:0]    y3_1;
  wire       [2:0]    y3_2;

  assign y0_0 = port_x0_1;
  assign y0_1 = port_x0_2;
  assign y0_2 = port_x0_0;
  assign port_y0_0 = y0_0;
  assign port_y0_1 = y0_1;
  assign port_y0_2 = y0_2;
  assign y1_0 = port_x1_1;
  assign y1_1 = port_x1_2;
  assign y1_2 = port_x1_0;
  assign port_y1_0 = y1_0;
  assign port_y1_1 = y1_1;
  assign port_y1_2 = y1_2;
  assign y2_0 = port_x3_1;
  assign y2_1 = port_x3_2;
  assign y2_2 = port_x3_0;
  assign port_y2_0 = y2_0;
  assign port_y2_1 = y2_1;
  assign port_y2_2 = y2_2;
  assign y3_0 = (port_x1_1 ^ port_x2_1);
  assign y3_1 = (port_x1_2 ^ port_x2_2);
  assign y3_2 = (port_x1_0 ^ port_x2_0);
  assign port_y3_0 = y3_0;
  assign port_y3_1 = y3_1;
  assign port_y3_2 = y3_2;

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
