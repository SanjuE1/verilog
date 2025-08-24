module vending_machinee (clk, rst, data, dout_pro, dout_bal) ;
  input clk, rst; input [1:0]data;
  output dout_pro, dout_bal;
  reg [2:01ps,ns;
  parameter idle=3'b000,
            s1=3'b001,
            s2=3'b010,
            s3=3'b011,
            s4=3'b100;
always@ (posedge clk)
  begin
    if(rst)
      ps<=idle;
    else ps<=ns;
  end
always@ (data or ps)
  begin
    ns=idle ;
    case (ps)
        idle : if (data==2'b1)
        ns=s1;
    else if (data==2'b10)
      ns=s2;
    else ns=idle;
      s1: if (data==2'b1)
      ns=s2;
    begin
      ns=idle ;
  case (ps)
      idle : if(data==2'b1)
      ns=s1;
else if(data==2'b10)
      ns=s2;
      eLse
      ns=idle;
      s1: if(data==2'b1)
      ns=s2;
else if (data==2'b10)
      ns=s3;
else ns=idle;
    s2: if (data==2'b1)
    ns=s3;
else if (data==2'b10)
    ns=s4;
else ns=idle;
    s3: ns=idle; s4:ns=idle;
      endcasel
end
assign dout_pro= (ps==3 || ps ==s4) 21 'bl:1'b0;
assign dout_bal= (ps==4) 21'bl: 1'b0;
endmodule
