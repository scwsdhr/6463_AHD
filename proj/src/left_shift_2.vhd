library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This block is used to shift a 32-bit register 2 bits left.
entity left_shift_2 is
	port (
		a : in STD_LOGIC_VECTOR(31 downto 0);
		o : out STD_LOGIC_VECTOR(31 downto 0)
	);
end left_shift_2;

architecture Behavioral of left_shift_2 is
begin
    -- add two zeros in the end
    o <= a(29 downto 0) & "00";
end Behavioral;