module SequentialMultiplier (
    input wire [31:0] a,
    input wire [31:0] b,
    output reg [63:0] result
);
  integer i;
  wire[31:0] a_comp;
  reg[31:0] temp_a;
  wire[31:0] b_comp;
  reg[31:0] temp_b;
  reg temp_sign;
  reg [31:0] pp[0:31];
  reg [62:0] sig;
  assign a_comp=0-a; 
  assign b_comp=0-b; 
  always @* begin
    sig = 0;
    temp_a=a;
    if(a[31])begin
      a=a_comp
    end
    if(b[31]) begin
      temp_b=b;
    end
    for (i = 0; i < 31; i = i + 1) begin
      pp[i] = {32{a[i]}} & b;
    end
    for (i = 0; i < 31; i = i + 1) begin
      sig = sig + (pp[i] << i);
    end
    if(a[31]^b[31])begin
      result=0-sig
    end
    else begin
      result = sig
    end
  end

endmodule
