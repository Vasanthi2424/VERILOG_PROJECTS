`timescale 1ns/1ps

module nor_gate_tb;

reg a, b;
wire y;

// Instantiate NOR gate
nor_gate_df uut (
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
