
module freq_controller (
   
    input  wire        clk,         
    input  wire        rst_n,       
    input  wire        switch_clk,  
    input  wire [1:0]  sel,         // 00->表0, 01->表1, 10->表2

    // 输出到 divider_12 的控制信号 )
    output reg  [10:0]  max_preset_out,
    // 输出到 divider_8 的控制信号 
    output reg  [3:0]  preset_8_out,

  
    output reg         led_table0,  // 点亮表示选择了查找表 0
    output reg         led_table1,  // 点亮表示选择了查找表 1
    output reg         led_table2   // 点亮表示选择了查找表 2
);


    reg [6:0]  coeff_index;   


    always @(posedge switch_clk or negedge rst_n) begin
        if (!rst_n) begin
            coeff_index <= 6'b0;
        end else begin
            coeff_index <= coeff_index + 1;
        end
    end


      always @(*) begin
       
        max_preset_out = 11'd239; 
        preset_8_out   = 4'd1;
        led_table0 = 1'b0;
        led_table1 = 1'b0;
        led_table2 = 1'b0;

        
        case (sel)
            // --- 查找表 1 ---
						//欢乐颂
            2'b00: begin
                case (coeff_index)
                   
		
			//1
7'd0:  begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
 7'd1: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd2:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd3:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd4:  begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
 7'd5: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd6:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd7:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd8:  begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
 7'd9:  begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
// 7'd10: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd11: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd12: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
 7'd13: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd14: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd15: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
			//2
7'd16: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
7'd17:  begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd18: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd19: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd20: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
7'd21: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
// 7'd22: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd23: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd24: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
7'd25: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd26: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd27: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd28: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
7'd29: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
// 7'd30: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd31: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
			//3
7'd32: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
7'd33: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
// 7'd34: begin max_preset_out = 11'd142; preset_8_out = 4'd15; end
// 7'd35: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd36: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
7'd37: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
// 7'd38: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd39: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd40: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
7'd41: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
// 7'd42: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd43: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd44: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
7'd45: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd46: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd47: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
		//4
7'd48: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
7'd49: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd50: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd51: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd52: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
7'd54:  begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
// 7'd54: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd55: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd56: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
7'd57: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
// 7'd58: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd59: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

//7'd60: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd61: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd62: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd63: begin max_preset_out = 11'd200; preset_8_out = 4'd7; end

		//5
7'd64: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
7'd65:begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd66: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd67: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd68: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
7'd69: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd70: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd71: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd72: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
7'd73: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
// 7'd74: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd75: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd76: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
7'd77: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd78: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd79: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
		//6
7'd80: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
7'd81: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd82: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd83: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd84: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
7'd85: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
// 7'd86: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd87: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd88: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
7'd89: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd90: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd91: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd92: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
7'd93:begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
// 7'd94: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd95: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
		//7
7'd96: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
7'd97: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
// 7'd98: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd99: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
	
7'd100: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
7'd101:  begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
// 7'd102: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd103: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd104: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
7'd105: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
// 7'd106: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd107: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd108: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
7'd109: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd110: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd111: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
	//8
7'd112: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
7'd113:  begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
// 7'd114: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd115: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd116: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
7'd117: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
// 7'd118: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd119: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd120: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
7'd121: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
// 7'd122: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd123: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

                endcase
                led_table0 = 1'b1;
            end

            // --- 查找表 2 ---
						//虫儿飞
            2'b01: begin
                case (coeff_index)
			//1
7'd0:  begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
 7'd1: begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
// 7'd2:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd3:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd4:  begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
 7'd5: begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
// 7'd6:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd7:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd8:  begin max_preset_out = 11'd134; preset_8_out = 4'd7; end
 7'd9:  begin max_preset_out = 11'd134; preset_8_out = 4'd7; end
// 7'd10: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd11: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd12: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
7'd13: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
// 7'd14: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd15: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
			//2
7'd16: begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
7'd17:  begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
// 7'd18: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd19: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd20: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
7'd21: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd22: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd23: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd24: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
7'd25: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd26: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd27: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

//7'd28: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
//7'd29: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
// 7'd30: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd31: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
			//3
7'd32: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
7'd33: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
// 7'd34: begin max_preset_out = 11'd142; preset_8_out = 4'd15; end
// 7'd35: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd36: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
7'd37: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
// 7'd38: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd39: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd40: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
7'd41: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd42: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd43: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd44: begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
7'd45: begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
// 7'd46: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd47: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
		//4
