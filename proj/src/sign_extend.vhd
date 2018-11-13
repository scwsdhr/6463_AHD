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
    process
    begin
        if (Imm(15) = '0') then
            SignImm <= x"0000" & Imm;
        else
            SignImm <= x"ffff" & Imm;
        end if;
    end process;
end Behavioral;