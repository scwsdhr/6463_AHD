library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.header.ALL;

-- This is the top level of a single-cycle MIPS processor design.
entity RC5_ENC is
    port(
        Clr : in STD_LOGIC;
        Clk : in STD_LOGIC;
        BackDoor : in STD_LOGIC_VECTOR(63 downto 0);
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
end RC5_ENC;

architecture Behavioral of RC5_ENC is
    signal Clk_1 : STD_LOGIC;
    signal Clk_2 : STD_LOGIC;
    signal Clk_3 : STD_LOGIC;
    signal PC_buf_buf : STD_LOGIC_VECTOR(31 downto 0);
    signal PC_buf : STD_LOGIC_VECTOR(31 downto 0);
    signal PC : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal PCPlus : STD_LOGIC_VECTOR(31 downto 0);
    signal Instr : STD_LOGIC_VECTOR(31 downto 0);
    signal MemtoReg : STD_LOGIC;
    signal MemWrite : STD_LOGIC;
    signal Branch : STD_LOGIC;
    signal Jump : STD_LOGIC;
    signal ALUControl : STD_LOGIC_VECTOR(3 downto 0);
    signal ALUSrc : STD_LOGIC;
    signal RegDst : STD_LOGIC;
    signal RegWrite : STD_LOGIC;
    signal RegWrite_delay : STD_LOGIC;
    signal Mux2_A : STD_LOGIC_VECTOR(31 downto 0);
    signal Mux2_B : STD_LOGIC_VECTOR(31 downto 0);
    signal WriteReg : STD_LOGIC_VECTOR(4 downto 0);
    signal WriteReg_ext : STD_LOGIC_VECTOR(31 downto 0);
    signal Target_PC_buf : STD_LOGIC_VECTOR(31 downto 0);
    signal Target_PC : STD_LOGIC_VECTOR(31 downto 0);
    signal SignImm : STD_LOGIC_VECTOR(31 downto 0);
    signal SignImm_LS2 : STD_LOGIC_VECTOR(31 downto 0);
    signal SrcA : STD_LOGIC_VECTOR(31 downto 0);
    signal SrcB : STD_LOGIC_VECTOR(31 downto 0);
    signal Zero : STD_LOGIC;
    signal ALUResult : STD_LOGIC_VECTOR(31 downto 0);
    signal WriteData : STD_LOGIC_VECTOR(31 downto 0);
    signal PCBranch : STD_LOGIC_VECTOR(31 downto 0);
    signal PCSrc : STD_LOGIC;
    signal ReadData : STD_LOGIC_VECTOR(31 downto 0);
    signal Result : STD_LOGIC_VECTOR(31 downto 0);

    component Mux
        port(
            A : in STD_LOGIC_VECTOR(31 downto 0);
            B : in STD_LOGIC_VECTOR(31 downto 0);
            Sel : in STD_LOGIC;
            O : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    component Flipflop
        port (
            Clr : in STD_LOGIC;
            Clk : in STD_LOGIC;
            I : in STD_LOGIC_VECTOR(31 downto 0);
            O : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    component Instruction_Mem
        port (
            A : in STD_LOGIC_VECTOR(31 downto 0);
            RD : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    component Adder
        port (
            A : in STD_LOGIC_VECTOR(31 downto 0);
            B : in STD_LOGIC_VECTOR(31 downto 0);
            O : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    component Control_Unit
        port (
            Clr : in STD_LOGIC;
            Op : in STD_LOGIC_VECTOR(5 downto 0);
            Funct : in STD_LOGIC_VECTOR(5 downto 0);
            MemtoReg : out STD_LOGIC;
            MemWrite : out STD_LOGIC;
            Branch : out STD_LOGIC;
            Jump : out STD_LOGIC;
            ALUControl : out STD_LOGIC_VECTOR(3 downto 0);
            ALUSrc : out STD_LOGIC;
            RegDst : out STD_LOGIC;
            RegWrite : out STD_LOGIC
        );
    end component;

    component Reg_File
        port (
            Clr : in STD_LOGIC;
            Clk : in STD_LOGIC;
            A1 : in STD_LOGIC_VECTOR(4 DOWNTO 0);
            A2 : in STD_LOGIC_VECTOR(4 DOWNTO 0);
            A3 : in STD_LOGIC_VECTOR(4 DOWNTO 0);
            WD3 : in STD_LOGIC_VECTOR(31 DOWNTO 0);
            WE3 : in STD_LOGIC;
            RD1 : out STD_LOGIC_VECTOR(31 DOWNTO 0);
            RD2 : out STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    end component;

    component Sign_Extend 
        port (
            Imm : in STD_LOGIC_VECTOR(15 downto 0);
            SignImm : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    component Left_Shift_1
        port (
            A : in STD_LOGIC_VECTOR(31 downto 0);
            O : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    component ALU
        port (
            Clr	: in STD_LOGIC;
            SrcA : in STD_LOGIC_VECTOR(31 downto 0);
            SrcB : in STD_LOGIC_VECTOR(31 downto 0);
            ALUControl 	: in STD_LOGIC_VECTOR(3 downto 0);
            Zero : out STD_LOGIC;
            ALUResult : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    component Data_Mem_BD 
        port (
            Clr	: in STD_LOGIC;
            Clk	: in STD_LOGIC;
            A : in STD_LOGIC_VECTOR(31 downto 0);
            WD : in STD_LOGIC_VECTOR(31 downto 0);
            WE : in STD_LOGIC;
            BD : in STD_LOGIC_VECTOR(63 downto 0);
            RD : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    type StateType is ( 
        ST_READY,                       -- idle state
        ST_IF,                          -- instruction fetch
        ST_RF,                          -- register file
        ST_WB,                          -- write back
        ST_HALT);                       -- halt
    signal state : StateType;

begin
    Mux1 : Mux port map (
        A => PCPlus,
        B => PCBranch,
        Sel => PCSrc,
        O => PC_buf_buf
    );

    Flipflop_uut : Flipflop port map (
        Clr => Clr,
        Clk => Clk_1,
        I => PC_buf,
        O => PC
    );

    Instruction_Mem_uut : Instruction_Mem port map (
        A => PC,
        RD => Instr
    );

    Adder1 : Adder port map (
        A => PC,
        B => PCDelta,
        O => PCPlus
    );

    Control_Unit_uut : Control_Unit port map (
        Clr => Clr,
		Op => Instr(31 downto 26),
		Funct => Instr(5 downto 0),
		MemtoReg => MemtoReg,
        MemWrite => MemWrite,
        Branch => Branch,
        Jump => Jump,
        ALUControl => ALUControl,
        ALUSrc => ALUSrc,
        RegDst => RegDst,
        RegWrite => RegWrite
    );

    -- WB buffer
    process(Clr, Clk)
    begin
        if (Clr = '0') then
            RegWrite_delay <= '0';
        elsif (Clk'event and Clk = '1') then
            case state is
                when ST_IF => 
                    RegWrite_delay <= RegWrite;
                when ST_RF => 
                    RegWrite_delay <= RegWrite;
                when others => 
                    RegWrite_delay <= '0';
            end case;
        end if;
    end process;

    Reg_File_uut : Reg_File port map (
        Clr => Clr,
        Clk => Clk_2,
        A1 => Instr(25 downto 21),
        A2 => Instr(20 downto 16),
        A3 => WriteReg,
        WD3 => Result,
        WE3 => RegWrite_delay,
        RD1 => SrcA,
        RD2 => WriteData
    );

    Sign_Extend_uut : Sign_Extend port map (
        Imm => Instr(15 downto 0),
        SignImm => SignImm
    );

    Mux2_A <= "000" & x"000000" & Instr(20 downto 16);
    Mux2_B <= "000" & x"000000" & Instr(15 downto 11);
    Mux2 : Mux port map (
        A => Mux2_A,
        B => Mux2_B,
        Sel => RegDst,
        O => WriteReg_ext
    );
    WriteReg <= WriteReg_ext(4 downto 0);

    Mux3 : Mux port map (
        A => WriteData,
        B => SignImm,
        Sel => ALUSrc,
        O => SrcB
    );

    Left_Shift_1_uut : Left_Shift_1 port map (
        A => SignImm,
        O => SignImm_LS2
    );

    ALU_uut : ALU port map (
        Clr => Clr,
        SrcA => SrcA,
        SrcB => SrcB,
        ALUControl => ALUControl,
        Zero => Zero,
        ALUResult => ALUResult
    );

    Adder2 : Adder port map (
        A => SignImm_LS2,
        B => PCPlus,
        O => PCBranch
    );

    PCSrc <= Branch and Zero;

    Data_Mem_BD_uut : Data_Mem_BD port map (
        Clr => Clr,
        Clk => Clk_3,
        A => ALUResult,
        WD => WriteData,
        WE => MemWrite,
        BD => BackDoor,
        RD => ReadData
    );

    Mux4 : Mux port map (
        A => ALUResult,
        B => ReadData,
        Sel => MemtoReg,
        O => Result
    );

    Left_Shift_1_jmp : Left_Shift_1 port map (
        A => Instr,
        O => Target_PC_buf
    );

    Target_PC <= PC(31 downto 28) & Target_PC_buf(27 downto 0);

    Mux5 : Mux port map (
        A => PC_buf_buf,
        B => Target_PC,
        Sel => Jump,
        O => PC_buf
    );

    -- finite state machine
    process(Clr, Clk)
    begin
        if (Clr = '0') then
            state <= ST_READY;
        elsif (Clk'event and Clk = '1') then
            case state is
                when ST_READY => 
                    if (Instr(31 downto 26) = OP_HAL) then
                        state <= ST_HALT;
                    else 
                        state <= ST_RF;
                    end if;
                when ST_IF => 
                    if (Instr(31 downto 26) = OP_HAL) then
                        state <= ST_HALT;
                    else
                        state <= ST_RF;
                    end if;
                when ST_RF => state <= ST_WB;
                when ST_WB => state <= ST_IF;
                when others => null;
            end case;
        end if;
    end process;

    -- IF
    process(Clr, state)
    begin
        if (state = ST_READY) then
            Clk_1 <= '0';
        elsif (state = ST_IF) then
            Clk_1 <= '1';
        else 
            Clk_1 <= '0';
        end if;
    end process;

    -- RF
    process(Clr, Clk, state)
    begin
        if (Clr = '0') then
            Clk_2 <= '0';
        elsif (state = ST_IF) then
            Clk_2 <= Clk;
        elsif (state = ST_RF) then
            Clk_2 <= Clk;
        else 
            Clk_2 <= '0';
        end if;
    end process;

    -- WB
    process(Clr, state)
    begin
        if (Clr = '0') then
            Clk_3 <= '0';
        elsif (state = ST_WB) then
            Clk_3 <= '1';
        else
            Clk_3 <= '0';
        end if;
    end process;

    -- output signals, used on FPGA
    PC_out <= PC;
    Instr_out <= Instr;
    A1_out <= Instr(25 downto 21);
    A2_out <= Instr(20 downto 16);
    A3_out <= WriteReg;
    SrcA_out <= SrcA;
    SrcB_out <= SrcB;
    ALUResult_out <= ALUResult;
    Result_out <= Result;
    with state select
        State_out <= "10000" when ST_READY,
            "01000" when ST_IF,
            "00100" when ST_RF,
            "00010" when ST_WB,
            "00001" when ST_HALT;
    
end Behavioral;