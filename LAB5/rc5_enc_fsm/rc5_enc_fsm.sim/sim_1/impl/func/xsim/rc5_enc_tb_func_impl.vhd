-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Nov  4 20:28:24 2018
-- Host        : DESKTOP-65OAGH3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/shenc/OneDrive -
--               nyu.edu/6463_AHD/LAB5/rc5_enc_fsm/rc5_enc_fsm.sim/sim_1/impl/func/xsim/rc5_enc_tb_func_impl.vhd}
-- Design      : rc5_enc_fpga
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Hex2LED is
  port (
    disp_val_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end Hex2LED;

architecture STRUCTURE of Hex2LED is
begin
\disp_val_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => disp_val_OBUF(0)
    );
\disp_val_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      O => disp_val_OBUF(1)
    );
\disp_val_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => disp_val_OBUF(2)
    );
\disp_val_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => disp_val_OBUF(3)
    );
\disp_val_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => disp_val_OBUF(4)
    );
\disp_val_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => disp_val_OBUF(5)
    );
\disp_val_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      O => disp_val_OBUF(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rc5_enc is
  port (
    do_rdy_OBUF : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \a_reg_reg[0]_0\ : out STD_LOGIC;
    di_vld_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_sw_IBUF : in STD_LOGIC;
    ab_sw_IBUF : in STD_LOGIC;
    clr_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end rc5_enc;

architecture STRUCTURE of rc5_enc is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal a_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^a_reg_reg[0]_0\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal b_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal \disp_hex[0]_i_10_n_0\ : STD_LOGIC;
  signal \disp_hex[0]_i_11_n_0\ : STD_LOGIC;
  signal \disp_hex[0]_i_12_n_0\ : STD_LOGIC;
  signal \disp_hex[0]_i_13_n_0\ : STD_LOGIC;
  signal \disp_hex[0]_i_6_n_0\ : STD_LOGIC;
  signal \disp_hex[0]_i_7_n_0\ : STD_LOGIC;
  signal \disp_hex[0]_i_8_n_0\ : STD_LOGIC;
  signal \disp_hex[0]_i_9_n_0\ : STD_LOGIC;
  signal \disp_hex[1]_i_10_n_0\ : STD_LOGIC;
  signal \disp_hex[1]_i_11_n_0\ : STD_LOGIC;
  signal \disp_hex[1]_i_12_n_0\ : STD_LOGIC;
  signal \disp_hex[1]_i_13_n_0\ : STD_LOGIC;
  signal \disp_hex[1]_i_6_n_0\ : STD_LOGIC;
  signal \disp_hex[1]_i_7_n_0\ : STD_LOGIC;
  signal \disp_hex[1]_i_8_n_0\ : STD_LOGIC;
  signal \disp_hex[1]_i_9_n_0\ : STD_LOGIC;
  signal \disp_hex[2]_i_10_n_0\ : STD_LOGIC;
  signal \disp_hex[2]_i_11_n_0\ : STD_LOGIC;
  signal \disp_hex[2]_i_12_n_0\ : STD_LOGIC;
  signal \disp_hex[2]_i_13_n_0\ : STD_LOGIC;
  signal \disp_hex[2]_i_6_n_0\ : STD_LOGIC;
  signal \disp_hex[2]_i_7_n_0\ : STD_LOGIC;
  signal \disp_hex[2]_i_8_n_0\ : STD_LOGIC;
  signal \disp_hex[2]_i_9_n_0\ : STD_LOGIC;
  signal \disp_hex[3]_i_10_n_0\ : STD_LOGIC;
  signal \disp_hex[3]_i_11_n_0\ : STD_LOGIC;
  signal \disp_hex[3]_i_12_n_0\ : STD_LOGIC;
  signal \disp_hex[3]_i_13_n_0\ : STD_LOGIC;
  signal \disp_hex[3]_i_6_n_0\ : STD_LOGIC;
  signal \disp_hex[3]_i_7_n_0\ : STD_LOGIC;
  signal \disp_hex[3]_i_8_n_0\ : STD_LOGIC;
  signal \disp_hex[3]_i_9_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \disp_hex_reg[3]_i_5_n_0\ : STD_LOGIC;
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
  signal \g0_b3__1_i_1_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_2_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_3_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_4_n_0\ : STD_LOGIC;
  signal \g0_b3__1_i_5_n_0\ : STD_LOGIC;
  signal \g0_b3__1_n_0\ : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal \g0_b4__0_n_0\ : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal \g0_b5__0_n_0\ : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal \g0_b6__0_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_1_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_2_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_3_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_4_n_0\ : STD_LOGIC;
  signal \g0_b6__1_i_5_n_0\ : STD_LOGIC;
  signal \g0_b6__1_n_0\ : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal \g0_b7__0_n_0\ : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal \g0_b8__0_n_0\ : STD_LOGIC;
  signal g0_b8_n_0 : STD_LOGIC;
  signal \g0_b9__0_n_0\ : STD_LOGIC;
  signal g0_b9_n_0 : STD_LOGIC;
  signal i_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal plusOp1_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \plusOp__93_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_17_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_18_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_16_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_17_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__4_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__5_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_10_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_11_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_12_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_13_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_14_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_15_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_16_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_17_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_18_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_19_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_20_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_21_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_22_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_23_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_24_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_25_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_26_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_27_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_28_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_29_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_30_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_31_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_32_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_4_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_5_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_6_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__93_carry_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_20_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_21_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_22_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_23_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_24_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_25_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_26_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_13_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_15_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_16_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__6_i_4_n_0\ : STD_LOGIC;
  signal plusOp_carry_i_10_n_0 : STD_LOGIC;
  signal plusOp_carry_i_11_n_0 : STD_LOGIC;
  signal plusOp_carry_i_12_n_0 : STD_LOGIC;
  signal plusOp_carry_i_13_n_0 : STD_LOGIC;
  signal plusOp_carry_i_14_n_0 : STD_LOGIC;
  signal plusOp_carry_i_15_n_0 : STD_LOGIC;
  signal plusOp_carry_i_16_n_0 : STD_LOGIC;
  signal plusOp_carry_i_17_n_0 : STD_LOGIC;
  signal plusOp_carry_i_18_n_0 : STD_LOGIC;
  signal plusOp_carry_i_19_n_0 : STD_LOGIC;
  signal plusOp_carry_i_1_n_0 : STD_LOGIC;
  signal plusOp_carry_i_20_n_0 : STD_LOGIC;
  signal plusOp_carry_i_21_n_0 : STD_LOGIC;
  signal plusOp_carry_i_22_n_0 : STD_LOGIC;
  signal plusOp_carry_i_23_n_0 : STD_LOGIC;
  signal plusOp_carry_i_24_n_0 : STD_LOGIC;
  signal plusOp_carry_i_25_n_0 : STD_LOGIC;
  signal plusOp_carry_i_26_n_0 : STD_LOGIC;
  signal plusOp_carry_i_27_n_0 : STD_LOGIC;
  signal plusOp_carry_i_28_n_0 : STD_LOGIC;
  signal plusOp_carry_i_29_n_0 : STD_LOGIC;
  signal plusOp_carry_i_2_n_0 : STD_LOGIC;
  signal plusOp_carry_i_30_n_0 : STD_LOGIC;
  signal plusOp_carry_i_31_n_0 : STD_LOGIC;
  signal plusOp_carry_i_32_n_0 : STD_LOGIC;
  signal plusOp_carry_i_33_n_0 : STD_LOGIC;
  signal plusOp_carry_i_34_n_0 : STD_LOGIC;
  signal plusOp_carry_i_35_n_0 : STD_LOGIC;
  signal plusOp_carry_i_36_n_0 : STD_LOGIC;
  signal plusOp_carry_i_37_n_0 : STD_LOGIC;
  signal plusOp_carry_i_38_n_0 : STD_LOGIC;
  signal plusOp_carry_i_39_n_0 : STD_LOGIC;
  signal plusOp_carry_i_3_n_0 : STD_LOGIC;
  signal plusOp_carry_i_40_n_0 : STD_LOGIC;
  signal plusOp_carry_i_41_n_0 : STD_LOGIC;
  signal plusOp_carry_i_4_n_0 : STD_LOGIC;
  signal plusOp_carry_i_5_n_0 : STD_LOGIC;
  signal plusOp_carry_i_6_n_0 : STD_LOGIC;
  signal plusOp_carry_i_7_n_0 : STD_LOGIC;
  signal plusOp_carry_i_8_n_0 : STD_LOGIC;
  signal plusOp_carry_i_9_n_0 : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "yes";
  signal \NLW_plusOp__93_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp__93_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp__93_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp__93_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp__93_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp__93_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp__93_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp__93_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_plusOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "st_pre_round:01,st_round_op:10,st_idle:00,st_ready:11";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "st_pre_round:01,st_round_op:10,st_idle:00,st_ready:11";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
begin
  \a_reg_reg[0]_0\ <= \^a_reg_reg[0]_0\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000055555555"
    )
        port map (
      I0 => state(0),
      I1 => sel(2),
      I2 => sel(1),
      I3 => sel(4),
      I4 => sel(3),
      I5 => state(1),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => state(0),
      I1 => di_vld_IBUF,
      I2 => state(1),
      I3 => \FSM_sequential_state[1]_i_4_n_0\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001000FFFF0000"
    )
        port map (
      I0 => sel(2),
      I1 => sel(1),
      I2 => sel(4),
      I3 => sel(3),
      I4 => state(0),
      I5 => state(1),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clr_IBUF,
      O => \^a_reg_reg[0]_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => sel(2),
      I1 => sel(1),
      I2 => sel(4),
      I3 => sel(3),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_sequential_state[1]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_sequential_state[1]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => \FSM_sequential_state[1]_i_2_n_0\,
      Q => state(1)
    );
\a_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(32),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(0),
      O => a_reg(0)
    );
\a_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(42),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(10),
      O => a_reg(10)
    );
\a_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(43),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(11),
      O => a_reg(11)
    );
\a_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(44),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(12),
      O => a_reg(12)
    );
\a_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(45),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(13),
      O => a_reg(13)
    );
\a_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(46),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(14),
      O => a_reg(14)
    );
\a_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(47),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(15),
      O => a_reg(15)
    );
\a_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(48),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(16),
      O => a_reg(16)
    );
\a_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(49),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(17),
      O => a_reg(17)
    );
\a_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(50),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(18),
      O => a_reg(18)
    );
\a_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(51),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(19),
      O => a_reg(19)
    );
\a_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(33),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(1),
      O => a_reg(1)
    );
\a_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(52),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(20),
      O => a_reg(20)
    );
\a_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(53),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(21),
      O => a_reg(21)
    );
\a_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(54),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(22),
      O => a_reg(22)
    );
\a_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(55),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(23),
      O => a_reg(23)
    );
\a_reg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(56),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(24),
      O => a_reg(24)
    );
\a_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(57),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(25),
      O => a_reg(25)
    );
\a_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(58),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(26),
      O => a_reg(26)
    );
\a_reg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(59),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(27),
      O => a_reg(27)
    );
\a_reg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(60),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(28),
      O => a_reg(28)
    );
\a_reg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(61),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(29),
      O => a_reg(29)
    );
\a_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(34),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(2),
      O => a_reg(2)
    );
\a_reg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(62),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(30),
      O => a_reg(30)
    );
\a_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(63),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(31),
      O => a_reg(31)
    );
\a_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(35),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(3),
      O => a_reg(3)
    );
\a_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(36),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(4),
      O => a_reg(4)
    );
\a_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(37),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(5),
      O => a_reg(5)
    );
\a_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(38),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(6),
      O => a_reg(6)
    );
\a_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(39),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(7),
      O => a_reg(7)
    );
\a_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(40),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(8),
      O => a_reg(8)
    );
\a_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(41),
      I1 => state(0),
      I2 => state(1),
      I3 => plusOp1_out(9),
      O => a_reg(9)
    );
\a_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(0),
      Q => \a_reg_reg_n_0_[0]\
    );
\a_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(10),
      Q => \a_reg_reg_n_0_[10]\
    );
\a_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(11),
      Q => \a_reg_reg_n_0_[11]\
    );
\a_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(12),
      Q => \a_reg_reg_n_0_[12]\
    );
\a_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(13),
      Q => \a_reg_reg_n_0_[13]\
    );
\a_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(14),
      Q => \a_reg_reg_n_0_[14]\
    );
\a_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(15),
      Q => \a_reg_reg_n_0_[15]\
    );
\a_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(16),
      Q => \a_reg_reg_n_0_[16]\
    );
\a_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(17),
      Q => \a_reg_reg_n_0_[17]\
    );
\a_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(18),
      Q => \a_reg_reg_n_0_[18]\
    );
\a_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(19),
      Q => \a_reg_reg_n_0_[19]\
    );
\a_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(1),
      Q => \a_reg_reg_n_0_[1]\
    );
\a_reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(20),
      Q => \a_reg_reg_n_0_[20]\
    );
\a_reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(21),
      Q => \a_reg_reg_n_0_[21]\
    );
\a_reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(22),
      Q => \a_reg_reg_n_0_[22]\
    );
\a_reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(23),
      Q => \a_reg_reg_n_0_[23]\
    );
\a_reg_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(24),
      Q => \a_reg_reg_n_0_[24]\
    );
\a_reg_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(25),
      Q => \a_reg_reg_n_0_[25]\
    );
\a_reg_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(26),
      Q => \a_reg_reg_n_0_[26]\
    );
\a_reg_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(27),
      Q => \a_reg_reg_n_0_[27]\
    );
\a_reg_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(28),
      Q => \a_reg_reg_n_0_[28]\
    );
\a_reg_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(29),
      Q => \a_reg_reg_n_0_[29]\
    );
\a_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(2),
      Q => \a_reg_reg_n_0_[2]\
    );
\a_reg_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(30),
      Q => \a_reg_reg_n_0_[30]\
    );
\a_reg_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(31),
      Q => \a_reg_reg_n_0_[31]\
    );
\a_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(3),
      Q => \a_reg_reg_n_0_[3]\
    );
\a_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(4),
      Q => \a_reg_reg_n_0_[4]\
    );
\a_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(5),
      Q => \a_reg_reg_n_0_[5]\
    );
\a_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(6),
      Q => \a_reg_reg_n_0_[6]\
    );
\a_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(7),
      Q => \a_reg_reg_n_0_[7]\
    );
\a_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(8),
      Q => \a_reg_reg_n_0_[8]\
    );
\a_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => a_reg(9),
      Q => \a_reg_reg_n_0_[9]\
    );
\b_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(0),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(0),
      O => b_reg(0)
    );
\b_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(10),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(10),
      O => b_reg(10)
    );
\b_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(11),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(11),
      O => b_reg(11)
    );
\b_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(12),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(12),
      O => b_reg(12)
    );
\b_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(13),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(13),
      O => b_reg(13)
    );
\b_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(14),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(14),
      O => b_reg(14)
    );
\b_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(15),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(15),
      O => b_reg(15)
    );
\b_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(16),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(16),
      O => b_reg(16)
    );
\b_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(17),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(17),
      O => b_reg(17)
    );
\b_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(18),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(18),
      O => b_reg(18)
    );
\b_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(19),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(19),
      O => b_reg(19)
    );
\b_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(1),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(1),
      O => b_reg(1)
    );
\b_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(20),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(20),
      O => b_reg(20)
    );
\b_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(21),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(21),
      O => b_reg(21)
    );
\b_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(22),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(22),
      O => b_reg(22)
    );
\b_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(23),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(23),
      O => b_reg(23)
    );
\b_reg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(24),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(24),
      O => b_reg(24)
    );
\b_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(25),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(25),
      O => b_reg(25)
    );
\b_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(26),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(26),
      O => b_reg(26)
    );
\b_reg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(27),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(27),
      O => b_reg(27)
    );
\b_reg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(28),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(28),
      O => b_reg(28)
    );
\b_reg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(29),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(29),
      O => b_reg(29)
    );
\b_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(2),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(2),
      O => b_reg(2)
    );
\b_reg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(30),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(30),
      O => b_reg(30)
    );
\b_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(31),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(31),
      O => b_reg(31)
    );
\b_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(3),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(3),
      O => b_reg(3)
    );
\b_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(4),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(4),
      O => b_reg(4)
    );
\b_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(5),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(5),
      O => b_reg(5)
    );
\b_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(6),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(6),
      O => b_reg(6)
    );
\b_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(7),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(7),
      O => b_reg(7)
    );
\b_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(8),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(8),
      O => b_reg(8)
    );
\b_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Q(9),
      I1 => state(0),
      I2 => state(1),
      I3 => in5(9),
      O => b_reg(9)
    );
