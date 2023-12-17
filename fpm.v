module fpm (
    input wire [31:0] in1,
    input wire additional1,
    input wire [31:0] in2,
    input wire additional2,
    output reg additionalout,
    output reg [31:0] out
);
  reg [47:0] temp;
  reg [7:0] temp_exp;
  integer i;
  reg finished;
  always @(*) begin
    temp = 0;
    temp_exp = 0;
    i=0;
    finished = 0;
    additionalout=0;
    if (additional1 == 1 && additional2 == 1) begin
      temp = {additional1, in1[22:0]} * {additional2, in2[22:0]};
      temp_exp = in1[30:23] + in2[30:23] - 127;
      if (temp[47:46] == 2'b01) begin
        i = -1;
        temp = temp << 1;
      end
      if (temp[47] == 1'b1) begin
        i = -1;
        temp_exp = temp_exp + 1;
      end
      for (i = 0; i < 48; i = i + 1) begin
        temp = temp + 0;
        if (finished == 0) begin
          temp = temp << 1;
          if (temp[46] == 1) begin
            finished = 1'b1;
          end else begin
            temp_exp = temp_exp - 1;
          end
        end
      end
      out[22:0] = temp[47:25];
      out[30:23] = temp_exp[7:0];
      additionalout = additional1 & additional2;
      out[31] = in1[31] ^ in2[31];
    end else begin
      out = 0;
    end
  end
endmodule
