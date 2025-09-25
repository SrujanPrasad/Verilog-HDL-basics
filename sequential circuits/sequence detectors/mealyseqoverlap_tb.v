module mealyseqoverlap_tb;
reg clk,rst,x;
wire out;
mealyseqoverlap DUT (.clk(clk),.rst(rst),.x(x),.out(out));
initial
clk=0;
always #2 clk=~clk;
initial
begin
x=0;
rst=0;#4;
rst=1;
x=0; #4;
x=1; #4;
x=0; #4;
x=1; #4;
x=0; #4;
x=1; #4;
x=0; #4;
x=1; #4;
x=0; #4;
x=1; #4;
x=0; #4;
x=1; #4;
#10;
$finish;
end
initial
begin
$dumpfile("mealyseqoverlap.vcd");
$dumpvars(0,mealyseqoverlap_tb);
end
endmodule
