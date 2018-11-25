library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RC5_tb is
end RC5_tb;

architecture Behavioral of RC5_tb is
    constant T : time := 20 ns;
    signal Clr : STD_LOGIC := '0';
    signal Clk : STD_LOGIC := '1';
    signal BackDoor : STD_LOGIC_VECTOR(64 downto 0) := x"0000000000000000";

    component MIPS
        port(
            Clr : in STD_LOGIC;
            Clk : in STD_LOGIC
        );
    end component;

begin

    uut : MIPS port map (
        Clr => Clr,
        Clk => Clk,
        BD => BackDoor
    );

    Clr <= '0', '1' after 5 ns;

    BackDoor <= x"0123456789abcdef";

    process
    begin
        wait for T/2; 
        Clk <= not Clk;
    end process;
end Behavioral;