module wallace_tree (
    input signed [7:0] A,
    input signed [7:0] B,
    output wire signed [15:0] OUT
);

wire signed [15:0] A_extended;
wire signed [15:0] B_extended;
wire signed [15:0] partial_products [7:0]; 
wire signed [15:0] partial_products_reverse [7:0]; 
wire signed [15:0] added,extended;
wire signed [7:0] A_com,B_com;
assign A_com=-A;
assign B_com=-B;
assign A_extended = {{8{A[7]}}, A[7:0]};
assign B_extended = {{8{B[7]}}, B[7:0]};
assign added =(A_extended[15] & B_extended[15]) ? {{8{1'b0}},A_com}:A_extended[15]?A_extended:B_extended;
assign extended = (A_extended[15] & B_extended[15]) ? {{8{1'b0}}, B_com}:A_extended[15]?B_extended:A_extended;

assign partial_products[0] = added & (extended[0] ? 16'b1111111111111111 : 16'b0000000000000000);
assign partial_products[1] = added << 1 & (extended[1] ? 16'b1111111111111111 : 16'b0000000000000000);
assign partial_products[2] = added << 2 & (extended[2] ? 16'b1111111111111111 : 16'b0000000000000000);
assign partial_products[3] = added << 3 & (extended[3] ? 16'b1111111111111111 : 16'b0000000000000000);
assign partial_products[4] = added << 4 & (extended[4] ? 16'b1111111111111111 : 16'b0000000000000000);
assign partial_products[5] = added << 5 & (extended[5] ? 16'b1111111111111111 : 16'b0000000000000000);
assign partial_products[6] = added << 6 & (extended[6] ? 16'b1111111111111111 : 16'b0000000000000000);
assign partial_products[7] = added << 7 & (extended[7] ? 16'b1111111111111111 : 16'b0000000000000000);



wire signed [15:0] G0, G1;

assign G0 = partial_products[0] + partial_products[1]+partial_products[2];
assign G1 = partial_products[3] + partial_products[4]+partial_products[5];

wire signed [15:0] F0;

assign F0 = G0 + G1+partial_products[6];

assign OUT = F0+partial_products[7];
endmodule