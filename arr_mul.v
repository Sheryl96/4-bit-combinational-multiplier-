`include "full_adder.v"
module arr_mul(
//inputs
input[3:0] a,b,
//outputs
output[7:0] p);

//wires
wire[39:0] r;


//andgate instantiations
and a1(r[0],a[0],b[0]);
and a2(r[1],a[1],b[0]);
and a3(r[2],a[2],b[0]);
and a4(r[3],a[3],b[0]);

and a5(r[4],a[0],b[1]);
and a6(r[5],a[1],b[1]);
and a7(r[6],a[2],b[1]);
and a8(r[7],a[3],b[1]);

and a9(r[8],a[0],b[2]);
and a10(r[9],a[1],b[2]);
and a11(r[10],a[2],b[2]);
and a12(r[11],a[3],b[2]);

and a13(r[12],a[0],b[3]);
and a14(r[13],a[1],b[3]);
and a15(r[14],a[2],b[3]);
and a16(r[15],a[3],b[3]);


assign p[0]=r[0];
//full adders instatiations
full_adder a17(r[1],r[4],1'b0,r[16],r[17]);

full_adder a18(r[2],r[5],1'b0,r[18],r[19]);
full_adder a19(r[18],r[8],r[17],r[20],r[21]);

full_adder a20(r[3],r[6],1'b0,r[22],r[23]);
full_adder a21(r[22],r[9],r[19],r[24],r[25]);
full_adder a22(r[24],r[12],r[21],r[26],r[27]);

full_adder a23(r[7],r[10],r[23],r[28],r[29]);
full_adder a24(r[28],r[13],r[25],r[30],r[31]);
full_adder a25(r[30],1'b0,r[27],r[32],r[33]);

full_adder a26(r[11],r[14],r[29],r[34],r[35]);
full_adder a27(r[34],r[33],r[31],r[36],r[37]);
  
full_adder a28(r[15],r[37],r[35],r[38],r[39]);

//output assignments
assign p[1]=r[16];
assign p[2]=r[20];
assign p[3]=r[26];
assign p[4]=r[32];
assign p[5]=r[36];
assign p[6]=r[38];
assign p[7]=r[39];

endmodule




