module IMixCol(data, inv);

input [127: 0] data;
output [127: 0]inv;

	invMixCol(data[127: 120], data[119: 112], data[111: 104], data[103: 96], inv[127: 120]);
	invMixCol(data[119: 112], data[111: 104], data[103: 96], data[127: 120], inv[119: 112]);
	invMixCol(data[111: 104], data[103: 96], data[127: 120], data[119: 112], inv[111: 104]);
	invMixCol(data[103: 96], data[127: 120], data[119: 112], data[111: 104], inv[103: 96]);
	
	invMixCol(data[95:88], data[87:80], data[79:72], data[71:64], inv[95:88]);
	invMixCol(data[87:80], data[79:72], data[71:64], data[95:88], inv[87:80]);
	invMixCol(data[79:72], data[71:64], data[95:88], data[87:80], inv[79:72]);
	invMixCol(data[71:64], data[95:88], data[87:80], data[79:72], inv[71:64]);

	invMixCol(data[63:56], data[55:48], data[47:40], data[39:32], inv[63:56]);
	invMixCol(data[55:48], data[47:40], data[39:32], data[63:56], inv[55:48]);
	invMixCol(data[47:40], data[39:32], data[63:56], data[55:48], inv[47:40]);
	invMixCol(data[39:32], data[63:56], data[55:48], data[47:40], inv[39:32]);

	invMixCol(data[31:24], data[23:16], data[15:8], data[7:0], inv[31:24]);
	invMixCol(data[23:16], data[15:8], data[7:0], data[31:24], inv[23:16]);
	invMixCol(data[15:8], data[7:0], data[31:24], data[23:16], inv[15:8]);
	invMixCol(data[7:0], data[31:24], data[23:16], data[15:8], inv[7:0]);
	
		
endmodule
