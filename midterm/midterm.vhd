----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:04:04 10/29/2018 
-- Design Name: 
-- Module Name:    mid_counter - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
-- library UNISIM;
-- use UNISIM.VComponents.all;

entity mid_counter is
port(
	reset : in std_logic;
	clk : in std_logic;
	UP : in std_logic;
	counter : out std_logic_vector(3 downto 0)
);
end mid_counter;

architecture Behavioral of mid_counter is
-- Declaration of possible states 
type s_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8);
signal state, nextstate: s_type;
signal clk_cnt: std_logic_vector(26 downto 0);

begin
-- State change
stateFSM: process (reset, clk)
begin
	if (clk'event and clk ='1') then
		if (reset = '0') then state <= s0;
		else state <= nextstate;
		end if;
	end if;
end process stateFSM;

-- output change
outputFSM: process (state, UP)
begin
	case state is
		when s0 => counter <= "0001"; if (UP = '1') then nextstate <= s1; else nextstate <= s8; end if;
		when s1 => counter <= "0010"; if (UP = '1') then nextstate <= s2; else nextstate <= s0; end if;
		when s2 => counter <= "0011"; if (UP = '1') then nextstate <= s3; else nextstate <= s1; end if;
		when s3 => counter <= "0100"; if (UP = '1') then nextstate <= s4; else nextstate <= s2; end if;
		when s4 => counter <= "0101"; if (UP = '1') then nextstate <= s5; else nextstate <= s3; end if;
		when s5 => counter <= "0110"; if (UP = '1') then nextstate <= s6; else nextstate <= s4; end if;
		when s6 => counter <= "0111"; if (UP = '1') then nextstate <= s7; else nextstate <= s5; end if;
		when s7 => counter <= "1000"; if (UP = '1') then nextstate <= s8; else nextstate <= s6; end if;
		when s8 => counter <= "1001"; if (UP = '1') then nextstate <= s0; else nextstate <= s7; end if;
		when others => null;
	end case;
end process outputFSM;

end Behavioral;