\b_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(0),
      Q => \b_reg_reg_n_0_[0]\
    );
\b_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(10),
      Q => \b_reg_reg_n_0_[10]\
    );
\b_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(11),
      Q => \b_reg_reg_n_0_[11]\
    );
\b_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(12),
      Q => \b_reg_reg_n_0_[12]\
    );
\b_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(13),
      Q => \b_reg_reg_n_0_[13]\
    );
\b_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(14),
      Q => \b_reg_reg_n_0_[14]\
    );
\b_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(15),
      Q => \b_reg_reg_n_0_[15]\
    );
\b_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(16),
      Q => \b_reg_reg_n_0_[16]\
    );
\b_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(17),
      Q => \b_reg_reg_n_0_[17]\
    );
\b_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(18),
      Q => \b_reg_reg_n_0_[18]\
    );
\b_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(19),
      Q => \b_reg_reg_n_0_[19]\
    );
\b_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(1),
      Q => \b_reg_reg_n_0_[1]\
    );
\b_reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(20),
      Q => \b_reg_reg_n_0_[20]\
    );
\b_reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(21),
      Q => \b_reg_reg_n_0_[21]\
    );
\b_reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(22),
      Q => \b_reg_reg_n_0_[22]\
    );
\b_reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(23),
      Q => \b_reg_reg_n_0_[23]\
    );
\b_reg_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(24),
      Q => \b_reg_reg_n_0_[24]\
    );
\b_reg_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(25),
      Q => \b_reg_reg_n_0_[25]\
    );
\b_reg_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(26),
      Q => \b_reg_reg_n_0_[26]\
    );
\b_reg_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(27),
      Q => \b_reg_reg_n_0_[27]\
    );
\b_reg_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(28),
      Q => \b_reg_reg_n_0_[28]\
    );
\b_reg_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(29),
      Q => \b_reg_reg_n_0_[29]\
    );
\b_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(2),
      Q => \b_reg_reg_n_0_[2]\
    );
\b_reg_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(30),
      Q => \b_reg_reg_n_0_[30]\
    );
\b_reg_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(31),
      Q => \b_reg_reg_n_0_[31]\
    );
\b_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(3),
      Q => \b_reg_reg_n_0_[3]\
    );
\b_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(4),
      Q => \b_reg_reg_n_0_[4]\
    );
\b_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(5),
      Q => \b_reg_reg_n_0_[5]\
    );
\b_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(6),
      Q => \b_reg_reg_n_0_[6]\
    );
\b_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(7),
      Q => \b_reg_reg_n_0_[7]\
    );
\b_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(8),
      Q => \b_reg_reg_n_0_[8]\
    );
\b_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => b_reg(9),
      Q => \b_reg_reg_n_0_[9]\
    );
\disp_hex[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \disp_hex_reg[0]_i_2_n_0\,
      I1 => \disp_hex_reg[0]_i_3_n_0\,
      I2 => sel0(2),
      I3 => \disp_hex_reg[0]_i_4_n_0\,
      I4 => sel0(1),
      I5 => \disp_hex_reg[0]_i_5_n_0\,
      O => D(0)
    );
\disp_hex[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[8]\,
      I1 => \a_reg_reg_n_0_[8]\,
      I2 => io_sw_IBUF,
      I3 => Q(8),
      I4 => ab_sw_IBUF,
      I5 => Q(40),
      O => \disp_hex[0]_i_10_n_0\
    );
\disp_hex[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[12]\,
      I1 => \a_reg_reg_n_0_[12]\,
      I2 => io_sw_IBUF,
      I3 => Q(12),
      I4 => ab_sw_IBUF,
      I5 => Q(44),
      O => \disp_hex[0]_i_11_n_0\
    );
\disp_hex[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[0]\,
      I1 => \a_reg_reg_n_0_[0]\,
      I2 => io_sw_IBUF,
      I3 => Q(0),
      I4 => ab_sw_IBUF,
      I5 => Q(32),
      O => \disp_hex[0]_i_12_n_0\
    );
\disp_hex[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[4]\,
      I1 => \a_reg_reg_n_0_[4]\,
      I2 => io_sw_IBUF,
      I3 => Q(4),
      I4 => ab_sw_IBUF,
      I5 => Q(36),
      O => \disp_hex[0]_i_13_n_0\
    );
\disp_hex[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[24]\,
      I1 => \a_reg_reg_n_0_[24]\,
      I2 => io_sw_IBUF,
      I3 => Q(24),
      I4 => ab_sw_IBUF,
      I5 => Q(56),
      O => \disp_hex[0]_i_6_n_0\
    );
\disp_hex[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[28]\,
      I1 => \a_reg_reg_n_0_[28]\,
      I2 => io_sw_IBUF,
      I3 => Q(28),
      I4 => ab_sw_IBUF,
      I5 => Q(60),
      O => \disp_hex[0]_i_7_n_0\
    );
\disp_hex[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[16]\,
      I1 => \a_reg_reg_n_0_[16]\,
      I2 => io_sw_IBUF,
      I3 => Q(16),
      I4 => ab_sw_IBUF,
      I5 => Q(48),
      O => \disp_hex[0]_i_8_n_0\
    );
\disp_hex[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[20]\,
      I1 => \a_reg_reg_n_0_[20]\,
      I2 => io_sw_IBUF,
      I3 => Q(20),
      I4 => ab_sw_IBUF,
      I5 => Q(52),
      O => \disp_hex[0]_i_9_n_0\
    );
\disp_hex[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \disp_hex_reg[1]_i_2_n_0\,
      I1 => \disp_hex_reg[1]_i_3_n_0\,
      I2 => sel0(2),
      I3 => \disp_hex_reg[1]_i_4_n_0\,
      I4 => sel0(1),
      I5 => \disp_hex_reg[1]_i_5_n_0\,
      O => D(1)
    );
\disp_hex[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[9]\,
      I1 => \a_reg_reg_n_0_[9]\,
      I2 => io_sw_IBUF,
      I3 => Q(9),
      I4 => ab_sw_IBUF,
      I5 => Q(41),
      O => \disp_hex[1]_i_10_n_0\
    );
\disp_hex[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[13]\,
      I1 => \a_reg_reg_n_0_[13]\,
      I2 => io_sw_IBUF,
      I3 => Q(13),
      I4 => ab_sw_IBUF,
      I5 => Q(45),
      O => \disp_hex[1]_i_11_n_0\
    );
\disp_hex[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[1]\,
      I1 => \a_reg_reg_n_0_[1]\,
      I2 => io_sw_IBUF,
      I3 => Q(1),
      I4 => ab_sw_IBUF,
      I5 => Q(33),
      O => \disp_hex[1]_i_12_n_0\
    );
\disp_hex[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[5]\,
      I1 => \a_reg_reg_n_0_[5]\,
      I2 => io_sw_IBUF,
      I3 => Q(5),
      I4 => ab_sw_IBUF,
      I5 => Q(37),
      O => \disp_hex[1]_i_13_n_0\
    );
\disp_hex[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[25]\,
      I1 => \a_reg_reg_n_0_[25]\,
      I2 => io_sw_IBUF,
      I3 => Q(25),
      I4 => ab_sw_IBUF,
      I5 => Q(57),
      O => \disp_hex[1]_i_6_n_0\
    );
\disp_hex[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[29]\,
      I1 => \a_reg_reg_n_0_[29]\,
      I2 => io_sw_IBUF,
      I3 => Q(29),
      I4 => ab_sw_IBUF,
      I5 => Q(61),
      O => \disp_hex[1]_i_7_n_0\
    );
\disp_hex[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[17]\,
      I1 => \a_reg_reg_n_0_[17]\,
      I2 => io_sw_IBUF,
      I3 => Q(17),
      I4 => ab_sw_IBUF,
      I5 => Q(49),
      O => \disp_hex[1]_i_8_n_0\
    );
\disp_hex[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[21]\,
      I1 => \a_reg_reg_n_0_[21]\,
      I2 => io_sw_IBUF,
      I3 => Q(21),
      I4 => ab_sw_IBUF,
      I5 => Q(53),
      O => \disp_hex[1]_i_9_n_0\
    );
\disp_hex[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \disp_hex_reg[2]_i_2_n_0\,
      I1 => \disp_hex_reg[2]_i_3_n_0\,
      I2 => sel0(2),
      I3 => \disp_hex_reg[2]_i_4_n_0\,
      I4 => sel0(1),
      I5 => \disp_hex_reg[2]_i_5_n_0\,
      O => D(2)
    );
\disp_hex[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[10]\,
      I1 => \a_reg_reg_n_0_[10]\,
      I2 => io_sw_IBUF,
      I3 => Q(10),
      I4 => ab_sw_IBUF,
      I5 => Q(42),
      O => \disp_hex[2]_i_10_n_0\
    );
\disp_hex[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[14]\,
      I1 => \a_reg_reg_n_0_[14]\,
      I2 => io_sw_IBUF,
      I3 => Q(14),
      I4 => ab_sw_IBUF,
      I5 => Q(46),
      O => \disp_hex[2]_i_11_n_0\
    );
\disp_hex[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[2]\,
      I1 => \a_reg_reg_n_0_[2]\,
      I2 => io_sw_IBUF,
      I3 => Q(2),
      I4 => ab_sw_IBUF,
      I5 => Q(34),
      O => \disp_hex[2]_i_12_n_0\
    );
\disp_hex[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[6]\,
      I1 => \a_reg_reg_n_0_[6]\,
      I2 => io_sw_IBUF,
      I3 => Q(6),
      I4 => ab_sw_IBUF,
      I5 => Q(38),
      O => \disp_hex[2]_i_13_n_0\
    );
\disp_hex[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[26]\,
      I1 => \a_reg_reg_n_0_[26]\,
      I2 => io_sw_IBUF,
      I3 => Q(26),
      I4 => ab_sw_IBUF,
      I5 => Q(58),
      O => \disp_hex[2]_i_6_n_0\
    );
\disp_hex[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[30]\,
      I1 => \a_reg_reg_n_0_[30]\,
      I2 => io_sw_IBUF,
      I3 => Q(30),
      I4 => ab_sw_IBUF,
      I5 => Q(62),
      O => \disp_hex[2]_i_7_n_0\
    );
\disp_hex[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[18]\,
      I1 => \a_reg_reg_n_0_[18]\,
      I2 => io_sw_IBUF,
      I3 => Q(18),
      I4 => ab_sw_IBUF,
      I5 => Q(50),
      O => \disp_hex[2]_i_8_n_0\
    );
\disp_hex[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[22]\,
      I1 => \a_reg_reg_n_0_[22]\,
      I2 => io_sw_IBUF,
      I3 => Q(22),
      I4 => ab_sw_IBUF,
      I5 => Q(54),
      O => \disp_hex[2]_i_9_n_0\
    );
\disp_hex[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \disp_hex_reg[3]_i_2_n_0\,
      I1 => \disp_hex_reg[3]_i_3_n_0\,
      I2 => sel0(2),
      I3 => \disp_hex_reg[3]_i_4_n_0\,
      I4 => sel0(1),
      I5 => \disp_hex_reg[3]_i_5_n_0\,
      O => D(3)
    );
\disp_hex[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[11]\,
      I1 => \a_reg_reg_n_0_[11]\,
      I2 => io_sw_IBUF,
      I3 => Q(11),
      I4 => ab_sw_IBUF,
      I5 => Q(43),
      O => \disp_hex[3]_i_10_n_0\
    );
\disp_hex[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[15]\,
      I1 => \a_reg_reg_n_0_[15]\,
      I2 => io_sw_IBUF,
      I3 => Q(15),
      I4 => ab_sw_IBUF,
      I5 => Q(47),
      O => \disp_hex[3]_i_11_n_0\
    );
\disp_hex[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[3]\,
      I1 => \a_reg_reg_n_0_[3]\,
      I2 => io_sw_IBUF,
      I3 => Q(3),
      I4 => ab_sw_IBUF,
      I5 => Q(35),
      O => \disp_hex[3]_i_12_n_0\
    );
\disp_hex[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[7]\,
      I1 => \a_reg_reg_n_0_[7]\,
      I2 => io_sw_IBUF,
      I3 => Q(7),
      I4 => ab_sw_IBUF,
      I5 => Q(39),
      O => \disp_hex[3]_i_13_n_0\
    );
\disp_hex[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[27]\,
      I1 => \a_reg_reg_n_0_[27]\,
      I2 => io_sw_IBUF,
      I3 => Q(27),
      I4 => ab_sw_IBUF,
      I5 => Q(59),
      O => \disp_hex[3]_i_6_n_0\
    );
\disp_hex[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[31]\,
      I1 => \a_reg_reg_n_0_[31]\,
      I2 => io_sw_IBUF,
      I3 => Q(31),
      I4 => ab_sw_IBUF,
      I5 => Q(63),
      O => \disp_hex[3]_i_7_n_0\
    );
\disp_hex[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[19]\,
      I1 => \a_reg_reg_n_0_[19]\,
      I2 => io_sw_IBUF,
      I3 => Q(19),
      I4 => ab_sw_IBUF,
      I5 => Q(51),
      O => \disp_hex[3]_i_8_n_0\
    );
\disp_hex[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \b_reg_reg_n_0_[23]\,
      I1 => \a_reg_reg_n_0_[23]\,
      I2 => io_sw_IBUF,
      I3 => Q(23),
      I4 => ab_sw_IBUF,
      I5 => Q(55),
      O => \disp_hex[3]_i_9_n_0\
    );
\disp_hex_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[0]_i_6_n_0\,
      I1 => \disp_hex[0]_i_7_n_0\,
      O => \disp_hex_reg[0]_i_2_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[0]_i_8_n_0\,
      I1 => \disp_hex[0]_i_9_n_0\,
      O => \disp_hex_reg[0]_i_3_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[0]_i_10_n_0\,
      I1 => \disp_hex[0]_i_11_n_0\,
      O => \disp_hex_reg[0]_i_4_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[0]_i_12_n_0\,
      I1 => \disp_hex[0]_i_13_n_0\,
      O => \disp_hex_reg[0]_i_5_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[1]_i_6_n_0\,
      I1 => \disp_hex[1]_i_7_n_0\,
      O => \disp_hex_reg[1]_i_2_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[1]_i_8_n_0\,
      I1 => \disp_hex[1]_i_9_n_0\,
      O => \disp_hex_reg[1]_i_3_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[1]_i_10_n_0\,
      I1 => \disp_hex[1]_i_11_n_0\,
      O => \disp_hex_reg[1]_i_4_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[1]_i_12_n_0\,
      I1 => \disp_hex[1]_i_13_n_0\,
      O => \disp_hex_reg[1]_i_5_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[2]_i_6_n_0\,
      I1 => \disp_hex[2]_i_7_n_0\,
      O => \disp_hex_reg[2]_i_2_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[2]_i_8_n_0\,
      I1 => \disp_hex[2]_i_9_n_0\,
      O => \disp_hex_reg[2]_i_3_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[2]_i_10_n_0\,
      I1 => \disp_hex[2]_i_11_n_0\,
      O => \disp_hex_reg[2]_i_4_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[2]_i_12_n_0\,
      I1 => \disp_hex[2]_i_13_n_0\,
      O => \disp_hex_reg[2]_i_5_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[3]_i_6_n_0\,
      I1 => \disp_hex[3]_i_7_n_0\,
      O => \disp_hex_reg[3]_i_2_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[3]_i_8_n_0\,
      I1 => \disp_hex[3]_i_9_n_0\,
      O => \disp_hex_reg[3]_i_3_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[3]_i_10_n_0\,
      I1 => \disp_hex[3]_i_11_n_0\,
      O => \disp_hex_reg[3]_i_4_n_0\,
      S => sel0(0)
    );
\disp_hex_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \disp_hex[3]_i_12_n_0\,
      I1 => \disp_hex[3]_i_13_n_0\,
      O => \disp_hex_reg[3]_i_5_n_0\,
      S => sel0(0)
    );
do_rdy_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => do_rdy_OBUF
    );
g0_b0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10F2"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b0_n_0
    );
\g0_b0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0776"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b0__0_n_0\
    );
g0_b1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D24"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10D8"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b10_n_0
    );
\g0_b10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02C8"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b10__0_n_0\
    );
g0_b11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EE6"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b11_n_0
    );
\g0_b11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0238"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b11__0_n_0\
    );
g0_b12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"118C"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b12_n_0
    );
\g0_b12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0230"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b12__0_n_0\
    );
g0_b13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0966"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b13_n_0
    );
\g0_b13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1C5A"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b13__0_n_0\
    );
g0_b14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C22"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b14_n_0
    );
