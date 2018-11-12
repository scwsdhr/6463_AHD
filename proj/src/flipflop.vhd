library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop is
	port (
        clk : in STD_LOGIC;
		i : in STD_LOGIC_VECTOR(31 DOWNTO 0);
		o : out STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
end flipflop;

architecture Behavioral of flipflop is
begin

    process(clk)
    begin
        if (clk'event and clk = '1') then
            o <= i;
        end if;
    end process;

end Behavioral;