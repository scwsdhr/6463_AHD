library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_memory is
	port (		
		clr	: in STD_LOGIC;
		clk	: in STD_LOGIC;
		A : in STD_LOGIC_VECTOR(31 downto 0);
        WD : in STD_LOGIC;
        WE : in STD_LOGIC;
		RD : out STD_LOGIC_VECTOR(31 downto 0)
	);
end data_memory;

architecture Behavioral of data_memory is
	
	constant DATA_BITS : INTEGER := 32;			-- number of bits per word
	constant DEPTH     : INTEGER := 256;		-- number of entries
	
	type ram is array (0 to DEPTH - 1) of STD_LOGIC_VECTOR(DATA_BITS - 1 downto 0);
	signal data_mem : ram := (others => (others => '0'));

begin

	process(clr)
	begin
        if (clr = '0') then
			-- TODO: reset function
            null;
		elsif (clk'event and clk = '1') then
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