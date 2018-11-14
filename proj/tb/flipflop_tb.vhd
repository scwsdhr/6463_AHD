library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Flipflop_tb is
end Flipflop_tb;

architecture Behavioral of Flipflop_tb is
    constant T : time := 20 ns;
    signal Clk : STD_LOGIC := '0';
    signal I : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal O : STD_LOGIC_VECTOR(31 downto 0);

    component Flipflop
        port (
        Clk : in STD_LOGIC;
		I : in STD_LOGIC_VECTOR(31 downto 0);
		O : out STD_LOGIC_VECTOR(31 downto 0)
	);
    end component;

begin

    uut : Flipflop port map (
        Clk => Clk,
        I => I,
        O => O
    );

    process
    begin
        I <= I + '1';
        wait for T/2 + 3 ns;
    end process;

    process
    begin
        wait for T/2; 
        Clk <= not Clk;
    end process;
end Behavioral;