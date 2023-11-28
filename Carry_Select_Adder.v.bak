module CarrySelectAdder (
    input wire [31:0] A, 
    input wire [31:0] B,
    input wire  Cin,
    output wire [31:0] Sum,
    output wire Cout
);
  wire [32:0] carryin0;
  wire [32:0] carryin1;
  wire [31:0] sumcarry0;
  wire [31:0] sumcarry1;

  assign carryin0[0]=1'b0;
  assign carryin1[0]=1'b1;

  genvar i;
  generate
  for(i=0;i<=31;i=i+1) begin
     FullAdder add0 (.a(A[i]), .b(B[i]), .cin(carryin0[i]), .cout(carryin0[i+1]), .sum(sumcarry0[i]));
     FullAdder add1 (.a(A[i]), .b(B[i]), .cin(carryin1[i]), .cout(carryin1[i+1]), .sum(sumcarry1[i]));
     end
  endgenerate
  assign Sum =(Cin==1'b0)? sumcarry0:sumcarry1;
  assign Cout=(Cin==1'b0)? carryin0[32]:carryin1[32];
endmodule