7'd48: begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
7'd49: begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
// 7'd50: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd51: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd52: begin max_preset_out = 11'd189; preset_8_out = 4'd15; end
7'd54:  begin max_preset_out = 11'd189; preset_8_out = 4'd15; end
// 7'd54: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd55: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd56: begin max_preset_out = 11'd189; preset_8_out = 4'd15; end
7'd57: begin max_preset_out = 11'd189; preset_8_out = 4'd15; end
// 7'd58: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd59: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

//7'd60: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd61: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd62: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd63: begin max_preset_out = 11'd200; preset_8_out = 4'd7; end

		//5
7'd64: begin max_preset_out = 11'd212; preset_8_out = 4'd15; end
7'd65:begin max_preset_out = 11'd212; preset_8_out = 4'd15; end
// 7'd66: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd67: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd68: begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
7'd69: begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
// 7'd70: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd71: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd72: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
7'd73: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd74: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd75: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

//7'd76: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
//7'd77: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd78: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd79: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
		//6
7'd80: begin max_preset_out = 11'd212; preset_8_out = 4'd15; end
7'd81: begin max_preset_out = 11'd212; preset_8_out = 4'd15; end
// 7'd82: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd83: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd84: begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
7'd85: begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
// 7'd86: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd87: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd88: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
7'd89: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd90: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd91: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

//7'd92: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
//7'd93:begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
// 7'd94: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd95: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
		//7
7'd96: begin max_preset_out = 11'd212; preset_8_out = 4'd15; end
7'd97: begin max_preset_out = 11'd212; preset_8_out = 4'd15; end
// 7'd98: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd99: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
	
7'd100: begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
7'd101:  begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
// 7'd102: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd103: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd104: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
7'd105: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd106: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd107: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd108: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
7'd109: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
// 7'd110: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd111: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
	//8
7'd112: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
7'd113:  begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
// 7'd114: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd115: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

//7'd116: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
//7'd117: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
// 7'd118: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd119: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

//7'd120: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
//7'd121: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
// 7'd122: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd123: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end


                endcase
                led_table1 = 1'b1;
            end

            // --- 查找表 3 ---
						//一闪一闪亮晶晶
            2'b10: begin
                case (coeff_index)
								
7'd0:  begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
// 7'd1:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd2:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd3:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd4:  begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
// 7'd5:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd6:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd7:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd8:  begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd9:  begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd10: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd11: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd12: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd13: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd14: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd15: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
			//
7'd16: begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
// 7'd17: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd18: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd19: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd20: begin max_preset_out = 11'd142; preset_8_out = 4'd7; end
// 7'd21: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd22: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd23: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd24: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd25: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd26: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd27: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
			//
7'd28: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
// 7'd29: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd30: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd31: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd32: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
// 7'd33: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd34: begin max_preset_out = 11'd142; preset_8_out = 4'd15; end
// 7'd35: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd36: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd37: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd38: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd39: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd40: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd41: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd42: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd43: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
		//
7'd44: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
// 7'd45: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd46: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd47: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd48: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
// 7'd49: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd50: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd51: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end


7'd52: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
// 7'd54: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd54: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd55: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

	//
7'd56: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd57: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd58: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd59: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd60: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd61: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd62: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd63: begin max_preset_out = 11'd200; preset_8_out = 4'd7; end


7'd64: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
// 7'd65: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd66: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd67: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd68: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
// 7'd69: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd70: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd71: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
//
7'd72: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd73: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd74: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd75: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd76: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd77: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd78: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd79: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd80: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
// 7'd81: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd82: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd83: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
//
7'd84: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd85: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd86: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd87: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd88: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd89: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd90: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd91: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd92: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
// 7'd93: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd94: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd95: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd96: begin max_preset_out = 11'd182; preset_8_out = 4'd7; end
// 7'd97: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd98: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd99: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
	//
7'd100: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd101: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd102: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd103: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd104: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd105: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd106: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd107: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd108: begin max_preset_out = 11'd212; preset_8_out = 4'd7; end
// 7'd109: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd110: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd111: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
	//disanhang
7'd112: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
// 7'd113: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd114: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd115: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd116: begin max_preset_out = 11'd239; preset_8_out = 4'd7; end
// 7'd117: begin max_preset_out = 11'd189; preset_8_out = 4'd7; end
// 7'd118: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd119: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

7'd120: begin max_preset_out = 11'd159; preset_8_out = 4'd7; end
// 7'd121: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd122: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end
// 7'd123: begin max_preset_out = 11'd2047; preset_8_out = 4'd15; end

            endcase
                led_table2 = 1'b1;
            end

            // 默认情况
            default: begin
                max_preset_out = 11'd239; 
                preset_8_out   = 4'd1;
                led_table0 = 1'b1;
            end
        endcase
    end

endmodule
