
module divider_12 (

    input wire        clk,             
    input wire        rst_n,           
    input wire [10:0]  max_preset,      // 最大计数值 (用于控制分频系数)


    output reg        clk_div          // 分频后的时钟输出
);

   
    reg [7:0] counter; // 8位计数器

  
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            
            counter <= 8'b0;
            clk_div <= 1'b0;
        end else if (counter == max_preset) begin
            
            counter <= 8'b0;      
            clk_div <= ~clk_div;  
        end else begin
            
            counter <= counter + 1;
        end
    end

endmodule
