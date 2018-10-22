-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Mon Oct 22 06:10:36 2018
-- Host        : DESKTOP-65OAGH3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/shenc/OneDrive -
--               nyu.edu/6463_AHD/LAB4/rc5_dec/rc5_dec.sim/sim_1/impl/func/xsim/rc5_dec_tb_func_impl.vhd}
-- Design      : rc5_dec
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rc5_dec is
  port (
    clr : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    di_vld : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 );
    do_rdy : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rc5_dec : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of rc5_dec : entity is "a2b86ff8";
end rc5_dec;

architecture STRUCTURE of rc5_dec is
  signal a : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal a_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \a_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[17]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[21]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[22]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[24]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[25]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[26]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[28]_i_10_n_0\ : STD_LOGIC;
  signal \a_reg[28]_i_11_n_0\ : STD_LOGIC;
  signal \a_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[28]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[28]_i_4_n_0\ : STD_LOGIC;
  signal \a_reg[28]_i_5_n_0\ : STD_LOGIC;
  signal \a_reg[28]_i_6_n_0\ : STD_LOGIC;
  signal \a_reg[28]_i_7_n_0\ : STD_LOGIC;
  signal \a_reg[28]_i_8_n_0\ : STD_LOGIC;
  signal \a_reg[28]_i_9_n_0\ : STD_LOGIC;
  signal \a_reg[29]_i_10_n_0\ : STD_LOGIC;
  signal \a_reg[29]_i_11_n_0\ : STD_LOGIC;
  signal \a_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[29]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[29]_i_4_n_0\ : STD_LOGIC;
  signal \a_reg[29]_i_5_n_0\ : STD_LOGIC;
  signal \a_reg[29]_i_6_n_0\ : STD_LOGIC;
  signal \a_reg[29]_i_7_n_0\ : STD_LOGIC;
  signal \a_reg[29]_i_8_n_0\ : STD_LOGIC;
  signal \a_reg[29]_i_9_n_0\ : STD_LOGIC;
  signal \a_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[30]_i_10_n_0\ : STD_LOGIC;
  signal \a_reg[30]_i_11_n_0\ : STD_LOGIC;
  signal \a_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[30]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[30]_i_4_n_0\ : STD_LOGIC;
  signal \a_reg[30]_i_5_n_0\ : STD_LOGIC;
  signal \a_reg[30]_i_6_n_0\ : STD_LOGIC;
  signal \a_reg[30]_i_7_n_0\ : STD_LOGIC;
  signal \a_reg[30]_i_8_n_0\ : STD_LOGIC;
  signal \a_reg[30]_i_9_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_10_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_11_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_12_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_13_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_9_n_0\ : STD_LOGIC;
  signal \a_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg_reg[31]_i_14_n_0\ : STD_LOGIC;
  signal \a_reg_reg[31]_i_15_n_0\ : STD_LOGIC;
  signal \a_reg_reg[31]_i_16_n_0\ : STD_LOGIC;
  signal \a_reg_reg[31]_i_17_n_0\ : STD_LOGIC;
  signal \a_reg_reg[31]_i_19_n_0\ : STD_LOGIC;
  signal \a_reg_reg[31]_i_20_n_0\ : STD_LOGIC;
  signal \a_reg_reg[31]_i_21_n_0\ : STD_LOGIC;
  signal b_reg : STD_LOGIC;
  signal \b_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal clr_IBUF : STD_LOGIC;
  signal di_vld_IBUF : STD_LOGIC;
  signal din_IBUF : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal do_rdy_OBUF : STD_LOGIC;
  signal do_rdy_i_1_n_0 : STD_LOGIC;
  signal \dout[16]_i_2_n_0\ : STD_LOGIC;
  signal \dout[16]_i_3_n_0\ : STD_LOGIC;
  signal \dout[17]_i_2_n_0\ : STD_LOGIC;
  signal \dout[17]_i_3_n_0\ : STD_LOGIC;
  signal \dout[18]_i_2_n_0\ : STD_LOGIC;
  signal \dout[18]_i_3_n_0\ : STD_LOGIC;
  signal \dout[19]_i_2_n_0\ : STD_LOGIC;
  signal \dout[19]_i_3_n_0\ : STD_LOGIC;
  signal \dout[20]_i_2_n_0\ : STD_LOGIC;
  signal \dout[20]_i_3_n_0\ : STD_LOGIC;
  signal \dout[21]_i_2_n_0\ : STD_LOGIC;
  signal \dout[21]_i_3_n_0\ : STD_LOGIC;
  signal \dout[22]_i_2_n_0\ : STD_LOGIC;
  signal \dout[22]_i_3_n_0\ : STD_LOGIC;
  signal \dout[23]_i_2_n_0\ : STD_LOGIC;
  signal \dout[23]_i_3_n_0\ : STD_LOGIC;
  signal \dout[24]_i_2_n_0\ : STD_LOGIC;
  signal \dout[24]_i_3_n_0\ : STD_LOGIC;
  signal \dout[25]_i_2_n_0\ : STD_LOGIC;
  signal \dout[25]_i_3_n_0\ : STD_LOGIC;
  signal \dout[26]_i_2_n_0\ : STD_LOGIC;
  signal \dout[26]_i_3_n_0\ : STD_LOGIC;
  signal \dout[27]_i_2_n_0\ : STD_LOGIC;
  signal \dout[27]_i_3_n_0\ : STD_LOGIC;
  signal \dout[28]_i_10_n_0\ : STD_LOGIC;
  signal \dout[28]_i_11_n_0\ : STD_LOGIC;
  signal \dout[28]_i_2_n_0\ : STD_LOGIC;
  signal \dout[28]_i_3_n_0\ : STD_LOGIC;
  signal \dout[28]_i_4_n_0\ : STD_LOGIC;
  signal \dout[28]_i_5_n_0\ : STD_LOGIC;
  signal \dout[28]_i_6_n_0\ : STD_LOGIC;
  signal \dout[28]_i_7_n_0\ : STD_LOGIC;
  signal \dout[28]_i_8_n_0\ : STD_LOGIC;
  signal \dout[28]_i_9_n_0\ : STD_LOGIC;
  signal \dout[29]_i_10_n_0\ : STD_LOGIC;
  signal \dout[29]_i_11_n_0\ : STD_LOGIC;
  signal \dout[29]_i_2_n_0\ : STD_LOGIC;
  signal \dout[29]_i_3_n_0\ : STD_LOGIC;
  signal \dout[29]_i_4_n_0\ : STD_LOGIC;
  signal \dout[29]_i_5_n_0\ : STD_LOGIC;
  signal \dout[29]_i_6_n_0\ : STD_LOGIC;
  signal \dout[29]_i_7_n_0\ : STD_LOGIC;
  signal \dout[29]_i_8_n_0\ : STD_LOGIC;
  signal \dout[29]_i_9_n_0\ : STD_LOGIC;
  signal \dout[30]_i_10_n_0\ : STD_LOGIC;
  signal \dout[30]_i_11_n_0\ : STD_LOGIC;
  signal \dout[30]_i_2_n_0\ : STD_LOGIC;
  signal \dout[30]_i_3_n_0\ : STD_LOGIC;
  signal \dout[30]_i_4_n_0\ : STD_LOGIC;
  signal \dout[30]_i_5_n_0\ : STD_LOGIC;
  signal \dout[30]_i_6_n_0\ : STD_LOGIC;
  signal \dout[30]_i_7_n_0\ : STD_LOGIC;
  signal \dout[30]_i_8_n_0\ : STD_LOGIC;
  signal \dout[30]_i_9_n_0\ : STD_LOGIC;
  signal \dout[31]_i_10_n_0\ : STD_LOGIC;
  signal \dout[31]_i_11_n_0\ : STD_LOGIC;
  signal \dout[31]_i_2_n_0\ : STD_LOGIC;
  signal \dout[31]_i_3_n_0\ : STD_LOGIC;
  signal \dout[31]_i_4_n_0\ : STD_LOGIC;
  signal \dout[31]_i_5_n_0\ : STD_LOGIC;
  signal \dout[31]_i_6_n_0\ : STD_LOGIC;
  signal \dout[31]_i_7_n_0\ : STD_LOGIC;
  signal \dout[31]_i_8_n_0\ : STD_LOGIC;
  signal \dout[31]_i_9_n_0\ : STD_LOGIC;
  signal \dout[63]_i_1_n_0\ : STD_LOGIC;
  signal dout_OBUF : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \dout_reg[31]_i_12_n_0\ : STD_LOGIC;
  signal \dout_reg[31]_i_13_n_0\ : STD_LOGIC;
  signal \dout_reg[31]_i_14_n_0\ : STD_LOGIC;
  signal \dout_reg[31]_i_15_n_0\ : STD_LOGIC;
  signal \dout_reg[31]_i_17_n_0\ : STD_LOGIC;
  signal \dout_reg[31]_i_18_n_0\ : STD_LOGIC;
  signal \dout_reg[31]_i_19_n_0\ : STD_LOGIC;
  signal \g0_b0__0_n_0\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal \g0_b10__0_n_0\ : STD_LOGIC;
  signal g0_b10_n_0 : STD_LOGIC;
  signal \g0_b11__0_n_0\ : STD_LOGIC;
  signal g0_b11_n_0 : STD_LOGIC;
  signal \g0_b12__0_n_0\ : STD_LOGIC;
  signal g0_b12_n_0 : STD_LOGIC;
  signal \g0_b13__0_n_0\ : STD_LOGIC;
  signal g0_b13_n_0 : STD_LOGIC;
  signal \g0_b14__0_n_0\ : STD_LOGIC;
  signal g0_b14_n_0 : STD_LOGIC;
  signal \g0_b15__0_n_0\ : STD_LOGIC;
  signal g0_b15_n_0 : STD_LOGIC;
  signal \g0_b16__0_n_0\ : STD_LOGIC;
  signal g0_b16_n_0 : STD_LOGIC;
  signal \g0_b17__0_n_0\ : STD_LOGIC;
  signal g0_b17_n_0 : STD_LOGIC;
  signal \g0_b18__0_n_0\ : STD_LOGIC;
  signal g0_b18_n_0 : STD_LOGIC;
  signal \g0_b19__0_n_0\ : STD_LOGIC;
  signal g0_b19_n_0 : STD_LOGIC;
  signal \g0_b1__0_n_0\ : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal \g0_b20__0_n_0\ : STD_LOGIC;
  signal g0_b20_n_0 : STD_LOGIC;
  signal \g0_b21__0_n_0\ : STD_LOGIC;
  signal g0_b21_n_0 : STD_LOGIC;
  signal \g0_b22__0_n_0\ : STD_LOGIC;
  signal g0_b22_n_0 : STD_LOGIC;
  signal \g0_b23__0_n_0\ : STD_LOGIC;
  signal g0_b23_n_0 : STD_LOGIC;
  signal \g0_b24__0_n_0\ : STD_LOGIC;
  signal g0_b24_n_0 : STD_LOGIC;
  signal \g0_b25__0_n_0\ : STD_LOGIC;
  signal g0_b25_n_0 : STD_LOGIC;
  signal \g0_b26__0_n_0\ : STD_LOGIC;
  signal g0_b26_n_0 : STD_LOGIC;
  signal \g0_b27__0_n_0\ : STD_LOGIC;
  signal g0_b27_n_0 : STD_LOGIC;
  signal \g0_b28__0_n_0\ : STD_LOGIC;
  signal g0_b28_n_0 : STD_LOGIC;
  signal \g0_b29__0_n_0\ : STD_LOGIC;
  signal g0_b29_n_0 : STD_LOGIC;
  signal \g0_b2__0_n_0\ : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal \g0_b30__0_n_0\ : STD_LOGIC;
  signal g0_b30_n_0 : STD_LOGIC;
  signal \g0_b31__0_n_0\ : STD_LOGIC;
  signal g0_b31_n_0 : STD_LOGIC;
  signal \g0_b3__0_n_0\ : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal \g0_b4__0_n_0\ : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal \g0_b5__0_n_0\ : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal \g0_b6__0_n_0\ : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal \g0_b7__0_n_0\ : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal \g0_b8__0_n_0\ : STD_LOGIC;
  signal g0_b8_n_0 : STD_LOGIC;
  signal \g0_b9__0_n_0\ : STD_LOGIC;
  signal g0_b9_n_0 : STD_LOGIC;
  signal \i_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \i_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \i_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \i_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \i_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal i_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal minusOp0_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal minusOp2_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_a_reg_reg[31]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_a_reg_reg[31]_i_15_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_a_reg_reg[31]_i_16_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_a_reg_reg[31]_i_17_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_a_reg_reg[31]_i_18_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_a_reg_reg[31]_i_19_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_a_reg_reg[31]_i_20_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_a_reg_reg[31]_i_21_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[31]_i_12_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[31]_i_13_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[31]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[31]_i_15_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[31]_i_16_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dout_reg[31]_i_17_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[31]_i_18_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[31]_i_19_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \b_reg[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \b_reg[10]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \b_reg[11]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \b_reg[12]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \b_reg[13]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \b_reg[14]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \b_reg[15]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \b_reg[16]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \b_reg[17]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \b_reg[18]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \b_reg[19]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \b_reg[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \b_reg[20]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \b_reg[21]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \b_reg[22]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \b_reg[23]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \b_reg[24]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \b_reg[25]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \b_reg[26]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \b_reg[27]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \b_reg[28]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \b_reg[29]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \b_reg[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \b_reg[30]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \b_reg[31]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \b_reg[3]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \b_reg[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \b_reg[5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \b_reg[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \b_reg[7]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \b_reg[8]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \b_reg[9]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dout[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dout[11]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dout[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \dout[13]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dout[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dout[15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dout[21]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dout[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dout[23]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dout[24]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dout[25]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dout[26]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dout[27]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dout[28]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \dout[29]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dout[30]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dout[31]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dout[32]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \dout[33]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dout[34]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \dout[35]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dout[36]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dout[37]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dout[38]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dout[39]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dout[40]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dout[41]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dout[42]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dout[43]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dout[44]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dout[45]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dout[46]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dout[47]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dout[48]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \dout[49]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dout[50]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \dout[51]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dout[52]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dout[53]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dout[54]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dout[55]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dout[56]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dout[57]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dout[58]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dout[59]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dout[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dout[60]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dout[61]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dout[62]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dout[63]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dout[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dout[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dout[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dout[9]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_cnt[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \i_cnt[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \i_cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_cnt[3]_i_2\ : label is "soft_lutpair0";
begin
\a_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(32),
      I1 => di_vld_IBUF,
      I2 => p_0_in(0),
      I3 => \a_reg[16]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[16]_i_2_n_0\,
      O => \a_reg[0]_i_1_n_0\
    );
\a_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(42),
      I1 => di_vld_IBUF,
      I2 => p_0_in(10),
      I3 => \a_reg[26]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[26]_i_2_n_0\,
      O => \a_reg[10]_i_1_n_0\
    );
\a_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(43),
      I1 => di_vld_IBUF,
      I2 => p_0_in(11),
      I3 => \a_reg[27]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[27]_i_2_n_0\,
      O => \a_reg[11]_i_1_n_0\
    );
\a_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(44),
      I1 => di_vld_IBUF,
      I2 => p_0_in(12),
      I3 => \a_reg[28]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[28]_i_2_n_0\,
      O => \a_reg[12]_i_1_n_0\
    );
\a_reg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(45),
      I1 => di_vld_IBUF,
      I2 => p_0_in(13),
      I3 => \a_reg[29]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[29]_i_2_n_0\,
      O => \a_reg[13]_i_1_n_0\
    );
\a_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(46),
      I1 => di_vld_IBUF,
      I2 => p_0_in(14),
      I3 => \a_reg[30]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[30]_i_2_n_0\,
      O => \a_reg[14]_i_1_n_0\
    );
\a_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(47),
      I1 => di_vld_IBUF,
      I2 => p_0_in(15),
      I3 => \a_reg[31]_i_5_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[31]_i_4_n_0\,
      O => \a_reg[15]_i_1_n_0\
    );
\a_reg[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(48),
      I1 => di_vld_IBUF,
      I2 => p_0_in(16),
      I3 => \a_reg[16]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[16]_i_3_n_0\,
      O => \a_reg[16]_i_1_n_0\
    );
\a_reg[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[28]_i_7_n_0\,
      I1 => \a_reg[28]_i_8_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[28]_i_9_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[28]_i_10_n_0\,
      O => \a_reg[16]_i_2_n_0\
    );
\a_reg[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[28]_i_11_n_0\,
      I1 => \a_reg[28]_i_4_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[28]_i_5_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[28]_i_6_n_0\,
      O => \a_reg[16]_i_3_n_0\
    );
\a_reg[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(49),
      I1 => di_vld_IBUF,
      I2 => p_0_in(17),
      I3 => \a_reg[17]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[17]_i_3_n_0\,
      O => \a_reg[17]_i_1_n_0\
    );
\a_reg[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[29]_i_7_n_0\,
      I1 => \a_reg[29]_i_8_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[29]_i_9_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[29]_i_10_n_0\,
      O => \a_reg[17]_i_2_n_0\
    );
\a_reg[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[29]_i_11_n_0\,
      I1 => \a_reg[29]_i_4_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[29]_i_5_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[29]_i_6_n_0\,
      O => \a_reg[17]_i_3_n_0\
    );
\a_reg[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(50),
      I1 => di_vld_IBUF,
      I2 => p_0_in(18),
      I3 => \a_reg[18]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[18]_i_3_n_0\,
      O => \a_reg[18]_i_1_n_0\
    );
\a_reg[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[30]_i_7_n_0\,
      I1 => \a_reg[30]_i_8_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[30]_i_9_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[30]_i_10_n_0\,
      O => \a_reg[18]_i_2_n_0\
    );
\a_reg[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[30]_i_11_n_0\,
      I1 => \a_reg[30]_i_4_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[30]_i_5_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[30]_i_6_n_0\,
      O => \a_reg[18]_i_3_n_0\
    );
\a_reg[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(51),
      I1 => di_vld_IBUF,
      I2 => p_0_in(19),
      I3 => \a_reg[19]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[19]_i_3_n_0\,
      O => \a_reg[19]_i_1_n_0\
    );
\a_reg[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[31]_i_9_n_0\,
      I1 => \a_reg[31]_i_10_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[31]_i_11_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[31]_i_12_n_0\,
      O => \a_reg[19]_i_2_n_0\
    );
\a_reg[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[31]_i_13_n_0\,
      I1 => \a_reg[31]_i_6_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[31]_i_7_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[31]_i_8_n_0\,
      O => \a_reg[19]_i_3_n_0\
    );
\a_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(33),
      I1 => di_vld_IBUF,
      I2 => p_0_in(1),
      I3 => \a_reg[17]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[17]_i_2_n_0\,
      O => \a_reg[1]_i_1_n_0\
    );
\a_reg[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(52),
      I1 => di_vld_IBUF,
      I2 => p_0_in(20),
      I3 => \a_reg[20]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[20]_i_3_n_0\,
      O => \a_reg[20]_i_1_n_0\
    );
\a_reg[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[28]_i_6_n_0\,
      I1 => \a_reg[28]_i_7_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[28]_i_8_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[28]_i_9_n_0\,
      O => \a_reg[20]_i_2_n_0\
    );
\a_reg[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[28]_i_10_n_0\,
      I1 => \a_reg[28]_i_11_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[28]_i_4_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[28]_i_5_n_0\,
      O => \a_reg[20]_i_3_n_0\
    );
\a_reg[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(53),
      I1 => di_vld_IBUF,
      I2 => p_0_in(21),
      I3 => \a_reg[21]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[21]_i_3_n_0\,
      O => \a_reg[21]_i_1_n_0\
    );
\a_reg[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[29]_i_6_n_0\,
      I1 => \a_reg[29]_i_7_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[29]_i_8_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[29]_i_9_n_0\,
      O => \a_reg[21]_i_2_n_0\
    );
\a_reg[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[29]_i_10_n_0\,
      I1 => \a_reg[29]_i_11_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[29]_i_4_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[29]_i_5_n_0\,
      O => \a_reg[21]_i_3_n_0\
    );
\a_reg[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(54),
      I1 => di_vld_IBUF,
      I2 => p_0_in(22),
      I3 => \a_reg[22]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[22]_i_3_n_0\,
      O => \a_reg[22]_i_1_n_0\
    );
\a_reg[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[30]_i_6_n_0\,
      I1 => \a_reg[30]_i_7_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[30]_i_8_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[30]_i_9_n_0\,
      O => \a_reg[22]_i_2_n_0\
    );
\a_reg[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[30]_i_10_n_0\,
      I1 => \a_reg[30]_i_11_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[30]_i_4_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[30]_i_5_n_0\,
      O => \a_reg[22]_i_3_n_0\
    );
\a_reg[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(55),
      I1 => di_vld_IBUF,
      I2 => p_0_in(23),
      I3 => \a_reg[23]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[23]_i_3_n_0\,
      O => \a_reg[23]_i_1_n_0\
    );
\a_reg[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[31]_i_8_n_0\,
      I1 => \a_reg[31]_i_9_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[31]_i_10_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[31]_i_11_n_0\,
      O => \a_reg[23]_i_2_n_0\
    );
\a_reg[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[31]_i_12_n_0\,
      I1 => \a_reg[31]_i_13_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[31]_i_6_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[31]_i_7_n_0\,
      O => \a_reg[23]_i_3_n_0\
    );
\a_reg[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(56),
      I1 => di_vld_IBUF,
      I2 => p_0_in(24),
      I3 => \a_reg[24]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[24]_i_3_n_0\,
      O => \a_reg[24]_i_1_n_0\
    );
\a_reg[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[28]_i_5_n_0\,
      I1 => \a_reg[28]_i_6_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[28]_i_7_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[28]_i_8_n_0\,
      O => \a_reg[24]_i_2_n_0\
    );
\a_reg[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[28]_i_9_n_0\,
      I1 => \a_reg[28]_i_10_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[28]_i_11_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[28]_i_4_n_0\,
      O => \a_reg[24]_i_3_n_0\
    );
\a_reg[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(57),
      I1 => di_vld_IBUF,
      I2 => p_0_in(25),
      I3 => \a_reg[25]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[25]_i_3_n_0\,
      O => \a_reg[25]_i_1_n_0\
    );
\a_reg[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[29]_i_5_n_0\,
      I1 => \a_reg[29]_i_6_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[29]_i_7_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[29]_i_8_n_0\,
      O => \a_reg[25]_i_2_n_0\
    );
\a_reg[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[29]_i_9_n_0\,
      I1 => \a_reg[29]_i_10_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[29]_i_11_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[29]_i_4_n_0\,
      O => \a_reg[25]_i_3_n_0\
    );
\a_reg[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(58),
      I1 => di_vld_IBUF,
      I2 => p_0_in(26),
      I3 => \a_reg[26]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[26]_i_3_n_0\,
      O => \a_reg[26]_i_1_n_0\
    );
\a_reg[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[30]_i_5_n_0\,
      I1 => \a_reg[30]_i_6_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[30]_i_7_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[30]_i_8_n_0\,
      O => \a_reg[26]_i_2_n_0\
    );
\a_reg[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[30]_i_9_n_0\,
      I1 => \a_reg[30]_i_10_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[30]_i_11_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[30]_i_4_n_0\,
      O => \a_reg[26]_i_3_n_0\
    );
\a_reg[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(59),
      I1 => di_vld_IBUF,
      I2 => p_0_in(27),
      I3 => \a_reg[27]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[27]_i_3_n_0\,
      O => \a_reg[27]_i_1_n_0\
    );
\a_reg[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[31]_i_7_n_0\,
      I1 => \a_reg[31]_i_8_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[31]_i_9_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[31]_i_10_n_0\,
      O => \a_reg[27]_i_2_n_0\
    );
\a_reg[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[31]_i_11_n_0\,
      I1 => \a_reg[31]_i_12_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[31]_i_13_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[31]_i_6_n_0\,
      O => \a_reg[27]_i_3_n_0\
    );
\a_reg[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(60),
      I1 => di_vld_IBUF,
      I2 => p_0_in(28),
      I3 => \a_reg[28]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[28]_i_3_n_0\,
      O => \a_reg[28]_i_1_n_0\
    );
\a_reg[28]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(19),
      I1 => minusOp0_out(18),
      I2 => p_0_in(1),
      I3 => minusOp0_out(17),
      I4 => p_0_in(0),
      I5 => minusOp0_out(16),
      O => \a_reg[28]_i_10_n_0\
    );
\a_reg[28]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(15),
      I1 => minusOp0_out(14),
      I2 => p_0_in(1),
      I3 => minusOp0_out(13),
      I4 => p_0_in(0),
      I5 => minusOp0_out(12),
      O => \a_reg[28]_i_11_n_0\
    );
\a_reg[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[28]_i_4_n_0\,
      I1 => \a_reg[28]_i_5_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[28]_i_6_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[28]_i_7_n_0\,
      O => \a_reg[28]_i_2_n_0\
    );
\a_reg[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[28]_i_8_n_0\,
      I1 => \a_reg[28]_i_9_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[28]_i_10_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[28]_i_11_n_0\,
      O => \a_reg[28]_i_3_n_0\
    );
\a_reg[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(11),
      I1 => minusOp0_out(10),
      I2 => p_0_in(1),
      I3 => minusOp0_out(9),
      I4 => p_0_in(0),
      I5 => minusOp0_out(8),
      O => \a_reg[28]_i_4_n_0\
    );
\a_reg[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(7),
      I1 => minusOp0_out(6),
      I2 => p_0_in(1),
      I3 => minusOp0_out(5),
      I4 => p_0_in(0),
      I5 => minusOp0_out(4),
      O => \a_reg[28]_i_5_n_0\
    );
\a_reg[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(3),
      I1 => minusOp0_out(2),
      I2 => p_0_in(1),
      I3 => minusOp0_out(1),
      I4 => p_0_in(0),
      I5 => minusOp0_out(0),
      O => \a_reg[28]_i_6_n_0\
    );
\a_reg[28]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(31),
      I1 => minusOp0_out(30),
      I2 => p_0_in(1),
      I3 => minusOp0_out(29),
      I4 => p_0_in(0),
      I5 => minusOp0_out(28),
      O => \a_reg[28]_i_7_n_0\
    );
\a_reg[28]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(27),
      I1 => minusOp0_out(26),
      I2 => p_0_in(1),
      I3 => minusOp0_out(25),
      I4 => p_0_in(0),
      I5 => minusOp0_out(24),
      O => \a_reg[28]_i_8_n_0\
    );
\a_reg[28]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(23),
      I1 => minusOp0_out(22),
      I2 => p_0_in(1),
      I3 => minusOp0_out(21),
      I4 => p_0_in(0),
      I5 => minusOp0_out(20),
      O => \a_reg[28]_i_9_n_0\
    );
\a_reg[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(61),
      I1 => di_vld_IBUF,
      I2 => p_0_in(29),
      I3 => \a_reg[29]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[29]_i_3_n_0\,
      O => \a_reg[29]_i_1_n_0\
    );
\a_reg[29]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(20),
      I1 => minusOp0_out(19),
      I2 => p_0_in(1),
      I3 => minusOp0_out(18),
      I4 => p_0_in(0),
      I5 => minusOp0_out(17),
      O => \a_reg[29]_i_10_n_0\
    );
\a_reg[29]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(16),
      I1 => minusOp0_out(15),
      I2 => p_0_in(1),
      I3 => minusOp0_out(14),
      I4 => p_0_in(0),
      I5 => minusOp0_out(13),
      O => \a_reg[29]_i_11_n_0\
    );
\a_reg[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[29]_i_4_n_0\,
      I1 => \a_reg[29]_i_5_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[29]_i_6_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[29]_i_7_n_0\,
      O => \a_reg[29]_i_2_n_0\
    );
\a_reg[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[29]_i_8_n_0\,
      I1 => \a_reg[29]_i_9_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[29]_i_10_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[29]_i_11_n_0\,
      O => \a_reg[29]_i_3_n_0\
    );
\a_reg[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(12),
      I1 => minusOp0_out(11),
      I2 => p_0_in(1),
      I3 => minusOp0_out(10),
      I4 => p_0_in(0),
      I5 => minusOp0_out(9),
      O => \a_reg[29]_i_4_n_0\
    );
\a_reg[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(8),
      I1 => minusOp0_out(7),
      I2 => p_0_in(1),
      I3 => minusOp0_out(6),
      I4 => p_0_in(0),
      I5 => minusOp0_out(5),
      O => \a_reg[29]_i_5_n_0\
    );
\a_reg[29]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(4),
      I1 => minusOp0_out(3),
      I2 => p_0_in(1),
      I3 => minusOp0_out(2),
      I4 => p_0_in(0),
      I5 => minusOp0_out(1),
      O => \a_reg[29]_i_6_n_0\
    );
\a_reg[29]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(0),
      I1 => minusOp0_out(31),
      I2 => p_0_in(1),
      I3 => minusOp0_out(30),
      I4 => p_0_in(0),
      I5 => minusOp0_out(29),
      O => \a_reg[29]_i_7_n_0\
    );
