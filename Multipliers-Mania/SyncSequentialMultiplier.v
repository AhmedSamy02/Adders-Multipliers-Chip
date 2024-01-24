module SyncSequentialMultiplier (
    input wire [31:0] in1,
    input wire [31:0] in2,
    input wire clk,
    input wire rst,
    output wire [63:0] out
);
  wire [31:0] A;
  wire [31:0] B;
  wire [63:0] product;
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
      .in (product),
      .out(out)
  );
  SequentialMultiplier seqM (
      .a(A),
      .b(B),
      .result(product)
  );
endmodule
