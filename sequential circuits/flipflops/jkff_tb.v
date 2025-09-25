module jkff_tb;
reg clk,rst,j,k;
wire q,qb;
jkff DUT(.j(j),.k(k),.clk(clk),.rst(rst),.q(q),.qb(qb));
initial
begin
clk=0;
rst=0;
j=1;k=1;
#10 rst=1;
end
always #2 clk=~clk;		//to generate a 250Mhz clock (10ns period)
initial
begin
$monitor("time = %0t , J = %d , K=%d , out = %d", $time,j,k,q);
j=0;k=0;#10;
j=0;k=1;#10;
j=1;k=0;#10;
j=1;k=1;#10;
$finish;
end
initial
begin
$dumpfile("jkff.vcd");
$dumpvars(0,jkff_tb);
end
endmodule
