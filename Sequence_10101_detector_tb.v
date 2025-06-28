module Sequence_10101_detector_tb;
    reg clk;
    reg reset;
    reg input_data;
    wire sequence_detected;
    // Instantiation
    Sequence_10101_detector uut (
        .clk(clk),
        .reset(reset),
        .input_data(input_data),
        .sequence_detected(sequence_detected)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        input_data = 0;
        #10;
        reset = 0;
        #10 input_data = 1;
        #10 input_data = 0;
        #10 input_data = 1;
        #10 input_data = 0;
        #10 input_data = 1; // (sequence_detected = 1)
        #10 input_data = 0;
        #10 input_data = 1; // New sequence starting
        #10 input_data = 0;
        #10 input_data = 1;
        #10 input_data = 0;
        #10 input_data = 1; // (sequence_detected = 1)
        #20;
        $finish;
    end
endmodule
