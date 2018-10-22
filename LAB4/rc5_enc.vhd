LIBRARY	ieee;
USE		ieee.std_logic_1164.ALL;
USE     ieee.std_logic_unsigned.ALL;                    -- use CONV_INTEGER

ENTITY rc5_enc IS
    PORT ( clr : IN std_logic;                          -- reset signal
        clk : IN std_logic;                             -- clock signal 
        din : IN std_logic_vector (63 downto 0);        -- 64-bit input
        di_vld : IN std_logic;                          -- input ready
        dout : OUT std_logic_vector (63 downto 0);      -- 64-bit output
        do_rdy : OUT std_logic);                        -- output ready
END rc5_enc;

ARCHITECTURE RTL OF rc5_enc IS
    COMPONENT left_rotate
        PORT ( a : IN std_logic_vector (31 downto 0);
            b : IN std_logic_vector (31 downto 0);
            o : OUT std_logic_vector (31 downto 0));
    END COMPONENT;
    SIGNAL i_cnt : std_logic_vector (3 downto 0);       -- a round counter used to compute address index
    SIGNAL ab_xor : std_logic_vector (31 downto 0);     -- result of A xor B
    SIGNAL a_rot : std_logic_vector (31 downto 0);      -- result after left-rotate B
    SIGNAL a : std_logic_vector (31 downto 0);          -- result after first function
    SIGNAL a_pre : std_logic_vector (31 downto 0);      -- prepared value for A
    SIGNAL a_reg : std_logic_vector (31 downto 0);      -- register to store A
    SIGNAL ba_xor : std_logic_vector (31 downto 0);     -- result of B xor A
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


    -- A register
    PROCESS(clr, clk) 
    BEGIN
        IF (clr = '0') THEN
            a_reg <= (OTHERS => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (di_vld = '1') THEN
                a_reg <= a_pre;
            ELSIF (i_cnt < "1100") THEN
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
            ELSIF (i_cnt < "1100") THEN
                b_reg <= b;
            END IF;
        END IF;
    END PROCESS;

    -- reset and clock rising edge
    PROCESS(clr, clk, di_vld)
    BEGIN
        IF (clr = '0') THEN
            do_rdy <= '0';
            dout <= (OTHERS => '0');
            i_cnt <= "0001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (di_vld = '1') THEN
                do_rdy <= '0';
                i_cnt <= "0001";
            ELSE
                IF (i_cnt = "1100") THEN
                    -- if i = 12, computation finish
                    do_rdy <= '1';
                    dout <= a & b;
                ELSE
                    -- update i_cnt
                    i_cnt <= i_cnt + '1';
                END IF;
            END IF;
        END IF;
    END PROCESS;

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
END RTL;