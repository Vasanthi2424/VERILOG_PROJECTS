`timescale 1ns/1ps

module not_gate_tb;

reg a;
wire y;

// Instantiate the NOT gate
not_gate_df uut (
    .a(a),
    .y(y)
);

initial
begin
    $monitor("Time=%0t A=%b Y=%b", $time, a, y);

    a = 0;
    #10;

    a = 1;
    #10;

    $finish;
end

endmodule
