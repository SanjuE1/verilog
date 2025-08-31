module d_ff(input clk,d,rst,output reg Q);
	always@(posedge clk)
		begin
			if(rst)
				Q<=1'b0;
			else
				Q<=d;
		end
endmodule
