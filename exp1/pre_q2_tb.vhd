
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY pre_q2_tb IS
END pre_q2_tb;
 
ARCHITECTURE behavior OF pre_q2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pre_q2
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         i : OUT  std_logic;
         s : OUT  std_logic;
         h : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';

 	--Outputs
   signal i : std_logic;
   signal s : std_logic;
   signal h : std_logic;

 
 
BEGIN
 
   uut: pre_q2 PORT MAP (
          a => a,
          b => b,
          c => c,
          i => i,
          s => s,
          h => h
        );


 

stim_proc: process
   begin		
      wait for 100 ns;	
			a <= '1';
			b <= '1';
			c <= '1';
	   wait for 100 ns;	
			a <= '0';
			b <= '0';
			c <= '0';
      wait for 100 ns;	
			a <= '1';
			b <= '0';
			c <= '1';
      wait for 100 ns;	
			a <= '1';
			b <= '1';
			c <= '0';
 

    

      wait;
   end process;

END;
