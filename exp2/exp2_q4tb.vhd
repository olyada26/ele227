LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY exp2_q4tb IS
END exp2_q4tb;
 
ARCHITECTURE behavior OF exp2_q4tb IS 
  
    COMPONENT exp2_q4
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         Result : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');

   signal Result : std_logic_vector(3 downto 0);
  
BEGIN
   uut: exp2_q4 PORT MAP (
          A => A,
          B => B,
          Result => Result
        );
   stim_proc: process
   begin		
      wait for 100 ns;	
			A <= "00"; 
         B <= "10";
      wait for 100 ns;	
			A <= "10"; 
         B <= "00";
      wait for 100 ns;	
			A <= "11"; 
         B <= "00";
      wait for 100 ns;	
			A <= "10"; 
         B <= "01";
      wait for 100 ns;	
			A <= "01"; 
         B <= "10";
			
      wait;
   end process;

END;