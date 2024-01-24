module sync_fpu (
    input wire clk,
    input wire rst,
    input wire [31:0] A,
    input wire [31:0] B,
    output wire [31:0] product,
    output reg overFlow
);
  wire [31:0] in1;
  wire [31:0] in2;
  wire [31:0] out;
  wire tempOverflow;
  Register64bit inputRegister (
      .clk(clk),
      .rst(rst),
      .in ({B, A}),
      .out({in2, in1})
  );
  fpu fpua (
      .in1(in1),
      .in2(in2),
      .out(out),
      .overFlow(tempOverflow)
  );
  Register32bit outRegister (
      .clk(clk),
      .rst(rst),
      .in (out),
      .out(product)
  );
  always @(posedge clk) begin
    overFlow = tempOverflow;
  end
endmodule
