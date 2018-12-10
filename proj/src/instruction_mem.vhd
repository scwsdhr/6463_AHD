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
        Clk : in STD_LOGIC;
        A : in STD_LOGIC_VECTOR(31 downto 0);
        PROG : in STD_LOGIC_VECTOR(1 downto 0);
        RD : out STD_LOGIC_VECTOR(31 downto 0)
    );
end Instruction_Mem;

architecture Behavioral of Instruction_Mem is
    signal Clr_buf : STD_LOGIC := '1';
    signal A_short : STD_LOGIC_VECTOR(ADDR_BITS - 1 downto 0);
     --signal instr_mem : mem := (
     --    "0000010000000001","0000000000000111",     -- ADDI R1, R0, 7
     --    "0000010000000010","0000000000001000",     -- ADDI R2, R0, 8
     --    "0000000001000001","0001100000010000",     -- ADD R3, R2, R1
     --    "1111110000000000","0000000000000000",     -- HAL
     --    others => x"0000"
     --);
    
    -- sample code 2
     --signal instr_mem : mem := (
     --    "0000010000000001","0000000000000010",      -- ADDI R1, R0, 2  
     --    "0000010000000011","0000000000001010",      -- ADDI R3, R0, 10 
     --    "0000010000000100","0000000000001110",      -- ADDI R4, R0, 14 
     --    "0000010000000101","0000000000000010",      -- ADDI R5, R0, 2  
     --    "0010000001100100","0000000000000010",      -- SW R4, 2(R3)   
     --    "0010000001100011","0000000000000001",      -- SW R3, 1(R3)   
     --    -- "0000000010000011","0010000000010001",      -- SUB R4, R4, R3  
     --    "0000000010000011","0010000000000011",      -- SUB R4, R4, R3  
     --    "0000100000000100","0000000000000001",      -- SUBI R4, R0, 1   
     --    -- "0000000001100010","0010000000010010",      -- AND R4, R2, R3  
     --    "0000000001100010","0010000000000101",      -- AND R4, R2, R3  
     --    "0000110001000100","0000000000001010",      -- ANDI R4, R2, 10 
     --    -- "0000000001100010","0010000000010011",      -- OR R4, R2, R3   
     --    "0000000001100010","0010000000000111",      -- OR R4, R2, R3   
     --    "0001110001100010","0000000000000001",      -- LW R2, 1(R3)   
     --    "0001000001000100","0000000000001010",      -- ORI R4, R2, 10  
     --    -- "0000000001100010","0010000000010100",      -- NOR R4, R2, R3  
     --    "0000000001100010","0010000000001001",      -- NOR R4, R2, R3  
     --    -- "0001010001000100","0000000000001010",      -- SHL R4, R2, 10  
     --    "0001010001000100","0000000000000010",      -- SHR R4, R2, 2 
     --    "0010100000000101","1111111111111110",      -- BEQ R5, R0, -2 
     --    "0010010010000101","0000000000000000",      -- BLT R4, R5, 0 
     --    "0010110010000101","0000000000000000",      -- BNE R5, R4, 0 
     --    "0011000000000000","0000000000010100",      -- JMP 20 
     --    "1111110000000000","0000000000000000",      -- HAL
     --    others => "1111110000000000"
     --);

    -- RC5 encryption
    --signal instr_mem : mem := instr_enc;

    -- RC5 decryption
    --signal instr_mem : mem := instr_dec;

    -- RC5 key expansion
    --signal instr_mem : mem := instr_key;

    -- RC5
    --signal instr_mem : mem := instr_rc5;

    signal instr_mem : mem := instr_clr;
    --signal instr_mem_pre : mem := instr_clr;

begin
    -- fix address out of range
    A_short <= A(ADDR_BITS -1 downto 0);

    RD <= instr_mem(conv_integer(A_short)) & instr_mem(conv_integer(A_short + '1'));
    
    -- reset and load instruction
    process(Clr, Clk, PROG)
    begin
        if (Clk'event and Clk = '1') then
            if (Clr_buf = '1' and Clr = '0') then
                case PROG is
                    when "00" => instr_mem <= instr_clr;
                    when "01" => instr_mem <= instr_enc;
                    when "10" => instr_mem <= instr_dec;
                    when "11" => instr_mem <= instr_key;
                    when others => null;
                end case;
            end if;
        end if;
    end process;

     --buffer update
    process(Clr, Clk)
    begin
        if (Clk'event and Clk = '1') then
            Clr_buf <= Clr;
        end if;
    end process;

end Behavioral;