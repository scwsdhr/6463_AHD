library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity controller_fpga is
    port(
        Rst : in STD_LOGIC;
        SysClk : in STD_LOGIC;
        Clk_Btn : in STD_LOGIC;
        Data_SW : in STD_LOGIC;
        Match_LED : out STD_LOGIC_VECTOR(4 downto 0);
        Detect_LED : out STD_LOGIC;
        SSEG_CA : out STD_LOGIC_VECTOR(7 downto 0);
        SSEG_AN : out STD_LOGIC_VECTOR(7 downto 0)
    );
end controller_fpga;

architecture Behavioral of controller_fpga is

    component controller
        port(
            Rst : in STD_LOGIC;                         -- reset signal
            Clk : in STD_LOGIC;                         -- input clock
            Data : in STD_LOGIC;                        -- input data bit
            Detect : out STD_LOGIC;                     -- '1' when target sequence detected
            Match : out STD_LOGIC_VECTOR(4 downto 0)    -- match process
        );
    end component;

    component Bit2SSEG
        port( 
            Clk: in STD_LOGIC; 
            X : in STD_LOGIC;
            Y : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    signal Clk_Btn_buf : STD_LOGIC;
    signal Clk : STD_LOGIC := '0';
    signal DispClk : STD_LOGIC_VECTOR(18 downto 0);
    signal DispBit : STD_LOGIC;
    signal DispBits : STD_LOGIC_VECTOR(7 downto 0) := x"00";
    signal DispVld : STD_LOGIC_VECTOR(7 downto 0) := x"ff";

begin
    
    controller_uut : controller port map(
        Rst => Rst,
        Clk => Clk,
        Data => Data_SW,
        Detect => Detect_LED,
        Match => Match_LED
    );

    Bit2SSEG_uut : Bit2SSEG port map(
        Clk => DispClk(15),
        X => DispBit,
        Y => SSEG_CA
    );
    
    -- update buffer
    process(SysClk)
    begin
        if (SysClk'event and SysClk = '1') then
            Clk_Btn_buf <= Clk_Btn;
        end if;
    end process;

    -- clock signal
    process(SysClk)
    begin
        if (SysClk'event and SysClk = '1') then
            if (Clk_Btn_buf = '0' and Clk_Btn = '1') then
                Clk <= '1';
            elsif (Clk_Btn_buf = '1' and Clk_Btn = '0') then
                Clk <= '0';
            end if;
        end if;
    end process;  

    -- generate a low-frequency clock for display 
    process(Rst, SysClk)
    begin
        if (Rst'event and Rst = '0') then
            DispClk <= (others => '0');
        end if;
        if (SysClk'event and SysClk = '1') then
            DispClk <= DispClk + '1';
        end if;
    end process;

    -- each DispClk(15) display one segment, select the segment to display
    process(DispClk(15))
    begin
        if (DispClk(15)'event and DispClk(15) = '1') then
            -- use DispClk(15) as a frequency divider, and DispClk(18 downto 16) to select a bit
            case DispClk(18 downto 16) is
                when "000" => SSEG_AN <= x"fe" or DispVld; DispBit <= DispBits(0);
                when "001" => SSEG_AN <= x"fd" or DispVld; DispBit <= DispBits(1);
                when "010" => SSEG_AN <= x"fb" or DispVld; DispBit <= DispBits(2);
                when "011" => SSEG_AN <= x"f7" or DispVld; DispBit <= DispBits(3);
                when "100" => SSEG_AN <= x"ef" or DispVld; DispBit <= DispBits(4);
                when "101" => SSEG_AN <= x"df" or DispVld; DispBit <= DispBits(5);
                when "110" => SSEG_AN <= x"bf" or DispVld; DispBit <= DispBits(6);
                when others => SSEG_AN <= x"7f" or DispVld; DispBit <= DispBits(7);
            end case;
        end if;
    end process;

    -- store previous inputs
    process(Rst, Clk)
    begin
        if (Clk'event and Clk = '1') then
            if (Rst = '1') then
                DispBits <= x"00";
            else
                DispBits <= DispBits(6 downto 0) & Data_SW;
            end if;
        end if;
    end process;

    -- decide valid bits
    process(Rst, Clk)
    begin
        if (Clk'event and Clk = '1') then
            if (Rst = '1') then
                DispVld <= x"ff";
            else
                if (DispVld /= x"00") then
                    DispVld <= DispVld(6 downto 0) & '0';
                end if;    
            end if;
        end if;
    end process;

end architecture ; -- Behavioral