module top_module (
    input clk,
    input x,
    output z
); 
    wire q1, q2, q3;
    initial begin 
        q1 = 0;
        q2 = 0;
        q3 = 0;
    end
    always @(posedge clk) begin 
        q1 = x ^ q1;
        q2 = x & ~q2;
        q3 = x | ~q3;
        //  z = ~(q1 | q2 | q3); // notice this is wrong  
    end
    assign z = ~(q1 | q2 | q3);

endmodule