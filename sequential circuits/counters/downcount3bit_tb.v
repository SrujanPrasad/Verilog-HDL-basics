module downcount3bit_tb;
reg clk,rst;
wire [2:0] count;
downcount3bit DUT(.clk(clk),.rst(rst),.count(count));
initial 
begin
clk=0;
end
always #2 clk=~clk;
initial
begin
rst=0;#10;
rst=1;#30;
rst=0;#10;
rst=1;#10;
rst=0;#10;
rst=1;#30;
rst=0;#10;
rst=1;
$finish;
end
initial
begin
$dumpfile("downcount3bit.vcd");
$dumpvars(0,downcount3bit_tb);
end
endmodule

