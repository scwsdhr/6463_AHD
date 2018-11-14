library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This block is used to extend a signed 16-bit input to a signed 32-bit output.
entity Sign_Extend is
	port (
		Imm : in STD_LOGIC_VECTOR(15 downto 0);
		SignImm : out STD_LOGIC_VECTOR(31 downto 0)
	);
end Sign_Extend;

architecture Behavioral of Sign_Extend is
begin
    with Imm(15) select
        SignImm <= x"0000" & Imm when '0',
                    x"ffff" & Imm when others;
end Behavioral;