-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Dec 17 18:26:14 2018
-- Host        : DESKTOP-65OAGH3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/UnFound/OneDrive -
--               nyu.edu/6463_AHD/final/final/final.sim/sim_1/impl/func/xsim/controller_tb_func_impl.vhd}
-- Design      : controller_fpga
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controller is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Match_LED_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    Data_SW_IBUF : in STD_LOGIC
  );
end controller;

architecture STRUCTURE of controller is
  signal \FSM_onehot_NextState_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NextState_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NextState_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NextState_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NextState_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NextState_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NextState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_NextState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_NextState_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_NextState_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_NextState_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_NextState_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_State_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_State_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_State_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_State_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_State_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_State_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_State_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_State_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_State_reg_n_0_[4]\ : signal is "yes";
  signal NextState : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_NextState_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_NextState_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_NextState_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_NextState_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_NextState_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_NextState_reg[5]\ : label is "LD";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[0]\ : label is "s3:001000,s1:000010,s4:010000,s5:100000,s0:000001,s2:000100";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_State_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[1]\ : label is "s3:001000,s1:000010,s4:010000,s5:100000,s0:000001,s2:000100";
  attribute KEEP of \FSM_onehot_State_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[2]\ : label is "s3:001000,s1:000010,s4:010000,s5:100000,s0:000001,s2:000100";
  attribute KEEP of \FSM_onehot_State_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[3]\ : label is "s3:001000,s1:000010,s4:010000,s5:100000,s0:000001,s2:000100";
  attribute KEEP of \FSM_onehot_State_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[4]\ : label is "s3:001000,s1:000010,s4:010000,s5:100000,s0:000001,s2:000100";
  attribute KEEP of \FSM_onehot_State_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[5]\ : label is "s3:001000,s1:000010,s4:010000,s5:100000,s0:000001,s2:000100";
  attribute KEEP of \FSM_onehot_State_reg[5]\ : label is "yes";
begin
  \out\(0) <= \^out\(0);
\FSM_onehot_NextState_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_NextState_reg[0]_i_1_n_0\,
      G => NextState,
      GE => '1',
      Q => \FSM_onehot_NextState_reg_n_0_[0]\
    );
\FSM_onehot_NextState_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => \^out\(0),
      I1 => \FSM_onehot_State_reg_n_0_[4]\,
      I2 => \FSM_onehot_State_reg_n_0_[0]\,
      I3 => Data_SW_IBUF,
      I4 => \FSM_onehot_State_reg_n_0_[1]\,
      O => \FSM_onehot_NextState_reg[0]_i_1_n_0\
    );
\FSM_onehot_NextState_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_NextState_reg[1]_i_1_n_0\,
      G => NextState,
      GE => '1',
      Q => \FSM_onehot_NextState_reg_n_0_[1]\
    );
\FSM_onehot_NextState_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[0]\,
      I1 => Data_SW_IBUF,
      I2 => \FSM_onehot_State_reg_n_0_[3]\,
      O => \FSM_onehot_NextState_reg[1]_i_1_n_0\
    );
\FSM_onehot_NextState_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_NextState_reg[2]_i_1_n_0\,
      G => NextState,
      GE => '1',
      Q => \FSM_onehot_NextState_reg_n_0_[2]\
    );
\FSM_onehot_NextState_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[2]\,
      I1 => \FSM_onehot_State_reg_n_0_[1]\,
      I2 => Data_SW_IBUF,
      I3 => \^out\(0),
      O => \FSM_onehot_NextState_reg[2]_i_1_n_0\
    );
\FSM_onehot_NextState_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_NextState_reg[3]_i_1_n_0\,
      G => NextState,
      GE => '1',
      Q => \FSM_onehot_NextState_reg_n_0_[3]\
    );
\FSM_onehot_NextState_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[2]\,
      I1 => Data_SW_IBUF,
      O => \FSM_onehot_NextState_reg[3]_i_1_n_0\
    );
\FSM_onehot_NextState_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_NextState_reg[4]_i_1_n_0\,
      G => NextState,
      GE => '1',
      Q => \FSM_onehot_NextState_reg_n_0_[4]\
    );
\FSM_onehot_NextState_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[3]\,
      I1 => Data_SW_IBUF,
      O => \FSM_onehot_NextState_reg[4]_i_1_n_0\
    );
