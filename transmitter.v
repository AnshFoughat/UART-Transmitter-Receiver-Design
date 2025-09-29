

module transmitter(
   input clk, rst, transmit,
   input [7:0] data,
   output reg Txd
);
    
    reg [3:0] bit_counter;
    reg [13:0] baudrate_counter;
    reg [9:0] shiftright_register;
    reg state, next_state;
    
    // State definitions
    parameter IDLE = 1'b0;
    parameter TRANSMIT_STATE = 1'b1;
    
    // Baudrate counter and state update
    always @(posedge clk) begin
        if (rst) begin
            state <= IDLE;
            baudrate_counter <= 0;
        end
        else begin
            baudrate_counter <= baudrate_counter + 1;
            if (baudrate_counter == 10415) begin
                state <= next_state;
                baudrate_counter <= 0;
            end
        end
    end
    
    // Shift register and bit counter update
    always @(posedge clk) begin
        if (rst) begin
            shiftright_register <= 10'b1111111111;
            bit_counter <= 0;
            Txd <= 1;
        end
        else begin
            if (baudrate_counter == 10415) begin
                case (state)
                    IDLE: begin
                        if (transmit) begin
                            // Load: start bit (0) + data + stop bit (1)
                            shiftright_register <= {1'b1, data, 1'b0};
                            bit_counter <= 0;
                        end
                        Txd <= 1; // Idle high
                    end
                    
                    TRANSMIT_STATE: begin
                        if (bit_counter < 10) begin
                            Txd <= shiftright_register[0];
                            shiftright_register <= shiftright_register >> 1;
                            bit_counter <= bit_counter + 1;
                        end
                        else begin
                            Txd <= 1; // Back to idle
                        end
                    end
                endcase
            end
        end
    end
    
    // Next state logic
    always @(*) begin
        case (state)
            IDLE: begin
                if (transmit)
                    next_state = TRANSMIT_STATE;
                else
                    next_state = IDLE;
            end
            
            TRANSMIT_STATE: begin
                if (bit_counter >= 10)
                    next_state = IDLE;
                else
                    next_state = TRANSMIT_STATE;
            end
            
            default: next_state = IDLE;
        endcase
    end
    
endmodule
