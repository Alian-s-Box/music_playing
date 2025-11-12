
module simple_button_counter (
    input  wire       clk,          
    input  wire       rst_n,        
    input  wire       key_in,       

    output reg [1:0]  count_out     
);

    
    parameter SHIFT_DEPTH = 16;

    reg [SHIFT_DEPTH-1:0] key_shift_reg;
    reg key_stable_d1;
    wire key_stable_low;
    wire key_press_pulse;


    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            key_shift_reg <= {SHIFT_DEPTH{1'b1}}; // ¸´Î»ÎªÈ«1
        end else begin
            key_shift_reg <= {key_shift_reg[SHIFT_DEPTH-2:0], key_in};
        end
    end

    assign key_stable_low = (key_shift_reg == {SHIFT_DEPTH{1'b0}});


    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            key_stable_d1 <= 1'b0;
        end else begin
            key_stable_d1 <= key_stable_low;
        end
    end

    assign key_press_pulse = key_stable_low & ~key_stable_d1;

   
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count_out <= 2'b00;
        end else if (key_press_pulse) begin
            if (count_out == 2'b10) begin 
                count_out <= 2'b00;       
            end else begin
                count_out <= count_out + 1'b1; 
            end
        end
    end

endmodule
