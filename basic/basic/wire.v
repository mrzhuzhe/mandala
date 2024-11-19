// https://hdlbits.01xz.net/wiki/Wire_decl
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
	wire a1, a2, b1;
    assign a1 = a && b;
    assign a2 = c && d;
    assign b1 = a1 || a2;
    assign out = b1;
    assign out_n = ~b1;
endmodule
