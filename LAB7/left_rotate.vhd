LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY left_rotate IS
    PORT (
        a : IN  STD_LOGIC_VECTOR(31 downto 0);
        b : IN  STD_LOGIC_VECTOR(31 downto 0);
        o : OUT STD_LOGIC_VECTOR(31 downto 0));
END left_rotate;

ARCHITECTURE RTL OF left_rotate IS
BEGIN
    PROCESS(a, b)
    BEGIN
        CASE b(4 downto 0) IS
            WHEN "00001" => o <= a(30 downto 0) & a(31);
            WHEN "00010" => o <= a(29 downto 0) & a(31 downto 30); 
            WHEN "00011" => o <= a(28 downto 0) & a(31 downto 29);
            WHEN "00100" => o <= a(27 downto 0) & a(31 downto 28);
            WHEN "00101" => o <= a(26 downto 0) & a(31 downto 27);
            WHEN "00110" => o <= a(25 downto 0) & a(31 downto 26);
            WHEN "00111" => o <= a(24 downto 0) & a(31 downto 25);
            WHEN "01000" => o <= a(23 downto 0) & a(31 downto 24);
            WHEN "01001" => o <= a(22 downto 0) & a(31 downto 23);
            WHEN "01010" => o <= a(21 downto 0) & a(31 downto 22);
            WHEN "01011" => o <= a(20 downto 0) & a(31 downto 21);
            WHEN "01100" => o <= a(19 downto 0) & a(31 downto 20);
            WHEN "01101" => o <= a(18 downto 0) & a(31 downto 19);
            WHEN "01110" => o <= a(17 downto 0) & a(31 downto 18);
            WHEN "01111" => o <= a(16 downto 0) & a(31 downto 17);
            WHEN "10000" => o <= a(15 downto 0) & a(31 downto 16);
            WHEN "10001" => o <= a(14 downto 0) & a(31 downto 15);
            WHEN "10010" => o <= a(13 downto 0) & a(31 downto 14);
            WHEN "10011" => o <= a(12 downto 0) & a(31 downto 13);
            WHEN "10100" => o <= a(11 downto 0) & a(31 downto 12);
            WHEN "10101" => o <= a(10 downto 0) & a(31 downto 11);
            WHEN "10110" => o <= a(9 downto 0) & a(31 downto 10);
            WHEN "10111" => o <= a(8 downto 0) & a(31 downto 9);
            WHEN "11000" => o <= a(7 downto 0) & a(31 downto 8);
            WHEN "11001" => o <= a(6 downto 0) & a(31 downto 7);
            WHEN "11010" => o <= a(5 downto 0) & a(31 downto 6);
            WHEN "11011" => o <= a(4 downto 0) & a(31 downto 5);
            WHEN "11100" => o <= a(3 downto 0) & a(31 downto 4);
            WHEN "11101" => o <= a(2 downto 0) & a(31 downto 3);
            WHEN "11110" => o <= a(1 downto 0) & a(31 downto 2);
            WHEN "11111" => o <= a(0) & a(31 downto 1);
            WHEN OTHERS => o <= a;
        END CASE;
    END PROCESS;
END RTL;