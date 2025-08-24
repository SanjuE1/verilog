module vending_tb;
reg clk, rst;
// Inputs |
reg (1:0] data;
wire dout_pro, dout_bal;
// Outputs
     vendding_machinee uut (.clk(clk), rst (rst), .data (data) , .dout_pro (dout_pro), .dout_bal (dout_bal)) :
initial begin
// Initialize Inputs |
(clk, rst, data) = 0:
end
always #10 clk=-clk;
task reset:
  begin
@ (negedge clk)
  rst=l'bl;
@ (negedge clk)
  rst=1'b0;end
endtask
task din (input [1:0]a);
begin
@ (negedge clk)
data=a;
  end
endtask
initial begin
  reset;
  din (2'b1) ;
  din (2'b1);
  din (2'b10) :
  din (2'bl);
  din (2'bl);
  din (2'bl) ;
end 
endmodule
