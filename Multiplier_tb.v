`timescale 1 ns / 100 ps

module Multiplier_tb ();

  reg [31:0] in1, in2;
  reg clk, rst;
  wire [31:0] out;
  integer success_count;
  integer failure_count;
  SimpleMultiplier uut (
      .in1(in1),
      .in2(in2),
      .clk(clk),
      .rst(rst),
      .out(out)
  );

  initial begin
    clk = 1;
    forever #5 clk = ~clk;
  end

  initial begin
    rst = 1;
    #20 rst = 0;
  end

  // Test cases
  initial begin
    success_count = 0;
    failure_count = 0;
    #20;
    in1 = 32'b00000000000000000000000000000101;
    in2 = 32'b10000000000000000000000000000011;
    #20;
    if (out == 32'b10000000000000000000000000001111) begin
      success_count = success_count + 1;
      $display("TestCase#1: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#1: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    in1 = 32'b00000000000000000000000000001000;
    in2 = 32'b00000000000000000000000000000010;
    #20;
    if (out == 32'b00000000000000000000000000010000) begin
      success_count = success_count + 1;
      $display("TestCase#2: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#2: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    in1 = 32'b10000000000000000000000000000100;
    in2 = 32'b10000000000000000000000000000011;
    #20;
    if (out == 32'b00000000000000000000000000001100) begin
      success_count = success_count + 1;
      $display("TestCase#3: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#3: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    in1 = 32'b10000000000000000000000000000110;
    in2 = 32'b00000000000000000000000000000111;
    #20;
    if (out == 32'b10000000000000000000000000101010) begin
      success_count = success_count + 1;
      $display("TestCase#4: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#4: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    in1 = 32'b10000000000000000000000000000101;
    in2 = 32'b00000000000000000000000000000000;
    #20;
    if (out == 32'b00000000000000000000000000000000) begin
      success_count = success_count + 1;
      $display("TestCase#5: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#5: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    in1 = 32'b00000000000000110101101010101011;
    in2 = 32'b00000000000000000000000000000001;
    #20;
    if (out == 32'b00000000000000110101101010101011) begin
      success_count = success_count + 1;
      $display("TestCase#6: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#6: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    in1 = 32'b00000000000000000000000000001001;
    in2 = 32'b10000000000000000000000000000010;
    #20;
    if (out == 32'b10000000000000000000000000010010) begin
      success_count = success_count + 1;
      $display("TestCase#7: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#7: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    in1 = 32'b10000000000000000000000000000111;
    in2 = 32'b00000000000000000000000000000100;
    #20;
    if (out == 32'b10000000000000000000000000011100) begin
      success_count = success_count + 1;
      $display("TestCase#8: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#8: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    $display("Simulation Summary:");
    $display("Successful Test Cases: %d", success_count);
    $display("Failed Test Cases: %d", failure_count);
    $stop;
  end

endmodule
