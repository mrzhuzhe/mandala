module top_module( output one , output zero, input a, input b, output c, output d );

// Insert your code here
    assign one = 1'b1;
    assign zero = 1'b0;
    //  nor gate
    assign c = ~(a&&b);
    //  xnor gate
    assign d = ~(a^b);
endmodule
