module RCA_tb;
reg  [3:0] i_A;
reg [3:0] i_B;
reg i_cin;
wire [3:0] sum;
wire  carry;
 RCA rca1(.i_A(i_A),
 .i_B(i_B),
 .i_cin(i_cin), .sum(sum), .carry(carry));
 initial begin
 i_A=4'b1010;
 i_B=4'b0101;
 i_cin=1'b0;
 #10;
 i_A=4'b1110;
 i_B=4'b0101;
 i_cin=1'b0;
 #10;
 i_A=4'b1011;
 i_B=4'b0101;
 i_cin=1'b0;
 #10;
 $finish;
 end
endmodule
