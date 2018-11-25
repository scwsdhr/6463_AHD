library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.header.ALL;

-- This block is initialized to contain the program to be executed. 
entity Instruction_Mem is
    port (
        A : in STD_LOGIC_VECTOR(31 downto 0);
        RD : out STD_LOGIC_VECTOR(31 downto 0)
    );
end Instruction_Mem;

architecture Behavioral of Instruction_Mem is
    signal A_short : STD_LOGIC_VECTOR(ADDR_BITS - 1 downto 0);
    type rom is array (0 to ENTRIES - 1) of STD_LOGIC_VECTOR(MEM_BITS - 1 downto 0);
    -- signal instr_mem : rom := (
    --     "0000010000000001","0000000000000111",
    --     "0000010000000010","0000000000001000",
    --     "0000000001000001","0001100000010000",
    --     "1111110000000000","0000000000000000",
    --     others => x"0000"
    -- );
    
    -- sample code 2
    -- signal instr_mem : rom := (
    --     "0000010000000001","0000000000000010",      -- ADDI R1, R0, 2  
    --     "0000010000000011","0000000000001010",      -- ADDI R3, R0, 10 
    --     "0000010000000100","0000000000001110",      -- ADDI R4, R0, 14 
    --     "0000010000000101","0000000000000010",      -- ADDI R5, R0, 2  
    --     "0010000001100100","0000000000000010",      -- SW R4, 2(R3)   
    --     "0010000001100011","0000000000000001",      -- SW R3, 1(R3)   
    --     -- "0000000010000011","0010000000010001",      -- SUB R4, R4, R3  
    --     "0000000010000011","0010000000000011",      -- SUB R4, R4, R3  
    --     "0000100000000100","0000000000000001",      -- SUBI R4, R0, 1   
    --     -- "0000000001100010","0010000000010010",      -- AND R4, R2, R3  
    --     "0000000001100010","0010000000000101",      -- AND R4, R2, R3  
    --     "0000110001000100","0000000000001010",      -- ANDI R4, R2, 10 
    --     -- "0000000001100010","0010000000010011",      -- OR R4, R2, R3   
    --     "0000000001100010","0010000000000111",      -- OR R4, R2, R3   
    --     "0001110001100010","0000000000000001",      -- LW R2, 1(R3)   
    --     "0001000001000100","0000000000001010",      -- ORI R4, R2, 10  
    --     -- "0000000001100010","0010000000010100",      -- NOR R4, R2, R3  
    --     "0000000001100010","0010000000001001",      -- NOR R4, R2, R3  
    --     -- "0001010001000100","0000000000001010",      -- SHL R4, R2, 10  
    --     "0001010001000100","0000000000000010",      -- SHR R4, R2, 2 
    --     "0010100000000101","1111111111111110",      -- BEQ R5, R0, -2 
    --     "0010010010000101","0000000000000000",      -- BLT R4, R5, 0 
    --     "0010110010000101","0000000000000000",      -- BNE R5, R4, 0 
    --     "0011000000000000","0000000000010100",      -- JMP 20 
    --     "1111110000000000","0000000000000000",      -- HAL
    --     others => "1111110000000000"
    -- );

    -- RC5 encryption
    signal instr_mem : rom := (
        -- initialize part
        -- R0 stores zero
        -- initialize R0 to be 0
        "0000000000000000","0000000000000011",          -- SUB R0, R0, R0
        -- R1 stores the input A
        "0001110000000001","0000000000110100",          -- LW R1 52(R0)
        -- R2 stores the input B
        "0001110000000010","0000000000110110",          -- LW R2 54(R0)
        -- R3 stores i
        -- initialize R3 to be 0
        "0000000001100011","0001100000000011",          -- SUB R3, R3, R3
        -- R6 stores S[0]
        "0001110000000110","0000000000000000",          -- LW R6, 0(R0)
        -- R7 stores S[1]
        "0001110000000111","0000000000000010",          -- LW R7, 2(R0)
        -- R8 stores intermediate A
        -- A = A + S[0]
        "0000000000100110","0100000000000001",          -- ADD R8, R1, R6
        -- R9 stores intermediate B
        -- B = B + S[1]
        "0000000001000111","0100100000000001",          -- ADD R9, R2, R7
        -- R10 stores 12
        "0000010000001010","0000000000001100",          -- ADDI R10, R0, 12
        
        -- encryption loop begin

        -- R4 stores 2*i
        -- ADD R4, R3, R3
        -- R5 stores 2*i+1
        -- ADDi R5, R4, 1
        -- R4 and R5 multiplied by 2 because 16-bit addressable
        -- ADD R4, R4, R4
        -- ADD R5, R5, R5
        -- R6 stores S[2*i]
        -- LW R6, 0(R4)
        -- R7 stores S[2*i+1]
        -- LW R7, 0(R5)

        -- A = A xor B
        -- R11 stores A nor B
        -- NOR R11, R8, R9
        -- R12 stores A and B
        -- AND R12, R8, R9
        -- A = A xor B = (A nor B) or (A and B) 
        -- OR R8, R11, R12

        -- A = A <<< B
        -- initialize R11 with A
        -- ADDI R11, R8, 0
        -- R13 stores B[4:0] - 33
        -- ANDI R13, R9, x"FFFFFFE0"
        -- SUBI R13, R13, 33
        -- R11 loop begin
        -- R11 stores B[4:0] MSBs of A
        -- SHR R11, R11, 1
        -- R13 = R13 + 1
        -- ADDI R13, R13, 1
        -- R11 loop while R13 < 0
        -- BNE R13, R0, -6
        -- initialize R12 with A
        -- ADDI R12, R8, 0
        -- R13 stores B[4:0]
        -- ANDI R13, R9, x"FFFFFFE0"
        -- R12 loop begin
        -- R12 stores A shifted by B[4:0] bits left
        -- ADD R12, R12, R12
        -- R13 = R13 - 1
        -- SUBI R13, R13, 1
        -- R12 loop while R13 > 0
        -- BNE R13, R0, -6
        -- A = R11 or R12
        -- OR R8, R11, R12

        -- A = A + S[2*i]
        -- ADD R8, R8, R6

        -- B = B xor A
        -- R11 stores B nor A
        -- NOR R11, R9, R8
        -- R12 stores B and A
        -- AND R12, R9, R8
        -- B = B xor A = (B nor A) or (B and A) 
        -- OR R9, R11, R12

        -- B = B <<< A
        -- initialize R11 with B
        -- ADDI R11, R9, 0
        -- R13 stores A[4:0] - 33
        -- ANDI R13, R8, x"FFFFFFE0"
        -- SUBI R13, R13, 33
        -- R11 loop begin
        -- R11 stores A[4:0] MSBs of B
        -- SHR R11, R11, 1
        -- R13 = R13 + 1
        "0000010110101101","0000000000000001",          -- ADDI R13, R13, 1
        -- R11 loop while R13 < 0
        "0010110110100000","1111111111111010",          -- BNE R13, R0, -6
        -- initialize R12 with B
        "0000010000001100","0000000000000000",          -- ADDI R12, R0, 0
        -- R13 stores A[4:0]
        "0000110110101000","1111111111100000",          -- ANDI R13, R8, x"FFFFFFE0"
        -- R12 loop begin
        -- R12 stores B shifted by A[4:0] bits left
        "0000000110001100","0110000000000001",          -- ADD R12, R12, R12
        -- R13 = R13 - 1
        "0000100110101101","0000000000000001",          -- SUBI R13, R13, 1
        -- R12 loop while R13 > 0
        "0010110110100000","1111111111111010",          -- BNE R13, R0, -6
        -- B = R11 or R12
        "0000000101101100","0100100000000111",          -- OR R9, R11, R12

        -- B = B + S[2*i+1]
        "0000000100101001","0011100000000011",          -- ADD R9, R9, R7
        
        -- encryption loop while i < 12
        "0010010001101010","1111111110110100",          -- BLT R3, R10, -76

        "1111110000000000","0000000000000000",          -- HAL
        others => x"0000";
    );

begin
    -- fix address out of range
    A_short <= A(ADDR_BITS -1 downto 0);

    RD <= instr_mem(conv_integer(A_short)) & instr_mem(conv_integer(A_short + '1'));

end Behavioral;