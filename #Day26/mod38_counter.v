module mod_38_counter (clk, rst, data, load, dout) ;
input clk, rst, load;

input [5:0]data;

output reg (5:0] dout;


always@ (posedge clk)
begin


if (rst)

dout<=5 ' d0;

else if (dout==6' d37)

dout<=5 ' d0;

else if (load)

dout<=data;

else

dout<=dout +1;

end
endmodule
