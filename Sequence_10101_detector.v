module Sequence_10101_detector(
    input clk,
    input reset,
    input input_data,
    output reg sequence_detected
);
    parameter S0     = 3'b000,
              S1     = 3'b001,
              S10    = 3'b010,
              S101   = 3'b011,
              S1010  = 3'b100,
              S10101 = 3'b101;
    reg [2:0] state, next_state;
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end
    always @(*) begin
        case (state)
            S0:     next_state = input_data ? S1 : S0;
            S1:     next_state = input_data ? S1 : S10;
            S10:    next_state = input_data ? S101 : S0;
            S101:   next_state = input_data ? S1 : S1010;
            S1010:  next_state = input_data ? S10101 : S0;
            S10101: next_state = input_data ? S1 : S10;
            default: next_state = S0;
        endcase
    end
        always @(*) begin
        sequence_detected = (state == S10101);
    end

endmodule
