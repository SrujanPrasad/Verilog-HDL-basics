module mux41_cond(input [3:0]I,
input [1:0]S,output out);
assign out=S[1]?(S[0]?I[3]:I[2]):(S[0]?I[1]:I[0]);
endmodule

module mux21(input [1:0]i, input s, output out);
assign out=s?i[1]:i[0]; //using conditional operator
endmodule

module mux81(input [7:0]I,
             input [2:0]S,
             output out);
wire w1, w2;

mux41_cond m1 (.I(I[3:0]), .S(S[1:0]), .out(w1));
mux41_cond m2 (.I(I[7:4]), .S(S[1:0]), .out(w2));
mux21      m3 (.i({w2, w1}), .s(S[2]), .out(out));

endmodule
