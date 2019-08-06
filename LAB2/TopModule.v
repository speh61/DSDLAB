module TopModule(nRst,Clk,CntEn,Co1,Co10,Co100);

input nRst,Clk,CntEn;
output [3:0]	Co1;
output [3:0]	Co10;
output [3:0]	Co100;

wire [1:0]W;

BCDcounter C1(.nRst(nRst),.Clk(Clk),.CntEn(CntEn),.NextEn(W[0]),.Cout(Co1));
BCDcounter C10(.nRst(nRst),.Clk(Clk),.CntEn(CntEn && W[0]),.NextEn(W[1]),.Cout(Co10));
BCDcounter C100(.nRst(nRst),.Clk(Clk),.CntEn(CntEn && W[0] && W[1]),.NextEn( ),.Cout(Co100));
endmodule



