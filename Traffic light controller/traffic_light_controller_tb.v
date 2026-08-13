`timescale 1ns/1ps

module traffic_light_controller_tb;

    reg clk;
    reg reset;

    wire red;
    wire yellow;
    wire green;

    // Instantiate DUT
    traffic_light_controller uut (
        .clk(clk),
        .reset(reset),
        .red(red),
        .yellow(yellow),
        .green(green)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | Reset=%b | RED=%b | YELLOW=%b | GREEN=%b",
                 $time, reset, red, yellow, green);
    end

    // Test sequence
    initial begin
        clk = 0;
        reset = 1;

        #10;
        reset = 0;

        #10;
        #10;
        #10;
        #10;
        #10;
        #10;

        $finish;
    end

    // Generate waveform
    initial begin
        $dumpfile("traffic_light_controller.vcd");
        $dumpvars(0, traffic_light_controller_tb);
    end

endmodule 