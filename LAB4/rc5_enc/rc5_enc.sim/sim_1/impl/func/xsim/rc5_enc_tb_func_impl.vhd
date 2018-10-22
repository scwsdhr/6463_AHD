-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Mon Oct 22 13:38:37 2018
-- Host        : DESKTOP-65OAGH3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/shenc/OneDrive -
--               nyu.edu/6463_AHD/LAB4/rc5_enc/rc5_enc.sim/sim_1/impl/func/xsim/rc5_enc_tb_func_impl.vhd}
-- Design      : rc5_enc
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rc5_enc is
  port (
    clr : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    di_vld : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 );
    do_rdy : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rc5_enc : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of rc5_enc : entity is "d5487587";
end rc5_enc;

architecture STRUCTURE of rc5_enc is
  signal a_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \a_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \a_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \a_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \a_reg[11]_i_7_n_0\ : STD_LOGIC;
  signal \a_reg[11]_i_8_n_0\ : STD_LOGIC;
  signal \a_reg[11]_i_9_n_0\ : STD_LOGIC;
  signal \a_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \a_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \a_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \a_reg[15]_i_7_n_0\ : STD_LOGIC;
  signal \a_reg[15]_i_8_n_0\ : STD_LOGIC;
  signal \a_reg[15]_i_9_n_0\ : STD_LOGIC;
  signal \a_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[19]_i_4_n_0\ : STD_LOGIC;
  signal \a_reg[19]_i_5_n_0\ : STD_LOGIC;
  signal \a_reg[19]_i_6_n_0\ : STD_LOGIC;
  signal \a_reg[19]_i_7_n_0\ : STD_LOGIC;
  signal \a_reg[19]_i_8_n_0\ : STD_LOGIC;
  signal \a_reg[19]_i_9_n_0\ : STD_LOGIC;
  signal \a_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \a_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \a_reg[23]_i_6_n_0\ : STD_LOGIC;
  signal \a_reg[23]_i_7_n_0\ : STD_LOGIC;
  signal \a_reg[23]_i_8_n_0\ : STD_LOGIC;
  signal \a_reg[23]_i_9_n_0\ : STD_LOGIC;
  signal \a_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[27]_i_4_n_0\ : STD_LOGIC;
  signal \a_reg[27]_i_5_n_0\ : STD_LOGIC;
  signal \a_reg[27]_i_6_n_0\ : STD_LOGIC;
  signal \a_reg[27]_i_7_n_0\ : STD_LOGIC;
  signal \a_reg[27]_i_8_n_0\ : STD_LOGIC;
  signal \a_reg[27]_i_9_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \a_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal \a_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \a_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \a_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \a_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \a_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \a_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \a_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \a_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \a_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \a_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \a_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \a_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \a_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \a_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \a_reg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \a_reg_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \a_reg_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \a_reg_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \a_reg_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \a_reg_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \a_reg_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \a_reg_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \a_reg_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \a_reg_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \a_reg_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \a_reg_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \a_reg_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \a_reg_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \a_reg_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \a_reg_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \a_reg_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \a_reg_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \a_reg_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \a_reg_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \a_reg_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \a_reg_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \a_reg_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \a_reg_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \a_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \a_reg_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \a_reg_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \a_reg_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \a_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \a_reg_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \a_reg_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \a_reg_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \a_reg_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal b : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal b_reg : STD_LOGIC;
  signal \b_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \b_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \b_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \b_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \b_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \b_reg[11]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[11]_i_8_n_0\ : STD_LOGIC;
  signal \b_reg[11]_i_9_n_0\ : STD_LOGIC;
  signal \b_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \b_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \b_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \b_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \b_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \b_reg[15]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[15]_i_8_n_0\ : STD_LOGIC;
  signal \b_reg[15]_i_9_n_0\ : STD_LOGIC;
  signal \b_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \b_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \b_reg[19]_i_4_n_0\ : STD_LOGIC;
  signal \b_reg[19]_i_5_n_0\ : STD_LOGIC;
  signal \b_reg[19]_i_6_n_0\ : STD_LOGIC;
  signal \b_reg[19]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[19]_i_8_n_0\ : STD_LOGIC;
  signal \b_reg[19]_i_9_n_0\ : STD_LOGIC;
  signal \b_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \b_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \b_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \b_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \b_reg[23]_i_6_n_0\ : STD_LOGIC;
  signal \b_reg[23]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[23]_i_8_n_0\ : STD_LOGIC;
  signal \b_reg[23]_i_9_n_0\ : STD_LOGIC;
  signal \b_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \b_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \b_reg[27]_i_4_n_0\ : STD_LOGIC;
  signal \b_reg[27]_i_5_n_0\ : STD_LOGIC;
  signal \b_reg[27]_i_6_n_0\ : STD_LOGIC;
  signal \b_reg[27]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[27]_i_8_n_0\ : STD_LOGIC;
  signal \b_reg[27]_i_9_n_0\ : STD_LOGIC;
  signal \b_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \b_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \b_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \b_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \b_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal \b_reg[31]_i_9_n_0\ : STD_LOGIC;
  signal \b_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \b_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \b_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \b_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \b_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \b_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \b_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \b_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \b_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \b_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \b_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \b_reg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \b_reg_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \b_reg_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \b_reg_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \b_reg_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \b_reg_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \b_reg_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \b_reg_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \b_reg_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \b_reg_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \b_reg_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \b_reg_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \b_reg_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \b_reg_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \b_reg_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \b_reg_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \b_reg_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \b_reg_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \b_reg_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \b_reg_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \b_reg_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \b_reg_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \b_reg_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \b_reg_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \b_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \b_reg_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \b_reg_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \b_reg_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \b_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \b_reg_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \b_reg_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \b_reg_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal b_rot : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal clr_IBUF : STD_LOGIC;
  signal di_vld_IBUF : STD_LOGIC;
  signal din_IBUF : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal do_rdy_OBUF : STD_LOGIC;
  signal do_rdy_i_1_n_0 : STD_LOGIC;
  signal \dout[11]_i_2_n_0\ : STD_LOGIC;
  signal \dout[11]_i_3_n_0\ : STD_LOGIC;
  signal \dout[11]_i_4_n_0\ : STD_LOGIC;
  signal \dout[11]_i_5_n_0\ : STD_LOGIC;
  signal \dout[15]_i_2_n_0\ : STD_LOGIC;
  signal \dout[15]_i_3_n_0\ : STD_LOGIC;
  signal \dout[15]_i_4_n_0\ : STD_LOGIC;
  signal \dout[15]_i_5_n_0\ : STD_LOGIC;
  signal \dout[19]_i_2_n_0\ : STD_LOGIC;
  signal \dout[19]_i_3_n_0\ : STD_LOGIC;
  signal \dout[19]_i_4_n_0\ : STD_LOGIC;
  signal \dout[19]_i_5_n_0\ : STD_LOGIC;
  signal \dout[23]_i_2_n_0\ : STD_LOGIC;
  signal \dout[23]_i_3_n_0\ : STD_LOGIC;
  signal \dout[23]_i_4_n_0\ : STD_LOGIC;
  signal \dout[23]_i_5_n_0\ : STD_LOGIC;
  signal \dout[27]_i_10_n_0\ : STD_LOGIC;
  signal \dout[27]_i_11_n_0\ : STD_LOGIC;
  signal \dout[27]_i_12_n_0\ : STD_LOGIC;
  signal \dout[27]_i_13_n_0\ : STD_LOGIC;
  signal \dout[27]_i_14_n_0\ : STD_LOGIC;
  signal \dout[27]_i_15_n_0\ : STD_LOGIC;
  signal \dout[27]_i_16_n_0\ : STD_LOGIC;
  signal \dout[27]_i_17_n_0\ : STD_LOGIC;
  signal \dout[27]_i_18_n_0\ : STD_LOGIC;
  signal \dout[27]_i_19_n_0\ : STD_LOGIC;
  signal \dout[27]_i_20_n_0\ : STD_LOGIC;
  signal \dout[27]_i_21_n_0\ : STD_LOGIC;
  signal \dout[27]_i_2_n_0\ : STD_LOGIC;
  signal \dout[27]_i_3_n_0\ : STD_LOGIC;
  signal \dout[27]_i_4_n_0\ : STD_LOGIC;
  signal \dout[27]_i_5_n_0\ : STD_LOGIC;
  signal \dout[31]_i_10_n_0\ : STD_LOGIC;
  signal \dout[31]_i_11_n_0\ : STD_LOGIC;
  signal \dout[31]_i_12_n_0\ : STD_LOGIC;
  signal \dout[31]_i_13_n_0\ : STD_LOGIC;
  signal \dout[31]_i_14_n_0\ : STD_LOGIC;
  signal \dout[31]_i_15_n_0\ : STD_LOGIC;
  signal \dout[31]_i_16_n_0\ : STD_LOGIC;
  signal \dout[31]_i_17_n_0\ : STD_LOGIC;
  signal \dout[31]_i_18_n_0\ : STD_LOGIC;
  signal \dout[31]_i_19_n_0\ : STD_LOGIC;
  signal \dout[31]_i_20_n_0\ : STD_LOGIC;
  signal \dout[31]_i_21_n_0\ : STD_LOGIC;
  signal \dout[31]_i_2_n_0\ : STD_LOGIC;
  signal \dout[31]_i_3_n_0\ : STD_LOGIC;
  signal \dout[31]_i_4_n_0\ : STD_LOGIC;
  signal \dout[31]_i_5_n_0\ : STD_LOGIC;
  signal \dout[35]_i_2_n_0\ : STD_LOGIC;
  signal \dout[35]_i_3_n_0\ : STD_LOGIC;
  signal \dout[35]_i_4_n_0\ : STD_LOGIC;
  signal \dout[35]_i_5_n_0\ : STD_LOGIC;
  signal \dout[39]_i_2_n_0\ : STD_LOGIC;
  signal \dout[39]_i_3_n_0\ : STD_LOGIC;
  signal \dout[39]_i_4_n_0\ : STD_LOGIC;
  signal \dout[39]_i_5_n_0\ : STD_LOGIC;
  signal \dout[3]_i_2_n_0\ : STD_LOGIC;
  signal \dout[3]_i_3_n_0\ : STD_LOGIC;
  signal \dout[3]_i_4_n_0\ : STD_LOGIC;
  signal \dout[43]_i_2_n_0\ : STD_LOGIC;
  signal \dout[43]_i_3_n_0\ : STD_LOGIC;
  signal \dout[43]_i_4_n_0\ : STD_LOGIC;
  signal \dout[43]_i_5_n_0\ : STD_LOGIC;
  signal \dout[47]_i_2_n_0\ : STD_LOGIC;
  signal \dout[47]_i_3_n_0\ : STD_LOGIC;
  signal \dout[47]_i_4_n_0\ : STD_LOGIC;
  signal \dout[47]_i_5_n_0\ : STD_LOGIC;
  signal \dout[51]_i_10_n_0\ : STD_LOGIC;
  signal \dout[51]_i_11_n_0\ : STD_LOGIC;
  signal \dout[51]_i_12_n_0\ : STD_LOGIC;
  signal \dout[51]_i_13_n_0\ : STD_LOGIC;
  signal \dout[51]_i_2_n_0\ : STD_LOGIC;
  signal \dout[51]_i_3_n_0\ : STD_LOGIC;
  signal \dout[51]_i_4_n_0\ : STD_LOGIC;
  signal \dout[51]_i_5_n_0\ : STD_LOGIC;
  signal \dout[51]_i_6_n_0\ : STD_LOGIC;
  signal \dout[51]_i_7_n_0\ : STD_LOGIC;
  signal \dout[51]_i_8_n_0\ : STD_LOGIC;
  signal \dout[51]_i_9_n_0\ : STD_LOGIC;
  signal \dout[55]_i_10_n_0\ : STD_LOGIC;
  signal \dout[55]_i_11_n_0\ : STD_LOGIC;
  signal \dout[55]_i_12_n_0\ : STD_LOGIC;
  signal \dout[55]_i_13_n_0\ : STD_LOGIC;
  signal \dout[55]_i_2_n_0\ : STD_LOGIC;
  signal \dout[55]_i_3_n_0\ : STD_LOGIC;
  signal \dout[55]_i_4_n_0\ : STD_LOGIC;
  signal \dout[55]_i_5_n_0\ : STD_LOGIC;
  signal \dout[55]_i_6_n_0\ : STD_LOGIC;
  signal \dout[55]_i_7_n_0\ : STD_LOGIC;
  signal \dout[55]_i_8_n_0\ : STD_LOGIC;
  signal \dout[55]_i_9_n_0\ : STD_LOGIC;
  signal \dout[59]_i_10_n_0\ : STD_LOGIC;
  signal \dout[59]_i_11_n_0\ : STD_LOGIC;
  signal \dout[59]_i_12_n_0\ : STD_LOGIC;
  signal \dout[59]_i_13_n_0\ : STD_LOGIC;
  signal \dout[59]_i_14_n_0\ : STD_LOGIC;
  signal \dout[59]_i_15_n_0\ : STD_LOGIC;
  signal \dout[59]_i_16_n_0\ : STD_LOGIC;
  signal \dout[59]_i_17_n_0\ : STD_LOGIC;
  signal \dout[59]_i_18_n_0\ : STD_LOGIC;
  signal \dout[59]_i_19_n_0\ : STD_LOGIC;
  signal \dout[59]_i_20_n_0\ : STD_LOGIC;
  signal \dout[59]_i_21_n_0\ : STD_LOGIC;
  signal \dout[59]_i_22_n_0\ : STD_LOGIC;
  signal \dout[59]_i_23_n_0\ : STD_LOGIC;
  signal \dout[59]_i_24_n_0\ : STD_LOGIC;
  signal \dout[59]_i_25_n_0\ : STD_LOGIC;
  signal \dout[59]_i_26_n_0\ : STD_LOGIC;
  signal \dout[59]_i_27_n_0\ : STD_LOGIC;
  signal \dout[59]_i_28_n_0\ : STD_LOGIC;
  signal \dout[59]_i_29_n_0\ : STD_LOGIC;
  signal \dout[59]_i_2_n_0\ : STD_LOGIC;
  signal \dout[59]_i_3_n_0\ : STD_LOGIC;
  signal \dout[59]_i_4_n_0\ : STD_LOGIC;
  signal \dout[59]_i_5_n_0\ : STD_LOGIC;
  signal \dout[59]_i_6_n_0\ : STD_LOGIC;
  signal \dout[59]_i_7_n_0\ : STD_LOGIC;
  signal \dout[59]_i_8_n_0\ : STD_LOGIC;
  signal \dout[59]_i_9_n_0\ : STD_LOGIC;
  signal \dout[63]_i_10_n_0\ : STD_LOGIC;
  signal \dout[63]_i_11_n_0\ : STD_LOGIC;
  signal \dout[63]_i_12_n_0\ : STD_LOGIC;
  signal \dout[63]_i_13_n_0\ : STD_LOGIC;
  signal \dout[63]_i_14_n_0\ : STD_LOGIC;
  signal \dout[63]_i_15_n_0\ : STD_LOGIC;
  signal \dout[63]_i_16_n_0\ : STD_LOGIC;
  signal \dout[63]_i_17_n_0\ : STD_LOGIC;
  signal \dout[63]_i_18_n_0\ : STD_LOGIC;
  signal \dout[63]_i_19_n_0\ : STD_LOGIC;
  signal \dout[63]_i_1_n_0\ : STD_LOGIC;
  signal \dout[63]_i_20_n_0\ : STD_LOGIC;
  signal \dout[63]_i_21_n_0\ : STD_LOGIC;
  signal \dout[63]_i_22_n_0\ : STD_LOGIC;
  signal \dout[63]_i_23_n_0\ : STD_LOGIC;
  signal \dout[63]_i_24_n_0\ : STD_LOGIC;
  signal \dout[63]_i_25_n_0\ : STD_LOGIC;
  signal \dout[63]_i_26_n_0\ : STD_LOGIC;
  signal \dout[63]_i_27_n_0\ : STD_LOGIC;
  signal \dout[63]_i_28_n_0\ : STD_LOGIC;
  signal \dout[63]_i_29_n_0\ : STD_LOGIC;
  signal \dout[63]_i_30_n_0\ : STD_LOGIC;
  signal \dout[63]_i_31_n_0\ : STD_LOGIC;
  signal \dout[63]_i_32_n_0\ : STD_LOGIC;
  signal \dout[63]_i_33_n_0\ : STD_LOGIC;
  signal \dout[63]_i_34_n_0\ : STD_LOGIC;
  signal \dout[63]_i_35_n_0\ : STD_LOGIC;
  signal \dout[63]_i_36_n_0\ : STD_LOGIC;
  signal \dout[63]_i_37_n_0\ : STD_LOGIC;
  signal \dout[63]_i_38_n_0\ : STD_LOGIC;
  signal \dout[63]_i_39_n_0\ : STD_LOGIC;
  signal \dout[63]_i_3_n_0\ : STD_LOGIC;
  signal \dout[63]_i_40_n_0\ : STD_LOGIC;
  signal \dout[63]_i_41_n_0\ : STD_LOGIC;
  signal \dout[63]_i_42_n_0\ : STD_LOGIC;
  signal \dout[63]_i_43_n_0\ : STD_LOGIC;
  signal \dout[63]_i_44_n_0\ : STD_LOGIC;
  signal \dout[63]_i_45_n_0\ : STD_LOGIC;
  signal \dout[63]_i_46_n_0\ : STD_LOGIC;
  signal \dout[63]_i_47_n_0\ : STD_LOGIC;
  signal \dout[63]_i_48_n_0\ : STD_LOGIC;
  signal \dout[63]_i_49_n_0\ : STD_LOGIC;
  signal \dout[63]_i_4_n_0\ : STD_LOGIC;
  signal \dout[63]_i_50_n_0\ : STD_LOGIC;
  signal \dout[63]_i_51_n_0\ : STD_LOGIC;
  signal \dout[63]_i_52_n_0\ : STD_LOGIC;
  signal \dout[63]_i_53_n_0\ : STD_LOGIC;
  signal \dout[63]_i_54_n_0\ : STD_LOGIC;
  signal \dout[63]_i_55_n_0\ : STD_LOGIC;
  signal \dout[63]_i_56_n_0\ : STD_LOGIC;
  signal \dout[63]_i_57_n_0\ : STD_LOGIC;
  signal \dout[63]_i_58_n_0\ : STD_LOGIC;
  signal \dout[63]_i_59_n_0\ : STD_LOGIC;
  signal \dout[63]_i_5_n_0\ : STD_LOGIC;
  signal \dout[63]_i_60_n_0\ : STD_LOGIC;
  signal \dout[63]_i_61_n_0\ : STD_LOGIC;
  signal \dout[63]_i_62_n_0\ : STD_LOGIC;
  signal \dout[63]_i_63_n_0\ : STD_LOGIC;
  signal \dout[63]_i_64_n_0\ : STD_LOGIC;
  signal \dout[63]_i_65_n_0\ : STD_LOGIC;
  signal \dout[63]_i_6_n_0\ : STD_LOGIC;
  signal \dout[63]_i_7_n_0\ : STD_LOGIC;
  signal \dout[63]_i_8_n_0\ : STD_LOGIC;
  signal \dout[63]_i_9_n_0\ : STD_LOGIC;
  signal \dout[7]_i_2_n_0\ : STD_LOGIC;
  signal \dout[7]_i_3_n_0\ : STD_LOGIC;
  signal \dout[7]_i_4_n_0\ : STD_LOGIC;
  signal dout_OBUF : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \dout_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \dout_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \dout_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \dout_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \dout_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \dout_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \dout_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \dout_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \dout_reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \dout_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \dout_reg[51]_i_1_n_0\ : STD_LOGIC;
  signal \dout_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \dout_reg[59]_i_1_n_0\ : STD_LOGIC;
  signal \dout_reg[7]_i_1_n_0\ : STD_LOGIC;
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
  signal \g0_b3__1_i_10_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_11_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_12_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_13_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_14_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_15_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_16_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_17_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_18_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_19_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_20_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_21_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_2_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_3_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_4_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_5_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_6_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_7_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_8_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_9_n_0\ : STD_LOGIC;
  signal \g0_b3__1_n_0\ : STD_LOGIC;
  signal \g0_b3__2_n_0\ : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b3_rep_n_0 : STD_LOGIC;
  signal \g0_b4__0_n_0\ : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal \g0_b5__0_n_0\ : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal \g0_b6__0_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_10_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_11_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_12_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_13_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_14_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_15_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_16_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_17_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_18_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_19_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_20_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_21_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_2_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_3_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_4_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_5_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_6_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_7_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_8_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_9_n_0\ : STD_LOGIC;
  signal \g0_b6__1_n_0\ : STD_LOGIC;
  signal \g0_b6__2_n_0\ : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal g0_b6_rep_n_0 : STD_LOGIC;
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
  signal plusOp : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal plusOp1_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_a_reg_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_a_reg_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_a_reg_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_a_reg_reg[23]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_a_reg_reg[27]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_a_reg_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_a_reg_reg[3]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_a_reg_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_b_reg_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_b_reg_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_b_reg_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_b_reg_reg[23]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_b_reg_reg[27]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_b_reg_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_b_reg_reg[3]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_b_reg_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[23]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[27]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dout_reg[35]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[39]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[3]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[43]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[47]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[51]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[55]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[59]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dout_reg[63]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dout_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dout[51]_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dout[51]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dout[51]_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dout[55]_i_11\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dout[55]_i_13\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dout[55]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dout[55]_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dout[59]_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dout[59]_i_14\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dout[59]_i_18\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dout[59]_i_22\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dout[59]_i_26\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dout[59]_i_27\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dout[59]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dout[59]_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dout[63]_i_11\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dout[63]_i_13\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dout[63]_i_15\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dout[63]_i_17\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dout[63]_i_22\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dout[63]_i_27\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dout[63]_i_9\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of g0_b31 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \g0_b31__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_cnt[3]_i_2\ : label is "soft_lutpair0";
