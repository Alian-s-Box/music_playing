`timescale 1ns / 1ps

//-----------------------------------------------------------------------------
// Module:      freq_controller_tb
// Description: freq_controller 模块的激励测试文件
//              测试 sel 信号在 00, 01, 10, 11 之间切换的行为。
//-----------------------------------------------------------------------------
module tb_freq_controller;

    //=========================================================================
    // 1. 定义测试信号
    //=========================================================================
    reg         tb_clk;
    reg         tb_rst_n;
    reg         tb_switch_clk;
    reg [1:0]   tb_sel;

    wire [7:0]  tb_max_preset_out;
    wire [3:0]  tb_preset_8_out;

    //=========================================================================
    // 2. 实例化待测模块 (DUT)
    //=========================================================================
    freq_controller u_dut (
        .clk             (tb_clk),
        .rst_n           (tb_rst_n),
        .switch_clk      (tb_switch_clk),
        .sel             (tb_sel),
        .max_preset_out  (tb_max_preset_out),
        .preset_8_out    (tb_preset_8_out)
    );

    //=========================================================================
    // 3. 生成时钟信号
    //=========================================================================
    // 系统主时钟 (100MHz)
    initial begin
        tb_clk = 0;
        forever #5 tb_clk = ~tb_clk;
    end

    // 外部切换时钟 (10kHz)，远慢于系统时钟，方便观察
    initial begin
        tb_switch_clk = 0;
        forever #50000 tb_switch_clk = ~tb_switch_clk; // 周期 100us
    end

    //=========================================================================
    // 4. 主测试逻辑
    //=========================================================================
    initial begin
        // --- 初始化 ---
        tb_rst_n = 1'b0;
        tb_sel   = 2'b00;
        $display("=================================================================");
        $display("[%0t] Testbench Started. Applying reset...", $time);
        #100;
        tb_rst_n = 1'b1; // 释放复位
        $display("[%0t] Reset released.", $time);
        $display("=================================================================");

        // --- 测试 1: sel = 00 ---
        $display("[%0t] TEST 1: Setting sel = 00. Waiting for switch_clk changes...", $time);
        tb_sel = 2'b00;
        // 等待 300us，观察 switch_clk 的 3 个周期
        #300000; 

        // --- 测试 2: sel = 01 ---
        $display("[%0t] TEST 2: Setting sel = 01. Waiting for switch_clk changes...", $time);
        tb_sel = 2'b01;
        #10; // 等待组合逻辑稳定
        $display("[%0t] Outputs immediately changed to: max=0x%h, preset=%d", $time, tb_max_preset_out, tb_preset_8_out);
        #300000;

        // --- 测试 3: sel = 10 ---
        $display("[%0t] TEST 3: Setting sel = 10. Waiting for switch_clk changes...", $time);
        tb_sel = 2'b10;
        #10;
        $display("[%0t] Outputs immediately changed to: max=0x%h, preset=%d", $time, tb_max_preset_out, tb_preset_8_out);
        #300000;

        // --- 测试 4: sel = 11 (default case) ---
        $display("[%0t] TEST 4: Setting sel = 11 (default case). Should behave like sel=00.", $time);
        tb_sel = 2'b11;
        #10;
        $display("[%0t] Outputs immediately changed to: max=0x%h, preset=%d", $time, tb_max_preset_out, tb_preset_8_out);
        #300000;

        $display("=================================================================");
        $display("[%0t] ALL TESTS FINISHED.", $time);
        $finish;
    end

    //=========================================================================
    // 5. 监视器
    //=========================================================================
    // 监视 switch_clk 的上升沿，这是预设值更新的关键时刻
    always @(posedge tb_switch_clk) begin
        if (tb_rst_n) begin
            $display("[%0t] >>> MONITOR: switch_clk rising edge! <<< | sel=%b, max=0x%h, preset=%d", 
                     $time, tb_sel, tb_max_preset_out, tb_preset_8_out);
        end
    end

endmodule
