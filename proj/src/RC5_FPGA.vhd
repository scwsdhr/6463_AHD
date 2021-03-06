library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- This module is used to implement the MIPS design on FPGA board.
entity RC5_FPGA is
    port(
        Clr : in STD_LOGIC;                                 -- reset signal
        Sysclk : in STD_LOGIC;                              -- system clock
        Clk_Btn : in STD_LOGIC;                             -- button as clock signal
        Break_Btn : in STD_LOGIC;                           -- button to run until breakpoint
        All_Btn : in STD_LOGIC;                             -- button to provide run all
        Up_Btn : in STD_LOGIC;                              -- add 1 to targeted variable
        Down_Btn : in STD_LOGIC;                            -- minus 1 to targeted variable
        PROG_SW : in STD_LOGIC_VECTOR(1 downto 0);          -- select a program to be executed
        Mod_Hex : in STD_LOGIC_VECTOR(7 downto 0);          -- select the hex bits to modify

        Disp_SW : in STD_LOGIC_VECTOR(3 downto 0);          -- display content switch
        LED_State : out STD_LOGIC_VECTOR(2 downto 0);       -- LED display to show the current stage
        LED_Ind : out STD_LOGIC_VECTOR(4 downto 0);         -- LED display to show the current index
        Disp_Sel : out STD_LOGIC_VECTOR(7 downto 0);        -- select the digit to lit
        Disp_Val : out STD_LOGIC_VECTOR(7 downto 0)         -- the value to display
    );
end RC5_FPGA;

architecture Behavioral of RC5_FPGA is
    signal Clk : STD_LOGIC := '0';                          -- clock signal
    signal Clk_Btn_buf : STD_LOGIC;                         -- clock button buffer
    signal Break_Btn_buf : STD_LOGIC;                       -- cycle button buffer
    signal All_Btn_buf : STD_LOGIC;                         -- end button buffer
    signal Up_Btn_buf : STD_LOGIC;                          -- up button buffer
    signal Down_Btn_buf : STD_LOGIC;                        -- down button buffer
    signal Hold : STD_LOGIC;                                -- hold instruction
    signal BackDoor_in : STD_LOGIC_VECTOR(63 downto 0) := x"a2b568bac7edc2c1";
    signal Ukey32 : STD_LOGIC_VECTOR(31 downto 0);
    signal Key_Ind : STD_LOGIC_VECTOR(4 downto 0);
    signal RF_Ind : STD_LOGIC_VECTOR(4 downto 0);
    signal BackDoor_out : STD_LOGIC_VECTOR(63 downto 0);
    signal Key_Disp : STD_LOGIC_VECTOR(31 downto 0);
    signal RF_Disp : STD_LOGIC_VECTOR(31 downto 0);
    signal PC : STD_LOGIC_VECTOR(31 downto 0);
    signal Instr : STD_LOGIC_VECTOR(31 downto 0);
    signal A1 : STD_LOGIC_VECTOR(4 downto 0);
    signal A2 : STD_LOGIC_VECTOR(4 downto 0);
    signal A3 : STD_LOGIC_VECTOR(4 downto 0);
    signal A1_Disp : STD_LOGIC_VECTOR(31 downto 0);
    signal A2_Disp : STD_LOGIC_VECTOR(31 downto 0);
    signal A3_Disp : STD_LOGIC_VECTOR(31 downto 0);
    signal SrcA : STD_LOGIC_VECTOR(31 downto 0);
    signal SrcB : STD_LOGIC_VECTOR(31 downto 0);
    signal ALUResult : STD_LOGIC_VECTOR(31 downto 0);
    signal Result : STD_LOGIC_VECTOR(31 downto 0);
    signal MIPS_State : STD_LOGIC_VECTOR(2 downto 0);

    signal Disp_Clk : STD_LOGIC_VECTOR(18 downto 0);                    -- display clock
    signal Disp_Hex : STD_LOGIC_VECTOR(3 downto 0);                     -- display hex number
    signal Disp_Bits : STD_LOGIC_VECTOR(31 downto 0);                   -- display text in bits

    type pc_array is array (0 to 20) of STD_LOGIC_VECTOR(31 downto 0);  -- breakpoint array
    signal bp_cnt : integer range 0 to 20;                              -- brakpoint counter
    signal bp_array : pc_array;

    type StateType is (
        ST_STEP,                                -- run as step
        ST_BREAK,                               -- run to breakpoint
        ST_ALL);                                -- run all
    signal State : StateType := ST_STEP;

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
            Key_Disp_out : out STD_LOGIC_VECTOR(31 downto 0);
            RF_Disp_out : out STD_LOGIC_VECTOR(31 downto 0);
            PC_out : out STD_LOGIC_VECTOR(31 downto 0);
            Instr_out : out STD_LOGIC_VECTOR(31 downto 0);
            A1_out : out STD_LOGIC_VECTOR(4 downto 0);
            A2_out : out STD_LOGIC_VECTOR(4 downto 0);
            A3_out : out STD_LOGIC_VECTOR(4 downto 0);
            SrcA_out : out STD_LOGIC_VECTOR(31 downto 0);
            SrcB_out : out STD_LOGIC_VECTOR(31 downto 0);
            ALUResult_out : out STD_LOGIC_VECTOR(31 downto 0);
            Result_out : out STD_LOGIC_VECTOR(31 downto 0);
            State_out : out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;

    component Hex2SSEG
        port ( 
            Clk : in STD_LOGIC;                             -- display clock signal
            X : in STD_LOGIC_VECTOR (3 downto 0);           -- display hex
            Y : out STD_LOGIC_VECTOR (7 downto 0)           -- display binary bits
        );
    end component;

