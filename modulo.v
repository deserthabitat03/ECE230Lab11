module modulo(
    input clk, reset,
    output [3:0] out
    );
    
    wire [2:0] data;
    wire [1:0] carry;
    
    full_adder full_adder_a(
        .A(out[0]),
        .B(1'b1),
        .Cin(1'b0),
        .Y(data[0]),
        .Cout(carry[0])
    );
    
    dff dff_a(
        .data(data[0]),
        .clk(clk),
        .reset(comb_reset),
        .Q(out[0])
    );
    
    
    full_adder full_adder_b(
        .A(out[1]),
        .B(1'b0),
        .Cin(carry[0]),
        .Y(data[1]),
        .Cout(carry[1])
    );
    
    dff dff_b(
        .data(data[1]),
        .clk(clk),
        .reset(comb_reset),
        .Q(out[1])
    );
    
    
    full_adder full_adder_c(
        .A(out[2]),
        .B(1'b0),
        .Cin(carry[1]),
        .Y(data[2]),
        .Cout(carry[2])
    );
    
    dff dff_c(
        .data(data[2]),
        .clk(clk),
        .reset(comb_reset),
        .Q(out[2])
    );
    
    wire sft_reset;
    wire comb_reset;
    
    assign sft_reset = (~data[0] & data[1] & data[2]);
    assign comb_reset = (sft_reset | reset);

    
    tff tff_inst(
        .T(sft_reset),
        .clk(clk),
        .reset(reset),
        .Q(out[3])
    );
    
    
endmodule