\g0_b14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"112A"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b14__0_n_0\
    );
g0_b15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0602"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b15_n_0
    );
\g0_b15__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01EC"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b15__0_n_0\
    );
g0_b16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E70"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b16_n_0
    );
\g0_b16__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"094C"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b16__0_n_0\
    );
g0_b17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E28"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b17_n_0
    );
\g0_b17__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07A4"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b17__0_n_0\
    );
g0_b18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1E38"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b18_n_0
    );
\g0_b18__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1582"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b18__0_n_0\
    );
g0_b19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"144E"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b19_n_0
    );
\g0_b19__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF6"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b19__0_n_0\
    );
\g0_b1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"068C"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b1__0_n_0\
    );
g0_b2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"051A"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b2_n_0
    );
g0_b20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CCE"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b20_n_0
    );
\g0_b20__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CE0"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b20__0_n_0\
    );
g0_b21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"067E"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b21_n_0
    );
\g0_b21__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0138"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b21__0_n_0\
    );
g0_b22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1946"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b22_n_0
    );
\g0_b22__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0184"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b22__0_n_0\
    );
g0_b23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F86"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b23_n_0
    );
\g0_b23__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01D0"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b23__0_n_0\
    );
g0_b24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"06D8"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b24_n_0
    );
\g0_b24__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1B70"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b24__0_n_0\
    );
g0_b25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"11C2"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b25_n_0
    );
\g0_b25__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b25__0_n_0\
    );
g0_b26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15A2"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b26_n_0
    );
\g0_b26__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15CA"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b26__0_n_0\
    );
g0_b27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b27_n_0
    );
\g0_b27__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0684"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b27__0_n_0\
    );
g0_b28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"193C"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b28_n_0
    );
\g0_b28__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02B8"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b28__0_n_0\
    );
g0_b29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1B94"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b29_n_0
    );
\g0_b29__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"176C"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b29__0_n_0\
    );
\g0_b2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C72"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b2__0_n_0\
    );
g0_b3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF4"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b3_n_0
    );
g0_b30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"166E"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b30_n_0
    );
\g0_b30__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"18AA"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b30__0_n_0\
    );
g0_b31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10A0"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b31_n_0
    );
\g0_b31__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0588"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b31__0_n_0\
    );
\g0_b3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1C"
    )
        port map (
      I0 => sel(2),
      I1 => sel(3),
      I2 => sel(4),
      O => \g0_b3__0_n_0\
    );
\g0_b3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3E3E31C1C1CE31C"
    )
        port map (
      I0 => sel(2),
      I1 => sel(3),
      I2 => sel(4),
      I3 => \g0_b3__1_i_1_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b3__1_i_2_n_0\,
      O => \g0_b3__1_n_0\
    );
\g0_b3__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \g0_b3__1_i_3_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__1_i_5_n_0\,
      O => \g0_b3__1_i_1_n_0\
    );
\g0_b3__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp__93_carry__1_i_6_n_0\,
      I1 => plusOp1_out(3),
      I2 => \g0_b3__1_i_4_n_0\,
      O => \g0_b3__1_i_2_n_0\
    );
\g0_b3__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_23_n_0\,
      I1 => \plusOp__93_carry_i_24_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_25_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_26_n_0\,
      O => \g0_b3__1_i_3_n_0\
    );
\g0_b3__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry__2_i_17_n_0\,
      I1 => \g0_b3__1_i_5_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry__2_i_14_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_22_n_0\,
      O => \g0_b3__1_i_4_n_0\
    );
\g0_b3__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[14]\,
      I1 => plusOp1_out(14),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[15]\,
      I4 => plusOp1_out(15),
      O => \g0_b3__1_i_5_n_0\
    );
g0_b4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1758"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b4_n_0
    );
\g0_b4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b4__0_n_0\
    );
g0_b5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1620"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b5_n_0
    );
\g0_b5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0628"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b5__0_n_0\
    );
g0_b6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04BA"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b6_n_0
    );
\g0_b6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => sel(1),
      I1 => sel(3),
      I2 => sel(4),
      O => \g0_b6__0_n_0\
    );
\g0_b6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBEBEB141414EB14"
    )
        port map (
      I0 => sel(1),
      I1 => sel(3),
      I2 => sel(4),
      I3 => \g0_b6__1_i_1_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b6__1_i_2_n_0\,
      O => \g0_b6__1_n_0\
    );
\g0_b6__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \g0_b6__1_i_3_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__2_i_7_n_0\,
      O => \g0_b6__1_i_1_n_0\
    );
\g0_b6__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp__93_carry__2_i_8_n_0\,
      I1 => plusOp1_out(3),
      I2 => \g0_b6__1_i_4_n_0\,
      O => \g0_b6__1_i_2_n_0\
    );
\g0_b6__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_15_n_0\,
      I1 => \plusOp__93_carry_i_16_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_17_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_18_n_0\,
      O => \g0_b6__1_i_3_n_0\
    );
\g0_b6__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_i_5_n_0\,
      I1 => \plusOp__93_carry_i_31_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_13_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_14_n_0\,
      O => \g0_b6__1_i_4_n_0\
    );
\g0_b6__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[15]\,
      I1 => plusOp1_out(15),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[16]\,
      I4 => plusOp1_out(16),
      O => \g0_b6__1_i_5_n_0\
    );
g0_b7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0346"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b7_n_0
    );
\g0_b7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1042"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b7__0_n_0\
    );
g0_b8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B44"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b8_n_0
    );
\g0_b8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1E8C"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b8__0_n_0\
    );
g0_b9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E54"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => g0_b9_n_0
    );
\g0_b9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1994"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(3),
      I3 => sel(4),
      O => \g0_b9__0_n_0\
    );
\i_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => sel(1),
      O => i_cnt(0)
    );
\i_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6066"
    )
        port map (
      I0 => sel(2),
      I1 => sel(1),
      I2 => state(1),
      I3 => state(0),
      O => i_cnt(1)
    );
\i_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F3F351F3000000"
    )
        port map (
      I0 => sel(4),
      I1 => state(0),
      I2 => state(1),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(3),
      O => i_cnt(2)
    );
\i_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \i_cnt[3]_i_1_n_0\
    );
\i_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DDDDD0DD0000000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => sel(3),
      I3 => sel(2),
      I4 => sel(1),
      I5 => sel(4),
      O => i_cnt(3)
    );
\i_cnt_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      D => i_cnt(0),
      PRE => \^a_reg_reg[0]_0\,
      Q => sel(1)
    );
\i_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => i_cnt(1),
      Q => sel(2)
    );
\i_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => i_cnt(2),
      Q => sel(3)
    );
\i_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \i_cnt[3]_i_1_n_0\,
      CLR => \^a_reg_reg[0]_0\,
      D => i_cnt(3),
      Q => sel(4)
    );
\plusOp__93_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp__93_carry_n_0\,
      CO(2 downto 0) => \NLW_plusOp__93_carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \g0_b3__0_n_0\,
      DI(2) => \g0_b2__0_n_0\,
      DI(1) => \g0_b1__0_n_0\,
      DI(0) => \g0_b0__0_n_0\,
      O(3 downto 0) => in5(3 downto 0),
      S(3) => \g0_b3__1_n_0\,
      S(2) => \plusOp__93_carry_i_1_n_0\,
      S(1) => \plusOp__93_carry_i_2_n_0\,
      S(0) => \plusOp__93_carry_i_3_n_0\
    );
\plusOp__93_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__93_carry_n_0\,
      CO(3) => \plusOp__93_carry__0_n_0\,
      CO(2 downto 0) => \NLW_plusOp__93_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \g0_b7__0_n_0\,
      DI(2) => \g0_b6__0_n_0\,
      DI(1) => \g0_b5__0_n_0\,
      DI(0) => \g0_b4__0_n_0\,
      O(3 downto 0) => in5(7 downto 4),
      S(3) => \plusOp__93_carry__0_i_1_n_0\,
      S(2) => \g0_b6__1_n_0\,
      S(1) => \plusOp__93_carry__0_i_2_n_0\,
      S(0) => \plusOp__93_carry__0_i_3_n_0\
    );
\plusOp__93_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_4_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__0_i_5_n_0\,
      I3 => plusOp1_out(4),
      I4 => \plusOp__93_carry__0_i_6_n_0\,
      I5 => \g0_b7__0_n_0\,
      O => \plusOp__93_carry__0_i_1_n_0\
    );
\plusOp__93_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_14_n_0\,
      I1 => \plusOp__93_carry_i_15_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_16_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_17_n_0\,
      O => \plusOp__93_carry__0_i_10_n_0\
    );
\plusOp__93_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_18_n_0\,
      I1 => \plusOp__93_carry_i_19_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_20_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry__0_i_18_n_0\,
      O => \plusOp__93_carry__0_i_11_n_0\
    );
\plusOp__93_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp__93_carry__2_i_12_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__0_i_19_n_0\,
      O => \plusOp__93_carry__0_i_12_n_0\
    );
\plusOp__93_carry__0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[2]\,
      I1 => plusOp1_out(2),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[3]\,
      I4 => plusOp1_out(3),
      O => \plusOp__93_carry__0_i_13_n_0\
    );
\plusOp__93_carry__0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[4]\,
      I1 => plusOp1_out(4),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[5]\,
      I4 => plusOp1_out(5),
      O => \plusOp__93_carry__0_i_14_n_0\
    );
\plusOp__93_carry__0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[6]\,
      I1 => plusOp1_out(6),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[7]\,
      I4 => plusOp1_out(7),
      O => \plusOp__93_carry__0_i_15_n_0\
    );
\plusOp__93_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry__1_i_14_n_0\,
      I1 => \plusOp__93_carry__1_i_15_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry__2_i_17_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b3__1_i_5_n_0\,
      O => \plusOp__93_carry__0_i_16_n_0\
    );
\plusOp__93_carry__0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_i_5_n_0\,
      I1 => \plusOp__93_carry__2_i_14_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_22_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_23_n_0\,
      O => \plusOp__93_carry__0_i_17_n_0\
    );
\plusOp__93_carry__0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[3]\,
      I1 => plusOp1_out(3),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => plusOp1_out(4),
      O => \plusOp__93_carry__0_i_18_n_0\
    );
\plusOp__93_carry__0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry__2_i_16_n_0\,
      I1 => \g0_b6__1_i_5_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_31_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_13_n_0\,
      O => \plusOp__93_carry__0_i_19_n_0\
    );
\plusOp__93_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_7_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__0_i_8_n_0\,
      I3 => plusOp1_out(4),
      I4 => \plusOp__93_carry__0_i_9_n_0\,
      I5 => \g0_b5__0_n_0\,
      O => \plusOp__93_carry__0_i_2_n_0\
    );
\plusOp__93_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_10_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__0_i_11_n_0\,
      I3 => plusOp1_out(4),
      I4 => \plusOp__93_carry__0_i_12_n_0\,
      I5 => \g0_b4__0_n_0\,
      O => \plusOp__93_carry__0_i_3_n_0\
    );
\plusOp__93_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_25_n_0\,
      I1 => \plusOp__93_carry_i_26_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_27_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_28_n_0\,
      O => \plusOp__93_carry__0_i_4_n_0\
    );
\plusOp__93_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_29_n_0\,
      I1 => \plusOp__93_carry__0_i_13_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry__0_i_14_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry__0_i_15_n_0\,
      O => \plusOp__93_carry__0_i_5_n_0\
    );
\plusOp__93_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_16_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__2_i_5_n_0\,
      O => \plusOp__93_carry__0_i_6_n_0\
    );
\plusOp__93_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_24_n_0\,
      I1 => \plusOp__93_carry_i_25_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_26_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_27_n_0\,
      O => \plusOp__93_carry__0_i_7_n_0\
    );
\plusOp__93_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_28_n_0\,
      I1 => \plusOp__93_carry_i_29_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry__0_i_13_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry__0_i_14_n_0\,
      O => \plusOp__93_carry__0_i_8_n_0\
    );
\plusOp__93_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp__93_carry__2_i_10_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__0_i_17_n_0\,
      O => \plusOp__93_carry__0_i_9_n_0\
    );
\plusOp__93_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__93_carry__0_n_0\,
      CO(3) => \plusOp__93_carry__1_n_0\,
      CO(2 downto 0) => \NLW_plusOp__93_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \g0_b11__0_n_0\,
      DI(2) => \g0_b10__0_n_0\,
      DI(1) => \g0_b9__0_n_0\,
      DI(0) => \g0_b8__0_n_0\,
      O(3 downto 0) => in5(11 downto 8),
      S(3) => \plusOp__93_carry__1_i_1_n_0\,
      S(2) => \plusOp__93_carry__1_i_2_n_0\,
      S(1) => \plusOp__93_carry__1_i_3_n_0\,
      S(0) => \plusOp__93_carry__1_i_4_n_0\
    );
\plusOp__93_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp__93_carry__1_i_5_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__1_i_6_n_0\,
      I3 => plusOp1_out(4),
      I4 => \plusOp__93_carry__1_i_7_n_0\,
      I5 => \g0_b11__0_n_0\,
      O => \plusOp__93_carry__1_i_1_n_0\
    );
\plusOp__93_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_13_n_0\,
      I1 => \plusOp__93_carry__0_i_14_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry__0_i_15_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry__1_i_14_n_0\,
      O => \plusOp__93_carry__1_i_10_n_0\
    );
\plusOp__93_carry__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp__93_carry_i_30_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry_i_7_n_0\,
      O => \plusOp__93_carry__1_i_11_n_0\
    );
\plusOp__93_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_20_n_0\,
      I1 => \plusOp__93_carry__0_i_18_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry__1_i_16_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry__1_i_17_n_0\,
      O => \plusOp__93_carry__1_i_12_n_0\
    );
\plusOp__93_carry__1_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp__93_carry_i_32_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry_i_10_n_0\,
      O => \plusOp__93_carry__1_i_13_n_0\
    );
\plusOp__93_carry__1_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[8]\,
      I1 => plusOp1_out(8),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[9]\,
      I4 => plusOp1_out(9),
      O => \plusOp__93_carry__1_i_14_n_0\
    );
\plusOp__93_carry__1_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[10]\,
      I1 => plusOp1_out(10),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[11]\,
      I4 => plusOp1_out(11),
      O => \plusOp__93_carry__1_i_15_n_0\
    );
\plusOp__93_carry__1_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[5]\,
      I1 => plusOp1_out(5),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[6]\,
      I4 => plusOp1_out(6),
      O => \plusOp__93_carry__1_i_16_n_0\
    );
\plusOp__93_carry__1_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[7]\,
      I1 => plusOp1_out(7),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[8]\,
      I4 => plusOp1_out(8),
      O => \plusOp__93_carry__1_i_17_n_0\
    );
\plusOp__93_carry__1_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[9]\,
      I1 => plusOp1_out(9),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[10]\,
      I4 => plusOp1_out(10),
      O => \plusOp__93_carry__1_i_18_n_0\
    );
\plusOp__93_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp__93_carry_i_5_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__1_i_8_n_0\,
      I3 => plusOp1_out(4),
      I4 => \plusOp__93_carry__1_i_9_n_0\,
      I5 => \g0_b10__0_n_0\,
      O => \plusOp__93_carry__1_i_2_n_0\
    );
\plusOp__93_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp__93_carry_i_8_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__1_i_10_n_0\,
      I3 => plusOp1_out(4),
      I4 => \plusOp__93_carry__1_i_11_n_0\,
      I5 => \g0_b9__0_n_0\,
      O => \plusOp__93_carry__1_i_3_n_0\
    );
\plusOp__93_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp__93_carry_i_11_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__1_i_12_n_0\,
      I3 => plusOp1_out(4),
      I4 => \plusOp__93_carry__1_i_13_n_0\,
      I5 => \g0_b8__0_n_0\,
      O => \plusOp__93_carry__1_i_4_n_0\
    );
\plusOp__93_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_27_n_0\,
      I1 => \plusOp__93_carry_i_28_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_29_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry__0_i_13_n_0\,
      O => \plusOp__93_carry__1_i_5_n_0\
    );
\plusOp__93_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_14_n_0\,
      I1 => \plusOp__93_carry__0_i_15_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry__1_i_14_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry__1_i_15_n_0\,
      O => \plusOp__93_carry__1_i_6_n_0\
    );
\plusOp__93_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \g0_b3__1_i_4_n_0\,
      I1 => plusOp1_out(3),
      I2 => \g0_b3__1_i_3_n_0\,
      O => \plusOp__93_carry__1_i_7_n_0\
    );
