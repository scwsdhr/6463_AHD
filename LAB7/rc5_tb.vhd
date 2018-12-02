LIBRARY IEEE;
USE     IEEE.STD_LOGIC_1164.ALL;
USE     IEEE.STD_LOGIC_UNSIGNED.ALL;

USE     WORK.RC5_PKG.ALL;

ENTITY rc5_tb IS
END rc5_tb;

ARCHITECTURE Behavioral OF rc5_tb IS
    COMPONENT rc5
        PORT (
            clr      : IN  STD_LOGIC;                       -- reset signal
            clk      : IN  STD_LOGIC;                       -- clock signal
            --ukey32   : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);   -- user key
            ukey     : IN  STD_LOGIC_VECTOR(127 DOWNTO 0);  -- user key
            key_in   : IN  STD_LOGIC;                       -- key input ready
            din      : IN  STD_LOGIC_VECTOR (63 downto 0);  -- 64-bit input
            func_sel : IN  STD_LOGIC;                       -- '0' for encryption, '1' for decryption
            di_vld   : IN  STD_LOGIC;                        -- din input ready
            key_rdy  : OUT STD_LOGIC;                       -- key expansion ready
            dout     : OUT STD_LOGIC_VECTOR (63 downto 0);  -- 64-bit output
            do_rdy   : OUT STD_LOGIC                        -- dout output ready
        );
    END COMPONENT;

    CONSTANT T      : TIME := 20 ns;
    SIGNAL clk      : STD_LOGIC := '0';
    SIGNAL clr      : STD_LOGIC := '0';
    --SIGNAL ukey32   : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL ukey     : STD_LOGIC_VECTOR(127 DOWNTO 0);
    SIGNAL key_in   : STD_LOGIC;
    SIGNAL din      : STD_LOGIC_VECTOR(63 DOWNTO 0);
    SIGNAL func_sel : STD_LOGIC;
    SIGNAL di_vld   : STD_LOGIC;
    SIGNAL key_rdy  : STD_LOGIC;
    SIGNAL dout     : STD_LOGIC_VECTOR(63 DOWNTO 0);
    SIGNAL do_rdy   : STD_LOGIC;
BEGIN
    uut : rc5 PORT MAP (
        clr => clr,
        clk => clk,
        ukey => ukey,
        key_in => key_in,
        din => din,
        func_sel => func_sel,
        di_vld => di_vld,
        key_rdy => key_rdy,
        dout => dout,
        do_rdy => do_rdy
    );

    -- reset signal
    clr <= '0', 
            '1' AFTER 2 ns;

    -- other signals
    ukey <= (OTHERS => '0'),
            x"915f4619be41b2516355a50110a9ce91" AFTER 4800 ns;
    key_in <= '0', 
            -- 0 ns
            '1' AFTER 11 ns, 
            '0' AFTER 23 ns,
            -- 4800 ns
            '1' AFTER 4811 ns,
            '0' AFTER 4823 ns;
    din <= (OTHERS => '0'),
            x"eedba5216d8f4b15" AFTER 2400 ns,
            x"ac13c0f752892b5b" AFTER 7200 ns;
    func_sel <= '0', 
            '1' AFTER 2400 ns,
            -- 4800 ns
            '0' AFTER 4800 ns,
            '1' AFTER 7200 ns;
    di_vld <= '0',
            -- 0 ns
            '1' AFTER 903 ns, 
            '0' AFTER 921 ns,
            -- 1200 ns
            '1' AFTER 1707 ns,
            '0' AFTER 1724 ns,
            -- 2400 ns
            '1' AFTER 3303 ns,
            '0' AFTER 3321 ns,
            -- 4800 ns
            '1' AFTER 6507 ns,
            '0' AFTER 6524 ns,
            -- 7200 ns
            '1' AFTER 8103 ns,
            '0' AFTER 8121 ns;

    -- clock signal
    PROCESS
    BEGIN
        clk <= NOT clk;
        WAIT FOR T/2; 
    END PROCESS;
END Behavioral;