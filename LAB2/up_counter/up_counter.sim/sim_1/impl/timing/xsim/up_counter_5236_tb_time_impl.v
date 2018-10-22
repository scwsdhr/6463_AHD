// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Sep 30 14:55:41 2018
// Host        : DESKTOP-65OAGH3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/shenc/OneDrive -
//               nyu.edu/6463_AHD/LAB2/up_counter/up_counter.sim/sim_1/impl/timing/xsim/up_counter_5236_tb_time_impl.v}
// Design      : up_counter_5236
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "dab5eacd" *) 
(* NotValidForBitStream *)
module up_counter_5236
   (clk,
    reset,
    counter);
  input clk;
  input reset;
  output [5:0]counter;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [5:0]counter;
  wire [5:0]counter_OBUF;
  wire [5:1]i_cnt;
  wire \i_cnt[0]_i_1_n_0 ;
  wire \i_cnt[5]_i_2_n_0 ;
  wire reset;
  wire reset_IBUF;

initial begin
 $sdf_annotate("up_counter_5236_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
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
  LUT6 #(
    .INIT(64'h00000000FDFFFFFF)) 
    \i_cnt[0]_i_1 
       (.I0(counter_OBUF[2]),
        .I1(counter_OBUF[3]),
        .I2(counter_OBUF[1]),
        .I3(counter_OBUF[4]),
        .I4(counter_OBUF[5]),
        .I5(counter_OBUF[0]),
        .O(\i_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_cnt[1]_i_1 
       (.I0(counter_OBUF[0]),
        .I1(counter_OBUF[1]),
        .O(i_cnt[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \i_cnt[2]_i_1 
       (.I0(counter_OBUF[2]),
        .I1(counter_OBUF[1]),
        .I2(counter_OBUF[0]),
        .O(i_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \i_cnt[3]_i_1 
       (.I0(counter_OBUF[2]),
        .I1(counter_OBUF[3]),
        .I2(counter_OBUF[0]),
        .I3(counter_OBUF[1]),
        .O(i_cnt[3]));
  LUT6 #(
    .INIT(64'h7FFD80007FFF8000)) 
    \i_cnt[4]_i_1 
       (.I0(counter_OBUF[2]),
        .I1(counter_OBUF[3]),
        .I2(counter_OBUF[0]),
        .I3(counter_OBUF[1]),
        .I4(counter_OBUF[4]),
        .I5(counter_OBUF[5]),
        .O(i_cnt[4]));
  LUT6 #(
    .INIT(64'h78F0F0F0F0F0F0F0)) 
    \i_cnt[5]_i_1 
       (.I0(counter_OBUF[4]),
        .I1(counter_OBUF[3]),
        .I2(counter_OBUF[5]),
        .I3(counter_OBUF[2]),
        .I4(counter_OBUF[1]),
        .I5(counter_OBUF[0]),
        .O(i_cnt[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \i_cnt[5]_i_2 
       (.I0(reset_IBUF),
        .O(\i_cnt[5]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\i_cnt[5]_i_2_n_0 ),
        .D(\i_cnt[0]_i_1_n_0 ),
        .Q(counter_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\i_cnt[5]_i_2_n_0 ),
        .D(i_cnt[1]),
        .Q(counter_OBUF[1]));
  FDPE #(
    .INIT(1'b1)) 
    \i_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(i_cnt[2]),
        .PRE(\i_cnt[5]_i_2_n_0 ),
        .Q(counter_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\i_cnt[5]_i_2_n_0 ),
        .D(i_cnt[3]),
        .Q(counter_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\i_cnt[5]_i_2_n_0 ),
        .D(i_cnt[4]),
        .Q(counter_OBUF[4]));
  FDPE #(
    .INIT(1'b1)) 
    \i_cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(i_cnt[5]),
        .PRE(\i_cnt[5]_i_2_n_0 ),
        .Q(counter_OBUF[5]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
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
