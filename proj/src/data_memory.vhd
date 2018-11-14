library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- This block stores the data and is accessed using load word and store word instructions.
entity Data_Memory is
	port (
		Clr	: in STD_LOGIC;
		Clk	: in STD_LOGIC;
		A : in STD_LOGIC_VECTOR(31 downto 0);
        WD : in STD_LOGIC_VECTOR(31 downto 0);
        WE : in STD_LOGIC;
		RD : out STD_LOGIC_VECTOR(31 downto 0)
	);
end Data_Memory;

architecture Behavioral of Data_Memory is
	
	constant DATA_BITS : INTEGER := 32;			-- number of bits per word
	constant DEPTH     : INTEGER := 256;		-- number of entries
	
	type ram is array (0 to DEPTH - 1) of STD_LOGIC_VECTOR(DATA_BITS - 1 downto 0);
	signal data_mem : ram := (others => (others => '0'));

begin

	process(Clr)
	begin
		if (Clr = '0') then
			-- TODO: reset function
			null;
		elsif (Clk'event and Clk = '1') then
			-- read mode
			if (WE = '0') then
				RD <= data_mem(conv_integer(A));
			-- write enabled
			else
				RD <= (others => '0');
				data_mem(conv_integer(A)) <= WD;
			end if;
		end if;
	end process;
	
	RD <= ram(conv_integer(A));	
	
end Behavioral;