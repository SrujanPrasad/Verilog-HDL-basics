module dff_tb;
reg d,clk,rst;
wire q,qb;
dff DUT (.d(d),.clk(clk),.rst(rst),.q(q),.qb(qb));
initial
begin
clk=0;
rst=0;#20;
d=1;
rst=1;
end
always #2 clk=~clk;
initial
begin
$monitor("time : %0t,d :%d , out :%d",$time,d,q);
d=0;#10;
d=1;#10;
d=1;#10;
d=0;#10;
$finish;
end
initial
begin
$dumpfile("dff.vcd");
$dumpvars(0,dff_tb);
end
endmodule