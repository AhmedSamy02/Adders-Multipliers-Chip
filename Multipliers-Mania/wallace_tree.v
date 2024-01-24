module wallace_tree (
    input  wire [31:0] in1,
    input  wire [31:0] in2,
    output reg  [63:0] out
);
  reg [63:0] p[0:31];
  reg sum, carry, carryTemp;
  reg [31:0] temp1;
  reg [31:0] temp2;
  reg [63:0] tempOut;
  integer i;
  integer j;
  always @(*) begin
    i = 0;
    temp1 = in1;
    temp2 = in2;
    if (in1[31] == 1'b1) begin
      temp1 = 0 - in1;
    end
    if (in2[31] == 1'b1) begin
      temp2 = 0 - in2;
    end
    //Initial Stage
    for (i = 0; i < 32; i = i + 1) begin
      p[i] = 0;
      p[i][63:0] = temp1 & {64{temp2[i]}};
      p[i] = p[i] << i;
    end
    //First Stage 32 --> 22
    for (i = 0; i < 22; i = i + 3) begin
      carry = 0;
      carryTemp = 0;
      for (j = 0; j < 64; j = j + 1) begin
        {carryTemp, p[i][j]} = p[i][j] + p[i+1][j] + p[i+2][j];
        p[i+1][j] = carry;
        carry = carryTemp;
      end
    end
    j = 0;
    for (i = 0; i < 22; i = i + 2) begin
      p[i] = p[3*j];
      p[i+1] = p[3*j+1];
      j = j + 1;
    end
    //Second Stage 22 --> 16
    for (i = 0; i < 16; i = i + 3) begin
      carry = 0;
      carryTemp = 0;
      for (j = 0; j < 64; j = j + 1) begin
        {carryTemp, p[i][j]} = p[i][j] + p[i+1][j] + p[i+2][j];
        p[i+1][j] = carry;
        carry = carryTemp;
      end
    end
    j = 0;
    for (i = 0; i < 16; i = i + 2) begin
      p[i] = p[3*j];
      p[i+1] = p[3*j+1];
      j = j + 1;
    end
    //Third Stage 16 --> 12
    for (i = 0; i < 12; i = i + 3) begin
      carry = 0;
      carryTemp = 0;
      for (j = 0; j < 64; j = j + 1) begin
        {carryTemp, p[i][j]} = p[i][j] + p[i+1][j] + p[i+2][j];
        p[i+1][j] = carry;
        carry = carryTemp;
      end
    end
    j = 0;
    for (i = 0; i < 12; i = i + 2) begin
      p[i] = p[3*j];
      p[i+1] = p[3*j+1];
      j = j + 1;
    end
    //Fourth Stage 12 --> 8
    for (i = 0; i < 8; i = i + 3) begin
      carry = 0;
      carryTemp = 0;
      for (j = 0; j < 64; j = j + 1) begin
        {carryTemp, p[i][j]} = p[i][j] + p[i+1][j] + p[i+2][j];
        p[i+1][j] = carry;
        carry = carryTemp;
      end
    end
    j = 0;
    for (i = 0; i < 8; i = i + 2) begin
      p[i] = p[3*j];
      p[i+1] = p[3*j+1];
      j = j + 1;
    end
    //Fifth Stage 8 --> 6
    for (i = 0; i < 6; i = i + 3) begin
      carry = 0;
      carryTemp = 0;
      for (j = 0; j < 64; j = j + 1) begin
        {carryTemp, p[i][j]} = p[i][j] + p[i+1][j] + p[i+2][j];
        p[i+1][j] = carry;
        carry = carryTemp;
      end
    end
    j = 0;
    for (i = 0; i < 6; i = i + 2) begin
      p[i] = p[3*j];
      p[i+1] = p[3*j+1];
      j = j + 1;
    end

    //Sixth Stage 6 --> 4
    for (i = 0; i < 4; i = i + 3) begin
      carry = 0;
      carryTemp = 0;
      for (j = 0; j < 64; j = j + 1) begin
        {carryTemp, p[i][j]} = p[i][j] + p[i+1][j] + p[i+2][j];
        p[i+1][j] = carry;
        carry = carryTemp;
      end
    end
    j = 0;
    for (i = 0; i < 4; i = i + 2) begin
      p[i] = p[3*j];
      p[i+1] = p[3*j+1];
      j = j + 1;
    end
    //Seventh Stage 4 --> 3
    for (i = 0; i < 3; i = i + 3) begin
      carry = 0;
      carryTemp = 0;
      for (j = 0; j < 64; j = j + 1) begin
        {carryTemp, p[i][j]} = p[i][j] + p[i+1][j] + p[i+2][j];
        p[i+1][j] = carry;
        carry = carryTemp;
      end
    end
    j = 0;
    for (i = 0; i < 3; i = i + 2) begin
      p[i] = p[3*j];
      p[i+1] = p[3*j+1];
      j = j + 1;
    end
    //Eighth Stage 3 --> 2 
    for (i = 0; i < 2; i = i + 3) begin
      carry = 0;
      carryTemp = 0;
      for (j = 0; j < 64; j = j + 1) begin
        {carryTemp, p[i][j]} = p[i][j] + p[i+1][j] + p[i+2][j];
        p[i+1][j] = carry;
        carry = carryTemp;
      end
    end
    j = 0;
    for (i = 0; i < 2; i = i + 2) begin
      p[i] = p[3*j];
      p[i+1] = p[3*j+1];
      j = j + 1;
    end
    //Final Stage
    tempOut = p[0] + p[1];
    if (in1[31] ^ in2[31] == 1'b1) begin
      out = 0 - tempOut;
    end else begin
      out = tempOut;
    end
  end

endmodule
