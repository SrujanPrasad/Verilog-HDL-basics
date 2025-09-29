module mux41_cond(input [3:0]I,
input [1:0]S,output out);
assign out=S[1]?(S[0]?I[3]:I[2]):(S[0]?I[1]:I[0]);
endmodule