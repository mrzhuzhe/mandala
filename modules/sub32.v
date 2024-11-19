module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire w1;
    wire [31:0] wb;
    assign wb[31:0] = b[31:0] ^ {32{sub}};
    add16 ins0(a[15:0], wb[15:0], sub, sum[15:0], w1);
    add16 ins1(a[31:16], wb[31:16], w1, sum[31:16], 0);

endmodule
