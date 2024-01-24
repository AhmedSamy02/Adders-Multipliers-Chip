module BoothMultiplier (
    input  wire [31:0] M,
    input  wire [31:0] Q,
    output reg  [63:0] out
);
    reg [63:0] A;
    reg Q0;
    reg Qminus;
    integer i;
    always @(*) begin
        A = 64'b0;
        A[31:0] = Q;
        Qminus = 1'b0;
        Q0 = A[0];
        for (i = 0; i < 32; i = i + 1) begin
        if (Q0 == 1'b0 && Qminus == 1'b1) begin
            A[63:32] = A[63:32] + M;
        end else if (Q0 == 1'b1 && Qminus == 1'b0) begin
            A[63:32] = A[63:32] - M;
        end else begin
            A = A + 64'b0;
        end
        Qminus = A[0];
        A = A >> 1;
        A[63]=A[62];
        Q0 = A[0];
        end
        out = A;
    end
    endmodule
