module debouncer2(Clk,In,Out);
input In,Clk;
output Out;
reg [3:0] Temp;

always @(posedge Clk)
begin
   Temp[0]<=In;
   Temp[1]<=Temp[0];
   Temp[2]<=Temp[1];

	if(In==1'b1 && Temp[0]==1'b0 && Temp[1]==1'b0 && Temp[2]==1'b0)
				Temp[3]<=1'b1;
	else if(In==1'b0 && Temp[0]==1'b1 && Temp[1]==1'b1 && Temp[2]== 1'b1)
				Temp[3]<=1'b0;
	else if(Temp==1'b1 && ((Temp[0]&& Temp[1] && Temp[2])==0) )
				Temp[3] <= Temp[3];
	else if(Temp==1'b0 && ((Temp[0]&& Temp[1] && Temp[2])==0) )
				Temp[3] <= Temp[3];
   
end
assign Out=Temp[3];






endmodule

