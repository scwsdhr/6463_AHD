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
    signal mode: std_logic;
    signal Halt_flag: std_logic;
    signal verify_one : std_logic:= '1';
    signal verify_two : std_logic:= '0';
    signal verify_three: std_logic:= '0'; -- mode change test
    signal verify_four: std_logic:= '0'; -- ukey change test
 
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
        
    readcmd : process
        file cmdfile: TEXT;
        file cmdfile_2: TEXT;
        variable L: line;
        variable good: boolean;
        variable mode_in: std_logic;
        variable ukey_in: std_logic_vector(31 downto 0);
        variable din_in: std_logic_vector(63 downto 0);
        variable din_in_2: std_logic_vector(63 downto 0);
        variable expected_output: std_logic_vector(63 downto 0);
        variable expected_output_2: std_logic_vector(63 downto 0);

    begin
        FILE_OPEN(cmdfile, "verify_one.txt", READ_MODE); 
        while (verify_one = '1') loop
            if endfile(cmdfile) then 
                assert false
                    report "End of verify_one.txt. Exit."
                    severity NOTE;
                    verify_one <= '0';
                    verify_two <= '1';
                exit; 
            end if;
            
            readline(cmdfile, L);
            next when L'length = 0;
            
            read(L, mode_in, good);
                assert good
                    report "Text I/O read error"
                    severity ERROR;
            
            hread(L, ukey_in, good);
                assert good
                    report "Text I/O read error"
                    severity ERROR;
            
            hread(L, din_in, good);
                assert good
                    report "Text I/O read error"
                    severity ERROR;
                    
            hread(L, expected_output, good);
                assert good
                    report "Text I/O error"
                    severity ERROR;
                    
            mode <= mode_in;
            Ukey32 <= ukey_in;
            BackDoor_in <= din_in;
            Clr <= '0';
            PROG <= "11";
            
            wait for 5*T;
            Clr <= '1';
             
            wait until Halt_flag'event and Halt_flag = '1';
            
            if (mode = '1') then 
                PROG <= "01";
            else 
                PROG <= "10";
            end if;
            
            Clr <= '0';
            
            wait for 5*T;
            
            Clr <= '1';
            
            wait until Halt_flag'event and Halt_flag = '1';
            
            assert (BackDoor_out = expected_output)
                report "Check failed!"
                severity ERROR;
            
            wait for 5*T;
        end loop;

        FILE_OPEN(cmdfile_2, "verify_two.txt", READ_MODE); 
        while (verify_two = '1') loop
            if endfile(cmdfile_2) then 
                assert false
                    report "End of verify_two.txt. Exit."
                    severity NOTE;
                    verify_two <= '0';
                    verify_three <= '1';
                exit; 
            end if;

            readline(cmdfile_2, L);
            next when L'length = 0;

            read(L, mode_in, good);
                assert good
                    report "Text I/O read error"
                    severity ERROR;

            hread(L, ukey_in, good);
                assert good
                    report "Text I/O read error"
                    severity ERROR;

            hread(L, din_in, good);
                assert good
                    report "Text I/O read error"
                    severity ERROR;
                  
            hread(L, din_in_2, good);
                        assert good
                            report "Text I/O read error"
                            severity ERROR;
                              
            hread(L, expected_output, good);
                assert good
                    report "Text I/O error"
                    severity ERROR;

            hread(L, expected_output_2, good);
                assert good
                    report "Text I/O error"
                    severity ERROR;

            mode <= mode_in;
            Ukey32 <= ukey_in;
            BackDoor_in <= din_in;
            PROG <= "11";
            Clr <= '0';
            
            wait for 5*T;
            Clr <= '1';
            
            wait until Halt_flag'event and Halt_flag = '1';
            
            if (mode = '1') then 
                PROG <= "01";
            else 
                PROG <= "10";
            end if;

            Clr <= '0';
            
            wait for 5*T;
            
            Clr <= '1';
            
            wait until Halt_flag'event and Halt_flag = '1';
            
            assert (BackDoor_out = expected_output)
                report "Check failed!"
                severity ERROR;
            
            wait for 5*T;
            
            Clr <= '0';
            BackDoor_in <= din_in_2;
             
            wait for 5*T;
            
            Clr <= '1';
            
            wait until Halt_flag'event and Halt_flag = '1';
            
            assert (BackDoor_out = expected_output_2)
                report "Check failed!"
                severity ERROR;
            
            wait for 5*T;
        end loop;    

    end process;
end Behavioral;