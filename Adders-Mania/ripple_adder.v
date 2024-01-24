module RippleAdder (
    input wire [31:0] a,
    input wire [31:0] b,
    input wire cin,
    output wire [31:0] sum,
    output wire cout
);
  wire [32:0] out;
  assign out[0] = cin;
  genvar i;
  generate
    for (i = 0; i < 32; i = i + 1) begin
      FullAdder uut (
          .a(a[i]),
          .b(b[i]),
          .cin(out[i]),
          .sum(sum[i]),
          .cout(out[i+1])
      );
    end
  endgenerate
  assign cout = out[32];
endmodule
