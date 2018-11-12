-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Oct 29 19:23:37 2018
-- Host        : DESKTOP-65OAGH3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/shenc/OneDrive -
--               nyu.edu/6463_AHD/midterm/midterm.sim/sim_1/impl/func/xsim/mid_counter_tb_func_impl.vhd}
-- Design      : mid_counter_fpga
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
    seg_val_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end Hex2LED;

architecture STRUCTURE of Hex2LED is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg_val_OBUF[0]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_val_OBUF[1]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_val_OBUF[2]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg_val_OBUF[3]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg_val_OBUF[4]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg_val_OBUF[5]_inst_i_1\ : label is "soft_lutpair2";
begin
\seg_val_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => seg_val_OBUF(0)
    );
\seg_val_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      O => seg_val_OBUF(1)
    );
\seg_val_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => seg_val_OBUF(2)
    );
\seg_val_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => seg_val_OBUF(3)
    );
\seg_val_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => seg_val_OBUF(4)
    );
\seg_val_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => seg_val_OBUF(5)
    );
\seg_val_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      O => seg_val_OBUF(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mid_counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_IBUF : in STD_LOGIC;
    UP_IBUF : in STD_LOGIC;
    in0 : in STD_LOGIC
  );
end mid_counter;

architecture STRUCTURE of mid_counter is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_sequential_nextstate_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_nextstate_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_nextstate_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_nextstate_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal nextstate : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_nextstate_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_nextstate_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_nextstate_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_nextstate_reg[3]\ : label is "LD";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "s3:0110,s4:0101,s2:0111,s1:1000,s0:0000,s7:0010,s8:0001,s6:0011,s5:0100";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "s3:0110,s4:0101,s2:0111,s1:1000,s0:0000,s7:0010,s8:0001,s6:0011,s5:0100";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "s3:0110,s4:0101,s2:0111,s1:1000,s0:0000,s7:0010,s8:0001,s6:0011,s5:0100";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "s3:0110,s4:0101,s2:0111,s1:1000,s0:0000,s7:0010,s8:0001,s6:0011,s5:0100";
  attribute KEEP of \FSM_sequential_state_reg[3]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \counter_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_reg[3]\ : label is "LD";
begin
\/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EBEA"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      O => \/i__n_0\
    );
\FSM_sequential_nextstate_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_nextstate_reg[0]_i_1_n_0\,
      G => \counter_reg[3]_i_2_n_0\,
      GE => '1',
      Q => nextstate(0)
    );
\FSM_sequential_nextstate_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFE0055"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => UP_IBUF,
      O => \FSM_sequential_nextstate_reg[0]_i_1_n_0\
    );
\FSM_sequential_nextstate_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_nextstate_reg[1]_i_1_n_0\,
      G => \counter_reg[3]_i_2_n_0\,
      GE => '1',
      Q => nextstate(1)
    );
\FSM_sequential_nextstate_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAAE0550"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => UP_IBUF,
      O => \FSM_sequential_nextstate_reg[1]_i_1_n_0\
    );
\FSM_sequential_nextstate_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_nextstate_reg[2]_i_1_n_0\,
      G => \counter_reg[3]_i_2_n_0\,
      GE => '1',
      Q => nextstate(2)
    );
\FSM_sequential_nextstate_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE14EA44"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(1),
      I3 => UP_IBUF,
      I4 => state(0),
      O => \FSM_sequential_nextstate_reg[2]_i_1_n_0\
    );
\FSM_sequential_nextstate_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_nextstate_reg[3]_i_1_n_0\,
      G => \counter_reg[3]_i_2_n_0\,
      GE => '1',
      Q => nextstate(3)
    );
\FSM_sequential_nextstate_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002004"
    )
        port map (
      I0 => state(1),
      I1 => UP_IBUF,
      I2 => state(0),
      I3 => state(2),
      I4 => state(3),
      O => \FSM_sequential_nextstate_reg[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_IBUF,
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in0,
      CE => '1',
      D => nextstate(0),
      Q => state(0),
      R => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in0,
      CE => '1',
      D => nextstate(1),
      Q => state(1),
      R => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in0,
      CE => '1',
      D => nextstate(2),
      Q => state(2),
      R => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in0,
      CE => '1',
      D => nextstate(3),
      Q => state(3),
      R => \FSM_sequential_state[3]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_reg[0]_i_1_n_0\,
      G => \counter_reg[3]_i_2_n_0\,
      GE => '1',
      Q => Q(0)
    );
\counter_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CD"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => state(3),
      O => \counter_reg[0]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \/i__n_0\,
      G => \counter_reg[3]_i_2_n_0\,
      GE => '1',
      Q => Q(1)
    );
