module srlatch_nand_tb;
reg s,r,en;
wire q,qb;
srlatch_nand  DUT(.s(s),.r(r),.en(en),.q(q),.qb(qb));
initial
begin
$monitor("time : %0t,en:%d,s:%d,r:%d,out:%d",$time,en,s,r,q);
en=0;#10;
en=1;
s=0;r=0;#10;
s=0;r=1;#10;
s=1;r=0;#10;
s=1;r=1;#10;
en=0;
s=1;r=0;#10;
s=1;r=1;#10;
end
initial
begin
$dumpfile("srlatch.vcd");
$dumpvars(0,srlatch_nand_tb);
end
endmodule