----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:00:12 12/18/2017 
-- Design Name: 
-- Module Name:    finalExam1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity finalExam1 is
port(
	clk100mhz, press_clk, reset, data: in std_logic;
	SSEG_CA: out std_logic_vector(7 downto 0);
	SSEG_AN: out std_logic_vector(7 downto 0)
);
end finalExam1;

architecture Behavioral of finalExam1 is
TYPE	StateType IS (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12);
SIGNAL	state	:	StateType:= s0;
SIGNAL	nextState:	StateType:= s0;
signal	clk: std_logic;
signal HexNum: std_logic_vector (31 downto 0) := (others => '0');
begin

clk <= press_clk;

--State Machine
PROCESS(reset, clk)	
BEGIN
	IF(clk'EVENT AND clk='1') THEN
		IF(reset = '1') THEN
			state <= s0;
		else
			state <= nextState;
		end if;
   END IF;
END PROCESS;

--State Machine
process(state,data)
begin
	CASE state IS	
			WHEN s0 =>
				IF(data = '0') THEN  nextState <= s1; else nextState <= s0; END IF;
			WHEN s1 =>
				IF(data = '0') THEN  nextState <= s2; else nextState <= s0; END IF;
			WHEN s2 =>
				IF(data = '0') THEN  nextState <= s3; else nextState <= s0; END IF;
			WHEN s3 =>
				IF(data = '1') THEN  nextState <= s4; else nextState <= s3; END IF;
			WHEN s4 =>
				IF(data = '0') THEN  nextState <= s5; else nextState <= s0; END IF;
			WHEN s5 =>
				IF(data = '0') THEN  nextState <= s6; else nextState <= s0; END IF;
			WHEN s6 =>
				IF(data = '0') THEN  nextState <= s7; else nextState <= s0; END IF;
			WHEN s7 =>
				IF(data = '0') THEN  nextState <= s8; else nextState <= s4; END IF;
			WHEN s8 =>
				IF(data = '0') THEN  nextState <= s9; else nextState <= s4; END IF;
			WHEN s9 =>
				IF(data = '0') THEN  nextState <= s10; else nextState <= s4; END IF;
			WHEN s10 =>
				IF(data = '0') THEN  nextState <= s11; else nextState <= s4; END IF;
			WHEN s11 =>
				IF(data = '1') THEN  nextState <= s12; else nextState <= s3; END IF;
			WHEN s12 =>
				IF(data = '1') THEN  nextState <= s0; else nextState <= s5; END IF;
			when others => null;
      END CASE;
end process;
--show
process(state)
begin
	CASE state IS
		WHEN s0 =>
			HexNum(31 downto 16) <= x"0000";
			HexNum(15 downto 0) <= x"0000";
		WHEN s1 =>
			HexNum(31 downto 16) <= x"0001";
			HexNum(15 downto 0)  <= x"0000";
		WHEN s2 =>
			HexNum(31 downto 16) <= x"0002";
			HexNum(15 downto 0)  <= x"0000";
		WHEN s3 =>
			HexNum(31 downto 16) <= x"0003";
			HexNum(15 downto 0)  <= x"0000";
		WHEN s4 =>
			HexNum(31 downto 16) <= x"0004";
			HexNum(15 downto 0)  <= x"0000";
		WHEN s5 =>
			HexNum(31 downto 16) <= x"0005";
			HexNum(15 downto 0)  <= x"0000";
		WHEN s6 =>
			HexNum(31 downto 16) <= x"0006";
			HexNum(15 downto 0) <= x"0000";
		WHEN s7 =>
			HexNum(31 downto 16) <= x"0007";
			HexNum(15 downto 0)  <= x"0000";
		WHEN s8 =>
			HexNum(31 downto 16) <= x"0008";
			HexNum(15 downto 0)  <= x"0000";
		WHEN s9 =>
			HexNum(31 downto 16) <= x"0009";
			HexNum(15 downto 0)  <= x"0000";
		WHEN s10 =>
			HexNum(31 downto 16) <= x"000A";
			HexNum(15 downto 0)  <= x"0000";
		WHEN s11 =>
			HexNum(31 downto 16) <= x"000B";
			HexNum(15 downto 0)  <= x"0000";
		WHEN s12 =>
			HexNum(31 downto 16) <= x"000C";
			HexNum(15 downto 0) <= x"0001";
		when others => null;
	END CASE;
end process;

display: entity work.SevenSeg_Top
port map(
   CLK => clk100mhz,
	HexVal => HexNum,
   SSEG_CA => SSEG_CA,
   SSEG_AN => SSEG_AN
);

end Behavioral;

