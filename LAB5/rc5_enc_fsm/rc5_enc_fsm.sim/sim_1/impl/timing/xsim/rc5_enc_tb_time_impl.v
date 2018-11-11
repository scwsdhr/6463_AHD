// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Nov  4 20:22:46 2018
// Host        : DESKTOP-65OAGH3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/shenc/OneDrive -
//               nyu.edu/6463_AHD/LAB5/rc5_enc_fsm/rc5_enc_fsm.sim/sim_1/impl/timing/xsim/rc5_enc_tb_time_impl.v}
// Design      : rc5_enc_fpga
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Hex2LED
   (disp_val_OBUF,
    Q);
  output [6:0]disp_val_OBUF;
  input [3:0]Q;

  wire [3:0]Q;
  wire [6:0]disp_val_OBUF;

  LUT4 #(
    .INIT(16'h2094)) 
    \disp_val_OBUF[0]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(disp_val_OBUF[0]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \disp_val_OBUF[1]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(disp_val_OBUF[1]));
  LUT4 #(
    .INIT(16'hA210)) 
    \disp_val_OBUF[2]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(disp_val_OBUF[2]));
  LUT4 #(
    .INIT(16'hC214)) 
    \disp_val_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(disp_val_OBUF[3]));
  LUT4 #(
    .INIT(16'h5710)) 
    \disp_val_OBUF[4]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(disp_val_OBUF[4]));
  LUT4 #(
    .INIT(16'h5190)) 
    \disp_val_OBUF[5]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(disp_val_OBUF[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \disp_val_OBUF[6]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(disp_val_OBUF[6]));
endmodule

module rc5_enc
   (do_rdy_OBUF,
    D,
    \a_reg_reg[0]_0 ,
    di_vld_IBUF,
    Q,
    sel0,
    io_sw_IBUF,
    ab_sw_IBUF,
    clr_IBUF,
    CLK);
  output do_rdy_OBUF;
  output [3:0]D;
  output \a_reg_reg[0]_0 ;
  input di_vld_IBUF;
  input [63:0]Q;
  input [2:0]sel0;
  input io_sw_IBUF;
  input ab_sw_IBUF;
  input clr_IBUF;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire [63:0]Q;
  wire [31:0]a_reg;
  wire \a_reg_reg[0]_0 ;
  wire \a_reg_reg_n_0_[0] ;
  wire \a_reg_reg_n_0_[10] ;
  wire \a_reg_reg_n_0_[11] ;
  wire \a_reg_reg_n_0_[12] ;
  wire \a_reg_reg_n_0_[13] ;
  wire \a_reg_reg_n_0_[14] ;
  wire \a_reg_reg_n_0_[15] ;
  wire \a_reg_reg_n_0_[16] ;
  wire \a_reg_reg_n_0_[17] ;
  wire \a_reg_reg_n_0_[18] ;
  wire \a_reg_reg_n_0_[19] ;
  wire \a_reg_reg_n_0_[1] ;
  wire \a_reg_reg_n_0_[20] ;
  wire \a_reg_reg_n_0_[21] ;
  wire \a_reg_reg_n_0_[22] ;
  wire \a_reg_reg_n_0_[23] ;
  wire \a_reg_reg_n_0_[24] ;
  wire \a_reg_reg_n_0_[25] ;
  wire \a_reg_reg_n_0_[26] ;
  wire \a_reg_reg_n_0_[27] ;
  wire \a_reg_reg_n_0_[28] ;
  wire \a_reg_reg_n_0_[29] ;
  wire \a_reg_reg_n_0_[2] ;
  wire \a_reg_reg_n_0_[30] ;
  wire \a_reg_reg_n_0_[31] ;
  wire \a_reg_reg_n_0_[3] ;
  wire \a_reg_reg_n_0_[4] ;
  wire \a_reg_reg_n_0_[5] ;
  wire \a_reg_reg_n_0_[6] ;
  wire \a_reg_reg_n_0_[7] ;
  wire \a_reg_reg_n_0_[8] ;
  wire \a_reg_reg_n_0_[9] ;
  wire ab_sw_IBUF;
  wire [31:0]b_reg;
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
  wire clr_IBUF;
  wire di_vld_IBUF;
  wire \disp_hex[0]_i_10_n_0 ;
  wire \disp_hex[0]_i_11_n_0 ;
  wire \disp_hex[0]_i_12_n_0 ;
  wire \disp_hex[0]_i_13_n_0 ;
  wire \disp_hex[0]_i_6_n_0 ;
  wire \disp_hex[0]_i_7_n_0 ;
  wire \disp_hex[0]_i_8_n_0 ;
  wire \disp_hex[0]_i_9_n_0 ;
  wire \disp_hex[1]_i_10_n_0 ;
  wire \disp_hex[1]_i_11_n_0 ;
  wire \disp_hex[1]_i_12_n_0 ;
  wire \disp_hex[1]_i_13_n_0 ;
  wire \disp_hex[1]_i_6_n_0 ;
  wire \disp_hex[1]_i_7_n_0 ;
  wire \disp_hex[1]_i_8_n_0 ;
  wire \disp_hex[1]_i_9_n_0 ;
  wire \disp_hex[2]_i_10_n_0 ;
  wire \disp_hex[2]_i_11_n_0 ;
  wire \disp_hex[2]_i_12_n_0 ;
  wire \disp_hex[2]_i_13_n_0 ;
  wire \disp_hex[2]_i_6_n_0 ;
  wire \disp_hex[2]_i_7_n_0 ;
  wire \disp_hex[2]_i_8_n_0 ;
  wire \disp_hex[2]_i_9_n_0 ;
  wire \disp_hex[3]_i_10_n_0 ;
  wire \disp_hex[3]_i_11_n_0 ;
  wire \disp_hex[3]_i_12_n_0 ;
  wire \disp_hex[3]_i_13_n_0 ;
  wire \disp_hex[3]_i_6_n_0 ;
  wire \disp_hex[3]_i_7_n_0 ;
  wire \disp_hex[3]_i_8_n_0 ;
  wire \disp_hex[3]_i_9_n_0 ;
  wire \disp_hex_reg[0]_i_2_n_0 ;
  wire \disp_hex_reg[0]_i_3_n_0 ;
  wire \disp_hex_reg[0]_i_4_n_0 ;
  wire \disp_hex_reg[0]_i_5_n_0 ;
  wire \disp_hex_reg[1]_i_2_n_0 ;
  wire \disp_hex_reg[1]_i_3_n_0 ;
  wire \disp_hex_reg[1]_i_4_n_0 ;
  wire \disp_hex_reg[1]_i_5_n_0 ;
  wire \disp_hex_reg[2]_i_2_n_0 ;
  wire \disp_hex_reg[2]_i_3_n_0 ;
  wire \disp_hex_reg[2]_i_4_n_0 ;
  wire \disp_hex_reg[2]_i_5_n_0 ;
  wire \disp_hex_reg[3]_i_2_n_0 ;
  wire \disp_hex_reg[3]_i_3_n_0 ;
  wire \disp_hex_reg[3]_i_4_n_0 ;
  wire \disp_hex_reg[3]_i_5_n_0 ;
  wire do_rdy_OBUF;
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
  wire g0_b3__1_i_1_n_0;
  wire g0_b3__1_i_2_n_0;
  wire g0_b3__1_i_3_n_0;
  wire g0_b3__1_i_4_n_0;
  wire g0_b3__1_i_5_n_0;
  wire g0_b3__1_n_0;
  wire g0_b3_n_0;
  wire g0_b4__0_n_0;
  wire g0_b4_n_0;
  wire g0_b5__0_n_0;
  wire g0_b5_n_0;
  wire g0_b6__0_n_0;
  wire g0_b6__1_i_1_n_0;
  wire g0_b6__1_i_2_n_0;
  wire g0_b6__1_i_3_n_0;
  wire g0_b6__1_i_4_n_0;
  wire g0_b6__1_i_5_n_0;
  wire g0_b6__1_n_0;
  wire g0_b6_n_0;
  wire g0_b7__0_n_0;
  wire g0_b7_n_0;
  wire g0_b8__0_n_0;
  wire g0_b8_n_0;
  wire g0_b9__0_n_0;
  wire g0_b9_n_0;
  wire [3:0]i_cnt;
  wire \i_cnt[3]_i_1_n_0 ;
  wire [31:0]in5;
  wire io_sw_IBUF;
  wire [31:0]plusOp1_out;
  wire plusOp__93_carry__0_i_10_n_0;
  wire plusOp__93_carry__0_i_11_n_0;
  wire plusOp__93_carry__0_i_12_n_0;
  wire plusOp__93_carry__0_i_13_n_0;
  wire plusOp__93_carry__0_i_14_n_0;
  wire plusOp__93_carry__0_i_15_n_0;
  wire plusOp__93_carry__0_i_16_n_0;
  wire plusOp__93_carry__0_i_17_n_0;
  wire plusOp__93_carry__0_i_18_n_0;
  wire plusOp__93_carry__0_i_19_n_0;
  wire plusOp__93_carry__0_i_1_n_0;
  wire plusOp__93_carry__0_i_2_n_0;
  wire plusOp__93_carry__0_i_3_n_0;
  wire plusOp__93_carry__0_i_4_n_0;
  wire plusOp__93_carry__0_i_5_n_0;
  wire plusOp__93_carry__0_i_6_n_0;
  wire plusOp__93_carry__0_i_7_n_0;
  wire plusOp__93_carry__0_i_8_n_0;
  wire plusOp__93_carry__0_i_9_n_0;
  wire plusOp__93_carry__0_n_0;
  wire plusOp__93_carry__1_i_10_n_0;
  wire plusOp__93_carry__1_i_11_n_0;
  wire plusOp__93_carry__1_i_12_n_0;
  wire plusOp__93_carry__1_i_13_n_0;
  wire plusOp__93_carry__1_i_14_n_0;
  wire plusOp__93_carry__1_i_15_n_0;
  wire plusOp__93_carry__1_i_16_n_0;
  wire plusOp__93_carry__1_i_17_n_0;
  wire plusOp__93_carry__1_i_18_n_0;
  wire plusOp__93_carry__1_i_1_n_0;
  wire plusOp__93_carry__1_i_2_n_0;
  wire plusOp__93_carry__1_i_3_n_0;
  wire plusOp__93_carry__1_i_4_n_0;
  wire plusOp__93_carry__1_i_5_n_0;
  wire plusOp__93_carry__1_i_6_n_0;
  wire plusOp__93_carry__1_i_7_n_0;
  wire plusOp__93_carry__1_i_8_n_0;
  wire plusOp__93_carry__1_i_9_n_0;
  wire plusOp__93_carry__1_n_0;
  wire plusOp__93_carry__2_i_10_n_0;
  wire plusOp__93_carry__2_i_11_n_0;
  wire plusOp__93_carry__2_i_12_n_0;
  wire plusOp__93_carry__2_i_13_n_0;
  wire plusOp__93_carry__2_i_14_n_0;
  wire plusOp__93_carry__2_i_15_n_0;
  wire plusOp__93_carry__2_i_16_n_0;
  wire plusOp__93_carry__2_i_17_n_0;
  wire plusOp__93_carry__2_i_1_n_0;
  wire plusOp__93_carry__2_i_2_n_0;
  wire plusOp__93_carry__2_i_3_n_0;
  wire plusOp__93_carry__2_i_4_n_0;
  wire plusOp__93_carry__2_i_5_n_0;
  wire plusOp__93_carry__2_i_6_n_0;
  wire plusOp__93_carry__2_i_7_n_0;
  wire plusOp__93_carry__2_i_8_n_0;
  wire plusOp__93_carry__2_i_9_n_0;
  wire plusOp__93_carry__2_n_0;
  wire plusOp__93_carry__3_i_1_n_0;
  wire plusOp__93_carry__3_i_2_n_0;
  wire plusOp__93_carry__3_i_3_n_0;
  wire plusOp__93_carry__3_i_4_n_0;
  wire plusOp__93_carry__3_n_0;
  wire plusOp__93_carry__4_i_1_n_0;
  wire plusOp__93_carry__4_i_2_n_0;
  wire plusOp__93_carry__4_i_3_n_0;
  wire plusOp__93_carry__4_i_4_n_0;
  wire plusOp__93_carry__4_n_0;
  wire plusOp__93_carry__5_i_1_n_0;
  wire plusOp__93_carry__5_i_2_n_0;
  wire plusOp__93_carry__5_i_3_n_0;
  wire plusOp__93_carry__5_i_4_n_0;
  wire plusOp__93_carry__5_n_0;
  wire plusOp__93_carry__6_i_1_n_0;
  wire plusOp__93_carry__6_i_2_n_0;
  wire plusOp__93_carry__6_i_3_n_0;
  wire plusOp__93_carry__6_i_4_n_0;
  wire plusOp__93_carry_i_10_n_0;
  wire plusOp__93_carry_i_11_n_0;
  wire plusOp__93_carry_i_12_n_0;
  wire plusOp__93_carry_i_13_n_0;
  wire plusOp__93_carry_i_14_n_0;
  wire plusOp__93_carry_i_15_n_0;
  wire plusOp__93_carry_i_16_n_0;
  wire plusOp__93_carry_i_17_n_0;
  wire plusOp__93_carry_i_18_n_0;
  wire plusOp__93_carry_i_19_n_0;
  wire plusOp__93_carry_i_1_n_0;
  wire plusOp__93_carry_i_20_n_0;
  wire plusOp__93_carry_i_21_n_0;
  wire plusOp__93_carry_i_22_n_0;
  wire plusOp__93_carry_i_23_n_0;
  wire plusOp__93_carry_i_24_n_0;
  wire plusOp__93_carry_i_25_n_0;
  wire plusOp__93_carry_i_26_n_0;
  wire plusOp__93_carry_i_27_n_0;
  wire plusOp__93_carry_i_28_n_0;
  wire plusOp__93_carry_i_29_n_0;
  wire plusOp__93_carry_i_2_n_0;
  wire plusOp__93_carry_i_30_n_0;
  wire plusOp__93_carry_i_31_n_0;
  wire plusOp__93_carry_i_32_n_0;
  wire plusOp__93_carry_i_3_n_0;
  wire plusOp__93_carry_i_4_n_0;
  wire plusOp__93_carry_i_5_n_0;
  wire plusOp__93_carry_i_6_n_0;
  wire plusOp__93_carry_i_7_n_0;
  wire plusOp__93_carry_i_8_n_0;
  wire plusOp__93_carry_i_9_n_0;
  wire plusOp__93_carry_n_0;
  wire plusOp_carry__0_i_10_n_0;
  wire plusOp_carry__0_i_11_n_0;
  wire plusOp_carry__0_i_12_n_0;
  wire plusOp_carry__0_i_13_n_0;
  wire plusOp_carry__0_i_14_n_0;
  wire plusOp_carry__0_i_15_n_0;
  wire plusOp_carry__0_i_16_n_0;
  wire plusOp_carry__0_i_17_n_0;
  wire plusOp_carry__0_i_18_n_0;
  wire plusOp_carry__0_i_19_n_0;
  wire plusOp_carry__0_i_1_n_0;
  wire plusOp_carry__0_i_20_n_0;
  wire plusOp_carry__0_i_21_n_0;
  wire plusOp_carry__0_i_22_n_0;
  wire plusOp_carry__0_i_23_n_0;
  wire plusOp_carry__0_i_24_n_0;
  wire plusOp_carry__0_i_25_n_0;
  wire plusOp_carry__0_i_26_n_0;
  wire plusOp_carry__0_i_2_n_0;
  wire plusOp_carry__0_i_3_n_0;
  wire plusOp_carry__0_i_4_n_0;
  wire plusOp_carry__0_i_5_n_0;
  wire plusOp_carry__0_i_6_n_0;
  wire plusOp_carry__0_i_7_n_0;
  wire plusOp_carry__0_i_8_n_0;
  wire plusOp_carry__0_i_9_n_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__1_i_10_n_0;
  wire plusOp_carry__1_i_11_n_0;
  wire plusOp_carry__1_i_12_n_0;
  wire plusOp_carry__1_i_13_n_0;
  wire plusOp_carry__1_i_14_n_0;
  wire plusOp_carry__1_i_15_n_0;
  wire plusOp_carry__1_i_16_n_0;
  wire plusOp_carry__1_i_1_n_0;
  wire plusOp_carry__1_i_2_n_0;
  wire plusOp_carry__1_i_3_n_0;
  wire plusOp_carry__1_i_4_n_0;
  wire plusOp_carry__1_i_5_n_0;
  wire plusOp_carry__1_i_6_n_0;
  wire plusOp_carry__1_i_7_n_0;
  wire plusOp_carry__1_i_8_n_0;
  wire plusOp_carry__1_i_9_n_0;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__2_i_10_n_0;
  wire plusOp_carry__2_i_11_n_0;
  wire plusOp_carry__2_i_12_n_0;
  wire plusOp_carry__2_i_13_n_0;
  wire plusOp_carry__2_i_14_n_0;
  wire plusOp_carry__2_i_15_n_0;
  wire plusOp_carry__2_i_16_n_0;
  wire plusOp_carry__2_i_1_n_0;
  wire plusOp_carry__2_i_2_n_0;
  wire plusOp_carry__2_i_3_n_0;
  wire plusOp_carry__2_i_4_n_0;
  wire plusOp_carry__2_i_5_n_0;
  wire plusOp_carry__2_i_6_n_0;
  wire plusOp_carry__2_i_7_n_0;
  wire plusOp_carry__2_i_8_n_0;
  wire plusOp_carry__2_i_9_n_0;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__3_i_1_n_0;
  wire plusOp_carry__3_i_2_n_0;
  wire plusOp_carry__3_i_3_n_0;
  wire plusOp_carry__3_i_4_n_0;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__4_i_1_n_0;
  wire plusOp_carry__4_i_2_n_0;
  wire plusOp_carry__4_i_3_n_0;
  wire plusOp_carry__4_i_4_n_0;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__5_i_1_n_0;
  wire plusOp_carry__5_i_2_n_0;
  wire plusOp_carry__5_i_3_n_0;
  wire plusOp_carry__5_i_4_n_0;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__6_i_1_n_0;
  wire plusOp_carry__6_i_2_n_0;
  wire plusOp_carry__6_i_3_n_0;
  wire plusOp_carry__6_i_4_n_0;
  wire plusOp_carry_i_10_n_0;
  wire plusOp_carry_i_11_n_0;
  wire plusOp_carry_i_12_n_0;
  wire plusOp_carry_i_13_n_0;
  wire plusOp_carry_i_14_n_0;
  wire plusOp_carry_i_15_n_0;
  wire plusOp_carry_i_16_n_0;
  wire plusOp_carry_i_17_n_0;
  wire plusOp_carry_i_18_n_0;
  wire plusOp_carry_i_19_n_0;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_20_n_0;
  wire plusOp_carry_i_21_n_0;
  wire plusOp_carry_i_22_n_0;
  wire plusOp_carry_i_23_n_0;
  wire plusOp_carry_i_24_n_0;
  wire plusOp_carry_i_25_n_0;
  wire plusOp_carry_i_26_n_0;
  wire plusOp_carry_i_27_n_0;
  wire plusOp_carry_i_28_n_0;
  wire plusOp_carry_i_29_n_0;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_i_30_n_0;
  wire plusOp_carry_i_31_n_0;
  wire plusOp_carry_i_32_n_0;
  wire plusOp_carry_i_33_n_0;
  wire plusOp_carry_i_34_n_0;
  wire plusOp_carry_i_35_n_0;
  wire plusOp_carry_i_36_n_0;
  wire plusOp_carry_i_37_n_0;
  wire plusOp_carry_i_38_n_0;
  wire plusOp_carry_i_39_n_0;
  wire plusOp_carry_i_3_n_0;
  wire plusOp_carry_i_40_n_0;
  wire plusOp_carry_i_41_n_0;
  wire plusOp_carry_i_4_n_0;
  wire plusOp_carry_i_5_n_0;
  wire plusOp_carry_i_6_n_0;
  wire plusOp_carry_i_7_n_0;
  wire plusOp_carry_i_8_n_0;
  wire plusOp_carry_i_9_n_0;
  wire plusOp_carry_n_0;
  wire [4:1]sel;
  wire [2:0]sel0;
  (* RTL_KEEP = "yes" *) wire [1:0]state;
  wire [2:0]NLW_plusOp__93_carry_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp__93_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp__93_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp__93_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp__93_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp__93_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp__93_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_plusOp__93_carry__6_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_plusOp_carry__6_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0100000055555555)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(sel[2]),
        .I2(sel[1]),
        .I3(sel[4]),
        .I4(sel[3]),
        .I5(state[1]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(di_vld_IBUF),
        .I2(state[1]),
        .I3(\FSM_sequential_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00001000FFFF0000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(sel[2]),
        .I1(sel[1]),
        .I2(sel[4]),
        .I3(sel[3]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(clr_IBUF),
        .O(\a_reg_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(sel[2]),
        .I1(sel[1]),
        .I2(sel[4]),
        .I3(sel[3]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "st_pre_round:01,st_round_op:10,st_idle:00,st_ready:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "st_pre_round:01,st_round_op:10,st_idle:00,st_ready:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(\FSM_sequential_state[1]_i_2_n_0 ),
        .Q(state[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[0]_i_1 
       (.I0(Q[32]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[0]),
        .O(a_reg[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[10]_i_1 
       (.I0(Q[42]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[10]),
        .O(a_reg[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[11]_i_1 
       (.I0(Q[43]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[11]),
        .O(a_reg[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[12]_i_1 
       (.I0(Q[44]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[12]),
        .O(a_reg[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[13]_i_1 
       (.I0(Q[45]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[13]),
        .O(a_reg[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[14]_i_1 
       (.I0(Q[46]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[14]),
        .O(a_reg[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[15]_i_1 
       (.I0(Q[47]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[15]),
        .O(a_reg[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[16]_i_1 
       (.I0(Q[48]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[16]),
        .O(a_reg[16]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[17]_i_1 
       (.I0(Q[49]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[17]),
        .O(a_reg[17]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[18]_i_1 
       (.I0(Q[50]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[18]),
        .O(a_reg[18]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[19]_i_1 
       (.I0(Q[51]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[19]),
        .O(a_reg[19]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[1]_i_1 
       (.I0(Q[33]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[1]),
        .O(a_reg[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[20]_i_1 
       (.I0(Q[52]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[20]),
        .O(a_reg[20]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[21]_i_1 
       (.I0(Q[53]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[21]),
        .O(a_reg[21]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[22]_i_1 
       (.I0(Q[54]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[22]),
        .O(a_reg[22]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[23]_i_1 
       (.I0(Q[55]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[23]),
        .O(a_reg[23]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[24]_i_1 
       (.I0(Q[56]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[24]),
        .O(a_reg[24]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[25]_i_1 
       (.I0(Q[57]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[25]),
        .O(a_reg[25]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[26]_i_1 
       (.I0(Q[58]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[26]),
        .O(a_reg[26]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[27]_i_1 
       (.I0(Q[59]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[27]),
        .O(a_reg[27]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[28]_i_1 
       (.I0(Q[60]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[28]),
        .O(a_reg[28]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[29]_i_1 
       (.I0(Q[61]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[29]),
        .O(a_reg[29]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[2]_i_1 
       (.I0(Q[34]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[2]),
        .O(a_reg[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[30]_i_1 
       (.I0(Q[62]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[30]),
        .O(a_reg[30]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[31]_i_1 
       (.I0(Q[63]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[31]),
        .O(a_reg[31]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[3]_i_1 
       (.I0(Q[35]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[3]),
        .O(a_reg[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[4]_i_1 
       (.I0(Q[36]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[4]),
        .O(a_reg[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[5]_i_1 
       (.I0(Q[37]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[5]),
        .O(a_reg[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[6]_i_1 
       (.I0(Q[38]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[6]),
        .O(a_reg[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[7]_i_1 
       (.I0(Q[39]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[7]),
        .O(a_reg[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[8]_i_1 
       (.I0(Q[40]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[8]),
        .O(a_reg[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a_reg[9]_i_1 
       (.I0(Q[41]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(plusOp1_out[9]),
        .O(a_reg[9]));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[0] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[0]),
        .Q(\a_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[10] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[10]),
        .Q(\a_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[11] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[11]),
        .Q(\a_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[12] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[12]),
        .Q(\a_reg_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[13] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[13]),
        .Q(\a_reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[14] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[14]),
        .Q(\a_reg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[15] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[15]),
        .Q(\a_reg_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[16] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[16]),
        .Q(\a_reg_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[17] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[17]),
        .Q(\a_reg_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[18] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[18]),
        .Q(\a_reg_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[19] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[19]),
        .Q(\a_reg_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[1] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[1]),
        .Q(\a_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[20] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[20]),
        .Q(\a_reg_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[21] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[21]),
        .Q(\a_reg_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[22] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[22]),
        .Q(\a_reg_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[23] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[23]),
        .Q(\a_reg_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[24] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[24]),
        .Q(\a_reg_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[25] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[25]),
        .Q(\a_reg_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[26] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[26]),
        .Q(\a_reg_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[27] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[27]),
        .Q(\a_reg_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[28] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[28]),
        .Q(\a_reg_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[29] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[29]),
        .Q(\a_reg_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[2] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[2]),
        .Q(\a_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[30] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[30]),
        .Q(\a_reg_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[31] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[31]),
        .Q(\a_reg_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[3] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[3]),
        .Q(\a_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[4] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[4]),
        .Q(\a_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[5] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[5]),
        .Q(\a_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[6] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[6]),
        .Q(\a_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[7] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[7]),
        .Q(\a_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[8] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[8]),
        .Q(\a_reg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_reg_reg[9] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(a_reg[9]),
        .Q(\a_reg_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[0]_i_1 
       (.I0(Q[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[0]),
        .O(b_reg[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[10]_i_1 
       (.I0(Q[10]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[10]),
        .O(b_reg[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[11]_i_1 
       (.I0(Q[11]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[11]),
        .O(b_reg[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[12]_i_1 
       (.I0(Q[12]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[12]),
        .O(b_reg[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[13]_i_1 
       (.I0(Q[13]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[13]),
        .O(b_reg[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[14]_i_1 
       (.I0(Q[14]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[14]),
        .O(b_reg[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[15]_i_1 
       (.I0(Q[15]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[15]),
        .O(b_reg[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[16]_i_1 
       (.I0(Q[16]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[16]),
        .O(b_reg[16]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[17]_i_1 
       (.I0(Q[17]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[17]),
        .O(b_reg[17]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[18]_i_1 
       (.I0(Q[18]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[18]),
        .O(b_reg[18]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[19]_i_1 
       (.I0(Q[19]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[19]),
        .O(b_reg[19]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[1]),
        .O(b_reg[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[20]_i_1 
       (.I0(Q[20]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[20]),
        .O(b_reg[20]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[21]_i_1 
       (.I0(Q[21]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[21]),
        .O(b_reg[21]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[22]_i_1 
       (.I0(Q[22]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[22]),
        .O(b_reg[22]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[23]_i_1 
       (.I0(Q[23]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[23]),
        .O(b_reg[23]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[24]_i_1 
       (.I0(Q[24]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[24]),
        .O(b_reg[24]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[25]_i_1 
       (.I0(Q[25]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[25]),
        .O(b_reg[25]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[26]_i_1 
       (.I0(Q[26]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[26]),
        .O(b_reg[26]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[27]_i_1 
       (.I0(Q[27]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[27]),
        .O(b_reg[27]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[28]_i_1 
       (.I0(Q[28]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[28]),
        .O(b_reg[28]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[29]_i_1 
       (.I0(Q[29]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[29]),
        .O(b_reg[29]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[2]),
        .O(b_reg[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[30]_i_1 
       (.I0(Q[30]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[30]),
        .O(b_reg[30]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[31]_i_1 
       (.I0(Q[31]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[31]),
        .O(b_reg[31]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[3]_i_1 
       (.I0(Q[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[3]),
        .O(b_reg[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[4]_i_1 
       (.I0(Q[4]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[4]),
        .O(b_reg[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[5]_i_1 
       (.I0(Q[5]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[5]),
        .O(b_reg[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[6]_i_1 
       (.I0(Q[6]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[6]),
        .O(b_reg[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[7]_i_1 
       (.I0(Q[7]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[7]),
        .O(b_reg[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[8]_i_1 
       (.I0(Q[8]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[8]),
        .O(b_reg[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \b_reg[9]_i_1 
       (.I0(Q[9]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(in5[9]),
        .O(b_reg[9]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[0]),
        .Q(\b_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[10] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[10]),
        .Q(\b_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[11] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[11]),
        .Q(\b_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[12] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[12]),
        .Q(\b_reg_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[13] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[13]),
        .Q(\b_reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[14] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[14]),
        .Q(\b_reg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[15] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[15]),
        .Q(\b_reg_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[16] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[16]),
        .Q(\b_reg_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[17] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[17]),
        .Q(\b_reg_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[18] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[18]),
        .Q(\b_reg_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[19] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[19]),
        .Q(\b_reg_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[1]),
        .Q(\b_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[20] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[20]),
        .Q(\b_reg_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[21] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[21]),
        .Q(\b_reg_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[22] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[22]),
        .Q(\b_reg_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[23] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[23]),
        .Q(\b_reg_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[24] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[24]),
        .Q(\b_reg_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[25] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[25]),
        .Q(\b_reg_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[26] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[26]),
        .Q(\b_reg_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[27] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[27]),
        .Q(\b_reg_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[28] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[28]),
        .Q(\b_reg_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[29] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[29]),
        .Q(\b_reg_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[2]),
        .Q(\b_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[30] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[30]),
        .Q(\b_reg_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[31] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[31]),
        .Q(\b_reg_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[3]),
        .Q(\b_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[4]),
        .Q(\b_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[5]),
        .Q(\b_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[6]),
        .Q(\b_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[7]),
        .Q(\b_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[8] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[8]),
        .Q(\b_reg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[9] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(b_reg[9]),
        .Q(\b_reg_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[0]_i_1 
       (.I0(\disp_hex_reg[0]_i_2_n_0 ),
        .I1(\disp_hex_reg[0]_i_3_n_0 ),
        .I2(sel0[2]),
        .I3(\disp_hex_reg[0]_i_4_n_0 ),
        .I4(sel0[1]),
        .I5(\disp_hex_reg[0]_i_5_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[0]_i_10 
       (.I0(\b_reg_reg_n_0_[8] ),
        .I1(\a_reg_reg_n_0_[8] ),
        .I2(io_sw_IBUF),
        .I3(Q[8]),
        .I4(ab_sw_IBUF),
        .I5(Q[40]),
        .O(\disp_hex[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[0]_i_11 
       (.I0(\b_reg_reg_n_0_[12] ),
        .I1(\a_reg_reg_n_0_[12] ),
        .I2(io_sw_IBUF),
        .I3(Q[12]),
        .I4(ab_sw_IBUF),
        .I5(Q[44]),
        .O(\disp_hex[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[0]_i_12 
       (.I0(\b_reg_reg_n_0_[0] ),
        .I1(\a_reg_reg_n_0_[0] ),
        .I2(io_sw_IBUF),
        .I3(Q[0]),
        .I4(ab_sw_IBUF),
        .I5(Q[32]),
        .O(\disp_hex[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[0]_i_13 
       (.I0(\b_reg_reg_n_0_[4] ),
        .I1(\a_reg_reg_n_0_[4] ),
        .I2(io_sw_IBUF),
        .I3(Q[4]),
        .I4(ab_sw_IBUF),
        .I5(Q[36]),
        .O(\disp_hex[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[0]_i_6 
       (.I0(\b_reg_reg_n_0_[24] ),
        .I1(\a_reg_reg_n_0_[24] ),
        .I2(io_sw_IBUF),
        .I3(Q[24]),
        .I4(ab_sw_IBUF),
        .I5(Q[56]),
        .O(\disp_hex[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[0]_i_7 
       (.I0(\b_reg_reg_n_0_[28] ),
        .I1(\a_reg_reg_n_0_[28] ),
        .I2(io_sw_IBUF),
        .I3(Q[28]),
        .I4(ab_sw_IBUF),
        .I5(Q[60]),
        .O(\disp_hex[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[0]_i_8 
       (.I0(\b_reg_reg_n_0_[16] ),
        .I1(\a_reg_reg_n_0_[16] ),
        .I2(io_sw_IBUF),
        .I3(Q[16]),
        .I4(ab_sw_IBUF),
        .I5(Q[48]),
        .O(\disp_hex[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[0]_i_9 
       (.I0(\b_reg_reg_n_0_[20] ),
        .I1(\a_reg_reg_n_0_[20] ),
        .I2(io_sw_IBUF),
        .I3(Q[20]),
        .I4(ab_sw_IBUF),
        .I5(Q[52]),
        .O(\disp_hex[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[1]_i_1 
       (.I0(\disp_hex_reg[1]_i_2_n_0 ),
        .I1(\disp_hex_reg[1]_i_3_n_0 ),
        .I2(sel0[2]),
        .I3(\disp_hex_reg[1]_i_4_n_0 ),
        .I4(sel0[1]),
        .I5(\disp_hex_reg[1]_i_5_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[1]_i_10 
       (.I0(\b_reg_reg_n_0_[9] ),
        .I1(\a_reg_reg_n_0_[9] ),
        .I2(io_sw_IBUF),
        .I3(Q[9]),
        .I4(ab_sw_IBUF),
        .I5(Q[41]),
        .O(\disp_hex[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[1]_i_11 
       (.I0(\b_reg_reg_n_0_[13] ),
        .I1(\a_reg_reg_n_0_[13] ),
        .I2(io_sw_IBUF),
        .I3(Q[13]),
        .I4(ab_sw_IBUF),
        .I5(Q[45]),
        .O(\disp_hex[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[1]_i_12 
       (.I0(\b_reg_reg_n_0_[1] ),
        .I1(\a_reg_reg_n_0_[1] ),
        .I2(io_sw_IBUF),
        .I3(Q[1]),
        .I4(ab_sw_IBUF),
        .I5(Q[33]),
        .O(\disp_hex[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[1]_i_13 
       (.I0(\b_reg_reg_n_0_[5] ),
        .I1(\a_reg_reg_n_0_[5] ),
        .I2(io_sw_IBUF),
        .I3(Q[5]),
        .I4(ab_sw_IBUF),
        .I5(Q[37]),
        .O(\disp_hex[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[1]_i_6 
       (.I0(\b_reg_reg_n_0_[25] ),
        .I1(\a_reg_reg_n_0_[25] ),
        .I2(io_sw_IBUF),
        .I3(Q[25]),
        .I4(ab_sw_IBUF),
        .I5(Q[57]),
        .O(\disp_hex[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[1]_i_7 
       (.I0(\b_reg_reg_n_0_[29] ),
        .I1(\a_reg_reg_n_0_[29] ),
        .I2(io_sw_IBUF),
        .I3(Q[29]),
        .I4(ab_sw_IBUF),
        .I5(Q[61]),
        .O(\disp_hex[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[1]_i_8 
       (.I0(\b_reg_reg_n_0_[17] ),
        .I1(\a_reg_reg_n_0_[17] ),
        .I2(io_sw_IBUF),
        .I3(Q[17]),
        .I4(ab_sw_IBUF),
        .I5(Q[49]),
        .O(\disp_hex[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[1]_i_9 
       (.I0(\b_reg_reg_n_0_[21] ),
        .I1(\a_reg_reg_n_0_[21] ),
        .I2(io_sw_IBUF),
        .I3(Q[21]),
        .I4(ab_sw_IBUF),
        .I5(Q[53]),
        .O(\disp_hex[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[2]_i_1 
       (.I0(\disp_hex_reg[2]_i_2_n_0 ),
        .I1(\disp_hex_reg[2]_i_3_n_0 ),
        .I2(sel0[2]),
        .I3(\disp_hex_reg[2]_i_4_n_0 ),
        .I4(sel0[1]),
        .I5(\disp_hex_reg[2]_i_5_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[2]_i_10 
       (.I0(\b_reg_reg_n_0_[10] ),
        .I1(\a_reg_reg_n_0_[10] ),
        .I2(io_sw_IBUF),
        .I3(Q[10]),
        .I4(ab_sw_IBUF),
        .I5(Q[42]),
        .O(\disp_hex[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[2]_i_11 
       (.I0(\b_reg_reg_n_0_[14] ),
        .I1(\a_reg_reg_n_0_[14] ),
        .I2(io_sw_IBUF),
        .I3(Q[14]),
        .I4(ab_sw_IBUF),
        .I5(Q[46]),
        .O(\disp_hex[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[2]_i_12 
       (.I0(\b_reg_reg_n_0_[2] ),
        .I1(\a_reg_reg_n_0_[2] ),
        .I2(io_sw_IBUF),
        .I3(Q[2]),
        .I4(ab_sw_IBUF),
        .I5(Q[34]),
        .O(\disp_hex[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[2]_i_13 
       (.I0(\b_reg_reg_n_0_[6] ),
        .I1(\a_reg_reg_n_0_[6] ),
        .I2(io_sw_IBUF),
        .I3(Q[6]),
        .I4(ab_sw_IBUF),
        .I5(Q[38]),
        .O(\disp_hex[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[2]_i_6 
       (.I0(\b_reg_reg_n_0_[26] ),
        .I1(\a_reg_reg_n_0_[26] ),
        .I2(io_sw_IBUF),
        .I3(Q[26]),
        .I4(ab_sw_IBUF),
        .I5(Q[58]),
        .O(\disp_hex[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[2]_i_7 
       (.I0(\b_reg_reg_n_0_[30] ),
        .I1(\a_reg_reg_n_0_[30] ),
        .I2(io_sw_IBUF),
        .I3(Q[30]),
        .I4(ab_sw_IBUF),
        .I5(Q[62]),
        .O(\disp_hex[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[2]_i_8 
       (.I0(\b_reg_reg_n_0_[18] ),
        .I1(\a_reg_reg_n_0_[18] ),
        .I2(io_sw_IBUF),
        .I3(Q[18]),
        .I4(ab_sw_IBUF),
        .I5(Q[50]),
        .O(\disp_hex[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[2]_i_9 
       (.I0(\b_reg_reg_n_0_[22] ),
        .I1(\a_reg_reg_n_0_[22] ),
        .I2(io_sw_IBUF),
        .I3(Q[22]),
        .I4(ab_sw_IBUF),
        .I5(Q[54]),
        .O(\disp_hex[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[3]_i_1 
       (.I0(\disp_hex_reg[3]_i_2_n_0 ),
        .I1(\disp_hex_reg[3]_i_3_n_0 ),
        .I2(sel0[2]),
        .I3(\disp_hex_reg[3]_i_4_n_0 ),
        .I4(sel0[1]),
        .I5(\disp_hex_reg[3]_i_5_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[3]_i_10 
       (.I0(\b_reg_reg_n_0_[11] ),
        .I1(\a_reg_reg_n_0_[11] ),
        .I2(io_sw_IBUF),
        .I3(Q[11]),
        .I4(ab_sw_IBUF),
        .I5(Q[43]),
        .O(\disp_hex[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[3]_i_11 
       (.I0(\b_reg_reg_n_0_[15] ),
        .I1(\a_reg_reg_n_0_[15] ),
        .I2(io_sw_IBUF),
        .I3(Q[15]),
        .I4(ab_sw_IBUF),
        .I5(Q[47]),
        .O(\disp_hex[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[3]_i_12 
       (.I0(\b_reg_reg_n_0_[3] ),
        .I1(\a_reg_reg_n_0_[3] ),
        .I2(io_sw_IBUF),
        .I3(Q[3]),
        .I4(ab_sw_IBUF),
        .I5(Q[35]),
        .O(\disp_hex[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[3]_i_13 
       (.I0(\b_reg_reg_n_0_[7] ),
        .I1(\a_reg_reg_n_0_[7] ),
        .I2(io_sw_IBUF),
        .I3(Q[7]),
        .I4(ab_sw_IBUF),
        .I5(Q[39]),
        .O(\disp_hex[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[3]_i_6 
       (.I0(\b_reg_reg_n_0_[27] ),
        .I1(\a_reg_reg_n_0_[27] ),
        .I2(io_sw_IBUF),
        .I3(Q[27]),
        .I4(ab_sw_IBUF),
        .I5(Q[59]),
        .O(\disp_hex[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[3]_i_7 
       (.I0(\b_reg_reg_n_0_[31] ),
        .I1(\a_reg_reg_n_0_[31] ),
        .I2(io_sw_IBUF),
        .I3(Q[31]),
        .I4(ab_sw_IBUF),
        .I5(Q[63]),
        .O(\disp_hex[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[3]_i_8 
       (.I0(\b_reg_reg_n_0_[19] ),
        .I1(\a_reg_reg_n_0_[19] ),
        .I2(io_sw_IBUF),
        .I3(Q[19]),
        .I4(ab_sw_IBUF),
        .I5(Q[51]),
        .O(\disp_hex[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \disp_hex[3]_i_9 
       (.I0(\b_reg_reg_n_0_[23] ),
        .I1(\a_reg_reg_n_0_[23] ),
        .I2(io_sw_IBUF),
        .I3(Q[23]),
        .I4(ab_sw_IBUF),
        .I5(Q[55]),
        .O(\disp_hex[3]_i_9_n_0 ));
  MUXF7 \disp_hex_reg[0]_i_2 
       (.I0(\disp_hex[0]_i_6_n_0 ),
        .I1(\disp_hex[0]_i_7_n_0 ),
        .O(\disp_hex_reg[0]_i_2_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[0]_i_3 
       (.I0(\disp_hex[0]_i_8_n_0 ),
        .I1(\disp_hex[0]_i_9_n_0 ),
        .O(\disp_hex_reg[0]_i_3_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[0]_i_4 
       (.I0(\disp_hex[0]_i_10_n_0 ),
        .I1(\disp_hex[0]_i_11_n_0 ),
        .O(\disp_hex_reg[0]_i_4_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[0]_i_5 
       (.I0(\disp_hex[0]_i_12_n_0 ),
        .I1(\disp_hex[0]_i_13_n_0 ),
        .O(\disp_hex_reg[0]_i_5_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[1]_i_2 
       (.I0(\disp_hex[1]_i_6_n_0 ),
        .I1(\disp_hex[1]_i_7_n_0 ),
        .O(\disp_hex_reg[1]_i_2_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[1]_i_3 
       (.I0(\disp_hex[1]_i_8_n_0 ),
        .I1(\disp_hex[1]_i_9_n_0 ),
        .O(\disp_hex_reg[1]_i_3_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[1]_i_4 
       (.I0(\disp_hex[1]_i_10_n_0 ),
        .I1(\disp_hex[1]_i_11_n_0 ),
        .O(\disp_hex_reg[1]_i_4_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[1]_i_5 
       (.I0(\disp_hex[1]_i_12_n_0 ),
        .I1(\disp_hex[1]_i_13_n_0 ),
        .O(\disp_hex_reg[1]_i_5_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[2]_i_2 
       (.I0(\disp_hex[2]_i_6_n_0 ),
        .I1(\disp_hex[2]_i_7_n_0 ),
        .O(\disp_hex_reg[2]_i_2_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[2]_i_3 
       (.I0(\disp_hex[2]_i_8_n_0 ),
        .I1(\disp_hex[2]_i_9_n_0 ),
        .O(\disp_hex_reg[2]_i_3_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[2]_i_4 
       (.I0(\disp_hex[2]_i_10_n_0 ),
        .I1(\disp_hex[2]_i_11_n_0 ),
        .O(\disp_hex_reg[2]_i_4_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[2]_i_5 
       (.I0(\disp_hex[2]_i_12_n_0 ),
        .I1(\disp_hex[2]_i_13_n_0 ),
        .O(\disp_hex_reg[2]_i_5_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[3]_i_2 
       (.I0(\disp_hex[3]_i_6_n_0 ),
        .I1(\disp_hex[3]_i_7_n_0 ),
        .O(\disp_hex_reg[3]_i_2_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[3]_i_3 
       (.I0(\disp_hex[3]_i_8_n_0 ),
        .I1(\disp_hex[3]_i_9_n_0 ),
        .O(\disp_hex_reg[3]_i_3_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[3]_i_4 
       (.I0(\disp_hex[3]_i_10_n_0 ),
        .I1(\disp_hex[3]_i_11_n_0 ),
        .O(\disp_hex_reg[3]_i_4_n_0 ),
        .S(sel0[0]));
  MUXF7 \disp_hex_reg[3]_i_5 
       (.I0(\disp_hex[3]_i_12_n_0 ),
        .I1(\disp_hex[3]_i_13_n_0 ),
        .O(\disp_hex_reg[3]_i_5_n_0 ),
        .S(sel0[0]));
  LUT2 #(
    .INIT(4'h8)) 
    do_rdy_OBUF_inst_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .O(do_rdy_OBUF));
  LUT4 #(
    .INIT(16'h10F2)) 
    g0_b0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b0_n_0));
  LUT4 #(
    .INIT(16'h0776)) 
    g0_b0__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b0__0_n_0));
  LUT4 #(
    .INIT(16'h0D24)) 
    g0_b1
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b1_n_0));
  LUT4 #(
    .INIT(16'h10D8)) 
    g0_b10
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b10_n_0));
  LUT4 #(
    .INIT(16'h02C8)) 
    g0_b10__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b10__0_n_0));
  LUT4 #(
    .INIT(16'h0EE6)) 
    g0_b11
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b11_n_0));
  LUT4 #(
    .INIT(16'h0238)) 
    g0_b11__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b11__0_n_0));
  LUT4 #(
    .INIT(16'h118C)) 
    g0_b12
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b12_n_0));
  LUT4 #(
    .INIT(16'h0230)) 
    g0_b12__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b12__0_n_0));
  LUT4 #(
    .INIT(16'h0966)) 
    g0_b13
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b13_n_0));
  LUT4 #(
    .INIT(16'h1C5A)) 
    g0_b13__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b13__0_n_0));
  LUT4 #(
    .INIT(16'h0C22)) 
    g0_b14
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b14_n_0));
  LUT4 #(
    .INIT(16'h112A)) 
    g0_b14__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b14__0_n_0));
  LUT4 #(
    .INIT(16'h0602)) 
    g0_b15
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b15_n_0));
  LUT4 #(
    .INIT(16'h01EC)) 
    g0_b15__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b15__0_n_0));
  LUT4 #(
    .INIT(16'h0E70)) 
    g0_b16
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b16_n_0));
  LUT4 #(
    .INIT(16'h094C)) 
    g0_b16__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b16__0_n_0));
  LUT4 #(
    .INIT(16'h0E28)) 
    g0_b17
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b17_n_0));
  LUT4 #(
    .INIT(16'h07A4)) 
    g0_b17__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b17__0_n_0));
  LUT4 #(
    .INIT(16'h1E38)) 
    g0_b18
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b18_n_0));
  LUT4 #(
    .INIT(16'h1582)) 
    g0_b18__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b18__0_n_0));
  LUT4 #(
    .INIT(16'h144E)) 
    g0_b19
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b19_n_0));
  LUT4 #(
    .INIT(16'h0BF6)) 
    g0_b19__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b19__0_n_0));
  LUT4 #(
    .INIT(16'h068C)) 
    g0_b1__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b1__0_n_0));
  LUT4 #(
    .INIT(16'h051A)) 
    g0_b2
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b2_n_0));
  LUT4 #(
    .INIT(16'h0CCE)) 
    g0_b20
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b20_n_0));
  LUT4 #(
    .INIT(16'h0CE0)) 
    g0_b20__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b20__0_n_0));
  LUT4 #(
    .INIT(16'h067E)) 
    g0_b21
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b21_n_0));
  LUT4 #(
    .INIT(16'h0138)) 
    g0_b21__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b21__0_n_0));
  LUT4 #(
    .INIT(16'h1946)) 
    g0_b22
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b22_n_0));
  LUT4 #(
    .INIT(16'h0184)) 
    g0_b22__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b22__0_n_0));
  LUT4 #(
    .INIT(16'h1F86)) 
    g0_b23
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b23_n_0));
  LUT4 #(
    .INIT(16'h01D0)) 
    g0_b23__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b23__0_n_0));
  LUT4 #(
    .INIT(16'h06D8)) 
    g0_b24
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b24_n_0));
  LUT4 #(
    .INIT(16'h1B70)) 
    g0_b24__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b24__0_n_0));
  LUT4 #(
    .INIT(16'h11C2)) 
    g0_b25
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b25_n_0));
  LUT4 #(
    .INIT(16'h0FCA)) 
    g0_b25__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b25__0_n_0));
  LUT4 #(
    .INIT(16'h15A2)) 
    g0_b26
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b26_n_0));
  LUT4 #(
    .INIT(16'h15CA)) 
    g0_b26__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b26__0_n_0));
  LUT4 #(
    .INIT(16'h0440)) 
    g0_b27
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b27_n_0));
  LUT4 #(
    .INIT(16'h0684)) 
    g0_b27__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b27__0_n_0));
  LUT4 #(
    .INIT(16'h193C)) 
    g0_b28
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b28_n_0));
  LUT4 #(
    .INIT(16'h02B8)) 
    g0_b28__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b28__0_n_0));
  LUT4 #(
    .INIT(16'h1B94)) 
    g0_b29
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b29_n_0));
  LUT4 #(
    .INIT(16'h176C)) 
    g0_b29__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b29__0_n_0));
  LUT4 #(
    .INIT(16'h0C72)) 
    g0_b2__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b2__0_n_0));
  LUT4 #(
    .INIT(16'h0AF4)) 
    g0_b3
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b3_n_0));
  LUT4 #(
    .INIT(16'h166E)) 
    g0_b30
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b30_n_0));
  LUT4 #(
    .INIT(16'h18AA)) 
    g0_b30__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b30__0_n_0));
  LUT4 #(
    .INIT(16'h10A0)) 
    g0_b31
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b31_n_0));
  LUT4 #(
    .INIT(16'h0588)) 
    g0_b31__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b31__0_n_0));
  LUT3 #(
    .INIT(8'h1C)) 
    g0_b3__0
       (.I0(sel[2]),
        .I1(sel[3]),
        .I2(sel[4]),
        .O(g0_b3__0_n_0));
  LUT6 #(
    .INIT(64'hE3E3E31C1C1CE31C)) 
    g0_b3__1
       (.I0(sel[2]),
        .I1(sel[3]),
        .I2(sel[4]),
        .I3(g0_b3__1_i_1_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b3__1_i_2_n_0),
        .O(g0_b3__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    g0_b3__1_i_1
       (.I0(g0_b3__1_i_3_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__1_i_5_n_0),
        .O(g0_b3__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    g0_b3__1_i_2
       (.I0(plusOp__93_carry__1_i_6_n_0),
        .I1(plusOp1_out[3]),
        .I2(g0_b3__1_i_4_n_0),
        .O(g0_b3__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b3__1_i_3
       (.I0(plusOp__93_carry_i_23_n_0),
        .I1(plusOp__93_carry_i_24_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_25_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_26_n_0),
        .O(g0_b3__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b3__1_i_4
       (.I0(plusOp__93_carry__2_i_17_n_0),
        .I1(g0_b3__1_i_5_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry__2_i_14_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_22_n_0),
        .O(g0_b3__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b3__1_i_5
       (.I0(\b_reg_reg_n_0_[14] ),
        .I1(plusOp1_out[14]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[15] ),
        .I4(plusOp1_out[15]),
        .O(g0_b3__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h1758)) 
    g0_b4
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b4_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    g0_b4__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b4__0_n_0));
  LUT4 #(
    .INIT(16'h1620)) 
    g0_b5
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b5_n_0));
  LUT4 #(
    .INIT(16'h0628)) 
    g0_b5__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b5__0_n_0));
  LUT4 #(
    .INIT(16'h04BA)) 
    g0_b6
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b6_n_0));
  LUT3 #(
    .INIT(8'h14)) 
    g0_b6__0
       (.I0(sel[1]),
        .I1(sel[3]),
        .I2(sel[4]),
        .O(g0_b6__0_n_0));
  LUT6 #(
    .INIT(64'hEBEBEB141414EB14)) 
    g0_b6__1
       (.I0(sel[1]),
        .I1(sel[3]),
        .I2(sel[4]),
        .I3(g0_b6__1_i_1_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b6__1_i_2_n_0),
        .O(g0_b6__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    g0_b6__1_i_1
       (.I0(g0_b6__1_i_3_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__2_i_7_n_0),
        .O(g0_b6__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    g0_b6__1_i_2
       (.I0(plusOp__93_carry__2_i_8_n_0),
        .I1(plusOp1_out[3]),
        .I2(g0_b6__1_i_4_n_0),
        .O(g0_b6__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b6__1_i_3
       (.I0(plusOp__93_carry_i_15_n_0),
        .I1(plusOp__93_carry_i_16_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_17_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_18_n_0),
        .O(g0_b6__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b6__1_i_4
       (.I0(g0_b6__1_i_5_n_0),
        .I1(plusOp__93_carry_i_31_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_13_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_14_n_0),
        .O(g0_b6__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    g0_b6__1_i_5
       (.I0(\b_reg_reg_n_0_[15] ),
        .I1(plusOp1_out[15]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[16] ),
        .I4(plusOp1_out[16]),
        .O(g0_b6__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h0346)) 
    g0_b7
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b7_n_0));
  LUT4 #(
    .INIT(16'h1042)) 
    g0_b7__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b7__0_n_0));
  LUT4 #(
    .INIT(16'h0B44)) 
    g0_b8
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b8_n_0));
  LUT4 #(
    .INIT(16'h1E8C)) 
    g0_b8__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b8__0_n_0));
  LUT4 #(
    .INIT(16'h0E54)) 
    g0_b9
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b9_n_0));
  LUT4 #(
    .INIT(16'h1994)) 
    g0_b9__0
       (.I0(sel[1]),
        .I1(sel[2]),
        .I2(sel[3]),
        .I3(sel[4]),
        .O(g0_b9__0_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    \i_cnt[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(sel[1]),
        .O(i_cnt[0]));
  LUT4 #(
    .INIT(16'h6066)) 
    \i_cnt[1]_i_1 
       (.I0(sel[2]),
        .I1(sel[1]),
        .I2(state[1]),
        .I3(state[0]),
        .O(i_cnt[1]));
  LUT6 #(
    .INIT(64'h00F3F351F3000000)) 
    \i_cnt[2]_i_1 
       (.I0(sel[4]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(sel[1]),
        .I4(sel[2]),
        .I5(sel[3]),
        .O(i_cnt[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \i_cnt[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\i_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0DDDDD0DD0000000)) 
    \i_cnt[3]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(sel[3]),
        .I3(sel[2]),
        .I4(sel[1]),
        .I5(sel[4]),
        .O(i_cnt[3]));
  FDPE #(
    .INIT(1'b1)) 
    \i_cnt_reg[0] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .D(i_cnt[0]),
        .PRE(\a_reg_reg[0]_0 ),
        .Q(sel[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[1] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(i_cnt[1]),
        .Q(sel[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[2] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(i_cnt[2]),
        .Q(sel[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[3] 
       (.C(CLK),
        .CE(\i_cnt[3]_i_1_n_0 ),
        .CLR(\a_reg_reg[0]_0 ),
        .D(i_cnt[3]),
        .Q(sel[4]));
  CARRY4 plusOp__93_carry
       (.CI(1'b0),
        .CO({plusOp__93_carry_n_0,NLW_plusOp__93_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b3__0_n_0,g0_b2__0_n_0,g0_b1__0_n_0,g0_b0__0_n_0}),
        .O(in5[3:0]),
        .S({g0_b3__1_n_0,plusOp__93_carry_i_1_n_0,plusOp__93_carry_i_2_n_0,plusOp__93_carry_i_3_n_0}));
  CARRY4 plusOp__93_carry__0
       (.CI(plusOp__93_carry_n_0),
        .CO({plusOp__93_carry__0_n_0,NLW_plusOp__93_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b7__0_n_0,g0_b6__0_n_0,g0_b5__0_n_0,g0_b4__0_n_0}),
        .O(in5[7:4]),
        .S({plusOp__93_carry__0_i_1_n_0,g0_b6__1_n_0,plusOp__93_carry__0_i_2_n_0,plusOp__93_carry__0_i_3_n_0}));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp__93_carry__0_i_1
       (.I0(plusOp__93_carry__0_i_4_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__0_i_5_n_0),
        .I3(plusOp1_out[4]),
        .I4(plusOp__93_carry__0_i_6_n_0),
        .I5(g0_b7__0_n_0),
        .O(plusOp__93_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__0_i_10
       (.I0(plusOp__93_carry_i_14_n_0),
        .I1(plusOp__93_carry_i_15_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_16_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_17_n_0),
        .O(plusOp__93_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__0_i_11
       (.I0(plusOp__93_carry_i_18_n_0),
        .I1(plusOp__93_carry_i_19_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_20_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry__0_i_18_n_0),
        .O(plusOp__93_carry__0_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp__93_carry__0_i_12
       (.I0(plusOp__93_carry__2_i_12_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__0_i_19_n_0),
        .O(plusOp__93_carry__0_i_12_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry__0_i_13
       (.I0(\b_reg_reg_n_0_[2] ),
        .I1(plusOp1_out[2]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[3] ),
        .I4(plusOp1_out[3]),
        .O(plusOp__93_carry__0_i_13_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry__0_i_14
       (.I0(\b_reg_reg_n_0_[4] ),
        .I1(plusOp1_out[4]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[5] ),
        .I4(plusOp1_out[5]),
        .O(plusOp__93_carry__0_i_14_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry__0_i_15
       (.I0(\b_reg_reg_n_0_[6] ),
        .I1(plusOp1_out[6]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[7] ),
        .I4(plusOp1_out[7]),
        .O(plusOp__93_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__0_i_16
       (.I0(plusOp__93_carry__1_i_14_n_0),
        .I1(plusOp__93_carry__1_i_15_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry__2_i_17_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b3__1_i_5_n_0),
        .O(plusOp__93_carry__0_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__0_i_17
       (.I0(g0_b3__1_i_5_n_0),
        .I1(plusOp__93_carry__2_i_14_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_22_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_23_n_0),
        .O(plusOp__93_carry__0_i_17_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry__0_i_18
       (.I0(\b_reg_reg_n_0_[3] ),
        .I1(plusOp1_out[3]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp1_out[4]),
        .O(plusOp__93_carry__0_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__0_i_19
       (.I0(plusOp__93_carry__2_i_16_n_0),
        .I1(g0_b6__1_i_5_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_31_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_13_n_0),
        .O(plusOp__93_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp__93_carry__0_i_2
       (.I0(plusOp__93_carry__0_i_7_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__0_i_8_n_0),
        .I3(plusOp1_out[4]),
        .I4(plusOp__93_carry__0_i_9_n_0),
        .I5(g0_b5__0_n_0),
        .O(plusOp__93_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp__93_carry__0_i_3
       (.I0(plusOp__93_carry__0_i_10_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__0_i_11_n_0),
        .I3(plusOp1_out[4]),
        .I4(plusOp__93_carry__0_i_12_n_0),
        .I5(g0_b4__0_n_0),
        .O(plusOp__93_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__0_i_4
       (.I0(plusOp__93_carry_i_25_n_0),
        .I1(plusOp__93_carry_i_26_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_27_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_28_n_0),
        .O(plusOp__93_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__0_i_5
       (.I0(plusOp__93_carry_i_29_n_0),
        .I1(plusOp__93_carry__0_i_13_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry__0_i_14_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry__0_i_15_n_0),
        .O(plusOp__93_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp__93_carry__0_i_6
       (.I0(plusOp__93_carry__0_i_16_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__2_i_5_n_0),
        .O(plusOp__93_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__0_i_7
       (.I0(plusOp__93_carry_i_24_n_0),
        .I1(plusOp__93_carry_i_25_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_26_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_27_n_0),
        .O(plusOp__93_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__0_i_8
       (.I0(plusOp__93_carry_i_28_n_0),
        .I1(plusOp__93_carry_i_29_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry__0_i_13_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry__0_i_14_n_0),
        .O(plusOp__93_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp__93_carry__0_i_9
       (.I0(plusOp__93_carry__2_i_10_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__0_i_17_n_0),
        .O(plusOp__93_carry__0_i_9_n_0));
  CARRY4 plusOp__93_carry__1
       (.CI(plusOp__93_carry__0_n_0),
        .CO({plusOp__93_carry__1_n_0,NLW_plusOp__93_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b11__0_n_0,g0_b10__0_n_0,g0_b9__0_n_0,g0_b8__0_n_0}),
        .O(in5[11:8]),
        .S({plusOp__93_carry__1_i_1_n_0,plusOp__93_carry__1_i_2_n_0,plusOp__93_carry__1_i_3_n_0,plusOp__93_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp__93_carry__1_i_1
       (.I0(plusOp__93_carry__1_i_5_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__1_i_6_n_0),
        .I3(plusOp1_out[4]),
        .I4(plusOp__93_carry__1_i_7_n_0),
        .I5(g0_b11__0_n_0),
        .O(plusOp__93_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__1_i_10
       (.I0(plusOp__93_carry__0_i_13_n_0),
        .I1(plusOp__93_carry__0_i_14_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry__0_i_15_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry__1_i_14_n_0),
        .O(plusOp__93_carry__1_i_10_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp__93_carry__1_i_11
       (.I0(plusOp__93_carry_i_30_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry_i_7_n_0),
        .O(plusOp__93_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__1_i_12
       (.I0(plusOp__93_carry_i_20_n_0),
        .I1(plusOp__93_carry__0_i_18_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry__1_i_16_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry__1_i_17_n_0),
        .O(plusOp__93_carry__1_i_12_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp__93_carry__1_i_13
       (.I0(plusOp__93_carry_i_32_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry_i_10_n_0),
        .O(plusOp__93_carry__1_i_13_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry__1_i_14
       (.I0(\b_reg_reg_n_0_[8] ),
        .I1(plusOp1_out[8]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[9] ),
        .I4(plusOp1_out[9]),
        .O(plusOp__93_carry__1_i_14_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry__1_i_15
       (.I0(\b_reg_reg_n_0_[10] ),
        .I1(plusOp1_out[10]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[11] ),
        .I4(plusOp1_out[11]),
        .O(plusOp__93_carry__1_i_15_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry__1_i_16
       (.I0(\b_reg_reg_n_0_[5] ),
        .I1(plusOp1_out[5]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[6] ),
        .I4(plusOp1_out[6]),
        .O(plusOp__93_carry__1_i_16_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry__1_i_17
       (.I0(\b_reg_reg_n_0_[7] ),
        .I1(plusOp1_out[7]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[8] ),
        .I4(plusOp1_out[8]),
        .O(plusOp__93_carry__1_i_17_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry__1_i_18
       (.I0(\b_reg_reg_n_0_[9] ),
        .I1(plusOp1_out[9]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[10] ),
        .I4(plusOp1_out[10]),
        .O(plusOp__93_carry__1_i_18_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp__93_carry__1_i_2
       (.I0(plusOp__93_carry_i_5_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__1_i_8_n_0),
        .I3(plusOp1_out[4]),
        .I4(plusOp__93_carry__1_i_9_n_0),
        .I5(g0_b10__0_n_0),
        .O(plusOp__93_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp__93_carry__1_i_3
       (.I0(plusOp__93_carry_i_8_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__1_i_10_n_0),
        .I3(plusOp1_out[4]),
        .I4(plusOp__93_carry__1_i_11_n_0),
        .I5(g0_b9__0_n_0),
        .O(plusOp__93_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp__93_carry__1_i_4
       (.I0(plusOp__93_carry_i_11_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__1_i_12_n_0),
        .I3(plusOp1_out[4]),
        .I4(plusOp__93_carry__1_i_13_n_0),
        .I5(g0_b8__0_n_0),
        .O(plusOp__93_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__1_i_5
       (.I0(plusOp__93_carry_i_27_n_0),
        .I1(plusOp__93_carry_i_28_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_29_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry__0_i_13_n_0),
        .O(plusOp__93_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__1_i_6
       (.I0(plusOp__93_carry__0_i_14_n_0),
        .I1(plusOp__93_carry__0_i_15_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry__1_i_14_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry__1_i_15_n_0),
        .O(plusOp__93_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp__93_carry__1_i_7
       (.I0(g0_b3__1_i_4_n_0),
        .I1(plusOp1_out[3]),
        .I2(g0_b3__1_i_3_n_0),
        .O(plusOp__93_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__1_i_8
       (.I0(plusOp__93_carry__0_i_18_n_0),
        .I1(plusOp__93_carry__1_i_16_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry__1_i_17_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry__1_i_18_n_0),
        .O(plusOp__93_carry__1_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp__93_carry__1_i_9
       (.I0(plusOp__93_carry_i_21_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry_i_4_n_0),
        .O(plusOp__93_carry__1_i_9_n_0));
  CARRY4 plusOp__93_carry__2
       (.CI(plusOp__93_carry__1_n_0),
        .CO({plusOp__93_carry__2_n_0,NLW_plusOp__93_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b15__0_n_0,g0_b14__0_n_0,g0_b13__0_n_0,g0_b12__0_n_0}),
        .O(in5[15:12]),
        .S({plusOp__93_carry__2_i_1_n_0,plusOp__93_carry__2_i_2_n_0,plusOp__93_carry__2_i_3_n_0,plusOp__93_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp__93_carry__2_i_1
       (.I0(plusOp__93_carry__2_i_5_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__0_i_4_n_0),
        .I3(plusOp__93_carry__2_i_6_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b15__0_n_0),
        .O(plusOp__93_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__2_i_10
       (.I0(plusOp__93_carry__0_i_15_n_0),
        .I1(plusOp__93_carry__1_i_14_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry__1_i_15_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry__2_i_17_n_0),
        .O(plusOp__93_carry__2_i_10_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp__93_carry__2_i_11
       (.I0(plusOp__93_carry__0_i_17_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__0_i_7_n_0),
        .O(plusOp__93_carry__2_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__2_i_12
       (.I0(plusOp__93_carry__1_i_16_n_0),
        .I1(plusOp__93_carry__1_i_17_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry__1_i_18_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry__2_i_15_n_0),
        .O(plusOp__93_carry__2_i_12_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp__93_carry__2_i_13
       (.I0(plusOp__93_carry__0_i_19_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__0_i_10_n_0),
        .O(plusOp__93_carry__2_i_13_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry__2_i_14
       (.I0(\b_reg_reg_n_0_[16] ),
        .I1(plusOp1_out[16]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[17] ),
        .I4(plusOp1_out[17]),
        .O(plusOp__93_carry__2_i_14_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry__2_i_15
       (.I0(\b_reg_reg_n_0_[11] ),
        .I1(plusOp1_out[11]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[12] ),
        .I4(plusOp1_out[12]),
        .O(plusOp__93_carry__2_i_15_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry__2_i_16
       (.I0(\b_reg_reg_n_0_[13] ),
        .I1(plusOp1_out[13]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[14] ),
        .I4(plusOp1_out[14]),
        .O(plusOp__93_carry__2_i_16_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry__2_i_17
       (.I0(\b_reg_reg_n_0_[12] ),
        .I1(plusOp1_out[12]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[13] ),
        .I4(plusOp1_out[13]),
        .O(plusOp__93_carry__2_i_17_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp__93_carry__2_i_2
       (.I0(plusOp__93_carry__2_i_7_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__2_i_8_n_0),
        .I3(plusOp1_out[4]),
        .I4(plusOp__93_carry__2_i_9_n_0),
        .I5(g0_b14__0_n_0),
        .O(plusOp__93_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp__93_carry__2_i_3
       (.I0(plusOp__93_carry__0_i_8_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__2_i_10_n_0),
        .I3(plusOp1_out[4]),
        .I4(plusOp__93_carry__2_i_11_n_0),
        .I5(g0_b13__0_n_0),
        .O(plusOp__93_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp__93_carry__2_i_4
       (.I0(plusOp__93_carry__0_i_11_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__2_i_12_n_0),
        .I3(plusOp1_out[4]),
        .I4(plusOp__93_carry__2_i_13_n_0),
        .I5(g0_b12__0_n_0),
        .O(plusOp__93_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__2_i_5
       (.I0(plusOp__93_carry__2_i_14_n_0),
        .I1(plusOp__93_carry_i_22_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_23_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_24_n_0),
        .O(plusOp__93_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp__93_carry__2_i_6
       (.I0(plusOp__93_carry__0_i_5_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__0_i_16_n_0),
        .O(plusOp__93_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__2_i_7
       (.I0(plusOp__93_carry_i_19_n_0),
        .I1(plusOp__93_carry_i_20_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry__0_i_18_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry__1_i_16_n_0),
        .O(plusOp__93_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry__2_i_8
       (.I0(plusOp__93_carry__1_i_17_n_0),
        .I1(plusOp__93_carry__1_i_18_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry__2_i_15_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry__2_i_16_n_0),
        .O(plusOp__93_carry__2_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp__93_carry__2_i_9
       (.I0(g0_b6__1_i_4_n_0),
        .I1(plusOp1_out[3]),
        .I2(g0_b6__1_i_3_n_0),
        .O(plusOp__93_carry__2_i_9_n_0));
  CARRY4 plusOp__93_carry__3
       (.CI(plusOp__93_carry__2_n_0),
        .CO({plusOp__93_carry__3_n_0,NLW_plusOp__93_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b19__0_n_0,g0_b18__0_n_0,g0_b17__0_n_0,g0_b16__0_n_0}),
        .O(in5[19:16]),
        .S({plusOp__93_carry__3_i_1_n_0,plusOp__93_carry__3_i_2_n_0,plusOp__93_carry__3_i_3_n_0,plusOp__93_carry__3_i_4_n_0}));
  LUT4 #(
    .INIT(16'h1DE2)) 
    plusOp__93_carry__3_i_1
       (.I0(g0_b3__1_i_2_n_0),
        .I1(plusOp1_out[4]),
        .I2(g0_b3__1_i_1_n_0),
        .I3(g0_b19__0_n_0),
        .O(plusOp__93_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp__93_carry__3_i_2
       (.I0(plusOp__93_carry_i_4_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry_i_5_n_0),
        .I3(plusOp__93_carry_i_6_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b18__0_n_0),
        .O(plusOp__93_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp__93_carry__3_i_3
       (.I0(plusOp__93_carry_i_7_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry_i_8_n_0),
        .I3(plusOp__93_carry_i_9_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b17__0_n_0),
        .O(plusOp__93_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp__93_carry__3_i_4
       (.I0(plusOp__93_carry_i_10_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry_i_11_n_0),
        .I3(plusOp__93_carry_i_12_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b16__0_n_0),
        .O(plusOp__93_carry__3_i_4_n_0));
  CARRY4 plusOp__93_carry__4
       (.CI(plusOp__93_carry__3_n_0),
        .CO({plusOp__93_carry__4_n_0,NLW_plusOp__93_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b23__0_n_0,g0_b22__0_n_0,g0_b21__0_n_0,g0_b20__0_n_0}),
        .O(in5[23:20]),
        .S({plusOp__93_carry__4_i_1_n_0,plusOp__93_carry__4_i_2_n_0,plusOp__93_carry__4_i_3_n_0,plusOp__93_carry__4_i_4_n_0}));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp__93_carry__4_i_1
       (.I0(plusOp__93_carry__0_i_4_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__0_i_5_n_0),
        .I3(plusOp__93_carry__0_i_6_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b23__0_n_0),
        .O(plusOp__93_carry__4_i_1_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    plusOp__93_carry__4_i_2
       (.I0(g0_b6__1_i_2_n_0),
        .I1(plusOp1_out[4]),
        .I2(g0_b6__1_i_1_n_0),
        .I3(g0_b22__0_n_0),
        .O(plusOp__93_carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp__93_carry__4_i_3
       (.I0(plusOp__93_carry__0_i_7_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__0_i_8_n_0),
        .I3(plusOp__93_carry__0_i_9_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b21__0_n_0),
        .O(plusOp__93_carry__4_i_3_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp__93_carry__4_i_4
       (.I0(plusOp__93_carry__0_i_10_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__0_i_11_n_0),
        .I3(plusOp__93_carry__0_i_12_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b20__0_n_0),
        .O(plusOp__93_carry__4_i_4_n_0));
  CARRY4 plusOp__93_carry__5
       (.CI(plusOp__93_carry__4_n_0),
        .CO({plusOp__93_carry__5_n_0,NLW_plusOp__93_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b27__0_n_0,g0_b26__0_n_0,g0_b25__0_n_0,g0_b24__0_n_0}),
        .O(in5[27:24]),
        .S({plusOp__93_carry__5_i_1_n_0,plusOp__93_carry__5_i_2_n_0,plusOp__93_carry__5_i_3_n_0,plusOp__93_carry__5_i_4_n_0}));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp__93_carry__5_i_1
       (.I0(plusOp__93_carry__1_i_5_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__1_i_6_n_0),
        .I3(plusOp__93_carry__1_i_7_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b27__0_n_0),
        .O(plusOp__93_carry__5_i_1_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp__93_carry__5_i_2
       (.I0(plusOp__93_carry_i_5_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__1_i_8_n_0),
        .I3(plusOp__93_carry__1_i_9_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b26__0_n_0),
        .O(plusOp__93_carry__5_i_2_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp__93_carry__5_i_3
       (.I0(plusOp__93_carry_i_8_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__1_i_10_n_0),
        .I3(plusOp__93_carry__1_i_11_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b25__0_n_0),
        .O(plusOp__93_carry__5_i_3_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp__93_carry__5_i_4
       (.I0(plusOp__93_carry_i_11_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__1_i_12_n_0),
        .I3(plusOp__93_carry__1_i_13_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b24__0_n_0),
        .O(plusOp__93_carry__5_i_4_n_0));
  CARRY4 plusOp__93_carry__6
       (.CI(plusOp__93_carry__5_n_0),
        .CO(NLW_plusOp__93_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,g0_b30__0_n_0,g0_b29__0_n_0,g0_b28__0_n_0}),
        .O(in5[31:28]),
        .S({plusOp__93_carry__6_i_1_n_0,plusOp__93_carry__6_i_2_n_0,plusOp__93_carry__6_i_3_n_0,plusOp__93_carry__6_i_4_n_0}));
  LUT6 #(
    .INIT(64'h00FF47B8FF0047B8)) 
    plusOp__93_carry__6_i_1
       (.I0(plusOp__93_carry__2_i_5_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__0_i_4_n_0),
        .I3(g0_b31__0_n_0),
        .I4(plusOp1_out[4]),
        .I5(plusOp__93_carry__2_i_6_n_0),
        .O(plusOp__93_carry__6_i_1_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp__93_carry__6_i_2
       (.I0(plusOp__93_carry__2_i_7_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__2_i_8_n_0),
        .I3(plusOp__93_carry__2_i_9_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b30__0_n_0),
        .O(plusOp__93_carry__6_i_2_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp__93_carry__6_i_3
       (.I0(plusOp__93_carry__0_i_8_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__2_i_10_n_0),
        .I3(plusOp__93_carry__2_i_11_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b29__0_n_0),
        .O(plusOp__93_carry__6_i_3_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp__93_carry__6_i_4
       (.I0(plusOp__93_carry__0_i_11_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry__2_i_12_n_0),
        .I3(plusOp__93_carry__2_i_13_n_0),
        .I4(plusOp1_out[4]),
        .I5(g0_b28__0_n_0),
        .O(plusOp__93_carry__6_i_4_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp__93_carry_i_1
       (.I0(plusOp__93_carry_i_4_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry_i_5_n_0),
        .I3(plusOp1_out[4]),
        .I4(plusOp__93_carry_i_6_n_0),
        .I5(g0_b2__0_n_0),
        .O(plusOp__93_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry_i_10
       (.I0(plusOp__93_carry_i_31_n_0),
        .I1(plusOp__93_carry_i_13_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_14_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_15_n_0),
        .O(plusOp__93_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry_i_11
       (.I0(plusOp__93_carry_i_16_n_0),
        .I1(plusOp__93_carry_i_17_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_18_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_19_n_0),
        .O(plusOp__93_carry_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp__93_carry_i_12
       (.I0(plusOp__93_carry__1_i_12_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry_i_32_n_0),
        .O(plusOp__93_carry_i_12_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_13
       (.I0(\b_reg_reg_n_0_[19] ),
        .I1(plusOp1_out[19]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[20] ),
        .I4(plusOp1_out[20]),
        .O(plusOp__93_carry_i_13_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_14
       (.I0(\b_reg_reg_n_0_[21] ),
        .I1(plusOp1_out[21]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[22] ),
        .I4(plusOp1_out[22]),
        .O(plusOp__93_carry_i_14_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_15
       (.I0(\b_reg_reg_n_0_[23] ),
        .I1(plusOp1_out[23]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[24] ),
        .I4(plusOp1_out[24]),
        .O(plusOp__93_carry_i_15_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_16
       (.I0(\b_reg_reg_n_0_[25] ),
        .I1(plusOp1_out[25]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[26] ),
        .I4(plusOp1_out[26]),
        .O(plusOp__93_carry_i_16_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_17
       (.I0(\b_reg_reg_n_0_[27] ),
        .I1(plusOp1_out[27]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[28] ),
        .I4(plusOp1_out[28]),
        .O(plusOp__93_carry_i_17_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_18
       (.I0(\b_reg_reg_n_0_[29] ),
        .I1(plusOp1_out[29]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[30] ),
        .I4(plusOp1_out[30]),
        .O(plusOp__93_carry_i_18_n_0));
  LUT4 #(
    .INIT(16'h6F60)) 
    plusOp__93_carry_i_19
       (.I0(\b_reg_reg_n_0_[31] ),
        .I1(plusOp1_out[31]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[0] ),
        .O(plusOp__93_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp__93_carry_i_2
       (.I0(plusOp__93_carry_i_7_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry_i_8_n_0),
        .I3(plusOp1_out[4]),
        .I4(plusOp__93_carry_i_9_n_0),
        .I5(g0_b1__0_n_0),
        .O(plusOp__93_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_20
       (.I0(\b_reg_reg_n_0_[1] ),
        .I1(plusOp1_out[1]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[2] ),
        .I4(plusOp1_out[2]),
        .O(plusOp__93_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry_i_21
       (.I0(plusOp__93_carry__2_i_15_n_0),
        .I1(plusOp__93_carry__2_i_16_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b6__1_i_5_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_31_n_0),
        .O(plusOp__93_carry_i_21_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_22
       (.I0(\b_reg_reg_n_0_[18] ),
        .I1(plusOp1_out[18]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[19] ),
        .I4(plusOp1_out[19]),
        .O(plusOp__93_carry_i_22_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_23
       (.I0(\b_reg_reg_n_0_[20] ),
        .I1(plusOp1_out[20]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[21] ),
        .I4(plusOp1_out[21]),
        .O(plusOp__93_carry_i_23_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_24
       (.I0(\b_reg_reg_n_0_[22] ),
        .I1(plusOp1_out[22]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[23] ),
        .I4(plusOp1_out[23]),
        .O(plusOp__93_carry_i_24_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_25
       (.I0(\b_reg_reg_n_0_[24] ),
        .I1(plusOp1_out[24]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[25] ),
        .I4(plusOp1_out[25]),
        .O(plusOp__93_carry_i_25_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_26
       (.I0(\b_reg_reg_n_0_[26] ),
        .I1(plusOp1_out[26]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[27] ),
        .I4(plusOp1_out[27]),
        .O(plusOp__93_carry_i_26_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_27
       (.I0(\b_reg_reg_n_0_[28] ),
        .I1(plusOp1_out[28]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[29] ),
        .I4(plusOp1_out[29]),
        .O(plusOp__93_carry_i_27_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_28
       (.I0(\b_reg_reg_n_0_[30] ),
        .I1(plusOp1_out[30]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[31] ),
        .I4(plusOp1_out[31]),
        .O(plusOp__93_carry_i_28_n_0));
  LUT4 #(
    .INIT(16'h4774)) 
    plusOp__93_carry_i_29
       (.I0(\b_reg_reg_n_0_[0] ),
        .I1(plusOp1_out[0]),
        .I2(\b_reg_reg_n_0_[1] ),
        .I3(plusOp1_out[1]),
        .O(plusOp__93_carry_i_29_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp__93_carry_i_3
       (.I0(plusOp__93_carry_i_10_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry_i_11_n_0),
        .I3(plusOp1_out[4]),
        .I4(plusOp__93_carry_i_12_n_0),
        .I5(g0_b0__0_n_0),
        .O(plusOp__93_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry_i_30
       (.I0(plusOp__93_carry__1_i_15_n_0),
        .I1(plusOp__93_carry__2_i_17_n_0),
        .I2(plusOp1_out[2]),
        .I3(g0_b3__1_i_5_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry__2_i_14_n_0),
        .O(plusOp__93_carry_i_30_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp__93_carry_i_31
       (.I0(\b_reg_reg_n_0_[17] ),
        .I1(plusOp1_out[17]),
        .I2(plusOp1_out[0]),
        .I3(\b_reg_reg_n_0_[18] ),
        .I4(plusOp1_out[18]),
        .O(plusOp__93_carry_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry_i_32
       (.I0(plusOp__93_carry__1_i_18_n_0),
        .I1(plusOp__93_carry__2_i_15_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry__2_i_16_n_0),
        .I4(plusOp1_out[1]),
        .I5(g0_b6__1_i_5_n_0),
        .O(plusOp__93_carry_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry_i_4
       (.I0(plusOp__93_carry_i_13_n_0),
        .I1(plusOp__93_carry_i_14_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_15_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_16_n_0),
        .O(plusOp__93_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry_i_5
       (.I0(plusOp__93_carry_i_17_n_0),
        .I1(plusOp__93_carry_i_18_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_19_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_20_n_0),
        .O(plusOp__93_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp__93_carry_i_6
       (.I0(plusOp__93_carry__1_i_8_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry_i_21_n_0),
        .O(plusOp__93_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry_i_7
       (.I0(plusOp__93_carry_i_22_n_0),
        .I1(plusOp__93_carry_i_23_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_24_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_25_n_0),
        .O(plusOp__93_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp__93_carry_i_8
       (.I0(plusOp__93_carry_i_26_n_0),
        .I1(plusOp__93_carry_i_27_n_0),
        .I2(plusOp1_out[2]),
        .I3(plusOp__93_carry_i_28_n_0),
        .I4(plusOp1_out[1]),
        .I5(plusOp__93_carry_i_29_n_0),
        .O(plusOp__93_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp__93_carry_i_9
       (.I0(plusOp__93_carry__1_i_10_n_0),
        .I1(plusOp1_out[3]),
        .I2(plusOp__93_carry_i_30_n_0),
        .O(plusOp__93_carry_i_9_n_0));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,NLW_plusOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b3_n_0,g0_b2_n_0,g0_b1_n_0,g0_b0_n_0}),
        .O(plusOp1_out[3:0]),
        .S({plusOp_carry_i_1_n_0,plusOp_carry_i_2_n_0,plusOp_carry_i_3_n_0,plusOp_carry_i_4_n_0}));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,NLW_plusOp_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b7_n_0,g0_b6_n_0,g0_b5_n_0,g0_b4_n_0}),
        .O(plusOp1_out[7:4]),
        .S({plusOp_carry__0_i_1_n_0,plusOp_carry__0_i_2_n_0,plusOp_carry__0_i_3_n_0,plusOp_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry__0_i_1
       (.I0(plusOp_carry__0_i_5_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_6_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry__0_i_7_n_0),
        .I5(g0_b7_n_0),
        .O(plusOp_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__0_i_10
       (.I0(plusOp_carry__2_i_7_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_22_n_0),
        .O(plusOp_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_11
       (.I0(plusOp_carry_i_18_n_0),
        .I1(plusOp_carry_i_19_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry_i_20_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_21_n_0),
        .O(plusOp_carry__0_i_11_n_0));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    plusOp_carry__0_i_12
       (.I0(plusOp_carry__0_i_23_n_0),
        .I1(\b_reg_reg_n_0_[1] ),
        .I2(plusOp_carry__0_i_17_n_0),
        .I3(plusOp_carry_i_34_n_0),
        .I4(\b_reg_reg_n_0_[2] ),
        .O(plusOp_carry__0_i_12_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__0_i_13
       (.I0(plusOp_carry__2_i_9_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_24_n_0),
        .O(plusOp_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_14
       (.I0(plusOp_carry_i_26_n_0),
        .I1(plusOp_carry_i_27_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry_i_28_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_29_n_0),
        .O(plusOp_carry__0_i_14_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__0_i_15
       (.I0(plusOp_carry_i_37_n_0),
        .I1(\b_reg_reg_n_0_[2] ),
        .I2(plusOp_carry__0_i_25_n_0),
        .O(plusOp_carry__0_i_15_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__0_i_16
       (.I0(plusOp_carry__2_i_11_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_26_n_0),
        .O(plusOp_carry__0_i_16_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry__0_i_17
       (.I0(\a_reg_reg_n_0_[4] ),
        .I1(\b_reg_reg_n_0_[4] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[5] ),
        .I4(\b_reg_reg_n_0_[5] ),
        .O(plusOp_carry__0_i_17_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry__0_i_18
       (.I0(\a_reg_reg_n_0_[6] ),
        .I1(\b_reg_reg_n_0_[6] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[7] ),
        .I4(\b_reg_reg_n_0_[7] ),
        .O(plusOp_carry__0_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_19
       (.I0(plusOp_carry__1_i_13_n_0),
        .I1(plusOp_carry__1_i_14_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry__2_i_16_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_39_n_0),
        .O(plusOp_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry__0_i_2
       (.I0(plusOp_carry__0_i_8_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_9_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry__0_i_10_n_0),
        .I5(g0_b6_n_0),
        .O(plusOp_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry__0_i_20
       (.I0(\b_reg_reg_n_0_[3] ),
        .I1(\a_reg_reg_n_0_[3] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[4] ),
        .I4(\b_reg_reg_n_0_[4] ),
        .O(plusOp_carry__0_i_20_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry__0_i_21
       (.I0(\a_reg_reg_n_0_[5] ),
        .I1(\b_reg_reg_n_0_[5] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[6] ),
        .I4(\b_reg_reg_n_0_[6] ),
        .O(plusOp_carry__0_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_22
       (.I0(plusOp_carry_i_41_n_0),
        .I1(plusOp_carry_i_36_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry_i_25_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_26_n_0),
        .O(plusOp_carry__0_i_22_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry__0_i_23
       (.I0(\b_reg_reg_n_0_[2] ),
        .I1(\a_reg_reg_n_0_[2] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\b_reg_reg_n_0_[3] ),
        .I4(\a_reg_reg_n_0_[3] ),
        .O(plusOp_carry__0_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_24
       (.I0(plusOp_carry_i_39_n_0),
        .I1(plusOp_carry__2_i_13_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry_i_33_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_17_n_0),
        .O(plusOp_carry__0_i_24_n_0));
  LUT6 #(
    .INIT(64'h4774FFFF47740000)) 
    plusOp_carry__0_i_25
       (.I0(\a_reg_reg_n_0_[1] ),
        .I1(\b_reg_reg_n_0_[0] ),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(\a_reg_reg_n_0_[2] ),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry__0_i_20_n_0),
        .O(plusOp_carry__0_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_26
       (.I0(plusOp_carry__2_i_15_n_0),
        .I1(plusOp_carry_i_41_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry_i_36_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_25_n_0),
        .O(plusOp_carry__0_i_26_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry__0_i_3
       (.I0(plusOp_carry__0_i_11_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_12_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry__0_i_13_n_0),
        .I5(g0_b5_n_0),
        .O(plusOp_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry__0_i_4
       (.I0(plusOp_carry__0_i_14_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_15_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry__0_i_16_n_0),
        .I5(g0_b4_n_0),
        .O(plusOp_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_5
       (.I0(plusOp_carry_i_19_n_0),
        .I1(plusOp_carry_i_20_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry_i_21_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_22_n_0),
        .O(plusOp_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    plusOp_carry__0_i_6
       (.I0(plusOp_carry__0_i_17_n_0),
        .I1(\b_reg_reg_n_0_[1] ),
        .I2(plusOp_carry__0_i_18_n_0),
        .I3(plusOp_carry_i_23_n_0),
        .I4(\b_reg_reg_n_0_[2] ),
        .O(plusOp_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__0_i_7
       (.I0(plusOp_carry__0_i_19_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__2_i_5_n_0),
        .O(plusOp_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__0_i_8
       (.I0(plusOp_carry_i_27_n_0),
        .I1(plusOp_carry_i_28_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry_i_29_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_30_n_0),
        .O(plusOp_carry__0_i_8_n_0));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    plusOp_carry__0_i_9
       (.I0(plusOp_carry__0_i_20_n_0),
        .I1(\b_reg_reg_n_0_[1] ),
        .I2(plusOp_carry__0_i_21_n_0),
        .I3(plusOp_carry_i_31_n_0),
        .I4(\b_reg_reg_n_0_[2] ),
        .O(plusOp_carry__0_i_9_n_0));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,NLW_plusOp_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b11_n_0,g0_b10_n_0,g0_b9_n_0,g0_b8_n_0}),
        .O(plusOp1_out[11:8]),
        .S({plusOp_carry__1_i_1_n_0,plusOp_carry__1_i_2_n_0,plusOp_carry__1_i_3_n_0,plusOp_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry__1_i_1
       (.I0(plusOp_carry_i_6_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__1_i_5_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry__1_i_6_n_0),
        .I5(g0_b11_n_0),
        .O(plusOp_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__1_i_10
       (.I0(plusOp_carry_i_35_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_11_n_0),
        .O(plusOp_carry__1_i_10_n_0));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    plusOp_carry__1_i_11
       (.I0(plusOp_carry__0_i_21_n_0),
        .I1(\b_reg_reg_n_0_[1] ),
        .I2(plusOp_carry__1_i_15_n_0),
        .I3(plusOp_carry__0_i_25_n_0),
        .I4(\b_reg_reg_n_0_[2] ),
        .O(plusOp_carry__1_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__1_i_12
       (.I0(plusOp_carry_i_38_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_14_n_0),
        .O(plusOp_carry__1_i_12_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry__1_i_13
       (.I0(\a_reg_reg_n_0_[8] ),
        .I1(\b_reg_reg_n_0_[8] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[9] ),
        .I4(\b_reg_reg_n_0_[9] ),
        .O(plusOp_carry__1_i_13_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry__1_i_14
       (.I0(\a_reg_reg_n_0_[10] ),
        .I1(\b_reg_reg_n_0_[10] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[11] ),
        .I4(\b_reg_reg_n_0_[11] ),
        .O(plusOp_carry__1_i_14_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry__1_i_15
       (.I0(\a_reg_reg_n_0_[7] ),
        .I1(\b_reg_reg_n_0_[7] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[8] ),
        .I4(\b_reg_reg_n_0_[8] ),
        .O(plusOp_carry__1_i_15_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry__1_i_16
       (.I0(\a_reg_reg_n_0_[9] ),
        .I1(\b_reg_reg_n_0_[9] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[10] ),
        .I4(\b_reg_reg_n_0_[10] ),
        .O(plusOp_carry__1_i_16_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry__1_i_2
       (.I0(plusOp_carry_i_9_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__1_i_7_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry__1_i_8_n_0),
        .I5(g0_b10_n_0),
        .O(plusOp_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry__1_i_3
       (.I0(plusOp_carry_i_12_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__1_i_9_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry__1_i_10_n_0),
        .I5(g0_b9_n_0),
        .O(plusOp_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry__1_i_4
       (.I0(plusOp_carry_i_15_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__1_i_11_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry__1_i_12_n_0),
        .I5(g0_b8_n_0),
        .O(plusOp_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__1_i_5
       (.I0(plusOp_carry__0_i_17_n_0),
        .I1(plusOp_carry__0_i_18_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry__1_i_13_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry__1_i_14_n_0),
        .O(plusOp_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__1_i_6
       (.I0(plusOp_carry_i_24_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_5_n_0),
        .O(plusOp_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__1_i_7
       (.I0(plusOp_carry__0_i_20_n_0),
        .I1(plusOp_carry__0_i_21_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry__1_i_15_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry__1_i_16_n_0),
        .O(plusOp_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__1_i_8
       (.I0(plusOp_carry_i_32_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_8_n_0),
        .O(plusOp_carry__1_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__1_i_9
       (.I0(plusOp_carry__0_i_23_n_0),
        .I1(plusOp_carry__0_i_17_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry__0_i_18_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry__1_i_13_n_0),
        .O(plusOp_carry__1_i_9_n_0));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,NLW_plusOp_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b15_n_0,g0_b14_n_0,g0_b13_n_0,g0_b12_n_0}),
        .O(plusOp1_out[15:12]),
        .S({plusOp_carry__2_i_1_n_0,plusOp_carry__2_i_2_n_0,plusOp_carry__2_i_3_n_0,plusOp_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__2_i_1
       (.I0(plusOp_carry__2_i_5_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_5_n_0),
        .I3(plusOp_carry__2_i_6_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b15_n_0),
        .O(plusOp_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__2_i_10
       (.I0(plusOp_carry__0_i_24_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_11_n_0),
        .O(plusOp_carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__2_i_11
       (.I0(plusOp_carry__0_i_21_n_0),
        .I1(plusOp_carry__1_i_15_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry__1_i_16_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry__2_i_14_n_0),
        .O(plusOp_carry__2_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__2_i_12
       (.I0(plusOp_carry__0_i_26_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_14_n_0),
        .O(plusOp_carry__2_i_12_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry__2_i_13
       (.I0(\a_reg_reg_n_0_[16] ),
        .I1(\b_reg_reg_n_0_[16] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[17] ),
        .I4(\b_reg_reg_n_0_[17] ),
        .O(plusOp_carry__2_i_13_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry__2_i_14
       (.I0(\a_reg_reg_n_0_[11] ),
        .I1(\b_reg_reg_n_0_[11] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[12] ),
        .I4(\b_reg_reg_n_0_[12] ),
        .O(plusOp_carry__2_i_14_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry__2_i_15
       (.I0(\a_reg_reg_n_0_[13] ),
        .I1(\b_reg_reg_n_0_[13] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[14] ),
        .I4(\b_reg_reg_n_0_[14] ),
        .O(plusOp_carry__2_i_15_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry__2_i_16
       (.I0(\a_reg_reg_n_0_[12] ),
        .I1(\b_reg_reg_n_0_[12] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[13] ),
        .I4(\b_reg_reg_n_0_[13] ),
        .O(plusOp_carry__2_i_16_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry__2_i_2
       (.I0(plusOp_carry__0_i_9_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__2_i_7_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry__2_i_8_n_0),
        .I5(g0_b14_n_0),
        .O(plusOp_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry__2_i_3
       (.I0(plusOp_carry__0_i_12_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__2_i_9_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry__2_i_10_n_0),
        .I5(g0_b13_n_0),
        .O(plusOp_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry__2_i_4
       (.I0(plusOp_carry__0_i_15_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__2_i_11_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry__2_i_12_n_0),
        .I5(g0_b12_n_0),
        .O(plusOp_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__2_i_5
       (.I0(plusOp_carry__2_i_13_n_0),
        .I1(plusOp_carry_i_33_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry_i_17_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_18_n_0),
        .O(plusOp_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__2_i_6
       (.I0(plusOp_carry__0_i_6_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_19_n_0),
        .O(plusOp_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__2_i_7
       (.I0(plusOp_carry__1_i_15_n_0),
        .I1(plusOp_carry__1_i_16_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry__2_i_14_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry__2_i_15_n_0),
        .O(plusOp_carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry__2_i_8
       (.I0(plusOp_carry__0_i_22_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_8_n_0),
        .O(plusOp_carry__2_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry__2_i_9
       (.I0(plusOp_carry__0_i_18_n_0),
        .I1(plusOp_carry__1_i_13_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry__1_i_14_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry__2_i_16_n_0),
        .O(plusOp_carry__2_i_9_n_0));
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,NLW_plusOp_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b19_n_0,g0_b18_n_0,g0_b17_n_0,g0_b16_n_0}),
        .O(plusOp1_out[19:16]),
        .S({plusOp_carry__3_i_1_n_0,plusOp_carry__3_i_2_n_0,plusOp_carry__3_i_3_n_0,plusOp_carry__3_i_4_n_0}));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__3_i_1
       (.I0(plusOp_carry_i_5_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_6_n_0),
        .I3(plusOp_carry_i_7_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b19_n_0),
        .O(plusOp_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__3_i_2
       (.I0(plusOp_carry_i_8_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_9_n_0),
        .I3(plusOp_carry_i_10_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b18_n_0),
        .O(plusOp_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__3_i_3
       (.I0(plusOp_carry_i_11_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_12_n_0),
        .I3(plusOp_carry_i_13_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b17_n_0),
        .O(plusOp_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__3_i_4
       (.I0(plusOp_carry_i_14_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_15_n_0),
        .I3(plusOp_carry_i_16_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b16_n_0),
        .O(plusOp_carry__3_i_4_n_0));
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,NLW_plusOp_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b23_n_0,g0_b22_n_0,g0_b21_n_0,g0_b20_n_0}),
        .O(plusOp1_out[23:20]),
        .S({plusOp_carry__4_i_1_n_0,plusOp_carry__4_i_2_n_0,plusOp_carry__4_i_3_n_0,plusOp_carry__4_i_4_n_0}));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__4_i_1
       (.I0(plusOp_carry__0_i_5_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_6_n_0),
        .I3(plusOp_carry__0_i_7_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b23_n_0),
        .O(plusOp_carry__4_i_1_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__4_i_2
       (.I0(plusOp_carry__0_i_8_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_9_n_0),
        .I3(plusOp_carry__0_i_10_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b22_n_0),
        .O(plusOp_carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__4_i_3
       (.I0(plusOp_carry__0_i_11_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_12_n_0),
        .I3(plusOp_carry__0_i_13_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b21_n_0),
        .O(plusOp_carry__4_i_3_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__4_i_4
       (.I0(plusOp_carry__0_i_14_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_15_n_0),
        .I3(plusOp_carry__0_i_16_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b20_n_0),
        .O(plusOp_carry__4_i_4_n_0));
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,NLW_plusOp_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g0_b27_n_0,g0_b26_n_0,g0_b25_n_0,g0_b24_n_0}),
        .O(plusOp1_out[27:24]),
        .S({plusOp_carry__5_i_1_n_0,plusOp_carry__5_i_2_n_0,plusOp_carry__5_i_3_n_0,plusOp_carry__5_i_4_n_0}));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__5_i_1
       (.I0(plusOp_carry_i_6_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__1_i_5_n_0),
        .I3(plusOp_carry__1_i_6_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b27_n_0),
        .O(plusOp_carry__5_i_1_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__5_i_2
       (.I0(plusOp_carry_i_9_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__1_i_7_n_0),
        .I3(plusOp_carry__1_i_8_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b26_n_0),
        .O(plusOp_carry__5_i_2_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__5_i_3
       (.I0(plusOp_carry_i_12_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__1_i_9_n_0),
        .I3(plusOp_carry__1_i_10_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b25_n_0),
        .O(plusOp_carry__5_i_3_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__5_i_4
       (.I0(plusOp_carry_i_15_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__1_i_11_n_0),
        .I3(plusOp_carry__1_i_12_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b24_n_0),
        .O(plusOp_carry__5_i_4_n_0));
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO(NLW_plusOp_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,g0_b30_n_0,g0_b29_n_0,g0_b28_n_0}),
        .O(plusOp1_out[31:28]),
        .S({plusOp_carry__6_i_1_n_0,plusOp_carry__6_i_2_n_0,plusOp_carry__6_i_3_n_0,plusOp_carry__6_i_4_n_0}));
  LUT6 #(
    .INIT(64'h00FF47B8FF0047B8)) 
    plusOp_carry__6_i_1
       (.I0(plusOp_carry__2_i_5_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__0_i_5_n_0),
        .I3(g0_b31_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(plusOp_carry__2_i_6_n_0),
        .O(plusOp_carry__6_i_1_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__6_i_2
       (.I0(plusOp_carry__0_i_9_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__2_i_7_n_0),
        .I3(plusOp_carry__2_i_8_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b30_n_0),
        .O(plusOp_carry__6_i_2_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__6_i_3
       (.I0(plusOp_carry__0_i_12_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__2_i_9_n_0),
        .I3(plusOp_carry__2_i_10_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b29_n_0),
        .O(plusOp_carry__6_i_3_n_0));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    plusOp_carry__6_i_4
       (.I0(plusOp_carry__0_i_15_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry__2_i_11_n_0),
        .I3(plusOp_carry__2_i_12_n_0),
        .I4(\b_reg_reg_n_0_[4] ),
        .I5(g0_b28_n_0),
        .O(plusOp_carry__6_i_4_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry_i_1
       (.I0(plusOp_carry_i_5_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_6_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry_i_7_n_0),
        .I5(g0_b3_n_0),
        .O(plusOp_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry_i_10
       (.I0(plusOp_carry__1_i_7_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_32_n_0),
        .O(plusOp_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_11
       (.I0(plusOp_carry_i_33_n_0),
        .I1(plusOp_carry_i_17_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry_i_18_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_19_n_0),
        .O(plusOp_carry_i_11_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    plusOp_carry_i_12
       (.I0(plusOp_carry_i_20_n_0),
        .I1(\b_reg_reg_n_0_[1] ),
        .I2(plusOp_carry_i_21_n_0),
        .I3(\b_reg_reg_n_0_[2] ),
        .I4(plusOp_carry_i_34_n_0),
        .O(plusOp_carry_i_12_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry_i_13
       (.I0(plusOp_carry__1_i_9_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_35_n_0),
        .O(plusOp_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_14
       (.I0(plusOp_carry_i_36_n_0),
        .I1(plusOp_carry_i_25_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry_i_26_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_27_n_0),
        .O(plusOp_carry_i_14_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    plusOp_carry_i_15
       (.I0(plusOp_carry_i_28_n_0),
        .I1(\b_reg_reg_n_0_[1] ),
        .I2(plusOp_carry_i_29_n_0),
        .I3(\b_reg_reg_n_0_[2] ),
        .I4(plusOp_carry_i_37_n_0),
        .O(plusOp_carry_i_15_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry_i_16
       (.I0(plusOp_carry__1_i_11_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_38_n_0),
        .O(plusOp_carry_i_16_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_17
       (.I0(\a_reg_reg_n_0_[20] ),
        .I1(\b_reg_reg_n_0_[20] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[21] ),
        .I4(\b_reg_reg_n_0_[21] ),
        .O(plusOp_carry_i_17_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_18
       (.I0(\a_reg_reg_n_0_[22] ),
        .I1(\b_reg_reg_n_0_[22] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[23] ),
        .I4(\b_reg_reg_n_0_[23] ),
        .O(plusOp_carry_i_18_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_19
       (.I0(\a_reg_reg_n_0_[24] ),
        .I1(\b_reg_reg_n_0_[24] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[25] ),
        .I4(\b_reg_reg_n_0_[25] ),
        .O(plusOp_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry_i_2
       (.I0(plusOp_carry_i_8_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_9_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry_i_10_n_0),
        .I5(g0_b2_n_0),
        .O(plusOp_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_20
       (.I0(\a_reg_reg_n_0_[26] ),
        .I1(\b_reg_reg_n_0_[26] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[27] ),
        .I4(\b_reg_reg_n_0_[27] ),
        .O(plusOp_carry_i_20_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_21
       (.I0(\a_reg_reg_n_0_[28] ),
        .I1(\b_reg_reg_n_0_[28] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[29] ),
        .I4(\b_reg_reg_n_0_[29] ),
        .O(plusOp_carry_i_21_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_22
       (.I0(\a_reg_reg_n_0_[30] ),
        .I1(\b_reg_reg_n_0_[30] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[31] ),
        .I4(\b_reg_reg_n_0_[31] ),
        .O(plusOp_carry_i_22_n_0));
  LUT5 #(
    .INIT(32'h47FF4700)) 
    plusOp_carry_i_23
       (.I0(\a_reg_reg_n_0_[0] ),
        .I1(\b_reg_reg_n_0_[0] ),
        .I2(\a_reg_reg_n_0_[1] ),
        .I3(\b_reg_reg_n_0_[1] ),
        .I4(plusOp_carry__0_i_23_n_0),
        .O(plusOp_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_24
       (.I0(plusOp_carry__2_i_16_n_0),
        .I1(plusOp_carry_i_39_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry__2_i_13_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_33_n_0),
        .O(plusOp_carry_i_24_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_25
       (.I0(\a_reg_reg_n_0_[19] ),
        .I1(\b_reg_reg_n_0_[19] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[20] ),
        .I4(\b_reg_reg_n_0_[20] ),
        .O(plusOp_carry_i_25_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_26
       (.I0(\a_reg_reg_n_0_[21] ),
        .I1(\b_reg_reg_n_0_[21] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[22] ),
        .I4(\b_reg_reg_n_0_[22] ),
        .O(plusOp_carry_i_26_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_27
       (.I0(\a_reg_reg_n_0_[23] ),
        .I1(\b_reg_reg_n_0_[23] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[24] ),
        .I4(\b_reg_reg_n_0_[24] ),
        .O(plusOp_carry_i_27_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_28
       (.I0(\a_reg_reg_n_0_[25] ),
        .I1(\b_reg_reg_n_0_[25] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[26] ),
        .I4(\b_reg_reg_n_0_[26] ),
        .O(plusOp_carry_i_28_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_29
       (.I0(\a_reg_reg_n_0_[27] ),
        .I1(\b_reg_reg_n_0_[27] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[28] ),
        .I4(\b_reg_reg_n_0_[28] ),
        .O(plusOp_carry_i_29_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry_i_3
       (.I0(plusOp_carry_i_11_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_12_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry_i_13_n_0),
        .I5(g0_b1_n_0),
        .O(plusOp_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_30
       (.I0(\a_reg_reg_n_0_[29] ),
        .I1(\b_reg_reg_n_0_[29] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[30] ),
        .I4(\b_reg_reg_n_0_[30] ),
        .O(plusOp_carry_i_30_n_0));
  LUT6 #(
    .INIT(64'h6F60FFFF6F600000)) 
    plusOp_carry_i_31
       (.I0(\a_reg_reg_n_0_[31] ),
        .I1(\b_reg_reg_n_0_[31] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[0] ),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_40_n_0),
        .O(plusOp_carry_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_32
       (.I0(plusOp_carry__2_i_14_n_0),
        .I1(plusOp_carry__2_i_15_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry_i_41_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_36_n_0),
        .O(plusOp_carry_i_32_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_33
       (.I0(\a_reg_reg_n_0_[18] ),
        .I1(\b_reg_reg_n_0_[18] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[19] ),
        .I4(\b_reg_reg_n_0_[19] ),
        .O(plusOp_carry_i_33_n_0));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    plusOp_carry_i_34
       (.I0(plusOp_carry_i_22_n_0),
        .I1(\b_reg_reg_n_0_[1] ),
        .I2(\a_reg_reg_n_0_[0] ),
        .I3(\b_reg_reg_n_0_[0] ),
        .I4(\a_reg_reg_n_0_[1] ),
        .O(plusOp_carry_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_35
       (.I0(plusOp_carry__1_i_14_n_0),
        .I1(plusOp_carry__2_i_16_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry_i_39_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry__2_i_13_n_0),
        .O(plusOp_carry_i_35_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_36
       (.I0(\a_reg_reg_n_0_[17] ),
        .I1(\b_reg_reg_n_0_[17] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[18] ),
        .I4(\b_reg_reg_n_0_[18] ),
        .O(plusOp_carry_i_36_n_0));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    plusOp_carry_i_37
       (.I0(plusOp_carry_i_30_n_0),
        .I1(\b_reg_reg_n_0_[1] ),
        .I2(\a_reg_reg_n_0_[31] ),
        .I3(\b_reg_reg_n_0_[31] ),
        .I4(\b_reg_reg_n_0_[0] ),
        .I5(\a_reg_reg_n_0_[0] ),
        .O(plusOp_carry_i_37_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_38
       (.I0(plusOp_carry__1_i_16_n_0),
        .I1(plusOp_carry__2_i_14_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry__2_i_15_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_41_n_0),
        .O(plusOp_carry_i_38_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_39
       (.I0(\a_reg_reg_n_0_[14] ),
        .I1(\b_reg_reg_n_0_[14] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[15] ),
        .I4(\b_reg_reg_n_0_[15] ),
        .O(plusOp_carry_i_39_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    plusOp_carry_i_4
       (.I0(plusOp_carry_i_14_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_15_n_0),
        .I3(\b_reg_reg_n_0_[4] ),
        .I4(plusOp_carry_i_16_n_0),
        .I5(g0_b0_n_0),
        .O(plusOp_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_40
       (.I0(\b_reg_reg_n_0_[1] ),
        .I1(\a_reg_reg_n_0_[1] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\b_reg_reg_n_0_[2] ),
        .I4(\a_reg_reg_n_0_[2] ),
        .O(plusOp_carry_i_40_n_0));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    plusOp_carry_i_41
       (.I0(\a_reg_reg_n_0_[15] ),
        .I1(\b_reg_reg_n_0_[15] ),
        .I2(\b_reg_reg_n_0_[0] ),
        .I3(\a_reg_reg_n_0_[16] ),
        .I4(\b_reg_reg_n_0_[16] ),
        .O(plusOp_carry_i_41_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_5
       (.I0(plusOp_carry_i_17_n_0),
        .I1(plusOp_carry_i_18_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry_i_19_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_20_n_0),
        .O(plusOp_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    plusOp_carry_i_6
       (.I0(plusOp_carry_i_21_n_0),
        .I1(\b_reg_reg_n_0_[1] ),
        .I2(plusOp_carry_i_22_n_0),
        .I3(\b_reg_reg_n_0_[2] ),
        .I4(plusOp_carry_i_23_n_0),
        .O(plusOp_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    plusOp_carry_i_7
       (.I0(plusOp_carry__1_i_5_n_0),
        .I1(\b_reg_reg_n_0_[3] ),
        .I2(plusOp_carry_i_24_n_0),
        .O(plusOp_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    plusOp_carry_i_8
       (.I0(plusOp_carry_i_25_n_0),
        .I1(plusOp_carry_i_26_n_0),
        .I2(\b_reg_reg_n_0_[2] ),
        .I3(plusOp_carry_i_27_n_0),
        .I4(\b_reg_reg_n_0_[1] ),
        .I5(plusOp_carry_i_28_n_0),
        .O(plusOp_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    plusOp_carry_i_9
       (.I0(plusOp_carry_i_29_n_0),
        .I1(\b_reg_reg_n_0_[1] ),
        .I2(plusOp_carry_i_30_n_0),
        .I3(\b_reg_reg_n_0_[2] ),
        .I4(plusOp_carry_i_31_n_0),
        .O(plusOp_carry_i_9_n_0));
endmodule

(* ECO_CHECKSUM = "95658c2c" *) 
(* NotValidForBitStream *)
module rc5_enc_fpga
   (clk,
    clr,
    io_sw,
    ab_sw,
    mod_hex,
    up_btn,
    down_btn,
    di_vld,
    do_rdy,
    disp_sel,
    disp_val);
  input clk;
  input clr;
  input io_sw;
  input ab_sw;
  input [7:0]mod_hex;
  input up_btn;
  input down_btn;
  input di_vld;
  output do_rdy;
  output [7:0]disp_sel;
  output [7:0]disp_val;

  wire [7:4]L;
  wire [19:16]L10_in;
  wire [23:20]L13_in;
  wire [27:24]L16_in;
  wire [31:28]L19_in;
  wire [35:32]L21_in;
  wire [39:36]L23_in;
  wire [43:40]L25_in;
  wire [47:44]L27_in;
  wire [51:48]L29_in;
  wire [55:52]L31_in;
  wire [59:56]L33_in;
  wire [63:60]L35_in;
  wire [11:8]L4_in;
  wire [15:12]L7_in;
  wire ab_sw;
  wire ab_sw_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clr;
  wire clr_IBUF;
  wire di_vld;
  wire di_vld_IBUF;
  wire \din[31]_i_1_n_0 ;
  wire \din[63]_i_1_n_0 ;
  wire \din[63]_i_3_n_0 ;
  wire \din_reg_n_0_[0] ;
  wire \din_reg_n_0_[1] ;
  wire \din_reg_n_0_[2] ;
  wire \din_reg_n_0_[3] ;
  wire \disp_clk[0]_i_2_n_0 ;
  wire \disp_clk_reg[0]_i_1_n_0 ;
  wire \disp_clk_reg[0]_i_1_n_4 ;
  wire \disp_clk_reg[0]_i_1_n_5 ;
  wire \disp_clk_reg[0]_i_1_n_6 ;
  wire \disp_clk_reg[0]_i_1_n_7 ;
  wire \disp_clk_reg[12]_i_1_n_0 ;
  wire \disp_clk_reg[12]_i_1_n_4 ;
  wire \disp_clk_reg[12]_i_1_n_5 ;
  wire \disp_clk_reg[12]_i_1_n_6 ;
  wire \disp_clk_reg[12]_i_1_n_7 ;
  wire \disp_clk_reg[16]_i_1_n_5 ;
  wire \disp_clk_reg[16]_i_1_n_6 ;
  wire \disp_clk_reg[16]_i_1_n_7 ;
  wire \disp_clk_reg[4]_i_1_n_0 ;
  wire \disp_clk_reg[4]_i_1_n_4 ;
  wire \disp_clk_reg[4]_i_1_n_5 ;
  wire \disp_clk_reg[4]_i_1_n_6 ;
  wire \disp_clk_reg[4]_i_1_n_7 ;
  wire \disp_clk_reg[8]_i_1_n_0 ;
  wire \disp_clk_reg[8]_i_1_n_4 ;
  wire \disp_clk_reg[8]_i_1_n_5 ;
  wire \disp_clk_reg[8]_i_1_n_6 ;
  wire \disp_clk_reg[8]_i_1_n_7 ;
  wire \disp_clk_reg_n_0_[0] ;
  wire \disp_clk_reg_n_0_[10] ;
  wire \disp_clk_reg_n_0_[11] ;
  wire \disp_clk_reg_n_0_[12] ;
  wire \disp_clk_reg_n_0_[13] ;
  wire \disp_clk_reg_n_0_[14] ;
  wire \disp_clk_reg_n_0_[15] ;
  wire \disp_clk_reg_n_0_[1] ;
  wire \disp_clk_reg_n_0_[2] ;
  wire \disp_clk_reg_n_0_[3] ;
  wire \disp_clk_reg_n_0_[4] ;
  wire \disp_clk_reg_n_0_[5] ;
  wire \disp_clk_reg_n_0_[6] ;
  wire \disp_clk_reg_n_0_[7] ;
  wire \disp_clk_reg_n_0_[8] ;
  wire \disp_clk_reg_n_0_[9] ;
  wire [3:0]disp_hex;
  wire [7:0]disp_sel;
  wire \disp_sel[1]_i_1_n_0 ;
  wire \disp_sel[5]_i_1_n_0 ;
  wire \disp_sel[5]_i_2_n_0 ;
  wire \disp_sel[6]_i_1_n_0 ;
  wire \disp_sel[7]_i_1_n_0 ;
  wire \disp_sel[7]_i_2_n_0 ;
  wire [7:0]disp_sel_OBUF;
  wire [7:0]disp_val;
  wire [6:0]disp_val_OBUF;
  wire do_rdy;
  wire do_rdy_OBUF;
  wire down_btn;
  wire down_btn_IBUF;
  wire down_buf;
  wire io_sw;
  wire io_sw_IBUF;
  wire [7:0]mod_hex;
  wire [7:0]mod_hex_IBUF;
  wire [63:0]p_1_in;
  wire [2:0]sel0;
  wire up_btn;
  wire up_btn_IBUF;
  wire up_buf;
  wire uut0_n_5;
  wire [3:0]x;
  wire [2:0]\NLW_disp_clk_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_disp_clk_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_disp_clk_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_disp_clk_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_disp_clk_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_disp_clk_reg[8]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("rc5_enc_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF ab_sw_IBUF_inst
       (.I(ab_sw),
        .O(ab_sw_IBUF));
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[0]_i_1 
       (.I0(\din_reg_n_0_[0] ),
        .I1(mod_hex_IBUF[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[10]_i_1 
       (.I0(L4_in[10]),
        .I1(L4_in[9]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[2]),
        .I5(L4_in[8]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[11]_i_1 
       (.I0(L4_in[11]),
        .I1(L4_in[10]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L4_in[8]),
        .I4(mod_hex_IBUF[2]),
        .I5(L4_in[9]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[12]_i_1 
       (.I0(L7_in[12]),
        .I1(mod_hex_IBUF[3]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[13]_i_1 
       (.I0(L7_in[13]),
        .I1(L7_in[12]),
        .I2(mod_hex_IBUF[3]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[14]_i_1 
       (.I0(L7_in[14]),
        .I1(L7_in[13]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[3]),
        .I5(L7_in[12]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[15]_i_1 
       (.I0(L7_in[15]),
        .I1(L7_in[14]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L7_in[12]),
        .I4(mod_hex_IBUF[3]),
        .I5(L7_in[13]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[16]_i_1 
       (.I0(L10_in[16]),
        .I1(mod_hex_IBUF[4]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[17]_i_1 
       (.I0(L10_in[17]),
        .I1(L10_in[16]),
        .I2(mod_hex_IBUF[4]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[18]_i_1 
       (.I0(L10_in[18]),
        .I1(L10_in[17]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[4]),
        .I5(L10_in[16]),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[19]_i_1 
       (.I0(L10_in[19]),
        .I1(L10_in[18]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L10_in[16]),
        .I4(mod_hex_IBUF[4]),
        .I5(L10_in[17]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[1]_i_1 
       (.I0(\din_reg_n_0_[1] ),
        .I1(\din_reg_n_0_[0] ),
        .I2(mod_hex_IBUF[0]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[20]_i_1 
       (.I0(L13_in[20]),
        .I1(mod_hex_IBUF[5]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[21]_i_1 
       (.I0(L13_in[21]),
        .I1(L13_in[20]),
        .I2(mod_hex_IBUF[5]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[22]_i_1 
       (.I0(L13_in[22]),
        .I1(L13_in[21]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[5]),
        .I5(L13_in[20]),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[23]_i_1 
       (.I0(L13_in[23]),
        .I1(L13_in[22]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L13_in[20]),
        .I4(mod_hex_IBUF[5]),
        .I5(L13_in[21]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[24]_i_1 
       (.I0(L16_in[24]),
        .I1(mod_hex_IBUF[6]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[25]_i_1 
       (.I0(L16_in[25]),
        .I1(L16_in[24]),
        .I2(mod_hex_IBUF[6]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[26]_i_1 
       (.I0(L16_in[26]),
        .I1(L16_in[25]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[6]),
        .I5(L16_in[24]),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[27]_i_1 
       (.I0(L16_in[27]),
        .I1(L16_in[26]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L16_in[24]),
        .I4(mod_hex_IBUF[6]),
        .I5(L16_in[25]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[28]_i_1 
       (.I0(L19_in[28]),
        .I1(mod_hex_IBUF[7]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[29]_i_1 
       (.I0(L19_in[29]),
        .I1(L19_in[28]),
        .I2(mod_hex_IBUF[7]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[2]_i_1 
       (.I0(\din_reg_n_0_[2] ),
        .I1(\din_reg_n_0_[1] ),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[0]),
        .I5(\din_reg_n_0_[0] ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[30]_i_1 
       (.I0(L19_in[30]),
        .I1(L19_in[29]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[7]),
        .I5(L19_in[28]),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'h0040444400400040)) 
    \din[31]_i_1 
       (.I0(io_sw_IBUF),
        .I1(ab_sw_IBUF),
        .I2(up_btn_IBUF),
        .I3(up_buf),
        .I4(down_buf),
        .I5(down_btn_IBUF),
        .O(\din[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[31]_i_2 
       (.I0(L19_in[31]),
        .I1(L19_in[30]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L19_in[28]),
        .I4(mod_hex_IBUF[7]),
        .I5(L19_in[29]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[32]_i_1 
       (.I0(L21_in[32]),
        .I1(mod_hex_IBUF[0]),
        .O(p_1_in[32]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[33]_i_1 
       (.I0(L21_in[33]),
        .I1(L21_in[32]),
        .I2(mod_hex_IBUF[0]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[33]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[34]_i_1 
       (.I0(L21_in[34]),
        .I1(L21_in[33]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[0]),
        .I5(L21_in[32]),
        .O(p_1_in[34]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[35]_i_1 
       (.I0(L21_in[35]),
        .I1(L21_in[34]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L21_in[32]),
        .I4(mod_hex_IBUF[0]),
        .I5(L21_in[33]),
        .O(p_1_in[35]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[36]_i_1 
       (.I0(L23_in[36]),
        .I1(mod_hex_IBUF[1]),
        .O(p_1_in[36]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[37]_i_1 
       (.I0(L23_in[37]),
        .I1(L23_in[36]),
        .I2(mod_hex_IBUF[1]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[37]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[38]_i_1 
       (.I0(L23_in[38]),
        .I1(L23_in[37]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[1]),
        .I5(L23_in[36]),
        .O(p_1_in[38]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[39]_i_1 
       (.I0(L23_in[39]),
        .I1(L23_in[38]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L23_in[36]),
        .I4(mod_hex_IBUF[1]),
        .I5(L23_in[37]),
        .O(p_1_in[39]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[3]_i_1 
       (.I0(\din_reg_n_0_[3] ),
        .I1(\din_reg_n_0_[2] ),
        .I2(\din[63]_i_3_n_0 ),
        .I3(\din_reg_n_0_[0] ),
        .I4(mod_hex_IBUF[0]),
        .I5(\din_reg_n_0_[1] ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[40]_i_1 
       (.I0(L25_in[40]),
        .I1(mod_hex_IBUF[2]),
        .O(p_1_in[40]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[41]_i_1 
       (.I0(L25_in[41]),
        .I1(L25_in[40]),
        .I2(mod_hex_IBUF[2]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[41]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[42]_i_1 
       (.I0(L25_in[42]),
        .I1(L25_in[41]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[2]),
        .I5(L25_in[40]),
        .O(p_1_in[42]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[43]_i_1 
       (.I0(L25_in[43]),
        .I1(L25_in[42]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L25_in[40]),
        .I4(mod_hex_IBUF[2]),
        .I5(L25_in[41]),
        .O(p_1_in[43]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[44]_i_1 
       (.I0(L27_in[44]),
        .I1(mod_hex_IBUF[3]),
        .O(p_1_in[44]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[45]_i_1 
       (.I0(L27_in[45]),
        .I1(L27_in[44]),
        .I2(mod_hex_IBUF[3]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[45]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[46]_i_1 
       (.I0(L27_in[46]),
        .I1(L27_in[45]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[3]),
        .I5(L27_in[44]),
        .O(p_1_in[46]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[47]_i_1 
       (.I0(L27_in[47]),
        .I1(L27_in[46]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L27_in[44]),
        .I4(mod_hex_IBUF[3]),
        .I5(L27_in[45]),
        .O(p_1_in[47]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[48]_i_1 
       (.I0(L29_in[48]),
        .I1(mod_hex_IBUF[4]),
        .O(p_1_in[48]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[49]_i_1 
       (.I0(L29_in[49]),
        .I1(L29_in[48]),
        .I2(mod_hex_IBUF[4]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[49]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[4]_i_1 
       (.I0(L[4]),
        .I1(mod_hex_IBUF[1]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[50]_i_1 
       (.I0(L29_in[50]),
        .I1(L29_in[49]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[4]),
        .I5(L29_in[48]),
        .O(p_1_in[50]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[51]_i_1 
       (.I0(L29_in[51]),
        .I1(L29_in[50]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L29_in[48]),
        .I4(mod_hex_IBUF[4]),
        .I5(L29_in[49]),
        .O(p_1_in[51]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[52]_i_1 
       (.I0(L31_in[52]),
        .I1(mod_hex_IBUF[5]),
        .O(p_1_in[52]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[53]_i_1 
       (.I0(L31_in[53]),
        .I1(L31_in[52]),
        .I2(mod_hex_IBUF[5]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[53]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[54]_i_1 
       (.I0(L31_in[54]),
        .I1(L31_in[53]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[5]),
        .I5(L31_in[52]),
        .O(p_1_in[54]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[55]_i_1 
       (.I0(L31_in[55]),
        .I1(L31_in[54]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L31_in[52]),
        .I4(mod_hex_IBUF[5]),
        .I5(L31_in[53]),
        .O(p_1_in[55]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[56]_i_1 
       (.I0(L33_in[56]),
        .I1(mod_hex_IBUF[6]),
        .O(p_1_in[56]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[57]_i_1 
       (.I0(L33_in[57]),
        .I1(L33_in[56]),
        .I2(mod_hex_IBUF[6]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[57]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[58]_i_1 
       (.I0(L33_in[58]),
        .I1(L33_in[57]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[6]),
        .I5(L33_in[56]),
        .O(p_1_in[58]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[59]_i_1 
       (.I0(L33_in[59]),
        .I1(L33_in[58]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L33_in[56]),
        .I4(mod_hex_IBUF[6]),
        .I5(L33_in[57]),
        .O(p_1_in[59]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[5]_i_1 
       (.I0(L[5]),
        .I1(L[4]),
        .I2(mod_hex_IBUF[1]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[60]_i_1 
       (.I0(L35_in[60]),
        .I1(mod_hex_IBUF[7]),
        .O(p_1_in[60]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[61]_i_1 
       (.I0(L35_in[61]),
        .I1(L35_in[60]),
        .I2(mod_hex_IBUF[7]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[61]));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[62]_i_1 
       (.I0(L35_in[62]),
        .I1(L35_in[61]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[7]),
        .I5(L35_in[60]),
        .O(p_1_in[62]));
  LUT6 #(
    .INIT(64'h0010111100100010)) 
    \din[63]_i_1 
       (.I0(ab_sw_IBUF),
        .I1(io_sw_IBUF),
        .I2(up_btn_IBUF),
        .I3(up_buf),
        .I4(down_buf),
        .I5(down_btn_IBUF),
        .O(\din[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[63]_i_2 
       (.I0(L35_in[63]),
        .I1(L35_in[62]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L35_in[60]),
        .I4(mod_hex_IBUF[7]),
        .I5(L35_in[61]),
        .O(p_1_in[63]));
  LUT2 #(
    .INIT(4'h2)) 
    \din[63]_i_3 
       (.I0(up_btn_IBUF),
        .I1(up_buf),
        .O(\din[63]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAA9A99AAAA)) 
    \din[6]_i_1 
       (.I0(L[6]),
        .I1(L[5]),
        .I2(up_buf),
        .I3(up_btn_IBUF),
        .I4(mod_hex_IBUF[1]),
        .I5(L[4]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAAA)) 
    \din[7]_i_1 
       (.I0(L[7]),
        .I1(L[6]),
        .I2(\din[63]_i_3_n_0 ),
        .I3(L[4]),
        .I4(mod_hex_IBUF[1]),
        .I5(L[5]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \din[8]_i_1 
       (.I0(L4_in[8]),
        .I1(mod_hex_IBUF[2]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h9A6A9A9A)) 
    \din[9]_i_1 
       (.I0(L4_in[9]),
        .I1(L4_in[8]),
        .I2(mod_hex_IBUF[2]),
        .I3(up_buf),
        .I4(up_btn_IBUF),
        .O(p_1_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[0]),
        .Q(\din_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[10]),
        .Q(L4_in[10]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[11]),
        .Q(L4_in[11]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[12]),
        .Q(L7_in[12]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[13]),
        .Q(L7_in[13]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[14]),
        .Q(L7_in[14]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[15]),
        .Q(L7_in[15]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[16]),
        .Q(L10_in[16]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[17]),
        .Q(L10_in[17]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[18]),
        .Q(L10_in[18]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[19]),
        .Q(L10_in[19]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[1]),
        .Q(\din_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[20]),
        .Q(L13_in[20]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[21]),
        .Q(L13_in[21]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[22]),
        .Q(L13_in[22]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[23]),
        .Q(L13_in[23]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[24]),
        .Q(L16_in[24]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[25]),
        .Q(L16_in[25]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[26]),
        .Q(L16_in[26]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[27]),
        .Q(L16_in[27]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[28]),
        .Q(L19_in[28]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[29]),
        .Q(L19_in[29]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[2]),
        .Q(\din_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[30]),
        .Q(L19_in[30]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[31]),
        .Q(L19_in[31]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[32]),
        .Q(L21_in[32]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[33]),
        .Q(L21_in[33]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[34]),
        .Q(L21_in[34]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[35]),
        .Q(L21_in[35]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[36]),
        .Q(L23_in[36]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[37]),
        .Q(L23_in[37]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[38]),
        .Q(L23_in[38]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[39]),
        .Q(L23_in[39]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[3]),
        .Q(\din_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[40]),
        .Q(L25_in[40]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[41]),
        .Q(L25_in[41]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[42]),
        .Q(L25_in[42]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[43]),
        .Q(L25_in[43]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[44]),
        .Q(L27_in[44]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[45]),
        .Q(L27_in[45]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[46]),
        .Q(L27_in[46]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[47]),
        .Q(L27_in[47]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[48]),
        .Q(L29_in[48]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[49]),
        .Q(L29_in[49]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[4]),
        .Q(L[4]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[50]),
        .Q(L29_in[50]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[51]),
        .Q(L29_in[51]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[52]),
        .Q(L31_in[52]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[53]),
        .Q(L31_in[53]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[54]),
        .Q(L31_in[54]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[55]),
        .Q(L31_in[55]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[56]),
        .Q(L33_in[56]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[57]),
        .Q(L33_in[57]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[58]),
        .Q(L33_in[58]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[59]),
        .Q(L33_in[59]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[5]),
        .Q(L[5]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[60]),
        .Q(L35_in[60]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[61]),
        .Q(L35_in[61]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[62]),
        .Q(L35_in[62]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[63]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[63]),
        .Q(L35_in[63]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[6]),
        .Q(L[6]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[7]),
        .Q(L[7]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[8]),
        .Q(L4_in[8]));
  FDCE #(
    .INIT(1'b0)) 
    \din_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(uut0_n_5),
        .D(p_1_in[9]),
        .Q(L4_in[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \disp_clk[0]_i_2 
       (.I0(\disp_clk_reg_n_0_[0] ),
        .O(\disp_clk[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[0]_i_1_n_7 ),
        .Q(\disp_clk_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \disp_clk_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\disp_clk_reg[0]_i_1_n_0 ,\NLW_disp_clk_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\disp_clk_reg[0]_i_1_n_4 ,\disp_clk_reg[0]_i_1_n_5 ,\disp_clk_reg[0]_i_1_n_6 ,\disp_clk_reg[0]_i_1_n_7 }),
        .S({\disp_clk_reg_n_0_[3] ,\disp_clk_reg_n_0_[2] ,\disp_clk_reg_n_0_[1] ,\disp_clk[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[8]_i_1_n_5 ),
        .Q(\disp_clk_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[8]_i_1_n_4 ),
        .Q(\disp_clk_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[12]_i_1_n_7 ),
        .Q(\disp_clk_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \disp_clk_reg[12]_i_1 
       (.CI(\disp_clk_reg[8]_i_1_n_0 ),
        .CO({\disp_clk_reg[12]_i_1_n_0 ,\NLW_disp_clk_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\disp_clk_reg[12]_i_1_n_4 ,\disp_clk_reg[12]_i_1_n_5 ,\disp_clk_reg[12]_i_1_n_6 ,\disp_clk_reg[12]_i_1_n_7 }),
        .S({\disp_clk_reg_n_0_[15] ,\disp_clk_reg_n_0_[14] ,\disp_clk_reg_n_0_[13] ,\disp_clk_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[12]_i_1_n_6 ),
        .Q(\disp_clk_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[12]_i_1_n_5 ),
        .Q(\disp_clk_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[12]_i_1_n_4 ),
        .Q(\disp_clk_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[16]_i_1_n_7 ),
        .Q(sel0[0]),
        .R(1'b0));
  CARRY4 \disp_clk_reg[16]_i_1 
       (.CI(\disp_clk_reg[12]_i_1_n_0 ),
        .CO(\NLW_disp_clk_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_disp_clk_reg[16]_i_1_O_UNCONNECTED [3],\disp_clk_reg[16]_i_1_n_5 ,\disp_clk_reg[16]_i_1_n_6 ,\disp_clk_reg[16]_i_1_n_7 }),
        .S({1'b0,sel0}));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[16]_i_1_n_6 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[16]_i_1_n_5 ),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[0]_i_1_n_6 ),
        .Q(\disp_clk_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[0]_i_1_n_5 ),
        .Q(\disp_clk_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[0]_i_1_n_4 ),
        .Q(\disp_clk_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[4]_i_1_n_7 ),
        .Q(\disp_clk_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \disp_clk_reg[4]_i_1 
       (.CI(\disp_clk_reg[0]_i_1_n_0 ),
        .CO({\disp_clk_reg[4]_i_1_n_0 ,\NLW_disp_clk_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\disp_clk_reg[4]_i_1_n_4 ,\disp_clk_reg[4]_i_1_n_5 ,\disp_clk_reg[4]_i_1_n_6 ,\disp_clk_reg[4]_i_1_n_7 }),
        .S({\disp_clk_reg_n_0_[7] ,\disp_clk_reg_n_0_[6] ,\disp_clk_reg_n_0_[5] ,\disp_clk_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[4]_i_1_n_6 ),
        .Q(\disp_clk_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[4]_i_1_n_5 ),
        .Q(\disp_clk_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[4]_i_1_n_4 ),
        .Q(\disp_clk_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[8]_i_1_n_7 ),
        .Q(\disp_clk_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \disp_clk_reg[8]_i_1 
       (.CI(\disp_clk_reg[4]_i_1_n_0 ),
        .CO({\disp_clk_reg[8]_i_1_n_0 ,\NLW_disp_clk_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\disp_clk_reg[8]_i_1_n_4 ,\disp_clk_reg[8]_i_1_n_5 ,\disp_clk_reg[8]_i_1_n_6 ,\disp_clk_reg[8]_i_1_n_7 }),
        .S({\disp_clk_reg_n_0_[11] ,\disp_clk_reg_n_0_[10] ,\disp_clk_reg_n_0_[9] ,\disp_clk_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \disp_clk_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\disp_clk_reg[8]_i_1_n_6 ),
        .Q(\disp_clk_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_hex_reg[0] 
       (.C(\disp_clk_reg_n_0_[15] ),
        .CE(1'b1),
        .D(disp_hex[0]),
        .Q(x[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_hex_reg[1] 
       (.C(\disp_clk_reg_n_0_[15] ),
        .CE(1'b1),
        .D(disp_hex[1]),
        .Q(x[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_hex_reg[2] 
       (.C(\disp_clk_reg_n_0_[15] ),
        .CE(1'b1),
        .D(disp_hex[2]),
        .Q(x[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_hex_reg[3] 
       (.C(\disp_clk_reg_n_0_[15] ),
        .CE(1'b1),
        .D(disp_hex[3]),
        .Q(x[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \disp_sel[1]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .O(\disp_sel[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \disp_sel[5]_i_1 
       (.I0(sel0[0]),
        .O(\disp_sel[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \disp_sel[5]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .O(\disp_sel[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \disp_sel[6]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\disp_sel[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \disp_sel[7]_i_1 
       (.I0(sel0[2]),
        .O(\disp_sel[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \disp_sel[7]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .O(\disp_sel[7]_i_2_n_0 ));
  OBUF \disp_sel_OBUF[0]_inst 
       (.I(disp_sel_OBUF[0]),
        .O(disp_sel[0]));
  OBUF \disp_sel_OBUF[1]_inst 
       (.I(disp_sel_OBUF[1]),
        .O(disp_sel[1]));
  OBUF \disp_sel_OBUF[2]_inst 
       (.I(disp_sel_OBUF[2]),
        .O(disp_sel[2]));
  OBUF \disp_sel_OBUF[3]_inst 
       (.I(disp_sel_OBUF[3]),
        .O(disp_sel[3]));
  OBUF \disp_sel_OBUF[4]_inst 
       (.I(disp_sel_OBUF[4]),
        .O(disp_sel[4]));
  OBUF \disp_sel_OBUF[5]_inst 
       (.I(disp_sel_OBUF[5]),
        .O(disp_sel[5]));
  OBUF \disp_sel_OBUF[6]_inst 
       (.I(disp_sel_OBUF[6]),
        .O(disp_sel[6]));
  OBUF \disp_sel_OBUF[7]_inst 
       (.I(disp_sel_OBUF[7]),
        .O(disp_sel[7]));
  FDSE #(
    .INIT(1'b1)) 
    \disp_sel_reg[0] 
       (.C(\disp_clk_reg_n_0_[15] ),
        .CE(1'b1),
        .D(\disp_sel[1]_i_1_n_0 ),
        .Q(disp_sel_OBUF[0]),
        .S(sel0[0]));
  FDSE #(
    .INIT(1'b1)) 
    \disp_sel_reg[1] 
       (.C(\disp_clk_reg_n_0_[15] ),
        .CE(1'b1),
        .D(\disp_sel[1]_i_1_n_0 ),
        .Q(disp_sel_OBUF[1]),
        .S(\disp_sel[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \disp_sel_reg[2] 
       (.C(\disp_clk_reg_n_0_[15] ),
        .CE(1'b1),
        .D(\disp_sel[6]_i_1_n_0 ),
        .Q(disp_sel_OBUF[2]),
        .S(sel0[2]));
  FDSE #(
    .INIT(1'b1)) 
    \disp_sel_reg[3] 
       (.C(\disp_clk_reg_n_0_[15] ),
        .CE(1'b1),
        .D(\disp_sel[7]_i_2_n_0 ),
        .Q(disp_sel_OBUF[3]),
        .S(sel0[2]));
  FDSE #(
    .INIT(1'b1)) 
    \disp_sel_reg[4] 
       (.C(\disp_clk_reg_n_0_[15] ),
        .CE(1'b1),
        .D(\disp_sel[5]_i_2_n_0 ),
        .Q(disp_sel_OBUF[4]),
        .S(sel0[0]));
  FDSE #(
    .INIT(1'b1)) 
    \disp_sel_reg[5] 
       (.C(\disp_clk_reg_n_0_[15] ),
        .CE(1'b1),
        .D(\disp_sel[5]_i_2_n_0 ),
        .Q(disp_sel_OBUF[5]),
        .S(\disp_sel[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \disp_sel_reg[6] 
       (.C(\disp_clk_reg_n_0_[15] ),
        .CE(1'b1),
        .D(\disp_sel[6]_i_1_n_0 ),
        .Q(disp_sel_OBUF[6]),
        .S(\disp_sel[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \disp_sel_reg[7] 
       (.C(\disp_clk_reg_n_0_[15] ),
        .CE(1'b1),
        .D(\disp_sel[7]_i_2_n_0 ),
        .Q(disp_sel_OBUF[7]),
        .S(\disp_sel[7]_i_1_n_0 ));
  OBUF \disp_val_OBUF[0]_inst 
       (.I(disp_val_OBUF[0]),
        .O(disp_val[0]));
  OBUF \disp_val_OBUF[1]_inst 
       (.I(disp_val_OBUF[1]),
        .O(disp_val[1]));
  OBUF \disp_val_OBUF[2]_inst 
       (.I(disp_val_OBUF[2]),
        .O(disp_val[2]));
  OBUF \disp_val_OBUF[3]_inst 
       (.I(disp_val_OBUF[3]),
        .O(disp_val[3]));
  OBUF \disp_val_OBUF[4]_inst 
       (.I(disp_val_OBUF[4]),
        .O(disp_val[4]));
  OBUF \disp_val_OBUF[5]_inst 
       (.I(disp_val_OBUF[5]),
        .O(disp_val[5]));
  OBUF \disp_val_OBUF[6]_inst 
       (.I(disp_val_OBUF[6]),
        .O(disp_val[6]));
  OBUF \disp_val_OBUF[7]_inst 
       (.I(1'b1),
        .O(disp_val[7]));
  OBUF do_rdy_OBUF_inst
       (.I(do_rdy_OBUF),
        .O(do_rdy));
  IBUF down_btn_IBUF_inst
       (.I(down_btn),
        .O(down_btn_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    down_buf_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(down_btn_IBUF),
        .Q(down_buf),
        .R(1'b0));
  IBUF io_sw_IBUF_inst
       (.I(io_sw),
        .O(io_sw_IBUF));
  IBUF \mod_hex_IBUF[0]_inst 
       (.I(mod_hex[0]),
        .O(mod_hex_IBUF[0]));
  IBUF \mod_hex_IBUF[1]_inst 
       (.I(mod_hex[1]),
        .O(mod_hex_IBUF[1]));
  IBUF \mod_hex_IBUF[2]_inst 
       (.I(mod_hex[2]),
        .O(mod_hex_IBUF[2]));
  IBUF \mod_hex_IBUF[3]_inst 
       (.I(mod_hex[3]),
        .O(mod_hex_IBUF[3]));
  IBUF \mod_hex_IBUF[4]_inst 
       (.I(mod_hex[4]),
        .O(mod_hex_IBUF[4]));
  IBUF \mod_hex_IBUF[5]_inst 
       (.I(mod_hex[5]),
        .O(mod_hex_IBUF[5]));
  IBUF \mod_hex_IBUF[6]_inst 
       (.I(mod_hex[6]),
        .O(mod_hex_IBUF[6]));
  IBUF \mod_hex_IBUF[7]_inst 
       (.I(mod_hex[7]),
        .O(mod_hex_IBUF[7]));
  IBUF up_btn_IBUF_inst
       (.I(up_btn),
        .O(up_btn_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    up_buf_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(up_btn_IBUF),
        .Q(up_buf),
        .R(1'b0));
  rc5_enc uut0
       (.CLK(clk_IBUF_BUFG),
        .D(disp_hex),
        .Q({L35_in,L33_in,L31_in,L29_in,L27_in,L25_in,L23_in,L21_in,L19_in,L16_in,L13_in,L10_in,L7_in,L4_in,L,\din_reg_n_0_[3] ,\din_reg_n_0_[2] ,\din_reg_n_0_[1] ,\din_reg_n_0_[0] }),
        .\a_reg_reg[0]_0 (uut0_n_5),
        .ab_sw_IBUF(ab_sw_IBUF),
        .clr_IBUF(clr_IBUF),
        .di_vld_IBUF(di_vld_IBUF),
        .do_rdy_OBUF(do_rdy_OBUF),
        .io_sw_IBUF(io_sw_IBUF),
        .sel0(sel0));
  Hex2LED uut1
       (.Q(x),
        .disp_val_OBUF(disp_val_OBUF));
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
