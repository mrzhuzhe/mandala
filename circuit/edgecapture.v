// module top_module (
//     input clk,
//     input reset,
//     input [31:0] in,
//     output [31:0] out
// );
//     reg [31:0] in_d;
//     reg [31:0] reset_d =2'h00;
//     always @(posedge clk) begin
//         in_d <= in;
//         if (reset) begin
//             out <= 2'h00;
//         end
//         else begin
//             if (in_d & ~in) out <= in_d & ~in;
//         end 
//     end
// endmodule


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
            for(i=0;i<32;i=i+1)begin
                if(temp[i] & ~in[i])begin
                    out[i]<= temp[i] & ~in[i];
                end
            end
        end
    end
        
	
endmodule