\a_reg[29]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(28),
      I1 => minusOp0_out(27),
      I2 => p_0_in(1),
      I3 => minusOp0_out(26),
      I4 => p_0_in(0),
      I5 => minusOp0_out(25),
      O => \a_reg[29]_i_8_n_0\
    );
\a_reg[29]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(24),
      I1 => minusOp0_out(23),
      I2 => p_0_in(1),
      I3 => minusOp0_out(22),
      I4 => p_0_in(0),
      I5 => minusOp0_out(21),
      O => \a_reg[29]_i_9_n_0\
    );
\a_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(34),
      I1 => di_vld_IBUF,
      I2 => p_0_in(2),
      I3 => \a_reg[18]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[18]_i_2_n_0\,
      O => \a_reg[2]_i_1_n_0\
    );
\a_reg[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(62),
      I1 => di_vld_IBUF,
      I2 => p_0_in(30),
      I3 => \a_reg[30]_i_2_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[30]_i_3_n_0\,
      O => \a_reg[30]_i_1_n_0\
    );
\a_reg[30]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(21),
      I1 => minusOp0_out(20),
      I2 => p_0_in(1),
      I3 => minusOp0_out(19),
      I4 => p_0_in(0),
      I5 => minusOp0_out(18),
      O => \a_reg[30]_i_10_n_0\
    );
