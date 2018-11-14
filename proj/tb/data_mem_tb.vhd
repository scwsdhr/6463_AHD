library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Data_Mem_tb is
end Data_Mem_tb;

architecture Behavioral of Data_Mem_tb is
    constant T : time := 20 ns;
    signal Clr : STD_LOGIC := '0';
    signal Clk : STD_LOGIC := '0';
    signal A : STD_LOGIC_VECTOR(31 downto 0);
    signal WD : STD_LOGIC_VECTOR(31 downto 0);
    signal WE : STD_LOGIC;
    signal RD : STD_LOGIC_VECTOR(31 downto 0);

    component Data_Mem
        port (
            Clr	: in STD_LOGIC;
            Clk	: in STD_LOGIC;
            A : in STD_LOGIC_VECTOR(31 downto 0);
            WD : in STD_LOGIC_VECTOR(31 downto 0);
            WE : in STD_LOGIC;
            RD : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

begin

    uut : Data_Mem port map (
        Clr => Clr,
        Clk => Clk,
        A => A,
        WD => WD,
        WE => WE,
        RD => RD
    );

    Clr <= '1';
    A <= x"00000000";
    WD <= x"f0f0f0f0";
    WE <= '0', '1' after T, '0' after 2*T;

    process
    begin
        Clk <= not Clk;
        wait for T/2; 
    end process;
end Behavioral;