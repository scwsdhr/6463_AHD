// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Mon Oct  8 17:41:52 2018
// Host        : DESKTOP-65OAGH3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/shenc/OneDrive -
//               nyu.edu/6463_AHD/LAB3/up_counter/up_counter.sim/sim_1/impl/timing/xsim/up_counter_5236_tb_time_impl.v}
// Design      : up_counter_5236
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "4025c008" *) 
(* NotValidForBitStream *)
module up_counter_5236
   (sysclk,
    reset,
    counter,
    seg_sel,
    seg_val);
  input sysclk;
  input reset;
  output [5:0]counter;
  output [7:0]seg_sel;
  output [7:0]seg_val;

  wire [27:0]c_cnt;
  wire \c_cnt[27]_i_10_n_0 ;
  wire \c_cnt[27]_i_11_n_0 ;
  wire \c_cnt[27]_i_2_n_0 ;
  wire \c_cnt[27]_i_3_n_0 ;
  wire \c_cnt[27]_i_4_n_0 ;
  wire \c_cnt[27]_i_6_n_0 ;
  wire \c_cnt[27]_i_7_n_0 ;
  wire \c_cnt[27]_i_8_n_0 ;
  wire \c_cnt[27]_i_9_n_0 ;
  wire \c_cnt_reg[12]_i_2_n_0 ;
  wire \c_cnt_reg[16]_i_2_n_0 ;
  wire \c_cnt_reg[20]_i_2_n_0 ;
  wire \c_cnt_reg[24]_i_2_n_0 ;
  wire \c_cnt_reg[4]_i_2_n_0 ;
  wire \c_cnt_reg[8]_i_2_n_0 ;
  wire \c_cnt_reg_n_0_[0] ;
  wire \c_cnt_reg_n_0_[10] ;
  wire \c_cnt_reg_n_0_[11] ;
  wire \c_cnt_reg_n_0_[12] ;
  wire \c_cnt_reg_n_0_[13] ;
  wire \c_cnt_reg_n_0_[15] ;
  wire \c_cnt_reg_n_0_[16] ;
  wire \c_cnt_reg_n_0_[17] ;
  wire \c_cnt_reg_n_0_[18] ;
  wire \c_cnt_reg_n_0_[19] ;
  wire \c_cnt_reg_n_0_[1] ;
  wire \c_cnt_reg_n_0_[20] ;
  wire \c_cnt_reg_n_0_[21] ;
  wire \c_cnt_reg_n_0_[22] ;
  wire \c_cnt_reg_n_0_[23] ;
  wire \c_cnt_reg_n_0_[24] ;
  wire \c_cnt_reg_n_0_[25] ;
  wire \c_cnt_reg_n_0_[26] ;
  wire \c_cnt_reg_n_0_[27] ;
  wire \c_cnt_reg_n_0_[2] ;
  wire \c_cnt_reg_n_0_[3] ;
  wire \c_cnt_reg_n_0_[4] ;
  wire \c_cnt_reg_n_0_[5] ;
  wire \c_cnt_reg_n_0_[6] ;
  wire \c_cnt_reg_n_0_[7] ;
  wire \c_cnt_reg_n_0_[8] ;
  wire \c_cnt_reg_n_0_[9] ;
  wire clk_i_1_n_0;
  wire clk_i_2_n_0;
  wire clk_i_3_n_0;
  wire clk_reg_n_0;
  wire [5:0]counter;
  wire [5:0]counter_OBUF;
  wire [27:1]data0;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire g0_b7_n_0;
  wire [5:0]i_cnt;
  wire reset;
  wire reset_IBUF;
  wire [7:0]seg_sel;
  wire \seg_sel[0]_i_1_n_0 ;
  wire [1:0]seg_sel_OBUF;
  wire [7:0]seg_val;
  wire \seg_val[0]_i_1_n_0 ;
  wire \seg_val[1]_i_1_n_0 ;
  wire \seg_val[1]_i_2_n_0 ;
  wire \seg_val[1]_i_3_n_0 ;
  wire \seg_val[2]_i_1_n_0 ;
  wire \seg_val[3]_i_1_n_0 ;
  wire \seg_val[3]_i_2_n_0 ;
  wire \seg_val[4]_i_1_n_0 ;
  wire \seg_val[5]_i_1_n_0 ;
  wire \seg_val[6]_i_1_n_0 ;
  wire \seg_val[7]_i_1_n_0 ;
  wire \seg_val[7]_i_2_n_0 ;
  wire \seg_val[7]_i_3_n_0 ;
  wire [7:0]seg_val_OBUF;
  wire sel00;
  wire sysclk;
  wire sysclk_IBUF;
  wire sysclk_IBUF_BUFG;
  wire [2:0]\NLW_c_cnt_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_c_cnt_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_c_cnt_reg[20]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_c_cnt_reg[24]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_c_cnt_reg[27]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_c_cnt_reg[27]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_c_cnt_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_c_cnt_reg[8]_i_2_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("up_counter_5236_tb_time_impl.sdf",,,,"tool_control");
