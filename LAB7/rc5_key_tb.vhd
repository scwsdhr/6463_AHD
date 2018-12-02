LIBRARY IEEE;
USE     IEEE.STD_LOGIC_1164.ALL;
USE     IEEE.STD_LOGIC_UNSIGNED.ALL;

USE WORK.RC5_PKG.ALL; 

ENTITY key_exp_tb IS
END key_exp_tb;

ARCHITECTURE Behavioral OF key_exp_tb IS
    CONSTANT T     : TIME := 20 ns;
    SIGNAL clr     : STD_LOGIC := '0';
    SIGNAL clk     : STD_LOGIC := '0';
    SIGNAL key_in  : STD_LOGIC;
    SIGNAL ukey    : STD_LOGIC_VECTOR(127 DOWNTO 0);
    SIGNAL skey    : S_ARRAY;
    SIGNAL key_rdy : STD_LOGIC;

    COMPONENT key_exp
        PORT ( 
            clr     : IN  STD_LOGIC; 
            clk     : IN  STD_LOGIC;
            key_in  : IN  STD_LOGIC;
            ukey    : IN  STD_LOGIC_VECTOR(127 DOWNTO 0);
            skey    : OUT S_ARRAY;
            key_rdy : OUT STD_LOGIC
        );
    END COMPONENT;
BEGIN
    uut : key_exp PORT MAP (
        clr => clr,
        clk => clk,
        key_in => key_in,
        ukey => ukey,
        skey => skey,
        key_rdy => key_rdy
    );

    clr <= '0', '1' after 2 ns;
    key_in <= '0', '1' after 14 ns, '0' after 21 ns;
    --ukey <= x"915f4619be41b2516355a50110a9ce91";
    ukey <= x"0000000000000000000000000000001f";

    PROCESS
    BEGIN
        clk <= not clk;
        wait for T/2; 
    END PROCESS;
END Behavioral;