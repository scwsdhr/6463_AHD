// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Mon Oct 22 06:05:29 2018
// Host        : DESKTOP-65OAGH3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/shenc/OneDrive -
//               nyu.edu/6463_AHD/LAB4/rc5_dec/rc5_dec.sim/sim_1/impl/timing/xsim/rc5_dec_tb_time_impl.v}
// Design      : rc5_dec
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "a2b86ff8" *) 
(* NotValidForBitStream *)
module rc5_dec
   (clr,
    clk,
    din,
    di_vld,
    dout,
    do_rdy);
  input clr;
  input clk;
  input [63:0]din;
  input di_vld;
  output [63:0]dout;
  output do_rdy;

  wire [31:0]a;
  wire [31:0]a_reg;
  wire \a_reg[0]_i_1_n_0 ;
  wire \a_reg[10]_i_1_n_0 ;
  wire \a_reg[11]_i_1_n_0 ;
  wire \a_reg[12]_i_1_n_0 ;
  wire \a_reg[13]_i_1_n_0 ;
  wire \a_reg[14]_i_1_n_0 ;
  wire \a_reg[15]_i_1_n_0 ;
  wire \a_reg[16]_i_1_n_0 ;
  wire \a_reg[16]_i_2_n_0 ;
  wire \a_reg[16]_i_3_n_0 ;
  wire \a_reg[17]_i_1_n_0 ;
  wire \a_reg[17]_i_2_n_0 ;
  wire \a_reg[17]_i_3_n_0 ;
  wire \a_reg[18]_i_1_n_0 ;
  wire \a_reg[18]_i_2_n_0 ;
  wire \a_reg[18]_i_3_n_0 ;
  wire \a_reg[19]_i_1_n_0 ;
  wire \a_reg[19]_i_2_n_0 ;
  wire \a_reg[19]_i_3_n_0 ;
  wire \a_reg[1]_i_1_n_0 ;
  wire \a_reg[20]_i_1_n_0 ;
  wire \a_reg[20]_i_2_n_0 ;
  wire \a_reg[20]_i_3_n_0 ;
  wire \a_reg[21]_i_1_n_0 ;
  wire \a_reg[21]_i_2_n_0 ;
  wire \a_reg[21]_i_3_n_0 ;
  wire \a_reg[22]_i_1_n_0 ;
  wire \a_reg[22]_i_2_n_0 ;
  wire \a_reg[22]_i_3_n_0 ;
  wire \a_reg[23]_i_1_n_0 ;
  wire \a_reg[23]_i_2_n_0 ;
  wire \a_reg[23]_i_3_n_0 ;
  wire \a_reg[24]_i_1_n_0 ;
  wire \a_reg[24]_i_2_n_0 ;
  wire \a_reg[24]_i_3_n_0 ;
  wire \a_reg[25]_i_1_n_0 ;
  wire \a_reg[25]_i_2_n_0 ;
  wire \a_reg[25]_i_3_n_0 ;
  wire \a_reg[26]_i_1_n_0 ;
  wire \a_reg[26]_i_2_n_0 ;
  wire \a_reg[26]_i_3_n_0 ;
  wire \a_reg[27]_i_1_n_0 ;
  wire \a_reg[27]_i_2_n_0 ;
  wire \a_reg[27]_i_3_n_0 ;
  wire \a_reg[28]_i_10_n_0 ;
  wire \a_reg[28]_i_11_n_0 ;
  wire \a_reg[28]_i_1_n_0 ;
  wire \a_reg[28]_i_2_n_0 ;
  wire \a_reg[28]_i_3_n_0 ;
  wire \a_reg[28]_i_4_n_0 ;
  wire \a_reg[28]_i_5_n_0 ;
  wire \a_reg[28]_i_6_n_0 ;
  wire \a_reg[28]_i_7_n_0 ;
  wire \a_reg[28]_i_8_n_0 ;
  wire \a_reg[28]_i_9_n_0 ;
  wire \a_reg[29]_i_10_n_0 ;
  wire \a_reg[29]_i_11_n_0 ;
  wire \a_reg[29]_i_1_n_0 ;
  wire \a_reg[29]_i_2_n_0 ;
  wire \a_reg[29]_i_3_n_0 ;
  wire \a_reg[29]_i_4_n_0 ;
  wire \a_reg[29]_i_5_n_0 ;
  wire \a_reg[29]_i_6_n_0 ;
  wire \a_reg[29]_i_7_n_0 ;
  wire \a_reg[29]_i_8_n_0 ;
  wire \a_reg[29]_i_9_n_0 ;
  wire \a_reg[2]_i_1_n_0 ;
  wire \a_reg[30]_i_10_n_0 ;
  wire \a_reg[30]_i_11_n_0 ;
  wire \a_reg[30]_i_1_n_0 ;
  wire \a_reg[30]_i_2_n_0 ;
  wire \a_reg[30]_i_3_n_0 ;
  wire \a_reg[30]_i_4_n_0 ;
  wire \a_reg[30]_i_5_n_0 ;
  wire \a_reg[30]_i_6_n_0 ;
  wire \a_reg[30]_i_7_n_0 ;
  wire \a_reg[30]_i_8_n_0 ;
  wire \a_reg[30]_i_9_n_0 ;
  wire \a_reg[31]_i_10_n_0 ;
  wire \a_reg[31]_i_11_n_0 ;
  wire \a_reg[31]_i_12_n_0 ;
  wire \a_reg[31]_i_13_n_0 ;
  wire \a_reg[31]_i_2_n_0 ;
  wire \a_reg[31]_i_3_n_0 ;
  wire \a_reg[31]_i_4_n_0 ;
  wire \a_reg[31]_i_5_n_0 ;
  wire \a_reg[31]_i_6_n_0 ;
  wire \a_reg[31]_i_7_n_0 ;
  wire \a_reg[31]_i_8_n_0 ;
  wire \a_reg[31]_i_9_n_0 ;
  wire \a_reg[3]_i_1_n_0 ;
  wire \a_reg[4]_i_1_n_0 ;
  wire \a_reg[5]_i_1_n_0 ;
  wire \a_reg[6]_i_1_n_0 ;
  wire \a_reg[7]_i_1_n_0 ;
  wire \a_reg[8]_i_1_n_0 ;
  wire \a_reg[9]_i_1_n_0 ;
  wire \a_reg_reg[31]_i_14_n_0 ;
  wire \a_reg_reg[31]_i_15_n_0 ;
  wire \a_reg_reg[31]_i_16_n_0 ;
  wire \a_reg_reg[31]_i_17_n_0 ;
  wire \a_reg_reg[31]_i_19_n_0 ;
  wire \a_reg_reg[31]_i_20_n_0 ;
  wire \a_reg_reg[31]_i_21_n_0 ;
  wire b_reg;
  wire \b_reg[0]_i_1_n_0 ;
  wire \b_reg[10]_i_1_n_0 ;
  wire \b_reg[11]_i_1_n_0 ;
  wire \b_reg[12]_i_1_n_0 ;
  wire \b_reg[13]_i_1_n_0 ;
  wire \b_reg[14]_i_1_n_0 ;
  wire \b_reg[15]_i_1_n_0 ;
  wire \b_reg[16]_i_1_n_0 ;
  wire \b_reg[17]_i_1_n_0 ;
  wire \b_reg[18]_i_1_n_0 ;
  wire \b_reg[19]_i_1_n_0 ;
  wire \b_reg[1]_i_1_n_0 ;
  wire \b_reg[20]_i_1_n_0 ;
  wire \b_reg[21]_i_1_n_0 ;
  wire \b_reg[22]_i_1_n_0 ;
  wire \b_reg[23]_i_1_n_0 ;
  wire \b_reg[24]_i_1_n_0 ;
  wire \b_reg[25]_i_1_n_0 ;
  wire \b_reg[26]_i_1_n_0 ;
  wire \b_reg[27]_i_1_n_0 ;
  wire \b_reg[28]_i_1_n_0 ;
  wire \b_reg[29]_i_1_n_0 ;
  wire \b_reg[2]_i_1_n_0 ;
  wire \b_reg[30]_i_1_n_0 ;
  wire \b_reg[31]_i_1_n_0 ;
  wire \b_reg[3]_i_1_n_0 ;
  wire \b_reg[4]_i_1_n_0 ;
  wire \b_reg[5]_i_1_n_0 ;
  wire \b_reg[6]_i_1_n_0 ;
  wire \b_reg[7]_i_1_n_0 ;
  wire \b_reg[8]_i_1_n_0 ;
  wire \b_reg[9]_i_1_n_0 ;
  wire \b_reg_reg_n_0_[0] ;
  wire \b_reg_reg_n_0_[10] ;
  wire \b_reg_reg_n_0_[11] ;
  wire \b_reg_reg_n_0_[12] ;
  wire \b_reg_reg_n_0_[13] ;
  wire \b_reg_reg_n_0_[14] ;
  wire \b_reg_reg_n_0_[15] ;
  wire \b_reg_reg_n_0_[16] ;
  wire \b_reg_reg_n_0_[17] ;
  wire \b_reg_reg_n_0_[18] ;
  wire \b_reg_reg_n_0_[19] ;
  wire \b_reg_reg_n_0_[1] ;
  wire \b_reg_reg_n_0_[20] ;
  wire \b_reg_reg_n_0_[21] ;
  wire \b_reg_reg_n_0_[22] ;
  wire \b_reg_reg_n_0_[23] ;
  wire \b_reg_reg_n_0_[24] ;
  wire \b_reg_reg_n_0_[25] ;
  wire \b_reg_reg_n_0_[26] ;
  wire \b_reg_reg_n_0_[27] ;
  wire \b_reg_reg_n_0_[28] ;
  wire \b_reg_reg_n_0_[29] ;
  wire \b_reg_reg_n_0_[2] ;
  wire \b_reg_reg_n_0_[30] ;
  wire \b_reg_reg_n_0_[31] ;
  wire \b_reg_reg_n_0_[3] ;
  wire \b_reg_reg_n_0_[4] ;
  wire \b_reg_reg_n_0_[5] ;
  wire \b_reg_reg_n_0_[6] ;
  wire \b_reg_reg_n_0_[7] ;
  wire \b_reg_reg_n_0_[8] ;
  wire \b_reg_reg_n_0_[9] ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clr;
  wire clr_IBUF;
  wire di_vld;
  wire di_vld_IBUF;
  wire [63:0]din;
  wire [63:0]din_IBUF;
  wire do_rdy;
  wire do_rdy_OBUF;
  wire do_rdy_i_1_n_0;
  wire [63:0]dout;
  wire \dout[16]_i_2_n_0 ;
  wire \dout[16]_i_3_n_0 ;
  wire \dout[17]_i_2_n_0 ;
  wire \dout[17]_i_3_n_0 ;
  wire \dout[18]_i_2_n_0 ;
  wire \dout[18]_i_3_n_0 ;
  wire \dout[19]_i_2_n_0 ;
  wire \dout[19]_i_3_n_0 ;
  wire \dout[20]_i_2_n_0 ;
  wire \dout[20]_i_3_n_0 ;
  wire \dout[21]_i_2_n_0 ;
  wire \dout[21]_i_3_n_0 ;
  wire \dout[22]_i_2_n_0 ;
  wire \dout[22]_i_3_n_0 ;
  wire \dout[23]_i_2_n_0 ;
  wire \dout[23]_i_3_n_0 ;
  wire \dout[24]_i_2_n_0 ;
  wire \dout[24]_i_3_n_0 ;
  wire \dout[25]_i_2_n_0 ;
  wire \dout[25]_i_3_n_0 ;
  wire \dout[26]_i_2_n_0 ;
  wire \dout[26]_i_3_n_0 ;
  wire \dout[27]_i_2_n_0 ;
  wire \dout[27]_i_3_n_0 ;
  wire \dout[28]_i_10_n_0 ;
  wire \dout[28]_i_11_n_0 ;
  wire \dout[28]_i_2_n_0 ;
  wire \dout[28]_i_3_n_0 ;
  wire \dout[28]_i_4_n_0 ;
  wire \dout[28]_i_5_n_0 ;
  wire \dout[28]_i_6_n_0 ;
  wire \dout[28]_i_7_n_0 ;
  wire \dout[28]_i_8_n_0 ;
  wire \dout[28]_i_9_n_0 ;
  wire \dout[29]_i_10_n_0 ;
  wire \dout[29]_i_11_n_0 ;
  wire \dout[29]_i_2_n_0 ;
  wire \dout[29]_i_3_n_0 ;
  wire \dout[29]_i_4_n_0 ;
  wire \dout[29]_i_5_n_0 ;
  wire \dout[29]_i_6_n_0 ;
  wire \dout[29]_i_7_n_0 ;
  wire \dout[29]_i_8_n_0 ;
  wire \dout[29]_i_9_n_0 ;
  wire \dout[30]_i_10_n_0 ;
  wire \dout[30]_i_11_n_0 ;
  wire \dout[30]_i_2_n_0 ;
  wire \dout[30]_i_3_n_0 ;
  wire \dout[30]_i_4_n_0 ;
  wire \dout[30]_i_5_n_0 ;
  wire \dout[30]_i_6_n_0 ;
  wire \dout[30]_i_7_n_0 ;
  wire \dout[30]_i_8_n_0 ;
  wire \dout[30]_i_9_n_0 ;
  wire \dout[31]_i_10_n_0 ;
  wire \dout[31]_i_11_n_0 ;
  wire \dout[31]_i_2_n_0 ;
  wire \dout[31]_i_3_n_0 ;
  wire \dout[31]_i_4_n_0 ;
  wire \dout[31]_i_5_n_0 ;
  wire \dout[31]_i_6_n_0 ;
  wire \dout[31]_i_7_n_0 ;
  wire \dout[31]_i_8_n_0 ;
  wire \dout[31]_i_9_n_0 ;
  wire \dout[63]_i_1_n_0 ;
  wire [63:0]dout_OBUF;
  wire \dout_reg[31]_i_12_n_0 ;
  wire \dout_reg[31]_i_13_n_0 ;
  wire \dout_reg[31]_i_14_n_0 ;
  wire \dout_reg[31]_i_15_n_0 ;
  wire \dout_reg[31]_i_17_n_0 ;
  wire \dout_reg[31]_i_18_n_0 ;
  wire \dout_reg[31]_i_19_n_0 ;
  wire g0_b0__0_n_0;
  wire g0_b0_n_0;
  wire g0_b10__0_n_0;
  wire g0_b10_n_0;
  wire g0_b11__0_n_0;
  wire g0_b11_n_0;
  wire g0_b12__0_n_0;
  wire g0_b12_n_0;
  wire g0_b13__0_n_0;
  wire g0_b13_n_0;
  wire g0_b14__0_n_0;
  wire g0_b14_n_0;
  wire g0_b15__0_n_0;
  wire g0_b15_n_0;
  wire g0_b16__0_n_0;
  wire g0_b16_n_0;
  wire g0_b17__0_n_0;
  wire g0_b17_n_0;
  wire g0_b18__0_n_0;
  wire g0_b18_n_0;
  wire g0_b19__0_n_0;
  wire g0_b19_n_0;
  wire g0_b1__0_n_0;
  wire g0_b1_n_0;
  wire g0_b20__0_n_0;
  wire g0_b20_n_0;
  wire g0_b21__0_n_0;
  wire g0_b21_n_0;
  wire g0_b22__0_n_0;
  wire g0_b22_n_0;
  wire g0_b23__0_n_0;
  wire g0_b23_n_0;
  wire g0_b24__0_n_0;
  wire g0_b24_n_0;
  wire g0_b25__0_n_0;
  wire g0_b25_n_0;
  wire g0_b26__0_n_0;
  wire g0_b26_n_0;
  wire g0_b27__0_n_0;
  wire g0_b27_n_0;
  wire g0_b28__0_n_0;
  wire g0_b28_n_0;
  wire g0_b29__0_n_0;
  wire g0_b29_n_0;
  wire g0_b2__0_n_0;
  wire g0_b2_n_0;
  wire g0_b30__0_n_0;
  wire g0_b30_n_0;
  wire g0_b31__0_n_0;
  wire g0_b31_n_0;
  wire g0_b3__0_n_0;
  wire g0_b3_n_0;
  wire g0_b4__0_n_0;
  wire g0_b4_n_0;
  wire g0_b5__0_n_0;
  wire g0_b5_n_0;
  wire g0_b6__0_n_0;
  wire g0_b6_n_0;
  wire g0_b7__0_n_0;
  wire g0_b7_n_0;
  wire g0_b8__0_n_0;
  wire g0_b8_n_0;
  wire g0_b9__0_n_0;
  wire g0_b9_n_0;
  wire \i_cnt[0]_i_1_n_0 ;
  wire \i_cnt[1]_i_1_n_0 ;
  wire \i_cnt[2]_i_1_n_0 ;
  wire \i_cnt[3]_i_1_n_0 ;
  wire \i_cnt[3]_i_2_n_0 ;
  wire [3:0]i_cnt_reg;
  wire [31:0]minusOp0_out;
  wire [31:0]minusOp2_out;
  wire [31:0]p_0_in;
  wire [2:0]\NLW_a_reg_reg[31]_i_14_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg_reg[31]_i_15_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg_reg[31]_i_16_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg_reg[31]_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_reg_reg[31]_i_18_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg_reg[31]_i_19_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg_reg[31]_i_20_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg_reg[31]_i_21_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[31]_i_12_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[31]_i_13_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[31]_i_14_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[31]_i_15_CO_UNCONNECTED ;
  wire [3:0]\NLW_dout_reg[31]_i_16_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[31]_i_17_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[31]_i_18_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[31]_i_19_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("rc5_dec_tb_time_impl.sdf",,,,"tool_control");
