//RTL FOR UNIVERSAL SHIFT REGISTER
module Universal_shift_register (clk, rst, ctrl, data, dout) ;
input clk, rst;
input [3:0]data;
input (1:0]ctrl;
output reg [3:0] dout;
always@ (posedge clk)
begin
if (rst)
dout <=0；
else
begin
case (ctrl)
2'b00:dout<=dout;
2'b01 :dout<=data;
2'b10: dout<=data>>1;
2'b11: 'b11:dout<=data<<1;
default: dout <=dout ;
endcase
end
end
endmodule
