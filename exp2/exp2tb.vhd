LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY exp2tb IS
END exp2tb;
 
ARCHITECTURE behavior OF exp2tb IS 
 
    COMPONENT exp2
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         s : OUT  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    
   signal x : std_logic := '0';
   signal y : std_logic := '0';

   signal s : std_logic;
   signal c : std_logic;
 
BEGIN
   uut: exp2 PORT MAP (
          x => x,
          y => y,
          s => s,
          c => c
        );

   stim_proc: process
   begin		
     wait for 100 ns;	
			x <= '1';
			y <= '0';
     wait for 100 ns;	
			x <= '1';
			y <= '1';
     wait for 100 ns;	
			x <= '0';
			y <= '0';
     wait for 100 ns;	
			x <= '0';
			y <= '1';

      wait;
   end process;

END;
