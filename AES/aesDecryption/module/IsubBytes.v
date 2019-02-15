module IsubBytes(data,sb);

input [127:0] data;
output [127:0] sb;

     ISBox q0( .a(data[127:120]),.c(sb[127:120]) );
     ISBox q1( .a(data[119:112]),.c(sb[119:112]) );
     ISBox q2( .a(data[111:104]),.c(sb[111:104]) );
     ISBox q3( .a(data[103:96]),.c(sb[103:96]) );
     
     ISBox q4( .a(data[95:88]),.c(sb[95:88]) );
     ISBox q5( .a(data[87:80]),.c(sb[87:80]) );
     ISBox q6( .a(data[79:72]),.c(sb[79:72]) );
     ISBox q7( .a(data[71:64]),.c(sb[71:64]) );
     
     ISBox q8( .a(data[63:56]),.c(sb[63:56]) );
     ISBox q9( .a(data[55:48]),.c(sb[55:48]) );
     ISBox q10(.a(data[47:40]),.c(sb[47:40]) );
     ISBox q11(.a(data[39:32]),.c(sb[39:32]) );
     
     ISBox q12(.a(data[31:24]),.c(sb[31:24]) );
     ISBox q13(.a(data[23:16]),.c(sb[23:16]) );
     ISBox q14(.a(data[15:8]),.c(sb[15:8]) );
     ISBox q16(.a(data[7:0]),.c(sb[7:0]) );
	  
endmodule 