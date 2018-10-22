library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity up_counter_5236_tb is
end up_counter_5236_tb;

architecture tb of up_counter_5236_tb is
    constant T : time := 20 ns;

    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal counter : std_logic_vector(5 downto 0);
begin
    UUT : entity work.up_counter_5236 port map (
        clk => clk,
        reset => reset,
        counter => counter
    );
    reset <= '1', '0' after 303 ns, '1' after 312 ns;
    process
    begin
        clk <= not clk;
        wait for T/2;
    end process;
end tb;