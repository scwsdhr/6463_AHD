library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity down_counter_5236 is
port (sysclk: in std_logic; 
      reset: in std_logic;
      counter: out std_logic_vector(5 downto 0);
      seg_sel: out std_logic_vector(7 downto 0);
      seg_val: out std_logic_vector(7 downto 0));
end down_counter_5236;

architecture rtl of down_counter_5236 is
signal clk: std_logic;
signal c_cnt: unsigned(27 downto 0);
signal i_cnt: unsigned(5 downto 0);

begin

-- frequency divider
process(reset, sysclk)
begin
  if (reset = '0') then
    c_cnt <= "0000000000000000000000000000";
    clk <= '0';
  elsif (sysclk'event and sysclk = '1') then
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
end process;

-- core counter
process(reset, clk)  
begin
  if (reset = '0') then  
    i_cnt <= "110100"; -- 52 in decimal
  elsif (clk'event and clk = '1') then
    if (i_cnt = "100100") then i_cnt <= "110100"; -- 36 in decimal
    else i_cnt <= i_cnt - 1;
    end if;
  end if;
end process;

-- segment display
process(sysclk, c_cnt)
begin
  if (sysclk'event and sysclk = '1') then
    if (c_cnt(14 downto 14) = "0") then
      case i_cnt(5 downto 0) is
        when "100100" => 
          seg_val <= x"82";
        when "100101" => 
          seg_val <= x"f8";
        when "100110" => 
          seg_val <= x"80";
        when "100111" => 
          seg_val <= x"90";
        when "101000" => 
          seg_val <= x"c0";
        when "101001" => 
          seg_val <= x"f9";
        when "101010" => 
          seg_val <= x"a4";
        when "101011" => 
          seg_val <= x"b0";
        when "101100" => 
          seg_val <= x"99";
        when "101101" => 
          seg_val <= x"92";
        when "101110" => 
          seg_val <= x"82";
        when "101111" => 
          seg_val <= x"f8";
        when "110000" => 
          seg_val <= x"80";
        when "110001" => 
          seg_val <= x"90";
        when "110010" => 
          seg_val <= x"c0";
        when "110011" => 
          seg_val <= x"f9";
        when "110100" => 
          seg_val <= x"a4";
        when others =>
          seg_val <= x"00";
      end case;
      seg_sel <= "11111110";
    else
      
      case i_cnt(5 downto 0) is
        when "100100" => 
          seg_val <= x"b0";
        when "100101" => 
          seg_val <= x"b0";
        when "100110" => 
          seg_val <= x"b0";
        when "100111" => 
          seg_val <= x"b0";
        when "101000" => 
          seg_val <= x"99";
        when "101001" => 
          seg_val <= x"99";
        when "101010" => 
          seg_val <= x"99";
        when "101011" => 
          seg_val <= x"99";
        when "101100" => 
          seg_val <= x"99";
        when "101101" => 
          seg_val <= x"99";
        when "101110" => 
          seg_val <= x"99";
        when "101111" => 
          seg_val <= x"99";
        when "110000" => 
          seg_val <= x"99";
        when "110001" => 
          seg_val <= x"99";
        when "110010" => 
          seg_val <= x"92";
        when "110011" => 
          seg_val <= x"92";
        when "110100" => 
          seg_val <= x"92";
        when others => 
          seg_val <= x"00";
      end case;
      seg_sel <= "11111101";
    end if;
  end if;
end process;
  
counter <= std_logic_vector(i_cnt);

end rtl;
