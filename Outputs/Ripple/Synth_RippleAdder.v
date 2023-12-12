/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 13:42:32 2023
/////////////////////////////////////////////////////////////


module RippleAdder ( a, b, cin, sum, cout );
  input [31:0] a;
  input [31:0] b;
  output [31:0] sum;
  input cin;
  output cout;

  wire   [31:1] out;

  FullAdder_0 \genblk1[0].uut  ( .a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), 
        .cout(out[1]) );
  FullAdder_31 \genblk1[1].uut  ( .a(a[1]), .b(b[1]), .cin(out[1]), .sum(
        sum[1]), .cout(out[2]) );
  FullAdder_30 \genblk1[2].uut  ( .a(a[2]), .b(b[2]), .cin(out[2]), .sum(
        sum[2]), .cout(out[3]) );
  FullAdder_29 \genblk1[3].uut  ( .a(a[3]), .b(b[3]), .cin(out[3]), .sum(
        sum[3]), .cout(out[4]) );
  FullAdder_28 \genblk1[4].uut  ( .a(a[4]), .b(b[4]), .cin(out[4]), .sum(
        sum[4]), .cout(out[5]) );
  FullAdder_27 \genblk1[5].uut  ( .a(a[5]), .b(b[5]), .cin(out[5]), .sum(
        sum[5]), .cout(out[6]) );
  FullAdder_26 \genblk1[6].uut  ( .a(a[6]), .b(b[6]), .cin(out[6]), .sum(
        sum[6]), .cout(out[7]) );
  FullAdder_25 \genblk1[7].uut  ( .a(a[7]), .b(b[7]), .cin(out[7]), .sum(
        sum[7]), .cout(out[8]) );
  FullAdder_24 \genblk1[8].uut  ( .a(a[8]), .b(b[8]), .cin(out[8]), .sum(
        sum[8]), .cout(out[9]) );
  FullAdder_23 \genblk1[9].uut  ( .a(a[9]), .b(b[9]), .cin(out[9]), .sum(
        sum[9]), .cout(out[10]) );
  FullAdder_22 \genblk1[10].uut  ( .a(a[10]), .b(b[10]), .cin(out[10]), .sum(
        sum[10]), .cout(out[11]) );
  FullAdder_21 \genblk1[11].uut  ( .a(a[11]), .b(b[11]), .cin(out[11]), .sum(
        sum[11]), .cout(out[12]) );
  FullAdder_20 \genblk1[12].uut  ( .a(a[12]), .b(b[12]), .cin(out[12]), .sum(
        sum[12]), .cout(out[13]) );
  FullAdder_19 \genblk1[13].uut  ( .a(a[13]), .b(b[13]), .cin(out[13]), .sum(
        sum[13]), .cout(out[14]) );
  FullAdder_18 \genblk1[14].uut  ( .a(a[14]), .b(b[14]), .cin(out[14]), .sum(
        sum[14]), .cout(out[15]) );
  FullAdder_17 \genblk1[15].uut  ( .a(a[15]), .b(b[15]), .cin(out[15]), .sum(
        sum[15]), .cout(out[16]) );
  FullAdder_16 \genblk1[16].uut  ( .a(a[16]), .b(b[16]), .cin(out[16]), .sum(
        sum[16]), .cout(out[17]) );
  FullAdder_15 \genblk1[17].uut  ( .a(a[17]), .b(b[17]), .cin(out[17]), .sum(
        sum[17]), .cout(out[18]) );
  FullAdder_14 \genblk1[18].uut  ( .a(a[18]), .b(b[18]), .cin(out[18]), .sum(
        sum[18]), .cout(out[19]) );
  FullAdder_13 \genblk1[19].uut  ( .a(a[19]), .b(b[19]), .cin(out[19]), .sum(
        sum[19]), .cout(out[20]) );
  FullAdder_12 \genblk1[20].uut  ( .a(a[20]), .b(b[20]), .cin(out[20]), .sum(
        sum[20]), .cout(out[21]) );
  FullAdder_11 \genblk1[21].uut  ( .a(a[21]), .b(b[21]), .cin(out[21]), .sum(
        sum[21]), .cout(out[22]) );
  FullAdder_10 \genblk1[22].uut  ( .a(a[22]), .b(b[22]), .cin(out[22]), .sum(
        sum[22]), .cout(out[23]) );
  FullAdder_9 \genblk1[23].uut  ( .a(a[23]), .b(b[23]), .cin(out[23]), .sum(
        sum[23]), .cout(out[24]) );
  FullAdder_8 \genblk1[24].uut  ( .a(a[24]), .b(b[24]), .cin(out[24]), .sum(
        sum[24]), .cout(out[25]) );
  FullAdder_7 \genblk1[25].uut  ( .a(a[25]), .b(b[25]), .cin(out[25]), .sum(
        sum[25]), .cout(out[26]) );
  FullAdder_6 \genblk1[26].uut  ( .a(a[26]), .b(b[26]), .cin(out[26]), .sum(
        sum[26]), .cout(out[27]) );
  FullAdder_5 \genblk1[27].uut  ( .a(a[27]), .b(b[27]), .cin(out[27]), .sum(
        sum[27]), .cout(out[28]) );
  FullAdder_4 \genblk1[28].uut  ( .a(a[28]), .b(b[28]), .cin(out[28]), .sum(
        sum[28]), .cout(out[29]) );
  FullAdder_3 \genblk1[29].uut  ( .a(a[29]), .b(b[29]), .cin(out[29]), .sum(
        sum[29]), .cout(out[30]) );
  FullAdder_2 \genblk1[30].uut  ( .a(a[30]), .b(b[30]), .cin(out[30]), .sum(
        sum[30]), .cout(out[31]) );
  FullAdder_1 \genblk1[31].uut  ( .a(a[31]), .b(b[31]), .cin(out[31]), .sum(
        sum[31]), .cout(cout) );
endmodule

