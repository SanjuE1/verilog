module parity_tb;
// Input s
reg [3:0] A;
reg CTRL;
// Outputs
wire Y;
integer i;
// Instantiate the Unit Under Test (UUT)
parity_gen_check uut (
• A (A) ,
• CTRL (CTRL) ,
•Y (Y)
) ;
initial begin
// Initialize Inputs
A = 4'b0;
CTRL = 0;
#60;
CTRL=1;||
end initial begin for (i=0;i<16;i=i+1)
begin
#10; end Sfinish;
end
initial
$monitor ("Values are : A=%b, control=%b, Outputs :Y=&b ", A, CTRL, Y) ;
endmodule
