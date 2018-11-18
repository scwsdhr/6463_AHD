library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- This package is designed to define some constant used in the project.
package header is
	constant MEM_BITS 				: INTEGER := 16;								-- number of bits per word
	constant ADDR_BITS				: INTEGER := 20;								-- number of bits per address in memory
	-- TODO: set ENTRIES to be equal to 2^32*(32/MEM_BITS)
	constant ENTRIES     			: INTEGER := 2 ** ADDR_BITS;					-- number of entries
	-- TODO: set PCDelta to be equal to 32/MEM_BITS
	constant PCDelta				: STD_LOGIC_VECTOR(31 downto 0) := x"00000002"; -- number of PC added in each cycle

	constant OP_ADD_SUB_AND_OR_NOR 	: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"0";
	constant OP_ADDI   				: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"1";
--	constant OP_SUB   	    		: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"0";
	constant OP_SUBI   				: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"2";
--	constant OP_AND   	    		: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"0";
	constant OP_ANDI   				: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"3";
--	constant OP_OR   	    		: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"0";
--	constant OP_NOR   	    		: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"0";
	constant OP_ORI   	    		: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"4";
	constant OP_SHR   	    		: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"5";
		
	constant OP_LW   	    		: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"7";
	constant OP_SW   	    		: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"8";
	constant OP_BLT   	    		: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"9";
	constant OP_BEQ   	    		: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"A";
	constant OP_BNE   	    		: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"B";
	constant OP_JMP   	    		: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"C";

	constant OP_HAL   	    		: STD_LOGIC_VECTOR(5 downto 0) := "11" & x"F";
			
	constant FUNC_ADD   			: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"1";
	constant FUNC_SUB   			: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"3";
	constant FUNC_AND   			: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"5";
	constant FUNC_OR  	    		: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"7";
	constant FUNC_NOR  	    		: STD_LOGIC_VECTOR(5 downto 0) := "00" & x"9";
			
	constant ALU_ADD				: STD_LOGIC_VECTOR(3 downto 0) := x"0";
	constant ALU_SUB				: STD_LOGIC_VECTOR(3 downto 0) := x"1";
	constant ALU_AND				: STD_LOGIC_VECTOR(3 downto 0) := x"2";
	constant ALU_OR		    		: STD_LOGIC_VECTOR(3 downto 0) := x"3";
	constant ALU_NOR				: STD_LOGIC_VECTOR(3 downto 0) := x"4";
	constant ALU_SHR				: STD_LOGIC_VECTOR(3 downto 0) := x"5";
	constant ALU_BLT				: STD_LOGIC_VECTOR(3 downto 0) := x"6";
	constant ALU_BE		    		: STD_LOGIC_VECTOR(3 downto 0) := x"7";
	constant ALU_BNE				: STD_LOGIC_VECTOR(3 downto 0) := x"8";
	constant ALU_NDEF				: STD_LOGIC_VECTOR(3 downto 0) := x"9";
		
end header;