library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
	port (
		a : in STD_LOGIC_VECTOR(31 downto 0);
		b : in STD_LOGIC_VECTOR(31 downto 0);
        sel : in STD_LOGIC;
		o : out STD_LOGIC_VECTOR(31 downto 0)
	);
end mux;

architecture Behavioral of mux is
begin
    process
    begin
        if (sel = '0') then
            o <= a;
        else
            o <= b;
        end if;
    end process;
end Behavioral;