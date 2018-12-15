library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controller_tb is
end controller_tb;

architecture Behavioral of controller_tb is

	component controller
        port(
            Rst : in STD_LOGIC;                         -- reset signal
            Clk : in STD_LOGIC;                         -- input clock
            Data : in STD_LOGIC;                        -- input data bit
            Detect : out STD_LOGIC;                     -- '1' when target sequence detected
            Match : out STD_LOGIC_VECTOR(3 downto 0)    -- match process
        );
    end component;

    constant T : time := 20 ns;
    constant Din : STD_LOGIC_VECTOR(0 to 31)
    	:= "01101111100010110110101100110010";
    signal i_cnt : INTEGER range 0 to 31;

    signal Rst : STD_LOGIC := '1';
    signal Clk : STD_LOGIC := '1';
    signal Data : STD_LOGIC;
    signal Detect : STD_LOGIC;
    signal Match : STD_LOGIC_VECTOR(3 downto 0);

begin

	controller_uut : controller port map(
        Rst => Rst,
        Clk => Clk,
        Data => Data,
        Detect => Detect,
        Match => Match
    );

	-- reset signal
    process
    begin
    	Rst <= '1';
    	wait for 1.5 * T;
    	Rst <= '0';
    	wait for 0.6 * T;
    	wait for 29 * T;
    	Rst <= '1';
    	wait for 0.3 * T;
    	Rst <= '0';
    	wait;
    end process;

    -- input data
    Data <= Din(i_cnt);

    -- index update
    process
    begin
    	wait for T;
    	if (i_cnt = 31) then
    		i_cnt <= 0;
    	else 
	    	i_cnt <= i_cnt + 1;
	    end if;
    end process;

    -- clock generator
    process
    begin
    	Clk <= not Clk;
    	wait for T/2;
    end process;

end architecture ; -- Behavioral