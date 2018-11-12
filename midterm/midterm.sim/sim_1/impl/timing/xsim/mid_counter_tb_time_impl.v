// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Oct 29 19:36:35 2018
// Host        : DESKTOP-65OAGH3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/shenc/OneDrive -
//               nyu.edu/6463_AHD/midterm/midterm.sim/sim_1/impl/timing/xsim/mid_counter_tb_time_impl.v}
// Design      : mid_counter_fpga
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Hex2LED
   (seg_val_OBUF,
    Q);
  output [6:0]seg_val_OBUF;
  input [3:0]Q;

  wire [3:0]Q;
  wire [6:0]seg_val_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_val_OBUF[0]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg_val_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg_val_OBUF[1]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg_val_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_val_OBUF[2]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(seg_val_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \seg_val_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg_val_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_val_OBUF[4]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(seg_val_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_val_OBUF[5]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg_val_OBUF[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_val_OBUF[6]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(seg_val_OBUF[6]));
endmodule

module mid_counter
   (Q,
    reset_IBUF,
    UP_IBUF,
    in0);
  output [3:0]Q;
  input reset_IBUF;
  input UP_IBUF;
  input in0;

  wire \/i__n_0 ;
  wire \FSM_sequential_nextstate_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_nextstate_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_nextstate_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_nextstate_reg[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire [3:0]Q;
  wire UP_IBUF;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[2]_i_1_n_0 ;
  wire \counter_reg[3]_i_1_n_0 ;
  wire \counter_reg[3]_i_2_n_0 ;
  wire in0;
  wire [3:0]nextstate;
  wire reset_IBUF;
  (* RTL_KEEP = "yes" *) wire [3:0]state;

  LUT4 #(
    .INIT(16'hEBEA)) 
    \/i_ 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(\/i__n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextstate_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_sequential_nextstate_reg[0]_i_1_n_0 ),
        .G(\counter_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate[0]));
  LUT5 #(
    .INIT(32'hAAFE0055)) 
    \FSM_sequential_nextstate_reg[0]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(UP_IBUF),
        .O(\FSM_sequential_nextstate_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextstate_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_sequential_nextstate_reg[1]_i_1_n_0 ),
        .G(\counter_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate[1]));
  LUT5 #(
    .INIT(32'hFAAE0550)) 
    \FSM_sequential_nextstate_reg[1]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(UP_IBUF),
        .O(\FSM_sequential_nextstate_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextstate_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_sequential_nextstate_reg[2]_i_1_n_0 ),
        .G(\counter_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate[2]));
  LUT5 #(
    .INIT(32'hEE14EA44)) 
    \FSM_sequential_nextstate_reg[2]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(UP_IBUF),
        .I4(state[0]),
        .O(\FSM_sequential_nextstate_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextstate_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_sequential_nextstate_reg[3]_i_1_n_0 ),
        .G(\counter_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate[3]));
  LUT5 #(
    .INIT(32'h00002004)) 
    \FSM_sequential_nextstate_reg[3]_i_1 
       (.I0(state[1]),
        .I1(UP_IBUF),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[3]),
        .O(\FSM_sequential_nextstate_reg[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(reset_IBUF),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s3:0110,s4:0101,s2:0111,s1:1000,s0:0000,s7:0010,s8:0001,s6:0011,s5:0100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(in0),
        .CE(1'b1),
        .D(nextstate[0]),
        .Q(state[0]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s3:0110,s4:0101,s2:0111,s1:1000,s0:0000,s7:0010,s8:0001,s6:0011,s5:0100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(in0),
        .CE(1'b1),
        .D(nextstate[1]),
        .Q(state[1]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s3:0110,s4:0101,s2:0111,s1:1000,s0:0000,s7:0010,s8:0001,s6:0011,s5:0100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(in0),
        .CE(1'b1),
        .D(nextstate[2]),
        .Q(state[2]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s3:0110,s4:0101,s2:0111,s1:1000,s0:0000,s7:0010,s8:0001,s6:0011,s5:0100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(in0),
        .CE(1'b1),
        .D(nextstate[3]),
        .Q(state[3]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.CLR(1'b0),
        .D(\counter_reg[0]_i_1_n_0 ),
        .G(\counter_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  LUT4 #(
    .INIT(16'h00CD)) 
    \counter_reg[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .O(\counter_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.CLR(1'b0),
        .D(\/i__n_0 ),
        .G(\counter_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.CLR(1'b0),
        .D(\counter_reg[2]_i_1_n_0 ),
        .G(\counter_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[2]));
  LUT4 #(
    .INIT(16'h0078)) 
    \counter_reg[2]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .O(\counter_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.CLR(1'b0),
        .D(\counter_reg[3]_i_1_n_0 ),
        .G(\counter_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[3]));
  LUT4 #(
    .INIT(16'h0014)) 
    \counter_reg[3]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .O(\counter_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5557)) 
    \counter_reg[3]_i_2 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(\counter_reg[3]_i_2_n_0 ));
endmodule

(* ECO_CHECKSUM = "7ac451db" *) 
(* NotValidForBitStream *)
module mid_counter_fpga
   (reset,
    sysclk,
    UP,
    counter,
    seg_sel,
    seg_val);
  input reset;
  input sysclk;
  input UP;
  output [3:0]counter;
  output [7:0]seg_sel;
  output [7:0]seg_val;

  wire UP;
  wire UP_IBUF;
  wire \c_cnt[0]_i_3_n_0 ;
  wire \c_cnt[0]_i_4_n_0 ;
  wire \c_cnt[0]_i_5_n_0 ;
  wire \c_cnt[0]_i_6_n_0 ;
  wire \c_cnt[0]_i_7_n_0 ;
  wire \c_cnt[0]_i_8_n_0 ;
  wire [27:0]c_cnt_reg;
  wire \c_cnt_reg[0]_i_2_n_0 ;
  wire \c_cnt_reg[0]_i_2_n_4 ;
  wire \c_cnt_reg[0]_i_2_n_5 ;
  wire \c_cnt_reg[0]_i_2_n_6 ;
  wire \c_cnt_reg[0]_i_2_n_7 ;
  wire \c_cnt_reg[12]_i_1_n_0 ;
  wire \c_cnt_reg[12]_i_1_n_4 ;
  wire \c_cnt_reg[12]_i_1_n_5 ;
  wire \c_cnt_reg[12]_i_1_n_6 ;
  wire \c_cnt_reg[12]_i_1_n_7 ;
  wire \c_cnt_reg[16]_i_1_n_0 ;
  wire \c_cnt_reg[16]_i_1_n_4 ;
  wire \c_cnt_reg[16]_i_1_n_5 ;
  wire \c_cnt_reg[16]_i_1_n_6 ;
  wire \c_cnt_reg[16]_i_1_n_7 ;
  wire \c_cnt_reg[20]_i_1_n_0 ;
  wire \c_cnt_reg[20]_i_1_n_4 ;
  wire \c_cnt_reg[20]_i_1_n_5 ;
  wire \c_cnt_reg[20]_i_1_n_6 ;
  wire \c_cnt_reg[20]_i_1_n_7 ;
  wire \c_cnt_reg[24]_i_1_n_4 ;
  wire \c_cnt_reg[24]_i_1_n_5 ;
  wire \c_cnt_reg[24]_i_1_n_6 ;
  wire \c_cnt_reg[24]_i_1_n_7 ;
  wire \c_cnt_reg[4]_i_1_n_0 ;
  wire \c_cnt_reg[4]_i_1_n_4 ;
  wire \c_cnt_reg[4]_i_1_n_5 ;
  wire \c_cnt_reg[4]_i_1_n_6 ;
  wire \c_cnt_reg[4]_i_1_n_7 ;
  wire \c_cnt_reg[8]_i_1_n_0 ;
  wire \c_cnt_reg[8]_i_1_n_4 ;
  wire \c_cnt_reg[8]_i_1_n_5 ;
  wire \c_cnt_reg[8]_i_1_n_6 ;
  wire \c_cnt_reg[8]_i_1_n_7 ;
  wire clear;
  wire clk_i_1_n_0;
  wire clk_i_2_n_0;
  wire clk_i_3_n_0;
  wire clk_i_4_n_0;
  wire clk_i_5_n_0;
  wire clk_reg_n_0;
  wire [3:0]counter;
  wire [3:0]counter_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [7:0]seg_sel;
  wire [7:0]seg_val;
  wire [6:0]seg_val_OBUF;
  wire sysclk;
  wire sysclk_IBUF;
  wire sysclk_IBUF_BUFG;
  wire [2:0]\NLW_c_cnt_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_c_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_c_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_c_cnt_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_c_cnt_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_c_cnt_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_c_cnt_reg[8]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("mid_counter_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF UP_IBUF_inst
       (.I(UP),
        .O(UP_IBUF));
  LUT5 #(
    .INIT(32'h80000000)) 
    \c_cnt[0]_i_1 
       (.I0(\c_cnt[0]_i_3_n_0 ),
        .I1(\c_cnt[0]_i_4_n_0 ),
        .I2(\c_cnt[0]_i_5_n_0 ),
        .I3(\c_cnt[0]_i_6_n_0 ),
        .I4(\c_cnt[0]_i_7_n_0 ),
        .O(clear));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \c_cnt[0]_i_3 
       (.I0(c_cnt_reg[18]),
        .I1(c_cnt_reg[19]),
        .I2(c_cnt_reg[16]),
        .I3(c_cnt_reg[17]),
        .I4(c_cnt_reg[21]),
        .I5(c_cnt_reg[20]),
        .O(\c_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \c_cnt[0]_i_4 
       (.I0(c_cnt_reg[24]),
        .I1(c_cnt_reg[25]),
        .I2(c_cnt_reg[22]),
        .I3(c_cnt_reg[23]),
        .I4(c_cnt_reg[27]),
        .I5(c_cnt_reg[26]),
        .O(\c_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \c_cnt[0]_i_5 
       (.I0(c_cnt_reg[13]),
        .I1(c_cnt_reg[12]),
        .I2(c_cnt_reg[10]),
        .I3(c_cnt_reg[11]),
        .I4(c_cnt_reg[15]),
        .I5(c_cnt_reg[14]),
        .O(\c_cnt[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \c_cnt[0]_i_6 
       (.I0(c_cnt_reg[1]),
        .I1(c_cnt_reg[0]),
        .I2(c_cnt_reg[3]),
        .I3(c_cnt_reg[2]),
        .O(\c_cnt[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \c_cnt[0]_i_7 
       (.I0(c_cnt_reg[6]),
        .I1(c_cnt_reg[7]),
        .I2(c_cnt_reg[4]),
        .I3(c_cnt_reg[5]),
        .I4(c_cnt_reg[9]),
        .I5(c_cnt_reg[8]),
        .O(\c_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_cnt[0]_i_8 
       (.I0(c_cnt_reg[0]),
        .O(\c_cnt[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[0] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[0]_i_2_n_7 ),
        .Q(c_cnt_reg[0]),
        .R(clear));
  CARRY4 \c_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\c_cnt_reg[0]_i_2_n_0 ,\NLW_c_cnt_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\c_cnt_reg[0]_i_2_n_4 ,\c_cnt_reg[0]_i_2_n_5 ,\c_cnt_reg[0]_i_2_n_6 ,\c_cnt_reg[0]_i_2_n_7 }),
        .S({c_cnt_reg[3:1],\c_cnt[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[10] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[8]_i_1_n_5 ),
        .Q(c_cnt_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[11] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[8]_i_1_n_4 ),
        .Q(c_cnt_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[12] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[12]_i_1_n_7 ),
        .Q(c_cnt_reg[12]),
        .R(clear));
  CARRY4 \c_cnt_reg[12]_i_1 
       (.CI(\c_cnt_reg[8]_i_1_n_0 ),
        .CO({\c_cnt_reg[12]_i_1_n_0 ,\NLW_c_cnt_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\c_cnt_reg[12]_i_1_n_4 ,\c_cnt_reg[12]_i_1_n_5 ,\c_cnt_reg[12]_i_1_n_6 ,\c_cnt_reg[12]_i_1_n_7 }),
        .S(c_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[13] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[12]_i_1_n_6 ),
        .Q(c_cnt_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[14] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[12]_i_1_n_5 ),
        .Q(c_cnt_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[15] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[12]_i_1_n_4 ),
        .Q(c_cnt_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[16] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[16]_i_1_n_7 ),
        .Q(c_cnt_reg[16]),
        .R(clear));
  CARRY4 \c_cnt_reg[16]_i_1 
       (.CI(\c_cnt_reg[12]_i_1_n_0 ),
        .CO({\c_cnt_reg[16]_i_1_n_0 ,\NLW_c_cnt_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\c_cnt_reg[16]_i_1_n_4 ,\c_cnt_reg[16]_i_1_n_5 ,\c_cnt_reg[16]_i_1_n_6 ,\c_cnt_reg[16]_i_1_n_7 }),
        .S(c_cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[17] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[16]_i_1_n_6 ),
        .Q(c_cnt_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[18] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[16]_i_1_n_5 ),
        .Q(c_cnt_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[19] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[16]_i_1_n_4 ),
        .Q(c_cnt_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[1] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[0]_i_2_n_6 ),
        .Q(c_cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[20] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[20]_i_1_n_7 ),
        .Q(c_cnt_reg[20]),
        .R(clear));
  CARRY4 \c_cnt_reg[20]_i_1 
       (.CI(\c_cnt_reg[16]_i_1_n_0 ),
        .CO({\c_cnt_reg[20]_i_1_n_0 ,\NLW_c_cnt_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\c_cnt_reg[20]_i_1_n_4 ,\c_cnt_reg[20]_i_1_n_5 ,\c_cnt_reg[20]_i_1_n_6 ,\c_cnt_reg[20]_i_1_n_7 }),
        .S(c_cnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[21] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[20]_i_1_n_6 ),
        .Q(c_cnt_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[22] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[20]_i_1_n_5 ),
        .Q(c_cnt_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[23] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[20]_i_1_n_4 ),
        .Q(c_cnt_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[24] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[24]_i_1_n_7 ),
        .Q(c_cnt_reg[24]),
        .R(clear));
  CARRY4 \c_cnt_reg[24]_i_1 
       (.CI(\c_cnt_reg[20]_i_1_n_0 ),
        .CO(\NLW_c_cnt_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\c_cnt_reg[24]_i_1_n_4 ,\c_cnt_reg[24]_i_1_n_5 ,\c_cnt_reg[24]_i_1_n_6 ,\c_cnt_reg[24]_i_1_n_7 }),
        .S(c_cnt_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[25] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[24]_i_1_n_6 ),
        .Q(c_cnt_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[26] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[24]_i_1_n_5 ),
        .Q(c_cnt_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[27] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[24]_i_1_n_4 ),
        .Q(c_cnt_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[2] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[0]_i_2_n_5 ),
        .Q(c_cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[3] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[0]_i_2_n_4 ),
        .Q(c_cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[4] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[4]_i_1_n_7 ),
        .Q(c_cnt_reg[4]),
        .R(clear));
  CARRY4 \c_cnt_reg[4]_i_1 
       (.CI(\c_cnt_reg[0]_i_2_n_0 ),
        .CO({\c_cnt_reg[4]_i_1_n_0 ,\NLW_c_cnt_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\c_cnt_reg[4]_i_1_n_4 ,\c_cnt_reg[4]_i_1_n_5 ,\c_cnt_reg[4]_i_1_n_6 ,\c_cnt_reg[4]_i_1_n_7 }),
        .S(c_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[5] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[4]_i_1_n_6 ),
        .Q(c_cnt_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[6] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[4]_i_1_n_5 ),
        .Q(c_cnt_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[7] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[4]_i_1_n_4 ),
        .Q(c_cnt_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[8] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[8]_i_1_n_7 ),
        .Q(c_cnt_reg[8]),
        .R(clear));
  CARRY4 \c_cnt_reg[8]_i_1 
       (.CI(\c_cnt_reg[4]_i_1_n_0 ),
        .CO({\c_cnt_reg[8]_i_1_n_0 ,\NLW_c_cnt_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\c_cnt_reg[8]_i_1_n_4 ,\c_cnt_reg[8]_i_1_n_5 ,\c_cnt_reg[8]_i_1_n_6 ,\c_cnt_reg[8]_i_1_n_7 }),
        .S(c_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \c_cnt_reg[9] 
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\c_cnt_reg[8]_i_1_n_6 ),
        .Q(c_cnt_reg[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    clk_i_1
       (.I0(clk_reg_n_0),
        .I1(clk_i_2_n_0),
        .I2(\c_cnt[0]_i_6_n_0 ),
        .I3(clk_i_3_n_0),
        .I4(clk_i_4_n_0),
        .I5(clk_i_5_n_0),
        .O(clk_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    clk_i_2
       (.I0(c_cnt_reg[6]),
        .I1(c_cnt_reg[7]),
        .I2(c_cnt_reg[4]),
        .I3(c_cnt_reg[5]),
        .I4(c_cnt_reg[9]),
        .I5(c_cnt_reg[8]),
        .O(clk_i_2_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    clk_i_3
       (.I0(c_cnt_reg[12]),
        .I1(c_cnt_reg[13]),
        .I2(c_cnt_reg[10]),
        .I3(c_cnt_reg[11]),
        .I4(c_cnt_reg[15]),
        .I5(c_cnt_reg[14]),
        .O(clk_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    clk_i_4
       (.I0(c_cnt_reg[25]),
        .I1(c_cnt_reg[24]),
        .I2(c_cnt_reg[22]),
        .I3(c_cnt_reg[23]),
        .I4(c_cnt_reg[27]),
        .I5(c_cnt_reg[26]),
        .O(clk_i_4_n_0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    clk_i_5
       (.I0(c_cnt_reg[19]),
        .I1(c_cnt_reg[18]),
        .I2(c_cnt_reg[17]),
        .I3(c_cnt_reg[16]),
        .I4(c_cnt_reg[21]),
        .I5(c_cnt_reg[20]),
        .O(clk_i_5_n_0));
  FDSE #(
    .INIT(1'b1)) 
    clk_reg
       (.C(sysclk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_i_1_n_0),
        .Q(clk_reg_n_0),
        .S(clear));
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
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \seg_sel_OBUF[0]_inst 
       (.I(1'b0),
        .O(seg_sel[0]));
  OBUF \seg_sel_OBUF[1]_inst 
       (.I(1'b1),
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
       (.I(1'b1),
        .O(seg_val[7]));
  BUFG sysclk_IBUF_BUFG_inst
       (.I(sysclk_IBUF),
        .O(sysclk_IBUF_BUFG));
  IBUF sysclk_IBUF_inst
       (.I(sysclk),
        .O(sysclk_IBUF));
  Hex2LED uut0
       (.Q(counter_OBUF),
        .seg_val_OBUF(seg_val_OBUF));
  mid_counter uut1
       (.Q(counter_OBUF),
        .UP_IBUF(UP_IBUF),
        .in0(clk_reg_n_0),
        .reset_IBUF(reset_IBUF));
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
