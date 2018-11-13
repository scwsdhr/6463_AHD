library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This block is used to select one 32-bit output from two 32-bit inputs.
entity Mux is
	port (
		A : in STD_LOGIC_VECTOR(31 downto 0);
		B : in STD_LOGIC_VECTOR(31 downto 0);
        Sel : in STD_LOGIC;
		O : out STD_LOGIC_VECTOR(31 downto 0)
	);
end Mux;

architecture Behavioral of Mux is
begin
    process
    begin
        if (Sel = '0') then
            O <= A;
        else
            O <= B;
        end if;
    end process;
end Behavioral;