


`timescale 1ns/1ps
module gen(output reg clk);
	initial 
		begin 
			clk=0;
		forever #7.5 clk=~clk;
		end
endmodule