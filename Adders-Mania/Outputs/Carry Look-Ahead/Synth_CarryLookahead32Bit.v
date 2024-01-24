/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 14:04:57 2023
/////////////////////////////////////////////////////////////


module CarryLookahead32Bit ( A, B, Cin, Sum, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] Sum;
  input Cin;
  output Cout;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32;
  wire   [31:0] G;
  tri   [31:0] A;
  tri   [31:0] B;
  tri   Cin;
  tri   [31:0] Sum;
  tri   [30:0] C;
  tri   dummy;

  FullAdder FA0 ( .a(A[0]), .b(B[0]), .cin(Cin), .cout(dummy), .sum(Sum[0]) );
  FullAdder FA1 ( .a(A[1]), .b(B[1]), .cin(C[0]), .cout(dummy), .sum(Sum[1])
         );
  FullAdder FA2 ( .a(A[2]), .b(B[2]), .cin(C[1]), .cout(dummy), .sum(Sum[2])
         );
  FullAdder FA3 ( .a(A[3]), .b(B[3]), .cin(C[2]), .cout(dummy), .sum(Sum[3])
         );
  FullAdder FA4 ( .a(A[4]), .b(B[4]), .cin(C[3]), .cout(dummy), .sum(Sum[4])
         );
  FullAdder FA5 ( .a(A[5]), .b(B[5]), .cin(C[4]), .cout(dummy), .sum(Sum[5])
         );
  FullAdder FA6 ( .a(A[6]), .b(B[6]), .cin(C[5]), .cout(dummy), .sum(Sum[6])
         );
  FullAdder FA7 ( .a(A[7]), .b(B[7]), .cin(C[6]), .cout(dummy), .sum(Sum[7])
         );
  FullAdder FA8 ( .a(A[8]), .b(B[8]), .cin(C[7]), .cout(dummy), .sum(Sum[8])
         );
  FullAdder FA9 ( .a(A[9]), .b(B[9]), .cin(C[8]), .cout(dummy), .sum(Sum[9])
         );
  FullAdder FA10 ( .a(A[10]), .b(B[10]), .cin(C[9]), .cout(dummy), .sum(
        Sum[10]) );
  FullAdder FA11 ( .a(A[11]), .b(B[11]), .cin(C[10]), .cout(dummy), .sum(
        Sum[11]) );
  FullAdder FA12 ( .a(A[12]), .b(B[12]), .cin(C[11]), .cout(dummy), .sum(
        Sum[12]) );
  FullAdder FA13 ( .a(A[13]), .b(B[13]), .cin(C[12]), .cout(dummy), .sum(
        Sum[13]) );
  FullAdder FA14 ( .a(A[14]), .b(B[14]), .cin(C[13]), .cout(dummy), .sum(
        Sum[14]) );
  FullAdder FA15 ( .a(A[15]), .b(B[15]), .cin(C[14]), .cout(dummy), .sum(
        Sum[15]) );
  FullAdder FA16 ( .a(A[16]), .b(B[16]), .cin(C[15]), .cout(dummy), .sum(
        Sum[16]) );
  FullAdder FA17 ( .a(A[17]), .b(B[17]), .cin(C[16]), .cout(dummy), .sum(
        Sum[17]) );
  FullAdder FA18 ( .a(A[18]), .b(B[18]), .cin(C[17]), .cout(dummy), .sum(
        Sum[18]) );
  FullAdder FA19 ( .a(A[19]), .b(B[19]), .cin(C[18]), .cout(dummy), .sum(
        Sum[19]) );
  FullAdder FA20 ( .a(A[20]), .b(B[20]), .cin(C[19]), .cout(dummy), .sum(
        Sum[20]) );
  FullAdder FA21 ( .a(A[21]), .b(B[21]), .cin(C[20]), .cout(dummy), .sum(
        Sum[21]) );
  FullAdder FA22 ( .a(A[22]), .b(B[22]), .cin(C[21]), .cout(dummy), .sum(
        Sum[22]) );
  FullAdder FA23 ( .a(A[23]), .b(B[23]), .cin(C[22]), .cout(dummy), .sum(
        Sum[23]) );
  FullAdder FA24 ( .a(A[24]), .b(B[24]), .cin(C[23]), .cout(dummy), .sum(
        Sum[24]) );
  FullAdder FA25 ( .a(A[25]), .b(B[25]), .cin(C[24]), .cout(dummy), .sum(
        Sum[25]) );
  FullAdder FA26 ( .a(A[26]), .b(B[26]), .cin(C[25]), .cout(dummy), .sum(
        Sum[26]) );
  FullAdder FA27 ( .a(A[27]), .b(B[27]), .cin(C[26]), .cout(dummy), .sum(
        Sum[27]) );
  FullAdder FA28 ( .a(A[28]), .b(B[28]), .cin(C[27]), .cout(dummy), .sum(
        Sum[28]) );
  FullAdder FA29 ( .a(A[29]), .b(B[29]), .cin(C[28]), .cout(dummy), .sum(
        Sum[29]) );
  FullAdder FA30 ( .a(A[30]), .b(B[30]), .cin(C[29]), .cout(dummy), .sum(
        Sum[30]) );
  FullAdder FA31 ( .a(A[31]), .b(B[31]), .cin(C[30]), .cout(dummy), .sum(
        Sum[31]) );
  OR2X1 C226 ( .IN1(G[30]), .IN2(N30), .Q(C[30]) );
  OR2X1 C224 ( .IN1(G[29]), .IN2(N29), .Q(C[29]) );
  OR2X1 C222 ( .IN1(G[28]), .IN2(N28), .Q(C[28]) );
  OR2X1 C220 ( .IN1(G[27]), .IN2(N27), .Q(C[27]) );
  OR2X1 C218 ( .IN1(G[26]), .IN2(N26), .Q(C[26]) );
  OR2X1 C216 ( .IN1(G[25]), .IN2(N25), .Q(C[25]) );
  OR2X1 C214 ( .IN1(G[24]), .IN2(N24), .Q(C[24]) );
  OR2X1 C212 ( .IN1(G[23]), .IN2(N23), .Q(C[23]) );
  OR2X1 C210 ( .IN1(G[22]), .IN2(N22), .Q(C[22]) );
  OR2X1 C208 ( .IN1(G[21]), .IN2(N21), .Q(C[21]) );
  OR2X1 C206 ( .IN1(G[20]), .IN2(N20), .Q(C[20]) );
  OR2X1 C204 ( .IN1(G[19]), .IN2(N19), .Q(C[19]) );
  OR2X1 C202 ( .IN1(G[18]), .IN2(N18), .Q(C[18]) );
  OR2X1 C200 ( .IN1(G[17]), .IN2(N17), .Q(C[17]) );
  OR2X1 C198 ( .IN1(G[16]), .IN2(N16), .Q(C[16]) );
  OR2X1 C196 ( .IN1(G[15]), .IN2(N15), .Q(C[15]) );
  OR2X1 C194 ( .IN1(G[14]), .IN2(N14), .Q(C[14]) );
  OR2X1 C192 ( .IN1(G[13]), .IN2(N13), .Q(C[13]) );
  OR2X1 C190 ( .IN1(G[12]), .IN2(N12), .Q(C[12]) );
  OR2X1 C188 ( .IN1(G[11]), .IN2(N11), .Q(C[11]) );
  OR2X1 C186 ( .IN1(G[10]), .IN2(N10), .Q(C[10]) );
  OR2X1 C184 ( .IN1(G[9]), .IN2(N9), .Q(C[9]) );
  OR2X1 C182 ( .IN1(G[8]), .IN2(N8), .Q(C[8]) );
  OR2X1 C180 ( .IN1(G[7]), .IN2(N7), .Q(C[7]) );
  OR2X1 C178 ( .IN1(G[6]), .IN2(N6), .Q(C[6]) );
  OR2X1 C176 ( .IN1(G[5]), .IN2(N5), .Q(C[5]) );
  OR2X1 C174 ( .IN1(G[4]), .IN2(N4), .Q(C[4]) );
  OR2X1 C172 ( .IN1(G[3]), .IN2(N3), .Q(C[3]) );
  OR2X1 C170 ( .IN1(G[2]), .IN2(N2), .Q(C[2]) );
  OR2X1 C168 ( .IN1(G[1]), .IN2(N1), .Q(C[1]) );
  OR2X1 C166 ( .IN1(G[0]), .IN2(N0), .Q(C[0]) );
  AND2X1 U1 ( .IN1(C[8]), .IN2(n1), .Q(N9) );
  XOR2X1 U2 ( .IN1(B[9]), .IN2(A[9]), .Q(n1) );
  AND2X1 U3 ( .IN1(C[7]), .IN2(n2), .Q(N8) );
  XOR2X1 U4 ( .IN1(B[8]), .IN2(A[8]), .Q(n2) );
  AND2X1 U5 ( .IN1(C[6]), .IN2(n3), .Q(N7) );
  XOR2X1 U6 ( .IN1(B[7]), .IN2(A[7]), .Q(n3) );
  AND2X1 U7 ( .IN1(C[5]), .IN2(n4), .Q(N6) );
  XOR2X1 U8 ( .IN1(B[6]), .IN2(A[6]), .Q(n4) );
  AND2X1 U9 ( .IN1(C[4]), .IN2(n5), .Q(N5) );
  XOR2X1 U10 ( .IN1(B[5]), .IN2(A[5]), .Q(n5) );
  AND2X1 U11 ( .IN1(C[3]), .IN2(n6), .Q(N4) );
  XOR2X1 U12 ( .IN1(B[4]), .IN2(A[4]), .Q(n6) );
  AND2X1 U13 ( .IN1(C[29]), .IN2(n7), .Q(N30) );
  XOR2X1 U14 ( .IN1(B[30]), .IN2(A[30]), .Q(n7) );
  AND2X1 U15 ( .IN1(C[2]), .IN2(n8), .Q(N3) );
  XOR2X1 U16 ( .IN1(B[3]), .IN2(A[3]), .Q(n8) );
  AND2X1 U17 ( .IN1(C[28]), .IN2(n9), .Q(N29) );
  XOR2X1 U18 ( .IN1(B[29]), .IN2(A[29]), .Q(n9) );
  AND2X1 U19 ( .IN1(C[27]), .IN2(n10), .Q(N28) );
  XOR2X1 U20 ( .IN1(B[28]), .IN2(A[28]), .Q(n10) );
  AND2X1 U21 ( .IN1(C[26]), .IN2(n11), .Q(N27) );
  XOR2X1 U22 ( .IN1(B[27]), .IN2(A[27]), .Q(n11) );
  AND2X1 U23 ( .IN1(C[25]), .IN2(n12), .Q(N26) );
  XOR2X1 U24 ( .IN1(B[26]), .IN2(A[26]), .Q(n12) );
  AND2X1 U25 ( .IN1(C[24]), .IN2(n13), .Q(N25) );
  XOR2X1 U26 ( .IN1(B[25]), .IN2(A[25]), .Q(n13) );
  AND2X1 U27 ( .IN1(C[23]), .IN2(n14), .Q(N24) );
  XOR2X1 U28 ( .IN1(B[24]), .IN2(A[24]), .Q(n14) );
  AND2X1 U29 ( .IN1(C[22]), .IN2(n15), .Q(N23) );
  XOR2X1 U30 ( .IN1(B[23]), .IN2(A[23]), .Q(n15) );
  AND2X1 U31 ( .IN1(C[21]), .IN2(n16), .Q(N22) );
  XOR2X1 U32 ( .IN1(B[22]), .IN2(A[22]), .Q(n16) );
  AND2X1 U33 ( .IN1(C[20]), .IN2(n17), .Q(N21) );
  XOR2X1 U34 ( .IN1(B[21]), .IN2(A[21]), .Q(n17) );
  AND2X1 U35 ( .IN1(C[19]), .IN2(n18), .Q(N20) );
  XOR2X1 U36 ( .IN1(B[20]), .IN2(A[20]), .Q(n18) );
  AND2X1 U37 ( .IN1(C[1]), .IN2(n19), .Q(N2) );
  XOR2X1 U38 ( .IN1(B[2]), .IN2(A[2]), .Q(n19) );
  AND2X1 U39 ( .IN1(C[18]), .IN2(n20), .Q(N19) );
  XOR2X1 U40 ( .IN1(B[19]), .IN2(A[19]), .Q(n20) );
  AND2X1 U41 ( .IN1(C[17]), .IN2(n21), .Q(N18) );
  XOR2X1 U42 ( .IN1(B[18]), .IN2(A[18]), .Q(n21) );
  AND2X1 U43 ( .IN1(C[16]), .IN2(n22), .Q(N17) );
  XOR2X1 U44 ( .IN1(B[17]), .IN2(A[17]), .Q(n22) );
  AND2X1 U45 ( .IN1(C[15]), .IN2(n23), .Q(N16) );
  XOR2X1 U46 ( .IN1(B[16]), .IN2(A[16]), .Q(n23) );
  AND2X1 U47 ( .IN1(C[14]), .IN2(n24), .Q(N15) );
  XOR2X1 U48 ( .IN1(B[15]), .IN2(A[15]), .Q(n24) );
  AND2X1 U49 ( .IN1(C[13]), .IN2(n25), .Q(N14) );
  XOR2X1 U50 ( .IN1(B[14]), .IN2(A[14]), .Q(n25) );
  AND2X1 U51 ( .IN1(C[12]), .IN2(n26), .Q(N13) );
  XOR2X1 U52 ( .IN1(B[13]), .IN2(A[13]), .Q(n26) );
  AND2X1 U53 ( .IN1(C[11]), .IN2(n27), .Q(N12) );
  XOR2X1 U54 ( .IN1(B[12]), .IN2(A[12]), .Q(n27) );
  AND2X1 U55 ( .IN1(C[10]), .IN2(n28), .Q(N11) );
  XOR2X1 U56 ( .IN1(B[11]), .IN2(A[11]), .Q(n28) );
  AND2X1 U57 ( .IN1(C[9]), .IN2(n29), .Q(N10) );
  XOR2X1 U58 ( .IN1(B[10]), .IN2(A[10]), .Q(n29) );
  AND2X1 U59 ( .IN1(C[0]), .IN2(n30), .Q(N1) );
  XOR2X1 U60 ( .IN1(B[1]), .IN2(A[1]), .Q(n30) );
  AND2X1 U61 ( .IN1(Cin), .IN2(n31), .Q(N0) );
  XOR2X1 U62 ( .IN1(B[0]), .IN2(A[0]), .Q(n31) );
  AND2X1 U63 ( .IN1(B[9]), .IN2(A[9]), .Q(G[9]) );
  AND2X1 U64 ( .IN1(B[8]), .IN2(A[8]), .Q(G[8]) );
  AND2X1 U65 ( .IN1(B[7]), .IN2(A[7]), .Q(G[7]) );
  AND2X1 U66 ( .IN1(B[6]), .IN2(A[6]), .Q(G[6]) );
  AND2X1 U67 ( .IN1(B[5]), .IN2(A[5]), .Q(G[5]) );
  AND2X1 U68 ( .IN1(B[4]), .IN2(A[4]), .Q(G[4]) );
  AND2X1 U69 ( .IN1(B[3]), .IN2(A[3]), .Q(G[3]) );
  AND2X1 U70 ( .IN1(B[30]), .IN2(A[30]), .Q(G[30]) );
  AND2X1 U71 ( .IN1(B[2]), .IN2(A[2]), .Q(G[2]) );
  AND2X1 U72 ( .IN1(B[29]), .IN2(A[29]), .Q(G[29]) );
  AND2X1 U73 ( .IN1(B[28]), .IN2(A[28]), .Q(G[28]) );
  AND2X1 U74 ( .IN1(B[27]), .IN2(A[27]), .Q(G[27]) );
  AND2X1 U75 ( .IN1(B[26]), .IN2(A[26]), .Q(G[26]) );
  AND2X1 U76 ( .IN1(B[25]), .IN2(A[25]), .Q(G[25]) );
  AND2X1 U77 ( .IN1(B[24]), .IN2(A[24]), .Q(G[24]) );
  AND2X1 U78 ( .IN1(B[23]), .IN2(A[23]), .Q(G[23]) );
  AND2X1 U79 ( .IN1(B[22]), .IN2(A[22]), .Q(G[22]) );
  AND2X1 U80 ( .IN1(B[21]), .IN2(A[21]), .Q(G[21]) );
  AND2X1 U81 ( .IN1(B[20]), .IN2(A[20]), .Q(G[20]) );
  AND2X1 U82 ( .IN1(B[1]), .IN2(A[1]), .Q(G[1]) );
  AND2X1 U83 ( .IN1(B[19]), .IN2(A[19]), .Q(G[19]) );
  AND2X1 U84 ( .IN1(B[18]), .IN2(A[18]), .Q(G[18]) );
  AND2X1 U85 ( .IN1(B[17]), .IN2(A[17]), .Q(G[17]) );
  AND2X1 U86 ( .IN1(B[16]), .IN2(A[16]), .Q(G[16]) );
  AND2X1 U87 ( .IN1(B[15]), .IN2(A[15]), .Q(G[15]) );
  AND2X1 U88 ( .IN1(B[14]), .IN2(A[14]), .Q(G[14]) );
  AND2X1 U89 ( .IN1(B[13]), .IN2(A[13]), .Q(G[13]) );
  AND2X1 U90 ( .IN1(B[12]), .IN2(A[12]), .Q(G[12]) );
  AND2X1 U91 ( .IN1(B[11]), .IN2(A[11]), .Q(G[11]) );
  AND2X1 U92 ( .IN1(B[10]), .IN2(A[10]), .Q(G[10]) );
  AND2X1 U93 ( .IN1(B[0]), .IN2(A[0]), .Q(G[0]) );
  AO22X1 U94 ( .IN1(B[31]), .IN2(A[31]), .IN3(C[30]), .IN4(n32), .Q(Cout) );
  OR2X1 U95 ( .IN1(B[31]), .IN2(A[31]), .Q(n32) );
endmodule

