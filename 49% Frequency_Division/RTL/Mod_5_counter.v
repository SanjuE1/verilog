module mod_5_counter(input clk,rst,output reg [2:0]Q);
	always@(posedge clk)
		begin
			if(rst)
					Q<=3'd0;
			else if(Q==4'd4)
					Q<=3'd0;
					else
					Q<=Q+3'd1;
		end
endmodule
