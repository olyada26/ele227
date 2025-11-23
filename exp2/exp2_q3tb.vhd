LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY exp2_q3tb IS
END exp2_q3tb;
 
ARCHITECTURE behavior OF exp2_q3tb IS 
  
    COMPONENT exp2_q3
    PORT(
         A : IN  std_logic_vector(2 downto 0);
         B : IN  std_logic_vector(2 downto 0);
         Sel : IN  std_logic;
         Result : OUT  std_logic_vector(2 downto 0);
         C_out : OUT  std_logic
        );
    END COMPONENT;
    

   signal A : std_logic_vector(2 downto 0) := (others => '0');
   signal B : std_logic_vector(2 downto 0) := (others => '0');
   signal Sel : std_logic := '0';

   signal Result : std_logic_vector(2 downto 0);
   signal C_out : std_logic;
  
BEGIN
   uut: exp2_q3 PORT MAP (
          A => A,
          B => B,
          Sel => Sel,
          Result => Result,
          C_out => C_out
        );

   stim_proc: process
   begin		
      wait for 100 ns;	
		A <= "011";
      B <= "010";
      Sel <= '0';
      wait for 100 ns;	
		A <= "011";
      B <= "010";
      Sel <= '1';
      wait for 100 ns;	
		A <= "110";
      B <= "011";
      Sel <= '0';
      wait for 100 ns;	
		A <= "000";
      B <= "111";
      Sel <= '1';
      wait for 100 ns;	
		A <= "101";
      B <= "101";
      Sel <= '0';
      wait;
   end process;

END;