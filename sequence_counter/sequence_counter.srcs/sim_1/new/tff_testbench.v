`timescale 1ns / 1ps
module tff_testbench();
wire [2:0]Q;
wire [2:0]Qn;
reg clk;
counter dut(Q, Qn, clk);
initial begin
clk=0;
forever #0.5 clk=~clk;
end
initial begin
#15 $finish;
end
endmodule
