// Generator : SpinalHDL v1.7.3    git head : aeaeece704fe43c766e0d36a93f2ecbb8a9f2003
// Component : Sbox_0123457689CDEFBA_3shares
// Git hash  : db593c14fe8e83f0a4a5d43cf13325e631d65148

`timescale 1ns/1ps

module Sbox_0123457689CDEFBA_3shares (
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
    y0_0 <= (((port_x0_1 ^ (port_x1_1 && port_x2_1)) ^ (port_x1_1 && port_x2_2)) ^ (port_x1_2 && port_x2_1));
    y0_1 <= (((port_x0_2 ^ (port_x1_0 && port_x2_2)) ^ (port_x1_2 && port_x2_0)) ^ (port_x1_2 && port_x2_2));
    y0_2 <= (((port_x0_0 ^ (port_x1_0 && port_x2_0)) ^ (port_x1_0 && port_x2_1)) ^ (port_x1_1 && port_x2_0));
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
