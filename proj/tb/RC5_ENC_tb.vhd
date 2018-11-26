library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RC5_ENC_tb is
end RC5_ENC_tb;

architecture Behavioral of RC5_ENC_tb is
    constant T : time := 20 ns;
    signal Clr : STD_LOGIC := '0';
    signal Clk : STD_LOGIC := '1';
    signal BackDoor_in : STD_LOGIC_VECTOR(63 downto 0) := x"0000000000000000";
    signal BackDoor_out : STD_LOGIC_VECTOR(63 downto 0);
--    signal PC : STD_LOGIC_VECTOR(31 downto 0);
--    signal Instr : STD_LOGIC_VECTOR(31 downto 0);
--    signal A1 : STD_LOGIC_VECTOR(4 downto 0);
--    signal A2 : STD_LOGIC_VECTOR(4 downto 0);
--    signal A3 : STD_LOGIC_VECTOR(4 downto 0);
--    signal SrcA : STD_LOGIC_VECTOR(31 downto 0);
--    signal SrcB : STD_LOGIC_VECTOR(31 downto 0);
--    signal ALUResult : STD_LOGIC_VECTOR(31 downto 0);
--    signal Result : STD_LOGIC_VECTOR(31 downto 0);
--    signal State : STD_LOGIC_VECTOR(4 downto 0);

    component RC5_ENC
        port(
            Clr : in STD_LOGIC;
            Clk : in STD_LOGIC;
            BackDoor_in : in STD_LOGIC_VECTOR(63 downto 0);
            BackDoor_out : out STD_LOGIC_VECTOR(63 downto 0)
--            PC_out : out STD_LOGIC_VECTOR(31 downto 0);
--            Instr_out : out STD_LOGIC_VECTOR(31 downto 0);
--            A1_out : out STD_LOGIC_VECTOR(4 downto 0);
--            A2_out : out STD_LOGIC_VECTOR(4 downto 0);
--            A3_out : out STD_LOGIC_VECTOR(4 downto 0);
--            SrcA_out : out STD_LOGIC_VECTOR(31 downto 0);
--            SrcB_out : out STD_LOGIC_VECTOR(31 downto 0);
--            ALUResult_out : out STD_LOGIC_VECTOR(31 downto 0);
--            Result_out : out STD_LOGIC_VECTOR(31 downto 0);
--            State_out : out STD_LOGIC_VECTOR(4 downto 0)
        );
    end component;

begin

    uut : RC5_ENC port map (
        Clr => Clr,
        Clk => Clk,
        BackDoor_in => BackDoor_in,
        BackDoor_out => BackDoor_out
--        PC_out => PC,
--        Instr_out => Instr,
--        A1_out => A1,
--        A2_out => A2,
--        A3_out => A3,
--        SrcA_out => SrcA,
--        SrcB_out => SrcB,
--        ALUResult_out => ALUResult,
--        Result_out => Result,
--        State_out => State
    );

    Clr <= '0', '1' after 5 ns;

    BackDoor_in <= x"0123456789abcdef";

    process
    begin
        wait for T/2; 
        Clk <= not Clk;
    end process;
end Behavioral;