begin
\a_reg[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b11__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[11]_i_2_n_0\
    );
\a_reg[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b10__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[11]_i_3_n_0\
    );
\a_reg[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b9__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[11]_i_4_n_0\
    );
\a_reg[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b8__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[11]_i_5_n_0\
    );
\a_reg[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[59]_i_7_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_6_n_0\,
      I3 => \g0_b11__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(43),
      O => \a_reg[11]_i_6_n_0\
    );
\a_reg[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[59]_i_9_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_8_n_0\,
      I3 => \g0_b10__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(42),
      O => \a_reg[11]_i_7_n_0\
    );
\a_reg[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[59]_i_11_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_10_n_0\,
      I3 => \g0_b9__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(41),
      O => \a_reg[11]_i_8_n_0\
    );
\a_reg[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[59]_i_13_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_12_n_0\,
      I3 => \g0_b8__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(40),
      O => \a_reg[11]_i_9_n_0\
    );
\a_reg[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b15__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[15]_i_2_n_0\
    );
\a_reg[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b14__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[15]_i_3_n_0\
    );
\a_reg[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b13__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[15]_i_4_n_0\
    );
\a_reg[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b12__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[15]_i_5_n_0\
    );
\a_reg[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[63]_i_9_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_8_n_0\,
      I3 => \g0_b15__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(47),
      O => \a_reg[15]_i_6_n_0\
    );
\a_reg[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[63]_i_11_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_10_n_0\,
      I3 => \g0_b14__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(46),
      O => \a_reg[15]_i_7_n_0\
    );
\a_reg[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[63]_i_13_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_12_n_0\,
      I3 => \g0_b13__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(45),
      O => \a_reg[15]_i_8_n_0\
    );
\a_reg[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[63]_i_15_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_14_n_0\,
      I3 => \g0_b12__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(44),
      O => \a_reg[15]_i_9_n_0\
    );
\a_reg[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b19__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[19]_i_2_n_0\
    );
\a_reg[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b18__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[19]_i_3_n_0\
    );
\a_reg[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b17__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[19]_i_4_n_0\
    );
\a_reg[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b16__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[19]_i_5_n_0\
    );
\a_reg[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[51]_i_6_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_7_n_0\,
      I3 => \g0_b19__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(51),
      O => \a_reg[19]_i_6_n_0\
    );
\a_reg[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[51]_i_8_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_9_n_0\,
      I3 => \g0_b18__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(50),
      O => \a_reg[19]_i_7_n_0\
    );
\a_reg[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[51]_i_10_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_11_n_0\,
      I3 => \g0_b17__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(49),
      O => \a_reg[19]_i_8_n_0\
    );
\a_reg[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[51]_i_12_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_13_n_0\,
      I3 => \g0_b16__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(48),
      O => \a_reg[19]_i_9_n_0\
    );
\a_reg[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b23__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[23]_i_2_n_0\
    );
\a_reg[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b22__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[23]_i_3_n_0\
    );
\a_reg[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b21__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[23]_i_4_n_0\
    );
\a_reg[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b20__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[23]_i_5_n_0\
    );
\a_reg[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[55]_i_6_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_7_n_0\,
      I3 => \g0_b23__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(55),
      O => \a_reg[23]_i_6_n_0\
    );
\a_reg[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[55]_i_8_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_9_n_0\,
      I3 => \g0_b22__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(54),
      O => \a_reg[23]_i_7_n_0\
    );
\a_reg[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[55]_i_10_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_11_n_0\,
      I3 => \g0_b21__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(53),
      O => \a_reg[23]_i_8_n_0\
    );
\a_reg[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[55]_i_12_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_13_n_0\,
      I3 => \g0_b20__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(52),
      O => \a_reg[23]_i_9_n_0\
    );
\a_reg[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b27__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[27]_i_2_n_0\
    );
\a_reg[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b26__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[27]_i_3_n_0\
    );
\a_reg[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b25__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[27]_i_4_n_0\
    );
\a_reg[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b24__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[27]_i_5_n_0\
    );
\a_reg[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[59]_i_6_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_7_n_0\,
      I3 => \g0_b27__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(59),
      O => \a_reg[27]_i_6_n_0\
    );
\a_reg[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[59]_i_8_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_9_n_0\,
      I3 => \g0_b26__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(58),
      O => \a_reg[27]_i_7_n_0\
    );
\a_reg[27]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[59]_i_10_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_11_n_0\,
      I3 => \g0_b25__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(57),
      O => \a_reg[27]_i_8_n_0\
    );
\a_reg[27]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[59]_i_12_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_13_n_0\,
      I3 => \g0_b24__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(56),
      O => \a_reg[27]_i_9_n_0\
    );
\a_reg[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b30__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[31]_i_2_n_0\
    );
\a_reg[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b29__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[31]_i_3_n_0\
    );
\a_reg[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b28__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[31]_i_4_n_0\
    );
\a_reg[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[63]_i_8_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_9_n_0\,
      I3 => \g0_b31__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(63),
      O => \a_reg[31]_i_5_n_0\
    );
\a_reg[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[63]_i_10_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_11_n_0\,
      I3 => \g0_b30__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(62),
      O => \a_reg[31]_i_6_n_0\
    );
\a_reg[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[63]_i_12_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_13_n_0\,
      I3 => \g0_b29__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(61),
      O => \a_reg[31]_i_7_n_0\
    );
\a_reg[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[63]_i_14_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_15_n_0\,
      I3 => \g0_b28__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(60),
      O => \a_reg[31]_i_8_n_0\
    );
\a_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b3_n_0,
      I1 => di_vld_IBUF,
      O => \a_reg[3]_i_2_n_0\
    );
\a_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b2__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[3]_i_3_n_0\
    );
\a_reg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b1__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[3]_i_4_n_0\
    );
\a_reg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b0__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[3]_i_5_n_0\
    );
\a_reg[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[51]_i_7_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_6_n_0\,
      I3 => g0_b3_n_0,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(35),
      O => \a_reg[3]_i_6_n_0\
    );
\a_reg[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[51]_i_9_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_8_n_0\,
      I3 => \g0_b2__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(34),
      O => \a_reg[3]_i_7_n_0\
    );
\a_reg[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[51]_i_11_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_10_n_0\,
      I3 => \g0_b1__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(33),
      O => \a_reg[3]_i_8_n_0\
    );
\a_reg[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[51]_i_13_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_12_n_0\,
      I3 => \g0_b0__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(32),
      O => \a_reg[3]_i_9_n_0\
    );
\a_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b7__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[7]_i_2_n_0\
    );
\a_reg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b6_n_0,
      I1 => di_vld_IBUF,
      O => \a_reg[7]_i_3_n_0\
    );
\a_reg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b5__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[7]_i_4_n_0\
    );
\a_reg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \g0_b4__0_n_0\,
      I1 => di_vld_IBUF,
      O => \a_reg[7]_i_5_n_0\
    );
\a_reg[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[55]_i_7_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_6_n_0\,
      I3 => \g0_b7__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(39),
      O => \a_reg[7]_i_6_n_0\
    );
\a_reg[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[55]_i_9_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_8_n_0\,
      I3 => g0_b6_n_0,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(38),
      O => \a_reg[7]_i_7_n_0\
    );
\a_reg[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[55]_i_11_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_10_n_0\,
      I3 => \g0_b5__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(37),
      O => \a_reg[7]_i_8_n_0\
    );
\a_reg[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47B8000047B8"
    )
        port map (
      I0 => \dout[55]_i_13_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_12_n_0\,
      I3 => \g0_b4__0_n_0\,
      I4 => di_vld_IBUF,
      I5 => din_IBUF(36),
      O => \a_reg[7]_i_9_n_0\
    );
\a_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[3]_i_1_n_7\,
      Q => a_reg(0)
    );
\a_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[11]_i_1_n_5\,
      Q => a_reg(10)
    );
\a_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[11]_i_1_n_4\,
      Q => a_reg(11)
    );
\a_reg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_reg_reg[7]_i_1_n_0\,
      CO(3) => \a_reg_reg[11]_i_1_n_0\,
      CO(2 downto 0) => \NLW_a_reg_reg[11]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \a_reg[11]_i_2_n_0\,
      DI(2) => \a_reg[11]_i_3_n_0\,
      DI(1) => \a_reg[11]_i_4_n_0\,
      DI(0) => \a_reg[11]_i_5_n_0\,
      O(3) => \a_reg_reg[11]_i_1_n_4\,
      O(2) => \a_reg_reg[11]_i_1_n_5\,
      O(1) => \a_reg_reg[11]_i_1_n_6\,
      O(0) => \a_reg_reg[11]_i_1_n_7\,
      S(3) => \a_reg[11]_i_6_n_0\,
      S(2) => \a_reg[11]_i_7_n_0\,
      S(1) => \a_reg[11]_i_8_n_0\,
      S(0) => \a_reg[11]_i_9_n_0\
    );
