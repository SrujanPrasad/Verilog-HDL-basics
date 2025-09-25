module downcount4bit_tb;
reg clk,rst;
wire [3:0]count;
downcount4bit DUT (.clk(clk),.rst(rst),.count(count));
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
$dumpfile("downcount4bit.vcd");
$dumpvars(0,downcount4bit_tb);
end
endmodule