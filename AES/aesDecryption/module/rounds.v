module rounds(clk,data,keyin,rndout);

	input clk;
	input [127:0]data;
	input [127:0]keyin;
	output [127:0]rndout;

	wire [127:0] sb,sr,mcl;
	
	IshiftRow t2(data, sr);
	IsubBytes t1(sr, sb);
	assign mcl = keyin ^ sb;
	IMixCol t3(mcl, rndout);
	
endmodule 