\plusOp__93_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_18_n_0\,
      I1 => \plusOp__93_carry__1_i_16_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry__1_i_17_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry__1_i_18_n_0\,
      O => \plusOp__93_carry__1_i_8_n_0\
    );
\plusOp__93_carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp__93_carry_i_21_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry_i_4_n_0\,
      O => \plusOp__93_carry__1_i_9_n_0\
    );
\plusOp__93_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__93_carry__1_n_0\,
      CO(3) => \plusOp__93_carry__2_n_0\,
      CO(2 downto 0) => \NLW_plusOp__93_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \g0_b15__0_n_0\,
      DI(2) => \g0_b14__0_n_0\,
      DI(1) => \g0_b13__0_n_0\,
      DI(0) => \g0_b12__0_n_0\,
      O(3 downto 0) => in5(15 downto 12),
      S(3) => \plusOp__93_carry__2_i_1_n_0\,
      S(2) => \plusOp__93_carry__2_i_2_n_0\,
      S(1) => \plusOp__93_carry__2_i_3_n_0\,
      S(0) => \plusOp__93_carry__2_i_4_n_0\
    );
\plusOp__93_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp__93_carry__2_i_5_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__0_i_4_n_0\,
      I3 => \plusOp__93_carry__2_i_6_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b15__0_n_0\,
      O => \plusOp__93_carry__2_i_1_n_0\
    );
\plusOp__93_carry__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_15_n_0\,
      I1 => \plusOp__93_carry__1_i_14_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry__1_i_15_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry__2_i_17_n_0\,
      O => \plusOp__93_carry__2_i_10_n_0\
    );
\plusOp__93_carry__2_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_17_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__0_i_7_n_0\,
      O => \plusOp__93_carry__2_i_11_n_0\
    );
\plusOp__93_carry__2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry__1_i_16_n_0\,
      I1 => \plusOp__93_carry__1_i_17_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry__1_i_18_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry__2_i_15_n_0\,
      O => \plusOp__93_carry__2_i_12_n_0\
    );
\plusOp__93_carry__2_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_19_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__0_i_10_n_0\,
      O => \plusOp__93_carry__2_i_13_n_0\
    );
\plusOp__93_carry__2_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[16]\,
      I1 => plusOp1_out(16),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[17]\,
      I4 => plusOp1_out(17),
      O => \plusOp__93_carry__2_i_14_n_0\
    );
\plusOp__93_carry__2_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[11]\,
      I1 => plusOp1_out(11),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[12]\,
      I4 => plusOp1_out(12),
      O => \plusOp__93_carry__2_i_15_n_0\
    );
\plusOp__93_carry__2_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[13]\,
      I1 => plusOp1_out(13),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[14]\,
      I4 => plusOp1_out(14),
      O => \plusOp__93_carry__2_i_16_n_0\
    );
\plusOp__93_carry__2_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[12]\,
      I1 => plusOp1_out(12),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[13]\,
      I4 => plusOp1_out(13),
      O => \plusOp__93_carry__2_i_17_n_0\
    );
\plusOp__93_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp__93_carry__2_i_7_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__2_i_8_n_0\,
      I3 => plusOp1_out(4),
      I4 => \plusOp__93_carry__2_i_9_n_0\,
      I5 => \g0_b14__0_n_0\,
      O => \plusOp__93_carry__2_i_2_n_0\
    );
\plusOp__93_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_8_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__2_i_10_n_0\,
      I3 => plusOp1_out(4),
      I4 => \plusOp__93_carry__2_i_11_n_0\,
      I5 => \g0_b13__0_n_0\,
      O => \plusOp__93_carry__2_i_3_n_0\
    );
\plusOp__93_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_11_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__2_i_12_n_0\,
      I3 => plusOp1_out(4),
      I4 => \plusOp__93_carry__2_i_13_n_0\,
      I5 => \g0_b12__0_n_0\,
      O => \plusOp__93_carry__2_i_4_n_0\
    );
\plusOp__93_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry__2_i_14_n_0\,
      I1 => \plusOp__93_carry_i_22_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_23_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_24_n_0\,
      O => \plusOp__93_carry__2_i_5_n_0\
    );
\plusOp__93_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_5_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__0_i_16_n_0\,
      O => \plusOp__93_carry__2_i_6_n_0\
    );
\plusOp__93_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_19_n_0\,
      I1 => \plusOp__93_carry_i_20_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry__0_i_18_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry__1_i_16_n_0\,
      O => \plusOp__93_carry__2_i_7_n_0\
    );
\plusOp__93_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry__1_i_17_n_0\,
      I1 => \plusOp__93_carry__1_i_18_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry__2_i_15_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry__2_i_16_n_0\,
      O => \plusOp__93_carry__2_i_8_n_0\
    );
\plusOp__93_carry__2_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \g0_b6__1_i_4_n_0\,
      I1 => plusOp1_out(3),
      I2 => \g0_b6__1_i_3_n_0\,
      O => \plusOp__93_carry__2_i_9_n_0\
    );
\plusOp__93_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__93_carry__2_n_0\,
      CO(3) => \plusOp__93_carry__3_n_0\,
      CO(2 downto 0) => \NLW_plusOp__93_carry__3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \g0_b19__0_n_0\,
      DI(2) => \g0_b18__0_n_0\,
      DI(1) => \g0_b17__0_n_0\,
      DI(0) => \g0_b16__0_n_0\,
      O(3 downto 0) => in5(19 downto 16),
      S(3) => \plusOp__93_carry__3_i_1_n_0\,
      S(2) => \plusOp__93_carry__3_i_2_n_0\,
      S(1) => \plusOp__93_carry__3_i_3_n_0\,
      S(0) => \plusOp__93_carry__3_i_4_n_0\
    );
\plusOp__93_carry__3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \g0_b3__1_i_2_n_0\,
      I1 => plusOp1_out(4),
      I2 => \g0_b3__1_i_1_n_0\,
      I3 => \g0_b19__0_n_0\,
      O => \plusOp__93_carry__3_i_1_n_0\
    );
\plusOp__93_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp__93_carry_i_4_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry_i_5_n_0\,
      I3 => \plusOp__93_carry_i_6_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b18__0_n_0\,
      O => \plusOp__93_carry__3_i_2_n_0\
    );
\plusOp__93_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp__93_carry_i_7_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry_i_8_n_0\,
      I3 => \plusOp__93_carry_i_9_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b17__0_n_0\,
      O => \plusOp__93_carry__3_i_3_n_0\
    );
\plusOp__93_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp__93_carry_i_10_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry_i_11_n_0\,
      I3 => \plusOp__93_carry_i_12_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b16__0_n_0\,
      O => \plusOp__93_carry__3_i_4_n_0\
    );
\plusOp__93_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__93_carry__3_n_0\,
      CO(3) => \plusOp__93_carry__4_n_0\,
      CO(2 downto 0) => \NLW_plusOp__93_carry__4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \g0_b23__0_n_0\,
      DI(2) => \g0_b22__0_n_0\,
      DI(1) => \g0_b21__0_n_0\,
      DI(0) => \g0_b20__0_n_0\,
      O(3 downto 0) => in5(23 downto 20),
      S(3) => \plusOp__93_carry__4_i_1_n_0\,
      S(2) => \plusOp__93_carry__4_i_2_n_0\,
      S(1) => \plusOp__93_carry__4_i_3_n_0\,
      S(0) => \plusOp__93_carry__4_i_4_n_0\
    );
\plusOp__93_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_4_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__0_i_5_n_0\,
      I3 => \plusOp__93_carry__0_i_6_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b23__0_n_0\,
      O => \plusOp__93_carry__4_i_1_n_0\
    );
\plusOp__93_carry__4_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \g0_b6__1_i_2_n_0\,
      I1 => plusOp1_out(4),
      I2 => \g0_b6__1_i_1_n_0\,
      I3 => \g0_b22__0_n_0\,
      O => \plusOp__93_carry__4_i_2_n_0\
    );
\plusOp__93_carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_7_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__0_i_8_n_0\,
      I3 => \plusOp__93_carry__0_i_9_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b21__0_n_0\,
      O => \plusOp__93_carry__4_i_3_n_0\
    );
\plusOp__93_carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_10_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__0_i_11_n_0\,
      I3 => \plusOp__93_carry__0_i_12_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b20__0_n_0\,
      O => \plusOp__93_carry__4_i_4_n_0\
    );
\plusOp__93_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__93_carry__4_n_0\,
      CO(3) => \plusOp__93_carry__5_n_0\,
      CO(2 downto 0) => \NLW_plusOp__93_carry__5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \g0_b27__0_n_0\,
      DI(2) => \g0_b26__0_n_0\,
      DI(1) => \g0_b25__0_n_0\,
      DI(0) => \g0_b24__0_n_0\,
      O(3 downto 0) => in5(27 downto 24),
      S(3) => \plusOp__93_carry__5_i_1_n_0\,
      S(2) => \plusOp__93_carry__5_i_2_n_0\,
      S(1) => \plusOp__93_carry__5_i_3_n_0\,
      S(0) => \plusOp__93_carry__5_i_4_n_0\
    );
\plusOp__93_carry__5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp__93_carry__1_i_5_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__1_i_6_n_0\,
      I3 => \plusOp__93_carry__1_i_7_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b27__0_n_0\,
      O => \plusOp__93_carry__5_i_1_n_0\
    );
\plusOp__93_carry__5_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp__93_carry_i_5_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__1_i_8_n_0\,
      I3 => \plusOp__93_carry__1_i_9_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b26__0_n_0\,
      O => \plusOp__93_carry__5_i_2_n_0\
    );
\plusOp__93_carry__5_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp__93_carry_i_8_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__1_i_10_n_0\,
      I3 => \plusOp__93_carry__1_i_11_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b25__0_n_0\,
      O => \plusOp__93_carry__5_i_3_n_0\
    );
\plusOp__93_carry__5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp__93_carry_i_11_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__1_i_12_n_0\,
      I3 => \plusOp__93_carry__1_i_13_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b24__0_n_0\,
      O => \plusOp__93_carry__5_i_4_n_0\
    );
\plusOp__93_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__93_carry__5_n_0\,
      CO(3 downto 0) => \NLW_plusOp__93_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \g0_b30__0_n_0\,
      DI(1) => \g0_b29__0_n_0\,
      DI(0) => \g0_b28__0_n_0\,
      O(3 downto 0) => in5(31 downto 28),
      S(3) => \plusOp__93_carry__6_i_1_n_0\,
      S(2) => \plusOp__93_carry__6_i_2_n_0\,
      S(1) => \plusOp__93_carry__6_i_3_n_0\,
      S(0) => \plusOp__93_carry__6_i_4_n_0\
    );
\plusOp__93_carry__6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF47B8FF0047B8"
    )
        port map (
      I0 => \plusOp__93_carry__2_i_5_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__0_i_4_n_0\,
      I3 => \g0_b31__0_n_0\,
      I4 => plusOp1_out(4),
      I5 => \plusOp__93_carry__2_i_6_n_0\,
      O => \plusOp__93_carry__6_i_1_n_0\
    );
\plusOp__93_carry__6_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp__93_carry__2_i_7_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__2_i_8_n_0\,
      I3 => \plusOp__93_carry__2_i_9_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b30__0_n_0\,
      O => \plusOp__93_carry__6_i_2_n_0\
    );
\plusOp__93_carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_8_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__2_i_10_n_0\,
      I3 => \plusOp__93_carry__2_i_11_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b29__0_n_0\,
      O => \plusOp__93_carry__6_i_3_n_0\
    );
\plusOp__93_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp__93_carry__0_i_11_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry__2_i_12_n_0\,
      I3 => \plusOp__93_carry__2_i_13_n_0\,
      I4 => plusOp1_out(4),
      I5 => \g0_b28__0_n_0\,
      O => \plusOp__93_carry__6_i_4_n_0\
    );
\plusOp__93_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp__93_carry_i_4_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry_i_5_n_0\,
      I3 => plusOp1_out(4),
      I4 => \plusOp__93_carry_i_6_n_0\,
      I5 => \g0_b2__0_n_0\,
      O => \plusOp__93_carry_i_1_n_0\
    );
\plusOp__93_carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_31_n_0\,
      I1 => \plusOp__93_carry_i_13_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_14_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_15_n_0\,
      O => \plusOp__93_carry_i_10_n_0\
    );
\plusOp__93_carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_16_n_0\,
      I1 => \plusOp__93_carry_i_17_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_18_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_19_n_0\,
      O => \plusOp__93_carry_i_11_n_0\
    );
\plusOp__93_carry_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp__93_carry__1_i_12_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry_i_32_n_0\,
      O => \plusOp__93_carry_i_12_n_0\
    );
\plusOp__93_carry_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[19]\,
      I1 => plusOp1_out(19),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[20]\,
      I4 => plusOp1_out(20),
      O => \plusOp__93_carry_i_13_n_0\
    );
\plusOp__93_carry_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[21]\,
      I1 => plusOp1_out(21),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[22]\,
      I4 => plusOp1_out(22),
      O => \plusOp__93_carry_i_14_n_0\
    );
\plusOp__93_carry_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[23]\,
      I1 => plusOp1_out(23),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[24]\,
      I4 => plusOp1_out(24),
      O => \plusOp__93_carry_i_15_n_0\
    );
\plusOp__93_carry_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[25]\,
      I1 => plusOp1_out(25),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[26]\,
      I4 => plusOp1_out(26),
      O => \plusOp__93_carry_i_16_n_0\
    );
\plusOp__93_carry_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[27]\,
      I1 => plusOp1_out(27),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[28]\,
      I4 => plusOp1_out(28),
      O => \plusOp__93_carry_i_17_n_0\
    );
\plusOp__93_carry_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[29]\,
      I1 => plusOp1_out(29),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[30]\,
      I4 => plusOp1_out(30),
      O => \plusOp__93_carry_i_18_n_0\
    );
\plusOp__93_carry_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[31]\,
      I1 => plusOp1_out(31),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[0]\,
      O => \plusOp__93_carry_i_19_n_0\
    );
\plusOp__93_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp__93_carry_i_7_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry_i_8_n_0\,
      I3 => plusOp1_out(4),
      I4 => \plusOp__93_carry_i_9_n_0\,
      I5 => \g0_b1__0_n_0\,
      O => \plusOp__93_carry_i_2_n_0\
    );
\plusOp__93_carry_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[1]\,
      I1 => plusOp1_out(1),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[2]\,
      I4 => plusOp1_out(2),
      O => \plusOp__93_carry_i_20_n_0\
    );
\plusOp__93_carry_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry__2_i_15_n_0\,
      I1 => \plusOp__93_carry__2_i_16_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b6__1_i_5_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_31_n_0\,
      O => \plusOp__93_carry_i_21_n_0\
    );
\plusOp__93_carry_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[18]\,
      I1 => plusOp1_out(18),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[19]\,
      I4 => plusOp1_out(19),
      O => \plusOp__93_carry_i_22_n_0\
    );
\plusOp__93_carry_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[20]\,
      I1 => plusOp1_out(20),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[21]\,
      I4 => plusOp1_out(21),
      O => \plusOp__93_carry_i_23_n_0\
    );
\plusOp__93_carry_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[22]\,
      I1 => plusOp1_out(22),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[23]\,
      I4 => plusOp1_out(23),
      O => \plusOp__93_carry_i_24_n_0\
    );
\plusOp__93_carry_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[24]\,
      I1 => plusOp1_out(24),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[25]\,
      I4 => plusOp1_out(25),
      O => \plusOp__93_carry_i_25_n_0\
    );
\plusOp__93_carry_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[26]\,
      I1 => plusOp1_out(26),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[27]\,
      I4 => plusOp1_out(27),
      O => \plusOp__93_carry_i_26_n_0\
    );
\plusOp__93_carry_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[28]\,
      I1 => plusOp1_out(28),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[29]\,
      I4 => plusOp1_out(29),
      O => \plusOp__93_carry_i_27_n_0\
    );
\plusOp__93_carry_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[30]\,
      I1 => plusOp1_out(30),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[31]\,
      I4 => plusOp1_out(31),
      O => \plusOp__93_carry_i_28_n_0\
    );
\plusOp__93_carry_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4774"
    )
        port map (
      I0 => \b_reg_reg_n_0_[0]\,
      I1 => plusOp1_out(0),
      I2 => \b_reg_reg_n_0_[1]\,
      I3 => plusOp1_out(1),
      O => \plusOp__93_carry_i_29_n_0\
    );
\plusOp__93_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp__93_carry_i_10_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry_i_11_n_0\,
      I3 => plusOp1_out(4),
      I4 => \plusOp__93_carry_i_12_n_0\,
      I5 => \g0_b0__0_n_0\,
      O => \plusOp__93_carry_i_3_n_0\
    );
