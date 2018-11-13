library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This block is used to shift a 32-bit register 2 bits left.
entity Left_Shift_2 is
	port (
		A : in STD_LOGIC_VECTOR(31 downto 0);
		O : out STD_LOGIC_VECTOR(31 downto 0)
	);
end Left_Shift_2;

architecture Behavioral of Left_Shift_2 is
begin
    -- add two zeros in the end
    O <= A(29 downto 0) & "00";
end Behavioral;