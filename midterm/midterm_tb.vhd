library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mid_counter_tb is
end mid_counter_tb;

architecture tb of mid_counter_tb is
    constant T : time := 10 ns;

    signal reset : std_logic := '0';
    signal clk : std_logic := '0';
    signal UP : std_logic := '0';
    signal counter : std_logic_vector(3 downto 0);

    component mid_counter
        port ( reset : in std_logic;
            clk : in std_logic;
            UP : in std_logic;
            counter : out std_logic_vector(3 downto 0));
    end component;
begin
    UUT : mid_counter port map (
        reset => reset,
        clk => clk,
        UP => UP,
        counter => counter
    );
    reset <= '0', '1' after 23 ns, '0' after 57 ns, '1' after 59 ns, '0' after 213 ns, '1' after 251 ns;
    UP <= '1', '0' after 153 ns;
    process
    begin
        clk <= not clk;
        wait for T/2;
    end process;
end tb;