\plusOp__93_carry_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry__1_i_15_n_0\,
      I1 => \plusOp__93_carry__2_i_17_n_0\,
      I2 => plusOp1_out(2),
      I3 => \g0_b3__1_i_5_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry__2_i_14_n_0\,
      O => \plusOp__93_carry_i_30_n_0\
    );
\plusOp__93_carry_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[17]\,
      I1 => plusOp1_out(17),
      I2 => plusOp1_out(0),
      I3 => \b_reg_reg_n_0_[18]\,
      I4 => plusOp1_out(18),
      O => \plusOp__93_carry_i_31_n_0\
    );
\plusOp__93_carry_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry__1_i_18_n_0\,
      I1 => \plusOp__93_carry__2_i_15_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry__2_i_16_n_0\,
      I4 => plusOp1_out(1),
      I5 => \g0_b6__1_i_5_n_0\,
      O => \plusOp__93_carry_i_32_n_0\
    );
\plusOp__93_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_13_n_0\,
      I1 => \plusOp__93_carry_i_14_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_15_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_16_n_0\,
      O => \plusOp__93_carry_i_4_n_0\
    );
\plusOp__93_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_17_n_0\,
      I1 => \plusOp__93_carry_i_18_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_19_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_20_n_0\,
      O => \plusOp__93_carry_i_5_n_0\
    );
\plusOp__93_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp__93_carry__1_i_8_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry_i_21_n_0\,
      O => \plusOp__93_carry_i_6_n_0\
    );
\plusOp__93_carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_22_n_0\,
      I1 => \plusOp__93_carry_i_23_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_24_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_25_n_0\,
      O => \plusOp__93_carry_i_7_n_0\
    );
\plusOp__93_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp__93_carry_i_26_n_0\,
      I1 => \plusOp__93_carry_i_27_n_0\,
      I2 => plusOp1_out(2),
      I3 => \plusOp__93_carry_i_28_n_0\,
      I4 => plusOp1_out(1),
      I5 => \plusOp__93_carry_i_29_n_0\,
      O => \plusOp__93_carry_i_8_n_0\
    );
\plusOp__93_carry_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp__93_carry__1_i_10_n_0\,
      I1 => plusOp1_out(3),
      I2 => \plusOp__93_carry_i_30_n_0\,
      O => \plusOp__93_carry_i_9_n_0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2 downto 0) => NLW_plusOp_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b3_n_0,
      DI(2) => g0_b2_n_0,
      DI(1) => g0_b1_n_0,
      DI(0) => g0_b0_n_0,
      O(3 downto 0) => plusOp1_out(3 downto 0),
      S(3) => plusOp_carry_i_1_n_0,
      S(2) => plusOp_carry_i_2_n_0,
      S(1) => plusOp_carry_i_3_n_0,
      S(0) => plusOp_carry_i_4_n_0
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b7_n_0,
      DI(2) => g0_b6_n_0,
      DI(1) => g0_b5_n_0,
      DI(0) => g0_b4_n_0,
      O(3 downto 0) => plusOp1_out(7 downto 4),
      S(3) => \plusOp_carry__0_i_1_n_0\,
      S(2) => \plusOp_carry__0_i_2_n_0\,
      S(1) => \plusOp_carry__0_i_3_n_0\,
      S(0) => \plusOp_carry__0_i_4_n_0\
    );
\plusOp_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_5_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_6_n_0\,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => \plusOp_carry__0_i_7_n_0\,
      I5 => g0_b7_n_0,
      O => \plusOp_carry__0_i_1_n_0\
    );
\plusOp_carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__2_i_7_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_22_n_0\,
      O => \plusOp_carry__0_i_10_n_0\
    );
\plusOp_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => plusOp_carry_i_18_n_0,
      I1 => plusOp_carry_i_19_n_0,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => plusOp_carry_i_20_n_0,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_21_n_0,
      O => \plusOp_carry__0_i_11_n_0\
    );
\plusOp_carry__0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_23_n_0\,
      I1 => \b_reg_reg_n_0_[1]\,
      I2 => \plusOp_carry__0_i_17_n_0\,
      I3 => plusOp_carry_i_34_n_0,
      I4 => \b_reg_reg_n_0_[2]\,
      O => \plusOp_carry__0_i_12_n_0\
    );
\plusOp_carry__0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__2_i_9_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_24_n_0\,
      O => \plusOp_carry__0_i_13_n_0\
    );
\plusOp_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => plusOp_carry_i_26_n_0,
      I1 => plusOp_carry_i_27_n_0,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => plusOp_carry_i_28_n_0,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_29_n_0,
      O => \plusOp_carry__0_i_14_n_0\
    );
\plusOp_carry__0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp_carry_i_37_n_0,
      I1 => \b_reg_reg_n_0_[2]\,
      I2 => \plusOp_carry__0_i_25_n_0\,
      O => \plusOp_carry__0_i_15_n_0\
    );
\plusOp_carry__0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__2_i_11_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_26_n_0\,
      O => \plusOp_carry__0_i_16_n_0\
    );
\plusOp_carry__0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[4]\,
      I1 => \b_reg_reg_n_0_[4]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[5]\,
      I4 => \b_reg_reg_n_0_[5]\,
      O => \plusOp_carry__0_i_17_n_0\
    );
\plusOp_carry__0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[6]\,
      I1 => \b_reg_reg_n_0_[6]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[7]\,
      I4 => \b_reg_reg_n_0_[7]\,
      O => \plusOp_carry__0_i_18_n_0\
    );
\plusOp_carry__0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp_carry__1_i_13_n_0\,
      I1 => \plusOp_carry__1_i_14_n_0\,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => \plusOp_carry__2_i_16_n_0\,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_39_n_0,
      O => \plusOp_carry__0_i_19_n_0\
    );
\plusOp_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_8_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_9_n_0\,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => \plusOp_carry__0_i_10_n_0\,
      I5 => g0_b6_n_0,
      O => \plusOp_carry__0_i_2_n_0\
    );
\plusOp_carry__0_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[3]\,
      I1 => \a_reg_reg_n_0_[3]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[4]\,
      I4 => \b_reg_reg_n_0_[4]\,
      O => \plusOp_carry__0_i_20_n_0\
    );
\plusOp_carry__0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[5]\,
      I1 => \b_reg_reg_n_0_[5]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[6]\,
      I4 => \b_reg_reg_n_0_[6]\,
      O => \plusOp_carry__0_i_21_n_0\
    );
\plusOp_carry__0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => plusOp_carry_i_41_n_0,
      I1 => plusOp_carry_i_36_n_0,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => plusOp_carry_i_25_n_0,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_26_n_0,
      O => \plusOp_carry__0_i_22_n_0\
    );
\plusOp_carry__0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[2]\,
      I1 => \a_reg_reg_n_0_[2]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \b_reg_reg_n_0_[3]\,
      I4 => \a_reg_reg_n_0_[3]\,
      O => \plusOp_carry__0_i_23_n_0\
    );
\plusOp_carry__0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => plusOp_carry_i_39_n_0,
      I1 => \plusOp_carry__2_i_13_n_0\,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => plusOp_carry_i_33_n_0,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_17_n_0,
      O => \plusOp_carry__0_i_24_n_0\
    );
\plusOp_carry__0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4774FFFF47740000"
    )
        port map (
      I0 => \a_reg_reg_n_0_[1]\,
      I1 => \b_reg_reg_n_0_[0]\,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => \a_reg_reg_n_0_[2]\,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => \plusOp_carry__0_i_20_n_0\,
      O => \plusOp_carry__0_i_25_n_0\
    );
\plusOp_carry__0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp_carry__2_i_15_n_0\,
      I1 => plusOp_carry_i_41_n_0,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => plusOp_carry_i_36_n_0,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_25_n_0,
      O => \plusOp_carry__0_i_26_n_0\
    );
\plusOp_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_11_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_12_n_0\,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => \plusOp_carry__0_i_13_n_0\,
      I5 => g0_b5_n_0,
      O => \plusOp_carry__0_i_3_n_0\
    );
\plusOp_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_14_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_15_n_0\,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => \plusOp_carry__0_i_16_n_0\,
      I5 => g0_b4_n_0,
      O => \plusOp_carry__0_i_4_n_0\
    );
\plusOp_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => plusOp_carry_i_19_n_0,
      I1 => plusOp_carry_i_20_n_0,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => plusOp_carry_i_21_n_0,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_22_n_0,
      O => \plusOp_carry__0_i_5_n_0\
    );
\plusOp_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_17_n_0\,
      I1 => \b_reg_reg_n_0_[1]\,
      I2 => \plusOp_carry__0_i_18_n_0\,
      I3 => plusOp_carry_i_23_n_0,
      I4 => \b_reg_reg_n_0_[2]\,
      O => \plusOp_carry__0_i_6_n_0\
    );
\plusOp_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_19_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__2_i_5_n_0\,
      O => \plusOp_carry__0_i_7_n_0\
    );
\plusOp_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => plusOp_carry_i_27_n_0,
      I1 => plusOp_carry_i_28_n_0,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => plusOp_carry_i_29_n_0,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_30_n_0,
      O => \plusOp_carry__0_i_8_n_0\
    );
\plusOp_carry__0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_20_n_0\,
      I1 => \b_reg_reg_n_0_[1]\,
      I2 => \plusOp_carry__0_i_21_n_0\,
      I3 => plusOp_carry_i_31_n_0,
      I4 => \b_reg_reg_n_0_[2]\,
      O => \plusOp_carry__0_i_9_n_0\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b11_n_0,
      DI(2) => g0_b10_n_0,
      DI(1) => g0_b9_n_0,
      DI(0) => g0_b8_n_0,
      O(3 downto 0) => plusOp1_out(11 downto 8),
      S(3) => \plusOp_carry__1_i_1_n_0\,
      S(2) => \plusOp_carry__1_i_2_n_0\,
      S(1) => \plusOp_carry__1_i_3_n_0\,
      S(0) => \plusOp_carry__1_i_4_n_0\
    );
\plusOp_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => plusOp_carry_i_6_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__1_i_5_n_0\,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => \plusOp_carry__1_i_6_n_0\,
      I5 => g0_b11_n_0,
      O => \plusOp_carry__1_i_1_n_0\
    );
\plusOp_carry__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp_carry_i_35_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_11_n_0,
      O => \plusOp_carry__1_i_10_n_0\
    );
\plusOp_carry__1_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_21_n_0\,
      I1 => \b_reg_reg_n_0_[1]\,
      I2 => \plusOp_carry__1_i_15_n_0\,
      I3 => \plusOp_carry__0_i_25_n_0\,
      I4 => \b_reg_reg_n_0_[2]\,
      O => \plusOp_carry__1_i_11_n_0\
    );
\plusOp_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp_carry_i_38_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_14_n_0,
      O => \plusOp_carry__1_i_12_n_0\
    );
\plusOp_carry__1_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[8]\,
      I1 => \b_reg_reg_n_0_[8]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[9]\,
      I4 => \b_reg_reg_n_0_[9]\,
      O => \plusOp_carry__1_i_13_n_0\
    );
\plusOp_carry__1_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[10]\,
      I1 => \b_reg_reg_n_0_[10]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[11]\,
      I4 => \b_reg_reg_n_0_[11]\,
      O => \plusOp_carry__1_i_14_n_0\
    );
\plusOp_carry__1_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[7]\,
      I1 => \b_reg_reg_n_0_[7]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[8]\,
      I4 => \b_reg_reg_n_0_[8]\,
      O => \plusOp_carry__1_i_15_n_0\
    );
\plusOp_carry__1_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[9]\,
      I1 => \b_reg_reg_n_0_[9]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[10]\,
      I4 => \b_reg_reg_n_0_[10]\,
      O => \plusOp_carry__1_i_16_n_0\
    );
\plusOp_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => plusOp_carry_i_9_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__1_i_7_n_0\,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => \plusOp_carry__1_i_8_n_0\,
      I5 => g0_b10_n_0,
      O => \plusOp_carry__1_i_2_n_0\
    );
\plusOp_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => plusOp_carry_i_12_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__1_i_9_n_0\,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => \plusOp_carry__1_i_10_n_0\,
      I5 => g0_b9_n_0,
      O => \plusOp_carry__1_i_3_n_0\
    );
\plusOp_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => plusOp_carry_i_15_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__1_i_11_n_0\,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => \plusOp_carry__1_i_12_n_0\,
      I5 => g0_b8_n_0,
      O => \plusOp_carry__1_i_4_n_0\
    );
\plusOp_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp_carry__0_i_17_n_0\,
      I1 => \plusOp_carry__0_i_18_n_0\,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => \plusOp_carry__1_i_13_n_0\,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => \plusOp_carry__1_i_14_n_0\,
      O => \plusOp_carry__1_i_5_n_0\
    );
\plusOp_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp_carry_i_24_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_5_n_0,
      O => \plusOp_carry__1_i_6_n_0\
    );
\plusOp_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp_carry__0_i_20_n_0\,
      I1 => \plusOp_carry__0_i_21_n_0\,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => \plusOp_carry__1_i_15_n_0\,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => \plusOp_carry__1_i_16_n_0\,
      O => \plusOp_carry__1_i_7_n_0\
    );
\plusOp_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => plusOp_carry_i_32_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_8_n_0,
      O => \plusOp_carry__1_i_8_n_0\
    );
\plusOp_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp_carry__0_i_23_n_0\,
      I1 => \plusOp_carry__0_i_17_n_0\,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => \plusOp_carry__0_i_18_n_0\,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => \plusOp_carry__1_i_13_n_0\,
      O => \plusOp_carry__1_i_9_n_0\
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b15_n_0,
      DI(2) => g0_b14_n_0,
      DI(1) => g0_b13_n_0,
      DI(0) => g0_b12_n_0,
      O(3 downto 0) => plusOp1_out(15 downto 12),
      S(3) => \plusOp_carry__2_i_1_n_0\,
      S(2) => \plusOp_carry__2_i_2_n_0\,
      S(1) => \plusOp_carry__2_i_3_n_0\,
      S(0) => \plusOp_carry__2_i_4_n_0\
    );
\plusOp_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp_carry__2_i_5_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_5_n_0\,
      I3 => \plusOp_carry__2_i_6_n_0\,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b15_n_0,
      O => \plusOp_carry__2_i_1_n_0\
    );
\plusOp_carry__2_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_24_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_11_n_0\,
      O => \plusOp_carry__2_i_10_n_0\
    );
\plusOp_carry__2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp_carry__0_i_21_n_0\,
      I1 => \plusOp_carry__1_i_15_n_0\,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => \plusOp_carry__1_i_16_n_0\,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => \plusOp_carry__2_i_14_n_0\,
      O => \plusOp_carry__2_i_11_n_0\
    );
\plusOp_carry__2_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_26_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_14_n_0\,
      O => \plusOp_carry__2_i_12_n_0\
    );
\plusOp_carry__2_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[16]\,
      I1 => \b_reg_reg_n_0_[16]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[17]\,
      I4 => \b_reg_reg_n_0_[17]\,
      O => \plusOp_carry__2_i_13_n_0\
    );
\plusOp_carry__2_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[11]\,
      I1 => \b_reg_reg_n_0_[11]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[12]\,
      I4 => \b_reg_reg_n_0_[12]\,
      O => \plusOp_carry__2_i_14_n_0\
    );
\plusOp_carry__2_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[13]\,
      I1 => \b_reg_reg_n_0_[13]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[14]\,
      I4 => \b_reg_reg_n_0_[14]\,
      O => \plusOp_carry__2_i_15_n_0\
    );
\plusOp_carry__2_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[12]\,
      I1 => \b_reg_reg_n_0_[12]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[13]\,
      I4 => \b_reg_reg_n_0_[13]\,
      O => \plusOp_carry__2_i_16_n_0\
    );
\plusOp_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_9_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__2_i_7_n_0\,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => \plusOp_carry__2_i_8_n_0\,
      I5 => g0_b14_n_0,
      O => \plusOp_carry__2_i_2_n_0\
    );
\plusOp_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_12_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__2_i_9_n_0\,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => \plusOp_carry__2_i_10_n_0\,
      I5 => g0_b13_n_0,
      O => \plusOp_carry__2_i_3_n_0\
    );
\plusOp_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_15_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__2_i_11_n_0\,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => \plusOp_carry__2_i_12_n_0\,
      I5 => g0_b12_n_0,
      O => \plusOp_carry__2_i_4_n_0\
    );
