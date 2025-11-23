library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity blinker is
    Port ( clk : in STD_LOGIC;
           led : out STD_LOGIC );
end blinker;

architecture Behavioral of blinker is
signal temp : STD_LOGIC := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            temp <= not temp;
        end if;
    end process;

    led <= temp;
end Behavioral;