\counter_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_reg[2]_i_1_n_0\,
      G => \counter_reg[3]_i_2_n_0\,
      GE => '1',
      Q => Q(2)
    );
\counter_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => state(3),
      O => \counter_reg[2]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_reg[3]_i_1_n_0\,
      G => \counter_reg[3]_i_2_n_0\,
      GE => '1',
      Q => Q(3)
    );
\counter_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => state(3),
      O => \counter_reg[3]_i_1_n_0\
    );
\counter_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5557"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      O => \counter_reg[3]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mid_counter_fpga is
  port (
    reset : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    UP : in STD_LOGIC;
    counter : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_sel : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg_val : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mid_counter_fpga : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of mid_counter_fpga : entity is "7ac451db";
end mid_counter_fpga;

architecture STRUCTURE of mid_counter_fpga is
  signal UP_IBUF : STD_LOGIC;
  signal \c_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \c_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \c_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \c_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \c_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \c_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal c_cnt_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \c_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \c_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \c_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \c_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \c_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \c_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \c_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \c_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \c_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \c_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \c_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \c_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \c_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \c_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \c_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \c_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \c_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \c_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \c_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \c_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \c_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \c_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \c_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \c_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \c_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \c_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \c_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \c_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \c_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \c_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \c_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \c_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \c_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \c_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal clk_i_1_n_0 : STD_LOGIC;
  signal clk_i_2_n_0 : STD_LOGIC;
  signal clk_i_3_n_0 : STD_LOGIC;
  signal clk_i_4_n_0 : STD_LOGIC;
  signal clk_i_5_n_0 : STD_LOGIC;
  signal clk_reg_n_0 : STD_LOGIC;
  signal counter_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reset_IBUF : STD_LOGIC;
  signal seg_val_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sysclk_IBUF : STD_LOGIC;
  signal sysclk_IBUF_BUFG : STD_LOGIC;
  signal \NLW_c_cnt_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_c_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_c_cnt_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_c_cnt_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_c_cnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_c_cnt_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_c_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
UP_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => UP,
      O => UP_IBUF
    );
\c_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \c_cnt[0]_i_3_n_0\,
      I1 => \c_cnt[0]_i_4_n_0\,
      I2 => \c_cnt[0]_i_5_n_0\,
      I3 => \c_cnt[0]_i_6_n_0\,
      I4 => \c_cnt[0]_i_7_n_0\,
      O => clear
    );
\c_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => c_cnt_reg(18),
      I1 => c_cnt_reg(19),
      I2 => c_cnt_reg(16),
      I3 => c_cnt_reg(17),
      I4 => c_cnt_reg(21),
      I5 => c_cnt_reg(20),
      O => \c_cnt[0]_i_3_n_0\
    );
\c_cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => c_cnt_reg(24),
      I1 => c_cnt_reg(25),
      I2 => c_cnt_reg(22),
      I3 => c_cnt_reg(23),
      I4 => c_cnt_reg(27),
      I5 => c_cnt_reg(26),
      O => \c_cnt[0]_i_4_n_0\
    );
\c_cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => c_cnt_reg(13),
      I1 => c_cnt_reg(12),
      I2 => c_cnt_reg(10),
      I3 => c_cnt_reg(11),
      I4 => c_cnt_reg(15),
      I5 => c_cnt_reg(14),
      O => \c_cnt[0]_i_5_n_0\
    );
\c_cnt[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => c_cnt_reg(1),
      I1 => c_cnt_reg(0),
      I2 => c_cnt_reg(3),
      I3 => c_cnt_reg(2),
      O => \c_cnt[0]_i_6_n_0\
    );
\c_cnt[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => c_cnt_reg(6),
      I1 => c_cnt_reg(7),
      I2 => c_cnt_reg(4),
      I3 => c_cnt_reg(5),
      I4 => c_cnt_reg(9),
      I5 => c_cnt_reg(8),
      O => \c_cnt[0]_i_7_n_0\
    );
\c_cnt[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => c_cnt_reg(0),
      O => \c_cnt[0]_i_8_n_0\
    );
\c_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[0]_i_2_n_7\,
      Q => c_cnt_reg(0),
      R => clear
    );
\c_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \c_cnt_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_c_cnt_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \c_cnt_reg[0]_i_2_n_4\,
      O(2) => \c_cnt_reg[0]_i_2_n_5\,
      O(1) => \c_cnt_reg[0]_i_2_n_6\,
      O(0) => \c_cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => c_cnt_reg(3 downto 1),
      S(0) => \c_cnt[0]_i_8_n_0\
    );
