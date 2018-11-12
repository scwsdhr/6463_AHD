library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sign_extend is
	port (
		imm : in STD_LOGIC_VECTOR(15 downto 0);
		signimm : out STD_LOGIC_VECTOR(31 downto 0)
	);
end sign_extend;

architecture Behavioral of sign_extend is
begin
    process
    begin
        if (imm(15) = '0') then
            signimm <= x"0000" & imm;
        else
            signimm <= x"ffff" & imm;
        end if;
    end process;
end Behavioral;