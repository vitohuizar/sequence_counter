`timescale 1ns / 1ps

module counter(Q, Qn, clk);

output [2:0] Q;
output [2:0] Qn;
input clk;

wire [2:0] T;

assign T[2] = (Q[1] & Q[0]);
assign T[1] = (Qn[2] | Q[0]);
assign T[0] = (Q[2] | (Q[1] & Qn[0]));

tff tffx[2:0] (Q, Qn, T, clk);

endmodule