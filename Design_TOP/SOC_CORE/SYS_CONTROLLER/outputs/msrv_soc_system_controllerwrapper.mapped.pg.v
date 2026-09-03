/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Wed Apr 15 10:43:12 2026
/////////////////////////////////////////////////////////////


module msrv_soc_system_controllerwrapper_msrv_soc_adrdec_PA_BITS56_0 ( 
        PhysicalAddress, Base, Range, Supported, AccessValid, Size, SizeMask, 
        Sel, VDDL, VSS );
  input [55:0] PhysicalAddress;
  input [55:0] Base;
  input [55:0] Range;
  input [1:0] Size;
  input [3:0] SizeMask;
  input Supported, AccessValid;
  output Sel;
  input VDDL;
  input VSS;
  wire   N209, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122;

  SAEDRVT14_NR2_1 U1 ( .A1(PhysicalAddress[44]), .A2(PhysicalAddress[43]), .X(
        n110), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_INV_S_2 U2 ( .A(N209), .X(Sel), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U3 ( .A1(n122), .A2(n121), .A3(n120), .A4(n119), .X(N209), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U4 ( .A1(PhysicalAddress[31]), .A2(PhysicalAddress[34]), 
        .A3(PhysicalAddress[36]), .A4(PhysicalAddress[42]), .X(n122), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U5 ( .A1(PhysicalAddress[5]), .A2(PhysicalAddress[29]), .A3(
        PhysicalAddress[9]), .A4(PhysicalAddress[11]), .X(n121), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U6 ( .A1(PhysicalAddress[37]), .A2(PhysicalAddress[48]), 
        .A3(PhysicalAddress[35]), .A4(PhysicalAddress[10]), .X(n109), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U7 ( .A1(PhysicalAddress[15]), .A2(PhysicalAddress[14]), 
        .A3(PhysicalAddress[49]), .A4(PhysicalAddress[13]), .X(n108), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U8 ( .A1(PhysicalAddress[12]), .A2(PhysicalAddress[19]), 
        .A3(PhysicalAddress[26]), .A4(PhysicalAddress[18]), .X(n107), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U9 ( .A1(PhysicalAddress[21]), .A2(PhysicalAddress[20]), 
        .A3(PhysicalAddress[23]), .A4(PhysicalAddress[24]), .X(n106), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U10 ( .A1(n109), .A2(n108), .A3(n107), .A4(n106), .X(n120), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_NR4_0P75 U11 ( .A1(PhysicalAddress[39]), .A2(PhysicalAddress[41]), 
        .A3(PhysicalAddress[38]), .A4(PhysicalAddress[40]), .X(n112), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN4_1 U12 ( .A1(PhysicalAddress[28]), .A2(PhysicalAddress[16]), 
        .A3(PhysicalAddress[17]), .A4(n110), .X(n111), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_ND2_CDC_1 U13 ( .A1(n112), .A2(n111), .X(n118), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U14 ( .A1(PhysicalAddress[30]), .A2(PhysicalAddress[47]), 
        .A3(PhysicalAddress[22]), .A4(PhysicalAddress[45]), .X(n116), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U15 ( .A1(PhysicalAddress[55]), .A2(PhysicalAddress[51]), 
        .A3(PhysicalAddress[50]), .A4(PhysicalAddress[52]), .X(n115), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U16 ( .A1(PhysicalAddress[54]), .A2(PhysicalAddress[53]), 
        .A3(PhysicalAddress[27]), .A4(PhysicalAddress[7]), .X(n114), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U17 ( .A1(PhysicalAddress[25]), .A2(PhysicalAddress[8]), 
        .A3(PhysicalAddress[32]), .A4(PhysicalAddress[6]), .X(n113), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U18 ( .A1(n116), .A2(n115), .A3(n114), .A4(n113), .X(n117), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U19 ( .A1(PhysicalAddress[33]), .A2(PhysicalAddress[46]), 
        .A3(n118), .A4(n117), .X(n119), .VDD(VDDL), .VSS(VSS) );
endmodule


module msrv_soc_system_controllerwrapper_msrv_soc_adrdecs__939583_0 ( 
        PhysicalAddress, AccessRW, AccessRX, AccessRWXC, Size, SelRegions, VDDL, VSS );
  input [55:0] PhysicalAddress;
  input [1:0] Size;
  output [12:0] SelRegions;
  input AccessRW, AccessRX, AccessRWXC;
  input VDDL;
  input VSS;
  wire   n617, net1873;

  msrv_soc_system_controllerwrapper_msrv_soc_adrdec_PA_BITS56_0 systemcontrollerdec ( 
        .PhysicalAddress({PhysicalAddress[55:5], net1873, net1873, net1873, 
        net1873, net1873}), .Base({net1873, net1873, net1873, net1873, net1873, 
        net1873, net1873, net1873, net1873, net1873, net1873, net1873, net1873, 
        net1873, net1873, net1873, net1873, net1873, net1873, net1873, net1873, 
        net1873, net1873, net1873, net1873, net1873, net1873, n617, net1873, 
        net1873, net1873, net1873, net1873, net1873, net1873, net1873, net1873, 
        net1873, n617, n617, net1873, net1873, net1873, net1873, net1873, 
        net1873, net1873, net1873, net1873, net1873, net1873, net1873, net1873, 
        net1873, net1873, net1873}), .Range({net1873, net1873, net1873, 
        net1873, net1873, net1873, net1873, net1873, net1873, net1873, net1873, 
        net1873, net1873, net1873, net1873, net1873, net1873, net1873, net1873, 
        net1873, net1873, net1873, net1873, net1873, net1873, net1873, net1873, 
        net1873, net1873, net1873, net1873, net1873, net1873, net1873, net1873, 
        net1873, net1873, net1873, net1873, net1873, net1873, net1873, net1873, 
        net1873, net1873, net1873, net1873, net1873, net1873, net1873, net1873, 
        n617, n617, n617, n617, n617}), .Supported(n617), .AccessValid(n617), 
        .Size({net1873, net1873}), .SizeMask({n617, n617, n617, n617}), .Sel(
        SelRegions[12]), .VDDL(VDDL), .VSS(VSS) );
  SAEDRVT14_TIE1_4 U3 ( .X(n617), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U4 ( .X(net1873), .VDD(VDDL), .VSS(VSS) );
endmodule


module msrv_soc_system_controllerwrapper_msrv_soc_reset_synchronizer_0 ( clk, 
        d, q, VDDL, VSS );
  input clk, d;
  output q;
  input VDDL;
  input VSS;
  wire   n3, mid, n2;

  SAEDHVT14_FSDPQ_V2LP_1 mid_reg ( .D(d), .SI(n2), .SE(n2), .CK(clk), .Q(mid), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FDPQ_V3_1 q_reg ( .D(mid), .CK(clk), .Q(n3), .VDD(VDDL), .VSS(VSS)
         );
  SAEDRVT14_BUF_12 U3 ( .A(n3), .X(q), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U4 ( .X(n2), .VDD(VDDL), .VSS(VSS) );
endmodule


module msrv_soc_system_controllerwrapper_msrv_soc_glitch_free_ckt_0 ( reset, 
        clk, sel, counter, clk_out, VDDL, VSS );
  input reset, clk, sel, counter;
  output clk_out;
  input VDDL;
  input VSS;
  wire   q3, q0, N3, q1, N5, q2, N6, N8, clk_out1, n4, n2, n3, n5, n6, n7;

  SAEDHVT14_FSDNQ_V3_1 q1_reg ( .D(N5), .SI(n4), .SE(n4), .CK(clk), .Q(q1), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q0_reg ( .D(N3), .SI(n4), .SE(n4), .CK(clk), .Q(q0), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDNQ_V3_4 q3_reg ( .D(N8), .SI(n4), .SE(n4), .CK(counter), .Q(q3), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q2_reg ( .D(N6), .SI(n4), .SE(n4), .CK(counter), .Q(
        q2), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_2 C60 ( .A1(clk), .A2(q1), .X(clk_out1), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_OR2_1 U3 ( .A1(n3), .A2(n5), .X(n2), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_INV_S_1 U4 ( .A(reset), .X(n6), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U5 ( .A1(q0), .A2(n6), .X(N5), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_NR2_MM_1 U6 ( .A1(reset), .A2(n7), .X(N8), .VDD(VDDL), .VSS(VSS)
         );
  SAEDRVT14_NR2_MM_1 U7 ( .A1(n7), .A2(clk_out1), .X(n3), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_INV_S_3 U8 ( .A(q2), .X(n7), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_NR2_MM_1 U9 ( .A1(q3), .A2(clk_out1), .X(n5), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U10 ( .X(n4), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_OAI21_1 U11 ( .A1(q3), .A2(n7), .B(n2), .X(clk_out), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_NR3_1 U12 ( .A1(q3), .A2(reset), .A3(sel), .X(N3), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN3_0P5 U13 ( .A1(sel), .A2(n7), .A3(n6), .X(N6), .VDD(VDDL), .VSS(VSS) );
endmodule


module msrv_soc_system_controllerwrapper_msrv_soc_glitch_free_ckt_1 ( reset, 
        clk, sel, clk_out, counter_BAR, VDDL, VSS );
  input reset, clk, sel, counter_BAR;
  output clk_out;
  input VDDL;
  input VSS;
  wire   q3, q0, N3, q1, N5, q2, N6, N8, clk_out1, n2, n3, n5, n6, n7, n8, n9;

  SAEDHVT14_FSDNQ_V3_1 q1_reg ( .D(N5), .SI(n9), .SE(n9), .CK(clk), .Q(q1), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDNQ_V3_4 q3_reg ( .D(N8), .SI(n9), .SE(n9), .CK(n8), .Q(q3), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q2_reg ( .D(N6), .SI(n9), .SE(n9), .CK(n8), .Q(q2), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q0_reg ( .D(N3), .SI(n9), .SE(n9), .CK(clk), .Q(q0), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_2 C60 ( .A1(clk), .A2(q1), .X(clk_out1), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_OR2_1 U3 ( .A1(n3), .A2(n5), .X(n2), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_INV_S_1 U4 ( .A(reset), .X(n6), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_NR2_MM_1 U5 ( .A1(n7), .A2(clk_out1), .X(n3), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_NR2_MM_1 U6 ( .A1(reset), .A2(n7), .X(N8), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_INV_S_3 U7 ( .A(q2), .X(n7), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_NR2_MM_1 U8 ( .A1(q3), .A2(clk_out1), .X(n5), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U9 ( .A1(q0), .A2(n6), .X(N5), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_INV_S_1 U10 ( .A(counter_BAR), .X(n8), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U11 ( .X(n9), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_OAI21_1 U12 ( .A1(q3), .A2(n7), .B(n2), .X(clk_out), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_NR3_1 U13 ( .A1(q3), .A2(reset), .A3(sel), .X(N3), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN3_0P5 U14 ( .A1(sel), .A2(n7), .A3(n6), .X(N6), .VDD(VDDL), .VSS(VSS) );
endmodule


module msrv_soc_system_controllerwrapper_msrv_soc_clk_generator_0 ( clk, reset, 
        clk_divider_reg, clk_shift_enb_reg, clk_out, VDDL, VSS );
  input [31:0] clk_divider_reg;
  input [31:0] clk_shift_enb_reg;
  input clk, reset;
  output clk_out;
  input VDDL;
  input VSS;
  wire   N8, apb_clk_divide_by_2, apb_clk_divide_by_4, apb_clk_shift, n3, n4,
         n5, n6, n8, n2, n7, n9;
  wire   [1:0] counter;

  msrv_soc_system_controllerwrapper_msrv_soc_glitch_free_ckt_0 GLITCH_FREE_CKT0 ( 
        .reset(reset), .clk(clk), .sel(clk_divider_reg[0]), .counter(
        counter[0]), .clk_out(apb_clk_divide_by_2), .VDDL(VDDL), .VSS(VSS) );
  msrv_soc_system_controllerwrapper_msrv_soc_glitch_free_ckt_1 GLITCH_FREE_CKT1 ( 
        .reset(reset), .clk(clk), .sel(clk_divider_reg[1]), .clk_out(
        apb_clk_divide_by_4), .counter_BAR(n4), .VDDL(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDNQ_V3_1 apb_clk_shift_reg ( .D(n7), .SI(n3), .SE(n3), .CK(clk), 
        .Q(apb_clk_shift), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2_4 counter_reg_0_ ( .D(n9), .SI(n3), .SE(n3), .CK(clk), 
        .Q(counter[0]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_2 counter_reg_1_ ( .D(N8), .SI(n3), .SE(n3), .CK(clk), 
        .Q(counter[1]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OAI22_1P5 U12 ( .A1(clk_divider_reg[1]), .A2(apb_clk_divide_by_2), 
        .B1(n5), .B2(clk), .X(n6), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_OAI22_1 U10 ( .A1(clk_divider_reg[1]), .A2(clk), .B1(n5), .B2(
        apb_clk_divide_by_4), .X(n8), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OAI22_3 U3 ( .A1(clk_divider_reg[0]), .A2(n8), .B1(n2), .B2(n6), 
        .X(n7), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U4 ( .D0(n7), .D1(apb_clk_shift), .S(
        clk_shift_enb_reg[0]), .X(clk_out), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_INV_S_1 U5 ( .A(clk_divider_reg[1]), .X(n5), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_INV_0P75 U6 ( .A(clk_divider_reg[0]), .X(n2), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_INV_S_1 U7 ( .A(counter[0]), .X(n9), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_INV_S_1 U8 ( .A(counter[1]), .X(n4), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U9 ( .X(n3), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_OAI22_1 U11 ( .A1(counter[1]), .A2(n9), .B1(n4), .B2(counter[0]), 
        .X(N8), .VDD(VDDL), .VSS(VSS) );
endmodule


module msrv_soc_system_controllerwrapper_msrv_soc_flopenr_WIDTH1_0 ( clk, 
        reset, en, d, q, VDDL, VSS );
  input [0:0] d;
  output [0:0] q;
  input clk, reset, en;
  input VDDL;
  input VSS;
  wire   n1, n2, n4;

  SAEDHVT14_FSDPQ_V2LP_2 q_reg_0_ ( .D(n2), .SI(n1), .SE(n1), .CK(clk), .Q(
        q[0]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUXI2_1 U3 ( .D0(q[0]), .D1(d[0]), .S(en), .X(n4), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_NR2_MM_1 U4 ( .A1(reset), .A2(n4), .X(n2), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_TIE0_V1_2 U5 ( .X(n1), .VDD(VDDL), .VSS(VSS) );
endmodule



    module msrv_soc_system_controllerwrapper_SNPS_CLOCK_GATE_HIGH_msrv_soc_flopenr_WIDTH56_0 ( 
        CLK, EN, ENCLK, TE, VDDL, VSS );
  input CLK, EN, TE;
  output ENCLK;
  input VDDL;
  input VSS;


  SAEDHVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK), .VDD(VDDL), .VSS(VSS) );
endmodule


module msrv_soc_system_controllerwrapper_msrv_soc_flopenr_WIDTH56_0 ( clk, 
        reset, en, d, q, VDDL, VSS );
  input [55:0] d;
  output [55:0] q;
  input clk, reset, en;
  input VDDL;
  input VSS;
  wire   net1986, N4, N6, N8, N10, N12, N14, N16, N18, N20, N22, N24, N26, N28,
         N30, N32, N34, N36, N38, N40, N42, N44, N46, N48, N50, N52, N54, N56,
         N58, N60, N62, N64, N66, N68, N70, N72, N74, N76, N78, N80, N82, N84,
         N86, N88, N90, N92, N94, N96, N98, N100, N102, N104, N106, N108, N110,
         N112, N114, net1857, n59, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  msrv_soc_system_controllerwrapper_SNPS_CLOCK_GATE_HIGH_msrv_soc_flopenr_WIDTH56_0 clk_gate_q_reg ( 
        .CLK(clk), .EN(n59), .ENCLK(net1857), .TE(net1986), .VDDL(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_46_ ( .D(N96), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[46]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_31_ ( .D(N66), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[31]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_16_ ( .D(N36), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[16]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_1_ ( .D(N6), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[1]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_0_ ( .D(N4), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[0]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_2_ ( .D(N8), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[2]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_4_ ( .D(N12), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[4]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_5_ ( .D(N14), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[5]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_6_ ( .D(N16), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[6]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_7_ ( .D(N18), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[7]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_9_ ( .D(N22), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[9]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_10_ ( .D(N24), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[10]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_11_ ( .D(N26), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[11]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_12_ ( .D(N28), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[12]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_13_ ( .D(N30), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[13]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_14_ ( .D(N32), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[14]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_15_ ( .D(N34), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[15]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_18_ ( .D(N40), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[18]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_19_ ( .D(N42), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[19]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_20_ ( .D(N44), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[20]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_21_ ( .D(N46), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[21]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_22_ ( .D(N48), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[22]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_23_ ( .D(N50), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[23]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_24_ ( .D(N52), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[24]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_25_ ( .D(N54), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[25]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_26_ ( .D(N56), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[26]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_27_ ( .D(N58), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[27]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_28_ ( .D(N60), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[28]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_29_ ( .D(N62), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[29]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_30_ ( .D(N64), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[30]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_32_ ( .D(N68), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[32]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_33_ ( .D(N70), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[33]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_34_ ( .D(N72), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[34]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_35_ ( .D(N74), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[35]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_36_ ( .D(N76), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[36]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_37_ ( .D(N78), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[37]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_38_ ( .D(N80), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[38]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_39_ ( .D(N82), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[39]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_40_ ( .D(N84), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[40]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_41_ ( .D(N86), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[41]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_42_ ( .D(N88), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[42]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_43_ ( .D(N90), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[43]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_44_ ( .D(N92), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[44]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_45_ ( .D(N94), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[45]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_47_ ( .D(N98), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[47]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_48_ ( .D(N100), .SI(net1986), .SE(net1986), 
        .CK(net1857), .Q(q[48]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_49_ ( .D(N102), .SI(net1986), .SE(net1986), 
        .CK(net1857), .Q(q[49]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_50_ ( .D(N104), .SI(net1986), .SE(net1986), 
        .CK(net1857), .Q(q[50]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_51_ ( .D(N106), .SI(net1986), .SE(net1986), 
        .CK(net1857), .Q(q[51]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_52_ ( .D(N108), .SI(net1986), .SE(net1986), 
        .CK(net1857), .Q(q[52]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_53_ ( .D(N110), .SI(net1986), .SE(net1986), 
        .CK(net1857), .Q(q[53]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_54_ ( .D(N112), .SI(net1986), .SE(net1986), 
        .CK(net1857), .Q(q[54]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_55_ ( .D(N114), .SI(net1986), .SE(net1986), 
        .CK(net1857), .Q(q[55]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_17_ ( .D(N38), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[17]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_8_ ( .D(N20), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[8]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 q_reg_3_ ( .D(N10), .SI(net1986), .SE(net1986), .CK(
        net1857), .Q(q[3]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_NR2_1P5 U3 ( .A1(reset), .A2(n11), .X(n5), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_INV_S_1P5 U4 ( .A(en), .X(n11), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_BUF_S_6 U5 ( .A(n4), .X(n10), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_12 U6 ( .A(n5), .X(n4), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_10 U7 ( .A(n4), .X(n3), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_12 U8 ( .A(n4), .X(n7), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_BUF_S_6 U9 ( .A(n4), .X(n1), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U10 ( .A1(n7), .A2(d[18]), .X(N40), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U11 ( .A1(n8), .A2(d[51]), .X(N106), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 U12 ( .A1(n7), .A2(d[17]), .X(N38), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U13 ( .A1(n7), .A2(d[19]), .X(N42), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U14 ( .A1(n7), .A2(d[16]), .X(N36), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U15 ( .A1(n8), .A2(d[40]), .X(N84), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U16 ( .A1(n8), .A2(d[41]), .X(N86), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U17 ( .A1(n3), .A2(d[53]), .X(N110), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 U18 ( .A1(n3), .A2(d[37]), .X(N78), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U19 ( .A1(n3), .A2(d[52]), .X(N108), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 U20 ( .A1(n7), .A2(d[3]), .X(N10), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U21 ( .A1(n3), .A2(d[36]), .X(N76), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U22 ( .A1(n3), .A2(d[5]), .X(N14), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U23 ( .A1(n3), .A2(d[4]), .X(N12), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U24 ( .A1(n8), .A2(d[50]), .X(N104), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 U25 ( .A1(n8), .A2(d[1]), .X(N6), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_CDC_4 U26 ( .A(n4), .X(n6), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U27 ( .A1(n4), .A2(d[32]), .X(N68), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U28 ( .A1(n4), .A2(d[6]), .X(N16), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_S_6 U29 ( .A(n4), .X(n8), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U30 ( .A1(n4), .A2(d[42]), .X(N88), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U31 ( .A1(n6), .A2(d[25]), .X(N54), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U32 ( .A1(n10), .A2(d[8]), .X(N20), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U33 ( .A1(n10), .A2(d[10]), .X(N24), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 U34 ( .A1(n3), .A2(d[55]), .X(N114), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 U35 ( .A1(n7), .A2(d[23]), .X(N50), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U36 ( .A1(n3), .A2(d[54]), .X(N112), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 U37 ( .A1(n10), .A2(d[15]), .X(N34), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 U38 ( .A1(n10), .A2(d[9]), .X(N22), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U39 ( .A1(n10), .A2(d[14]), .X(N32), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 U40 ( .A1(n10), .A2(d[11]), .X(N26), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 U41 ( .A1(n7), .A2(d[22]), .X(N48), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U42 ( .A1(n6), .A2(d[24]), .X(N52), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U43 ( .A1(n6), .A2(d[26]), .X(N56), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U44 ( .A1(n3), .A2(d[39]), .X(N82), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U45 ( .A1(n6), .A2(d[27]), .X(N58), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U46 ( .A1(n3), .A2(d[38]), .X(N80), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U47 ( .A1(n7), .A2(d[21]), .X(N46), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U48 ( .A1(n1), .A2(d[30]), .X(N64), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U49 ( .A1(n9), .A2(d[35]), .X(N74), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U50 ( .A1(n7), .A2(d[20]), .X(N44), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U51 ( .A1(n7), .A2(d[7]), .X(N18), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U52 ( .A1(n9), .A2(d[47]), .X(N98), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U53 ( .A1(n6), .A2(d[49]), .X(N102), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 U54 ( .A1(n1), .A2(d[31]), .X(N66), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U55 ( .A1(n10), .A2(d[12]), .X(N28), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 U56 ( .A1(n10), .A2(d[13]), .X(N30), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 U57 ( .A1(n9), .A2(d[34]), .X(N72), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U58 ( .A1(n1), .A2(d[48]), .X(N100), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 U59 ( .A1(n1), .A2(d[46]), .X(N96), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U60 ( .A1(n7), .A2(d[33]), .X(N70), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U61 ( .A1(n1), .A2(d[45]), .X(N94), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U62 ( .A1(n1), .A2(d[29]), .X(N62), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U63 ( .A1(n8), .A2(d[44]), .X(N92), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U64 ( .A1(n1), .A2(d[28]), .X(N60), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U65 ( .A1(n1), .A2(d[43]), .X(N90), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U66 ( .A1(n9), .A2(d[2]), .X(N8), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 U67 ( .A1(n4), .A2(d[0]), .X(N4), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U68 ( .X(net1986), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_3 U69 ( .A(n4), .X(n9), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_ND2B_1P5 U70 ( .A(reset), .B(n11), .X(n59), .VDD(VDDL), .VSS(VSS)
         );
endmodule


module msrv_soc_system_controllerwrapper_msrv_soc_flopr_WIDTH1_0 ( clk, reset, 
        d, q, VDDL, VSS );
  input [0:0] d;
  output [0:0] q;
  input clk, reset;
  input VDDL;
  input VSS;
  wire   N3, n1;

  SAEDHVT14_FSDPQ_V2LP_1 q_reg_0_ ( .D(N3), .SI(n1), .SE(n1), .CK(clk), .Q(
        q[0]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U3 ( .X(n1), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2B_MM_1 U4 ( .B(d[0]), .A(reset), .X(N3), .VDD(VDDL), .VSS(VSS)
         );
endmodule


module msrv_soc_system_controllerwrapper_msrv_soc_mux2_WIDTH56_0 ( d0, d1, s, 
        y, VDDL, VSS );
  input [55:0] d0;
  input [55:0] d1;
  output [55:0] y;
  input s;
  input VDDL;
  input VSS;
  wire   n1, n2, n5, n6, n7, n8, n9, n10, n11;

  SAEDHVT14_BUF_12 U1 ( .A(n9), .X(n10), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_12 U2 ( .A(n9), .X(n7), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_BUF_10 U3 ( .A(s), .X(n9), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_S_6 U4 ( .A(s), .X(n11), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_BUF_S_6 U5 ( .A(s), .X(n5), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_3 U6 ( .A(n9), .X(n1), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_MUX2_MM_1 U7 ( .D0(d0[3]), .D1(d1[3]), .S(n11), .X(y[3]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_3 U8 ( .A(n9), .X(n2), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_1P5 U9 ( .A(s), .X(n6), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U10 ( .D0(d0[35]), .D1(d1[35]), .S(n7), .X(y[35]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_3 U11 ( .A(n9), .X(n8), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U12 ( .D0(d0[34]), .D1(d1[34]), .S(n7), .X(y[34]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U13 ( .D0(d0[31]), .D1(d1[31]), .S(n2), .X(y[31]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U14 ( .D0(d0[30]), .D1(d1[30]), .S(n2), .X(y[30]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U15 ( .D0(d0[29]), .D1(d1[29]), .S(n9), .X(y[29]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U16 ( .D0(d0[9]), .D1(d1[9]), .S(n10), .X(y[9]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U17 ( .D0(d0[54]), .D1(d1[54]), .S(n10), .X(y[54]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U18 ( .D0(d0[52]), .D1(d1[52]), .S(n10), .X(y[52]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U19 ( .D0(d0[4]), .D1(d1[4]), .S(n1), .X(y[4]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U20 ( .D0(d0[51]), .D1(d1[51]), .S(n10), .X(y[51]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U21 ( .D0(d0[49]), .D1(d1[49]), .S(n10), .X(y[49]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U22 ( .D0(d0[48]), .D1(d1[48]), .S(n10), .X(y[48]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U23 ( .D0(d0[55]), .D1(d1[55]), .S(n10), .X(y[55]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U24 ( .D0(d0[42]), .D1(d1[42]), .S(n8), .X(y[42]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U25 ( .D0(d0[41]), .D1(d1[41]), .S(n8), .X(y[41]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U26 ( .D0(d0[39]), .D1(d1[39]), .S(n7), .X(y[39]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U27 ( .D0(d0[38]), .D1(d1[38]), .S(n7), .X(y[38]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U28 ( .D0(d0[47]), .D1(d1[47]), .S(n7), .X(y[47]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U29 ( .D0(d0[45]), .D1(d1[45]), .S(n7), .X(y[45]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U30 ( .D0(d0[7]), .D1(d1[7]), .S(n1), .X(y[7]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U31 ( .D0(d0[46]), .D1(d1[46]), .S(n9), .X(y[46]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U32 ( .D0(d0[44]), .D1(d1[44]), .S(n7), .X(y[44]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U33 ( .D0(d0[43]), .D1(d1[43]), .S(n8), .X(y[43]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U34 ( .D0(d0[50]), .D1(d1[50]), .S(n10), .X(y[50]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U35 ( .D0(d0[33]), .D1(d1[33]), .S(n7), .X(y[33]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U36 ( .D0(d0[40]), .D1(d1[40]), .S(n8), .X(y[40]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U37 ( .D0(d0[36]), .D1(d1[36]), .S(n7), .X(y[36]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U38 ( .D0(d0[26]), .D1(d1[26]), .S(n6), .X(y[26]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U39 ( .D0(d0[27]), .D1(d1[27]), .S(n6), .X(y[27]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U40 ( .D0(d0[37]), .D1(d1[37]), .S(n7), .X(y[37]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U41 ( .D0(d0[22]), .D1(d1[22]), .S(n5), .X(y[22]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U42 ( .D0(d0[20]), .D1(d1[20]), .S(n5), .X(y[20]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U43 ( .D0(d0[19]), .D1(d1[19]), .S(n5), .X(y[19]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U44 ( .D0(d0[24]), .D1(d1[24]), .S(n2), .X(y[24]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U45 ( .D0(d0[25]), .D1(d1[25]), .S(n2), .X(y[25]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U46 ( .D0(d0[32]), .D1(d1[32]), .S(n7), .X(y[32]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U47 ( .D0(d0[28]), .D1(d1[28]), .S(n9), .X(y[28]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U48 ( .D0(d0[8]), .D1(d1[8]), .S(n11), .X(y[8]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U49 ( .D0(d0[12]), .D1(d1[12]), .S(n11), .X(y[12]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U50 ( .D0(d0[13]), .D1(d1[13]), .S(n11), .X(y[13]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U51 ( .D0(d0[10]), .D1(d1[10]), .S(n10), .X(y[10]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U52 ( .D0(d0[1]), .D1(d1[1]), .S(n9), .X(y[1]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U53 ( .D0(d0[0]), .D1(d1[0]), .S(n9), .X(y[0]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U54 ( .D0(d0[53]), .D1(d1[53]), .S(n10), .X(y[53]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U55 ( .D0(d0[5]), .D1(d1[5]), .S(n1), .X(y[5]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U56 ( .D0(d0[11]), .D1(d1[11]), .S(n10), .X(y[11]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U57 ( .D0(d0[6]), .D1(d1[6]), .S(n1), .X(y[6]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U58 ( .D0(d0[21]), .D1(d1[21]), .S(n5), .X(y[21]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U59 ( .D0(d0[14]), .D1(d1[14]), .S(n11), .X(y[14]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U60 ( .D0(d0[18]), .D1(d1[18]), .S(n5), .X(y[18]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U61 ( .D0(d0[17]), .D1(d1[17]), .S(n5), .X(y[17]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U62 ( .D0(d0[16]), .D1(d1[16]), .S(n5), .X(y[16]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U63 ( .D0(d0[15]), .D1(d1[15]), .S(n11), .X(y[15]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U64 ( .D0(d0[23]), .D1(d1[23]), .S(s), .X(y[23]), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_MUX2_MM_1 U65 ( .D0(d0[2]), .D1(d1[2]), .S(n9), .X(y[2]), .VDD(VDDL), .VSS(VSS) );
endmodule



    module msrv_soc_system_controllerwrapper_SNPS_CLOCK_GATE_HIGH_msrv_soc_register_bank__939583_0 ( 
        CLK, EN, ENCLK, TE, VDDL, VSS );
  input CLK, EN, TE;
  output ENCLK;
  input VDDL;
  input VSS;


  SAEDHVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK), .VDD(VDDL), .VSS(VSS) );
endmodule


module msrv_soc_system_controllerwrapper_msrv_soc_register_bank__939583_0 ( 
        clk, reset, sel, wr_enable, ready, trans, addr, wdata, ready_sys_ctrl, 
        resp_sys_ctrl, clk_divider_reg, clk_shift_enb_reg, pmu_state_config, VDDL, VSS );
  input [1:0] trans;
  input [55:0] addr;
  input [63:0] wdata;
  output [31:0] clk_divider_reg;
  output [31:0] clk_shift_enb_reg;
  output [31:0] pmu_state_config;
  input clk, reset, sel, wr_enable, ready;
  output ready_sys_ctrl, resp_sys_ctrl;
  input VDDL;
  input VSS;
  wire   net1984, n37, n39, n40, write, writeD, N104, net1839, n2, n4, n6, n38,
         n62, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36;
  wire   [55:0] addr_D;
  wire   [55:0] Reg_Addr;

  msrv_soc_system_controllerwrapper_msrv_soc_flopenr_WIDTH1_0 writereg ( .clk(
        clk), .reset(reset), .en(ready), .d(write), .q(writeD), .VDDL(VDDL), .VSS(VSS) );
  msrv_soc_system_controllerwrapper_msrv_soc_flopenr_WIDTH56_0 haddrreg ( 
        .clk(clk), .reset(reset), .en(ready), .d(addr), .q(addr_D), .VDDL(VDDL), .VSS(VSS) );
  msrv_soc_system_controllerwrapper_msrv_soc_flopr_WIDTH1_0 readyreg ( .clk(
        clk), .reset(reset), .d(n62), .q(ready_sys_ctrl), .VDDL(VDDL), .VSS(VSS) );
  msrv_soc_system_controllerwrapper_msrv_soc_mux2_WIDTH56_0 adrmux ( .d0(addr), 
        .d1(addr_D), .s(n36), .y(Reg_Addr), .VDDL(VDDL), .VSS(VSS) );
  msrv_soc_system_controllerwrapper_SNPS_CLOCK_GATE_HIGH_msrv_soc_register_bank__939583_0 clk_gate_pmu_state_config_register_reg ( 
        .CLK(clk), .EN(N104), .ENCLK(net1839), .TE(net1984), .VDDL(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_18_ ( .D(wdata[18]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n38), .Q(
        pmu_state_config[18]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_1_ ( .D(wdata[1]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n33), .Q(n39), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_FSDPRBQ_V2_4 pmu_state_config_register_reg_4_ ( .D(wdata[4]), .SI(
        net1984), .SE(net1984), .CK(net1839), .RD(n38), .Q(pmu_state_config[4]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2_4 pmu_state_config_register_reg_5_ ( .D(wdata[5]), .SI(
        net1984), .SE(net1984), .CK(net1839), .RD(n33), .Q(pmu_state_config[5]), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_6_ ( .D(wdata[6]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n33), .Q(
        pmu_state_config[6]), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_FSDPRBQ_V2_4 pmu_state_config_register_reg_3_ ( .D(wdata[3]), .SI(
        net1984), .SE(net1984), .CK(net1839), .RD(n33), .Q(pmu_state_config[3]), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_FSDPRBQ_V2_4 clk_div_register_reg_1_ ( .D(n6), .SI(net1984), .SE(
        net1984), .CK(clk), .RD(n33), .Q(clk_divider_reg[1]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_7_ ( .D(wdata[7]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n34), .Q(
        pmu_state_config[7]), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_FSDPRBQ_V2_4 clk_div_register_reg_0_ ( .D(n4), .SI(net1984), .SE(
        net1984), .CK(clk), .RD(n33), .Q(clk_divider_reg[0]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_24_ ( .D(wdata[24]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n34), .Q(
        pmu_state_config[24]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_25_ ( .D(wdata[25]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n35), .Q(
        pmu_state_config[25]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_26_ ( .D(wdata[26]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n35), .Q(
        pmu_state_config[26]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_27_ ( .D(wdata[27]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n34), .Q(
        pmu_state_config[27]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_10_ ( .D(wdata[10]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n33), .Q(
        pmu_state_config[10]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_15_ ( .D(wdata[15]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n38), .Q(
        pmu_state_config[15]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_23_ ( .D(wdata[23]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n34), .Q(
        pmu_state_config[23]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_11_ ( .D(wdata[11]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n33), .Q(
        pmu_state_config[11]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_13_ ( .D(wdata[13]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n33), .Q(
        pmu_state_config[13]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_14_ ( .D(wdata[14]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n35), .Q(
        pmu_state_config[14]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_22_ ( .D(wdata[22]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n35), .Q(
        pmu_state_config[22]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_21_ ( .D(wdata[21]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n35), .Q(
        pmu_state_config[21]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_28_ ( .D(wdata[28]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n35), .Q(
        pmu_state_config[28]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 clk_shift_enb_register_reg_0_ ( .D(n2), .SI(net1984), .SE(net1984), .CK(clk), .RD(n33), .Q(clk_shift_enb_reg[0]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_2_ ( .D(wdata[2]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n38), .Q(n37), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_12_ ( .D(wdata[12]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n38), .Q(
        pmu_state_config[12]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_20_ ( .D(wdata[20]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n35), .Q(
        pmu_state_config[20]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_19_ ( .D(wdata[19]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n38), .Q(
        pmu_state_config[19]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_17_ ( .D(wdata[17]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n38), .Q(
        pmu_state_config[17]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_16_ ( .D(wdata[16]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n38), .Q(
        pmu_state_config[16]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_8_ ( .D(wdata[8]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n35), .Q(
        pmu_state_config[8]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_0_ ( .D(wdata[0]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n33), .Q(n40), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_29_ ( .D(wdata[29]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n33), .Q(
        pmu_state_config[29]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_30_ ( .D(wdata[30]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n34), .Q(
        pmu_state_config[30]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_31_ ( .D(wdata[31]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n34), .Q(
        pmu_state_config[31]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPRBQ_V2LP_2 pmu_state_config_register_reg_9_ ( .D(wdata[9]), 
        .SI(net1984), .SE(net1984), .CK(net1839), .RD(n38), .Q(
        pmu_state_config[9]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_16 U3 ( .A(n35), .X(n33), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_NR2_1 U4 ( .A1(n29), .A2(n30), .X(N104), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_1P5 U5 ( .A1(n28), .A2(Reg_Addr[2]), .X(n30), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_NR2_1 U6 ( .A1(Reg_Addr[8]), .A2(Reg_Addr[9]), .X(n10), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_INV_S_1 U7 ( .A(Reg_Addr[3]), .X(n29), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_INV_S_8 U8 ( .A(reset), .X(n38), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_NR2_MM_3 U9 ( .A1(Reg_Addr[3]), .A2(n30), .X(n31), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_S_6 U10 ( .A(n35), .X(n34), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_12 U11 ( .A(n38), .X(n35), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_BUF_3 U12 ( .A(n32), .X(n36), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_BUF_S_6 U13 ( .A(n40), .X(pmu_state_config[0]), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_BUF_S_6 U14 ( .A(n39), .X(pmu_state_config[1]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_BUF_S_6 U15 ( .A(n37), .X(pmu_state_config[2]), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_INV_S_2 U16 ( .A(writeD), .X(n62), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U17 ( .X(net1984), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U18 ( .D0(wdata[0]), .D1(clk_shift_enb_reg[0]), .S(n27), 
        .X(n2), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U19 ( .D0(clk_divider_reg[0]), .D1(wdata[0]), .S(n31), 
        .X(n4), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_MUX2_MM_1 U20 ( .D0(clk_divider_reg[1]), .D1(wdata[1]), .S(n31), 
        .X(n6), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_OR4_1 U21 ( .A1(n26), .A2(n25), .A3(n24), .A4(n23), .X(n28), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_ND2_CDC_1 U22 ( .A1(Reg_Addr[16]), .A2(Reg_Addr[17]), .X(n9), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U23 ( .A1(Reg_Addr[14]), .A2(Reg_Addr[18]), .A3(Reg_Addr[21]), .A4(n62), .X(n8), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U24 ( .A1(Reg_Addr[15]), .A2(Reg_Addr[23]), .A3(n9), .A4(n8), 
        .X(n26), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_ND2_CDC_1 U25 ( .A1(Reg_Addr[28]), .A2(n10), .X(n14), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U26 ( .A1(Reg_Addr[12]), .A2(Reg_Addr[13]), .A3(Reg_Addr[54]), .A4(Reg_Addr[10]), .X(n13), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U27 ( .A1(Reg_Addr[11]), .A2(Reg_Addr[5]), .A3(Reg_Addr[6]), 
        .A4(Reg_Addr[4]), .X(n12), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U28 ( .A1(Reg_Addr[52]), .A2(Reg_Addr[1]), .A3(Reg_Addr[53]), 
        .A4(Reg_Addr[0]), .X(n11), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U29 ( .A1(n14), .A2(n13), .A3(n12), .A4(n11), .X(n25), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U30 ( .A1(Reg_Addr[51]), .A2(Reg_Addr[48]), .A3(Reg_Addr[55]), .A4(Reg_Addr[49]), .X(n18), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U31 ( .A1(Reg_Addr[46]), .A2(Reg_Addr[7]), .A3(Reg_Addr[45]), 
        .A4(Reg_Addr[47]), .X(n17), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U32 ( .A1(Reg_Addr[50]), .A2(Reg_Addr[43]), .A3(Reg_Addr[44]), .A4(Reg_Addr[35]), .X(n16), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U33 ( .A1(Reg_Addr[41]), .A2(Reg_Addr[42]), .A3(Reg_Addr[38]), .A4(Reg_Addr[39]), .X(n15), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U34 ( .A1(n18), .A2(n17), .A3(n16), .A4(n15), .X(n24), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U35 ( .A1(Reg_Addr[40]), .A2(Reg_Addr[33]), .A3(Reg_Addr[34]), .A4(Reg_Addr[36]), .X(n22), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U36 ( .A1(Reg_Addr[37]), .A2(Reg_Addr[26]), .A3(Reg_Addr[27]), .A4(Reg_Addr[31]), .X(n21), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U37 ( .A1(Reg_Addr[32]), .A2(Reg_Addr[29]), .A3(Reg_Addr[24]), .A4(Reg_Addr[25]), .X(n20), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U38 ( .A1(Reg_Addr[30]), .A2(Reg_Addr[22]), .A3(Reg_Addr[19]), .A4(Reg_Addr[20]), .X(n19), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR4_1 U39 ( .A1(n22), .A2(n21), .A3(n20), .A4(n19), .X(n23), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_ND3B_0P75 U40 ( .A(n28), .B1(n29), .B2(Reg_Addr[2]), .X(n27), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_ND2_CDC_1 U41 ( .A1(ready), .A2(n62), .X(n32), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN4_1 U42 ( .A1(ready), .A2(sel), .A3(wr_enable), .A4(trans[1]), 
        .X(write), .VDD(VDDL), .VSS(VSS) );
endmodule


module msrv_soc_system_controllerwrapper_msrv_soc_pmu_0 ( clk, 
        pmu_state_config, uart_powergate_enb, uart_isolation_enb, 
        uart_retention_save_enb, uart_retention_restore_enb, spi_powergate_enb, 
        spi_isolation_enb, spi_retention_save_enb, spi_retention_restore_enb, 
        eeprom_powergate_enb, eeprom_isolation_enb, VDDL, VSS );
  input [31:0] pmu_state_config;
  input clk;
  output uart_powergate_enb, uart_isolation_enb, uart_retention_save_enb,
         uart_retention_restore_enb, spi_powergate_enb, spi_isolation_enb,
         spi_retention_save_enb, spi_retention_restore_enb,
         eeprom_powergate_enb, eeprom_isolation_enb;
  input VDDL;
  input VSS;
  wire   spi_powergate_enb_delay1, uart_powergate_enb_delay1,
         eeprom_powergate_enb_delay1, uart_powergate_enb_delay2,
         spi_powergate_enb_delay2, eeprom_powergate_enb_delay2,
         uart_isolation_enb_delay2, spi_isolation_enb_delay2,
         eeprom_isolation_enb_delay2, uart_isolation_enb_delay3,
         spi_isolation_enb_delay3, uart_isolation_enb_delay4,
         spi_isolation_enb_delay4, N50, N51, N76, N77, N78, N79, N80, N81, N82,
         N83, N110, N111, N112, N113, N114, N115, N116, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, N136,
         N137, N138, N139, N140, N141, N142, N143, N144, N145, N146, N147,
         N148, N149, N177, N178, N179, N180, N181, N182, N211, N212, N213,
         N214, N215, N218, N219, N220, N245, N246, N247, N248, N280, N281,
         N312, N313, N314, N316, N317, N319, N320, N322, N323, n16, n17, n18,
         n19, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, net3405, net3406, net3407, net3408, net3409, net3410,
         net3411, net3412, net3413, net3414, net3415, net3416, net3417,
         net3418, net3419, net3420, net3421, net3422, net3423, net3424,
         net3425, net3426, net3427, net3428, net3429, net3430, net3431,
         net3432, net3433, net3434, net3435, net3436, net3437, net3438,
         net3439, net3440, net3441, net3442, net3443, net3444, net3445,
         net3446, net3447, net3448, net3449, net3450, net3451, net3452,
         net3453, net3454, net3455, net3456, net3457, net3458, net3459,
         net3460, net3461, net3462, net3463, net3464, net3465, net3466,
         net3467, net3468, net3469, net3470, net3471, net3472, net3473,
         net3474, net3475, net3476, net3477, net3478, net3479, net3480,
         net3481, net3482, net3483, net3484, net3485, net3486, net3487,
         net3488, net3489, net3490, net3491, net3492, net3493, net3494,
         net3495, net3496, net3497, net3498, net3499, net3500, net3501,
         net3502, net3503, net3504, net3505, net3506, net3507, net3508,
         net3509, net3510, net3511, net3512, net3513, net3514, net3515,
         net3516, net3517, net3518, net3519, net3520, net3521, net3522,
         net3523, net3524, net3525, net3526, net3527, net3528, net3529,
         net3530, net3531, net3532, net3533, net3534, net3535, net3536,
         net3537, net3538, net3539, net3540, net3541, net3542, net3543,
         net3544, net3545, net3546, net3547, net3548, net3549, net3550,
         net3551, net3552, net3553, net3554, net3555, net3556, net3557,
         net3558, net3559, net3560, net3561, net3562, net3563, net3564,
         net3565, net3566, net3567, net3568, net3569, net3570, net3571,
         net3572, net3573, net3574, net3575, net3576, net3577, net3578,
         net3579, net3580, net3581, net3582, net3583, net3584, net3585,
         net3586, net3587, net3588, net3589, net3590, net3591, net3592,
         net3593, net3594, net3595, net3596, net3597, net3598, net3599,
         net3600, net3601, net3602, net3603, net3604, net3605, net3606,
         net3607, net3608, net3609, net3610, net3611, net3612, net3613,
         net3614, net3615, net3616, net3617, net3618, net3619, net3620,
         net3621, net3622, net3623, net3624, net3625, net3626, net3627,
         net3628, net3629, net3630, net3631, net3632, net3633, net3634,
         net3635, net3636, net3637, net3638, net3639, net3640, net3641,
         net3642, net3643, net3644, net3645, net3646, net3647, net3648,
         net3649, net3650, net3651, net3652, net3653, net3654, net3655,
         net3656, net3657, net3658, net3659, net3660, net3661, net3662,
         net3663, net3664, net3665, net3666, net3667, net3668, net3669,
         net3670, net3671, net3672, net3673, net3674, net3675, net3676,
         net3677, net3678, net3679, net3680, net3681, net3682, net3683,
         net3684, net3685, net3686, net3687, net3688, net3689, net3690,
         net3691, net3692, net3693, net3694, net3695, net3696, net3697,
         net3698, net3699, net3700, net3701, net3702, net3703, net3704,
         net3705, net3706, net3707, net3708, net3709, net3710, net3711,
         net3712, net3713, net3714, net3715, net3716, net3717, net3718,
         net3719, net3720, net3721, net3722, net3723, net3724, net3725,
         net3726, net3727, net3728, net3729, net3730, net3731, net3732,
         net3733, net3734, net3735, net3736, net3737, net3738, net3739,
         net3740, net3741, net3742, net3743, net3744, net3745, net3746,
         net3747, net3748, net3749, net3750, net3751, net3752, net3753,
         net3754, net3755, net3756, net3757, net3758, net3759, net3760,
         net3761, net3762, net3763, net3764, net3765, net3766, net3767,
         net3768, net3769, net3770, net3771;

  SAEDHVT14_EO2_0P5 C429 ( .A1(spi_isolation_enb_delay3), .A2(
        spi_isolation_enb), .X(spi_retention_restore_enb), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_EO2_0P5 C428 ( .A1(uart_isolation_enb_delay3), .A2(
        uart_isolation_enb), .X(uart_retention_restore_enb), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C423 ( .A1(N322), .A2(N323), .X(uart_retention_save_enb), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C418 ( .A1(N319), .A2(N320), .X(spi_retention_save_enb), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C350 ( .A1(net3770), .A2(net3771), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C349 ( .A1(net3768), .A2(net3769), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C348 ( .A1(net3766), .A2(net3767), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C347 ( .A1(net3764), .A2(net3765), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C346 ( .A1(net3762), .A2(net3763), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C345 ( .A1(net3760), .A2(net3761), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C344 ( .A1(net3758), .A2(net3759), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C343 ( .A1(net3756), .A2(net3757), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C342 ( .A1(net3754), .A2(net3755), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C341 ( .A1(net3752), .A2(net3753), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C340 ( .A1(net3750), .A2(net3751), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C339 ( .A1(net3748), .A2(net3749), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C338 ( .A1(net3746), .A2(net3747), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C337 ( .A1(net3744), .A2(net3745), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C336 ( .A1(net3742), .A2(net3743), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C335 ( .A1(net3740), .A2(net3741), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C334 ( .A1(net3738), .A2(net3739), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C333 ( .A1(net3736), .A2(net3737), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C332 ( .A1(net3734), .A2(net3735), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C331 ( .A1(net3732), .A2(net3733), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C330 ( .A1(net3730), .A2(net3731), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C329 ( .A1(net3728), .A2(net3729), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C328 ( .A1(net3726), .A2(net3727), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C327 ( .A1(net3724), .A2(net3725), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C326 ( .A1(net3722), .A2(net3723), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C325 ( .A1(net3720), .A2(net3721), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C324 ( .A1(net3718), .A2(net3719), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C323 ( .A1(net3716), .A2(net3717), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C318 ( .A1(net3714), .A2(net3715), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C317 ( .A1(net3712), .A2(net3713), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C316 ( .A1(net3710), .A2(net3711), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C315 ( .A1(net3708), .A2(net3709), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C314 ( .A1(net3706), .A2(net3707), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C313 ( .A1(net3704), .A2(net3705), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C312 ( .A1(net3702), .A2(net3703), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C311 ( .A1(net3700), .A2(net3701), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C310 ( .A1(net3698), .A2(net3699), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C309 ( .A1(net3696), .A2(net3697), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C308 ( .A1(net3694), .A2(net3695), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C307 ( .A1(net3692), .A2(net3693), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C306 ( .A1(net3690), .A2(net3691), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C305 ( .A1(net3688), .A2(net3689), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C304 ( .A1(net3686), .A2(net3687), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C303 ( .A1(net3684), .A2(net3685), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C302 ( .A1(net3682), .A2(net3683), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C301 ( .A1(net3680), .A2(net3681), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C300 ( .A1(net3678), .A2(net3679), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C299 ( .A1(net3676), .A2(net3677), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C298 ( .A1(net3674), .A2(net3675), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C297 ( .A1(net3672), .A2(net3673), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C296 ( .A1(net3670), .A2(net3671), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C295 ( .A1(net3668), .A2(net3669), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C294 ( .A1(net3666), .A2(net3667), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C293 ( .A1(net3664), .A2(net3665), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C292 ( .A1(net3662), .A2(net3663), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C290 ( .A1(net3660), .A2(net3661), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C283 ( .A1(net3658), .A2(net3659), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C282 ( .A1(net3656), .A2(net3657), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C281 ( .A1(net3654), .A2(net3655), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C280 ( .A1(net3652), .A2(net3653), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C279 ( .A1(net3650), .A2(net3651), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C278 ( .A1(net3648), .A2(net3649), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C277 ( .A1(net3646), .A2(net3647), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C276 ( .A1(net3644), .A2(net3645), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C275 ( .A1(net3642), .A2(net3643), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C274 ( .A1(net3640), .A2(net3641), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C273 ( .A1(net3638), .A2(net3639), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C272 ( .A1(net3636), .A2(net3637), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C271 ( .A1(net3634), .A2(net3635), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C270 ( .A1(net3632), .A2(net3633), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C269 ( .A1(net3630), .A2(net3631), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C268 ( .A1(net3628), .A2(net3629), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C267 ( .A1(net3626), .A2(net3627), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C266 ( .A1(net3624), .A2(net3625), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C265 ( .A1(net3622), .A2(net3623), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C264 ( .A1(net3620), .A2(net3621), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C263 ( .A1(net3618), .A2(net3619), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C262 ( .A1(net3616), .A2(net3617), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C261 ( .A1(net3614), .A2(net3615), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C260 ( .A1(net3612), .A2(net3613), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C249 ( .A1(net3610), .A2(net3611), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C248 ( .A1(net3608), .A2(net3609), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C247 ( .A1(net3606), .A2(net3607), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C246 ( .A1(net3604), .A2(net3605), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C245 ( .A1(net3602), .A2(net3603), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C244 ( .A1(net3600), .A2(net3601), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C243 ( .A1(net3598), .A2(net3599), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C242 ( .A1(net3596), .A2(net3597), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C241 ( .A1(net3594), .A2(net3595), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C240 ( .A1(net3592), .A2(net3593), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C239 ( .A1(net3590), .A2(net3591), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C238 ( .A1(net3588), .A2(net3589), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C237 ( .A1(net3586), .A2(net3587), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C236 ( .A1(net3584), .A2(net3585), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C235 ( .A1(net3582), .A2(net3583), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C234 ( .A1(net3580), .A2(net3581), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C233 ( .A1(net3578), .A2(net3579), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C232 ( .A1(net3576), .A2(net3577), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C231 ( .A1(net3574), .A2(net3575), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C230 ( .A1(net3572), .A2(net3573), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C229 ( .A1(net3570), .A2(net3571), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C228 ( .A1(net3568), .A2(net3569), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C227 ( .A1(net3566), .A2(net3567), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C226 ( .A1(net3564), .A2(net3565), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C225 ( .A1(net3562), .A2(net3563), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C224 ( .A1(net3560), .A2(net3561), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C215 ( .A1(net3558), .A2(net3559), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C214 ( .A1(net3556), .A2(net3557), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C213 ( .A1(net3554), .A2(net3555), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C212 ( .A1(net3552), .A2(net3553), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C211 ( .A1(net3550), .A2(net3551), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C210 ( .A1(net3548), .A2(net3549), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C209 ( .A1(net3546), .A2(net3547), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C208 ( .A1(net3544), .A2(net3545), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C207 ( .A1(net3542), .A2(net3543), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C206 ( .A1(net3540), .A2(net3541), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C205 ( .A1(net3538), .A2(net3539), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C204 ( .A1(net3536), .A2(net3537), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C203 ( .A1(net3534), .A2(net3535), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C202 ( .A1(net3532), .A2(net3533), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C201 ( .A1(net3530), .A2(net3531), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C200 ( .A1(net3528), .A2(net3529), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C199 ( .A1(net3526), .A2(net3527), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C198 ( .A1(net3524), .A2(net3525), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C197 ( .A1(net3522), .A2(net3523), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C196 ( .A1(net3520), .A2(net3521), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C195 ( .A1(net3518), .A2(net3519), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C194 ( .A1(net3516), .A2(net3517), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C193 ( .A1(net3514), .A2(net3515), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C192 ( .A1(net3512), .A2(net3513), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C191 ( .A1(net3510), .A2(net3511), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C160 ( .A1(net3508), .A2(net3509), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C159 ( .A1(net3506), .A2(net3507), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C158 ( .A1(net3504), .A2(net3505), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C148 ( .A1(net3502), .A2(net3503), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C147 ( .A1(net3500), .A2(net3501), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C146 ( .A1(net3498), .A2(net3499), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C145 ( .A1(net3496), .A2(net3497), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C144 ( .A1(net3494), .A2(net3495), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C143 ( .A1(net3492), .A2(net3493), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C142 ( .A1(net3490), .A2(net3491), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C141 ( .A1(net3488), .A2(net3489), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C140 ( .A1(net3486), .A2(net3487), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C139 ( .A1(net3484), .A2(net3485), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C138 ( .A1(net3482), .A2(net3483), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C137 ( .A1(net3480), .A2(net3481), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C136 ( .A1(net3478), .A2(net3479), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C135 ( .A1(net3476), .A2(net3477), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C134 ( .A1(net3474), .A2(net3475), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C133 ( .A1(net3472), .A2(net3473), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C132 ( .A1(net3470), .A2(net3471), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C131 ( .A1(net3468), .A2(net3469), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C130 ( .A1(net3466), .A2(net3467), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C129 ( .A1(net3464), .A2(net3465), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C128 ( .A1(net3462), .A2(net3463), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C127 ( .A1(net3460), .A2(net3461), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C126 ( .A1(net3458), .A2(net3459), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C125 ( .A1(net3456), .A2(net3457), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C114 ( .A1(net3454), .A2(net3455), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C113 ( .A1(net3452), .A2(net3453), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C112 ( .A1(net3450), .A2(net3451), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C111 ( .A1(net3448), .A2(net3449), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C110 ( .A1(net3446), .A2(net3447), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C109 ( .A1(net3444), .A2(net3445), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C108 ( .A1(net3442), .A2(net3443), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C107 ( .A1(net3440), .A2(net3441), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C106 ( .A1(net3438), .A2(net3439), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C105 ( .A1(net3436), .A2(net3437), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C104 ( .A1(net3434), .A2(net3435), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C103 ( .A1(net3432), .A2(net3433), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C102 ( .A1(net3430), .A2(net3431), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C101 ( .A1(net3428), .A2(net3429), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C100 ( .A1(net3426), .A2(net3427), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C99 ( .A1(net3424), .A2(net3425), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_OR2_MM_0P5 C98 ( .A1(net3422), .A2(net3423), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_OR2_MM_0P5 C97 ( .A1(net3420), .A2(net3421), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_OR2_MM_0P5 C96 ( .A1(net3418), .A2(net3419), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_OR2_MM_0P5 C95 ( .A1(net3416), .A2(net3417), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_OR2_MM_0P5 C94 ( .A1(net3414), .A2(net3415), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_OR2_MM_0P5 C93 ( .A1(net3412), .A2(net3413), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_OR2_MM_0P5 C92 ( .A1(net3410), .A2(net3411), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_FDPQ_V3_2 spi_isolation_enb_delay3_reg ( .D(
        spi_isolation_enb_delay2), .CK(clk), .Q(spi_isolation_enb_delay3), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FDPQ_V3_2 spi_isolation_enb_delay4_reg ( .D(
        spi_isolation_enb_delay3), .CK(clk), .Q(spi_isolation_enb_delay4), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FDPQ_V3_2 uart_isolation_enb_delay3_reg ( .D(
        uart_isolation_enb_delay2), .CK(clk), .Q(uart_isolation_enb_delay3), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FDPQ_V3_2 uart_isolation_enb_delay4_reg ( .D(
        uart_isolation_enb_delay3), .CK(clk), .Q(uart_isolation_enb_delay4), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AOI21_0P5 U35 ( .A1(net3407), .A2(net3408), .B(net3409), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OA21_MM_2 U41 ( .A1(n26), .A2(n25), .B(n24), .X(
        uart_powergate_enb_delay1), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_0P5 C291 ( .A1(net3405), .A2(net3406), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_0P75 C417 ( .A1(spi_isolation_enb_delay2), .A2(
        spi_isolation_enb_delay3), .X(N317), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_0P75 C416 ( .A1(N317), .A2(spi_isolation_enb_delay4), .X(N51), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_0P75 C415 ( .A1(uart_isolation_enb_delay2), .A2(
        uart_isolation_enb_delay3), .X(N316), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_0P75 C414 ( .A1(N316), .A2(uart_isolation_enb_delay4), .X(N50), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 C426 ( .A1(uart_powergate_enb_delay2), .A2(n27), .X(N323), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 C421 ( .A1(spi_powergate_enb_delay2), .A2(n28), .X(N320), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AO32_2 U33 ( .A1(N83), .A2(N149), .A3(n20), .B1(N83), .B2(n19), 
        .X(eeprom_powergate_enb_delay1), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_2 spi_isolation_enb_delay2_reg ( .D(
        spi_powergate_enb_delay1), .SI(n16), .SE(n16), .CK(clk), .Q(
        spi_isolation_enb_delay2), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_2 spi_powergate_enb_delay2_reg ( .D(
        spi_powergate_enb_delay1), .SI(n16), .SE(n16), .CK(clk), .Q(
        spi_powergate_enb_delay2), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_2 uart_isolation_enb_delay2_reg ( .D(
        uart_powergate_enb_delay1), .SI(n16), .SE(n16), .CK(clk), .Q(
        uart_isolation_enb_delay2), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 spi_isolation_enb_reg ( .D(N51), .SI(n16), .SE(n16), 
        .CK(clk), .Q(spi_isolation_enb), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 uart_isolation_enb_reg ( .D(N50), .SI(n16), .SE(n16), 
        .CK(clk), .Q(uart_isolation_enb), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_2 uart_powergate_enb_delay2_reg ( .D(
        uart_powergate_enb_delay1), .SI(n16), .SE(n16), .CK(clk), .Q(
        uart_powergate_enb_delay2), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FDPQ_V3_1 uart_powergate_enb_reg ( .D(uart_powergate_enb_delay2), 
        .CK(clk), .Q(uart_powergate_enb), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FDPQ_V3_1 spi_powergate_enb_reg ( .D(spi_powergate_enb_delay2), 
        .CK(clk), .Q(spi_powergate_enb), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_AO21B_1 U31 ( .A1(N215), .A2(n18), .B(N182), .X(n20), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 eeprom_powergate_enb_delay2_reg ( .D(
        eeprom_powergate_enb_delay1), .SI(n16), .SE(n16), .CK(clk), .Q(
        eeprom_powergate_enb_delay2), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FDPQ_V3_1 eeprom_powergate_enb_reg ( .D(
        eeprom_powergate_enb_delay2), .CK(clk), .Q(eeprom_powergate_enb), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FSDPQ_V2LP_1 eeprom_isolation_enb_delay2_reg ( .D(
        eeprom_powergate_enb_delay1), .SI(n16), .SE(n16), .CK(clk), .Q(
        eeprom_isolation_enb_delay2), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_INV_0P75 U28 ( .A(pmu_state_config[0]), .X(n36), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_FDPQ_V3_1 eeprom_isolation_enb_reg ( .D(
        eeprom_isolation_enb_delay2), .CK(clk), .Q(eeprom_isolation_enb), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_INV_S_1 U19 ( .A(uart_powergate_enb), .X(n27), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_INV_0P75 U25 ( .A(pmu_state_config[3]), .X(n33), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_INV_0P75 U23 ( .A(pmu_state_config[5]), .X(n31), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_INV_0P75 U22 ( .A(pmu_state_config[6]), .X(n30), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_INV_0P75 U21 ( .A(pmu_state_config[7]), .X(n29), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_INV_0P75 U24 ( .A(pmu_state_config[4]), .X(n32), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_INV_0P75 U27 ( .A(pmu_state_config[1]), .X(n35), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_INV_0P75 U26 ( .A(pmu_state_config[2]), .X(n34), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_2 C181 ( .A1(pmu_state_config[7]), .A2(N141), .X(N142), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_0P75 C251 ( .A1(n33), .A2(N211), .X(N212), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_1P5 C351 ( .A1(pmu_state_config[2]), .A2(N245), .X(N312), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_0P75 C285 ( .A1(n34), .A2(N245), .X(N246), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_0P75 C252 ( .A1(pmu_state_config[2]), .A2(N212), .X(N213), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_1P5 C320 ( .A1(pmu_state_config[0]), .A2(N280), .X(N281), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_1P5 C353 ( .A1(n36), .A2(N313), .X(N314), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_1P5 C287 ( .A1(pmu_state_config[0]), .A2(N247), .X(N248), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_1P5 C188 ( .A1(pmu_state_config[0]), .A2(N148), .X(N149), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_2 C122 ( .A1(pmu_state_config[0]), .A2(N82), .X(N83), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_1P5 C254 ( .A1(pmu_state_config[0]), .A2(N214), .X(N215), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_MM_1P5 C221 ( .A1(pmu_state_config[0]), .A2(N181), .X(N182), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_ND2_CDC_2 U39 ( .A1(N314), .A2(N281), .X(n26), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OA21B_4 U38 ( .A1(n26), .A2(n22), .B(n23), .X(
        spi_powergate_enb_delay1), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_OAI21_1 U30 ( .A1(N314), .A2(n17), .B(N248), .X(n18), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_NR2_MM_1 U40 ( .A1(n23), .A2(n22), .X(n24), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_AN2_1 C419 ( .A1(spi_powergate_enb_delay1), .A2(n28), .X(N319), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_AN2_1 C424 ( .A1(uart_powergate_enb_delay1), .A2(n27), .X(N322), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C161 ( .A1(pmu_state_config[27]), .A2(N220), .X(N122), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C162 ( .A1(pmu_state_config[26]), .A2(N122), .X(N123), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C163 ( .A1(pmu_state_config[25]), .A2(N123), .X(N124), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C164 ( .A1(pmu_state_config[24]), .A2(N124), .X(N125), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C165 ( .A1(pmu_state_config[23]), .A2(N125), .X(N126), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C166 ( .A1(pmu_state_config[22]), .A2(N126), .X(N127), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C167 ( .A1(pmu_state_config[21]), .A2(N127), .X(N128), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C168 ( .A1(pmu_state_config[20]), .A2(N128), .X(N129), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C169 ( .A1(pmu_state_config[19]), .A2(N129), .X(N130), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C115 ( .A1(n29), .A2(N141), .X(N76), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_OR2_2 C182 ( .A1(pmu_state_config[6]), .A2(N142), .X(N143), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C149 ( .A1(n30), .A2(N142), .X(N110), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_OR2_1 C116 ( .A1(pmu_state_config[6]), .A2(N76), .X(N77), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_2 C216 ( .A1(pmu_state_config[5]), .A2(N143), .X(N177), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C150 ( .A1(pmu_state_config[5]), .A2(N110), .X(N111), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C183 ( .A1(n31), .A2(N143), .X(N144), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_OR2_1 C117 ( .A1(pmu_state_config[5]), .A2(N77), .X(N78), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C217 ( .A1(n32), .A2(N177), .X(N178), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_OR2_1 C151 ( .A1(pmu_state_config[4]), .A2(N111), .X(N112), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_2 C250 ( .A1(pmu_state_config[4]), .A2(N177), .X(N211), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C184 ( .A1(pmu_state_config[4]), .A2(N144), .X(N145), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C118 ( .A1(pmu_state_config[4]), .A2(N78), .X(N79), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_2 C284 ( .A1(pmu_state_config[3]), .A2(N211), .X(N245), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C218 ( .A1(pmu_state_config[3]), .A2(N178), .X(N179), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C185 ( .A1(pmu_state_config[3]), .A2(N145), .X(N146), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C119 ( .A1(pmu_state_config[3]), .A2(N79), .X(N80), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C152 ( .A1(pmu_state_config[3]), .A2(N112), .X(N113), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C219 ( .A1(pmu_state_config[2]), .A2(N179), .X(N180), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C186 ( .A1(pmu_state_config[2]), .A2(N146), .X(N147), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C153 ( .A1(pmu_state_config[2]), .A2(N113), .X(N114), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C120 ( .A1(pmu_state_config[2]), .A2(N80), .X(N81), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C220 ( .A1(pmu_state_config[1]), .A2(N180), .X(N181), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C121 ( .A1(pmu_state_config[1]), .A2(N81), .X(N82), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C187 ( .A1(pmu_state_config[1]), .A2(N147), .X(N148), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C154 ( .A1(pmu_state_config[1]), .A2(N114), .X(N115), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_ND2_CDC_2 U37 ( .A1(N83), .A2(N116), .X(n23), .VDD(VDDL), .VSS(VSS) );
  SAEDRVT14_ND2_1 U36 ( .A1(N149), .A2(N182), .X(n22), .VDD(VDDL), .VSS(VSS)
         );
  SAEDHVT14_ND2_CDC_1 U34 ( .A1(N215), .A2(N248), .X(n25), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_INV_S_1 U32 ( .A(N116), .X(n19), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_0P75 C257 ( .A1(pmu_state_config[30]), .A2(
        pmu_state_config[31]), .X(N218), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_0P75 C286 ( .A1(pmu_state_config[1]), .A2(N246), .X(N247), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_0P75 C253 ( .A1(pmu_state_config[1]), .A2(N213), .X(N214), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_2 C155 ( .A1(pmu_state_config[0]), .A2(N115), .X(N116), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_INV_0P75 U29 ( .A(N281), .X(n17), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C258 ( .A1(pmu_state_config[29]), .A2(N218), .X(N219), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C259 ( .A1(pmu_state_config[28]), .A2(N219), .X(N220), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_2 C180 ( .A1(pmu_state_config[8]), .A2(N140), .X(N141), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_0P75 C319 ( .A1(n35), .A2(N312), .X(N280), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_0P75 C352 ( .A1(pmu_state_config[1]), .A2(N312), .X(N313), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C177 ( .A1(pmu_state_config[11]), .A2(N137), .X(N138), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C176 ( .A1(pmu_state_config[12]), .A2(N136), .X(N137), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C175 ( .A1(pmu_state_config[13]), .A2(N135), .X(N136), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C174 ( .A1(pmu_state_config[14]), .A2(N134), .X(N135), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C173 ( .A1(pmu_state_config[15]), .A2(N133), .X(N134), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C172 ( .A1(pmu_state_config[16]), .A2(N132), .X(N133), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C171 ( .A1(pmu_state_config[17]), .A2(N131), .X(N132), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_1 C170 ( .A1(pmu_state_config[18]), .A2(N130), .X(N131), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_INV_S_1P5 U20 ( .A(spi_powergate_enb), .X(n28), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_0P75 C178 ( .A1(pmu_state_config[10]), .A2(N138), .X(N139), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_OR2_0P75 C179 ( .A1(pmu_state_config[9]), .A2(N139), .X(N140), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U42 ( .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U43 ( .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U44 ( .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U45 ( .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U46 ( .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U47 ( .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U48 ( .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U49 ( .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U50 ( .X(n16), .VDD(VDDL), .VSS(VSS) );
endmodule



    module msrv_soc_system_controllerwrapper_msrv_soc_system_controller__939583_0 ( 
        HADDR, HWRITE, HSIZE, HWDATA, HWSTRB, HREADY, HTRANS, HRESPSYS_CTRL, 
        HREADYSYS_CTRL, HSELSYS_CTRL, clk, reset_ext, reset, clk_out, VDDL, VSS );
  input [55:0] HADDR;
  input [2:0] HSIZE;
  input [63:0] HWDATA;
  input [7:0] HWSTRB;
  input [1:0] HTRANS;
  input HWRITE, HREADY, clk, reset_ext;
  output HRESPSYS_CTRL, HREADYSYS_CTRL, HSELSYS_CTRL, reset, clk_out;
  input VDDL;
  input VSS;
  wire   n_Logic1_, net1900, clk_shift_enb_reg_0_, n96, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23,
         SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25,
         SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27,
         SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29,
         SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31,
         SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33,
         SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35,
         SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37,
         SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39,
         SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41,
         SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43,
         SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45,
         SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47,
         SYNOPSYS_UNCONNECTED_48, SYNOPSYS_UNCONNECTED_49,
         SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51,
         SYNOPSYS_UNCONNECTED_52, SYNOPSYS_UNCONNECTED_53,
         SYNOPSYS_UNCONNECTED_54, SYNOPSYS_UNCONNECTED_55,
         SYNOPSYS_UNCONNECTED_56, SYNOPSYS_UNCONNECTED_57,
         SYNOPSYS_UNCONNECTED_58, SYNOPSYS_UNCONNECTED_59,
         SYNOPSYS_UNCONNECTED_60, SYNOPSYS_UNCONNECTED_61,
         SYNOPSYS_UNCONNECTED_62, SYNOPSYS_UNCONNECTED_63,
         SYNOPSYS_UNCONNECTED_64, SYNOPSYS_UNCONNECTED_65,
         SYNOPSYS_UNCONNECTED_66, SYNOPSYS_UNCONNECTED_67,
         SYNOPSYS_UNCONNECTED_68, SYNOPSYS_UNCONNECTED_69,
         SYNOPSYS_UNCONNECTED_70, SYNOPSYS_UNCONNECTED_71,
         SYNOPSYS_UNCONNECTED_72, SYNOPSYS_UNCONNECTED_73;
  wire   [1:0] clk_divider_reg;
  wire   [31:0] pmu_state_config;

  msrv_soc_system_controllerwrapper_msrv_soc_reset_synchronizer_0 resetsync ( 
        .clk(clk), .d(reset_ext), .q(reset), .VDDL(VDDL), .VSS(VSS) );
  msrv_soc_system_controllerwrapper_msrv_soc_clk_generator_0 clk_gen ( .clk(
        clk), .reset(reset), .clk_divider_reg({net1900, net1900, net1900, 
        net1900, net1900, net1900, net1900, net1900, net1900, net1900, net1900, 
        net1900, net1900, net1900, net1900, net1900, net1900, net1900, net1900, 
        net1900, net1900, net1900, net1900, net1900, net1900, net1900, net1900, 
        net1900, net1900, net1900, clk_divider_reg}), .clk_shift_enb_reg({
        net1900, net1900, net1900, net1900, net1900, net1900, net1900, net1900, 
        net1900, net1900, net1900, net1900, net1900, net1900, net1900, net1900, 
        net1900, net1900, net1900, net1900, net1900, net1900, net1900, net1900, 
        net1900, net1900, net1900, net1900, net1900, net1900, net1900, 
        clk_shift_enb_reg_0_}), .clk_out(clk_out), .VDDL(VDDL), .VSS(VSS) );
  msrv_soc_system_controllerwrapper_msrv_soc_register_bank__939583_0 reg_bank ( 
        .clk(clk), .reset(reset), .sel(HSELSYS_CTRL), .wr_enable(HWRITE), 
        .ready(HREADY), .trans({HTRANS[1], net1900}), .addr(HADDR), .wdata({
        net1900, net1900, net1900, net1900, net1900, net1900, net1900, net1900, 
        net1900, net1900, net1900, net1900, net1900, net1900, net1900, net1900, 
        net1900, net1900, net1900, net1900, net1900, net1900, net1900, net1900, 
        net1900, net1900, net1900, net1900, net1900, net1900, net1900, net1900, 
        HWDATA[31:0]}), .ready_sys_ctrl(HREADYSYS_CTRL), .clk_divider_reg({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, 
        SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, 
        SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, 
        SYNOPSYS_UNCONNECTED_30, clk_divider_reg}), .clk_shift_enb_reg({
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32, 
        SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, 
        SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, 
        SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, 
        SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40, 
        SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, 
        SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, 
        SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, 
        SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48, 
        SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50, 
        SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52, 
        SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54, 
        SYNOPSYS_UNCONNECTED_55, SYNOPSYS_UNCONNECTED_56, 
        SYNOPSYS_UNCONNECTED_57, SYNOPSYS_UNCONNECTED_58, 
        SYNOPSYS_UNCONNECTED_59, SYNOPSYS_UNCONNECTED_60, 
        SYNOPSYS_UNCONNECTED_61, clk_shift_enb_reg_0_}), .pmu_state_config({
        pmu_state_config[31:3], n96, pmu_state_config[1:0]}), .VDDL(VDDL), .VSS(VSS) );
  msrv_soc_system_controllerwrapper_msrv_soc_adrdecs__939583_0 adrdecs ( 
        .PhysicalAddress({HADDR[55:5], net1900, net1900, net1900, net1900, 
        net1900}), .AccessRW(n_Logic1_), .AccessRX(n_Logic1_), .AccessRWXC(
        n_Logic1_), .Size({net1900, net1900}), .SelRegions({HSELSYS_CTRL, 
        SYNOPSYS_UNCONNECTED_62, SYNOPSYS_UNCONNECTED_63, 
        SYNOPSYS_UNCONNECTED_64, SYNOPSYS_UNCONNECTED_65, 
        SYNOPSYS_UNCONNECTED_66, SYNOPSYS_UNCONNECTED_67, 
        SYNOPSYS_UNCONNECTED_68, SYNOPSYS_UNCONNECTED_69, 
        SYNOPSYS_UNCONNECTED_70, SYNOPSYS_UNCONNECTED_71, 
        SYNOPSYS_UNCONNECTED_72, SYNOPSYS_UNCONNECTED_73}), .VDDL(VDDL), .VSS(VSS) );
  msrv_soc_system_controllerwrapper_msrv_soc_pmu_0 PMU ( .clk(clk), 
        .pmu_state_config({pmu_state_config[31:3], n96, pmu_state_config[1:0]}), .VDDL(VDDL), .VSS(VSS) );
  SAEDRVT14_TIE1_4 U2 ( .X(n_Logic1_), .VDD(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U3 ( .X(net1900), .VDD(VDDL), .VSS(VSS) );
endmodule


module msrv_soc_system_controllerwrapper ( HADDR, HWRITE, HSIZE, HWDATA, 
        HWSTRB, HREADY, HTRANS, HRESPSYS_CTRL, HREADYSYS_CTRL, HSELSYS_CTRL, 
        clk, reset_ext, reset, clk_out, VDDL, VSS );
  input [55:0] HADDR;
  input [2:0] HSIZE;
  input [63:0] HWDATA;
  input [7:0] HWSTRB;
  input [1:0] HTRANS;
  input HWRITE, HREADY, clk, reset_ext;
  output HRESPSYS_CTRL, HREADYSYS_CTRL, HSELSYS_CTRL, reset, clk_out;
  input VDDL;
  input VSS;

//synopsys upf_name_map msrv_soc_system_controllerwrapper ""


  msrv_soc_system_controllerwrapper_msrv_soc_system_controller__939583_0 dut ( 
        .HADDR(HADDR), .HWRITE(HWRITE), .HSIZE({HRESPSYS_CTRL, HRESPSYS_CTRL, 
        HRESPSYS_CTRL}), .HWDATA({HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, 
        HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, 
        HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, 
        HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, 
        HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, 
        HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, 
        HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, 
        HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, 
        HRESPSYS_CTRL, HWDATA[31:0]}), .HWSTRB({HRESPSYS_CTRL, HRESPSYS_CTRL, 
        HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, HRESPSYS_CTRL, 
        HRESPSYS_CTRL, HRESPSYS_CTRL}), .HREADY(HREADY), .HTRANS({HTRANS[1], 
        HRESPSYS_CTRL}), .HREADYSYS_CTRL(HREADYSYS_CTRL), .HSELSYS_CTRL(
        HSELSYS_CTRL), .clk(clk), .reset_ext(reset_ext), .reset(reset), 
        .clk_out(clk_out), .VDDL(VDDL), .VSS(VSS) );
  SAEDHVT14_TIE0_V1_2 U2 ( .X(HRESPSYS_CTRL), .VDD(VDDL), .VSS(VSS) );
endmodule