\a_reg[30]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(17),
      I1 => minusOp0_out(16),
      I2 => p_0_in(1),
      I3 => minusOp0_out(15),
      I4 => p_0_in(0),
      I5 => minusOp0_out(14),
      O => \a_reg[30]_i_11_n_0\
    );
\a_reg[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[30]_i_4_n_0\,
      I1 => \a_reg[30]_i_5_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[30]_i_6_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[30]_i_7_n_0\,
      O => \a_reg[30]_i_2_n_0\
    );
\a_reg[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[30]_i_8_n_0\,
      I1 => \a_reg[30]_i_9_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[30]_i_10_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[30]_i_11_n_0\,
      O => \a_reg[30]_i_3_n_0\
    );
\a_reg[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(13),
      I1 => minusOp0_out(12),
      I2 => p_0_in(1),
      I3 => minusOp0_out(11),
      I4 => p_0_in(0),
      I5 => minusOp0_out(10),
      O => \a_reg[30]_i_4_n_0\
    );
\a_reg[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(9),
      I1 => minusOp0_out(8),
      I2 => p_0_in(1),
      I3 => minusOp0_out(7),
      I4 => p_0_in(0),
      I5 => minusOp0_out(6),
      O => \a_reg[30]_i_5_n_0\
    );
\a_reg[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(5),
      I1 => minusOp0_out(4),
      I2 => p_0_in(1),
      I3 => minusOp0_out(3),
      I4 => p_0_in(0),
      I5 => minusOp0_out(2),
      O => \a_reg[30]_i_6_n_0\
    );
\a_reg[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(1),
      I1 => minusOp0_out(0),
      I2 => p_0_in(1),
      I3 => minusOp0_out(31),
      I4 => p_0_in(0),
      I5 => minusOp0_out(30),
      O => \a_reg[30]_i_7_n_0\
    );
\a_reg[30]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(29),
      I1 => minusOp0_out(28),
      I2 => p_0_in(1),
      I3 => minusOp0_out(27),
      I4 => p_0_in(0),
      I5 => minusOp0_out(26),
      O => \a_reg[30]_i_8_n_0\
    );
\a_reg[30]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(25),
      I1 => minusOp0_out(24),
      I2 => p_0_in(1),
      I3 => minusOp0_out(23),
      I4 => p_0_in(0),
      I5 => minusOp0_out(22),
      O => \a_reg[30]_i_9_n_0\
    );
\a_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i_cnt_reg(1),
      I1 => i_cnt_reg(3),
      I2 => i_cnt_reg(2),
      I3 => di_vld_IBUF,
      O => b_reg
    );
\a_reg[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(30),
      I1 => minusOp0_out(29),
      I2 => p_0_in(1),
      I3 => minusOp0_out(28),
      I4 => p_0_in(0),
      I5 => minusOp0_out(27),
      O => \a_reg[31]_i_10_n_0\
    );
\a_reg[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(26),
      I1 => minusOp0_out(25),
      I2 => p_0_in(1),
      I3 => minusOp0_out(24),
      I4 => p_0_in(0),
      I5 => minusOp0_out(23),
      O => \a_reg[31]_i_11_n_0\
    );
\a_reg[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(22),
      I1 => minusOp0_out(21),
      I2 => p_0_in(1),
      I3 => minusOp0_out(20),
      I4 => p_0_in(0),
      I5 => minusOp0_out(19),
      O => \a_reg[31]_i_12_n_0\
    );
\a_reg[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(18),
      I1 => minusOp0_out(17),
      I2 => p_0_in(1),
      I3 => minusOp0_out(16),
      I4 => p_0_in(0),
      I5 => minusOp0_out(15),
      O => \a_reg[31]_i_13_n_0\
    );
\a_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(63),
      I1 => di_vld_IBUF,
      I2 => p_0_in(31),
      I3 => \a_reg[31]_i_4_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[31]_i_5_n_0\,
      O => \a_reg[31]_i_2_n_0\
    );
\a_reg[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clr_IBUF,
      O => \a_reg[31]_i_3_n_0\
    );
\a_reg[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[31]_i_6_n_0\,
      I1 => \a_reg[31]_i_7_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[31]_i_8_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[31]_i_9_n_0\,
      O => \a_reg[31]_i_4_n_0\
    );
\a_reg[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_reg[31]_i_10_n_0\,
      I1 => \a_reg[31]_i_11_n_0\,
      I2 => p_0_in(3),
      I3 => \a_reg[31]_i_12_n_0\,
      I4 => p_0_in(2),
      I5 => \a_reg[31]_i_13_n_0\,
      O => \a_reg[31]_i_5_n_0\
    );
\a_reg[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(14),
      I1 => minusOp0_out(13),
      I2 => p_0_in(1),
      I3 => minusOp0_out(12),
      I4 => p_0_in(0),
      I5 => minusOp0_out(11),
      O => \a_reg[31]_i_6_n_0\
    );
\a_reg[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(10),
      I1 => minusOp0_out(9),
      I2 => p_0_in(1),
      I3 => minusOp0_out(8),
      I4 => p_0_in(0),
      I5 => minusOp0_out(7),
      O => \a_reg[31]_i_7_n_0\
    );
\a_reg[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(6),
      I1 => minusOp0_out(5),
      I2 => p_0_in(1),
      I3 => minusOp0_out(4),
      I4 => p_0_in(0),
      I5 => minusOp0_out(3),
      O => \a_reg[31]_i_8_n_0\
    );
\a_reg[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp0_out(2),
      I1 => minusOp0_out(1),
      I2 => p_0_in(1),
      I3 => minusOp0_out(0),
      I4 => p_0_in(0),
      I5 => minusOp0_out(31),
      O => \a_reg[31]_i_9_n_0\
    );
\a_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(35),
      I1 => di_vld_IBUF,
      I2 => p_0_in(3),
      I3 => \a_reg[19]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[19]_i_2_n_0\,
      O => \a_reg[3]_i_1_n_0\
    );
\a_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B8BBB8"
    )
        port map (
      I0 => din_IBUF(36),
      I1 => di_vld_IBUF,
      I2 => \a_reg[20]_i_3_n_0\,
      I3 => p_0_in(4),
      I4 => \a_reg[20]_i_2_n_0\,
      O => \a_reg[4]_i_1_n_0\
    );
\a_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(37),
      I1 => di_vld_IBUF,
      I2 => p_0_in(5),
      I3 => \a_reg[21]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[21]_i_2_n_0\,
      O => \a_reg[5]_i_1_n_0\
    );
\a_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(38),
      I1 => di_vld_IBUF,
      I2 => p_0_in(6),
      I3 => \a_reg[22]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[22]_i_2_n_0\,
      O => \a_reg[6]_i_1_n_0\
    );
\a_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(39),
      I1 => di_vld_IBUF,
      I2 => p_0_in(7),
      I3 => \a_reg[23]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[23]_i_2_n_0\,
      O => \a_reg[7]_i_1_n_0\
    );
\a_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(40),
      I1 => di_vld_IBUF,
      I2 => p_0_in(8),
      I3 => \a_reg[24]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[24]_i_2_n_0\,
      O => \a_reg[8]_i_1_n_0\
    );
\a_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8BB8B8B88BB8"
    )
        port map (
      I0 => din_IBUF(41),
      I1 => di_vld_IBUF,
      I2 => p_0_in(9),
      I3 => \a_reg[25]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => \a_reg[25]_i_2_n_0\,
      O => \a_reg[9]_i_1_n_0\
    );
\a_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[0]_i_1_n_0\,
      Q => a_reg(0)
    );
\a_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[10]_i_1_n_0\,
      Q => a_reg(10)
    );
\a_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[11]_i_1_n_0\,
      Q => a_reg(11)
    );
\a_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[12]_i_1_n_0\,
      Q => a_reg(12)
    );
\a_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[13]_i_1_n_0\,
      Q => a_reg(13)
    );
\a_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[14]_i_1_n_0\,
      Q => a_reg(14)
    );
\a_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[15]_i_1_n_0\,
      Q => a_reg(15)
    );
\a_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[16]_i_1_n_0\,
      Q => a_reg(16)
    );
\a_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[17]_i_1_n_0\,
      Q => a_reg(17)
    );
\a_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[18]_i_1_n_0\,
      Q => a_reg(18)
    );
\a_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[19]_i_1_n_0\,
      Q => a_reg(19)
    );
\a_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[1]_i_1_n_0\,
      Q => a_reg(1)
    );
\a_reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[20]_i_1_n_0\,
      Q => a_reg(20)
    );
