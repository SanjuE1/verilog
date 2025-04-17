module D_flipflop_tb;
// Inputs
reg clk, rst, data;
// Outputs
D_flipflop uut (.clk(clk), .rst (rst), . data (data) , . l (Q) , . lb (Qb) ) ; // Instantiate the Unit Under Test (UUT)
  initial begin  // Initialize Inputs
(data, clk) = 0;
end
always #10 clk=~clk; task reset; begin @ (posedge clk)
rst=1'bl;
@ (posedge clk)
rst=1'b0;
end
endtask
task din (input din);
begin @ (negedge clk)
data=din;
end
endtask initial begin reset; din (1) ; din (0) ; din (1) ; din (0) ; din (0); din (1); din (1); din (0) ; din (1); din (0) ; din (0) ; din (1) ; end 
  initial

$monitor ("Values are: Data=%b, Q=%b, Qb=%b", data, Q, Qb) ;
  endmodule
