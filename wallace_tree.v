module wallace_tree (
    input  wire [31:0] in1,
    input  wire [31:0] in2,
    output reg  [63:0] out
);
  reg [63:0] p[0:31];
  reg sum, carry, carryTemp;
  integer i;
  integer j;
  always @(*) begin
    i = 0;
    //Initial Stage
    for (i = 0; i < 64; i = i + 1) begin
      p[i] = 0;
      p[i][63:0] = in1 & {64{in2[i]}};
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
    out = p[0] + p[1];
  end

endmodule
