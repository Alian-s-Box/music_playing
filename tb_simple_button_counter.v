`timescale 1ns / 1ps

//-----------------------------------------------------------------------------
// Module:      simple_button_counter_tb
// Description: simple_button_counter 模块的激励测试文件
//              测试按键消抖和模3计数功能。
//-----------------------------------------------------------------------------
module tb_simple_button_counter;

    //=========================================================================
    // 1. 定义测试信号
    //=========================================================================
    reg         tb_clk;
    reg         tb_rst_n;
    reg         tb_key_in;

    wire [1:0]  tb_count_out;

    //=========================================================================
    // 2. 实例化待测模块 (DUT)
    //=========================================================================
    simple_button_counter u_dut (
        .clk          (tb_clk),
        .rst_n        (tb_rst_n),
        .key_in       (tb_key_in),
        .count_out    (tb_count_out)
    );

    //=========================================================================
    // 3. 生成时钟信号 (100MHz, 周期=10ns)
    //=========================================================================
    initial begin
        tb_clk = 0;
        forever #5 tb_clk = ~tb_clk;
    end

    //=========================================================================
    // 4. 辅助任务：模拟按键动作
    //=========================================================================
    // 模拟一次有效的按键按下 (按下并保持)
    task press_key;
        input integer hold_cycles; // 按键保持的时钟周期数
        begin
            $display("[%0t] --- Simulating key press (hold for %d cycles) ---", $time, hold_cycles);
            tb_key_in = 1'b0; // 按键按下 (低电平)
            #(hold_cycles * 10); // 保持指定周期
            tb_key_in = 1'b1; // 按键释放 (高电平)
            #100; // 等待一段时间让模块处理
        end
    endtask

    // 模拟按键抖动
    task simulate_bounce;
        input integer bounce_cycles; // 抖动持续的总周期数
        integer i;
        begin
            $display("[%0t] --- Simulating key bounce for %d ns ---", $time, bounce_cycles * 10);
            for (i = 0; i < bounce_cycles; i = i + 1) begin
                #2 tb_key_in = ~tb_key_in; // 每2ns翻转一次，模拟高频抖动
            end
            tb_key_in = 1'b1; // 确保抖动结束后按键是释放状态
            #50;
        end
    endtask

    //=========================================================================
    // 5. 主测试逻辑
    //=========================================================================
    initial begin
        // --- 初始化 ---
        tb_rst_n = 1'b0;
        tb_key_in = 1'b1; // 按键默认为高电平（未按下）
        $display("=================================================================");
        $display("[%0t] Testbench Started. Applying reset...", $time);
        #100;
        tb_rst_n = 1'b1; // 释放复位
        $display("[%0t] Reset released. Initial count_out = %b", $time, tb_count_out);
        $display("=================================================================");

        // --- 测试 1: 正常按键，验证计数功能 ---
        $display("[%0t] TEST 1: Normal key presses.", $time);
        press_key(200); // 按下200个周期 (2us)，远大于消抖时间(160ns)
        $display("[%0t] After 1st press, count_out = %b", $time, tb_count_out);
        press_key(200);
        $display("[%0t] After 2nd press, count_out = %b", $time, tb_count_out);
        press_key(200);
        $display("[%0t] After 3rd press, count_out = %b (should be 00)", $time, tb_count_out);
        #200;

        // --- 测试 2: 按键抖动，验证消抖功能 ---
        $display("[%0t] TEST 2: Key bounce (should be ignored).", $time);
        simulate_bounce(20); // 模拟20次抖动，总时长40ns
        $display("[%0t] After bounce, count_out = %b (should be unchanged)", $time, tb_count_out);
        #200;

        // --- 测试 3: 抖动后稳定按下，验证消抖后能正常计数 ---
        $display("[%0t] TEST 3: Bounce followed by a stable press.", $time);
        simulate_bounce(20); // 先抖动
        press_key(200);      // 再稳定按下
        $display("[%0t] After stable press, count_out = %b (should be 01)", $time, tb_count_out);
        #200;

        // --- 测试 4: 按键时间太短，验证是否被忽略 ---
        $display("[%0t] TEST 4: Short key press (should be ignored).", $time);
        tb_key_in = 1'b0;
        #100; // 只按下100ns，小于消抖所需时间
        tb_key_in = 1'b1;
        $display("[%0t] After short press, count_out = %b (should be unchanged)", $time, tb_count_out);
        #200;

        $display("=================================================================");
        $display("[%0t] ALL TESTS FINISHED.", $time);
        $finish;
    end

    //=========================================================================
    // 6. 监视器
    //=========================================================================
    // 监控关键信号的变化
    initial begin
        $monitor("Time=%t ns | rst_n=%b | key_in=%b | count_out=%b", 
                 $time, tb_rst_n, tb_key_in, tb_count_out);
    end

endmodule
