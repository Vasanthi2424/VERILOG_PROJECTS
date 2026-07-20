`timescale 1ns/1ps
module tb_mux4to1;
    reg  [3:0] in;
    reg  [1:0] sel;
    wire y;

    mux4to1 dut (.in(in), .sel(sel), .y(y));

    initial begin
        $monitor("t=%0t sel=%b in=%b -> y=%b", $time, sel, in, y);
        in = 4'b1010;   // I3=1, I2=0, I1=1, I0=0
        sel = 2'b00; #10;   // expect y = I0 = 0
        sel = 2'b01; #10;   // expect y = I1 = 1
        sel = 2'b10; #10;   // expect y = I2 = 0
        sel = 2'b11; #10;   // expect y = I3 = 1
        $finish;
    end
endmodule


