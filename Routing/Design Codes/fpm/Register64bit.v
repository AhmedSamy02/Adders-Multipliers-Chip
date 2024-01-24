module Register64bit (
    input wire clk,
    input wire rst,
    input wire [63:0] in,
    output reg [63:0] out
);

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      out <= 64'b0;
    end else begin
      out <= in;
    end
  end

endmodule
