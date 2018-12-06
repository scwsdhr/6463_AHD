LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

USE WORK.RC5_PKG.ALL; 

ENTITY key_exp IS
    PORT ( 
        clr     : IN  STD_LOGIC;                            -- reset signal
        clk     : IN  STD_LOGIC;                            -- clock signal
        ukey    : IN  STD_LOGIC_VECTOR(127 DOWNTO 0);       -- user key
        key_in  : IN  STD_LOGIC;                            -- input ready
        skey    : OUT S_ARRAY;                              -- round key
        key_rdy : OUT STD_LOGIC                             -- output ready
    );
END key_exp;

ARCHITECTURE RTL OF key_exp IS
    COMPONENT left_rotate
        PORT ( 
            a : IN  STD_LOGIC_VECTOR (31 downto 0);
            b : IN  STD_LOGIC_VECTOR (31 downto 0);
            o : OUT STD_LOGIC_VECTOR (31 downto 0)
        );
    END COMPONENT;

    SIGNAL a_reg     : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL b_reg     : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL a_tmp1    : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL a_tmp2    : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL ab_tmp    : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL b_tmp1    : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL b_tmp2    : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL l_arr     : L_ARRAY;
    SIGNAL s_arr_tmp : S_ARRAY;

    SIGNAL i_cnt : INTEGER RANGE 0 TO 25;
    SIGNAL j_cnt : INTEGER RANGE 0 TO 3; 
    SIGNAL k_cnt : INTEGER RANGE 0 TO 77;

    CONSTANT s_init : S_ARRAY := S_ARRAY'(
        "10110111111000010101000101100011", -- Pw
        "01010110000110001100101100011100", -- Pw + Qw
        "11110100010100000100010011010101", -- Pw + 2Qw
        "10010010100001111011111010001110", -- Pw + 3Qw
        "00110000101111110011100001000111", -- Pw + 4Qw
        "11001110111101101011001000000000", -- Pw + 5Qw
        "01101101001011100010101110111001", -- Pw + 6Qw
        "00001011011001011010010101110010", -- Pw + 7Qw
        "10101001100111010001111100101011", -- Pw + 8Qw
        "01000111110101001001100011100100", -- Pw + 9Qw
        "11100110000011000001001010011101", -- Pw + 10Qw
        "10000100010000111000110001010110", -- Pw + 11Qw
        "00100010011110110000011000001111", -- Pw + 12Qw
        "11000000101100100111111111001000", -- Pw + 13Qw
        "01011110111010011111100110000001", -- Pw + 14Qw
        "11111101001000010111001100111010", -- Pw + 15Qw
        "10011011010110001110110011110011", -- Pw + 16Qw
        "00111001100100000110011010101100", -- Pw + 17Qw
        "11010111110001111110000001100101", -- Pw + 18Qw
        "01110101111111110101101000011110", -- Pw + 19Qw
        "00010100001101101101001111010111", -- Pw + 20Qw
        "10110010011011100100110110010000", -- Pw + 21Qw
        "01010000101001011100011101001001", -- Pw + 22Qw
        "11101110110111010100000100000010", -- Pw + 23Qw
        "10001101000101001011101010111011", -- Pw + 24Qw
        "00101011010011000011010001110100"  -- Pw + 25Qw
    );

    TYPE StateType IS (ST_IDLE, ST_KEY_INIT, ST_KEY_EXP, ST_READY);
    SIGNAL state : StateType;
