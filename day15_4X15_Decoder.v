module decoder_4x16(A, B, C, D, E,YO, Y1, Y2, Y3, Y4, Y5, Y6, Y7,78, Y9, Y10, Y11, Y12, Y13, Y14, Y15);

input A, B, C, D, E;
wire [3:0]w;
output YO, Y1, Y2, Y3, Y4, Y5, Y6, Y7,78, Y9, Y10, Y11, Y12, Y13, Y14, Y15;



decoder Al (A, B, E,w[0],w[1],w[2], w[3]);

decoder A2 (C, D, w[0], YO, Y1, Y2, Y3) ;

decoder A3 (C,D, w [1], Y4, Y5, Y6, Y7) ;

decoder A4 (C,D, w [2], Y8, Y9, Y10, Y11) ;

decoder A5 (C,D, D,w[3], Y12, Y13, Y14, Y15) ;
endmodule


// Decoder 2x4
module decoder (A, B,E, YO, YO, Y1, Y2,Y3) ;
input A, B,E;


output Yo, Y1, Y2, Y3;

assign 10= (~Ad~B & E) ;

assign Y1=~A&B&E;

assign Y2=A&~B&E;
assign Y3=A&B&E;

endmodule