end
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \c_cnt[0]_i_1 
       (.I0(\c_cnt_reg_n_0_[0] ),
        .O(c_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[10]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[10]),
        .O(c_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[11]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[11]),
        .O(c_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[12]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[12]),
        .O(c_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[13]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[13]),
        .O(c_cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[14]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[14]),
        .O(c_cnt[14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[15]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[15]),
        .O(c_cnt[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[16]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[16]),
        .O(c_cnt[16]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[17]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[17]),
        .O(c_cnt[17]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[18]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[18]),
        .O(c_cnt[18]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[19]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[19]),
        .O(c_cnt[19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[1]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[1]),
        .O(c_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[20]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[20]),
        .O(c_cnt[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[21]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[21]),
        .O(c_cnt[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[22]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[22]),
        .O(c_cnt[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[23]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[23]),
        .O(c_cnt[23]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[24]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[24]),
        .O(c_cnt[24]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[25]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[25]),
        .O(c_cnt[25]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[26]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[26]),
        .O(c_cnt[26]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[27]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[27]),
        .O(c_cnt[27]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \c_cnt[27]_i_10 
       (.I0(\c_cnt_reg_n_0_[6] ),
        .I1(\c_cnt_reg_n_0_[5] ),
        .I2(\c_cnt_reg_n_0_[9] ),
        .I3(\c_cnt_reg_n_0_[8] ),
        .O(\c_cnt[27]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \c_cnt[27]_i_11 
       (.I0(\c_cnt_reg_n_0_[7] ),
        .I1(\c_cnt_reg_n_0_[25] ),
        .I2(\c_cnt_reg_n_0_[26] ),
        .I3(\c_cnt_reg_n_0_[16] ),
        .I4(\c_cnt_reg_n_0_[12] ),
        .O(\c_cnt[27]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_cnt[27]_i_2 
       (.I0(reset_IBUF),
        .O(\c_cnt[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \c_cnt[27]_i_3 
       (.I0(\c_cnt[27]_i_6_n_0 ),
        .I1(\c_cnt[27]_i_7_n_0 ),
        .I2(\c_cnt[27]_i_8_n_0 ),
        .I3(\c_cnt[27]_i_9_n_0 ),
        .I4(\c_cnt[27]_i_10_n_0 ),
        .O(\c_cnt[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \c_cnt[27]_i_4 
       (.I0(\c_cnt[27]_i_11_n_0 ),
        .I1(\c_cnt_reg_n_0_[19] ),
        .I2(\c_cnt_reg_n_0_[24] ),
        .I3(\c_cnt_reg_n_0_[17] ),
        .I4(\c_cnt_reg_n_0_[18] ),
        .O(\c_cnt[27]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \c_cnt[27]_i_6 
       (.I0(\c_cnt_reg_n_0_[2] ),
        .I1(\c_cnt_reg_n_0_[1] ),
        .I2(\c_cnt_reg_n_0_[4] ),
        .I3(\c_cnt_reg_n_0_[3] ),
        .O(\c_cnt[27]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \c_cnt[27]_i_7 
       (.I0(\c_cnt_reg_n_0_[20] ),
        .I1(\c_cnt_reg_n_0_[15] ),
        .I2(\c_cnt_reg_n_0_[22] ),
        .I3(\c_cnt_reg_n_0_[21] ),
        .O(\c_cnt[27]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \c_cnt[27]_i_8 
       (.I0(\c_cnt_reg_n_0_[23] ),
        .I1(\c_cnt_reg_n_0_[27] ),
        .I2(\c_cnt_reg_n_0_[0] ),
        .O(\c_cnt[27]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \c_cnt[27]_i_9 
       (.I0(\c_cnt_reg_n_0_[11] ),
        .I1(\c_cnt_reg_n_0_[10] ),
        .I2(sel00),
        .I3(\c_cnt_reg_n_0_[13] ),
        .O(\c_cnt[27]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[2]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[2]),
        .O(c_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[3]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[3]),
        .O(c_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[4]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[4]),
        .O(c_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[5]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[5]),
        .O(c_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[6]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[6]),
        .O(c_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[7]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[7]),
        .O(c_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[8]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[8]),
        .O(c_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_cnt[9]_i_1 
       (.I0(\c_cnt[27]_i_3_n_0 ),
        .I1(\c_cnt[27]_i_4_n_0 ),
        .I2(data0[9]),
        .O(c_cnt[9]));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[0] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[0]),
        .Q(\c_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[10] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[10]),
        .Q(\c_cnt_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[11] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[11]),
        .Q(\c_cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[12] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[12]),
        .Q(\c_cnt_reg_n_0_[12] ));
  CARRY4 \c_cnt_reg[12]_i_2 
       (.CI(\c_cnt_reg[8]_i_2_n_0 ),
        .CO({\c_cnt_reg[12]_i_2_n_0 ,\NLW_c_cnt_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\c_cnt_reg_n_0_[12] ,\c_cnt_reg_n_0_[11] ,\c_cnt_reg_n_0_[10] ,\c_cnt_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[13] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[13]),
        .Q(\c_cnt_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[14] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[14]),
        .Q(sel00));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[15] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[15]),
        .Q(\c_cnt_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[16] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[16]),
        .Q(\c_cnt_reg_n_0_[16] ));
  CARRY4 \c_cnt_reg[16]_i_2 
       (.CI(\c_cnt_reg[12]_i_2_n_0 ),
        .CO({\c_cnt_reg[16]_i_2_n_0 ,\NLW_c_cnt_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\c_cnt_reg_n_0_[16] ,\c_cnt_reg_n_0_[15] ,sel00,\c_cnt_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[17] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[17]),
        .Q(\c_cnt_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[18] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[18]),
        .Q(\c_cnt_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[19] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[19]),
        .Q(\c_cnt_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[1] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[1]),
        .Q(\c_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[20] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[20]),
        .Q(\c_cnt_reg_n_0_[20] ));
  CARRY4 \c_cnt_reg[20]_i_2 
       (.CI(\c_cnt_reg[16]_i_2_n_0 ),
        .CO({\c_cnt_reg[20]_i_2_n_0 ,\NLW_c_cnt_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\c_cnt_reg_n_0_[20] ,\c_cnt_reg_n_0_[19] ,\c_cnt_reg_n_0_[18] ,\c_cnt_reg_n_0_[17] }));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[21] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[21]),
        .Q(\c_cnt_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[22] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[22]),
        .Q(\c_cnt_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[23] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[23]),
        .Q(\c_cnt_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[24] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[24]),
        .Q(\c_cnt_reg_n_0_[24] ));
  CARRY4 \c_cnt_reg[24]_i_2 
       (.CI(\c_cnt_reg[20]_i_2_n_0 ),
        .CO({\c_cnt_reg[24]_i_2_n_0 ,\NLW_c_cnt_reg[24]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\c_cnt_reg_n_0_[24] ,\c_cnt_reg_n_0_[23] ,\c_cnt_reg_n_0_[22] ,\c_cnt_reg_n_0_[21] }));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[25] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[25]),
        .Q(\c_cnt_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[26] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[26]),
        .Q(\c_cnt_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[27] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[27]),
        .Q(\c_cnt_reg_n_0_[27] ));
  CARRY4 \c_cnt_reg[27]_i_5 
       (.CI(\c_cnt_reg[24]_i_2_n_0 ),
        .CO(\NLW_c_cnt_reg[27]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_c_cnt_reg[27]_i_5_O_UNCONNECTED [3],data0[27:25]}),
        .S({1'b0,\c_cnt_reg_n_0_[27] ,\c_cnt_reg_n_0_[26] ,\c_cnt_reg_n_0_[25] }));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[2] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[2]),
        .Q(\c_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[3] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[3]),
        .Q(\c_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[4] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[4]),
        .Q(\c_cnt_reg_n_0_[4] ));
  CARRY4 \c_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\c_cnt_reg[4]_i_2_n_0 ,\NLW_c_cnt_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\c_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\c_cnt_reg_n_0_[4] ,\c_cnt_reg_n_0_[3] ,\c_cnt_reg_n_0_[2] ,\c_cnt_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[5] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[5]),
        .Q(\c_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[6] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[6]),
        .Q(\c_cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[7] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[7]),
        .Q(\c_cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[8] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[8]),
        .Q(\c_cnt_reg_n_0_[8] ));
  CARRY4 \c_cnt_reg[8]_i_2 
       (.CI(\c_cnt_reg[4]_i_2_n_0 ),
        .CO({\c_cnt_reg[8]_i_2_n_0 ,\NLW_c_cnt_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\c_cnt_reg_n_0_[8] ,\c_cnt_reg_n_0_[7] ,\c_cnt_reg_n_0_[6] ,\c_cnt_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \c_cnt_reg[9] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(c_cnt[9]),
        .Q(\c_cnt_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hDF03)) 
    clk_i_1
       (.I0(clk_i_2_n_0),
        .I1(\c_cnt[27]_i_3_n_0 ),
        .I2(\c_cnt[27]_i_4_n_0 ),
        .I3(clk_reg_n_0),
        .O(clk_i_1_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    clk_i_2
       (.I0(\c_cnt_reg_n_0_[7] ),
        .I1(\c_cnt_reg_n_0_[12] ),
        .I2(\c_cnt_reg_n_0_[16] ),
        .I3(clk_i_3_n_0),
        .O(clk_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    clk_i_3
       (.I0(\c_cnt_reg_n_0_[19] ),
        .I1(\c_cnt_reg_n_0_[24] ),
        .I2(\c_cnt_reg_n_0_[17] ),
        .I3(\c_cnt_reg_n_0_[18] ),
        .I4(\c_cnt_reg_n_0_[26] ),
        .I5(\c_cnt_reg_n_0_[25] ),
        .O(clk_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_reg
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(clk_i_1_n_0),
        .Q(clk_reg_n_0));
  OBUF \counter_OBUF[0]_inst 
       (.I(counter_OBUF[0]),
        .O(counter[0]));
  OBUF \counter_OBUF[1]_inst 
       (.I(counter_OBUF[1]),
        .O(counter[1]));
  OBUF \counter_OBUF[2]_inst 
       (.I(counter_OBUF[2]),
        .O(counter[2]));
  OBUF \counter_OBUF[3]_inst 
       (.I(counter_OBUF[3]),
        .O(counter[3]));
  OBUF \counter_OBUF[4]_inst 
       (.I(counter_OBUF[4]),
        .O(counter[4]));
  OBUF \counter_OBUF[5]_inst 
       (.I(counter_OBUF[5]),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00081200)) 
    g0_b0
       (.I0(counter_OBUF[0]),
        .I1(counter_OBUF[1]),
        .I2(counter_OBUF[2]),
        .I3(counter_OBUF[3]),
        .I4(counter_OBUF[4]),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006010)) 
    g0_b1
       (.I0(counter_OBUF[0]),
        .I1(counter_OBUF[1]),
        .I2(counter_OBUF[2]),
        .I3(counter_OBUF[3]),
        .I4(counter_OBUF[4]),
        .O(g0_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00100400)) 
    g0_b2
       (.I0(counter_OBUF[0]),
        .I1(counter_OBUF[1]),
        .I2(counter_OBUF[2]),
        .I3(counter_OBUF[3]),
        .I4(counter_OBUF[4]),
        .O(g0_b2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00089220)) 
    g0_b3
       (.I0(counter_OBUF[0]),
        .I1(counter_OBUF[1]),
        .I2(counter_OBUF[2]),
        .I3(counter_OBUF[3]),
        .I4(counter_OBUF[4]),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h000ABAA0)) 
    g0_b4
       (.I0(counter_OBUF[0]),
        .I1(counter_OBUF[1]),
        .I2(counter_OBUF[2]),
        .I3(counter_OBUF[3]),
        .I4(counter_OBUF[4]),
        .O(g0_b4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00188E20)) 
    g0_b5
       (.I0(counter_OBUF[0]),
        .I1(counter_OBUF[1]),
        .I2(counter_OBUF[2]),
        .I3(counter_OBUF[3]),
        .I4(counter_OBUF[4]),
        .O(g0_b5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h000C8320)) 
    g0_b6
       (.I0(counter_OBUF[0]),
        .I1(counter_OBUF[1]),
        .I2(counter_OBUF[2]),
        .I3(counter_OBUF[3]),
        .I4(counter_OBUF[4]),
        .O(g0_b6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h001FFFF0)) 
    g0_b7
       (.I0(counter_OBUF[0]),
        .I1(counter_OBUF[1]),
        .I2(counter_OBUF[2]),
        .I3(counter_OBUF[3]),
        .I4(counter_OBUF[4]),
        .O(g0_b7_n_0));
  LUT6 #(
    .INIT(64'h00000000FDFFFFFF)) 
    \i_cnt[0]_i_1 
       (.I0(counter_OBUF[4]),
        .I1(counter_OBUF[1]),
        .I2(counter_OBUF[3]),
        .I3(counter_OBUF[5]),
        .I4(counter_OBUF[2]),
        .I5(counter_OBUF[0]),
        .O(i_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_cnt[1]_i_1 
       (.I0(counter_OBUF[0]),
        .I1(counter_OBUF[1]),
        .O(i_cnt[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \i_cnt[2]_i_1 
       (.I0(counter_OBUF[1]),
        .I1(counter_OBUF[0]),
        .I2(counter_OBUF[2]),
        .O(i_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i_cnt[3]_i_1 
       (.I0(counter_OBUF[2]),
        .I1(counter_OBUF[0]),
        .I2(counter_OBUF[1]),
        .I3(counter_OBUF[3]),
        .O(i_cnt[3]));
  LUT6 #(
    .INIT(64'h7E7FFFFF80800000)) 
    \i_cnt[4]_i_1 
       (.I0(counter_OBUF[0]),
        .I1(counter_OBUF[1]),
        .I2(counter_OBUF[3]),
        .I3(counter_OBUF[5]),
        .I4(counter_OBUF[2]),
        .I5(counter_OBUF[4]),
        .O(i_cnt[4]));
  LUT6 #(
    .INIT(64'h7FFF8000FFFF0000)) 
    \i_cnt[5]_i_1 
       (.I0(counter_OBUF[2]),
        .I1(counter_OBUF[0]),
        .I2(counter_OBUF[1]),
        .I3(counter_OBUF[3]),
        .I4(counter_OBUF[5]),
        .I5(counter_OBUF[4]),
        .O(i_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[0] 
       (.C(clk_reg_n_0),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(i_cnt[0]),
        .Q(counter_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[1] 
       (.C(clk_reg_n_0),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(i_cnt[1]),
        .Q(counter_OBUF[1]));
  FDPE #(
    .INIT(1'b1)) 
    \i_cnt_reg[2] 
       (.C(clk_reg_n_0),
        .CE(1'b1),
        .D(i_cnt[2]),
        .PRE(\c_cnt[27]_i_2_n_0 ),
        .Q(counter_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[3] 
       (.C(clk_reg_n_0),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(i_cnt[3]),
        .Q(counter_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[4] 
       (.C(clk_reg_n_0),
        .CE(1'b1),
        .CLR(\c_cnt[27]_i_2_n_0 ),
        .D(i_cnt[4]),
        .Q(counter_OBUF[4]));
  FDPE #(
    .INIT(1'b1)) 
    \i_cnt_reg[5] 
       (.C(clk_reg_n_0),
        .CE(1'b1),
        .D(i_cnt[5]),
        .PRE(\c_cnt[27]_i_2_n_0 ),
        .Q(counter_OBUF[5]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_sel[0]_i_1 
       (.I0(sel00),
        .O(\seg_sel[0]_i_1_n_0 ));
  OBUF \seg_sel_OBUF[0]_inst 
       (.I(seg_sel_OBUF[0]),
        .O(seg_sel[0]));
  OBUF \seg_sel_OBUF[1]_inst 
       (.I(seg_sel_OBUF[1]),
        .O(seg_sel[1]));
  OBUF \seg_sel_OBUF[2]_inst 
       (.I(1'b1),
        .O(seg_sel[2]));
  OBUF \seg_sel_OBUF[3]_inst 
       (.I(1'b1),
        .O(seg_sel[3]));
  OBUF \seg_sel_OBUF[4]_inst 
       (.I(1'b1),
        .O(seg_sel[4]));
  OBUF \seg_sel_OBUF[5]_inst 
       (.I(1'b1),
        .O(seg_sel[5]));
  OBUF \seg_sel_OBUF[6]_inst 
       (.I(1'b1),
        .O(seg_sel[6]));
  OBUF \seg_sel_OBUF[7]_inst 
       (.I(1'b1),
        .O(seg_sel[7]));
  FDRE #(
    .INIT(1'b0)) 
    \seg_sel_reg[0] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b1),
        .Q(seg_sel_OBUF[0]),
        .R(\seg_sel[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_sel_reg[1] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg_sel[0]_i_1_n_0 ),
        .Q(seg_sel_OBUF[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \seg_val[0]_i_1 
       (.I0(g0_b0_n_0),
        .I1(counter_OBUF[5]),
        .I2(sel00),
        .I3(\seg_val[3]_i_2_n_0 ),
        .O(\seg_val[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \seg_val[1]_i_1 
       (.I0(g0_b1_n_0),
        .I1(counter_OBUF[5]),
        .I2(sel00),
        .I3(\seg_val[1]_i_2_n_0 ),
        .O(\seg_val[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030004000)) 
    \seg_val[1]_i_2 
       (.I0(counter_OBUF[0]),
        .I1(counter_OBUF[2]),
        .I2(counter_OBUF[4]),
        .I3(sel00),
        .I4(counter_OBUF[1]),
        .I5(\seg_val[1]_i_3_n_0 ),
        .O(\seg_val[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \seg_val[1]_i_3 
       (.I0(counter_OBUF[3]),
        .I1(counter_OBUF[5]),
        .O(\seg_val[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \seg_val[2]_i_1 
       (.I0(sel00),
        .I1(counter_OBUF[5]),
        .I2(g0_b2_n_0),
        .O(\seg_val[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \seg_val[3]_i_1 
       (.I0(g0_b3_n_0),
        .I1(counter_OBUF[5]),
        .I2(sel00),
        .I3(\seg_val[3]_i_2_n_0 ),
        .O(\seg_val[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h01F0000000000000)) 
    \seg_val[3]_i_2 
       (.I0(counter_OBUF[1]),
        .I1(counter_OBUF[2]),
        .I2(counter_OBUF[3]),
        .I3(counter_OBUF[4]),
        .I4(counter_OBUF[5]),
        .I5(sel00),
        .O(\seg_val[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \seg_val[4]_i_1 
       (.I0(g0_b4_n_0),
        .I1(counter_OBUF[5]),
        .I2(sel00),
        .I3(\seg_val[7]_i_2_n_0 ),
        .O(\seg_val[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h10100000FF000000)) 
    \seg_val[5]_i_1 
       (.I0(counter_OBUF[3]),
        .I1(counter_OBUF[4]),
        .I2(counter_OBUF[2]),
        .I3(g0_b5_n_0),
        .I4(counter_OBUF[5]),
        .I5(sel00),
        .O(\seg_val[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \seg_val[6]_i_1 
       (.I0(sel00),
        .I1(counter_OBUF[5]),
        .I2(g0_b6_n_0),
        .O(\seg_val[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \seg_val[7]_i_1 
       (.I0(g0_b7_n_0),
        .I1(counter_OBUF[5]),
        .I2(sel00),
        .I3(\seg_val[7]_i_2_n_0 ),
        .O(\seg_val[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAAAAAEEAAAAA)) 
    \seg_val[7]_i_2 
       (.I0(\seg_val[7]_i_3_n_0 ),
        .I1(sel00),
        .I2(counter_OBUF[4]),
        .I3(counter_OBUF[2]),
        .I4(counter_OBUF[5]),
        .I5(counter_OBUF[3]),
        .O(\seg_val[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \seg_val[7]_i_3 
       (.I0(counter_OBUF[0]),
        .I1(sel00),
        .I2(counter_OBUF[2]),
        .I3(counter_OBUF[5]),
        .I4(counter_OBUF[3]),
        .I5(counter_OBUF[1]),
        .O(\seg_val[7]_i_3_n_0 ));
  OBUF \seg_val_OBUF[0]_inst 
       (.I(seg_val_OBUF[0]),
        .O(seg_val[0]));
  OBUF \seg_val_OBUF[1]_inst 
       (.I(seg_val_OBUF[1]),
        .O(seg_val[1]));
  OBUF \seg_val_OBUF[2]_inst 
       (.I(seg_val_OBUF[2]),
        .O(seg_val[2]));
  OBUF \seg_val_OBUF[3]_inst 
       (.I(seg_val_OBUF[3]),
        .O(seg_val[3]));
  OBUF \seg_val_OBUF[4]_inst 
       (.I(seg_val_OBUF[4]),
        .O(seg_val[4]));
  OBUF \seg_val_OBUF[5]_inst 
       (.I(seg_val_OBUF[5]),
        .O(seg_val[5]));
  OBUF \seg_val_OBUF[6]_inst 
       (.I(seg_val_OBUF[6]),
        .O(seg_val[6]));
  OBUF \seg_val_OBUF[7]_inst 
       (.I(seg_val_OBUF[7]),
        .O(seg_val[7]));
  FDRE #(
    .INIT(1'b0)) 
    \seg_val_reg[0] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg_val[0]_i_1_n_0 ),
        .Q(seg_val_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_val_reg[1] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg_val[1]_i_1_n_0 ),
        .Q(seg_val_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_val_reg[2] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg_val[2]_i_1_n_0 ),
        .Q(seg_val_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_val_reg[3] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg_val[3]_i_1_n_0 ),
        .Q(seg_val_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_val_reg[4] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg_val[4]_i_1_n_0 ),
        .Q(seg_val_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_val_reg[5] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg_val[5]_i_1_n_0 ),
        .Q(seg_val_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_val_reg[6] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg_val[6]_i_1_n_0 ),
        .Q(seg_val_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_val_reg[7] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg_val[7]_i_1_n_0 ),
        .Q(seg_val_OBUF[7]),
        .R(1'b0));
  BUFG sysclk_IBUF_BUFG_inst
       (.I(sysclk_IBUF),
        .O(sysclk_IBUF_BUFG));
  IBUF sysclk_IBUF_inst
       (.I(sysclk),
        .O(sysclk_IBUF));
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
