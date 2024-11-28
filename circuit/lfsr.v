//  https://zh.wikipedia.org/zh-cn/%E7%BA%BF%E6%80%A7%E5%8F%8D%E9%A6%88%E7%A7%BB%E4%BD%8D%E5%AF%84%E5%AD%98%E5%99%A8
module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 5'h1
    output reg [4:0]  q
); 

always @(posedge clk) begin
    if(reset==1'b1)begin
        q <= 5'h1;
    end
    else begin
        q <= {0^q[0],q[4],q[3]^q[0],q[2:1]};
    end
end

endmodule