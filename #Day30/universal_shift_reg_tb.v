module universal_shift_register_tb;
reg
clk, rst;
// Inputs
reg (1:0] ctrl; reg (3:0]data;
wire [3:0]dout; // Outputs
// Instantiate the Unit Under Test (UUT)
Universal_shift_register uut (.clk (clk), .rst (rst), .ctrl(ctrl), .data (data) , . dout (dout) ) ; initial begin
// Initialize Inputs
(clk, rst, ctrl, data) = 0;
end always #10clk=~clk;
task reset;
begin
@ (negedge clk) rst=1'bl;
@ (negedge clk) rst=1'b0; 
end
endtask
task ctrll (input [1:0]a, input [3:0]b) ;
begin
@ (negedge clk) ctrl=a; data=b; 
end
endtask
    initial begin
      reset;
ctrll (2'd0, 4'dl) ; ctrll (2'dl, 4' d10) ; ctrll (2'dl, 4'd11) ; ctrll (2'dl, 4'd12) ; ctrll (2'd2, 4' d11) ; ctrll (2'd3, 4'd12) ; 
     end
initial
$monitor ("Values are: reset=%b, control=%d, data=%d, dout=%d", rst, ctrl, data, dout) ;
endmodule
