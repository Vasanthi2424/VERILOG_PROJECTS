`timescale 1ns/1ps
module tb_demux1to4;
    reg        din;
    reg  [1:0] sel;
    wire [3:0] y;

    demux1to4 dut (.din(din), .sel(sel), .y(y));

    initial begin
        $monitor("t=%0t sel=%b din=%b -> y=%b", $time, sel, din, y);
        din = 1;
        sel = 2'b00; #10;   // expect y=0001
        sel = 2'b01; #10;   // expect y=0010
        sel = 2'b10; #10;   // expect y=0100
        sel = 2'b11; #10;   // expect y=1000
        $finish;
    end
endmodule

