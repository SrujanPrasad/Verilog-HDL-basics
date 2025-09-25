module updown3bit_tb;
reg clk,rst,updown;
wire [2:0]count;
updown3bit DUT(.clk(clk),.rst(rst),.updown(updown),.count(count));
initial
begin
clk=0;
end
always #2 clk=~clk;
initial
begin
updown=0;
rst=0;#10;
rst=1;#40;
updown=1;
rst=0;#10;
rst=1;#36;
$finish;
end
initial
begin
$dumpfile("updown3bit.vcd");
$dumpvars(0,updown3bit_tb);
end
endmodule