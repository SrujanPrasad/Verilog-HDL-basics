module half_add_tb;
reg a,b;
wire sum, carry;
half_add DUT(a,b,sum,carry);
initial
begin
a=0;b=0;#10;
$display("a=%d,b=%d,sum=%d,carry=%d",a,b,sum,carry);
a=0;b=1;#10;
$display("a=%d,b=%d,sum=%d,carry=%d",a,b,sum,carry);
a=1;b=0;#10;
$display("a=%d,b=%d,sum=%d,carry=%d",a,b,sum,carry);
a=1;b=1;#10;
$display("a=%d,b=%d,sum=%d,carry=%d",a,b,sum,carry);
end
initial
begin
$dumpfile("half_add.vcd");
$dumpvars(1);
end
endmodule
