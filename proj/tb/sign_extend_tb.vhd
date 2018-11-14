library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sign_Extend_tb is
end Sign_Extend_tb;

architecture Behavioral of Sign_Extend_tb is
    signal Imm : STD_LOGIC_VECTOR(15 downto 0);
    signal SignImm : STD_LOGIC_VECTOR(31 downto 0);

    component Sign_Extend
        port (
		Imm : in STD_LOGIC_VECTOR(15 downto 0);
		SignImm : out STD_LOGIC_VECTOR(31 downto 0)
	);
    end component;

begin

    uut : Sign_Extend port map (
        Imm => Imm,
        SignImm => SignImm
    );

    Imm <= x"0001", x"f100" after 100 ns;
end Behavioral;