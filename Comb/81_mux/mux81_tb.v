module mux81_tb;
reg [7:0]I;
reg [2:0] S;
wire out;
mux81 DUT(I,S,out);
initial
begin
I=8'b11101010;
S=3'b000;#10;
$display("S2:%d,S1:%d,S0:%d,out:%d",S[2],S[1],S[0],out);
S=3'b001;#10;
$display("S2:%d,S1:%d,S0:%d,out:%d",S[2],S[1],S[0],out);
S=3'b010;#10;
$display("S2:%d,S1:%d,S0:%d,out:%d",S[2],S[1],S[0],out);
S=3'b011;#10;
$display("S2:%d,S1:%d,S0:%d,out:%d",S[2],S[1],S[0],out);
S=3'b100;#10;
$display("S2:%d,S1:%d,S0:%d,out:%d",S[2],S[1],S[0],out);
S=3'b101;#10;
$display("S2:%d,S1:%d,S0:%d,out:%d",S[2],S[1],S[0],out);
S=3'b110;#10;
$display("S2:%d,S1:%d,S0:%d,out:%d",S[2],S[1],S[0],out);
S=3'b111;#10;
$display("S2:%d,S1:%d,S0:%d,out:%d",S[2],S[1],S[0],out);
end
initial
begin
$dumpfile("mux81.vcd");
$dumpvars(0,mux81_tb);
end
endmodule