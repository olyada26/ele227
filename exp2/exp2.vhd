library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exp2 is
Port(
	x : in std_logic;
	y : in std_logic;
	s : out std_logic;
	c : out std_logic

);
end exp2;

architecture Behavioral of exp2 is
begin
	s <= x xor y;
	c <= x and y;

end Behavioral;