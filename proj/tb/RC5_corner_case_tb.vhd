library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
use std.textio.all;

entity RC5_tb is
end RC5_tb;

architecture Behavioral of RC5_tb is
    constant T : time := 20 ns;
    signal Clr : STD_LOGIC := '0';
    signal Clk : STD_LOGIC := '1';
    signal Sysclk : STD_LOGIC := '1';
    signal BackDoor_in : STD_LOGIC_VECTOR(63 downto 0);
    signal Ukey32 : STD_LOGIC_VECTOR(31 downto 0);
    signal Key_Ind : STD_LOGIC_VECTOR(4 downto 0);
    signal PROG : STD_LOGIC_VECTOR(1 downto 0);
    signal BackDoor_out : STD_LOGIC_VECTOR(63 downto 0);
    signal RF_Ind : STD_LOGIC_VECTOR(4 downto 0) := "00000";
    signal Instr_out : STD_LOGIC_VECTOR(31 downto 0);
    signal Halt_flag: std_logic;
    signal verify_three: std_logic:= '0'; -- mode change test
    signal verify_four: std_logic:= '0'; -- ukey change test
    signal verify_five: std_logic:= '0'; -- din change test
    signal verify_six: std_logic:= '0'; -- reset test
 
    component RC5
        port(
            Clr : in STD_LOGIC;
            Sysclk : in STD_LOGIC;
            Clk : in STD_LOGIC;
            PROG : in STD_LOGIC_VECTOR(1 downto 0);
            BackDoor_in : in STD_LOGIC_VECTOR(63 downto 0);
            Ukey32 : in STD_LOGIC_VECTOR(31 downto 0);
            Key_Ind : in STD_LOGIC_VECTOR(4 downto 0);
            RF_Ind : in STD_LOGIC_VECTOR(4 downto 0);
            BackDoor_out : out STD_LOGIC_VECTOR(63 downto 0);
            Instr_out : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
    
begin

    uut: RC5 port map(
        Clr => Clr,
        Clk => Clk,
        Sysclk => Sysclk,
        BackDoor_in => BackDoor_in,
        Ukey32 => Ukey32,
        PROG => PROG,
        BackDoor_out => BackDoor_out,
        Instr_out => Instr_out,
        Key_Ind => Key_Ind,
        RF_Ind => RF_Ind                
    );

    Key_Ind <= (others => '0');
    RF_Ind <= (others => '0');

    Clk_gen : process
    begin
        loop
            Clk <= '0';
            wait for T/2;
            Clk <= '1';
            wait for T/2;
        end loop;
    end process;

    Sysclk_gen : process
    begin
        loop
            Sysclk <= '0';
            wait for T/2;
            sysclk <= '1';
            wait for T/2;
        end loop;
    end process;

    Halt_signal : process(Instr_out)
    begin
        if (Instr_out = x"fc000000") then 
            Halt_flag <= '1';
        else
            Halt_flag <= '0';
        end if;
    end process;

    Corner_cases : process
    begin
        -- mode change corner case
        verify_three <= '1';

        Ukey32 <= (others => '0');
        BackDoor_in <= (others => '0');
        PROG <= "11";
        Clr <= '0';
        
        wait for 5*T;
        
        Clr <= '1';
        
        wait until Halt_flag'event and Halt_flag = '1';
        
        Clr <= '0';
        PROG <= "01";
        wait for 1000*T;
        
        Clr <= '1';
        
        wait for 5*T;

        PROG <= "10";
          
        wait until Halt_flag'event and Halt_flag = '1';
        verify_three <= '0';
        wait for 10*T;


        -- ukey change corner case

        verify_four <= '1';
        Ukey32 <= (others => '0');
        BackDoor_in <= (others => '0');
        PROG <= "11";
        Clr <= '0';
        
        wait for 5*T;
        
        Clr <= '1';
        Ukey32 <= x"12345678";
        wait for 5*T;
        wait until Halt_flag'event and Halt_flag = '1';
        
        Clr <= '0';
        PROG <= "01";
        wait for 5*T;
        
        Clr <= '1';
        
        wait until Halt_flag'event and Halt_flag = '1';
        verify_four <= '0';
        verify_five <= '1';
        wait for 10*T;
        verify_four <= '0';
        
        -- din change corner case
        verify_five <= '1';
        Ukey32 <= (others => '0');
        BackDoor_in <= (others => '0');
        PROG <= "11";
        Clr <= '0';
        
        wait for 5*T;
        
        Clr <= '1';
        
        wait until Halt_flag'event and Halt_flag = '1';
        
        Clr <= '0';
        PROG <= "01";
        wait for 5*T;
        
        Clr <= '1';
        BackDoor_in <= x"0000000012345678";
        wait for 10*T;
        
        wait until Halt_flag'event and Halt_flag = '1';
        verify_five <= '0';
        
        -- reset corner case
        verify_six <= '1';

        Ukey32 <= (others => '0');
        BackDoor_in <= (others => '0');
        PROG <= "11";
        Clr <= '0';
        
        wait for 5*T;
        
        Clr <= '1';
        
        wait until Halt_flag'event and Halt_flag = '1';
        
        Clr <= '0';
        PROG <= "01";
        wait for 1000*T;
        
        Clr <= '1';
          
        wait until Halt_flag'event and Halt_flag = '1';
        
        Clr <= '1';
        PROG <= "00";
        
        verify_six <= '0';
        wait for 10000*T;


    end process;

end Behavioral;