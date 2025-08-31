module frequency_division(input rst,clk,output Q );
wire [2:0]w;
wire s;
mod_5_counter A1(clk,rst,w);
d_ff A2(clk,w[2],rst,s);
or A3(Q,w[2],s);
endmodule

