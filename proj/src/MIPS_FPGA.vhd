library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- This module is used to implement the MIPS design on FPGA board.
entity MIPS_FPGA is
    port(
        Clr : in STD_LOGIC;                                 -- reset signal
        Sysclk : in STD_LOGIC;                              -- system clock
        Clk : in STD_LOGIC;                                 -- clock signal
        Disp_SW : in STD_LOGIC_VECTOR(3 downto 0);          -- display content switch
        LED_State : out STD_LOGIC_VECTOR(4 downto 0);       -- LED display to show the current stage
        Disp_Sel : out STD_LOGIC_VECTOR(7 downto 0);        -- select the digit to lit
        Disp_Val : out STD_LOGIC_VECTOR(7 downto 0)         -- the value to display
    );
end MIPS_FPGA;

architecture Behavioral of MIPS_FPGA is
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

    signal Disp_Clk : STD_LOGIC_VECTOR(18 downto 0);       -- display clock
    signal Disp_Hex : STD_LOGIC_VECTOR(3 downto 0);        -- display hex number
    signal Disp_Bits : STD_LOGIC_VECTOR(31 downto 0);      -- display text in bits

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

    component Hex2LED
        port ( 
            Clk : in STD_LOGIC;                             -- display clock signal
            X : in STD_LOGIC_VECTOR (3 downto 0);           -- display hex
            Y : out STD_LOGIC_VECTOR (7 downto 0)           -- display binary bits
        );
    end component;

begin
    MIPS_uut : MIPS port map (
        Clr => Clr,
        Clk => Clk,
        PC_out => PC,
        Instr_out => Instr,
        A1_out => A1,
        A2_out => A2,
        A3_out => A3,
        SrcA_out => SrcA,
        SrcB_out => SrcB,
        ALUResult_out => ALUResult,
        Result_out => Result,
        State_out => LED_State
    );

    Hex2LED_uut : Hex2LED port map (
        Clk => Disp_Clk(15),
        X => Disp_Hex,
        Y => Disp_Val
    );

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
                when "101" => 
                    if (Disp_SW = x"2" or Disp_SW = x"3" or Disp_SW = x"4") then
                        Disp_Sel <= x"ff";
                    else 
                        Disp_Sel <= x"df"; 
                        Disp_Hex <= Disp_Bits(23 downto 20);
                    end if;
                when "110" => Disp_Sel <= x"bf"; Disp_Hex <= Disp_Bits(27 downto 24);
                when others => Disp_Sel <= x"7f"; Disp_Hex <= Disp_Bits(31 downto 28);
            end case;
        end if;
    end process;

    -- disp content switch
    process(Disp_SW, A1, A2, A3)
    begin
        case Disp_SW is
            when x"0" => Disp_Bits <= PC;
            when x"1" => Disp_Bits <= Instr;
            when x"2" => Disp_Bits <= A1_Disp;
            when x"3" => Disp_Bits <= A2_Disp;
            when x"4" => Disp_Bits <= A3_Disp;
            when x"5" => Disp_Bits <= SrcA;
            when x"6" => Disp_Bits <= SrcB;
            when x"7" => Disp_Bits <= ALUResult;
            when x"8" => Disp_Bits <= Result;
            when others => null;
        end case;
    end process;

    -- generate A1_Disp, A2_Disp and A3_Disp
    process(A1, A2, A3)
    begin
        A1_Disp <= x"a10" & "000" & A1(4) & "000" & A1(3) & "000" & A1(2) & "000" & A1(1) & "000" & A1(0);
        A2_Disp <= x"a20" & "000" & A2(4) & "000" & A2(3) & "000" & A2(2) & "000" & A2(1) & "000" & A2(0);
        A3_Disp <= x"a30" & "000" & A3(4) & "000" & A3(3) & "000" & A3(2) & "000" & A3(1) & "000" & A3(0);
    end process;

end Behavioral;