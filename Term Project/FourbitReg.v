module FourbitReg(RST,CLK,Din,Ce,Qout);

input RST;
input CLK;
input [3:0] Din;
input Ce;
output [3:0] Qout;

wire [3:0] b12;
wire [3:0] b7;
wire  w17;
wire  w14;
wire  w15;
wire  b12_3_w4;
wire  b12_2_w5;
wire  b12_1_w6;
wire  b7_3;
wire  b7_2;
wire  b7_1;
wire  b7_0;
wire  b12_0_w13;

assign w17 = RST;
assign w14 = CLK;
assign b12 = Din;
assign w15 = Ce;
assign Qout = b7;

assign b7[3] = b7_3;
assign b7[2] = b7_2;
assign b7[1] = b7_1;
assign b7[0] = b7_0;

assign b12_3_w4 = {b12[3]};
assign b12_2_w5 = {b12[2]};
assign b12_1_w6 = {b12[1]};
assign b12_0_w13 = {b12[0]};

PNU_DFF_Ce
     s0 (
      .D(b12_3_w4),
      .Q(b7_3),
      .reset(w17),
      .clock(w14),
      .Ce(w15));

PNU_DFF_Ce
     s1 (
      .D(b12_2_w5),
      .Q(b7_2),
      .reset(w17),
      .clock(w14),
      .Ce(w15));

PNU_DFF_Ce
     s2 (
      .D(b12_1_w6),
      .Q(b7_1),
      .reset(w17),
      .clock(w14),
      .Ce(w15));

PNU_DFF_Ce
     s3 (
      .Q(b7_0),
      .D(b12_0_w13),
      .reset(w17),
      .clock(w14),
      .Ce(w15));

endmodule

