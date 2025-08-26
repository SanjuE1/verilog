//testbench
module priority_encoder_tb;

	// Inputs
	reg [7:0] a;

	// Outputs
	wire [2:0] y;
	wire valid;
	// Instantiate the Unit Under Test (UUT)
	priority_encoder uut (
		.a(a), 
		.y(y), 
		.valid(valid)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		// Wait 100 ns for global reset to finish
		#100;  
		// Add stimulus here
	end
	
	task din(input [7:0]b);
				begin
					a=b;
					#10;
				end
				
		endtask
		
		initial begin
			din(6);
			din(5);
			din(8);
			din(2);
			din(0);
			din(3);
			din(7);
		end  
endmodule

