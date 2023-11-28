module RippleAdderFourBits(a, b, cin, sum, cout,bp);
input [3:0] a,b;
input cin;
wire c1,c2,c3;
output [3:0] sum;
output cout;
output bp;
wire [3:0] p;

FullAdder fa0(.a(a[0]), .b(b[0]),.cin(cin), .sum(sum[0]),.cout(c1));
FullAdder fa1(.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]),.cout(c2));
FullAdder fa2(.a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]),.cout(c3));
FullAdder fa3(.a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]),.cout(cout));

assign p = a^b; // xor a0b0, a1b1, a2b2, a3b3 to get p0p1p2p3
assign bp = &p; // anding p0p1p2p3 to get bp
endmodule