/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Oct  6 07:15:27 2023
/////////////////////////////////////////////////////////////


module Sbox_01234589DC76BAFE_4shares ( port_x0_0, port_x0_1, port_x0_2, 
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
  wire   N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24,
         N25, N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128;

  DFF_X1 y0_2_reg ( .D(N13), .CK(clk), .Q(port_y0_2), .QN() );
  DFF_X1 y0_3_reg ( .D(N14), .CK(clk), .Q(port_y0_3), .QN() );
  DFF_X1 y0_1_reg ( .D(N12), .CK(clk), .Q(port_y0_1), .QN() );
  DFF_X1 y2_1_reg ( .D(N20), .CK(clk), .Q(port_y2_1), .QN() );
  DFF_X1 y2_3_reg ( .D(N22), .CK(clk), .Q(port_y2_3), .QN() );
  DFF_X1 y3_2_reg ( .D(N25), .CK(clk), .Q(port_y3_2), .QN() );
  DFF_X1 y2_2_reg ( .D(N21), .CK(clk), .Q(port_y2_2), .QN() );
  DFF_X1 y3_3_reg ( .D(N26), .CK(clk), .Q(port_y3_3), .QN() );
  DFF_X1 y3_1_reg ( .D(N24), .CK(clk), .Q(port_y3_1), .QN() );
  DFF_X1 y1_0_reg ( .D(N15), .CK(clk), .Q(port_y1_0), .QN() );
  DFF_X1 y0_0_reg ( .D(N11), .CK(clk), .Q(port_y0_0), .QN() );
  DFF_X1 y1_1_reg ( .D(N16), .CK(clk), .Q(port_y1_1), .QN() );
  DFF_X1 y3_0_reg ( .D(N23), .CK(clk), .Q(port_y3_0), .QN() );
  DFF_X1 y1_2_reg ( .D(N17), .CK(clk), .Q(port_y1_2), .QN() );
  DFF_X1 y1_3_reg ( .D(N18), .CK(clk), .Q(port_y1_3), .QN() );
  DFF_X1 y2_0_reg ( .D(N19), .CK(clk), .Q(port_y2_0), .QN() );
  XOR2_X1 U147 ( .A(n77), .B(n73), .Z(n30) );
  XOR2_X1 U148 ( .A(n67), .B(n66), .Z(n17) );
  XOR2_X1 U149 ( .A(n74), .B(n71), .Z(n25) );
  XOR2_X1 U150 ( .A(n73), .B(n74), .Z(n72) );
  XOR2_X1 U151 ( .A(n31), .B(n77), .Z(n76) );
  XOR2_X1 U152 ( .A(n57), .B(n55), .Z(n82) );
  XOR2_X1 U153 ( .A(n120), .B(n121), .Z(n119) );
  XOR2_X1 U154 ( .A(n52), .B(n50), .Z(n120) );
  XOR2_X1 U155 ( .A(n51), .B(n57), .Z(n121) );
  XOR2_X1 U156 ( .A(n53), .B(n54), .Z(n46) );
  XOR2_X1 U157 ( .A(n57), .B(n58), .Z(n53) );
  XOR2_X1 U158 ( .A(n55), .B(n56), .Z(n54) );
  NOR2_X1 U159 ( .A1(n59), .A2(n60), .ZN(n58) );
  XOR2_X1 U160 ( .A(n122), .B(n123), .Z(n118) );
  XOR2_X1 U161 ( .A(n55), .B(n126), .Z(n122) );
  XOR2_X1 U162 ( .A(n124), .B(n125), .Z(n123) );
  NOR2_X1 U163 ( .A1(n127), .A2(n128), .ZN(n126) );
  NOR2_X1 U164 ( .A1(n3), .A2(n62), .ZN(n59) );
  NOR2_X1 U165 ( .A1(n3), .A2(n61), .ZN(n128) );
  XOR2_X1 U166 ( .A(n78), .B(n79), .Z(N19) );
  XOR2_X1 U167 ( .A(n81), .B(n82), .Z(n78) );
  XOR2_X1 U168 ( .A(n51), .B(n80), .Z(n79) );
  NAND2_X1 U169 ( .A1(n83), .A2(n84), .ZN(n81) );
  XOR2_X1 U170 ( .A(n34), .B(n35), .Z(N23) );
  XOR2_X1 U171 ( .A(n42), .B(n43), .Z(n34) );
  XOR2_X1 U172 ( .A(n36), .B(n37), .Z(n35) );
  XOR2_X1 U173 ( .A(n46), .B(n47), .Z(n42) );
  XOR2_X1 U174 ( .A(n108), .B(n109), .Z(N15) );
  XOR2_X1 U175 ( .A(n114), .B(n115), .Z(n108) );
  XOR2_X1 U176 ( .A(n110), .B(n111), .Z(n109) );
  XOR2_X1 U177 ( .A(n118), .B(n119), .Z(n114) );
  NAND2_X1 U178 ( .A1(n2), .A2(n50), .ZN(n84) );
  INV_X1 U179 ( .A(n61), .ZN(n2) );
  INV_X1 U180 ( .A(n67), .ZN(n1) );
  NAND2_X1 U181 ( .A1(port_x2_3), .A2(port_x1_1), .ZN(n50) );
  XOR2_X1 U182 ( .A(n48), .B(n49), .Z(n47) );
  XNOR2_X1 U183 ( .A(port_x3_1), .B(n52), .ZN(n48) );
  XOR2_X1 U184 ( .A(n50), .B(n51), .Z(n49) );
  XOR2_X1 U185 ( .A(n103), .B(n104), .Z(n102) );
  NAND2_X1 U186 ( .A1(port_x3_2), .A2(port_x2_0), .ZN(n103) );
  NAND2_X1 U187 ( .A1(port_x3_3), .A2(port_x2_0), .ZN(n104) );
  XOR2_X1 U188 ( .A(n27), .B(n28), .Z(n26) );
  NAND2_X1 U189 ( .A1(port_x3_2), .A2(port_x1_0), .ZN(n27) );
  NAND2_X1 U190 ( .A1(port_x3_3), .A2(port_x1_0), .ZN(n28) );
  XOR2_X1 U191 ( .A(n93), .B(n94), .Z(n92) );
  NAND2_X1 U192 ( .A1(port_x3_1), .A2(port_x2_0), .ZN(n93) );
  NAND2_X1 U193 ( .A1(port_x2_1), .A2(port_x3_0), .ZN(n94) );
  XOR2_X1 U194 ( .A(n38), .B(n39), .Z(n37) );
  NAND2_X1 U195 ( .A1(port_x1_2), .A2(port_x3_1), .ZN(n38) );
  NAND2_X1 U196 ( .A1(port_x1_2), .A2(port_x3_3), .ZN(n39) );
  XOR2_X1 U197 ( .A(n44), .B(n45), .Z(n43) );
  NAND2_X1 U198 ( .A1(port_x3_1), .A2(port_x1_3), .ZN(n44) );
  NAND2_X1 U199 ( .A1(port_x3_2), .A2(port_x1_3), .ZN(n45) );
  XOR2_X1 U200 ( .A(n112), .B(n113), .Z(n111) );
  NAND2_X1 U201 ( .A1(port_x3_3), .A2(port_x2_1), .ZN(n112) );
  NAND2_X1 U202 ( .A1(port_x2_2), .A2(port_x3_1), .ZN(n113) );
  XOR2_X1 U203 ( .A(n116), .B(n117), .Z(n115) );
  NAND2_X1 U204 ( .A1(port_x3_1), .A2(port_x2_3), .ZN(n116) );
  NAND2_X1 U205 ( .A1(port_x3_2), .A2(port_x2_3), .ZN(n117) );
  XOR2_X1 U206 ( .A(n14), .B(n15), .Z(n13) );
  NAND2_X1 U207 ( .A1(port_x3_1), .A2(port_x1_0), .ZN(n14) );
  NAND2_X1 U208 ( .A1(port_x1_1), .A2(port_x3_0), .ZN(n15) );
  XOR2_X1 U209 ( .A(n52), .B(port_x3_1), .Z(n80) );
  XOR2_X1 U210 ( .A(n40), .B(n41), .Z(n36) );
  NAND2_X1 U211 ( .A1(port_x3_2), .A2(port_x1_1), .ZN(n40) );
  NAND2_X1 U212 ( .A1(port_x1_1), .A2(port_x3_3), .ZN(n41) );
  XOR2_X1 U213 ( .A(n100), .B(n101), .Z(n98) );
  XOR2_X1 U214 ( .A(n105), .B(n30), .Z(n100) );
  XOR2_X1 U215 ( .A(n25), .B(n102), .Z(n101) );
  XOR2_X1 U216 ( .A(n31), .B(port_x1_2), .Z(n105) );
  XOR2_X1 U217 ( .A(n23), .B(n24), .Z(n21) );
  XOR2_X1 U218 ( .A(n29), .B(n30), .Z(n23) );
  XOR2_X1 U219 ( .A(n25), .B(n26), .Z(n24) );
  XOR2_X1 U220 ( .A(n31), .B(port_x3_2), .Z(n29) );
  NAND2_X1 U221 ( .A1(port_x1_2), .A2(port_x2_1), .ZN(n57) );
  NAND2_X1 U222 ( .A1(port_x1_2), .A2(port_x2_3), .ZN(n55) );
  NAND2_X1 U223 ( .A1(port_x1_3), .A2(port_x2_1), .ZN(n51) );
  NAND2_X1 U224 ( .A1(port_x2_2), .A2(port_x1_3), .ZN(n52) );
  NAND2_X1 U225 ( .A1(port_x2_3), .A2(port_x1_0), .ZN(n31) );
  NAND2_X1 U226 ( .A1(port_x2_1), .A2(port_x1_0), .ZN(n18) );
  INV_X1 U227 ( .A(port_x2_2), .ZN(n4) );
  NAND2_X1 U228 ( .A1(port_x2_0), .A2(port_x1_0), .ZN(n9) );
  NAND2_X1 U229 ( .A1(port_x1_1), .A2(n4), .ZN(n62) );
  NOR2_X1 U230 ( .A1(n5), .A2(n4), .ZN(n107) );
  INV_X1 U231 ( .A(port_x3_0), .ZN(n5) );
  NAND2_X1 U232 ( .A1(port_x2_2), .A2(port_x1_1), .ZN(n61) );
  NOR2_X1 U233 ( .A1(n6), .A2(n4), .ZN(n110) );
  INV_X1 U234 ( .A(port_x3_3), .ZN(n6) );
  NAND2_X1 U235 ( .A1(port_x1_3), .A2(port_x2_0), .ZN(n74) );
  NAND2_X1 U236 ( .A1(port_x2_2), .A2(port_x1_2), .ZN(n73) );
  NAND2_X1 U237 ( .A1(port_x1_2), .A2(port_x2_0), .ZN(n77) );
  NAND2_X1 U238 ( .A1(port_x2_3), .A2(port_x1_3), .ZN(n66) );
  NAND2_X1 U239 ( .A1(port_x2_2), .A2(port_x1_0), .ZN(n71) );
  INV_X1 U240 ( .A(port_x2_1), .ZN(n3) );
  NOR2_X1 U241 ( .A1(port_x2_1), .A2(n62), .ZN(n127) );
  NOR2_X1 U242 ( .A1(port_x2_1), .A2(n61), .ZN(n60) );
  XOR2_X1 U243 ( .A(n7), .B(n8), .Z(N26) );
  NAND2_X1 U244 ( .A1(port_x3_0), .A2(port_x1_0), .ZN(n7) );
  XOR2_X1 U245 ( .A(n9), .B(port_x3_0), .Z(n8) );
  XOR2_X1 U246 ( .A(n89), .B(n90), .Z(N17) );
  XOR2_X1 U247 ( .A(n95), .B(n17), .Z(n89) );
  XOR2_X1 U248 ( .A(n91), .B(n92), .Z(n90) );
  XOR2_X1 U249 ( .A(n18), .B(port_x1_3), .Z(n95) );
  XOR2_X1 U250 ( .A(n96), .B(n97), .Z(N16) );
  XOR2_X1 U251 ( .A(n106), .B(n107), .Z(n96) );
  XOR2_X1 U252 ( .A(n98), .B(n99), .Z(n97) );
  NAND2_X1 U253 ( .A1(port_x2_2), .A2(port_x3_2), .ZN(n106) );
  XOR2_X1 U254 ( .A(n19), .B(n20), .Z(N24) );
  XOR2_X1 U255 ( .A(n32), .B(n33), .Z(n19) );
  XOR2_X1 U256 ( .A(n21), .B(n22), .Z(n20) );
  AND2_X1 U257 ( .A1(port_x3_0), .A2(port_x1_2), .ZN(n33) );
  XOR2_X1 U258 ( .A(n64), .B(n65), .Z(N21) );
  XOR2_X1 U259 ( .A(n18), .B(n68), .Z(n64) );
  XOR2_X1 U260 ( .A(n66), .B(n1), .Z(n65) );
  XOR2_X1 U261 ( .A(port_x3_3), .B(port_x2_3), .Z(n68) );
  XOR2_X1 U262 ( .A(n10), .B(n11), .Z(N25) );
  XOR2_X1 U263 ( .A(n16), .B(n17), .Z(n10) );
  XOR2_X1 U264 ( .A(n12), .B(n13), .Z(n11) );
  XOR2_X1 U265 ( .A(n18), .B(port_x3_3), .Z(n16) );
  XOR2_X1 U266 ( .A(n69), .B(n70), .Z(N20) );
  XOR2_X1 U267 ( .A(n75), .B(n76), .Z(n69) );
  XOR2_X1 U268 ( .A(n71), .B(n72), .Z(n70) );
  XOR2_X1 U269 ( .A(n4), .B(port_x3_2), .Z(n75) );
  NAND2_X1 U270 ( .A1(port_x1_1), .A2(port_x2_0), .ZN(n67) );
  XOR2_X1 U271 ( .A(port_x3_1), .B(port_x0_1), .Z(N11) );
  XOR2_X1 U272 ( .A(port_x3_2), .B(port_x0_2), .Z(N12) );
  XOR2_X1 U273 ( .A(port_x3_0), .B(port_x0_0), .Z(N14) );
  XOR2_X1 U274 ( .A(port_x3_3), .B(port_x0_3), .Z(N13) );
  NOR2_X1 U275 ( .A1(n85), .A2(n86), .ZN(n83) );
  NOR2_X1 U276 ( .A1(port_x1_1), .A2(n3), .ZN(n85) );
  NOR2_X1 U277 ( .A1(n50), .A2(n62), .ZN(n86) );
  XNOR2_X1 U278 ( .A(n9), .B(n63), .ZN(N22) );
  XOR2_X1 U279 ( .A(port_x3_0), .B(port_x2_0), .Z(n63) );
  NAND2_X1 U280 ( .A1(port_x3_1), .A2(port_x1_1), .ZN(n56) );
  NAND2_X1 U281 ( .A1(port_x3_2), .A2(port_x2_1), .ZN(n125) );
  NAND2_X1 U282 ( .A1(port_x3_1), .A2(port_x2_1), .ZN(n124) );
  NAND2_X1 U283 ( .A1(port_x2_3), .A2(port_x3_3), .ZN(n91) );
  NAND2_X1 U284 ( .A1(port_x3_2), .A2(port_x1_2), .ZN(n32) );
  NAND2_X1 U285 ( .A1(port_x1_3), .A2(port_x3_3), .ZN(n12) );
  AND2_X1 U286 ( .A1(port_x3_0), .A2(port_x2_3), .ZN(n99) );
  AND2_X1 U287 ( .A1(port_x3_0), .A2(port_x1_3), .ZN(n22) );
  NAND2_X1 U288 ( .A1(n87), .A2(n88), .ZN(N18) );
  NAND2_X1 U289 ( .A1(port_x2_0), .A2(port_x3_0), .ZN(n88) );
  NAND2_X1 U290 ( .A1(port_x1_0), .A2(n9), .ZN(n87) );
endmodule

