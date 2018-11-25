library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This block is used to shift a 32-bit register 1 bit left.
entity Left_Shift_1 is
	port (
		A : in STD_LOGIC_VECTOR(31 downto 0);
		O : out STD_LOGIC_VECTOR(31 downto 0)
	);
end Left_Shift_1;

architecture Behavioral of Left_Shift_1 is
begin
    -- add one zero in the end
    O <= A(30 downto 0) & '0';
end Behavioral;