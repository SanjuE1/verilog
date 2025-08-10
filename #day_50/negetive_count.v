//rtl
module ne(input clk,rst,output reg signed [3:0]out);
	always@(posedge clk)
		begin
			if(rst)
				out<=-1;
				else if(out<=-8)
					out<=-1;
				else
				out<=out-1;
			end
endmodule
