
module top (

    input           clk,            
    input           rst_n,          
    input           key_in,         


    output          final_clk_out,  


    output          led_mode0,      // 模式 0 指示灯 (对应查找表 0)
    output          led_mode1,      // 模式 1 指示灯 (对应查找表 1)
    output          led_mode2       // 模式 2 指示灯 (对应查找表 2)
);

   
    wire [1:0]  btn_count;          
    wire [7:0]  max_preset;         
    wire [3:0]  preset_8;          
    wire        clk_4;             
    wire        clk_from_div12;     
    wire        switch_clk;         


    simple_button_counter u_button_counter (
        .clk          (clk),
        .rst_n        (rst_n),
        .key_in       (key_in),
        .count_out    (btn_count)     
    );


    divider_clk u_clk_divider (
        .clk_in        (clk),
        .rst_n         (rst_n),
        .clk_div_4     (clk_4),         
        .clk_div_250k  (switch_clk)     
    );

 
    freq_controller u_freq_ctrl (
        .clk             (clk),
        .rst_n           (rst_n),
        .switch_clk      (switch_clk),   
        .sel             (btn_count),    
        .max_preset_out  (max_preset),   
        .preset_8_out    (preset_8),     
        .led_table0      (led_mode0),    
        .led_table1      (led_mode1),    
        .led_table2      (led_mode2)     
    );


    divider_12 u_divider_12 (
        .clk          (clk_4),           
        .rst_n        (rst_n),
        .max_preset   (max_preset),      
        .clk_div      (clk_from_div12)   
    );


    divider_8 u_divider_8 (
        .clk          (clk_from_div12),  
        .rst_n        (rst_n),
        .sel_8        (preset_8),        
        .clk_div      (final_clk_out)    
    );

endmodule
