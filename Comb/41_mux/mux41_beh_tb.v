module mux41_beh_tb;
reg a,b,c,d;
reg s1,s0;
wire out;
mux41_beh DUT(a,b,c,d,s1,s0,out);
initial 
begin
a=1;b=1;c=1;d=0;
s1=0;s0=0;#20;
$display("s1:%d,s0:%d,out:%d",s1,s0,out);
s1=0;s0=1;#20;
$display("s1:%d,s0:%d,out:%d",s1,s0,out);
s1=1;s0=0;#20;
$display("s1:%d,s0:%d,out:%d",s1,s0,out);
s1=1;s0=1;#20;
$display("s1:%d,s0:%d,out:%d",s1,s0,out);
end
initial
begin
$dumpfile("mux41.vcd");
$dumpvars(0,mux41_beh_tb);
end
endmodule
