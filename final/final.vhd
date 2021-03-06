library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controller is
    port(
        Rst : in STD_LOGIC;                         -- reset signal
        Clk : in STD_LOGIC;                         -- input clock
        Data : in STD_LOGIC;                        -- input data bit
        Detect : out STD_LOGIC;                     -- '1' when target sequence detected
        Match : out STD_LOGIC_VECTOR(4 downto 0)    -- match process
    );
end controller;

architecture Behavioral of controller is
    type StateType is (S0, S1, S2, S3, S4, S5);
    signal State : StateType := s0;
    signal NextState : StateType := s0;

begin
    -- change state
    process(Rst, Clk)   
    begin
        if(Clk'event and Clk='1') then
            if(Rst = '1') then
                State <= S0;
            else
                State <= NextState;
            end if;
       end if;
    end process;

    -- decide next state
    process(State, Data)
    begin
        case State is   
            when S0 =>
                if(Data = '0') then NextState <= S1; else NextState <= S0; end if;
            when S1 =>
                if(Data = '0') then NextState <= S2; else NextState <= S0; end if;
            when S2 =>
                if(Data = '1') then NextState <= S3; else NextState <= S2; end if;
            when S3 =>
                if(Data = '1') then NextState <= S4; else NextState <= S1; end if;
            when S4 =>
                if(Data = '0') then NextState <= S5; else NextState <= S0; end if;
            when S5 =>
                if(Data = '0') then NextState <= S2; else NextState <= S0; end if;
            when others => null;
        end case;
    end process;

    -- detect
    process(Rst, State)
    begin
        if (State = S5) then 
            Detect <= '1';
        else 
            Detect <= '0';
        end if;
    end process;

    -- match process
    process(Rst, State)
    begin
        case State is
            when S0 => Match <= "00000";
            when S1 => Match <= "00001";
            when S2 => Match <= "00011";
            when S3 => Match <= "00111";
            when S4 => Match <= "01111";
            when S5 => Match <= "11111";
            when others => Match <= (others => '0');
        end case;
    end process;

end Behavioral;