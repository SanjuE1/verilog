module t_ff_tb;  	// Inputs
	reg clk,rst,data;	// Outputs
	wire Q,Qb;
	// Instantiate the Unit Under Test (UUT)
T_ff_using_d uut (.clk(clk),.rst(rst),.data(data),.Q(Q),.Qb(Qb));
	initial begin
		clk = 0;
		rst = 0;
		data=0;
		end
always #10 clk=~clk;
	initial begin 
	@(negedge clk)
	rst=1'b1;
	@(negedge clk)
	rst=1'b0;
	data=0;
	@(negedge clk)
	data=1;
	@(negedge clk)
	data=0;
	@(negedge clk)
	data=1;
		end
	initial 
	$monitor ("values are : reset =%b,T=%b,Q=%b,Qb=%b",rst,data,Q,Qb);
endmodule
