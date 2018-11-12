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
        case imm(15) is
            when '0' => signimm <= x"0000" & imm;
            when others => signimm <= x"ffff" & imm;
        end case;
    end process;

end Behavioral;