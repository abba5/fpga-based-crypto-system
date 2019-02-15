module aesEncryption(clk,tempout);
    
	input clk;
	output [127:0] tempout;

	aesCipher u1(.clk(clk),.datain(128'h 0123456789abcdeffedcba9876543210),.key(128'h 0f1571c947d9e8590cb7add6af7f6798),.dataout(tempout));

endmodule 