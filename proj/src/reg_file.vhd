library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity reg_file is
	port (
        clr : in STD_LOGIC;
        clk : in STD_LOGIC;
		A1 : in STD_LOGIC_VECTOR(4 DOWNTO 0);
		A2 : in STD_LOGIC_VECTOR(4 DOWNTO 0);
		A3 : in STD_LOGIC_VECTOR(4 DOWNTO 0);
		WD3 : in STD_LOGIC_VECTOR(31 DOWNTO 0);
        WE3 : in STD_LOGIC;
		RD1 : out STD_LOGIC_VECTOR(31 DOWNTO 0)
		RD2 : out STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
end reg_file;

architecture Behavioral of reg_file is
    type ram is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
    signal reg : ram := (others => (others => '0'));
begin
    -- read RD1 from A1
    process(clk)
    begin
        if (clr = '0') then 
            -- TODO: reset function
            null;
        elsif (clk'event and clk = '1') then
            RD1 <= reg(conv_integer(A1));
        end if;
    end process;

    -- read RD2 from A2
    process(clk)
    begin
        if (clr = '0') then 
            -- TODO: reset function
            null;
        elsif (clk'event and clk = '1') then
            RD2 <= reg(conv_integer(A2));
        end if;
    end process;

    -- write WD3 to A3
    process(clk)
    begin
        if (clr = '0') then 
            -- TODO: reset function
            null;
        elsif (clk'event and clk = '1') then
            if (WE3 = '1') then 
                reg(conv_integer(A3)) <= WD3;
            end if;
        end if;
    end process;
end Behavioral;