\FSM_onehot_NextState_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_NextState_reg[5]_i_1_n_0\,
      G => NextState,
      GE => '1',
      Q => \FSM_onehot_NextState_reg_n_0_[5]\
    );
\FSM_onehot_NextState_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[4]\,
      I1 => Data_SW_IBUF,
      O => \FSM_onehot_NextState_reg[5]_i_1_n_0\
    );
\FSM_onehot_State_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_NextState_reg_n_0_[0]\,
      Q => \FSM_onehot_State_reg_n_0_[0]\,
      S => SS(0)
    );
\FSM_onehot_State_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_NextState_reg_n_0_[1]\,
      Q => \FSM_onehot_State_reg_n_0_[1]\,
      R => SS(0)
    );
\FSM_onehot_State_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_NextState_reg_n_0_[2]\,
      Q => \FSM_onehot_State_reg_n_0_[2]\,
      R => SS(0)
    );
\FSM_onehot_State_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_NextState_reg_n_0_[3]\,
      Q => \FSM_onehot_State_reg_n_0_[3]\,
      R => SS(0)
    );
\FSM_onehot_State_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_NextState_reg_n_0_[4]\,
      Q => \FSM_onehot_State_reg_n_0_[4]\,
      R => SS(0)
    );
\FSM_onehot_State_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_NextState_reg_n_0_[5]\,
      Q => \^out\(0),
      R => SS(0)
    );
\Match_LED_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[4]\,
      I1 => \FSM_onehot_State_reg_n_0_[2]\,
      I2 => \FSM_onehot_State_reg_n_0_[1]\,
      I3 => \^out\(0),
      I4 => \FSM_onehot_State_reg_n_0_[3]\,
      O => Match_LED_OBUF(0)
    );
\Match_LED_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^out\(0),
      I1 => \FSM_onehot_State_reg_n_0_[4]\,
      I2 => \FSM_onehot_State_reg_n_0_[2]\,
      I3 => \FSM_onehot_State_reg_n_0_[3]\,
      O => Match_LED_OBUF(1)
    );
\Match_LED_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[4]\,
      I1 => \FSM_onehot_State_reg_n_0_[3]\,
      I2 => \^out\(0),
      O => Match_LED_OBUF(2)
    );
\Match_LED_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[4]\,
      I1 => \^out\(0),
      O => Match_LED_OBUF(3)
    );
