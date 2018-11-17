library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.header.ALL;

-- This block is initialized to contain the program to be executed. 
entity Instruction_Mem is
    port (		
        Clr : in STD_LOGIC;
        A : in STD_LOGIC_VECTOR(31 downto 0);
        RD : out STD_LOGIC_VECTOR(31 downto 0)
    );
end Instruction_Mem;

architecture Behavioral of Instruction_Mem is
    type rom is array (0 to ENTRIES - 1) of STD_LOGIC_VECTOR(MEM_BITS - 1 downto 0);
    -- signal instr_mem : rom := (
    --     "0000010000000001","0000000000000111",
    --     "0000010000000010","0000000000001000",
    --     "0000000001000001","0001100000010000",
    --     "1111110000000000","0000000000000000",
    --     others => x"0000"
    -- );
    
    -- sample code 2
    signal instr_mem : rom := (
        "0000010000000001","0000000000000010",      --ADDI R1, R0, 2  
        "0000010000000011","0000000000001010",      --ADDI R3, R0, 10 
        "0000010000000100","0000000000001110",      --ADDI R4, R0, 14 
        "0000010000000101","0000000000000010",      --ADDI R5, R0, 2  
        "0010000001100100","0000000000000010",      --SW R4, 2(R3)   
        "0010000001100011","0000000000000001",      --SW R3, 1(R3)   
        "0000000010000011","0010000000010001",      --SUB R4, R4, R3  
        "0000100000000100","0000000000000001",      --SUBI R4, R0, 1   
        "0000000001100010","0010000000010010",      --AND R4, R2, R3  
        "0000110001000100","0000000000001010",      --ANDI R4, R2, 10 
        "0000000001100010","0010000000010011",      --OR R4, R2, R3   
        "0001110001100010","0000000000000001",      --LW R2, 1(R3)   
        "0001000001000100","0000000000001010",      --ORI R4, R2, 10  
        "0000000001100010","0010000000010100",      --NOR R4, R2, R3  
        -- "0001010001000100","0000000000001010",   --SHL/ R4, R2, 10  
        "0001100001000100","0000000000001010",      --SHR R4, R2, 10 
        "0010100000000101","1111111111111110",      --BEQ R5, R0, -2 
        "0010010010000101","0000000000000000",      --BLT R5, R4, 0 
        "0010110010000101","0000000000000000",      --BNE R5, R4, 0 
        "0011000000000000","0000000000010100",      --JMP 20 
        "1111110000000000","0000000000000000",      --HAL
        others => x"0000"
);

begin
    process(Clr)
    begin
        if (Clr = '0') then
            -- TODO: reset function
            null;
        end if;
    end process;
    RD <= instr_mem(conv_integer(A)) & instr_mem(conv_integer(A + '1'));	

end Behavioral;