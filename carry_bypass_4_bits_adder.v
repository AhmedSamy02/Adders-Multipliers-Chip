module CarryBypassFourBitsAdder(a, b, cin,sum, cout);
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;
wire c0;
wire bp;

RippleAdderFourBits ra (.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(c0), .bp(bp));
MUX2X1 m0(.in0(c0),.in1(cin),.sel(bp),.out(cout));

endmodule