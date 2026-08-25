//HALF-ADDER:
module ha(
input i_A,
input i_B,
output o_s,
output o_c
);
assign o_s=i_A^i_B;
assign o_c=i_A&i_B;
endmodule


//FULL-ADDER:
module fa(
input i_A,
input i_B,
input i_cin,
output o_s,
output o_c
);
wire s1,c1,c2;
ha ha0( .i_A(i_A), 
         .i_B(i_B),
         .o_s(s1),
         .o_c(c1)
         );
ha ha1(.i_A(s1), 
         .i_B(i_cin),
         .o_s(o_s),
         .o_c(c2)
         );  
assign  o_c=c1|c2;  
endmodule
//4-BIT RCA-ADDER:
module RCA(
input [3:0] i_A,
input [3:0] i_B,
input i_cin,
output [3:0] sum,
output  carry
);
wire c1,c2,c3;
fa fa0(.i_A(i_A[0]),
.i_B(i_B[0]),
.i_cin(i_cin),
.o_s(sum[0]),
.o_c(c1)
);
fa fa1(.i_A(i_A[1]),
.i_B(i_B[1]),
.i_cin(c1),
.o_s(sum[1]),
.o_c(c2)
);
fa fa2(.i_A(i_A[2]),
.i_B(i_B[2]),
.i_cin(c2),
.o_s(sum[2]),
.o_c(c3)
);
fa fa3(.i_A(i_A[3]),
.i_B(i_B[3]),
.i_cin(c3),
.o_s(sum[3]),
.o_c(carry));
endmodule
