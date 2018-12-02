LIBRARY IEEE;
USE     IEEE.STD_LOGIC_1164.ALL;
USE     IEEE.STD_LOGIC_UNSIGNED.ALL;                        -- use CONV_INTEGER

USE     WORK.RC5_PKG.ALL;

ENTITY rc5_fpga IS
    PORT ( 
        clr      : IN  STD_LOGIC;                           -- reset signal
        clk      : IN  STD_LOGIC;                           -- clock signal
        key_sw   : IN  STD_LOGIC;                           -- '1' for user key, '0' for others
        io_sw    : IN  STD_LOGIC;                           -- '0' for input, '1' for output
        ab_sw    : IN  STD_LOGIC;                           -- '0' for a, '1' for b
        func_sw  : IN  STD_LOGIC;                           -- '0' for encryption, '1' for decryption
        mod_hex  : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);       -- select the hex bits to modify
        up_btn   : IN  STD_LOGIC;                           -- add 1 to targeted variable
        down_btn : IN  STD_LOGIC;                           -- minus 1 to targeted variable
        key_in   : IN  STD_LOGIC;                           -- if the user key is ready
        di_vld   : IN  STD_LOGIC;                           -- if the din is ready
        key_rdy  : OUT STD_LOGIC;                           -- if the round key is ready
        do_rdy   : OUT STD_LOGIC;                           -- if the dout is ready
        disp_sel : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);       -- select the segment to lit
        disp_val : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));      -- the value to display
END rc5_fpga;

ARCHITECTURE behavioral OF rc5_fpga IS
    COMPONENT rc5
        PORT ( 
            clr      : IN  STD_LOGIC;                       -- reset signal
            clk      : IN  STD_LOGIC;                       -- clock signal
            --ukey32   : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);   -- user key
            ukey     : IN  STD_LOGIC_VECTOR(127 DOWNTO 0);  -- user key
            key_in   : IN  STD_LOGIC;                       -- key input ready
            din      : IN  STD_LOGIC_VECTOR(63 downto 0);   -- 64-bit input
            func_sel : IN  STD_LOGIC;                       -- '0' for encryption, '1' for decryption
            di_vld   : IN  STD_LOGIC;                       -- din input ready
            key_rdy  : OUT STD_LOGIC;                       -- key expansion ready
            dout     : OUT STD_LOGIC_VECTOR(63 downto 0);   -- 64-bit output
            do_rdy   : OUT STD_LOGIC                        -- dout output ready
        );                              
    END COMPONENT;

    COMPONENT Hex2LED
        PORT ( 
            clk : IN  STD_LOGIC;                            -- display clock signal
            x   : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);        -- display hex
            y   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));       -- display binary bits
    END COMPONENT;

    SIGNAL ukey      : STD_LOGIC_VECTOR (127 DOWNTO 0)      -- user key
                     := (OTHERS => '0');
    SIGNAL din       : STD_LOGIC_VECTOR (63 DOWNTO 0);      -- input for rc5
    SIGNAL dout      : STD_LOGIC_VECTOR (63 DOWNTO 0);      -- output for rc5
    SIGNAL up_buf    : STD_LOGIC;                           -- buffer for up button, used to detect rising edge
    SIGNAL down_buf  : STD_LOGIC;                           -- buffer for down button, used to detect rising edge
    SIGNAL disp_clk  : STD_LOGIC_VECTOR (18 DOWNTO 0);      -- display clock
    SIGNAL disp_hex  : STD_LOGIC_VECTOR (3 DOWNTO 0);       -- display hex number
    SIGNAL disp_bits : STD_LOGIC_VECTOR (31 DOWNTO 0);      -- display text in bits
