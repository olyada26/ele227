----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:00:27 11/03/2025 
-- Design Name: 
-- Module Name:    pre - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pre is
Port(
	a : in std_logic;
	b : in std_logic;
	c : in std_logic;
	f : out std_logic
);
end pre;

architecture Behavioral of pre is
begin
	f <= (not a and b and not c) or (not a and b and c) or (a and not b and not c) or (a and b and c);



end Behavioral;

