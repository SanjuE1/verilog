//RTL for register 
moduleregister (clk, rst, data_out, load, data) ;
input clk, rst, load; input [7:0]data;
output reg (7:0]data_out;
always@ (posedge clk)
begin
if (rst)
data_out<=8'b0;
else if (load) data_out<=data;
else
data_out<=data_out ;
end
endmodule
