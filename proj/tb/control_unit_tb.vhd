library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.header.ALL;

entity Control_Unit_tb is
end Control_Unit_tb;

architecture Behavioral of Control_Unit_tb is
    signal Clr : STD_LOGIC := '0';
    signal Instr : STD_LOGIC_VECTOR(31 downto 0);
    signal MemtoReg : STD_LOGIC;
    signal MemWrite : STD_LOGIC;
    signal Branch : STD_LOGIC;
    signal ALUControl : STD_LOGIC_VECTOR(3 downto 0);
    signal ALUSrc : STD_LOGIC;
    signal RegDst : STD_LOGIC;
    signal RegWrite : STD_LOGIC;

    component Control_Unit
        port (
            Clr : in STD_LOGIC;
            Op : in STD_LOGIC_VECTOR(5 downto 0);
            Funct : in STD_LOGIC_VECTOR(5 downto 0);
            MemtoReg : out STD_LOGIC;
            MemWrite : out STD_LOGIC;
            Branch : out STD_LOGIC;
            ALUControl : out STD_LOGIC_VECTOR(3 downto 0);
            ALUSrc : out STD_LOGIC;
            RegDst : out STD_LOGIC;
            RegWrite : out STD_LOGIC
        );
    end component;

begin

    uut : Control_Unit port map (
        Clr => Clr,
		Op => Instr(31 downto 26),
		Funct => Instr(5 downto 0),
		MemtoReg => MemtoReg,
        MemWrite => MemWrite,
        Branch => Branch,
        ALUControl => ALUControl,
        ALUSrc => ALUSrc,
        RegDst => RegDst,
        RegWrite => RegWrite
    );

    Clr <= '1';
    Instr <= "00000100000000010000000000000111",
        "00000100000000100000000000001000" after 50 ns, 
        "00000000010000010001100000010000" after 100 ns, 
        "11111100000000000000000000000000" after 150 ns;
end Behavioral;