\a_reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[21]_i_1_n_0\,
      Q => a_reg(21)
    );
\a_reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[22]_i_1_n_0\,
      Q => a_reg(22)
    );
\a_reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[23]_i_1_n_0\,
      Q => a_reg(23)
    );
\a_reg_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[24]_i_1_n_0\,
      Q => a_reg(24)
    );
\a_reg_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[25]_i_1_n_0\,
      Q => a_reg(25)
    );
\a_reg_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[26]_i_1_n_0\,
      Q => a_reg(26)
    );
\a_reg_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[27]_i_1_n_0\,
      Q => a_reg(27)
    );
\a_reg_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[28]_i_1_n_0\,
      Q => a_reg(28)
    );
\a_reg_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[29]_i_1_n_0\,
      Q => a_reg(29)
    );
\a_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[2]_i_1_n_0\,
      Q => a_reg(2)
    );
\a_reg_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[30]_i_1_n_0\,
      Q => a_reg(30)
    );
\a_reg_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[31]_i_2_n_0\,
      Q => a_reg(31)
    );
\a_reg_reg[31]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_reg_reg[31]_i_15_n_0\,
      CO(3) => \a_reg_reg[31]_i_14_n_0\,
      CO(2 downto 0) => \NLW_a_reg_reg[31]_i_14_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => a_reg(15 downto 12),
      O(3 downto 0) => minusOp0_out(15 downto 12),
      S(3) => g0_b15_n_0,
      S(2) => g0_b14_n_0,
      S(1) => g0_b13_n_0,
      S(0) => g0_b12_n_0
    );
\a_reg_reg[31]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_reg_reg[31]_i_16_n_0\,
      CO(3) => \a_reg_reg[31]_i_15_n_0\,
      CO(2 downto 0) => \NLW_a_reg_reg[31]_i_15_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => a_reg(11 downto 8),
      O(3 downto 0) => minusOp0_out(11 downto 8),
      S(3) => g0_b11_n_0,
      S(2) => g0_b10_n_0,
      S(1) => g0_b9_n_0,
      S(0) => g0_b8_n_0
    );
\a_reg_reg[31]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_reg_reg[31]_i_17_n_0\,
      CO(3) => \a_reg_reg[31]_i_16_n_0\,
      CO(2 downto 0) => \NLW_a_reg_reg[31]_i_16_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => a_reg(7 downto 4),
      O(3 downto 0) => minusOp0_out(7 downto 4),
      S(3) => g0_b7_n_0,
      S(2) => g0_b6_n_0,
      S(1) => g0_b5_n_0,
      S(0) => g0_b4_n_0
    );
\a_reg_reg[31]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \a_reg_reg[31]_i_17_n_0\,
      CO(2 downto 0) => \NLW_a_reg_reg[31]_i_17_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => a_reg(3 downto 0),
      O(3 downto 0) => minusOp0_out(3 downto 0),
      S(3) => g0_b3_n_0,
      S(2) => g0_b2_n_0,
      S(1) => g0_b1_n_0,
      S(0) => g0_b0_n_0
    );
\a_reg_reg[31]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_reg_reg[31]_i_19_n_0\,
      CO(3 downto 0) => \NLW_a_reg_reg[31]_i_18_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => a_reg(30 downto 28),
      O(3 downto 0) => minusOp0_out(31 downto 28),
      S(3) => g0_b31_n_0,
      S(2) => g0_b30_n_0,
      S(1) => g0_b29_n_0,
      S(0) => g0_b28_n_0
    );
\a_reg_reg[31]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_reg_reg[31]_i_20_n_0\,
      CO(3) => \a_reg_reg[31]_i_19_n_0\,
      CO(2 downto 0) => \NLW_a_reg_reg[31]_i_19_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => a_reg(27 downto 24),
      O(3 downto 0) => minusOp0_out(27 downto 24),
      S(3) => g0_b27_n_0,
      S(2) => g0_b26_n_0,
      S(1) => g0_b25_n_0,
      S(0) => g0_b24_n_0
    );
\a_reg_reg[31]_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_reg_reg[31]_i_21_n_0\,
      CO(3) => \a_reg_reg[31]_i_20_n_0\,
      CO(2 downto 0) => \NLW_a_reg_reg[31]_i_20_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => a_reg(23 downto 20),
      O(3 downto 0) => minusOp0_out(23 downto 20),
      S(3) => g0_b23_n_0,
      S(2) => g0_b22_n_0,
      S(1) => g0_b21_n_0,
      S(0) => g0_b20_n_0
    );
\a_reg_reg[31]_i_21\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_reg_reg[31]_i_14_n_0\,
      CO(3) => \a_reg_reg[31]_i_21_n_0\,
      CO(2 downto 0) => \NLW_a_reg_reg[31]_i_21_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => a_reg(19 downto 16),
      O(3 downto 0) => minusOp0_out(19 downto 16),
      S(3) => g0_b19_n_0,
      S(2) => g0_b18_n_0,
      S(1) => g0_b17_n_0,
      S(0) => g0_b16_n_0
    );
\a_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[3]_i_1_n_0\,
      Q => a_reg(3)
    );
\a_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[4]_i_1_n_0\,
      Q => a_reg(4)
    );
\a_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[5]_i_1_n_0\,
      Q => a_reg(5)
    );
\a_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[6]_i_1_n_0\,
      Q => a_reg(6)
    );
\a_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[7]_i_1_n_0\,
      Q => a_reg(7)
    );
\a_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[8]_i_1_n_0\,
      Q => a_reg(8)
    );
\a_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \a_reg[9]_i_1_n_0\,
      Q => a_reg(9)
    );
\b_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(0),
      I1 => p_0_in(0),
      I2 => di_vld_IBUF,
      O => \b_reg[0]_i_1_n_0\
    );
\b_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(10),
      I1 => p_0_in(10),
      I2 => di_vld_IBUF,
      O => \b_reg[10]_i_1_n_0\
    );
\b_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(11),
      I1 => p_0_in(11),
      I2 => di_vld_IBUF,
      O => \b_reg[11]_i_1_n_0\
    );
\b_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(12),
      I1 => p_0_in(12),
      I2 => di_vld_IBUF,
      O => \b_reg[12]_i_1_n_0\
    );
\b_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(13),
      I1 => p_0_in(13),
      I2 => di_vld_IBUF,
      O => \b_reg[13]_i_1_n_0\
    );
\b_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(14),
      I1 => p_0_in(14),
      I2 => di_vld_IBUF,
      O => \b_reg[14]_i_1_n_0\
    );
\b_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(15),
      I1 => p_0_in(15),
      I2 => di_vld_IBUF,
      O => \b_reg[15]_i_1_n_0\
    );
\b_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(16),
      I1 => p_0_in(16),
      I2 => di_vld_IBUF,
      O => \b_reg[16]_i_1_n_0\
    );
\b_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(17),
      I1 => p_0_in(17),
      I2 => di_vld_IBUF,
      O => \b_reg[17]_i_1_n_0\
    );
\b_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(18),
      I1 => p_0_in(18),
      I2 => di_vld_IBUF,
      O => \b_reg[18]_i_1_n_0\
    );
\b_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(19),
      I1 => p_0_in(19),
      I2 => di_vld_IBUF,
      O => \b_reg[19]_i_1_n_0\
    );
\b_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(1),
      I1 => p_0_in(1),
      I2 => di_vld_IBUF,
      O => \b_reg[1]_i_1_n_0\
    );
\b_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(20),
      I1 => p_0_in(20),
      I2 => di_vld_IBUF,
      O => \b_reg[20]_i_1_n_0\
    );
\b_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(21),
      I1 => p_0_in(21),
      I2 => di_vld_IBUF,
      O => \b_reg[21]_i_1_n_0\
    );
\b_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(22),
      I1 => p_0_in(22),
      I2 => di_vld_IBUF,
      O => \b_reg[22]_i_1_n_0\
    );
\b_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(23),
      I1 => p_0_in(23),
      I2 => di_vld_IBUF,
      O => \b_reg[23]_i_1_n_0\
    );
\b_reg[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(24),
      I1 => p_0_in(24),
      I2 => di_vld_IBUF,
      O => \b_reg[24]_i_1_n_0\
    );
\b_reg[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(25),
      I1 => p_0_in(25),
      I2 => di_vld_IBUF,
      O => \b_reg[25]_i_1_n_0\
    );
\b_reg[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(26),
      I1 => p_0_in(26),
      I2 => di_vld_IBUF,
      O => \b_reg[26]_i_1_n_0\
    );
\b_reg[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(27),
      I1 => p_0_in(27),
      I2 => di_vld_IBUF,
      O => \b_reg[27]_i_1_n_0\
    );
\b_reg[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(28),
      I1 => p_0_in(28),
      I2 => di_vld_IBUF,
      O => \b_reg[28]_i_1_n_0\
    );
\b_reg[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(29),
      I1 => p_0_in(29),
      I2 => di_vld_IBUF,
      O => \b_reg[29]_i_1_n_0\
    );
\b_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(2),
      I1 => p_0_in(2),
      I2 => di_vld_IBUF,
      O => \b_reg[2]_i_1_n_0\
    );
\b_reg[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(30),
      I1 => p_0_in(30),
      I2 => di_vld_IBUF,
      O => \b_reg[30]_i_1_n_0\
    );
\b_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(31),
      I1 => p_0_in(31),
      I2 => di_vld_IBUF,
      O => \b_reg[31]_i_1_n_0\
    );
\b_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(3),
      I1 => p_0_in(3),
      I2 => di_vld_IBUF,
      O => \b_reg[3]_i_1_n_0\
    );
\b_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(4),
      I1 => p_0_in(4),
      I2 => di_vld_IBUF,
      O => \b_reg[4]_i_1_n_0\
    );
\b_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(5),
      I1 => p_0_in(5),
      I2 => di_vld_IBUF,
      O => \b_reg[5]_i_1_n_0\
    );
\b_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(6),
      I1 => p_0_in(6),
      I2 => di_vld_IBUF,
      O => \b_reg[6]_i_1_n_0\
    );
\b_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(7),
      I1 => p_0_in(7),
      I2 => di_vld_IBUF,
      O => \b_reg[7]_i_1_n_0\
    );
\b_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(8),
      I1 => p_0_in(8),
      I2 => di_vld_IBUF,
      O => \b_reg[8]_i_1_n_0\
    );
\b_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => din_IBUF(9),
      I1 => p_0_in(9),
      I2 => di_vld_IBUF,
      O => \b_reg[9]_i_1_n_0\
    );
\b_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[0]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[0]\
    );
\b_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[10]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[10]\
    );
\b_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[11]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[11]\
    );
\b_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[12]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[12]\
    );
\b_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[13]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[13]\
    );
\b_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[14]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[14]\
    );
\b_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[15]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[15]\
    );
\b_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[16]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[16]\
    );
\b_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[17]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[17]\
    );
\b_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[18]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[18]\
    );
\b_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[19]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[19]\
    );
\b_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[1]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[1]\
    );
\b_reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[20]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[20]\
    );
\b_reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[21]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[21]\
    );
\b_reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[22]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[22]\
    );
\b_reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[23]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[23]\
    );
\b_reg_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[24]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[24]\
    );
\b_reg_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[25]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[25]\
    );
\b_reg_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[26]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[26]\
    );
\b_reg_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[27]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[27]\
    );
\b_reg_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[28]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[28]\
    );
\b_reg_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[29]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[29]\
    );
\b_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[2]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[2]\
    );
\b_reg_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[30]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[30]\
    );
\b_reg_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[31]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[31]\
    );
\b_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[3]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[3]\
    );
\b_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[4]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[4]\
    );
\b_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[5]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[5]\
    );
\b_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[6]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[6]\
    );
\b_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[7]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[7]\
    );
\b_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[8]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[8]\
    );
\b_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \b_reg[9]_i_1_n_0\,
      Q => \b_reg_reg_n_0_[9]\
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
clr_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clr,
      O => clr_IBUF
    );
di_vld_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => di_vld,
      O => di_vld_IBUF
    );
\din_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(0),
      O => din_IBUF(0)
    );
\din_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(10),
      O => din_IBUF(10)
    );
\din_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(11),
      O => din_IBUF(11)
    );
\din_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(12),
      O => din_IBUF(12)
    );
\din_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(13),
      O => din_IBUF(13)
    );
\din_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(14),
      O => din_IBUF(14)
    );
\din_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(15),
      O => din_IBUF(15)
    );
\din_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(16),
      O => din_IBUF(16)
    );
\din_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(17),
      O => din_IBUF(17)
    );
\din_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(18),
      O => din_IBUF(18)
    );
\din_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(19),
      O => din_IBUF(19)
    );
\din_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(1),
      O => din_IBUF(1)
    );
\din_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(20),
      O => din_IBUF(20)
    );
\din_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(21),
      O => din_IBUF(21)
    );
\din_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(22),
      O => din_IBUF(22)
    );
\din_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(23),
      O => din_IBUF(23)
    );
\din_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(24),
      O => din_IBUF(24)
    );
\din_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(25),
      O => din_IBUF(25)
    );
