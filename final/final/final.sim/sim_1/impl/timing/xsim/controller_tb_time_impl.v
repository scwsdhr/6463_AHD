// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Dec 17 18:16:06 2018
// Host        : DESKTOP-65OAGH3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/UnFound/OneDrive -
//               nyu.edu/6463_AHD/final/final/final.sim/sim_1/impl/timing/xsim/controller_tb_time_impl.v}
// Design      : controller_fpga
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module controller
   (out,
    Match_LED_OBUF,
    SS,
    CLK,
    Data_SW_IBUF);
  output [0:0]out;
  output [3:0]Match_LED_OBUF;
  input [0:0]SS;
  input CLK;
  input Data_SW_IBUF;

  wire CLK;
  wire Data_SW_IBUF;
  wire \FSM_onehot_NextState_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_NextState_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_NextState_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_NextState_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_NextState_reg[4]_i_1_n_0 ;
  wire \FSM_onehot_NextState_reg[5]_i_1_n_0 ;
  wire \FSM_onehot_NextState_reg_n_0_[0] ;
  wire \FSM_onehot_NextState_reg_n_0_[1] ;
  wire \FSM_onehot_NextState_reg_n_0_[2] ;
  wire \FSM_onehot_NextState_reg_n_0_[3] ;
  wire \FSM_onehot_NextState_reg_n_0_[4] ;
  wire \FSM_onehot_NextState_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_State_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_State_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_State_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_State_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_State_reg_n_0_[4] ;
  wire [3:0]Match_LED_OBUF;
  wire NextState;
  wire [0:0]SS;
  (* RTL_KEEP = "yes" *) wire [0:0]out;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_NextState_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_NextState_reg[0]_i_1_n_0 ),
        .G(NextState),
        .GE(1'b1),
        .Q(\FSM_onehot_NextState_reg_n_0_[0] ));
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    \FSM_onehot_NextState_reg[0]_i_1 
       (.I0(out),
        .I1(\FSM_onehot_State_reg_n_0_[4] ),
        .I2(\FSM_onehot_State_reg_n_0_[0] ),
        .I3(Data_SW_IBUF),
        .I4(\FSM_onehot_State_reg_n_0_[1] ),
        .O(\FSM_onehot_NextState_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_NextState_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_NextState_reg[1]_i_1_n_0 ),
        .G(NextState),
        .GE(1'b1),
        .Q(\FSM_onehot_NextState_reg_n_0_[1] ));
  LUT3 #(
    .INIT(8'h32)) 
    \FSM_onehot_NextState_reg[1]_i_1 
       (.I0(\FSM_onehot_State_reg_n_0_[0] ),
        .I1(Data_SW_IBUF),
        .I2(\FSM_onehot_State_reg_n_0_[3] ),
        .O(\FSM_onehot_NextState_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_NextState_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_NextState_reg[2]_i_1_n_0 ),
        .G(NextState),
        .GE(1'b1),
        .Q(\FSM_onehot_NextState_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'h0F0E)) 
    \FSM_onehot_NextState_reg[2]_i_1 
       (.I0(\FSM_onehot_State_reg_n_0_[2] ),
        .I1(\FSM_onehot_State_reg_n_0_[1] ),
        .I2(Data_SW_IBUF),
        .I3(out),
        .O(\FSM_onehot_NextState_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_NextState_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_NextState_reg[3]_i_1_n_0 ),
        .G(NextState),
        .GE(1'b1),
        .Q(\FSM_onehot_NextState_reg_n_0_[3] ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_NextState_reg[3]_i_1 
       (.I0(\FSM_onehot_State_reg_n_0_[2] ),
        .I1(Data_SW_IBUF),
        .O(\FSM_onehot_NextState_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_NextState_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_NextState_reg[4]_i_1_n_0 ),
        .G(NextState),
        .GE(1'b1),
        .Q(\FSM_onehot_NextState_reg_n_0_[4] ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_NextState_reg[4]_i_1 
       (.I0(\FSM_onehot_State_reg_n_0_[3] ),
        .I1(Data_SW_IBUF),
        .O(\FSM_onehot_NextState_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_NextState_reg[5] 
       (.CLR(1'b0),
        .D(\FSM_onehot_NextState_reg[5]_i_1_n_0 ),
        .G(NextState),
        .GE(1'b1),
        .Q(\FSM_onehot_NextState_reg_n_0_[5] ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_NextState_reg[5]_i_1 
       (.I0(\FSM_onehot_State_reg_n_0_[4] ),
        .I1(Data_SW_IBUF),
        .O(\FSM_onehot_NextState_reg[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s3:001000,s1:000010,s4:010000,s5:100000,s0:000001,s2:000100" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_State_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_NextState_reg_n_0_[0] ),
        .Q(\FSM_onehot_State_reg_n_0_[0] ),
        .S(SS));
  (* FSM_ENCODED_STATES = "s3:001000,s1:000010,s4:010000,s5:100000,s0:000001,s2:000100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_NextState_reg_n_0_[1] ),
        .Q(\FSM_onehot_State_reg_n_0_[1] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "s3:001000,s1:000010,s4:010000,s5:100000,s0:000001,s2:000100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_NextState_reg_n_0_[2] ),
        .Q(\FSM_onehot_State_reg_n_0_[2] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "s3:001000,s1:000010,s4:010000,s5:100000,s0:000001,s2:000100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_NextState_reg_n_0_[3] ),
        .Q(\FSM_onehot_State_reg_n_0_[3] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "s3:001000,s1:000010,s4:010000,s5:100000,s0:000001,s2:000100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_NextState_reg_n_0_[4] ),
        .Q(\FSM_onehot_State_reg_n_0_[4] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "s3:001000,s1:000010,s4:010000,s5:100000,s0:000001,s2:000100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_NextState_reg_n_0_[5] ),
        .Q(out),
        .R(SS));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Match_LED_OBUF[0]_inst_i_1 
       (.I0(\FSM_onehot_State_reg_n_0_[4] ),
        .I1(\FSM_onehot_State_reg_n_0_[2] ),
        .I2(\FSM_onehot_State_reg_n_0_[1] ),
        .I3(out),
        .I4(\FSM_onehot_State_reg_n_0_[3] ),
        .O(Match_LED_OBUF[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Match_LED_OBUF[1]_inst_i_1 
       (.I0(out),
        .I1(\FSM_onehot_State_reg_n_0_[4] ),
        .I2(\FSM_onehot_State_reg_n_0_[2] ),
        .I3(\FSM_onehot_State_reg_n_0_[3] ),
        .O(Match_LED_OBUF[1]));
  LUT3 #(
    .INIT(8'hFE)) 
    \Match_LED_OBUF[2]_inst_i_1 
       (.I0(\FSM_onehot_State_reg_n_0_[4] ),
        .I1(\FSM_onehot_State_reg_n_0_[3] ),
        .I2(out),
        .O(Match_LED_OBUF[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \Match_LED_OBUF[3]_inst_i_1 
       (.I0(\FSM_onehot_State_reg_n_0_[4] ),
        .I1(out),
        .O(Match_LED_OBUF[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \__2/i_ 
       (.I0(out),
        .I1(\FSM_onehot_State_reg_n_0_[4] ),
        .I2(\FSM_onehot_State_reg_n_0_[1] ),
        .I3(\FSM_onehot_State_reg_n_0_[0] ),
        .I4(\FSM_onehot_State_reg_n_0_[3] ),
        .I5(\FSM_onehot_State_reg_n_0_[2] ),
        .O(NextState));
endmodule

(* ECO_CHECKSUM = "97672fe0" *) 
(* NotValidForBitStream *)
module controller_fpga
   (Rst,
    SysClk,
    Clk_Btn,
    Data_SW,
    Match_LED,
    Detect_LED,
    SSEG_CA,
    SSEG_AN);
  input Rst;
  input SysClk;
  input Clk_Btn;
  input Data_SW;
  output [4:0]Match_LED;
  output Detect_LED;
  output [7:0]SSEG_CA;
  output [7:0]SSEG_AN;

  wire Clk;
  wire Clk_Btn;
  wire Clk_Btn_IBUF;
  wire Clk_Btn_buf;
  wire Clk_i_1_n_0;
  wire Clk_reg_n_0;
  wire Data_SW;
  wire Data_SW_IBUF;
  wire Detect_LED;
  wire DispBit;
  wire DispBit_i_2_n_0;
  wire DispBit_i_3_n_0;
  wire \DispBits_reg_n_0_[0] ;
  wire \DispClk[0]_i_2_n_0 ;
  wire \DispClk_reg[0]_i_1_n_0 ;
  wire \DispClk_reg[0]_i_1_n_4 ;
  wire \DispClk_reg[0]_i_1_n_5 ;
  wire \DispClk_reg[0]_i_1_n_6 ;
  wire \DispClk_reg[0]_i_1_n_7 ;
  wire \DispClk_reg[12]_i_1_n_0 ;
  wire \DispClk_reg[12]_i_1_n_4 ;
  wire \DispClk_reg[12]_i_1_n_5 ;
  wire \DispClk_reg[12]_i_1_n_6 ;
  wire \DispClk_reg[12]_i_1_n_7 ;
  wire \DispClk_reg[16]_i_1_n_5 ;
  wire \DispClk_reg[16]_i_1_n_6 ;
  wire \DispClk_reg[16]_i_1_n_7 ;
  wire \DispClk_reg[4]_i_1_n_0 ;
  wire \DispClk_reg[4]_i_1_n_4 ;
  wire \DispClk_reg[4]_i_1_n_5 ;
  wire \DispClk_reg[4]_i_1_n_6 ;
  wire \DispClk_reg[4]_i_1_n_7 ;
  wire \DispClk_reg[8]_i_1_n_0 ;
  wire \DispClk_reg[8]_i_1_n_4 ;
  wire \DispClk_reg[8]_i_1_n_5 ;
  wire \DispClk_reg[8]_i_1_n_6 ;
  wire \DispClk_reg[8]_i_1_n_7 ;
  wire \DispClk_reg_n_0_[0] ;
  wire \DispClk_reg_n_0_[10] ;
  wire \DispClk_reg_n_0_[11] ;
  wire \DispClk_reg_n_0_[12] ;
  wire \DispClk_reg_n_0_[13] ;
  wire \DispClk_reg_n_0_[14] ;
  wire \DispClk_reg_n_0_[1] ;
  wire \DispClk_reg_n_0_[2] ;
  wire \DispClk_reg_n_0_[3] ;
  wire \DispClk_reg_n_0_[4] ;
  wire \DispClk_reg_n_0_[5] ;
  wire \DispClk_reg_n_0_[6] ;
  wire \DispClk_reg_n_0_[7] ;
  wire \DispClk_reg_n_0_[8] ;
  wire \DispClk_reg_n_0_[9] ;
  wire [7:0]DispVld;
  wire \DispVld[7]_i_2_n_0 ;
  wire [4:0]Match_LED;
  wire [3:0]Match_LED_OBUF;
  wire Rst;
  wire Rst_IBUF;
  wire [7:0]SSEG_AN;
  wire \SSEG_AN[0]_i_1_n_0 ;
  wire \SSEG_AN[1]_i_1_n_0 ;
  wire \SSEG_AN[2]_i_1_n_0 ;
  wire \SSEG_AN[3]_i_1_n_0 ;
  wire \SSEG_AN[4]_i_1_n_0 ;
  wire \SSEG_AN[5]_i_1_n_0 ;
  wire \SSEG_AN[6]_i_1_n_0 ;
  wire \SSEG_AN[7]_i_1_n_0 ;
  wire \SSEG_AN[7]_i_2_n_0 ;
  wire [7:0]SSEG_AN_OBUF;
  wire [7:0]SSEG_CA;
  wire [0:0]SSEG_CA_OBUF;
  wire SysClk;
  wire SysClk_IBUF;
  wire SysClk_IBUF_BUFG;
  wire controller_uut_n_0;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire p_0_in;
  wire [2:0]sel0;
  wire [2:0]\NLW_DispClk_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DispClk_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_DispClk_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_DispClk_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_DispClk_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DispClk_reg[8]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("controller_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF Clk_Btn_IBUF_inst
       (.I(Clk_Btn),
        .O(Clk_Btn_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    Clk_Btn_buf_reg
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(Clk_Btn_IBUF),
        .Q(Clk_Btn_buf),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB2)) 
    Clk_i_1
       (.I0(Clk_reg_n_0),
        .I1(Clk_Btn_buf),
        .I2(Clk_Btn_IBUF),
        .O(Clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Clk_reg
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(Clk_i_1_n_0),
        .Q(Clk_reg_n_0),
        .R(1'b0));
  IBUF Data_SW_IBUF_inst
       (.I(Data_SW),
        .O(Data_SW_IBUF));
  OBUF Detect_LED_OBUF_inst
       (.I(controller_uut_n_0),
        .O(Detect_LED));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    DispBit_i_2
       (.I0(data3),
        .I1(data2),
        .I2(sel0[1]),
        .I3(data1),
        .I4(sel0[0]),
        .I5(\DispBits_reg_n_0_[0] ),
        .O(DispBit_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    DispBit_i_3
       (.I0(data7),
        .I1(data6),
        .I2(sel0[1]),
        .I3(data5),
        .I4(sel0[0]),
        .I5(data4),
        .O(DispBit_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    DispBit_reg
       (.C(Clk),
        .CE(1'b1),
        .D(DispBit),
        .Q(SSEG_CA_OBUF),
        .R(1'b0));
  MUXF7 DispBit_reg_i_1
       (.I0(DispBit_i_2_n_0),
        .I1(DispBit_i_3_n_0),
        .O(DispBit),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DispBits_reg[0] 
       (.C(Clk_reg_n_0),
        .CE(1'b1),
        .D(Data_SW_IBUF),
        .Q(\DispBits_reg_n_0_[0] ),
        .R(Rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DispBits_reg[1] 
       (.C(Clk_reg_n_0),
        .CE(1'b1),
        .D(\DispBits_reg_n_0_[0] ),
        .Q(data1),
        .R(Rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DispBits_reg[2] 
       (.C(Clk_reg_n_0),
        .CE(1'b1),
        .D(data1),
        .Q(data2),
        .R(Rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DispBits_reg[3] 
       (.C(Clk_reg_n_0),
        .CE(1'b1),
        .D(data2),
        .Q(data3),
        .R(Rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DispBits_reg[4] 
       (.C(Clk_reg_n_0),
        .CE(1'b1),
        .D(data3),
        .Q(data4),
        .R(Rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DispBits_reg[5] 
       (.C(Clk_reg_n_0),
        .CE(1'b1),
        .D(data4),
        .Q(data5),
        .R(Rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DispBits_reg[6] 
       (.C(Clk_reg_n_0),
        .CE(1'b1),
        .D(data5),
        .Q(data6),
        .R(Rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DispBits_reg[7] 
       (.C(Clk_reg_n_0),
        .CE(1'b1),
        .D(data6),
        .Q(data7),
        .R(Rst_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \DispClk[0]_i_2 
       (.I0(\DispClk_reg_n_0_[0] ),
        .O(\DispClk[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[0] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[0]_i_1_n_7 ),
        .Q(\DispClk_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \DispClk_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\DispClk_reg[0]_i_1_n_0 ,\NLW_DispClk_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\DispClk_reg[0]_i_1_n_4 ,\DispClk_reg[0]_i_1_n_5 ,\DispClk_reg[0]_i_1_n_6 ,\DispClk_reg[0]_i_1_n_7 }),
        .S({\DispClk_reg_n_0_[3] ,\DispClk_reg_n_0_[2] ,\DispClk_reg_n_0_[1] ,\DispClk[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[10] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[8]_i_1_n_5 ),
        .Q(\DispClk_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[11] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[8]_i_1_n_4 ),
        .Q(\DispClk_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[12] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[12]_i_1_n_7 ),
        .Q(\DispClk_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \DispClk_reg[12]_i_1 
       (.CI(\DispClk_reg[8]_i_1_n_0 ),
        .CO({\DispClk_reg[12]_i_1_n_0 ,\NLW_DispClk_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DispClk_reg[12]_i_1_n_4 ,\DispClk_reg[12]_i_1_n_5 ,\DispClk_reg[12]_i_1_n_6 ,\DispClk_reg[12]_i_1_n_7 }),
        .S({Clk,\DispClk_reg_n_0_[14] ,\DispClk_reg_n_0_[13] ,\DispClk_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[13] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[12]_i_1_n_6 ),
        .Q(\DispClk_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[14] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[12]_i_1_n_5 ),
        .Q(\DispClk_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[15] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[12]_i_1_n_4 ),
        .Q(Clk),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[16] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[16]_i_1_n_7 ),
        .Q(sel0[0]),
        .R(1'b0));
  CARRY4 \DispClk_reg[16]_i_1 
       (.CI(\DispClk_reg[12]_i_1_n_0 ),
        .CO(\NLW_DispClk_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_DispClk_reg[16]_i_1_O_UNCONNECTED [3],\DispClk_reg[16]_i_1_n_5 ,\DispClk_reg[16]_i_1_n_6 ,\DispClk_reg[16]_i_1_n_7 }),
        .S({1'b0,sel0}));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[17] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[16]_i_1_n_6 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[18] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[16]_i_1_n_5 ),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[1] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[0]_i_1_n_6 ),
        .Q(\DispClk_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[2] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[0]_i_1_n_5 ),
        .Q(\DispClk_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[3] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[0]_i_1_n_4 ),
        .Q(\DispClk_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[4] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[4]_i_1_n_7 ),
        .Q(\DispClk_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \DispClk_reg[4]_i_1 
       (.CI(\DispClk_reg[0]_i_1_n_0 ),
        .CO({\DispClk_reg[4]_i_1_n_0 ,\NLW_DispClk_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DispClk_reg[4]_i_1_n_4 ,\DispClk_reg[4]_i_1_n_5 ,\DispClk_reg[4]_i_1_n_6 ,\DispClk_reg[4]_i_1_n_7 }),
        .S({\DispClk_reg_n_0_[7] ,\DispClk_reg_n_0_[6] ,\DispClk_reg_n_0_[5] ,\DispClk_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[5] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[4]_i_1_n_6 ),
        .Q(\DispClk_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[6] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[4]_i_1_n_5 ),
        .Q(\DispClk_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[7] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[4]_i_1_n_4 ),
        .Q(\DispClk_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[8] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[8]_i_1_n_7 ),
        .Q(\DispClk_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \DispClk_reg[8]_i_1 
       (.CI(\DispClk_reg[4]_i_1_n_0 ),
        .CO({\DispClk_reg[8]_i_1_n_0 ,\NLW_DispClk_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DispClk_reg[8]_i_1_n_4 ,\DispClk_reg[8]_i_1_n_5 ,\DispClk_reg[8]_i_1_n_6 ,\DispClk_reg[8]_i_1_n_7 }),
        .S({\DispClk_reg_n_0_[11] ,\DispClk_reg_n_0_[10] ,\DispClk_reg_n_0_[9] ,\DispClk_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \DispClk_reg[9] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\DispClk_reg[8]_i_1_n_6 ),
        .Q(\DispClk_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \DispVld[7]_i_1 
       (.I0(DispVld[0]),
        .I1(DispVld[1]),
        .I2(DispVld[2]),
        .I3(DispVld[3]),
        .I4(\DispVld[7]_i_2_n_0 ),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h0001)) 
    \DispVld[7]_i_2 
       (.I0(DispVld[6]),
        .I1(DispVld[7]),
        .I2(DispVld[5]),
        .I3(DispVld[4]),
        .O(\DispVld[7]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \DispVld_reg[0] 
       (.C(Clk_reg_n_0),
        .CE(p_0_in),
        .D(1'b0),
        .Q(DispVld[0]),
        .S(Rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \DispVld_reg[1] 
       (.C(Clk_reg_n_0),
        .CE(p_0_in),
        .D(DispVld[0]),
        .Q(DispVld[1]),
        .S(Rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \DispVld_reg[2] 
       (.C(Clk_reg_n_0),
        .CE(p_0_in),
        .D(DispVld[1]),
        .Q(DispVld[2]),
        .S(Rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \DispVld_reg[3] 
       (.C(Clk_reg_n_0),
        .CE(p_0_in),
        .D(DispVld[2]),
        .Q(DispVld[3]),
        .S(Rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \DispVld_reg[4] 
       (.C(Clk_reg_n_0),
        .CE(p_0_in),
        .D(DispVld[3]),
        .Q(DispVld[4]),
        .S(Rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \DispVld_reg[5] 
       (.C(Clk_reg_n_0),
        .CE(p_0_in),
        .D(DispVld[4]),
        .Q(DispVld[5]),
        .S(Rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \DispVld_reg[6] 
       (.C(Clk_reg_n_0),
        .CE(p_0_in),
        .D(DispVld[5]),
        .Q(DispVld[6]),
        .S(Rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \DispVld_reg[7] 
       (.C(Clk_reg_n_0),
        .CE(p_0_in),
        .D(DispVld[6]),
        .Q(DispVld[7]),
        .S(Rst_IBUF));
  OBUF \Match_LED_OBUF[0]_inst 
       (.I(Match_LED_OBUF[0]),
        .O(Match_LED[0]));
  OBUF \Match_LED_OBUF[1]_inst 
       (.I(Match_LED_OBUF[1]),
        .O(Match_LED[1]));
  OBUF \Match_LED_OBUF[2]_inst 
       (.I(Match_LED_OBUF[2]),
        .O(Match_LED[2]));
  OBUF \Match_LED_OBUF[3]_inst 
       (.I(Match_LED_OBUF[3]),
        .O(Match_LED[3]));
  OBUF \Match_LED_OBUF[4]_inst 
       (.I(controller_uut_n_0),
        .O(Match_LED[4]));
  IBUF Rst_IBUF_inst
       (.I(Rst),
        .O(Rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \SSEG_AN[0]_i_1 
       (.I0(sel0[1]),
        .I1(DispVld[0]),
        .I2(sel0[0]),
        .O(\SSEG_AN[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \SSEG_AN[1]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(DispVld[1]),
        .O(\SSEG_AN[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \SSEG_AN[2]_i_1 
       (.I0(DispVld[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(\SSEG_AN[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \SSEG_AN[3]_i_1 
       (.I0(sel0[0]),
        .I1(DispVld[3]),
        .I2(sel0[1]),
        .O(\SSEG_AN[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \SSEG_AN[4]_i_1 
       (.I0(sel0[1]),
        .I1(DispVld[4]),
        .I2(sel0[0]),
        .O(\SSEG_AN[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \SSEG_AN[5]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(DispVld[5]),
        .O(\SSEG_AN[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \SSEG_AN[6]_i_1 
       (.I0(DispVld[6]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(\SSEG_AN[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \SSEG_AN[7]_i_1 
       (.I0(sel0[2]),
        .O(\SSEG_AN[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \SSEG_AN[7]_i_2 
       (.I0(sel0[0]),
        .I1(DispVld[7]),
        .I2(sel0[1]),
        .O(\SSEG_AN[7]_i_2_n_0 ));
  OBUF \SSEG_AN_OBUF[0]_inst 
       (.I(SSEG_AN_OBUF[0]),
        .O(SSEG_AN[0]));
  OBUF \SSEG_AN_OBUF[1]_inst 
       (.I(SSEG_AN_OBUF[1]),
        .O(SSEG_AN[1]));
  OBUF \SSEG_AN_OBUF[2]_inst 
       (.I(SSEG_AN_OBUF[2]),
        .O(SSEG_AN[2]));
  OBUF \SSEG_AN_OBUF[3]_inst 
       (.I(SSEG_AN_OBUF[3]),
        .O(SSEG_AN[3]));
  OBUF \SSEG_AN_OBUF[4]_inst 
       (.I(SSEG_AN_OBUF[4]),
        .O(SSEG_AN[4]));
  OBUF \SSEG_AN_OBUF[5]_inst 
       (.I(SSEG_AN_OBUF[5]),
        .O(SSEG_AN[5]));
  OBUF \SSEG_AN_OBUF[6]_inst 
       (.I(SSEG_AN_OBUF[6]),
        .O(SSEG_AN[6]));
  OBUF \SSEG_AN_OBUF[7]_inst 
       (.I(SSEG_AN_OBUF[7]),
        .O(SSEG_AN[7]));
  FDSE #(
    .INIT(1'b1)) 
    \SSEG_AN_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\SSEG_AN[0]_i_1_n_0 ),
        .Q(SSEG_AN_OBUF[0]),
        .S(sel0[2]));
  FDSE #(
    .INIT(1'b1)) 
    \SSEG_AN_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\SSEG_AN[1]_i_1_n_0 ),
        .Q(SSEG_AN_OBUF[1]),
        .S(sel0[2]));
  FDSE #(
    .INIT(1'b1)) 
    \SSEG_AN_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(\SSEG_AN[2]_i_1_n_0 ),
        .Q(SSEG_AN_OBUF[2]),
        .S(sel0[2]));
  FDSE #(
    .INIT(1'b1)) 
    \SSEG_AN_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(\SSEG_AN[3]_i_1_n_0 ),
        .Q(SSEG_AN_OBUF[3]),
        .S(sel0[2]));
  FDSE #(
    .INIT(1'b1)) 
    \SSEG_AN_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(\SSEG_AN[4]_i_1_n_0 ),
        .Q(SSEG_AN_OBUF[4]),
        .S(\SSEG_AN[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SSEG_AN_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(\SSEG_AN[5]_i_1_n_0 ),
        .Q(SSEG_AN_OBUF[5]),
        .S(\SSEG_AN[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SSEG_AN_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(\SSEG_AN[6]_i_1_n_0 ),
        .Q(SSEG_AN_OBUF[6]),
        .S(\SSEG_AN[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SSEG_AN_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .D(\SSEG_AN[7]_i_2_n_0 ),
        .Q(SSEG_AN_OBUF[7]),
        .S(\SSEG_AN[7]_i_1_n_0 ));
  OBUF \SSEG_CA_OBUF[0]_inst 
       (.I(SSEG_CA_OBUF),
        .O(SSEG_CA[0]));
  OBUF \SSEG_CA_OBUF[1]_inst 
       (.I(1'b0),
        .O(SSEG_CA[1]));
  OBUF \SSEG_CA_OBUF[2]_inst 
       (.I(1'b0),
        .O(SSEG_CA[2]));
  OBUF \SSEG_CA_OBUF[3]_inst 
       (.I(SSEG_CA_OBUF),
        .O(SSEG_CA[3]));
  OBUF \SSEG_CA_OBUF[4]_inst 
       (.I(SSEG_CA_OBUF),
        .O(SSEG_CA[4]));
  OBUF \SSEG_CA_OBUF[5]_inst 
       (.I(SSEG_CA_OBUF),
        .O(SSEG_CA[5]));
  OBUF \SSEG_CA_OBUF[6]_inst 
       (.I(1'b1),
        .O(SSEG_CA[6]));
  OBUF \SSEG_CA_OBUF[7]_inst 
       (.I(1'b1),
        .O(SSEG_CA[7]));
  BUFG SysClk_IBUF_BUFG_inst
       (.I(SysClk_IBUF),
        .O(SysClk_IBUF_BUFG));
  IBUF SysClk_IBUF_inst
       (.I(SysClk),
        .O(SysClk_IBUF));
  controller controller_uut
       (.CLK(Clk_reg_n_0),
        .Data_SW_IBUF(Data_SW_IBUF),
        .Match_LED_OBUF(Match_LED_OBUF),
        .SS(Rst_IBUF),
        .out(controller_uut_n_0));
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
