module SequentialMultiplier (
    input [31:0] a,
    input [31:0] b,
    output reg [63:0] result
);
  integer i;
  reg [31:0] pp[0:31];
  reg [62:0] sig; 
  always @* begin
    sig = 0;
    for (i = 0; i < 31; i = i + 1) begin
      pp[i] = {32{a[i]}} & b;
    end
    for (i = 0; i < 31; i = i + 1) begin
      sig = sig + (pp[i] << i);
    end
    result[62:0] = sig;
    result[63] = a[31] ^ b[31];
  end

endmodule
