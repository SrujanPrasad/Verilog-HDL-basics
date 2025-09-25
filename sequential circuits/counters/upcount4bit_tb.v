module upcount4bit_tb;
reg clk,rst;
wire [3:0]count;
upcount4bit DUT (.clk(clk),.rst(rst),.count(count));
initial
begin
clk=0;
end
always #2 clk=~clk;		//250MHz clock
initial
begin
rst=0;#10;
rst=1;#70;
$finish;
end
initial
begin
$dumpfile("upcount4bit.vcd");
$dumpvars(0,upcount4bit_tb);
end
endmodule
