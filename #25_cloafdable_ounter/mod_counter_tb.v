module mod_38_counter_tb;
reg clk;
// Inputs
reg rst;
reg [5:0] data;
reg load;
wire [5:0] dout;
mod_38_counter uut (.clk(clk), (clk),.rst (rst),. data (data),. load (load),. dout (dout)); // Instantiate the Unit Under Test (UUT)
initial begin
// Initialize Inputs
(clk, rst, data, load) =0;
end
always #10 clk=~clk;
task reset;
begin
@ (negedge clk)
rst=1'bl;
@ (negedge clk)
rst=1'b0;
end endtask
task din (input [5:0]a) ;
begin
@ (negedge clk)
load=1; data=a;
@ (negedge clk)
load=0; end endtask
initial begin reset;
din (6' d5) ;
end
endmodule
