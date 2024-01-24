module sync_fpm (
    input wire clk,
    input wire rst,
    input wire [31:0] A,
    input wire [31:0] B,
    output wire [31:0] product
);
  wire [31:0] in1;
  wire [31:0] in2;
  wire [31:0] out;
  Register64bit inputRegister (
      .clk(clk),
      .rst(rst),
      .in ({B, A}),
      .out({in2, in1})
  );
  fpm FloatingPointMultiplier (
      .in1(in1),
      .in2(in2),
      .out(out)
  );
  Register32bit outRegister (
      .clk(clk),
      .rst(rst),
      .in (out),
      .out(product)
  );
endmodule
