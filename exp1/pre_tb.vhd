--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:15:40 11/03/2025
-- Design Name:   
-- Module Name:   /home/ise/exp_1_pre/pre_tb.vhd
-- Project Name:  exp_1_pre
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pre
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY pre_tb IS
END pre_tb;
 
ARCHITECTURE behavior OF pre_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pre
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         f : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';

 	--Outputs
   signal f : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pre PORT MAP (
          a => a,
          b => b,
          c => c,
          f => f
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			a <= '1';
			b <= '0';
			c <= '0';
      wait for 100 ns;	
			a <= '0';
			b <= '0';
			c <= '0';
      wait for 100 ns;	
			a <= '0';
			b <= '1';
			c <= '0';			

      wait;
   end process;

END;
