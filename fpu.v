module fpu (
    input  wire [31:0] in1,
    input  wire [31:0] in2,
    output reg  [31:0] out
);

  reg [22:0] inShift;
  integer i;
  reg [22:0] Out_Mantissa;
  reg [7:0] Out_Exponent;
  reg [31:0] a;
  reg [31:0] b;
  reg [4:0] shamt;
  wire [22:0] outShift;
  reg Out_Sign;
  reg carry;
  reg flag;
  reg temp;
  always @(*) begin
    a = in1;
    Out_Sign = 0;
    b = in2;
    if (in1[30:23] < in2[30:23]) begin
      a = in2;
      b = in1;
    end
    if (in1[30:23] == in2[30:23]) begin
      if (in1[22:0] < in2[22:0]) begin
        a = in2;
        b = in1;
      end
    end
    shamt = a[30:23] - b[30:23];
    inShift = b[22:0];
    b[22:0] = outShift;
    {carry, Out_Mantissa} = a[22:0] + b[22:0];
    if(a[31]!=b[31])
      carry=0;
    Out_Exponent = a[30:23] + carry;
    
    if ((a[31] == 1'b1 && b[31] == 1'b0) || (a[31] == 1'b0 && b[31] == 1'b1)) begin
      Out_Mantissa = a[22:0] - b[22:0];
      Out_Exponent = a[30:23] - !carry;
      Out_Mantissa = Out_Mantissa << 1;
    end
    temp=|Out_Mantissa;
    Out_Sign = temp & a[31];


     if (carry == 1) begin
      Out_Mantissa = Out_Mantissa >> 1;
      Out_Mantissa[22] = 1;
    end

  repeat(22) begin
    if (Out_Mantissa[22] == 1'b1||Out_Exponent==1'b0) begin
      i = 0;
    end
    else begin
      Out_Mantissa = Out_Mantissa << 1;
      Out_Exponent = Out_Exponent - 1;
    end
  end
  
    out = {Out_Sign, Out_Exponent, Out_Mantissa};
  end
  BarrelShifter bs (
      .In(inShift),
      .Out(outShift),
      .Shift(shamt)
  );
endmodule
