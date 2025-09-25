module tff_tb;
reg clk,rst,t;
wire q,qb;
tff DUT (.clk(clk),.rst(rst),.t(t),.q(q),.qb(qb));
initial
begin
clk=0;
rst=0;#10;
t=1;
rst=1;
end
always #2 clk=~clk;
initial
begin
$monitor("time:%0t , t:%d,out:%d",$time,t,q);
repeat(3)
begin
t=0;#10;
t=1;#10;
end
$finish;
end
initial
begin
$dumpfile("tff.vcd");
$dumpvars(0,tff_tb);
end
endmodule