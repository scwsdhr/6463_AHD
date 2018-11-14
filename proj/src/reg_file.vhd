library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- This block contains 32 32-bit registers. 
-- The register file supports two independent register reads and one register write in one clock cycle. 
-- 5 bits are used to address the register file.
entity Reg_File is
	port (
        Clr : in STD_LOGIC;
        Clk : in STD_LOGIC;
		A1 : in STD_LOGIC_VECTOR(4 DOWNTO 0);
		A2 : in STD_LOGIC_VECTOR(4 DOWNTO 0);
		A3 : in STD_LOGIC_VECTOR(4 DOWNTO 0);
		WD3 : in STD_LOGIC_VECTOR(31 DOWNTO 0);
        WE3 : in STD_LOGIC;
		RD1 : out STD_LOGIC_VECTOR(31 DOWNTO 0);
		RD2 : out STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
end Reg_File;

architecture Behavioral of Reg_File is
    type ram is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
    signal reg : ram := (others => (others => '0'));
begin
    -- read RD1 from A1
    process(Clk)
    begin
        if (Clr = '0') then 
            -- TODO: reset function
            null;
        elsif (Clk'event and Clk = '1') then
            RD1 <= reg(conv_integer(A1));
        end if;
    end process;

    -- read RD2 from A2
    process(Clk)
    begin
        if (Clr = '0') then 
            -- TODO: reset function
            null;
        elsif (Clk'event and Clk = '1') then
            RD2 <= reg(conv_integer(A2));
        end if;
    end process;

    -- write WD3 to A3
    process(Clk)
    begin
        if (Clr = '0') then 
            -- TODO: reset function
            null;
        elsif (Clk'event and Clk = '1') then
            if (WE3 = '1') then 
                reg(conv_integer(A3)) <= WD3;
            end if;
        end if;
    end process;
end Behavioral;