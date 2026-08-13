module traffic_light_controller (
    input  wire clk,
    input  wire reset,

    output reg red,
    output reg yellow,
    output reg green
);

    // State definitions
    parameter RED    = 2'b00;
    parameter GREEN  = 2'b01;
    parameter YELLOW = 2'b10;

    reg [1:0] state, next_state;

    // State register
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= RED;
        else
            state <= next_state;
    end

    // Next-state logic
    always @(*) begin
        case (state)
            RED: begin
                next_state = GREEN;
            end

            GREEN: begin
                next_state = YELLOW;
            end

            YELLOW: begin
                next_state = RED;
            end

            default: begin
                next_state = RED;
            end
        endcase
    end

    // Output logic
    always @(*) begin
        red    = 1'b0;
        yellow = 1'b0;
        green  = 1'b0;

        case (state)
            RED: begin
                red = 1'b1;
            end

            GREEN: begin
                green = 1'b1;
            end

            YELLOW: begin
                yellow = 1'b1;
            end

            default: begin
                red = 1'b1;
            end
        endcase
    end

endmodule 