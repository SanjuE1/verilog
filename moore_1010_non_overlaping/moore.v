//******************************* RTL ****************************************//
// sequence detection for 1010 non overlapping  
module MOORE_NO(clk,rst,din,dout);
	input clk,rst,din;
	output dout;
	reg [2:0]ps,ns;
	parameter 	idle	=3'b000,
					s0		=3'b001,
					s1		=3'b010,
					s2		=3'b011,
					s3		=3'b100;
	always@(posedge clk)
			begin
				if(rst)
					ps<=idle;
				else
					ps<=ns;
			end
			
			always@(din or ps)
				begin
						ns=idle;
							case(ps)
								idle	: if(din)
											ns=s0;
										else
											ns=idle;
								s0		: if(din)
											ns=s0;
										else
											ns=s1;
								s1	: if(din)
											ns=s2;
										else
											ns=idle;
								s2		: if(din)
											ns=s0;
										else
											ns=s3;
								s3		: if(din)
											ns=s0;
										else
											ns=idle;
								default : ns=idle;
							endcase
						end
						
			assign dout=(ps==s3)?1'b1:1'b0;
endmodule





//*****************************************TEST BENCH *******************************************//
module moore_non_over_tb;

	// Inputs
	reg clk;
	reg rst;
	reg din;

	// Outputs
	wire dout;

	// Instantiate the Unit Under Test (UUT)
	MOORE_NO uut (
		.clk(clk), 
		.rst(rst), 
		.din(din), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		din = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always#5clk=~clk;
		task reset;
			begin
				@(posedge clk)
					rst=1'b1;
				@(negedge clk)
					rst=1'b0;
			end
		endtask
		
		task di(input a);
				begin
					@(negedge clk)
						din=a;
				end
		endtask
		
		initial begin
			reset;
			di(1);
			di(0);
			di(1);
			di(1);
			di(1);
			di(0);
			di(1);
			di(0);
			di(0);
			di(1);
			di(1);
		end 
endmodule


