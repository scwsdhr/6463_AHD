library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.header.ALL;

-- This block takes as input some or all of the 32 bits of the instruction, 
-- and computes the proper control signals to be utilized for other blocks. 
-- These signals are generated based on the type and the content of the instruction being executed. 
entity Control_Unit is
	port (
        clr : in STD_LOGIC;
		Op : in STD_LOGIC_VECTOR(5 downto 0);
		Funct : in STD_LOGIC_VECTOR(5 downto 0);
		MemtoReg : out STD_LOGIC;
        MemWrite : out STD_LOGIC;
        Branch : out STD_LOGIC;
        ALUControl : out STD_LOGIC_VECTOR(3 downto 0);
        ALUSrc : out STD_LOGIC;
        RegDst : out STD_LOGIC;
        RegWrite : out STD_LOGIC;
	);
end Control_Unit;

architecture Behavioral of Control_Unit is
begin
    -- MemtoReg
    process
        if (clr = '0') then
            -- TODO: reset function
            null;
        elsif (Op = OP_LW) then
            MemtoReg <= '1';
        else
            MemtoReg <= '0';
        end if;
    end process;

    -- MemWrite 
    process
        if (clr = '0') then
            -- TODO: reset function
            null;
        elsif (Op = OP_SW) then
            MemWrite <= '1';
        else
            MemWrite <= '0';
        end if;
    end process;

    -- Branch
    process
        if (clr = '0') then
            -- TODO: reset function
            null;
        elsif (Op = OP_BLT or Op = OP_BEQ or Op = OP_BNE) then
            Branch <= '1';
        else
            Branch <= '0';
        end if;
    end process;

    -- ALUControl
    process
        if (clr = '0') then
            -- TODO: reset function
            null;
        else
            case Op is
                when OP_ADD_SUB_AND_OR_NOR =>
                    case Funct is
                        when FUNC_ADD => ALUControl <= ALU_ADD;
                        when FUNC_SUB => ALUControl <= ALU_SUB;
                        when FUNC_AND => ALUControl <= ALU_AND;
                        when FUNC_OR  => ALUControl <= ALU_OR;
                        when FUNC_NOR => ALUControl <= ALU_NOR;
                        when others => null;
                    end case;
                when OP_ADDI =>
                    ALUControl <= ALU_ADD;
                when OP_SUBI => 
                    ALUControl <= ALU_SUB;
                when OP_ANDI =>
                    ALUControl <= ALU_AND;
                when OP_ORI =>
                    ALUControl <= ALU_OR;
                when OP_SHL => 
                    ALUControl <= ALU_SHL;
                when OP_SHR => 
                    ALUControl <= ALU_SHR;
                when OP_BLT => 
                    ALUControl <= ALU_BLT;
                when OP_BE => 
                    ALUControl <= ALU_BE;
                when OP_BNE => 
                    ALUControl <= ALU_BNE;
                when others =>
                    ALUControl <= ALU_NDEF;
            end case;
        end if;
    end process;

    -- ALUSrc
    process
        if (clr = '0') then
            -- TODO: reset function
            null;
        elsif (Op = OP_ADDI or Op = OP_SUBI or Op = OP_ANDI or Op = OP_ORI) then
            ALUSrc <= '1';
        else
            ALUSrc <= '0';
        end if;
    end process;

    -- RegDst
    process
        if (clr = '0') then
            -- TODO: reset function
            null;
        elsif (Op = OP_ADD_SUB_AND_OR_NOR) then
            RegDst <= '0';
        else
            RegDst <= '1';
        end if;
    end process;

    -- RegWrite 
    process
        if (clr = '0') then
            -- TODO: reset function
            null;
        elsif (Op = OP_SW or Op = OP_BLT or Op = OP_BEQ or Op = OP_BNE or Op = OP_JMP or Op = OP_HAL) then
            MemWrite <= '0';
        else
            MemWrite <= '1';
        end if;
    end process;
end Behavioral;