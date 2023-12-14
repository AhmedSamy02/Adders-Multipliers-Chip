/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 13:47:07 2023
/////////////////////////////////////////////////////////////


module CarrySelectAdder ( A, B, Cin, Sum, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] Sum;
  input Cin;
  output Cout;
  wire   n2, n3, n4, n5;
  wire   [32:1] carryin0;
  wire   [32:1] carryin1;
  wire   [31:0] sumcarry0;
  wire   [31:0] sumcarry1;

  FullAdder fa6 ( .a(A[0]), .b(B[0]), .cin(1'b0), .sum(
        sumcarry0[0]), .cout(carryin0[1]) );
  FullAdder fa5 ( .a(A[0]), .b(B[0]), .cin(1'b1), .sum(
        sumcarry1[0]), .cout(carryin1[1]) );
  FullAdder fa4 ( .a(A[1]), .b(B[1]), .cin(carryin0[1]), 
        .sum(sumcarry0[1]), .cout(carryin0[2]) );
  FullAdder fa3( .a(A[1]), .b(B[1]), .cin(carryin1[1]), 
        .sum(sumcarry1[1]), .cout(carryin1[2]) );
  FullAdder fa2 ( .a(A[2]), .b(B[2]), .cin(carryin0[2]), 
        .sum(sumcarry0[2]), .cout(carryin0[3]) );
  FullAdder fa1 ( .a(A[2]), .b(B[2]), .cin(carryin1[2]), 
        .sum(sumcarry1[2]), .cout(carryin1[3]) );
  FullAdder fa0 ( .a(A[3]), .b(B[3]), .cin(carryin0[3]), 
        .sum(sumcarry0[3]), .cout(carryin0[4]) );
  FullAdder fa89   ( .a(A[3]), .b(B[3]), .cin(carryin1[3]), 
        .sum(sumcarry1[3]), .cout(carryin1[4]) );
  FullAdder fa88  ( .a(A[4]), .b(B[4]), .cin(carryin0[4]), 
        .sum(sumcarry0[4]), .cout(carryin0[5]) );
  FullAdder fa87   ( .a(A[4]), .b(B[4]), .cin(carryin1[4]), 
        .sum(sumcarry1[4]), .cout(carryin1[5]) );
  FullAdder fa86  ( .a(A[5]), .b(B[5]), .cin(carryin0[5]), 
        .sum(sumcarry0[5]), .cout(carryin0[6]) );
  FullAdder fa85   ( .a(A[5]), .b(B[5]), .cin(carryin1[5]), 
        .sum(sumcarry1[5]), .cout(carryin1[6]) );
  FullAdder fa84  ( .a(A[6]), .b(B[6]), .cin(carryin0[6]), 
        .sum(sumcarry0[6]), .cout(carryin0[7]) );
  FullAdder fa83   ( .a(A[6]), .b(B[6]), .cin(carryin1[6]), 
        .sum(sumcarry1[6]), .cout(carryin1[7]) );
  FullAdder fa82 ( .a(A[7]), .b(B[7]), .cin(carryin0[7]), 
        .sum(sumcarry0[7]), .cout(carryin0[8]) );
  FullAdder fa81  ( .a(A[7]), .b(B[7]), .cin(carryin1[7]), 
        .sum(sumcarry1[7]), .cout(carryin1[8]) );
  FullAdder fa80 ( .a(A[8]), .b(B[8]), .cin(carryin0[8]), 
        .sum(sumcarry0[8]), .cout(carryin0[9]) );
  FullAdder fa79  ( .a(A[8]), .b(B[8]), .cin(carryin1[8]), 
        .sum(sumcarry1[8]), .cout(carryin1[9]) );
  FullAdder fa78  ( .a(A[9]), .b(B[9]), .cin(carryin0[9]), 
        .sum(sumcarry0[9]), .cout(carryin0[10]) );
  FullAdder fa77   ( .a(A[9]), .b(B[9]), .cin(carryin1[9]), 
        .sum(sumcarry1[9]), .cout(carryin1[10]) );
  FullAdder fa76  ( .a(A[10]), .b(B[10]), .cin(carryin0[10]), 
        .sum(sumcarry0[10]), .cout(carryin0[11]) );
  FullAdder fa75   ( .a(A[10]), .b(B[10]), .cin(carryin1[10]), 
        .sum(sumcarry1[10]), .cout(carryin1[11]) );
  FullAdder fa74  ( .a(A[11]), .b(B[11]), .cin(carryin0[11]), 
        .sum(sumcarry0[11]), .cout(carryin0[12]) );
  FullAdder fa73   ( .a(A[11]), .b(B[11]), .cin(carryin1[11]), 
        .sum(sumcarry1[11]), .cout(carryin1[12]) );
  FullAdder fa72  ( .a(A[12]), .b(B[12]), .cin(carryin0[12]), 
        .sum(sumcarry0[12]), .cout(carryin0[13]) );
  FullAdder fa71   ( .a(A[12]), .b(B[12]), .cin(carryin1[12]), 
        .sum(sumcarry1[12]), .cout(carryin1[13]) );
  FullAdder fa70  ( .a(A[13]), .b(B[13]), .cin(carryin0[13]), 
        .sum(sumcarry0[13]), .cout(carryin0[14]) );
  FullAdder fa69   ( .a(A[13]), .b(B[13]), .cin(carryin1[13]), 
        .sum(sumcarry1[13]), .cout(carryin1[14]) );
  FullAdder fa68  ( .a(A[14]), .b(B[14]), .cin(carryin0[14]), 
        .sum(sumcarry0[14]), .cout(carryin0[15]) );
  FullAdder fa67   ( .a(A[14]), .b(B[14]), .cin(carryin1[14]), 
        .sum(sumcarry1[14]), .cout(carryin1[15]) );
  FullAdder fa66  ( .a(A[15]), .b(B[15]), .cin(carryin0[15]), 
        .sum(sumcarry0[15]), .cout(carryin0[16]) );
  FullAdder fa65   ( .a(A[15]), .b(B[15]), .cin(carryin1[15]), 
        .sum(sumcarry1[15]), .cout(carryin1[16]) );
  FullAdder fa64  ( .a(A[16]), .b(B[16]), .cin(carryin0[16]), 
        .sum(sumcarry0[16]), .cout(carryin0[17]) );
  FullAdder fa63   ( .a(A[16]), .b(B[16]), .cin(carryin1[16]), 
        .sum(sumcarry1[16]), .cout(carryin1[17]) );
  FullAdder fa62  ( .a(A[17]), .b(B[17]), .cin(carryin0[17]), 
        .sum(sumcarry0[17]), .cout(carryin0[18]) );
  FullAdder fa61   ( .a(A[17]), .b(B[17]), .cin(carryin1[17]), 
        .sum(sumcarry1[17]), .cout(carryin1[18]) );
  FullAdder fa60  ( .a(A[18]), .b(B[18]), .cin(carryin0[18]), 
        .sum(sumcarry0[18]), .cout(carryin0[19]) );
  FullAdder fa59   ( .a(A[18]), .b(B[18]), .cin(carryin1[18]), 
        .sum(sumcarry1[18]), .cout(carryin1[19]) );
  FullAdder fa58  ( .a(A[19]), .b(B[19]), .cin(carryin0[19]), 
        .sum(sumcarry0[19]), .cout(carryin0[20]) );
  FullAdder fa57   ( .a(A[19]), .b(B[19]), .cin(carryin1[19]), 
        .sum(sumcarry1[19]), .cout(carryin1[20]) );
  FullAdder fa56  ( .a(A[20]), .b(B[20]), .cin(carryin0[20]), 
        .sum(sumcarry0[20]), .cout(carryin0[21]) );
  FullAdder fa55   ( .a(A[20]), .b(B[20]), .cin(carryin1[20]), 
        .sum(sumcarry1[20]), .cout(carryin1[21]) );
  FullAdder fa54 ( .a(A[21]), .b(B[21]), .cin(carryin0[21]), 
        .sum(sumcarry0[21]), .cout(carryin0[22]) );
  FullAdder fa53  ( .a(A[21]), .b(B[21]), .cin(carryin1[21]), 
        .sum(sumcarry1[21]), .cout(carryin1[22]) );
  FullAdder fa52  ( .a(A[22]), .b(B[22]), .cin(carryin0[22]), 
        .sum(sumcarry0[22]), .cout(carryin0[23]) );
  FullAdder fa51   ( .a(A[22]), .b(B[22]), .cin(carryin1[22]), 
        .sum(sumcarry1[22]), .cout(carryin1[23]) );
  FullAdder fa50  ( .a(A[23]), .b(B[23]), .cin(carryin0[23]), 
        .sum(sumcarry0[23]), .cout(carryin0[24]) );
  FullAdder fa49   ( .a(A[23]), .b(B[23]), .cin(carryin1[23]), 
        .sum(sumcarry1[23]), .cout(carryin1[24]) );
  FullAdder fa48  ( .a(A[24]), .b(B[24]), .cin(carryin0[24]), 
        .sum(sumcarry0[24]), .cout(carryin0[25]) );
  FullAdder fa47   ( .a(A[24]), .b(B[24]), .cin(carryin1[24]), 
        .sum(sumcarry1[24]), .cout(carryin1[25]) );
  FullAdder fa46  ( .a(A[25]), .b(B[25]), .cin(carryin0[25]), 
        .sum(sumcarry0[25]), .cout(carryin0[26]) );
  FullAdder fa45   ( .a(A[25]), .b(B[25]), .cin(carryin1[25]), 
        .sum(sumcarry1[25]), .cout(carryin1[26]) );
  FullAdder fa44  ( .a(A[26]), .b(B[26]), .cin(carryin0[26]), 
        .sum(sumcarry0[26]), .cout(carryin0[27]) );
  FullAdder fa43   ( .a(A[26]), .b(B[26]), .cin(carryin1[26]), 
        .sum(sumcarry1[26]), .cout(carryin1[27]) );
  FullAdder fa42  ( .a(A[27]), .b(B[27]), .cin(carryin0[27]), 
        .sum(sumcarry0[27]), .cout(carryin0[28]) );
  FullAdder fa41   ( .a(A[27]), .b(B[27]), .cin(carryin1[27]), 
        .sum(sumcarry1[27]), .cout(carryin1[28]) );
  FullAdder fa806 ( .a(A[28]), .b(B[28]), .cin(carryin0[28]), 
        .sum(sumcarry0[28]), .cout(carryin0[29]) );
  FullAdder fa00 ( .a(A[28]), .b(B[28]), .cin(carryin1[28]), 
        .sum(sumcarry1[28]), .cout(carryin1[29]) );
  FullAdder fa01 ( .a(A[29]), .b(B[29]), .cin(carryin0[29]), 
        .sum(sumcarry0[29]), .cout(carryin0[30]) );
  FullAdder fa02( .a(A[29]), .b(B[29]), .cin(carryin1[29]), 
        .sum(sumcarry1[29]), .cout(carryin1[30]) );
  FullAdder f03 ( .a(A[30]), .b(B[30]), .cin(carryin0[30]), 
        .sum(sumcarry0[30]), .cout(carryin0[31]) );
  FullAdder fa04 ( .a(A[30]), .b(B[30]), .cin(carryin1[30]), 
        .sum(sumcarry1[30]), .cout(carryin1[31]) );
  FullAdder fa05 ( .a(A[31]), .b(B[31]), .cin(carryin0[31]), 
        .sum(sumcarry0[31]), .cout(carryin0[32]) );
  FullAdder fa06 ( .a(A[31]), .b(B[31]), .cin(carryin1[31]), 
        .sum(sumcarry1[31]), .cout(carryin1[32]) );
  AO22X1 U4 ( .IN1(sumcarry1[9]), .IN2(n2), .IN3(sumcarry0[9]), .IN4(n4), .Q(
        Sum[9]) );
  AO22X1 U5 ( .IN1(sumcarry1[8]), .IN2(n2), .IN3(sumcarry0[8]), .IN4(n4), .Q(
        Sum[8]) );
  AO22X1 U6 ( .IN1(sumcarry1[7]), .IN2(n2), .IN3(sumcarry0[7]), .IN4(n4), .Q(
        Sum[7]) );
  AO22X1 U7 ( .IN1(sumcarry1[6]), .IN2(n2), .IN3(sumcarry0[6]), .IN4(n4), .Q(
        Sum[6]) );
  AO22X1 U8 ( .IN1(sumcarry1[5]), .IN2(n2), .IN3(sumcarry0[5]), .IN4(n4), .Q(
        Sum[5]) );
  AO22X1 U9 ( .IN1(sumcarry1[4]), .IN2(n2), .IN3(sumcarry0[4]), .IN4(n4), .Q(
        Sum[4]) );
  AO22X1 U10 ( .IN1(sumcarry1[3]), .IN2(n2), .IN3(sumcarry0[3]), .IN4(n4), .Q(
        Sum[3]) );
  AO22X1 U11 ( .IN1(sumcarry1[31]), .IN2(n2), .IN3(sumcarry0[31]), .IN4(n4), 
        .Q(Sum[31]) );
  AO22X1 U12 ( .IN1(sumcarry1[30]), .IN2(n2), .IN3(sumcarry0[30]), .IN4(n4), 
        .Q(Sum[30]) );
  AO22X1 U13 ( .IN1(sumcarry1[2]), .IN2(n2), .IN3(sumcarry0[2]), .IN4(n4), .Q(
        Sum[2]) );
  AO22X1 U14 ( .IN1(sumcarry1[29]), .IN2(n2), .IN3(sumcarry0[29]), .IN4(n4), 
        .Q(Sum[29]) );
  AO22X1 U15 ( .IN1(sumcarry1[28]), .IN2(n2), .IN3(sumcarry0[28]), .IN4(n4), 
        .Q(Sum[28]) );
  AO22X1 U16 ( .IN1(sumcarry1[27]), .IN2(n3), .IN3(sumcarry0[27]), .IN4(n5), 
        .Q(Sum[27]) );
  AO22X1 U17 ( .IN1(sumcarry1[26]), .IN2(n3), .IN3(sumcarry0[26]), .IN4(n5), 
        .Q(Sum[26]) );
  AO22X1 U18 ( .IN1(sumcarry1[25]), .IN2(n3), .IN3(sumcarry0[25]), .IN4(n5), 
        .Q(Sum[25]) );
  AO22X1 U19 ( .IN1(sumcarry1[24]), .IN2(n3), .IN3(sumcarry0[24]), .IN4(n5), 
        .Q(Sum[24]) );
  AO22X1 U20 ( .IN1(sumcarry1[23]), .IN2(n3), .IN3(sumcarry0[23]), .IN4(n5), 
        .Q(Sum[23]) );
  AO22X1 U21 ( .IN1(sumcarry1[22]), .IN2(n3), .IN3(sumcarry0[22]), .IN4(n5), 
        .Q(Sum[22]) );
  AO22X1 U22 ( .IN1(sumcarry1[21]), .IN2(n3), .IN3(sumcarry0[21]), .IN4(n5), 
        .Q(Sum[21]) );
  AO22X1 U23 ( .IN1(sumcarry1[20]), .IN2(n3), .IN3(sumcarry0[20]), .IN4(n5), 
        .Q(Sum[20]) );
  AO22X1 U24 ( .IN1(sumcarry1[1]), .IN2(n3), .IN3(sumcarry0[1]), .IN4(n5), .Q(
        Sum[1]) );
  AO22X1 U25 ( .IN1(sumcarry1[19]), .IN2(n3), .IN3(sumcarry0[19]), .IN4(n5), 
        .Q(Sum[19]) );
  AO22X1 U26 ( .IN1(sumcarry1[18]), .IN2(n3), .IN3(sumcarry0[18]), .IN4(n5), 
        .Q(Sum[18]) );
  AO22X1 U27 ( .IN1(sumcarry1[17]), .IN2(n3), .IN3(sumcarry0[17]), .IN4(n5), 
        .Q(Sum[17]) );
  AO22X1 U28 ( .IN1(sumcarry1[16]), .IN2(n3), .IN3(sumcarry0[16]), .IN4(n5), 
        .Q(Sum[16]) );
  AO22X1 U29 ( .IN1(sumcarry1[15]), .IN2(n2), .IN3(sumcarry0[15]), .IN4(n4), 
        .Q(Sum[15]) );
  AO22X1 U30 ( .IN1(sumcarry1[14]), .IN2(n3), .IN3(sumcarry0[14]), .IN4(n5), 
        .Q(Sum[14]) );
  AO22X1 U31 ( .IN1(sumcarry1[13]), .IN2(n2), .IN3(sumcarry0[13]), .IN4(n4), 
        .Q(Sum[13]) );
  AO22X1 U32 ( .IN1(sumcarry1[12]), .IN2(n3), .IN3(sumcarry0[12]), .IN4(n5), 
        .Q(Sum[12]) );
  AO22X1 U33 ( .IN1(sumcarry1[11]), .IN2(n2), .IN3(sumcarry0[11]), .IN4(n4), 
        .Q(Sum[11]) );
  AO22X1 U34 ( .IN1(sumcarry1[10]), .IN2(n3), .IN3(sumcarry0[10]), .IN4(n5), 
        .Q(Sum[10]) );
  AO22X1 U35 ( .IN1(sumcarry1[0]), .IN2(n2), .IN3(sumcarry0[0]), .IN4(n4), .Q(
        Sum[0]) );
  AO22X1 U36 ( .IN1(carryin1[32]), .IN2(n3), .IN3(carryin0[32]), .IN4(n5), .Q(
        Cout) );
  INVX0 U37 ( .IN1(Cin), .QN(n5) );
  INVX0 U38 ( .IN1(Cin), .QN(n4) );
  INVX0 U39 ( .IN1(n5), .QN(n3) );
  INVX0 U40 ( .IN1(n4), .QN(n2) );
endmodule

