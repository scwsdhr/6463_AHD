library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library work;
use work.header.ALL;

-- This block stores the data and is accessed using load word and store word instructions.
entity Data_Mem is
	port (
		Clr	: in STD_LOGIC;
		Clk	: in STD_LOGIC;
		A : in STD_LOGIC_VECTOR(31 downto 0);
		WD : in STD_LOGIC_VECTOR(31 downto 0);
		WE : in STD_LOGIC;
		RD : out STD_LOGIC_VECTOR(31 downto 0)
	);
end Data_Mem;

architecture Behavioral of Data_Mem is
	signal A_short : STD_LOGIC_VECTOR(ADDR_BITS - 1 downto 0);
	type ram is array (0 to ENTRIES - 1) of STD_LOGIC_VECTOR(MEM_BITS - 1 downto 0);
	signal data_mem : ram := (others => (others => '0'));

begin
	-- fix address out of range
	A_short <= A(ADDR_BITS -1 downto 0);

	-- read function
	process(Clr, A, A_short)
	begin
		if (Clr = '0') then
			RD <= (others => '0');
		else
			-- read mode
			RD <= data_mem(conv_integer(A_short)) & data_mem(conv_integer(A_short + '1'));
		end if;
	end process;

	-- write function
	process(Clr, Clk, WE)
	begin
		if (Clr = '0') then
			data_mem <= (others => (others => '0'));
		elsif (Clk'event and Clk = '1') then
			-- write enabled
			if (WE = '1') then
				data_mem(conv_integer(A_short)) <= WD(31 downto 16);
				data_mem(conv_integer(A_short + '1')) <= WD(15 downto 0);
			end if;
		end if;
	end process;
	
end Behavioral;