library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- This block provides a 32-bit output whose value equals to the sum of two 32-bit inputs.
entity Adder is
    port ( 
		A : in STD_LOGIC_VECTOR(31 downto 0);
		B : in STD_LOGIC_VECTOR(31 downto 0);
        O : out STD_LOGIC_VECTOR(31 downto 0)
	);
end Adder;

architecture Behavioral of Adder is
begin
    O <= A + B;
end Behavioral;