`timescale 1ns/1ps
module mux8to1_tb;
reg [7:0] i;
reg [2:0] s;
wire y;
mux8to1 uut (
    .i(i),
    .s(s),
    .y(y));
initial
begin
    $monitor("Time=%0t Inputs=%b Select=%b Output=%b",
              $time, i, s, y);
    i = 8'b10110010;
    s = 3'b000; #10;
    s = 3'b001; #10;
    s = 3'b010; #10;
    s = 3'b011; #10;
    s = 3'b100; #10;
    s = 3'b101; #10;
    s = 3'b110; #10;
    s = 3'b111; #10;
    $finish;
end
endmodule
