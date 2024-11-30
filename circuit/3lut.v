module top_module (
    input clk,
    input enable,
    input S,
    input A, B, C,
    output Z ); 
	
    reg [7:0] sr;
    reg [3:0] sw;
    assign sw = { A, B, C };
	// Create a shift register named sr. It shifts in "in".
	always @(posedge clk) begin
        if (enable)
            sr <= {sr[6:0], S};
	end
	
    always @(clk) begin
        case (sw)
            3'b000: Z <= sr[0];
            3'b001: Z <= sr[1];
            3'b010: Z <= sr[2];
            3'b011: Z <= sr[3];
            3'b100: Z <= sr[4];
            3'b101: Z <= sr[5];
            3'b110: Z <= sr[6];
            3'b111: Z <= sr[7];
        endcase
	end
    
endmodule