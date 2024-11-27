module top_module (
    input clk,
    input reset,
    input enable,
    output [3:0] Q,
    output c_enable,
    output c_load,
    output [3:0] c_d
); //
    //reg [3:0] Q_d;
    //assign c_enable = enable;
    //assign c_load = reset|(Q==12&enable);
    //assign c_d = (c_load)? 1:0;
    always @(posedge clk) begin
        if (reset)
            Q <= 1;
        else if (enable) begin
            if (Q == 4'b1100)
            	Q <= 1;
            else 
            	Q <= Q +1;
        end        
    end
    
    always @(clk) begin
       c_enable = enable;
       c_load = reset|(Q== 4'b1100&enable);
       c_d = (c_load)? 1:0; 
    end
    
    //count4 the_counter (clk, c_enable, c_load, c_d, Q_d);

endmodule
