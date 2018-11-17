library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MIPS_tb is
end MIPS_tb;

architecture Behavioral of MIPS_tb is
    constant T : time := 20 ns;
    signal Clr : STD_LOGIC := '0';
    signal Clk : STD_LOGIC := '1';

    component MIPS
        port(
            Clr : in STD_LOGIC;
            Clk : in STD_LOGIC
        );
    end component;

begin

    uut : MIPS port map (
        Clr => Clr,
        Clk => Clk
    );

    Clr <= '0', '1' after 5 ns;

    process
    begin
        wait for T/2; 
        Clk <= not Clk;
    end process;
end Behavioral;