library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Instruction_Memory_tb is
end Instruction_Memory_tb;

architecture Behavioral of Instruction_Memory_tb is
    constant T : time := 20 ns;
    signal Clr : STD_LOGIC := '0';
    signal Clk : STD_LOGIC := '1';
    signal A : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal RD : STD_LOGIC_VECTOR(31 downto 0);

    component Instruction_Memory
        port (		
        Clr : in STD_LOGIC;
        A : in STD_LOGIC_VECTOR(31 downto 0);
        RD : out STD_LOGIC_VECTOR(31 downto 0)
    );
    end component;

begin

    uut : Instruction_Memory port map (
        Clr => Clr,
        A => A,
        RD => RD
    );

    Clr <= '1';

    process(Clk)
    begin
        if (Clk'event and Clk = '1') then 
            A <= A + x"00000002";
        end if;
    end process;

    process
    begin
        wait for T/2;
        Clk <= not Clk;
    end process;
end Behavioral;