library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL; 
 
entity ALU is 
    Port ( 
        A   : in  STD_LOGIC_VECTOR(3 downto 0); 
        B   : in  STD_LOGIC_VECTOR(3 downto 0); 
        OP  : in  STD_LOGIC_VECTOR(2 downto 0);   
        R   : out STD_LOGIC_VECTOR(3 downto 0);  
        Cout: out STD_LOGIC;                       
        Zero: out STD_LOGIC                       
    ); 
end ALU; 
 
architecture Behavioral of ALU is 
    signal result : STD_LOGIC_VECTOR(4 downto 0); 
begin 
 
    process(A, B, OP) 
    begin 
        case OP is 
         
            -- 000: ??? 
            when "000" => 
                result <= std_logic_vector(unsigned('0' & A) + unsigned('0' & B)); 
             
            -- 001: ????? 
            when "001" => 
                result <= std_logic_vector(unsigned('0' & A) - unsigned('0' & B)); 
             
            -- 010: AND 
            when "010" => 
                result <= "0000" & (A and B); 
             
            -- 011: OR 
            when "011" => 
                result <= "0000" & (A or B); 
             
            -- 100: XOR 
            when "100" => 
                result <= "0000" & (A xor B); 
             
            -- 101: NOT A 
            when "101" => 
                result <= "0000" & (not A); 
             
            -- 110: 
            when "110" => 
                result <= std_logic_vector(unsigned('0' & A) + 1); 
             
            -- 111:  (A == B) 
            when "111" => 
                if A = B then 
                    result <= "00001"; 
                else 
                    result <= "00000"; 
                end if; 
 
            when others => 
                result <= (others => '0'); 
         
        end case; 
    end process; 
 
   
    R    <= result(3 downto 0); 
    Cout <= result(4); 
    Zero <= '1' when result(3 downto 0) = "0000" else '0'; 
 
end Behavioral;
