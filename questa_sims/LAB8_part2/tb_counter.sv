`timescale 1ns/1ps

module tb_counter #(
    parameter int NUM_TESTS = 1000,
    parameter int MAX       = 15
);

    logic       clk = 1'b0;
    logic       rst;
    logic       en;
    logic [3:0] count;

    counter1 DUT (.*);
    //counter2 DUT (.*);
    // Clock generation
    initial begin : generate_clock
        forever #5 clk <= ~clk;
    end

    // Stimulus
    initial begin
        $timeformat(-9, 0, " ns");

        // Initialize
        rst = 1'b1;
        en  = 1'b0;
        repeat (5) @(posedge clk);

        // Release reset
        @(negedge clk);
        rst = 1'b0;

        // Random stimulus with occasional reset and enable' (1%)
        for (int i = 0; i < NUM_TESTS; i++) begin
            @(negedge clk);
            en  = 1; 
            rst = ($urandom_range(0,99) < 1);

            @(posedge clk);
        end

        disable generate_clock;
        $display("Tests completed.");
    end


     // Reset Assertion 
     assert property (@(posedge clk) rst |=> (count == 0))
       	else $error("Reset failed to clear count at time %0t", $time);

    // Enable Assertion
    assert property (@(posedge clk) disable iff (rst) !en |=> (count == $past(count)))
        else $error("Count changed while en=0 at time %0t", $time);

    // Count Enable Assertions 
    assert property (@(posedge clk) disable iff(rst)  en && (count != MAX) |=> (count == $past(count) + 1))
        else $error("Count did not increment correctly at time %0t", $time);
    assert property (@(posedge clk) disable iff(rst)  en && (count == MAX) |=> count == 0)
        else $error("Count did not increment correctly at time %    git config --global user.email you@example.com
0t", $time);

   
    // Part 5: Write a cover property that checks whether the enable
     // signal (en) transitions from 1 to 0 (i.e., is
    //   turned off) when the counter is at the following values:
    //   a) MAX (15) and b) 0. 

     // Write Cover property 5a
   

     // Write Cover property 5b
  


endmodule
