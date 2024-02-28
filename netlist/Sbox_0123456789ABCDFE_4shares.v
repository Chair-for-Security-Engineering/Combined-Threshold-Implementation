/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:10:16 2023
/////////////////////////////////////////////////////////////


module Sbox_0123456789ABCDFE_4shares ( port_x0_0, port_x0_1, port_x0_2, 
        port_x0_3, port_x1_0, port_x1_1, port_x1_2, port_x1_3, port_x2_0, 
        port_x2_1, port_x2_2, port_x2_3, port_x3_0, port_x3_1, port_x3_2, 
        port_x3_3, port_y0_0, port_y0_1, port_y0_2, port_y0_3, port_y1_0, 
        port_y1_1, port_y1_2, port_y1_3, port_y2_0, port_y2_1, port_y2_2, 
        port_y2_3, port_y3_0, port_y3_1, port_y3_2, port_y3_3, clk, reset );
  input port_x0_0, port_x0_1, port_x0_2, port_x0_3, port_x1_0, port_x1_1,
         port_x1_2, port_x1_3, port_x2_0, port_x2_1, port_x2_2, port_x2_3,
         port_x3_0, port_x3_1, port_x3_2, port_x3_3, clk, reset;
  output port_y0_0, port_y0_1, port_y0_2, port_y0_3, port_y1_0, port_y1_1,
         port_y1_2, port_y1_3, port_y2_0, port_y2_1, port_y2_2, port_y2_3,
         port_y3_0, port_y3_1, port_y3_2, port_y3_3;
  wire   N13, N14, N15, N16, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145;

  DFF_X1 y2_2_reg ( .D(port_x2_3), .CK(clk), .Q(port_y2_2), .QN() );
  DFF_X1 y1_2_reg ( .D(port_x1_3), .CK(clk), .Q(port_y1_2), .QN() );
  DFF_X1 y1_0_reg ( .D(port_x1_1), .CK(clk), .Q(port_y1_0), .QN() );
  DFF_X1 y3_3_reg ( .D(port_x3_0), .CK(clk), .Q(port_y3_3), .QN() );
  DFF_X1 y0_1_reg ( .D(N14), .CK(clk), .Q(port_y0_1), .QN() );
  DFF_X1 y0_0_reg ( .D(N13), .CK(clk), .Q(port_y0_0), .QN() );
  DFF_X1 y0_3_reg ( .D(N16), .CK(clk), .Q(port_y0_3), .QN() );
  DFF_X1 y2_3_reg ( .D(port_x2_0), .CK(clk), .Q(port_y2_3), .QN() );
  DFF_X1 y1_3_reg ( .D(port_x1_0), .CK(clk), .Q(port_y1_3), .QN() );
  DFF_X1 y2_1_reg ( .D(port_x2_2), .CK(clk), .Q(port_y2_1), .QN() );
  DFF_X1 y0_2_reg ( .D(N15), .CK(clk), .Q(port_y0_2), .QN() );
  DFF_X1 y3_0_reg ( .D(port_x3_1), .CK(clk), .Q(port_y3_0), .QN() );
  DFF_X1 y2_0_reg ( .D(port_x2_1), .CK(clk), .Q(port_y2_0), .QN() );
  DFF_X1 y3_1_reg ( .D(port_x3_2), .CK(clk), .Q(port_y3_1), .QN() );
  DFF_X1 y1_1_reg ( .D(port_x1_2), .CK(clk), .Q(port_y1_1), .QN() );
  DFF_X1 y3_2_reg ( .D(port_x3_3), .CK(clk), .Q(port_y3_2), .QN() );
  INV_X1 U152 ( .A(port_x1_0), .ZN(n1) );
  INV_X1 U153 ( .A(port_x1_1), .ZN(n2) );
  INV_X1 U154 ( .A(port_x1_3), .ZN(n4) );
  INV_X1 U155 ( .A(port_x1_2), .ZN(n3) );
  XOR2_X1 U156 ( .A(n115), .B(n116), .Z(N13) );
  XOR2_X1 U157 ( .A(n119), .B(n120), .Z(n115) );
  XOR2_X1 U158 ( .A(n117), .B(n118), .Z(n116) );
  XOR2_X1 U159 ( .A(n127), .B(n128), .Z(n119) );
  XOR2_X1 U160 ( .A(n82), .B(n83), .Z(N14) );
  XOR2_X1 U161 ( .A(n86), .B(n87), .Z(n82) );
  XOR2_X1 U162 ( .A(n84), .B(n85), .Z(n83) );
  XOR2_X1 U163 ( .A(n94), .B(n95), .Z(n86) );
  XOR2_X1 U164 ( .A(n129), .B(n130), .Z(n128) );
  NOR2_X1 U165 ( .A1(n11), .A2(n4), .ZN(n129) );
  NOR2_X1 U166 ( .A1(n19), .A2(n4), .ZN(n130) );
  XOR2_X1 U167 ( .A(n96), .B(n97), .Z(n95) );
  NOR2_X1 U168 ( .A1(n18), .A2(n4), .ZN(n96) );
  NOR2_X1 U169 ( .A1(n37), .A2(n4), .ZN(n97) );
  XOR2_X1 U170 ( .A(n79), .B(n80), .Z(n78) );
  NOR2_X1 U171 ( .A1(n27), .A2(n1), .ZN(n79) );
  NOR2_X1 U172 ( .A1(n50), .A2(n1), .ZN(n80) );
  XOR2_X1 U173 ( .A(n111), .B(n112), .Z(n110) );
  NOR2_X1 U174 ( .A1(n19), .A2(n1), .ZN(n111) );
  NOR2_X1 U175 ( .A1(n1), .A2(n113), .ZN(n112) );
  XOR2_X1 U176 ( .A(n25), .B(n26), .Z(n24) );
  NOR2_X1 U177 ( .A1(n3), .A2(n28), .ZN(n25) );
  NOR2_X1 U178 ( .A1(n3), .A2(n27), .ZN(n26) );
  XOR2_X1 U179 ( .A(n143), .B(n144), .Z(n142) );
  NOR2_X1 U180 ( .A1(n2), .A2(n113), .ZN(n143) );
  NOR2_X1 U181 ( .A1(n2), .A2(n108), .ZN(n144) );
  XOR2_X1 U182 ( .A(n64), .B(n65), .Z(n63) );
  NOR2_X1 U183 ( .A1(n28), .A2(n4), .ZN(n65) );
  NOR2_X1 U184 ( .A1(n2), .A2(n66), .ZN(n64) );
  XOR2_X1 U185 ( .A(n42), .B(n43), .Z(n41) );
  NOR2_X1 U186 ( .A1(n1), .A2(n37), .ZN(n42) );
  NOR2_X1 U187 ( .A1(n1), .A2(n10), .ZN(n43) );
  XOR2_X1 U188 ( .A(n71), .B(n72), .Z(n70) );
  XOR2_X1 U189 ( .A(n75), .B(n76), .Z(n71) );
  XOR2_X1 U190 ( .A(n73), .B(n74), .Z(n72) );
  NOR2_X1 U191 ( .A1(n1), .A2(n58), .ZN(n75) );
  XOR2_X1 U192 ( .A(n33), .B(n34), .Z(n32) );
  XOR2_X1 U193 ( .A(n38), .B(n39), .Z(n33) );
  XOR2_X1 U194 ( .A(n35), .B(n36), .Z(n34) );
  NOR2_X1 U195 ( .A1(n22), .A2(n1), .ZN(n38) );
  XOR2_X1 U196 ( .A(n135), .B(n136), .Z(n134) );
  XOR2_X1 U197 ( .A(n139), .B(n140), .Z(n135) );
  XOR2_X1 U198 ( .A(n137), .B(n138), .Z(n136) );
  NOR2_X1 U199 ( .A1(n2), .A2(n49), .ZN(n139) );
  XOR2_X1 U200 ( .A(n102), .B(n103), .Z(n101) );
  XOR2_X1 U201 ( .A(n106), .B(n107), .Z(n102) );
  XOR2_X1 U202 ( .A(n104), .B(n105), .Z(n103) );
  NOR2_X1 U203 ( .A1(n1), .A2(n57), .ZN(n106) );
  XOR2_X1 U204 ( .A(n53), .B(n54), .Z(n52) );
  XOR2_X1 U205 ( .A(n59), .B(n60), .Z(n53) );
  XOR2_X1 U206 ( .A(n55), .B(n56), .Z(n54) );
  NOR2_X1 U207 ( .A1(n2), .A2(n61), .ZN(n59) );
  XOR2_X1 U208 ( .A(n14), .B(n15), .Z(n13) );
  XOR2_X1 U209 ( .A(n20), .B(n21), .Z(n14) );
  XOR2_X1 U210 ( .A(n16), .B(n17), .Z(n15) );
  NOR2_X1 U211 ( .A1(n22), .A2(n2), .ZN(n20) );
  XOR2_X1 U212 ( .A(n121), .B(n122), .Z(n120) );
  XOR2_X1 U213 ( .A(n125), .B(n126), .Z(n121) );
  XOR2_X1 U214 ( .A(n123), .B(n124), .Z(n122) );
  NOR2_X1 U215 ( .A1(n3), .A2(n108), .ZN(n125) );
  XOR2_X1 U216 ( .A(n88), .B(n89), .Z(n87) );
  XOR2_X1 U217 ( .A(n92), .B(n93), .Z(n88) );
  XOR2_X1 U218 ( .A(n90), .B(n91), .Z(n89) );
  NOR2_X1 U219 ( .A1(n3), .A2(n61), .ZN(n92) );
  NOR2_X1 U220 ( .A1(n1), .A2(n66), .ZN(n76) );
  NOR2_X1 U221 ( .A1(n1), .A2(n108), .ZN(n107) );
  NOR2_X1 U222 ( .A1(n4), .A2(n49), .ZN(n48) );
  NOR2_X1 U223 ( .A1(n4), .A2(n108), .ZN(n118) );
  XOR2_X1 U224 ( .A(n67), .B(n68), .Z(n62) );
  OR2_X1 U225 ( .A1(n4), .A2(n27), .ZN(n67) );
  XOR2_X1 U226 ( .A(n69), .B(n70), .Z(n68) );
  XOR2_X1 U227 ( .A(n77), .B(n78), .Z(n69) );
  XOR2_X1 U228 ( .A(n131), .B(n132), .Z(n127) );
  OR2_X1 U229 ( .A1(n113), .A2(n4), .ZN(n131) );
  XOR2_X1 U230 ( .A(n133), .B(n134), .Z(n132) );
  XOR2_X1 U231 ( .A(n141), .B(n142), .Z(n133) );
  XOR2_X1 U232 ( .A(n98), .B(n99), .Z(n94) );
  OR2_X1 U233 ( .A1(n4), .A2(n61), .ZN(n98) );
  XOR2_X1 U234 ( .A(n100), .B(n101), .Z(n99) );
  XOR2_X1 U235 ( .A(n109), .B(n110), .Z(n100) );
  NOR2_X1 U236 ( .A1(n2), .A2(n28), .ZN(n74) );
  NOR2_X1 U237 ( .A1(n2), .A2(n10), .ZN(n36) );
  NOR2_X1 U238 ( .A1(n2), .A2(n57), .ZN(n56) );
  NOR2_X1 U239 ( .A1(n2), .A2(n27), .ZN(n60) );
  NOR2_X1 U240 ( .A1(n2), .A2(n11), .ZN(n21) );
  NOR2_X1 U241 ( .A1(n11), .A2(n1), .ZN(n39) );
  NOR2_X1 U242 ( .A1(n1), .A2(n49), .ZN(n104) );
  NOR2_X1 U243 ( .A1(n3), .A2(n66), .ZN(n138) );
  NOR2_X1 U244 ( .A1(n3), .A2(n58), .ZN(n140) );
  NOR2_X1 U245 ( .A1(n3), .A2(n37), .ZN(n105) );
  NOR2_X1 U246 ( .A1(n3), .A2(n49), .ZN(n126) );
  NOR2_X1 U247 ( .A1(n3), .A2(n57), .ZN(n91) );
  NOR2_X1 U248 ( .A1(n3), .A2(n10), .ZN(n9) );
  NOR2_X1 U249 ( .A1(n2), .A2(n18), .ZN(n73) );
  NOR2_X1 U250 ( .A1(n2), .A2(n37), .ZN(n35) );
  NOR2_X1 U251 ( .A1(n2), .A2(n58), .ZN(n55) );
  NOR2_X1 U252 ( .A1(n2), .A2(n19), .ZN(n16) );
  NOR2_X1 U253 ( .A1(n58), .A2(n4), .ZN(n124) );
  NOR2_X1 U254 ( .A1(n22), .A2(n4), .ZN(n85) );
  NOR2_X1 U255 ( .A1(n18), .A2(n3), .ZN(n17) );
  NOR2_X1 U256 ( .A1(n22), .A2(n3), .ZN(n93) );
  NOR2_X1 U257 ( .A1(n10), .A2(n4), .ZN(n123) );
  NOR2_X1 U258 ( .A1(n3), .A2(n113), .ZN(n137) );
  NOR2_X1 U259 ( .A1(n19), .A2(n3), .ZN(n90) );
  XOR2_X1 U260 ( .A(n45), .B(n46), .Z(N15) );
  XOR2_X1 U261 ( .A(n51), .B(n52), .Z(n45) );
  XOR2_X1 U262 ( .A(n47), .B(n48), .Z(n46) );
  XOR2_X1 U263 ( .A(n62), .B(n63), .Z(n51) );
  XOR2_X1 U264 ( .A(n6), .B(n7), .Z(N16) );
  XOR2_X1 U265 ( .A(n12), .B(n13), .Z(n6) );
  XOR2_X1 U266 ( .A(n8), .B(n9), .Z(n7) );
  XOR2_X1 U267 ( .A(n23), .B(n24), .Z(n12) );
  INV_X1 U268 ( .A(n50), .ZN(n5) );
  OR2_X1 U269 ( .A1(n3), .A2(n11), .ZN(n8) );
  OR2_X1 U270 ( .A1(n4), .A2(n66), .ZN(n117) );
  OR2_X1 U271 ( .A1(n4), .A2(n57), .ZN(n84) );
  NAND2_X1 U272 ( .A1(port_x3_1), .A2(port_x2_2), .ZN(n11) );
  XOR2_X1 U273 ( .A(n29), .B(n30), .Z(n23) );
  NAND2_X1 U274 ( .A1(n5), .A2(port_x1_2), .ZN(n29) );
  XOR2_X1 U275 ( .A(n31), .B(n32), .Z(n30) );
  XOR2_X1 U276 ( .A(n40), .B(n41), .Z(n31) );
  NAND2_X1 U277 ( .A1(port_x3_0), .A2(port_x2_2), .ZN(n22) );
  NAND2_X1 U278 ( .A1(port_x2_1), .A2(port_x3_0), .ZN(n27) );
  NAND2_X1 U279 ( .A1(port_x3_3), .A2(port_x2_2), .ZN(n113) );
  NAND2_X1 U280 ( .A1(port_x2_0), .A2(port_x3_0), .ZN(n18) );
  NAND2_X1 U281 ( .A1(port_x3_2), .A2(port_x2_2), .ZN(n19) );
  XOR2_X1 U282 ( .A(port_x0_3), .B(n81), .Z(n77) );
  NOR2_X1 U283 ( .A1(n28), .A2(n1), .ZN(n81) );
  XOR2_X1 U284 ( .A(port_x0_0), .B(n44), .Z(n40) );
  NOR2_X1 U285 ( .A1(n18), .A2(n1), .ZN(n44) );
  NAND2_X1 U286 ( .A1(port_x2_3), .A2(port_x3_1), .ZN(n66) );
  NAND2_X1 U287 ( .A1(port_x2_3), .A2(port_x3_0), .ZN(n57) );
  NAND2_X1 U288 ( .A1(port_x3_3), .A2(port_x2_0), .ZN(n61) );
  XOR2_X1 U289 ( .A(port_x0_1), .B(n145), .Z(n141) );
  NOR2_X1 U290 ( .A1(n2), .A2(n50), .ZN(n145) );
  XOR2_X1 U291 ( .A(port_x0_2), .B(n114), .Z(n109) );
  NOR2_X1 U292 ( .A1(n1), .A2(n61), .ZN(n114) );
  NAND2_X1 U293 ( .A1(port_x2_0), .A2(port_x3_1), .ZN(n28) );
  NAND2_X1 U294 ( .A1(port_x2_1), .A2(port_x3_2), .ZN(n10) );
  NAND2_X1 U295 ( .A1(port_x3_3), .A2(port_x2_1), .ZN(n58) );
  NAND2_X1 U296 ( .A1(port_x2_0), .A2(port_x3_2), .ZN(n37) );
  NAND2_X1 U297 ( .A1(port_x2_3), .A2(port_x3_3), .ZN(n49) );
  NAND2_X1 U298 ( .A1(port_x2_3), .A2(port_x3_2), .ZN(n108) );
  NAND2_X1 U299 ( .A1(port_x2_1), .A2(port_x3_1), .ZN(n50) );
  NAND2_X1 U300 ( .A1(port_x1_3), .A2(n5), .ZN(n47) );
endmodule

