
module divider_clk (

    input           clk_in,     
    input           rst_n,      


    output          clk_div_4,      
    output          clk_div_250k    
);

  
    reg [1:0] cnt_4; 

    always @(posedge clk_in or negedge rst_n) begin
        if (!rst_n) begin
            cnt_4 <= 2'b00;
        end else begin
            cnt_4 <= cnt_4 + 1'b1;
        end
    end


    assign clk_div_4 = cnt_4[1];



  
    reg [16:0] cnt_250k; 
    reg clk_div_250k_reg; 

    always @(posedge clk_in or negedge rst_n) begin
        if (!rst_n) begin
            cnt_250k <= 17'b0; 
            clk_div_250k_reg <= 1'b0; 
        end else if (cnt_250k == 17'd124_999) begin 
            cnt_250k <= 17'b0; 
            clk_div_250k_reg <= ~clk_div_250k_reg; 
        end else begin
            cnt_250k <= cnt_250k + 1'b1; 
        end
    end

 
    assign clk_div_250k = clk_div_250k_reg; 

endmodule
