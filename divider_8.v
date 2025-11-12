
module divider_8 (
 
    input           clk,        
    input           rst_n,      
    input [3:0]     sel_8,      // 4位分频系数 (必须是偶数)

  
    output reg      clk_div     // 分频后的时钟信号
);

  
    reg [3:0] period_reg;       
    reg [2:0] counter;          

  
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            
            period_reg <= 4'd2;
        end else if (sel_8 == 4'b0) begin
           
            period_reg <= 4'd2;
        end else begin
            
            period_reg <= sel_8;
        end
    end

  
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 3'b0;
            clk_div <= 1'b0;
        end else begin
            
            
            if (counter == (period_reg >> 1) - 1) begin
                counter <= 3'b0;         
                clk_div <= ~clk_div;     
            end else begin
                counter <= counter + 1;  
            end
        end
    end

endmodule
