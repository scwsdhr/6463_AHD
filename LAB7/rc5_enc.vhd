LIBRARY IEEE;
USE     IEEE.STD_LOGIC_1164.ALL;
USE     IEEE.STD_LOGIC_UNSIGNED.ALL;                    -- use CONV_INTEGER

USE WORK.RC5_PKG.ALL; 

ENTITY rc5_enc IS
    PORT ( 
        clr    : IN  STD_LOGIC;                         -- reset signal
        clk    : IN  STD_LOGIC;                         -- clock signal 
        din    : IN  STD_LOGIC_VECTOR (63 downto 0);    -- 64-bit input
        skey   : IN  S_ARRAY;                           -- round key
        di_vld : IN  STD_LOGIC;                         -- input ready
        dout   : OUT STD_LOGIC_VECTOR (63 downto 0);    -- 64-bit output
        do_rdy : OUT STD_LOGIC                          -- output ready
    );
END rc5_enc;

ARCHITECTURE RTL OF rc5_enc IS
    COMPONENT left_rotate
        PORT ( 
            a : IN  STD_LOGIC_VECTOR (31 downto 0);
            b : IN  STD_LOGIC_VECTOR (31 downto 0);
            o : OUT STD_LOGIC_VECTOR (31 downto 0)
        );
    END COMPONENT;
    SIGNAL i_cnt  : STD_LOGIC_VECTOR (3 downto 0);      -- a round counter used to compute address index
    SIGNAL ab_xor : STD_LOGIC_VECTOR (31 downto 0);     -- result of A xor B
    SIGNAL a_rot  : STD_LOGIC_VECTOR (31 downto 0);     -- result after left-rotate B
    SIGNAL a      : STD_LOGIC_VECTOR (31 downto 0);     -- result after first function
    SIGNAL a_pre  : STD_LOGIC_VECTOR (31 downto 0);     -- prepared value for A
    SIGNAL a_reg  : STD_LOGIC_VECTOR (31 downto 0);     -- register to store A
    SIGNAL ba_xor : STD_LOGIC_VECTOR (31 downto 0);     -- result of B xor A
    SIGNAL b_rot  : STD_LOGIC_VECTOR (31 downto 0);     -- result after left-rotate A
    SIGNAL b      : STD_LOGIC_VECTOR (31 downto 0);     -- result after second function
    SIGNAL b_pre  : STD_LOGIC_VECTOR (31 downto 0);     -- prepared value for B
    SIGNAL b_reg  : STD_LOGIC_VECTOR (31 downto 0);     -- register to store B
    
    TYPE StateType IS (ST_IDLE,                         -- idle state
                        ST_PRE_ROUND,                   -- prepare the first value for A and B
                        ST_ROUND_OP,                    -- main loop
                        ST_READY);                      -- output ready
    SIGNAL state : StateType;
    
BEGIN
    uut1 : left_rotate PORT MAP (
        a => ab_xor,
        b => b_reg,
        o => a_rot
    );
    uut2 : left_rotate PORT MAP (
        a => ba_xor,
        b => a,
        o => b_rot
    );
    
    -- finite state machine
    PROCESS(clr, clk)
    BEGIN
        IF (clr = '0') THEN
            state <= ST_IDLE;
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE state IS
                WHEN ST_IDLE | ST_READY => IF (di_vld = '1') THEN state <= ST_PRE_ROUND; END IF;
                WHEN ST_PRE_ROUND => state <= ST_ROUND_OP;
                WHEN ST_ROUND_OP => IF (i_cnt = "1100") THEN state <= ST_READY; END IF;
                WHEN OTHERS => NULL;
            END CASE;
        END IF;
    END PROCESS;

    -- A register
    PROCESS(clr, clk) 
    BEGIN
        IF (clr = '0') THEN
            a_reg <= (OTHERS => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (state = ST_PRE_ROUND) THEN
                a_reg <= a_pre;
            ELSIF (state = ST_ROUND_OP) THEN
                a_reg <= a;
            END IF;
        END IF;
    END PROCESS;

    -- B register
    PROCESS(clr, clk) 
    BEGIN
        IF (clr = '0') THEN
            b_reg <= (OTHERS => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (state = ST_PRE_ROUND) THEN
                b_reg <= b_pre;
            ELSIF (state = ST_ROUND_OP) THEN
                b_reg <= b;
            END IF;
        END IF;
    END PROCESS;

    -- reset and clock rising edge
    PROCESS(clr, clk, di_vld)
    BEGIN
        IF (clr = '0') THEN
            i_cnt <= "0001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (state = ST_PRE_ROUND) THEN
                i_cnt <= "0001";
            ELSIF (state = ST_ROUND_OP) THEN
                IF (i_cnt = "1100") THEN
                    -- if i = 12, back to 1
                    i_cnt <= "0001";
                ELSE
                    -- update i_cnt
                    i_cnt <= i_cnt + '1';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    WITH state SELECT
        do_rdy <= '1' WHEN ST_READY,
        '0' WHEN OTHERS;

    -- A = A + S[0]
    a_pre <= din(63 downto 32) + skey(0);
    
    -- B = B + S[1]
    b_pre <= din(31 DOWNTO 0) + skey(1);  

    -- A = ((A xor B) <<< B) + S[2*i]
    ab_xor <= a_reg XOR b_reg;
    a <= a_rot + skey(CONV_INTEGER(i_cnt & '0'));

    -- B = ((B xor A) <<< A) + S[2*i+1]
    ba_xor <= b_reg XOR a;
    b <= b_rot + skey(CONV_INTEGER(i_cnt & '1'));

    -- output
    dout <= a_reg & b_reg;
    
END RTL;