module full_adder(a,b,cin,s,cout);
input a,b,cin;
output s,cout;

//full adder assignments.
assign s=(a^b^cin);
assign cout=((a&b)|(b&cin)|(cin&a));
endmodule 
