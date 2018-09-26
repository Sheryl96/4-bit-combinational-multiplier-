`include "arr_mul.v"
module test_file();

reg[3:0] a,b;
wire[7:0] s;

arr_mul s1(a,b,s);

initial
begin
$display("Project by: Sheryl Bernard, Sushmitha Shiva Shankar");
$display("Test case 1:");
$monitor("	Result=%8b",s);
a=4'b0010;
b=4'b0011;
#10

#10
$display("Test case 2:");
a=4'b1010;
b=4'b0101;

#10
$display("Test case 3:");
a=4'hF;
b=4'hF;

#10
$display("Test case 4:");
a=4'b1001;
b=4'b0111;
#10
$finish;
end

endmodule
