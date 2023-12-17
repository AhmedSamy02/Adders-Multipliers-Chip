module sync_fpm (
    input wire clk,
    input wire rst,
    input wire [31:0] A,
    input wire isZeroA,
    input wire [31:0] B,
    input wire isZeroB,
    output reg isZeroOut,
    output wire [31:0] product
);
  wire [31:0] in1;
  reg additional1;
  wire [31:0] in2;
  reg additional2;
  wire additionalout;
  wire [31:0] out;
  Register64bit inputRegister (
      .clk(clk),
      .rst(rst),
      .in ({B, A}),
      .out({in2, in1})
  );
  always @(posedge clk) begin
    additional1 = ~isZeroA;
  end
  always @(posedge clk) begin
    additional2 = ~isZeroB;
  end
  fpm FloatingPointMultiplier (
      .in1(in1),
      .additional1(additional1),
      .in2(in2),
      .additional2(additional2),
      .out(out),
      .additionalout(additionalout)
  );
  Register32bit outRegister (
      .clk(clk),
      .rst(rst),
      .in (out),
      .out(product)
  );
  always @(posedge clk) begin
    isZeroOut = ~additionalout;
  end
endmodule
