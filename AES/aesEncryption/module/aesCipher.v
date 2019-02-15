module aesCipher(clk,datain,key,dataout);

	input clk;
	input [127:0] datain;
	input [127:0] key;
	output[127:0] dataout;
	wire [127:0] r0_out;
	wire [127:0] r1_out,r2_out, r3_out, r4_out, r5_out, r6_out, r7_out, r8_out, r9_out;
	wire [127:0] key1, key2, key3, key4, key5, key6, key7, key8, key9, key10;

	KeyGeneration k1(.rc(4'b0000), .key(key), .keyout(key1));
	KeyGeneration k2(.rc(4'b0001), .key(key1), .keyout(key2));
	KeyGeneration k3(.rc(4'b0010), .key(key2), .keyout(key3));
	KeyGeneration k4(.rc(4'b0011), .key(key3), .keyout(key4));
	KeyGeneration k5(.rc(4'b0100), .key(key4), .keyout(key5));
	KeyGeneration k6(.rc(4'b0101), .key(key5), .keyout(key6));
	KeyGeneration k7(.rc(4'b0110), .key(key6), .keyout(key7));
	KeyGeneration k8(.rc(4'b0111), .key(key7), .keyout(key8));
	KeyGeneration k9(.rc(4'b1000), .key(key8), .keyout(key9));
	KeyGeneration k10(.rc(4'b1001), .key(key9), .keyout(key10));

	assign r0_out = datain ^ key;

	rounds r1(.clk(clk),.data(r0_out),.keyin(key1),.rndout(r1_out));
	rounds r2(.clk(clk),.data(r1_out),.keyin(key2),.rndout(r2_out));
	rounds r3(.clk(clk),.data(r2_out),.keyin(key3),.rndout(r3_out));
	rounds r4(.clk(clk),.data(r3_out),.keyin(key4),.rndout(r4_out));
	rounds r5(.clk(clk),.data(r4_out),.keyin(key5),.rndout(r5_out));
	rounds r6(.clk(clk),.data(r5_out),.keyin(key6),.rndout(r6_out));
	rounds r7(.clk(clk),.data(r6_out),.keyin(key7),.rndout(r7_out));
	rounds r8(.clk(clk),.data(r7_out),.keyin(key8),.rndout(r8_out));
	rounds r9(.clk(clk),.data(r8_out),.keyin(key9),.rndout(r9_out));
	rounndlast r10(.clk(clk),.rin(r9_out),.keylastin(key10),.fout(dataout));
	// rounndlast r10(.clk(clk),.rin(r1_out),.keylastin(key1),.fout(dataout));
	
endmodule 