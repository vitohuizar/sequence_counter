`timescale 1ns / 1ps
module tff(Q, Qn, T, clk);
output reg Q;
output Qn;
input T, clk;
initial Q=0;
assign Qn=~Q;

always @(posedge clk)
begin
if(T==1)
    Q=~Q;
end
endmodule
