module top_module(
    input clk,
    input reset,
    input ena,
    output pm,
    output [7:0] hh,
    output [7:0] mm,
    output [7:0] ss); 
	
    counterSS ins1(clk, ena, reset, pm, hh, mm, ss);
    counterMM ins2(clk, ss == 8'h59, reset, mm);
    counterHH ins3(clk, (mm == 8'h59) & (ss == 8'h59), reset, hh);
    
endmodule

module counterSS (
    input clk,
    input slowena,
    input reset,
    output pm,
    input [7:0] hh,
    input [7:0] mm,
    output [7:0] q);
	wire w_e;
    wire [7:0] out; 
    always @(posedge clk) begin
        if (reset) begin
            q <= 0;
            pm <= 0;
        end
        else if (slowena) begin
            if (q ==  8'h59) begin
            	q <= 0;
                if ( (hh == 8'h11) & (mm ==  8'h59))
                    pm <= ~pm;
            end
            else begin
            	casez (q)
                    8'hz9: q <= q + 7;
                    default: q <= q + 1;
                endcase; 
            end
        end
    end
endmodule

module counterMM (
    input clk,
    input slowena,
    input reset,
    output [7:0] q);
    always @(posedge clk) begin
        if (reset)
            q <= 0;
        else if (slowena) begin
            casez (q)
                8'h59: q<=0;
                8'hz9: q <= q + 7;
                default: q <= q + 1;
            endcase;   
        end
    end
endmodule

module counterHH (
    input clk,
    input slowena,
    input reset,
    output [7:0] q);
    always @(posedge clk) begin
        if (reset) begin
            q <=  8'h12;
        end
        else if (slowena) begin           
            casez (q)
                8'h12: q<=1;
                8'hz9: q <= q + 7;
                default: q <= q + 1;
            endcase;            
        end
    end
endmodule
