library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MIPS_tb is
end MIPS_tb;

architecture Behavioral of MIPS_tb is
    constant T : time := 20 ns;
    signal Clr : STD_LOGIC := '0';
    signal Clk : STD_LOGIC := '1';
    signal PC : out STD_LOGIC_VECTOR(31 downto 0);
    signal Instr : out STD_LOGIC_VECTOR(31 downto 0);
    signal A1 : out STD_LOGIC_VECTOR(4 downto 0);
    signal A2 : out STD_LOGIC_VECTOR(4 downto 0);
    signal A3 : out STD_LOGIC_VECTOR(4 downto 0);
    signal SrcA : out STD_LOGIC_VECTOR(31 downto 0);
    signal SrcB : out STD_LOGIC_VECTOR(31 downto 0);
    signal ALUResult : out STD_LOGIC_VECTOR(31 downto 0);
    signal Result : out STD_LOGIC_VECTOR(31 downto 0);
    signal State : out STD_LOGIC_VECTOR(4 downto 0)

    component MIPS
        port(
            Clr : in STD_LOGIC;
            Clk : in STD_LOGIC;
            PC_out : out STD_LOGIC_VECTOR(31 downto 0);
            Instr_out : out STD_LOGIC_VECTOR(31 downto 0);
            A1_out : out STD_LOGIC_VECTOR(4 downto 0);
            A2_out : out STD_LOGIC_VECTOR(4 downto 0);
            A3_out : out STD_LOGIC_VECTOR(4 downto 0);
            SrcA_out : out STD_LOGIC_VECTOR(31 downto 0);
            SrcB_out : out STD_LOGIC_VECTOR(31 downto 0);
            ALUResult_out : out STD_LOGIC_VECTOR(31 downto 0);
            Result_out : out STD_LOGIC_VECTOR(31 downto 0);
            State_out : out STD_LOGIC_VECTOR(4 downto 0)
        );
    end component;

begin

    uut : MIPS port map (
        Clr => Clr,
        Clk => Clk,
        PC_out => PC,
        Instr_out => Instr,
        A1_out => A1,
        A2_out => A2,
        A3_out => A3,
        SrcA_out => SrcA,
        SrcB_out => SrcB,
        ALUResult => ALUResult,
        Result_out => Result,
        State_out => State
    );

    Clr <= '0', '1' after 5 ns;

    process
    begin
        wait for T/2; 
        Clk <= not Clk;
    end process;
end Behavioral;