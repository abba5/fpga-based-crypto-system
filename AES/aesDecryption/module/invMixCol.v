module invMixCol(a1, a2, a3, a4, ol);
	
	input [7:0] a1,a2,a3,a4;
	output [7:0] ol;
	
	wire [7:0] p1,p2,p3,p4;
	
	look14(a1, p1);
	look11(a2, p2);
	look13(a3, p3);
	look9(a4, p4);
	
	assign ol = p1 ^ p2 ^ p3 ^ p4;
	
endmodule