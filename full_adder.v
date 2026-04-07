// module for full adder, utilziing a carry in bit

module full_adder(

    input A,B,Cin,
    output Y,Cout
    
);
    // basic full adder logic
    wire sum;
    assign sum = (A ^ B);
    assign Y = (Cin ^ sum);
    assign Cout = ((A & B) | (Cin & sum));

endmodule