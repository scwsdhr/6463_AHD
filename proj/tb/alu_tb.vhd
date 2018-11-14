library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_tb is
end ALU_tb;

architecture Behavioral of ALU_tb is
    signal Clr : STD_LOGIC := '0';
    signal SrcA : STD_LOGIC_VECTOR(31 downto 0);
    signal SrcB : STD_LOGIC_VECTOR(31 downto 0);
    signal ALUControl : STD_LOGIC_VECTOR(3 downto 0);
    signal Zero : STD_LOGIC;
    signal ALUResult : STD_LOGIC_VECTOR(31 downto 0);

    component ALU
        port (
		Clr	: in STD_LOGIC;
		SrcA : in STD_LOGIC_VECTOR(31 downto 0);
		SrcB : in STD_LOGIC_VECTOR(31 downto 0);
		ALUControl 	: in STD_LOGIC_VECTOR(3 downto 0);
		Zero : out STD_LOGIC;
		ALUResult : out STD_LOGIC_VECTOR(31 downto 0)
	);
    end component;

begin
    uut : ALU port map (
        Clr => Clr,
        SrcA => SrcA,
        SrcB => SrcB,
        ALUControl => ALUControl,
        Zero => Zero,
        ALUResult => ALUResult
    );

    Clr <= '1';
    SrcA <= x"00000001";
    SrcB <= x"00001001";
    ALUControl <= x"0", 
                x"1" after 10 ns, 
                x"2" after 20 ns,
                x"3" after 30 ns,
                x"4" after 40 ns,
                x"5" after 50 ns,
                x"6" after 60 ns,
                x"7" after 70 ns,
                x"8" after 80 ns,
                x"9" after 90 ns,
                x"a" after 100 ns;
end Behavioral;