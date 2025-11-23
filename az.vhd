library ieee;
use ieee.std_logic_1164.all;

entity tristate4_with_inv is
  port (
    IN4  : in  std_logic_vector(3 downto 0);
    EN4  : in  std_logic;    -- active low
    OUT4 : out std_logic_vector(3 downto 0)
  );
end entity;

architecture rtl of tristate4_with_inv is
begin

  -- ?? ????? ??????
  with EN4 select
    OUT4(0) <= IN4(0) when '0',
               'Z'    when others;

  with EN4 select
    OUT4(1) <= IN4(1) when '0',
               'Z'    when others;

  with EN4 select
    OUT4(2) <= IN4(2) when '0',
               'Z'    when others;

  -- ????? ??? ?? ????? ?????
  with EN4 select
    OUT4(3) <= not IN4(3) when '0',
               'Z'         when others;

end architecture;