\c_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[8]_i_1_n_5\,
      Q => c_cnt_reg(10),
      R => clear
    );
\c_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[8]_i_1_n_4\,
      Q => c_cnt_reg(11),
      R => clear
    );
\c_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[12]_i_1_n_7\,
      Q => c_cnt_reg(12),
      R => clear
    );
\c_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_cnt_reg[8]_i_1_n_0\,
      CO(3) => \c_cnt_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_c_cnt_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \c_cnt_reg[12]_i_1_n_4\,
      O(2) => \c_cnt_reg[12]_i_1_n_5\,
      O(1) => \c_cnt_reg[12]_i_1_n_6\,
      O(0) => \c_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => c_cnt_reg(15 downto 12)
    );
\c_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[12]_i_1_n_6\,
      Q => c_cnt_reg(13),
      R => clear
    );
\c_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[12]_i_1_n_5\,
      Q => c_cnt_reg(14),
      R => clear
    );
\c_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[12]_i_1_n_4\,
      Q => c_cnt_reg(15),
      R => clear
    );
\c_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[16]_i_1_n_7\,
      Q => c_cnt_reg(16),
      R => clear
    );
\c_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_cnt_reg[12]_i_1_n_0\,
      CO(3) => \c_cnt_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_c_cnt_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \c_cnt_reg[16]_i_1_n_4\,
      O(2) => \c_cnt_reg[16]_i_1_n_5\,
      O(1) => \c_cnt_reg[16]_i_1_n_6\,
      O(0) => \c_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => c_cnt_reg(19 downto 16)
    );
\c_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[16]_i_1_n_6\,
      Q => c_cnt_reg(17),
      R => clear
    );
\c_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[16]_i_1_n_5\,
      Q => c_cnt_reg(18),
      R => clear
    );
\c_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[16]_i_1_n_4\,
      Q => c_cnt_reg(19),
      R => clear
    );
\c_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[0]_i_2_n_6\,
      Q => c_cnt_reg(1),
      R => clear
    );
\c_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[20]_i_1_n_7\,
      Q => c_cnt_reg(20),
      R => clear
    );
\c_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_cnt_reg[16]_i_1_n_0\,
      CO(3) => \c_cnt_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_c_cnt_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \c_cnt_reg[20]_i_1_n_4\,
      O(2) => \c_cnt_reg[20]_i_1_n_5\,
      O(1) => \c_cnt_reg[20]_i_1_n_6\,
      O(0) => \c_cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => c_cnt_reg(23 downto 20)
    );
\c_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[20]_i_1_n_6\,
      Q => c_cnt_reg(21),
      R => clear
    );
\c_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[20]_i_1_n_5\,
      Q => c_cnt_reg(22),
      R => clear
    );
\c_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[20]_i_1_n_4\,
      Q => c_cnt_reg(23),
      R => clear
    );
\c_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[24]_i_1_n_7\,
      Q => c_cnt_reg(24),
      R => clear
    );
\c_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_cnt_reg[20]_i_1_n_0\,
      CO(3 downto 0) => \NLW_c_cnt_reg[24]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \c_cnt_reg[24]_i_1_n_4\,
      O(2) => \c_cnt_reg[24]_i_1_n_5\,
      O(1) => \c_cnt_reg[24]_i_1_n_6\,
      O(0) => \c_cnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => c_cnt_reg(27 downto 24)
    );
\c_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[24]_i_1_n_6\,
      Q => c_cnt_reg(25),
      R => clear
    );
\c_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[24]_i_1_n_5\,
      Q => c_cnt_reg(26),
      R => clear
    );
\c_cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[24]_i_1_n_4\,
      Q => c_cnt_reg(27),
      R => clear
    );
\c_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[0]_i_2_n_5\,
      Q => c_cnt_reg(2),
      R => clear
    );
\c_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[0]_i_2_n_4\,
      Q => c_cnt_reg(3),
      R => clear
    );
\c_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[4]_i_1_n_7\,
      Q => c_cnt_reg(4),
      R => clear
    );
\c_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_cnt_reg[0]_i_2_n_0\,
      CO(3) => \c_cnt_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_c_cnt_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \c_cnt_reg[4]_i_1_n_4\,
      O(2) => \c_cnt_reg[4]_i_1_n_5\,
      O(1) => \c_cnt_reg[4]_i_1_n_6\,
      O(0) => \c_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => c_cnt_reg(7 downto 4)
    );
