module top_module(
    input clk,
    input [7:0] in,
    input reset,    // Synchronous reset
    output [23:0] out_bytes,
    output done); //

    // Fill in state name declarations
	parameter A = 0, B =1, C = 2, D = 3;
    reg [1:0] present_state, next_state;
	
    reg [23:0] buffer;
    
    always @(posedge clk) begin
        if (reset) begin  
            present_state <= A;
            done = 0;
            // Fill in reset logic
        end else begin
            case (present_state)
                A: next_state = in[3] ? B : A;
                B: next_state = C;
                C: next_state = D;
                D: next_state = in[3] ? B : A;
            endcase
			
            case (present_state)
                A: out_bytes[23:16] <= in;
                B: out_bytes[15:8] <= in;
                C: out_bytes[7:0] <= in;
                D: out_bytes[23:16] <= in;
            endcase
            
            // State flip-flops
            present_state = next_state;   
                 
            case (present_state)
                A: done = 0;
                B: done = 0;
               	C: done = 0;
                D: done = 1;
            endcase
            
            // New: Datapath to store incoming bytes.
           
        end
    end

    
endmodule
