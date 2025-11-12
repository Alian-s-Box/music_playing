`timescale 1ns / 1ps

//-----------------------------------------------------------------------------
// Testbench for the top_module (Compatible with Xilinx ISE)
//-----------------------------------------------------------------------------

module tb_top;

    //=========================================================================
    // Testbench Signals
    //=========================================================================
    reg         clk;
    reg         rst_n;
    reg         key_in;

    wire        final_clk_out;
    wire        led_mode0;
    wire        led_mode1;
    wire        led_mode2;

    //=========================================================================
    // Clock Generation (100MHz -> 10ns period)
    //=========================================================================
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    //=========================================================================
    // Device Under Test (DUT) Instantiation
    //=========================================================================
    top u_top (
        .clk            (clk),
        .rst_n          (rst_n),
        .key_in         (key_in),
        .final_clk_out  (final_clk_out),
        .led_mode0      (led_mode0),
        .led_mode1      (led_mode1),
        .led_mode2      (led_mode2)
    );

    //=========================================================================
    // Main Test Stimulus
    //=========================================================================
    initial begin
        // 1. Initialize Inputs
        $display("-------------------------------------------------------------------------------");
        $display("%0t: Starting Simulation...", $time);
        $display("-------------------------------------------------------------------------------");
        rst_n = 1'b0;
        key_in = 1'b1; // Key is active low, so default is high

        // 2. Apply Reset
        $display("%0t: Applying reset...", $time);
        #20;
        rst_n = 1'b1;
        $display("%0t: Reset released.", $time);
        $display("-------------------------------------------------------------------------------");

        // 3. Monitor key changes and LED outputs
        $monitor("%0t: key_in=%b, LED_Mode=[%b|%b|%b], final_clk_out=%b", 
                 $time, key_in, led_mode2, led_mode1, led_mode0, final_clk_out);

        // 4. Simulate Key Presses
        // We press the key multiple times to cycle through the modes.
        // The duration of the press (50ns) is long enough for the counter to detect it.
        // The delay between presses (100us) is long enough to see the LED change
        // and observe the new frequency on final_clk_out in the waveform viewer.

        // Press 1: Transition to Mode 1
        $display("%0t: >>> Pressing key for the 1st time (to Mode 1)...", $time);
        press_key(50);
        #100000; // Wait 100us for system to settle

        // Press 2: Transition to Mode 2
        $display("%0t: >>> Pressing key for the 2nd time (to Mode 2)...", $time);
        press_key(50);
        #100000; // Wait 100us

        // Press 3: Transition to Mode 0 (assuming it cycles back)
        $display("%0t: >>> Pressing key for the 3rd time (back to Mode 0)...", $time);
        press_key(50);
        #100000; // Wait 100us

        // Press 4: Transition to Mode 1 again
        $display("%0t: >>> Pressing key for the 4th time (to Mode 1 again)...", $time);
        press_key(50);
        #100000; // Wait 100us

        // 5. End Simulation
        $display("-------------------------------------------------------------------------------");
        $display("%0t: Simulation finished.", $time);
        $display("-------------------------------------------------------------------------------");
        #10000;
        $finish;
    end

    //=========================================================================
    // Task to simulate a key press
    //=========================================================================
    task press_key(input integer duration_ns);
        begin
            key_in = 1'b0; // Press the key (active low)
            #duration_ns;
            key_in = 1'b1; // Release the key
        end
    endtask

endmodule


//-----------------------------------------------------------------------------
// Below are simplified "stub" versions of the sub-modules required for top_module.
// They are functional enough to allow the top-level logic to be tested.
//-----------------------------------------------------------------------------

//--- Stub for simple_button_counter (ISE Compatible) ---
// A simple counter that increments on the falling edge of the key.
// Edge detection is done using a standard Verilog delay register.
module simple_button_counter (
    input  clk,
    input  rst_n,
    input  key_in,
    output reg [1:0] count_out
);
    reg key_in_d1; // Register to hold the previous state of key_in

    // Register the input to detect edges
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            key_in_d1 <= 1'b1; // Default to not pressed
        end else begin
            key_in_d1 <= key_in;
        end
    end

    // Detect the falling edge (key press)
    wire key_negedge = (key_in_d1 == 1'b1) && (key_in == 1'b0);

    // Main counter logic
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count_out <= 2'b00;
        end else if (key_negedge) begin
            count_out <= count_out + 1;
        end
    end
endmodule

//--- Stub for divider_clk ---
// Generates two divided clocks from the main clock.
module divider_clk (
    input  clk_in,
    input  rst_n,
    output reg clk_div_4,
    output reg clk_div_250k
);
    reg [1:0]  cnt_div4;
    reg [17:0] cnt_div250k;

    always @(posedge clk_in or negedge rst_n) begin
        if (!rst_n) begin
            cnt_div4 <= 0;
            clk_div_4 <= 0;
        end else begin
            if (cnt_div4 == 1) begin
                cnt_div4 <= 0;
                clk_div_4 <= ~clk_div_4;
            end else begin
                cnt_div4 <= cnt_div4 + 1;
            end
        end
    end

    always @(posedge clk_in or negedge rst_n) begin
        if (!rst_n) begin
            cnt_div250k <= 0;
            clk_div_250k <= 0;
        end else begin
            // 100MHz / 250k = 400. 2^9 = 512. So 9-bit counter is good.
            // Let's use 18 to be safe and make the switch slow.
            if (cnt_div250k == 249) begin // 100MHz / 250 = 400kHz, let's make it 250kHz
                cnt_div250k <= 0;
                clk_div_250k <= ~clk_div_250k;
            end else begin
                cnt_div250k <= cnt_div250k + 1;
            end
        end
    end
endmodule

//--- Stub for freq_controller ---
// Uses a lookup table to set presets and LEDs based on the selection.
module freq_controller (
    input             clk,
    input             rst_n,
    input             switch_clk,
    input      [1:0]  sel,
    output reg [7:0]  max_preset_out,
    output reg [3:0]  preset_8_out,
    output reg        led_table0,
    output reg        led_table1,
    output reg        led_table2
);
    // The logic is updated on the slow switch_clk to avoid glitches
    always @(posedge switch_clk or negedge rst_n) begin
        if (!rst_n) begin
            {max_preset_out, preset_8_out} <= 0;
            {led_table0, led_table1, led_table2} <= 3'b000;
        end else begin
            case (sel)
                2'b00: begin // Mode 0
                    max_preset_out <= 8'd24;   // e.g., 4MHz / (2*25) = 80kHz
                    preset_8_out  <= 4'd4;    // e.g., 80kHz / (2*5) = 8kHz
                    {led_table0, led_table1, led_table2} <= 3'b001;
                end
                2'b01: begin // Mode 1
                    max_preset_out <= 8'd49;   // e.g., 4MHz / (2*50) = 40kHz
                    preset_8_out  <= 4'd9;    // e.g., 40kHz / (2*10) = 2kHz
                    {led_table0, led_table1, led_table2} <= 3'b010;
                end
                2'b10: begin // Mode 2
                    max_preset_out <= 8'd99;   // e.g., 4MHz / (2*100) = 20kHz
                    preset_8_out  <= 4'd19;   // e.g., 20kHz / (2*20) = 500Hz
                    {led_table0, led_table1, led_table2} <= 3'b100;
                end
                default: begin // Fallback or other modes
                    max_preset_out <= 8'd24;
                    preset_8_out  <= 4'd4;
                    {led_table0, led_table1, led_table2} <= 3'b001;
                end
            endcase
        end
    end
endmodule

//--- Stub for divider_12 ---
// A generic programmable divider.
module divider_12 (
    input       clk,
    input       rst_n,
    input [7:0] max_preset,
    output reg  clk_div
);
    reg [7:0] count;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count <= 0;
            clk_div <= 0;
        end else begin
            if (count >= max_preset) begin
                count <= 0;
                clk_div <= ~clk_div;
            end else begin
                count <= count + 1;
            end
        end
    end
endmodule

//--- Stub for divider_8 ---
// Another generic programmable divider.
module divider_8 (
    input       clk,
    input       rst_n,
    input [3:0] sel_8,
    output reg  clk_div
);
    reg [3:0] count;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count <= 0;
            clk_div <= 0;
        end else begin
            if (count >= sel_8) begin
                count <= 0;
                clk_div <= ~clk_div;
            end else begin
                count <= count + 1;
            end
        end
    end
endmodule
