module mux41_beh(input a,b,c,d,s1,s0,output reg out);
always @(*)
begin
case({s1,s0})
2'b00 :out=a;
2'b01 :out=b;
2'b10 : out=c;
2'b11 : out=d;
default: out=1'bx;
endcase
end
endmodule