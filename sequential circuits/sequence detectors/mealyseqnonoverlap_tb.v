module mealyseqnonoverlap_tb;
reg clk,rst,x;
wire out;
mealyseqnonoverlap DUT(.clk(clk),.rst(rst),.x(x),.out(out));
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
x=1; #4;
x=0; #4;
x=1; #4;   
x=0; #4;
x=1; #4;
#20;
$finish;
end
initial
begin
$dumpfile("mealyseqnonoverlap.vcd");
$dumpvars(0,mealyseqnonoverlap_tb);
end
endmodule
