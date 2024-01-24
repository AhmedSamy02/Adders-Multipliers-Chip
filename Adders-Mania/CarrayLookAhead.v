module CarryLookahead32Bit (
    input wire [31:0] A, 
    input wire [31:0] B,
    input wire Cin,
    output wire [31:0] Sum,
    output wire Cout
);

    wire [31:0] G;
    assign G = A & B;
    
    wire [31:0] P;
    assign P = A ^ B;
    
    reg [31:0] C;
integer i;
always @(*) begin
    C[0] = G[0] | (P[0] & Cin);
    
    for (i = 1; i < 32; i = i + 1)
    begin
        C[i] = G[i] | (P[i] & C[i-1]);
    end
end


    assign Cout = C[31];
    wire dummy;
    FullAdder FA0 (.a(A[0]), .b(B[0]), .cin(Cin), .cout(dummy), .sum(Sum[0]));
    FullAdder FA1 (.a(A[1]), .b(B[1]), .cin(C[0]), .cout(dummy), .sum(Sum[1]));
    FullAdder FA2 (.a(A[2]), .b(B[2]), .cin(C[1]), .cout(dummy), .sum(Sum[2]));
    FullAdder FA3 (.a(A[3]), .b(B[3]), .cin(C[2]), .cout(dummy), .sum(Sum[3]));
    FullAdder FA4 (.a(A[4]), .b(B[4]), .cin(C[3]), .cout(dummy), .sum(Sum[4]));
    FullAdder FA5 (.a(A[5]), .b(B[5]), .cin(C[4]), .cout(dummy), .sum(Sum[5]));
    FullAdder FA6 (.a(A[6]), .b(B[6]), .cin(C[5]), .cout(dummy), .sum(Sum[6]));
    FullAdder FA7 (.a(A[7]), .b(B[7]), .cin(C[6]), .cout(dummy), .sum(Sum[7]));
    FullAdder FA8 (.a(A[8]), .b(B[8]), .cin(C[7]), .cout(dummy), .sum(Sum[8]));
    FullAdder FA9 (.a(A[9]), .b(B[9]), .cin(C[8]), .cout(dummy), .sum(Sum[9]));
    FullAdder FA10 (.a(A[10]), .b(B[10]), .cin(C[9]), .cout(dummy), .sum(Sum[10]));
    FullAdder FA11 (.a(A[11]), .b(B[11]), .cin(C[10]), .cout(dummy), .sum(Sum[11]));
    FullAdder FA12 (.a(A[12]), .b(B[12]), .cin(C[11]), .cout(dummy), .sum(Sum[12]));
    FullAdder FA13 (.a(A[13]), .b(B[13]), .cin(C[12]), .cout(dummy), .sum(Sum[13]));
    FullAdder FA14 (.a(A[14]), .b(B[14]), .cin(C[13]), .cout(dummy), .sum(Sum[14]));
    FullAdder FA15 (.a(A[15]), .b(B[15]), .cin(C[14]), .cout(dummy), .sum(Sum[15]));
    FullAdder FA16 (.a(A[16]), .b(B[16]), .cin(C[15]), .cout(dummy), .sum(Sum[16]));
    FullAdder FA17 (.a(A[17]), .b(B[17]), .cin(C[16]), .cout(dummy), .sum(Sum[17]));
    FullAdder FA18 (.a(A[18]), .b(B[18]), .cin(C[17]), .cout(dummy), .sum(Sum[18]));
    FullAdder FA19 (.a(A[19]), .b(B[19]), .cin(C[18]), .cout(dummy), .sum(Sum[19]));
    FullAdder FA20 (.a(A[20]), .b(B[20]), .cin(C[19]), .cout(dummy), .sum(Sum[20]));
    FullAdder FA21 (.a(A[21]), .b(B[21]), .cin(C[20]), .cout(dummy), .sum(Sum[21]));
    FullAdder FA22 (.a(A[22]), .b(B[22]), .cin(C[21]), .cout(dummy), .sum(Sum[22]));
    FullAdder FA23 (.a(A[23]), .b(B[23]), .cin(C[22]), .cout(dummy), .sum(Sum[23]));
    FullAdder FA24 (.a(A[24]), .b(B[24]), .cin(C[23]), .cout(dummy), .sum(Sum[24]));
    FullAdder FA25 (.a(A[25]), .b(B[25]), .cin(C[24]), .cout(dummy), .sum(Sum[25]));
    FullAdder FA26 (.a(A[26]), .b(B[26]), .cin(C[25]), .cout(dummy), .sum(Sum[26]));
    FullAdder FA27 (.a(A[27]), .b(B[27]), .cin(C[26]), .cout(dummy), .sum(Sum[27]));
    FullAdder FA28 (.a(A[28]), .b(B[28]), .cin(C[27]), .cout(dummy), .sum(Sum[28]));
    FullAdder FA29 (.a(A[29]), .b(B[29]), .cin(C[28]), .cout(dummy), .sum(Sum[29]));
    FullAdder FA30 (.a(A[30]), .b(B[30]), .cin(C[29]), .cout(dummy), .sum(Sum[30]));
    FullAdder FA31 (.a(A[31]), .b(B[31]), .cin(C[30]), .cout(dummy), .sum(Sum[31]));
endmodule
