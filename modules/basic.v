module mod_a ( input in1, input in2, output out );
    // Module body
endmodule

module top_module ( input a, input b, output out );
    mod_a instance1(a, b, out);
    //  mod_a instance1(.out(out),.in1(a), .in2(b)); // swich param position
endmodule
