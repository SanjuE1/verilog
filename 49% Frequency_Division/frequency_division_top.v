module Frequency_division_tb;
	// Inputs
	reg rst;
	reg clk;
	// Outputs
	wire Q;
	// Instantiate the Unit Under Test (UUT)
	frequency_division uut (
		.rst(rst), 
		.clk(clk), 
		.Q(Q)
									);
	always #10clk=~clk;
	initial begin
		// Initialize Inputs
		rst = 0;
		clk = 0;
		// Wait 100 ns for global reset to finish
		#100; 
		// Add stimulus here
	end
	task reset;
		begin
	@(posedge clk)
		rst=1'b1;
	@(posedge clk)
		rst=1'b0;
		end
	endtask
	initial 
	reset;
endmodule
