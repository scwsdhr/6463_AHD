library ieee;
use ieee.std_logic_1164.all;

entity left_rotate_tb is
end left_rotate_tb;

architecture tb of left_rotate_tb is
    signal a : std_logic_vector(31 downto 0);
    signal b : std_logic_vector(31 downto 0);
    signal o : std_logic_vector(31 downto 0);
begin
    UUT : entity work.left_rotate port map (
        a => a,
        b => b,
        o => o
    );
    a <= "01011100010100101001100100101010",
         "01100010101110001000111000010101" after 200 ns;
    b <= "00000000000000000000000000000111",
         "00000000000000000000000000100001" after 100 ns,
         "00000000000000000000000000000111" after 200 ns,
         "00000000000000000000000000100001" after 300 ns;
end tb;