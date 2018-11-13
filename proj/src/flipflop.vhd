library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This block is used to provide synchronous signals.
entity Flipflop is
	port (
        clk : in STD_LOGIC;
		I : in STD_LOGIC_VECTOR(31 downto 0);
		O : out STD_LOGIC_VECTOR(31 downto 0)
	);
end Flipflop;

architecture Behavioral of Flipflop is
begin
    process(clk)
    begin
        if (clk'event and clk = '1') then
            O <= I;
        end if;
    end process;
end Behavioral;