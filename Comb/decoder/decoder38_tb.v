module decoder38_tb;
reg [2:0]A;
wire [7:0] out;
decoder38 DUT(.A(A),.out(out));
initial
begin
A=3'b000;#10;
$display("Input is %d , output is %d",A,out);
A=3'b001;#10;
$display("Input is %d , output is %d",A,out);
A=3'b010;#10;
$display("Input is %d , output is %d",A,out);
A=3'b011;#10;
$display("Input is %d , output is %d",A,out);
A=3'b100;#10;
$display("Input is %d , output is %d",A,out);
A=3'b101;#10;
$display("Input is %d , output is %d",A,out);
A=3'b110;#10;
$display("Input is %d , output is %d",A,out);
A=3'b111;#10;
$display("Input is %d , output is %d",A,out);
end
initial
begin
$dumpfile("decoder38.vcd");
$dumpvars(0,decoder38_tb);
end
endmodule