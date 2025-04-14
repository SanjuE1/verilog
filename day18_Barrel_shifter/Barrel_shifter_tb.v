//Test_Bench
module barrel_shifter_tb;
// Inputs
reg AO, Al, A2, A3, SO, S1;
// Outputs
wire YO, Y1, Y2, Y3;
integer i;
// Instantiate the Unit Under Test (UUT)
barrel_shifter uut (A0 (A0), .A1 (A1),. A2 (A2), A3 (A3), SO (SO) , . S1 (S1), . YO (YO) , . Y1 (Y1), . Y2 (Y2), Y3 (Y3)) ;
initial begin
// Initialize Inputs
A0 = 0;
A1 = 1;
A2 = 1;
A3 = 1;
end initial begin for (i=0;i<6;i=i+1)
begin {50,s1}=i;
#10; end $finish;
end initial
$monitor ("Values are :A0=8b, A1=8b, A2=8b, A3=%b, select lines are : S0=8b, S1=8b, outputs are :Y0=8b, Y1=8b, Y2=%b, Y3=8b ", A0, A1, A2, A3, SO, S1, YO, Y1, Y2, Y3) ;
endmodule
