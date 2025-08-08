module tb_ring_counter;
	// Inputs
	reg clk;
	reg rst;
	// Outputs
	wire [3:0] y;
	// Instantiate the Unit Under Test (UUT)
	four_bit_ring_counter uut (
		.clk(clk), 
		.rst(rst), 
		.y(y)
	);
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		// Wait 100 ns for global reset to finish
		#10;  
		// Add stimulus here
		rst=1;
		#5;
		rst=0;	
	end
    always#10clk=~clk; 
		
endmodule

