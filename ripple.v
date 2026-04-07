module ripple(
    input clk, reset,
    output [2:0] out
    );
    
    tff tff_a (
        .clk(clk),
        .T(1'b1),
        .Q(out[0]),
        .reset(reset)
    );
    
    tff tff_b (
        .clk(out[0]),
        .T(1'b1),
        .Q(out[1]),
        .reset(reset)
    );
    
    tff tff_c (
        .clk(out[1]),
        .T(1'b1),
        .Q(out[2]),
        .reset(reset)
    );
    
endmodule
