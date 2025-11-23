

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity pre_q2 is
port(
	a : in std_logic;
	b : in std_logic;
	c : in std_logic;
	i : out std_logic;
	s : out std_logic;
	h : out std_logic);
end pre_q2;

architecture Behavioral of pre_q2 is
begin
	i <= (a and b) or (a and c) or(b and c);
	s <= a xor b xor c;
	h <= not c;

end Behavioral;

