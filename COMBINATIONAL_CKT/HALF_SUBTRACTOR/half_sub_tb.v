`timescale 1ns / 1ps
module half_sub_tb;
reg a,b;
wire diff,borrow;
half_sub uut(.a(a), .b(b), .diff(diff), .borrow(borrow));
initial begin
$monitor("Time= %0t ns|input:A=%b, B=%b,| output: Diff=%b, borrow=%b", $time,a,b,diff,borrow);
a=0;b=0;#10
a=0;b=1;#10
a=1;b=0;#10
a=1;b=1;#10
$finish;
end
endmodule
