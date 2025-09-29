module mux41_cond_tb;
reg [3:0]I;
reg [1:0]S;
wire out;
mux41_cond DUT(I,S,out);
initial 
begin
I=4'b1110;
S[1]=0;S[0]=0;#20;
$display("S1:%d,S0:%d,out:%d",S[1],S[0],out);
S[1]=0;S[0]=1;#20;
$display("S1:%d,S0:%d,out:%d",S[1],S[0],out);
S[1]=1;S[0]=0;#20;
$display("S1:%d,S0:%d,out:%d",S[1],S[0],out);
S[1]=1;S[0]=1;#20;
$display("S1:%d,S0:%d,out:%d",S[1],S[0],out);
end
initial
begin
$dumpfile("mux41.vcd");
$dumpvars(0,mux41_cond_tb);
end
endmodule