\a_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[15]_i_1_n_7\,
      Q => a_reg(12)
    );
\a_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[15]_i_1_n_6\,
      Q => a_reg(13)
    );
\a_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[15]_i_1_n_5\,
      Q => a_reg(14)
    );
\a_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[15]_i_1_n_4\,
      Q => a_reg(15)
    );
\a_reg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_reg_reg[11]_i_1_n_0\,
      CO(3) => \a_reg_reg[15]_i_1_n_0\,
      CO(2 downto 0) => \NLW_a_reg_reg[15]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \a_reg[15]_i_2_n_0\,
      DI(2) => \a_reg[15]_i_3_n_0\,
      DI(1) => \a_reg[15]_i_4_n_0\,
      DI(0) => \a_reg[15]_i_5_n_0\,
      O(3) => \a_reg_reg[15]_i_1_n_4\,
      O(2) => \a_reg_reg[15]_i_1_n_5\,
      O(1) => \a_reg_reg[15]_i_1_n_6\,
      O(0) => \a_reg_reg[15]_i_1_n_7\,
      S(3) => \a_reg[15]_i_6_n_0\,
      S(2) => \a_reg[15]_i_7_n_0\,
      S(1) => \a_reg[15]_i_8_n_0\,
      S(0) => \a_reg[15]_i_9_n_0\
    );
\a_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[19]_i_1_n_7\,
      Q => a_reg(16)
    );
\a_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[19]_i_1_n_6\,
      Q => a_reg(17)
    );
\a_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[19]_i_1_n_5\,
      Q => a_reg(18)
    );
\a_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[19]_i_1_n_4\,
      Q => a_reg(19)
    );
\a_reg_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_reg_reg[15]_i_1_n_0\,
      CO(3) => \a_reg_reg[19]_i_1_n_0\,
      CO(2 downto 0) => \NLW_a_reg_reg[19]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \a_reg[19]_i_2_n_0\,
      DI(2) => \a_reg[19]_i_3_n_0\,
      DI(1) => \a_reg[19]_i_4_n_0\,
      DI(0) => \a_reg[19]_i_5_n_0\,
      O(3) => \a_reg_reg[19]_i_1_n_4\,
      O(2) => \a_reg_reg[19]_i_1_n_5\,
      O(1) => \a_reg_reg[19]_i_1_n_6\,
      O(0) => \a_reg_reg[19]_i_1_n_7\,
      S(3) => \a_reg[19]_i_6_n_0\,
      S(2) => \a_reg[19]_i_7_n_0\,
      S(1) => \a_reg[19]_i_8_n_0\,
      S(0) => \a_reg[19]_i_9_n_0\
    );
\a_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[3]_i_1_n_6\,
      Q => a_reg(1)
    );
\a_reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[23]_i_1_n_7\,
      Q => a_reg(20)
    );
\a_reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[23]_i_1_n_6\,
      Q => a_reg(21)
    );
\a_reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[23]_i_1_n_5\,
      Q => a_reg(22)
    );
\a_reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[23]_i_1_n_4\,
      Q => a_reg(23)
    );
\a_reg_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_reg_reg[19]_i_1_n_0\,
      CO(3) => \a_reg_reg[23]_i_1_n_0\,
      CO(2 downto 0) => \NLW_a_reg_reg[23]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \a_reg[23]_i_2_n_0\,
      DI(2) => \a_reg[23]_i_3_n_0\,
      DI(1) => \a_reg[23]_i_4_n_0\,
      DI(0) => \a_reg[23]_i_5_n_0\,
      O(3) => \a_reg_reg[23]_i_1_n_4\,
      O(2) => \a_reg_reg[23]_i_1_n_5\,
      O(1) => \a_reg_reg[23]_i_1_n_6\,
      O(0) => \a_reg_reg[23]_i_1_n_7\,
      S(3) => \a_reg[23]_i_6_n_0\,
      S(2) => \a_reg[23]_i_7_n_0\,
      S(1) => \a_reg[23]_i_8_n_0\,
      S(0) => \a_reg[23]_i_9_n_0\
    );
\a_reg_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[27]_i_1_n_7\,
      Q => a_reg(24)
    );
\a_reg_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[27]_i_1_n_6\,
      Q => a_reg(25)
    );
\a_reg_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[27]_i_1_n_5\,
      Q => a_reg(26)
    );
\a_reg_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[27]_i_1_n_4\,
      Q => a_reg(27)
    );
\a_reg_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_reg_reg[23]_i_1_n_0\,
      CO(3) => \a_reg_reg[27]_i_1_n_0\,
      CO(2 downto 0) => \NLW_a_reg_reg[27]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \a_reg[27]_i_2_n_0\,
      DI(2) => \a_reg[27]_i_3_n_0\,
      DI(1) => \a_reg[27]_i_4_n_0\,
      DI(0) => \a_reg[27]_i_5_n_0\,
      O(3) => \a_reg_reg[27]_i_1_n_4\,
      O(2) => \a_reg_reg[27]_i_1_n_5\,
      O(1) => \a_reg_reg[27]_i_1_n_6\,
      O(0) => \a_reg_reg[27]_i_1_n_7\,
      S(3) => \a_reg[27]_i_6_n_0\,
      S(2) => \a_reg[27]_i_7_n_0\,
      S(1) => \a_reg[27]_i_8_n_0\,
      S(0) => \a_reg[27]_i_9_n_0\
    );
\a_reg_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[31]_i_1_n_7\,
      Q => a_reg(28)
    );
\a_reg_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[31]_i_1_n_6\,
      Q => a_reg(29)
    );
\a_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[3]_i_1_n_5\,
      Q => a_reg(2)
    );
\a_reg_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[31]_i_1_n_5\,
      Q => a_reg(30)
    );
\a_reg_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[31]_i_1_n_4\,
      Q => a_reg(31)
    );
\a_reg_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_reg_reg[27]_i_1_n_0\,
      CO(3 downto 0) => \NLW_a_reg_reg[31]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \a_reg[31]_i_2_n_0\,
      DI(1) => \a_reg[31]_i_3_n_0\,
      DI(0) => \a_reg[31]_i_4_n_0\,
      O(3) => \a_reg_reg[31]_i_1_n_4\,
      O(2) => \a_reg_reg[31]_i_1_n_5\,
      O(1) => \a_reg_reg[31]_i_1_n_6\,
      O(0) => \a_reg_reg[31]_i_1_n_7\,
      S(3) => \a_reg[31]_i_5_n_0\,
      S(2) => \a_reg[31]_i_6_n_0\,
      S(1) => \a_reg[31]_i_7_n_0\,
      S(0) => \a_reg[31]_i_8_n_0\
    );
\a_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[3]_i_1_n_4\,
      Q => a_reg(3)
    );
\a_reg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \a_reg_reg[3]_i_1_n_0\,
      CO(2 downto 0) => \NLW_a_reg_reg[3]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \a_reg[3]_i_2_n_0\,
      DI(2) => \a_reg[3]_i_3_n_0\,
      DI(1) => \a_reg[3]_i_4_n_0\,
      DI(0) => \a_reg[3]_i_5_n_0\,
      O(3) => \a_reg_reg[3]_i_1_n_4\,
      O(2) => \a_reg_reg[3]_i_1_n_5\,
      O(1) => \a_reg_reg[3]_i_1_n_6\,
      O(0) => \a_reg_reg[3]_i_1_n_7\,
      S(3) => \a_reg[3]_i_6_n_0\,
      S(2) => \a_reg[3]_i_7_n_0\,
      S(1) => \a_reg[3]_i_8_n_0\,
      S(0) => \a_reg[3]_i_9_n_0\
    );
\a_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[7]_i_1_n_7\,
      Q => a_reg(4)
    );
\a_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[7]_i_1_n_6\,
      Q => a_reg(5)
    );
\a_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[7]_i_1_n_5\,
      Q => a_reg(6)
    );
\a_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[7]_i_1_n_4\,
      Q => a_reg(7)
    );
\a_reg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_reg_reg[3]_i_1_n_0\,
      CO(3) => \a_reg_reg[7]_i_1_n_0\,
      CO(2 downto 0) => \NLW_a_reg_reg[7]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \a_reg[7]_i_2_n_0\,
      DI(2) => \a_reg[7]_i_3_n_0\,
      DI(1) => \a_reg[7]_i_4_n_0\,
      DI(0) => \a_reg[7]_i_5_n_0\,
      O(3) => \a_reg_reg[7]_i_1_n_4\,
      O(2) => \a_reg_reg[7]_i_1_n_5\,
      O(1) => \a_reg_reg[7]_i_1_n_6\,
      O(0) => \a_reg_reg[7]_i_1_n_7\,
      S(3) => \a_reg[7]_i_6_n_0\,
      S(2) => \a_reg[7]_i_7_n_0\,
      S(1) => \a_reg[7]_i_8_n_0\,
      S(0) => \a_reg[7]_i_9_n_0\
    );
\a_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[11]_i_1_n_7\,
      Q => a_reg(8)
    );
\a_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \a_reg_reg[11]_i_1_n_6\,
      Q => a_reg(9)
    );
\b_reg[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b11_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[11]_i_2_n_0\
    );
\b_reg[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b10_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[11]_i_3_n_0\
    );
\b_reg[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b9_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[11]_i_4_n_0\
    );
\b_reg[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b8_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[11]_i_5_n_0\
    );
\b_reg[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b11_n_0,
      I1 => b_rot(11),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(11),
      O => \b_reg[11]_i_6_n_0\
    );
\b_reg[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b10_n_0,
      I1 => b_rot(10),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(10),
      O => \b_reg[11]_i_7_n_0\
    );
\b_reg[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b9_n_0,
      I1 => b_rot(9),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(9),
      O => \b_reg[11]_i_8_n_0\
    );
\b_reg[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b8_n_0,
      I1 => b_rot(8),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(8),
      O => \b_reg[11]_i_9_n_0\
    );
\b_reg[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b15_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[15]_i_2_n_0\
    );
\b_reg[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b14_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[15]_i_3_n_0\
    );
\b_reg[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b13_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[15]_i_4_n_0\
    );
\b_reg[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b12_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[15]_i_5_n_0\
    );
\b_reg[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b15_n_0,
      I1 => b_rot(15),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(15),
      O => \b_reg[15]_i_6_n_0\
    );
\b_reg[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b14_n_0,
      I1 => b_rot(14),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(14),
      O => \b_reg[15]_i_7_n_0\
    );
\b_reg[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b13_n_0,
      I1 => b_rot(13),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(13),
      O => \b_reg[15]_i_8_n_0\
    );
\b_reg[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b12_n_0,
      I1 => b_rot(12),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(12),
      O => \b_reg[15]_i_9_n_0\
    );
\b_reg[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b19_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[19]_i_2_n_0\
    );
\b_reg[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b18_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[19]_i_3_n_0\
    );
\b_reg[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b17_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[19]_i_4_n_0\
    );
\b_reg[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b16_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[19]_i_5_n_0\
    );
\b_reg[19]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b19_n_0,
      I1 => b_rot(19),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(19),
      O => \b_reg[19]_i_6_n_0\
    );
\b_reg[19]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b18_n_0,
      I1 => b_rot(18),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(18),
      O => \b_reg[19]_i_7_n_0\
    );
\b_reg[19]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b17_n_0,
      I1 => b_rot(17),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(17),
      O => \b_reg[19]_i_8_n_0\
    );
\b_reg[19]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b16_n_0,
      I1 => b_rot(16),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(16),
      O => \b_reg[19]_i_9_n_0\
    );
\b_reg[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b23_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[23]_i_2_n_0\
    );
\b_reg[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b22_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[23]_i_3_n_0\
    );
\b_reg[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b21_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[23]_i_4_n_0\
    );
\b_reg[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b20_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[23]_i_5_n_0\
    );
\b_reg[23]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b23_n_0,
      I1 => b_rot(23),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(23),
      O => \b_reg[23]_i_6_n_0\
    );
\b_reg[23]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b22_n_0,
      I1 => b_rot(22),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(22),
      O => \b_reg[23]_i_7_n_0\
    );
\b_reg[23]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b21_n_0,
      I1 => b_rot(21),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(21),
      O => \b_reg[23]_i_8_n_0\
    );
\b_reg[23]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b20_n_0,
      I1 => b_rot(20),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(20),
      O => \b_reg[23]_i_9_n_0\
    );
\b_reg[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b27_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[27]_i_2_n_0\
    );
\b_reg[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b26_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[27]_i_3_n_0\
    );
\b_reg[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b25_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[27]_i_4_n_0\
    );
\b_reg[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b24_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[27]_i_5_n_0\
    );
\b_reg[27]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b27_n_0,
      I1 => b_rot(27),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(27),
      O => \b_reg[27]_i_6_n_0\
    );
\b_reg[27]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b26_n_0,
      I1 => b_rot(26),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(26),
      O => \b_reg[27]_i_7_n_0\
    );
\b_reg[27]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b25_n_0,
      I1 => b_rot(25),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(25),
      O => \b_reg[27]_i_8_n_0\
    );
\b_reg[27]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b24_n_0,
      I1 => b_rot(24),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(24),
      O => \b_reg[27]_i_9_n_0\
    );
\b_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => i_cnt_reg(2),
      I1 => i_cnt_reg(3),
      I2 => di_vld_IBUF,
      O => b_reg
    );
\b_reg[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b30_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[31]_i_3_n_0\
    );
\b_reg[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b29_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[31]_i_4_n_0\
    );
\b_reg[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b28_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[31]_i_5_n_0\
    );
\b_reg[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b31_n_0,
      I1 => b_rot(31),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(31),
      O => \b_reg[31]_i_6_n_0\
    );
\b_reg[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b30_n_0,
      I1 => b_rot(30),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(30),
      O => \b_reg[31]_i_7_n_0\
    );
\b_reg[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b29_n_0,
      I1 => b_rot(29),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(29),
      O => \b_reg[31]_i_8_n_0\
    );
\b_reg[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b28_n_0,
      I1 => b_rot(28),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(28),
      O => \b_reg[31]_i_9_n_0\
    );
\b_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b2_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[3]_i_2_n_0\
    );
\b_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b1_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[3]_i_3_n_0\
    );
\b_reg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b0_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[3]_i_4_n_0\
    );
\b_reg[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b2_n_0,
      I1 => b_rot(2),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(2),
      O => \b_reg[3]_i_5_n_0\
    );
\b_reg[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b1_n_0,
      I1 => b_rot(1),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(1),
      O => \b_reg[3]_i_6_n_0\
    );
\b_reg[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b0_n_0,
      I1 => b_rot(0),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(0),
      O => \b_reg[3]_i_7_n_0\
    );
\b_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b7_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[7]_i_2_n_0\
    );
\b_reg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b5_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[7]_i_3_n_0\
    );
\b_reg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b4_n_0,
      I1 => di_vld_IBUF,
      O => \b_reg[7]_i_4_n_0\
    );
\b_reg[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b7_n_0,
      I1 => b_rot(7),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(7),
      O => \b_reg[7]_i_5_n_0\
    );
