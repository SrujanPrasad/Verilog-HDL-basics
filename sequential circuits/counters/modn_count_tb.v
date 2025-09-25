module modn_count_tb;
reg clk,rst;
parameter N=5;
parameter width=3;
wire [width-1:0]count;
modn_count DUT(.clk(clk),.rst(rst),.count(count));
initial
begin
clk=0;
end
always #2 clk=~clk;
initial
begin
rst=0;#5;
rst=1;#40;
$finish;
end
initial
begin
$dumpfile("modn_count.vcd");
$dumpvars(0,modn_count_tb);
end
endmodule