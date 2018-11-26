library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library work;
use work.header.ALL;

-- This block stores the data and is accessed using load word and store word instructions.
entity Data_Mem_BD is
	port (
		Clr	: in STD_LOGIC;
		Clk	: in STD_LOGIC;
		A : in STD_LOGIC_VECTOR(31 downto 0);
		WD : in STD_LOGIC_VECTOR(31 downto 0);
		WE : in STD_LOGIC;
		BD : in STD_LOGIC_VECTOR(63 downto 0);		-- back door
		RD : out STD_LOGIC_VECTOR(31 downto 0)
	);
end Data_Mem_BD;

architecture Behavioral of Data_Mem_BD is
	signal A_short : STD_LOGIC_VECTOR(ADDR_BITS - 1 downto 0);
	type ram is array (0 to ENTRIES - 1) of STD_LOGIC_VECTOR(MEM_BITS - 1 downto 0);
	signal data_mem : ram := (others => (others => '0'));

begin
	-- fix address out of range
	A_short <= A(ADDR_BITS -1 downto 0);

	-- read function
	process(Clr, Clk, A, A_short, data_mem)
	begin
		if (Clr = '0') then
			RD <= (others => '0');
		else
			-- read mode
			RD <= data_mem(conv_integer(A_short)) & data_mem(conv_integer(A_short + '1'));
		end if;
	end process;

	-- write function
	process(Clr, Clk, WE, BD)
	begin
		if (Clr = '0') then
			-- data_mem <= (others => (others => '0'));
			data_mem <= (
				-- hardcoded round key
				x"0000", x"0000", 		-- 0
				x"0000", x"0000", 		-- 2
				x"46F8", x"E8C5", 		-- 4
				x"460C", x"6085", 		-- 6
				x"70F8", x"3B8A", 		-- 8
				x"284B", x"8303", 		-- 10
				x"513E", x"1454", 		-- 12
				x"F621", x"ED22", 		-- 14
				x"3125", x"065D", 		-- 16
				x"11A8", x"3A5D", 		-- 18
				x"D427", x"686B", 		-- 20
				x"713A", x"D82D", 		-- 22
				x"4B79", x"2F99", 		-- 24
				x"2799", x"A4DD", 		-- 26
				x"A790", x"1C49", 		-- 28
				x"DEDE", x"871A", 		-- 30
				x"36C0", x"3196", 		-- 32
				x"A7EF", x"C249", 		-- 34
				x"61A7", x"8BB8", 		-- 36
				x"3B0A", x"1D2B", 		-- 38
				x"4DBF", x"CA76", 		-- 40
				x"AE16", x"2167", 		-- 42
				x"30D7", x"6B0A", 		-- 44
				x"4319", x"2304", 		-- 46
				x"F6CC", x"1431", 		-- 48
				x"6504", x"6380", 		-- 50
				-- backdoor for A
				BD(63 downto 32),		-- 52
				-- backdoor for B
				BD(31 downto 0),		-- 54
				others => x"0000");
		elsif (Clk'event and Clk = '1') then
			-- write enabled
			if (WE = '1') then
				data_mem(conv_integer(A_short)) <= WD(31 downto 16);
				data_mem(conv_integer(A_short + '1')) <= WD(15 downto 0);
			end if;
		end if;
	end process;
	
end Behavioral;