\din_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(26),
      O => din_IBUF(26)
    );
\din_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(27),
      O => din_IBUF(27)
    );
\din_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(28),
      O => din_IBUF(28)
    );
\din_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(29),
      O => din_IBUF(29)
    );
\din_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(2),
      O => din_IBUF(2)
    );
\din_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(30),
      O => din_IBUF(30)
    );
\din_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(31),
      O => din_IBUF(31)
    );
\din_IBUF[32]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(32),
      O => din_IBUF(32)
    );
\din_IBUF[33]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(33),
      O => din_IBUF(33)
    );
\din_IBUF[34]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(34),
      O => din_IBUF(34)
    );
\din_IBUF[35]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(35),
      O => din_IBUF(35)
    );
\din_IBUF[36]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(36),
      O => din_IBUF(36)
    );
\din_IBUF[37]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(37),
      O => din_IBUF(37)
    );
\din_IBUF[38]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(38),
      O => din_IBUF(38)
    );
\din_IBUF[39]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(39),
      O => din_IBUF(39)
    );
\din_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(3),
      O => din_IBUF(3)
    );
\din_IBUF[40]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(40),
      O => din_IBUF(40)
    );
\din_IBUF[41]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(41),
      O => din_IBUF(41)
    );
\din_IBUF[42]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(42),
      O => din_IBUF(42)
    );
\din_IBUF[43]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(43),
      O => din_IBUF(43)
    );
\din_IBUF[44]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(44),
      O => din_IBUF(44)
    );
\din_IBUF[45]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(45),
      O => din_IBUF(45)
    );
\din_IBUF[46]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(46),
      O => din_IBUF(46)
    );
\din_IBUF[47]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(47),
      O => din_IBUF(47)
    );
\din_IBUF[48]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(48),
      O => din_IBUF(48)
    );
\din_IBUF[49]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(49),
      O => din_IBUF(49)
    );
\din_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(4),
      O => din_IBUF(4)
    );
\din_IBUF[50]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(50),
      O => din_IBUF(50)
    );
\din_IBUF[51]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(51),
      O => din_IBUF(51)
    );
\din_IBUF[52]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(52),
      O => din_IBUF(52)
    );
\din_IBUF[53]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(53),
      O => din_IBUF(53)
    );
\din_IBUF[54]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(54),
      O => din_IBUF(54)
    );
\din_IBUF[55]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(55),
      O => din_IBUF(55)
    );
\din_IBUF[56]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(56),
      O => din_IBUF(56)
    );
\din_IBUF[57]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(57),
      O => din_IBUF(57)
    );
\din_IBUF[58]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(58),
      O => din_IBUF(58)
    );
\din_IBUF[59]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(59),
      O => din_IBUF(59)
    );
\din_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(5),
      O => din_IBUF(5)
    );
\din_IBUF[60]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(60),
      O => din_IBUF(60)
    );
\din_IBUF[61]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(61),
      O => din_IBUF(61)
    );
\din_IBUF[62]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(62),
      O => din_IBUF(62)
    );
\din_IBUF[63]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(63),
      O => din_IBUF(63)
    );
\din_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(6),
      O => din_IBUF(6)
    );
\din_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(7),
      O => din_IBUF(7)
    );
\din_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(8),
      O => din_IBUF(8)
    );
\din_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => din(9),
      O => din_IBUF(9)
    );
do_rdy_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => do_rdy_OBUF,
      O => do_rdy
    );
do_rdy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0004"
    )
        port map (
      I0 => i_cnt_reg(1),
      I1 => i_cnt_reg(0),
      I2 => i_cnt_reg(3),
      I3 => i_cnt_reg(2),
      I4 => di_vld_IBUF,
      O => do_rdy_i_1_n_0
    );
do_rdy_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => do_rdy_i_1_n_0,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \dout[63]_i_1_n_0\,
      Q => do_rdy_OBUF
    );
\dout[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(0),
      I1 => \dout[16]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[16]_i_2_n_0\,
      O => p_0_in(0)
    );
\dout[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(10),
      I1 => \dout[26]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[26]_i_2_n_0\,
      O => p_0_in(10)
    );
\dout[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(11),
      I1 => \dout[27]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[27]_i_2_n_0\,
      O => p_0_in(11)
    );
\dout[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(12),
      I1 => \dout[28]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[28]_i_2_n_0\,
      O => p_0_in(12)
    );
\dout[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(13),
      I1 => \dout[29]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[29]_i_2_n_0\,
      O => p_0_in(13)
    );
\dout[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(14),
      I1 => \dout[30]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[30]_i_2_n_0\,
      O => p_0_in(14)
    );
\dout[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(15),
      I1 => \dout[31]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[31]_i_2_n_0\,
      O => p_0_in(15)
    );
\dout[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(16),
      I1 => \dout[16]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[16]_i_3_n_0\,
      O => p_0_in(16)
    );
\dout[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[28]_i_7_n_0\,
      I1 => \dout[28]_i_8_n_0\,
      I2 => a_reg(3),
      I3 => \dout[28]_i_9_n_0\,
      I4 => a_reg(2),
      I5 => \dout[28]_i_10_n_0\,
      O => \dout[16]_i_2_n_0\
    );
\dout[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[28]_i_11_n_0\,
      I1 => \dout[28]_i_4_n_0\,
      I2 => a_reg(3),
      I3 => \dout[28]_i_5_n_0\,
      I4 => a_reg(2),
      I5 => \dout[28]_i_6_n_0\,
      O => \dout[16]_i_3_n_0\
    );
\dout[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(17),
      I1 => \dout[17]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[17]_i_3_n_0\,
      O => p_0_in(17)
    );
\dout[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[29]_i_7_n_0\,
      I1 => \dout[29]_i_8_n_0\,
      I2 => a_reg(3),
      I3 => \dout[29]_i_9_n_0\,
      I4 => a_reg(2),
      I5 => \dout[29]_i_10_n_0\,
      O => \dout[17]_i_2_n_0\
    );
\dout[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[29]_i_11_n_0\,
      I1 => \dout[29]_i_4_n_0\,
      I2 => a_reg(3),
      I3 => \dout[29]_i_5_n_0\,
      I4 => a_reg(2),
      I5 => \dout[29]_i_6_n_0\,
      O => \dout[17]_i_3_n_0\
    );
\dout[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(18),
      I1 => \dout[18]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[18]_i_3_n_0\,
      O => p_0_in(18)
    );
\dout[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[30]_i_7_n_0\,
      I1 => \dout[30]_i_8_n_0\,
      I2 => a_reg(3),
      I3 => \dout[30]_i_9_n_0\,
      I4 => a_reg(2),
      I5 => \dout[30]_i_10_n_0\,
      O => \dout[18]_i_2_n_0\
    );
\dout[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[30]_i_11_n_0\,
      I1 => \dout[30]_i_4_n_0\,
      I2 => a_reg(3),
      I3 => \dout[30]_i_5_n_0\,
      I4 => a_reg(2),
      I5 => \dout[30]_i_6_n_0\,
      O => \dout[18]_i_3_n_0\
    );
\dout[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(19),
      I1 => \dout[19]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[19]_i_3_n_0\,
      O => p_0_in(19)
    );
\dout[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_7_n_0\,
      I1 => \dout[31]_i_8_n_0\,
      I2 => a_reg(3),
      I3 => \dout[31]_i_9_n_0\,
      I4 => a_reg(2),
      I5 => \dout[31]_i_10_n_0\,
      O => \dout[19]_i_2_n_0\
    );
\dout[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_11_n_0\,
      I1 => \dout[31]_i_4_n_0\,
      I2 => a_reg(3),
      I3 => \dout[31]_i_5_n_0\,
      I4 => a_reg(2),
      I5 => \dout[31]_i_6_n_0\,
      O => \dout[19]_i_3_n_0\
    );
\dout[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(1),
      I1 => \dout[17]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[17]_i_2_n_0\,
      O => p_0_in(1)
    );
\dout[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(20),
      I1 => \dout[20]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[20]_i_3_n_0\,
      O => p_0_in(20)
    );
\dout[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[28]_i_6_n_0\,
      I1 => \dout[28]_i_7_n_0\,
      I2 => a_reg(3),
      I3 => \dout[28]_i_8_n_0\,
      I4 => a_reg(2),
      I5 => \dout[28]_i_9_n_0\,
      O => \dout[20]_i_2_n_0\
    );
\dout[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[28]_i_10_n_0\,
      I1 => \dout[28]_i_11_n_0\,
      I2 => a_reg(3),
      I3 => \dout[28]_i_4_n_0\,
      I4 => a_reg(2),
      I5 => \dout[28]_i_5_n_0\,
      O => \dout[20]_i_3_n_0\
    );
\dout[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(21),
      I1 => \dout[21]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[21]_i_3_n_0\,
      O => p_0_in(21)
    );
\dout[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[29]_i_6_n_0\,
      I1 => \dout[29]_i_7_n_0\,
      I2 => a_reg(3),
      I3 => \dout[29]_i_8_n_0\,
      I4 => a_reg(2),
      I5 => \dout[29]_i_9_n_0\,
      O => \dout[21]_i_2_n_0\
    );
\dout[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[29]_i_10_n_0\,
      I1 => \dout[29]_i_11_n_0\,
      I2 => a_reg(3),
      I3 => \dout[29]_i_4_n_0\,
      I4 => a_reg(2),
      I5 => \dout[29]_i_5_n_0\,
      O => \dout[21]_i_3_n_0\
    );
\dout[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(22),
      I1 => \dout[22]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[22]_i_3_n_0\,
      O => p_0_in(22)
    );
\dout[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[30]_i_6_n_0\,
      I1 => \dout[30]_i_7_n_0\,
      I2 => a_reg(3),
      I3 => \dout[30]_i_8_n_0\,
      I4 => a_reg(2),
      I5 => \dout[30]_i_9_n_0\,
      O => \dout[22]_i_2_n_0\
    );
\dout[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[30]_i_10_n_0\,
      I1 => \dout[30]_i_11_n_0\,
      I2 => a_reg(3),
      I3 => \dout[30]_i_4_n_0\,
      I4 => a_reg(2),
      I5 => \dout[30]_i_5_n_0\,
      O => \dout[22]_i_3_n_0\
    );
\dout[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(23),
      I1 => \dout[23]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[23]_i_3_n_0\,
      O => p_0_in(23)
    );
\dout[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_6_n_0\,
      I1 => \dout[31]_i_7_n_0\,
      I2 => a_reg(3),
      I3 => \dout[31]_i_8_n_0\,
      I4 => a_reg(2),
      I5 => \dout[31]_i_9_n_0\,
      O => \dout[23]_i_2_n_0\
    );
\dout[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_10_n_0\,
      I1 => \dout[31]_i_11_n_0\,
      I2 => a_reg(3),
      I3 => \dout[31]_i_4_n_0\,
      I4 => a_reg(2),
      I5 => \dout[31]_i_5_n_0\,
      O => \dout[23]_i_3_n_0\
    );
\dout[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(24),
      I1 => \dout[24]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[24]_i_3_n_0\,
      O => p_0_in(24)
    );
\dout[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[28]_i_5_n_0\,
      I1 => \dout[28]_i_6_n_0\,
      I2 => a_reg(3),
      I3 => \dout[28]_i_7_n_0\,
      I4 => a_reg(2),
      I5 => \dout[28]_i_8_n_0\,
      O => \dout[24]_i_2_n_0\
    );
\dout[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[28]_i_9_n_0\,
      I1 => \dout[28]_i_10_n_0\,
      I2 => a_reg(3),
      I3 => \dout[28]_i_11_n_0\,
      I4 => a_reg(2),
      I5 => \dout[28]_i_4_n_0\,
      O => \dout[24]_i_3_n_0\
    );
\dout[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(25),
      I1 => \dout[25]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[25]_i_3_n_0\,
      O => p_0_in(25)
    );
\dout[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[29]_i_5_n_0\,
      I1 => \dout[29]_i_6_n_0\,
      I2 => a_reg(3),
      I3 => \dout[29]_i_7_n_0\,
      I4 => a_reg(2),
      I5 => \dout[29]_i_8_n_0\,
      O => \dout[25]_i_2_n_0\
    );
\dout[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[29]_i_9_n_0\,
      I1 => \dout[29]_i_10_n_0\,
      I2 => a_reg(3),
      I3 => \dout[29]_i_11_n_0\,
      I4 => a_reg(2),
      I5 => \dout[29]_i_4_n_0\,
      O => \dout[25]_i_3_n_0\
    );
\dout[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(26),
      I1 => \dout[26]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[26]_i_3_n_0\,
      O => p_0_in(26)
    );
\dout[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[30]_i_5_n_0\,
      I1 => \dout[30]_i_6_n_0\,
      I2 => a_reg(3),
      I3 => \dout[30]_i_7_n_0\,
      I4 => a_reg(2),
      I5 => \dout[30]_i_8_n_0\,
      O => \dout[26]_i_2_n_0\
    );
