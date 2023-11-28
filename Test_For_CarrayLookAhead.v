`timescale 1 ns / 100 ps
module Test_CarrayLookahead_TB1(); 
reg [31:0]A;
reg [31:0]B;
reg Cin;
wire Cout; 
wire [31:0] Sum;
//CarryLookahead32Bit dut(.A(A), .B(B), .Cin(Cin), .Cout(Cout), .Sum(Sum));
  CarrySelectAdder UUT (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Cout(Cout),
    .Sum(Sum)
  );
integer success_count;
initial begin 

success_count = 0;
A = 32'd2147483647; B = 32'd1; Cin = 0;
#10; 
if (Cout == 0 && Sum == -2147483648) 
    begin
    $display("TestCase#1: success");
    success_count = success_count + 1;
    end 
    else 
    begin
    $display("TestCase#1: failed with input A=%0d, B=%0d and Output Sum=%0d Cout=%0d", A, B, Sum, Cout);
    end
///////////////////////////
A = 32'b10000000000000000000000000000000; B = 32'b11111111111111111111111111111111; Cin = 0;
#10; 
if (Cout == 1 && Sum == 2147483647) 
    begin
    $display("TestCase#2: success");
    success_count = success_count + 1;
    end 
    else 
    begin
    $display("TestCase#2: failed with input A=%0d, B=%0d and Output Sum=%0d Cout=%0d", A, B, Sum, Cout);
    end
A = 5; B = -3; Cin = 0;
#10;
if (Cout == 1 && Sum == 2) begin
  $display("TestCase#3: success");
  success_count = success_count + 1;
end else begin
  $display("TestCase#3: failed with input A=%0d, B=%0d and Output Sum=%0d Cout=%0d", A, B, Sum, Cout);
end

A = 7; B = 3; Cin = 0;
#10; 
if (Cout == 0 && Sum == 10) begin
  $display("TestCase#4: success");
  success_count = success_count + 1;
end else begin
  $display("TestCase#4: failed with input A=%0d, B=%0d and Output Sum=%0d Cout=%0d", A, B, Sum, Cout);
end

A = -4; B = -6; Cin = 0;
#10; 
if (Cout == 1 && Sum == -10) begin
  $display("TestCase#5: success");
  success_count = success_count + 1;
end else begin
  $display("TestCase#5: failed with input A=%0d, B=%0d and Output Sum=%0d Cout=%0d", A, B, Sum, Cout);
end
A = 12;B = -8;Cin = 1;
#10;
if (Cout == 1 && Sum == 5) begin
  $display("TestCase#6: success");
  success_count = success_count + 1;
end else begin
  $display("TestCase#6: failed with input A=%0d, B=%0d, Cin=%0d and Output Sum=%0d Cout=%0d", A, B, Cin, Sum, Cout);
end

A = -15;B = 20;Cin = 0;
#10; 
if (Cout == 1 && Sum == 5) begin
  $display("TestCase#7: success");
  success_count = success_count + 1;
end else begin
  $display("TestCase#7: failed with input A=%0d, B=%0d, Cin=%0d and Output Sum=%0d Cout=%0d", A, B, Cin, Sum, Cout);
end
A = 0;B = 0;Cin = 1;
#10; 
if (Cout == 0 && Sum == 1) begin
  $display("TestCase#8: success");
  success_count = success_count + 1;
end else begin
  $display("TestCase#8: failed with input A=%0d, B=%0d, Cin=%0d and Output Sum=%0d Cout=%0d", A, B, Cin, Sum, Cout);
end

end
endmodule