\__2/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^out\(0),
      I1 => \FSM_onehot_State_reg_n_0_[4]\,
      I2 => \FSM_onehot_State_reg_n_0_[1]\,
      I3 => \FSM_onehot_State_reg_n_0_[0]\,
      I4 => \FSM_onehot_State_reg_n_0_[3]\,
      I5 => \FSM_onehot_State_reg_n_0_[2]\,
      O => NextState
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controller_fpga is
  port (
    Rst : in STD_LOGIC;
    SysClk : in STD_LOGIC;
    Clk_Btn : in STD_LOGIC;
    Data_SW : in STD_LOGIC;
    Match_LED : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Detect_LED : out STD_LOGIC;
    SSEG_CA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SSEG_AN : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of controller_fpga : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of controller_fpga : entity is "97672fe0";
end controller_fpga;

architecture STRUCTURE of controller_fpga is
  signal Clk : STD_LOGIC;
  signal Clk_Btn_IBUF : STD_LOGIC;
  signal Clk_Btn_buf : STD_LOGIC;
  signal Clk_i_1_n_0 : STD_LOGIC;
  signal Clk_reg_n_0 : STD_LOGIC;
  signal Data_SW_IBUF : STD_LOGIC;
  signal DispBit : STD_LOGIC;
  signal DispBit_i_2_n_0 : STD_LOGIC;
  signal DispBit_i_3_n_0 : STD_LOGIC;
  signal \DispBits_reg_n_0_[0]\ : STD_LOGIC;
  signal \DispClk[0]_i_2_n_0\ : STD_LOGIC;
  signal \DispClk_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \DispClk_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \DispClk_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \DispClk_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \DispClk_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \DispClk_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \DispClk_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \DispClk_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \DispClk_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \DispClk_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \DispClk_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \DispClk_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \DispClk_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \DispClk_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \DispClk_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \DispClk_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \DispClk_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \DispClk_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \DispClk_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \DispClk_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \DispClk_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \DispClk_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \DispClk_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[0]\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[10]\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[11]\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[12]\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[13]\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[14]\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[1]\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[2]\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[3]\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[4]\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[5]\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[6]\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[7]\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[8]\ : STD_LOGIC;
  signal \DispClk_reg_n_0_[9]\ : STD_LOGIC;
  signal DispVld : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \DispVld[7]_i_2_n_0\ : STD_LOGIC;
  signal Match_LED_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Rst_IBUF : STD_LOGIC;
  signal \SSEG_AN[0]_i_1_n_0\ : STD_LOGIC;
  signal \SSEG_AN[1]_i_1_n_0\ : STD_LOGIC;
  signal \SSEG_AN[2]_i_1_n_0\ : STD_LOGIC;
  signal \SSEG_AN[3]_i_1_n_0\ : STD_LOGIC;
  signal \SSEG_AN[4]_i_1_n_0\ : STD_LOGIC;
  signal \SSEG_AN[5]_i_1_n_0\ : STD_LOGIC;
  signal \SSEG_AN[6]_i_1_n_0\ : STD_LOGIC;
  signal \SSEG_AN[7]_i_1_n_0\ : STD_LOGIC;
  signal \SSEG_AN[7]_i_2_n_0\ : STD_LOGIC;
  signal SSEG_AN_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SSEG_CA_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SysClk_IBUF : STD_LOGIC;
  signal SysClk_IBUF_BUFG : STD_LOGIC;
  signal controller_uut_n_0 : STD_LOGIC;
  signal data1 : STD_LOGIC;
  signal data2 : STD_LOGIC;
  signal data3 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal data5 : STD_LOGIC;
  signal data6 : STD_LOGIC;
  signal data7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_DispClk_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_DispClk_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_DispClk_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DispClk_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_DispClk_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_DispClk_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SSEG_AN[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SSEG_AN[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SSEG_AN[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \SSEG_AN[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \SSEG_AN[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SSEG_AN[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SSEG_AN[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \SSEG_AN[7]_i_2\ : label is "soft_lutpair2";
begin
Clk_Btn_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Clk_Btn,
      O => Clk_Btn_IBUF
    );
Clk_Btn_buf_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => Clk_Btn_IBUF,
      Q => Clk_Btn_buf,
      R => '0'
    );
Clk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => Clk_reg_n_0,
      I1 => Clk_Btn_buf,
      I2 => Clk_Btn_IBUF,
      O => Clk_i_1_n_0
    );
Clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => Clk_i_1_n_0,
      Q => Clk_reg_n_0,
      R => '0'
    );
Data_SW_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Data_SW,
      O => Data_SW_IBUF
    );
Detect_LED_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => controller_uut_n_0,
      O => Detect_LED
    );
DispBit_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3,
      I1 => data2,
      I2 => sel0(1),
      I3 => data1,
      I4 => sel0(0),
      I5 => \DispBits_reg_n_0_[0]\,
      O => DispBit_i_2_n_0
    );
DispBit_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7,
      I1 => data6,
      I2 => sel0(1),
      I3 => data5,
      I4 => sel0(0),
      I5 => data4,
      O => DispBit_i_3_n_0
    );
DispBit_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => DispBit,
      Q => SSEG_CA_OBUF(0),
      R => '0'
    );
DispBit_reg_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => DispBit_i_2_n_0,
      I1 => DispBit_i_3_n_0,
      O => DispBit,
      S => sel0(2)
    );
\DispBits_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_reg_n_0,
      CE => '1',
      D => Data_SW_IBUF,
      Q => \DispBits_reg_n_0_[0]\,
      R => Rst_IBUF
    );
\DispBits_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_reg_n_0,
      CE => '1',
      D => \DispBits_reg_n_0_[0]\,
      Q => data1,
      R => Rst_IBUF
    );
\DispBits_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_reg_n_0,
      CE => '1',
      D => data1,
      Q => data2,
      R => Rst_IBUF
    );
\DispBits_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_reg_n_0,
      CE => '1',
      D => data2,
      Q => data3,
      R => Rst_IBUF
    );
\DispBits_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_reg_n_0,
      CE => '1',
      D => data3,
      Q => data4,
      R => Rst_IBUF
    );