\plusOp_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp_carry__2_i_13_n_0\,
      I1 => plusOp_carry_i_33_n_0,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => plusOp_carry_i_17_n_0,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_18_n_0,
      O => \plusOp_carry__2_i_5_n_0\
    );
\plusOp_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_6_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_19_n_0\,
      O => \plusOp_carry__2_i_6_n_0\
    );
\plusOp_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp_carry__1_i_15_n_0\,
      I1 => \plusOp_carry__1_i_16_n_0\,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => \plusOp_carry__2_i_14_n_0\,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => \plusOp_carry__2_i_15_n_0\,
      O => \plusOp_carry__2_i_7_n_0\
    );
\plusOp_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__0_i_22_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_8_n_0\,
      O => \plusOp_carry__2_i_8_n_0\
    );
\plusOp_carry__2_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp_carry__0_i_18_n_0\,
      I1 => \plusOp_carry__1_i_13_n_0\,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => \plusOp_carry__1_i_14_n_0\,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => \plusOp_carry__2_i_16_n_0\,
      O => \plusOp_carry__2_i_9_n_0\
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b19_n_0,
      DI(2) => g0_b18_n_0,
      DI(1) => g0_b17_n_0,
      DI(0) => g0_b16_n_0,
      O(3 downto 0) => plusOp1_out(19 downto 16),
      S(3) => \plusOp_carry__3_i_1_n_0\,
      S(2) => \plusOp_carry__3_i_2_n_0\,
      S(1) => \plusOp_carry__3_i_3_n_0\,
      S(0) => \plusOp_carry__3_i_4_n_0\
    );
\plusOp_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => plusOp_carry_i_5_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_6_n_0,
      I3 => plusOp_carry_i_7_n_0,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b19_n_0,
      O => \plusOp_carry__3_i_1_n_0\
    );
\plusOp_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => plusOp_carry_i_8_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_9_n_0,
      I3 => plusOp_carry_i_10_n_0,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b18_n_0,
      O => \plusOp_carry__3_i_2_n_0\
    );
\plusOp_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => plusOp_carry_i_11_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_12_n_0,
      I3 => plusOp_carry_i_13_n_0,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b17_n_0,
      O => \plusOp_carry__3_i_3_n_0\
    );
\plusOp_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => plusOp_carry_i_14_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_15_n_0,
      I3 => plusOp_carry_i_16_n_0,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b16_n_0,
      O => \plusOp_carry__3_i_4_n_0\
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3) => \plusOp_carry__4_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b23_n_0,
      DI(2) => g0_b22_n_0,
      DI(1) => g0_b21_n_0,
      DI(0) => g0_b20_n_0,
      O(3 downto 0) => plusOp1_out(23 downto 20),
      S(3) => \plusOp_carry__4_i_1_n_0\,
      S(2) => \plusOp_carry__4_i_2_n_0\,
      S(1) => \plusOp_carry__4_i_3_n_0\,
      S(0) => \plusOp_carry__4_i_4_n_0\
    );
\plusOp_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp_carry__0_i_5_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_6_n_0\,
      I3 => \plusOp_carry__0_i_7_n_0\,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b23_n_0,
      O => \plusOp_carry__4_i_1_n_0\
    );
\plusOp_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp_carry__0_i_8_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_9_n_0\,
      I3 => \plusOp_carry__0_i_10_n_0\,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b22_n_0,
      O => \plusOp_carry__4_i_2_n_0\
    );
\plusOp_carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp_carry__0_i_11_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_12_n_0\,
      I3 => \plusOp_carry__0_i_13_n_0\,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b21_n_0,
      O => \plusOp_carry__4_i_3_n_0\
    );
\plusOp_carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp_carry__0_i_14_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_15_n_0\,
      I3 => \plusOp_carry__0_i_16_n_0\,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b20_n_0,
      O => \plusOp_carry__4_i_4_n_0\
    );
\plusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__4_n_0\,
      CO(3) => \plusOp_carry__5_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => g0_b27_n_0,
      DI(2) => g0_b26_n_0,
      DI(1) => g0_b25_n_0,
      DI(0) => g0_b24_n_0,
      O(3 downto 0) => plusOp1_out(27 downto 24),
      S(3) => \plusOp_carry__5_i_1_n_0\,
      S(2) => \plusOp_carry__5_i_2_n_0\,
      S(1) => \plusOp_carry__5_i_3_n_0\,
      S(0) => \plusOp_carry__5_i_4_n_0\
    );
\plusOp_carry__5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => plusOp_carry_i_6_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__1_i_5_n_0\,
      I3 => \plusOp_carry__1_i_6_n_0\,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b27_n_0,
      O => \plusOp_carry__5_i_1_n_0\
    );
\plusOp_carry__5_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => plusOp_carry_i_9_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__1_i_7_n_0\,
      I3 => \plusOp_carry__1_i_8_n_0\,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b26_n_0,
      O => \plusOp_carry__5_i_2_n_0\
    );
\plusOp_carry__5_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => plusOp_carry_i_12_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__1_i_9_n_0\,
      I3 => \plusOp_carry__1_i_10_n_0\,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b25_n_0,
      O => \plusOp_carry__5_i_3_n_0\
    );
\plusOp_carry__5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => plusOp_carry_i_15_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__1_i_11_n_0\,
      I3 => \plusOp_carry__1_i_12_n_0\,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b24_n_0,
      O => \plusOp_carry__5_i_4_n_0\
    );
\plusOp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__5_n_0\,
      CO(3 downto 0) => \NLW_plusOp_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => g0_b30_n_0,
      DI(1) => g0_b29_n_0,
      DI(0) => g0_b28_n_0,
      O(3 downto 0) => plusOp1_out(31 downto 28),
      S(3) => \plusOp_carry__6_i_1_n_0\,
      S(2) => \plusOp_carry__6_i_2_n_0\,
      S(1) => \plusOp_carry__6_i_3_n_0\,
      S(0) => \plusOp_carry__6_i_4_n_0\
    );
\plusOp_carry__6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF47B8FF0047B8"
    )
        port map (
      I0 => \plusOp_carry__2_i_5_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__0_i_5_n_0\,
      I3 => g0_b31_n_0,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => \plusOp_carry__2_i_6_n_0\,
      O => \plusOp_carry__6_i_1_n_0\
    );
\plusOp_carry__6_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp_carry__0_i_9_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__2_i_7_n_0\,
      I3 => \plusOp_carry__2_i_8_n_0\,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b30_n_0,
      O => \plusOp_carry__6_i_2_n_0\
    );
\plusOp_carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp_carry__0_i_12_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__2_i_9_n_0\,
      I3 => \plusOp_carry__2_i_10_n_0\,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b29_n_0,
      O => \plusOp_carry__6_i_3_n_0\
    );
\plusOp_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474700FFB8B8FF00"
    )
        port map (
      I0 => \plusOp_carry__0_i_15_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => \plusOp_carry__2_i_11_n_0\,
      I3 => \plusOp_carry__2_i_12_n_0\,
      I4 => \b_reg_reg_n_0_[4]\,
      I5 => g0_b28_n_0,
      O => \plusOp_carry__6_i_4_n_0\
    );
plusOp_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => plusOp_carry_i_5_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_6_n_0,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => plusOp_carry_i_7_n_0,
      I5 => g0_b3_n_0,
      O => plusOp_carry_i_1_n_0
    );
plusOp_carry_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__1_i_7_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_32_n_0,
      O => plusOp_carry_i_10_n_0
    );
plusOp_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => plusOp_carry_i_33_n_0,
      I1 => plusOp_carry_i_17_n_0,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => plusOp_carry_i_18_n_0,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_19_n_0,
      O => plusOp_carry_i_11_n_0
    );
plusOp_carry_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => plusOp_carry_i_20_n_0,
      I1 => \b_reg_reg_n_0_[1]\,
      I2 => plusOp_carry_i_21_n_0,
      I3 => \b_reg_reg_n_0_[2]\,
      I4 => plusOp_carry_i_34_n_0,
      O => plusOp_carry_i_12_n_0
    );
plusOp_carry_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__1_i_9_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_35_n_0,
      O => plusOp_carry_i_13_n_0
    );
plusOp_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => plusOp_carry_i_36_n_0,
      I1 => plusOp_carry_i_25_n_0,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => plusOp_carry_i_26_n_0,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_27_n_0,
      O => plusOp_carry_i_14_n_0
    );
plusOp_carry_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => plusOp_carry_i_28_n_0,
      I1 => \b_reg_reg_n_0_[1]\,
      I2 => plusOp_carry_i_29_n_0,
      I3 => \b_reg_reg_n_0_[2]\,
      I4 => plusOp_carry_i_37_n_0,
      O => plusOp_carry_i_15_n_0
    );
plusOp_carry_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__1_i_11_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_38_n_0,
      O => plusOp_carry_i_16_n_0
    );
plusOp_carry_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[20]\,
      I1 => \b_reg_reg_n_0_[20]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[21]\,
      I4 => \b_reg_reg_n_0_[21]\,
      O => plusOp_carry_i_17_n_0
    );
plusOp_carry_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[22]\,
      I1 => \b_reg_reg_n_0_[22]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[23]\,
      I4 => \b_reg_reg_n_0_[23]\,
      O => plusOp_carry_i_18_n_0
    );
plusOp_carry_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[24]\,
      I1 => \b_reg_reg_n_0_[24]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[25]\,
      I4 => \b_reg_reg_n_0_[25]\,
      O => plusOp_carry_i_19_n_0
    );
plusOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => plusOp_carry_i_8_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_9_n_0,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => plusOp_carry_i_10_n_0,
      I5 => g0_b2_n_0,
      O => plusOp_carry_i_2_n_0
    );
plusOp_carry_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[26]\,
      I1 => \b_reg_reg_n_0_[26]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[27]\,
      I4 => \b_reg_reg_n_0_[27]\,
      O => plusOp_carry_i_20_n_0
    );
plusOp_carry_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[28]\,
      I1 => \b_reg_reg_n_0_[28]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[29]\,
      I4 => \b_reg_reg_n_0_[29]\,
      O => plusOp_carry_i_21_n_0
    );
plusOp_carry_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[30]\,
      I1 => \b_reg_reg_n_0_[30]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[31]\,
      I4 => \b_reg_reg_n_0_[31]\,
      O => plusOp_carry_i_22_n_0
    );
plusOp_carry_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47FF4700"
    )
        port map (
      I0 => \a_reg_reg_n_0_[0]\,
      I1 => \b_reg_reg_n_0_[0]\,
      I2 => \a_reg_reg_n_0_[1]\,
      I3 => \b_reg_reg_n_0_[1]\,
      I4 => \plusOp_carry__0_i_23_n_0\,
      O => plusOp_carry_i_23_n_0
    );
plusOp_carry_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp_carry__2_i_16_n_0\,
      I1 => plusOp_carry_i_39_n_0,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => \plusOp_carry__2_i_13_n_0\,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_33_n_0,
      O => plusOp_carry_i_24_n_0
    );
plusOp_carry_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[19]\,
      I1 => \b_reg_reg_n_0_[19]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[20]\,
      I4 => \b_reg_reg_n_0_[20]\,
      O => plusOp_carry_i_25_n_0
    );
plusOp_carry_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[21]\,
      I1 => \b_reg_reg_n_0_[21]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[22]\,
      I4 => \b_reg_reg_n_0_[22]\,
      O => plusOp_carry_i_26_n_0
    );
plusOp_carry_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[23]\,
      I1 => \b_reg_reg_n_0_[23]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[24]\,
      I4 => \b_reg_reg_n_0_[24]\,
      O => plusOp_carry_i_27_n_0
    );
plusOp_carry_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[25]\,
      I1 => \b_reg_reg_n_0_[25]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[26]\,
      I4 => \b_reg_reg_n_0_[26]\,
      O => plusOp_carry_i_28_n_0
    );
plusOp_carry_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[27]\,
      I1 => \b_reg_reg_n_0_[27]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[28]\,
      I4 => \b_reg_reg_n_0_[28]\,
      O => plusOp_carry_i_29_n_0
    );
plusOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => plusOp_carry_i_11_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_12_n_0,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => plusOp_carry_i_13_n_0,
      I5 => g0_b1_n_0,
      O => plusOp_carry_i_3_n_0
    );
plusOp_carry_i_30: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[29]\,
      I1 => \b_reg_reg_n_0_[29]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[30]\,
      I4 => \b_reg_reg_n_0_[30]\,
      O => plusOp_carry_i_30_n_0
    );
plusOp_carry_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F60FFFF6F600000"
    )
        port map (
      I0 => \a_reg_reg_n_0_[31]\,
      I1 => \b_reg_reg_n_0_[31]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[0]\,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_40_n_0,
      O => plusOp_carry_i_31_n_0
    );
plusOp_carry_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp_carry__2_i_14_n_0\,
      I1 => \plusOp_carry__2_i_15_n_0\,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => plusOp_carry_i_41_n_0,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_36_n_0,
      O => plusOp_carry_i_32_n_0
    );
plusOp_carry_i_33: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[18]\,
      I1 => \b_reg_reg_n_0_[18]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[19]\,
      I4 => \b_reg_reg_n_0_[19]\,
      O => plusOp_carry_i_33_n_0
    );
plusOp_carry_i_34: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => plusOp_carry_i_22_n_0,
      I1 => \b_reg_reg_n_0_[1]\,
      I2 => \a_reg_reg_n_0_[0]\,
      I3 => \b_reg_reg_n_0_[0]\,
      I4 => \a_reg_reg_n_0_[1]\,
      O => plusOp_carry_i_34_n_0
    );
plusOp_carry_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp_carry__1_i_14_n_0\,
      I1 => \plusOp_carry__2_i_16_n_0\,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => plusOp_carry_i_39_n_0,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => \plusOp_carry__2_i_13_n_0\,
      O => plusOp_carry_i_35_n_0
    );
plusOp_carry_i_36: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[17]\,
      I1 => \b_reg_reg_n_0_[17]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[18]\,
      I4 => \b_reg_reg_n_0_[18]\,
      O => plusOp_carry_i_36_n_0
    );
plusOp_carry_i_37: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8BBBB8BB88888"
    )
        port map (
      I0 => plusOp_carry_i_30_n_0,
      I1 => \b_reg_reg_n_0_[1]\,
      I2 => \a_reg_reg_n_0_[31]\,
      I3 => \b_reg_reg_n_0_[31]\,
      I4 => \b_reg_reg_n_0_[0]\,
      I5 => \a_reg_reg_n_0_[0]\,
      O => plusOp_carry_i_37_n_0
    );
plusOp_carry_i_38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \plusOp_carry__1_i_16_n_0\,
      I1 => \plusOp_carry__2_i_14_n_0\,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => \plusOp_carry__2_i_15_n_0\,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_41_n_0,
      O => plusOp_carry_i_38_n_0
    );
plusOp_carry_i_39: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[14]\,
      I1 => \b_reg_reg_n_0_[14]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[15]\,
      I4 => \b_reg_reg_n_0_[15]\,
      O => plusOp_carry_i_39_n_0
    );
plusOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047FF47FFB800B8"
    )
        port map (
      I0 => plusOp_carry_i_14_n_0,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_15_n_0,
      I3 => \b_reg_reg_n_0_[4]\,
      I4 => plusOp_carry_i_16_n_0,
      I5 => g0_b0_n_0,
      O => plusOp_carry_i_4_n_0
    );
plusOp_carry_i_40: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \b_reg_reg_n_0_[1]\,
      I1 => \a_reg_reg_n_0_[1]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \b_reg_reg_n_0_[2]\,
      I4 => \a_reg_reg_n_0_[2]\,
      O => plusOp_carry_i_40_n_0
    );
plusOp_carry_i_41: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \a_reg_reg_n_0_[15]\,
      I1 => \b_reg_reg_n_0_[15]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[16]\,
      I4 => \b_reg_reg_n_0_[16]\,
      O => plusOp_carry_i_41_n_0
    );
plusOp_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => plusOp_carry_i_17_n_0,
      I1 => plusOp_carry_i_18_n_0,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => plusOp_carry_i_19_n_0,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_20_n_0,
      O => plusOp_carry_i_5_n_0
    );
plusOp_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => plusOp_carry_i_21_n_0,
      I1 => \b_reg_reg_n_0_[1]\,
      I2 => plusOp_carry_i_22_n_0,
      I3 => \b_reg_reg_n_0_[2]\,
      I4 => plusOp_carry_i_23_n_0,
      O => plusOp_carry_i_6_n_0
    );
