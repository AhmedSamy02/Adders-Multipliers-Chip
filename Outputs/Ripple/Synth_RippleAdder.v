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

  FullAdder    uut0uut  ( .a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), 
        .cout(out[1]) );
  FullAdder    uut1uut  ( .a(a[1]), .b(b[1]), .cin(out[1]), .sum(
        sum[1]), .cout(out[2]) );
  FullAdder    uut2uut  ( .a(a[2]), .b(b[2]), .cin(out[2]), .sum(
        sum[2]), .cout(out[3]) );
  FullAdder    uut3uut  ( .a(a[3]), .b(b[3]), .cin(out[3]), .sum(
        sum[3]), .cout(out[4]) );
  FullAdder    uut4uut  ( .a(a[4]), .b(b[4]), .cin(out[4]), .sum(
        sum[4]), .cout(out[5]) );
  FullAdder    uut5uut  ( .a(a[5]), .b(b[5]), .cin(out[5]), .sum(
        sum[5]), .cout(out[6]) );
  FullAdder    uut6uut  ( .a(a[6]), .b(b[6]), .cin(out[6]), .sum(
        sum[6]), .cout(out[7]) );
  FullAdder    uut7uut  ( .a(a[7]), .b(b[7]), .cin(out[7]), .sum(
        sum[7]), .cout(out[8]) );
  FullAdder    uut8uut  ( .a(a[8]), .b(b[8]), .cin(out[8]), .sum(
        sum[8]), .cout(out[9]) );
  FullAdder    uut9uut  ( .a(a[9]), .b(b[9]), .cin(out[9]), .sum(
        sum[9]), .cout(out[10]) );
  FullAdder    uut10uut  ( .a(a[10]), .b(b[10]), .cin(out[10]), .sum(
        sum[10]), .cout(out[11]) );
  FullAdder    uut11uut  ( .a(a[11]), .b(b[11]), .cin(out[11]), .sum(
        sum[11]), .cout(out[12]) );
  FullAdder    uut12uut  ( .a(a[12]), .b(b[12]), .cin(out[12]), .sum(
        sum[12]), .cout(out[13]) );
  FullAdder    uut13uut  ( .a(a[13]), .b(b[13]), .cin(out[13]), .sum(
        sum[13]), .cout(out[14]) );
  FullAdder    uut14uut  ( .a(a[14]), .b(b[14]), .cin(out[14]), .sum(
        sum[14]), .cout(out[15]) );
  FullAdder    uut15uut  ( .a(a[15]), .b(b[15]), .cin(out[15]), .sum(
        sum[15]), .cout(out[16]) );
  FullAdder    uut16uut  ( .a(a[16]), .b(b[16]), .cin(out[16]), .sum(
        sum[16]), .cout(out[17]) );
  FullAdder    uut17uut  ( .a(a[17]), .b(b[17]), .cin(out[17]), .sum(
        sum[17]), .cout(out[18]) );
  FullAdder    uut18uut  ( .a(a[18]), .b(b[18]), .cin(out[18]), .sum(
        sum[18]), .cout(out[19]) );
  FullAdder    uut19uut  ( .a(a[19]), .b(b[19]), .cin(out[19]), .sum(
        sum[19]), .cout(out[20]) );
  FullAdder    uut20uut  ( .a(a[20]), .b(b[20]), .cin(out[20]), .sum(
        sum[20]), .cout(out[21]) );
  FullAdder    uut21uut  ( .a(a[21]), .b(b[21]), .cin(out[21]), .sum(
        sum[21]), .cout(out[22]) );
  FullAdder    uut22uut  ( .a(a[22]), .b(b[22]), .cin(out[22]), .sum(
        sum[22]), .cout(out[23]) );
  FullAdder    uut23uut  ( .a(a[23]), .b(b[23]), .cin(out[23]), .sum(
        sum[23]), .cout(out[24]) );
  FullAdder    uut24uut  ( .a(a[24]), .b(b[24]), .cin(out[24]), .sum(
        sum[24]), .cout(out[25]) );
  FullAdder    uut25uut  ( .a(a[25]), .b(b[25]), .cin(out[25]), .sum(
        sum[25]), .cout(out[26]) );
  FullAdder    uut26uut  ( .a(a[26]), .b(b[26]), .cin(out[26]), .sum(
        sum[26]), .cout(out[27]) );
  FullAdder    uut27uut  ( .a(a[27]), .b(b[27]), .cin(out[27]), .sum(
        sum[27]), .cout(out[28]) );
  FullAdder    uut28uut  ( .a(a[28]), .b(b[28]), .cin(out[28]), .sum(
        sum[28]), .cout(out[29]) );
  FullAdder    uut29uut  ( .a(a[29]), .b(b[29]), .cin(out[29]), .sum(
        sum[29]), .cout(out[30]) );
  FullAdder    uut30uut  ( .a(a[30]), .b(b[30]), .cin(out[30]), .sum(
        sum[30]), .cout(out[31]) );
  FullAdder    uut31uut  ( .a(a[31]), .b(b[31]), .cin(out[31]), .sum(
        sum[31]), .cout(cout) );
endmodule

