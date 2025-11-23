library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4to1 is
    Port ( d0, d1, d2, d3 : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR(1 downto 0);
           y : out STD_LOGIC );
end mux4to1;

architecture Behavioral of mux4to1 is
begin
    process(sel, d0, d1, d2, d3)
    begin
        case sel is
            when "00" => y <= d0;
            when "01" => y <= d1;
            when "10" => y <= d2;
            when "11" => y <= d3;
            when others => y <= '0';
        end case;
    end process;
end Behavioral;
