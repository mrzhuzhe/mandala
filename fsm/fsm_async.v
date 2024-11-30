module top_module(
    input clk,
    input in,
    input reset,
    output out); //
	
    parameter A=0, B=1, C=2, D=3;
    reg [1:0] state;
    reg [1:0] next_state;
    
    always @(posedge clk) begin   
        if (reset) begin
            state = A;
            out = A;
        end
        else begin
            case (state)
                A: next_state = in ? B : A;
                B: next_state = in ? B : C;
                C: next_state = in ? D : A;
                D: next_state = in ? B : C;
            endcase
			
            state = next_state;
            
            case (state)
                A: out = 0;
                B: out = 0;
                C: out = 0;
                D: out = 1;
            endcase
        end
    end
	
endmodule
