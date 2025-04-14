//RTL For Barrel Shifter
module barrel_shifter (A0, Al, A2, A3, SO, S1, YO, Y1, Y2, Y3) ;
input A0, A1, A2, A3, SO, S1;
output reg Yo, Y1, Y2, Y3;
always@ (*)
begin
case ((S0, S1))
2'000: begin Y3=A3; Y2=A2; Y1=A1; Y0=A0; end
2'b01: begin Y3=A0; Y2=A3; Y1=A2; Y0=A1; end
2'b10:begin Y3=A1; Y2=A0; Y1=A3; Y0=A2;
end
2'b11:begin Y3=A2; Y2=A1; Y1=A0; Y0=A3; end
default: (Y0, Y1, Y2, Y3)=0;
endcase
end
endmodule

