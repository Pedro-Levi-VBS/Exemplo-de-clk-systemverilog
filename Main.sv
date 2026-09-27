// verilog

`timescale 1ns/1ps

module clk_test();
  reg clk = 0;
  reg q = 0;

  always begin 
    #5;
    clk = ~clk;
    $display("clk: %b", clk);
  end
  
  always @(posedge clk) begin 
    q <= ~q; 
    $display("q: %b", q);
  end
endmodule

/*
systemverilog

`timescale 1ns/1ps

module clk_test();
  logic clk = 0;
  logic q = 0;

  always begin 
    #5;
    clk = ~clk;
    $display("clk: %b", clk);
  end
  
  always_ff @(posedge clk) begin 
    q <= ~q; 
    $display("q: %b", q);
  end
endmodule
*/
