LIBRARY ieee;
USE     ieee.std_logic_1164.ALL;
USE     ieee.std_logic_unsigned.ALL;                        -- use CONV_INTEGER

ENTITY rc5_enc_fpga IS
    PORT ( clk : IN std_logic;                              -- clock signal
        clr : IN std_logic;                                 -- reset signal
        io_sw : IN std_logic;                               -- '0' for input, '1' for output
        ab_sw : IN std_logic;                               -- '0' for a, '1' for b
        mod_hex : IN std_logic_vector (7 downto 0);         -- select the hex bits to modify
        up_btn : IN std_logic;                              -- add 1 to targeted variable
        down_btn : IN std_logic;                            -- minus 1 to targeted variable
        di_vld : IN std_logic;                              -- if the ready is ready
        do_rdy : OUT std_logic;                             -- if the output is ready
        disp_sel : OUT std_logic_vector (7 downto 0);       -- select the segment to lit
        disp_val : OUT std_logic_vector (7 downto 0));      -- the value to display
END rc5_enc_fpga;

ARCHITECTURE behavioral OF rc5_enc_fpga IS
    COMPONENT rc5_enc
        PORT ( clk : IN std_logic;                          -- clock signal 
            clr : IN std_logic;                             -- reset signal
            din : IN std_logic_vector (63 downto 0);        -- 64-bit input
            di_vld : IN std_logic;                          -- input ready
            dout : OUT std_logic_vector (63 downto 0);      -- 64-bit output
            do_rdy : OUT std_logic);                        -- output ready
    END COMPONENT;
    COMPONENT Hex2LED
        PORT ( clk : IN std_logic;                          -- display clock signal
             x : IN std_logic_vector (3 downto 0);          -- display hex
             y : OUT std_logic_vector (7 downto 0));        -- display binary bits
    END COMPONENT;
    SIGNAL din : std_logic_vector (63 downto 0);            -- input for rc5
    SIGNAL dout : std_logic_vector (63 downto 0);           -- output for rc5
    SIGNAL up_buf : std_logic;                              -- buffer for up button, used to detect rising edge
    SIGNAL down_buf : std_logic;                            -- buffer for down button, used to detect rising edge
    SIGNAL disp_clk : std_logic_vector (18 downto 0);       -- display clock
    SIGNAL disp_hex : std_logic_vector (3 downto 0);        -- display hex number
    SIGNAL disp_bits : std_logic_vector (31 downto 0);      -- display text in bits
