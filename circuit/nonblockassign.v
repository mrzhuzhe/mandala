module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
	reg [7:0] in_d;
    always @(posedge clk) begin
        in_d <= in;         // notice this part cannot use = must use <=
        //pedge <= !in_d & in; // 逻辑取反，将变量作为一个值去做处理，非0为1
        pedge <= ~in_d & in; // 按位取反，将变量的各个位依次取反
    end
endmodule
