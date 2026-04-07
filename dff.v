module dff(
    input data,
    input clk, reset,
    output reg Q,
    output notQ
);
    
    initial begin
        Q <= 0;
    end
        
    always @(posedge clk) begin 
        if (reset)
            Q <= 1'b0;
        else
            Q <= data;
    end
    assign notQ = ~Q;


endmodule
