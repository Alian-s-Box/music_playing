module tb_divider_12;

    //=========================================================================
    // 1. 定义测试信号
    //=========================================================================
    reg         tb_clk;
    reg         tb_rst_n;
    reg [7:0]   tb_max_preset;

    wire        tb_clk_div;

    //=========================================================================
    // 2. 实例化待测模块 (DUT)
    //=========================================================================
    divider_12 u_dut (
        .clk          (tb_clk),
        .rst_n        (tb_rst_n),
        .max_preset   (tb_max_preset),
        .clk_div      (tb_clk_div)
    );

    //=========================================================================
    // 3. 生成时钟信号 (100MHz, 周期=10ns)
    //=========================================================================
    initial begin
        tb_clk = 0;
        forever #5 tb_clk = ~tb_clk;
    end

    //=========================================================================
    // 4. 主测试逻辑
    //=========================================================================
    initial begin
        // --- 初始化 ---
        tb_rst_n = 1'b0;
        tb_max_preset = 8'd0;
        $display("=================================================================");
        $display("[%0t] Testbench Started. Applying reset...", $time);
        #20;
        tb_rst_n = 1'b1; // 释放复位
        $display("[%0t] Reset released.", $time);
        $display("=================================================================");

        // --- 测试 1: 2分频 (max_preset = 0) ---
        // 预期: 输出周期 = 2 * (0+1) * 10ns = 20ns
        $display("[%0t] TEST 1: Setting max_preset = 0 (for 2x division).", $time);
        tb_max_preset = 8'd0;
        #100; // 等待5个输出周期

        // --- 测试 2: 10分频 (max_preset = 4) ---
        // 预期: 输出周期 = 2 * (4+1) * 10ns = 100ns
        $display("[%0t] TEST 2: Setting max_preset = 4 (for 10x division).", $time);
        tb_max_preset = 8'd4;
        #300; // 等待3个输出周期

        // --- 测试 3: 20分频 (max_preset = 9) ---
        // 预期: 输出周期 = 2 * (9+1) * 10ns = 200ns
        $display("[%0t] TEST 3: Setting max_preset = 9 (for 20x division).", $time);
        tb_max_preset = 8'd9;
        #500; // 等待2.5个输出周期

        // --- 测试 4: 动态切换 ---
        // 从大分频系数切换到小分频系数
        $display("[%0t] TEST 4: Dynamically changing max_preset from 9 to 1.", $time);
        tb_max_preset = 8'd1; // 切换到4分频
        #200; // 观察切换后的行为

        $display("=================================================================");
        $display("[%0t] ALL TESTS FINISHED.", $time);
        $finish;
    end

    //=========================================================================
    // 5. 监视器
    //=========================================================================
    // 监控关键信号的变化
    initial begin
        $monitor("Time=%t | rst_n=%b | max_preset=%d | clk_div=%b", 
                 $time, tb_rst_n, tb_max_preset, tb_clk_div);
    end

endmodule