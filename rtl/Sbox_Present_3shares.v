// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : Sbox_Present_3shares
// Git hash  : db593c14fe8e83f0a4a5d43cf13325e631d65148

`timescale 1ns/1ps

module Sbox_Present_3shares (
  input               port_x0_0,
  input               port_x0_1,
  input               port_x0_2,
  input               port_x1_0,
  input               port_x1_1,
  input               port_x1_2,
  input               port_x2_0,
  input               port_x2_1,
  input               port_x2_2,
  input               port_x3_0,
  input               port_x3_1,
  input               port_x3_2,
  output              port_y0_0,
  output              port_y0_1,
  output              port_y0_2,
  output              port_y1_0,
  output              port_y1_1,
  output              port_y1_2,
  output              port_y2_0,
  output              port_y2_1,
  output              port_y2_2,
  output              port_y3_0,
  output              port_y3_1,
  output              port_y3_2,
  input               clk,
  input               reset
);

  wire                A_port_y0_0;
  wire                A_port_y0_1;
  wire                A_port_y0_2;
  wire                A_port_y1_0;
  wire                A_port_y1_1;
  wire                A_port_y1_2;
  wire                A_port_y2_0;
  wire                A_port_y2_1;
  wire                A_port_y2_2;
  wire                A_port_y3_0;
  wire                A_port_y3_1;
  wire                A_port_y3_2;
  wire                Q12_0_port_y0_0;
  wire                Q12_0_port_y0_1;
  wire                Q12_0_port_y0_2;
  wire                Q12_0_port_y1_0;
  wire                Q12_0_port_y1_1;
  wire                Q12_0_port_y1_2;
  wire                Q12_0_port_y2_0;
  wire                Q12_0_port_y2_1;
  wire                Q12_0_port_y2_2;
  wire                Q12_0_port_y3_0;
  wire                Q12_0_port_y3_1;
  wire                Q12_0_port_y3_2;
  wire                A_prime_port_y0_0;
  wire                A_prime_port_y0_1;
  wire                A_prime_port_y0_2;
  wire                A_prime_port_y1_0;
  wire                A_prime_port_y1_1;
  wire                A_prime_port_y1_2;
  wire                A_prime_port_y2_0;
  wire                A_prime_port_y2_1;
  wire                A_prime_port_y2_2;
  wire                A_prime_port_y3_0;
  wire                A_prime_port_y3_1;
  wire                A_prime_port_y3_2;
  wire                Q12_1_port_y0_0;
  wire                Q12_1_port_y0_1;
  wire                Q12_1_port_y0_2;
  wire                Q12_1_port_y1_0;
  wire                Q12_1_port_y1_1;
  wire                Q12_1_port_y1_2;
  wire                Q12_1_port_y2_0;
  wire                Q12_1_port_y2_1;
  wire                Q12_1_port_y2_2;
  wire                Q12_1_port_y3_0;
  wire                Q12_1_port_y3_1;
  wire                Q12_1_port_y3_2;
  wire                A_out_port_y0_0;
  wire                A_out_port_y0_1;
  wire                A_out_port_y0_2;
  wire                A_out_port_y1_0;
  wire                A_out_port_y1_1;
  wire                A_out_port_y1_2;
  wire                A_out_port_y2_0;
  wire                A_out_port_y2_1;
  wire                A_out_port_y2_2;
  wire                A_out_port_y3_0;
  wire                A_out_port_y3_1;
  wire                A_out_port_y3_2;

  LinearMapping_A_01AB892345EFCD67_3shares A (
    .port_x0_0 (port_x0_0  ), //i
    .port_x0_1 (port_x0_1  ), //i
    .port_x0_2 (port_x0_2  ), //i
    .port_x1_0 (port_x1_0  ), //i
    .port_x1_1 (port_x1_1  ), //i
    .port_x1_2 (port_x1_2  ), //i
    .port_x2_0 (port_x2_0  ), //i
    .port_x2_1 (port_x2_1  ), //i
    .port_x2_2 (port_x2_2  ), //i
    .port_x3_0 (port_x3_0  ), //i
    .port_x3_1 (port_x3_1  ), //i
    .port_x3_2 (port_x3_2  ), //i
    .port_y0_0 (A_port_y0_0), //o
    .port_y0_1 (A_port_y0_1), //o
    .port_y0_2 (A_port_y0_2), //o
    .port_y1_0 (A_port_y1_0), //o
    .port_y1_1 (A_port_y1_1), //o
    .port_y1_2 (A_port_y1_2), //o
    .port_y2_0 (A_port_y2_0), //o
    .port_y2_1 (A_port_y2_1), //o
    .port_y2_2 (A_port_y2_2), //o
    .port_y3_0 (A_port_y3_0), //o
    .port_y3_1 (A_port_y3_1), //o
    .port_y3_2 (A_port_y3_2)  //o
  );
  Sbox_0123456789CDEFAB_3shares Q12_0 (
    .port_x0_0 (A_port_y0_0    ), //i
    .port_x0_1 (A_port_y0_1    ), //i
    .port_x0_2 (A_port_y0_2    ), //i
    .port_x1_0 (A_port_y1_0    ), //i
    .port_x1_1 (A_port_y1_1    ), //i
    .port_x1_2 (A_port_y1_2    ), //i
    .port_x2_0 (A_port_y2_0    ), //i
    .port_x2_1 (A_port_y2_1    ), //i
    .port_x2_2 (A_port_y2_2    ), //i
    .port_x3_0 (A_port_y3_0    ), //i
    .port_x3_1 (A_port_y3_1    ), //i
    .port_x3_2 (A_port_y3_2    ), //i
    .port_y0_0 (Q12_0_port_y0_0), //o
    .port_y0_1 (Q12_0_port_y0_1), //o
    .port_y0_2 (Q12_0_port_y0_2), //o
    .port_y1_0 (Q12_0_port_y1_0), //o
    .port_y1_1 (Q12_0_port_y1_1), //o
    .port_y1_2 (Q12_0_port_y1_2), //o
    .port_y2_0 (Q12_0_port_y2_0), //o
    .port_y2_1 (Q12_0_port_y2_1), //o
    .port_y2_2 (Q12_0_port_y2_2), //o
    .port_y3_0 (Q12_0_port_y3_0), //o
    .port_y3_1 (Q12_0_port_y3_1), //o
    .port_y3_2 (Q12_0_port_y3_2), //o
    .clk       (clk            ), //i
    .reset     (reset          )  //i
  );
  LinearMapping_Aprime_0B835ED61A924FC7_3shares A_prime (
    .port_x0_0 (Q12_0_port_y0_0  ), //i
    .port_x0_1 (Q12_0_port_y0_1  ), //i
    .port_x0_2 (Q12_0_port_y0_2  ), //i
    .port_x1_0 (Q12_0_port_y1_0  ), //i
    .port_x1_1 (Q12_0_port_y1_1  ), //i
    .port_x1_2 (Q12_0_port_y1_2  ), //i
    .port_x2_0 (Q12_0_port_y2_0  ), //i
    .port_x2_1 (Q12_0_port_y2_1  ), //i
    .port_x2_2 (Q12_0_port_y2_2  ), //i
    .port_x3_0 (Q12_0_port_y3_0  ), //i
    .port_x3_1 (Q12_0_port_y3_1  ), //i
    .port_x3_2 (Q12_0_port_y3_2  ), //i
    .port_y0_0 (A_prime_port_y0_0), //o
    .port_y0_1 (A_prime_port_y0_1), //o
    .port_y0_2 (A_prime_port_y0_2), //o
    .port_y1_0 (A_prime_port_y1_0), //o
    .port_y1_1 (A_prime_port_y1_1), //o
    .port_y1_2 (A_prime_port_y1_2), //o
    .port_y2_0 (A_prime_port_y2_0), //o
    .port_y2_1 (A_prime_port_y2_1), //o
    .port_y2_2 (A_prime_port_y2_2), //o
    .port_y3_0 (A_prime_port_y3_0), //o
    .port_y3_1 (A_prime_port_y3_1), //o
    .port_y3_2 (A_prime_port_y3_2)  //o
  );
  Sbox_0123456789CDEFAB_3shares Q12_1 (
    .port_x0_0 (Q12_0_port_y0_0), //i
    .port_x0_1 (Q12_0_port_y0_1), //i
    .port_x0_2 (Q12_0_port_y0_2), //i
    .port_x1_0 (Q12_0_port_y1_0), //i
    .port_x1_1 (Q12_0_port_y1_1), //i
    .port_x1_2 (Q12_0_port_y1_2), //i
    .port_x2_0 (Q12_0_port_y2_0), //i
    .port_x2_1 (Q12_0_port_y2_1), //i
    .port_x2_2 (Q12_0_port_y2_2), //i
    .port_x3_0 (Q12_0_port_y3_0), //i
    .port_x3_1 (Q12_0_port_y3_1), //i
    .port_x3_2 (Q12_0_port_y3_2), //i
    .port_y0_0 (Q12_1_port_y0_0), //o
    .port_y0_1 (Q12_1_port_y0_1), //o
    .port_y0_2 (Q12_1_port_y0_2), //o
    .port_y1_0 (Q12_1_port_y1_0), //o
    .port_y1_1 (Q12_1_port_y1_1), //o
    .port_y1_2 (Q12_1_port_y1_2), //o
    .port_y2_0 (Q12_1_port_y2_0), //o
    .port_y2_1 (Q12_1_port_y2_1), //o
    .port_y2_2 (Q12_1_port_y2_2), //o
    .port_y3_0 (Q12_1_port_y3_0), //o
    .port_y3_1 (Q12_1_port_y3_1), //o
    .port_y3_2 (Q12_1_port_y3_2), //o
    .clk       (clk            ), //i
    .reset     (reset          )  //i
  );
  LinearMapping_Aprimeprime_C98D6327AFEB0541_3shares A_out (
    .port_x0_0 (Q12_1_port_y0_0), //i
    .port_x0_1 (Q12_1_port_y0_1), //i
    .port_x0_2 (Q12_1_port_y0_2), //i
    .port_x1_0 (Q12_1_port_y1_0), //i
    .port_x1_1 (Q12_1_port_y1_1), //i
    .port_x1_2 (Q12_1_port_y1_2), //i
    .port_x2_0 (Q12_1_port_y2_0), //i
    .port_x2_1 (Q12_1_port_y2_1), //i
    .port_x2_2 (Q12_1_port_y2_2), //i
    .port_x3_0 (Q12_1_port_y3_0), //i
    .port_x3_1 (Q12_1_port_y3_1), //i
    .port_x3_2 (Q12_1_port_y3_2), //i
    .port_y0_0 (A_out_port_y0_0), //o
    .port_y0_1 (A_out_port_y0_1), //o
    .port_y0_2 (A_out_port_y0_2), //o
    .port_y1_0 (A_out_port_y1_0), //o
    .port_y1_1 (A_out_port_y1_1), //o
    .port_y1_2 (A_out_port_y1_2), //o
    .port_y2_0 (A_out_port_y2_0), //o
    .port_y2_1 (A_out_port_y2_1), //o
    .port_y2_2 (A_out_port_y2_2), //o
    .port_y3_0 (A_out_port_y3_0), //o
    .port_y3_1 (A_out_port_y3_1), //o
    .port_y3_2 (A_out_port_y3_2)  //o
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

module LinearMapping_Aprimeprime_C98D6327AFEB0541_3shares (
  input               port_x0_0,
  input               port_x0_1,
  input               port_x0_2,
  input               port_x1_0,
  input               port_x1_1,
  input               port_x1_2,
  input               port_x2_0,
  input               port_x2_1,
  input               port_x2_2,
  input               port_x3_0,
  input               port_x3_1,
  input               port_x3_2,
  output              port_y0_0,
  output              port_y0_1,
  output              port_y0_2,
  output              port_y1_0,
  output              port_y1_1,
  output              port_y1_2,
  output              port_y2_0,
  output              port_y2_1,
  output              port_y2_2,
  output              port_y3_0,
  output              port_y3_1,
  output              port_y3_2
);

  wire                y0_0;
  wire                y0_1;
  wire                y0_2;
  wire                y1_0;
  wire                y1_1;
  wire                y1_2;
  wire                y2_0;
  wire                y2_1;
  wire                y2_2;
  wire                y3_0;
  wire                y3_1;
  wire                y3_2;

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

//Sbox_0123456789CDEFAB_3shares replaced by Sbox_0123456789CDEFAB_3shares

module LinearMapping_Aprime_0B835ED61A924FC7_3shares (
  input               port_x0_0,
  input               port_x0_1,
  input               port_x0_2,
  input               port_x1_0,
  input               port_x1_1,
  input               port_x1_2,
  input               port_x2_0,
  input               port_x2_1,
  input               port_x2_2,
  input               port_x3_0,
  input               port_x3_1,
  input               port_x3_2,
  output              port_y0_0,
  output              port_y0_1,
  output              port_y0_2,
  output              port_y1_0,
  output              port_y1_1,
  output              port_y1_2,
  output              port_y2_0,
  output              port_y2_1,
  output              port_y2_2,
  output              port_y3_0,
  output              port_y3_1,
  output              port_y3_2
);

  wire                y0_0;
  wire                y0_1;
  wire                y0_2;
  wire                y1_0;
  wire                y1_1;
  wire                y1_2;
  wire                y2_0;
  wire                y2_1;
  wire                y2_2;
  wire                y3_0;
  wire                y3_1;
  wire                y3_2;

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

module Sbox_0123456789CDEFAB_3shares (
  input               port_x0_0,
  input               port_x0_1,
  input               port_x0_2,
  input               port_x1_0,
  input               port_x1_1,
  input               port_x1_2,
  input               port_x2_0,
  input               port_x2_1,
  input               port_x2_2,
  input               port_x3_0,
  input               port_x3_1,
  input               port_x3_2,
  output              port_y0_0,
  output              port_y0_1,
  output              port_y0_2,
  output              port_y1_0,
  output              port_y1_1,
  output              port_y1_2,
  output              port_y2_0,
  output              port_y2_1,
  output              port_y2_2,
  output              port_y3_0,
  output              port_y3_1,
  output              port_y3_2,
  input               clk,
  input               reset
);

  reg                 y0_0;
  reg                 y0_1;
  reg                 y0_2;
  reg                 y1_0;
  reg                 y1_1;
  reg                 y1_2;
  reg                 y2_0;
  reg                 y2_1;
  reg                 y2_2;
  reg                 y3_0;
  reg                 y3_1;
  reg                 y3_2;

  assign port_y0_0 = y0_0;
  assign port_y0_1 = y0_1;
  assign port_y0_2 = y0_2;
  assign port_y1_0 = y1_0;
  assign port_y1_1 = y1_1;
  assign port_y1_2 = y1_2;
  assign port_y2_0 = y2_0;
  assign port_y2_1 = y2_1;
  assign port_y2_2 = y2_2;
  assign port_y3_0 = y3_0;
  assign port_y3_1 = y3_1;
  assign port_y3_2 = y3_2;
  always @(posedge clk) begin
    y0_0 <= port_x0_1;
    y0_1 <= port_x0_2;
    y0_2 <= port_x0_0;
    y1_0 <= ((((((port_x1_1 ^ (port_x1_1 && port_x3_1)) ^ (port_x1_1 && port_x3_2)) ^ (port_x1_2 && port_x3_1)) ^ (port_x2_1 && port_x3_1)) ^ (port_x2_1 && port_x3_2)) ^ (port_x2_2 && port_x3_1));
    y1_1 <= ((((((port_x1_2 ^ (port_x1_0 && port_x3_2)) ^ (port_x1_2 && port_x3_0)) ^ (port_x1_2 && port_x3_2)) ^ (port_x2_0 && port_x3_2)) ^ (port_x2_2 && port_x3_0)) ^ (port_x2_2 && port_x3_2));
    y1_2 <= ((((((port_x1_0 ^ (port_x1_0 && port_x3_0)) ^ (port_x1_0 && port_x3_1)) ^ (port_x1_1 && port_x3_0)) ^ (port_x2_0 && port_x3_0)) ^ (port_x2_0 && port_x3_1)) ^ (port_x2_1 && port_x3_0));
    y2_0 <= (((port_x2_1 ^ (port_x1_1 && port_x3_1)) ^ (port_x1_1 && port_x3_2)) ^ (port_x1_2 && port_x3_1));
    y2_1 <= (((port_x2_2 ^ (port_x1_0 && port_x3_2)) ^ (port_x1_2 && port_x3_0)) ^ (port_x1_2 && port_x3_2));
    y2_2 <= (((port_x2_0 ^ (port_x1_0 && port_x3_0)) ^ (port_x1_0 && port_x3_1)) ^ (port_x1_1 && port_x3_0));
    y3_0 <= port_x3_1;
    y3_1 <= port_x3_2;
    y3_2 <= port_x3_0;
  end


endmodule

module LinearMapping_A_01AB892345EFCD67_3shares (
  input               port_x0_0,
  input               port_x0_1,
  input               port_x0_2,
  input               port_x1_0,
  input               port_x1_1,
  input               port_x1_2,
  input               port_x2_0,
  input               port_x2_1,
  input               port_x2_2,
  input               port_x3_0,
  input               port_x3_1,
  input               port_x3_2,
  output              port_y0_0,
  output              port_y0_1,
  output              port_y0_2,
  output              port_y1_0,
  output              port_y1_1,
  output              port_y1_2,
  output              port_y2_0,
  output              port_y2_1,
  output              port_y2_2,
  output              port_y3_0,
  output              port_y3_1,
  output              port_y3_2
);

  wire                y0_0;
  wire                y0_1;
  wire                y0_2;
  wire                y1_0;
  wire                y1_1;
  wire                y1_2;
  wire                y2_0;
  wire                y2_1;
  wire                y2_2;
  wire                y3_0;
  wire                y3_1;
  wire                y3_2;

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
