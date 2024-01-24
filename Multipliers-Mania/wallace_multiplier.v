module wallace_multiplier (
    input signed [31:0] A,
    input signed [31:0] B,
    output wire signed [63:0] OUT
);

wire signed [63:0] A_extended;
wire signed [63:0] B_extended;
wire signed [63:0] partial_products [31:0]; 
wire signed [63:0] added,extended;
wire signed [63:0] ONES,ZEROS;

assign ONES= 64'b1111111111111111111111111111111111111111111111111111111111111111;
assign ZEROS=64'b0000000000000000000000000000000000000000000000000000000000000000;

wire signed [31:0] A_com,B_com;
assign A_com=-A;
assign B_com=-B;

assign A_extended = {{32{A[31]}}, A[31:0]};
assign B_extended = {{32{B[31]}}, B[31:0]};

assign added =(A_extended[63] & B_extended[63]) ? {{32{1'b0}},A_com}:A_extended[63]?A_extended:B_extended;
assign extended = (A_extended[63] & B_extended[63]) ? {{32{1'b0}}, B_com}:A_extended[63]?B_extended:A_extended;



genvar i;
generate
  for (i = 0; i < 32; i = i + 1) begin : gen_partial_products
    assign partial_products[i] = added << i & (extended[i] ? ONES : ZEROS);
  end
endgenerate



wire signed [63:0] G[9:0];
 assign G[0] = partial_products[0] + partial_products[1] + partial_products[2];
 assign G[1] = partial_products[3] + partial_products[4] + partial_products[5];
 assign G[2] = partial_products[6] + partial_products[7] + partial_products[8];
 assign G[3] = partial_products[9] + partial_products[10] + partial_products[11];
 assign G[4] = partial_products[12] + partial_products[13] + partial_products[14];
 assign G[5] = partial_products[15] + partial_products[16] + partial_products[17];
 assign G[6] = partial_products[18] + partial_products[19] + partial_products[20];
 assign G[7] = partial_products[21] + partial_products[22] + partial_products[23];
 assign G[8] = partial_products[24] + partial_products[25] + partial_products[26];
 assign G[9] = partial_products[27] + partial_products[28] + partial_products[29];

wire signed [63:0] F[2:0];
    assign F[0] = G[0] + G[1] + G[2];
    assign F[1] = G[3] + G[4] + G[5];
    assign F[2] = G[6] + G[7] + G[8];



wire signed [63:0] H0,H1;
   assign H0=F[0]+F[1]+F[2];
   assign H1=G[9]+partial_products[31]+partial_products[30];

assign OUT =H0 +H1;

endmodule