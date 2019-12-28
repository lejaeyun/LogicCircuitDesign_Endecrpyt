module FourbitNumber(rst,clk,num2,num3,num4,num5,num6,num7,num8,num9,num1,num0,star,sharp,com1,com2,com3,com4,com5,com6,com7,com8,a,b,c,d,e,f,g,p29,p30,p31,enrw,worw);

input rst;
input clk;
input num2;
input num3;
input num4;
input num5;
input num6;
input num7;
input num8;
input num9;
input num1;
input num0;
input star;
input sharp;
output com1;
output com2;
output com3;
output com4;
output com5;
output com6;
output com7;
output com8;
output a;
output b;
output c;
output d;
output e;
output f;
output g;
output [3:0] p29;
output [3:0] p30;
output [3:0] p31;
output [1:0] enrw;
output [1:0] worw;

wire [3:0] b6;
wire  w12;
wire [3:0] b12;
wire [3:0] b35;
wire  w16;
wire  w17;
wire  w18;
wire  w19;
wire  w20;
wire  w21;
wire  w22;
wire  w24;
wire  w25;
wire  w23;
wire  w32;
wire  w33;
wire  w40;
wire [1:0] b51;
wire [3:0] b36;
wire  w43;
wire [3:0] b38;
wire [1:0] b48;
wire [3:0] b46;
wire [1:0] b50;
wire  w52;
wire  w51;
wire  w50;
wire  w49;
wire  w48;
wire  w55;
wire  w56;
wire  w57;
wire [1:0] b52;
wire  w41;
wire  w42;
wire  w58;
wire  w53;
wire  w59;
wire [1:0] b53;
wire  w61;
wire  w62;
wire  w63;
wire  w64;
wire  w65;
wire  w66;
wire  w67;
wire  w35;
wire  w68;
wire [3:0] b6_3to0_b7;
wire [3:0] b35_3to0_b13;
wire  b51_1_w36;
wire  b51_1_w38;
wire [3:0] b12_3to0_b39;
wire [1:0] b48_1to0_b40;
wire [1:0] b48_1to0_b49;
wire [1:0] b50_1to0_b54;
wire  b52_1_w60;

assign w58 = rst;
assign w53 = clk;
assign w23 = num2;
assign w22 = num3;
assign w21 = num4;
assign w20 = num5;
assign w19 = num6;
assign w18 = num7;
assign w17 = num8;
assign w16 = num9;
assign w25 = num1;
assign w24 = num0;
assign w68 = star;
assign w35 = sharp;
assign com1 = w52;
assign com2 = w51;
assign com3 = w50;
assign com4 = w49;
assign com5 = w48;
assign com6 = w55;
assign com7 = w56;
assign com8 = w57;
assign a = w61;
assign b = w62;
assign c = w63;
assign d = w64;
assign e = w65;
assign f = w66;
assign g = w67;
assign p29[3:0] = b12[3:0];
assign p30[3:0] = b38[3:0];
assign p31[3:0] = b46[3:0];
assign enrw[1:0] = b48[1:0];
assign worw[1:0] = b50[1:0];

assign b6_3to0_b7[3:0] = {b6[3:0]};
assign b35_3to0_b13[3:0] = {b35[3:0]};
assign b51_1_w36 = {b51[1]};
assign b51_1_w38 = {b51[1]};
assign b12_3to0_b39[3:0] = {b12[3:0]};
assign b48_1to0_b40[1:0] = {b48[1:0]};
assign b48_1to0_b49[1:0] = {b48[1:0]};
assign b50_1to0_b54[1:0] = {b50[1:0]};
assign b52_1_w60 = {b52[1]};

TwobitCounter
     s2 (
      .clk(w12),
      .rst(w40),
      .Cnt4(b48));

PNU_MUX2
     s10 (
      .o1(w12),
      .e1(b51_1_w36),
      .i2(w42),
      .i1(w53));

FourbitEncoder
     s7 (
      .Out(b12),
      .Key(b35),
      .Word(b36));

TwobitCounter
     s11 (
      .rst(w33),
      .Cnt4(b51),
      .clk(w68));

TwobitCounter
     s12 (
      .rst(w32),
      .Cnt4(b52),
      .clk(w35));

PNU_OR2
     s13 (
      .o1(w33),
      .i2(w58),
      .i1(w35));

PNU_OR2
     s14 (
      .o1(w32),
      .i2(w58),
      .i1(w68));

FourbitDecoder
     s15 (
      .Word(b12),
      .Key(b35),
      .Out(b38));

PNU_OR2
     s18 (
      .o1(w40),
      .i1(w58),
      .i2(w68));

PNU_SRAM
     #(
      .Addr_Width(2),
      .RAM_Width(4))
     s19 (
      .Din(b6),
      .Dout(b35),
      .Addr(b50),
      .clk(w42),
      .rst(w58),
      .RW(b52_1_w60));

PNU_SRAM
     #(
      .Addr_Width(2),
      .RAM_Width(4))
     s20 (
      .Din(b6),
      .RW(b51_1_w38),
      .Dout(b36),
      .Addr(b48),
      .clk(w42),
      .rst(w58));

PNU_OR2
     s21 (
      .o1(w43),
      .i1(w58),
      .i2(w35));

TwobitCounter
     s16 (
      .rst(w43),
      .clk(w41),
      .Cnt4(b53));

SegOutModule
     #(
      .S0(0),
      .S2(1),
      .S3(2),
      .S4(3),
      .S5(4),
      .S6(5),
      .S7(6),
      .S8(7))
     s22 (
      .word(b38),
      .enword(b12),
      .enrw(b48),
      .Out(b46),
      .com1(w52),
      .com2(w51),
      .com3(w50),
      .com4(w49),
      .com5(w48),
      .com6(w55),
      .com7(w56),
      .com8(w57),
      .reset(w58),
      .clock(w53),
      .worw(b50));

OutRW
     #(
      .S0(0),
      .S1(1),
      .S2(2))
     s23 (
      .out(b50),
      .kin(b48),
      .clock(w53),
      .in(b53),
      .reset(w68));

DecimalToBinary
     s0 (
      .out(b6),
      .d9(w16),
      .d8(w17),
      .d7(w18),
      .d6(w19),
      .d5(w20),
      .d4(w21),
      .d3(w22),
      .d0(w24),
      .d1(w25),
      .d2(w23),
      .CHK(w42));

PNU_MUX2
     s17 (
      .o1(w41),
      .i2(w42),
      .i1(w59),
      .e1(b52_1_w60));

PNU_ZERO
     s24 (
      .o1(w59));

BinaryToSegment
     s25 (
      .Din(b46),
      .a(w61),
      .b(w62),
      .c(w63),
      .d(w64),
      .e(w65),
      .f(w66),
      .g(w67));

endmodule

