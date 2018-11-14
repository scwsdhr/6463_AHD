library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg_File_tb is
end Reg_File_tb;

architecture Behavioral of Reg_File_tb is
    constant T : time := 20 ns;
    signal Clr : STD_LOGIC := '0';
    signal Clk : STD_LOGIC := '0';
    signal A1 : STD_LOGIC_VECTOR(4 downto 0);
    signal A2 : STD_LOGIC_VECTOR(4 downto 0);
    signal A3 : STD_LOGIC_VECTOR(4 downto 0);
    signal WD3 : STD_LOGIC_VECTOR(31 downto 0);
    signal WE3 : STD_LOGIC;
    signal RD1 : STD_LOGIC_VECTOR(31 downto 0);
    signal RD2 : STD_LOGIC_VECTOR(31 downto 0);

    component Reg_File
        port (
            Clr : in STD_LOGIC;
            Clk : in STD_LOGIC;
            A1 : in STD_LOGIC_VECTOR(4 downto 0);
            A2 : in STD_LOGIC_VECTOR(4 downto 0);
            A3 : in STD_LOGIC_VECTOR(4 downto 0);
            WD3 : in STD_LOGIC_VECTOR(31 downto 0);
            WE3 : in STD_LOGIC;
            RD1 : out STD_LOGIC_VECTOR(31 downto 0);
            RD2 : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

begin

    uut : Reg_File port map (
        Clr => Clr,
        Clk => Clk,
        A1 => A1,
        A2 => A2,
        A3 => A3,
        WD3 => WD3,
        WE3 => WE3,
        RD1 => RD1,
        RD2 => RD2
    );

    Clr <= '1';
    A1 <= "00000", "00010" after T;
    A2 <= "00001";
    A3 <= "00010";
    WD3 <= x"f0f0f0f0";
    WE3 <= '1', '0' after T;

    process
    begin
        Clk <= not Clk;
        wait for T/2; 
    end process;
end Behavioral;