library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Bit2SSEG is
    port( 
        Clk: in STD_LOGIC; 
        X : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Bit2SSEG;

architecture Behavioral of Bit2SSEG is
begin
    process(Clk)
    begin
        if(X = '0') then
            Y <= "11000000";
        else
            Y <= "11111001";
        end if;
    end process;
end Behavioral;

