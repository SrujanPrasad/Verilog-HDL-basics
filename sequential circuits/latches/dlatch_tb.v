module dlatch_tb;
reg d,en;
wire q,qb;
dlatch DUT (.d(d),.en(en),.q(q),.qb(qb));
initial
begin
$monitor("time:%t, en :%d , d : %d,output:%d",$time,en,d,q);
d=0;
en=0;#20;
d=1;
en=0;#20;
d=1;
en=1;#20;
d=0;
en=1;#20;
end
initial
begin
$dumpfile("dlatch.vcd");
$dumpvars(0,dlatch_tb);
end
endmodule