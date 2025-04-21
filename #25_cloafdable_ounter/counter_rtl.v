module counter (clk, rst, load, data, dout) ;
input clk, rst, load; input [3:0]data;
output reg [3:0] dout;
always@ (posedge clk)
begin if (rst)
dout<=4 'b0;
else if (dout==4 ' d15)
dout <=4 ' do;
else if (load) dout<=data;
else dout<=dout+1;
end
endmodule