\b_reg[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b5_n_0,
      I1 => b_rot(5),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(5),
      O => \b_reg[7]_i_6_n_0\
    );
\b_reg[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => g0_b4_n_0,
      I1 => b_rot(4),
      I2 => di_vld_IBUF,
      I3 => din_IBUF(4),
      O => \b_reg[7]_i_7_n_0\
    );
\b_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[3]_i_1_n_7\,
      Q => b(0)
    );
\b_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[11]_i_1_n_5\,
      Q => b(10)
    );
\b_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[11]_i_1_n_4\,
      Q => b(11)
    );
\b_reg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \b_reg_reg[7]_i_1_n_0\,
      CO(3) => \b_reg_reg[11]_i_1_n_0\,
      CO(2 downto 0) => \NLW_b_reg_reg[11]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \b_reg[11]_i_2_n_0\,
      DI(2) => \b_reg[11]_i_3_n_0\,
      DI(1) => \b_reg[11]_i_4_n_0\,
      DI(0) => \b_reg[11]_i_5_n_0\,
      O(3) => \b_reg_reg[11]_i_1_n_4\,
      O(2) => \b_reg_reg[11]_i_1_n_5\,
      O(1) => \b_reg_reg[11]_i_1_n_6\,
      O(0) => \b_reg_reg[11]_i_1_n_7\,
      S(3) => \b_reg[11]_i_6_n_0\,
      S(2) => \b_reg[11]_i_7_n_0\,
      S(1) => \b_reg[11]_i_8_n_0\,
      S(0) => \b_reg[11]_i_9_n_0\
    );
\b_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[15]_i_1_n_7\,
      Q => b(12)
    );
\b_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[15]_i_1_n_6\,
      Q => b(13)
    );
\b_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[15]_i_1_n_5\,
      Q => b(14)
    );
\b_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[15]_i_1_n_4\,
      Q => b(15)
    );
\b_reg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \b_reg_reg[11]_i_1_n_0\,
      CO(3) => \b_reg_reg[15]_i_1_n_0\,
      CO(2 downto 0) => \NLW_b_reg_reg[15]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \b_reg[15]_i_2_n_0\,
      DI(2) => \b_reg[15]_i_3_n_0\,
      DI(1) => \b_reg[15]_i_4_n_0\,
      DI(0) => \b_reg[15]_i_5_n_0\,
      O(3) => \b_reg_reg[15]_i_1_n_4\,
      O(2) => \b_reg_reg[15]_i_1_n_5\,
      O(1) => \b_reg_reg[15]_i_1_n_6\,
      O(0) => \b_reg_reg[15]_i_1_n_7\,
      S(3) => \b_reg[15]_i_6_n_0\,
      S(2) => \b_reg[15]_i_7_n_0\,
      S(1) => \b_reg[15]_i_8_n_0\,
      S(0) => \b_reg[15]_i_9_n_0\
    );
\b_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[19]_i_1_n_7\,
      Q => b(16)
    );
\b_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[19]_i_1_n_6\,
      Q => b(17)
    );
\b_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[19]_i_1_n_5\,
      Q => b(18)
    );
\b_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[19]_i_1_n_4\,
      Q => b(19)
    );
\b_reg_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \b_reg_reg[15]_i_1_n_0\,
      CO(3) => \b_reg_reg[19]_i_1_n_0\,
      CO(2 downto 0) => \NLW_b_reg_reg[19]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \b_reg[19]_i_2_n_0\,
      DI(2) => \b_reg[19]_i_3_n_0\,
      DI(1) => \b_reg[19]_i_4_n_0\,
      DI(0) => \b_reg[19]_i_5_n_0\,
      O(3) => \b_reg_reg[19]_i_1_n_4\,
      O(2) => \b_reg_reg[19]_i_1_n_5\,
      O(1) => \b_reg_reg[19]_i_1_n_6\,
      O(0) => \b_reg_reg[19]_i_1_n_7\,
      S(3) => \b_reg[19]_i_6_n_0\,
      S(2) => \b_reg[19]_i_7_n_0\,
      S(1) => \b_reg[19]_i_8_n_0\,
      S(0) => \b_reg[19]_i_9_n_0\
    );
\b_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[3]_i_1_n_6\,
      Q => b(1)
    );
\b_reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[23]_i_1_n_7\,
      Q => b(20)
    );
\b_reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[23]_i_1_n_6\,
      Q => b(21)
    );
\b_reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[23]_i_1_n_5\,
      Q => b(22)
    );
\b_reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[23]_i_1_n_4\,
      Q => b(23)
    );
\b_reg_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \b_reg_reg[19]_i_1_n_0\,
      CO(3) => \b_reg_reg[23]_i_1_n_0\,
      CO(2 downto 0) => \NLW_b_reg_reg[23]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \b_reg[23]_i_2_n_0\,
      DI(2) => \b_reg[23]_i_3_n_0\,
      DI(1) => \b_reg[23]_i_4_n_0\,
      DI(0) => \b_reg[23]_i_5_n_0\,
      O(3) => \b_reg_reg[23]_i_1_n_4\,
      O(2) => \b_reg_reg[23]_i_1_n_5\,
      O(1) => \b_reg_reg[23]_i_1_n_6\,
      O(0) => \b_reg_reg[23]_i_1_n_7\,
      S(3) => \b_reg[23]_i_6_n_0\,
      S(2) => \b_reg[23]_i_7_n_0\,
      S(1) => \b_reg[23]_i_8_n_0\,
      S(0) => \b_reg[23]_i_9_n_0\
    );
\b_reg_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[27]_i_1_n_7\,
      Q => b(24)
    );
\b_reg_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[27]_i_1_n_6\,
      Q => b(25)
    );
\b_reg_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[27]_i_1_n_5\,
      Q => b(26)
    );
\b_reg_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[27]_i_1_n_4\,
      Q => b(27)
    );
\b_reg_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \b_reg_reg[23]_i_1_n_0\,
      CO(3) => \b_reg_reg[27]_i_1_n_0\,
      CO(2 downto 0) => \NLW_b_reg_reg[27]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \b_reg[27]_i_2_n_0\,
      DI(2) => \b_reg[27]_i_3_n_0\,
      DI(1) => \b_reg[27]_i_4_n_0\,
      DI(0) => \b_reg[27]_i_5_n_0\,
      O(3) => \b_reg_reg[27]_i_1_n_4\,
      O(2) => \b_reg_reg[27]_i_1_n_5\,
      O(1) => \b_reg_reg[27]_i_1_n_6\,
      O(0) => \b_reg_reg[27]_i_1_n_7\,
      S(3) => \b_reg[27]_i_6_n_0\,
      S(2) => \b_reg[27]_i_7_n_0\,
      S(1) => \b_reg[27]_i_8_n_0\,
      S(0) => \b_reg[27]_i_9_n_0\
    );
\b_reg_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[31]_i_2_n_7\,
      Q => b(28)
    );
\b_reg_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[31]_i_2_n_6\,
      Q => b(29)
    );
\b_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[3]_i_1_n_5\,
      Q => b(2)
    );
\b_reg_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[31]_i_2_n_5\,
      Q => b(30)
    );
\b_reg_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[31]_i_2_n_4\,
      Q => b(31)
    );
\b_reg_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \b_reg_reg[27]_i_1_n_0\,
      CO(3 downto 0) => \NLW_b_reg_reg[31]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \b_reg[31]_i_3_n_0\,
      DI(1) => \b_reg[31]_i_4_n_0\,
      DI(0) => \b_reg[31]_i_5_n_0\,
      O(3) => \b_reg_reg[31]_i_2_n_4\,
      O(2) => \b_reg_reg[31]_i_2_n_5\,
      O(1) => \b_reg_reg[31]_i_2_n_6\,
      O(0) => \b_reg_reg[31]_i_2_n_7\,
      S(3) => \b_reg[31]_i_6_n_0\,
      S(2) => \b_reg[31]_i_7_n_0\,
      S(1) => \b_reg[31]_i_8_n_0\,
      S(0) => \b_reg[31]_i_9_n_0\
    );
\b_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[3]_i_1_n_4\,
      Q => b(3)
    );
\b_reg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \b_reg_reg[3]_i_1_n_0\,
      CO(2 downto 0) => \NLW_b_reg_reg[3]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \g0_b3__0_n_0\,
      DI(2) => \b_reg[3]_i_2_n_0\,
      DI(1) => \b_reg[3]_i_3_n_0\,
      DI(0) => \b_reg[3]_i_4_n_0\,
      O(3) => \b_reg_reg[3]_i_1_n_4\,
      O(2) => \b_reg_reg[3]_i_1_n_5\,
      O(1) => \b_reg_reg[3]_i_1_n_6\,
      O(0) => \b_reg_reg[3]_i_1_n_7\,
      S(3) => \g0_b3__2_n_0\,
      S(2) => \b_reg[3]_i_5_n_0\,
      S(1) => \b_reg[3]_i_6_n_0\,
      S(0) => \b_reg[3]_i_7_n_0\
    );
\b_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[7]_i_1_n_7\,
      Q => b(4)
    );
\b_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[7]_i_1_n_6\,
      Q => b(5)
    );
\b_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[7]_i_1_n_5\,
      Q => b(6)
    );
\b_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[7]_i_1_n_4\,
      Q => b(7)
    );
\b_reg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \b_reg_reg[3]_i_1_n_0\,
      CO(3) => \b_reg_reg[7]_i_1_n_0\,
      CO(2 downto 0) => \NLW_b_reg_reg[7]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \b_reg[7]_i_2_n_0\,
      DI(2) => \g0_b6__0_n_0\,
      DI(1) => \b_reg[7]_i_3_n_0\,
      DI(0) => \b_reg[7]_i_4_n_0\,
      O(3) => \b_reg_reg[7]_i_1_n_4\,
      O(2) => \b_reg_reg[7]_i_1_n_5\,
      O(1) => \b_reg_reg[7]_i_1_n_6\,
      O(0) => \b_reg_reg[7]_i_1_n_7\,
      S(3) => \b_reg[7]_i_5_n_0\,
      S(2) => \g0_b6__2_n_0\,
      S(1) => \b_reg[7]_i_6_n_0\,
      S(0) => \b_reg[7]_i_7_n_0\
    );
\b_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[11]_i_1_n_7\,
      Q => b(8)
    );
\b_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => b_reg,
      CLR => \dout[63]_i_3_n_0\,
      D => \b_reg_reg[11]_i_1_n_6\,
      Q => b(9)
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
      INIT => X"FFFF0008"
    )
        port map (
      I0 => i_cnt_reg(3),
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(0),
      I3 => i_cnt_reg(1),
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
      CLR => \dout[63]_i_3_n_0\,
      D => \dout[63]_i_1_n_0\,
      Q => do_rdy_OBUF
    );
\dout[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(11),
      I1 => g0_b11_n_0,
      O => \dout[11]_i_2_n_0\
    );
\dout[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(10),
      I1 => g0_b10_n_0,
      O => \dout[11]_i_3_n_0\
    );
\dout[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(9),
      I1 => g0_b9_n_0,
      O => \dout[11]_i_4_n_0\
    );
\dout[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(8),
      I1 => g0_b8_n_0,
      O => \dout[11]_i_5_n_0\
    );
\dout[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_3_n_0\,
      I1 => \g0_b3__1_i_4_n_0\,
      I2 => plusOp1_out(4),
      I3 => \g0_b3__1_i_5_n_0\,
      I4 => plusOp1_out(3),
      I5 => \g0_b3__1_i_2_n_0\,
      O => b_rot(11)
    );
\dout[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[27]_i_12_n_0\,
      I1 => \dout[27]_i_13_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[27]_i_10_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[27]_i_11_n_0\,
      O => b_rot(10)
    );
\dout[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[27]_i_16_n_0\,
      I1 => \dout[27]_i_17_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[27]_i_14_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[27]_i_15_n_0\,
      O => b_rot(9)
    );
\dout[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[27]_i_20_n_0\,
      I1 => \dout[27]_i_21_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[27]_i_18_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[27]_i_19_n_0\,
      O => b_rot(8)
    );
\dout[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(15),
      I1 => g0_b15_n_0,
      O => \dout[15]_i_2_n_0\
    );
\dout[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(14),
      I1 => g0_b14_n_0,
      O => \dout[15]_i_3_n_0\
    );
\dout[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(13),
      I1 => g0_b13_n_0,
      O => \dout[15]_i_4_n_0\
    );
\dout[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(12),
      I1 => g0_b12_n_0,
      O => \dout[15]_i_5_n_0\
    );
\dout[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_12_n_0\,
      I1 => \dout[31]_i_13_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[31]_i_10_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[31]_i_11_n_0\,
      O => b_rot(15)
    );
\dout[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_3_n_0\,
      I1 => \g0_b6__1_i_4_n_0\,
      I2 => plusOp1_out(4),
      I3 => \g0_b6__1_i_5_n_0\,
      I4 => plusOp1_out(3),
      I5 => \g0_b6__1_i_2_n_0\,
      O => b_rot(14)
    );
\dout[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_16_n_0\,
      I1 => \dout[31]_i_17_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[31]_i_14_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[31]_i_15_n_0\,
      O => b_rot(13)
    );
\dout[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_20_n_0\,
      I1 => \dout[31]_i_21_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[31]_i_18_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[31]_i_19_n_0\,
      O => b_rot(12)
    );
\dout[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(19),
      I1 => g0_b19_n_0,
      O => \dout[19]_i_2_n_0\
    );
\dout[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(18),
      I1 => g0_b18_n_0,
      O => \dout[19]_i_3_n_0\
    );
\dout[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(17),
      I1 => g0_b17_n_0,
      O => \dout[19]_i_4_n_0\
    );
\dout[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(16),
      I1 => g0_b16_n_0,
      O => \dout[19]_i_5_n_0\
    );
\dout[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_4_n_0\,
      I1 => \g0_b3__1_i_5_n_0\,
      I2 => plusOp1_out(4),
      I3 => \g0_b3__1_i_2_n_0\,
      I4 => plusOp1_out(3),
      I5 => \g0_b3__1_i_3_n_0\,
      O => b_rot(19)
    );
\dout[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[27]_i_13_n_0\,
      I1 => \dout[27]_i_10_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[27]_i_11_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[27]_i_12_n_0\,
      O => b_rot(18)
    );
\dout[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[27]_i_17_n_0\,
      I1 => \dout[27]_i_14_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[27]_i_15_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[27]_i_16_n_0\,
      O => b_rot(17)
    );
\dout[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[27]_i_21_n_0\,
      I1 => \dout[27]_i_18_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[27]_i_19_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[27]_i_20_n_0\,
      O => b_rot(16)
    );
\dout[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(23),
      I1 => g0_b23_n_0,
      O => \dout[23]_i_2_n_0\
    );
\dout[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(22),
      I1 => g0_b22_n_0,
      O => \dout[23]_i_3_n_0\
    );
\dout[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(21),
      I1 => g0_b21_n_0,
      O => \dout[23]_i_4_n_0\
    );
\dout[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(20),
      I1 => g0_b20_n_0,
      O => \dout[23]_i_5_n_0\
    );
\dout[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_13_n_0\,
      I1 => \dout[31]_i_10_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[31]_i_11_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[31]_i_12_n_0\,
      O => b_rot(23)
    );
