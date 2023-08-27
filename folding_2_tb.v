`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 22:57:43
// Design Name: 
// Module Name: folding_2_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
module folding_2_tb(

    );

parameter n=16;
reg [n-1:0]Xn,a,b;
reg clk,switch,rst;
wire [n-1:0]Yn;


folding_2 dut(.Xn(Xn),.Yn(Yn),.a(a),.b(b),.clk(clk),.switch(switch),.rst(rst));

initial clk=0;
always #5 clk=!clk;

initial switch=1;
always #10 switch=!switch;


initial
begin
rst=1;a=2;b=3;
	#35 Xn=-3;rst=0;
	#20 Xn=5;
	#20 Xn=2;
	#20 Xn=-2;
	#20 Xn=4;
	#20 Xn=1;
//	rst=1;a=3;b=5;
//	#35 Xn=-3;rst=0;
//	#20 Xn=10;
//	#20 Xn=5;
//	#20 Xn=3;
//	#20 Xn=16;
//	#20 Xn=1;
	//#20 Xn=0;
	#200 $stop;$finish;
end
endmodule
