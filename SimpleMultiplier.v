module SimpleMultiplier (
    input wire [31:0] in1,
    input wire [31:0] in2,
    input wire clk,
    input wire rst,
    output wire [63:0] out
);
  wire [31:0] A;
  wire [31:0] B;
  reg [62:0] product;
  reg sign;
  Register32bit registerIn1 (
      .clk(clk),
      .rst(rst),
      .in (in1),
      .out(A)
  );
  Register32bit registerIn2 (
      .clk(clk),
      .rst(rst),
      .in (in2),
      .out(B)
  );
  Register64bit registerOut (
      .clk(clk),
      .rst(rst),
      .in ({sign, product}),
      .out(out)
  );
  assign product = A[30:0] * B[30:0];
  assign sign = |product && (A[31] ^ B[31]);
endmodule
