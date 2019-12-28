module FourbitDecoder(Word,Key,Out);

input [3:0] Word;
input [3:0] Key;
output [3:0] Out;

wire [3:0] b0;
wire [3:0] b1;
wire [3:0] b10;
wire  b0_0_w2;
wire  b1_0_w3;
wire  b0_1_w4;
wire  b0_2_w5;
wire  b0_3_w6;
wire  b1_3_w7;
wire  b1_2_w8;
wire  b1_1_w9;
wire  b10_3;
wire  b10_2;
wire  b10_1;
wire  b10_0;

assign b0 = Word;
assign b1 = Key;
assign Out = b10;

assign b10[3] = b10_3;
assign b10[2] = b10_2;
assign b10[1] = b10_1;
assign b10[0] = b10_0;

assign b0_0_w2 = {b0[0]};
assign b1_0_w3 = {b1[0]};
assign b0_1_w4 = {b0[1]};
assign b0_2_w5 = {b0[2]};
assign b0_3_w6 = {b0[3]};
assign b1_3_w7 = {b1[3]};
assign b1_2_w8 = {b1[2]};
assign b1_1_w9 = {b1[1]};

PNU_XOR2
     s0 (
      .i1(b0_0_w2),
      .i2(b1_0_w3),
      .o1(b10_0));

PNU_XOR2
     s1 (
      .i1(b0_1_w4),
      .i2(b1_1_w9),
      .o1(b10_1));

PNU_XOR2
     s2 (
      .i1(b0_2_w5),
      .i2(b1_2_w8),
      .o1(b10_2));

PNU_XOR2
     s3 (
      .i1(b0_3_w6),
      .i2(b1_3_w7),
      .o1(b10_3));

endmodule

