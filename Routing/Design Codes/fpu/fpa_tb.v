`timescale 1 ns / 100 ps
module fpa_tb ();
  reg [31:0] A;
  reg [31:0] B;
  wire [31:0] Sum;
  wire overFlow;
  reg clk, rst;
  sync_fpu fpu (
      .clk(clk),
      .rst(rst),
      .A(A),
      .B(B),
      .overFlow(overFlow),
      .product(Sum)
  );
  integer success_count;
  integer failure_count;

  initial begin
    clk = 1;
    forever #10 clk = ~clk;
  end

  initial begin
    rst = 1;
    #20 rst = 0;
  end
  initial begin
    success_count = 0;
    failure_count = 0;
    #20;
    A = 32'b00000001110011100000000000000000;
    B = 32'b00000010010010100100000000000000;  //9.75 + 18.5625
    #60;
    if (Sum == 32'b00000010011100010100000000000000 && overFlow == 0) begin
      $display("TestCase#1: success");
      success_count = success_count + 1;
    end else begin
      $display("TestCase#1: failed with input A=%0b, B=%0b and Output Sum=%0d and overflow =%0d ",
               A, B, Sum, overFlow);
    end
    ///////////////////////////
    A = 32'b00000001110011100000000000000000;
    B = 32'b10000010010010100100000000000000;  //9.75 + (-18.5625)
    #60;
    if (Sum == 32'b10000001110001101000000000000000 && overFlow == 0) begin
      $display("TestCase#2: success");
      success_count = success_count + 1;
    end else begin
      $display("TestCase#2: failed with input A=%0b, B=%0b and Output Sum=%0d and overflow =%0d ",
               A, B, Sum, overFlow);
    end
    A = 32'b10000001110011100000000000000000;
    B = 32'b10000010010010100100000000000000;  // -9.75 + (-18.5625)
    #60;
    if (Sum == 32'b10000010011100010100000000000000 && overFlow == 0) begin
      $display("TestCase#3: success");
      success_count = success_count + 1;
    end else begin
      $display("TestCase#3: failed with input A=%0b, B=%0b and Output Sum=%0d and overflow =%0d ",
               A, B, Sum, overFlow);
    end

    A = 32'b01111111111111111111111111111111;
    B = 32'b01111111111111111111111111111111;  //15.999999 + 15.999999 
    #60;
    if (Sum == 32'b00000000000000000000000000000000 && overFlow == 1) begin
      $display("TestCase#4: success");
      success_count = success_count + 1;
    end else begin
      $display("TestCase#4: failed with input A=%0b, B=%0b and Output Sum=%0d and overflow =%0d ",
               A, B, Sum, overFlow);
    end

    A = 32'b11111111111111111111111111111111;
    B = 32'b11111111111111111111111111111111;  // -15.999999 + (-15.999999)
    #60;
    if (Sum == 32'b00000000000000000000000000000000 && overFlow == 1) begin
      $display("TestCase#5: success");
      success_count = success_count + 1;
    end else begin
      $display("TestCase#5: failed with input A=%0b, B=%0b and Output Sum=%0d and overflow =%0d ",
               A, B, Sum, overFlow);
    end
    A = 32'b00000000000000000000000000000000;
    B = 32'b00000000000000000000000000000000;  //0 + 0
    #60;
    if (Sum == 32'b00000000000000000000000000000000 && overFlow == 0) begin
      $display("TestCase#6: success");
      success_count = success_count + 1;
    end else begin
      $display("TestCase#6: failed with input A=%0b, B=%0b and Output Sum=%0d and overflow =%0d ",
               A, B, Sum, overFlow);
    end

    A = 32'b00000001010101000000000000000000;
    B = 32'b00000000011000000000000000000000;  // 5.25 + 1.5
    #60;
    if (Sum == 32'b00000001011011000000000000000000 && overFlow == 0) begin
      $display("TestCase#7: success");
      success_count = success_count + 1;
    end else begin
      $display("TestCase#7: failed with input A=%0b, B=%0b and Output Sum=%0d and overflow =%0d ",
               A, B, Sum, overFlow);
    end
    A = 32'b00000001110010010000000000000000;
    B = 32'b10000001011110100000000000000000;  // 9.125 + (-7.625)
    #60;
    if (Sum == 32'b00000000011000000000000000000000 && overFlow == 0) begin
      $display("TestCase#8: success");
      success_count = success_count + 1;
    end else begin
      $display("TestCase#8: failed with input A=%0b, B=%0b and Output Sum=%0d and overflow =%0d ",
               A, B, Sum, overFlow);
    end
    $display("Simulation Summary:");
    $display("Successful Test Cases: %d", success_count);
    $display("Failed Test Cases: %d", failure_count);
    $stop;
  end
endmodule
