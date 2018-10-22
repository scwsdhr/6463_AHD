// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Mon Oct 22 13:40:57 2018
// Host        : DESKTOP-65OAGH3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/shenc/OneDrive -
//               nyu.edu/6463_AHD/LAB4/rc5_enc/rc5_enc.sim/sim_1/impl/timing/xsim/rc5_enc_tb_time_impl.v}
// Design      : rc5_enc
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "d5487587" *) 
(* NotValidForBitStream *)
module rc5_enc
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

  wire [31:0]a_reg;
  wire \a_reg[11]_i_2_n_0 ;
  wire \a_reg[11]_i_3_n_0 ;
  wire \a_reg[11]_i_4_n_0 ;
  wire \a_reg[11]_i_5_n_0 ;
  wire \a_reg[11]_i_6_n_0 ;
  wire \a_reg[11]_i_7_n_0 ;
  wire \a_reg[11]_i_8_n_0 ;
  wire \a_reg[11]_i_9_n_0 ;
  wire \a_reg[15]_i_2_n_0 ;
  wire \a_reg[15]_i_3_n_0 ;
  wire \a_reg[15]_i_4_n_0 ;
  wire \a_reg[15]_i_5_n_0 ;
  wire \a_reg[15]_i_6_n_0 ;
  wire \a_reg[15]_i_7_n_0 ;
  wire \a_reg[15]_i_8_n_0 ;
  wire \a_reg[15]_i_9_n_0 ;
  wire \a_reg[19]_i_2_n_0 ;
  wire \a_reg[19]_i_3_n_0 ;
  wire \a_reg[19]_i_4_n_0 ;
  wire \a_reg[19]_i_5_n_0 ;
  wire \a_reg[19]_i_6_n_0 ;
  wire \a_reg[19]_i_7_n_0 ;
  wire \a_reg[19]_i_8_n_0 ;
  wire \a_reg[19]_i_9_n_0 ;
  wire \a_reg[23]_i_2_n_0 ;
  wire \a_reg[23]_i_3_n_0 ;
  wire \a_reg[23]_i_4_n_0 ;
  wire \a_reg[23]_i_5_n_0 ;
  wire \a_reg[23]_i_6_n_0 ;
  wire \a_reg[23]_i_7_n_0 ;
  wire \a_reg[23]_i_8_n_0 ;
  wire \a_reg[23]_i_9_n_0 ;
  wire \a_reg[27]_i_2_n_0 ;
  wire \a_reg[27]_i_3_n_0 ;
  wire \a_reg[27]_i_4_n_0 ;
  wire \a_reg[27]_i_5_n_0 ;
  wire \a_reg[27]_i_6_n_0 ;
  wire \a_reg[27]_i_7_n_0 ;
  wire \a_reg[27]_i_8_n_0 ;
  wire \a_reg[27]_i_9_n_0 ;
  wire \a_reg[31]_i_2_n_0 ;
  wire \a_reg[31]_i_3_n_0 ;
  wire \a_reg[31]_i_4_n_0 ;
  wire \a_reg[31]_i_5_n_0 ;
  wire \a_reg[31]_i_6_n_0 ;
  wire \a_reg[31]_i_7_n_0 ;
  wire \a_reg[31]_i_8_n_0 ;
  wire \a_reg[3]_i_2_n_0 ;
  wire \a_reg[3]_i_3_n_0 ;
  wire \a_reg[3]_i_4_n_0 ;
  wire \a_reg[3]_i_5_n_0 ;
  wire \a_reg[3]_i_6_n_0 ;
  wire \a_reg[3]_i_7_n_0 ;
  wire \a_reg[3]_i_8_n_0 ;
  wire \a_reg[3]_i_9_n_0 ;
  wire \a_reg[7]_i_2_n_0 ;
  wire \a_reg[7]_i_3_n_0 ;
  wire \a_reg[7]_i_4_n_0 ;
  wire \a_reg[7]_i_5_n_0 ;
  wire \a_reg[7]_i_6_n_0 ;
  wire \a_reg[7]_i_7_n_0 ;
  wire \a_reg[7]_i_8_n_0 ;
  wire \a_reg[7]_i_9_n_0 ;
  wire \a_reg_reg[11]_i_1_n_0 ;
  wire \a_reg_reg[11]_i_1_n_4 ;
  wire \a_reg_reg[11]_i_1_n_5 ;
  wire \a_reg_reg[11]_i_1_n_6 ;
  wire \a_reg_reg[11]_i_1_n_7 ;
  wire \a_reg_reg[15]_i_1_n_0 ;
  wire \a_reg_reg[15]_i_1_n_4 ;
  wire \a_reg_reg[15]_i_1_n_5 ;
  wire \a_reg_reg[15]_i_1_n_6 ;
  wire \a_reg_reg[15]_i_1_n_7 ;
  wire \a_reg_reg[19]_i_1_n_0 ;
  wire \a_reg_reg[19]_i_1_n_4 ;
  wire \a_reg_reg[19]_i_1_n_5 ;
  wire \a_reg_reg[19]_i_1_n_6 ;
  wire \a_reg_reg[19]_i_1_n_7 ;
  wire \a_reg_reg[23]_i_1_n_0 ;
  wire \a_reg_reg[23]_i_1_n_4 ;
  wire \a_reg_reg[23]_i_1_n_5 ;
  wire \a_reg_reg[23]_i_1_n_6 ;
  wire \a_reg_reg[23]_i_1_n_7 ;
  wire \a_reg_reg[27]_i_1_n_0 ;
  wire \a_reg_reg[27]_i_1_n_4 ;
  wire \a_reg_reg[27]_i_1_n_5 ;
  wire \a_reg_reg[27]_i_1_n_6 ;
  wire \a_reg_reg[27]_i_1_n_7 ;
  wire \a_reg_reg[31]_i_1_n_4 ;
  wire \a_reg_reg[31]_i_1_n_5 ;
  wire \a_reg_reg[31]_i_1_n_6 ;
  wire \a_reg_reg[31]_i_1_n_7 ;
  wire \a_reg_reg[3]_i_1_n_0 ;
  wire \a_reg_reg[3]_i_1_n_4 ;
  wire \a_reg_reg[3]_i_1_n_5 ;
  wire \a_reg_reg[3]_i_1_n_6 ;
  wire \a_reg_reg[3]_i_1_n_7 ;
  wire \a_reg_reg[7]_i_1_n_0 ;
  wire \a_reg_reg[7]_i_1_n_4 ;
  wire \a_reg_reg[7]_i_1_n_5 ;
  wire \a_reg_reg[7]_i_1_n_6 ;
  wire \a_reg_reg[7]_i_1_n_7 ;
  wire [31:0]b;
  wire b_reg;
  wire \b_reg[11]_i_2_n_0 ;
  wire \b_reg[11]_i_3_n_0 ;
  wire \b_reg[11]_i_4_n_0 ;
  wire \b_reg[11]_i_5_n_0 ;
  wire \b_reg[11]_i_6_n_0 ;
  wire \b_reg[11]_i_7_n_0 ;
  wire \b_reg[11]_i_8_n_0 ;
  wire \b_reg[11]_i_9_n_0 ;
  wire \b_reg[15]_i_2_n_0 ;
  wire \b_reg[15]_i_3_n_0 ;
  wire \b_reg[15]_i_4_n_0 ;
  wire \b_reg[15]_i_5_n_0 ;
  wire \b_reg[15]_i_6_n_0 ;
  wire \b_reg[15]_i_7_n_0 ;
  wire \b_reg[15]_i_8_n_0 ;
  wire \b_reg[15]_i_9_n_0 ;
  wire \b_reg[19]_i_2_n_0 ;
  wire \b_reg[19]_i_3_n_0 ;
  wire \b_reg[19]_i_4_n_0 ;
  wire \b_reg[19]_i_5_n_0 ;
  wire \b_reg[19]_i_6_n_0 ;
  wire \b_reg[19]_i_7_n_0 ;
  wire \b_reg[19]_i_8_n_0 ;
  wire \b_reg[19]_i_9_n_0 ;
  wire \b_reg[23]_i_2_n_0 ;
  wire \b_reg[23]_i_3_n_0 ;
  wire \b_reg[23]_i_4_n_0 ;
  wire \b_reg[23]_i_5_n_0 ;
  wire \b_reg[23]_i_6_n_0 ;
  wire \b_reg[23]_i_7_n_0 ;
  wire \b_reg[23]_i_8_n_0 ;
  wire \b_reg[23]_i_9_n_0 ;
  wire \b_reg[27]_i_2_n_0 ;
  wire \b_reg[27]_i_3_n_0 ;
  wire \b_reg[27]_i_4_n_0 ;
  wire \b_reg[27]_i_5_n_0 ;
  wire \b_reg[27]_i_6_n_0 ;
  wire \b_reg[27]_i_7_n_0 ;
  wire \b_reg[27]_i_8_n_0 ;
  wire \b_reg[27]_i_9_n_0 ;
  wire \b_reg[31]_i_3_n_0 ;
  wire \b_reg[31]_i_4_n_0 ;
  wire \b_reg[31]_i_5_n_0 ;
  wire \b_reg[31]_i_6_n_0 ;
  wire \b_reg[31]_i_7_n_0 ;
  wire \b_reg[31]_i_8_n_0 ;
  wire \b_reg[31]_i_9_n_0 ;
  wire \b_reg[3]_i_2_n_0 ;
  wire \b_reg[3]_i_3_n_0 ;
  wire \b_reg[3]_i_4_n_0 ;
  wire \b_reg[3]_i_5_n_0 ;
  wire \b_reg[3]_i_6_n_0 ;
  wire \b_reg[3]_i_7_n_0 ;
  wire \b_reg[7]_i_2_n_0 ;
  wire \b_reg[7]_i_3_n_0 ;
  wire \b_reg[7]_i_4_n_0 ;
  wire \b_reg[7]_i_5_n_0 ;
  wire \b_reg[7]_i_6_n_0 ;
  wire \b_reg[7]_i_7_n_0 ;
  wire \b_reg_reg[11]_i_1_n_0 ;
  wire \b_reg_reg[11]_i_1_n_4 ;
  wire \b_reg_reg[11]_i_1_n_5 ;
  wire \b_reg_reg[11]_i_1_n_6 ;
  wire \b_reg_reg[11]_i_1_n_7 ;
  wire \b_reg_reg[15]_i_1_n_0 ;
  wire \b_reg_reg[15]_i_1_n_4 ;
  wire \b_reg_reg[15]_i_1_n_5 ;
  wire \b_reg_reg[15]_i_1_n_6 ;
  wire \b_reg_reg[15]_i_1_n_7 ;
  wire \b_reg_reg[19]_i_1_n_0 ;
  wire \b_reg_reg[19]_i_1_n_4 ;
  wire \b_reg_reg[19]_i_1_n_5 ;
  wire \b_reg_reg[19]_i_1_n_6 ;
  wire \b_reg_reg[19]_i_1_n_7 ;
  wire \b_reg_reg[23]_i_1_n_0 ;
  wire \b_reg_reg[23]_i_1_n_4 ;
  wire \b_reg_reg[23]_i_1_n_5 ;
  wire \b_reg_reg[23]_i_1_n_6 ;
  wire \b_reg_reg[23]_i_1_n_7 ;
  wire \b_reg_reg[27]_i_1_n_0 ;
  wire \b_reg_reg[27]_i_1_n_4 ;
  wire \b_reg_reg[27]_i_1_n_5 ;
  wire \b_reg_reg[27]_i_1_n_6 ;
  wire \b_reg_reg[27]_i_1_n_7 ;
  wire \b_reg_reg[31]_i_2_n_4 ;
  wire \b_reg_reg[31]_i_2_n_5 ;
  wire \b_reg_reg[31]_i_2_n_6 ;
  wire \b_reg_reg[31]_i_2_n_7 ;
  wire \b_reg_reg[3]_i_1_n_0 ;
  wire \b_reg_reg[3]_i_1_n_4 ;
  wire \b_reg_reg[3]_i_1_n_5 ;
  wire \b_reg_reg[3]_i_1_n_6 ;
  wire \b_reg_reg[3]_i_1_n_7 ;
  wire \b_reg_reg[7]_i_1_n_0 ;
  wire \b_reg_reg[7]_i_1_n_4 ;
  wire \b_reg_reg[7]_i_1_n_5 ;
  wire \b_reg_reg[7]_i_1_n_6 ;
  wire \b_reg_reg[7]_i_1_n_7 ;
  wire [31:0]b_rot;
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
  wire \dout[11]_i_2_n_0 ;
  wire \dout[11]_i_3_n_0 ;
  wire \dout[11]_i_4_n_0 ;
  wire \dout[11]_i_5_n_0 ;
  wire \dout[15]_i_2_n_0 ;
  wire \dout[15]_i_3_n_0 ;
  wire \dout[15]_i_4_n_0 ;
  wire \dout[15]_i_5_n_0 ;
  wire \dout[19]_i_2_n_0 ;
  wire \dout[19]_i_3_n_0 ;
  wire \dout[19]_i_4_n_0 ;
  wire \dout[19]_i_5_n_0 ;
  wire \dout[23]_i_2_n_0 ;
  wire \dout[23]_i_3_n_0 ;
  wire \dout[23]_i_4_n_0 ;
  wire \dout[23]_i_5_n_0 ;
  wire \dout[27]_i_10_n_0 ;
  wire \dout[27]_i_11_n_0 ;
  wire \dout[27]_i_12_n_0 ;
  wire \dout[27]_i_13_n_0 ;
  wire \dout[27]_i_14_n_0 ;
  wire \dout[27]_i_15_n_0 ;
  wire \dout[27]_i_16_n_0 ;
  wire \dout[27]_i_17_n_0 ;
  wire \dout[27]_i_18_n_0 ;
  wire \dout[27]_i_19_n_0 ;
  wire \dout[27]_i_20_n_0 ;
  wire \dout[27]_i_21_n_0 ;
  wire \dout[27]_i_2_n_0 ;
  wire \dout[27]_i_3_n_0 ;
  wire \dout[27]_i_4_n_0 ;
  wire \dout[27]_i_5_n_0 ;
  wire \dout[31]_i_10_n_0 ;
  wire \dout[31]_i_11_n_0 ;
  wire \dout[31]_i_12_n_0 ;
  wire \dout[31]_i_13_n_0 ;
  wire \dout[31]_i_14_n_0 ;
  wire \dout[31]_i_15_n_0 ;
  wire \dout[31]_i_16_n_0 ;
  wire \dout[31]_i_17_n_0 ;
  wire \dout[31]_i_18_n_0 ;
  wire \dout[31]_i_19_n_0 ;
  wire \dout[31]_i_20_n_0 ;
  wire \dout[31]_i_21_n_0 ;
  wire \dout[31]_i_2_n_0 ;
  wire \dout[31]_i_3_n_0 ;
  wire \dout[31]_i_4_n_0 ;
  wire \dout[31]_i_5_n_0 ;
  wire \dout[35]_i_2_n_0 ;
  wire \dout[35]_i_3_n_0 ;
  wire \dout[35]_i_4_n_0 ;
  wire \dout[35]_i_5_n_0 ;
  wire \dout[39]_i_2_n_0 ;
  wire \dout[39]_i_3_n_0 ;
  wire \dout[39]_i_4_n_0 ;
  wire \dout[39]_i_5_n_0 ;
  wire \dout[3]_i_2_n_0 ;
  wire \dout[3]_i_3_n_0 ;
  wire \dout[3]_i_4_n_0 ;
  wire \dout[43]_i_2_n_0 ;
  wire \dout[43]_i_3_n_0 ;
  wire \dout[43]_i_4_n_0 ;
  wire \dout[43]_i_5_n_0 ;
  wire \dout[47]_i_2_n_0 ;
  wire \dout[47]_i_3_n_0 ;
  wire \dout[47]_i_4_n_0 ;
  wire \dout[47]_i_5_n_0 ;
  wire \dout[51]_i_10_n_0 ;
  wire \dout[51]_i_11_n_0 ;
  wire \dout[51]_i_12_n_0 ;
  wire \dout[51]_i_13_n_0 ;
  wire \dout[51]_i_2_n_0 ;
  wire \dout[51]_i_3_n_0 ;
  wire \dout[51]_i_4_n_0 ;
  wire \dout[51]_i_5_n_0 ;
  wire \dout[51]_i_6_n_0 ;
  wire \dout[51]_i_7_n_0 ;
  wire \dout[51]_i_8_n_0 ;
  wire \dout[51]_i_9_n_0 ;
  wire \dout[55]_i_10_n_0 ;
  wire \dout[55]_i_11_n_0 ;
  wire \dout[55]_i_12_n_0 ;
  wire \dout[55]_i_13_n_0 ;
  wire \dout[55]_i_2_n_0 ;
  wire \dout[55]_i_3_n_0 ;
  wire \dout[55]_i_4_n_0 ;
  wire \dout[55]_i_5_n_0 ;
  wire \dout[55]_i_6_n_0 ;
  wire \dout[55]_i_7_n_0 ;
  wire \dout[55]_i_8_n_0 ;
  wire \dout[55]_i_9_n_0 ;
  wire \dout[59]_i_10_n_0 ;
  wire \dout[59]_i_11_n_0 ;
  wire \dout[59]_i_12_n_0 ;
  wire \dout[59]_i_13_n_0 ;
  wire \dout[59]_i_14_n_0 ;
  wire \dout[59]_i_15_n_0 ;
  wire \dout[59]_i_16_n_0 ;
  wire \dout[59]_i_17_n_0 ;
  wire \dout[59]_i_18_n_0 ;
  wire \dout[59]_i_19_n_0 ;
  wire \dout[59]_i_20_n_0 ;
  wire \dout[59]_i_21_n_0 ;
  wire \dout[59]_i_22_n_0 ;
  wire \dout[59]_i_23_n_0 ;
  wire \dout[59]_i_24_n_0 ;
  wire \dout[59]_i_25_n_0 ;
  wire \dout[59]_i_26_n_0 ;
  wire \dout[59]_i_27_n_0 ;
  wire \dout[59]_i_28_n_0 ;
  wire \dout[59]_i_29_n_0 ;
  wire \dout[59]_i_2_n_0 ;
  wire \dout[59]_i_3_n_0 ;
  wire \dout[59]_i_4_n_0 ;
  wire \dout[59]_i_5_n_0 ;
  wire \dout[59]_i_6_n_0 ;
  wire \dout[59]_i_7_n_0 ;
  wire \dout[59]_i_8_n_0 ;
  wire \dout[59]_i_9_n_0 ;
  wire \dout[63]_i_10_n_0 ;
  wire \dout[63]_i_11_n_0 ;
  wire \dout[63]_i_12_n_0 ;
  wire \dout[63]_i_13_n_0 ;
  wire \dout[63]_i_14_n_0 ;
  wire \dout[63]_i_15_n_0 ;
  wire \dout[63]_i_16_n_0 ;
  wire \dout[63]_i_17_n_0 ;
  wire \dout[63]_i_18_n_0 ;
  wire \dout[63]_i_19_n_0 ;
  wire \dout[63]_i_1_n_0 ;
  wire \dout[63]_i_20_n_0 ;
  wire \dout[63]_i_21_n_0 ;
  wire \dout[63]_i_22_n_0 ;
  wire \dout[63]_i_23_n_0 ;
  wire \dout[63]_i_24_n_0 ;
  wire \dout[63]_i_25_n_0 ;
  wire \dout[63]_i_26_n_0 ;
  wire \dout[63]_i_27_n_0 ;
  wire \dout[63]_i_28_n_0 ;
  wire \dout[63]_i_29_n_0 ;
  wire \dout[63]_i_30_n_0 ;
  wire \dout[63]_i_31_n_0 ;
  wire \dout[63]_i_32_n_0 ;
  wire \dout[63]_i_33_n_0 ;
  wire \dout[63]_i_34_n_0 ;
  wire \dout[63]_i_35_n_0 ;
  wire \dout[63]_i_36_n_0 ;
  wire \dout[63]_i_37_n_0 ;
  wire \dout[63]_i_38_n_0 ;
  wire \dout[63]_i_39_n_0 ;
  wire \dout[63]_i_3_n_0 ;
  wire \dout[63]_i_40_n_0 ;
  wire \dout[63]_i_41_n_0 ;
  wire \dout[63]_i_42_n_0 ;
  wire \dout[63]_i_43_n_0 ;
  wire \dout[63]_i_44_n_0 ;
  wire \dout[63]_i_45_n_0 ;
  wire \dout[63]_i_46_n_0 ;
  wire \dout[63]_i_47_n_0 ;
  wire \dout[63]_i_48_n_0 ;
  wire \dout[63]_i_49_n_0 ;
  wire \dout[63]_i_4_n_0 ;
  wire \dout[63]_i_50_n_0 ;
  wire \dout[63]_i_51_n_0 ;
  wire \dout[63]_i_52_n_0 ;
  wire \dout[63]_i_53_n_0 ;
  wire \dout[63]_i_54_n_0 ;
  wire \dout[63]_i_55_n_0 ;
  wire \dout[63]_i_56_n_0 ;
  wire \dout[63]_i_57_n_0 ;
  wire \dout[63]_i_58_n_0 ;
  wire \dout[63]_i_59_n_0 ;
  wire \dout[63]_i_5_n_0 ;
  wire \dout[63]_i_60_n_0 ;
  wire \dout[63]_i_61_n_0 ;
  wire \dout[63]_i_62_n_0 ;
  wire \dout[63]_i_63_n_0 ;
  wire \dout[63]_i_64_n_0 ;
  wire \dout[63]_i_65_n_0 ;
  wire \dout[63]_i_6_n_0 ;
  wire \dout[63]_i_7_n_0 ;
  wire \dout[63]_i_8_n_0 ;
  wire \dout[63]_i_9_n_0 ;
  wire \dout[7]_i_2_n_0 ;
  wire \dout[7]_i_3_n_0 ;
  wire \dout[7]_i_4_n_0 ;
  wire [63:0]dout_OBUF;
  wire \dout_reg[11]_i_1_n_0 ;
  wire \dout_reg[15]_i_1_n_0 ;
  wire \dout_reg[19]_i_1_n_0 ;
  wire \dout_reg[23]_i_1_n_0 ;
  wire \dout_reg[27]_i_1_n_0 ;
  wire \dout_reg[35]_i_1_n_0 ;
  wire \dout_reg[39]_i_1_n_0 ;
  wire \dout_reg[3]_i_1_n_0 ;
  wire \dout_reg[43]_i_1_n_0 ;
  wire \dout_reg[47]_i_1_n_0 ;
  wire \dout_reg[51]_i_1_n_0 ;
  wire \dout_reg[55]_i_1_n_0 ;
  wire \dout_reg[59]_i_1_n_0 ;
  wire \dout_reg[7]_i_1_n_0 ;
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
  wire g0_b3__1_i_10_n_0;
  wire g0_b3__1_i_11_n_0;
  wire g0_b3__1_i_12_n_0;
  wire g0_b3__1_i_13_n_0;
  wire g0_b3__1_i_14_n_0;
  wire g0_b3__1_i_15_n_0;
  wire g0_b3__1_i_16_n_0;
  wire g0_b3__1_i_17_n_0;
  wire g0_b3__1_i_18_n_0;
  wire g0_b3__1_i_19_n_0;
  wire g0_b3__1_i_20_n_0;
  wire g0_b3__1_i_21_n_0;
  wire g0_b3__1_i_2_n_0;
  wire g0_b3__1_i_3_n_0;
  wire g0_b3__1_i_4_n_0;
  wire g0_b3__1_i_5_n_0;
  wire g0_b3__1_i_6_n_0;
  wire g0_b3__1_i_7_n_0;
  wire g0_b3__1_i_8_n_0;
  wire g0_b3__1_i_9_n_0;
  wire g0_b3__1_n_0;
  wire g0_b3__2_n_0;
  wire g0_b3_n_0;
  wire g0_b3_rep_n_0;
  wire g0_b4__0_n_0;
  wire g0_b4_n_0;
  wire g0_b5__0_n_0;
  wire g0_b5_n_0;
  wire g0_b6__0_n_0;
  wire g0_b6__1_i_10_n_0;
  wire g0_b6__1_i_11_n_0;
  wire g0_b6__1_i_12_n_0;
  wire g0_b6__1_i_13_n_0;
  wire g0_b6__1_i_14_n_0;
  wire g0_b6__1_i_15_n_0;
  wire g0_b6__1_i_16_n_0;
  wire g0_b6__1_i_17_n_0;
  wire g0_b6__1_i_18_n_0;
  wire g0_b6__1_i_19_n_0;
  wire g0_b6__1_i_20_n_0;
  wire g0_b6__1_i_21_n_0;
  wire g0_b6__1_i_2_n_0;
  wire g0_b6__1_i_3_n_0;
  wire g0_b6__1_i_4_n_0;
  wire g0_b6__1_i_5_n_0;
  wire g0_b6__1_i_6_n_0;
  wire g0_b6__1_i_7_n_0;
  wire g0_b6__1_i_8_n_0;
  wire g0_b6__1_i_9_n_0;
  wire g0_b6__1_n_0;
  wire g0_b6__2_n_0;
  wire g0_b6_n_0;
  wire g0_b6_rep_n_0;
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
  wire [31:0]plusOp;
  wire [31:0]plusOp1_out;
  wire [2:0]\NLW_a_reg_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg_reg[19]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg_reg[23]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg_reg[27]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_reg_reg[31]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_b_reg_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_b_reg_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_b_reg_reg[19]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_b_reg_reg[23]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_b_reg_reg[27]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_b_reg_reg[31]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_b_reg_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_b_reg_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[19]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[23]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[27]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_dout_reg[31]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[35]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[39]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[43]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[47]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[51]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[55]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[59]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_dout_reg[63]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_dout_reg[7]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("rc5_enc_tb_time_impl.sdf",,,,"tool_control");
