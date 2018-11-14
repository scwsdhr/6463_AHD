library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- This block is initialized to contain the program to be executed. 
entity Instruction_Memory is
    port (		
        Clr : in STD_LOGIC;
        A : in STD_LOGIC_VECTOR(31 downto 0);
        RD : out STD_LOGIC_VECTOR(31 downto 0)
    );
end Instruction_Memory;

architecture Behavioral of Instruction_Memory is
    constant DATA_BITS : INTEGER := 32;			-- number of bits per word
    constant DEPTH     : INTEGER := 256;		-- number of entries
    type rom is array (0 to DEPTH - 1) of STD_LOGIC_VECTOR(DATA_BITS - 1 downto 0);
    signal instr_mem : rom := (
        "00000100000000010000000000000111",
        "00000100000000100000000000001000",
        "00000000010000010001100000010000",
        "11111100000000000000000000000000",
        others => x"00000000"
    );

begin
    process(Clr)
    begin
        if (Clr = '0') then
            -- TODO: reset function
            null;
        end if;
    end process;
    RD <= instr_mem(conv_integer(A));	

end Behavioral;