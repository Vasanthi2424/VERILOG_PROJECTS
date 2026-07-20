module demux1to4 (
    input        din,
    input  [1:0] sel,
    output reg [3:0] y     
// y[0]=Y0 ... y[3]=Y3
);
    always @(*) begin
        y = 4'b0000;        
     // default: all outputs low
        case (sel)
            2'b00: y[0] = din;
            2'b01: y[1] = din;
            2'b10: y[2] = din;
            2'b11: y[3] = din;
        endcase
    end
endmodule

