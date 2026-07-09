`timescale 1ns/1ps

module buffer_gate_tb;

reg a;
wire y;

// Instantiate BUFFER gate
buf_gate_gl uut (
    .a(a),
    .y(y)
);

initial begin
    $monitor("Time=%0t A=%b Y=%b", $time, a, y);

    a=0; #10;
    a=1; #10;

    $finish;
end

endmodule