\dout[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_4_n_0\,
      I1 => \g0_b6__1_i_5_n_0\,
      I2 => plusOp1_out(4),
      I3 => \g0_b6__1_i_2_n_0\,
      I4 => plusOp1_out(3),
      I5 => \g0_b6__1_i_3_n_0\,
      O => b_rot(22)
    );
\dout[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_17_n_0\,
      I1 => \dout[31]_i_14_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[31]_i_15_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[31]_i_16_n_0\,
      O => b_rot(21)
    );
\dout[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_21_n_0\,
      I1 => \dout[31]_i_18_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[31]_i_19_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[31]_i_20_n_0\,
      O => b_rot(20)
    );
\dout[27]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_16_n_0\,
      I1 => \g0_b6__1_i_17_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_18_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_19_n_0\,
      O => \dout[27]_i_10_n_0\
    );
\dout[27]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_20_n_0\,
      I1 => \g0_b6__1_i_21_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_6_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_7_n_0\,
      O => \dout[27]_i_11_n_0\
    );
\dout[27]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_8_n_0\,
      I1 => \g0_b6__1_i_9_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_10_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_11_n_0\,
      O => \dout[27]_i_12_n_0\
    );
\dout[27]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_12_n_0\,
      I1 => \g0_b6__1_i_13_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_14_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_15_n_0\,
      O => \dout[27]_i_13_n_0\
    );
\dout[27]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_17_n_0\,
      I1 => \g0_b3__1_i_18_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_19_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_20_n_0\,
      O => \dout[27]_i_14_n_0\
    );
\dout[27]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_21_n_0\,
      I1 => \g0_b3__1_i_6_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_7_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_8_n_0\,
      O => \dout[27]_i_15_n_0\
    );
\dout[27]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_9_n_0\,
      I1 => \g0_b3__1_i_10_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_11_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_12_n_0\,
      O => \dout[27]_i_16_n_0\
    );
\dout[27]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_13_n_0\,
      I1 => \g0_b3__1_i_14_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_15_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_16_n_0\,
      O => \dout[27]_i_17_n_0\
    );
\dout[27]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_15_n_0\,
      I1 => \g0_b6__1_i_16_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_17_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_18_n_0\,
      O => \dout[27]_i_18_n_0\
    );
\dout[27]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_19_n_0\,
      I1 => \g0_b6__1_i_20_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_21_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_6_n_0\,
      O => \dout[27]_i_19_n_0\
    );
\dout[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(27),
      I1 => g0_b27_n_0,
      O => \dout[27]_i_2_n_0\
    );
\dout[27]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_7_n_0\,
      I1 => \g0_b6__1_i_8_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_9_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_10_n_0\,
      O => \dout[27]_i_20_n_0\
    );
\dout[27]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_11_n_0\,
      I1 => \g0_b6__1_i_12_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_13_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_14_n_0\,
      O => \dout[27]_i_21_n_0\
    );
\dout[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(26),
      I1 => g0_b26_n_0,
      O => \dout[27]_i_3_n_0\
    );
\dout[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(25),
      I1 => g0_b25_n_0,
      O => \dout[27]_i_4_n_0\
    );
\dout[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(24),
      I1 => g0_b24_n_0,
      O => \dout[27]_i_5_n_0\
    );
\dout[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_5_n_0\,
      I1 => \g0_b3__1_i_2_n_0\,
      I2 => plusOp1_out(4),
      I3 => \g0_b3__1_i_3_n_0\,
      I4 => plusOp1_out(3),
      I5 => \g0_b3__1_i_4_n_0\,
      O => b_rot(27)
    );
\dout[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[27]_i_10_n_0\,
      I1 => \dout[27]_i_11_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[27]_i_12_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[27]_i_13_n_0\,
      O => b_rot(26)
    );
\dout[27]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[27]_i_14_n_0\,
      I1 => \dout[27]_i_15_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[27]_i_16_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[27]_i_17_n_0\,
      O => b_rot(25)
    );
\dout[27]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[27]_i_18_n_0\,
      I1 => \dout[27]_i_19_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[27]_i_20_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[27]_i_21_n_0\,
      O => b_rot(24)
    );
\dout[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_20_n_0\,
      I1 => \g0_b3__1_i_21_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_6_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_7_n_0\,
      O => \dout[31]_i_10_n_0\
    );
\dout[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_8_n_0\,
      I1 => \g0_b3__1_i_9_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_10_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_11_n_0\,
      O => \dout[31]_i_11_n_0\
    );
\dout[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_12_n_0\,
      I1 => \g0_b3__1_i_13_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_14_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_15_n_0\,
      O => \dout[31]_i_12_n_0\
    );
\dout[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_16_n_0\,
      I1 => \g0_b3__1_i_17_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_18_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_19_n_0\,
      O => \dout[31]_i_13_n_0\
    );
\dout[31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_19_n_0\,
      I1 => \g0_b3__1_i_20_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_21_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_6_n_0\,
      O => \dout[31]_i_14_n_0\
    );
\dout[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_7_n_0\,
      I1 => \g0_b3__1_i_8_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_9_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_10_n_0\,
      O => \dout[31]_i_15_n_0\
    );
\dout[31]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_11_n_0\,
      I1 => \g0_b3__1_i_12_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_13_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_14_n_0\,
      O => \dout[31]_i_16_n_0\
    );
\dout[31]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_15_n_0\,
      I1 => \g0_b3__1_i_16_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_17_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_18_n_0\,
      O => \dout[31]_i_17_n_0\
    );
\dout[31]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_17_n_0\,
      I1 => \g0_b6__1_i_18_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_19_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_20_n_0\,
      O => \dout[31]_i_18_n_0\
    );
\dout[31]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_21_n_0\,
      I1 => \g0_b6__1_i_6_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_7_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_8_n_0\,
      O => \dout[31]_i_19_n_0\
    );
\dout[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(31),
      I1 => g0_b31_n_0,
      O => \dout[31]_i_2_n_0\
    );
\dout[31]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_9_n_0\,
      I1 => \g0_b6__1_i_10_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_11_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_12_n_0\,
      O => \dout[31]_i_20_n_0\
    );
\dout[31]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_13_n_0\,
      I1 => \g0_b6__1_i_14_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_15_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_16_n_0\,
      O => \dout[31]_i_21_n_0\
    );
\dout[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(30),
      I1 => g0_b30_n_0,
      O => \dout[31]_i_3_n_0\
    );
\dout[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(29),
      I1 => g0_b29_n_0,
      O => \dout[31]_i_4_n_0\
    );
\dout[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(28),
      I1 => g0_b28_n_0,
      O => \dout[31]_i_5_n_0\
    );
\dout[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_10_n_0\,
      I1 => \dout[31]_i_11_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[31]_i_12_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[31]_i_13_n_0\,
      O => b_rot(31)
    );
\dout[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_5_n_0\,
      I1 => \g0_b6__1_i_2_n_0\,
      I2 => plusOp1_out(4),
      I3 => \g0_b6__1_i_3_n_0\,
      I4 => plusOp1_out(3),
      I5 => \g0_b6__1_i_4_n_0\,
      O => b_rot(30)
    );
\dout[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_14_n_0\,
      I1 => \dout[31]_i_15_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[31]_i_16_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[31]_i_17_n_0\,
      O => b_rot(29)
    );
\dout[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_18_n_0\,
      I1 => \dout[31]_i_19_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[31]_i_20_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[31]_i_21_n_0\,
      O => b_rot(28)
    );
\dout[35]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[51]_i_7_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_6_n_0\,
      I3 => g0_b3_n_0,
      O => \dout[35]_i_2_n_0\
    );
\dout[35]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[51]_i_9_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_8_n_0\,
      I3 => \g0_b2__0_n_0\,
      O => \dout[35]_i_3_n_0\
    );
\dout[35]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[51]_i_11_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_10_n_0\,
      I3 => \g0_b1__0_n_0\,
      O => \dout[35]_i_4_n_0\
    );
\dout[35]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[51]_i_13_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_12_n_0\,
      I3 => \g0_b0__0_n_0\,
      O => \dout[35]_i_5_n_0\
    );
\dout[39]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[55]_i_7_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_6_n_0\,
      I3 => \g0_b7__0_n_0\,
      O => \dout[39]_i_2_n_0\
    );
\dout[39]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[55]_i_9_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_8_n_0\,
      I3 => g0_b6_n_0,
      O => \dout[39]_i_3_n_0\
    );
\dout[39]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[55]_i_11_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_10_n_0\,
      I3 => \g0_b5__0_n_0\,
      O => \dout[39]_i_4_n_0\
    );
\dout[39]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[55]_i_13_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_12_n_0\,
      I3 => \g0_b4__0_n_0\,
      O => \dout[39]_i_5_n_0\
    );
\dout[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(2),
      I1 => g0_b2_n_0,
      O => \dout[3]_i_2_n_0\
    );
\dout[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(1),
      I1 => g0_b1_n_0,
      O => \dout[3]_i_3_n_0\
    );
\dout[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(0),
      I1 => g0_b0_n_0,
      O => \dout[3]_i_4_n_0\
    );
\dout[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[27]_i_11_n_0\,
      I1 => \dout[27]_i_12_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[27]_i_13_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[27]_i_10_n_0\,
      O => b_rot(2)
    );
\dout[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[27]_i_15_n_0\,
      I1 => \dout[27]_i_16_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[27]_i_17_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[27]_i_14_n_0\,
      O => b_rot(1)
    );
\dout[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[27]_i_19_n_0\,
      I1 => \dout[27]_i_20_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[27]_i_21_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[27]_i_18_n_0\,
      O => b_rot(0)
    );
\dout[43]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[59]_i_7_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_6_n_0\,
      I3 => \g0_b11__0_n_0\,
      O => \dout[43]_i_2_n_0\
    );
\dout[43]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[59]_i_9_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_8_n_0\,
      I3 => \g0_b10__0_n_0\,
      O => \dout[43]_i_3_n_0\
    );
\dout[43]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[59]_i_11_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_10_n_0\,
      I3 => \g0_b9__0_n_0\,
      O => \dout[43]_i_4_n_0\
    );
\dout[43]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[59]_i_13_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_12_n_0\,
      I3 => \g0_b8__0_n_0\,
      O => \dout[43]_i_5_n_0\
    );
\dout[47]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[63]_i_9_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_8_n_0\,
      I3 => \g0_b15__0_n_0\,
      O => \dout[47]_i_2_n_0\
    );
\dout[47]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[63]_i_11_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_10_n_0\,
      I3 => \g0_b14__0_n_0\,
      O => \dout[47]_i_3_n_0\
    );
\dout[47]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[63]_i_13_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_12_n_0\,
      I3 => \g0_b13__0_n_0\,
      O => \dout[47]_i_4_n_0\
    );
\dout[47]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[63]_i_15_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_14_n_0\,
      I3 => \g0_b12__0_n_0\,
      O => \dout[47]_i_5_n_0\
    );
\dout[51]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \dout[59]_i_22_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_26_n_0\,
      I3 => \dout[59]_i_25_n_0\,
      I4 => b(3),
      O => \dout[51]_i_10_n_0\
    );
\dout[51]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[59]_i_23_n_0\,
      I1 => b(3),
      I2 => \dout[59]_i_24_n_0\,
      O => \dout[51]_i_11_n_0\
    );
\dout[51]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \dout[59]_i_26_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_31_n_0\,
      I3 => \dout[59]_i_29_n_0\,
      I4 => b(3),
      O => \dout[51]_i_12_n_0\
    );
\dout[51]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \dout[63]_i_32_n_0\,
      I1 => b(2),
      I2 => \dout[59]_i_27_n_0\,
      I3 => b(3),
      I4 => \dout[59]_i_28_n_0\,
      O => \dout[51]_i_13_n_0\
    );
\dout[51]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[51]_i_6_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_7_n_0\,
      I3 => \g0_b19__0_n_0\,
      O => \dout[51]_i_2_n_0\
    );
\dout[51]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[51]_i_8_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_9_n_0\,
      I3 => \g0_b18__0_n_0\,
      O => \dout[51]_i_3_n_0\
    );
\dout[51]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[51]_i_10_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_11_n_0\,
      I3 => \g0_b17__0_n_0\,
      O => \dout[51]_i_4_n_0\
    );
\dout[51]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[51]_i_12_n_0\,
      I1 => b(4),
      I2 => \dout[51]_i_13_n_0\,
      I3 => \g0_b16__0_n_0\,
      O => \dout[51]_i_5_n_0\
    );
\dout[51]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \dout[59]_i_14_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_16_n_0\,
      I3 => \dout[59]_i_17_n_0\,
      I4 => b(3),
      O => \dout[51]_i_6_n_0\
    );
\dout[51]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[59]_i_15_n_0\,
      I1 => b(3),
      I2 => \dout[59]_i_16_n_0\,
      O => \dout[51]_i_7_n_0\
    );
\dout[51]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \dout[59]_i_18_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_21_n_0\,
      I3 => \dout[59]_i_21_n_0\,
      I4 => b(3),
      O => \dout[51]_i_8_n_0\
    );
\dout[51]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[59]_i_19_n_0\,
      I1 => b(3),
      I2 => \dout[59]_i_20_n_0\,
      O => \dout[51]_i_9_n_0\
    );
\dout[55]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \dout[63]_i_26_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_27_n_0\,
      I3 => \dout[63]_i_30_n_0\,
      I4 => b(3),
      O => \dout[55]_i_10_n_0\
    );
\dout[55]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_28_n_0\,
      I1 => b(3),
      I2 => \dout[63]_i_29_n_0\,
      O => \dout[55]_i_11_n_0\
    );
\dout[55]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \dout[63]_i_31_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_32_n_0\,
      I3 => \dout[63]_i_35_n_0\,
      I4 => b(3),
      O => \dout[55]_i_12_n_0\
    );
\dout[55]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_33_n_0\,
      I1 => b(3),
      I2 => \dout[63]_i_34_n_0\,
      O => \dout[55]_i_13_n_0\
    );
\dout[55]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[55]_i_6_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_7_n_0\,
      I3 => \g0_b23__0_n_0\,
      O => \dout[55]_i_2_n_0\
    );
\dout[55]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[55]_i_8_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_9_n_0\,
      I3 => \g0_b22__0_n_0\,
      O => \dout[55]_i_3_n_0\
    );
\dout[55]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[55]_i_10_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_11_n_0\,
      I3 => \g0_b21__0_n_0\,
      O => \dout[55]_i_4_n_0\
    );
\dout[55]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[55]_i_12_n_0\,
      I1 => b(4),
      I2 => \dout[55]_i_13_n_0\,
      I3 => \g0_b20__0_n_0\,
      O => \dout[55]_i_5_n_0\
    );
\dout[55]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \dout[63]_i_16_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_17_n_0\,
      I3 => \dout[63]_i_20_n_0\,
      I4 => b(3),
      O => \dout[55]_i_6_n_0\
    );
\dout[55]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_18_n_0\,
      I1 => b(3),
      I2 => \dout[63]_i_19_n_0\,
      O => \dout[55]_i_7_n_0\
    );
\dout[55]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \dout[63]_i_21_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_22_n_0\,
      I3 => \dout[63]_i_25_n_0\,
      I4 => b(3),
      O => \dout[55]_i_8_n_0\
    );
\dout[55]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_23_n_0\,
      I1 => b(3),
      I2 => \dout[63]_i_24_n_0\,
      O => \dout[55]_i_9_n_0\
    );
