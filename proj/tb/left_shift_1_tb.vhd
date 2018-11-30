library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Left_Shift_2_tb is
end Left_Shift_2_tb;

architecture Behavioral of Left_Shift_2_tb is
    signal A : STD_LOGIC_VECTOR(31 downto 0);
    signal O : STD_LOGIC_VECTOR(31 downto 0);

    component Left_shift_2
        port (
            A : in STD_LOGIC_VECTOR(31 downto 0);
            O : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

begin

    uut : Left_shift_2 port map (
        A => A,
        O => O
    );

    A <= x"00000001";
end Behavioral;