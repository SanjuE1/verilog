//Testbench for Register 
module regester_tb;
// Inputs
reg clk,rst, load; reg [7:0] data;
// Outputs
wire [7:0] data_out;
// Instantiate the Unit Under Test (UUT)
register uut (.clk(clk),.rst (rst), . data_out (data_out), . load (load), .data (data) ) ; initial begin
// Initialize Inputs
clk = 0;
end
always#10 clk=~clk;
task reset; 
begin 
@ (negedge clk) rst=1'bl;
@ (negedge clk) rst=1'b0; end endtask
task data_in (input [7:0] din);
begin
@ (negedge clk) 
load=1'b1;
data=din; 
end endtask
initial begin reset;
data_in (8'd56) ; data_in (8'd29) ; data_in (8'd66) ; data_in (8'd58) ; data_in (8'd40) ;
end endmodule