\dout[59]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \dout[59]_i_22_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_26_n_0\,
      I3 => b(3),
      I4 => \dout[59]_i_23_n_0\,
      O => \dout[59]_i_10_n_0\
    );
\dout[59]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[59]_i_24_n_0\,
      I1 => b(3),
      I2 => \dout[59]_i_25_n_0\,
      O => \dout[59]_i_11_n_0\
    );
\dout[59]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \dout[59]_i_26_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_31_n_0\,
      I3 => \dout[63]_i_32_n_0\,
      I4 => \dout[59]_i_27_n_0\,
      I5 => b(3),
      O => \dout[59]_i_12_n_0\
    );
\dout[59]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[59]_i_28_n_0\,
      I1 => b(3),
      I2 => \dout[59]_i_29_n_0\,
      O => \dout[59]_i_13_n_0\
    );
\dout[59]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_49_n_0\,
      I1 => b(1),
      I2 => \dout[63]_i_50_n_0\,
      O => \dout[59]_i_14_n_0\
    );
\dout[59]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_37_n_0\,
      I1 => \dout[63]_i_38_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_39_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_40_n_0\,
      O => \dout[59]_i_15_n_0\
    );
\dout[59]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_41_n_0\,
      I1 => \dout[63]_i_42_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_43_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_44_n_0\,
      O => \dout[59]_i_16_n_0\
    );
\dout[59]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_45_n_0\,
      I1 => \dout[63]_i_46_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_47_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_48_n_0\,
      O => \dout[59]_i_17_n_0\
    );
\dout[59]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_64_n_0\,
      I1 => b(1),
      I2 => \dout[63]_i_65_n_0\,
      O => \dout[59]_i_18_n_0\
    );
\dout[59]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_52_n_0\,
      I1 => \dout[63]_i_53_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_54_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_55_n_0\,
      O => \dout[59]_i_19_n_0\
    );
\dout[59]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[59]_i_6_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_7_n_0\,
      I3 => \g0_b27__0_n_0\,
      O => \dout[59]_i_2_n_0\
    );
\dout[59]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_56_n_0\,
      I1 => \dout[63]_i_57_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_58_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_59_n_0\,
      O => \dout[59]_i_20_n_0\
    );
\dout[59]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_60_n_0\,
      I1 => \dout[63]_i_61_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_62_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_63_n_0\,
      O => \dout[59]_i_21_n_0\
    );
\dout[59]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_48_n_0\,
      I1 => b(1),
      I2 => \dout[63]_i_49_n_0\,
      O => \dout[59]_i_22_n_0\
    );
\dout[59]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_36_n_0\,
      I1 => \dout[63]_i_37_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_38_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_39_n_0\,
      O => \dout[59]_i_23_n_0\
    );
\dout[59]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_40_n_0\,
      I1 => \dout[63]_i_41_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_42_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_43_n_0\,
      O => \dout[59]_i_24_n_0\
    );
\dout[59]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_44_n_0\,
      I1 => \dout[63]_i_45_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_46_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_47_n_0\,
      O => \dout[59]_i_25_n_0\
    );
\dout[59]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_63_n_0\,
      I1 => b(1),
      I2 => \dout[63]_i_64_n_0\,
      O => \dout[59]_i_26_n_0\
    );
\dout[59]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_53_n_0\,
      I1 => b(1),
      I2 => \dout[63]_i_54_n_0\,
      O => \dout[59]_i_27_n_0\
    );
\dout[59]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_55_n_0\,
      I1 => \dout[63]_i_56_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_57_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_58_n_0\,
      O => \dout[59]_i_28_n_0\
    );
\dout[59]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_59_n_0\,
      I1 => \dout[63]_i_60_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_61_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_62_n_0\,
      O => \dout[59]_i_29_n_0\
    );
\dout[59]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[59]_i_8_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_9_n_0\,
      I3 => \g0_b26__0_n_0\,
      O => \dout[59]_i_3_n_0\
    );
\dout[59]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[59]_i_10_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_11_n_0\,
      I3 => \g0_b25__0_n_0\,
      O => \dout[59]_i_4_n_0\
    );
\dout[59]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[59]_i_12_n_0\,
      I1 => b(4),
      I2 => \dout[59]_i_13_n_0\,
      I3 => \g0_b24__0_n_0\,
      O => \dout[59]_i_5_n_0\
    );
\dout[59]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \dout[59]_i_14_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_16_n_0\,
      I3 => b(3),
      I4 => \dout[59]_i_15_n_0\,
      O => \dout[59]_i_6_n_0\
    );
\dout[59]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[59]_i_16_n_0\,
      I1 => b(3),
      I2 => \dout[59]_i_17_n_0\,
      O => \dout[59]_i_7_n_0\
    );
\dout[59]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \dout[59]_i_18_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_21_n_0\,
      I3 => b(3),
      I4 => \dout[59]_i_19_n_0\,
      O => \dout[59]_i_8_n_0\
    );
\dout[59]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[59]_i_20_n_0\,
      I1 => b(3),
      I2 => \dout[59]_i_21_n_0\,
      O => \dout[59]_i_9_n_0\
    );
\dout[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => i_cnt_reg(3),
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(0),
      I3 => i_cnt_reg(1),
      I4 => di_vld_IBUF,
      O => \dout[63]_i_1_n_0\
    );
\dout[63]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \dout[63]_i_21_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_22_n_0\,
      I3 => b(3),
      I4 => \dout[63]_i_23_n_0\,
      O => \dout[63]_i_10_n_0\
    );
\dout[63]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_24_n_0\,
      I1 => b(3),
      I2 => \dout[63]_i_25_n_0\,
      O => \dout[63]_i_11_n_0\
    );
\dout[63]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \dout[63]_i_26_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_27_n_0\,
      I3 => b(3),
      I4 => \dout[63]_i_28_n_0\,
      O => \dout[63]_i_12_n_0\
    );
\dout[63]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_29_n_0\,
      I1 => b(3),
      I2 => \dout[63]_i_30_n_0\,
      O => \dout[63]_i_13_n_0\
    );
\dout[63]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \dout[63]_i_31_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_32_n_0\,
      I3 => b(3),
      I4 => \dout[63]_i_33_n_0\,
      O => \dout[63]_i_14_n_0\
    );
\dout[63]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_34_n_0\,
      I1 => b(3),
      I2 => \dout[63]_i_35_n_0\,
      O => \dout[63]_i_15_n_0\
    );
\dout[63]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47FF4700"
    )
        port map (
      I0 => a_reg(0),
      I1 => b(0),
      I2 => a_reg(1),
      I3 => b(1),
      I4 => \dout[63]_i_36_n_0\,
      O => \dout[63]_i_16_n_0\
    );
\dout[63]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_37_n_0\,
      I1 => b(1),
      I2 => \dout[63]_i_38_n_0\,
      O => \dout[63]_i_17_n_0\
    );
\dout[63]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_39_n_0\,
      I1 => \dout[63]_i_40_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_41_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_42_n_0\,
      O => \dout[63]_i_18_n_0\
    );
\dout[63]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_43_n_0\,
      I1 => \dout[63]_i_44_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_45_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_46_n_0\,
      O => \dout[63]_i_19_n_0\
    );
\dout[63]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_47_n_0\,
      I1 => \dout[63]_i_48_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_49_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_50_n_0\,
      O => \dout[63]_i_20_n_0\
    );
\dout[63]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F60FFFF6F600000"
    )
        port map (
      I0 => b(31),
      I1 => a_reg(31),
      I2 => b(0),
      I3 => a_reg(0),
      I4 => b(1),
      I5 => \dout[63]_i_51_n_0\,
      O => \dout[63]_i_21_n_0\
    );
\dout[63]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_52_n_0\,
      I1 => b(1),
      I2 => \dout[63]_i_53_n_0\,
      O => \dout[63]_i_22_n_0\
    );
\dout[63]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_54_n_0\,
      I1 => \dout[63]_i_55_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_56_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_57_n_0\,
      O => \dout[63]_i_23_n_0\
    );
\dout[63]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_58_n_0\,
      I1 => \dout[63]_i_59_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_60_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_61_n_0\,
      O => \dout[63]_i_24_n_0\
    );
\dout[63]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_62_n_0\,
      I1 => \dout[63]_i_63_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_64_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_65_n_0\,
      O => \dout[63]_i_25_n_0\
    );
\dout[63]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => \dout[63]_i_50_n_0\,
      I1 => b(1),
      I2 => a_reg(0),
      I3 => b(0),
      I4 => a_reg(1),
      O => \dout[63]_i_26_n_0\
    );
\dout[63]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_36_n_0\,
      I1 => b(1),
      I2 => \dout[63]_i_37_n_0\,
      O => \dout[63]_i_27_n_0\
    );
\dout[63]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_38_n_0\,
      I1 => \dout[63]_i_39_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_40_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_41_n_0\,
      O => \dout[63]_i_28_n_0\
    );
\dout[63]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_42_n_0\,
      I1 => \dout[63]_i_43_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_44_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_45_n_0\,
      O => \dout[63]_i_29_n_0\
    );
\dout[63]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clr_IBUF,
      O => \dout[63]_i_3_n_0\
    );
\dout[63]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_46_n_0\,
      I1 => \dout[63]_i_47_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_48_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_49_n_0\,
      O => \dout[63]_i_30_n_0\
    );
\dout[63]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8BBBB8BB88888"
    )
        port map (
      I0 => \dout[63]_i_65_n_0\,
      I1 => b(1),
      I2 => b(31),
      I3 => a_reg(31),
      I4 => b(0),
      I5 => a_reg(0),
      O => \dout[63]_i_31_n_0\
    );
\dout[63]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4774FFFF47740000"
    )
        port map (
      I0 => a_reg(1),
      I1 => b(0),
      I2 => b(2),
      I3 => a_reg(2),
      I4 => b(1),
      I5 => \dout[63]_i_52_n_0\,
      O => \dout[63]_i_32_n_0\
    );
\dout[63]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_53_n_0\,
      I1 => \dout[63]_i_54_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_55_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_56_n_0\,
      O => \dout[63]_i_33_n_0\
    );
\dout[63]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_57_n_0\,
      I1 => \dout[63]_i_58_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_59_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_60_n_0\,
      O => \dout[63]_i_34_n_0\
    );
\dout[63]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[63]_i_61_n_0\,
      I1 => \dout[63]_i_62_n_0\,
      I2 => b(2),
      I3 => \dout[63]_i_63_n_0\,
      I4 => b(1),
      I5 => \dout[63]_i_64_n_0\,
      O => \dout[63]_i_35_n_0\
    );
\dout[63]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(2),
      I1 => a_reg(2),
      I2 => b(0),
      I3 => b(3),
      I4 => a_reg(3),
      O => \dout[63]_i_36_n_0\
    );
\dout[63]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(4),
      I1 => a_reg(4),
      I2 => b(0),
      I3 => b(5),
      I4 => a_reg(5),
      O => \dout[63]_i_37_n_0\
    );
\dout[63]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(6),
      I1 => a_reg(6),
      I2 => b(0),
      I3 => b(7),
      I4 => a_reg(7),
      O => \dout[63]_i_38_n_0\
    );
\dout[63]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(8),
      I1 => a_reg(8),
      I2 => b(0),
      I3 => b(9),
      I4 => a_reg(9),
      O => \dout[63]_i_39_n_0\
    );
\dout[63]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[63]_i_8_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_9_n_0\,
      I3 => \g0_b31__0_n_0\,
      O => \dout[63]_i_4_n_0\
    );
\dout[63]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(10),
      I1 => a_reg(10),
      I2 => b(0),
      I3 => b(11),
      I4 => a_reg(11),
      O => \dout[63]_i_40_n_0\
    );
\dout[63]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(12),
      I1 => a_reg(12),
      I2 => b(0),
      I3 => b(13),
      I4 => a_reg(13),
      O => \dout[63]_i_41_n_0\
    );
\dout[63]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(14),
      I1 => a_reg(14),
      I2 => b(0),
      I3 => b(15),
      I4 => a_reg(15),
      O => \dout[63]_i_42_n_0\
    );
\dout[63]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(16),
      I1 => a_reg(16),
      I2 => b(0),
      I3 => b(17),
      I4 => a_reg(17),
      O => \dout[63]_i_43_n_0\
    );
\dout[63]_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(18),
      I1 => a_reg(18),
      I2 => b(0),
      I3 => b(19),
      I4 => a_reg(19),
      O => \dout[63]_i_44_n_0\
    );
\dout[63]_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(20),
      I1 => a_reg(20),
      I2 => b(0),
      I3 => b(21),
      I4 => a_reg(21),
      O => \dout[63]_i_45_n_0\
    );
\dout[63]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(22),
      I1 => a_reg(22),
      I2 => b(0),
      I3 => b(23),
      I4 => a_reg(23),
      O => \dout[63]_i_46_n_0\
    );
\dout[63]_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(24),
      I1 => a_reg(24),
      I2 => b(0),
      I3 => b(25),
      I4 => a_reg(25),
      O => \dout[63]_i_47_n_0\
    );
\dout[63]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(26),
      I1 => a_reg(26),
      I2 => b(0),
      I3 => b(27),
      I4 => a_reg(27),
      O => \dout[63]_i_48_n_0\
    );
\dout[63]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(28),
      I1 => a_reg(28),
      I2 => b(0),
      I3 => b(29),
      I4 => a_reg(29),
      O => \dout[63]_i_49_n_0\
    );
\dout[63]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[63]_i_10_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_11_n_0\,
      I3 => \g0_b30__0_n_0\,
      O => \dout[63]_i_5_n_0\
    );
\dout[63]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(30),
      I1 => a_reg(30),
      I2 => b(0),
      I3 => b(31),
      I4 => a_reg(31),
      O => \dout[63]_i_50_n_0\
    );
\dout[63]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(1),
      I1 => a_reg(1),
      I2 => b(0),
      I3 => b(2),
      I4 => a_reg(2),
      O => \dout[63]_i_51_n_0\
    );
\dout[63]_i_52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(3),
      I1 => a_reg(3),
      I2 => b(0),
      I3 => b(4),
      I4 => a_reg(4),
      O => \dout[63]_i_52_n_0\
    );
\dout[63]_i_53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(5),
      I1 => a_reg(5),
      I2 => b(0),
      I3 => b(6),
      I4 => a_reg(6),
      O => \dout[63]_i_53_n_0\
    );
\dout[63]_i_54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(7),
      I1 => a_reg(7),
      I2 => b(0),
      I3 => b(8),
      I4 => a_reg(8),
      O => \dout[63]_i_54_n_0\
    );
\dout[63]_i_55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(9),
      I1 => a_reg(9),
      I2 => b(0),
      I3 => b(10),
      I4 => a_reg(10),
      O => \dout[63]_i_55_n_0\
    );
\dout[63]_i_56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(11),
      I1 => a_reg(11),
      I2 => b(0),
      I3 => b(12),
      I4 => a_reg(12),
      O => \dout[63]_i_56_n_0\
    );
\dout[63]_i_57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(13),
      I1 => a_reg(13),
      I2 => b(0),
      I3 => b(14),
      I4 => a_reg(14),
      O => \dout[63]_i_57_n_0\
    );
\dout[63]_i_58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(15),
      I1 => a_reg(15),
      I2 => b(0),
      I3 => b(16),
      I4 => a_reg(16),
      O => \dout[63]_i_58_n_0\
    );
