library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- This block provides a 32-bit output whose value equals to the sum of two 32-bit inputs.
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