library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This block is used to provide synchronous signals.
entity Flipflop is
	port (
        Clr : in STD_LOGIC;
        Clk : in STD_LOGIC;
		I : in STD_LOGIC_VECTOR(31 downto 0);
		O : out STD_LOGIC_VECTOR(31 downto 0)
	);
end Flipflop;

architecture Behavioral of Flipflop is
begin
    process(Clr, Clk)
    begin
        if (Clr = '0') then
            O <= (others => '0');
        elsif (Clk'event and Clk = '1') then
            O <= I;
        end if;
    end process;
end Behavioral;