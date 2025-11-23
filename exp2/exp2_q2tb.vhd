LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY exp2_q2tb IS
END exp2_q2tb;
 
ARCHITECTURE behavior OF exp2_q2tb IS 
  
    COMPONENT exp2_q2
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c_in : IN  std_logic;
         sum : OUT  std_logic;
         c_out : OUT  std_logic
        );
    END COMPONENT;

   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c_in : std_logic := '0';
   signal sum : std_logic;
   signal c_out : std_logic;
 
BEGIN
   uut: exp2_q2 PORT MAP (
          a => a,
          b => b,
          c_in => c_in,
          sum => sum,
          c_out => c_out
        );
   stim_proc: process
   begin		
     wait for 100 ns;	
			a <= '0';
			b <= '0';
			c_in <= '0';
     wait for 100 ns;	
			a <= '0';
			b <= '0';
			c_in <= '1';
     wait for 100 ns;	
			a <= '0';
			b <= '1';
			c_in <= '0';
     wait for 100 ns;	
			a <= '0';
			b <= '1';
			c_in <= '1';
     wait for 100 ns;	
			a <= '1';
			b <= '0';
			c_in <= '0';
     wait for 100 ns;	
			a <= '1';
			b <= '0';
			c_in <= '1';
     wait for 100 ns;	
			a <= '1';
			b <= '1';
			c_in <= '0';
     wait for 100 ns;	
			a <= '1';
			b <= '1';
			c_in <= '1';

      wait;
   end process;

END;