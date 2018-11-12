library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library work;
use work.header.ALL;

entity alu is
	port 
	(
		clr	: in STD_LOGIC;
		SrcA : in STD_LOGIC_VECTOR(31 downto 0);
		SrcB : in STD_LOGIC_VECTOR(31 downto 0);
		ALUControl 	: in STD_LOGIC_VECTOR(3 downto 0);
		Zero : out STD_LOGIC;
		ALUResult : out STD_LOGIC_VECTOR(31 downto 0)
	);
end alu;

architecture Behavioral of alu is
begin
	process(clr, SrcA, SrcB, ALUControl)
	begin
		if (clr = '0') then
            -- TODO: reset function
			null;
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

                -- shift left
                when ALU_SHL =>
                    Zero <= '0';
                    case SrcB(4 downto 0) is
                        when "00000" =>
                            ALUResult <= SrcA;
                        when "00001" =>
                            ALUResult <= SrcA(30 downto 0) & '0'; 
                        when "00010" =>
                            ALUResult <= SrcA(29 downto 0) & "00"; 
                        when "00011" =>
                            ALUResult <= SrcA(28 downto 0) & "000"; 
                        when "00100" =>
                            ALUResult <= SrcA(27 downto 0) & "0000"; 
                        when "00101" =>
                            ALUResult <= SrcA(26 downto 0) & "00000"; 
                        when "00110" =>
                            ALUResult <= SrcA(25 downto 0) & "000000"; 
                        when "00111" =>
                            ALUResult <= SrcA(24 downto 0) & "0000000"; 
                        when "01000" =>
                            ALUResult <= SrcA(23 downto 0) & "00000000"; 
                        when "01001" =>
                            ALUResult <= SrcA(22 downto 0) & "000000000"; 
                        when "01010" =>
                            ALUResult <= SrcA(21 downto 0) & "0000000000"; 
                        when "01011" =>
                            ALUResult <= SrcA(20 downto 0) & "00000000000";
                        when "01100" =>
                            ALUResult <= SrcA(19 downto 0) & "000000000000"; 
                        when "01101" =>
                            ALUResult <= SrcA(18 downto 0) & "0000000000000"; 
                        when "01110" =>
                            ALUResult <= SrcA(17 downto 0) & "00000000000000"; 
                        when "01111" =>
                            ALUResult <= SrcA(16 downto 0) & "000000000000000"; 
                        when "10000" =>
                            ALUResult <= SrcA(15 downto 0) & "0000000000000000"; 
                        when "10001" =>
                            ALUResult <= SrcA(14 downto 0) & "00000000000000000"; 
                        when "10010" =>
                            ALUResult <= SrcA(13 downto 0) & "000000000000000000"; 
                        when "10011" =>
                            ALUResult <= SrcA(12 downto 0) & "0000000000000000000"; 
                        when "10100" =>
                            ALUResult <= SrcA(11 downto 0) & "00000000000000000000"; 
                        when "10101" =>
                            ALUResult <= SrcA(10 downto 0) & "000000000000000000000"; 
                        when "10110" =>
                            ALUResult <= SrcA(9 downto 0) & "0000000000000000000000"; 
                        when "10111" =>
                            ALUResult <= SrcA(8 downto 0) & "00000000000000000000000"; 
                        when "11000" =>
                            ALUResult <= SrcA(7 downto 0) & "000000000000000000000000";
                        when "11001" =>
                            ALUResult <= SrcA(6 downto 0) & "0000000000000000000000000";
                        when "11010" =>
                            ALUResult <= SrcA(5 downto 0) & "00000000000000000000000000";
                        when "11011" =>
                            ALUResult <= SrcA(4 downto 0) & "000000000000000000000000000"; 
                        when "11100" =>
                            ALUResult <= SrcA(3 downto 0) & "0000000000000000000000000000";
                        when "11101" =>
                            ALUResult <= SrcA(2 downto 0) & "00000000000000000000000000000";
                        when "11110" =>
                            ALUResult <= SrcA(1 downto 0) & "000000000000000000000000000000"; 
                        when "11111" =>
                            ALUResult <= SrcA(0) & "0000000000000000000000000000000";
                        when others =>
                            AUResult <= "00000000000000000000000000000000";
                    end case;
                    
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
                when ALU_BE =>
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
                else
                    ALUResult <= x"00000000";
                    Zero <= '0';

                -- others
                when others =>
                    null;
            end case;
        end if;	
	end process;

end Behavioral;