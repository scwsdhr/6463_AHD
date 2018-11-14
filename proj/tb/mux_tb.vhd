library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_tb is
end Mux_tb;

architecture Behavioral of Mux_tb is
    signal A : STD_LOGIC_VECTOR(31 downto 0);
    signal B : STD_LOGIC_VECTOR(31 downto 0);
    signal Sel : STD_LOGIC;
    signal O : STD_LOGIC_VECTOR(31 downto 0);

    component Mux
        port (
            A : in STD_LOGIC_VECTOR(31 downto 0);
            B : in STD_LOGIC_VECTOR(31 downto 0);
            Sel : in STD_LOGIC;
            O : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

begin

    uut : Mux port map (
        A => A,
        B => B,
        Sel => Sel,
        O => O
    );

    A <= x"00000001";
    B <= x"00010009";
    Sel <= '0', '1' after 20 ns;
end Behavioral;