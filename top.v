module top(
    input btnU, btnC,
    output [6:0] led
    );
    
    ripple ripple_inst(
        .reset(btnU),
        .clk(btnC),
        .out(led[2:0])
    );
    
    modulo modulo_inst(
        .reset(btnU),
        .clk(btnC),
        .out(led[6:3])
    );
    
endmodule
