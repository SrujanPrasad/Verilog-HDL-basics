module demux14_tb;
reg [3:0]a;
reg s1,s0;
wire [3:0]i0,i1,i2,i3;
demux14 DUT (.a(a),.s1(s1),.s0(s0),.i0(i0),.i1(i1),.i2(i2),.i3(i3));
initial
begin
a=4'b0111;
s1=0;s0=0;#10
$display("s1=%d,s0=%d,i0=%d,i1=%d,i2=%d,i3=%d",s1,s0,i0,i1,i2,i3);
s1=0;s0=1;#10
$display("s1=%d,s0=%d,i0=%d,i1=%d,i2=%d,i3=%d",s1,s0,i0,i1,i2,i3);
s1=1;s0=0;#10
$display("s1=%d,s0=%d,i0=%d,i1=%d,i2=%d,i3=%d",s1,s0,i0,i1,i2,i3);
s1=1;s0=1;#10
$display("s1=%d,s0=%d,i0=%d,i1=%d,i2=%d,i3=%d",s1,s0,i0,i1,i2,i3);
end
initial
begin
$dumpfile("demux14.vcd");
$dumpvars(0,demux14_tb);
end
endmodule