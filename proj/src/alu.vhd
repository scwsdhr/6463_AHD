library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library work;
use work.header.ALL;

-- This block performs operations such as addition, subtraction, comparison, etc. 
-- It uses the control signals generated by the control unit.
entity ALU is
	port (
		Clr	: in STD_LOGIC;
		SrcA : in STD_LOGIC_VECTOR(31 downto 0);
		SrcB : in STD_LOGIC_VECTOR(31 downto 0);
		ALUControl 	: in STD_LOGIC_VECTOR(3 downto 0);
		Zero : out STD_LOGIC;
		ALUResult : out STD_LOGIC_VECTOR(31 downto 0)
	);
end ALU;

architecture Behavioral of ALU is
begin
	process(Clr, SrcA, SrcB, ALUControl)
	begin
		if (Clr = '0') then
            Zero <= '0';
            ALUResult <= (others => '0');
        else
            -- initialize
            ALUResult <= x"00000000";
            Zero <= '0';
            
            case ALUControl is
                -- add
                when ALU_ADD =>
                    ALUResult <= SrcA + SrcB;
                    Zero <= '0';

                -- substract
                when ALU_SUB =>
                    ALUResult <= (SrcA - SrcB) ;
                    Zero <= '0';

                -- and
                when ALU_AND =>
                    ALUResult <= SrcA and SrcB;
                    Zero <= '0';

                -- or
                when  ALU_OR =>
                    ALUResult <= SrcA or SrcB;
                    Zero <= '0';

                -- nor
                when ALU_NOR =>
                    ALUResult <= SrcA nor SrcB;
                    Zero <= '0';
                
                -- shift right
                when ALU_SHR =>
                    Zero <= '0';
                    case SrcB(4 downto 0) is
                        when "00000" =>
                        ALUResult <= SrcA;
                        when "00001" =>
                        ALUResult <= '0' & SrcA(31 downto 1); 
                        when "00010" =>
                        ALUResult <= "00" & SrcA(31 downto 2); 
                        when "00011" =>
                        ALUResult <= "000" & SrcA(31 downto 3); 
                        when "00100" =>
                        ALUResult <= "0000" & SrcA(31 downto 4); 
                        when "00101" =>
                        ALUResult <= "00000" & SrcA(31 downto 5); 
                        when "00110" =>
                        ALUResult <= "000000" & SrcA(31 downto 6); 
                        when "00111" =>
                        ALUResult <= "0000000" & SrcA(31 downto 7); 
                        when "01000" =>
                        ALUResult <= "00000000" & SrcA(31 downto 8); 
                        when "01001" =>
                        ALUResult <= "000000000" & SrcA(31 downto 9); 
                        when "01010" =>
                        ALUResult <= "0000000000" & SrcA(31 downto 10); 
                        when "01011" =>
                        ALUResult <= "00000000000" & SrcA(31 downto 11);
                        when "01100" =>
                        ALUResult <= "000000000000" & SrcA(31 downto 12); 
                        when "01101" =>
                        ALUResult <= "0000000000000" & SrcA(31 downto 13); 
                        when "01110" =>
                        ALUResult <= "00000000000000" & SrcA(31 downto 14); 
                        when "01111" =>
                        ALUResult <= "000000000000000" & SrcA(31 downto 15); 
                        when "10000" =>
                        ALUResult <= "0000000000000000" & SrcA(31 downto 16); 
                        when "10001" =>
                        ALUResult <= "00000000000000000" & SrcA(31 downto 17); 
                        when "10010" =>
                        ALUResult <= "000000000000000000" & SrcA(31 downto 18); 
                        when "10011" =>
                        ALUResult <= "0000000000000000000" & SrcA(31 downto 19); 
                        when "10100" =>
                        ALUResult <= "00000000000000000000" & SrcA(31 downto 20); 
                        when "10101" =>
                        ALUResult <= "000000000000000000000" & SrcA(31 downto 21); 
                        when "10110" =>
                        ALUResult <= "0000000000000000000000" & SrcA(31 downto 22); 
                        when "10111" =>
                        ALUResult <= "00000000000000000000000" & SrcA(31 downto 23); 
                        when "11000" =>
                        ALUResult <= "000000000000000000000000" & SrcA(31 downto 24);
                        when "11001" =>
                        ALUResult <= "0000000000000000000000000" & SrcA(31 downto 25);
                        when "11010" =>
                        ALUResult <= "00000000000000000000000000" & SrcA(31 downto 26);
                        when "11011" =>
                        ALUResult <= "000000000000000000000000000" & SrcA(31 downto 27); 
                        when "11100" =>
                        ALUResult <= "0000000000000000000000000000" & SrcA(31 downto 28);
                        when "11101" =>
                        ALUResult <= "00000000000000000000000000000" & SrcA(31 downto 29);
                        when "11110" =>
                        ALUResult <= "000000000000000000000000000000" & SrcA(31 downto 30); 
                        when "11111" =>
                        ALUResult <= "0000000000000000000000000000000" & SrcA(31); 
                        when others =>
                        ALUResult <= "00000000000000000000000000000000";
                    end case;

                -- branch if less than
                when ALU_BLT =>
                    if (SrcA < SrcB) then
                        Zero <= '1';
                    else
                        Zero <= '0';
                    end if;
                    
                -- branch if equal
                when ALU_BEQ =>
                    if (SrcA = SrcB) then
                        Zero <= '1';
                    else
                        Zero <= '0';
                    end if;

                -- branch if not equal
                when ALU_BNE =>
                    if (SrcA = SrcB) then
                        Zero <= '0';
                    else
                        Zero <= '1';
                    end if;

                -- others
                when others =>
                    Zero <= '0';
                    ALUResult <= (others => '0');
            end case;
        end if;	
	end process;

end Behavioral;