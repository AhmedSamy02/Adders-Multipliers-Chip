/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 13:57:34 2023
/////////////////////////////////////////////////////////////


module CarryBypassAdder ( a, b, cin, sum, cout );
  input [31:0] a;
  input [31:0] b;
  output [31:0] sum;
  input cin;
  output cout;

  wire   [6:0] c;

  CarryBypassFourBitsAdder_0 cb1 ( .a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(
        sum[3:0]), .cout(c[0]) );
  CarryBypassFourBitsAdder_7 cb2 ( .a(a[7:4]), .b(b[7:4]), .cin(c[0]), .sum(
        sum[7:4]), .cout(c[1]) );
  CarryBypassFourBitsAdder_6 cb3 ( .a(a[11:8]), .b(b[11:8]), .cin(c[1]), .sum(
        sum[11:8]), .cout(c[2]) );
  CarryBypassFourBitsAdder_5 cb4 ( .a(a[15:12]), .b(b[15:12]), .cin(c[2]), 
        .sum(sum[15:12]), .cout(c[3]) );
  CarryBypassFourBitsAdder_4 cb5 ( .a(a[19:16]), .b(b[19:16]), .cin(c[3]), 
        .sum(sum[19:16]), .cout(c[4]) );
  CarryBypassFourBitsAdder_3 cb6 ( .a(a[23:20]), .b(b[23:20]), .cin(c[4]), 
        .sum(sum[23:20]), .cout(c[5]) );
  CarryBypassFourBitsAdder_2 cb7 ( .a(a[27:24]), .b(b[27:24]), .cin(c[5]), 
        .sum(sum[27:24]), .cout(c[6]) );
  CarryBypassFourBitsAdder_1 cb8 ( .a(a[31:28]), .b(b[31:28]), .cin(c[6]), 
        .sum(sum[31:28]), .cout(cout) );
endmodule

