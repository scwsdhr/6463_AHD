library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This is the top level of a single-cycle MIPS processor design.
entity MIPS is
    port(
        Clr : in STD_LOGIC;
        Clk : in STD_LOGIC
    );
end MIPS;

architecture Behavioral of MIPS is
    signal PC_buf : STD_LOGIC_VECTOR(31 downto 0);
    signal PC : STD_LOGIC_VECTOR(31 downto 0);
    signal PCPlus : STD_LOGIC_VECTOR(31 downto 0);
    signal Instr : STD_LOGIC_VECTOR(31 downto 0);
    signal MemtoReg : STD_LOGIC;
    signal MemWrite : STD_LOGIC;
    signal Branch : STD_LOGIC;
    signal ALUControl : STD_LOGIC_VECTOR(3 downto 0);
    signal ALUSrc : STD_LOGIC;
    signal RegDst : STD_LOGIC;
    signal RegWrite : STD_LOGIC;
    signal Mux2_A : STD_LOGIC_VECTOR(31 downto 0);
    signal Mux2_B : STD_LOGIC_VECTOR(31 downto 0);
    signal WriteReg : STD_LOGIC_VECTOR(4 downto 0);
    signal WriteReg_ext : STD_LOGIC_VECTOR(31 downto 0);
    signal SignImm : STD_LOGIC_VECTOR(31 downto 0);
    signal SignImm_LS2 : STD_LOGIC_VECTOR(31 downto 0);
    signal Op : STD_LOGIC_VECTOR(5 downto 0);
    signal Funct : STD_LOGIC_VECTOR(5 downto 0);
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
            Clk : in STD_LOGIC;
            I : in STD_LOGIC_VECTOR(31 downto 0);
            O : in STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    component Instruction_Memory
        port (
            Clr : in STD_LOGIC;
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

    component Left_Shift_2
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

    component Data_Memory 
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
    Mux1 : Mux port map (
        A => PCPlus,
        B => PCBranch,
        Sel => PCSrc,
        O => PC_buf
    );

    Flipflop1 : Flipflop port map (
        Clk => Clk,
        I => PC_buf,
        O => PC
    );

    Instruction_Memory_uut : Instruction_Memory port map (
        Clr => Clr,
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
		Op => Op,
		Funct => Funct,
		MemtoReg => MemtoReg,
        MemWrite => MemWrite,
        Branch => Branch,
        ALUControl => ALUControl,
        ALUSrc => ALUSrc,
        RegDst => RegDst,
        RegWrite => RegWrite
    );

    Reg_File_uut : Reg_File port map (
        Clr => Clr,
        Clk => Clk,
        A1 => Instr(25 downto 21),
        A2 => Instr(20 downto 16),
        A3 => WriteReg,
        WD3 => Result,
        WE3 => RegWrite,
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
    WriteReg <= WriteReg_ext(5 downto 0);

    Mux3 : Mux port map (
        A => WriteData,
        B => SignImm,
        Sel => ALUSrc,
        O => SrcB
    );

    Left_Shift_2_uut : Left_Shift_2 port map (
        A => SignImm,
        O => SignImm_LS2
    );

    ALU0 : ALU port map (
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

    Data_Memory_uut : Data_Memory port map (
        Clr => Clr,
        Clk => Clk,
        A => ALUResult,
        WD => WriteData,
        WE => MemWrite,
        RD => ReadData
    );

    Mux4 : Mux port map (
        A => ALUResult,
        B => ReadData,
        Sel => MemtoReg,
        O => Result
    );

end Behavioral;