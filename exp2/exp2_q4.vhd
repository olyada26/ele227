library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exp2_q4 is
PORT (
        A : IN  STD_LOGIC_VECTOR(1 DOWNTO 0); 
        B : IN  STD_LOGIC_VECTOR(1 DOWNTO 0); 
        Result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)  
    );
end exp2_q4;

architecture structural of exp2_q4 is
COMPONENT exp2_q2 IS
        PORT (
            a    : IN  STD_LOGIC;
            b    : IN  STD_LOGIC;
            c_in : IN  STD_LOGIC;
            sum  : OUT STD_LOGIC;
            c_out: OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL s_r00 : STD_LOGIC;
    SIGNAL s_r01 : STD_LOGIC;
    SIGNAL s_r10 : STD_LOGIC;
    SIGNAL s_r11 : STD_LOGIC;
	 SIGNAL s_c1 : STD_LOGIC;
    SIGNAL s_c2 : STD_LOGIC;
begin
	s_r00 <= A(0) AND B(0);
   s_r01 <= A(1) AND B(0);
   s_r10 <= A(0) AND B(1);
   s_r11 <= A(1) AND B(1);

    Result(0) <= s_r00;
    FA1 : exp2_q2
PORT MAP (
            a     => s_r10,
            b     => s_r01,
            c_in  => '0',
            sum   => Result(1), 
            c_out => s_c1       
        );
    FA2 : exp2_q2
        PORT MAP (
            a     => s_r11,
            b     => '0',
				c_in  => s_c1,      
            sum   => Result(2), 
            c_out => s_c2       
        );

    Result(3) <= s_c2;

END structural;