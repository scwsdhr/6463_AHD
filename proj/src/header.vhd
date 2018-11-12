library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package header is	
	constant OP_ADD_SUB_AND_OR_NOR 	: std_logic_vector(5 downto 0) := "00" & x"0";
	constant OP_ADDI   				: std_logic_vector(5 downto 0) := "00" & x"1";
--	constant OP_SUB   	    		: std_logic_vector(5 downto 0) := "00" & x"0";
	constant OP_SUBI   				: std_logic_vector(5 downto 0) := "00" & x"2";
--	constant OP_AND   	    		: std_logic_vector(5 downto 0) := "00" & x"0";
	constant OP_ANDI   				: std_logic_vector(5 downto 0) := "00" & x"3";
--	constant OP_OR   	    		: std_logic_vector(5 downto 0) := "00" & x"0";
--	constant OP_NOR   	    		: std_logic_vector(5 downto 0) := "00" & x"0";
	constant OP_ORI   	    		: std_logic_vector(5 downto 0) := "00" & x"4";
	constant OP_SHL   	    		: std_logic_vector(5 downto 0) := "00" & x"5";
	constant OP_SHR   	    		: std_logic_vector(5 downto 0) := "00" & x"6";
		
	constant OP_LW   	    		: std_logic_vector(5 downto 0) := "00" & x"7";
	constant OP_SW   	    		: std_logic_vector(5 downto 0) := "00" & x"8";
	constant OP_BLT   	    		: std_logic_vector(5 downto 0) := "00" & x"9";
	constant OP_BE   	    		: std_logic_vector(5 downto 0) := "00" & x"A";
	constant OP_BNE   	    		: std_logic_vector(5 downto 0) := "00" & x"B";
	constant OP_JMP   	    		: std_logic_vector(5 downto 0) := "00" & x"C";

	constant OP_HAL   	    		: std_logic_vector(5 downto 0) := "11" & x"F";
			
	constant FUNC_ADD   			: std_logic_vector(5 downto 0) := "00" & x"1";
	constant FUNC_SUB   			: std_logic_vector(5 downto 0) := "00" & x"3";
	constant FUNC_AND   			: std_logic_vector(5 downto 0) := "00" & x"5";
	constant FUNC_OR  	    		: std_logic_vector(5 downto 0) := "00" & x"7";
	constant FUNC_NOR  	    		: std_logic_vector(5 downto 0) := "00" & x"9";
		
--	constant ENABLE   	    		: std_logic := '1';
--	constant DISABLE   	    		: std_logic := '0';
			
	constant ALU_ADD				: std_logic_vector(3 downto 0) := x"0";
	constant ALU_SUB				: std_logic_vector(3 downto 0) := x"1";
	constant ALU_AND				: std_logic_vector(3 downto 0) := x"2";
	constant ALU_OR		    		: std_logic_vector(3 downto 0) := x"3";
	constant ALU_NOR				: std_logic_vector(3 downto 0) := x"4";
	constant ALU_SHL				: std_logic_vector(3 downto 0) := x"5";
	constant ALU_SHR				: std_logic_vector(3 downto 0) := x"6";
	constant ALU_BLT				: std_logic_vector(3 downto 0) := x"7";
	constant ALU_BE		    		: std_logic_vector(3 downto 0) := x"8";
	constant ALU_BNE				: std_logic_vector(3 downto 0) := x"9";
	constant ALU_NDEF				: std_logic_vector(3 downto 0) := x"a";
		
end header;