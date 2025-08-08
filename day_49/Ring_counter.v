//top_module ring_counter
module four_bit_ring_counter(clk,rst,y);
input clk,rst;
output [3:0]y;
wire [1:0]w;
counter c1(clk,rst,w);
two_bit_decoder c2(w[0],w[1],y[0],y[1],y[2],y[3]);
endmodule

//counter
module counter(clk,rst,out);
	input clk,rst;
	output reg [3:0]out;
	always@(posedge clk)
		begin
			if(rst)
				out<=4'b0;
				else
					out<=out+1;
			end
endmodule
//decoder 
module two_bit_decoder(i0,i1,y0,y1,y2,y3);
	input i0,i1;
	output y0,y1,y2,y3;
	assign y0=~(i0|i1);
	assign y1=i0&~i1;
	assign y2=~i0&i1;
	assign y3=i0&i1;
endmodule
