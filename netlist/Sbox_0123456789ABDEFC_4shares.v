/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:10:56 2023
/////////////////////////////////////////////////////////////


module Sbox_0123456789ABDEFC_4shares ( port_x0_0, port_x0_1, port_x0_2, 
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
  wire   N13, N14, N15, N16, N17, N18, N19, N20, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157;

  DFF_X1 y1_2_reg ( .D(N19), .CK(clk), .Q(port_y1_2), .QN() );
  DFF_X1 y1_1_reg ( .D(N18), .CK(clk), .Q(port_y1_1), .QN() );
  DFF_X1 y0_1_reg ( .D(N14), .CK(clk), .Q(port_y0_1), .QN() );
  DFF_X1 y0_0_reg ( .D(N13), .CK(clk), .Q(port_y0_0), .QN() );
  DFF_X1 y2_1_reg ( .D(port_x2_2), .CK(clk), .Q(port_y2_1), .QN() );
  DFF_X1 y1_0_reg ( .D(N17), .CK(clk), .Q(port_y1_0), .QN() );
  DFF_X1 y0_3_reg ( .D(N16), .CK(clk), .Q(port_y0_3), .QN() );
  DFF_X1 y1_3_reg ( .D(N20), .CK(clk), .Q(port_y1_3), .QN() );
  DFF_X1 y0_2_reg ( .D(N15), .CK(clk), .Q(port_y0_2), .QN() );
  DFF_X1 y2_0_reg ( .D(port_x2_1), .CK(clk), .Q(port_y2_0), .QN() );
  DFF_X1 y3_3_reg ( .D(port_x3_0), .CK(clk), .Q(port_y3_3), .QN() );
  DFF_X1 y3_2_reg ( .D(port_x3_3), .CK(clk), .Q(port_y3_2), .QN() );
  DFF_X1 y2_2_reg ( .D(port_x2_3), .CK(clk), .Q(port_y2_2), .QN() );
  DFF_X1 y2_3_reg ( .D(port_x2_0), .CK(clk), .Q(port_y2_3), .QN() );
  DFF_X1 y3_0_reg ( .D(port_x3_1), .CK(clk), .Q(port_y3_0), .QN() );
  DFF_X1 y3_1_reg ( .D(port_x3_2), .CK(clk), .Q(port_y3_1), .QN() );
  INV_X1 U168 ( .A(port_x0_0), .ZN(n1) );
  INV_X1 U169 ( .A(port_x0_3), .ZN(n4) );
  INV_X1 U170 ( .A(port_x0_1), .ZN(n2) );
  INV_X1 U171 ( .A(port_x0_2), .ZN(n3) );
  XOR2_X1 U172 ( .A(n115), .B(n116), .Z(N17) );
  XOR2_X1 U173 ( .A(n119), .B(n120), .Z(n115) );
  XOR2_X1 U174 ( .A(n117), .B(n118), .Z(n116) );
  XOR2_X1 U175 ( .A(n127), .B(n128), .Z(n119) );
  XOR2_X1 U176 ( .A(n82), .B(n83), .Z(N18) );
  XOR2_X1 U177 ( .A(n86), .B(n87), .Z(n82) );
  XOR2_X1 U178 ( .A(n84), .B(n85), .Z(n83) );
  XOR2_X1 U179 ( .A(n94), .B(n95), .Z(n86) );
  XOR2_X1 U180 ( .A(n113), .B(n108), .Z(n155) );
  XOR2_X1 U181 ( .A(n19), .B(n60), .Z(n150) );
  XOR2_X1 U182 ( .A(n129), .B(n130), .Z(n128) );
  NOR2_X1 U183 ( .A1(n11), .A2(n4), .ZN(n129) );
  NOR2_X1 U184 ( .A1(n19), .A2(n4), .ZN(n130) );
  XOR2_X1 U185 ( .A(n96), .B(n97), .Z(n95) );
  NOR2_X1 U186 ( .A1(n18), .A2(n4), .ZN(n96) );
  NOR2_X1 U187 ( .A1(n37), .A2(n4), .ZN(n97) );
  XOR2_X1 U188 ( .A(n111), .B(n112), .Z(n110) );
  NOR2_X1 U189 ( .A1(n19), .A2(n1), .ZN(n111) );
  NOR2_X1 U190 ( .A1(n1), .A2(n113), .ZN(n112) );
  XOR2_X1 U191 ( .A(n78), .B(n79), .Z(n77) );
  NOR2_X1 U192 ( .A1(n27), .A2(n1), .ZN(n78) );
  NOR2_X1 U193 ( .A1(n80), .A2(n1), .ZN(n79) );
  XOR2_X1 U194 ( .A(n143), .B(n144), .Z(n142) );
  NOR2_X1 U195 ( .A1(n2), .A2(n113), .ZN(n143) );
  NOR2_X1 U196 ( .A1(n2), .A2(n108), .ZN(n144) );
  XOR2_X1 U197 ( .A(n63), .B(n64), .Z(n62) );
  NOR2_X1 U198 ( .A1(n28), .A2(n4), .ZN(n64) );
  NOR2_X1 U199 ( .A1(n2), .A2(n65), .ZN(n63) );
  XOR2_X1 U200 ( .A(n42), .B(n43), .Z(n41) );
  NOR2_X1 U201 ( .A1(n1), .A2(n37), .ZN(n42) );
  NOR2_X1 U202 ( .A1(n1), .A2(n10), .ZN(n43) );
  XOR2_X1 U203 ( .A(n25), .B(n26), .Z(n24) );
  NOR2_X1 U204 ( .A1(n3), .A2(n28), .ZN(n25) );
  NOR2_X1 U205 ( .A1(n3), .A2(n27), .ZN(n26) );
  XOR2_X1 U206 ( .A(n57), .B(n65), .Z(n154) );
  XOR2_X1 U207 ( .A(n33), .B(n34), .Z(n32) );
  XOR2_X1 U208 ( .A(n38), .B(n39), .Z(n33) );
  XOR2_X1 U209 ( .A(n35), .B(n36), .Z(n34) );
  NOR2_X1 U210 ( .A1(n22), .A2(n1), .ZN(n38) );
  XOR2_X1 U211 ( .A(n135), .B(n136), .Z(n134) );
  XOR2_X1 U212 ( .A(n139), .B(n140), .Z(n135) );
  XOR2_X1 U213 ( .A(n137), .B(n138), .Z(n136) );
  NOR2_X1 U214 ( .A1(n2), .A2(n49), .ZN(n139) );
  XOR2_X1 U215 ( .A(n102), .B(n103), .Z(n101) );
  XOR2_X1 U216 ( .A(n106), .B(n107), .Z(n102) );
  XOR2_X1 U217 ( .A(n104), .B(n105), .Z(n103) );
  NOR2_X1 U218 ( .A1(n1), .A2(n56), .ZN(n106) );
  XOR2_X1 U219 ( .A(n70), .B(n71), .Z(n69) );
  XOR2_X1 U220 ( .A(n74), .B(n75), .Z(n70) );
  XOR2_X1 U221 ( .A(n72), .B(n73), .Z(n71) );
  NOR2_X1 U222 ( .A1(n1), .A2(n57), .ZN(n74) );
  XOR2_X1 U223 ( .A(n14), .B(n15), .Z(n13) );
  XOR2_X1 U224 ( .A(n20), .B(n21), .Z(n14) );
  XOR2_X1 U225 ( .A(n16), .B(n17), .Z(n15) );
  NOR2_X1 U226 ( .A1(n22), .A2(n2), .ZN(n20) );
  XOR2_X1 U227 ( .A(n121), .B(n122), .Z(n120) );
  XOR2_X1 U228 ( .A(n125), .B(n126), .Z(n121) );
  XOR2_X1 U229 ( .A(n123), .B(n124), .Z(n122) );
  NOR2_X1 U230 ( .A1(n3), .A2(n108), .ZN(n125) );
  XOR2_X1 U231 ( .A(n88), .B(n89), .Z(n87) );
  XOR2_X1 U232 ( .A(n92), .B(n93), .Z(n88) );
  XOR2_X1 U233 ( .A(n90), .B(n91), .Z(n89) );
  NOR2_X1 U234 ( .A1(n3), .A2(n60), .ZN(n92) );
  XOR2_X1 U235 ( .A(n52), .B(n53), .Z(n51) );
  XOR2_X1 U236 ( .A(n58), .B(n59), .Z(n52) );
  XOR2_X1 U237 ( .A(n54), .B(n55), .Z(n53) );
  NOR2_X1 U238 ( .A1(n2), .A2(n60), .ZN(n58) );
  NOR2_X1 U239 ( .A1(n3), .A2(n65), .ZN(n138) );
  NOR2_X1 U240 ( .A1(n3), .A2(n57), .ZN(n140) );
  NOR2_X1 U241 ( .A1(n3), .A2(n37), .ZN(n105) );
  NOR2_X1 U242 ( .A1(n1), .A2(n108), .ZN(n107) );
  NOR2_X1 U243 ( .A1(n1), .A2(n65), .ZN(n75) );
  NOR2_X1 U244 ( .A1(n3), .A2(n49), .ZN(n126) );
  NOR2_X1 U245 ( .A1(n3), .A2(n56), .ZN(n91) );
  NOR2_X1 U246 ( .A1(n3), .A2(n10), .ZN(n9) );
  NOR2_X1 U247 ( .A1(n18), .A2(n3), .ZN(n17) );
  NOR2_X1 U248 ( .A1(n22), .A2(n3), .ZN(n93) );
  NOR2_X1 U249 ( .A1(n4), .A2(n108), .ZN(n118) );
  NOR2_X1 U250 ( .A1(n4), .A2(n49), .ZN(n48) );
  NOR2_X1 U251 ( .A1(n19), .A2(n3), .ZN(n90) );
  XOR2_X1 U252 ( .A(n131), .B(n132), .Z(n127) );
  OR2_X1 U253 ( .A1(n113), .A2(n4), .ZN(n131) );
  XOR2_X1 U254 ( .A(n133), .B(n134), .Z(n132) );
  XOR2_X1 U255 ( .A(n141), .B(n142), .Z(n133) );
  XOR2_X1 U256 ( .A(n98), .B(n99), .Z(n94) );
  OR2_X1 U257 ( .A1(n4), .A2(n60), .ZN(n98) );
  XOR2_X1 U258 ( .A(n100), .B(n101), .Z(n99) );
  XOR2_X1 U259 ( .A(n109), .B(n110), .Z(n100) );
  XOR2_X1 U260 ( .A(n66), .B(n67), .Z(n61) );
  OR2_X1 U261 ( .A1(n4), .A2(n27), .ZN(n66) );
  XOR2_X1 U262 ( .A(n68), .B(n69), .Z(n67) );
  XOR2_X1 U263 ( .A(n76), .B(n77), .Z(n68) );
  NOR2_X1 U264 ( .A1(n2), .A2(n10), .ZN(n36) );
  NOR2_X1 U265 ( .A1(n2), .A2(n28), .ZN(n73) );
  NOR2_X1 U266 ( .A1(n2), .A2(n11), .ZN(n21) );
  NOR2_X1 U267 ( .A1(n2), .A2(n56), .ZN(n55) );
  NOR2_X1 U268 ( .A1(n2), .A2(n27), .ZN(n59) );
  NOR2_X1 U269 ( .A1(n11), .A2(n1), .ZN(n39) );
  NOR2_X1 U270 ( .A1(n3), .A2(n113), .ZN(n137) );
  NOR2_X1 U271 ( .A1(n1), .A2(n49), .ZN(n104) );
  XNOR2_X1 U272 ( .A(n11), .B(n5), .ZN(n157) );
  NOR2_X1 U273 ( .A1(n2), .A2(n37), .ZN(n35) );
  NOR2_X1 U274 ( .A1(n2), .A2(n18), .ZN(n72) );
  NOR2_X1 U275 ( .A1(n2), .A2(n19), .ZN(n16) );
  NOR2_X1 U276 ( .A1(n2), .A2(n57), .ZN(n54) );
  NOR2_X1 U277 ( .A1(n57), .A2(n4), .ZN(n124) );
  NOR2_X1 U278 ( .A1(n22), .A2(n4), .ZN(n85) );
  NOR2_X1 U279 ( .A1(n10), .A2(n4), .ZN(n123) );
  INV_X1 U280 ( .A(n80), .ZN(n5) );
  XOR2_X1 U281 ( .A(n148), .B(n149), .Z(N14) );
  XNOR2_X1 U282 ( .A(n151), .B(n22), .ZN(n148) );
  XOR2_X1 U283 ( .A(n56), .B(n150), .Z(n149) );
  XNOR2_X1 U284 ( .A(n37), .B(n3), .ZN(n151) );
  XOR2_X1 U285 ( .A(n6), .B(n7), .Z(N20) );
  XOR2_X1 U286 ( .A(n12), .B(n13), .Z(n6) );
  XOR2_X1 U287 ( .A(n8), .B(n9), .Z(n7) );
  XOR2_X1 U288 ( .A(n23), .B(n24), .Z(n12) );
  XOR2_X1 U289 ( .A(n45), .B(n46), .Z(N19) );
  XOR2_X1 U290 ( .A(n50), .B(n51), .Z(n45) );
  XOR2_X1 U291 ( .A(n47), .B(n48), .Z(n46) );
  XOR2_X1 U292 ( .A(n61), .B(n62), .Z(n50) );
  OR2_X1 U293 ( .A1(n3), .A2(n11), .ZN(n8) );
  OR2_X1 U294 ( .A1(n4), .A2(n65), .ZN(n117) );
  OR2_X1 U295 ( .A1(n4), .A2(n56), .ZN(n84) );
  NAND2_X1 U296 ( .A1(port_x3_3), .A2(port_x2_0), .ZN(n60) );
  NAND2_X1 U297 ( .A1(port_x2_3), .A2(port_x3_1), .ZN(n65) );
  NAND2_X1 U298 ( .A1(port_x2_3), .A2(port_x3_2), .ZN(n108) );
  NAND2_X1 U299 ( .A1(port_x2_3), .A2(port_x3_3), .ZN(n49) );
  NAND2_X1 U300 ( .A1(port_x3_0), .A2(port_x2_2), .ZN(n22) );
  NAND2_X1 U301 ( .A1(port_x2_0), .A2(port_x3_0), .ZN(n18) );
  NAND2_X1 U302 ( .A1(port_x2_0), .A2(port_x3_1), .ZN(n28) );
  NAND2_X1 U303 ( .A1(port_x2_1), .A2(port_x3_2), .ZN(n10) );
  NAND2_X1 U304 ( .A1(port_x2_1), .A2(port_x3_0), .ZN(n27) );
  NAND2_X1 U305 ( .A1(port_x3_3), .A2(port_x2_2), .ZN(n113) );
  NAND2_X1 U306 ( .A1(port_x3_2), .A2(port_x2_2), .ZN(n19) );
  NAND2_X1 U307 ( .A1(port_x2_3), .A2(port_x3_0), .ZN(n56) );
  NAND2_X1 U308 ( .A1(port_x3_1), .A2(port_x2_2), .ZN(n11) );
  NAND2_X1 U309 ( .A1(port_x3_3), .A2(port_x2_1), .ZN(n57) );
  NAND2_X1 U310 ( .A1(port_x2_0), .A2(port_x3_2), .ZN(n37) );
  XOR2_X1 U311 ( .A(n29), .B(n30), .Z(n23) );
  NAND2_X1 U312 ( .A1(n5), .A2(port_x0_2), .ZN(n29) );
  XOR2_X1 U313 ( .A(n31), .B(n32), .Z(n30) );
  XOR2_X1 U314 ( .A(n40), .B(n41), .Z(n31) );
  XOR2_X1 U315 ( .A(port_x1_0), .B(n44), .Z(n40) );
  NOR2_X1 U316 ( .A1(n18), .A2(n1), .ZN(n44) );
  XOR2_X1 U317 ( .A(port_x1_3), .B(n81), .Z(n76) );
  NOR2_X1 U318 ( .A1(n28), .A2(n1), .ZN(n81) );
  XOR2_X1 U319 ( .A(port_x1_1), .B(n145), .Z(n141) );
  NOR2_X1 U320 ( .A1(n2), .A2(n80), .ZN(n145) );
  XOR2_X1 U321 ( .A(port_x1_2), .B(n114), .Z(n109) );
  NOR2_X1 U322 ( .A1(n1), .A2(n60), .ZN(n114) );
  NAND2_X1 U323 ( .A1(port_x2_1), .A2(port_x3_1), .ZN(n80) );
  XOR2_X1 U324 ( .A(n146), .B(n147), .Z(N15) );
  XNOR2_X1 U325 ( .A(port_x0_3), .B(n28), .ZN(n146) );
  XOR2_X1 U326 ( .A(n27), .B(n49), .Z(n147) );
  XOR2_X1 U327 ( .A(n152), .B(n153), .Z(N13) );
  XOR2_X1 U328 ( .A(n156), .B(n157), .Z(n152) );
  XOR2_X1 U329 ( .A(n154), .B(n155), .Z(n153) );
  XNOR2_X1 U330 ( .A(port_x0_1), .B(n10), .ZN(n156) );
  XNOR2_X1 U331 ( .A(port_x0_0), .B(n18), .ZN(N16) );
  NAND2_X1 U332 ( .A1(port_x0_3), .A2(n5), .ZN(n47) );
endmodule