\dout[63]_i_59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(17),
      I1 => a_reg(17),
      I2 => b(0),
      I3 => b(18),
      I4 => a_reg(18),
      O => \dout[63]_i_59_n_0\
    );
\dout[63]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[63]_i_12_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_13_n_0\,
      I3 => \g0_b29__0_n_0\,
      O => \dout[63]_i_6_n_0\
    );
\dout[63]_i_60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(19),
      I1 => a_reg(19),
      I2 => b(0),
      I3 => b(20),
      I4 => a_reg(20),
      O => \dout[63]_i_60_n_0\
    );
\dout[63]_i_61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(21),
      I1 => a_reg(21),
      I2 => b(0),
      I3 => b(22),
      I4 => a_reg(22),
      O => \dout[63]_i_61_n_0\
    );
\dout[63]_i_62\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(23),
      I1 => a_reg(23),
      I2 => b(0),
      I3 => b(24),
      I4 => a_reg(24),
      O => \dout[63]_i_62_n_0\
    );
\dout[63]_i_63\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(25),
      I1 => a_reg(25),
      I2 => b(0),
      I3 => b(26),
      I4 => a_reg(26),
      O => \dout[63]_i_63_n_0\
    );
\dout[63]_i_64\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(27),
      I1 => a_reg(27),
      I2 => b(0),
      I3 => b(28),
      I4 => a_reg(28),
      O => \dout[63]_i_64_n_0\
    );
\dout[63]_i_65\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => b(29),
      I1 => a_reg(29),
      I2 => b(0),
      I3 => b(30),
      I4 => a_reg(30),
      O => \dout[63]_i_65_n_0\
    );
\dout[63]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \dout[63]_i_14_n_0\,
      I1 => b(4),
      I2 => \dout[63]_i_15_n_0\,
      I3 => \g0_b28__0_n_0\,
      O => \dout[63]_i_7_n_0\
    );
\dout[63]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \dout[63]_i_16_n_0\,
      I1 => b(2),
      I2 => \dout[63]_i_17_n_0\,
      I3 => b(3),
      I4 => \dout[63]_i_18_n_0\,
      O => \dout[63]_i_8_n_0\
    );
\dout[63]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dout[63]_i_19_n_0\,
      I1 => b(3),
      I2 => \dout[63]_i_20_n_0\,
      O => \dout[63]_i_9_n_0\
    );
\dout[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(7),
      I1 => g0_b7_n_0,
      O => \dout[7]_i_2_n_0\
    );
\dout[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(5),
      I1 => g0_b5_n_0,
      O => \dout[7]_i_3_n_0\
    );
\dout[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b_rot(4),
      I1 => g0_b4_n_0,
      O => \dout[7]_i_4_n_0\
    );
\dout[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_11_n_0\,
      I1 => \dout[31]_i_12_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[31]_i_13_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[31]_i_10_n_0\,
      O => b_rot(7)
    );
\dout[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_15_n_0\,
      I1 => \dout[31]_i_16_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[31]_i_17_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[31]_i_14_n_0\,
      O => b_rot(5)
    );
\dout[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout[31]_i_19_n_0\,
      I1 => \dout[31]_i_20_n_0\,
      I2 => plusOp1_out(4),
      I3 => \dout[31]_i_21_n_0\,
      I4 => plusOp1_out(3),
      I5 => \dout[31]_i_18_n_0\,
      O => b_rot(4)
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
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(0),
      Q => dout_OBUF(0)
    );
\dout_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(10),
      Q => dout_OBUF(10)
    );
\dout_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(11),
      Q => dout_OBUF(11)
    );
\dout_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[7]_i_1_n_0\,
      CO(3) => \dout_reg[11]_i_1_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[11]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b11_n_0,
      DI(2) => g0_b10_n_0,
      DI(1) => g0_b9_n_0,
      DI(0) => g0_b8_n_0,
      O(3 downto 0) => plusOp(11 downto 8),
      S(3) => \dout[11]_i_2_n_0\,
      S(2) => \dout[11]_i_3_n_0\,
      S(1) => \dout[11]_i_4_n_0\,
      S(0) => \dout[11]_i_5_n_0\
    );
\dout_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(12),
      Q => dout_OBUF(12)
    );
\dout_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(13),
      Q => dout_OBUF(13)
    );
\dout_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(14),
      Q => dout_OBUF(14)
    );
\dout_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(15),
      Q => dout_OBUF(15)
    );
\dout_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[11]_i_1_n_0\,
      CO(3) => \dout_reg[15]_i_1_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[15]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b15_n_0,
      DI(2) => g0_b14_n_0,
      DI(1) => g0_b13_n_0,
      DI(0) => g0_b12_n_0,
      O(3 downto 0) => plusOp(15 downto 12),
      S(3) => \dout[15]_i_2_n_0\,
      S(2) => \dout[15]_i_3_n_0\,
      S(1) => \dout[15]_i_4_n_0\,
      S(0) => \dout[15]_i_5_n_0\
    );
\dout_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(16),
      Q => dout_OBUF(16)
    );
\dout_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(17),
      Q => dout_OBUF(17)
    );
\dout_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(18),
      Q => dout_OBUF(18)
    );
\dout_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(19),
      Q => dout_OBUF(19)
    );
\dout_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[15]_i_1_n_0\,
      CO(3) => \dout_reg[19]_i_1_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[19]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b19_n_0,
      DI(2) => g0_b18_n_0,
      DI(1) => g0_b17_n_0,
      DI(0) => g0_b16_n_0,
      O(3 downto 0) => plusOp(19 downto 16),
      S(3) => \dout[19]_i_2_n_0\,
      S(2) => \dout[19]_i_3_n_0\,
      S(1) => \dout[19]_i_4_n_0\,
      S(0) => \dout[19]_i_5_n_0\
    );
\dout_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(1),
      Q => dout_OBUF(1)
    );
\dout_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(20),
      Q => dout_OBUF(20)
    );
\dout_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(21),
      Q => dout_OBUF(21)
    );
\dout_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(22),
      Q => dout_OBUF(22)
    );
\dout_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(23),
      Q => dout_OBUF(23)
    );
\dout_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[19]_i_1_n_0\,
      CO(3) => \dout_reg[23]_i_1_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[23]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b23_n_0,
      DI(2) => g0_b22_n_0,
      DI(1) => g0_b21_n_0,
      DI(0) => g0_b20_n_0,
      O(3 downto 0) => plusOp(23 downto 20),
      S(3) => \dout[23]_i_2_n_0\,
      S(2) => \dout[23]_i_3_n_0\,
      S(1) => \dout[23]_i_4_n_0\,
      S(0) => \dout[23]_i_5_n_0\
    );
\dout_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(24),
      Q => dout_OBUF(24)
    );
\dout_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(25),
      Q => dout_OBUF(25)
    );
\dout_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(26),
      Q => dout_OBUF(26)
    );
\dout_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(27),
      Q => dout_OBUF(27)
    );
\dout_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[23]_i_1_n_0\,
      CO(3) => \dout_reg[27]_i_1_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[27]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b27_n_0,
      DI(2) => g0_b26_n_0,
      DI(1) => g0_b25_n_0,
      DI(0) => g0_b24_n_0,
      O(3 downto 0) => plusOp(27 downto 24),
      S(3) => \dout[27]_i_2_n_0\,
      S(2) => \dout[27]_i_3_n_0\,
      S(1) => \dout[27]_i_4_n_0\,
      S(0) => \dout[27]_i_5_n_0\
    );
\dout_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(28),
      Q => dout_OBUF(28)
    );
\dout_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(29),
      Q => dout_OBUF(29)
    );
\dout_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(2),
      Q => dout_OBUF(2)
    );
\dout_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(30),
      Q => dout_OBUF(30)
    );
\dout_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(31),
      Q => dout_OBUF(31)
    );
\dout_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[27]_i_1_n_0\,
      CO(3 downto 0) => \NLW_dout_reg[31]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => g0_b30_n_0,
      DI(1) => g0_b29_n_0,
      DI(0) => g0_b28_n_0,
      O(3 downto 0) => plusOp(31 downto 28),
      S(3) => \dout[31]_i_2_n_0\,
      S(2) => \dout[31]_i_3_n_0\,
      S(1) => \dout[31]_i_4_n_0\,
      S(0) => \dout[31]_i_5_n_0\
    );
\dout_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(0),
      Q => dout_OBUF(32)
    );
\dout_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(1),
      Q => dout_OBUF(33)
    );
\dout_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(2),
      Q => dout_OBUF(34)
    );
\dout_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(3),
      Q => dout_OBUF(35)
    );
\dout_reg[35]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dout_reg[35]_i_1_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[35]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b3_n_0,
      DI(2) => \g0_b2__0_n_0\,
      DI(1) => \g0_b1__0_n_0\,
      DI(0) => \g0_b0__0_n_0\,
      O(3 downto 0) => plusOp1_out(3 downto 0),
      S(3) => \dout[35]_i_2_n_0\,
      S(2) => \dout[35]_i_3_n_0\,
      S(1) => \dout[35]_i_4_n_0\,
      S(0) => \dout[35]_i_5_n_0\
    );
\dout_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(4),
      Q => dout_OBUF(36)
    );
\dout_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(5),
      Q => dout_OBUF(37)
    );
\dout_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(6),
      Q => dout_OBUF(38)
    );
\dout_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(7),
      Q => dout_OBUF(39)
    );
\dout_reg[39]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[35]_i_1_n_0\,
      CO(3) => \dout_reg[39]_i_1_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[39]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \g0_b7__0_n_0\,
      DI(2) => g0_b6_n_0,
      DI(1) => \g0_b5__0_n_0\,
      DI(0) => \g0_b4__0_n_0\,
      O(3 downto 0) => plusOp1_out(7 downto 4),
      S(3) => \dout[39]_i_2_n_0\,
      S(2) => \dout[39]_i_3_n_0\,
      S(1) => \dout[39]_i_4_n_0\,
      S(0) => \dout[39]_i_5_n_0\
    );
\dout_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(3),
      Q => dout_OBUF(3)
    );
\dout_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dout_reg[3]_i_1_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[3]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b3_rep_n_0,
      DI(2) => g0_b2_n_0,
      DI(1) => g0_b1_n_0,
      DI(0) => g0_b0_n_0,
      O(3 downto 0) => plusOp(3 downto 0),
      S(3) => \g0_b3__1_n_0\,
      S(2) => \dout[3]_i_2_n_0\,
      S(1) => \dout[3]_i_3_n_0\,
      S(0) => \dout[3]_i_4_n_0\
    );
\dout_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(8),
      Q => dout_OBUF(40)
    );
\dout_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(9),
      Q => dout_OBUF(41)
    );
\dout_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(10),
      Q => dout_OBUF(42)
    );
\dout_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(11),
      Q => dout_OBUF(43)
    );
\dout_reg[43]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[39]_i_1_n_0\,
      CO(3) => \dout_reg[43]_i_1_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[43]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \g0_b11__0_n_0\,
      DI(2) => \g0_b10__0_n_0\,
      DI(1) => \g0_b9__0_n_0\,
      DI(0) => \g0_b8__0_n_0\,
      O(3 downto 0) => plusOp1_out(11 downto 8),
      S(3) => \dout[43]_i_2_n_0\,
      S(2) => \dout[43]_i_3_n_0\,
      S(1) => \dout[43]_i_4_n_0\,
      S(0) => \dout[43]_i_5_n_0\
    );
\dout_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(12),
      Q => dout_OBUF(44)
    );
\dout_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(13),
      Q => dout_OBUF(45)
    );
\dout_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(14),
      Q => dout_OBUF(46)
    );
\dout_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(15),
      Q => dout_OBUF(47)
    );
\dout_reg[47]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[43]_i_1_n_0\,
      CO(3) => \dout_reg[47]_i_1_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[47]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \g0_b15__0_n_0\,
      DI(2) => \g0_b14__0_n_0\,
      DI(1) => \g0_b13__0_n_0\,
      DI(0) => \g0_b12__0_n_0\,
      O(3 downto 0) => plusOp1_out(15 downto 12),
      S(3) => \dout[47]_i_2_n_0\,
      S(2) => \dout[47]_i_3_n_0\,
      S(1) => \dout[47]_i_4_n_0\,
      S(0) => \dout[47]_i_5_n_0\
    );
\dout_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(16),
      Q => dout_OBUF(48)
    );
\dout_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(17),
      Q => dout_OBUF(49)
    );
\dout_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(4),
      Q => dout_OBUF(4)
    );
\dout_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(18),
      Q => dout_OBUF(50)
    );
\dout_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(19),
      Q => dout_OBUF(51)
    );
\dout_reg[51]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[47]_i_1_n_0\,
      CO(3) => \dout_reg[51]_i_1_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[51]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \g0_b19__0_n_0\,
      DI(2) => \g0_b18__0_n_0\,
      DI(1) => \g0_b17__0_n_0\,
      DI(0) => \g0_b16__0_n_0\,
      O(3 downto 0) => plusOp1_out(19 downto 16),
      S(3) => \dout[51]_i_2_n_0\,
      S(2) => \dout[51]_i_3_n_0\,
      S(1) => \dout[51]_i_4_n_0\,
      S(0) => \dout[51]_i_5_n_0\
    );
\dout_reg[52]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(20),
      Q => dout_OBUF(52)
    );
\dout_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(21),
      Q => dout_OBUF(53)
    );
\dout_reg[54]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(22),
      Q => dout_OBUF(54)
    );
\dout_reg[55]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(23),
      Q => dout_OBUF(55)
    );
\dout_reg[55]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[51]_i_1_n_0\,
      CO(3) => \dout_reg[55]_i_1_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[55]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \g0_b23__0_n_0\,
      DI(2) => \g0_b22__0_n_0\,
      DI(1) => \g0_b21__0_n_0\,
      DI(0) => \g0_b20__0_n_0\,
      O(3 downto 0) => plusOp1_out(23 downto 20),
      S(3) => \dout[55]_i_2_n_0\,
      S(2) => \dout[55]_i_3_n_0\,
      S(1) => \dout[55]_i_4_n_0\,
      S(0) => \dout[55]_i_5_n_0\
    );
\dout_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(24),
      Q => dout_OBUF(56)
    );
\dout_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(25),
      Q => dout_OBUF(57)
    );
\dout_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(26),
      Q => dout_OBUF(58)
    );
\dout_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(27),
      Q => dout_OBUF(59)
    );
\dout_reg[59]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[55]_i_1_n_0\,
      CO(3) => \dout_reg[59]_i_1_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[59]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \g0_b27__0_n_0\,
      DI(2) => \g0_b26__0_n_0\,
      DI(1) => \g0_b25__0_n_0\,
      DI(0) => \g0_b24__0_n_0\,
      O(3 downto 0) => plusOp1_out(27 downto 24),
      S(3) => \dout[59]_i_2_n_0\,
      S(2) => \dout[59]_i_3_n_0\,
      S(1) => \dout[59]_i_4_n_0\,
      S(0) => \dout[59]_i_5_n_0\
    );
\dout_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(5),
      Q => dout_OBUF(5)
    );
\dout_reg[60]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(28),
      Q => dout_OBUF(60)
    );
\dout_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(29),
      Q => dout_OBUF(61)
    );
