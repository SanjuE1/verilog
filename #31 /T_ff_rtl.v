module T_ff_using_d(clk,rst,data,Q,Qb);
input clk,rst,data;
output   Q,Qb;
wire w;
xor A1(w,data,Q);
d_flipflop A2(clk,rst,w,Q,Qb);
endmodule  
