module parity_gen_check (A, CTRL, Y) ;
input [3:0]A;
input CTRL;
output reg y;
always@ (*)
begin if (CTRL)
Y=^A; // Odd parity detector & Even parity generator
else
Y=~ (^A);//Even parity detector & odd parity generator
end
endmodule
