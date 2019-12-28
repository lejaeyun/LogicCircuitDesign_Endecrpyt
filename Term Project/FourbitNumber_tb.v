module FourbitNumber_tb;

wire a;
wire b;
wire c;
reg clk;
wire com1;
wire com2;
wire com3;
wire com4;
wire com5;
wire com6;
wire com7;
wire com8;
wire d;
wire e;
wire [1:0] enrw;
wire f;
wire g;
reg num0;
reg num1;
reg num2;
reg num3;
reg num4;
reg num5;
reg num6;
reg num7;
reg num8;
reg num9;
wire [3:0] p29;
wire [3:0] p30;
wire [3:0] p31;
reg rst;
reg sharp;
reg star;
wire [1:0] worw;

FourbitNumber
 U0 (
  .a(a),
  .b(b),
  .c(c),
  .clk(clk),
  .com1(com1),
  .com2(com2),
  .com3(com3),
  .com4(com4),
  .com5(com5),
  .com6(com6),
  .com7(com7),
  .com8(com8),
  .d(d),
  .e(e),
  .enrw(enrw),
  .f(f),
  .g(g),
  .num0(num0),
  .num1(num1),
  .num2(num2),
  .num3(num3),
  .num4(num4),
  .num5(num5),
  .num6(num6),
  .num7(num7),
  .num8(num8),
  .num9(num9),
  .p29(p29),
  .p30(p30),
  .p31(p31),
  .rst(rst),
  .sharp(sharp),
  .star(star),
  .worw(worw));

  initial
  begin
    clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
  end

  initial
  begin
    num0 = 1'b0;
  end

  initial
  begin
    num1 = 1'b0;
    #2500 num1 = 1'b1;
    #100 num1 = 1'b0;
  end

  initial
  begin
    num2 = 1'b0;
    #500 num2 = 1'b1;
    #100 num2 = 1'b0;
  end

  initial
  begin
    num3 = 1'b0;
  end

  initial
  begin
    num4 = 1'b0;
    #1200 num4 = 1'b1;
    #100 num4 = 1'b0;
    #200 num4 = 1'b1;
    #100 num4 = 1'b0;
    #300 num4 = 1'b1;
    #100 num4 = 1'b0;
    #300 num4 = 1'b1;
    #100 num4 = 1'b0;
  end

  initial
  begin
    num5 = 1'b0;
    #700 num5 = 1'b1;
    #100 num5 = 1'b0;
  end

  initial
  begin
    num6 = 1'b0;
  end

  initial
  begin
    num7 = 1'b0;
  end

  initial
  begin
    num8 = 1'b0;
    #1000 num8 = 1'b1;
    #100 num8 = 1'b0;
  end

  initial
  begin
    num9 = 1'b0;
  end

  initial
  begin
    rst = 1'b0;
    #100 rst = 1'b1;
    #100 rst = 1'b0;
  end

  initial
  begin
    sharp = 1'b0;
    #1300 sharp = 1'b1;
    #100 sharp = 1'b0;
  end

  initial
  begin
    star = 1'b0;
    #300 star = 1'b1;
    #100 star = 1'b0;
  end

endmodule
