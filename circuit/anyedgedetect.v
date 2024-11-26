module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
	reg [7:0] in_d;
    always @(posedge clk) begin
        in_d <= in;
        pedge <= in_d ^ in; 
    end
endmodule
