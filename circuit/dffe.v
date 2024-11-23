module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);
	always @(posedge clk ) begin 
       
        if (byteena[1] & resetn) 
            q[15:8] = d[15:8];
        else if  (~resetn)
            q[15:8] = 0;
        else
            q[15:8] = q[15:8];
        if (byteena[0] & resetn) 
            q[7:0] = d[7:0];
        else if  (~resetn)
            q[7:0] = 0;
        else
            q[7:0] = q[7:0];
    end
endmodule