\DispBits_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_reg_n_0,
      CE => '1',
      D => data4,
      Q => data5,
      R => Rst_IBUF
    );
\DispBits_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_reg_n_0,
      CE => '1',
      D => data5,
      Q => data6,
      R => Rst_IBUF
    );
\DispBits_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_reg_n_0,
      CE => '1',
      D => data6,
      Q => data7,
      R => Rst_IBUF
    );
\DispClk[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \DispClk_reg_n_0_[0]\,
      O => \DispClk[0]_i_2_n_0\
    );
\DispClk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[0]_i_1_n_7\,
      Q => \DispClk_reg_n_0_[0]\,
      R => '0'
    );
\DispClk_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DispClk_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_DispClk_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \DispClk_reg[0]_i_1_n_4\,
      O(2) => \DispClk_reg[0]_i_1_n_5\,
      O(1) => \DispClk_reg[0]_i_1_n_6\,
      O(0) => \DispClk_reg[0]_i_1_n_7\,
      S(3) => \DispClk_reg_n_0_[3]\,
      S(2) => \DispClk_reg_n_0_[2]\,
      S(1) => \DispClk_reg_n_0_[1]\,
      S(0) => \DispClk[0]_i_2_n_0\
    );
\DispClk_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[8]_i_1_n_5\,
      Q => \DispClk_reg_n_0_[10]\,
      R => '0'
    );
\DispClk_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[8]_i_1_n_4\,
      Q => \DispClk_reg_n_0_[11]\,
      R => '0'
    );
\DispClk_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[12]_i_1_n_7\,
      Q => \DispClk_reg_n_0_[12]\,
      R => '0'
    );
\DispClk_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DispClk_reg[8]_i_1_n_0\,
      CO(3) => \DispClk_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_DispClk_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DispClk_reg[12]_i_1_n_4\,
      O(2) => \DispClk_reg[12]_i_1_n_5\,
      O(1) => \DispClk_reg[12]_i_1_n_6\,
      O(0) => \DispClk_reg[12]_i_1_n_7\,
      S(3) => Clk,
      S(2) => \DispClk_reg_n_0_[14]\,
      S(1) => \DispClk_reg_n_0_[13]\,
      S(0) => \DispClk_reg_n_0_[12]\
    );
\DispClk_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[12]_i_1_n_6\,
      Q => \DispClk_reg_n_0_[13]\,
      R => '0'
    );
\DispClk_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[12]_i_1_n_5\,
      Q => \DispClk_reg_n_0_[14]\,
      R => '0'
    );
\DispClk_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[12]_i_1_n_4\,
      Q => Clk,
      R => '0'
    );
\DispClk_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[16]_i_1_n_7\,
      Q => sel0(0),
      R => '0'
    );
\DispClk_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DispClk_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_DispClk_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_DispClk_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \DispClk_reg[16]_i_1_n_5\,
      O(1) => \DispClk_reg[16]_i_1_n_6\,
      O(0) => \DispClk_reg[16]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => sel0(2 downto 0)
    );
\DispClk_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[16]_i_1_n_6\,
      Q => sel0(1),
      R => '0'
    );
\DispClk_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[16]_i_1_n_5\,
      Q => sel0(2),
      R => '0'
    );
\DispClk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[0]_i_1_n_6\,
      Q => \DispClk_reg_n_0_[1]\,
      R => '0'
    );
\DispClk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[0]_i_1_n_5\,
      Q => \DispClk_reg_n_0_[2]\,
      R => '0'
    );
\DispClk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[0]_i_1_n_4\,
      Q => \DispClk_reg_n_0_[3]\,
      R => '0'
    );
\DispClk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[4]_i_1_n_7\,
      Q => \DispClk_reg_n_0_[4]\,
      R => '0'
    );
\DispClk_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DispClk_reg[0]_i_1_n_0\,
      CO(3) => \DispClk_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_DispClk_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DispClk_reg[4]_i_1_n_4\,
      O(2) => \DispClk_reg[4]_i_1_n_5\,
      O(1) => \DispClk_reg[4]_i_1_n_6\,
      O(0) => \DispClk_reg[4]_i_1_n_7\,
      S(3) => \DispClk_reg_n_0_[7]\,
      S(2) => \DispClk_reg_n_0_[6]\,
      S(1) => \DispClk_reg_n_0_[5]\,
      S(0) => \DispClk_reg_n_0_[4]\
    );
