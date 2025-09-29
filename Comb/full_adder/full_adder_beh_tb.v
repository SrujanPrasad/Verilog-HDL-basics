module full_adder_beh_tb;
reg a,b,cin;
wire sum,cout;
full_adder_beh DUT (a,b,cin, sum,cout);
initial
begin
a=0;b=0;cin=0;#10;
$display("a:%d,b:%d,cin:%d,sum:%d,cout:%d",a,b,cin,sum,cout);
a=0;b=0;cin=1;#10;
$display("a:%d,b:%d,cin:%d,sum:%d,cout:%d",a,b,cin,sum,cout);
a=0;b=1;cin=0;#10;
$display("a:%d,b:%d,cin:%d,sum:%d,cout:%d",a,b,cin,sum,cout);
a=0;b=1;cin=1;#10;
$display("a:%d,b:%d,cin:%d,sum:%d,cout:%d",a,b,cin,sum,cout);
a=1;b=0;cin=0;#10;
$display("a:%d,b:%d,cin:%d,sum:%d,cout:%d",a,b,cin,sum,cout);
a=1;b=0;cin=1;#10;
$display("a:%d,b:%d,cin:%d,sum:%d,cout:%d",a,b,cin,sum,cout);
a=1;b=1;cin=0;#10;
$display("a:%d,b:%d,cin:%d,sum:%d,cout:%d",a,b,cin,sum,cout);
a=1;b=1;cin=1;#10;
$display("a:%d,b:%d,cin:%d,sum:%d,cout:%d",a,b,cin,sum,cout);
end
initial 
begin
$dumpfile("full_adder.vcd");
$dumpvars(0,full_adder_beh_tb);
end
endmodule