BEGIN
    -- A = S[i] = (S[i] + A + B) <<< 3;
    -- A = S[i] + A + B
    a_tmp1 <= s_arr_tmp(i_cnt) + a_reg + b_reg;
    -- <<< 3
    a_tmp2 <= a_tmp1(28 DOWNTO 0) & a_tmp1(31 DOWNTO 29); 

    -- B = L[j] = (L[j] + A + B) <<< (A + B);
    ab_tmp <= a_tmp2 + b_reg;
    b_tmp1 <= l_arr(j_cnt) + ab_tmp;
    -- <<< (A + B)
    uut : left_rotate PORT MAP (
        a => b_tmp1,
        b => ab_tmp,
        o => b_tmp2
    );

    -- finite state machine
    PROCESS(clr, clk)   
    BEGIN
        IF(clr = '0') THEN
            key_rdy <= '0';
            state <= ST_IDLE;
        ELSIF(clk'EVENT AND clk = '1') THEN
            CASE state IS
                WHEN ST_IDLE | ST_READY =>
                    IF(key_in = '1') THEN 
                        key_rdy <= '0';
                        state <= ST_KEY_INIT;
                    END IF;
                WHEN ST_KEY_INIT =>
                    state <= ST_KEY_EXP;
                WHEN ST_KEY_EXP =>
                    IF(k_cnt = 77) THEN 
                        key_rdy <= '1';
                        state <= ST_READY;
                    END IF;
            END CASE;
        END IF;
    END PROCESS;

    -- A register
    PROCESS(clr, clk)  BEGIN
        IF (clr = '0') THEN
            a_reg <= (OTHERS => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (state = ST_KEY_INIT) THEN
                a_reg <= (OTHERS => '0');
            ELSIF (state = ST_KEY_EXP) THEN
                a_reg <= a_tmp2;
            END IF;
        END IF;
    END PROCESS;
    
    -- B register
    PROCESS(clr, clk)  
    BEGIN
        IF (clr = '0') THEN
            b_reg <= (OTHERS => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (state = ST_KEY_INIT) THEN
                b_reg <= (OTHERS => '0');
            ELSIF (state = ST_KEY_EXP) THEN   
                b_reg <= b_tmp2;
            END IF;
        END IF;
    END PROCESS;   

    -- i = (i + 1) mod (t);
    PROCESS(clr, clk)
    BEGIN
        IF (clr = '0') THEN  
            i_cnt <= 0;
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (state = ST_KEY_INIT) THEN
                i_cnt <= 0;
            ELSIF(state = ST_KEY_EXP) THEN
                IF (i_cnt = 25) THEN  
                    i_cnt <= 0;
                ELSE   
                    i_cnt <= i_cnt + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- j = (j + 1) mod (c);
    PROCESS(clr, clk)
    BEGIN
        IF (clr = '0') THEN 
            j_cnt <= 0;
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (state = ST_KEY_INIT) THEN
                j_cnt <= 0;
            ELSIF (state = ST_KEY_EXP) THEN
                IF (j_cnt = 3) THEN 
                    j_cnt <= 0;
                ELSE   
                    j_cnt <= j_cnt + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- k = k + 1;
    PROCESS(clr, clk)
    BEGIN
        IF(clr = '0') THEN
            k_cnt <= 0;
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (state = ST_KEY_INIT) THEN
                k_cnt <= 0;
            ELSIF(state = ST_KEY_EXP) THEN
                IF (k_cnt = 77) THEN
                    k_cnt <= 0;
                ELSE
                    k_cnt <= k_cnt + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- S[0] = 0xB7E15163 (Pw)
    -- for i=1 to 25 do  S[i] = S[i-1]+ 0x9E3779B9 (Qw)
    PROCESS(clr, clk)
    BEGIN
        IF(clr = '0') THEN   -- After system reset, S array is initialized with P and Q
            s_arr_tmp <= s_init;
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (state = ST_KEY_INIT) THEN
                s_arr_tmp <= s_init;
            ELSIF (state = ST_KEY_EXP) THEN
                s_arr_tmp(i_cnt) <= a_tmp2;
            END IF;
        END IF;
    END PROCESS;
    skey <= s_arr_tmp;

    -- L_ARRAY
    PROCESS(clr, clk)
    BEGIN
        IF (clr = '0') THEN
            FOR i IN 0 TO 3 LOOP
                l_arr(i) <= (OTHERS => '0');
            END LOOP;
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (state = ST_KEY_INIT) THEN
                -- for i = b - 1 downto 0 do
                -- L[i/u] = (L[i/u] <<< 8) + K[i];
                l_arr(3) <= ukey(7 DOWNTO 0) & ukey(15 DOWNTO 8) & ukey(23 DOWNTO 16) & ukey(31 DOWNTO 24);
                l_arr(2) <= ukey(39 DOWNTO 32) & ukey(47 DOWNTO 40) & ukey(55 DOWNTO 48) & ukey(63 DOWNTO 56);
                l_arr(1) <= ukey(71 DOWNTO 64) & ukey(79 DOWNTO 72) & ukey(87 DOWNTO 80) & ukey(95 DOWNTO 88);
                l_arr(0) <= ukey(103 DOWNTO 96) & ukey(111 DOWNTO 104) & ukey(119 DOWNTO 112) & ukey(127 DOWNTO 120);
            ELSIF(state = ST_KEY_EXP) THEN
                l_arr(j_cnt) <= b_tmp2;
            END IF;
        END IF;
    END PROCESS;
END RTL;