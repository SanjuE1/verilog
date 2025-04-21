module counter_tb;
reg clk, rst, load; // Input s reg [3:0] data;
// Outputs
wire [3:0] dout;
// Instantiate the Unit Under Test (UUT)
counter uut (.clk (clk),. rst (rst),. load (load),. data (data) , . dout (dout) ) ;
initial begin
// Initialize Inputs
(clk, rst, load,
data } = 0;
end
always #10clk=~clk;
task reset;
begin
@ (negedge clk)
rst =1'bl;
@ (negedge clk)
rst =1'b0;
end endtask
task din (input [3:0]a) ;
begin
@ (negedge clk)
load=1; data=a;
@ (negedge clk)
load=0;
end endtask
initial begin
  reset;
din (4' d4) ;
end 
 initial
§monitor ("Values are : inputs Reset=%b, load=%b, data=%b, dout=%b", rst, load, data, dout) ;
 endmodule
