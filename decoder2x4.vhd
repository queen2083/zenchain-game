library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder2to4 is
    Port ( inp : in STD_LOGIC_VECTOR(1 downto 0);
           outp : out STD_LOGIC_VECTOR(3 downto 0) );
end decoder2to4;

architecture Behavioral of decoder2to4 is
begin
    process(inp)
    begin
        case inp is
            when "00" => outp <= "0001";
            when "01" => outp <= "0010";
            when "10" => outp <= "0100";
            when "11" => outp <= "1000";
            when others => outp <= "0000";
        end case;
    end process;
end Behavioral;
