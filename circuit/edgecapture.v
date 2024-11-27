module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);	
    reg [31:0] temp;
    integer i;
    always @(posedge clk) begin
        temp <= in;
        if(reset)begin
            out<=32'b0;
        end
        else begin
            if(temp & ~in)begin
                out <= out | (temp & ~in);
            end
        end
    end
        
	
endmodule