\dout_reg[62]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(30),
      Q => dout_OBUF(62)
    );
\dout_reg[63]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp1_out(31),
      Q => dout_OBUF(63)
    );
\dout_reg[63]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[59]_i_1_n_0\,
      CO(3 downto 0) => \NLW_dout_reg[63]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \g0_b30__0_n_0\,
      DI(1) => \g0_b29__0_n_0\,
      DI(0) => \g0_b28__0_n_0\,
      O(3 downto 0) => plusOp1_out(31 downto 28),
      S(3) => \dout[63]_i_4_n_0\,
      S(2) => \dout[63]_i_5_n_0\,
      S(1) => \dout[63]_i_6_n_0\,
      S(0) => \dout[63]_i_7_n_0\
    );
\dout_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(6),
      Q => dout_OBUF(6)
    );
\dout_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(7),
      Q => dout_OBUF(7)
    );
\dout_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dout_reg[3]_i_1_n_0\,
      CO(3) => \dout_reg[7]_i_1_n_0\,
      CO(2 downto 0) => \NLW_dout_reg[7]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b7_n_0,
      DI(2) => g0_b6_rep_n_0,
      DI(1) => g0_b5_n_0,
      DI(0) => g0_b4_n_0,
      O(3 downto 0) => plusOp(7 downto 4),
      S(3) => \dout[7]_i_2_n_0\,
      S(2) => \g0_b6__1_n_0\,
      S(1) => \dout[7]_i_3_n_0\,
      S(0) => \dout[7]_i_4_n_0\
    );
\dout_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(8),
      Q => dout_OBUF(8)
    );
\dout_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dout[63]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => plusOp(9),
      Q => dout_OBUF(9)
    );
g0_b0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0776"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b0_n_0
    );
\g0_b0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10F2"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b0__0_n_0\
    );
g0_b1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"068C"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02C8"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b10_n_0
    );
\g0_b10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10D8"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b10__0_n_0\
    );
g0_b11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0238"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b11_n_0
    );
\g0_b11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EE6"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b11__0_n_0\
    );
g0_b12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0230"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b12_n_0
    );
\g0_b12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"118C"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b12__0_n_0\
    );
g0_b13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1C5A"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b13_n_0
    );
\g0_b13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0966"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b13__0_n_0\
    );
g0_b14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"112A"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b14_n_0
    );
\g0_b14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C22"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b14__0_n_0\
    );
g0_b15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01EC"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b15_n_0
    );
\g0_b15__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0602"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b15__0_n_0\
    );
g0_b16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"094C"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b16_n_0
    );
\g0_b16__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E70"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b16__0_n_0\
    );
g0_b17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07A4"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b17_n_0
    );
\g0_b17__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E28"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b17__0_n_0\
    );
g0_b18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1582"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b18_n_0
    );
\g0_b18__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1E38"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b18__0_n_0\
    );
g0_b19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF6"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b19_n_0
    );
\g0_b19__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"144E"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b19__0_n_0\
    );
\g0_b1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D24"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b1__0_n_0\
    );
g0_b2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C72"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b2_n_0
    );
g0_b20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CE0"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b20_n_0
    );
\g0_b20__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CCE"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b20__0_n_0\
    );
g0_b21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0138"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b21_n_0
    );
\g0_b21__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"067E"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b21__0_n_0\
    );
g0_b22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0184"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b22_n_0
    );
\g0_b22__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1946"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b22__0_n_0\
    );
g0_b23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01D0"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b23_n_0
    );
\g0_b23__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F86"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b23__0_n_0\
    );
g0_b24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1B70"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b24_n_0
    );
\g0_b24__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"06D8"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b24__0_n_0\
    );
g0_b25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b25_n_0
    );
\g0_b25__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"11C2"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b25__0_n_0\
    );
g0_b26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15CA"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b26_n_0
    );
\g0_b26__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15A2"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b26__0_n_0\
    );
g0_b27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0684"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b27_n_0
    );
\g0_b27__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b27__0_n_0\
    );
g0_b28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02B8"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b28_n_0
    );
\g0_b28__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"193C"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b28__0_n_0\
    );
g0_b29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"176C"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b29_n_0
    );
\g0_b29__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1B94"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b29__0_n_0\
    );
\g0_b2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"051A"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b2__0_n_0\
    );
g0_b3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF4"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b3_n_0
    );
g0_b30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"18AA"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b30_n_0
    );
\g0_b30__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"166E"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b30__0_n_0\
    );
g0_b31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0588"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b31_n_0
    );
\g0_b31__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10A0"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b31__0_n_0\
    );
\g0_b3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001C"
    )
        port map (
      I0 => i_cnt_reg(1),
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(3),
      I3 => di_vld_IBUF,
      O => \g0_b3__0_n_0\
    );
\g0_b3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E31C"
    )
        port map (
      I0 => i_cnt_reg(1),
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(3),
      I3 => b_rot(3),
      O => \g0_b3__1_n_0\
    );
\g0_b3__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_2_n_0\,
      I1 => \g0_b3__1_i_3_n_0\,
      I2 => plusOp1_out(4),
      I3 => \g0_b3__1_i_4_n_0\,
      I4 => plusOp1_out(3),
      I5 => \g0_b3__1_i_5_n_0\,
      O => b_rot(3)
    );
\g0_b3__1_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(12),
      I1 => b(12),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(13),
      I4 => b(13),
      O => \g0_b3__1_i_10_n_0\
    );
\g0_b3__1_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(14),
      I1 => b(14),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(15),
      I4 => b(15),
      O => \g0_b3__1_i_11_n_0\
    );
\g0_b3__1_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(16),
      I1 => b(16),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(17),
      I4 => b(17),
      O => \g0_b3__1_i_12_n_0\
    );
\g0_b3__1_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(18),
      I1 => b(18),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(19),
      I4 => b(19),
      O => \g0_b3__1_i_13_n_0\
    );
\g0_b3__1_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(20),
      I1 => b(20),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(21),
      I4 => b(21),
      O => \g0_b3__1_i_14_n_0\
    );
\g0_b3__1_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(22),
      I1 => b(22),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(23),
      I4 => b(23),
      O => \g0_b3__1_i_15_n_0\
    );
\g0_b3__1_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(24),
      I1 => b(24),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(25),
      I4 => b(25),
      O => \g0_b3__1_i_16_n_0\
    );
\g0_b3__1_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(26),
      I1 => b(26),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(27),
      I4 => b(27),
      O => \g0_b3__1_i_17_n_0\
    );
\g0_b3__1_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(28),
      I1 => b(28),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(29),
      I4 => b(29),
      O => \g0_b3__1_i_18_n_0\
    );
\g0_b3__1_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(30),
      I1 => b(30),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(31),
      I4 => b(31),
      O => \g0_b3__1_i_19_n_0\
    );
\g0_b3__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_6_n_0\,
      I1 => \g0_b3__1_i_7_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_8_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_9_n_0\,
      O => \g0_b3__1_i_2_n_0\
    );
\g0_b3__1_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4774"
    )
        port map (
      I0 => b(0),
      I1 => plusOp1_out(0),
      I2 => plusOp1_out(1),
      I3 => b(1),
      O => \g0_b3__1_i_20_n_0\
    );
\g0_b3__1_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(2),
      I1 => b(2),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(3),
      I4 => b(3),
      O => \g0_b3__1_i_21_n_0\
    );
\g0_b3__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_10_n_0\,
      I1 => \g0_b3__1_i_11_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_12_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_13_n_0\,
      O => \g0_b3__1_i_3_n_0\
    );
\g0_b3__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_14_n_0\,
      I1 => \g0_b3__1_i_15_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_16_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_17_n_0\,
      O => \g0_b3__1_i_4_n_0\
    );
\g0_b3__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_18_n_0\,
      I1 => \g0_b3__1_i_19_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_20_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_21_n_0\,
      O => \g0_b3__1_i_5_n_0\
    );
\g0_b3__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(4),
      I1 => b(4),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(5),
      I4 => b(5),
      O => \g0_b3__1_i_6_n_0\
    );
\g0_b3__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(6),
      I1 => b(6),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(7),
      I4 => b(7),
      O => \g0_b3__1_i_7_n_0\
    );
\g0_b3__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(8),
      I1 => b(8),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(9),
      I4 => b(9),
      O => \g0_b3__1_i_8_n_0\
    );
\g0_b3__1_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(10),
      I1 => b(10),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(11),
      I4 => b(11),
      O => \g0_b3__1_i_9_n_0\
    );
\g0_b3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE31C0000E31C"
    )
        port map (
      I0 => i_cnt_reg(1),
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(3),
      I3 => b_rot(3),
      I4 => di_vld_IBUF,
      I5 => din_IBUF(3),
      O => \g0_b3__2_n_0\
    );
g0_b3_rep: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1C"
    )
        port map (
      I0 => i_cnt_reg(1),
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(3),
      O => g0_b3_rep_n_0
    );
g0_b4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b4_n_0
    );
\g0_b4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1758"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b4__0_n_0\
    );
g0_b5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0628"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b5_n_0
    );
\g0_b5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1620"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b5__0_n_0\
    );
g0_b6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04BA"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b6_n_0
    );
\g0_b6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(3),
      I3 => di_vld_IBUF,
      O => \g0_b6__0_n_0\
    );
\g0_b6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB14"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(3),
      I3 => b_rot(6),
      O => \g0_b6__1_n_0\
    );
\g0_b6__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_2_n_0\,
      I1 => \g0_b6__1_i_3_n_0\,
      I2 => plusOp1_out(4),
      I3 => \g0_b6__1_i_4_n_0\,
      I4 => plusOp1_out(3),
      I5 => \g0_b6__1_i_5_n_0\,
      O => b_rot(6)
    );
\g0_b6__1_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(15),
      I1 => b(15),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(16),
      I4 => b(16),
      O => \g0_b6__1_i_10_n_0\
    );
\g0_b6__1_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(17),
      I1 => b(17),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(18),
      I4 => b(18),
      O => \g0_b6__1_i_11_n_0\
    );
\g0_b6__1_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(19),
      I1 => b(19),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(20),
      I4 => b(20),
      O => \g0_b6__1_i_12_n_0\
    );
\g0_b6__1_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(21),
      I1 => b(21),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(22),
      I4 => b(22),
      O => \g0_b6__1_i_13_n_0\
    );
\g0_b6__1_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(23),
      I1 => b(23),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(24),
      I4 => b(24),
      O => \g0_b6__1_i_14_n_0\
    );
\g0_b6__1_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(25),
      I1 => b(25),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(26),
      I4 => b(26),
      O => \g0_b6__1_i_15_n_0\
    );
\g0_b6__1_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(27),
      I1 => b(27),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(28),
      I4 => b(28),
      O => \g0_b6__1_i_16_n_0\
    );
\g0_b6__1_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(29),
      I1 => b(29),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(30),
      I4 => b(30),
      O => \g0_b6__1_i_17_n_0\
    );
\g0_b6__1_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => plusOp1_out(31),
      I1 => b(31),
      I2 => plusOp1_out(0),
      I3 => b(0),
      O => \g0_b6__1_i_18_n_0\
    );
\g0_b6__1_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(1),
      I1 => b(1),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(2),
      I4 => b(2),
      O => \g0_b6__1_i_19_n_0\
    );
\g0_b6__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_6_n_0\,
      I1 => \g0_b6__1_i_7_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_8_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_9_n_0\,
      O => \g0_b6__1_i_2_n_0\
    );
\g0_b6__1_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(3),
      I1 => b(3),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(4),
      I4 => b(4),
      O => \g0_b6__1_i_20_n_0\
    );
\g0_b6__1_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(5),
      I1 => b(5),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(6),
      I4 => b(6),
      O => \g0_b6__1_i_21_n_0\
    );
\g0_b6__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_10_n_0\,
      I1 => \g0_b6__1_i_11_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_12_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_13_n_0\,
      O => \g0_b6__1_i_3_n_0\
    );
\g0_b6__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_14_n_0\,
      I1 => \g0_b6__1_i_15_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_16_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_17_n_0\,
      O => \g0_b6__1_i_4_n_0\
    );
\g0_b6__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_18_n_0\,
      I1 => \g0_b6__1_i_19_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_20_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_21_n_0\,
      O => \g0_b6__1_i_5_n_0\
    );
\g0_b6__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(7),
      I1 => b(7),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(8),
      I4 => b(8),
      O => \g0_b6__1_i_6_n_0\
    );
\g0_b6__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(9),
      I1 => b(9),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(10),
      I4 => b(10),
      O => \g0_b6__1_i_7_n_0\
    );
\g0_b6__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(11),
      I1 => b(11),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(12),
      I4 => b(12),
      O => \g0_b6__1_i_8_n_0\
    );
\g0_b6__1_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => plusOp1_out(13),
      I1 => b(13),
      I2 => plusOp1_out(0),
      I3 => plusOp1_out(14),
      I4 => b(14),
      O => \g0_b6__1_i_9_n_0\
    );
\g0_b6__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEB140000EB14"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(3),
      I3 => b_rot(6),
      I4 => di_vld_IBUF,
      I5 => din_IBUF(6),
      O => \g0_b6__2_n_0\
    );
g0_b6_rep: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(3),
      O => g0_b6_rep_n_0
    );
g0_b7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1042"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b7_n_0
    );
\g0_b7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0346"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b7__0_n_0\
    );
g0_b8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1E8C"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b8_n_0
    );
\g0_b8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B44"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b8__0_n_0\
    );
g0_b9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1994"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => g0_b9_n_0
    );
\g0_b9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E54"
    )
        port map (
      I0 => i_cnt_reg(0),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(2),
      I3 => i_cnt_reg(3),
      O => \g0_b9__0_n_0\
    );
\i_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => di_vld_IBUF,
      I1 => i_cnt_reg(0),
      O => \i_cnt[0]_i_1_n_0\
    );
\i_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => i_cnt_reg(1),
      I1 => i_cnt_reg(0),
      I2 => di_vld_IBUF,
      O => \i_cnt[1]_i_1_n_0\
    );
\i_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => i_cnt_reg(2),
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(0),
      I3 => di_vld_IBUF,
      O => \i_cnt[2]_i_1_n_0\
    );
\i_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => di_vld_IBUF,
      I1 => i_cnt_reg(1),
      I2 => i_cnt_reg(0),
      I3 => i_cnt_reg(2),
      I4 => i_cnt_reg(3),
      O => \i_cnt[3]_i_1_n_0\
    );
\i_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => i_cnt_reg(3),
      I1 => i_cnt_reg(2),
      I2 => i_cnt_reg(0),
      I3 => i_cnt_reg(1),
      I4 => di_vld_IBUF,
      O => \i_cnt[3]_i_2_n_0\
    );
\i_cnt_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_cnt[3]_i_1_n_0\,
      D => \i_cnt[0]_i_1_n_0\,
      PRE => \dout[63]_i_3_n_0\,
      Q => i_cnt_reg(0)
    );
\i_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => \i_cnt[1]_i_1_n_0\,
      Q => i_cnt_reg(1)
    );
\i_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => \i_cnt[2]_i_1_n_0\,
      Q => i_cnt_reg(2)
    );
\i_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \dout[63]_i_3_n_0\,
      D => \i_cnt[3]_i_2_n_0\,
      Q => i_cnt_reg(3)
    );
end STRUCTURE;