BEGIN
    -- complete RC5 module
    RC5_uut : rc5 PORT MAP (
        clr => clr, 
        clk => clk,
        ukey => ukey,
        key_in => key_in,
        din => din,
        func_sel => func_sw,
        di_vld => di_vld,
        key_rdy => key_rdy,
        dout => dout,
        do_rdy => do_rdy
    );
    
    -- Heximal number to 7 Segments module
    Hex2LED_uut : Hex2LED PORT MAP (
        clk => disp_clk(15),
        x => disp_hex,
        y => disp_val
    );

    -- generate a low-frequency clock for display 
    PROCESS(clr, clk)
    BEGIN
        IF (clr'EVENT AND clr = '0') THEN
            disp_clk <= (OTHERS => '0');
        END IF;
        IF (clk'EVENT AND clk = '1') THEN
            disp_clk <= disp_clk + '1';
        END IF;
    END PROCESS;

    -- each disp_clk(15) display one segment, select the segment to display
    PROCESS (disp_clk(15))
    BEGIN
        IF (disp_clk(15)'EVENT AND disp_clk(15) = '1') THEN
            -- use disp_clk(15) as a frequency divider, and disp_clk(18 downto 16) to select a bit
            CASE disp_clk(18 DOWNTO 16) IS
                WHEN "000" => disp_sel <= x"fe"; disp_hex <= disp_bits(3 DOWNTO 0); 
                WHEN "001" => disp_sel <= x"fd"; disp_hex <= disp_bits(7 DOWNTO 4);
                WHEN "010" => disp_sel <= x"fb"; disp_hex <= disp_bits(11 DOWNTO 8);
                WHEN "011" => disp_sel <= x"f7"; disp_hex <= disp_bits(15 DOWNTO 12);
                WHEN "100" => disp_sel <= x"ef"; disp_hex <= disp_bits(19 DOWNTO 16);
                WHEN "101" => disp_sel <= x"df"; disp_hex <= disp_bits(23 DOWNTO 20);
                WHEN "110" => disp_sel <= x"bf"; disp_hex <= disp_bits(27 DOWNTO 24);
                WHEN OTHERS => disp_sel <= x"7f"; disp_hex <= disp_bits(31 DOWNTO 28);
            END CASE;
        END IF;
    END PROCESS;

    -- din/dout switch and a/b switch
    PROCESS(io_sw, ab_sw)
    BEGIN
        IF (key_sw = '1') THEN
            disp_bits <= ukey(31 DOWNTO 0);
        ELSE
            -- input mode
            IF (io_sw = '0') THEN
                -- select a
                IF (ab_sw = '0') THEN
                    disp_bits <= din(63 DOWNTO 32);
                -- select b
                ELSE
                    disp_bits <= din(31 DOWNTO 0);
                END IF;
            -- output mode
            ELSE 
                -- select a
                IF (ab_sw = '0') THEN
                    disp_bits <= dout(63 DOWNTO 32);
                -- select b
                ELSE
                    disp_bits <= dout(31 DOWNTO 0);
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- the buffers of button, used to detect the rising edge
    PROCESS(clk)
    BEGIN
        IF (clk'EVENT AND clk = '1') THEN
            up_buf <= up_btn;
            down_buf <= down_btn;
        END IF;
    END PROCESS;
    
    -- select the targeted hex bits to modify
    ukey(127 DOWNTO 32) <= (OTHERS => '0');       -- hard coded bits
    PROCESS(clr, clk)
    BEGIN
        IF (clr = '0') THEN
            ukey <= (OTHERS => '0');
            din <= (OTHERS => '0');
        ELSIF (clk'EVENT AND clk = '1' AND io_sw = '0') THEN
            IF (key_sw = '1') THEN
                -- rising edge of up button
                IF (up_btn = '1' AND up_buf = '0') THEN 
                    ukey(31 DOWNTO 28) <= ukey(31 DOWNTO 28) + ("000" & mod_hex(7));
                    ukey(27 DOWNTO 24) <= ukey(27 DOWNTO 24) + ("000" & mod_hex(6));
                    ukey(23 DOWNTO 20) <= ukey(23 DOWNTO 20) + ("000" & mod_hex(5));
                    ukey(19 DOWNTO 16) <= ukey(19 DOWNTO 16) + ("000" & mod_hex(4));
                    ukey(15 DOWNTO 12) <= ukey(15 DOWNTO 12) + ("000" & mod_hex(3));
                    ukey(11 DOWNTO 8)  <= ukey(11 DOWNTO 8)  + ("000" & mod_hex(2));
                    ukey(7 DOWNTO 4)   <= ukey(7 DOWNTO 4)   + ("000" & mod_hex(1));
                    ukey(3 DOWNTO 0)   <= ukey(3 DOWNTO 0)   + ("000" & mod_hex(0));
                -- rising edge of down button
                ELSIF (down_btn = '1' AND down_buf = '0') THEN
                    ukey(31 DOWNTO 28) <= ukey(31 DOWNTO 28) - ("000" & mod_hex(7));
                    ukey(27 DOWNTO 24) <= ukey(27 DOWNTO 24) - ("000" & mod_hex(6));
                    ukey(23 DOWNTO 20) <= ukey(23 DOWNTO 20) - ("000" & mod_hex(5));
                    ukey(19 DOWNTO 16) <= ukey(19 DOWNTO 16) - ("000" & mod_hex(4));
                    ukey(15 DOWNTO 12) <= ukey(15 DOWNTO 12) - ("000" & mod_hex(3));
                    ukey(11 DOWNTO 8)  <= ukey(11 DOWNTO 8)  - ("000" & mod_hex(2));
                    ukey(7 DOWNTO 4)   <= ukey(7 DOWNTO 4)   - ("000" & mod_hex(1));
                    ukey(3 DOWNTO 0)   <= ukey(3 DOWNTO 0)   - ("000" & mod_hex(0));
                END IF;
            ELSE
                IF (ab_sw = '0') THEN 
                    -- rising edge of up button
                    IF (up_btn = '1' AND up_buf = '0') THEN 
                        din(63 DOWNTO 60) <= din(63 DOWNTO 60) + ("000" & mod_hex(7));
                        din(59 DOWNTO 56) <= din(59 DOWNTO 56) + ("000" & mod_hex(6));
                        din(55 DOWNTO 52) <= din(55 DOWNTO 52) + ("000" & mod_hex(5));
                        din(51 DOWNTO 48) <= din(51 DOWNTO 48) + ("000" & mod_hex(4));
                        din(47 DOWNTO 44) <= din(47 DOWNTO 44) + ("000" & mod_hex(3));
                        din(43 DOWNTO 40) <= din(43 DOWNTO 40) + ("000" & mod_hex(2));
                        din(39 DOWNTO 36) <= din(39 DOWNTO 36) + ("000" & mod_hex(1));
                        din(35 DOWNTO 32) <= din(35 DOWNTO 32) + ("000" & mod_hex(0));
                    -- rising edge of down button
                    ELSIF (down_btn = '1' AND down_buf = '0') THEN
                        din(63 DOWNTO 60) <= din(63 DOWNTO 60) - ("000" & mod_hex(7));
                        din(59 DOWNTO 56) <= din(59 DOWNTO 56) - ("000" & mod_hex(6));
                        din(55 DOWNTO 52) <= din(55 DOWNTO 52) - ("000" & mod_hex(5));
                        din(51 DOWNTO 48) <= din(51 DOWNTO 48) - ("000" & mod_hex(4));
                        din(47 DOWNTO 44) <= din(47 DOWNTO 44) - ("000" & mod_hex(3));
                        din(43 DOWNTO 40) <= din(43 DOWNTO 40) - ("000" & mod_hex(2));
                        din(39 DOWNTO 36) <= din(39 DOWNTO 36) - ("000" & mod_hex(1));
                        din(35 DOWNTO 32) <= din(35 DOWNTO 32) - ("000" & mod_hex(0));
                    END IF;
                ELSE
                    -- rising edge of up button
                    IF (up_btn = '1' AND up_buf = '0') THEN 
                        din(31 DOWNTO 28) <= din(31 DOWNTO 28) + ("000" & mod_hex(7));
                        din(27 DOWNTO 24) <= din(27 DOWNTO 24) + ("000" & mod_hex(6));
                        din(23 DOWNTO 20) <= din(23 DOWNTO 20) + ("000" & mod_hex(5));
                        din(19 DOWNTO 16) <= din(19 DOWNTO 16) + ("000" & mod_hex(4));
                        din(15 DOWNTO 12) <= din(15 DOWNTO 12) + ("000" & mod_hex(3));
                        din(11 DOWNTO 8)  <= din(11 DOWNTO 8)  + ("000" & mod_hex(2));
                        din(7 DOWNTO 4)   <= din(7 DOWNTO 4)   + ("000" & mod_hex(1));
                        din(3 DOWNTO 0)   <= din(3 DOWNTO 0)   + ("000" & mod_hex(0));
                    -- rising edge of down button
                    ELSIF (down_btn = '1' AND down_buf = '0') THEN
                        din(31 DOWNTO 28) <= din(31 DOWNTO 28) - ("000" & mod_hex(7));
                        din(27 DOWNTO 24) <= din(27 DOWNTO 24) - ("000" & mod_hex(6));
                        din(23 DOWNTO 20) <= din(23 DOWNTO 20) - ("000" & mod_hex(5));
                        din(19 DOWNTO 16) <= din(19 DOWNTO 16) - ("000" & mod_hex(4));
                        din(15 DOWNTO 12) <= din(15 DOWNTO 12) - ("000" & mod_hex(3));
                        din(11 DOWNTO 8)  <= din(11 DOWNTO 8)  - ("000" & mod_hex(2));
                        din(7 DOWNTO 4)   <= din(7 DOWNTO 4)   - ("000" & mod_hex(1));
                        din(3 DOWNTO 0)   <= din(3 DOWNTO 0)   - ("000" & mod_hex(0));
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;

END behavioral;