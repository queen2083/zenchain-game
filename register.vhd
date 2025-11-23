library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg8 is
    Port (
        clk  : in  STD_LOGIC;
        load : in  STD_LOGIC;
        d    : in  STD_LOGIC_VECTOR(7 downto 0);
        q    : out STD_LOGIC_VECTOR(7 downto 0)
    );
end reg8;

architecture Behavioral of reg8 is
signal temp : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if load = '1' then
                temp <= d;
            end if;
        end if;
    end process;

    q <= temp;
end Behavioral;