BEGIN
    -- RC5 encription module
    uut0 : rc5_enc PORT MAP (
        clk => clk,
        clr => clr,
        din => din,
        di_vld => di_vld,
        dout => dout,
        do_rdy => do_rdy
    );
    
    -- Heximal number to 7 Segments module
    uut1 : Hex2LED PORT MAP (
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
            CASE disp_clk(18 downto 16) IS
                WHEN "000" => disp_sel <= x"fe"; disp_hex <= disp_bits(3 downto 0); 
                WHEN "001" => disp_sel <= x"fd"; disp_hex <= disp_bits(7 downto 4);
                WHEN "010" => disp_sel <= x"fb"; disp_hex <= disp_bits(11 downto 8);
                WHEN "011" => disp_sel <= x"f7"; disp_hex <= disp_bits(15 downto 12);
                WHEN "100" => disp_sel <= x"ef"; disp_hex <= disp_bits(19 downto 16);
                WHEN "101" => disp_sel <= x"df"; disp_hex <= disp_bits(23 downto 20);
                WHEN "110" => disp_sel <= x"bf"; disp_hex <= disp_bits(27 downto 24);
                WHEN OTHERS => disp_sel <= x"7f"; disp_hex <= disp_bits(31 downto 28);
            END CASE;
        END IF;
    END PROCESS;

    -- din/dout switch and a/b switch
    PROCESS(io_sw, ab_sw)
    BEGIN
        -- input mode
        IF (io_sw = '0') THEN
            -- select a
            IF (ab_sw = '0') THEN
                disp_bits <= din(63 downto 32);
            -- select b
            ELSE
                disp_bits <= din(31 downto 0);
            END IF;
        -- output mode
        ELSE 
            -- select a
            IF (ab_sw = '0') THEN
                disp_bits <= dout(63 downto 32);
            -- select b
            ELSE
                disp_bits <= dout(31 downto 0);
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
    PROCESS(clr, clk)
    BEGIN
        IF (clr = '0') THEN
            din <= (OTHERS => '0');
        ELSIF (clk'EVENT AND clk = '1' AND io_sw = '0') THEN
            IF (ab_sw = '0') THEN 
                -- rising edge of up button
                IF (up_btn = '1' AND up_buf = '0') THEN 
                    din(63 downto 60) <= din(63 downto 60) + ("000" & mod_hex(7));
                    din(59 downto 56) <= din(59 downto 56) + ("000" & mod_hex(6));
                    din(55 downto 52) <= din(55 downto 52) + ("000" & mod_hex(5));
                    din(51 downto 48) <= din(51 downto 48) + ("000" & mod_hex(4));
                    din(47 downto 44) <= din(47 downto 44) + ("000" & mod_hex(3));
                    din(43 downto 40) <= din(43 downto 40) + ("000" & mod_hex(2));
                    din(39 downto 36) <= din(39 downto 36) + ("000" & mod_hex(1));
                    din(35 downto 32) <= din(35 downto 32) + ("000" & mod_hex(0));
                -- rising edge of down button
                ELSIF (down_btn = '1' AND down_buf = '0') THEN
                    din(63 downto 60) <= din(63 downto 60) - ("000" & mod_hex(7));
                    din(59 downto 56) <= din(59 downto 56) - ("000" & mod_hex(6));
                    din(55 downto 52) <= din(55 downto 52) - ("000" & mod_hex(5));
                    din(51 downto 48) <= din(51 downto 48) - ("000" & mod_hex(4));
                    din(47 downto 44) <= din(47 downto 44) - ("000" & mod_hex(3));
                    din(43 downto 40) <= din(43 downto 40) - ("000" & mod_hex(2));
                    din(39 downto 36) <= din(39 downto 36) - ("000" & mod_hex(1));
                    din(35 downto 32) <= din(35 downto 32) - ("000" & mod_hex(0));
                END IF;
            ELSE
                -- rising edge of up button
                IF (up_btn = '1' AND up_buf = '0') THEN 
                    din(31 downto 28) <= din(31 downto 28) + ("000" & mod_hex(7));
                    din(27 downto 24) <= din(27 downto 24) + ("000" & mod_hex(6));
                    din(23 downto 20) <= din(23 downto 20) + ("000" & mod_hex(5));
                    din(19 downto 16) <= din(19 downto 16) + ("000" & mod_hex(4));
                    din(15 downto 12) <= din(15 downto 12) + ("000" & mod_hex(3));
                    din(11 downto 8)  <= din(11 downto 8)  + ("000" & mod_hex(2));
                    din(7 downto 4)   <= din(7 downto 4)   + ("000" & mod_hex(1));
                    din(3 downto 0)   <= din(3 downto 0)   + ("000" & mod_hex(0));
                -- rising edge of down button
                ELSIF (down_btn = '1' AND down_buf = '0') THEN
                    din(31 downto 28) <= din(31 downto 28) - ("000" & mod_hex(7));
                    din(27 downto 24) <= din(27 downto 24) - ("000" & mod_hex(6));
                    din(23 downto 20) <= din(23 downto 20) - ("000" & mod_hex(5));
                    din(19 downto 16) <= din(19 downto 16) - ("000" & mod_hex(4));
                    din(15 downto 12) <= din(15 downto 12) - ("000" & mod_hex(3));
                    din(11 downto 8)  <= din(11 downto 8)  - ("000" & mod_hex(2));
                    din(7 downto 4)   <= din(7 downto 4)   - ("000" & mod_hex(1));
                    din(3 downto 0)   <= din(3 downto 0)   - ("000" & mod_hex(0));
                END IF;
            END IF;
        END IF;
    END PROCESS;

END behavioral;