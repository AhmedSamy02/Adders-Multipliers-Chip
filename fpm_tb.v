`timescale 1 ns / 100 ps

module fpm_tb ();

  reg [31:0] in1, in2;

  reg clk, rst;
  wire [31:0] out;
  integer success_count;
  integer failure_count;
  sync_fpm uut (
      .A(in1),
      .B(in2),
      .clk(clk),
      .rst(rst),
      .product(out)
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
    in1 = 32'b01000001010000100000000000000000;
    in2 = 32'b11000000000100000000000000000000;
    #20;
    if (out == 32'b11000001110110100100000000000000) begin
      success_count = success_count + 1;
      $display("TestCase#1: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#1: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    in1 = 32'b01000001010000100000000000000000;
    in2 = 32'b01000001010000100000000000000000;
    #20;
    if (out == 32'b01000011000100110000010000000000) begin
      success_count = success_count + 1;
      $display("TestCase#2: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#2: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    in1 = 32'b11000001010000100000000000000000;
    in2 = 32'b11000001010000100000000000000000;
    #20;
    if (out == 32'b01000011000100110000010000000000) begin
      success_count = success_count + 1;
      $display("TestCase#3: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#3: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    in1 = 32'b11000000101101000000000000000000;
    in2 = 32'b01000010100111010100000000000000;
    #20;
    if (out == 32'b11000011110111010010001000000000) begin
      success_count = success_count + 1;
      $display("TestCase#4: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#4: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    in1 = 32'b11000000101001000000000000000000;
    in2 = 0;
    #20;
    if (out == 0) begin
      success_count = success_count + 1;
      $display("TestCase#5: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#5: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    in1 = 32'b00111111100000000000000000000000;
    in2 = 32'b01000010100111010100000000000000;
    #20;
    if (out == 32'b01000010100111010100000000000000) begin
      success_count = success_count + 1;
      $display("TestCase#6: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#6: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    in1 = 32'b01000100101111100000010000000000;  //1520.125
    in2 = 32'b11000100110000111000000100000000;  //-1564.03125
    #20;
    if (out == 32'b11001010000100010001110011001100) begin
      success_count = success_count + 1;
      $display("TestCase#7: success");
    end else begin
      failure_count = failure_count + 1;
      $display("TestCase#7: failed with input %d and %d and Output %d", in1, in2, out);
    end

    ////////////////////////////////

    in1 = 32'b10111111100100000000000000000000;
    in2 = 32'b01000001000011000000000000000000;
    #20;
    if (out == 32'b11000001000111011000000000000000) begin
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