\DispClk_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[4]_i_1_n_6\,
      Q => \DispClk_reg_n_0_[5]\,
      R => '0'
    );
\DispClk_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[4]_i_1_n_5\,
      Q => \DispClk_reg_n_0_[6]\,
      R => '0'
    );
\DispClk_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[4]_i_1_n_4\,
      Q => \DispClk_reg_n_0_[7]\,
      R => '0'
    );
\DispClk_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[8]_i_1_n_7\,
      Q => \DispClk_reg_n_0_[8]\,
      R => '0'
    );
\DispClk_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DispClk_reg[4]_i_1_n_0\,
      CO(3) => \DispClk_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_DispClk_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DispClk_reg[8]_i_1_n_4\,
      O(2) => \DispClk_reg[8]_i_1_n_5\,
      O(1) => \DispClk_reg[8]_i_1_n_6\,
      O(0) => \DispClk_reg[8]_i_1_n_7\,
      S(3) => \DispClk_reg_n_0_[11]\,
      S(2) => \DispClk_reg_n_0_[10]\,
      S(1) => \DispClk_reg_n_0_[9]\,
      S(0) => \DispClk_reg_n_0_[8]\
    );
\DispClk_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk_IBUF_BUFG,
      CE => '1',
      D => \DispClk_reg[8]_i_1_n_6\,
      Q => \DispClk_reg_n_0_[9]\,
      R => '0'
    );
\DispVld[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => DispVld(0),
      I1 => DispVld(1),
      I2 => DispVld(2),
      I3 => DispVld(3),
      I4 => \DispVld[7]_i_2_n_0\,
      O => p_0_in
    );
\DispVld[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => DispVld(6),
      I1 => DispVld(7),
      I2 => DispVld(5),
      I3 => DispVld(4),
      O => \DispVld[7]_i_2_n_0\
    );
\DispVld_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_reg_n_0,
      CE => p_0_in,
      D => '0',
      Q => DispVld(0),
      S => Rst_IBUF
    );
\DispVld_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_reg_n_0,
      CE => p_0_in,
      D => DispVld(0),
      Q => DispVld(1),
      S => Rst_IBUF
    );
\DispVld_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_reg_n_0,
      CE => p_0_in,
      D => DispVld(1),
      Q => DispVld(2),
      S => Rst_IBUF
    );
\DispVld_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_reg_n_0,
      CE => p_0_in,
      D => DispVld(2),
      Q => DispVld(3),
      S => Rst_IBUF
    );
\DispVld_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_reg_n_0,
      CE => p_0_in,
      D => DispVld(3),
      Q => DispVld(4),
      S => Rst_IBUF
    );
\DispVld_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_reg_n_0,
      CE => p_0_in,
      D => DispVld(4),
      Q => DispVld(5),
      S => Rst_IBUF
    );
\DispVld_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_reg_n_0,
      CE => p_0_in,
      D => DispVld(5),
      Q => DispVld(6),
      S => Rst_IBUF
    );
\DispVld_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_reg_n_0,
      CE => p_0_in,
      D => DispVld(6),
      Q => DispVld(7),
      S => Rst_IBUF
    );
\Match_LED_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Match_LED_OBUF(0),
      O => Match_LED(0)
    );
\Match_LED_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Match_LED_OBUF(1),
      O => Match_LED(1)
    );
\Match_LED_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Match_LED_OBUF(2),
      O => Match_LED(2)
    );
\Match_LED_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Match_LED_OBUF(3),
      O => Match_LED(3)
    );
\Match_LED_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => controller_uut_n_0,
      O => Match_LED(4)
    );
Rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Rst,
      O => Rst_IBUF
    );
\SSEG_AN[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel0(1),
      I1 => DispVld(0),
      I2 => sel0(0),
      O => \SSEG_AN[0]_i_1_n_0\
    );
\SSEG_AN[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => DispVld(1),
      O => \SSEG_AN[1]_i_1_n_0\
    );
\SSEG_AN[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => DispVld(2),
      I1 => sel0(0),
      I2 => sel0(1),
      O => \SSEG_AN[2]_i_1_n_0\
    );
\SSEG_AN[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => sel0(0),
      I1 => DispVld(3),
      I2 => sel0(1),
      O => \SSEG_AN[3]_i_1_n_0\
    );
