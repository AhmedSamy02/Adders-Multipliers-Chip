module fpa (
    input  wire [31:0] in1,
    input  wire [31:0] in2,
    output reg  [31:0] out
);
  reg  [22:0] inShift;
  reg  [ 4:0] shamt;
  wire [22:0] outShift;
  reg [22:0] A_Mantissa, B_Mantissa, Out_Mantissa;
  reg [7:0] A_Exponent, B_Exponent, Out_Exponent;
  reg choosen;
  reg [1:0] temp;
  reg A_Sign, B_Sign, Out_Sign;
  reg [22:0] outComp;
  BarrelShifter bs (
      .In({1'b1, inShift}),
      .Out({outShift}),
      .Shift(shamt)
  );
  always @(*) begin
    A_Mantissa = in1[22:0];
    B_Mantissa = in2[22:0];
    A_Sign = in1[31];
    B_Sign = in2[31];
    A_Exponent = in1[30:23];
    B_Exponent = in2[30:23];
    inShift = A_Mantissa;
    shamt = B_Exponent - A_Exponent;
    choosen = 1;
    if (A_Exponent > B_Exponent) begin
      inShift = B_Mantissa;
      shamt   = A_Exponent - B_Exponent;
      choosen = 0;
    end
    if (A_Sign == B_Sign) begin
      Out_Sign = A_Sign;
      if (choosen == 1) begin
        Out_Exponent = B_Exponent;
        Out_Mantissa = outShift + B_Mantissa;
      end
      if (choosen == 0) begin
        Out_Exponent = A_Exponent;
        Out_Mantissa = outShift + A_Mantissa;
      end

    end
    if (A_Sign != B_Sign) begin
      if (choosen == 1) begin
        if (A_Sign == 1) begin
          outComp <= 0 - outShift;
          Out_Mantissa = outComp + B_Mantissa;
        end
        if (B_Sign == 1) begin
          outComp <= 0 - B_Mantissa;
          Out_Mantissa = outComp + outShift;
        end
        Out_Exponent = B_Exponent;
      end
      if (choosen == 0) begin
        if (B_Sign == 1) begin
          outComp <= 0 - outShift;
          Out_Mantissa = outComp + A_Mantissa;
        end
        if (A_Sign == 1) begin
          outComp <= 0 - A_Mantissa;
          Out_Mantissa = outComp + outShift;
        end
        Out_Exponent = A_Exponent;
      end
    end
    out = {Out_Sign, Out_Exponent, Out_Mantissa};
  end
endmodule
