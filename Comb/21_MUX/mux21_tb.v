module mux21_tb;
reg [1:0]i;
reg s;
wire out;
mux21 DUT(i,s,out);
initial
begin
i=2'b01;
repeat(3)
begin
s=0;#10;
$display("s:%d\tout:%d",s, out);
s=1;#10;
$display("s:%d\tout:%d",s, out);
s=1;#10;
$display("s:%d\tout:%d",s, out);
s=0;#10;
$display("s:%d\tout:%d",s, out);
s=1;#10;
$display("s:%d\tout:%d",s, out);
end
end
initial
begin
$dumpfile("mux21.vcd");
$dumpvars(0,mux21_tb);
end
endmodule