end
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[11]_i_2 
       (.I0(g0_b11__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[11]_i_3 
       (.I0(g0_b10__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[11]_i_4 
       (.I0(g0_b9__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[11]_i_5 
       (.I0(g0_b8__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[11]_i_6 
       (.I0(\dout[59]_i_7_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_6_n_0 ),
        .I3(g0_b11__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[43]),
        .O(\a_reg[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[11]_i_7 
       (.I0(\dout[59]_i_9_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_8_n_0 ),
        .I3(g0_b10__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[42]),
        .O(\a_reg[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[11]_i_8 
       (.I0(\dout[59]_i_11_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_10_n_0 ),
        .I3(g0_b9__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[41]),
        .O(\a_reg[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[11]_i_9 
       (.I0(\dout[59]_i_13_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_12_n_0 ),
        .I3(g0_b8__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[40]),
        .O(\a_reg[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[15]_i_2 
       (.I0(g0_b15__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[15]_i_3 
       (.I0(g0_b14__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[15]_i_4 
       (.I0(g0_b13__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[15]_i_5 
       (.I0(g0_b12__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[15]_i_6 
       (.I0(\dout[63]_i_9_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_8_n_0 ),
        .I3(g0_b15__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[47]),
        .O(\a_reg[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[15]_i_7 
       (.I0(\dout[63]_i_11_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_10_n_0 ),
        .I3(g0_b14__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[46]),
        .O(\a_reg[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[15]_i_8 
       (.I0(\dout[63]_i_13_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_12_n_0 ),
        .I3(g0_b13__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[45]),
        .O(\a_reg[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[15]_i_9 
       (.I0(\dout[63]_i_15_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_14_n_0 ),
        .I3(g0_b12__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[44]),
        .O(\a_reg[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[19]_i_2 
       (.I0(g0_b19__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[19]_i_3 
       (.I0(g0_b18__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[19]_i_4 
       (.I0(g0_b17__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[19]_i_5 
       (.I0(g0_b16__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[19]_i_6 
       (.I0(\dout[51]_i_6_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_7_n_0 ),
        .I3(g0_b19__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[51]),
        .O(\a_reg[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[19]_i_7 
       (.I0(\dout[51]_i_8_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_9_n_0 ),
        .I3(g0_b18__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[50]),
        .O(\a_reg[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[19]_i_8 
       (.I0(\dout[51]_i_10_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_11_n_0 ),
        .I3(g0_b17__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[49]),
        .O(\a_reg[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[19]_i_9 
       (.I0(\dout[51]_i_12_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_13_n_0 ),
        .I3(g0_b16__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[48]),
        .O(\a_reg[19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[23]_i_2 
       (.I0(g0_b23__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[23]_i_3 
       (.I0(g0_b22__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[23]_i_4 
       (.I0(g0_b21__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[23]_i_5 
       (.I0(g0_b20__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[23]_i_6 
       (.I0(\dout[55]_i_6_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_7_n_0 ),
        .I3(g0_b23__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[55]),
        .O(\a_reg[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[23]_i_7 
       (.I0(\dout[55]_i_8_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_9_n_0 ),
        .I3(g0_b22__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[54]),
        .O(\a_reg[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[23]_i_8 
       (.I0(\dout[55]_i_10_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_11_n_0 ),
        .I3(g0_b21__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[53]),
        .O(\a_reg[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[23]_i_9 
       (.I0(\dout[55]_i_12_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_13_n_0 ),
        .I3(g0_b20__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[52]),
        .O(\a_reg[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[27]_i_2 
       (.I0(g0_b27__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[27]_i_3 
       (.I0(g0_b26__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[27]_i_4 
       (.I0(g0_b25__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[27]_i_5 
       (.I0(g0_b24__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[27]_i_6 
       (.I0(\dout[59]_i_6_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_7_n_0 ),
        .I3(g0_b27__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[59]),
        .O(\a_reg[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[27]_i_7 
       (.I0(\dout[59]_i_8_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_9_n_0 ),
        .I3(g0_b26__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[58]),
        .O(\a_reg[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[27]_i_8 
       (.I0(\dout[59]_i_10_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_11_n_0 ),
        .I3(g0_b25__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[57]),
        .O(\a_reg[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[27]_i_9 
       (.I0(\dout[59]_i_12_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_13_n_0 ),
        .I3(g0_b24__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[56]),
        .O(\a_reg[27]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[31]_i_2 
       (.I0(g0_b30__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[31]_i_3 
       (.I0(g0_b29__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[31]_i_4 
       (.I0(g0_b28__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[31]_i_5 
       (.I0(\dout[63]_i_8_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_9_n_0 ),
        .I3(g0_b31__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[63]),
        .O(\a_reg[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[31]_i_6 
       (.I0(\dout[63]_i_10_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_11_n_0 ),
        .I3(g0_b30__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[62]),
        .O(\a_reg[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[31]_i_7 
       (.I0(\dout[63]_i_12_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_13_n_0 ),
        .I3(g0_b29__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[61]),
        .O(\a_reg[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[31]_i_8 
       (.I0(\dout[63]_i_14_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_15_n_0 ),
        .I3(g0_b28__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[60]),
        .O(\a_reg[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[3]_i_2 
       (.I0(g0_b3_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[3]_i_3 
       (.I0(g0_b2__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[3]_i_4 
       (.I0(g0_b1__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[3]_i_5 
       (.I0(g0_b0__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[3]_i_6 
       (.I0(\dout[51]_i_7_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_6_n_0 ),
        .I3(g0_b3_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[35]),
        .O(\a_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[3]_i_7 
       (.I0(\dout[51]_i_9_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_8_n_0 ),
        .I3(g0_b2__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[34]),
        .O(\a_reg[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[3]_i_8 
       (.I0(\dout[51]_i_11_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_10_n_0 ),
        .I3(g0_b1__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[33]),
        .O(\a_reg[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[3]_i_9 
       (.I0(\dout[51]_i_13_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_12_n_0 ),
        .I3(g0_b0__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[32]),
        .O(\a_reg[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[7]_i_2 
       (.I0(g0_b7__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[7]_i_3 
       (.I0(g0_b6_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[7]_i_4 
       (.I0(g0_b5__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_reg[7]_i_5 
       (.I0(g0_b4__0_n_0),
        .I1(di_vld_IBUF),
        .O(\a_reg[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[7]_i_6 
       (.I0(\dout[55]_i_7_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_6_n_0 ),
        .I3(g0_b7__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[39]),
        .O(\a_reg[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[7]_i_7 
       (.I0(\dout[55]_i_9_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_8_n_0 ),
        .I3(g0_b6_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[38]),
        .O(\a_reg[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[7]_i_8 
       (.I0(\dout[55]_i_11_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_10_n_0 ),
        .I3(g0_b5__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[37]),
        .O(\a_reg[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47B8000047B8)) 
    \a_reg[7]_i_9 
       (.I0(\dout[55]_i_13_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_12_n_0 ),
        .I3(g0_b4__0_n_0),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[36]),
        .O(\a_reg[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[3]_i_1_n_7 ),
        .Q(a_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[11]_i_1_n_5 ),
        .Q(a_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[11]_i_1_n_4 ),
        .Q(a_reg[11]));
  CARRY4 \a_reg_reg[11]_i_1 
       (.CI(\a_reg_reg[7]_i_1_n_0 ),
        .CO({\a_reg_reg[11]_i_1_n_0 ,\NLW_a_reg_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg[11]_i_2_n_0 ,\a_reg[11]_i_3_n_0 ,\a_reg[11]_i_4_n_0 ,\a_reg[11]_i_5_n_0 }),
        .O({\a_reg_reg[11]_i_1_n_4 ,\a_reg_reg[11]_i_1_n_5 ,\a_reg_reg[11]_i_1_n_6 ,\a_reg_reg[11]_i_1_n_7 }),
        .S({\a_reg[11]_i_6_n_0 ,\a_reg[11]_i_7_n_0 ,\a_reg[11]_i_8_n_0 ,\a_reg[11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[15]_i_1_n_7 ),
        .Q(a_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[15]_i_1_n_6 ),
        .Q(a_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[15]_i_1_n_5 ),
        .Q(a_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[15]_i_1_n_4 ),
        .Q(a_reg[15]));
  CARRY4 \a_reg_reg[15]_i_1 
       (.CI(\a_reg_reg[11]_i_1_n_0 ),
        .CO({\a_reg_reg[15]_i_1_n_0 ,\NLW_a_reg_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg[15]_i_2_n_0 ,\a_reg[15]_i_3_n_0 ,\a_reg[15]_i_4_n_0 ,\a_reg[15]_i_5_n_0 }),
        .O({\a_reg_reg[15]_i_1_n_4 ,\a_reg_reg[15]_i_1_n_5 ,\a_reg_reg[15]_i_1_n_6 ,\a_reg_reg[15]_i_1_n_7 }),
        .S({\a_reg[15]_i_6_n_0 ,\a_reg[15]_i_7_n_0 ,\a_reg[15]_i_8_n_0 ,\a_reg[15]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[19]_i_1_n_7 ),
        .Q(a_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[19]_i_1_n_6 ),
        .Q(a_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[19]_i_1_n_5 ),
        .Q(a_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[19]_i_1_n_4 ),
        .Q(a_reg[19]));
  CARRY4 \a_reg_reg[19]_i_1 
       (.CI(\a_reg_reg[15]_i_1_n_0 ),
        .CO({\a_reg_reg[19]_i_1_n_0 ,\NLW_a_reg_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg[19]_i_2_n_0 ,\a_reg[19]_i_3_n_0 ,\a_reg[19]_i_4_n_0 ,\a_reg[19]_i_5_n_0 }),
        .O({\a_reg_reg[19]_i_1_n_4 ,\a_reg_reg[19]_i_1_n_5 ,\a_reg_reg[19]_i_1_n_6 ,\a_reg_reg[19]_i_1_n_7 }),
        .S({\a_reg[19]_i_6_n_0 ,\a_reg[19]_i_7_n_0 ,\a_reg[19]_i_8_n_0 ,\a_reg[19]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[3]_i_1_n_6 ),
        .Q(a_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[23]_i_1_n_7 ),
        .Q(a_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[23]_i_1_n_6 ),
        .Q(a_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[23]_i_1_n_5 ),
        .Q(a_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[23]_i_1_n_4 ),
        .Q(a_reg[23]));
  CARRY4 \a_reg_reg[23]_i_1 
       (.CI(\a_reg_reg[19]_i_1_n_0 ),
        .CO({\a_reg_reg[23]_i_1_n_0 ,\NLW_a_reg_reg[23]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg[23]_i_2_n_0 ,\a_reg[23]_i_3_n_0 ,\a_reg[23]_i_4_n_0 ,\a_reg[23]_i_5_n_0 }),
        .O({\a_reg_reg[23]_i_1_n_4 ,\a_reg_reg[23]_i_1_n_5 ,\a_reg_reg[23]_i_1_n_6 ,\a_reg_reg[23]_i_1_n_7 }),
        .S({\a_reg[23]_i_6_n_0 ,\a_reg[23]_i_7_n_0 ,\a_reg[23]_i_8_n_0 ,\a_reg[23]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[27]_i_1_n_7 ),
        .Q(a_reg[24]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[27]_i_1_n_6 ),
        .Q(a_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[27]_i_1_n_5 ),
        .Q(a_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[27]_i_1_n_4 ),
        .Q(a_reg[27]));
  CARRY4 \a_reg_reg[27]_i_1 
       (.CI(\a_reg_reg[23]_i_1_n_0 ),
        .CO({\a_reg_reg[27]_i_1_n_0 ,\NLW_a_reg_reg[27]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg[27]_i_2_n_0 ,\a_reg[27]_i_3_n_0 ,\a_reg[27]_i_4_n_0 ,\a_reg[27]_i_5_n_0 }),
        .O({\a_reg_reg[27]_i_1_n_4 ,\a_reg_reg[27]_i_1_n_5 ,\a_reg_reg[27]_i_1_n_6 ,\a_reg_reg[27]_i_1_n_7 }),
        .S({\a_reg[27]_i_6_n_0 ,\a_reg[27]_i_7_n_0 ,\a_reg[27]_i_8_n_0 ,\a_reg[27]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[31]_i_1_n_7 ),
        .Q(a_reg[28]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[31]_i_1_n_6 ),
        .Q(a_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[3]_i_1_n_5 ),
        .Q(a_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[31]_i_1_n_5 ),
        .Q(a_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[31]_i_1_n_4 ),
        .Q(a_reg[31]));
  CARRY4 \a_reg_reg[31]_i_1 
       (.CI(\a_reg_reg[27]_i_1_n_0 ),
        .CO(\NLW_a_reg_reg[31]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\a_reg[31]_i_2_n_0 ,\a_reg[31]_i_3_n_0 ,\a_reg[31]_i_4_n_0 }),
        .O({\a_reg_reg[31]_i_1_n_4 ,\a_reg_reg[31]_i_1_n_5 ,\a_reg_reg[31]_i_1_n_6 ,\a_reg_reg[31]_i_1_n_7 }),
        .S({\a_reg[31]_i_5_n_0 ,\a_reg[31]_i_6_n_0 ,\a_reg[31]_i_7_n_0 ,\a_reg[31]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[3]_i_1_n_4 ),
        .Q(a_reg[3]));
  CARRY4 \a_reg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\a_reg_reg[3]_i_1_n_0 ,\NLW_a_reg_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg[3]_i_2_n_0 ,\a_reg[3]_i_3_n_0 ,\a_reg[3]_i_4_n_0 ,\a_reg[3]_i_5_n_0 }),
        .O({\a_reg_reg[3]_i_1_n_4 ,\a_reg_reg[3]_i_1_n_5 ,\a_reg_reg[3]_i_1_n_6 ,\a_reg_reg[3]_i_1_n_7 }),
        .S({\a_reg[3]_i_6_n_0 ,\a_reg[3]_i_7_n_0 ,\a_reg[3]_i_8_n_0 ,\a_reg[3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[7]_i_1_n_7 ),
        .Q(a_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[7]_i_1_n_6 ),
        .Q(a_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[7]_i_1_n_5 ),
        .Q(a_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[7]_i_1_n_4 ),
        .Q(a_reg[7]));
  CARRY4 \a_reg_reg[7]_i_1 
       (.CI(\a_reg_reg[3]_i_1_n_0 ),
        .CO({\a_reg_reg[7]_i_1_n_0 ,\NLW_a_reg_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg[7]_i_2_n_0 ,\a_reg[7]_i_3_n_0 ,\a_reg[7]_i_4_n_0 ,\a_reg[7]_i_5_n_0 }),
        .O({\a_reg_reg[7]_i_1_n_4 ,\a_reg_reg[7]_i_1_n_5 ,\a_reg_reg[7]_i_1_n_6 ,\a_reg_reg[7]_i_1_n_7 }),
        .S({\a_reg[7]_i_6_n_0 ,\a_reg[7]_i_7_n_0 ,\a_reg[7]_i_8_n_0 ,\a_reg[7]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[11]_i_1_n_7 ),
        .Q(a_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\a_reg_reg[11]_i_1_n_6 ),
        .Q(a_reg[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[11]_i_2 
       (.I0(g0_b11_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[11]_i_3 
       (.I0(g0_b10_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[11]_i_4 
       (.I0(g0_b9_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[11]_i_5 
       (.I0(g0_b8_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[11]_i_6 
       (.I0(g0_b11_n_0),
        .I1(b_rot[11]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[11]),
        .O(\b_reg[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[11]_i_7 
       (.I0(g0_b10_n_0),
        .I1(b_rot[10]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[10]),
        .O(\b_reg[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[11]_i_8 
       (.I0(g0_b9_n_0),
        .I1(b_rot[9]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[9]),
        .O(\b_reg[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[11]_i_9 
       (.I0(g0_b8_n_0),
        .I1(b_rot[8]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[8]),
        .O(\b_reg[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[15]_i_2 
       (.I0(g0_b15_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[15]_i_3 
       (.I0(g0_b14_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[15]_i_4 
       (.I0(g0_b13_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[15]_i_5 
       (.I0(g0_b12_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[15]_i_6 
       (.I0(g0_b15_n_0),
        .I1(b_rot[15]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[15]),
        .O(\b_reg[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[15]_i_7 
       (.I0(g0_b14_n_0),
        .I1(b_rot[14]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[14]),
        .O(\b_reg[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[15]_i_8 
       (.I0(g0_b13_n_0),
        .I1(b_rot[13]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[13]),
        .O(\b_reg[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[15]_i_9 
       (.I0(g0_b12_n_0),
        .I1(b_rot[12]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[12]),
        .O(\b_reg[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[19]_i_2 
       (.I0(g0_b19_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[19]_i_3 
       (.I0(g0_b18_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[19]_i_4 
       (.I0(g0_b17_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[19]_i_5 
       (.I0(g0_b16_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[19]_i_6 
       (.I0(g0_b19_n_0),
        .I1(b_rot[19]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[19]),
        .O(\b_reg[19]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[19]_i_7 
       (.I0(g0_b18_n_0),
        .I1(b_rot[18]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[18]),
        .O(\b_reg[19]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[19]_i_8 
       (.I0(g0_b17_n_0),
        .I1(b_rot[17]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[17]),
        .O(\b_reg[19]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[19]_i_9 
       (.I0(g0_b16_n_0),
        .I1(b_rot[16]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[16]),
        .O(\b_reg[19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[23]_i_2 
       (.I0(g0_b23_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[23]_i_3 
       (.I0(g0_b22_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[23]_i_4 
       (.I0(g0_b21_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[23]_i_5 
       (.I0(g0_b20_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[23]_i_6 
       (.I0(g0_b23_n_0),
        .I1(b_rot[23]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[23]),
        .O(\b_reg[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[23]_i_7 
       (.I0(g0_b22_n_0),
        .I1(b_rot[22]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[22]),
        .O(\b_reg[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[23]_i_8 
       (.I0(g0_b21_n_0),
        .I1(b_rot[21]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[21]),
        .O(\b_reg[23]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[23]_i_9 
       (.I0(g0_b20_n_0),
        .I1(b_rot[20]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[20]),
        .O(\b_reg[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[27]_i_2 
       (.I0(g0_b27_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[27]_i_3 
       (.I0(g0_b26_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[27]_i_4 
       (.I0(g0_b25_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[27]_i_5 
       (.I0(g0_b24_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[27]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[27]_i_6 
       (.I0(g0_b27_n_0),
        .I1(b_rot[27]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[27]),
        .O(\b_reg[27]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[27]_i_7 
       (.I0(g0_b26_n_0),
        .I1(b_rot[26]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[26]),
        .O(\b_reg[27]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[27]_i_8 
       (.I0(g0_b25_n_0),
        .I1(b_rot[25]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[25]),
        .O(\b_reg[27]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[27]_i_9 
       (.I0(g0_b24_n_0),
        .I1(b_rot[24]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[24]),
        .O(\b_reg[27]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \b_reg[31]_i_1 
       (.I0(i_cnt_reg[2]),
        .I1(i_cnt_reg[3]),
        .I2(di_vld_IBUF),
        .O(b_reg));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[31]_i_3 
       (.I0(g0_b30_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[31]_i_4 
       (.I0(g0_b29_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[31]_i_5 
       (.I0(g0_b28_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[31]_i_6 
       (.I0(g0_b31_n_0),
        .I1(b_rot[31]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[31]),
        .O(\b_reg[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[31]_i_7 
       (.I0(g0_b30_n_0),
        .I1(b_rot[30]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[30]),
        .O(\b_reg[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[31]_i_8 
       (.I0(g0_b29_n_0),
        .I1(b_rot[29]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[29]),
        .O(\b_reg[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[31]_i_9 
       (.I0(g0_b28_n_0),
        .I1(b_rot[28]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[28]),
        .O(\b_reg[31]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[3]_i_2 
       (.I0(g0_b2_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[3]_i_3 
       (.I0(g0_b1_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[3]_i_4 
       (.I0(g0_b0_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[3]_i_5 
       (.I0(g0_b2_n_0),
        .I1(b_rot[2]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[2]),
        .O(\b_reg[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[3]_i_6 
       (.I0(g0_b1_n_0),
        .I1(b_rot[1]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[1]),
        .O(\b_reg[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[3]_i_7 
       (.I0(g0_b0_n_0),
        .I1(b_rot[0]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[0]),
        .O(\b_reg[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[7]_i_2 
       (.I0(g0_b7_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[7]_i_3 
       (.I0(g0_b5_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[7]_i_4 
       (.I0(g0_b4_n_0),
        .I1(di_vld_IBUF),
        .O(\b_reg[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[7]_i_5 
       (.I0(g0_b7_n_0),
        .I1(b_rot[7]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[7]),
        .O(\b_reg[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[7]_i_6 
       (.I0(g0_b5_n_0),
        .I1(b_rot[5]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[5]),
        .O(\b_reg[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \b_reg[7]_i_7 
       (.I0(g0_b4_n_0),
        .I1(b_rot[4]),
        .I2(di_vld_IBUF),
        .I3(din_IBUF[4]),
        .O(\b_reg[7]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[3]_i_1_n_7 ),
        .Q(b[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[11]_i_1_n_5 ),
        .Q(b[10]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[11]_i_1_n_4 ),
        .Q(b[11]));
  CARRY4 \b_reg_reg[11]_i_1 
       (.CI(\b_reg_reg[7]_i_1_n_0 ),
        .CO({\b_reg_reg[11]_i_1_n_0 ,\NLW_b_reg_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\b_reg[11]_i_2_n_0 ,\b_reg[11]_i_3_n_0 ,\b_reg[11]_i_4_n_0 ,\b_reg[11]_i_5_n_0 }),
        .O({\b_reg_reg[11]_i_1_n_4 ,\b_reg_reg[11]_i_1_n_5 ,\b_reg_reg[11]_i_1_n_6 ,\b_reg_reg[11]_i_1_n_7 }),
        .S({\b_reg[11]_i_6_n_0 ,\b_reg[11]_i_7_n_0 ,\b_reg[11]_i_8_n_0 ,\b_reg[11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[15]_i_1_n_7 ),
        .Q(b[12]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[15]_i_1_n_6 ),
        .Q(b[13]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[15]_i_1_n_5 ),
        .Q(b[14]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[15]_i_1_n_4 ),
        .Q(b[15]));
  CARRY4 \b_reg_reg[15]_i_1 
       (.CI(\b_reg_reg[11]_i_1_n_0 ),
        .CO({\b_reg_reg[15]_i_1_n_0 ,\NLW_b_reg_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\b_reg[15]_i_2_n_0 ,\b_reg[15]_i_3_n_0 ,\b_reg[15]_i_4_n_0 ,\b_reg[15]_i_5_n_0 }),
        .O({\b_reg_reg[15]_i_1_n_4 ,\b_reg_reg[15]_i_1_n_5 ,\b_reg_reg[15]_i_1_n_6 ,\b_reg_reg[15]_i_1_n_7 }),
        .S({\b_reg[15]_i_6_n_0 ,\b_reg[15]_i_7_n_0 ,\b_reg[15]_i_8_n_0 ,\b_reg[15]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[19]_i_1_n_7 ),
        .Q(b[16]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[19]_i_1_n_6 ),
        .Q(b[17]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[19]_i_1_n_5 ),
        .Q(b[18]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[19]_i_1_n_4 ),
        .Q(b[19]));
  CARRY4 \b_reg_reg[19]_i_1 
       (.CI(\b_reg_reg[15]_i_1_n_0 ),
        .CO({\b_reg_reg[19]_i_1_n_0 ,\NLW_b_reg_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\b_reg[19]_i_2_n_0 ,\b_reg[19]_i_3_n_0 ,\b_reg[19]_i_4_n_0 ,\b_reg[19]_i_5_n_0 }),
        .O({\b_reg_reg[19]_i_1_n_4 ,\b_reg_reg[19]_i_1_n_5 ,\b_reg_reg[19]_i_1_n_6 ,\b_reg_reg[19]_i_1_n_7 }),
        .S({\b_reg[19]_i_6_n_0 ,\b_reg[19]_i_7_n_0 ,\b_reg[19]_i_8_n_0 ,\b_reg[19]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[3]_i_1_n_6 ),
        .Q(b[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[23]_i_1_n_7 ),
        .Q(b[20]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[23]_i_1_n_6 ),
        .Q(b[21]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[23]_i_1_n_5 ),
        .Q(b[22]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[23]_i_1_n_4 ),
        .Q(b[23]));
  CARRY4 \b_reg_reg[23]_i_1 
       (.CI(\b_reg_reg[19]_i_1_n_0 ),
        .CO({\b_reg_reg[23]_i_1_n_0 ,\NLW_b_reg_reg[23]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\b_reg[23]_i_2_n_0 ,\b_reg[23]_i_3_n_0 ,\b_reg[23]_i_4_n_0 ,\b_reg[23]_i_5_n_0 }),
        .O({\b_reg_reg[23]_i_1_n_4 ,\b_reg_reg[23]_i_1_n_5 ,\b_reg_reg[23]_i_1_n_6 ,\b_reg_reg[23]_i_1_n_7 }),
        .S({\b_reg[23]_i_6_n_0 ,\b_reg[23]_i_7_n_0 ,\b_reg[23]_i_8_n_0 ,\b_reg[23]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[27]_i_1_n_7 ),
        .Q(b[24]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[27]_i_1_n_6 ),
        .Q(b[25]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[27]_i_1_n_5 ),
        .Q(b[26]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[27]_i_1_n_4 ),
        .Q(b[27]));
  CARRY4 \b_reg_reg[27]_i_1 
       (.CI(\b_reg_reg[23]_i_1_n_0 ),
        .CO({\b_reg_reg[27]_i_1_n_0 ,\NLW_b_reg_reg[27]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\b_reg[27]_i_2_n_0 ,\b_reg[27]_i_3_n_0 ,\b_reg[27]_i_4_n_0 ,\b_reg[27]_i_5_n_0 }),
        .O({\b_reg_reg[27]_i_1_n_4 ,\b_reg_reg[27]_i_1_n_5 ,\b_reg_reg[27]_i_1_n_6 ,\b_reg_reg[27]_i_1_n_7 }),
        .S({\b_reg[27]_i_6_n_0 ,\b_reg[27]_i_7_n_0 ,\b_reg[27]_i_8_n_0 ,\b_reg[27]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[31]_i_2_n_7 ),
        .Q(b[28]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[31]_i_2_n_6 ),
        .Q(b[29]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[3]_i_1_n_5 ),
        .Q(b[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[31]_i_2_n_5 ),
        .Q(b[30]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[31]_i_2_n_4 ),
        .Q(b[31]));
  CARRY4 \b_reg_reg[31]_i_2 
       (.CI(\b_reg_reg[27]_i_1_n_0 ),
        .CO(\NLW_b_reg_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\b_reg[31]_i_3_n_0 ,\b_reg[31]_i_4_n_0 ,\b_reg[31]_i_5_n_0 }),
        .O({\b_reg_reg[31]_i_2_n_4 ,\b_reg_reg[31]_i_2_n_5 ,\b_reg_reg[31]_i_2_n_6 ,\b_reg_reg[31]_i_2_n_7 }),
        .S({\b_reg[31]_i_6_n_0 ,\b_reg[31]_i_7_n_0 ,\b_reg[31]_i_8_n_0 ,\b_reg[31]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[3]_i_1_n_4 ),
        .Q(b[3]));
  CARRY4 \b_reg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\b_reg_reg[3]_i_1_n_0 ,\NLW_b_reg_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b3__0_n_0,\b_reg[3]_i_2_n_0 ,\b_reg[3]_i_3_n_0 ,\b_reg[3]_i_4_n_0 }),
        .O({\b_reg_reg[3]_i_1_n_4 ,\b_reg_reg[3]_i_1_n_5 ,\b_reg_reg[3]_i_1_n_6 ,\b_reg_reg[3]_i_1_n_7 }),
        .S({g0_b3__2_n_0,\b_reg[3]_i_5_n_0 ,\b_reg[3]_i_6_n_0 ,\b_reg[3]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[7]_i_1_n_7 ),
        .Q(b[4]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[7]_i_1_n_6 ),
        .Q(b[5]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[7]_i_1_n_5 ),
        .Q(b[6]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[7]_i_1_n_4 ),
        .Q(b[7]));
  CARRY4 \b_reg_reg[7]_i_1 
       (.CI(\b_reg_reg[3]_i_1_n_0 ),
        .CO({\b_reg_reg[7]_i_1_n_0 ,\NLW_b_reg_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\b_reg[7]_i_2_n_0 ,g0_b6__0_n_0,\b_reg[7]_i_3_n_0 ,\b_reg[7]_i_4_n_0 }),
        .O({\b_reg_reg[7]_i_1_n_4 ,\b_reg_reg[7]_i_1_n_5 ,\b_reg_reg[7]_i_1_n_6 ,\b_reg_reg[7]_i_1_n_7 }),
        .S({\b_reg[7]_i_5_n_0 ,g0_b6__2_n_0,\b_reg[7]_i_6_n_0 ,\b_reg[7]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[11]_i_1_n_7 ),
        .Q(b[8]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(b_reg),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\b_reg_reg[11]_i_1_n_6 ),
        .Q(b[9]));
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
    .INIT(32'hFFFF0008)) 
    do_rdy_i_1
       (.I0(i_cnt_reg[3]),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[0]),
        .I3(i_cnt_reg[1]),
        .I4(di_vld_IBUF),
        .O(do_rdy_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    do_rdy_reg
       (.C(clk_IBUF_BUFG),
        .CE(do_rdy_i_1_n_0),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\dout[63]_i_1_n_0 ),
        .Q(do_rdy_OBUF));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[11]_i_2 
       (.I0(b_rot[11]),
        .I1(g0_b11_n_0),
        .O(\dout[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[11]_i_3 
       (.I0(b_rot[10]),
        .I1(g0_b10_n_0),
        .O(\dout[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[11]_i_4 
       (.I0(b_rot[9]),
        .I1(g0_b9_n_0),
        .O(\dout[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[11]_i_5 
       (.I0(b_rot[8]),
        .I1(g0_b8_n_0),
        .O(\dout[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[11]_i_6 
       (.I0(g0_b3__1_i_3_n_0),
        .I1(g0_b3__1_i_4_n_0),
        .I2(plusOp1_out[4]),
        .I3(g0_b3__1_i_5_n_0),
        .I4(plusOp1_out[3]),
        .I5(g0_b3__1_i_2_n_0),
        .O(b_rot[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[11]_i_7 
       (.I0(\dout[27]_i_12_n_0 ),
        .I1(\dout[27]_i_13_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[27]_i_10_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[27]_i_11_n_0 ),
        .O(b_rot[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[11]_i_8 
       (.I0(\dout[27]_i_16_n_0 ),
        .I1(\dout[27]_i_17_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[27]_i_14_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[27]_i_15_n_0 ),
        .O(b_rot[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[11]_i_9 
       (.I0(\dout[27]_i_20_n_0 ),
        .I1(\dout[27]_i_21_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[27]_i_18_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[27]_i_19_n_0 ),
        .O(b_rot[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[15]_i_2 
       (.I0(b_rot[15]),
        .I1(g0_b15_n_0),
        .O(\dout[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[15]_i_3 
       (.I0(b_rot[14]),
        .I1(g0_b14_n_0),
        .O(\dout[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[15]_i_4 
       (.I0(b_rot[13]),
        .I1(g0_b13_n_0),
        .O(\dout[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[15]_i_5 
       (.I0(b_rot[12]),
        .I1(g0_b12_n_0),
        .O(\dout[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[15]_i_6 
       (.I0(\dout[31]_i_12_n_0 ),
        .I1(\dout[31]_i_13_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[31]_i_10_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[31]_i_11_n_0 ),
        .O(b_rot[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[15]_i_7 
       (.I0(g0_b6__1_i_3_n_0),
        .I1(g0_b6__1_i_4_n_0),
        .I2(plusOp1_out[4]),
        .I3(g0_b6__1_i_5_n_0),
        .I4(plusOp1_out[3]),
        .I5(g0_b6__1_i_2_n_0),
        .O(b_rot[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[15]_i_8 
       (.I0(\dout[31]_i_16_n_0 ),
        .I1(\dout[31]_i_17_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[31]_i_14_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[31]_i_15_n_0 ),
        .O(b_rot[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[15]_i_9 
       (.I0(\dout[31]_i_20_n_0 ),
        .I1(\dout[31]_i_21_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[31]_i_18_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[31]_i_19_n_0 ),
        .O(b_rot[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[19]_i_2 
       (.I0(b_rot[19]),
        .I1(g0_b19_n_0),
        .O(\dout[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[19]_i_3 
       (.I0(b_rot[18]),
        .I1(g0_b18_n_0),
        .O(\dout[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[19]_i_4 
       (.I0(b_rot[17]),
        .I1(g0_b17_n_0),
        .O(\dout[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[19]_i_5 
       (.I0(b_rot[16]),
        .I1(g0_b16_n_0),
        .O(\dout[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[19]_i_6 
       (.I0(g0_b3__1_i_4_n_0),
        .I1(g0_b3__1_i_5_n_0),
        .I2(plusOp1_out[4]),
        .I3(g0_b3__1_i_2_n_0),
        .I4(plusOp1_out[3]),
        .I5(g0_b3__1_i_3_n_0),
        .O(b_rot[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[19]_i_7 
       (.I0(\dout[27]_i_13_n_0 ),
        .I1(\dout[27]_i_10_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[27]_i_11_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[27]_i_12_n_0 ),
        .O(b_rot[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[19]_i_8 
       (.I0(\dout[27]_i_17_n_0 ),
        .I1(\dout[27]_i_14_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[27]_i_15_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[27]_i_16_n_0 ),
        .O(b_rot[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[19]_i_9 
       (.I0(\dout[27]_i_21_n_0 ),
        .I1(\dout[27]_i_18_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[27]_i_19_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[27]_i_20_n_0 ),
        .O(b_rot[16]));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[23]_i_2 
       (.I0(b_rot[23]),
        .I1(g0_b23_n_0),
        .O(\dout[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[23]_i_3 
       (.I0(b_rot[22]),
        .I1(g0_b22_n_0),
        .O(\dout[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[23]_i_4 
       (.I0(b_rot[21]),
        .I1(g0_b21_n_0),
        .O(\dout[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[23]_i_5 
       (.I0(b_rot[20]),
        .I1(g0_b20_n_0),
        .O(\dout[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[23]_i_6 
       (.I0(\dout[31]_i_13_n_0 ),
        .I1(\dout[31]_i_10_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[31]_i_11_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[31]_i_12_n_0 ),
        .O(b_rot[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[23]_i_7 
       (.I0(g0_b6__1_i_4_n_0),
        .I1(g0_b6__1_i_5_n_0),
        .I2(plusOp1_out[4]),
        .I3(g0_b6__1_i_2_n_0),
        .I4(plusOp1_out[3]),
        .I5(g0_b6__1_i_3_n_0),
        .O(b_rot[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[23]_i_8 
       (.I0(\dout[31]_i_17_n_0 ),
        .I1(\dout[31]_i_14_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[31]_i_15_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[31]_i_16_n_0 ),
        .O(b_rot[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[23]_i_9 
       (.I0(\dout[31]_i_21_n_0 ),
        .I1(\dout[31]_i_18_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[31]_i_19_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[31]_i_20_n_0 ),
        .O(b_rot[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_10 
       (.I0(g0_b6__1_i_16_n_0),
        .I1(g0_b6__1_i_17_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_18_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_19_n_0),
        .O(\dout[27]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_11 
       (.I0(g0_b6__1_i_20_n_0),
        .I1(g0_b6__1_i_21_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_6_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_7_n_0),
        .O(\dout[27]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_12 
       (.I0(g0_b6__1_i_8_n_0),
        .I1(g0_b6__1_i_9_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_10_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_11_n_0),
        .O(\dout[27]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_13 
       (.I0(g0_b6__1_i_12_n_0),
        .I1(g0_b6__1_i_13_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_14_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_15_n_0),
        .O(\dout[27]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_14 
       (.I0(g0_b3__1_i_17_n_0),
        .I1(g0_b3__1_i_18_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_19_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_20_n_0),
        .O(\dout[27]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_15 
       (.I0(g0_b3__1_i_21_n_0),
        .I1(g0_b3__1_i_6_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_7_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_8_n_0),
        .O(\dout[27]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_16 
       (.I0(g0_b3__1_i_9_n_0),
        .I1(g0_b3__1_i_10_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_11_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_12_n_0),
        .O(\dout[27]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_17 
       (.I0(g0_b3__1_i_13_n_0),
        .I1(g0_b3__1_i_14_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_15_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_16_n_0),
        .O(\dout[27]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_18 
       (.I0(g0_b6__1_i_15_n_0),
        .I1(g0_b6__1_i_16_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_17_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_18_n_0),
        .O(\dout[27]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_19 
       (.I0(g0_b6__1_i_19_n_0),
        .I1(g0_b6__1_i_20_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_21_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_6_n_0),
        .O(\dout[27]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[27]_i_2 
       (.I0(b_rot[27]),
        .I1(g0_b27_n_0),
        .O(\dout[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_20 
       (.I0(g0_b6__1_i_7_n_0),
        .I1(g0_b6__1_i_8_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_9_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_10_n_0),
        .O(\dout[27]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_21 
       (.I0(g0_b6__1_i_11_n_0),
        .I1(g0_b6__1_i_12_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_13_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_14_n_0),
        .O(\dout[27]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[27]_i_3 
       (.I0(b_rot[26]),
        .I1(g0_b26_n_0),
        .O(\dout[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[27]_i_4 
       (.I0(b_rot[25]),
        .I1(g0_b25_n_0),
        .O(\dout[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[27]_i_5 
       (.I0(b_rot[24]),
        .I1(g0_b24_n_0),
        .O(\dout[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_6 
       (.I0(g0_b3__1_i_5_n_0),
        .I1(g0_b3__1_i_2_n_0),
        .I2(plusOp1_out[4]),
        .I3(g0_b3__1_i_3_n_0),
        .I4(plusOp1_out[3]),
        .I5(g0_b3__1_i_4_n_0),
        .O(b_rot[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_7 
       (.I0(\dout[27]_i_10_n_0 ),
        .I1(\dout[27]_i_11_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[27]_i_12_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[27]_i_13_n_0 ),
        .O(b_rot[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_8 
       (.I0(\dout[27]_i_14_n_0 ),
        .I1(\dout[27]_i_15_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[27]_i_16_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[27]_i_17_n_0 ),
        .O(b_rot[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[27]_i_9 
       (.I0(\dout[27]_i_18_n_0 ),
        .I1(\dout[27]_i_19_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[27]_i_20_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[27]_i_21_n_0 ),
        .O(b_rot[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_10 
       (.I0(g0_b3__1_i_20_n_0),
        .I1(g0_b3__1_i_21_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_6_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_7_n_0),
        .O(\dout[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_11 
       (.I0(g0_b3__1_i_8_n_0),
        .I1(g0_b3__1_i_9_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_10_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_11_n_0),
        .O(\dout[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_12 
       (.I0(g0_b3__1_i_12_n_0),
        .I1(g0_b3__1_i_13_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_14_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_15_n_0),
        .O(\dout[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_13 
       (.I0(g0_b3__1_i_16_n_0),
        .I1(g0_b3__1_i_17_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_18_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_19_n_0),
        .O(\dout[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_14 
       (.I0(g0_b3__1_i_19_n_0),
        .I1(g0_b3__1_i_20_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_21_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_6_n_0),
        .O(\dout[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_15 
       (.I0(g0_b3__1_i_7_n_0),
        .I1(g0_b3__1_i_8_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_9_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_10_n_0),
        .O(\dout[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_16 
       (.I0(g0_b3__1_i_11_n_0),
        .I1(g0_b3__1_i_12_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_13_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_14_n_0),
        .O(\dout[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_17 
       (.I0(g0_b3__1_i_15_n_0),
        .I1(g0_b3__1_i_16_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_17_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_18_n_0),
        .O(\dout[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_18 
       (.I0(g0_b6__1_i_17_n_0),
        .I1(g0_b6__1_i_18_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_19_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_20_n_0),
        .O(\dout[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_19 
       (.I0(g0_b6__1_i_21_n_0),
        .I1(g0_b6__1_i_6_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_7_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_8_n_0),
        .O(\dout[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[31]_i_2 
       (.I0(b_rot[31]),
        .I1(g0_b31_n_0),
        .O(\dout[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_20 
       (.I0(g0_b6__1_i_9_n_0),
        .I1(g0_b6__1_i_10_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_11_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_12_n_0),
        .O(\dout[31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_21 
       (.I0(g0_b6__1_i_13_n_0),
        .I1(g0_b6__1_i_14_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_15_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_16_n_0),
        .O(\dout[31]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[31]_i_3 
       (.I0(b_rot[30]),
        .I1(g0_b30_n_0),
        .O(\dout[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[31]_i_4 
       (.I0(b_rot[29]),
        .I1(g0_b29_n_0),
        .O(\dout[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[31]_i_5 
       (.I0(b_rot[28]),
        .I1(g0_b28_n_0),
        .O(\dout[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_6 
       (.I0(\dout[31]_i_10_n_0 ),
        .I1(\dout[31]_i_11_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[31]_i_12_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[31]_i_13_n_0 ),
        .O(b_rot[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_7 
       (.I0(g0_b6__1_i_5_n_0),
        .I1(g0_b6__1_i_2_n_0),
        .I2(plusOp1_out[4]),
        .I3(g0_b6__1_i_3_n_0),
        .I4(plusOp1_out[3]),
        .I5(g0_b6__1_i_4_n_0),
        .O(b_rot[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_8 
       (.I0(\dout[31]_i_14_n_0 ),
        .I1(\dout[31]_i_15_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[31]_i_16_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[31]_i_17_n_0 ),
        .O(b_rot[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[31]_i_9 
       (.I0(\dout[31]_i_18_n_0 ),
        .I1(\dout[31]_i_19_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[31]_i_20_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[31]_i_21_n_0 ),
        .O(b_rot[28]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[35]_i_2 
       (.I0(\dout[51]_i_7_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_6_n_0 ),
        .I3(g0_b3_n_0),
        .O(\dout[35]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[35]_i_3 
       (.I0(\dout[51]_i_9_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_8_n_0 ),
        .I3(g0_b2__0_n_0),
        .O(\dout[35]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[35]_i_4 
       (.I0(\dout[51]_i_11_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_10_n_0 ),
        .I3(g0_b1__0_n_0),
        .O(\dout[35]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[35]_i_5 
       (.I0(\dout[51]_i_13_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_12_n_0 ),
        .I3(g0_b0__0_n_0),
        .O(\dout[35]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[39]_i_2 
       (.I0(\dout[55]_i_7_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_6_n_0 ),
        .I3(g0_b7__0_n_0),
        .O(\dout[39]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[39]_i_3 
       (.I0(\dout[55]_i_9_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_8_n_0 ),
        .I3(g0_b6_n_0),
        .O(\dout[39]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[39]_i_4 
       (.I0(\dout[55]_i_11_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_10_n_0 ),
        .I3(g0_b5__0_n_0),
        .O(\dout[39]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[39]_i_5 
       (.I0(\dout[55]_i_13_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_12_n_0 ),
        .I3(g0_b4__0_n_0),
        .O(\dout[39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[3]_i_2 
       (.I0(b_rot[2]),
        .I1(g0_b2_n_0),
        .O(\dout[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[3]_i_3 
       (.I0(b_rot[1]),
        .I1(g0_b1_n_0),
        .O(\dout[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[3]_i_4 
       (.I0(b_rot[0]),
        .I1(g0_b0_n_0),
        .O(\dout[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[3]_i_5 
       (.I0(\dout[27]_i_11_n_0 ),
        .I1(\dout[27]_i_12_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[27]_i_13_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[27]_i_10_n_0 ),
        .O(b_rot[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[3]_i_6 
       (.I0(\dout[27]_i_15_n_0 ),
        .I1(\dout[27]_i_16_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[27]_i_17_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[27]_i_14_n_0 ),
        .O(b_rot[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[3]_i_7 
       (.I0(\dout[27]_i_19_n_0 ),
        .I1(\dout[27]_i_20_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[27]_i_21_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[27]_i_18_n_0 ),
        .O(b_rot[0]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[43]_i_2 
       (.I0(\dout[59]_i_7_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_6_n_0 ),
        .I3(g0_b11__0_n_0),
        .O(\dout[43]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[43]_i_3 
       (.I0(\dout[59]_i_9_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_8_n_0 ),
        .I3(g0_b10__0_n_0),
        .O(\dout[43]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[43]_i_4 
       (.I0(\dout[59]_i_11_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_10_n_0 ),
        .I3(g0_b9__0_n_0),
        .O(\dout[43]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[43]_i_5 
       (.I0(\dout[59]_i_13_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_12_n_0 ),
        .I3(g0_b8__0_n_0),
        .O(\dout[43]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[47]_i_2 
       (.I0(\dout[63]_i_9_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_8_n_0 ),
        .I3(g0_b15__0_n_0),
        .O(\dout[47]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[47]_i_3 
       (.I0(\dout[63]_i_11_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_10_n_0 ),
        .I3(g0_b14__0_n_0),
        .O(\dout[47]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[47]_i_4 
       (.I0(\dout[63]_i_13_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_12_n_0 ),
        .I3(g0_b13__0_n_0),
        .O(\dout[47]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[47]_i_5 
       (.I0(\dout[63]_i_15_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_14_n_0 ),
        .I3(g0_b12__0_n_0),
        .O(\dout[47]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \dout[51]_i_10 
       (.I0(\dout[59]_i_22_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_26_n_0 ),
        .I3(\dout[59]_i_25_n_0 ),
        .I4(b[3]),
        .O(\dout[51]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[51]_i_11 
       (.I0(\dout[59]_i_23_n_0 ),
        .I1(b[3]),
        .I2(\dout[59]_i_24_n_0 ),
        .O(\dout[51]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \dout[51]_i_12 
       (.I0(\dout[59]_i_26_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_31_n_0 ),
        .I3(\dout[59]_i_29_n_0 ),
        .I4(b[3]),
        .O(\dout[51]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[51]_i_13 
       (.I0(\dout[63]_i_32_n_0 ),
        .I1(b[2]),
        .I2(\dout[59]_i_27_n_0 ),
        .I3(b[3]),
        .I4(\dout[59]_i_28_n_0 ),
        .O(\dout[51]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[51]_i_2 
       (.I0(\dout[51]_i_6_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_7_n_0 ),
        .I3(g0_b19__0_n_0),
        .O(\dout[51]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[51]_i_3 
       (.I0(\dout[51]_i_8_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_9_n_0 ),
        .I3(g0_b18__0_n_0),
        .O(\dout[51]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[51]_i_4 
       (.I0(\dout[51]_i_10_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_11_n_0 ),
        .I3(g0_b17__0_n_0),
        .O(\dout[51]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[51]_i_5 
       (.I0(\dout[51]_i_12_n_0 ),
        .I1(b[4]),
        .I2(\dout[51]_i_13_n_0 ),
        .I3(g0_b16__0_n_0),
        .O(\dout[51]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \dout[51]_i_6 
       (.I0(\dout[59]_i_14_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_16_n_0 ),
        .I3(\dout[59]_i_17_n_0 ),
        .I4(b[3]),
        .O(\dout[51]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[51]_i_7 
       (.I0(\dout[59]_i_15_n_0 ),
        .I1(b[3]),
        .I2(\dout[59]_i_16_n_0 ),
        .O(\dout[51]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \dout[51]_i_8 
       (.I0(\dout[59]_i_18_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_21_n_0 ),
        .I3(\dout[59]_i_21_n_0 ),
        .I4(b[3]),
        .O(\dout[51]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[51]_i_9 
       (.I0(\dout[59]_i_19_n_0 ),
        .I1(b[3]),
        .I2(\dout[59]_i_20_n_0 ),
        .O(\dout[51]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \dout[55]_i_10 
       (.I0(\dout[63]_i_26_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_27_n_0 ),
        .I3(\dout[63]_i_30_n_0 ),
        .I4(b[3]),
        .O(\dout[55]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[55]_i_11 
       (.I0(\dout[63]_i_28_n_0 ),
        .I1(b[3]),
        .I2(\dout[63]_i_29_n_0 ),
        .O(\dout[55]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \dout[55]_i_12 
       (.I0(\dout[63]_i_31_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_32_n_0 ),
        .I3(\dout[63]_i_35_n_0 ),
        .I4(b[3]),
        .O(\dout[55]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[55]_i_13 
       (.I0(\dout[63]_i_33_n_0 ),
        .I1(b[3]),
        .I2(\dout[63]_i_34_n_0 ),
        .O(\dout[55]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[55]_i_2 
       (.I0(\dout[55]_i_6_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_7_n_0 ),
        .I3(g0_b23__0_n_0),
        .O(\dout[55]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[55]_i_3 
       (.I0(\dout[55]_i_8_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_9_n_0 ),
        .I3(g0_b22__0_n_0),
        .O(\dout[55]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[55]_i_4 
       (.I0(\dout[55]_i_10_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_11_n_0 ),
        .I3(g0_b21__0_n_0),
        .O(\dout[55]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[55]_i_5 
       (.I0(\dout[55]_i_12_n_0 ),
        .I1(b[4]),
        .I2(\dout[55]_i_13_n_0 ),
        .I3(g0_b20__0_n_0),
        .O(\dout[55]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \dout[55]_i_6 
       (.I0(\dout[63]_i_16_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_17_n_0 ),
        .I3(\dout[63]_i_20_n_0 ),
        .I4(b[3]),
        .O(\dout[55]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[55]_i_7 
       (.I0(\dout[63]_i_18_n_0 ),
        .I1(b[3]),
        .I2(\dout[63]_i_19_n_0 ),
        .O(\dout[55]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \dout[55]_i_8 
       (.I0(\dout[63]_i_21_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_22_n_0 ),
        .I3(\dout[63]_i_25_n_0 ),
        .I4(b[3]),
        .O(\dout[55]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[55]_i_9 
       (.I0(\dout[63]_i_23_n_0 ),
        .I1(b[3]),
        .I2(\dout[63]_i_24_n_0 ),
        .O(\dout[55]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[59]_i_10 
       (.I0(\dout[59]_i_22_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_26_n_0 ),
        .I3(b[3]),
        .I4(\dout[59]_i_23_n_0 ),
        .O(\dout[59]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[59]_i_11 
       (.I0(\dout[59]_i_24_n_0 ),
        .I1(b[3]),
        .I2(\dout[59]_i_25_n_0 ),
        .O(\dout[59]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \dout[59]_i_12 
       (.I0(\dout[59]_i_26_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_31_n_0 ),
        .I3(\dout[63]_i_32_n_0 ),
        .I4(\dout[59]_i_27_n_0 ),
        .I5(b[3]),
        .O(\dout[59]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[59]_i_13 
       (.I0(\dout[59]_i_28_n_0 ),
        .I1(b[3]),
        .I2(\dout[59]_i_29_n_0 ),
        .O(\dout[59]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[59]_i_14 
       (.I0(\dout[63]_i_49_n_0 ),
        .I1(b[1]),
        .I2(\dout[63]_i_50_n_0 ),
        .O(\dout[59]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[59]_i_15 
       (.I0(\dout[63]_i_37_n_0 ),
        .I1(\dout[63]_i_38_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_39_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_40_n_0 ),
        .O(\dout[59]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[59]_i_16 
       (.I0(\dout[63]_i_41_n_0 ),
        .I1(\dout[63]_i_42_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_43_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_44_n_0 ),
        .O(\dout[59]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[59]_i_17 
       (.I0(\dout[63]_i_45_n_0 ),
        .I1(\dout[63]_i_46_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_47_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_48_n_0 ),
        .O(\dout[59]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[59]_i_18 
       (.I0(\dout[63]_i_64_n_0 ),
        .I1(b[1]),
        .I2(\dout[63]_i_65_n_0 ),
        .O(\dout[59]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[59]_i_19 
       (.I0(\dout[63]_i_52_n_0 ),
        .I1(\dout[63]_i_53_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_54_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_55_n_0 ),
        .O(\dout[59]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[59]_i_2 
       (.I0(\dout[59]_i_6_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_7_n_0 ),
        .I3(g0_b27__0_n_0),
        .O(\dout[59]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[59]_i_20 
       (.I0(\dout[63]_i_56_n_0 ),
        .I1(\dout[63]_i_57_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_58_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_59_n_0 ),
        .O(\dout[59]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[59]_i_21 
       (.I0(\dout[63]_i_60_n_0 ),
        .I1(\dout[63]_i_61_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_62_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_63_n_0 ),
        .O(\dout[59]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[59]_i_22 
       (.I0(\dout[63]_i_48_n_0 ),
        .I1(b[1]),
        .I2(\dout[63]_i_49_n_0 ),
        .O(\dout[59]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[59]_i_23 
       (.I0(\dout[63]_i_36_n_0 ),
        .I1(\dout[63]_i_37_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_38_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_39_n_0 ),
        .O(\dout[59]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[59]_i_24 
       (.I0(\dout[63]_i_40_n_0 ),
        .I1(\dout[63]_i_41_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_42_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_43_n_0 ),
        .O(\dout[59]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[59]_i_25 
       (.I0(\dout[63]_i_44_n_0 ),
        .I1(\dout[63]_i_45_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_46_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_47_n_0 ),
        .O(\dout[59]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[59]_i_26 
       (.I0(\dout[63]_i_63_n_0 ),
        .I1(b[1]),
        .I2(\dout[63]_i_64_n_0 ),
        .O(\dout[59]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[59]_i_27 
       (.I0(\dout[63]_i_53_n_0 ),
        .I1(b[1]),
        .I2(\dout[63]_i_54_n_0 ),
        .O(\dout[59]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[59]_i_28 
       (.I0(\dout[63]_i_55_n_0 ),
        .I1(\dout[63]_i_56_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_57_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_58_n_0 ),
        .O(\dout[59]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[59]_i_29 
       (.I0(\dout[63]_i_59_n_0 ),
        .I1(\dout[63]_i_60_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_61_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_62_n_0 ),
        .O(\dout[59]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[59]_i_3 
       (.I0(\dout[59]_i_8_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_9_n_0 ),
        .I3(g0_b26__0_n_0),
        .O(\dout[59]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[59]_i_4 
       (.I0(\dout[59]_i_10_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_11_n_0 ),
        .I3(g0_b25__0_n_0),
        .O(\dout[59]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[59]_i_5 
       (.I0(\dout[59]_i_12_n_0 ),
        .I1(b[4]),
        .I2(\dout[59]_i_13_n_0 ),
        .I3(g0_b24__0_n_0),
        .O(\dout[59]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[59]_i_6 
       (.I0(\dout[59]_i_14_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_16_n_0 ),
        .I3(b[3]),
        .I4(\dout[59]_i_15_n_0 ),
        .O(\dout[59]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[59]_i_7 
       (.I0(\dout[59]_i_16_n_0 ),
        .I1(b[3]),
        .I2(\dout[59]_i_17_n_0 ),
        .O(\dout[59]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[59]_i_8 
       (.I0(\dout[59]_i_18_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_21_n_0 ),
        .I3(b[3]),
        .I4(\dout[59]_i_19_n_0 ),
        .O(\dout[59]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[59]_i_9 
       (.I0(\dout[59]_i_20_n_0 ),
        .I1(b[3]),
        .I2(\dout[59]_i_21_n_0 ),
        .O(\dout[59]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \dout[63]_i_1 
       (.I0(i_cnt_reg[3]),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[0]),
        .I3(i_cnt_reg[1]),
        .I4(di_vld_IBUF),
        .O(\dout[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[63]_i_10 
       (.I0(\dout[63]_i_21_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_22_n_0 ),
        .I3(b[3]),
        .I4(\dout[63]_i_23_n_0 ),
        .O(\dout[63]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[63]_i_11 
       (.I0(\dout[63]_i_24_n_0 ),
        .I1(b[3]),
        .I2(\dout[63]_i_25_n_0 ),
        .O(\dout[63]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[63]_i_12 
       (.I0(\dout[63]_i_26_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_27_n_0 ),
        .I3(b[3]),
        .I4(\dout[63]_i_28_n_0 ),
        .O(\dout[63]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[63]_i_13 
       (.I0(\dout[63]_i_29_n_0 ),
        .I1(b[3]),
        .I2(\dout[63]_i_30_n_0 ),
        .O(\dout[63]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[63]_i_14 
       (.I0(\dout[63]_i_31_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_32_n_0 ),
        .I3(b[3]),
        .I4(\dout[63]_i_33_n_0 ),
        .O(\dout[63]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[63]_i_15 
       (.I0(\dout[63]_i_34_n_0 ),
        .I1(b[3]),
        .I2(\dout[63]_i_35_n_0 ),
        .O(\dout[63]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h47FF4700)) 
    \dout[63]_i_16 
       (.I0(a_reg[0]),
        .I1(b[0]),
        .I2(a_reg[1]),
        .I3(b[1]),
        .I4(\dout[63]_i_36_n_0 ),
        .O(\dout[63]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[63]_i_17 
       (.I0(\dout[63]_i_37_n_0 ),
        .I1(b[1]),
        .I2(\dout[63]_i_38_n_0 ),
        .O(\dout[63]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[63]_i_18 
       (.I0(\dout[63]_i_39_n_0 ),
        .I1(\dout[63]_i_40_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_41_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_42_n_0 ),
        .O(\dout[63]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[63]_i_19 
       (.I0(\dout[63]_i_43_n_0 ),
        .I1(\dout[63]_i_44_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_45_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_46_n_0 ),
        .O(\dout[63]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[63]_i_20 
       (.I0(\dout[63]_i_47_n_0 ),
        .I1(\dout[63]_i_48_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_49_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_50_n_0 ),
        .O(\dout[63]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6F60FFFF6F600000)) 
    \dout[63]_i_21 
       (.I0(b[31]),
        .I1(a_reg[31]),
        .I2(b[0]),
        .I3(a_reg[0]),
        .I4(b[1]),
        .I5(\dout[63]_i_51_n_0 ),
        .O(\dout[63]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[63]_i_22 
       (.I0(\dout[63]_i_52_n_0 ),
        .I1(b[1]),
        .I2(\dout[63]_i_53_n_0 ),
        .O(\dout[63]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[63]_i_23 
       (.I0(\dout[63]_i_54_n_0 ),
        .I1(\dout[63]_i_55_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_56_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_57_n_0 ),
        .O(\dout[63]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[63]_i_24 
       (.I0(\dout[63]_i_58_n_0 ),
        .I1(\dout[63]_i_59_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_60_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_61_n_0 ),
        .O(\dout[63]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[63]_i_25 
       (.I0(\dout[63]_i_62_n_0 ),
        .I1(\dout[63]_i_63_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_64_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_65_n_0 ),
        .O(\dout[63]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \dout[63]_i_26 
       (.I0(\dout[63]_i_50_n_0 ),
        .I1(b[1]),
        .I2(a_reg[0]),
        .I3(b[0]),
        .I4(a_reg[1]),
        .O(\dout[63]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[63]_i_27 
       (.I0(\dout[63]_i_36_n_0 ),
        .I1(b[1]),
        .I2(\dout[63]_i_37_n_0 ),
        .O(\dout[63]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[63]_i_28 
       (.I0(\dout[63]_i_38_n_0 ),
        .I1(\dout[63]_i_39_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_40_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_41_n_0 ),
        .O(\dout[63]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[63]_i_29 
       (.I0(\dout[63]_i_42_n_0 ),
        .I1(\dout[63]_i_43_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_44_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_45_n_0 ),
        .O(\dout[63]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dout[63]_i_3 
       (.I0(clr_IBUF),
        .O(\dout[63]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[63]_i_30 
       (.I0(\dout[63]_i_46_n_0 ),
        .I1(\dout[63]_i_47_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_48_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_49_n_0 ),
        .O(\dout[63]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \dout[63]_i_31 
       (.I0(\dout[63]_i_65_n_0 ),
        .I1(b[1]),
        .I2(b[31]),
        .I3(a_reg[31]),
        .I4(b[0]),
        .I5(a_reg[0]),
        .O(\dout[63]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h4774FFFF47740000)) 
    \dout[63]_i_32 
       (.I0(a_reg[1]),
        .I1(b[0]),
        .I2(b[2]),
        .I3(a_reg[2]),
        .I4(b[1]),
        .I5(\dout[63]_i_52_n_0 ),
        .O(\dout[63]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[63]_i_33 
       (.I0(\dout[63]_i_53_n_0 ),
        .I1(\dout[63]_i_54_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_55_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_56_n_0 ),
        .O(\dout[63]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[63]_i_34 
       (.I0(\dout[63]_i_57_n_0 ),
        .I1(\dout[63]_i_58_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_59_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_60_n_0 ),
        .O(\dout[63]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[63]_i_35 
       (.I0(\dout[63]_i_61_n_0 ),
        .I1(\dout[63]_i_62_n_0 ),
        .I2(b[2]),
        .I3(\dout[63]_i_63_n_0 ),
        .I4(b[1]),
        .I5(\dout[63]_i_64_n_0 ),
        .O(\dout[63]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_36 
       (.I0(b[2]),
        .I1(a_reg[2]),
        .I2(b[0]),
        .I3(b[3]),
        .I4(a_reg[3]),
        .O(\dout[63]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_37 
       (.I0(b[4]),
        .I1(a_reg[4]),
        .I2(b[0]),
        .I3(b[5]),
        .I4(a_reg[5]),
        .O(\dout[63]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_38 
       (.I0(b[6]),
        .I1(a_reg[6]),
        .I2(b[0]),
        .I3(b[7]),
        .I4(a_reg[7]),
        .O(\dout[63]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_39 
       (.I0(b[8]),
        .I1(a_reg[8]),
        .I2(b[0]),
        .I3(b[9]),
        .I4(a_reg[9]),
        .O(\dout[63]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[63]_i_4 
       (.I0(\dout[63]_i_8_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_9_n_0 ),
        .I3(g0_b31__0_n_0),
        .O(\dout[63]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_40 
       (.I0(b[10]),
        .I1(a_reg[10]),
        .I2(b[0]),
        .I3(b[11]),
        .I4(a_reg[11]),
        .O(\dout[63]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_41 
       (.I0(b[12]),
        .I1(a_reg[12]),
        .I2(b[0]),
        .I3(b[13]),
        .I4(a_reg[13]),
        .O(\dout[63]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_42 
       (.I0(b[14]),
        .I1(a_reg[14]),
        .I2(b[0]),
        .I3(b[15]),
        .I4(a_reg[15]),
        .O(\dout[63]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_43 
       (.I0(b[16]),
        .I1(a_reg[16]),
        .I2(b[0]),
        .I3(b[17]),
        .I4(a_reg[17]),
        .O(\dout[63]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_44 
       (.I0(b[18]),
        .I1(a_reg[18]),
        .I2(b[0]),
        .I3(b[19]),
        .I4(a_reg[19]),
        .O(\dout[63]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_45 
       (.I0(b[20]),
        .I1(a_reg[20]),
        .I2(b[0]),
        .I3(b[21]),
        .I4(a_reg[21]),
        .O(\dout[63]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_46 
       (.I0(b[22]),
        .I1(a_reg[22]),
        .I2(b[0]),
        .I3(b[23]),
        .I4(a_reg[23]),
        .O(\dout[63]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_47 
       (.I0(b[24]),
        .I1(a_reg[24]),
        .I2(b[0]),
        .I3(b[25]),
        .I4(a_reg[25]),
        .O(\dout[63]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_48 
       (.I0(b[26]),
        .I1(a_reg[26]),
        .I2(b[0]),
        .I3(b[27]),
        .I4(a_reg[27]),
        .O(\dout[63]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_49 
       (.I0(b[28]),
        .I1(a_reg[28]),
        .I2(b[0]),
        .I3(b[29]),
        .I4(a_reg[29]),
        .O(\dout[63]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[63]_i_5 
       (.I0(\dout[63]_i_10_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_11_n_0 ),
        .I3(g0_b30__0_n_0),
        .O(\dout[63]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_50 
       (.I0(b[30]),
        .I1(a_reg[30]),
        .I2(b[0]),
        .I3(b[31]),
        .I4(a_reg[31]),
        .O(\dout[63]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_51 
       (.I0(b[1]),
        .I1(a_reg[1]),
        .I2(b[0]),
        .I3(b[2]),
        .I4(a_reg[2]),
        .O(\dout[63]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_52 
       (.I0(b[3]),
        .I1(a_reg[3]),
        .I2(b[0]),
        .I3(b[4]),
        .I4(a_reg[4]),
        .O(\dout[63]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_53 
       (.I0(b[5]),
        .I1(a_reg[5]),
        .I2(b[0]),
        .I3(b[6]),
        .I4(a_reg[6]),
        .O(\dout[63]_i_53_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_54 
       (.I0(b[7]),
        .I1(a_reg[7]),
        .I2(b[0]),
        .I3(b[8]),
        .I4(a_reg[8]),
        .O(\dout[63]_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_55 
       (.I0(b[9]),
        .I1(a_reg[9]),
        .I2(b[0]),
        .I3(b[10]),
        .I4(a_reg[10]),
        .O(\dout[63]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_56 
       (.I0(b[11]),
        .I1(a_reg[11]),
        .I2(b[0]),
        .I3(b[12]),
        .I4(a_reg[12]),
        .O(\dout[63]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_57 
       (.I0(b[13]),
        .I1(a_reg[13]),
        .I2(b[0]),
        .I3(b[14]),
        .I4(a_reg[14]),
        .O(\dout[63]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_58 
       (.I0(b[15]),
        .I1(a_reg[15]),
        .I2(b[0]),
        .I3(b[16]),
        .I4(a_reg[16]),
        .O(\dout[63]_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_59 
       (.I0(b[17]),
        .I1(a_reg[17]),
        .I2(b[0]),
        .I3(b[18]),
        .I4(a_reg[18]),
        .O(\dout[63]_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[63]_i_6 
       (.I0(\dout[63]_i_12_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_13_n_0 ),
        .I3(g0_b29__0_n_0),
        .O(\dout[63]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_60 
       (.I0(b[19]),
        .I1(a_reg[19]),
        .I2(b[0]),
        .I3(b[20]),
        .I4(a_reg[20]),
        .O(\dout[63]_i_60_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_61 
       (.I0(b[21]),
        .I1(a_reg[21]),
        .I2(b[0]),
        .I3(b[22]),
        .I4(a_reg[22]),
        .O(\dout[63]_i_61_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_62 
       (.I0(b[23]),
        .I1(a_reg[23]),
        .I2(b[0]),
        .I3(b[24]),
        .I4(a_reg[24]),
        .O(\dout[63]_i_62_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_63 
       (.I0(b[25]),
        .I1(a_reg[25]),
        .I2(b[0]),
        .I3(b[26]),
        .I4(a_reg[26]),
        .O(\dout[63]_i_63_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_64 
       (.I0(b[27]),
        .I1(a_reg[27]),
        .I2(b[0]),
        .I3(b[28]),
        .I4(a_reg[28]),
        .O(\dout[63]_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dout[63]_i_65 
       (.I0(b[29]),
        .I1(a_reg[29]),
        .I2(b[0]),
        .I3(b[30]),
        .I4(a_reg[30]),
        .O(\dout[63]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \dout[63]_i_7 
       (.I0(\dout[63]_i_14_n_0 ),
        .I1(b[4]),
        .I2(\dout[63]_i_15_n_0 ),
        .I3(g0_b28__0_n_0),
        .O(\dout[63]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[63]_i_8 
       (.I0(\dout[63]_i_16_n_0 ),
        .I1(b[2]),
        .I2(\dout[63]_i_17_n_0 ),
        .I3(b[3]),
        .I4(\dout[63]_i_18_n_0 ),
        .O(\dout[63]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[63]_i_9 
       (.I0(\dout[63]_i_19_n_0 ),
        .I1(b[3]),
        .I2(\dout[63]_i_20_n_0 ),
        .O(\dout[63]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[7]_i_2 
       (.I0(b_rot[7]),
        .I1(g0_b7_n_0),
        .O(\dout[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[7]_i_3 
       (.I0(b_rot[5]),
        .I1(g0_b5_n_0),
        .O(\dout[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dout[7]_i_4 
       (.I0(b_rot[4]),
        .I1(g0_b4_n_0),
        .O(\dout[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[7]_i_5 
       (.I0(\dout[31]_i_11_n_0 ),
        .I1(\dout[31]_i_12_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[31]_i_13_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[31]_i_10_n_0 ),
        .O(b_rot[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[7]_i_6 
       (.I0(\dout[31]_i_15_n_0 ),
        .I1(\dout[31]_i_16_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[31]_i_17_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[31]_i_14_n_0 ),
        .O(b_rot[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[7]_i_7 
       (.I0(\dout[31]_i_19_n_0 ),
        .I1(\dout[31]_i_20_n_0 ),
        .I2(plusOp1_out[4]),
        .I3(\dout[31]_i_21_n_0 ),
        .I4(plusOp1_out[3]),
        .I5(\dout[31]_i_18_n_0 ),
        .O(b_rot[4]));
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
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[0]),
        .Q(dout_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[10]),
        .Q(dout_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[11]),
        .Q(dout_OBUF[11]));
  CARRY4 \dout_reg[11]_i_1 
       (.CI(\dout_reg[7]_i_1_n_0 ),
        .CO({\dout_reg[11]_i_1_n_0 ,\NLW_dout_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b11_n_0,g0_b10_n_0,g0_b9_n_0,g0_b8_n_0}),
        .O(plusOp[11:8]),
        .S({\dout[11]_i_2_n_0 ,\dout[11]_i_3_n_0 ,\dout[11]_i_4_n_0 ,\dout[11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[12]),
        .Q(dout_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[13]),
        .Q(dout_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[14]),
        .Q(dout_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[15]),
        .Q(dout_OBUF[15]));
  CARRY4 \dout_reg[15]_i_1 
       (.CI(\dout_reg[11]_i_1_n_0 ),
        .CO({\dout_reg[15]_i_1_n_0 ,\NLW_dout_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b15_n_0,g0_b14_n_0,g0_b13_n_0,g0_b12_n_0}),
        .O(plusOp[15:12]),
        .S({\dout[15]_i_2_n_0 ,\dout[15]_i_3_n_0 ,\dout[15]_i_4_n_0 ,\dout[15]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[16]),
        .Q(dout_OBUF[16]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[17]),
        .Q(dout_OBUF[17]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[18]),
        .Q(dout_OBUF[18]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[19]),
        .Q(dout_OBUF[19]));
  CARRY4 \dout_reg[19]_i_1 
       (.CI(\dout_reg[15]_i_1_n_0 ),
        .CO({\dout_reg[19]_i_1_n_0 ,\NLW_dout_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b19_n_0,g0_b18_n_0,g0_b17_n_0,g0_b16_n_0}),
        .O(plusOp[19:16]),
        .S({\dout[19]_i_2_n_0 ,\dout[19]_i_3_n_0 ,\dout[19]_i_4_n_0 ,\dout[19]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[1]),
        .Q(dout_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[20]),
        .Q(dout_OBUF[20]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[21]),
        .Q(dout_OBUF[21]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[22]),
        .Q(dout_OBUF[22]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[23]),
        .Q(dout_OBUF[23]));
  CARRY4 \dout_reg[23]_i_1 
       (.CI(\dout_reg[19]_i_1_n_0 ),
        .CO({\dout_reg[23]_i_1_n_0 ,\NLW_dout_reg[23]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b23_n_0,g0_b22_n_0,g0_b21_n_0,g0_b20_n_0}),
        .O(plusOp[23:20]),
        .S({\dout[23]_i_2_n_0 ,\dout[23]_i_3_n_0 ,\dout[23]_i_4_n_0 ,\dout[23]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[24]),
        .Q(dout_OBUF[24]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[25]),
        .Q(dout_OBUF[25]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[26]),
        .Q(dout_OBUF[26]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[27]),
        .Q(dout_OBUF[27]));
  CARRY4 \dout_reg[27]_i_1 
       (.CI(\dout_reg[23]_i_1_n_0 ),
        .CO({\dout_reg[27]_i_1_n_0 ,\NLW_dout_reg[27]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b27_n_0,g0_b26_n_0,g0_b25_n_0,g0_b24_n_0}),
        .O(plusOp[27:24]),
        .S({\dout[27]_i_2_n_0 ,\dout[27]_i_3_n_0 ,\dout[27]_i_4_n_0 ,\dout[27]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[28]),
        .Q(dout_OBUF[28]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[29]),
        .Q(dout_OBUF[29]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[2]),
        .Q(dout_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[30]),
        .Q(dout_OBUF[30]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[31]),
        .Q(dout_OBUF[31]));
  CARRY4 \dout_reg[31]_i_1 
       (.CI(\dout_reg[27]_i_1_n_0 ),
        .CO(\NLW_dout_reg[31]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,g0_b30_n_0,g0_b29_n_0,g0_b28_n_0}),
        .O(plusOp[31:28]),
        .S({\dout[31]_i_2_n_0 ,\dout[31]_i_3_n_0 ,\dout[31]_i_4_n_0 ,\dout[31]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[0]),
        .Q(dout_OBUF[32]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[1]),
        .Q(dout_OBUF[33]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[2]),
        .Q(dout_OBUF[34]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[3]),
        .Q(dout_OBUF[35]));
  CARRY4 \dout_reg[35]_i_1 
       (.CI(1'b0),
        .CO({\dout_reg[35]_i_1_n_0 ,\NLW_dout_reg[35]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b3_n_0,g0_b2__0_n_0,g0_b1__0_n_0,g0_b0__0_n_0}),
        .O(plusOp1_out[3:0]),
        .S({\dout[35]_i_2_n_0 ,\dout[35]_i_3_n_0 ,\dout[35]_i_4_n_0 ,\dout[35]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[4]),
        .Q(dout_OBUF[36]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[5]),
        .Q(dout_OBUF[37]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[6]),
        .Q(dout_OBUF[38]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[7]),
        .Q(dout_OBUF[39]));
  CARRY4 \dout_reg[39]_i_1 
       (.CI(\dout_reg[35]_i_1_n_0 ),
        .CO({\dout_reg[39]_i_1_n_0 ,\NLW_dout_reg[39]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b7__0_n_0,g0_b6_n_0,g0_b5__0_n_0,g0_b4__0_n_0}),
        .O(plusOp1_out[7:4]),
        .S({\dout[39]_i_2_n_0 ,\dout[39]_i_3_n_0 ,\dout[39]_i_4_n_0 ,\dout[39]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[3]),
        .Q(dout_OBUF[3]));
  CARRY4 \dout_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\dout_reg[3]_i_1_n_0 ,\NLW_dout_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b3_rep_n_0,g0_b2_n_0,g0_b1_n_0,g0_b0_n_0}),
        .O(plusOp[3:0]),
        .S({g0_b3__1_n_0,\dout[3]_i_2_n_0 ,\dout[3]_i_3_n_0 ,\dout[3]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[8]),
        .Q(dout_OBUF[40]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[9]),
        .Q(dout_OBUF[41]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[10]),
        .Q(dout_OBUF[42]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[11]),
        .Q(dout_OBUF[43]));
  CARRY4 \dout_reg[43]_i_1 
       (.CI(\dout_reg[39]_i_1_n_0 ),
        .CO({\dout_reg[43]_i_1_n_0 ,\NLW_dout_reg[43]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b11__0_n_0,g0_b10__0_n_0,g0_b9__0_n_0,g0_b8__0_n_0}),
        .O(plusOp1_out[11:8]),
        .S({\dout[43]_i_2_n_0 ,\dout[43]_i_3_n_0 ,\dout[43]_i_4_n_0 ,\dout[43]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[12]),
        .Q(dout_OBUF[44]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[13]),
        .Q(dout_OBUF[45]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[14]),
        .Q(dout_OBUF[46]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[15]),
        .Q(dout_OBUF[47]));
  CARRY4 \dout_reg[47]_i_1 
       (.CI(\dout_reg[43]_i_1_n_0 ),
        .CO({\dout_reg[47]_i_1_n_0 ,\NLW_dout_reg[47]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b15__0_n_0,g0_b14__0_n_0,g0_b13__0_n_0,g0_b12__0_n_0}),
        .O(plusOp1_out[15:12]),
        .S({\dout[47]_i_2_n_0 ,\dout[47]_i_3_n_0 ,\dout[47]_i_4_n_0 ,\dout[47]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[16]),
        .Q(dout_OBUF[48]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[17]),
        .Q(dout_OBUF[49]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[4]),
        .Q(dout_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[18]),
        .Q(dout_OBUF[50]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[19]),
        .Q(dout_OBUF[51]));
  CARRY4 \dout_reg[51]_i_1 
       (.CI(\dout_reg[47]_i_1_n_0 ),
        .CO({\dout_reg[51]_i_1_n_0 ,\NLW_dout_reg[51]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b19__0_n_0,g0_b18__0_n_0,g0_b17__0_n_0,g0_b16__0_n_0}),
        .O(plusOp1_out[19:16]),
        .S({\dout[51]_i_2_n_0 ,\dout[51]_i_3_n_0 ,\dout[51]_i_4_n_0 ,\dout[51]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[20]),
        .Q(dout_OBUF[52]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[21]),
        .Q(dout_OBUF[53]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[22]),
        .Q(dout_OBUF[54]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[23]),
        .Q(dout_OBUF[55]));
  CARRY4 \dout_reg[55]_i_1 
       (.CI(\dout_reg[51]_i_1_n_0 ),
        .CO({\dout_reg[55]_i_1_n_0 ,\NLW_dout_reg[55]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b23__0_n_0,g0_b22__0_n_0,g0_b21__0_n_0,g0_b20__0_n_0}),
        .O(plusOp1_out[23:20]),
        .S({\dout[55]_i_2_n_0 ,\dout[55]_i_3_n_0 ,\dout[55]_i_4_n_0 ,\dout[55]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[24]),
        .Q(dout_OBUF[56]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[25]),
        .Q(dout_OBUF[57]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[26]),
        .Q(dout_OBUF[58]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[27]),
        .Q(dout_OBUF[59]));
  CARRY4 \dout_reg[59]_i_1 
       (.CI(\dout_reg[55]_i_1_n_0 ),
        .CO({\dout_reg[59]_i_1_n_0 ,\NLW_dout_reg[59]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b27__0_n_0,g0_b26__0_n_0,g0_b25__0_n_0,g0_b24__0_n_0}),
        .O(plusOp1_out[27:24]),
        .S({\dout[59]_i_2_n_0 ,\dout[59]_i_3_n_0 ,\dout[59]_i_4_n_0 ,\dout[59]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[5]),
        .Q(dout_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[28]),
        .Q(dout_OBUF[60]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[29]),
        .Q(dout_OBUF[61]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[30]),
        .Q(dout_OBUF[62]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp1_out[31]),
        .Q(dout_OBUF[63]));
  CARRY4 \dout_reg[63]_i_2 
       (.CI(\dout_reg[59]_i_1_n_0 ),
        .CO(\NLW_dout_reg[63]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,g0_b30__0_n_0,g0_b29__0_n_0,g0_b28__0_n_0}),
        .O(plusOp1_out[31:28]),
        .S({\dout[63]_i_4_n_0 ,\dout[63]_i_5_n_0 ,\dout[63]_i_6_n_0 ,\dout[63]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[6]),
        .Q(dout_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[7]),
        .Q(dout_OBUF[7]));
  CARRY4 \dout_reg[7]_i_1 
       (.CI(\dout_reg[3]_i_1_n_0 ),
        .CO({\dout_reg[7]_i_1_n_0 ,\NLW_dout_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b7_n_0,g0_b6_rep_n_0,g0_b5_n_0,g0_b4_n_0}),
        .O(plusOp[7:4]),
        .S({\dout[7]_i_2_n_0 ,g0_b6__1_n_0,\dout[7]_i_3_n_0 ,\dout[7]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[8]),
        .Q(dout_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \dout_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\dout[63]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(plusOp[9]),
        .Q(dout_OBUF[9]));
  LUT4 #(
    .INIT(16'h0776)) 
    g0_b0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b0_n_0));
  LUT4 #(
    .INIT(16'h10F2)) 
    g0_b0__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b0__0_n_0));
  LUT4 #(
    .INIT(16'h068C)) 
    g0_b1
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b1_n_0));
  LUT4 #(
    .INIT(16'h02C8)) 
    g0_b10
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b10_n_0));
  LUT4 #(
    .INIT(16'h10D8)) 
    g0_b10__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b10__0_n_0));
  LUT4 #(
    .INIT(16'h0238)) 
    g0_b11
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b11_n_0));
  LUT4 #(
    .INIT(16'h0EE6)) 
    g0_b11__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b11__0_n_0));
  LUT4 #(
    .INIT(16'h0230)) 
    g0_b12
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b12_n_0));
  LUT4 #(
    .INIT(16'h118C)) 
    g0_b12__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b12__0_n_0));
  LUT4 #(
    .INIT(16'h1C5A)) 
    g0_b13
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b13_n_0));
  LUT4 #(
    .INIT(16'h0966)) 
    g0_b13__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b13__0_n_0));
  LUT4 #(
    .INIT(16'h112A)) 
    g0_b14
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b14_n_0));
  LUT4 #(
    .INIT(16'h0C22)) 
    g0_b14__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b14__0_n_0));
  LUT4 #(
    .INIT(16'h01EC)) 
    g0_b15
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b15_n_0));
  LUT4 #(
    .INIT(16'h0602)) 
    g0_b15__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b15__0_n_0));
  LUT4 #(
    .INIT(16'h094C)) 
    g0_b16
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b16_n_0));
  LUT4 #(
    .INIT(16'h0E70)) 
    g0_b16__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b16__0_n_0));
  LUT4 #(
    .INIT(16'h07A4)) 
    g0_b17
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b17_n_0));
  LUT4 #(
    .INIT(16'h0E28)) 
    g0_b17__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b17__0_n_0));
  LUT4 #(
    .INIT(16'h1582)) 
    g0_b18
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b18_n_0));
  LUT4 #(
    .INIT(16'h1E38)) 
    g0_b18__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b18__0_n_0));
  LUT4 #(
    .INIT(16'h0BF6)) 
    g0_b19
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b19_n_0));
  LUT4 #(
    .INIT(16'h144E)) 
    g0_b19__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b19__0_n_0));
  LUT4 #(
    .INIT(16'h0D24)) 
    g0_b1__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b1__0_n_0));
  LUT4 #(
    .INIT(16'h0C72)) 
    g0_b2
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b2_n_0));
  LUT4 #(
    .INIT(16'h0CE0)) 
    g0_b20
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b20_n_0));
  LUT4 #(
    .INIT(16'h0CCE)) 
    g0_b20__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b20__0_n_0));
  LUT4 #(
    .INIT(16'h0138)) 
    g0_b21
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b21_n_0));
  LUT4 #(
    .INIT(16'h067E)) 
    g0_b21__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b21__0_n_0));
  LUT4 #(
    .INIT(16'h0184)) 
    g0_b22
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b22_n_0));
  LUT4 #(
    .INIT(16'h1946)) 
    g0_b22__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b22__0_n_0));
  LUT4 #(
    .INIT(16'h01D0)) 
    g0_b23
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b23_n_0));
  LUT4 #(
    .INIT(16'h1F86)) 
    g0_b23__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b23__0_n_0));
  LUT4 #(
    .INIT(16'h1B70)) 
    g0_b24
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b24_n_0));
  LUT4 #(
    .INIT(16'h06D8)) 
    g0_b24__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b24__0_n_0));
  LUT4 #(
    .INIT(16'h0FCA)) 
    g0_b25
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b25_n_0));
  LUT4 #(
    .INIT(16'h11C2)) 
    g0_b25__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b25__0_n_0));
  LUT4 #(
    .INIT(16'h15CA)) 
    g0_b26
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b26_n_0));
  LUT4 #(
    .INIT(16'h15A2)) 
    g0_b26__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b26__0_n_0));
  LUT4 #(
    .INIT(16'h0684)) 
    g0_b27
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b27_n_0));
  LUT4 #(
    .INIT(16'h0440)) 
    g0_b27__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b27__0_n_0));
  LUT4 #(
    .INIT(16'h02B8)) 
    g0_b28
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b28_n_0));
  LUT4 #(
    .INIT(16'h193C)) 
    g0_b28__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b28__0_n_0));
  LUT4 #(
    .INIT(16'h176C)) 
    g0_b29
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b29_n_0));
  LUT4 #(
    .INIT(16'h1B94)) 
    g0_b29__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b29__0_n_0));
  LUT4 #(
    .INIT(16'h051A)) 
    g0_b2__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b2__0_n_0));
  LUT4 #(
    .INIT(16'h0AF4)) 
    g0_b3
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b3_n_0));
  LUT4 #(
    .INIT(16'h18AA)) 
    g0_b30
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b30_n_0));
  LUT4 #(
    .INIT(16'h166E)) 
    g0_b30__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b30__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0588)) 
    g0_b31
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h10A0)) 
    g0_b31__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b31__0_n_0));
  LUT4 #(
    .INIT(16'h001C)) 
    g0_b3__0
       (.I0(i_cnt_reg[1]),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[3]),
        .I3(di_vld_IBUF),
        .O(g0_b3__0_n_0));
  LUT4 #(
    .INIT(16'hE31C)) 
    g0_b3__1
       (.I0(i_cnt_reg[1]),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[3]),
        .I3(b_rot[3]),
        .O(g0_b3__1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b3__1_i_1
       (.I0(g0_b3__1_i_2_n_0),
        .I1(g0_b3__1_i_3_n_0),
        .I2(plusOp1_out[4]),
        .I3(g0_b3__1_i_4_n_0),
        .I4(plusOp1_out[3]),
        .I5(g0_b3__1_i_5_n_0),
        .O(b_rot[3]));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_10
       (.I0(plusOp1_out[12]),
        .I1(b[12]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[13]),
        .I4(b[13]),
        .O(g0_b3__1_i_10_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_11
       (.I0(plusOp1_out[14]),
        .I1(b[14]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[15]),
        .I4(b[15]),
        .O(g0_b3__1_i_11_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_12
       (.I0(plusOp1_out[16]),
        .I1(b[16]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[17]),
        .I4(b[17]),
        .O(g0_b3__1_i_12_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_13
       (.I0(plusOp1_out[18]),
        .I1(b[18]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[19]),
        .I4(b[19]),
        .O(g0_b3__1_i_13_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_14
       (.I0(plusOp1_out[20]),
        .I1(b[20]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[21]),
        .I4(b[21]),
        .O(g0_b3__1_i_14_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_15
       (.I0(plusOp1_out[22]),
        .I1(b[22]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[23]),
        .I4(b[23]),
        .O(g0_b3__1_i_15_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_16
       (.I0(plusOp1_out[24]),
        .I1(b[24]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[25]),
        .I4(b[25]),
        .O(g0_b3__1_i_16_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_17
       (.I0(plusOp1_out[26]),
        .I1(b[26]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[27]),
        .I4(b[27]),
        .O(g0_b3__1_i_17_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_18
       (.I0(plusOp1_out[28]),
        .I1(b[28]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[29]),
        .I4(b[29]),
        .O(g0_b3__1_i_18_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_19
       (.I0(plusOp1_out[30]),
        .I1(b[30]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[31]),
        .I4(b[31]),
        .O(g0_b3__1_i_19_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b3__1_i_2
       (.I0(g0_b3__1_i_6_n_0),
        .I1(g0_b3__1_i_7_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_8_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_9_n_0),
        .O(g0_b3__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h4774)) 
    g0_b3__1_i_20
       (.I0(b[0]),
        .I1(plusOp1_out[0]),
        .I2(plusOp1_out[1]),
        .I3(b[1]),
        .O(g0_b3__1_i_20_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_21
       (.I0(plusOp1_out[2]),
        .I1(b[2]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[3]),
        .I4(b[3]),
        .O(g0_b3__1_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b3__1_i_3
       (.I0(g0_b3__1_i_10_n_0),
        .I1(g0_b3__1_i_11_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_12_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_13_n_0),
        .O(g0_b3__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b3__1_i_4
       (.I0(g0_b3__1_i_14_n_0),
        .I1(g0_b3__1_i_15_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_16_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_17_n_0),
        .O(g0_b3__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b3__1_i_5
       (.I0(g0_b3__1_i_18_n_0),
        .I1(g0_b3__1_i_19_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_20_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_21_n_0),
        .O(g0_b3__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_6
       (.I0(plusOp1_out[4]),
        .I1(b[4]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[5]),
        .I4(b[5]),
        .O(g0_b3__1_i_6_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_7
       (.I0(plusOp1_out[6]),
        .I1(b[6]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[7]),
        .I4(b[7]),
        .O(g0_b3__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_8
       (.I0(plusOp1_out[8]),
        .I1(b[8]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[9]),
        .I4(b[9]),
        .O(g0_b3__1_i_8_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_9
       (.I0(plusOp1_out[10]),
        .I1(b[10]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[11]),
        .I4(b[11]),
        .O(g0_b3__1_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFE31C0000E31C)) 
    g0_b3__2
       (.I0(i_cnt_reg[1]),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[3]),
        .I3(b_rot[3]),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[3]),
        .O(g0_b3__2_n_0));
  LUT3 #(
    .INIT(8'h1C)) 
    g0_b3_rep
       (.I0(i_cnt_reg[1]),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[3]),
        .O(g0_b3_rep_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    g0_b4
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b4_n_0));
  LUT4 #(
    .INIT(16'h1758)) 
    g0_b4__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b4__0_n_0));
  LUT4 #(
    .INIT(16'h0628)) 
    g0_b5
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b5_n_0));
  LUT4 #(
    .INIT(16'h1620)) 
    g0_b5__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b5__0_n_0));
  LUT4 #(
    .INIT(16'h04BA)) 
    g0_b6
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b6_n_0));
  LUT4 #(
    .INIT(16'h0014)) 
    g0_b6__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[3]),
        .I3(di_vld_IBUF),
        .O(g0_b6__0_n_0));
  LUT4 #(
    .INIT(16'hEB14)) 
    g0_b6__1
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[3]),
        .I3(b_rot[6]),
        .O(g0_b6__1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b6__1_i_1
       (.I0(g0_b6__1_i_2_n_0),
        .I1(g0_b6__1_i_3_n_0),
        .I2(plusOp1_out[4]),
        .I3(g0_b6__1_i_4_n_0),
        .I4(plusOp1_out[3]),
        .I5(g0_b6__1_i_5_n_0),
        .O(b_rot[6]));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_10
       (.I0(plusOp1_out[15]),
        .I1(b[15]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[16]),
        .I4(b[16]),
        .O(g0_b6__1_i_10_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_11
       (.I0(plusOp1_out[17]),
        .I1(b[17]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[18]),
        .I4(b[18]),
        .O(g0_b6__1_i_11_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_12
       (.I0(plusOp1_out[19]),
        .I1(b[19]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[20]),
        .I4(b[20]),
        .O(g0_b6__1_i_12_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_13
       (.I0(plusOp1_out[21]),
        .I1(b[21]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[22]),
        .I4(b[22]),
        .O(g0_b6__1_i_13_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_14
       (.I0(plusOp1_out[23]),
        .I1(b[23]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[24]),
        .I4(b[24]),
        .O(g0_b6__1_i_14_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_15
       (.I0(plusOp1_out[25]),
        .I1(b[25]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[26]),
        .I4(b[26]),
        .O(g0_b6__1_i_15_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_16
       (.I0(plusOp1_out[27]),
        .I1(b[27]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[28]),
        .I4(b[28]),
        .O(g0_b6__1_i_16_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_17
       (.I0(plusOp1_out[29]),
        .I1(b[29]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[30]),
        .I4(b[30]),
        .O(g0_b6__1_i_17_n_0));
  LUT4 #(
    .INIT(16'h6F60)) 
    g0_b6__1_i_18
       (.I0(plusOp1_out[31]),
        .I1(b[31]),
        .I2(plusOp1_out[0]),
        .I3(b[0]),
        .O(g0_b6__1_i_18_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_19
       (.I0(plusOp1_out[1]),
        .I1(b[1]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[2]),
        .I4(b[2]),
        .O(g0_b6__1_i_19_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b6__1_i_2
       (.I0(g0_b6__1_i_6_n_0),
        .I1(g0_b6__1_i_7_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_8_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_9_n_0),
        .O(g0_b6__1_i_2_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_20
       (.I0(plusOp1_out[3]),
        .I1(b[3]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[4]),
        .I4(b[4]),
        .O(g0_b6__1_i_20_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_21
       (.I0(plusOp1_out[5]),
        .I1(b[5]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[6]),
        .I4(b[6]),
        .O(g0_b6__1_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b6__1_i_3
       (.I0(g0_b6__1_i_10_n_0),
        .I1(g0_b6__1_i_11_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_12_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_13_n_0),
        .O(g0_b6__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b6__1_i_4
       (.I0(g0_b6__1_i_14_n_0),
        .I1(g0_b6__1_i_15_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_16_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_17_n_0),
        .O(g0_b6__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b6__1_i_5
       (.I0(g0_b6__1_i_18_n_0),
        .I1(g0_b6__1_i_19_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_20_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_21_n_0),
        .O(g0_b6__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_6
       (.I0(plusOp1_out[7]),
        .I1(b[7]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[8]),
        .I4(b[8]),
        .O(g0_b6__1_i_6_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_7
       (.I0(plusOp1_out[9]),
        .I1(b[9]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[10]),
        .I4(b[10]),
        .O(g0_b6__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_8
       (.I0(plusOp1_out[11]),
        .I1(b[11]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[12]),
        .I4(b[12]),
        .O(g0_b6__1_i_8_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_9
       (.I0(plusOp1_out[13]),
        .I1(b[13]),
        .I2(plusOp1_out[0]),
        .I3(plusOp1_out[14]),
        .I4(b[14]),
        .O(g0_b6__1_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFEB140000EB14)) 
    g0_b6__2
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[3]),
        .I3(b_rot[6]),
        .I4(di_vld_IBUF),
        .I5(din_IBUF[6]),
        .O(g0_b6__2_n_0));
  LUT3 #(
    .INIT(8'h14)) 
    g0_b6_rep
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[3]),
        .O(g0_b6_rep_n_0));
  LUT4 #(
    .INIT(16'h1042)) 
    g0_b7
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b7_n_0));
  LUT4 #(
    .INIT(16'h0346)) 
    g0_b7__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b7__0_n_0));
  LUT4 #(
    .INIT(16'h1E8C)) 
    g0_b8
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b8_n_0));
  LUT4 #(
    .INIT(16'h0B44)) 
    g0_b8__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b8__0_n_0));
  LUT4 #(
    .INIT(16'h1994)) 
    g0_b9
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b9_n_0));
  LUT4 #(
    .INIT(16'h0E54)) 
    g0_b9__0
       (.I0(i_cnt_reg[0]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[2]),
        .I3(i_cnt_reg[3]),
        .O(g0_b9__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \i_cnt[0]_i_1 
       (.I0(di_vld_IBUF),
        .I1(i_cnt_reg[0]),
        .O(\i_cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \i_cnt[1]_i_1 
       (.I0(i_cnt_reg[1]),
        .I1(i_cnt_reg[0]),
        .I2(di_vld_IBUF),
        .O(\i_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \i_cnt[2]_i_1 
       (.I0(i_cnt_reg[2]),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[0]),
        .I3(di_vld_IBUF),
        .O(\i_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \i_cnt[3]_i_1 
       (.I0(di_vld_IBUF),
        .I1(i_cnt_reg[1]),
        .I2(i_cnt_reg[0]),
        .I3(i_cnt_reg[2]),
        .I4(i_cnt_reg[3]),
        .O(\i_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \i_cnt[3]_i_2 
       (.I0(i_cnt_reg[3]),
        .I1(i_cnt_reg[2]),
        .I2(i_cnt_reg[0]),
        .I3(i_cnt_reg[1]),
        .I4(di_vld_IBUF),
        .O(\i_cnt[3]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \i_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .D(\i_cnt[0]_i_1_n_0 ),
        .PRE(\dout[63]_i_3_n_0 ),
        .Q(i_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\i_cnt[1]_i_1_n_0 ),
        .Q(i_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\i_cnt[2]_i_1_n_0 ),
        .Q(i_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\dout[63]_i_3_n_0 ),
        .D(\i_cnt[3]_i_2_n_0 ),
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
