library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Adder is
    port ( 
		a : in  STD_LOGIC_VECTOR (31 downto 0);
		b : in  STD_LOGIC_VECTOR (31 downto 0);
        o : out STD_LOGIC_VECTOR (31 downto 0)
	);
end Adder;

architecture Behavioral of Adder is

begin

    o <= a + b;

end Behavioral;