\dout[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[30]_i_9_n_0\,
      I1 => \dout[30]_i_10_n_0\,
      I2 => a_reg(3),
      I3 => \dout[30]_i_11_n_0\,
      I4 => a_reg(2),
      I5 => \dout[30]_i_4_n_0\,
      O => \dout[26]_i_3_n_0\
    );
\dout[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(27),
      I1 => \dout[27]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[27]_i_3_n_0\,
      O => p_0_in(27)
    );
\dout[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_5_n_0\,
      I1 => \dout[31]_i_6_n_0\,
      I2 => a_reg(3),
      I3 => \dout[31]_i_7_n_0\,
      I4 => a_reg(2),
      I5 => \dout[31]_i_8_n_0\,
      O => \dout[27]_i_2_n_0\
    );
\dout[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_9_n_0\,
      I1 => \dout[31]_i_10_n_0\,
      I2 => a_reg(3),
      I3 => \dout[31]_i_11_n_0\,
      I4 => a_reg(2),
      I5 => \dout[31]_i_4_n_0\,
      O => \dout[27]_i_3_n_0\
    );
\dout[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(28),
      I1 => \dout[28]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[28]_i_3_n_0\,
      O => p_0_in(28)
    );
\dout[28]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(19),
      I1 => minusOp2_out(18),
      I2 => a_reg(1),
      I3 => minusOp2_out(17),
      I4 => a_reg(0),
      I5 => minusOp2_out(16),
      O => \dout[28]_i_10_n_0\
    );
\dout[28]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(15),
      I1 => minusOp2_out(14),
      I2 => a_reg(1),
      I3 => minusOp2_out(13),
      I4 => a_reg(0),
      I5 => minusOp2_out(12),
      O => \dout[28]_i_11_n_0\
    );
\dout[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[28]_i_4_n_0\,
      I1 => \dout[28]_i_5_n_0\,
      I2 => a_reg(3),
      I3 => \dout[28]_i_6_n_0\,
      I4 => a_reg(2),
      I5 => \dout[28]_i_7_n_0\,
      O => \dout[28]_i_2_n_0\
    );
\dout[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[28]_i_8_n_0\,
      I1 => \dout[28]_i_9_n_0\,
      I2 => a_reg(3),
      I3 => \dout[28]_i_10_n_0\,
      I4 => a_reg(2),
      I5 => \dout[28]_i_11_n_0\,
      O => \dout[28]_i_3_n_0\
    );
\dout[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(11),
      I1 => minusOp2_out(10),
      I2 => a_reg(1),
      I3 => minusOp2_out(9),
      I4 => a_reg(0),
      I5 => minusOp2_out(8),
      O => \dout[28]_i_4_n_0\
    );
\dout[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(7),
      I1 => minusOp2_out(6),
      I2 => a_reg(1),
      I3 => minusOp2_out(5),
      I4 => a_reg(0),
      I5 => minusOp2_out(4),
      O => \dout[28]_i_5_n_0\
    );
\dout[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(3),
      I1 => minusOp2_out(2),
      I2 => a_reg(1),
      I3 => minusOp2_out(1),
      I4 => a_reg(0),
      I5 => minusOp2_out(0),
      O => \dout[28]_i_6_n_0\
    );
\dout[28]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(31),
      I1 => minusOp2_out(30),
      I2 => a_reg(1),
      I3 => minusOp2_out(29),
      I4 => a_reg(0),
      I5 => minusOp2_out(28),
      O => \dout[28]_i_7_n_0\
    );
\dout[28]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(27),
      I1 => minusOp2_out(26),
      I2 => a_reg(1),
      I3 => minusOp2_out(25),
      I4 => a_reg(0),
      I5 => minusOp2_out(24),
      O => \dout[28]_i_8_n_0\
    );
\dout[28]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(23),
      I1 => minusOp2_out(22),
      I2 => a_reg(1),
      I3 => minusOp2_out(21),
      I4 => a_reg(0),
      I5 => minusOp2_out(20),
      O => \dout[28]_i_9_n_0\
    );
\dout[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(29),
      I1 => \dout[29]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[29]_i_3_n_0\,
      O => p_0_in(29)
    );
\dout[29]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(20),
      I1 => minusOp2_out(19),
      I2 => a_reg(1),
      I3 => minusOp2_out(18),
      I4 => a_reg(0),
      I5 => minusOp2_out(17),
      O => \dout[29]_i_10_n_0\
    );
\dout[29]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(16),
      I1 => minusOp2_out(15),
      I2 => a_reg(1),
      I3 => minusOp2_out(14),
      I4 => a_reg(0),
      I5 => minusOp2_out(13),
      O => \dout[29]_i_11_n_0\
    );
\dout[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[29]_i_4_n_0\,
      I1 => \dout[29]_i_5_n_0\,
      I2 => a_reg(3),
      I3 => \dout[29]_i_6_n_0\,
      I4 => a_reg(2),
      I5 => \dout[29]_i_7_n_0\,
      O => \dout[29]_i_2_n_0\
    );
\dout[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[29]_i_8_n_0\,
      I1 => \dout[29]_i_9_n_0\,
      I2 => a_reg(3),
      I3 => \dout[29]_i_10_n_0\,
      I4 => a_reg(2),
      I5 => \dout[29]_i_11_n_0\,
      O => \dout[29]_i_3_n_0\
    );
\dout[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(12),
      I1 => minusOp2_out(11),
      I2 => a_reg(1),
      I3 => minusOp2_out(10),
      I4 => a_reg(0),
      I5 => minusOp2_out(9),
      O => \dout[29]_i_4_n_0\
    );
\dout[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(8),
      I1 => minusOp2_out(7),
      I2 => a_reg(1),
      I3 => minusOp2_out(6),
      I4 => a_reg(0),
      I5 => minusOp2_out(5),
      O => \dout[29]_i_5_n_0\
    );
\dout[29]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(4),
      I1 => minusOp2_out(3),
      I2 => a_reg(1),
      I3 => minusOp2_out(2),
      I4 => a_reg(0),
      I5 => minusOp2_out(1),
      O => \dout[29]_i_6_n_0\
    );
\dout[29]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(0),
      I1 => minusOp2_out(31),
      I2 => a_reg(1),
      I3 => minusOp2_out(30),
      I4 => a_reg(0),
      I5 => minusOp2_out(29),
      O => \dout[29]_i_7_n_0\
    );
\dout[29]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(28),
      I1 => minusOp2_out(27),
      I2 => a_reg(1),
      I3 => minusOp2_out(26),
      I4 => a_reg(0),
      I5 => minusOp2_out(25),
      O => \dout[29]_i_8_n_0\
    );
\dout[29]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(24),
      I1 => minusOp2_out(23),
      I2 => a_reg(1),
      I3 => minusOp2_out(22),
      I4 => a_reg(0),
      I5 => minusOp2_out(21),
      O => \dout[29]_i_9_n_0\
    );
\dout[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(2),
      I1 => \dout[18]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[18]_i_2_n_0\,
      O => p_0_in(2)
    );
\dout[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(30),
      I1 => \dout[30]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[30]_i_3_n_0\,
      O => p_0_in(30)
    );
\dout[30]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(21),
      I1 => minusOp2_out(20),
      I2 => a_reg(1),
      I3 => minusOp2_out(19),
      I4 => a_reg(0),
      I5 => minusOp2_out(18),
      O => \dout[30]_i_10_n_0\
    );
\dout[30]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(17),
      I1 => minusOp2_out(16),
      I2 => a_reg(1),
      I3 => minusOp2_out(15),
      I4 => a_reg(0),
      I5 => minusOp2_out(14),
      O => \dout[30]_i_11_n_0\
    );
\dout[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[30]_i_4_n_0\,
      I1 => \dout[30]_i_5_n_0\,
      I2 => a_reg(3),
      I3 => \dout[30]_i_6_n_0\,
      I4 => a_reg(2),
      I5 => \dout[30]_i_7_n_0\,
      O => \dout[30]_i_2_n_0\
    );
\dout[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[30]_i_8_n_0\,
      I1 => \dout[30]_i_9_n_0\,
      I2 => a_reg(3),
      I3 => \dout[30]_i_10_n_0\,
      I4 => a_reg(2),
      I5 => \dout[30]_i_11_n_0\,
      O => \dout[30]_i_3_n_0\
    );
\dout[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(13),
      I1 => minusOp2_out(12),
      I2 => a_reg(1),
      I3 => minusOp2_out(11),
      I4 => a_reg(0),
      I5 => minusOp2_out(10),
      O => \dout[30]_i_4_n_0\
    );
\dout[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(9),
      I1 => minusOp2_out(8),
      I2 => a_reg(1),
      I3 => minusOp2_out(7),
      I4 => a_reg(0),
      I5 => minusOp2_out(6),
      O => \dout[30]_i_5_n_0\
    );
\dout[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(5),
      I1 => minusOp2_out(4),
      I2 => a_reg(1),
      I3 => minusOp2_out(3),
      I4 => a_reg(0),
      I5 => minusOp2_out(2),
      O => \dout[30]_i_6_n_0\
    );
\dout[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(1),
      I1 => minusOp2_out(0),
      I2 => a_reg(1),
      I3 => minusOp2_out(31),
      I4 => a_reg(0),
      I5 => minusOp2_out(30),
      O => \dout[30]_i_7_n_0\
    );
\dout[30]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(29),
      I1 => minusOp2_out(28),
      I2 => a_reg(1),
      I3 => minusOp2_out(27),
      I4 => a_reg(0),
      I5 => minusOp2_out(26),
      O => \dout[30]_i_8_n_0\
    );
\dout[30]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(25),
      I1 => minusOp2_out(24),
      I2 => a_reg(1),
      I3 => minusOp2_out(23),
      I4 => a_reg(0),
      I5 => minusOp2_out(22),
      O => \dout[30]_i_9_n_0\
    );
\dout[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(31),
      I1 => \dout[31]_i_2_n_0\,
      I2 => a_reg(4),
      I3 => \dout[31]_i_3_n_0\,
      O => p_0_in(31)
    );
\dout[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(22),
      I1 => minusOp2_out(21),
      I2 => a_reg(1),
      I3 => minusOp2_out(20),
      I4 => a_reg(0),
      I5 => minusOp2_out(19),
      O => \dout[31]_i_10_n_0\
    );
\dout[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(18),
      I1 => minusOp2_out(17),
      I2 => a_reg(1),
      I3 => minusOp2_out(16),
      I4 => a_reg(0),
      I5 => minusOp2_out(15),
      O => \dout[31]_i_11_n_0\
    );
\dout[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_4_n_0\,
      I1 => \dout[31]_i_5_n_0\,
      I2 => a_reg(3),
      I3 => \dout[31]_i_6_n_0\,
      I4 => a_reg(2),
      I5 => \dout[31]_i_7_n_0\,
      O => \dout[31]_i_2_n_0\
    );
\dout[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_8_n_0\,
      I1 => \dout[31]_i_9_n_0\,
      I2 => a_reg(3),
      I3 => \dout[31]_i_10_n_0\,
      I4 => a_reg(2),
      I5 => \dout[31]_i_11_n_0\,
      O => \dout[31]_i_3_n_0\
    );
\dout[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(14),
      I1 => minusOp2_out(13),
      I2 => a_reg(1),
      I3 => minusOp2_out(12),
      I4 => a_reg(0),
      I5 => minusOp2_out(11),
      O => \dout[31]_i_4_n_0\
    );
\dout[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(10),
      I1 => minusOp2_out(9),
      I2 => a_reg(1),
      I3 => minusOp2_out(8),
      I4 => a_reg(0),
      I5 => minusOp2_out(7),
      O => \dout[31]_i_5_n_0\
    );
\dout[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(6),
      I1 => minusOp2_out(5),
      I2 => a_reg(1),
      I3 => minusOp2_out(4),
      I4 => a_reg(0),
      I5 => minusOp2_out(3),
      O => \dout[31]_i_6_n_0\
    );
\dout[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(2),
      I1 => minusOp2_out(1),
      I2 => a_reg(1),
      I3 => minusOp2_out(0),
      I4 => a_reg(0),
      I5 => minusOp2_out(31),
      O => \dout[31]_i_7_n_0\
    );
\dout[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(30),
      I1 => minusOp2_out(29),
      I2 => a_reg(1),
      I3 => minusOp2_out(28),
      I4 => a_reg(0),
      I5 => minusOp2_out(27),
      O => \dout[31]_i_8_n_0\
    );
\dout[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => minusOp2_out(26),
      I1 => minusOp2_out(25),
      I2 => a_reg(1),
      I3 => minusOp2_out(24),
      I4 => a_reg(0),
      I5 => minusOp2_out(23),
      O => \dout[31]_i_9_n_0\
    );
\dout[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \a_reg[16]_i_3_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[16]_i_2_n_0\,
      O => a(0)
    );
\dout[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \a_reg[17]_i_3_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[17]_i_2_n_0\,
      O => a(1)
    );
\dout[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \a_reg[18]_i_3_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[18]_i_2_n_0\,
      O => a(2)
    );
\dout[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \a_reg[19]_i_3_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[19]_i_2_n_0\,
      O => a(3)
    );
