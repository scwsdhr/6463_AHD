library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Adder_tb is
end Adder_tb;

architecture Behavioral of Adder_tb is
    signal A : STD_LOGIC_VECTOR(31 downto 0);
    signal B : STD_LOGIC_VECTOR(31 downto 0);
    signal O : STD_LOGIC_VECTOR(31 downto 0);

    component Adder
        port ( 
            A : in STD_LOGIC_VECTOR(31 downto 0);
            B : in STD_LOGIC_VECTOR(31 downto 0);
            O : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

begin

    uut : Adder port map (
        A => A,
        B => B,
        O => O
    );

    A <= x"00000001";
    B <= x"00010001";
end Behavioral;