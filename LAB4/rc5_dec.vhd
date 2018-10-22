LIBRARY	ieee;
USE		ieee.std_logic_1164.ALL;
USE     ieee.std_logic_unsigned.ALL;                    -- use CONV_INTEGER

ENTITY rc5_dec IS
    PORT ( clr : IN std_logic;                          -- reset signal
        clk : IN std_logic;                             -- clock signal 
        din : IN std_logic_vector (63 downto 0);        -- 64-bit input
        di_vld : IN std_logic;                          -- input ready
        dout : OUT std_logic_vector (63 downto 0);      -- 64-bit output
        do_rdy : OUT std_logic);                        -- output ready
END rc5_dec;

ARCHITECTURE RTL OF rc5_dec IS
    COMPONENT right_rotate
        PORT ( a : IN std_logic_vector (31 downto 0);
            b : IN std_logic_vector (31 downto 0);
            o : OUT std_logic_vector (31 downto 0));
    END COMPONENT;
    SIGNAL i_cnt : std_logic_vector (3 downto 0);       -- a round counter used to compute address index
    SIGNAL b_minus : std_logic_vector (31 downto 0);     -- result of A xor B
    SIGNAL a_rot : std_logic_vector (31 downto 0);      -- result after left-rotate B
    SIGNAL a : std_logic_vector (31 downto 0);          -- result after first function
    SIGNAL a_pre : std_logic_vector (31 downto 0);      -- prepared value for A
    SIGNAL a_reg : std_logic_vector (31 downto 0);      -- register to store A
    SIGNAL a_minus : std_logic_vector (31 downto 0);     -- result of B xor A
    SIGNAL b_rot : std_logic_vector (31 downto 0);      -- result after left-rotate A
    SIGNAL b : std_logic_vector (31 downto 0);          -- result after second function
    SIGNAL b_pre : std_logic_vector (31 downto 0);      -- prepared value for B
    SIGNAL b_reg : std_logic_vector (31 downto 0);      -- register to store B
    TYPE rom IS ARRAY (0 to 25) OF std_logic_vector (31 downto 0);  -- ROM 
    CONSTANT skey : rom := rom'(x"00000000", x"00000000", x"46F8E8C5", x"460C6085", 
                        x"70F83b8a", x"284b8303", x"513E1454", x"F621ED22", 
                        x"3125065D", x"11a83a5D", x"D427686b", x"713aD82D", 
                        x"4b792F99", x"2799a4DD", x"a7901C49", x"DEDE871a", 
                        x"36C03196", x"a7EFC249", x"61a78bb8", x"3b0a1D2b", 
                        x"4DbFCa76", x"aE162167", x"30D76b0a", x"43192304", 
                        x"F6CC1431", x"65046380");      -- ROM to store Skey
    
BEGIN
    uut1 : right_rotate PORT MAP (
        a => b_minus,
        b => a_reg,
        o => b_rot
    );
    uut2 : right_rotate PORT MAP (
        a => a_minus,
        b => b,
        o => a_rot
    );


    -- A register
    PROCESS(clr, clk) 
    BEGIN
        IF (clr = '0') THEN
            a_reg <= (OTHERS => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (di_vld = '1') THEN
                a_reg <= a_pre;
            ELSIF (i_cnt > "0001") THEN
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
            IF (di_vld = '1') THEN
                b_reg <= b_pre;
            ELSIF (i_cnt > "0001") THEN
                b_reg <= b;
            END IF;
        END IF;
    END PROCESS;

    -- reset and clock rising edge
    PROCESS(clr, clk)
    BEGIN
        IF (clr = '0') THEN
            do_rdy <= '0';
            dout <= (OTHERS => '0');
            i_cnt <= "1100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (di_vld = '1') THEN
                do_rdy <= '0';
                i_cnt <= "1100";
            ELSE
                IF (i_cnt = "0001") THEN
                    -- if i = 1, computation finish
                    do_rdy <= '1';
                    dout <= a & b;
                ELSE
                    -- update i_cnt
                    i_cnt <= i_cnt - '1';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- B = B
    b_pre <= din(31 DOWNTO 0);  

    -- A = A
    a_pre <= din(63 downto 32);

    -- B = ((B - S[2*i+1] >>> A) xor A)
    b_minus <= b_reg - skey(CONV_INTEGER(i_cnt & '1'));
    b <= b_rot XOR a_reg;

    -- A = ((A - S[2*i] >>> B) xor B)
    a_minus <= a_reg - skey(CONV_INTEGER(i_cnt & '0'));
    a <= a_rot XOR b;
END RTL;