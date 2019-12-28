module BinaryToSegment(Din,a,b,c,d,e,f,g);

input [3:0] Din;
output a;
output b;
output c;
output d;
output e;
output f;
output g;

wire  w2;
wire  w12;
wire  w17;
wire [3:0] b26;
wire  w21;
wire  w22;
wire  w24;
wire  w25;
wire  w29;
wire  w32;
wire  w27;
wire  w33;
wire  w34;
wire  w35;
wire  w36;
wire  w37;
wire  w38;
wire  w39;
wire  w30;
wire  w28;
wire  w40;
wire  w31;
wire  b26_1_w15;
wire  b26_0_w20;
wire  b26_2_w23;
wire  b26_3_w26;

assign b26 = Din;
assign a = w33;
assign b = w34;
assign c = w35;
assign d = w36;
assign e = w37;
assign f = w38;
assign g = w39;

assign b26_1_w15 = {b26[1]};
assign b26_0_w20 = {b26[0]};
assign b26_2_w23 = {b26[2]};
assign b26_3_w26 = {b26[3]};

PNU_NOT
     s0 (
      .o1(w2),
      .i1(b26_3_w26));

PNU_NOT
     s1 (
      .i1(b26_2_w23),
      .o1(w40));

PNU_NOT
     s2 (
      .i1(b26_1_w15),
      .o1(w21));

PNU_NOT
     s3 (
      .i1(b26_0_w20),
      .o1(w22));

PNU_AND2
     s4 (
      .o1(w12),
      .i2(b26_0_w20),
      .i1(b26_2_w23));

PNU_AND2
     s5 (
      .i2(w22),
      .o1(w27),
      .i1(w40));

PNU_OR4
     s6 (
      .i1(w12),
      .i4(b26_1_w15),
      .i2(w27),
      .o1(w33),
      .i3(b26_3_w26));

PNU_AND2
     s7 (
      .o1(w17),
      .i1(b26_1_w15),
      .i2(b26_0_w20));

PNU_AND2
     s8 (
      .i1(w21),
      .i2(w22),
      .o1(w31));

PNU_OR3
     s9 (
      .i1(w17),
      .o1(w34),
      .i3(w40),
      .i2(w31));

PNU_OR3
     s10 (
      .i3(b26_0_w20),
      .i2(w21),
      .i1(b26_2_w23),
      .o1(w35));

PNU_OR8
     s11 (
      .i5(w29),
      .i8(w32),
      .i7(w32),
      .i6(w32),
      .i2(w27),
      .o1(w36),
      .i4(w30),
      .i3(w28),
      .i1(b26_3_w26));

PNU_AND2
     s12 (
      .i1(b26_1_w15),
      .i2(w22),
      .o1(w28));

PNU_AND2
     s13 (
      .i2(b26_1_w15),
      .o1(w30),
      .i1(w40));

PNU_AND2
     s14 (
      .i1(b26_0_w20),
      .i2(w25),
      .o1(w29));

PNU_AND2
     s15 (
      .i2(w21),
      .i1(b26_2_w23),
      .o1(w25));

PNU_AND2
     s16 (
      .i1(b26_2_w23),
      .i2(w22),
      .o1(w24));

PNU_OR2
     s17 (
      .i2(w27),
      .o1(w37),
      .i1(w28));

PNU_OR4
     s18 (
      .i2(w24),
      .i3(w25),
      .o1(w38),
      .i1(w31),
      .i4(b26_3_w26));

PNU_OR4
     s19 (
      .i2(w25),
      .o1(w39),
      .i4(w30),
      .i1(w28),
      .i3(b26_3_w26));

PNU_ZERO
     s20 (
      .o1(w32));

endmodule

