module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
	wire w1;
    add16_2 ins0(a[15:0], b[15:0], 0, sum[15:0], w1);
    add16_2 ins1(a[31:16], b[31:16], w1, sum[31:16], 0);
endmodule

module add16_2 ( input [15:0]a, input [15:0]b, input cin, output [15:0]sum, output cout );
    wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14;
    add1 ins0(a[0], b[0], cin, sum[0], w0);
    add1 ins1(a[1], b[1], w0, sum[1], w1);
    add1 ins2(a[2], b[2], w1, sum[2], w2);
    add1 ins3(a[3], b[3], w2, sum[3], w3);
    add1 ins4(a[4], b[4], w3, sum[4], w4);
    add1 ins5(a[5], b[5], w4, sum[5], w5);
    add1 ins6(a[6], b[6], w5, sum[6], w6);
    add1 ins7(a[7], b[7], w6, sum[7], w7);
    add1 ins8(a[8], b[8], w7, sum[8], w8);
    add1 ins9(a[9], b[9], w8, sum[9], w9);
    add1 ins10(a[10], b[10], w9, sum[10], w10);
    add1 ins11(a[11], b[11], w10, sum[11], w11);
    add1 ins12(a[12], b[12], w11, sum[12], w12);
    add1 ins13(a[13], b[13], w12, sum[13], w13);
    add1 ins14(a[14], b[14], w13, sum[14], w14);
    add1 ins15(a[15], b[15], w14, sum[15], cout);
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign sum = a ^ b ^ cin;
	assign cout = a&b | a&cin | b&cin;  

endmodule