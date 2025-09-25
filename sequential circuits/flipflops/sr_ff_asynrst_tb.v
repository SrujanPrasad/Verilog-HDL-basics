module sr_ff_asynrst_tb;
reg s,r,clk,rst;
wire q,qb;
sr_ff_asynrst DUT(.s(s),.r(r),.clk(clk),.rst(rst),.q(q),.qb(qb));
initial
begin
clk=0;
rst=0;
s=0;r=0;
#12 rst=1;
end
always #5 clk=~clk;		//to generate a 100Mhz clock (10ns period)
initial
begin
$monitor("time = %0t , S = %d , R=%d , out = %d", $time,s,r,q);
s=0;r=0;#10;
s=0;r=1;#10;
s=1;r=0;#10;
s=1;r=1;#10;
$finish;
end
initial
begin
$dumpfile("sr_ff_asynrst.vcd");
$dumpvars(0,sr_ff_asynrst_tb);
end
endmodule

