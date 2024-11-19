`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo 

    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  

    );
    assign out_hi = in[15:8];
    assign out_lo = in[7:0];

    assign outv = vec;
    assign o2 = vec[2];
    assign o1 = vec[1];
    assign o0 = vec[0];

endmodule
