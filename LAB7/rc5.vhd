LIBRARY	IEEE;
USE	IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

USE	WORK.RC5_PKG.ALL; 

ENTITY RC5 IS
    PORT ( 
    	clr 	 : IN  STD_LOGIC; 						-- reset signal
        clk 	 : IN  STD_LOGIC;						-- clock signal
        --ukey32   : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);   -- user key
        ukey     : IN  STD_LOGIC_VECTOR(127 DOWNTO 0);  -- user key
        key_in   : IN  STD_LOGIC;                       -- key input ready
        din      : IN  STD_LOGIC_VECTOR(63 downto 0);   -- 64-bit input
        func_sel : IN  STD_LOGIC;                       -- '0' for encryption, '1' for decryption
        di_vld   : IN  STD_LOGIC;						-- din input ready
        key_rdy  : OUT STD_LOGIC;                       -- key expansion ready
        dout     : OUT STD_LOGIC_VECTOR(63 downto 0);   -- 64-bit output
        do_rdy	 : OUT STD_LOGIC 						-- dout output ready
    );
END RC5;

ARCHITECTURE RTL OF RC5 IS
    COMPONENT key_exp
    	PORT (
    		clr 	: IN  STD_LOGIC; 							-- reset signal
	        clk 	: IN  STD_LOGIC;							-- clock signal
	        ukey 	: IN  STD_LOGIC_VECTOR(127 DOWNTO 0);		-- user key
            key_in  : IN  STD_LOGIC;                            -- input ready
	        skey 	: OUT S_ARRAY;								-- round key
	        key_rdy	: OUT STD_LOGIC 							-- output ready
    	);
    END COMPONENT;
	COMPONENT rc5_enc
        PORT ( 
            clr    : IN  STD_LOGIC;                             -- reset signal
            clk    : IN  STD_LOGIC;                             -- clock signal
            din    : IN  STD_LOGIC_VECTOR(63 downto 0);         -- 64-bit input
            skey   : IN  S_ARRAY;                               -- round key
            di_vld : IN  STD_LOGIC;                             -- input ready 
            dout   : OUT STD_LOGIC_VECTOR(63 downto 0);         -- 64-bit outpu
            do_rdy : OUT STD_LOGIC                              -- output ready
        );                              
    END COMPONENT;
    COMPONENT rc5_dec
        PORT ( 
            clr    : IN  STD_LOGIC;                             -- reset signal
            clk    : IN  STD_LOGIC;                             -- clock signal 
            din    : IN  STD_LOGIC_VECTOR(63 DOWNTO 0);         -- 64-bit input
            skey   : IN  S_ARRAY;                               -- round key
            di_vld : IN  STD_LOGIC;                             -- input ready
            dout   : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);         -- 64-bit output
            do_rdy : OUT STD_LOGIC);                            -- output ready
    END COMPONENT;

    --SIGNAL ukey 	   : STD_LOGIC_VECTOR(127 DOWNTO 0);
    SIGNAL key_rdy_buf : STD_LOGIC;
    SIGNAL skey 	   : S_ARRAY;
    SIGNAL di_vld_enc  : STD_LOGIC;
    SIGNAL di_vld_dec  : STD_LOGIC;
    SIGNAL dout_enc	   : STD_LOGIC_VECTOR(63 DOWNTO 0);
    SIGNAL dout_dec	   : STD_LOGIC_VECTOR(63 DOWNTO 0);
    SIGNAL do_rdy_enc  : STD_LOGIC;
    SIGNAL do_rdy_dec  : STD_LOGIC;

BEGIN
    --ukey <= x"000000000000000000000000" & ukey32;
    KEY_EXP_uut : key_exp PORT MAP (
        clr => clr,
        clk => clk,
        ukey => ukey,
        key_in => key_in,
        skey => skey,
        key_rdy => key_rdy_buf
    );
    -- key ready output
    key_rdy <= key_rdy_buf;

    RC5_ENC_uut : rc5_enc PORT MAP (
        clr => clr,
        clk => clk,
        din => din,
        skey => skey,
        di_vld => di_vld_enc,
        dout => dout_enc,
        do_rdy => do_rdy_enc
    );

    RC5_DEC_uut : rc5_dec PORT MAP (
        clr => clr,
        clk => clk,
        din => din,
        skey => skey,
        di_vld => di_vld_dec,
        dout => dout_dec,
        do_rdy => do_rdy_dec
    );

    -- enc input ready
    di_vld_enc <= key_rdy_buf AND di_vld AND (NOT func_sel);

    -- dec input ready
    di_vld_dec <= key_rdy_buf AND di_vld AND func_sel;

    -- select output
    WITH func_sel SELECT
        dout <= dout_enc WHEN '0',
                dout_dec WHEN OTHERS;

    -- select output ready
    WITH func_sel SELECT
        do_rdy <= do_rdy_enc WHEN '0',
                do_rdy_dec WHEN OTHERS;


END RTL;