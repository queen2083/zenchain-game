library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
 
entity reg4 is 
    Port ( 
        D   : in  STD_LOGIC_VECTOR(3 downto 0); 
        CLK : in  STD_LOGIC; 
        Q   : out STD_LOGIC_VECTOR(3 downto 0) 
    ); 
end reg4; 
 
architecture Structural of reg4 is 
 
begin 
    
    FF0: entity work.dff port map (D => D(0), CLK => CLK, Q => Q(0)); 
    FF1: entity work.dff port map (D => D(1), CLK => CLK, Q => Q(1)); 
    FF2: entity work.dff port map (D => D(2), CLK => CLK, Q => Q(2)); 
    FF3: entity work.dff port map (D => D(3), CLK => CLK, Q => Q(3)); 
 
end Structural;