plusOp_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \plusOp_carry__1_i_5_n_0\,
      I1 => \b_reg_reg_n_0_[3]\,
      I2 => plusOp_carry_i_24_n_0,
      O => plusOp_carry_i_7_n_0
    );
plusOp_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => plusOp_carry_i_25_n_0,
      I1 => plusOp_carry_i_26_n_0,
      I2 => \b_reg_reg_n_0_[2]\,
      I3 => plusOp_carry_i_27_n_0,
      I4 => \b_reg_reg_n_0_[1]\,
      I5 => plusOp_carry_i_28_n_0,
      O => plusOp_carry_i_8_n_0
    );
plusOp_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => plusOp_carry_i_29_n_0,
      I1 => \b_reg_reg_n_0_[1]\,
      I2 => plusOp_carry_i_30_n_0,
      I3 => \b_reg_reg_n_0_[2]\,
      I4 => plusOp_carry_i_31_n_0,
      O => plusOp_carry_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rc5_enc_fpga is
  port (
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    io_sw : in STD_LOGIC;
    ab_sw : in STD_LOGIC;
    mod_hex : in STD_LOGIC_VECTOR ( 7 downto 0 );
    up_btn : in STD_LOGIC;
    down_btn : in STD_LOGIC;
    di_vld : in STD_LOGIC;
    do_rdy : out STD_LOGIC;
    disp_sel : out STD_LOGIC_VECTOR ( 7 downto 0 );
    disp_val : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rc5_enc_fpga : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of rc5_enc_fpga : entity is "95658c2c";
end rc5_enc_fpga;

architecture STRUCTURE of rc5_enc_fpga is
  signal L : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal L10_in : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal L13_in : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal L16_in : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal L19_in : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal L21_in : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal L23_in : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal L25_in : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal L27_in : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal L29_in : STD_LOGIC_VECTOR ( 51 downto 48 );
  signal L31_in : STD_LOGIC_VECTOR ( 55 downto 52 );
  signal L33_in : STD_LOGIC_VECTOR ( 59 downto 56 );
  signal L35_in : STD_LOGIC_VECTOR ( 63 downto 60 );
  signal L4_in : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal L7_in : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal ab_sw_IBUF : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal clr_IBUF : STD_LOGIC;
  signal di_vld_IBUF : STD_LOGIC;
  signal \din[31]_i_1_n_0\ : STD_LOGIC;
  signal \din[63]_i_1_n_0\ : STD_LOGIC;
  signal \din[63]_i_3_n_0\ : STD_LOGIC;
  signal \din_reg_n_0_[0]\ : STD_LOGIC;
  signal \din_reg_n_0_[1]\ : STD_LOGIC;
  signal \din_reg_n_0_[2]\ : STD_LOGIC;
  signal \din_reg_n_0_[3]\ : STD_LOGIC;
  signal \disp_clk[0]_i_2_n_0\ : STD_LOGIC;
  signal \disp_clk_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \disp_clk_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \disp_clk_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \disp_clk_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \disp_clk_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \disp_clk_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \disp_clk_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \disp_clk_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \disp_clk_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \disp_clk_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \disp_clk_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \disp_clk_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \disp_clk_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \disp_clk_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \disp_clk_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \disp_clk_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \disp_clk_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \disp_clk_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \disp_clk_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \disp_clk_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \disp_clk_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \disp_clk_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \disp_clk_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[0]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[10]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[11]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[12]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[13]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[14]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[15]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[1]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[2]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[3]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[4]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[5]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[6]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[7]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[8]\ : STD_LOGIC;
  signal \disp_clk_reg_n_0_[9]\ : STD_LOGIC;
  signal disp_hex : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \disp_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \disp_sel[5]_i_1_n_0\ : STD_LOGIC;
  signal \disp_sel[5]_i_2_n_0\ : STD_LOGIC;
  signal \disp_sel[6]_i_1_n_0\ : STD_LOGIC;
  signal \disp_sel[7]_i_1_n_0\ : STD_LOGIC;
  signal \disp_sel[7]_i_2_n_0\ : STD_LOGIC;
  signal disp_sel_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal disp_val_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal do_rdy_OBUF : STD_LOGIC;
  signal down_btn_IBUF : STD_LOGIC;
  signal down_buf : STD_LOGIC;
  signal io_sw_IBUF : STD_LOGIC;
  signal mod_hex_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal up_btn_IBUF : STD_LOGIC;
  signal up_buf : STD_LOGIC;
  signal uut0_n_5 : STD_LOGIC;
  signal x : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_disp_clk_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_clk_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_clk_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_disp_clk_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_disp_clk_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_clk_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \din[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \din[12]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \din[13]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \din[16]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \din[17]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \din[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \din[20]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \din[21]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \din[24]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \din[25]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \din[28]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \din[29]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \din[32]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \din[33]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \din[36]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \din[37]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \din[40]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \din[41]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \din[44]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \din[45]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \din[48]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \din[49]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \din[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \din[52]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \din[53]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \din[56]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \din[57]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \din[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \din[60]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \din[61]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \din[8]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \din[9]_i_1\ : label is "soft_lutpair25";
begin
ab_sw_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => ab_sw,
      O => ab_sw_IBUF
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
\din[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \din_reg_n_0_[0]\,
      I1 => mod_hex_IBUF(0),
      O => p_1_in(0)
    );
\din[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L4_in(10),
      I1 => L4_in(9),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(2),
      I5 => L4_in(8),
      O => p_1_in(10)
    );
\din[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L4_in(11),
      I1 => L4_in(10),
      I2 => \din[63]_i_3_n_0\,
      I3 => L4_in(8),
      I4 => mod_hex_IBUF(2),
      I5 => L4_in(9),
      O => p_1_in(11)
    );
\din[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L7_in(12),
      I1 => mod_hex_IBUF(3),
      O => p_1_in(12)
    );
\din[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L7_in(13),
      I1 => L7_in(12),
      I2 => mod_hex_IBUF(3),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(13)
    );
\din[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L7_in(14),
      I1 => L7_in(13),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(3),
      I5 => L7_in(12),
      O => p_1_in(14)
    );
\din[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L7_in(15),
      I1 => L7_in(14),
      I2 => \din[63]_i_3_n_0\,
      I3 => L7_in(12),
      I4 => mod_hex_IBUF(3),
      I5 => L7_in(13),
      O => p_1_in(15)
    );
\din[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L10_in(16),
      I1 => mod_hex_IBUF(4),
      O => p_1_in(16)
    );
\din[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L10_in(17),
      I1 => L10_in(16),
      I2 => mod_hex_IBUF(4),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(17)
    );
\din[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L10_in(18),
      I1 => L10_in(17),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(4),
      I5 => L10_in(16),
      O => p_1_in(18)
    );
\din[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L10_in(19),
      I1 => L10_in(18),
      I2 => \din[63]_i_3_n_0\,
      I3 => L10_in(16),
      I4 => mod_hex_IBUF(4),
      I5 => L10_in(17),
      O => p_1_in(19)
    );
\din[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => \din_reg_n_0_[1]\,
      I1 => \din_reg_n_0_[0]\,
      I2 => mod_hex_IBUF(0),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(1)
    );
\din[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L13_in(20),
      I1 => mod_hex_IBUF(5),
      O => p_1_in(20)
    );
\din[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L13_in(21),
      I1 => L13_in(20),
      I2 => mod_hex_IBUF(5),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(21)
    );
\din[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L13_in(22),
      I1 => L13_in(21),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(5),
      I5 => L13_in(20),
      O => p_1_in(22)
    );
\din[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L13_in(23),
      I1 => L13_in(22),
      I2 => \din[63]_i_3_n_0\,
      I3 => L13_in(20),
      I4 => mod_hex_IBUF(5),
      I5 => L13_in(21),
      O => p_1_in(23)
    );
\din[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L16_in(24),
      I1 => mod_hex_IBUF(6),
      O => p_1_in(24)
    );
\din[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L16_in(25),
      I1 => L16_in(24),
      I2 => mod_hex_IBUF(6),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(25)
    );
\din[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L16_in(26),
      I1 => L16_in(25),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(6),
      I5 => L16_in(24),
      O => p_1_in(26)
    );
\din[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L16_in(27),
      I1 => L16_in(26),
      I2 => \din[63]_i_3_n_0\,
      I3 => L16_in(24),
      I4 => mod_hex_IBUF(6),
      I5 => L16_in(25),
      O => p_1_in(27)
    );
\din[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L19_in(28),
      I1 => mod_hex_IBUF(7),
      O => p_1_in(28)
    );
\din[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L19_in(29),
      I1 => L19_in(28),
      I2 => mod_hex_IBUF(7),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(29)
    );
\din[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => \din_reg_n_0_[2]\,
      I1 => \din_reg_n_0_[1]\,
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(0),
      I5 => \din_reg_n_0_[0]\,
      O => p_1_in(2)
    );
\din[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L19_in(30),
      I1 => L19_in(29),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(7),
      I5 => L19_in(28),
      O => p_1_in(30)
    );
\din[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040444400400040"
    )
        port map (
      I0 => io_sw_IBUF,
      I1 => ab_sw_IBUF,
      I2 => up_btn_IBUF,
      I3 => up_buf,
      I4 => down_buf,
      I5 => down_btn_IBUF,
      O => \din[31]_i_1_n_0\
    );
\din[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L19_in(31),
      I1 => L19_in(30),
      I2 => \din[63]_i_3_n_0\,
      I3 => L19_in(28),
      I4 => mod_hex_IBUF(7),
      I5 => L19_in(29),
      O => p_1_in(31)
    );
\din[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L21_in(32),
      I1 => mod_hex_IBUF(0),
      O => p_1_in(32)
    );
\din[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L21_in(33),
      I1 => L21_in(32),
      I2 => mod_hex_IBUF(0),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(33)
    );
\din[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L21_in(34),
      I1 => L21_in(33),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(0),
      I5 => L21_in(32),
      O => p_1_in(34)
    );
\din[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L21_in(35),
      I1 => L21_in(34),
      I2 => \din[63]_i_3_n_0\,
      I3 => L21_in(32),
      I4 => mod_hex_IBUF(0),
      I5 => L21_in(33),
      O => p_1_in(35)
    );
\din[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L23_in(36),
      I1 => mod_hex_IBUF(1),
      O => p_1_in(36)
    );
\din[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L23_in(37),
      I1 => L23_in(36),
      I2 => mod_hex_IBUF(1),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(37)
    );
\din[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L23_in(38),
      I1 => L23_in(37),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(1),
      I5 => L23_in(36),
      O => p_1_in(38)
    );
\din[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L23_in(39),
      I1 => L23_in(38),
      I2 => \din[63]_i_3_n_0\,
      I3 => L23_in(36),
      I4 => mod_hex_IBUF(1),
      I5 => L23_in(37),
      O => p_1_in(39)
    );
\din[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => \din_reg_n_0_[3]\,
      I1 => \din_reg_n_0_[2]\,
      I2 => \din[63]_i_3_n_0\,
      I3 => \din_reg_n_0_[0]\,
      I4 => mod_hex_IBUF(0),
      I5 => \din_reg_n_0_[1]\,
      O => p_1_in(3)
    );
\din[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L25_in(40),
      I1 => mod_hex_IBUF(2),
      O => p_1_in(40)
    );
\din[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L25_in(41),
      I1 => L25_in(40),
      I2 => mod_hex_IBUF(2),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(41)
    );
\din[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L25_in(42),
      I1 => L25_in(41),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(2),
      I5 => L25_in(40),
      O => p_1_in(42)
    );
\din[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L25_in(43),
      I1 => L25_in(42),
      I2 => \din[63]_i_3_n_0\,
      I3 => L25_in(40),
      I4 => mod_hex_IBUF(2),
      I5 => L25_in(41),
      O => p_1_in(43)
    );
\din[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L27_in(44),
      I1 => mod_hex_IBUF(3),
      O => p_1_in(44)
    );
\din[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L27_in(45),
      I1 => L27_in(44),
      I2 => mod_hex_IBUF(3),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(45)
    );
\din[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L27_in(46),
      I1 => L27_in(45),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(3),
      I5 => L27_in(44),
      O => p_1_in(46)
    );
\din[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L27_in(47),
      I1 => L27_in(46),
      I2 => \din[63]_i_3_n_0\,
      I3 => L27_in(44),
      I4 => mod_hex_IBUF(3),
      I5 => L27_in(45),
      O => p_1_in(47)
    );
\din[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L29_in(48),
      I1 => mod_hex_IBUF(4),
      O => p_1_in(48)
    );
\din[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L29_in(49),
      I1 => L29_in(48),
      I2 => mod_hex_IBUF(4),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(49)
    );
\din[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(4),
      I1 => mod_hex_IBUF(1),
      O => p_1_in(4)
    );
\din[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L29_in(50),
      I1 => L29_in(49),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(4),
      I5 => L29_in(48),
      O => p_1_in(50)
    );
\din[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L29_in(51),
      I1 => L29_in(50),
      I2 => \din[63]_i_3_n_0\,
      I3 => L29_in(48),
      I4 => mod_hex_IBUF(4),
      I5 => L29_in(49),
      O => p_1_in(51)
    );
\din[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L31_in(52),
      I1 => mod_hex_IBUF(5),
      O => p_1_in(52)
    );
\din[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L31_in(53),
      I1 => L31_in(52),
      I2 => mod_hex_IBUF(5),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(53)
    );
\din[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L31_in(54),
      I1 => L31_in(53),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(5),
      I5 => L31_in(52),
      O => p_1_in(54)
    );
\din[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L31_in(55),
      I1 => L31_in(54),
      I2 => \din[63]_i_3_n_0\,
      I3 => L31_in(52),
      I4 => mod_hex_IBUF(5),
      I5 => L31_in(53),
      O => p_1_in(55)
    );
\din[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L33_in(56),
      I1 => mod_hex_IBUF(6),
      O => p_1_in(56)
    );
\din[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L33_in(57),
      I1 => L33_in(56),
      I2 => mod_hex_IBUF(6),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(57)
    );
\din[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L33_in(58),
      I1 => L33_in(57),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(6),
      I5 => L33_in(56),
      O => p_1_in(58)
    );
\din[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L33_in(59),
      I1 => L33_in(58),
      I2 => \din[63]_i_3_n_0\,
      I3 => L33_in(56),
      I4 => mod_hex_IBUF(6),
      I5 => L33_in(57),
      O => p_1_in(59)
    );
\din[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L(5),
      I1 => L(4),
      I2 => mod_hex_IBUF(1),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(5)
    );
\din[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L35_in(60),
      I1 => mod_hex_IBUF(7),
      O => p_1_in(60)
    );
\din[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L35_in(61),
      I1 => L35_in(60),
      I2 => mod_hex_IBUF(7),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(61)
    );
\din[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L35_in(62),
      I1 => L35_in(61),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(7),
      I5 => L35_in(60),
      O => p_1_in(62)
    );
\din[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010111100100010"
    )
        port map (
      I0 => ab_sw_IBUF,
      I1 => io_sw_IBUF,
      I2 => up_btn_IBUF,
      I3 => up_buf,
      I4 => down_buf,
      I5 => down_btn_IBUF,
      O => \din[63]_i_1_n_0\
    );
\din[63]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L35_in(63),
      I1 => L35_in(62),
      I2 => \din[63]_i_3_n_0\,
      I3 => L35_in(60),
      I4 => mod_hex_IBUF(7),
      I5 => L35_in(61),
      O => p_1_in(63)
    );
\din[63]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => up_btn_IBUF,
      I1 => up_buf,
      O => \din[63]_i_3_n_0\
    );
\din[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAA9A99AAAA"
    )
        port map (
      I0 => L(6),
      I1 => L(5),
      I2 => up_buf,
      I3 => up_btn_IBUF,
      I4 => mod_hex_IBUF(1),
      I5 => L(4),
      O => p_1_in(6)
    );
\din[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAA9AAAA"
    )
        port map (
      I0 => L(7),
      I1 => L(6),
      I2 => \din[63]_i_3_n_0\,
      I3 => L(4),
      I4 => mod_hex_IBUF(1),
      I5 => L(5),
      O => p_1_in(7)
    );
\din[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L4_in(8),
      I1 => mod_hex_IBUF(2),
      O => p_1_in(8)
    );
\din[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A6A9A9A"
    )
        port map (
      I0 => L4_in(9),
      I1 => L4_in(8),
      I2 => mod_hex_IBUF(2),
      I3 => up_buf,
      I4 => up_btn_IBUF,
      O => p_1_in(9)
    );
\din_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(0),
      Q => \din_reg_n_0_[0]\
    );
\din_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(10),
      Q => L4_in(10)
    );
\din_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(11),
      Q => L4_in(11)
    );