\c_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[4]_i_1_n_6\,
      Q => c_cnt_reg(5),
      R => clear
    );
\c_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[4]_i_1_n_5\,
      Q => c_cnt_reg(6),
      R => clear
    );
\c_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[4]_i_1_n_4\,
      Q => c_cnt_reg(7),
      R => clear
    );
\c_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[8]_i_1_n_7\,
      Q => c_cnt_reg(8),
      R => clear
    );
\c_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_cnt_reg[4]_i_1_n_0\,
      CO(3) => \c_cnt_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_c_cnt_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \c_cnt_reg[8]_i_1_n_4\,
      O(2) => \c_cnt_reg[8]_i_1_n_5\,
      O(1) => \c_cnt_reg[8]_i_1_n_6\,
      O(0) => \c_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => c_cnt_reg(11 downto 8)
    );
\c_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => \c_cnt_reg[8]_i_1_n_6\,
      Q => c_cnt_reg(9),
      R => clear
    );
clk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => clk_reg_n_0,
      I1 => clk_i_2_n_0,
      I2 => \c_cnt[0]_i_6_n_0\,
      I3 => clk_i_3_n_0,
      I4 => clk_i_4_n_0,
      I5 => clk_i_5_n_0,
      O => clk_i_1_n_0
    );
clk_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => c_cnt_reg(6),
      I1 => c_cnt_reg(7),
      I2 => c_cnt_reg(4),
      I3 => c_cnt_reg(5),
      I4 => c_cnt_reg(9),
      I5 => c_cnt_reg(8),
      O => clk_i_2_n_0
    );
clk_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => c_cnt_reg(12),
      I1 => c_cnt_reg(13),
      I2 => c_cnt_reg(10),
      I3 => c_cnt_reg(11),
      I4 => c_cnt_reg(15),
      I5 => c_cnt_reg(14),
      O => clk_i_3_n_0
    );
clk_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => c_cnt_reg(25),
      I1 => c_cnt_reg(24),
      I2 => c_cnt_reg(22),
      I3 => c_cnt_reg(23),
      I4 => c_cnt_reg(27),
      I5 => c_cnt_reg(26),
      O => clk_i_4_n_0
    );
clk_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => c_cnt_reg(19),
      I1 => c_cnt_reg(18),
      I2 => c_cnt_reg(17),
      I3 => c_cnt_reg(16),
      I4 => c_cnt_reg(21),
      I5 => c_cnt_reg(20),
      O => clk_i_5_n_0
    );
clk_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk_IBUF_BUFG,
      CE => '1',
      D => clk_i_1_n_0,
      Q => clk_reg_n_0,
      S => clear
    );
\counter_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_OBUF(0),
      O => counter(0)
    );
\counter_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_OBUF(1),
      O => counter(1)
    );
\counter_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_OBUF(2),
      O => counter(2)
    );
\counter_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_OBUF(3),
      O => counter(3)
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
\seg_sel_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => seg_sel(0)
    );
\seg_sel_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => seg_sel(1)
    );
\seg_sel_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => seg_sel(2)
    );
\seg_sel_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => seg_sel(3)
    );
\seg_sel_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => seg_sel(4)
    );
\seg_sel_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => seg_sel(5)
    );
\seg_sel_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => seg_sel(6)
    );
\seg_sel_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => seg_sel(7)
    );
\seg_val_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_val_OBUF(0),
      O => seg_val(0)
    );
\seg_val_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_val_OBUF(1),
      O => seg_val(1)
    );
\seg_val_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_val_OBUF(2),
      O => seg_val(2)
    );
\seg_val_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_val_OBUF(3),
      O => seg_val(3)
    );
\seg_val_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_val_OBUF(4),
      O => seg_val(4)
    );
\seg_val_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_val_OBUF(5),
      O => seg_val(5)
    );
\seg_val_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_val_OBUF(6),
      O => seg_val(6)
    );
\seg_val_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => seg_val(7)
    );
sysclk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => sysclk_IBUF,
      O => sysclk_IBUF_BUFG
    );
sysclk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => sysclk,
      O => sysclk_IBUF
    );
uut0: entity work.Hex2LED
     port map (
      Q(3 downto 0) => counter_OBUF(3 downto 0),
      seg_val_OBUF(6 downto 0) => seg_val_OBUF(6 downto 0)
    );
uut1: entity work.mid_counter
     port map (
      Q(3 downto 0) => counter_OBUF(3 downto 0),
      UP_IBUF => UP_IBUF,
      in0 => clk_reg_n_0,
      reset_IBUF => reset_IBUF
    );
end STRUCTURE;
