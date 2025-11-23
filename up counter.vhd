library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter4 is
    Port ( clk : in STD_LOGIC;
           cnt : out STD_LOGIC_VECTOR(3 downto 0) );
end counter4;

architecture Behavioral of counter4 is
signal temp : STD_LOGIC_VECTOR(3 downto 0) := "0000";
begin
    process(clk)
    begin
        if rising_edge(clk) then
            temp <= temp + 1;
        end if;
    end process;

    cnt <= temp;
end Behavioral;