\din_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(12),
      Q => L7_in(12)
    );
\din_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(13),
      Q => L7_in(13)
    );
\din_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(14),
      Q => L7_in(14)
    );
\din_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(15),
      Q => L7_in(15)
    );
\din_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(16),
      Q => L10_in(16)
    );
\din_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(17),
      Q => L10_in(17)
    );
\din_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(18),
      Q => L10_in(18)
    );
\din_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(19),
      Q => L10_in(19)
    );
\din_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(1),
      Q => \din_reg_n_0_[1]\
    );
\din_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(20),
      Q => L13_in(20)
    );
\din_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(21),
      Q => L13_in(21)
    );
\din_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(22),
      Q => L13_in(22)
    );
\din_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(23),
      Q => L13_in(23)
    );
\din_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(24),
      Q => L16_in(24)
    );
\din_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(25),
      Q => L16_in(25)
    );
\din_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(26),
      Q => L16_in(26)
    );
\din_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(27),
      Q => L16_in(27)
    );
\din_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(28),
      Q => L19_in(28)
    );
\din_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(29),
      Q => L19_in(29)
    );
\din_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(2),
      Q => \din_reg_n_0_[2]\
    );
\din_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(30),
      Q => L19_in(30)
    );
\din_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(31),
      Q => L19_in(31)
    );
\din_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(32),
      Q => L21_in(32)
    );
\din_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(33),
      Q => L21_in(33)
    );
\din_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(34),
      Q => L21_in(34)
    );
\din_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(35),
      Q => L21_in(35)
    );
\din_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(36),
      Q => L23_in(36)
    );
\din_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(37),
      Q => L23_in(37)
    );
\din_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(38),
      Q => L23_in(38)
    );
\din_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(39),
      Q => L23_in(39)
    );
\din_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(3),
      Q => \din_reg_n_0_[3]\
    );
\din_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(40),
      Q => L25_in(40)
    );
\din_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(41),
      Q => L25_in(41)
    );
\din_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(42),
      Q => L25_in(42)
    );
\din_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(43),
      Q => L25_in(43)
    );
\din_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(44),
      Q => L27_in(44)
    );
\din_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(45),
      Q => L27_in(45)
    );
\din_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(46),
      Q => L27_in(46)
    );
\din_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(47),
      Q => L27_in(47)
    );
\din_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(48),
      Q => L29_in(48)
    );
\din_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(49),
      Q => L29_in(49)
    );
\din_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(4),
      Q => L(4)
    );
\din_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(50),
      Q => L29_in(50)
    );
\din_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(51),
      Q => L29_in(51)
    );
\din_reg[52]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(52),
      Q => L31_in(52)
    );
\din_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(53),
      Q => L31_in(53)
    );
\din_reg[54]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(54),
      Q => L31_in(54)
    );
\din_reg[55]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(55),
      Q => L31_in(55)
    );
\din_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(56),
      Q => L33_in(56)
    );
\din_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(57),
      Q => L33_in(57)
    );
\din_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(58),
      Q => L33_in(58)
    );
\din_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(59),
      Q => L33_in(59)
    );
\din_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(5),
      Q => L(5)
    );
\din_reg[60]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(60),
      Q => L35_in(60)
    );
\din_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(61),
      Q => L35_in(61)
    );
\din_reg[62]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(62),
      Q => L35_in(62)
    );
\din_reg[63]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[63]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(63),
      Q => L35_in(63)
    );
\din_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(6),
      Q => L(6)
    );
\din_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(7),
      Q => L(7)
    );
\din_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(8),
      Q => L4_in(8)
    );
\din_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \din[31]_i_1_n_0\,
      CLR => uut0_n_5,
      D => p_1_in(9),
      Q => L4_in(9)
    );
\disp_clk[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \disp_clk_reg_n_0_[0]\,
      O => \disp_clk[0]_i_2_n_0\
    );
\disp_clk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[0]_i_1_n_7\,
      Q => \disp_clk_reg_n_0_[0]\,
      R => '0'
    );
\disp_clk_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \disp_clk_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_disp_clk_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \disp_clk_reg[0]_i_1_n_4\,
      O(2) => \disp_clk_reg[0]_i_1_n_5\,
      O(1) => \disp_clk_reg[0]_i_1_n_6\,
      O(0) => \disp_clk_reg[0]_i_1_n_7\,
      S(3) => \disp_clk_reg_n_0_[3]\,
      S(2) => \disp_clk_reg_n_0_[2]\,
      S(1) => \disp_clk_reg_n_0_[1]\,
      S(0) => \disp_clk[0]_i_2_n_0\
    );
\disp_clk_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[8]_i_1_n_5\,
      Q => \disp_clk_reg_n_0_[10]\,
      R => '0'
    );
\disp_clk_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[8]_i_1_n_4\,
      Q => \disp_clk_reg_n_0_[11]\,
      R => '0'
    );
\disp_clk_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[12]_i_1_n_7\,
      Q => \disp_clk_reg_n_0_[12]\,
      R => '0'
    );
\disp_clk_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_clk_reg[8]_i_1_n_0\,
      CO(3) => \disp_clk_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_disp_clk_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_clk_reg[12]_i_1_n_4\,
      O(2) => \disp_clk_reg[12]_i_1_n_5\,
      O(1) => \disp_clk_reg[12]_i_1_n_6\,
      O(0) => \disp_clk_reg[12]_i_1_n_7\,
      S(3) => \disp_clk_reg_n_0_[15]\,
      S(2) => \disp_clk_reg_n_0_[14]\,
      S(1) => \disp_clk_reg_n_0_[13]\,
      S(0) => \disp_clk_reg_n_0_[12]\
    );
\disp_clk_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[12]_i_1_n_6\,
      Q => \disp_clk_reg_n_0_[13]\,
      R => '0'
    );
\disp_clk_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[12]_i_1_n_5\,
      Q => \disp_clk_reg_n_0_[14]\,
      R => '0'
    );
\disp_clk_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[12]_i_1_n_4\,
      Q => \disp_clk_reg_n_0_[15]\,
      R => '0'
    );
\disp_clk_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[16]_i_1_n_7\,
      Q => sel0(0),
      R => '0'
    );
\disp_clk_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_clk_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_disp_clk_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_disp_clk_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \disp_clk_reg[16]_i_1_n_5\,
      O(1) => \disp_clk_reg[16]_i_1_n_6\,
      O(0) => \disp_clk_reg[16]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => sel0(2 downto 0)
    );
\disp_clk_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[16]_i_1_n_6\,
      Q => sel0(1),
      R => '0'
    );
\disp_clk_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[16]_i_1_n_5\,
      Q => sel0(2),
      R => '0'
    );
\disp_clk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[0]_i_1_n_6\,
      Q => \disp_clk_reg_n_0_[1]\,
      R => '0'
    );
\disp_clk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[0]_i_1_n_5\,
      Q => \disp_clk_reg_n_0_[2]\,
      R => '0'
    );
\disp_clk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[0]_i_1_n_4\,
      Q => \disp_clk_reg_n_0_[3]\,
      R => '0'
    );
\disp_clk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[4]_i_1_n_7\,
      Q => \disp_clk_reg_n_0_[4]\,
      R => '0'
    );
\disp_clk_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_clk_reg[0]_i_1_n_0\,
      CO(3) => \disp_clk_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_disp_clk_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_clk_reg[4]_i_1_n_4\,
      O(2) => \disp_clk_reg[4]_i_1_n_5\,
      O(1) => \disp_clk_reg[4]_i_1_n_6\,
      O(0) => \disp_clk_reg[4]_i_1_n_7\,
      S(3) => \disp_clk_reg_n_0_[7]\,
      S(2) => \disp_clk_reg_n_0_[6]\,
      S(1) => \disp_clk_reg_n_0_[5]\,
      S(0) => \disp_clk_reg_n_0_[4]\
    );
\disp_clk_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[4]_i_1_n_6\,
      Q => \disp_clk_reg_n_0_[5]\,
      R => '0'
    );
\disp_clk_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[4]_i_1_n_5\,
      Q => \disp_clk_reg_n_0_[6]\,
      R => '0'
    );
\disp_clk_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[4]_i_1_n_4\,
      Q => \disp_clk_reg_n_0_[7]\,
      R => '0'
    );
\disp_clk_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[8]_i_1_n_7\,
      Q => \disp_clk_reg_n_0_[8]\,
      R => '0'
    );
\disp_clk_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_clk_reg[4]_i_1_n_0\,
      CO(3) => \disp_clk_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_disp_clk_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_clk_reg[8]_i_1_n_4\,
      O(2) => \disp_clk_reg[8]_i_1_n_5\,
      O(1) => \disp_clk_reg[8]_i_1_n_6\,
      O(0) => \disp_clk_reg[8]_i_1_n_7\,
      S(3) => \disp_clk_reg_n_0_[11]\,
      S(2) => \disp_clk_reg_n_0_[10]\,
      S(1) => \disp_clk_reg_n_0_[9]\,
      S(0) => \disp_clk_reg_n_0_[8]\
    );
\disp_clk_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \disp_clk_reg[8]_i_1_n_6\,
      Q => \disp_clk_reg_n_0_[9]\,
      R => '0'
    );
\disp_hex_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \disp_clk_reg_n_0_[15]\,
      CE => '1',
      D => disp_hex(0),
      Q => x(0),
      R => '0'
    );
\disp_hex_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \disp_clk_reg_n_0_[15]\,
      CE => '1',
      D => disp_hex(1),
      Q => x(1),
      R => '0'
    );
\disp_hex_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \disp_clk_reg_n_0_[15]\,
      CE => '1',
      D => disp_hex(2),
      Q => x(2),
      R => '0'
    );
\disp_hex_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \disp_clk_reg_n_0_[15]\,
      CE => '1',
      D => disp_hex(3),
      Q => x(3),
      R => '0'
    );
\disp_sel[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      O => \disp_sel[1]_i_1_n_0\
    );
\disp_sel[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(0),
      O => \disp_sel[5]_i_1_n_0\
    );
\disp_sel[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      O => \disp_sel[5]_i_2_n_0\
    );
\disp_sel[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \disp_sel[6]_i_1_n_0\
    );
\disp_sel[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(2),
      O => \disp_sel[7]_i_1_n_0\
    );
\disp_sel[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      O => \disp_sel[7]_i_2_n_0\
    );
\disp_sel_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_sel_OBUF(0),
      O => disp_sel(0)
    );
\disp_sel_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_sel_OBUF(1),
      O => disp_sel(1)
    );
\disp_sel_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_sel_OBUF(2),
      O => disp_sel(2)
    );
\disp_sel_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_sel_OBUF(3),
      O => disp_sel(3)
    );
\disp_sel_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_sel_OBUF(4),
      O => disp_sel(4)
    );
\disp_sel_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_sel_OBUF(5),
      O => disp_sel(5)
    );
\disp_sel_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_sel_OBUF(6),
      O => disp_sel(6)
    );
\disp_sel_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_sel_OBUF(7),
      O => disp_sel(7)
    );
\disp_sel_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \disp_clk_reg_n_0_[15]\,
      CE => '1',
      D => \disp_sel[1]_i_1_n_0\,
      Q => disp_sel_OBUF(0),
      S => sel0(0)
    );
\disp_sel_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \disp_clk_reg_n_0_[15]\,
      CE => '1',
      D => \disp_sel[1]_i_1_n_0\,
      Q => disp_sel_OBUF(1),
      S => \disp_sel[5]_i_1_n_0\
    );
\disp_sel_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \disp_clk_reg_n_0_[15]\,
      CE => '1',
      D => \disp_sel[6]_i_1_n_0\,
      Q => disp_sel_OBUF(2),
      S => sel0(2)
    );
\disp_sel_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \disp_clk_reg_n_0_[15]\,
      CE => '1',
      D => \disp_sel[7]_i_2_n_0\,
      Q => disp_sel_OBUF(3),
      S => sel0(2)
    );
\disp_sel_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \disp_clk_reg_n_0_[15]\,
      CE => '1',
      D => \disp_sel[5]_i_2_n_0\,
      Q => disp_sel_OBUF(4),
      S => sel0(0)
    );
\disp_sel_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \disp_clk_reg_n_0_[15]\,
      CE => '1',
      D => \disp_sel[5]_i_2_n_0\,
      Q => disp_sel_OBUF(5),
      S => \disp_sel[5]_i_1_n_0\
    );
\disp_sel_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \disp_clk_reg_n_0_[15]\,
      CE => '1',
      D => \disp_sel[6]_i_1_n_0\,
      Q => disp_sel_OBUF(6),
      S => \disp_sel[7]_i_1_n_0\
    );
\disp_sel_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \disp_clk_reg_n_0_[15]\,
      CE => '1',
      D => \disp_sel[7]_i_2_n_0\,
      Q => disp_sel_OBUF(7),
      S => \disp_sel[7]_i_1_n_0\
    );
\disp_val_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_val_OBUF(0),
      O => disp_val(0)
    );
\disp_val_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_val_OBUF(1),
      O => disp_val(1)
    );
\disp_val_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_val_OBUF(2),
      O => disp_val(2)
    );
\disp_val_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_val_OBUF(3),
      O => disp_val(3)
    );
\disp_val_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_val_OBUF(4),
      O => disp_val(4)
    );
\disp_val_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_val_OBUF(5),
      O => disp_val(5)
    );
\disp_val_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => disp_val_OBUF(6),
      O => disp_val(6)
    );
\disp_val_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => disp_val(7)
    );
do_rdy_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => do_rdy_OBUF,
      O => do_rdy
    );
down_btn_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => down_btn,
      O => down_btn_IBUF
    );
down_buf_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => down_btn_IBUF,
      Q => down_buf,
      R => '0'
    );
io_sw_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => io_sw,
      O => io_sw_IBUF
    );
\mod_hex_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mod_hex(0),
      O => mod_hex_IBUF(0)
    );
\mod_hex_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mod_hex(1),
      O => mod_hex_IBUF(1)
    );
\mod_hex_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mod_hex(2),
      O => mod_hex_IBUF(2)
    );
\mod_hex_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mod_hex(3),
      O => mod_hex_IBUF(3)
    );
\mod_hex_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mod_hex(4),
      O => mod_hex_IBUF(4)
    );
\mod_hex_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mod_hex(5),
      O => mod_hex_IBUF(5)
    );
\mod_hex_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mod_hex(6),
      O => mod_hex_IBUF(6)
    );
\mod_hex_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mod_hex(7),
      O => mod_hex_IBUF(7)
    );
up_btn_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => up_btn,
      O => up_btn_IBUF
    );
up_buf_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => up_btn_IBUF,
      Q => up_buf,
      R => '0'
    );
uut0: entity work.rc5_enc
     port map (
      CLK => clk_IBUF_BUFG,
      D(3 downto 0) => disp_hex(3 downto 0),
      Q(63 downto 60) => L35_in(63 downto 60),
      Q(59 downto 56) => L33_in(59 downto 56),
      Q(55 downto 52) => L31_in(55 downto 52),
      Q(51 downto 48) => L29_in(51 downto 48),
      Q(47 downto 44) => L27_in(47 downto 44),
      Q(43 downto 40) => L25_in(43 downto 40),
      Q(39 downto 36) => L23_in(39 downto 36),
      Q(35 downto 32) => L21_in(35 downto 32),
      Q(31 downto 28) => L19_in(31 downto 28),
      Q(27 downto 24) => L16_in(27 downto 24),
      Q(23 downto 20) => L13_in(23 downto 20),
      Q(19 downto 16) => L10_in(19 downto 16),
      Q(15 downto 12) => L7_in(15 downto 12),
      Q(11 downto 8) => L4_in(11 downto 8),
      Q(7 downto 4) => L(7 downto 4),
      Q(3) => \din_reg_n_0_[3]\,
      Q(2) => \din_reg_n_0_[2]\,
      Q(1) => \din_reg_n_0_[1]\,
      Q(0) => \din_reg_n_0_[0]\,
      \a_reg_reg[0]_0\ => uut0_n_5,
      ab_sw_IBUF => ab_sw_IBUF,
      clr_IBUF => clr_IBUF,
      di_vld_IBUF => di_vld_IBUF,
      do_rdy_OBUF => do_rdy_OBUF,
      io_sw_IBUF => io_sw_IBUF,
      sel0(2 downto 0) => sel0(2 downto 0)
    );
uut1: entity work.Hex2LED
     port map (
      Q(3 downto 0) => x(3 downto 0),
      disp_val_OBUF(6 downto 0) => disp_val_OBUF(6 downto 0)
    );
end STRUCTURE;
