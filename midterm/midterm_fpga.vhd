library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mid_counter_fpga is
port ( reset : in std_logic;                                -- synchronous reset
    sysclk : in std_logic;                                  -- system clock
    UP : in std_logic;                                      -- UP signal
    counter : out std_logic_vector(3 downto 0);             -- counter output
    seg_sel : out std_logic_vector(7 downto 0);             -- 7 segment display select
    seg_val : out std_logic_vector(7 downto 0));            -- 7 segment display value
end mid_counter_fpga;

architecture Behavioral of mid_counter_fpga is
    signal clk : std_logic;                                 -- slow clock
    signal c_cnt : std_logic_vector(27 downto 0);           -- frequency divider
    signal disp_hex : std_logic_vector(3 downto 0);         -- hexadecimal bit to display
    
    component Hex2LED
        port ( clk : in std_logic;                          -- display clock signal
             x : in std_logic_vector(3 downto 0);           -- display hex
             y : out std_logic_vector(7 downto 0));         -- display binary bits
    end component;
    component mid_counter
        port ( reset : in std_logic;                        -- synchronous reset
            clk : in std_logic;                             -- counter clock signal
            UP : in std_logic;                              -- UP signal
            counter : out std_logic_vector(3 downto 0));    -- counter output
    end component;
begin
-- Heximal number to 7 Segments module
uut0 : Hex2LED PORT MAP (
    clk => c_cnt(16),
    x => disp_hex,
    y => seg_val
);

-- counter module
uut1 : mid_counter PORT MAP (
    reset => reset,
    clk => clk,
    UP => UP,
    counter => disp_hex
);

counter <= disp_hex;

-- frequency divider, generate a slow clock 'clk' with a period of 1 sec 
FreqDiv: process(reset, sysclk)
begin
    if (sysclk'event and sysclk = '1') then
        if (c_cnt = "0101111101011110000011111111") then -- 99,999,999 in decimal
            clk <= '1';
            c_cnt <= "0000000000000000000000000000";
        else
            if (c_cnt = "0010111110101111000001111111") then
                clk <= '0';
            end if;
        c_cnt <= c_cnt + 1;
        end if;
    end if;
end process FreqDiv;

-- only one digit to display
seg_sel <= x"fe";

-- 
end Behavioral;