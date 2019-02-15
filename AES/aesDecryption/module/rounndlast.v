module rounndlast(clk,rin,keylastin,fout);

	input clk;
	input [127:0]rin;
	input [127:0]keylastin;
	output [127:0]fout;

	wire [127:0] sb,sr,mcl,keyout;

	IshiftRow t2(rin, sr);
	IsubBytes t1(sr, sb);
	assign fout = keylastin ^ sb;

endmodule 