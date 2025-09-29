module full_adder_beh(input a,b,cin,output reg sum,cout);
always @(*)
begin
sum=a^b^cin;
cout=(a&b)|(cin&(a^b));
end
endmodule