\dout[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => \a_reg[20]_i_3_n_0\,
      I1 => p_0_in(4),
      I2 => \a_reg[20]_i_2_n_0\,
      O => a(4)
    );
\dout[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \a_reg[21]_i_3_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[21]_i_2_n_0\,
      O => a(5)
    );
\dout[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(6),
      I1 => \a_reg[22]_i_3_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[22]_i_2_n_0\,
      O => a(6)
    );
\dout[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \a_reg[23]_i_3_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[23]_i_2_n_0\,
      O => a(7)
    );
\dout[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(3),
      I1 => \dout[19]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[19]_i_2_n_0\,
      O => p_0_in(3)
    );
\dout[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(8),
      I1 => \a_reg[24]_i_3_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[24]_i_2_n_0\,
      O => a(8)
    );
\dout[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(9),
      I1 => \a_reg[25]_i_3_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[25]_i_2_n_0\,
      O => a(9)
    );
\dout[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(10),
      I1 => \a_reg[26]_i_3_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[26]_i_2_n_0\,
      O => a(10)
    );
\dout[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(11),
      I1 => \a_reg[27]_i_3_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[27]_i_2_n_0\,
      O => a(11)
    );
\dout[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(12),
      I1 => \a_reg[28]_i_3_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[28]_i_2_n_0\,
      O => a(12)
    );
\dout[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(13),
      I1 => \a_reg[29]_i_3_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[29]_i_2_n_0\,
      O => a(13)
    );
\dout[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(14),
      I1 => \a_reg[30]_i_3_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[30]_i_2_n_0\,
      O => a(14)
    );
\dout[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(15),
      I1 => \a_reg[31]_i_5_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[31]_i_4_n_0\,
      O => a(15)
    );
\dout[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(16),
      I1 => \a_reg[16]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[16]_i_3_n_0\,
      O => a(16)
    );
\dout[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(17),
      I1 => \a_reg[17]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[17]_i_3_n_0\,
      O => a(17)
    );
\dout[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => \dout[20]_i_3_n_0\,
      I1 => a_reg(4),
      I2 => \dout[20]_i_2_n_0\,
      O => p_0_in(4)
    );
\dout[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(18),
      I1 => \a_reg[18]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[18]_i_3_n_0\,
      O => a(18)
    );
\dout[51]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(19),
      I1 => \a_reg[19]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[19]_i_3_n_0\,
      O => a(19)
    );
\dout[52]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(20),
      I1 => \a_reg[20]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[20]_i_3_n_0\,
      O => a(20)
    );
\dout[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(21),
      I1 => \a_reg[21]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[21]_i_3_n_0\,
      O => a(21)
    );
\dout[54]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(22),
      I1 => \a_reg[22]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[22]_i_3_n_0\,
      O => a(22)
    );
\dout[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(23),
      I1 => \a_reg[23]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[23]_i_3_n_0\,
      O => a(23)
    );
\dout[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(24),
      I1 => \a_reg[24]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[24]_i_3_n_0\,
      O => a(24)
    );
\dout[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(25),
      I1 => \a_reg[25]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[25]_i_3_n_0\,
      O => a(25)
    );
\dout[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(26),
      I1 => \a_reg[26]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[26]_i_3_n_0\,
      O => a(26)
    );
\dout[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(27),
      I1 => \a_reg[27]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[27]_i_3_n_0\,
      O => a(27)
    );
\dout[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(5),
      I1 => \dout[21]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[21]_i_2_n_0\,
      O => p_0_in(5)
    );
\dout[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(28),
      I1 => \a_reg[28]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[28]_i_3_n_0\,
      O => a(28)
    );
\dout[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(29),
      I1 => \a_reg[29]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[29]_i_3_n_0\,
      O => a(29)
    );
\dout[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(30),
      I1 => \a_reg[30]_i_2_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[30]_i_3_n_0\,
      O => a(30)
    );
\dout[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => i_cnt_reg(1),
      I1 => i_cnt_reg(0),
      I2 => i_cnt_reg(3),
      I3 => i_cnt_reg(2),
      I4 => di_vld_IBUF,
      O => \dout[63]_i_1_n_0\
    );
\dout[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => p_0_in(31),
      I1 => \a_reg[31]_i_4_n_0\,
      I2 => p_0_in(4),
      I3 => \a_reg[31]_i_5_n_0\,
      O => a(31)
    );
\dout[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(6),
      I1 => \dout[22]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[22]_i_2_n_0\,
      O => p_0_in(6)
    );
\dout[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(7),
      I1 => \dout[23]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[23]_i_2_n_0\,
      O => p_0_in(7)
    );
\dout[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(8),
      I1 => \dout[24]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[24]_i_2_n_0\,
      O => p_0_in(8)
    );
\dout[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => a_reg(9),
      I1 => \dout[25]_i_3_n_0\,
      I2 => a_reg(4),
      I3 => \dout[25]_i_2_n_0\,
      O => p_0_in(9)
    );
\dout_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(0),
      O => dout(0)
    );
\dout_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(10),
      O => dout(10)
    );
\dout_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(11),
      O => dout(11)
    );
\dout_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(12),
      O => dout(12)
    );
\dout_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(13),
      O => dout(13)
    );
\dout_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(14),
      O => dout(14)
    );
\dout_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(15),
      O => dout(15)
    );
\dout_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(16),
      O => dout(16)
    );
\dout_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(17),
      O => dout(17)
    );
\dout_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(18),
      O => dout(18)
    );
\dout_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(19),
      O => dout(19)
    );
\dout_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(1),
      O => dout(1)
    );
\dout_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(20),
      O => dout(20)
    );
\dout_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(21),
      O => dout(21)
    );
\dout_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(22),
      O => dout(22)
    );
\dout_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(23),
      O => dout(23)
    );
\dout_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(24),
      O => dout(24)
    );
\dout_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(25),
      O => dout(25)
    );
\dout_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(26),
      O => dout(26)
    );
\dout_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(27),
      O => dout(27)
    );
\dout_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(28),
      O => dout(28)
    );
\dout_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(29),
      O => dout(29)
    );
\dout_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(2),
      O => dout(2)
    );
\dout_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(30),
      O => dout(30)
    );
\dout_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(31),
      O => dout(31)
    );
\dout_OBUF[32]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(32),
      O => dout(32)
    );
\dout_OBUF[33]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(33),
      O => dout(33)
    );
\dout_OBUF[34]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(34),
      O => dout(34)
    );
\dout_OBUF[35]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(35),
      O => dout(35)
    );
\dout_OBUF[36]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(36),
      O => dout(36)
    );
\dout_OBUF[37]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(37),
      O => dout(37)
    );
\dout_OBUF[38]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(38),
      O => dout(38)
    );
\dout_OBUF[39]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(39),
      O => dout(39)
    );
\dout_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(3),
      O => dout(3)
    );
\dout_OBUF[40]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(40),
      O => dout(40)
    );
\dout_OBUF[41]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(41),
      O => dout(41)
    );
\dout_OBUF[42]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(42),
      O => dout(42)
    );
\dout_OBUF[43]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(43),
      O => dout(43)
    );
\dout_OBUF[44]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(44),
      O => dout(44)
    );
\dout_OBUF[45]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(45),
      O => dout(45)
    );
\dout_OBUF[46]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(46),
      O => dout(46)
    );
\dout_OBUF[47]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(47),
      O => dout(47)
    );
\dout_OBUF[48]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(48),
      O => dout(48)
    );
\dout_OBUF[49]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(49),
      O => dout(49)
    );
\dout_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(4),
      O => dout(4)
    );
\dout_OBUF[50]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(50),
      O => dout(50)
    );
\dout_OBUF[51]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(51),
      O => dout(51)
    );
\dout_OBUF[52]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(52),
      O => dout(52)
    );
\dout_OBUF[53]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(53),
      O => dout(53)
    );
\dout_OBUF[54]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(54),
      O => dout(54)
    );
\dout_OBUF[55]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(55),
      O => dout(55)
    );
\dout_OBUF[56]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(56),
      O => dout(56)
    );
\dout_OBUF[57]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(57),
      O => dout(57)
    );
\dout_OBUF[58]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(58),
      O => dout(58)
    );
\dout_OBUF[59]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(59),
      O => dout(59)
    );
\dout_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(5),
      O => dout(5)
    );
\dout_OBUF[60]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(60),
      O => dout(60)
    );
\dout_OBUF[61]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(61),
      O => dout(61)
    );
\dout_OBUF[62]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(62),
      O => dout(62)
    );
\dout_OBUF[63]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(63),
      O => dout(63)
    );
\dout_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(6),
      O => dout(6)
    );
\dout_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(7),
      O => dout(7)
    );
\dout_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(8),
      O => dout(8)
    );
\dout_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dout_OBUF(9),
      O => dout(9)
    );
\dout_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(0),
      Q => dout_OBUF(0)
    );
\dout_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(10),
      Q => dout_OBUF(10)
    );
\dout_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(11),
      Q => dout_OBUF(11)
    );
\dout_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(12),
      Q => dout_OBUF(12)
    );
\dout_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(13),
      Q => dout_OBUF(13)
    );
\dout_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(14),
      Q => dout_OBUF(14)
    );
\dout_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(15),
      Q => dout_OBUF(15)
    );
\dout_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(16),
      Q => dout_OBUF(16)
    );
\dout_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(17),
      Q => dout_OBUF(17)
    );
\dout_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(18),
      Q => dout_OBUF(18)
    );
\dout_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(19),
      Q => dout_OBUF(19)
    );
\dout_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(1),
      Q => dout_OBUF(1)
    );
\dout_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(20),
      Q => dout_OBUF(20)
    );
\dout_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(21),
      Q => dout_OBUF(21)
    );
\dout_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(22),
      Q => dout_OBUF(22)
    );
\dout_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(23),
      Q => dout_OBUF(23)
    );
\dout_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(24),
      Q => dout_OBUF(24)
    );
\dout_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(25),
      Q => dout_OBUF(25)
    );
\dout_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(26),
      Q => dout_OBUF(26)
    );
\dout_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(27),
      Q => dout_OBUF(27)
    );
\dout_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(28),
      Q => dout_OBUF(28)
    );
\dout_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(29),
      Q => dout_OBUF(29)
    );
\dout_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(2),
      Q => dout_OBUF(2)
    );
\dout_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(30),
      Q => dout_OBUF(30)
    );
\dout_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(31),
      Q => dout_OBUF(31)
    );
\dout_reg[31]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[31]_i_13_n_0\,
      CO(3) => \dout_reg[31]_i_12_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[31]_i_12_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \b_reg_reg_n_0_[15]\,
      DI(2) => \b_reg_reg_n_0_[14]\,
      DI(1) => \b_reg_reg_n_0_[13]\,
      DI(0) => \b_reg_reg_n_0_[12]\,
      O(3 downto 0) => minusOp2_out(15 downto 12),
      S(3) => \g0_b15__0_n_0\,
      S(2) => \g0_b14__0_n_0\,
      S(1) => \g0_b13__0_n_0\,
      S(0) => \g0_b12__0_n_0\
    );
\dout_reg[31]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[31]_i_14_n_0\,
      CO(3) => \dout_reg[31]_i_13_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[31]_i_13_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \b_reg_reg_n_0_[11]\,
      DI(2) => \b_reg_reg_n_0_[10]\,
      DI(1) => \b_reg_reg_n_0_[9]\,
      DI(0) => \b_reg_reg_n_0_[8]\,
      O(3 downto 0) => minusOp2_out(11 downto 8),
      S(3) => \g0_b11__0_n_0\,
      S(2) => \g0_b10__0_n_0\,
      S(1) => \g0_b9__0_n_0\,
      S(0) => \g0_b8__0_n_0\
    );
\dout_reg[31]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[31]_i_15_n_0\,
      CO(3) => \dout_reg[31]_i_14_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[31]_i_14_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \b_reg_reg_n_0_[7]\,
      DI(2) => \b_reg_reg_n_0_[6]\,
      DI(1) => \b_reg_reg_n_0_[5]\,
      DI(0) => \b_reg_reg_n_0_[4]\,
      O(3 downto 0) => minusOp2_out(7 downto 4),
      S(3) => \g0_b7__0_n_0\,
      S(2) => \g0_b6__0_n_0\,
      S(1) => \g0_b5__0_n_0\,
      S(0) => \g0_b4__0_n_0\
    );
\dout_reg[31]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dout_reg[31]_i_15_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[31]_i_15_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => \b_reg_reg_n_0_[3]\,
      DI(2) => \b_reg_reg_n_0_[2]\,
      DI(1) => \b_reg_reg_n_0_[1]\,
      DI(0) => \b_reg_reg_n_0_[0]\,
      O(3 downto 0) => minusOp2_out(3 downto 0),
      S(3) => \g0_b3__0_n_0\,
      S(2) => \g0_b2__0_n_0\,
      S(1) => \g0_b1__0_n_0\,
      S(0) => \g0_b0__0_n_0\
    );