begin
    RC5_uut : RC5 port map (
        Clr => Clr,
        Sysclk => Sysclk,
        Clk => Clk,
        PROG => PROG_SW,
        BackDoor_in => BackDoor_in,
        Ukey32 => Ukey32,
        Key_Ind => Key_Ind,
        RF_Ind => RF_Ind,
        BackDoor_out => BackDoor_out,
        Key_Disp_out => Key_Disp,
        RF_Disp_out => RF_Disp,
        PC_out => PC,
        Instr_out => Instr,
        A1_out => A1,
        A2_out => A2,
        A3_out => A3,
        SrcA_out => SrcA,
        SrcB_out => SrcB,
        ALUResult_out => ALUResult,
        Result_out => Result,
        State_out => MIPS_State
    );
    LED_State <= MIPS_State;
    --with State select
    --    LED_State <= "100" when ST_STEP,
    --        "010" when ST_BREAK,
    --        "001" when ST_ALL,
    --        "111" when others;

    Hex2SSEG_uut : Hex2SSEG port map (
        Clk => Disp_Clk(15),
        X => Disp_Hex,
        Y => Disp_Val
    );

    -- the buffers of buttons, used to detect the rising edge
    process(Sysclk)
    begin
        if (Sysclk'event and Sysclk = '1') then
            Clk_Btn_buf <= Clk_Btn;
            Break_Btn_buf <= Break_Btn;
            All_Btn_buf <= All_Btn;
            Up_Btn_buf <= Up_Btn;
            Down_Btn_buf <= Down_Btn;
        end if;
    end process;

    with PROG_SW select
        bp_array <= (
        x"00000018", x"00000034", x"0000003a",
        x"00000018", x"00000034", x"0000003a",
        x"00000018", x"00000034", x"0000003a",
        x"000000fe", 
        others => (others => '1')) when "10",
        (others => (others => '1')) when others;

    -- clock signal provider
    process(Clr, Sysclk, PC)
    begin
        if (Clr = '0') then
            Clk <= '0';
            bp_cnt <= 0;
        elsif (Sysclk'event and Sysclk = '1') then
            if (All_Btn = '0' and Break_Btn = '0') then
                if (Clk_Btn_buf = '0' and Clk_Btn = '1') then
                    Clk <= '1';
                elsif (Clk_Btn_buf = '1' and Clk_Btn = '0') then
                    Clk <= '0';
                end if;
            elsif (Break_Btn = '1' and PC = bp_array(bp_cnt)) then
                Clk <= '0';
            else
                Clk <= not Clk;
            end if;
            if (Break_Btn_buf = '1' and Break_Btn = '0') then
                bp_cnt <= bp_cnt + 1;
            end if;
        end if;
    end process;

    ---- finite state machine
    --process(Clr, Sysclk)
    --begin
    --    if (Clr = '0') then
    --        State <= ST_STEP;
    --        bp_cnt <= 0;
    --    elsif (Sysclk'event and Sysclk = '1') then
    --        case State is
    --            when ST_STEP =>
    --                if (All_Btn_buf = '0' and All_Btn = '1') then
    --                    State <= ST_ALL;
    --                elsif (Break_Btn_buf = '0' and Break_Btn = '1') then
    --                    State <= ST_BREAK;
    --                end if;
    --            when ST_BREAK =>
    --                if (PC = bp_array(bp_cnt)) then
    --                    bp_cnt <= bp_cnt + 1;
    --                    State <= ST_STEP;
    --                elsif (All_Btn_buf = '0' and All_Btn = '1') then
    --                    State <= ST_ALL;
    --                end if;
    --            when others => null;
    --        end case;
    --    end if;
    --end process;

    ---- provide different runtime
    --process(Sysclk, State)
    --begin
    --    case State is 
    --        when ST_STEP => Clk <= Clk_Btn;
    --        when others => Clk <= Sysclk;
    --    end case;
    --end process;

    -- generate a low-frequency clock for display 
    process(Clr, Sysclk)
    begin
        if (Clr'event and Clr = '0') then
            Disp_Clk <= (others => '0');
        end if;
        if (Sysclk'event and Sysclk = '1') then
            Disp_Clk <= Disp_Clk + '1';
        end if;
    end process;

    -- each Disp_Clk(15) display one segment, select the segment to display
    process(Disp_Clk(15))
    begin
        if (Disp_Clk(15)'event and Disp_Clk(15) = '1') then
            -- use Disp_Clk(15) as a frequency divider, and Disp_Clk(18 downto 16) to select a bit
            case Disp_Clk(18 downto 16) is
                when "000" => Disp_Sel <= x"fe"; Disp_Hex <= Disp_Bits(3 downto 0); 
                when "001" => Disp_Sel <= x"fd"; Disp_Hex <= Disp_Bits(7 downto 4);
                when "010" => Disp_Sel <= x"fb"; Disp_Hex <= Disp_Bits(11 downto 8);
                when "011" => Disp_Sel <= x"f7"; Disp_Hex <= Disp_Bits(15 downto 12);
                when "100" => Disp_Sel <= x"ef"; Disp_Hex <= Disp_Bits(19 downto 16);
                when "101" => Disp_Sel <= x"df"; Disp_Hex <= Disp_Bits(23 downto 20);
                    --if (Disp_SW = x"2" or Disp_SW = x"3" or Disp_SW = x"4") then
                    --    Disp_Sel <= x"ff";
                    --else 
                    --    Disp_Sel <= x"df"; 
                    --    Disp_Hex <= Disp_Bits(23 downto 20);
                    --end if;
                when "110" => Disp_Sel <= x"bf"; Disp_Hex <= Disp_Bits(27 downto 24);
                when others => Disp_Sel <= x"7f"; Disp_Hex <= Disp_Bits(31 downto 28);
            end case;
        end if;
    end process;

    -- disp content switch
    process(Disp_SW, PC, A1, A2, A3, BackDoor_in, BackDoor_out)
    begin
        case Disp_SW is
            when x"0" => Disp_Bits <= PC;
            when x"1" => Disp_Bits <= Instr;
            --when x"2" => Disp_Bits <= A1_Disp;
            --when x"3" => Disp_Bits <= A2_Disp;
            --when x"4" => Disp_Bits <= A3_Disp;
            when x"5" => Disp_Bits <= SrcA;
            when x"6" => Disp_Bits <= SrcB;
            when x"7" => Disp_Bits <= ALUResult;
            when x"8" => Disp_Bits <= Result;
            when x"9" => Disp_Bits <= RF_Disp;
            when x"a" => Disp_Bits <= Ukey32;
            when x"b" => Disp_Bits <= Key_Disp;
            when x"c" => Disp_Bits <= BackDoor_in(63 downto 32);
            when x"d" => Disp_Bits <= BackDoor_in(31 downto 0);
            when x"e" => Disp_Bits <= BackDoor_out(63 downto 32);
            when x"f" => Disp_Bits <= BackDoor_out(31 downto 0);
            when others => null;
        end case;
    end process;

    -- generate A1_Disp, A2_Disp and A3_Disp
    --process(A1, A2, A3)
    --begin
    --    A1_Disp <= x"a10" & "000" & A1(4) & "000" & A1(3) & "000" & A1(2) & "000" & A1(1) & "000" & A1(0);
    --    A2_Disp <= x"a20" & "000" & A2(4) & "000" & A2(3) & "000" & A2(2) & "000" & A2(1) & "000" & A2(0);
    --    A3_Disp <= x"a30" & "000" & A3(4) & "000" & A3(3) & "000" & A3(2) & "000" & A3(1) & "000" & A3(0);
    --end process;

    -- select the targeted hex bits to modify
    process(Clr, Sysclk, Disp_SW)
    begin
        if (Clr = '0') then
            Key_Ind <= (others => '0');
            --RF_Ind <= (others => '0');
        elsif (Sysclk'event and Sysclk = '1') then
            case Disp_SW is
                when x"9" =>
                    -- rising edge of up button
                    if (Up_Btn = '1' and Up_Btn_buf = '0') then 
                        RF_Ind <= RF_Ind + '1';
                    -- rising edge of down button
                    elsif (Down_Btn = '1' and Down_Btn_buf = '0') then
                        RF_Ind <= RF_Ind - '1';
                    end if;
                when x"a" =>
                    -- rising edge of up button
                    if (Up_Btn = '1' and Up_Btn_buf = '0') then 
                        Ukey32(31 downto 28) <= Ukey32(31 downto 28) + ("000" & Mod_Hex(7));
                        Ukey32(27 downto 24) <= Ukey32(27 downto 24) + ("000" & Mod_Hex(6));
                        Ukey32(23 downto 20) <= Ukey32(23 downto 20) + ("000" & Mod_Hex(5));
                        Ukey32(19 downto 16) <= Ukey32(19 downto 16) + ("000" & Mod_Hex(4));
                        Ukey32(15 downto 12) <= Ukey32(15 downto 12) + ("000" & Mod_Hex(3));
                        Ukey32(11 downto 8)  <= Ukey32(11 downto 8)  + ("000" & Mod_Hex(2));
                        Ukey32(7 downto 4)   <= Ukey32(7 downto 4)   + ("000" & Mod_Hex(1));
                        Ukey32(3 downto 0)   <= Ukey32(3 downto 0)   + ("000" & Mod_Hex(0));
                    -- rising edge of down button
                    elsif (Down_Btn = '1' and Down_Btn_buf = '0') then
                        Ukey32(31 downto 28) <= Ukey32(31 downto 28) - ("000" & Mod_Hex(7));
                        Ukey32(27 downto 24) <= Ukey32(27 downto 24) - ("000" & Mod_Hex(6));
                        Ukey32(23 downto 20) <= Ukey32(23 downto 20) - ("000" & Mod_Hex(5));
                        Ukey32(19 downto 16) <= Ukey32(19 downto 16) - ("000" & Mod_Hex(4));
                        Ukey32(15 downto 12) <= Ukey32(15 downto 12) - ("000" & Mod_Hex(3));
                        Ukey32(11 downto 8)  <= Ukey32(11 downto 8)  - ("000" & Mod_Hex(2));
                        Ukey32(7 downto 4)   <= Ukey32(7 downto 4)   - ("000" & Mod_Hex(1));
                        Ukey32(3 downto 0)   <= Ukey32(3 downto 0)   - ("000" & Mod_Hex(0));
                    end if;
                when x"b" =>
                    -- rising edge of up button
                    if (Up_Btn = '1' and Up_Btn_buf = '0') then 
                        -- if index is 25, reset it to 0
                        if (Key_Ind = "11001") then 
                            Key_Ind <= (others => '0'); 
                        else
                            Key_Ind <= Key_Ind + '1';
                        end if;
                    -- rising edge of down button
                    elsif (Down_Btn = '1' and Down_Btn_buf = '0') then
                        -- if index is 0, reset it to 25
                        if (Key_Ind = "00000") then
                            Key_Ind <= "11001";
                        else
                            Key_Ind <= Key_Ind - '1';
                        end if;
                    end if;
                when x"c" => 
                    -- rising edge of up button
                    if (Up_Btn = '1' and Up_Btn_buf = '0') then 
                        BackDoor_in(63 downto 60) <= BackDoor_in(63 downto 60) + ("000" & Mod_Hex(7));
                        BackDoor_in(59 downto 56) <= BackDoor_in(59 downto 56) + ("000" & Mod_Hex(6));
                        BackDoor_in(55 downto 52) <= BackDoor_in(55 downto 52) + ("000" & Mod_Hex(5));
                        BackDoor_in(51 downto 48) <= BackDoor_in(51 downto 48) + ("000" & Mod_Hex(4));
                        BackDoor_in(47 downto 44) <= BackDoor_in(47 downto 44) + ("000" & Mod_Hex(3));
                        BackDoor_in(43 downto 40) <= BackDoor_in(43 downto 40) + ("000" & Mod_Hex(2));
                        BackDoor_in(39 downto 36) <= BackDoor_in(39 downto 36) + ("000" & Mod_Hex(1));
                        BackDoor_in(35 downto 32) <= BackDoor_in(35 downto 32) + ("000" & Mod_Hex(0));
                    -- rising edge of down button
                    elsif (Down_Btn = '1' and Down_Btn_buf = '0') then
                        BackDoor_in(63 downto 60) <= BackDoor_in(63 downto 60) - ("000" & Mod_Hex(7));
                        BackDoor_in(59 downto 56) <= BackDoor_in(59 downto 56) - ("000" & Mod_Hex(6));
                        BackDoor_in(55 downto 52) <= BackDoor_in(55 downto 52) - ("000" & Mod_Hex(5));
                        BackDoor_in(51 downto 48) <= BackDoor_in(51 downto 48) - ("000" & Mod_Hex(4));
                        BackDoor_in(47 downto 44) <= BackDoor_in(47 downto 44) - ("000" & Mod_Hex(3));
                        BackDoor_in(43 downto 40) <= BackDoor_in(43 downto 40) - ("000" & Mod_Hex(2));
                        BackDoor_in(39 downto 36) <= BackDoor_in(39 downto 36) - ("000" & Mod_Hex(1));
                        BackDoor_in(35 downto 32) <= BackDoor_in(35 downto 32) - ("000" & Mod_Hex(0));
                    end if;
                when x"d" => 
                    -- rising edge of up button
                    if (Up_Btn = '1' and Up_Btn_buf = '0') then 
                        BackDoor_in(31 downto 28) <= BackDoor_in(31 downto 28) + ("000" & Mod_Hex(7));
                        BackDoor_in(27 downto 24) <= BackDoor_in(27 downto 24) + ("000" & Mod_Hex(6));
                        BackDoor_in(23 downto 20) <= BackDoor_in(23 downto 20) + ("000" & Mod_Hex(5));
                        BackDoor_in(19 downto 16) <= BackDoor_in(19 downto 16) + ("000" & Mod_Hex(4));
                        BackDoor_in(15 downto 12) <= BackDoor_in(15 downto 12) + ("000" & Mod_Hex(3));
                        BackDoor_in(11 downto 8)  <= BackDoor_in(11 downto 8)  + ("000" & Mod_Hex(2));
                        BackDoor_in(7 downto 4)   <= BackDoor_in(7 downto 4)   + ("000" & Mod_Hex(1));
                        BackDoor_in(3 downto 0)   <= BackDoor_in(3 downto 0)   + ("000" & Mod_Hex(0));
                    -- rising edge of down button
                    elsif (Down_Btn = '1' and Down_Btn_buf = '0') then
                        BackDoor_in(31 downto 28) <= BackDoor_in(31 downto 28) - ("000" & Mod_Hex(7));
                        BackDoor_in(27 downto 24) <= BackDoor_in(27 downto 24) - ("000" & Mod_Hex(6));
                        BackDoor_in(23 downto 20) <= BackDoor_in(23 downto 20) - ("000" & Mod_Hex(5));
                        BackDoor_in(19 downto 16) <= BackDoor_in(19 downto 16) - ("000" & Mod_Hex(4));
                        BackDoor_in(15 downto 12) <= BackDoor_in(15 downto 12) - ("000" & Mod_Hex(3));
                        BackDoor_in(11 downto 8)  <= BackDoor_in(11 downto 8)  - ("000" & Mod_Hex(2));
                        BackDoor_in(7 downto 4)   <= BackDoor_in(7 downto 4)   - ("000" & Mod_Hex(1));
                        BackDoor_in(3 downto 0)   <= BackDoor_in(3 downto 0)   - ("000" & Mod_Hex(0));
                    end if;
                when others => null;
            end case;
        end if;
    end process;

    -- select the index bits to display
    process(Clr, Sysclk, Disp_SW)
    begin
        if (Clr = '0') then
            LED_Ind <= (others => '0');
        elsif (Sysclk'event and Sysclk = '1') then
            case Disp_SW is
                when x"9" => LED_Ind <= RF_Ind;
                when x"b" => LED_Ind <= Key_Ind;
                when others => LED_Ind <= (others => '0');
            end case;
        end if;
    end process;

end Behavioral;