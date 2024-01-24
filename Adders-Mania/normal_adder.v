module NormalAdder (
    input  [31:0] a,
    input  [31:0] b,
    input  cin,
    output cout,
    output [31:0] sum
);

  assign {cout,sum} = a+b+cin;

endmodule
