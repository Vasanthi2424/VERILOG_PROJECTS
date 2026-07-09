`timescale 1ns/1ps

module xor_gate_tb;

reg a, b;
wire y;

// Instantiate XOR gate
xor_gate_gl uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $monitor("Time=%0t A=%b B=%b Y=%b", $time, a, b, y);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    $finish;
end

endmodule
