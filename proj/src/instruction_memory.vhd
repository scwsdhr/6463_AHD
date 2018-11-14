library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.header.ALL;

-- This block is initialized to contain the program to be executed. 
entity Instruction_Memory is
    port (		
        Clr : in STD_LOGIC;
        A : in STD_LOGIC_VECTOR(31 downto 0);
        RD : out STD_LOGIC_VECTOR(31 downto 0)
    );
end Instruction_Memory;

architecture Behavioral of Instruction_Memory is
    type rom is array (0 to ENTRIES - 1) of STD_LOGIC_VECTOR(MEM_BITS - 1 downto 0);
    signal instr_mem : rom := (
        "0000010000000001","0000000000000111",
        "0000010000000010","0000000000001000",
        "0000000001000001","0001100000010000",
        "1111110000000000","0000000000000000",
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