\dout_reg[31]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[31]_i_17_n_0\,
      CO(3 downto 0) => \NLW_dout_reg[31]_i_16_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \b_reg_reg_n_0_[30]\,
      DI(1) => \b_reg_reg_n_0_[29]\,
      DI(0) => \b_reg_reg_n_0_[28]\,
      O(3 downto 0) => minusOp2_out(31 downto 28),
      S(3) => \g0_b31__0_n_0\,
      S(2) => \g0_b30__0_n_0\,
      S(1) => \g0_b29__0_n_0\,
      S(0) => \g0_b28__0_n_0\
    );
\dout_reg[31]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[31]_i_18_n_0\,
      CO(3) => \dout_reg[31]_i_17_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[31]_i_17_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \b_reg_reg_n_0_[27]\,
      DI(2) => \b_reg_reg_n_0_[26]\,
      DI(1) => \b_reg_reg_n_0_[25]\,
      DI(0) => \b_reg_reg_n_0_[24]\,
      O(3 downto 0) => minusOp2_out(27 downto 24),
      S(3) => \g0_b27__0_n_0\,
      S(2) => \g0_b26__0_n_0\,
      S(1) => \g0_b25__0_n_0\,
      S(0) => \g0_b24__0_n_0\
    );
\dout_reg[31]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[31]_i_19_n_0\,
      CO(3) => \dout_reg[31]_i_18_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[31]_i_18_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \b_reg_reg_n_0_[23]\,
      DI(2) => \b_reg_reg_n_0_[22]\,
      DI(1) => \b_reg_reg_n_0_[21]\,
      DI(0) => \b_reg_reg_n_0_[20]\,
      O(3 downto 0) => minusOp2_out(23 downto 20),
      S(3) => \g0_b23__0_n_0\,
      S(2) => \g0_b22__0_n_0\,
      S(1) => \g0_b21__0_n_0\,
      S(0) => \g0_b20__0_n_0\
    );
\dout_reg[31]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[31]_i_12_n_0\,
      CO(3) => \dout_reg[31]_i_19_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[31]_i_19_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \b_reg_reg_n_0_[19]\,
      DI(2) => \b_reg_reg_n_0_[18]\,
      DI(1) => \b_reg_reg_n_0_[17]\,
      DI(0) => \b_reg_reg_n_0_[16]\,
      O(3 downto 0) => minusOp2_out(19 downto 16),
      S(3) => \g0_b19__0_n_0\,
      S(2) => \g0_b18__0_n_0\,
      S(1) => \g0_b17__0_n_0\,
      S(0) => \g0_b16__0_n_0\
    );
\dout_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(0),
      Q => dout_OBUF(32)
    );
\dout_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(1),
      Q => dout_OBUF(33)
    );
\dout_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(2),
      Q => dout_OBUF(34)
    );
\dout_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(3),
      Q => dout_OBUF(35)
    );
\dout_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(4),
      Q => dout_OBUF(36)
    );
\dout_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(5),
      Q => dout_OBUF(37)
    );
\dout_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(6),
      Q => dout_OBUF(38)
    );
\dout_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(7),
      Q => dout_OBUF(39)
    );
\dout_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(3),
      Q => dout_OBUF(3)
    );
\dout_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(8),
      Q => dout_OBUF(40)
    );
\dout_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(9),
      Q => dout_OBUF(41)
    );
\dout_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(10),
      Q => dout_OBUF(42)
    );
\dout_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(11),
      Q => dout_OBUF(43)
    );
\dout_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(12),
      Q => dout_OBUF(44)
    );
\dout_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(13),
      Q => dout_OBUF(45)
    );
\dout_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(14),
      Q => dout_OBUF(46)
    );
\dout_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(15),
      Q => dout_OBUF(47)
    );
\dout_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(16),
      Q => dout_OBUF(48)
    );
\dout_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(17),
      Q => dout_OBUF(49)
    );
\dout_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(4),
      Q => dout_OBUF(4)
    );
\dout_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(18),
      Q => dout_OBUF(50)
    );
\dout_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(19),
      Q => dout_OBUF(51)
    );
\dout_reg[52]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(20),
      Q => dout_OBUF(52)
    );
\dout_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(21),
      Q => dout_OBUF(53)
    );
\dout_reg[54]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(22),
      Q => dout_OBUF(54)
    );
\dout_reg[55]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(23),
      Q => dout_OBUF(55)
    );
\dout_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(24),
      Q => dout_OBUF(56)
    );
\dout_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(25),
      Q => dout_OBUF(57)
    );
\dout_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(26),
      Q => dout_OBUF(58)
    );
\dout_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(27),
      Q => dout_OBUF(59)
    );
\dout_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(5),
      Q => dout_OBUF(5)
    );
\dout_reg[60]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(28),
      Q => dout_OBUF(60)
    );
\dout_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(29),
      Q => dout_OBUF(61)
    );
\dout_reg[62]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(30),
      Q => dout_OBUF(62)
    );
\dout_reg[63]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => a(31),
      Q => dout_OBUF(63)
    );
\dout_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(6),
      Q => dout_OBUF(6)
    );
\dout_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(7),
      Q => dout_OBUF(7)
    );
\dout_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(8),
      Q => dout_OBUF(8)
    );
\dout_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => p_0_in(9),
      Q => dout_OBUF(9)
    );
g0_b0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10F2EF0D"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(0),
      O => g0_b0_n_0
    );
\g0_b0__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0776F889"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[0]\,
      O => \g0_b0__0_n_0\
    );
g0_b1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D24F2DB"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(1),
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10D8EF27"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(10),
      O => g0_b10_n_0
    );
\g0_b10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02C8FD37"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[10]\,
      O => \g0_b10__0_n_0\
    );
g0_b11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EE6F119"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(11),
      O => g0_b11_n_0
    );
\g0_b11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0238FDC7"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[11]\,
      O => \g0_b11__0_n_0\
    );
g0_b12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"118CEE73"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(12),
      O => g0_b12_n_0
    );
\g0_b12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0230FDCF"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[12]\,
      O => \g0_b12__0_n_0\
    );
g0_b13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0966F699"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(13),
      O => g0_b13_n_0
    );
\g0_b13__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1C5AE3A5"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[13]\,
      O => \g0_b13__0_n_0\
    );
g0_b14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C22F3DD"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(14),
      O => g0_b14_n_0
    );
\g0_b14__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"112AEED5"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[14]\,
      O => \g0_b14__0_n_0\
    );
g0_b15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0602F9FD"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(15),
      O => g0_b15_n_0
    );
\g0_b15__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01ECFE13"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[15]\,
      O => \g0_b15__0_n_0\
    );
g0_b16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E70F18F"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(16),
      O => g0_b16_n_0
    );
\g0_b16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"094CF6B3"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[16]\,
      O => \g0_b16__0_n_0\
    );
g0_b17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E28F1D7"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(17),
      O => g0_b17_n_0
    );
\g0_b17__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07A4F85B"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[17]\,
      O => \g0_b17__0_n_0\
    );
g0_b18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E38E1C7"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(18),
      O => g0_b18_n_0
    );
\g0_b18__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1582EA7D"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[18]\,
      O => \g0_b18__0_n_0\
    );
g0_b19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"144EEBB1"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(19),
      O => g0_b19_n_0
    );
\g0_b19__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0BF6F409"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[19]\,
      O => \g0_b19__0_n_0\
    );
\g0_b1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"068CF973"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[1]\,
      O => \g0_b1__0_n_0\
    );
g0_b2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"051AFAE5"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(2),
      O => g0_b2_n_0
    );
g0_b20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CCEF331"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(20),
      O => g0_b20_n_0
    );
\g0_b20__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CE0F31F"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[20]\,
      O => \g0_b20__0_n_0\
    );
g0_b21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"067EF981"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(21),
      O => g0_b21_n_0
    );
\g0_b21__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0138FEC7"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[21]\,
      O => \g0_b21__0_n_0\
    );
g0_b22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1946E6B9"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(22),
      O => g0_b22_n_0
    );
\g0_b22__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0184FE7B"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[22]\,
      O => \g0_b22__0_n_0\
    );
g0_b23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F86E079"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(23),
      O => g0_b23_n_0
    );
\g0_b23__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01D0FE2F"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[23]\,
      O => \g0_b23__0_n_0\
    );
g0_b24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06D8F927"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(24),
      O => g0_b24_n_0
    );
\g0_b24__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1B70E48F"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[24]\,
      O => \g0_b24__0_n_0\
    );
g0_b25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11C2EE3D"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(25),
      O => g0_b25_n_0
    );
\g0_b25__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCAF035"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[25]\,
      O => \g0_b25__0_n_0\
    );
g0_b26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15A2EA5D"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(26),
      O => g0_b26_n_0
    );
\g0_b26__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15CAEA35"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[26]\,
      O => \g0_b26__0_n_0\
    );
g0_b27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0440FBBF"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(27),
      O => g0_b27_n_0
    );
\g0_b27__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0684F97B"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[27]\,
      O => \g0_b27__0_n_0\
    );
g0_b28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"193CE6C3"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(28),
      O => g0_b28_n_0
    );
\g0_b28__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02B8FD47"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[28]\,
      O => \g0_b28__0_n_0\
    );
g0_b29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1B94E46B"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(29),
      O => g0_b29_n_0
    );
\g0_b29__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"176CE893"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[29]\,
      O => \g0_b29__0_n_0\
    );
\g0_b2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C72F38D"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[2]\,
      O => \g0_b2__0_n_0\
    );
g0_b3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AF4F50B"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(3),
      O => g0_b3_n_0
    );
g0_b30: unisim.vcomponents.LUT5
    generic map(
      INIT => X"166EE991"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(30),
      O => g0_b30_n_0
    );
\g0_b30__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"18AAE755"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[30]\,
      O => \g0_b30__0_n_0\
    );
g0_b31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10A0EF5F"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(31),
      O => g0_b31_n_0
    );
\g0_b31__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0588FA77"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[31]\,
      O => \g0_b31__0_n_0\
    );
\g0_b3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1CE3"
    )
        port map (
      I0 => i_cnt_reg(1),
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(3),
      I3 => \b_reg_reg_n_0_[3]\,
      O => \g0_b3__0_n_0\
    );
g0_b4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1758E8A7"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(4),
      O => g0_b4_n_0
    );
\g0_b4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D0FF2F"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[4]\,
      O => \g0_b4__0_n_0\
    );
g0_b5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1620E9DF"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(5),
      O => g0_b5_n_0
    );
\g0_b5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0628F9D7"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[5]\,
      O => \g0_b5__0_n_0\
    );
g0_b6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04BAFB45"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(6),
      O => g0_b6_n_0
    );
\g0_b6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14EB"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(3),
      I3 => \b_reg_reg_n_0_[6]\,
      O => \g0_b6__0_n_0\
    );
g0_b7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0346FCB9"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(7),
      O => g0_b7_n_0
    );
\g0_b7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1042EFBD"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[7]\,
      O => \g0_b7__0_n_0\
    );
g0_b8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B44F4BB"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(8),
      O => g0_b8_n_0
    );
\g0_b8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E8CE173"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[8]\,
      O => \g0_b8__0_n_0\
    );
g0_b9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E54F1AB"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => a_reg(9),
      O => g0_b9_n_0
    );
\g0_b9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1994E66B"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      I4 => \b_reg_reg_n_0_[9]\,
      O => \g0_b9__0_n_0\
    );
\i_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => di_vld_IBUF,
      O => \i_cnt[0]_i_1_n_0\
    );
\i_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => i_cnt_reg(1),
      I1 => i_cnt_reg(0),
      I2 => di_vld_IBUF,
      O => \i_cnt[1]_i_1_n_0\
    );
\i_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEB"
    )
        port map (
      I0 => di_vld_IBUF,
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(0),
      I3 => i_cnt_reg(1),
      O => \i_cnt[2]_i_1_n_0\
    );
\i_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => di_vld_IBUF,
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(3),
      I3 => i_cnt_reg(0),
      I4 => i_cnt_reg(1),
      O => \i_cnt[3]_i_1_n_0\
    );
\i_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEEB"
    )
        port map (
      I0 => di_vld_IBUF,
      I1 => i_cnt_reg(3),
      I2 => i_cnt_reg(1),
      I3 => i_cnt_reg(0),
      I4 => i_cnt_reg(2),
      O => \i_cnt[3]_i_2_n_0\
    );
\i_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \i_cnt[0]_i_1_n_0\,
      Q => i_cnt_reg(0)
    );
\i_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \a_reg[31]_i_3_n_0\,
      D => \i_cnt[1]_i_1_n_0\,
      Q => i_cnt_reg(1)
    );
\i_cnt_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_cnt[3]_i_1_n_0\,
      D => \i_cnt[2]_i_1_n_0\,
      PRE => \a_reg[31]_i_3_n_0\,
      Q => i_cnt_reg(2)
    );
\i_cnt_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_cnt[3]_i_1_n_0\,
      D => \i_cnt[3]_i_2_n_0\,
      PRE => \a_reg[31]_i_3_n_0\,
      Q => i_cnt_reg(3)
    );
end STRUCTURE;
