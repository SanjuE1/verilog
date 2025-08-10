module tb;

	// Inputs
	reg clk;
	reg rst;
 
	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	ne uut (
		.clk(clk), 
		.rst(rst), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		#10;
		rst=1;
		#10;
		rst=0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always#10clk=~clk;
      
endmodule

