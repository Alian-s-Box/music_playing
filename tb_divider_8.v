`timescale 1ns / 1ps

//-----------------------------------------------------------------------------
// Module:      divider_8_tb
// Description: divider_8 模块的激励测试文件 (兼容 Verilog-1995)
//-----------------------------------------------------------------------------
module tb_divider_8;

    //=========================================================================
    // 1. 定义测试信号
    //=========================================================================
    reg         tb_clk;
    reg         tb_rst_n;
    reg [3:0]   tb_sel_8;

    wire        tb_clk_div;

    // 用于测量的内部变量
    integer     period_count;
    integer     high_count;
    integer     expected_divisor;
    real        measured_freq;
    real        measured_duty;

    //=========================================================================
    // 2. 实例化待测模块 (DUT)
    //=========================================================================
    divider_8 u_dut (
        .clk        (tb_clk),
        .rst_n      (tb_rst_n),
        .sel_8      (tb_sel_8),
        .clk_div    (tb_clk_div)
    );

    //=========================================================================
    // 3. 生成时钟信号 (100MHz)
    //=========================================================================
    initial begin
        tb_clk = 0;
        forever #5 tb_clk = ~tb_clk; // 10ns周期 = 100MHz
    end

    //=========================================================================
    // 4. 主测试逻辑 (兼容旧语法)
    //=========================================================================
    initial begin
        // --- 初始化 ---
        tb_rst_n = 1'b0;
        tb_sel_8 = 4'd2; // 设置一个初始值
        $display("---------------------------------------------------------");
        $display("[%0t] Testbench Started. Applying reset...", $time);
        #200;
        tb_rst_n = 1'b1; // 释放复位
        $display("[%0t] Reset released. Starting test sequence...", $time);
        $display("---------------------------------------------------------");

        // --- 测试 1: 分频系数 = 2 ---
        $display("[%0t] >>> Applying new divisor: 2", $time);
        tb_sel_8 = 4'd2;
        expected_divisor = 4'd2;
        #100; // 等待稳定
        // (调用测量任务)
        measure_and_report(expected_divisor);
        #5000; // 等待观察波形

        // --- 测试 2: 分频系数 = 4 ---
        $display("[%0t] >>> Applying new divisor: 4", $time);
        tb_sel_8 = 4'd4;
        expected_divisor = 4'd4;
        #100;
        measure_and_report(expected_divisor);
        #5000;

        // --- 测试 3: 分频系数 = 8 ---
        $display("[%0t] >>> Applying new divisor: 8", $time);
        tb_sel_8 = 4'd8;
        expected_divisor = 4'd8;
        #100;
        measure_and_report(expected_divisor);
        #5000;

        // --- 测试 4: 分频系数 = 10 ---
        $display("[%0t] >>> Applying new divisor: 10", $time);
        tb_sel_8 = 4'd10;
        expected_divisor = 4'd10;
        #100;
        measure_and_report(expected_divisor);
        #5000;

        $display("[%0t] ALL TESTS FINISHED.", $time);
        $finish;
    end

    //=========================================================================
    // 5. 测量与报告任务
    // 将重复的测量逻辑封装成一个任务，使代码更整洁
    //=========================================================================
    task measure_and_report;
        input [3:0] expected_div; // 输入：期望的分频系数
        begin
            // --- 测量输出时钟的周期 ---
            $display("[%0t] Measuring period of clk_div...", $time);
            period_count = 0;
            fork
                begin
                    @(posedge tb_clk_div);
                    @(posedge tb_clk_div);
                end
                begin
                    while (period_count < 10000) begin
                        @(posedge tb_clk);
                        period_count = period_count + 1;
                    end
                end
            join
            
            // --- 测量输出时钟的高电平时间 ---
            $display("[%0t] Measuring high time of clk_div...", $time);
            high_count = 0;
            fork
                begin
                    @(posedge tb_clk_div);
                    @(negedge tb_clk_div);
                end
                begin
                    while (high_count < 10000) begin
                        @(posedge tb_clk);
                        high_count = high_count + 1;
                    end
                end
            join

            // --- 计算并报告结果 ---
            measured_freq = 100_000_000.0 / period_count;
            measured_duty = (high_count * 100.0) / period_count;

            $display("---------------------------------------------------------");
            $display(">>> TEST RESULT for Divisor = %d", expected_div);
            $display("    - Expected Period: %d master cycles", expected_div);
            $display("    - Measured Period: %d master cycles", period_count);
            $display("    - Expected Duty Cycle: 50.0%%");
            $display("    - Measured Duty Cycle: %0.2f%%", measured_duty);
            $display("    - Measured Frequency: %0.2f Hz", measured_freq);
            
            if (period_count == expected_div && high_count == (expected_div >> 1)) begin
                $display("    - Status: ** PASSED **");
            end else begin
                $display("    - Status: ** FAILED **");
            end
            $display("---------------------------------------------------------");
        end
    endtask

    //=========================================================================
    // 6. 监视器 (可选)
    //=========================================================================
    initial begin
        $monitor("[%0t] sel_8=%d, clk_div=%b", $time, tb_sel_8, tb_clk_div);
    end

endmodule
