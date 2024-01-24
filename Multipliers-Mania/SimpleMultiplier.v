module SimpleMultiplier (
    input wire signed [31:0] in1,
    input wire signed [31:0] in2,
    input wire clk,
    input wire rst,
    output wire signed [63:0] out
);
  wire signed [31:0] A;
  wire signed [31:0] B;
  reg signed  [63:0] product;
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
      .in (product),
      .out(out)
  );
  assign product = $signed(A[31:0]) * $signed(B[31:0]);
endmodule
