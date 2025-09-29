module mux21_beh(input [3:0]a,b, input s, output reg [3:0]out);
always @(*)
begin
if(s)
out=b;
else
out=a;
end
endmodule