\SSEG_AN[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel0(1),
      I1 => DispVld(4),
      I2 => sel0(0),
      O => \SSEG_AN[4]_i_1_n_0\
    );
\SSEG_AN[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => DispVld(5),
      O => \SSEG_AN[5]_i_1_n_0\
    );
\SSEG_AN[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => DispVld(6),
      I1 => sel0(0),
      I2 => sel0(1),
      O => \SSEG_AN[6]_i_1_n_0\
    );
\SSEG_AN[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(2),
      O => \SSEG_AN[7]_i_1_n_0\
    );
\SSEG_AN[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => sel0(0),
      I1 => DispVld(7),
      I2 => sel0(1),
      O => \SSEG_AN[7]_i_2_n_0\
    );
\SSEG_AN_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SSEG_AN_OBUF(0),
      O => SSEG_AN(0)
    );
\SSEG_AN_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SSEG_AN_OBUF(1),
      O => SSEG_AN(1)
    );
\SSEG_AN_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SSEG_AN_OBUF(2),
      O => SSEG_AN(2)
    );
\SSEG_AN_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SSEG_AN_OBUF(3),
      O => SSEG_AN(3)
    );
\SSEG_AN_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SSEG_AN_OBUF(4),
      O => SSEG_AN(4)
    );
\SSEG_AN_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SSEG_AN_OBUF(5),
      O => SSEG_AN(5)
    );
\SSEG_AN_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SSEG_AN_OBUF(6),
      O => SSEG_AN(6)
    );
\SSEG_AN_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SSEG_AN_OBUF(7),
      O => SSEG_AN(7)
    );
\SSEG_AN_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \SSEG_AN[0]_i_1_n_0\,
      Q => SSEG_AN_OBUF(0),
      S => sel0(2)
    );
\SSEG_AN_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \SSEG_AN[1]_i_1_n_0\,
      Q => SSEG_AN_OBUF(1),
      S => sel0(2)
    );
\SSEG_AN_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \SSEG_AN[2]_i_1_n_0\,
      Q => SSEG_AN_OBUF(2),
      S => sel0(2)
    );
\SSEG_AN_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \SSEG_AN[3]_i_1_n_0\,
      Q => SSEG_AN_OBUF(3),
      S => sel0(2)
    );
\SSEG_AN_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \SSEG_AN[4]_i_1_n_0\,
      Q => SSEG_AN_OBUF(4),
      S => \SSEG_AN[7]_i_1_n_0\
    );
\SSEG_AN_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \SSEG_AN[5]_i_1_n_0\,
      Q => SSEG_AN_OBUF(5),
      S => \SSEG_AN[7]_i_1_n_0\
    );
\SSEG_AN_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \SSEG_AN[6]_i_1_n_0\,
      Q => SSEG_AN_OBUF(6),
      S => \SSEG_AN[7]_i_1_n_0\
    );
\SSEG_AN_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \SSEG_AN[7]_i_2_n_0\,
      Q => SSEG_AN_OBUF(7),
      S => \SSEG_AN[7]_i_1_n_0\
    );
\SSEG_CA_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SSEG_CA_OBUF(0),
      O => SSEG_CA(0)
    );
\SSEG_CA_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => SSEG_CA(1)
    );
\SSEG_CA_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => SSEG_CA(2)
    );
\SSEG_CA_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SSEG_CA_OBUF(0),
      O => SSEG_CA(3)
    );
\SSEG_CA_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SSEG_CA_OBUF(0),
      O => SSEG_CA(4)
    );
\SSEG_CA_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SSEG_CA_OBUF(0),
      O => SSEG_CA(5)
    );
\SSEG_CA_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => SSEG_CA(6)
    );
\SSEG_CA_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => SSEG_CA(7)
    );
SysClk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => SysClk_IBUF,
      O => SysClk_IBUF_BUFG
    );
SysClk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SysClk,
      O => SysClk_IBUF
    );
controller_uut: entity work.controller
     port map (
      CLK => Clk_reg_n_0,
      Data_SW_IBUF => Data_SW_IBUF,
      Match_LED_OBUF(3 downto 0) => Match_LED_OBUF(3 downto 0),
      SS(0) => Rst_IBUF,
      \out\(0) => controller_uut_n_0
    );
end STRUCTURE;
