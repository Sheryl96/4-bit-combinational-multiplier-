`include "arr_mul.v"
module test_file();

reg[3:0] a,b;
wire[7:0] s;

initial begin
a=4'b0010;
b=4'b0011;
$display("      %b",s[0]);
#10

a=4'b1010;
b=4'b0101;
$display("	%8b",s);
#10

a=4'hF;
b=4'hF;
#10

a=4'b1001;
b=4'b0111;

end 

endmodule 
