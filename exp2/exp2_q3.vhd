library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exp2_q3 is
PORT (
        A    : IN  STD_LOGIC_VECTOR(2 DOWNTO 0); 
        B    : IN  STD_LOGIC_VECTOR(2 DOWNTO 0); 
        Sel  : IN  STD_LOGIC;                  
        Result : OUT STD_LOGIC_VECTOR(2 DOWNTO 0); 
        C_out : OUT STD_LOGIC                  
    );
end exp2_q3;

architecture Behavioral of exp2_q3 is
COMPONENT exp2_q2 IS
        PORT (
            a    : IN  STD_LOGIC;
            b    : IN  STD_LOGIC;
            c_in : IN  STD_LOGIC;
            sum  : OUT STD_LOGIC;
            c_out: OUT STD_LOGIC
        );
   END COMPONENT;
	SIGNAL s_b_modified : STD_LOGIC_VECTOR(2 DOWNTO 0); 
   SIGNAL s_c1 : STD_LOGIC; 
   SIGNAL s_c2 : STD_LOGIC;
begin
	s_b_modified(0) <= B(0) XOR Sel;
   s_b_modified(1) <= B(1) XOR Sel;
   s_b_modified(2) <= B(2) XOR Sel;
	FA0 : exp2_q2
        PORT MAP (
            a     => A(0),
            b     => s_b_modified(0),
            c_in  => Sel, 
            sum   => Result(0),
            c_out => s_c1  
        );
	FA1 : exp2_q2
        PORT MAP (
            a     => A(1),
            b     => s_b_modified(1),
            c_in  => s_c1,  
            sum   => Result(1),
            c_out => s_c2   
        );

    FA2 : exp2_q2
        PORT MAP (
            a     => A(2),
            b     => s_b_modified(2),
            c_in  => s_c2,  
            sum   => Result(2),
            c_out => C_out
				);
end Behavioral;