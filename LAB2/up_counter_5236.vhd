library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity up_counter_5236 is
port (clk: in std_logic; 
      reset: in std_logic;
      counter: out std_logic_vector(5 downto 0));
end up_counter_5236;

architecture rtl of up_counter_5236 is
signal i_cnt: unsigned (5 downto 0);
begin
process(reset, clk)  
begin
  if(reset = '0') then  i_cnt <= "100100";   
  elsif (clk'event and clk = '1') then
    if (i_cnt = "110100") then i_cnt <= "100100";
    else i_cnt <= i_cnt + 1;
    end if;
  end if;
end process;
counter <= std_logic_vector(i_cnt);
end rtl;
