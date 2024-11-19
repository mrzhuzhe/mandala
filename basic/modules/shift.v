module my_dff ( input clk, input d, output q );
endmodule

module top_module ( input clk, input d, output q );
    wire w1, w2;
    my_dff ins1(clk, d, w1);
    my_dff ins2(clk, w1, w2);
    my_dff ins3(clk, w2, q);
endmodule