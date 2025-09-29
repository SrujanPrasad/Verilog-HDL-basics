module demux12_tb;
reg [3:0]a;
reg s;
wire [3:0]I1,I0;
demux12 DUT (.a(a),.s(s),.I1(I1),.I0(I0));
initial
begin
a=4'b1011;
s=0;#10;
$display("a=%d,s=%d, I1=%d,I0=%d",a,s,I1,I0);
s=1;#10;
$display("a=%d,s=%d, I1=%d,I0=%d",a,s,I1,I0);
s=0;#10;
$display("a=%d,s=%d, I1=%d,I0=%d",a,s,I1,I0);
a=4'b1111;
s=1;#10;
$display("a=%d,s=%d, I1=%d,I0=%d",a,s,I1,I0);
s=1;#10;
$display("a=%d,s=%d, I1=%d,I0=%d",a,s,I1,I0);
s=0;#10;
$display("a=%d,s=%d, I1=%d,I0=%d",a,s,I1,I0);
end
initial
begin
$dumpfile("demux12.vcd");
$dumpvars(0,demux12_tb);
end
endmodule
