LIBRARY IEEE;
USE     IEEE.STD_LOGIC_1164.ALL;
USE     IEEE.STD_LOGIC_UNSIGNED.ALL;

USE     WORK.RC5_PKG.ALL;

ENTITY rc5_enc_tb IS
END rc5_enc_tb;

ARCHITECTURE Behavioral OF rc5_enc_tb IS
    CONSTANT T    : TIME := 20 ns;
    SIGNAL clk    : STD_LOGIC := '0';
    SIGNAL clr    : STD_LOGIC := '0';
    SIGNAL din    : STD_LOGIC_VECTOR (63 downto 0);
    SIGNAL di_vld : STD_LOGIC;
    SIGNAL dout   : STD_LOGIC_VECTOR (63 downto 0);
    SIGNAL do_rdy : STD_LOGIC;
    COMPONENT rc5_enc
        PORT ( 
            clr    : IN  STD_LOGIC;
            clk    : IN  STD_LOGIC;
            din    : IN  STD_LOGIC_VECTOR (63 downto 0);
            skey   : IN  S_ARRAY;                           -- round key
            di_vld : IN  STD_LOGIC;
            dout   : OUT STD_LOGIC_VECTOR (63 downto 0);
            do_rdy : OUT STD_LOGIC
        );
    END COMPONENT;

    CONSTANT skey : S_ARRAY := S_ARRAY'(x"00000000", x"00000000", x"46F8E8C5", x"460C6085", 
                        x"70F83b8a", x"284b8303", x"513E1454", x"F621ED22", 
                        x"3125065D", x"11a83a5D", x"D427686b", x"713aD82D", 
                        x"4b792F99", x"2799a4DD", x"a7901C49", x"DEDE871a", 
                        x"36C03196", x"a7EFC249", x"61a78bb8", x"3b0a1D2b", 
                        x"4DbFCa76", x"aE162167", x"30D76b0a", x"43192304", 
                        x"F6CC1431", x"65046380");      -- ROM to store Skey
BEGIN
    uut : rc5_enc PORT MAP (
        clr => clr,
        clk => clk,
        din => din,
        skey => skey,
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
END Behavioral;