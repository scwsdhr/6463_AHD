library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.header.ALL;

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
            ALUControl : in STD_LOGIC_VECTOR(3 downto 0);
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
    ALUControl <= ALU_ADD, 
                ALU_SUB after 10 ns, 
                ALU_AND after 20 ns,
                ALU_OR	 after 30 ns,
                ALU_NOR after 40 ns,
                ALU_SHR after 50 ns,
                ALU_BLT after 60 ns,
                ALU_BE	 after 70 ns,
                ALU_BNE after 80 ns,
                ALU_NDEF after 90 ns;
end Behavioral;