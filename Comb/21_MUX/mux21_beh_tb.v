module mux21_beh_tb;
reg [3:0]a,b;
reg s;
wire [3:0]out;
mux21_beh DUT(a,b,s,out);
initial
begin
a=4'b0101;b=4'b1010;
s=0;#10;
$display("s:%d\tout:%d",s, out);
s=0;#10;
$display("s:%d\tout:%d",s, out);
s=1;#10;
$display("s:%d\tout:%d",s, out);
a=4'b0101;b=4'b1010;
s=0;#10;
$display("s:%d\tout:%d",s, out);
s=1;#10;
a=4'b1111;b=4'b1110;
$display("s:%d\tout:%d",s, out);
s=0;#10;
$display("s:%d\tout:%d",s, out);
end
initial
begin
$dumpfile("mux21_beh.vcd");
$dumpvars(0,mux21_beh_tb);
end
endmodule