end
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[0]_i_1 
       (.I0(din_IBUF[32]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[0]),
        .I3(\a_reg[16]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[16]_i_2_n_0 ),
        .O(\a_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[10]_i_1 
       (.I0(din_IBUF[42]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[10]),
        .I3(\a_reg[26]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[26]_i_2_n_0 ),
        .O(\a_reg[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[11]_i_1 
       (.I0(din_IBUF[43]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[11]),
        .I3(\a_reg[27]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[27]_i_2_n_0 ),
        .O(\a_reg[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[12]_i_1 
       (.I0(din_IBUF[44]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[12]),
        .I3(\a_reg[28]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[28]_i_2_n_0 ),
        .O(\a_reg[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[13]_i_1 
       (.I0(din_IBUF[45]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[13]),
        .I3(\a_reg[29]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[29]_i_2_n_0 ),
        .O(\a_reg[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[14]_i_1 
       (.I0(din_IBUF[46]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[14]),
        .I3(\a_reg[30]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[30]_i_2_n_0 ),
        .O(\a_reg[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[15]_i_1 
       (.I0(din_IBUF[47]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[15]),
        .I3(\a_reg[31]_i_5_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[31]_i_4_n_0 ),
        .O(\a_reg[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[16]_i_1 
       (.I0(din_IBUF[48]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[16]),
        .I3(\a_reg[16]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[16]_i_3_n_0 ),
        .O(\a_reg[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[16]_i_2 
       (.I0(\a_reg[28]_i_7_n_0 ),
        .I1(\a_reg[28]_i_8_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[28]_i_9_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[28]_i_10_n_0 ),
        .O(\a_reg[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[16]_i_3 
       (.I0(\a_reg[28]_i_11_n_0 ),
        .I1(\a_reg[28]_i_4_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[28]_i_5_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[28]_i_6_n_0 ),
        .O(\a_reg[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[17]_i_1 
       (.I0(din_IBUF[49]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[17]),
        .I3(\a_reg[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[17]_i_3_n_0 ),
        .O(\a_reg[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[17]_i_2 
       (.I0(\a_reg[29]_i_7_n_0 ),
        .I1(\a_reg[29]_i_8_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[29]_i_9_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[29]_i_10_n_0 ),
        .O(\a_reg[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[17]_i_3 
       (.I0(\a_reg[29]_i_11_n_0 ),
        .I1(\a_reg[29]_i_4_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[29]_i_5_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[29]_i_6_n_0 ),
        .O(\a_reg[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[18]_i_1 
       (.I0(din_IBUF[50]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[18]),
        .I3(\a_reg[18]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[18]_i_3_n_0 ),
        .O(\a_reg[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[18]_i_2 
       (.I0(\a_reg[30]_i_7_n_0 ),
        .I1(\a_reg[30]_i_8_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[30]_i_9_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[30]_i_10_n_0 ),
        .O(\a_reg[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[18]_i_3 
       (.I0(\a_reg[30]_i_11_n_0 ),
        .I1(\a_reg[30]_i_4_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[30]_i_5_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[30]_i_6_n_0 ),
        .O(\a_reg[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[19]_i_1 
       (.I0(din_IBUF[51]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[19]),
        .I3(\a_reg[19]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[19]_i_3_n_0 ),
        .O(\a_reg[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[19]_i_2 
       (.I0(\a_reg[31]_i_9_n_0 ),
        .I1(\a_reg[31]_i_10_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[31]_i_11_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[31]_i_12_n_0 ),
        .O(\a_reg[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[19]_i_3 
       (.I0(\a_reg[31]_i_13_n_0 ),
        .I1(\a_reg[31]_i_6_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[31]_i_7_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[31]_i_8_n_0 ),
        .O(\a_reg[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[1]_i_1 
       (.I0(din_IBUF[33]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[1]),
        .I3(\a_reg[17]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[17]_i_2_n_0 ),
        .O(\a_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[20]_i_1 
       (.I0(din_IBUF[52]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[20]),
        .I3(\a_reg[20]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[20]_i_3_n_0 ),
        .O(\a_reg[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[20]_i_2 
       (.I0(\a_reg[28]_i_6_n_0 ),
        .I1(\a_reg[28]_i_7_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[28]_i_8_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[28]_i_9_n_0 ),
        .O(\a_reg[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[20]_i_3 
       (.I0(\a_reg[28]_i_10_n_0 ),
        .I1(\a_reg[28]_i_11_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[28]_i_4_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[28]_i_5_n_0 ),
        .O(\a_reg[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[21]_i_1 
       (.I0(din_IBUF[53]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[21]),
        .I3(\a_reg[21]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[21]_i_3_n_0 ),
        .O(\a_reg[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[21]_i_2 
       (.I0(\a_reg[29]_i_6_n_0 ),
        .I1(\a_reg[29]_i_7_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[29]_i_8_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[29]_i_9_n_0 ),
        .O(\a_reg[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[21]_i_3 
       (.I0(\a_reg[29]_i_10_n_0 ),
        .I1(\a_reg[29]_i_11_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[29]_i_4_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[29]_i_5_n_0 ),
        .O(\a_reg[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[22]_i_1 
       (.I0(din_IBUF[54]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[22]),
        .I3(\a_reg[22]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[22]_i_3_n_0 ),
        .O(\a_reg[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[22]_i_2 
       (.I0(\a_reg[30]_i_6_n_0 ),
        .I1(\a_reg[30]_i_7_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[30]_i_8_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[30]_i_9_n_0 ),
        .O(\a_reg[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[22]_i_3 
       (.I0(\a_reg[30]_i_10_n_0 ),
        .I1(\a_reg[30]_i_11_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[30]_i_4_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[30]_i_5_n_0 ),
        .O(\a_reg[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[23]_i_1 
       (.I0(din_IBUF[55]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[23]),
        .I3(\a_reg[23]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[23]_i_3_n_0 ),
        .O(\a_reg[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[23]_i_2 
       (.I0(\a_reg[31]_i_8_n_0 ),
        .I1(\a_reg[31]_i_9_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[31]_i_10_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[31]_i_11_n_0 ),
        .O(\a_reg[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[23]_i_3 
       (.I0(\a_reg[31]_i_12_n_0 ),
        .I1(\a_reg[31]_i_13_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[31]_i_6_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[31]_i_7_n_0 ),
        .O(\a_reg[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[24]_i_1 
       (.I0(din_IBUF[56]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[24]),
        .I3(\a_reg[24]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[24]_i_3_n_0 ),
        .O(\a_reg[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[24]_i_2 
       (.I0(\a_reg[28]_i_5_n_0 ),
        .I1(\a_reg[28]_i_6_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[28]_i_7_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[28]_i_8_n_0 ),
        .O(\a_reg[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[24]_i_3 
       (.I0(\a_reg[28]_i_9_n_0 ),
        .I1(\a_reg[28]_i_10_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[28]_i_11_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[28]_i_4_n_0 ),
        .O(\a_reg[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[25]_i_1 
       (.I0(din_IBUF[57]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[25]),
        .I3(\a_reg[25]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[25]_i_3_n_0 ),
        .O(\a_reg[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[25]_i_2 
       (.I0(\a_reg[29]_i_5_n_0 ),
        .I1(\a_reg[29]_i_6_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[29]_i_7_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[29]_i_8_n_0 ),
        .O(\a_reg[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[25]_i_3 
       (.I0(\a_reg[29]_i_9_n_0 ),
        .I1(\a_reg[29]_i_10_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[29]_i_11_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[29]_i_4_n_0 ),
        .O(\a_reg[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[26]_i_1 
       (.I0(din_IBUF[58]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[26]),
        .I3(\a_reg[26]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[26]_i_3_n_0 ),
        .O(\a_reg[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[26]_i_2 
       (.I0(\a_reg[30]_i_5_n_0 ),
        .I1(\a_reg[30]_i_6_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[30]_i_7_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[30]_i_8_n_0 ),
        .O(\a_reg[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[26]_i_3 
       (.I0(\a_reg[30]_i_9_n_0 ),
        .I1(\a_reg[30]_i_10_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[30]_i_11_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[30]_i_4_n_0 ),
        .O(\a_reg[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[27]_i_1 
       (.I0(din_IBUF[59]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[27]),
        .I3(\a_reg[27]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[27]_i_3_n_0 ),
        .O(\a_reg[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[27]_i_2 
       (.I0(\a_reg[31]_i_7_n_0 ),
        .I1(\a_reg[31]_i_8_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[31]_i_9_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[31]_i_10_n_0 ),
        .O(\a_reg[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[27]_i_3 
       (.I0(\a_reg[31]_i_11_n_0 ),
        .I1(\a_reg[31]_i_12_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[31]_i_13_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[31]_i_6_n_0 ),
        .O(\a_reg[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[28]_i_1 
       (.I0(din_IBUF[60]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[28]),
        .I3(\a_reg[28]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[28]_i_3_n_0 ),
        .O(\a_reg[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[28]_i_10 
       (.I0(minusOp0_out[19]),
        .I1(minusOp0_out[18]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[17]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[16]),
        .O(\a_reg[28]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[28]_i_11 
       (.I0(minusOp0_out[15]),
        .I1(minusOp0_out[14]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[13]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[12]),
        .O(\a_reg[28]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[28]_i_2 
       (.I0(\a_reg[28]_i_4_n_0 ),
        .I1(\a_reg[28]_i_5_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[28]_i_6_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[28]_i_7_n_0 ),
        .O(\a_reg[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[28]_i_3 
       (.I0(\a_reg[28]_i_8_n_0 ),
        .I1(\a_reg[28]_i_9_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[28]_i_10_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[28]_i_11_n_0 ),
        .O(\a_reg[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[28]_i_4 
       (.I0(minusOp0_out[11]),
        .I1(minusOp0_out[10]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[9]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[8]),
        .O(\a_reg[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[28]_i_5 
       (.I0(minusOp0_out[7]),
        .I1(minusOp0_out[6]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[5]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[4]),
        .O(\a_reg[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[28]_i_6 
       (.I0(minusOp0_out[3]),
        .I1(minusOp0_out[2]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[1]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[0]),
        .O(\a_reg[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[28]_i_7 
       (.I0(minusOp0_out[31]),
        .I1(minusOp0_out[30]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[29]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[28]),
        .O(\a_reg[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[28]_i_8 
       (.I0(minusOp0_out[27]),
        .I1(minusOp0_out[26]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[25]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[24]),
        .O(\a_reg[28]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[28]_i_9 
       (.I0(minusOp0_out[23]),
        .I1(minusOp0_out[22]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[21]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[20]),
        .O(\a_reg[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[29]_i_1 
       (.I0(din_IBUF[61]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[29]),
        .I3(\a_reg[29]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[29]_i_3_n_0 ),
        .O(\a_reg[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[29]_i_10 
       (.I0(minusOp0_out[20]),
        .I1(minusOp0_out[19]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[18]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[17]),
        .O(\a_reg[29]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[29]_i_11 
       (.I0(minusOp0_out[16]),
        .I1(minusOp0_out[15]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[14]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[13]),
        .O(\a_reg[29]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[29]_i_2 
       (.I0(\a_reg[29]_i_4_n_0 ),
        .I1(\a_reg[29]_i_5_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[29]_i_6_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[29]_i_7_n_0 ),
        .O(\a_reg[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[29]_i_3 
       (.I0(\a_reg[29]_i_8_n_0 ),
        .I1(\a_reg[29]_i_9_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[29]_i_10_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[29]_i_11_n_0 ),
        .O(\a_reg[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[29]_i_4 
       (.I0(minusOp0_out[12]),
        .I1(minusOp0_out[11]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[10]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[9]),
        .O(\a_reg[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[29]_i_5 
       (.I0(minusOp0_out[8]),
        .I1(minusOp0_out[7]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[6]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[5]),
        .O(\a_reg[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[29]_i_6 
       (.I0(minusOp0_out[4]),
        .I1(minusOp0_out[3]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[2]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[1]),
        .O(\a_reg[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[29]_i_7 
       (.I0(minusOp0_out[0]),
        .I1(minusOp0_out[31]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[30]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[29]),
        .O(\a_reg[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[29]_i_8 
       (.I0(minusOp0_out[28]),
        .I1(minusOp0_out[27]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[26]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[25]),
        .O(\a_reg[29]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[29]_i_9 
       (.I0(minusOp0_out[24]),
        .I1(minusOp0_out[23]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[22]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[21]),
        .O(\a_reg[29]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[2]_i_1 
       (.I0(din_IBUF[34]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[2]),
        .I3(\a_reg[18]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[18]_i_2_n_0 ),
        .O(\a_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[30]_i_1 
       (.I0(din_IBUF[62]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[30]),
        .I3(\a_reg[30]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[30]_i_3_n_0 ),
        .O(\a_reg[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[30]_i_10 
       (.I0(minusOp0_out[21]),
        .I1(minusOp0_out[20]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[19]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[18]),
        .O(\a_reg[30]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[30]_i_11 
       (.I0(minusOp0_out[17]),
        .I1(minusOp0_out[16]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[15]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[14]),
        .O(\a_reg[30]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[30]_i_2 
       (.I0(\a_reg[30]_i_4_n_0 ),
        .I1(\a_reg[30]_i_5_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[30]_i_6_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[30]_i_7_n_0 ),
        .O(\a_reg[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[30]_i_3 
       (.I0(\a_reg[30]_i_8_n_0 ),
        .I1(\a_reg[30]_i_9_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[30]_i_10_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[30]_i_11_n_0 ),
        .O(\a_reg[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[30]_i_4 
       (.I0(minusOp0_out[13]),
        .I1(minusOp0_out[12]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[11]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[10]),
        .O(\a_reg[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[30]_i_5 
       (.I0(minusOp0_out[9]),
        .I1(minusOp0_out[8]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[7]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[6]),
        .O(\a_reg[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[30]_i_6 
       (.I0(minusOp0_out[5]),
        .I1(minusOp0_out[4]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[3]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[2]),
        .O(\a_reg[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[30]_i_7 
       (.I0(minusOp0_out[1]),
        .I1(minusOp0_out[0]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[31]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[30]),
        .O(\a_reg[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[30]_i_8 
       (.I0(minusOp0_out[29]),
        .I1(minusOp0_out[28]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[27]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[26]),
        .O(\a_reg[30]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[30]_i_9 
       (.I0(minusOp0_out[25]),
        .I1(minusOp0_out[24]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[23]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[22]),
        .O(\a_reg[30]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \a_reg[31]_i_1 
       (.I0(i_cnt_reg[1]),
        .I1(i_cnt_reg[3]),
        .I2(i_cnt_reg[2]),
        .I3(di_vld_IBUF),
        .O(b_reg));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[31]_i_10 
       (.I0(minusOp0_out[30]),
        .I1(minusOp0_out[29]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[28]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[27]),
        .O(\a_reg[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[31]_i_11 
       (.I0(minusOp0_out[26]),
        .I1(minusOp0_out[25]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[24]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[23]),
        .O(\a_reg[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[31]_i_12 
       (.I0(minusOp0_out[22]),
        .I1(minusOp0_out[21]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[20]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[19]),
        .O(\a_reg[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[31]_i_13 
       (.I0(minusOp0_out[18]),
        .I1(minusOp0_out[17]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[16]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[15]),
        .O(\a_reg[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[31]_i_2 
       (.I0(din_IBUF[63]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[31]),
        .I3(\a_reg[31]_i_4_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[31]_i_5_n_0 ),
        .O(\a_reg[31]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_reg[31]_i_3 
       (.I0(clr_IBUF),
        .O(\a_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[31]_i_4 
       (.I0(\a_reg[31]_i_6_n_0 ),
        .I1(\a_reg[31]_i_7_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[31]_i_8_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[31]_i_9_n_0 ),
        .O(\a_reg[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[31]_i_5 
       (.I0(\a_reg[31]_i_10_n_0 ),
        .I1(\a_reg[31]_i_11_n_0 ),
        .I2(p_0_in[3]),
        .I3(\a_reg[31]_i_12_n_0 ),
        .I4(p_0_in[2]),
        .I5(\a_reg[31]_i_13_n_0 ),
        .O(\a_reg[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[31]_i_6 
       (.I0(minusOp0_out[14]),
        .I1(minusOp0_out[13]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[12]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[11]),
        .O(\a_reg[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[31]_i_7 
       (.I0(minusOp0_out[10]),
        .I1(minusOp0_out[9]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[8]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[7]),
        .O(\a_reg[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[31]_i_8 
       (.I0(minusOp0_out[6]),
        .I1(minusOp0_out[5]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[4]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[3]),
        .O(\a_reg[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_reg[31]_i_9 
       (.I0(minusOp0_out[2]),
        .I1(minusOp0_out[1]),
        .I2(p_0_in[1]),
        .I3(minusOp0_out[0]),
        .I4(p_0_in[0]),
        .I5(minusOp0_out[31]),
        .O(\a_reg[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[3]_i_1 
       (.I0(din_IBUF[35]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[3]),
        .I3(\a_reg[19]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[19]_i_2_n_0 ),
        .O(\a_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B8BBB8)) 
    \a_reg[4]_i_1 
       (.I0(din_IBUF[36]),
        .I1(di_vld_IBUF),
        .I2(\a_reg[20]_i_3_n_0 ),
        .I3(p_0_in[4]),
        .I4(\a_reg[20]_i_2_n_0 ),
        .O(\a_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[5]_i_1 
       (.I0(din_IBUF[37]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[5]),
        .I3(\a_reg[21]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[21]_i_2_n_0 ),
        .O(\a_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[6]_i_1 
       (.I0(din_IBUF[38]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[6]),
        .I3(\a_reg[22]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[22]_i_2_n_0 ),
        .O(\a_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[7]_i_1 
       (.I0(din_IBUF[39]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[7]),
        .I3(\a_reg[23]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[23]_i_2_n_0 ),
        .O(\a_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[8]_i_1 
       (.I0(din_IBUF[40]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[8]),
        .I3(\a_reg[24]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[24]_i_2_n_0 ),
        .O(\a_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \a_reg[9]_i_1 
       (.I0(din_IBUF[41]),
        .I1(di_vld_IBUF),
        .I2(p_0_in[9]),
        .I3(\a_reg[25]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(\a_reg[25]_i_2_n_0 ),
        .O(\a_reg[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[0]_i_1_n_0 ),
        .Q(a_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[10]_i_1_n_0 ),
        .Q(a_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[11]_i_1_n_0 ),
        .Q(a_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[12]_i_1_n_0 ),
        .Q(a_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[13]_i_1_n_0 ),
        .Q(a_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[14]_i_1_n_0 ),
        .Q(a_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[15]_i_1_n_0 ),
        .Q(a_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[16]_i_1_n_0 ),
        .Q(a_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[17]_i_1_n_0 ),
        .Q(a_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[18]_i_1_n_0 ),
        .Q(a_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[19]_i_1_n_0 ),
        .Q(a_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[1]_i_1_n_0 ),
        .Q(a_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[20]_i_1_n_0 ),
        .Q(a_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[21]_i_1_n_0 ),
        .Q(a_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[22]_i_1_n_0 ),
        .Q(a_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[23]_i_1_n_0 ),
        .Q(a_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[24]_i_1_n_0 ),
        .Q(a_reg[24]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[25]_i_1_n_0 ),
        .Q(a_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[26]_i_1_n_0 ),
        .Q(a_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[27]_i_1_n_0 ),
        .Q(a_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[28]_i_1_n_0 ),
        .Q(a_reg[28]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[29]_i_1_n_0 ),
        .Q(a_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[2]_i_1_n_0 ),
        .Q(a_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[30]_i_1_n_0 ),
        .Q(a_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[31]_i_2_n_0 ),
        .Q(a_reg[31]));
  CARRY4 \a_reg_reg[31]_i_14 
       (.CI(\a_reg_reg[31]_i_15_n_0 ),
        .CO({\a_reg_reg[31]_i_14_n_0 ,\NLW_a_reg_reg[31]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(a_reg[15:12]),
        .O(minusOp0_out[15:12]),
        .S({g0_b15_n_0,g0_b14_n_0,g0_b13_n_0,g0_b12_n_0}));
  CARRY4 \a_reg_reg[31]_i_15 
       (.CI(\a_reg_reg[31]_i_16_n_0 ),
        .CO({\a_reg_reg[31]_i_15_n_0 ,\NLW_a_reg_reg[31]_i_15_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(a_reg[11:8]),
        .O(minusOp0_out[11:8]),
        .S({g0_b11_n_0,g0_b10_n_0,g0_b9_n_0,g0_b8_n_0}));
  CARRY4 \a_reg_reg[31]_i_16 
       (.CI(\a_reg_reg[31]_i_17_n_0 ),
        .CO({\a_reg_reg[31]_i_16_n_0 ,\NLW_a_reg_reg[31]_i_16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(a_reg[7:4]),
        .O(minusOp0_out[7:4]),
        .S({g0_b7_n_0,g0_b6_n_0,g0_b5_n_0,g0_b4_n_0}));
  CARRY4 \a_reg_reg[31]_i_17 
       (.CI(1'b0),
        .CO({\a_reg_reg[31]_i_17_n_0 ,\NLW_a_reg_reg[31]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(a_reg[3:0]),
        .O(minusOp0_out[3:0]),
        .S({g0_b3_n_0,g0_b2_n_0,g0_b1_n_0,g0_b0_n_0}));
  CARRY4 \a_reg_reg[31]_i_18 
       (.CI(\a_reg_reg[31]_i_19_n_0 ),
        .CO(\NLW_a_reg_reg[31]_i_18_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,a_reg[30:28]}),
        .O(minusOp0_out[31:28]),
        .S({g0_b31_n_0,g0_b30_n_0,g0_b29_n_0,g0_b28_n_0}));
  CARRY4 \a_reg_reg[31]_i_19 
       (.CI(\a_reg_reg[31]_i_20_n_0 ),
        .CO({\a_reg_reg[31]_i_19_n_0 ,\NLW_a_reg_reg[31]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(a_reg[27:24]),
        .O(minusOp0_out[27:24]),
        .S({g0_b27_n_0,g0_b26_n_0,g0_b25_n_0,g0_b24_n_0}));
  CARRY4 \a_reg_reg[31]_i_20 
       (.CI(\a_reg_reg[31]_i_21_n_0 ),
        .CO({\a_reg_reg[31]_i_20_n_0 ,\NLW_a_reg_reg[31]_i_20_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(a_reg[23:20]),
        .O(minusOp0_out[23:20]),
        .S({g0_b23_n_0,g0_b22_n_0,g0_b21_n_0,g0_b20_n_0}));
  CARRY4 \a_reg_reg[31]_i_21 
       (.CI(\a_reg_reg[31]_i_14_n_0 ),
        .CO({\a_reg_reg[31]_i_21_n_0 ,\NLW_a_reg_reg[31]_i_21_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(a_reg[19:16]),
        .O(minusOp0_out[19:16]),
        .S({g0_b19_n_0,g0_b18_n_0,g0_b17_n_0,g0_b16_n_0}));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[3]_i_1_n_0 ),
        .Q(a_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[4]_i_1_n_0 ),
        .Q(a_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[5]_i_1_n_0 ),
        .Q(a_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[6]_i_1_n_0 ),
        .Q(a_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[7]_i_1_n_0 ),
        .Q(a_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[8]_i_1_n_0 ),
        .Q(a_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\a_reg[9]_i_1_n_0 ),
        .Q(a_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[0]_i_1 
       (.I0(din_IBUF[0]),
        .I1(p_0_in[0]),
        .I2(di_vld_IBUF),
        .O(\b_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[10]_i_1 
       (.I0(din_IBUF[10]),
        .I1(p_0_in[10]),
        .I2(di_vld_IBUF),
        .O(\b_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[11]_i_1 
       (.I0(din_IBUF[11]),
        .I1(p_0_in[11]),
        .I2(di_vld_IBUF),
        .O(\b_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[12]_i_1 
       (.I0(din_IBUF[12]),
        .I1(p_0_in[12]),
        .I2(di_vld_IBUF),
        .O(\b_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[13]_i_1 
       (.I0(din_IBUF[13]),
        .I1(p_0_in[13]),
        .I2(di_vld_IBUF),
        .O(\b_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[14]_i_1 
       (.I0(din_IBUF[14]),
        .I1(p_0_in[14]),
        .I2(di_vld_IBUF),
        .O(\b_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[15]_i_1 
       (.I0(din_IBUF[15]),
        .I1(p_0_in[15]),
        .I2(di_vld_IBUF),
        .O(\b_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[16]_i_1 
       (.I0(din_IBUF[16]),
        .I1(p_0_in[16]),
        .I2(di_vld_IBUF),
        .O(\b_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[17]_i_1 
       (.I0(din_IBUF[17]),
        .I1(p_0_in[17]),
        .I2(di_vld_IBUF),
        .O(\b_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[18]_i_1 
       (.I0(din_IBUF[18]),
        .I1(p_0_in[18]),
        .I2(di_vld_IBUF),
        .O(\b_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[19]_i_1 
       (.I0(din_IBUF[19]),
        .I1(p_0_in[19]),
        .I2(di_vld_IBUF),
        .O(\b_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[1]_i_1 
       (.I0(din_IBUF[1]),
        .I1(p_0_in[1]),
        .I2(di_vld_IBUF),
        .O(\b_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[20]_i_1 
       (.I0(din_IBUF[20]),
        .I1(p_0_in[20]),
        .I2(di_vld_IBUF),
        .O(\b_reg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[21]_i_1 
       (.I0(din_IBUF[21]),
        .I1(p_0_in[21]),
        .I2(di_vld_IBUF),
        .O(\b_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[22]_i_1 
       (.I0(din_IBUF[22]),
        .I1(p_0_in[22]),
        .I2(di_vld_IBUF),
        .O(\b_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[23]_i_1 
       (.I0(din_IBUF[23]),
        .I1(p_0_in[23]),
        .I2(di_vld_IBUF),
        .O(\b_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[24]_i_1 
       (.I0(din_IBUF[24]),
        .I1(p_0_in[24]),
        .I2(di_vld_IBUF),
        .O(\b_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[25]_i_1 
       (.I0(din_IBUF[25]),
        .I1(p_0_in[25]),
        .I2(di_vld_IBUF),
        .O(\b_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[26]_i_1 
       (.I0(din_IBUF[26]),
        .I1(p_0_in[26]),
        .I2(di_vld_IBUF),
        .O(\b_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[27]_i_1 
       (.I0(din_IBUF[27]),
        .I1(p_0_in[27]),
        .I2(di_vld_IBUF),
        .O(\b_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[28]_i_1 
       (.I0(din_IBUF[28]),
        .I1(p_0_in[28]),
        .I2(di_vld_IBUF),
        .O(\b_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[29]_i_1 
       (.I0(din_IBUF[29]),
        .I1(p_0_in[29]),
        .I2(di_vld_IBUF),
        .O(\b_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[2]_i_1 
       (.I0(din_IBUF[2]),
        .I1(p_0_in[2]),
        .I2(di_vld_IBUF),
        .O(\b_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[30]_i_1 
       (.I0(din_IBUF[30]),
        .I1(p_0_in[30]),
        .I2(di_vld_IBUF),
        .O(\b_reg[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[31]_i_1 
       (.I0(din_IBUF[31]),
        .I1(p_0_in[31]),
        .I2(di_vld_IBUF),
        .O(\b_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[3]_i_1 
       (.I0(din_IBUF[3]),
        .I1(p_0_in[3]),
        .I2(di_vld_IBUF),
        .O(\b_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[4]_i_1 
       (.I0(din_IBUF[4]),
        .I1(p_0_in[4]),
        .I2(di_vld_IBUF),
        .O(\b_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[5]_i_1 
       (.I0(din_IBUF[5]),
        .I1(p_0_in[5]),
        .I2(di_vld_IBUF),
        .O(\b_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[6]_i_1 
       (.I0(din_IBUF[6]),
        .I1(p_0_in[6]),
        .I2(di_vld_IBUF),
        .O(\b_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[7]_i_1 
       (.I0(din_IBUF[7]),
        .I1(p_0_in[7]),
        .I2(di_vld_IBUF),
        .O(\b_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[8]_i_1 
       (.I0(din_IBUF[8]),
        .I1(p_0_in[8]),
        .I2(di_vld_IBUF),
        .O(\b_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[9]_i_1 
       (.I0(din_IBUF[9]),
        .I1(p_0_in[9]),
        .I2(di_vld_IBUF),
        .O(\b_reg[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[0]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[10]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[11]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[12]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[13]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[14]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[15]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[16]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[17]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[18]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[19]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[1]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[20]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[21]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[22]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[23]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[24]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[25]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[26]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[27]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[28]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[29]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[2]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[30]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[31]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[3]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[4]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[5]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[6]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[7]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[8]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\b_reg[9]_i_1_n_0 ),
        .Q(\b_reg_reg_n_0_[9] ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF clr_IBUF_inst
       (.I(clr),
        .O(clr_IBUF));
  IBUF di_vld_IBUF_inst
       (.I(di_vld),
        .O(di_vld_IBUF));
  IBUF \din_IBUF[0]_inst 
       (.I(din[0]),
        .O(din_IBUF[0]));
  IBUF \din_IBUF[10]_inst 
       (.I(din[10]),
        .O(din_IBUF[10]));
  IBUF \din_IBUF[11]_inst 
       (.I(din[11]),
        .O(din_IBUF[11]));
  IBUF \din_IBUF[12]_inst 
       (.I(din[12]),
        .O(din_IBUF[12]));
  IBUF \din_IBUF[13]_inst 
       (.I(din[13]),
        .O(din_IBUF[13]));
  IBUF \din_IBUF[14]_inst 
       (.I(din[14]),
        .O(din_IBUF[14]));
  IBUF \din_IBUF[15]_inst 
       (.I(din[15]),
        .O(din_IBUF[15]));
  IBUF \din_IBUF[16]_inst 
       (.I(din[16]),
        .O(din_IBUF[16]));
  IBUF \din_IBUF[17]_inst 
       (.I(din[17]),
        .O(din_IBUF[17]));
  IBUF \din_IBUF[18]_inst 
       (.I(din[18]),
        .O(din_IBUF[18]));
  IBUF \din_IBUF[19]_inst 
       (.I(din[19]),
        .O(din_IBUF[19]));
  IBUF \din_IBUF[1]_inst 
       (.I(din[1]),
        .O(din_IBUF[1]));
  IBUF \din_IBUF[20]_inst 
       (.I(din[20]),
        .O(din_IBUF[20]));
  IBUF \din_IBUF[21]_inst 
       (.I(din[21]),
        .O(din_IBUF[21]));
  IBUF \din_IBUF[22]_inst 
       (.I(din[22]),
        .O(din_IBUF[22]));
  IBUF \din_IBUF[23]_inst 
       (.I(din[23]),
        .O(din_IBUF[23]));
  IBUF \din_IBUF[24]_inst 
       (.I(din[24]),
        .O(din_IBUF[24]));
  IBUF \din_IBUF[25]_inst 
       (.I(din[25]),
        .O(din_IBUF[25]));
  IBUF \din_IBUF[26]_inst 
       (.I(din[26]),
        .O(din_IBUF[26]));
  IBUF \din_IBUF[27]_inst 
       (.I(din[27]),
        .O(din_IBUF[27]));
  IBUF \din_IBUF[28]_inst 
       (.I(din[28]),
        .O(din_IBUF[28]));
  IBUF \din_IBUF[29]_inst 
       (.I(din[29]),
        .O(din_IBUF[29]));
  IBUF \din_IBUF[2]_inst 
       (.I(din[2]),
        .O(din_IBUF[2]));
  IBUF \din_IBUF[30]_inst 
       (.I(din[30]),
        .O(din_IBUF[30]));
  IBUF \din_IBUF[31]_inst 
       (.I(din[31]),
        .O(din_IBUF[31]));
  IBUF \din_IBUF[32]_inst 
       (.I(din[32]),
        .O(din_IBUF[32]));
  IBUF \din_IBUF[33]_inst 
       (.I(din[33]),
        .O(din_IBUF[33]));
  IBUF \din_IBUF[34]_inst 
       (.I(din[34]),
        .O(din_IBUF[34]));
  IBUF \din_IBUF[35]_inst 
       (.I(din[35]),
        .O(din_IBUF[35]));
  IBUF \din_IBUF[36]_inst 
       (.I(din[36]),
        .O(din_IBUF[36]));
  IBUF \din_IBUF[37]_inst 
       (.I(din[37]),
        .O(din_IBUF[37]));
  IBUF \din_IBUF[38]_inst 
       (.I(din[38]),
        .O(din_IBUF[38]));
  IBUF \din_IBUF[39]_inst 
       (.I(din[39]),
        .O(din_IBUF[39]));
  IBUF \din_IBUF[3]_inst 
       (.I(din[3]),
        .O(din_IBUF[3]));
  IBUF \din_IBUF[40]_inst 
       (.I(din[40]),
        .O(din_IBUF[40]));
  IBUF \din_IBUF[41]_inst 
       (.I(din[41]),
        .O(din_IBUF[41]));
  IBUF \din_IBUF[42]_inst 
       (.I(din[42]),
        .O(din_IBUF[42]));
  IBUF \din_IBUF[43]_inst 
       (.I(din[43]),
        .O(din_IBUF[43]));
  IBUF \din_IBUF[44]_inst 
       (.I(din[44]),
        .O(din_IBUF[44]));
  IBUF \din_IBUF[45]_inst 
       (.I(din[45]),
        .O(din_IBUF[45]));
  IBUF \din_IBUF[46]_inst 
       (.I(din[46]),
        .O(din_IBUF[46]));
  IBUF \din_IBUF[47]_inst 
       (.I(din[47]),
        .O(din_IBUF[47]));
  IBUF \din_IBUF[48]_inst 
       (.I(din[48]),
        .O(din_IBUF[48]));
  IBUF \din_IBUF[49]_inst 
       (.I(din[49]),
        .O(din_IBUF[49]));
  IBUF \din_IBUF[4]_inst 
       (.I(din[4]),
        .O(din_IBUF[4]));
  IBUF \din_IBUF[50]_inst 
       (.I(din[50]),
        .O(din_IBUF[50]));
  IBUF \din_IBUF[51]_inst 
       (.I(din[51]),
        .O(din_IBUF[51]));
  IBUF \din_IBUF[52]_inst 
       (.I(din[52]),
        .O(din_IBUF[52]));
  IBUF \din_IBUF[53]_inst 
       (.I(din[53]),
        .O(din_IBUF[53]));
  IBUF \din_IBUF[54]_inst 
       (.I(din[54]),
        .O(din_IBUF[54]));
  IBUF \din_IBUF[55]_inst 
       (.I(din[55]),
        .O(din_IBUF[55]));
  IBUF \din_IBUF[56]_inst 
       (.I(din[56]),
        .O(din_IBUF[56]));
  IBUF \din_IBUF[57]_inst 
       (.I(din[57]),
        .O(din_IBUF[57]));
  IBUF \din_IBUF[58]_inst 
       (.I(din[58]),
        .O(din_IBUF[58]));
  IBUF \din_IBUF[59]_inst 
       (.I(din[59]),
        .O(din_IBUF[59]));
  IBUF \din_IBUF[5]_inst 
       (.I(din[5]),
        .O(din_IBUF[5]));
  IBUF \din_IBUF[60]_inst 
       (.I(din[60]),
        .O(din_IBUF[60]));
  IBUF \din_IBUF[61]_inst 
       (.I(din[61]),
        .O(din_IBUF[61]));
  IBUF \din_IBUF[62]_inst 
       (.I(din[62]),
        .O(din_IBUF[62]));
  IBUF \din_IBUF[63]_inst 
       (.I(din[63]),
        .O(din_IBUF[63]));
  IBUF \din_IBUF[6]_inst 
       (.I(din[6]),
        .O(din_IBUF[6]));
  IBUF \din_IBUF[7]_inst 
       (.I(din[7]),
        .O(din_IBUF[7]));
  IBUF \din_IBUF[8]_inst 
       (.I(din[8]),
        .O(din_IBUF[8]));
  IBUF \din_IBUF[9]_inst 
       (.I(din[9]),
        .O(din_IBUF[9]));
  OBUF do_rdy_OBUF_inst
       (.I(do_rdy_OBUF),
        .O(do_rdy));
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    do_rdy_i_1
       (.I0(i_cnt_reg[1]),
        .I1(i_cnt_reg[0]),
        .I2(i_cnt_reg[3]),
        .I3(i_cnt_reg[2]),
        .I4(di_vld_IBUF),
        .O(do_rdy_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    do_rdy_reg
       (.C(clk_IBUF_BUFG),
        .CE(do_rdy_i_1_n_0),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\dout[63]_i_1_n_0 ),
        .Q(do_rdy_OBUF));
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[0]_i_1 
       (.I0(a_reg[0]),
        .I1(\dout[16]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[16]_i_2_n_0 ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[10]_i_1 
       (.I0(a_reg[10]),
        .I1(\dout[26]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[26]_i_2_n_0 ),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[11]_i_1 
       (.I0(a_reg[11]),
        .I1(\dout[27]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[27]_i_2_n_0 ),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[12]_i_1 
       (.I0(a_reg[12]),
        .I1(\dout[28]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[28]_i_2_n_0 ),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[13]_i_1 
       (.I0(a_reg[13]),
        .I1(\dout[29]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[29]_i_2_n_0 ),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[14]_i_1 
       (.I0(a_reg[14]),
        .I1(\dout[30]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[30]_i_2_n_0 ),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[15]_i_1 
       (.I0(a_reg[15]),
        .I1(\dout[31]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[31]_i_2_n_0 ),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[16]_i_1 
       (.I0(a_reg[16]),
        .I1(\dout[16]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[16]_i_3_n_0 ),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[16]_i_2 
       (.I0(\dout[28]_i_7_n_0 ),
        .I1(\dout[28]_i_8_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[28]_i_9_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[28]_i_10_n_0 ),
        .O(\dout[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[16]_i_3 
       (.I0(\dout[28]_i_11_n_0 ),
        .I1(\dout[28]_i_4_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[28]_i_5_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[28]_i_6_n_0 ),
        .O(\dout[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[17]_i_1 
       (.I0(a_reg[17]),
        .I1(\dout[17]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[17]_i_3_n_0 ),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[17]_i_2 
       (.I0(\dout[29]_i_7_n_0 ),
        .I1(\dout[29]_i_8_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[29]_i_9_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[29]_i_10_n_0 ),
        .O(\dout[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[17]_i_3 
       (.I0(\dout[29]_i_11_n_0 ),
        .I1(\dout[29]_i_4_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[29]_i_5_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[29]_i_6_n_0 ),
        .O(\dout[17]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[18]_i_1 
       (.I0(a_reg[18]),
        .I1(\dout[18]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[18]_i_3_n_0 ),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[18]_i_2 
       (.I0(\dout[30]_i_7_n_0 ),
        .I1(\dout[30]_i_8_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[30]_i_9_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[30]_i_10_n_0 ),
        .O(\dout[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[18]_i_3 
       (.I0(\dout[30]_i_11_n_0 ),
        .I1(\dout[30]_i_4_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[30]_i_5_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[30]_i_6_n_0 ),
        .O(\dout[18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[19]_i_1 
       (.I0(a_reg[19]),
        .I1(\dout[19]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[19]_i_3_n_0 ),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[19]_i_2 
       (.I0(\dout[31]_i_7_n_0 ),
        .I1(\dout[31]_i_8_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[31]_i_9_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[31]_i_10_n_0 ),
        .O(\dout[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[19]_i_3 
       (.I0(\dout[31]_i_11_n_0 ),
        .I1(\dout[31]_i_4_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[31]_i_5_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[31]_i_6_n_0 ),
        .O(\dout[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[1]_i_1 
       (.I0(a_reg[1]),
        .I1(\dout[17]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[17]_i_2_n_0 ),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[20]_i_1 
       (.I0(a_reg[20]),
        .I1(\dout[20]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[20]_i_3_n_0 ),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[20]_i_2 
       (.I0(\dout[28]_i_6_n_0 ),
        .I1(\dout[28]_i_7_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[28]_i_8_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[28]_i_9_n_0 ),
        .O(\dout[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[20]_i_3 
       (.I0(\dout[28]_i_10_n_0 ),
        .I1(\dout[28]_i_11_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[28]_i_4_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[28]_i_5_n_0 ),
        .O(\dout[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[21]_i_1 
       (.I0(a_reg[21]),
        .I1(\dout[21]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[21]_i_3_n_0 ),
        .O(p_0_in[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[21]_i_2 
       (.I0(\dout[29]_i_6_n_0 ),
        .I1(\dout[29]_i_7_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[29]_i_8_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[29]_i_9_n_0 ),
        .O(\dout[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[21]_i_3 
       (.I0(\dout[29]_i_10_n_0 ),
        .I1(\dout[29]_i_11_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[29]_i_4_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[29]_i_5_n_0 ),
        .O(\dout[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[22]_i_1 
       (.I0(a_reg[22]),
        .I1(\dout[22]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[22]_i_3_n_0 ),
        .O(p_0_in[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[22]_i_2 
       (.I0(\dout[30]_i_6_n_0 ),
        .I1(\dout[30]_i_7_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[30]_i_8_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[30]_i_9_n_0 ),
        .O(\dout[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[22]_i_3 
       (.I0(\dout[30]_i_10_n_0 ),
        .I1(\dout[30]_i_11_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[30]_i_4_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[30]_i_5_n_0 ),
        .O(\dout[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[23]_i_1 
       (.I0(a_reg[23]),
        .I1(\dout[23]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[23]_i_3_n_0 ),
        .O(p_0_in[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[23]_i_2 
       (.I0(\dout[31]_i_6_n_0 ),
        .I1(\dout[31]_i_7_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[31]_i_8_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[31]_i_9_n_0 ),
        .O(\dout[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[23]_i_3 
       (.I0(\dout[31]_i_10_n_0 ),
        .I1(\dout[31]_i_11_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[31]_i_4_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[31]_i_5_n_0 ),
        .O(\dout[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[24]_i_1 
       (.I0(a_reg[24]),
        .I1(\dout[24]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[24]_i_3_n_0 ),
        .O(p_0_in[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[24]_i_2 
       (.I0(\dout[28]_i_5_n_0 ),
        .I1(\dout[28]_i_6_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[28]_i_7_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[28]_i_8_n_0 ),
        .O(\dout[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[24]_i_3 
       (.I0(\dout[28]_i_9_n_0 ),
        .I1(\dout[28]_i_10_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[28]_i_11_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[28]_i_4_n_0 ),
        .O(\dout[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[25]_i_1 
       (.I0(a_reg[25]),
        .I1(\dout[25]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[25]_i_3_n_0 ),
        .O(p_0_in[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[25]_i_2 
       (.I0(\dout[29]_i_5_n_0 ),
        .I1(\dout[29]_i_6_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[29]_i_7_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[29]_i_8_n_0 ),
        .O(\dout[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[25]_i_3 
       (.I0(\dout[29]_i_9_n_0 ),
        .I1(\dout[29]_i_10_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[29]_i_11_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[29]_i_4_n_0 ),
        .O(\dout[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[26]_i_1 
       (.I0(a_reg[26]),
        .I1(\dout[26]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[26]_i_3_n_0 ),
        .O(p_0_in[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[26]_i_2 
       (.I0(\dout[30]_i_5_n_0 ),
        .I1(\dout[30]_i_6_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[30]_i_7_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[30]_i_8_n_0 ),
        .O(\dout[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[26]_i_3 
       (.I0(\dout[30]_i_9_n_0 ),
        .I1(\dout[30]_i_10_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[30]_i_11_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[30]_i_4_n_0 ),
        .O(\dout[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[27]_i_1 
       (.I0(a_reg[27]),
        .I1(\dout[27]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[27]_i_3_n_0 ),
        .O(p_0_in[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_2 
       (.I0(\dout[31]_i_5_n_0 ),
        .I1(\dout[31]_i_6_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[31]_i_7_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[31]_i_8_n_0 ),
        .O(\dout[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_3 
       (.I0(\dout[31]_i_9_n_0 ),
        .I1(\dout[31]_i_10_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[31]_i_11_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[31]_i_4_n_0 ),
        .O(\dout[27]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[28]_i_1 
       (.I0(a_reg[28]),
        .I1(\dout[28]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[28]_i_3_n_0 ),
        .O(p_0_in[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[28]_i_10 
       (.I0(minusOp2_out[19]),
        .I1(minusOp2_out[18]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[17]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[16]),
        .O(\dout[28]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[28]_i_11 
       (.I0(minusOp2_out[15]),
        .I1(minusOp2_out[14]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[13]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[12]),
        .O(\dout[28]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[28]_i_2 
       (.I0(\dout[28]_i_4_n_0 ),
        .I1(\dout[28]_i_5_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[28]_i_6_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[28]_i_7_n_0 ),
        .O(\dout[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[28]_i_3 
       (.I0(\dout[28]_i_8_n_0 ),
        .I1(\dout[28]_i_9_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[28]_i_10_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[28]_i_11_n_0 ),
        .O(\dout[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[28]_i_4 
       (.I0(minusOp2_out[11]),
        .I1(minusOp2_out[10]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[9]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[8]),
        .O(\dout[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[28]_i_5 
       (.I0(minusOp2_out[7]),
        .I1(minusOp2_out[6]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[5]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[4]),
        .O(\dout[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[28]_i_6 
       (.I0(minusOp2_out[3]),
        .I1(minusOp2_out[2]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[1]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[0]),
        .O(\dout[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[28]_i_7 
       (.I0(minusOp2_out[31]),
        .I1(minusOp2_out[30]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[29]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[28]),
        .O(\dout[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[28]_i_8 
       (.I0(minusOp2_out[27]),
        .I1(minusOp2_out[26]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[25]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[24]),
        .O(\dout[28]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[28]_i_9 
       (.I0(minusOp2_out[23]),
        .I1(minusOp2_out[22]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[21]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[20]),
        .O(\dout[28]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[29]_i_1 
       (.I0(a_reg[29]),
        .I1(\dout[29]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[29]_i_3_n_0 ),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[29]_i_10 
       (.I0(minusOp2_out[20]),
        .I1(minusOp2_out[19]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[18]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[17]),
        .O(\dout[29]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[29]_i_11 
       (.I0(minusOp2_out[16]),
        .I1(minusOp2_out[15]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[14]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[13]),
        .O(\dout[29]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[29]_i_2 
       (.I0(\dout[29]_i_4_n_0 ),
        .I1(\dout[29]_i_5_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[29]_i_6_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[29]_i_7_n_0 ),
        .O(\dout[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[29]_i_3 
       (.I0(\dout[29]_i_8_n_0 ),
        .I1(\dout[29]_i_9_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[29]_i_10_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[29]_i_11_n_0 ),
        .O(\dout[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[29]_i_4 
       (.I0(minusOp2_out[12]),
        .I1(minusOp2_out[11]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[10]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[9]),
        .O(\dout[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[29]_i_5 
       (.I0(minusOp2_out[8]),
        .I1(minusOp2_out[7]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[6]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[5]),
        .O(\dout[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[29]_i_6 
       (.I0(minusOp2_out[4]),
        .I1(minusOp2_out[3]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[2]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[1]),
        .O(\dout[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[29]_i_7 
       (.I0(minusOp2_out[0]),
        .I1(minusOp2_out[31]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[30]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[29]),
        .O(\dout[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[29]_i_8 
       (.I0(minusOp2_out[28]),
        .I1(minusOp2_out[27]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[26]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[25]),
        .O(\dout[29]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[29]_i_9 
       (.I0(minusOp2_out[24]),
        .I1(minusOp2_out[23]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[22]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[21]),
        .O(\dout[29]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[2]_i_1 
       (.I0(a_reg[2]),
        .I1(\dout[18]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[18]_i_2_n_0 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[30]_i_1 
       (.I0(a_reg[30]),
        .I1(\dout[30]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[30]_i_3_n_0 ),
        .O(p_0_in[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[30]_i_10 
       (.I0(minusOp2_out[21]),
        .I1(minusOp2_out[20]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[19]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[18]),
        .O(\dout[30]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[30]_i_11 
       (.I0(minusOp2_out[17]),
        .I1(minusOp2_out[16]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[15]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[14]),
        .O(\dout[30]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[30]_i_2 
       (.I0(\dout[30]_i_4_n_0 ),
        .I1(\dout[30]_i_5_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[30]_i_6_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[30]_i_7_n_0 ),
        .O(\dout[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[30]_i_3 
       (.I0(\dout[30]_i_8_n_0 ),
        .I1(\dout[30]_i_9_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[30]_i_10_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[30]_i_11_n_0 ),
        .O(\dout[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[30]_i_4 
       (.I0(minusOp2_out[13]),
        .I1(minusOp2_out[12]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[11]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[10]),
        .O(\dout[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[30]_i_5 
       (.I0(minusOp2_out[9]),
        .I1(minusOp2_out[8]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[7]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[6]),
        .O(\dout[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[30]_i_6 
       (.I0(minusOp2_out[5]),
        .I1(minusOp2_out[4]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[3]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[2]),
        .O(\dout[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[30]_i_7 
       (.I0(minusOp2_out[1]),
        .I1(minusOp2_out[0]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[31]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[30]),
        .O(\dout[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[30]_i_8 
       (.I0(minusOp2_out[29]),
        .I1(minusOp2_out[28]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[27]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[26]),
        .O(\dout[30]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[30]_i_9 
       (.I0(minusOp2_out[25]),
        .I1(minusOp2_out[24]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[23]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[22]),
        .O(\dout[30]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[31]_i_1 
       (.I0(a_reg[31]),
        .I1(\dout[31]_i_2_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[31]_i_3_n_0 ),
        .O(p_0_in[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_10 
       (.I0(minusOp2_out[22]),
        .I1(minusOp2_out[21]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[20]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[19]),
        .O(\dout[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_11 
       (.I0(minusOp2_out[18]),
        .I1(minusOp2_out[17]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[16]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[15]),
        .O(\dout[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_2 
       (.I0(\dout[31]_i_4_n_0 ),
        .I1(\dout[31]_i_5_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[31]_i_6_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[31]_i_7_n_0 ),
        .O(\dout[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_3 
       (.I0(\dout[31]_i_8_n_0 ),
        .I1(\dout[31]_i_9_n_0 ),
        .I2(a_reg[3]),
        .I3(\dout[31]_i_10_n_0 ),
        .I4(a_reg[2]),
        .I5(\dout[31]_i_11_n_0 ),
        .O(\dout[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_4 
       (.I0(minusOp2_out[14]),
        .I1(minusOp2_out[13]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[12]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[11]),
        .O(\dout[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_5 
       (.I0(minusOp2_out[10]),
        .I1(minusOp2_out[9]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[8]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[7]),
        .O(\dout[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_6 
       (.I0(minusOp2_out[6]),
        .I1(minusOp2_out[5]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[4]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[3]),
        .O(\dout[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_7 
       (.I0(minusOp2_out[2]),
        .I1(minusOp2_out[1]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[0]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[31]),
        .O(\dout[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_8 
       (.I0(minusOp2_out[30]),
        .I1(minusOp2_out[29]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[28]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[27]),
        .O(\dout[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_9 
       (.I0(minusOp2_out[26]),
        .I1(minusOp2_out[25]),
        .I2(a_reg[1]),
        .I3(minusOp2_out[24]),
        .I4(a_reg[0]),
        .I5(minusOp2_out[23]),
        .O(\dout[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[32]_i_1 
       (.I0(p_0_in[0]),
        .I1(\a_reg[16]_i_3_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[16]_i_2_n_0 ),
        .O(a[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[33]_i_1 
       (.I0(p_0_in[1]),
        .I1(\a_reg[17]_i_3_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[17]_i_2_n_0 ),
        .O(a[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[34]_i_1 
       (.I0(p_0_in[2]),
        .I1(\a_reg[18]_i_3_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[18]_i_2_n_0 ),
        .O(a[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[35]_i_1 
       (.I0(p_0_in[3]),
        .I1(\a_reg[19]_i_3_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[19]_i_2_n_0 ),
        .O(a[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    \dout[36]_i_1 
       (.I0(\a_reg[20]_i_3_n_0 ),
        .I1(p_0_in[4]),
        .I2(\a_reg[20]_i_2_n_0 ),
        .O(a[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[37]_i_1 
       (.I0(p_0_in[5]),
        .I1(\a_reg[21]_i_3_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[21]_i_2_n_0 ),
        .O(a[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[38]_i_1 
       (.I0(p_0_in[6]),
        .I1(\a_reg[22]_i_3_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[22]_i_2_n_0 ),
        .O(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[39]_i_1 
       (.I0(p_0_in[7]),
        .I1(\a_reg[23]_i_3_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[23]_i_2_n_0 ),
        .O(a[7]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[3]_i_1 
       (.I0(a_reg[3]),
        .I1(\dout[19]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[19]_i_2_n_0 ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[40]_i_1 
       (.I0(p_0_in[8]),
        .I1(\a_reg[24]_i_3_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[24]_i_2_n_0 ),
        .O(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[41]_i_1 
       (.I0(p_0_in[9]),
        .I1(\a_reg[25]_i_3_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[25]_i_2_n_0 ),
        .O(a[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[42]_i_1 
       (.I0(p_0_in[10]),
        .I1(\a_reg[26]_i_3_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[26]_i_2_n_0 ),
        .O(a[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[43]_i_1 
       (.I0(p_0_in[11]),
        .I1(\a_reg[27]_i_3_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[27]_i_2_n_0 ),
        .O(a[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[44]_i_1 
       (.I0(p_0_in[12]),
        .I1(\a_reg[28]_i_3_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[28]_i_2_n_0 ),
        .O(a[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[45]_i_1 
       (.I0(p_0_in[13]),
        .I1(\a_reg[29]_i_3_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[29]_i_2_n_0 ),
        .O(a[13]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[46]_i_1 
       (.I0(p_0_in[14]),
        .I1(\a_reg[30]_i_3_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[30]_i_2_n_0 ),
        .O(a[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[47]_i_1 
       (.I0(p_0_in[15]),
        .I1(\a_reg[31]_i_5_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[31]_i_4_n_0 ),
        .O(a[15]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[48]_i_1 
       (.I0(p_0_in[16]),
        .I1(\a_reg[16]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[16]_i_3_n_0 ),
        .O(a[16]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[49]_i_1 
       (.I0(p_0_in[17]),
        .I1(\a_reg[17]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[17]_i_3_n_0 ),
        .O(a[17]));
  LUT3 #(
    .INIT(8'h2E)) 
    \dout[4]_i_1 
       (.I0(\dout[20]_i_3_n_0 ),
        .I1(a_reg[4]),
        .I2(\dout[20]_i_2_n_0 ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[50]_i_1 
       (.I0(p_0_in[18]),
        .I1(\a_reg[18]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[18]_i_3_n_0 ),
        .O(a[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[51]_i_1 
       (.I0(p_0_in[19]),
        .I1(\a_reg[19]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[19]_i_3_n_0 ),
        .O(a[19]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[52]_i_1 
       (.I0(p_0_in[20]),
        .I1(\a_reg[20]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[20]_i_3_n_0 ),
        .O(a[20]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[53]_i_1 
       (.I0(p_0_in[21]),
        .I1(\a_reg[21]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[21]_i_3_n_0 ),
        .O(a[21]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[54]_i_1 
       (.I0(p_0_in[22]),
        .I1(\a_reg[22]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[22]_i_3_n_0 ),
        .O(a[22]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[55]_i_1 
       (.I0(p_0_in[23]),
        .I1(\a_reg[23]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[23]_i_3_n_0 ),
        .O(a[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[56]_i_1 
       (.I0(p_0_in[24]),
        .I1(\a_reg[24]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[24]_i_3_n_0 ),
        .O(a[24]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[57]_i_1 
       (.I0(p_0_in[25]),
        .I1(\a_reg[25]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[25]_i_3_n_0 ),
        .O(a[25]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[58]_i_1 
       (.I0(p_0_in[26]),
        .I1(\a_reg[26]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[26]_i_3_n_0 ),
        .O(a[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[59]_i_1 
       (.I0(p_0_in[27]),
        .I1(\a_reg[27]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[27]_i_3_n_0 ),
        .O(a[27]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[5]_i_1 
       (.I0(a_reg[5]),
        .I1(\dout[21]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[21]_i_2_n_0 ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[60]_i_1 
       (.I0(p_0_in[28]),
        .I1(\a_reg[28]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[28]_i_3_n_0 ),
        .O(a[28]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[61]_i_1 
       (.I0(p_0_in[29]),
        .I1(\a_reg[29]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[29]_i_3_n_0 ),
        .O(a[29]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[62]_i_1 
       (.I0(p_0_in[30]),
        .I1(\a_reg[30]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[30]_i_3_n_0 ),
        .O(a[30]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \dout[63]_i_1 
       (.I0(i_cnt_reg[1]),
        .I1(i_cnt_reg[0]),
        .I2(i_cnt_reg[3]),
        .I3(i_cnt_reg[2]),
        .I4(di_vld_IBUF),
        .O(\dout[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[63]_i_2 
       (.I0(p_0_in[31]),
        .I1(\a_reg[31]_i_4_n_0 ),
        .I2(p_0_in[4]),
        .I3(\a_reg[31]_i_5_n_0 ),
        .O(a[31]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[6]_i_1 
       (.I0(a_reg[6]),
        .I1(\dout[22]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[22]_i_2_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[7]_i_1 
       (.I0(a_reg[7]),
        .I1(\dout[23]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[23]_i_2_n_0 ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[8]_i_1 
       (.I0(a_reg[8]),
        .I1(\dout[24]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[24]_i_2_n_0 ),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \dout[9]_i_1 
       (.I0(a_reg[9]),
        .I1(\dout[25]_i_3_n_0 ),
        .I2(a_reg[4]),
        .I3(\dout[25]_i_2_n_0 ),
        .O(p_0_in[9]));
  OBUF \dout_OBUF[0]_inst 
       (.I(dout_OBUF[0]),
        .O(dout[0]));
  OBUF \dout_OBUF[10]_inst 
       (.I(dout_OBUF[10]),
        .O(dout[10]));
  OBUF \dout_OBUF[11]_inst 
       (.I(dout_OBUF[11]),
        .O(dout[11]));
  OBUF \dout_OBUF[12]_inst 
       (.I(dout_OBUF[12]),
        .O(dout[12]));
  OBUF \dout_OBUF[13]_inst 
       (.I(dout_OBUF[13]),
        .O(dout[13]));
  OBUF \dout_OBUF[14]_inst 
       (.I(dout_OBUF[14]),
        .O(dout[14]));
  OBUF \dout_OBUF[15]_inst 
       (.I(dout_OBUF[15]),
        .O(dout[15]));
  OBUF \dout_OBUF[16]_inst 
       (.I(dout_OBUF[16]),
        .O(dout[16]));
  OBUF \dout_OBUF[17]_inst 
       (.I(dout_OBUF[17]),
        .O(dout[17]));
  OBUF \dout_OBUF[18]_inst 
       (.I(dout_OBUF[18]),
        .O(dout[18]));
  OBUF \dout_OBUF[19]_inst 
       (.I(dout_OBUF[19]),
        .O(dout[19]));
  OBUF \dout_OBUF[1]_inst 
       (.I(dout_OBUF[1]),
        .O(dout[1]));
  OBUF \dout_OBUF[20]_inst 
       (.I(dout_OBUF[20]),
        .O(dout[20]));
  OBUF \dout_OBUF[21]_inst 
       (.I(dout_OBUF[21]),
        .O(dout[21]));
  OBUF \dout_OBUF[22]_inst 
       (.I(dout_OBUF[22]),
        .O(dout[22]));
  OBUF \dout_OBUF[23]_inst 
       (.I(dout_OBUF[23]),
        .O(dout[23]));
  OBUF \dout_OBUF[24]_inst 
       (.I(dout_OBUF[24]),
        .O(dout[24]));
  OBUF \dout_OBUF[25]_inst 
       (.I(dout_OBUF[25]),
        .O(dout[25]));
  OBUF \dout_OBUF[26]_inst 
       (.I(dout_OBUF[26]),
        .O(dout[26]));
  OBUF \dout_OBUF[27]_inst 
       (.I(dout_OBUF[27]),
        .O(dout[27]));
  OBUF \dout_OBUF[28]_inst 
       (.I(dout_OBUF[28]),
        .O(dout[28]));
  OBUF \dout_OBUF[29]_inst 
       (.I(dout_OBUF[29]),
        .O(dout[29]));
  OBUF \dout_OBUF[2]_inst 
       (.I(dout_OBUF[2]),
        .O(dout[2]));
  OBUF \dout_OBUF[30]_inst 
       (.I(dout_OBUF[30]),
        .O(dout[30]));
  OBUF \dout_OBUF[31]_inst 
       (.I(dout_OBUF[31]),
        .O(dout[31]));
  OBUF \dout_OBUF[32]_inst 
       (.I(dout_OBUF[32]),
        .O(dout[32]));
  OBUF \dout_OBUF[33]_inst 
       (.I(dout_OBUF[33]),
        .O(dout[33]));
  OBUF \dout_OBUF[34]_inst 
       (.I(dout_OBUF[34]),
        .O(dout[34]));
  OBUF \dout_OBUF[35]_inst 
       (.I(dout_OBUF[35]),
        .O(dout[35]));
  OBUF \dout_OBUF[36]_inst 
       (.I(dout_OBUF[36]),
        .O(dout[36]));
  OBUF \dout_OBUF[37]_inst 
       (.I(dout_OBUF[37]),
        .O(dout[37]));
  OBUF \dout_OBUF[38]_inst 
       (.I(dout_OBUF[38]),
        .O(dout[38]));
  OBUF \dout_OBUF[39]_inst 
       (.I(dout_OBUF[39]),
        .O(dout[39]));
  OBUF \dout_OBUF[3]_inst 
       (.I(dout_OBUF[3]),
        .O(dout[3]));
  OBUF \dout_OBUF[40]_inst 
       (.I(dout_OBUF[40]),
        .O(dout[40]));
  OBUF \dout_OBUF[41]_inst 
       (.I(dout_OBUF[41]),
        .O(dout[41]));
  OBUF \dout_OBUF[42]_inst 
       (.I(dout_OBUF[42]),
        .O(dout[42]));
  OBUF \dout_OBUF[43]_inst 
       (.I(dout_OBUF[43]),
        .O(dout[43]));
  OBUF \dout_OBUF[44]_inst 
       (.I(dout_OBUF[44]),
        .O(dout[44]));
  OBUF \dout_OBUF[45]_inst 
       (.I(dout_OBUF[45]),
        .O(dout[45]));
  OBUF \dout_OBUF[46]_inst 
       (.I(dout_OBUF[46]),
        .O(dout[46]));
  OBUF \dout_OBUF[47]_inst 
       (.I(dout_OBUF[47]),
        .O(dout[47]));
  OBUF \dout_OBUF[48]_inst 
       (.I(dout_OBUF[48]),
        .O(dout[48]));
  OBUF \dout_OBUF[49]_inst 
       (.I(dout_OBUF[49]),
        .O(dout[49]));
  OBUF \dout_OBUF[4]_inst 
       (.I(dout_OBUF[4]),
        .O(dout[4]));
  OBUF \dout_OBUF[50]_inst 
       (.I(dout_OBUF[50]),
        .O(dout[50]));
  OBUF \dout_OBUF[51]_inst 
       (.I(dout_OBUF[51]),
        .O(dout[51]));
  OBUF \dout_OBUF[52]_inst 
       (.I(dout_OBUF[52]),
        .O(dout[52]));
  OBUF \dout_OBUF[53]_inst 
       (.I(dout_OBUF[53]),
        .O(dout[53]));
  OBUF \dout_OBUF[54]_inst 
       (.I(dout_OBUF[54]),
        .O(dout[54]));
  OBUF \dout_OBUF[55]_inst 
       (.I(dout_OBUF[55]),
        .O(dout[55]));
  OBUF \dout_OBUF[56]_inst 
       (.I(dout_OBUF[56]),
        .O(dout[56]));
  OBUF \dout_OBUF[57]_inst 
       (.I(dout_OBUF[57]),
        .O(dout[57]));
  OBUF \dout_OBUF[58]_inst 
       (.I(dout_OBUF[58]),
        .O(dout[58]));
  OBUF \dout_OBUF[59]_inst 
       (.I(dout_OBUF[59]),
        .O(dout[59]));
  OBUF \dout_OBUF[5]_inst 
       (.I(dout_OBUF[5]),
        .O(dout[5]));
  OBUF \dout_OBUF[60]_inst 
       (.I(dout_OBUF[60]),
        .O(dout[60]));
  OBUF \dout_OBUF[61]_inst 
       (.I(dout_OBUF[61]),
        .O(dout[61]));
  OBUF \dout_OBUF[62]_inst 
       (.I(dout_OBUF[62]),
        .O(dout[62]));
  OBUF \dout_OBUF[63]_inst 
       (.I(dout_OBUF[63]),
        .O(dout[63]));
  OBUF \dout_OBUF[6]_inst 
       (.I(dout_OBUF[6]),
        .O(dout[6]));
  OBUF \dout_OBUF[7]_inst 
       (.I(dout_OBUF[7]),
        .O(dout[7]));
  OBUF \dout_OBUF[8]_inst 
       (.I(dout_OBUF[8]),
        .O(dout[8]));
  OBUF \dout_OBUF[9]_inst 
       (.I(dout_OBUF[9]),
        .O(dout[9]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[0]),
        .Q(dout_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[10]),
        .Q(dout_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[11]),
        .Q(dout_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[12]),
        .Q(dout_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[13]),
        .Q(dout_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[14]),
        .Q(dout_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[15]),
        .Q(dout_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[16]),
        .Q(dout_OBUF[16]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[17]),
        .Q(dout_OBUF[17]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[18]),
        .Q(dout_OBUF[18]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[19]),
        .Q(dout_OBUF[19]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[1]),
        .Q(dout_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[20]),
        .Q(dout_OBUF[20]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[21]),
        .Q(dout_OBUF[21]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[22]),
        .Q(dout_OBUF[22]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[23]),
        .Q(dout_OBUF[23]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[24]),
        .Q(dout_OBUF[24]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[25]),
        .Q(dout_OBUF[25]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[26]),
        .Q(dout_OBUF[26]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[27]),
        .Q(dout_OBUF[27]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[28]),
        .Q(dout_OBUF[28]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[29]),
        .Q(dout_OBUF[29]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[2]),
        .Q(dout_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[30]),
        .Q(dout_OBUF[30]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[31]),
        .Q(dout_OBUF[31]));
  CARRY4 \dout_reg[31]_i_12 
       (.CI(\dout_reg[31]_i_13_n_0 ),
        .CO({\dout_reg[31]_i_12_n_0 ,\NLW_dout_reg[31]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\b_reg_reg_n_0_[15] ,\b_reg_reg_n_0_[14] ,\b_reg_reg_n_0_[13] ,\b_reg_reg_n_0_[12] }),
        .O(minusOp2_out[15:12]),
        .S({g0_b15__0_n_0,g0_b14__0_n_0,g0_b13__0_n_0,g0_b12__0_n_0}));
  CARRY4 \dout_reg[31]_i_13 
       (.CI(\dout_reg[31]_i_14_n_0 ),
        .CO({\dout_reg[31]_i_13_n_0 ,\NLW_dout_reg[31]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\b_reg_reg_n_0_[11] ,\b_reg_reg_n_0_[10] ,\b_reg_reg_n_0_[9] ,\b_reg_reg_n_0_[8] }),
        .O(minusOp2_out[11:8]),
        .S({g0_b11__0_n_0,g0_b10__0_n_0,g0_b9__0_n_0,g0_b8__0_n_0}));
  CARRY4 \dout_reg[31]_i_14 
       (.CI(\dout_reg[31]_i_15_n_0 ),
        .CO({\dout_reg[31]_i_14_n_0 ,\NLW_dout_reg[31]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\b_reg_reg_n_0_[7] ,\b_reg_reg_n_0_[6] ,\b_reg_reg_n_0_[5] ,\b_reg_reg_n_0_[4] }),
        .O(minusOp2_out[7:4]),
        .S({g0_b7__0_n_0,g0_b6__0_n_0,g0_b5__0_n_0,g0_b4__0_n_0}));
  CARRY4 \dout_reg[31]_i_15 
       (.CI(1'b0),
        .CO({\dout_reg[31]_i_15_n_0 ,\NLW_dout_reg[31]_i_15_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\b_reg_reg_n_0_[3] ,\b_reg_reg_n_0_[2] ,\b_reg_reg_n_0_[1] ,\b_reg_reg_n_0_[0] }),
        .O(minusOp2_out[3:0]),
        .S({g0_b3__0_n_0,g0_b2__0_n_0,g0_b1__0_n_0,g0_b0__0_n_0}));
  CARRY4 \dout_reg[31]_i_16 
       (.CI(\dout_reg[31]_i_17_n_0 ),
        .CO(\NLW_dout_reg[31]_i_16_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\b_reg_reg_n_0_[30] ,\b_reg_reg_n_0_[29] ,\b_reg_reg_n_0_[28] }),
        .O(minusOp2_out[31:28]),
        .S({g0_b31__0_n_0,g0_b30__0_n_0,g0_b29__0_n_0,g0_b28__0_n_0}));
  CARRY4 \dout_reg[31]_i_17 
       (.CI(\dout_reg[31]_i_18_n_0 ),
        .CO({\dout_reg[31]_i_17_n_0 ,\NLW_dout_reg[31]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\b_reg_reg_n_0_[27] ,\b_reg_reg_n_0_[26] ,\b_reg_reg_n_0_[25] ,\b_reg_reg_n_0_[24] }),
        .O(minusOp2_out[27:24]),
        .S({g0_b27__0_n_0,g0_b26__0_n_0,g0_b25__0_n_0,g0_b24__0_n_0}));
  CARRY4 \dout_reg[31]_i_18 
       (.CI(\dout_reg[31]_i_19_n_0 ),
        .CO({\dout_reg[31]_i_18_n_0 ,\NLW_dout_reg[31]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\b_reg_reg_n_0_[23] ,\b_reg_reg_n_0_[22] ,\b_reg_reg_n_0_[21] ,\b_reg_reg_n_0_[20] }),
        .O(minusOp2_out[23:20]),
        .S({g0_b23__0_n_0,g0_b22__0_n_0,g0_b21__0_n_0,g0_b20__0_n_0}));
  CARRY4 \dout_reg[31]_i_19 
       (.CI(\dout_reg[31]_i_12_n_0 ),
        .CO({\dout_reg[31]_i_19_n_0 ,\NLW_dout_reg[31]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\b_reg_reg_n_0_[19] ,\b_reg_reg_n_0_[18] ,\b_reg_reg_n_0_[17] ,\b_reg_reg_n_0_[16] }),
        .O(minusOp2_out[19:16]),
        .S({g0_b19__0_n_0,g0_b18__0_n_0,g0_b17__0_n_0,g0_b16__0_n_0}));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[0]),
        .Q(dout_OBUF[32]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[1]),
        .Q(dout_OBUF[33]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[2]),
        .Q(dout_OBUF[34]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[3]),
        .Q(dout_OBUF[35]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[4]),
        .Q(dout_OBUF[36]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[5]),
        .Q(dout_OBUF[37]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[6]),
        .Q(dout_OBUF[38]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[7]),
        .Q(dout_OBUF[39]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[3]),
        .Q(dout_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[8]),
        .Q(dout_OBUF[40]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[9]),
        .Q(dout_OBUF[41]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[10]),
        .Q(dout_OBUF[42]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[11]),
        .Q(dout_OBUF[43]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[12]),
        .Q(dout_OBUF[44]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[13]),
        .Q(dout_OBUF[45]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[14]),
        .Q(dout_OBUF[46]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[15]),
        .Q(dout_OBUF[47]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[16]),
        .Q(dout_OBUF[48]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[17]),
        .Q(dout_OBUF[49]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[4]),
        .Q(dout_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[18]),
        .Q(dout_OBUF[50]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[19]),
        .Q(dout_OBUF[51]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[20]),
        .Q(dout_OBUF[52]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[21]),
        .Q(dout_OBUF[53]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[22]),
        .Q(dout_OBUF[54]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[23]),
        .Q(dout_OBUF[55]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[24]),
        .Q(dout_OBUF[56]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[25]),
        .Q(dout_OBUF[57]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[26]),
        .Q(dout_OBUF[58]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[27]),
        .Q(dout_OBUF[59]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[5]),
        .Q(dout_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[28]),
        .Q(dout_OBUF[60]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[29]),
        .Q(dout_OBUF[61]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[30]),
        .Q(dout_OBUF[62]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(a[31]),
        .Q(dout_OBUF[63]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[6]),
        .Q(dout_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[7]),
        .Q(dout_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[8]),
        .Q(dout_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(p_0_in[9]),
        .Q(dout_OBUF[9]));
  LUT5 #(
    .INIT(32'h10F2EF0D)) 
    g0_b0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[0]),
        .O(g0_b0_n_0));
  LUT5 #(
    .INIT(32'h0776F889)) 
    g0_b0__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[0] ),
        .O(g0_b0__0_n_0));
  LUT5 #(
    .INIT(32'h0D24F2DB)) 
    g0_b1
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[1]),
        .O(g0_b1_n_0));
  LUT5 #(
    .INIT(32'h10D8EF27)) 
    g0_b10
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[10]),
        .O(g0_b10_n_0));
  LUT5 #(
    .INIT(32'h02C8FD37)) 
    g0_b10__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[10] ),
        .O(g0_b10__0_n_0));
  LUT5 #(
    .INIT(32'h0EE6F119)) 
    g0_b11
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[11]),
        .O(g0_b11_n_0));
  LUT5 #(
    .INIT(32'h0238FDC7)) 
    g0_b11__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[11] ),
        .O(g0_b11__0_n_0));
  LUT5 #(
    .INIT(32'h118CEE73)) 
    g0_b12
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[12]),
        .O(g0_b12_n_0));
  LUT5 #(
    .INIT(32'h0230FDCF)) 
    g0_b12__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[12] ),
        .O(g0_b12__0_n_0));
  LUT5 #(
    .INIT(32'h0966F699)) 
    g0_b13
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[13]),
        .O(g0_b13_n_0));
  LUT5 #(
    .INIT(32'h1C5AE3A5)) 
    g0_b13__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[13] ),
        .O(g0_b13__0_n_0));
  LUT5 #(
    .INIT(32'h0C22F3DD)) 
    g0_b14
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[14]),
        .O(g0_b14_n_0));
  LUT5 #(
    .INIT(32'h112AEED5)) 
    g0_b14__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[14] ),
        .O(g0_b14__0_n_0));
  LUT5 #(
    .INIT(32'h0602F9FD)) 
    g0_b15
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[15]),
        .O(g0_b15_n_0));
  LUT5 #(
    .INIT(32'h01ECFE13)) 
    g0_b15__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[15] ),
        .O(g0_b15__0_n_0));
  LUT5 #(
    .INIT(32'h0E70F18F)) 
    g0_b16
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[16]),
        .O(g0_b16_n_0));
  LUT5 #(
    .INIT(32'h094CF6B3)) 
    g0_b16__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[16] ),
        .O(g0_b16__0_n_0));
  LUT5 #(
    .INIT(32'h0E28F1D7)) 
    g0_b17
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[17]),
        .O(g0_b17_n_0));
  LUT5 #(
    .INIT(32'h07A4F85B)) 
    g0_b17__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[17] ),
        .O(g0_b17__0_n_0));
  LUT5 #(
    .INIT(32'h1E38E1C7)) 
    g0_b18
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[18]),
        .O(g0_b18_n_0));
  LUT5 #(
    .INIT(32'h1582EA7D)) 
    g0_b18__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[18] ),
        .O(g0_b18__0_n_0));
  LUT5 #(
    .INIT(32'h144EEBB1)) 
    g0_b19
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[19]),
        .O(g0_b19_n_0));
  LUT5 #(
    .INIT(32'h0BF6F409)) 
    g0_b19__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[19] ),
        .O(g0_b19__0_n_0));
  LUT5 #(
    .INIT(32'h068CF973)) 
    g0_b1__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[1] ),
        .O(g0_b1__0_n_0));
  LUT5 #(
    .INIT(32'h051AFAE5)) 
    g0_b2
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[2]),
        .O(g0_b2_n_0));
  LUT5 #(
    .INIT(32'h0CCEF331)) 
    g0_b20
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[20]),
        .O(g0_b20_n_0));
  LUT5 #(
    .INIT(32'h0CE0F31F)) 
    g0_b20__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[20] ),
        .O(g0_b20__0_n_0));
  LUT5 #(
    .INIT(32'h067EF981)) 
    g0_b21
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[21]),
        .O(g0_b21_n_0));
  LUT5 #(
    .INIT(32'h0138FEC7)) 
    g0_b21__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[21] ),
        .O(g0_b21__0_n_0));
  LUT5 #(
    .INIT(32'h1946E6B9)) 
    g0_b22
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[22]),
        .O(g0_b22_n_0));
  LUT5 #(
    .INIT(32'h0184FE7B)) 
    g0_b22__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[22] ),
        .O(g0_b22__0_n_0));
  LUT5 #(
    .INIT(32'h1F86E079)) 
    g0_b23
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[23]),
        .O(g0_b23_n_0));
  LUT5 #(
    .INIT(32'h01D0FE2F)) 
    g0_b23__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[23] ),
        .O(g0_b23__0_n_0));
  LUT5 #(
    .INIT(32'h06D8F927)) 
    g0_b24
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[24]),
        .O(g0_b24_n_0));
  LUT5 #(
    .INIT(32'h1B70E48F)) 
    g0_b24__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[24] ),
        .O(g0_b24__0_n_0));
  LUT5 #(
    .INIT(32'h11C2EE3D)) 
    g0_b25
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[25]),
        .O(g0_b25_n_0));
  LUT5 #(
    .INIT(32'h0FCAF035)) 
    g0_b25__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[25] ),
        .O(g0_b25__0_n_0));
  LUT5 #(
    .INIT(32'h15A2EA5D)) 
    g0_b26
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[26]),
        .O(g0_b26_n_0));
  LUT5 #(
    .INIT(32'h15CAEA35)) 
    g0_b26__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[26] ),
        .O(g0_b26__0_n_0));
  LUT5 #(
    .INIT(32'h0440FBBF)) 
    g0_b27
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[27]),
        .O(g0_b27_n_0));
  LUT5 #(
    .INIT(32'h0684F97B)) 
    g0_b27__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[27] ),
        .O(g0_b27__0_n_0));
  LUT5 #(
    .INIT(32'h193CE6C3)) 
    g0_b28
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[28]),
        .O(g0_b28_n_0));
  LUT5 #(
    .INIT(32'h02B8FD47)) 
    g0_b28__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[28] ),
        .O(g0_b28__0_n_0));
  LUT5 #(
    .INIT(32'h1B94E46B)) 
    g0_b29
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[29]),
        .O(g0_b29_n_0));
  LUT5 #(
    .INIT(32'h176CE893)) 
    g0_b29__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[29] ),
        .O(g0_b29__0_n_0));
  LUT5 #(
    .INIT(32'h0C72F38D)) 
    g0_b2__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[2] ),
        .O(g0_b2__0_n_0));
  LUT5 #(
    .INIT(32'h0AF4F50B)) 
    g0_b3
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[3]),
        .O(g0_b3_n_0));
  LUT5 #(
    .INIT(32'h166EE991)) 
    g0_b30
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[30]),
        .O(g0_b30_n_0));
  LUT5 #(
    .INIT(32'h18AAE755)) 
    g0_b30__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[30] ),
        .O(g0_b30__0_n_0));
  LUT5 #(
    .INIT(32'h10A0EF5F)) 
    g0_b31
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[31]),
        .O(g0_b31_n_0));
  LUT5 #(
    .INIT(32'h0588FA77)) 
    g0_b31__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[31] ),
        .O(g0_b31__0_n_0));
  LUT4 #(
    .INIT(16'h1CE3)) 
    g0_b3__0
       (.I0(i_cnt_reg[1]),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[3]),
        .I3(\b_reg_reg_n_0_[3] ),
        .O(g0_b3__0_n_0));
  LUT5 #(
    .INIT(32'h1758E8A7)) 
    g0_b4
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[4]),
        .O(g0_b4_n_0));
  LUT5 #(
    .INIT(32'h00D0FF2F)) 
    g0_b4__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[4] ),
        .O(g0_b4__0_n_0));
  LUT5 #(
    .INIT(32'h1620E9DF)) 
    g0_b5
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[5]),
        .O(g0_b5_n_0));
  LUT5 #(
    .INIT(32'h0628F9D7)) 
    g0_b5__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[5] ),
        .O(g0_b5__0_n_0));
  LUT5 #(
    .INIT(32'h04BAFB45)) 
    g0_b6
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[6]),
        .O(g0_b6_n_0));
  LUT4 #(
    .INIT(16'h14EB)) 
    g0_b6__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[3]),
        .I3(\b_reg_reg_n_0_[6] ),
        .O(g0_b6__0_n_0));
  LUT5 #(
    .INIT(32'h0346FCB9)) 
    g0_b7
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[7]),
        .O(g0_b7_n_0));
  LUT5 #(
    .INIT(32'h1042EFBD)) 
    g0_b7__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[7] ),
        .O(g0_b7__0_n_0));
  LUT5 #(
    .INIT(32'h0B44F4BB)) 
    g0_b8
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[8]),
        .O(g0_b8_n_0));
  LUT5 #(
    .INIT(32'h1E8CE173)) 
    g0_b8__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[8] ),
        .O(g0_b8__0_n_0));
  LUT5 #(
    .INIT(32'h0E54F1AB)) 
    g0_b9
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(a_reg[9]),
        .O(g0_b9_n_0));
  LUT5 #(
    .INIT(32'h1994E66B)) 
    g0_b9__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .I4(\b_reg_reg_n_0_[9] ),
        .O(g0_b9__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \i_cnt[0]_i_1 
       (.I0(i_cnt_reg[0]),
        .I1(di_vld_IBUF),
        .O(\i_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \i_cnt[1]_i_1 
       (.I0(i_cnt_reg[1]),
        .I1(i_cnt_reg[0]),
        .I2(di_vld_IBUF),
        .O(\i_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEEEB)) 
    \i_cnt[2]_i_1 
       (.I0(di_vld_IBUF),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[0]),
        .I3(i_cnt_reg[1]),
        .O(\i_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \i_cnt[3]_i_1 
       (.I0(di_vld_IBUF),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[3]),
        .I3(i_cnt_reg[0]),
        .I4(i_cnt_reg[1]),
        .O(\i_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEEEEEEEB)) 
    \i_cnt[3]_i_2 
       (.I0(di_vld_IBUF),
        .I1(i_cnt_reg[3]),
        .I2(i_cnt_reg[1]),
        .I3(i_cnt_reg[0]),
        .I4(i_cnt_reg[2]),
        .O(\i_cnt[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\i_cnt[0]_i_1_n_0 ),
        .Q(i_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg[31]_i_3_n_0 ),
        .D(\i_cnt[1]_i_1_n_0 ),
        .Q(i_cnt_reg[1]));
  FDPE #(
    .INIT(1'b1)) 
    \i_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .D(\i_cnt[2]_i_1_n_0 ),
        .PRE(\a_reg[31]_i_3_n_0 ),
        .Q(i_cnt_reg[2]));
  FDPE #(
    .INIT(1'b1)) 
    \i_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .D(\i_cnt[3]_i_2_n_0 ),
        .PRE(\a_reg[31]_i_3_n_0 ),
        .Q(i_cnt_reg[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
