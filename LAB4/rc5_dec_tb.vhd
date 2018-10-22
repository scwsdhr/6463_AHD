LIBRARY ieee;
USE		ieee.std_logic_1164.ALL;
USE     ieee.std_logic_unsigned.ALL;

ENTITY rc5_dec_tb IS
END rc5_dec_tb;

ARCHITECTURE behavior OF rc5_dec_tb IS
    CONSTANT T : time := 20 ns;
    SIGNAL clk : std_logic := '0';
    SIGNAL clr : std_logic := '0';
    SIGNAL din : std_logic_vector (63 downto 0);
    SIGNAL di_vld : std_logic;
    SIGNAL dout : std_logic_vector (63 downto 0);
    SIGNAL do_rdy : std_logic;
    COMPONENT rc5_dec
        PORT ( clk : IN std_logic;
            clr : IN std_logic;
            din : IN std_logic_vector (63 downto 0);
            di_vld : IN std_logic;
            dout : OUT std_logic_vector (63 downto 0);
            do_rdy : OUT std_logic);
    END COMPONENT;
BEGIN
    uut : rc5_dec PORT MAP (
        clk => clk,
        clr => clr,
        din => din,
        di_vld => di_vld,
        dout => dout,
        do_rdy => do_rdy
    );
    din <= x"0000000000000000", 
            x"0123456789abcdef" after 400 ns,
            x"ffffffffffffffff" after 800 ns;
    clr <= '0', '1' after 1 ns;
    di_vld <= '0', '1' after 18 ns, '0' after 22 ns, 
            '1' after 392 ns, '0' after 403 ns,
            '1' after 792 ns, '0' after 803 ns;
    PROCESS
    BEGIN
        clk <= not clk;
        wait for T/2; 
    END PROCESS;
END behavior;