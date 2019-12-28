module OutRW(reset, clock, out, in, kin);
  input reset;
  input clock;
  output [1:0] out;
  input [1:0] in;
  input [1:0] kin;

  reg [1:0] out;

  parameter [1:0] S0 = 0, S1 = 1, S2 = 2;
  reg [1:0] current_state, next_state;

  always @(posedge clock or posedge reset)
  begin: SYNCH
    if (reset == 1'b1)
       current_state <= S0;
    else
       current_state <= next_state;
  end

  always @(current_state or in or kin)
  begin: COMBIN
     case (current_state)
        S0:
        begin
          if (in == 2'b00)
             begin
             next_state <= S1;
             end
          out <= in;

        end

        S1:
        begin
          if (in == 2'b01)
             begin
             next_state <= S2;
             end
          out <= in;

        end

        S2:
        begin
          out <= kin;

        end


        default:
          next_state <= S0;
     endcase
  end

endmodule
