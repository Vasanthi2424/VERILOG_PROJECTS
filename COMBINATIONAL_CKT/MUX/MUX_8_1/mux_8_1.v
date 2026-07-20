module mux8to1 (
    input  [7:0] i,      // 8 input lines
    input  [2:0] s,      // 3-bit select line
    output y
);
assign y = (s == 3'b000) ? i[0] :
           (s == 3'b001) ? i[1] :
           (s == 3'b010) ? i[2] :
           (s == 3'b011) ? i[3] :
           (s == 3'b100) ? i[4] :
           (s == 3'b101) ? i[5] :
           (s == 3'b110) ? i[6] :
                           i[7];
endmodule
