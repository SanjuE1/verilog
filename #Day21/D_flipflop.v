//Rtl for D flipflop
module D_flipflop (clk, rst, data, Q, Qb) ; input clk, rst, data;
output reg Q;
output Qb;
always@ (posedge clk)
begin
if(rst)
Q<=1'b0;
else
O<=data;
end
assign eb=~Q;
endmodule
