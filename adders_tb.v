`timescale 1 ns / 100 ps
module adders_tb(); 
reg [31:0]A;
reg [31:0]B;
reg Cin;
wire Cout [4:0]; 
wire [31:0] Sum [4:0];
integer i;

NormalAdder NA (
    .a(A),
    .b(B),
    .cin(Cin),
    .cout(Cout[0]),
    .sum(Sum[0])
);

RippleAdder RA (
    .a(A),
    .b(B),
    .cin(Cin),
    .cout(Cout[1]),
    .sum(Sum[1])
);
CarryLookahead32Bit CLA(
  .A(A),
  .B(B),
  .Cin(Cin),
  .Cout(Cout[2]),
  .Sum(Sum[2])
  );
  CarryBypassAdder CBA (
    .a(A),
    .b(B),
    .cin(Cin),
    .cout(Cout[3]),
    .sum(Sum[3])
  );
  CarrySelectAdder CSA (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Cout(Cout[4]),
    .Sum(Sum[4])
  );
integer success_count;
initial begin 

success_count = 0;
i=0;
A = 32'd2147483647; B = 32'd1; Cin = 0;
#10;
for (i=0;i<5;i=i+1) begin 
  if (Cout[i] == 0 && Sum[i] == -2147483648) 
      begin
        $display("TestCase#1: adder %0d  success",i);
        success_count = success_count + 1;
      end 
  else 
      begin
        $display("TestCase#1: adder %0d failed with input A=%0d, B=%0d and Output Sum=%0d Cout=%0d",i, A, B, Sum[i], Cout[i]);
      end
end
$display("");
///////////////////////////
A = 32'b10000000000000000000000000000000; B = 32'b11111111111111111111111111111111; Cin = 0;
#10; 
for (i=0;i<5;i=i+1) begin 
if (Cout[i] == 1 && Sum[i] == 2147483647) 
    begin
    $display("TestCase#2: adder %0d  success",i);
    success_count = success_count + 1;
    end 
    else 
    begin
    $display("TestCase#2: adder %0d failed with input A=%0d, B=%0d and Output Sum=%0d Cout=%0d",i, A, B, Sum[i], Cout[i]);
    end
end
$display("");
///////////////////////////

A = 5; B = -3; Cin = 0;
#10;
for (i=0;i<5;i=i+1) begin 
if (Cout[i] == 1 && Sum[i] == 2) begin
  $display("TestCase#3: adder %0d success",i);
  success_count = success_count + 1;
end else begin
  $display("TestCase#3: adder %0d failed with input A=%0d, B=%0d and Output Sum=%0d Cout=%0d",i, A, B, Sum[i], Cout[i]);
end
end
$display("");

A = 7; B = 3; Cin = 0;
#10; 
for (i=0;i<5;i=i+1) begin
if (Cout[i] == 0 && Sum[i] == 10) begin
  $display("TestCase#4: adder %0d success",i);
  success_count = success_count + 1;
end else begin
  $display("TestCase#4: adder %0d failed with input A=%0d, B=%0d and Output Sum=%0d Cout=%0d",i, A, B, Sum[i], Cout[i]);
end
end
$display("");

A = -4; B = -6; Cin = 0;
#10; 
for (i=0;i<5;i=i+1) begin
if (Cout[i] == 1 && Sum[i] == -10) begin
  $display("TestCase#5: adder %0d success",i);
  success_count = success_count + 1;
end else begin
  $display("TestCase#5: adder %0d failed with input A=%0d, B=%0d and Output Sum=%0d Cout=%0d",i, A, B, Sum[i], Cout[i]);
end
end
$display("");

A = 12;B = -8;Cin = 1;
#10;
for (i=0;i<5;i=i+1) begin
if (Cout[i] == 1 && Sum[i] == 5) begin
  $display("TestCase#6: adder %0d success",i);
  success_count = success_count + 1;
end else begin
  $display("TestCase#6: adder %0d failed with input A=%0d, B=%0d, Cin=%0d and Output Sum=%0d Cout=%0d",i,A, B, Cin, Sum[i], Cout[i]);
end
end
$display("");

A = -15;B = 20;Cin = 0;
#10; 
for (i=0;i<5;i=i+1) begin
if (Cout[i] == 1 && Sum[i] == 5) begin
  $display("TestCase#7: adder %0d success",i);
  success_count = success_count + 1;
end else begin
  $display("TestCase#7: adder %0d failed with input A=%0d, B=%0d, Cin=%0d and Output Sum=%0d Cout=%0d",i,A, B, Cin, Sum[i], Cout[i]);
end
end
$display("");


A = 0;B = 0;Cin = 1;
#10; 
for (i=0;i<5;i=i+1) begin
if (Cout[i] == 0 && Sum[i] == 1) begin
  $display("TestCase#8: adder %0d success",i);
  success_count = success_count + 1;
end else begin
  $display("TestCase#8: adder %0d failed with input A=%0d, B=%0d, Cin=%0d and Output Sum=%0d Cout=%0d",i,A, B, Cin, Sum[i], Cout[i]);
end
end
$display("success_count = %0d", success_count);
end
endmodule