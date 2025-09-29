module mux21_struct_tb;
reg i0,i1;
reg s;
wire out;
mux21_struct DUT(i0,i1,s,out);
initial
begin
i0=0;
i1=1;
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
$dumpvars(0,mux21_struct_tb);
end
endmodule
