module tff(
    input T, clk, reset,
    output Q, notQ
);
    
    assign D = ((Q & ~T) | (notQ & T));
    
    dff dff_inst(
        .data(D),
        .clk(clk),
        .reset(reset),
        .Q(Q),
        .notQ(notQ)
    );
    
    


endmodule
