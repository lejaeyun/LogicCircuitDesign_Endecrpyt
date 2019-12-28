module SegOutModule(reset, clock, enword, word, enrw, worw, Out, com1, com2, com3, com4, com5, com6, com7, com8);
  input reset;
  input clock;
  input [3:0] enword;
  input [3:0] word;
  input [1:0] enrw;
  input [1:0] worw;
  output [3:0] Out;
  output com1;
  output com2;
  output com3;
  output com4;
  output com5;
  output com6;
  output com7;
  output com8;

  reg [3:0] Out;
  reg com1;
  reg com2;
  reg com3;
  reg com4;
  reg com5;
  reg com6;
  reg com7;
  reg com8;

  parameter [2:0] S0 = 0, S2 = 1, S3 = 2, S4 = 3, S5 = 4, S6 = 5, S7 = 6, S8 = 7;
  reg [2:0] current_state, next_state;

  always @(posedge clock or posedge reset)
  begin: SYNCH
    if (reset == 1'b1)
       current_state <= S0;
    else
       current_state <= next_state;
  end

  always @(current_state or enword or word or enrw or worw)
  begin: COMBIN
     case (current_state)
        S0:
        begin
          if (enrw == 2'b10)
             begin
             next_state <= S2;
             end
          com1 <= 1'b0;
          com2 <= 1'b1;
          com3 <= 1'b1;
          com4 <= 1'b1;
          com5 <= 1'b1;
          com6 <= 1'b1;
          com7 <= 1'b1;
          com8 <= 1'b1;
          Out <= enword;

        end

        S2:
        begin
          if (enrw == 2'b11)
             begin
             next_state <= S3;
             end
          com1 <= 1'b1;
          com2 <= 1'b0;
          com3 <= 1'b1;
          com4 <= 1'b1;
          com5 <= 1'b1;
          com6 <= 1'b1;
          com7 <= 1'b1;
          com8 <= 1'b1;
          Out <= enword;

        end

        S3:
        begin
          if (enrw == 2'b00)
             begin
             next_state <= S4;
             end
          com1 <= 1'b1;
          com2 <= 1'b1;
          com3 <= 1'b0;
          com4 <= 1'b1;
          com5 <= 1'b1;
          com6 <= 1'b1;
          com7 <= 1'b1;
          com8 <= 1'b1;
          Out <= enword;

        end

        S4:
        begin
          if (enrw == 2'b01)
             begin
             next_state <= S5;
             end
          com1 <= 1'b1;
          com2 <= 1'b1;
          com3 <= 1'b1;
          com4 <= 1'b0;
          com5 <= 1'b1;
          com6 <= 1'b1;
          com7 <= 1'b1;
          com8 <= 1'b1;
          Out <= enword;

        end

        S5:
        begin
          if (worw == 2'b10)
             begin
             next_state <= S6;
             end
          com1 <= 1'b1;
          com2 <= 1'b1;
          com3 <= 1'b1;
          com4 <= 1'b1;
          com5 <= 1'b0;
          com6 <= 1'b1;
          com7 <= 1'b1;
          com8 <= 1'b1;
          Out <= word;

        end

        S6:
        begin
          if (worw == 2'b11)
             begin
             next_state <= S7;
             end
          com1 <= 1'b1;
          com2 <= 1'b1;
          com3 <= 1'b1;
          com4 <= 1'b1;
          com5 <= 1'b1;
          com6 <= 1'b0;
          com7 <= 1'b1;
          com8 <= 1'b1;
          Out <= word;

        end

        S7:
        begin
          if (worw == 2'b00)
             begin
             next_state <= S8;
             end
          com1 <= 1'b1;
          com2 <= 1'b1;
          com3 <= 1'b1;
          com4 <= 1'b1;
          com5 <= 1'b1;
          com6 <= 1'b1;
          com7 <= 1'b0;
          com8 <= 1'b1;
          Out <= word;

        end

        S8:
        begin
          if (worw == 2'b01)
             begin
             next_state <= S0;
             end
          com1 <= 1'b1;
          com2 <= 1'b1;
          com3 <= 1'b1;
          com4 <= 1'b1;
          com5 <= 1'b1;
          com6 <= 1'b1;
          com7 <= 1'b1;
          com8 <= 1'b0;
          Out <= word;

        end


        default:
          next_state <= S0;
     endcase
  end

endmodule
